#!/usr/bin/expect -f
source /etc/profile.d/vagrant.sh
set timeout 2 

spawn composer install

expect {
    timeout { exit 1; }
    "Username: *"
}

send "$gitUsername\r"

expect {
    timeout { exit 1; }
    "Password: *"
}

send "$gitPassword\r"