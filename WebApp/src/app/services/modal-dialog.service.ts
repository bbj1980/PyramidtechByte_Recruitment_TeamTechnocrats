import { Injector, Injectable } from '@angular/core';
import {
  MatDialog,
  MatDialogRef,
  MAT_DIALOG_DATA,
} from '@angular/material/dialog';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ModalDialogService {
  // receive data from parent using 'MAT_DIALOG_DATA'
  dialogRef = null;
  data;
  private formData = new BehaviorSubject([]);

  constructor(private injector: Injector, private dialog?: MatDialog) {
    this.dialogRef = this.injector.get(MatDialogRef, null);
    this.data = this.injector.get(MAT_DIALOG_DATA, null);
  }

  open(datacomp: any, config: DialogModel) {
    this.dialogRef = this.dialog.open(datacomp, config);
    this.setFormData(config.data);
    return this.dialogRef;
  }

  cancel() {
    this.dialogRef.close(false); // send data to parent component
  }

  confirm() {
    this.dialogRef.close(true); // send data to parent component
  }

  getFormData(): Observable<any[]> {
    return this.formData.asObservable();
  }

  setFormData(data: any[]) {
    this.formData.next(data);
  }
}

export class DialogModel {
  constructor(
    public autoFocus: boolean,
    public panelClass: string,
    public disableClose: boolean,
    public position: { top: '10px' },
    public data: any,
    public height?: string,
    public width?: string
  ) {}
}
