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

  Save(){
    this.modalCtrl.dismiss();
    
    var titulo = document.getElementById("titulo").nodeValue;
    var descripcion = document.getElementById("descripcion").nodeValue;
    /*
    this.http.post<Imagen>(this.apiUrl + this.imagenHome, {
      "titulo": titulo,
      "descripcion": descripcion
    }).subscribe(this.imagenes => console.log('Image successful'));
    */
    /*
    document.getElementById("titulo").nodeValue = "";
    document.getElementById("descripcion").nodeValue = "";
    */
  }

}

export interface Imagen {
  id: number; // Contiene la frase
  titulo: string;
  descripcion: string; // Identificador la frase aleatoria
  url: string; // URL que contiene el ID y permite recuperar la frase
}