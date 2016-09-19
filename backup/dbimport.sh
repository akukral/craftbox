#!/usr/bin/env bash
  if [ -e /vagrant/backup/database.sql ]
    then
      mysql -ucraftbox_user -pcraftbox_pass craftbox < /vagrant/backup/database.sql
  fi
