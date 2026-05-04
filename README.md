## Beauty Shop Application

Beauty Shop is a mobile application developed as a final project for the Mobile Application Development course.

## Overview

The primary goal of this project is to create a seamless interface for browsing beauty products. It focuses on a clean architectural approach, utilizing layered components and reactive state management to provide a robust user experience.

## Screenshots

<img width="1280" height="799" alt="ac25bab2-d099-4ffa-a684-c3c7411be59e" src="https://github.com/user-attachments/assets/7ab5dabc-476d-47e7-9539-6e2f124248fa" />
<img width="1280" height="765" alt="129d5a1b-9add-4741-b52c-1e123c61d0cb" src="https://github.com/user-attachments/assets/3934fbbf-a6c6-40bc-8ffe-dae1e37aa2a3" />

## Tech Stack

This project meets the following requirements:
Language: Dart
Framework: Flutter
State Management: BLoC/Flutter BLoC
Data Source: DummyJSON REST API
Architecture: Feature-based Layered Architecture (Data, Presentation)

## Key Features

The application is divided into two main functional modules:
1. Product Discovery
- Visual list display featuring high-quality thumbnails, titles, and pricing.
- State-specific UI: Dedicated views for "Loading," "Error," and "Success" states.
2. Detailed Product View
- Interactive "Add to Cart" call-to-action button.
- Rich product cards including full-size imagery, pricing per unit, and comprehensive descriptions.

## Project Structure

lib/
├── home/               
├── products/           
│   ├── data/           
│   └── presentation/   
├── model/             
└── main.dart           
