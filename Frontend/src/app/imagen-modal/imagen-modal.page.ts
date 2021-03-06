/* eslint-disable @typescript-eslint/naming-convention */
import { Component, OnInit } from '@angular/core';
import { ModalController, NavParams } from '@ionic/angular';
import { HttpClient, HttpClientModule } from "@angular/common/http";
import { Observable } from 'rxjs';

@Component({
  selector: 'app-imagen-modal',
  templateUrl: './imagen-modal.page.html',
  styleUrls: ['./imagen-modal.page.scss'],
})
export class ImagenModalPage implements OnInit {

  imagenHome: string;
  public imagen = {id: 0, titulo: "", descripcion: "", url: ""};
  public imagenes: Imagen[];
  private apiUrl = "http://localhost:1323/images/";

  constructor(private modalCtrl: ModalController, private navparams: NavParams, private http: HttpClient)
  {
    this.imagenHome = this.navparams.get('imagen');
    console.log(this.imagenHome);    
  }

  ngOnInit() {}

  CerrarModal(){
    this.modalCtrl.dismiss();
  }

  //Funcion para guardar lo cambiado 
  Save(id){
    this.modalCtrl.dismiss();
    
    //var   num1= ((document.getElementById("num1") as HTMLInputElement).value);
    this.imagen.id = id;
    this.imagen.titulo = ((document.getElementById("titulo") as HTMLInputElement).value);
    this.imagen.descripcion = ((document.getElementById("descripcion") as HTMLInputElement).value);
    
    console.log(this.imagen.titulo);
    console.log(this.imagen.descripcion);
    console.log(this.imagen);
    
    console.log(this.apiUrl + id);

    (document.getElementById("titulo") as HTMLInputElement).value = "";
    (document.getElementById("descripcion") as HTMLInputElement).value = "";
    
    return fetch(this.apiUrl + id, {
        method: 'PUT',
        body:JSON.stringify( {
          'titulo': this.imagen.titulo,
          'descripcion': this.imagen.descripcion
       })
    }).then(response => response.json())
  }

}

//Interface donde tiene la estructura de una imagen en la base de datos
export interface Imagen {
  id: number; 
  titulo: string;
  descripcion: string;
  url: string; 
}