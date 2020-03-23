# Covid19

Proyecto salvadoreño hecho por el team DoItSV con el propósito de generar una web para diagnóstico y educación.

## Prerrequisito

- Ruby 2.7
- Rails 6.0.2.2
- PostgreSQL
- Node.js 10.13.0+
- Yarn 1.x+

## Cómo comenzar

1. `bundle install`
2. `rails db:create`
3. `rails db:migrate`
4. `rails db:seed`
5. `rails s`

## Cómo colaborar

_Pendiente_

## Problemas comunes

> `PG::ConnectionBad: could not connect to server: No such file or directory`

Es necesario iniciar/reiniciar el servicio de Postgres utilizando el comando `pg_ctl -D /usr/local/var/postgres start`

## Licencia

_Pendiente_
