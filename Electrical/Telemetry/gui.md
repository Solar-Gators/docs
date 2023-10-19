# Pit-GUI

The code for this team is located in the [Pit-GUI](https://github.com/Solar-Gators/Pit-GUI) repository.

![GUI Preview](/_static/telemetry/live-telemetry.png)

## Getting Started

### Install Node.js

First you need to install the latest version of Node.js (anything v16 or above should work, but v20 is reccomended).

```eval_rst

.. tabs::

   .. tab:: Linux

      .. code-block:: Bash

         sudo apt install nodejs
         sudo apt install npm

   .. tab:: Mac OSX

      .. code-block:: Bash

        brew install node

      *note*: You will need to install brew for this to work, refer to `this article <https://changelog.com/posts/install-node-js-with-homebrew-on-os-x/>`_ on how to do that.

      Alternatively you can download node's installer from their `website <https://nodejs.org/en/download/>`_.

.. tab:: Windows 10/11

      Download node's installer from their `website <https://nodejs.org/en/download/>`_.

```

To verify that Node is installed, run the following command from command line.

```Bash
$ node -v
v20.1.0
```
As pictured above `v16+.x.x` should be returned if node is correctly configured. If it does not get returned node may not be installed correctly or the path is not recognized by your shell. If restarting your shell instance does not fix it, you will need to add the node executable to your shell PATH.

## Setting up a sample backend

If you are only planning on doing frontend development, these steps are not nesecary. By default, the app is set to use the remote Solar Gators API, rather than anything hosted locally.

### Install MySQL

The next step is to download MySQL for the database. The steps for this will again depend on what OS you are running on.

Note that you must [enable systemd](https://stackoverflow.com/a/74843759) if on WSL in order to start the MySQL server.

```eval_rst

.. tabs::

   .. tab:: Linux

      .. code-block:: Bash

        $ sudo apt install mysql-server
        # Start mysql server
        $ sudo /etc/init.d/mysql start

      *reference*: `How To Install MySQL on Ubuntu 18.04 <https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04>`_

   .. tab:: Mac OSX

      .. code-block:: Bash

        $ brew install mysql

      *note*: You will need to install brew for this to work, refer to `this article <https://changelog.com/posts/install-node-js-with-homebrew-on-os-x/>`_ on how to do that.

      Alternatively you can download mysql's installer from their website, `link is here <https://dev.mysql.com/downloads/mysql/>`_.

```

In order for our server to connect to mysql, we must create a user for it to login as. The server is configured to connect to mysql as `solargators` with no password. To create and configure this MySQL user, you must run a query. To do this, we will use the MySQL CLI (Command Line Interface), which will allow us to run MySQL queries directly in the command line.

```Bash
$ sudo mysql
```

This will bring up the MySQL CLI, which we can then type the following MySQL queries into:

If this is a fresh MySQL instance, you may need to run the following query to allow a user to have insecure/nonexistent passwords.
```MySQL
UNINSTALL PLUGIN validate_password;
```

To create a user run the following query.

```MySQL
CREATE USER 'solargators'@'localhost' IDENTIFIED BY '';
```

Now we need to give our user some permissions to access the database. Run the following query to do so.

```MySQL
GRANT ALL PRIVILEGES ON *.* TO 'solargators'@'localhost';
```

Type `quit` when you want to exit the MySQL CLI.

### Install NPM Dependencies & Start

Now you need to install the dependencies, to do so run the following command from the root of the repository.

```Bash
$ npm run install-all
```

Now we need to create and populate the database. To do some run the following commands:

```Bash
$ cd backend

# Create symbolic link (may already have been done depending on git clone method)
$ ln -s ../client/src/shared shared

# Build our backend (which creates SQL configs needed by the following commands)
$ npm run build

# Create the database
$ npm run create-db

# Migrate the database
$ npm run migrate

# Add seeder rows for each table
$ npm run seed
```

To start the website in dev mode:

```Bash
# Navigate back from Pit-GUI/backend to Pit-GUI
$ cd ..

# Concurrently start both backend server and client server
$ npm run start
```

Or alternatively, to have backend and client in separate windows for easier debugging:
```Bash
# Start backend server
$ npm start

# In a new command line window, navigate to Pit-GUI/client and:
# Start client server
$ npm run start
```

The website will popup a new browser window at `localhost:3000`.

## Folder Structure

> The folder structure of this repo

    .
    ├── .github                  # GitHub actions continuous integration files
    ├── backend                  # NodeJS server
    ├── client                   # React App (frontend)
    ├── .gitignore
    ├── package.json             # Configuration file for npm (contains package dependencies)
    └── README.md

### Backend
The backend is built for an API interface to drive the GUI. The runtime is NodeJS under the [ExpressJS library](https://expressjs.com/). I suggest doing some EpressJS examples if you are not familiar with the library.

**Resources**: [NodeJS Example](https://medium.com/@adnanrahic/hello-world-app-with-node-js-and-express-c1eb7cfa8a30), [ExpressJS Example](https://medium.com/@onejohi/building-a-simple-rest-api-with-nodejs-and-express-da6273ed7ca9)

The database used is mysql that runs locally on the PI. The API logic is loosely based on the [Model-view-controller (MVC) pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) with the views being in React instead of with the backend files.

    .
    ├── ...
    ├── backend                  # JavaScript backend scripts for the API server
    │   ├── config               # Express/HTTP Server & Environment configuration
    │   ├── controllers          # Controller definitions (buisness logic of api endpoints)
    |   ├── helper               # Helper functions
    |   ├── shared/models        # sequelize model definitions
    │   └── routes               # API express route definitions
    └── ...

### Frontend
The frontend is built on top of ReactJS utilizing the [Materialize](https://materializecss.com/) library for the UI.

    .
    ├── ...
    ├── client                  # React frontend
    │   ├── public              # Static public files
    │   └── src                 # React componets & source
    └── ...


## SQL Schema Migrations

Sometimes we would like to change the schema of the database, create an extra table, etc. To do so, simply add a sequelize model and it will automatically sync the database when the service starts. One thing to watch out for though is if columns are deleted/changed historical data could get deleted.
