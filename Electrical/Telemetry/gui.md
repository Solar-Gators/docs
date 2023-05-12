# GUI

The code for this team is located in the [pit-gui](https://github.com/Solar-Gators/Pit-GUI) repository.

![GUI Preview](/_static/telemetry/live-telemetry.png)


## Getting Started

This is a brief guide that is broken down into steps meant for a variety of operating systems and skill levels. If you ever have trouble feel free to reach out to a senior member.

### Install NodeJS

First you need to install `node` v12.

You MUST use WSL if you are running Windows in order to run the current master version. Note that you must [enable systemd](https://stackoverflow.com/a/74843759>) in order to [start the MySQL server](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04) (ensure you follow these two linked tutorials before continuing).

```eval_rst

.. tabs::

   .. tab:: Linux
      
      .. code-block:: Bash
        
        #Get Node sources
        $ curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
        #Now install node
        $ sudo apt-get install nodejs
      *note*: You may need to install curl if it's not already

   .. tab:: Mac OSX

      .. code-block:: Bash
        
        $ brew install node
      
      *note*: You will need to install brew for this to work, refer to `this article <https://changelog.com/posts/install-node-js-with-homebrew-on-os-x/>`_ on how to do that.

      Alternatively you can download node's installer from their website, `link is here <https://nodejs.org/en/download/>`_.

```

To verify that Node is installed, run the following command from command line.

```Bash
$ node -v
v12.16.1
```
As pictured above `v12.16.1` should be returned if node is correctly configured. If it does not get returned node may not be installed correctly or is not you path and therefore not recognized by your shell.

### Install MySQL

The next step is to download MySQL for the database. The steps for this will again depend on what OS you are running on.

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

In order for our server to connect to mysql, we must create a user for it to login as. The server is configured to connect to mysql as `solargators` with no password. To create a MySQL user run a query. You can run queries in a variety of ways depending on what platform you are on. If you are on Linux/Mac then you can simply run `mysql` from the command line and run the queries. However if you're on windows then you will need to use a mysql client like MySQL work bench.

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

### Install NPM Dependencies & Start

Now you need to install the dependencies, to do so run the following command from the root of the repository.

```Bash
$ npm run install-all
```

Now we need to create the database. To do some run the following commands.

```Bash
$ cd backend
# Create symbolic link (since git clone doesn't)
$ ln -s ../client/src/shared shared
# Build our backend (which creates SQL configs)
$ npm run build
# Create the database
$ npm run create-db
# Migrate the database
$ npm run migrate
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
    ├── .gitignore
    ├── package.json             # Configuration file for npm (contains package dependencies)
    └── README.md

### Backend
The backend is built for an API interface to drive the GUI. The runtime is NodeJS under the [ExpressJS library](https://expressjs.com/). I suggest doing some EpressJS examples if you are not fimilar with the library.

**Resources**: [NodeJS Example](https://medium.com/@adnanrahic/hello-world-app-with-node-js-and-express-c1eb7cfa8a30), [ExpressJS Example](https://medium.com/@onejohi/building-a-simple-rest-api-with-nodejs-and-express-da6273ed7ca9)

The database used is a mongodb instance located on MongoDB Atlas. The API logic is loosely based on the [Model-view-controller (MVC) pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) with the views being in React instead of with the backend files.

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


## SQL Schema Migrations

Sometimes we would like to change the schema of the database, create an extra table, etc. To do so we must create what are called [SQL Schema Migrations](https://en.wikipedia.org/wiki/Schema_migration). We use [sequelize-cli](https://www.npmjs.com/package/sequelize-cli) for migrations, check out [their documentation](https://sequelize.org/master/manual/migrations.html) for more details on how to create migrations. We will go over how to make a basic migration.

First we need to create a sequelize migration script to do so, `cd` into the `/backend` directory, replace the `${NAME}` with a custom name of your choosing and run this command.

```Bash
$ npx sequelize-cli migration:generate --name ${NAME}
```

This will generate an empty migration skeleton in the `/backend/migrations` directory that looks like the following.

```JavaScript
module.exports = {
  up: async (queryInterface, Sequelize) => {
  },
  down: async (queryInterface, Sequelize) => {
  }
};
```

We will need to define our migration here using their api. [Check their documentation](https://sequelize.org/master/manual/migrations.html#migration-skeleton) for details on how to use it. The following is an example of creating a table called `Instance`.

```JavaScript
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Instances', {
      name: {
        type: Sequelize.STRING,
        allowNull: false,
        primaryKey: true
      },
      type: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Instances');
  }
};
```

It is important that we define the `down` to undo what ever the `up` migration is doing. In this case we just need to drop the table. Once we believe the migration is complete then run the following command to update the database.

```Bash
$ npm run migrate
```

There should be no errors in the console after running this command. If there is then inspect the migration for it's accuracy. The next step is to update the sequelize model in the `/backend/models` folder. For the above example we'd have to create a file called `instance.js` with the following code in it.

```JavaScript
'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Instance extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  Instance.init({
    name: {
      type: DataTypes.STRING,
      primaryKey: true,
      allowNull: false
    },
    type: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Instance',
  });
  return Instance;
};
```

Now we are done! We have created a migration. Check the official [sequelize-cli documentation](https://sequelize.org/master/manual/migrations.html) for more details.

## API Endpoints
```eval_rst
.. http:get:: /api/live/data

    Retrieves the live telemetry data

    **Example request**:

    .. sourcecode:: JavaScript

        axios.get('/api/live/data')

    **Example response**:

    .. sourcecode:: json

        {
            "speed": {
                "id":1,
                "speed":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "voltage":
            {
                "id":1,
                "lowCellVoltage":20,
                "highCellVoltage":30,
                "avgCellVoltage":25,
                "packSumVoltage":200,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "duration":
            {
                "id":1,
                "duration":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "temperature":
            {
                "id":1,
                "temperature":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "stateofCharge":
            {
                "id":1,
                "stateOfCharge":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "consumption":
            {
                "id":1,
                "speed":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "panelPower":
            {
                "id":1,
                "panelPower":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            },
            "gps":
            {
                "id":1,
                "heading":30,
                "latitude":"29.6472579",
                "longitude":"-82.3496962",
                "speed":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            }
        }


.. http:get:: /api/graph/coord

    Retrieves the live graph data

    **Example request**:

    .. sourcecode:: JavaScript

        axios.get('/api/graph/coord')

    **Example response**:

    .. sourcecode:: json

        {
            "success": true,
            "data": {
                "id":1,
                "heading":30,
                "latitude":"29.6472579",
                "longitude":"-82.3496962",
                "speed":10,
                "createdAt":"2020-05-10T12:00:00.000Z",
                "updatedAt":"2020-05-10T12:00:00.000Z"
            }
        }

.. http:post:: /api/bms

    Creates BMS data

    **Example request**:

    .. sourcecode:: JavaScript

        axios.post('/api/bms', {
            "lowCellVoltage": 20,
            "highCellVoltage": 30,
            "avgCellVoltage": 25,
            "packSumVoltage": 200
        })

    **Example response**:

    .. sourcecode:: json

        {}

.. http:post:: /api/gps

    Creates GPS data

    **Example request**:

    .. sourcecode:: JavaScript

        axios.post('/api/gps', {
            "heading":30,
            "latitude":"29.6472579",
            "longitude":"-82.3496962",
            "speed":10
        })

    **Example response**:

    .. sourcecode:: json

        {}
```
