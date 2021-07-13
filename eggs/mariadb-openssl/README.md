# mariadb-openssl
MariaDB server is a community developed fork of MySQL server. Started by core members of the original MySQL team, 
MariaDB actively works with outside developers to deliver the most featureful, 
stable, and sanely licensed open SQL server in the industry.

This egg is provided with an automated OpenSSL certificate deployment of a self-signed certificate.
The self-signed certificate allows to connect to your database server with an SSL encrypted connection.
As the certicate is self-signed, you should think twice when it is appropriate to use it.

### Installation
Just import the .json in the **Nests** section of Pterodactyl.

### Configuration
A certificate will always being generated and configured.
You can specify the DN and period how long the certificate should be valid through variables.

The certificates are being generated during server installation. If your certificate runs out, run installation script to reinstall the server.

### Credits
This egg is based on the official [parkervcp/eggs - database/sql/mariadb](https://github.com/parkervcp/eggs/tree/master/database/sql/mariadb) egg.
