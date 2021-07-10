# grafana-image-renderer
Just import the .json in the **Nests** section of Pterodactyl.

The Dockerfile is available here: [DockerHub](https://hub.docker.com/repository/docker/lazybytez/eggs/)

### Configuration
Update your Grafana configuration to point to the right locations:
```
[rendering]
server_url = http://localhost:8081/render
callback_url = http://localhost:3000/
```
Replace `http://localhost:8081/render` with the address of your image renderer and `http://localhost:3000/` with the address of your
Grafana instance. These settings have to be changed in your Grafanas defaults.ini (or grafana.ini).

### Security
The Grafana Image Renderer does not have any protection by default.
It is strongly recommended to have a proper firewall setup on your server that restricts access
to this application to trusted hosts.
