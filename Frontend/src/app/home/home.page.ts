/* eslint-disable @typescript-eslint/member-ordering */
/* eslint-disable object-shorthand */
/* eslint-disable @typescript-eslint/naming-convention */
import { AddImagenPage } from './../add-imagen/add-imagen.page';
import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { ImagenModalPage } from '../imagen-modal/imagen-modal.page';
import { HttpClient, HttpClientModule } from "@angular/common/http";
import { Observable } from 'rxjs';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  public imagenes: Imagen[];
  private apiUrl = "http://localhost:1323/images";

  constructor(private modalCtrl: ModalController, private http: HttpClient) {
    http.get<Imagen[]>(this.apiUrl).subscribe(result => {
      this.imagenes = result;
    }, error => console.error(error));
  }
  /*
  imagenes = [
    'assets/imagenes/meme1.jpg',
    'assets/imagenes/meme2.jpg',
    'assets/imagenes/meme3.jpg',
    'assets/imagenes/meme4.jpg',
    'assets/imagenes/meme5.png',
    'assets/imagenes/meme6.jpg',
    'assets/imagenes/meme7.png',
    'assets/imagenes/meme8.jpg'
  ];
  */
  EditarImagen(imagen){
    this.modalCtrl.create({
      component: ImagenModalPage,
      componentProps: {
        imagen : imagen
      }
    }).then(modal => modal.present());
  }

  AgregarImagen() {
    this.modalCtrl.create({
      component: AddImagenPage
    }).then(modal => modal.present());
  }

  EliminarImagen() {}


  public getImagen(): Observable<Imagen> {
    return this.http.get<Imagen>(this.apiUrl);
  }

  obtenerImagen(){
    console.log(this.imagenes);
  }
}

export interface Imagen {
  id: number; // Contiene la frase
  titulo: string;
  descripcion: string; // Identificador la frase aleatoria
  url: string; // URL que contiene el ID y permite recuperar la frase
}