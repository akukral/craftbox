#!/usr/bin/env bash
  if [-e /vagrant/database.sql] then
    mysql -ucraftbox_user -pcraftbox_pass craftbox < /vagrant/database.sql
  fi
