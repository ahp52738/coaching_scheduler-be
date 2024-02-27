Coaching Scheduler Rails Application
Overview
The Coaching Scheduler is a web application built using Ruby on Rails that facilitates scheduling coaching sessions between coaches and students. Coaches can manage their availability, view their upcoming schedules, review past sessions, and record student satisfaction and notes. Students can view available slots across all coaches, book sessions, and view their booked slots.

Features
Coaches Availability Management

Coaches can add slots of availability to their calendars.
Each slot is 2 hours long and can be booked by exactly 1 student.
Coaches can view their upcoming schedule.
Student Booking

Students can view upcoming available times across all coaches.
Students can book a slot for a call (the full 2 hours).
Students can view their booked slots.
Session Management

Coaches and students can complete coaching sessions.
Installation
Navigate to the project directory: cd coaching-scheduler
Install dependencies: bundle install
Set up the database: rails db:create db:migrate
(Optional) Seed the database with sample data: rails db:seed
Start the Rails server: rails server
Access the application at http://localhost:3000
Usage
Coaches

Sign up/login to access the dashboard.
Manage availability by adding available slots.
View upcoming schedule.
Review past sessions, including student satisfaction and notes.
Students

View available slots across all coaches.
Book a session for a desired time slot.
View booked sessions.
Technologies Used
Ruby on Rails
React Js
PostgreSQL (database)
