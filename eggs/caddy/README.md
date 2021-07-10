# caddy
Fast, multi-platform web server with automatic HTTPS

### Installation
Just import the .json in the **Nests** section of Pterodactyl.

### Configuration
As the configuration of a webserver can be tough, the egg will create a default `caddy.json` file.
This default configuration file disables the admin area and provides the configuration tol serve static files
out of the automatically created `www` directory.

You MUST adjust the port in the `caddy.json` file under `listen` manually. The port should match your allocated port.
You can allocate additional ports and host mutliple sites using a single server. This will **always** require properly 
setup ports in the `caddy.json` file.
