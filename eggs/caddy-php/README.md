# caddy-php
Fast, multi-platform web server with automatic HTTPS paired with PHP-FPM to provide the possibility to host PHP powered services.

### Installation
Just import the .json in the **Nests** section of Pterodactyl.

### Configuration
As the configuration of a webserver can be tough, the egg will create a default `Caddyfile` file.
This default configuration file disables the admin area and provides the configuration to serve static files
out of the automatically created `www` directory.

You MUST adjust the port in the `Caddyfile` file manually. The port should match your allocated port.
You can allocate additional ports and host mutliple sites using a single server. This will **always** require properly 
setup ports in the `Caddyfile` file.

**Note about ports**
The user that Pterodactyl is using is called "container" and has no root privileges. 
As the ports below 1025 require to be root, you must choose a port greater than 1024.
This also means you will need a reverse proxy to make the webserver available without appending the
port in the url.

### Important

This is a so called "multi egg". Multi eggs are not offically supported by Pterodactyl.
Neither plain webserver eggs are. This egg has been build as it somestimes is just easier to do stuff with
Pterodactyl for us and for others.
However, before you host a production site using this egg, think about it. From a security and usability point,
you might be (way) better of with some other solution.
