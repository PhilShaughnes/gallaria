# README

## Welcome to _Captured_!

This is a photo gallery app built as a weekend project for The Iron Yard.
Note that we have not delved into javascript (modal windows via bootstrap was a challenge feature).

The goal was to practice doing a full stack rails app all at once, and implement uploaders, mailers, api-keys, and deploy to heroku.

The production app should be available here:
<https://serene-everglades-80828.herokuapp.com/>

## Getting Started

Notable services include:
  - cloudinary to host images
  - carrierwave for file uploads
  - sendgrid to for email
  - heroku to host the app
  - figaro for api key security
  - bootstrap on the frontend
  - simple_form for easier form creation

## Feature Summary

### possible pages:
  - Users own galleries
  - all galleries
  - all users
  - a particular user's galleries
  - all the photos in a gallery
  - individual photos (modal window with 'next/previous' buttons)

### possible forms:
  - signin
  - signup
  - create new gallery
  - upload photo to gallery
  - edit photo (including move to different gallery)
  - delete photo or gallery

### other notable features:
  - Landing page with 'marketing' banner.
  - navbar that changes when logged in/out
  - welcome email on signup
  - email share (with modal form)
  - photos can exist in multiple galleries (only deleted when removed from last gallery)
  - checkbox to continue adding photos

### features not fully implemented:
  - hopefully a search and/or sort functionality will come soon.
  - pagination (kaminari is in the gemfile, just not utilized)
  - robust testing
