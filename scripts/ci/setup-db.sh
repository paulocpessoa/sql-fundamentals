#!/usr/bin/env sh
if [ -n $DB_TYPE ]
then
  if [[ $DB_TYPE == "pg" ]]
  then
    npm run db:setup:pg
    npm run db:migrate:pg --- up
    exit 0
  else
    npm run db:setup:sqlite
    npm run db:migrate:sqlite --- up
    exit 0
  fi
else
  echo -e "DB_TYPE not set\n"
  exit 1
fi
