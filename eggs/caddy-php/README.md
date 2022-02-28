# caddy-php
Fast, multi-platform web server with automatic HTTPS paired with PHP-FPM to provide the possibility to host PHP powered services.

### Installation
Just import the .json in the **Nests** section of Pterodactyl.

### Configuration
As the configuration of a webserver can be tough, the egg will create a default `Caddyfile` file under `/home/container/.runtime/caddy`.
This default configuration file provides the configuration to serve an application from the automatically created `www` directory.
Depending on your application, you might have to adjust the `root` path in the webserver configuration.

Note that configuration done in the `.runtime` directory needs to be backed up, as the directory is recreated upon reinstallation.

**Note about ports**
The user that Pterodactyl is using is called "container" and has no root privileges. 
As the ports below 1025 require to be root, you must choose a port greater than 1024.
This also means you will need a reverse proxy to make the webserver available without appending the
port in the url.

**Note about reinstallation**
The following files and folders will be kept during reinstallation to prevent unintentional data loss
and must be removed manually (before pressing reinstall) for a full reinstall to happen:
 - www
 - logs
 - prestart.sh

#### Executing setup tasks
You can execute setup tasks (like `composer install`) using the `prestart.sh` file created during the installation of the egg.
Place your commands to execute at the position marked in the file.
This file will be executed on every server start.
Keep in mind to remove commands you don't want to be executed again before the next restart.

### Important

This is a so called "multi egg". Multi eggs are not offically supported by Pterodactyl.
Neither plain webserver eggs are. This egg has been build as it somestimes is just easier to do stuff with
Pterodactyl for us and for others.
However, before you host a production site using this egg, think about it. From a security and usability point,
you might be (way) better of with some other solution.

### Future ToDos
 - Add (optional) cron support
