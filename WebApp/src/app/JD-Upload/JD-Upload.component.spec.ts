/* tslint:disable:no-unused-variable */
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { DebugElement } from '@angular/core';

import { JDUploadComponent } from './JD-Upload.component';

describe('JDUploadComponent', () => {
  let component: JDUploadComponent;
  let fixture: ComponentFixture<JDUploadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ JDUploadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(JDUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
