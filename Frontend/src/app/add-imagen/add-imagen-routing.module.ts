import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AddImagenPage } from './add-imagen.page';

const routes: Routes = [
  {
    path: '',
    component: AddImagenPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AddImagenPageRoutingModule {}
