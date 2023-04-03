//
// Created by dave on 13/03/23.
//

#ifndef HOMEHIVE_HOMEVIEW_H
#define HOMEHIVE_HOMEVIEW_H


#include "BaseView.h"
#include "../request/Unsplash.h"
#include "../request/weather.h"
#include "../event/IntervalView.h"
#include "Alarm.h"
#include <chrono>
#include <iostream>
#include <iomanip>
#include <vector>
#include <SDL2/SDL.h>





class HomeView : public BaseView, public IntervalView {
	private:
		GtkLayout* layout;
		GtkGrid* grid;
		GtkImage* imgBackground;
		GtkImage* imgWeather;

		GtkLabel* lblTime;
		GtkLabel* lblDate;
		GtkLabel* lblGreeting;
		GtkWidget* lblWeather;
		GtkWidget* dateTimeContainer;
        GtkWidget* hourSpin;
        GtkWidget* minuteSpin;
        GtkWidget* setAlarmButton;
		Unsplash* unsplash;
		Weather* weather;
        GtkWidget* calendar;


        GDateTime* alarmTime;
        GDateTime* current_time;
        std::vector<Alarm*> alarms_;
        Alarm* alarm;
        GtkWidget* alarm_ok;
        GtkWidget* popup_window;




	public:


		HomeView(GtkWindow* window);
		// BaseView(App* app, GtkWindow* window);
		~HomeView();

		void setFullscreen(bool fullscreen);


        static void button_clicked_callback(GtkWidget *widget, gpointer user_data);
        void on_button_clicked(GtkWidget *widget, gpointer user_data);
        static void ok_clicked_callback(GtkWidget *widget, gpointer user_data);
        void on_ok_button_clicked(GtkWidget *widget, gpointer user_data);

        void setDateAndTime(char* date, char* time) override;
        void changeBackgroundImage() override;
        void updateWeather() override;
        int checkAlarm() override;
        void isClicked() override;





protected:
		void setupLayout() override;
		void drawWidgets() override;
		void registerInteractivity() override;
};


#endif //HOMEHIVE_HOMEVIEW_H
