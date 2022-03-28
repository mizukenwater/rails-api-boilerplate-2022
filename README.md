## What is this?
The one that creates Ruby3, Rails7 and MySQL environments in a Docker Compose environment!

## How to use
Simply run the following
```sh
. /setup
````

If you can't execute it, please give him execute permission.
```sh
chmod +x . /setup.sh
```

Rewrite `APP_NAME/config/database.yml` (development & test environment)
```yml
  host: db
  password: root
  socket: /var/run/mysqld/mysqld.sock
```

Create database
```sh
docker compose run --rm app rails db:create
```

The location of the MySQL socket may be different for each
If it does not work, access the db container and check the location of the socket file with the following command
```sh
show variables like '%sock%';
```

Start the Rails server
```sh
docker compose up
OR
docker compose up -d
```

Yay!