# COMP421 Project Deliverable 2

Submitted as Deliverable 2 for COMP421 group 16 


## How to Run

Create .pgpass file to store password so that it does not have to be entered manually:
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

