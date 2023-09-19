import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NgonavComponent } from './ngonav.component';

describe('NgonavComponent', () => {
  let component: NgonavComponent;
  let fixture: ComponentFixture<NgonavComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [NgonavComponent]
    });
    fixture = TestBed.createComponent(NgonavComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
