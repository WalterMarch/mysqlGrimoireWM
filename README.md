# MySQL Grimoire

## a book of MySQL (programming) magic

The repository is part of the larger [Grimoire Programmatica](https://github.com/WalterMarch/grimoireprogrammatica) project.

I'm currently a Software Engineer working a lot with MySQL. These queries may not always follow best practices because these are meant to be notes.

If things are launch correctly, all you should have to do to run the queries is log in to the mysql server:

```bash
mysql -u root -p"example"
```

## The data

Right now the data I use is from [MySQL's Sakila Database](https://dev.mysql.com/doc/sakila/en/).

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
