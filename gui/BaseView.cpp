//
// Created by dave on 12/03/23.
//

#include "BaseView.h"

BaseView::BaseView(GtkWindow* window) {
	this->window = window;
}

BaseView::~BaseView() {
}
/*
App *BaseView::getApp() {
	return this->app;
}*/

bool BaseView::isVisible() {
	return this->visible;
}

void BaseView::setup() {
	this->setupLayout();
	this->drawWidgets();
	this->registerInteractivity();
}

void BaseView::show() {
	this->visible = true;
}

void BaseView::hide() {
	this->visible = false;
}
