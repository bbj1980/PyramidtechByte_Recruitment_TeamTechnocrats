import { AlertComponent } from './alert/alert.component';
import { SpinnerComponent } from './spinner/spinner.component';
import { CustomHttpInterceptor } from './services/http-interceptor';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { JDUploadComponent } from './JD-Upload/JD-Upload.component';
import { CVUploadComponent } from './CV-Upload/CV-Upload.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import {MatProgressSpinnerModule} from '@angular/material/progress-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { HomeComponent } from './Home/Home.component';
import { FeedbackComponent } from './Feedback/Feedback.component';
@NgModule({
  declarations: [	
    AppComponent,
      JDUploadComponent,
      CVUploadComponent,
      SpinnerComponent,
      AlertComponent,
      HomeComponent,
      FeedbackComponent
   ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    HttpClientModule,
    MatProgressSpinnerModule,
    NgbModule,

  ],
  entryComponents:[SpinnerComponent],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: CustomHttpInterceptor,
      multi: true,
    },
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
