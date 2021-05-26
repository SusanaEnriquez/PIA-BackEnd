/* eslint-disable no-bitwise */
/* eslint-disable prefer-arrow/prefer-arrow-functions */
/* eslint-disable @typescript-eslint/naming-convention */
import { Component, OnInit, EventEmitter,ElementRef, ViewChild } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { ModalController, Platform } from '@ionic/angular';
import { Capacitor, Plugins } from '@capacitor/core';
import { CameraResultType, CameraSource } from '@capacitor/camera';
import { AngularFireStorage } from '@angular/fire/storage';
import { Observable } from 'rxjs';
import { finalize } from 'rxjs/operators';
import { HttpParams, HttpClient} from '@angular/common/http';

@Component({
  selector: 'app-add-imagen',
  templateUrl: './add-imagen.page.html',
  styleUrls: ['./add-imagen.page.scss'],
})
export class AddImagenPage implements OnInit {
  agregar: FormGroup;
  url: string;
  // eslint-disable-next-line @typescript-eslint/member-ordering
  @ViewChild('imageFile') filePickerRef: ElementRef<HTMLInputElement>;
  selectedImage: string;
  usarImagen = false;
  filePath: any;
  downloadURL: Observable<string>;
  seleccion = true;

  constructor(private platform: Platform, private storage: AngularFireStorage,
    private modalCtrl: ModalController, private http: HttpClient) { }

  ngOnInit() {

    if((this.platform.is('mobile') && !this.platform.is('hybrid')) || this.platform.is('desktop')){
      this.usarImagen = true;
    }
    this.agregar = new FormGroup({
      imagen: new FormControl(null, {
        validators: [Validators.required]
      }),
      title: new FormControl(null, {
        updateOn: 'blur', validators: [Validators.required]
      }),
      descripcion: new FormControl(null, {
        updateOn: 'blur', validators: [Validators.required, Validators.maxLength(180)]
      })
    });
  }

  /*Funcion para añadir una nueva imagen
  y hace una peticion POST */
  addImage(){
    if(!this.agregar.valid){
      return;
    }
    this.url = this.agregar.value.imagen;
    console.log('Image',this.url);
  const payload = new HttpParams()
  .set("titulo", this.agregar.value.title)
  .set("descripcion", this.agregar.value.descripcion)
  .set("urlimage", this.url);
    console.log("titulo: ", this.agregar.value.title, "descripcion: ", this.agregar.value.descripcion, "urlimage: ", this.agregar.value.imagen);
    console.log("FORM", this.agregar.value);
    this.http.post<any>('http://localhost:1323/images', payload)
    .subscribe(() => console.log('Image successful'))
    this.agregar.reset();
    this.modalCtrl.dismiss();
  }

  //Funcion para cerrar el componente donde se encuentra
  CerrarModal(){
    this.modalCtrl.dismiss();
  }

  //Funciones para obtener imagenes
  ImageUser(event: Event) {
    this.seleccion = true;
    const image = (event.target as HTMLInputElement).files[0];
   if(!image){
     return;
   }
   const fr = new FileReader();
   fr.onload = () => {
     const dataUrl = fr.result.toString();
     this.selectedImage = dataUrl;
     this.upLoadImage(image);
     this.seleccion = true;
   };
   fr.readAsDataURL(image);
 }

 
  UrlImage(){
    if(this.selectedImage){
      const httpImage =`${this.downloadURL}`;
      console.log('HTTP',httpImage);
      this.agregar.patchValue({imagen: httpImage});
      this.seleccion = false;
    }
  }

  upLoadImage(image: File){
    this.filePath = `images/${createGuid()}.jpg`;
    const fileRef = this.storage.ref(this.filePath);

    const task = this.storage.upload(this.filePath, image);
    task.snapshotChanges()
    .pipe(
      finalize(() => {
        fileRef.getDownloadURL().subscribe(urlImage => {
          this.downloadURL= urlImage;
        });
      })
    ).subscribe();
  }

  getUrlFileImage() {
   if(!Capacitor.isPluginAvailable('Camera') || this.usarImagen){
     this.filePickerRef.nativeElement.click();
     return;
   }
   Plugins.Camera.getPhoto({
     quality: 100,
     source: CameraSource.Prompt,
     correctOrientation: true,
     height: 320,
     width: 200,
     resultType: CameraResultType.DataUrl
   })
   .then(image => {
     this.selectedImage = image.dataUrl;
   })
   .catch(error => {
     console.log(error);
     return false;
   });
  }

}

function createGuid(){
  function S4() {
     return (((1+Math.random())*0x10000)|0).toString(16).substring(1);
  }
  return (S4() + S4() + '-' + S4() + '-4' + S4().substr(0,3) + '-' + S4() + '-' + S4() + S4() + S4()).toLowerCase();
}

