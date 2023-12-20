#!/usr/bin/env bash

characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()<>?"
password_length=12

password=$(tr -dc "$characters" < /dev/urandom | fold -w $password_length | head -n 1)

echo "$password"
