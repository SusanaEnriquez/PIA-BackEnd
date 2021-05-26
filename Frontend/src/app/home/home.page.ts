/* eslint-disable @typescript-eslint/member-ordering */
/* eslint-disable object-shorthand */
/* eslint-disable @typescript-eslint/naming-convention */
import { AddImagenPage } from './../add-imagen/add-imagen.page';
import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { ImagenModalPage } from '../imagen-modal/imagen-modal.page';
import { HttpClient, HttpClientModule } from "@angular/common/http";
import { Observable } from 'rxjs';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  status: string;
  public imagenes: Imagen[];
  private apiUrl = "http://localhost:1323/images";

  //En el constructor llamamos la peticion get
  // para conseguir todas las imagenes de la bd
  constructor(private modalCtrl: ModalController, private http: HttpClient, public alertCtrl: AlertController) {
    http.get<Imagen[]>(this.apiUrl).subscribe(result => {
      this.imagenes = result;
    }, error => console.error(error));
  }
  
  //Funcion para abrir otro componente y 
  // enviarle los datos de la imagen que le hizo "click"
  EditarImagen(imagen){
    this.modalCtrl.create({
      component: ImagenModalPage,
      componentProps: {
        imagen : imagen
      }
    }).then(modal => modal.present());
  }

  //Funcion en donde abre el componente para añadir otra imagen
  AgregarImagen() {
    this.modalCtrl.create({
      component: AddImagenPage
    }).then(modal => modal.present());
  }

  //Funcion que abre el alert
  EliminarImagen(imagen) {
    this.presentAlertConfirm(imagen);
    
  }

  //Funcion para conseguir una imagen
  public getImagen(): Observable<Imagen> {
    return this.http.get<Imagen>(this.apiUrl);
  }

  obtenerImagen(){
    console.log(this.imagenes);
  }

  //Funcion donde abre una alerta y te pregunta si quieres eliminar la imagen
  async presentAlertConfirm(imagen) {
    const alert = await this.alertCtrl.create({
      cssClass: 'my-custom-class',
      header: '¿Eliminar?',
      message: 'Esta imagen se eliminara de forma permanente.',
      subHeader: 'Los cambios se visualizaran al refresacar la pagina.',
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
          cssClass: 'secondary',
          handler: (blah) => {
            console.log('Cancelado');
          }
        }, {
          text: 'Eliminar',
          handler: () => {
            console.log(imagen);
            this.http.delete(this.apiUrl + "/" + imagen.id)
            .subscribe(() => this.status = 'Delete successful');
            console.log("eliminado");
          }
        }
      ]
    });

    await alert.present();
  }
}

//Interface donde tiene la estructura de una imagen en la base de datos
export interface Imagen {
  id: number;
  titulo: string;
  descripcion: string;
  url: string;
}