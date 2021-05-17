import { Component, OnInit } from '@angular/core';
import { ModalController, NavParams } from "@ionic/angular";

@Component({
  selector: 'app-imagen-modal',
  templateUrl: './imagen-modal.page.html',
  styleUrls: ['./imagen-modal.page.scss'],
})
export class ImagenModalPage implements OnInit {

  imagenHome: string;

  constructor(private modalCtrl: ModalController, private navparams: NavParams) { 
    this.imagenHome = this.navparams.get('imagen')
    console.log(this.imagenHome)
  }

  ngOnInit() { 
  }

  CerrarModal(){
    this.modalCtrl.dismiss();
  }

}
