import { AlertService } from './../services/alert.service';
import { WebApiCallService } from './../services/web.api.service';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
@Component({
  selector: 'app-JD-Upload',
  templateUrl: './JD-Upload.component.html',
  styleUrls: ['./JD-Upload.component.css']
})
export class JDUploadComponent implements OnInit {
  firstFormGroup: FormGroup;
  model: any;
  constructor(fb: FormBuilder, private apiCallService: WebApiCallService, private alertService: AlertService) {

    this.firstFormGroup = fb.group({
      position: '',
      description: '',
      techskill: '',
      softskill: '',
      location: '',
      education: '',
      experience: '',
      nationality: '',
      comments: ''
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
        const request = { base64String };

        if ((f.type === 'application/msword') || (f.type === 'application/vnd.openxmlformats-officedocument.wordprocessingml.document')) {

          this.apiCallService
            .post('api/jobdescription', request)
            .subscribe(response => {
              this.firstFormGroup.patchValue(response);
              this.alertService.success("Job description Scanned successfully!");
            });
          // this.firstFormGroup.patchValue({
          //   "position": "Sr. QA – Automation",
          //   "description": "Pyramid puts Quality first with rigorous QA analysis and planning that ensures long-term results with an approach to collaborate, analyze and then propose a suitable roadmap for improvement. Our services include; Functional, Automation, Mobile, Performance Testing, Agile, SOA Services, Security, Cloud, Big Data, Legacy and FDA Validation.Pyramid - QA Solutions requires a result oriented person who will drive, derive and set standard QA processes in projects as required by the client.Challenging technologies to work upon, encouraging & motivational work environment, learning opportunities and good work-life balance are some of the characteristics of working at Pyramid.",
          //   "techskill": "Develop a thorough understanding of product functionality to evaluate and ensure product quality. Develop, monitor, execute, evaluate, and maintain automated test scripts for web based applications using industry standard automated testing tools.Maintaining and improving Continuous Integration and Delivery environmentsWork with the development team to understand how changes in the software product affect maintenance of automated test scripts and the QA automated testing environmentsWork with the developers and product owners to comprehend product functionality and identify system requirementsConvert manual test plans to automated test scriptsCreate and upgrade automation test plans for each releaseCommunicate and interact effectively with customers, product management, documentation, training, deployment, support, and other departments Stay current on software technology, concepts, new testing tools, test strategies, as well as related and competing productsHelp with creating, implementing, executing, and guarding optimized processes, policies, and proceduresSound knowledge in automation framework, architecture and design patterns. Proficient knowledge of Java and SeleniumShall have experience in API Automation Well versed in writing SQL Queries. Experience in SCRUM Agile is a plusGood to have CI/CD understandingInsurance domain knowledge Excellent logical, analytical, communication and client facing skills.",
          //   "softskill": "High level of flexibility and ability to persevere through periods of significant change and challenges in the business environment",
          //   "location": null,
          //   "education": "B.Tech (CS/IT) or equivalent",
          //   "experience": "4 to 7 Years",
          //   "nationality": "Develop a thorough understanding of product functionality to evaluate and ensure product quality. Develop, monitor, execute, evaluate, and maintain automated test scripts for web based applications using industry standard automated testing tools.Maintaining and improving Continuous Integration and Delivery environmentsWork with the development team to understand how changes in the software product affect maintenance of automated test scripts and the QA automated testing environmentsWork with the developers and product owners to comprehend product functionality and identify system requirementsConvert manual test plans to automated test scriptsCreate and upgrade automation test plans for each releaseCommunicate and interact effectively with customers, product management, documentation, training, deployment, support, and other departments Stay current on software technology, concepts, new testing tools, test strategies, as well as related and competing productsHelp with creating, implementing, executing, and guarding optimized processes, policies, and procedures",
          //   "comments": "ss"
          // });

        } else {
          this.alertService.success("Only .doc file allowed");
        }
      };
    })(f);
    // Read in the image file as a data URL.
    reader.readAsBinaryString(f);
  }

  submit() {
    this.apiCallService
      .post('api/jobdescription/savejobdescription', this.firstFormGroup.value)
      .subscribe(response => {
        this.alertService.success("JD Creted successfully!");
      });

  }

}
