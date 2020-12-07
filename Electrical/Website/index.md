# Maintaining Website

We have a website located at [ufsolargators.org](https://ufsolargators.org) which contains information about our organization for sponsors and other interested parties to see. It is hosted for free using [GitHub Pages](https://pages.github.com/) and has an API hosted on AWS.

The website was built using React and the repository can be found on our GitHub organization called [Advertisement-Website](https://github.com/Solar-Gators/Advertisement-Website). The code for the API is also under the GitHub org, however it is private due to security concerns. Please request access from a senior member and they can get you that.

## Getting Set Up Locally

There are many guides on how to get setup with a react. Here are a few: [Official React Guide](https://reactjs.org/docs/getting-started.html), [W3 Schools Guide](https://www.w3schools.com/react/react_getstarted.asp).

To get started with making changes to the website nodeJS must be installed first, as it is a prerequisite to react.

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

   .. tab:: Windows 10

      The easiest way to install node on windows is to download the installer from their website. The link to their `download page is here <https://nodejs.org/en/download/>`_.

```

Next clone the [Advertisement-Website](https://github.com/Solar-Gators/Advertisement-Website) locally. Then `cd` into the directory of the project using your favorite terminal.

Now install the necessary packages using the following npm command.

```Bash
$ npm install
```

After installing there **should be no errors**. If there was you might see some red text in your terminal. At this point you will likely need to google the specific error you got to figure out how to move forward.

Now run start to see the website!

```Bash
$ npm start
```

After doing so a new window in your favorite browser should open at `http://localhost:3000`. If it doesn't you may need to navigate directly there.

## API Endpoints

Our API is located at [api.ufsolargators.org](https://api.ufsolargators.org/) and has various endpoints. This section will describe their use.


```eval_rst

.. http:post:: /api/contact

    This is the endpoint that our `contact form <https://ufsolargators.org/contact>`_ uses. It's used to send a message directly to a fixed email account defined in the backend.

    **Example request**:

    .. sourcecode:: JavaScript

        axios.post('https://api.ufsolargators.org/api/contact', {
            email: email,
            name: name,
            msg: msg,
            token: captcha
        })

    **Example response**:

    .. sourcecode:: json

        {
            msg: "Sent!",
            success: true
        }
    :query email: email address of the person to contacting us
    :query name: name of person contacting us
    :query msg: message they are sending
    :query token: captcha token

    :>json string msg: returns `Sent!` when success is `true`, other wise contains the error message
    :>json boolean success: when `false` there was an error, when `true` there was no error
```

## DNS Configuration

The DNS is hosted by google domains. Contact a senior member to get the credentials if it needs to be edited.
