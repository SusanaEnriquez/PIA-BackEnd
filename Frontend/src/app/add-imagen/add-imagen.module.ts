import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';
import { AddImagenPageRoutingModule } from './add-imagen-routing.module';
import { AddImagenPage } from './add-imagen.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    IonicModule,
    AddImagenPageRoutingModule
  ],
  declarations: [AddImagenPage]
})
export class AddImagenPageModule {}
