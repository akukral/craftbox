#!/usr/bin/env bash
  mysqldump --add-drop-database -ucraftbox_user -pcraftbox_pass craftbox > /vagrant/database.sql
