<div align="center">

# Lazy Bytez Custom Eggs

![license-info][license-info]
![discord-info][discord-info]

![commit-info][commit-info]
![contributors-info][contributors-info]
![reposize-info][reposize-info]
![stars][stars]

</div>

## Description
In this repository you find some custom eggs that do not fit in the official [parkervcp/eggs](https://github.com/parkervcp/eggs) repository like webservers or very specific software.

**Important:** 
 - The eggs in this repository are not affiliated with the official [parkervcp/eggs](https://github.com/parkervcp/eggs) 
 - They have been made to cover some edge-cases that some people want (which are not always supported nor recommended by Pterodactyl)
 - If you need support in any way, join our Discored or use GitHubs discusions.
 - Regarding caddy & caddy-php:
   - The web eggs in this repository are meant for experimentation, development (stage/dev instances) or testing stuff
   - Production use is theoretically possible but in no way recommended
   - You cannot use ports below 1024 (80 for HTTP and 443 for HTTPS are not possible!)
   - We recommend a reverse proxy with a basic auth infront of the servers and a properly configured firewall 
  
_You wont get any support for our eggs in the official [parkervcp/eggs](https://github.com/parkervcp/eggs) repo or on the official Pterodactyl Discord! Use our repo or Discord for support!_

## Links to Eggs

### Services
- [caddy](/eggs/caddy)
- [caddy-php](/eggs/caddy-php)
- [grafana-image-renderer](/eggs/grafana-image-renderer/)
- [mariadb-openssl](/eggs/mariadb-openssl)

## Docker Images
Images used by the eggs of this repository can be found on ghcr.
Refer to the packages section and choose [custom-eegs](https://github.com/lazybytez/custom-eggs/pkgs/container/custom-eggs) of the repository to see all available tags.

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


[license-info]: https://img.shields.io/github/license/lazybytez/custom-eggs?logo=gnu&style=for-the-badge&colorA=302D41&colorB=f9e2af&logoColor=f9e2af
[discord-info]: https://img.shields.io/discord/735171597362659328?label=Discord&logo=discord&logoColor=b4befe&style=for-the-badge&colorA=302D41&colorB=b4befe
[commit-info]: https://img.shields.io/github/last-commit/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=b4befe
[contributors-info]: https://img.shields.io/github/contributors/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=cba6f7
[reposize-info]: https://img.shields.io/github/repo-size/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=89dceb
[stars]: https://img.shields.io/github/stars/lazybytez/custom-eggs?colorA=302D41&colorB=f9e2af&style=for-the-badge
