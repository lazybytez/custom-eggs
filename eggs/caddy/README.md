# caddy
Fast, multi-platform web server with automatic HTTPS

### Installation
Just import the .json in the **Nests** section of Pterodactyl.

### Configuration
As the configuration of a webserver can be tough, the egg will create a default `Caddyfile` file.
This default configuration file provides the configuration to serve static files
out of the automatically created `www` directory.

### Note about ports
The user that Pterodactyl is using is called "container" and has no root privileges. 
As the ports below 1025 require to be root, you must choose a port greater than 1024.
This also means you will need a reverse proxy to make the webserver available without appending the
port in the url.
