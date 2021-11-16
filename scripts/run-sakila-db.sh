#!/bin/sh

passwd=${1:-N3v3r!nPr0d}
docker run -d --name sakila-db -p 5432:5432 -e POSTGRES_PASSWORD=$passwd sakila-db-img 