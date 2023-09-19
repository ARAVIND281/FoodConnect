import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { NGODashComponent } from '../ngodash/ngodash.component';
import {TabbarSample3Module} from './tabbar-sample-3.module'

const routes: Routes = [
    {
        path: 'tabbar-sample-3',
        component: TabbarSample3Module,
        children: [
            { path: 'tabbar-view1', component: NGODashComponent },
            { path: 'tabbar-view2', component: NGODashComponent },
            { path: 'tabbar-view3', component: NGODashComponent }
        ]
    }
];

@NgModule({
    exports: [
        RouterModule
    ],
    imports: [
        RouterModule.forChild(routes)
    ]
})
export class TabbarRoutingModule { }