import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouteReuseStrategy } from '@angular/router';
import { IonicModule, IonicRouteStrategy } from '@ionic/angular';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { AngularFirestoreModule } from '@angular/fire/firestore';
import { AngularFireStorageModule , BUCKET} from '@angular/fire/storage';
import { AngularFireModule } from '../../node_modules/@angular/fire';
import { environment } from '../environments/environment';
import { HttpClientModule } from '@angular/common/http';
import { ImagenModalPageModule } from './imagen-modal/imagen-modal.module';
import { FormsModule ,ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [AppComponent],
  entryComponents: [],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    AngularFireModule.initializeApp(environment.firebaseConfig),
    AngularFireStorageModule,
    AngularFirestoreModule,
    IonicModule.forRoot(),
    AppRoutingModule,
    HttpClientModule,
    ImagenModalPageModule
  ],
  providers: [
    {provide: BUCKET, useValue: 'gs://base-labam.appspot.com'},
    StatusBar,
    SplashScreen,
    { provide: RouteReuseStrategy, useClass: IonicRouteStrategy }],
  bootstrap: [AppComponent],
})
export class AppModule {}
