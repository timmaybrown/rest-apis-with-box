# A ColdBox RESTful API of cfartgallery
This is a showcase of how to create a REST API using ColdBox. It contains many concepts, such as versioning through modules, request validation using the `cbValidation` module, custom and safe serialization using a Base Bean, use of the `cbBaseHandler` module and the Response Bean Class, and separation of layers to Controllers, Services and DAOs.

## Installation
You will need to run the project using CommandBox. Download the project locally on your computer. Then start up CommandBox, navigate to the project main folder and run these commands:

```
CommandBox:rest-apis-with-box> cd wwwroot
CommandBox:wwwroot> start
```

A Bootstrap page should appear running at [127.0.0.1:8085](http://127.0.0.1:8085):

<img src="https://github.com/evagoras/rest-apis-with-box/blob/master/homepage.png" alt="Homepage" width="500">

## Database
The project uses the `cfartgallery` database as its data store, running in an sqlite db file found at `/database/cfartgallery.db`. I automatically wire that driver with CommandBox, so there is nothing you should need to do.

In case the database does work, follow these steps. Add the file `/database/sqlite-jdbc--3.14.2.1.jar` to these folders depending on whether you are using a Mac/*nix or Windows system:

1. Mac/*nix - `/Users/{yourusername}/.CommandBox/server/{randomstring}-rest-apis-with-box/lucee-5.1.0.34/WEB-INF/lucee/{randomstring}/lib`.
2. Windows - TO DO.

After you add the `jar` file, you will need to restart your server for it to take effect:

```
CommandBox:wwwroot> server restart
```

 As long as you don't delete the server instance from your `/.CommandBox` system folder, you should only have to do this step once.

## Endpoints
* [/artists](http://127.0.0.1:8085/artists)
* [/artists/1](http://127.0.0.1:8085/artists/1)
* [/api/v1/artists/1](http://127.0.0.1:8085/api/v1/artists/1)
* [/api/v2/artists/1](http://127.0.0.1:8085/api/v2/artists/1)
* [/api/v2/artists](http://127.0.0.1:8085/api/v2/artists)

## CommandBox settings
By default I am using Lucee 5 as the application server. Edit the `/wwwroot/server.json` file to change the engine or any other properties.
