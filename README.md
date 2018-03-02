# COMP421 Project Deliverable 2

Submitted as Deliverable 2 for COMP421 group 16 

Note: This repo was made public on 2018-03-02 01:00AM

## How to Run

Create .pgpass file ([see documentation](https://www.postgresql.org/docs/current/static/libpq-pgpass.html)) to store password so that it does not have to be entered manually:
```
echo *:*:database:username:password > ~/.pgpass
```

Change permissions on password file to disallow any access to world or group. The file will be ignored if permissions are less strict.
```
chmod 0600 ~/.pgpass
```

Run full assigment (logs output to a folder with a timestamp).
```
/bin/bash projectD2.sh
```

