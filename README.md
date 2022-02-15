# autosync

```
# This project is used by the root user.
sudo su

docker-compose up -d --build

echo hello > sourcedir/hi.txt
# sleep 1 second to waiting file sync.You got 'hello'.
sleep 1; cat backupdir/hi.txt

echo hi > sourcedir/hi.txt
# sleep 1 second to waiting file sync. You got 'hi'.
sleep 1; cat backupdir/hi.txt

```
```
# clean up current test
docker-compose down;rm -rf sourcedir backupdir;exit
```