#Docker for processwire

## Installation

First run script that will prepare the project:
```
sudo bash prepare.sh
```

This script will clone [processwire](https://github.com/processwire/processwire) project and
apply some needed permissions.

Now just run docker compose command and you are good to go.

```
docker-compose up
```

You will see processwires installation on your machines ip: `http://ip-address`. 
If you dont know your machines ip just run `docker-machine ls` and copy the ip adress in your browser.

Information about your mysql connection you can find in `docker-compose.yml`.