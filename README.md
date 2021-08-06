# Custom Eggs
In this repository you find some custom eggs that do not fit in the official [parkervcp/eggs](https://github.com/parkervcp/eggs) repository like webservers or very specific software.

## Links to Eggs

### Services
- [caddy](/eggs/caddy)
- [caddy-php](/eggs/caddy-php)
- [grafana-image-renderer](/eggs/grafana-image-renderer/)
- [mariadb-openssl](/eggs/mariadb-openssl)

## Docker Images
Images used by the eggs of this repository can be found on ghcr.
Refer to the packages section and choose [custom-eegs](https://github.com/lazybytez/custom-eggs/pkgs/container/custom-eggs) of the repository to see all available tags.

## Webservers and Nginx
We had a `nginx / php` egg in this repository which has been removed. The NGINX egg did not reach the quality standard we wanted and was **not really secure**. The NGINX egg has been replaced with a Caddy egg that is way more configurable and secure.

## Contributing

If you want to take part in contribution, like fixing issues and contributing directly to the code base, plase visit the [How to Contribute][github-contribute] document.

## Useful links:
[License][github-license] - 
[Contributing][github-contribute] - 
[Code of conduct][github-codeofconduct] - 
[Issues][github-issues] - 
[Pull requests][github-pulls] - 
[Security][github-security] 

<hr>  

###### Copyright (c) [Lazy Bytez][github-team]. All rights reserved | Licensed under the MIT license. | 2020 - today

<!-- Variables -->
[github-team]: https://github.com/lazybytez

[github-license]: https://github.com/lazybytez/eggs/blob/master/LICENSE
[github-contribute]: https://github.com/lazybytez/eggs/blob/master/CONTRIBUTING.md
[github-codeofconduct]: https://github.com/lazybytez/eggs/blob/master/CODE_OF_CONDUCT.md
[github-issues]: https://github.com/lazybytez/eggs/issues
[github-pulls]: https://github.com/lazybytez/eggs/pulls
[github-security]: https://github.com/lazybytez/eggs/blob/master/SECURITY.md
