#!/usr/bin/expect -f

set timeout 2 
set password ""

spawn mysql_secure_installation

expect {
    timeout { exit 1; }
    "Enter current password for*"
}

send "$password\r"

expect {
    timeout { exit 1; }
    "Set * password? *"
}

send "n\r"

expect {
    timeout { exit 1; }
    "Remove anonymous users? *"
}

send "Y\r"

expect {
    timeout { exit 1; }
    "Disallow root login remotely? *"
}

send "Y\r"

expect {
    timeout { exit 1; }
    "Remove test database and access to it? *"
}

send "Y\r"

expect {
    timeout { exit 1; }
    "Reload privilege tables now? *"
}

send "Y\r"

expect {
    timeout { exit 1; }
    "Cleaning up..."
}
