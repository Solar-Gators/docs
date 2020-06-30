# GUI

The code for this team is located in the [pit-gui](https://github.com/Solar-Gators/Pit-GUI) repository.

![GUI Preview](/_static/telemetry/live-telemetry.png)


## Getting Started
First you need to install `node` v12.

If you're running macOS, Linux or [Winows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (WSL). 

```Bash
$ curl -sL https://deb.nodesource.com/setup_12.14 | sudo -E bash -
```
*note*: You may need to install curl if it's not already
Now install it

```Bash
$ sudo apt-get install nodejs
```

Now you need to install the dependencies, to do so run the following command from the root of the repository.

```Bash
$ npm run install-all
```

To start the website in dev mode

```Bash
$ npm start
```

The website will popup a new browser window at `localhost:3000`.

## Folder Structure

> The folder structure of this repo

    .
    ├── .github                  # GitHub actions continous integration files
    ├── backend                  # NodeJS server
    ├── client                   # React App (frontend)
    ├── .gitignore               # Automated tests (alternatively `spec` or `tests`)
    ├── package.json             # Configuration file for npm (contains package dependencies)
    └── README.md

### Backend
The backend is built for an API interface for the GUI on NodeJS under the [ExpressJS library](https://expressjs.com/). I suggest doing some EpressJS examples if you are not fimilar with the library.

**Resources**: [NodeJS Example](https://medium.com/@adnanrahic/hello-world-app-with-node-js-and-express-c1eb7cfa8a30), [ExpressJS Example](https://medium.com/@onejohi/building-a-simple-rest-api-with-nodejs-and-express-da6273ed7ca9)

The database used is a mongodb instance located on MongoDB Atlas. The API logic is loosely based on the [Model-view-controller (MVC) pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) witht the views being in React instead of with the backend files.

    .
    ├── ...
    ├── backend                  # JavaScript backend scripts for the API server
    │   ├── config               # Express/HTTP Server & Environment configuration
    │   ├── controllers          # Controller definitions (buisness logic of api endpoints)
    |   ├── helper               # Helper functions
    |   ├── models               # Mongoose schema definitions
    │   └── routes               # API express route definitions
    └── ...

### Frontend
The frontend is built on top of ReactJS utilizing the [Materialize](https://materializecss.com/) library for the UI. The GPS mapping is done using the [Google Maps](https://www.npmjs.com/package/google-map-react) components and the charts/graphs are created using [D3](https://d3js.org/).

    .
    ├── ...
    ├── client                  # React frontend
    │   ├── public              # Static public files
    │   └── src                 # React componets & source
    └── ...


## API Endpoints

TO DO

## Features

GPS

Live Telemetry

TO DO
