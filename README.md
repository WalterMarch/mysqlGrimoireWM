# MySQL Grimoire

## a book of MySQL (programming) magic

The repository is part of the larger [Grimoire Programmatica](https://github.com/WalterMarch/grimoireprogrammatica) project.

I'm currently a Software Engineer working a lot with MySQL. These queries may not always follow best practices because these are meant to be notes.

Once the devcontainer has launched, you should see the following message:

```
Please execute /workspaces/mysqlGrimoireWM/sakila-db/setup_sakila.sh to install the Sakila database.
```

Execute the suggested script to add [MySQL's Sakila Database](https://dev.mysql.com/doc/sakila/en/); the data the sample queries were written against.

To execute the queries, you can execute the following command to log in to the mysql server:

```bash
mysql -u root -p"example"
```

You can also use the SQLTools extension. Settings for a connection to the local database already exist in `.vscode/settings.json`.

## The queries

* [select.sql](select.sql) - simple, basic SELECT queries.

## miscellany

`configit.sh` looks like this:

```bash
#!/bin/bash

git config --global user.email "yourEmail@mail.com"
git config --global user.name "yourGitUserName"
git config --global push.autoSetupRemote true

git config --global --add safe.directory $1
```
