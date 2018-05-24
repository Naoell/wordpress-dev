# Setup

## Installation

### Windows
https://store.docker.com/editions/community/docker-ce-desktop-windows


## Start

### Windows

* Open PowerShell - *Do not use integrated terminal in VS-Code*
* Navigate to the 'windows' folder, or copy the content of the windows folder to this folder
* `docker-compose up -d`

### Linux / Mac

* Open bash at this folder
* `docker-compose up -d`

### First time start

* Go through Wordpress setup to create a test db
* Or copy a mysql folder
* Or import an export file into mysql_container

## Stop

* `docker-compose down`

# MySQL dumps

## Create MySQL dump

1. Run containers
2. Attach to container `docker exec -it mysql_container bash`
3. Run mysql dump `mysqldump -u root -p --no-create-db wordpress > /var/lib/mysql/wordpress-$(date +%Y-%m-%d).sql`
    * You will be prompted for password: `4dhWlbHg0Jlp`
4. Get the file from the mysql folder.

## Import MySQL dump
1. Put the file under the mysql folder.
2. Run containers
3. Attach to container `docker exec -it mysql_container bash`
4. Run sql file on database `mysql -u username -p wordpress < /var/lib/mysql/<filename>`
    * You will be prompted for password: `4dhWlbHg0Jlp`