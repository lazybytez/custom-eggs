<div align="center">

# Lazy Bytez Custom Eggs

[![license-info][license-info]][github-license]
[![discord-info][discord-info]][discord-link]

[![commit-info][commit-info]][github-commits]
[![contributors-info][contributors-info]][github-contributors]
[![reposize-info][reposize-info]][github-insights]
[![stars-info][stars-info]][github-stars]

</div>

## Description

In this repository you find some custom eggs that **_do not fit_** in the
official [parkervcp/eggs](https://github.com/parkervcp/eggs) repository like webservers or very specific software.

## Important:

- The eggs in this repository are **_in no way_** affiliated with the
  official [parkervcp/eggs](https://github.com/parkervcp/eggs)
- They have been made to cover some _edge-cases_ that some people want (which are not always recommended or supported by
  Pterodactyl)
- If you need support in any way, join _our Discord_ or
  use _[GitHub discussions](https://github.com/lazybytez/custom-eggs/discussions)_.
- Regarding caddy & caddy-php:
    - The web eggs in this repository are meant for **experimentation**, development (stage/dev instances) or testing
      stuff
    - Production use is theoretically possible but **_in no way recommended_**
    - You cannot use ports below 1024 (80 for HTTP and 443 for HTTPS are not possible!)
    - We recommend a _reverse proxy_ with a _basic auth_ infront of the servers and a _properly configured firewall_

_You **won't get** any support for our eggs in the official [parkervcp/eggs](https://github.com/parkervcp/eggs) repo or
on the official Pterodactyl Discord! Use **our repo or Discord** for support!_

## Links to Eggs

### Services

- [caddy](/eggs/caddy)
- [caddy-php](/eggs/caddy-php)
- [grafana-image-renderer](/eggs/grafana-image-renderer/)
- [mariadb-openssl](/eggs/mariadb-openssl)

## Docker Images

Images used by the eggs of this repository can be found on ghcr. Refer to the packages section and
choose [custom-eggs](https://github.com/lazybytez/custom-eggs/pkgs/container/custom-eggs) of the repository to see all
available tags.

## Contributing

If you want to take part in contribution, like fixing issues and contributing directly to the code base, please visit
the [How to Contribute][github-contribute] document.

## Useful links:

[License][github-license] -
[Contributing][github-contribute] -
[Code of conduct][github-codeofconduct] -
[Issues][github-issues] -
[Pull requests][github-pulls] -
[Security][github-security]

<hr>  

###### Copyright (c) [Lazy Bytez][github-team]. All rights reserved | Licensed under the MIT license.

<!-- Variables -->

[license-info]: https://img.shields.io/github/license/lazybytez/custom-eggs?logo=gnu&style=for-the-badge&colorA=302D41&colorB=f9e2af&logoColor=f9e2af

[github-license]: https://github.com/lazybytez/eggs/blob/master/LICENSE

[discord-info]: https://img.shields.io/discord/735171597362659328?label=Discord&logo=discord&logoColor=b4befe&style=for-the-badge&colorA=302D41&colorB=b4befe

[discord-link]: https://discord.gg/bcV6TN2k9V

[commit-info]: https://img.shields.io/github/last-commit/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=b4befe

[github-commits]: https://github.com/lazybytez/custom-eggs/commits/master

[contributors-info]: https://img.shields.io/github/contributors/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=cba6f7

[github-contributors]: https://github.com/lazybytez/custom-eggs/graphs/contributors

[reposize-info]: https://img.shields.io/github/repo-size/lazybytez/custom-eggs?style=for-the-badge&colorA=302D41&colorB=89dceb

[github-insights]: https://github.com/lazybytez/custom-eggs/pulse

[stars-info]: https://img.shields.io/github/stars/lazybytez/custom-eggs?colorA=302D41&colorB=f9e2af&style=for-the-badge

[github-stars]: https://github.com/lazybytez/custom-eggs/stargazers

[github-contribute]: https://github.com/lazybytez/.github/blob/main/docs/CONTRIBUTING.md

[github-codeofconduct]: https://github.com/lazybytez/.github/blob/main/docs/CODE_OF_CONDUCT.md

[github-issues]: https://github.com/lazybytez/eggs/issues

[github-pulls]: https://github.com/lazybytez/eggs/pulls

[github-security]: https://github.com/lazybytez/eggs/blob/master/SECURITY.md

[github-team]: https://github.com/lazybytez
