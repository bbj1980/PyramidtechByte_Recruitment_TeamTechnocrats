import { Component } from '@angular/core';
import { Subject } from 'rxjs';
import {ProgressSpinnerMode} from '@angular/material/progress-spinner';
import { SpinnerService } from './../services/spinner.service';

@Component({
  selector: 'app-spinner',
  templateUrl: './spinner.component.html',
  styleUrls: ['./spinner.component.scss'],
})
export class SpinnerComponent {
  color = 'primary';
  mode:ProgressSpinnerMode = 'indeterminate';
  value = 50;
  isLoading: Subject<boolean> = this.spinnerService.isLoading;

  constructor(private spinnerService: SpinnerService) {}
}
