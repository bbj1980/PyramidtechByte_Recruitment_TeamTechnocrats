import { WebApiCallService } from './../services/web.api.service';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-CV-Upload',
  templateUrl: './CV-Upload.component.html',
  styleUrls: ['./CV-Upload.component.css']
})

export class CVUploadComponent implements OnInit {
  myGroup: FormGroup;

  constructor( private apiCallService: WebApiCallService) {
    this.myGroup = new FormGroup({

    });
  }


  ngOnInit() {
  }


  fileUpload(evt: any) {
    const self = this;
    const f = evt.target.files[0]; // FileList object
    const reader = new FileReader();
    // Closure to capture the file information.
    reader.onload = ((theFile) => {
      return (e: any) => {
        const binaryData = e.target.result;
        // Converting Binary Data to base 64
        const base64String = window.btoa(binaryData);
        debugger
        const request = {
          fileName: f.name,
          fileType: 'JD',
          fileBase64String: base64String,
          fileMimeType: f.type
        };
        if ((request.fileMimeType === 'application/msword') || (request.fileMimeType === 'application/vnd.openxmlformats-officedocument.wordprocessingml.document')) {

           this.apiCallService
            .post('cv', request)
            .subscribe(response => {

            });

        } else {
          alert('Only .doc file allowed');
        }
      };
    })(f);
    // Read in the image file as a data URL.
    reader.readAsBinaryString(f);
  }

}
