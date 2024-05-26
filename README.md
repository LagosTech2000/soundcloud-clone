# SoundCloud Clone Music Player App

This is a SoundCloud clone music player app built with Ruby on Rails, PostgreSQL, Devise for user authentication, and Stimulus for handling frontend interactivity. This README will guide you through setting up and running the application on your local machine.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- User authentication with Devise
- Upload and manage music files
- Audio player with WaveSurfer.js
- User profiles
- Post comments and likes on tracks

## Prerequisites

Ensure you have the following installed on your local machine:

- Ruby (version 3.0.0 or later)
- Rails (version 6.0 or later)
- PostgreSQL (version 12 or later)
- Yarn (for managing JavaScript dependencies)

## Installation

Follow these steps to set up the application:

1. **Clone the repository**

   ```
   git clone https://github.com/your-username/soundcloud-clone.git
   cd soundcloud-clone

   Install dependencies```

2. **Install Ruby gems**

    ```
    bundle install
    Install JavaScript packages:

        ```
        yarn install
        Set up the database 
        Create and migrate the database:


    ```
        Copiar código
        rails db:create
        rails db:migrate
        Start the Rails server

    ```Copiar código
    rails server
    Open the application

#Visit http://localhost:3000 in your web browser.

Usage
* User Authentication
* Sign up for a new account or log in with an existing one using Devise.
* Edit your profile to upload a profile picture and update personal information.
* Managing Music Files
* Upload new tracks from your profile.
* View, edit, and delete your tracks.
* Browse and listen to tracks uploaded by other users.
* Audio Player
* The app uses WaveSurfer.js to provide an interactive audio player. Features include:

* Play and pause functionality
* Real-time audio waveform visualization
* Adding Interactivity with Stimulus
* Stimulus controllers are used to manage the audio player’s interactivity. The following is an example Stimulus controller for handling the audio player:

* javascript

  ```Copiar código
  // app/javascript/controllers/audio_player_controller.js
  import { Controller } from "@hotwired/stimulus";
  import WaveSurfer from "wavesurfer.js";

  export default class extends Controller {
  static values = { url: String };
  static targets = ["preview"];

  connect() {
    this.wavesurfer = WaveSurfer.create({
      container: this.previewTarget,
      waveColor: "#ff8000",
      progressColor: "#383351",
      url: this.urlValue,
    });
  }

  togglePlaying(e) {
    e.preventDefault();
    this.wavesurfer.playPause();
    let link = e.target.closest("a");
    Array.from(link.children).forEach((child) =>
      child.classList.toggle("hidden")
    );
  }
}

# Contributing
We welcome contributions to improve the app. Please follow these steps:

# Fork the repository.
Create a new branch (git checkout -b feature/your-feature-name).
Make your changes and commit them (git commit -am 'Add some feature').
Push to the branch (git push origin feature/your-feature-name).
Create a new Pull Request.
License
This project is licensed under the MIT License. See the LICENSE file for details.
