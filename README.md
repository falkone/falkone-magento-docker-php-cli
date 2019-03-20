# falkone/magento-docker-php-cli
Dockerfile to create an PHP-Container (CLI) for with Magento 2
- https://github.com/magento/magento2

All required PHP for Magento 2 are included.

## Usage
Show docker-compose example on
- https://github.com/falkone/magento-docker-compose

## Special Features
This Container runs Crons that have to be linked to /var/spool/cron/crontabs
All cron files are changed to correct permission and owner on container start.

## Credits

#### Inspired by 
- [docker-library/php](https://github.com/docker-library/php/blob/873725e57ec2fc5f2642dc0023676597bcc4bea9/7.2/alpine3.9/cli/Dockerfile)
- [magento/magento-cloud-docker-elasticsearch](https://hub.docker.com/r/magento/magento-cloud-docker-elasticsearch)
- [meanbee/docker-magento2](https://github.com/meanbee/docker-magento2)