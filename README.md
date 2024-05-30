# Live Painting App

A dynamic Flutter app for real-time painting with customizable brush settings and an intuitive UI.



## Features

- **Customizable Brush Settings**: Adjust brush color and size to fit your artistic needs.
- **Real-Time Drawing**: Enjoy a smooth and responsive painting experience.
- **Clear Canvas**: Easily start over with a single tap.
- **Settings Screen**: Intuitive UI for customizing your brush settings.


## Screenshots

<p align="start">
  <img src="https://github.com/Saad-Rajpoot/LivePaintingApp/assets/72617801/610996dd-1692-4f06-91a2-4ecf30c524d0" alt="Live 1" width="320"/>
  <img src="https://github.com/Saad-Rajpoot/LivePaintingApp/assets/72617801/b848db1f-d2e8-41bb-99ba-0a54db587fcf" alt="Live 2" width="320"/>
</p>


## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/Saad-Rajpoot/LivePaintingApp.git
   cd LivePaintingApp

2. Install dependencies::
   ```bash
   flutter pub get

3. Run the app::
   ```bash
   flutter run


### This setup should give you a good starting point for your live painting app. You can expand on it by adding more features, improving the UI, and handling additional user interactions.


## Usage

- Tap and drag on the canvas to draw.
- Use the settings screen to change brush color and size.
- Tap the clear button in the app bar to clear the canvas.


## Code Overview

#### Main Files

- **main.dart**: Entry point of the application.
- **home_screen.dart**: The main screen of the app containing the painting canvas.
- **painting_canvas.dart**: The widget responsible for handling drawing logic and rendering.
- **settings_screen.dart**: The settings screen to adjust brush settings.
- **brush_settings.dart**: Contains the BrushSettings class to manage brush state.


#### State Management

- The app uses ChangeNotifier and ValueNotifier to manage the state of the brush settings and the lines being drawn. This ensures that the UI updates efficiently without unnecessary rebuilds.


## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes or enhancements.


## Connect on LinkedIn

Let's connect on LinkedIn! Feel free to reach out if you have any questions about Live Painting App or if you're interested in collaborating on Flutter projects.

#### Saad Rajpoot https://pk.linkedin.com/in/saad-rajpoot-b3ba85225
