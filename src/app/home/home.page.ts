import { Component } from '@angular/core';
import { ModalController } from '@ionic/angular';
import { ImagenModalPage } from '../imagen-modal/imagen-modal.page'

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

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

  EditarImagen(imagen){
    this.modalCtrl.create({
      component: ImagenModalPage,
      componentProps: { 
        imagen : imagen
    }
    }).then(modal => modal.present())
  }

  constructor(private modalCtrl: ModalController) {}

}
