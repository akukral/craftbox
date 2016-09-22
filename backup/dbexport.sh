#!/usr/bin/env bash
  mysqldump -ucraftbox_user -pcraftbox_pass craftbox > /vagrant/backup/database.sql
