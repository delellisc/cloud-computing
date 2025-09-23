# Cloud computing in Golang
This is a repo to record my findings while learning cloud computing and applications using Go.

## Script running for a undertemined amount of time
To run the script:
```sh
chmod +x ./bash-script/count.sh
./bash-script/count.sh
```

To run it on the background:
```sh
./bash-script/count.sh &
```

---

How to see processes running in background:
```sh
ps -ef | grep count
```

Output:
```sh
de-lell+   17859   11453  0 15:19 pts/12   00:00:00 /bin/bash ./bash-script/count.sh
de-lell+   18176   18120  0 15:20 pts/13   00:00:00 grep --color=auto count
```

---

Alternatively, using the `bg` command:
```
bg
```

Output:
```
bash: bg: job 1 already in background
```

--- 

To make a running process into a background process, simply press Crtl+Z while running the process:
```sh
^Z
[1]+  Stopped                 ./bash-script/count.sh
```

To return this process to the foreground, use the following command:
```sh
fg 1
./bash-script/count.sh
```

---

To see the network interfaces of the docker serive, run the following command:
```sh
docker network ls
```

Expected output:
```sh
NETWORK ID     NAME                          DRIVER    SCOPE
497861afe175   bridge                        bridge    local
995a7930ad95   end-to-end-pipeline_default   bridge    local
788c04e0983c   host                          host      local
b31abab93739   none                          null      local
```

---

To see the network interfaces of my machine, use the following command:

```sh
ip a
```

This command is short for `ip address`. Below, the expected output;

```sh
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 00:15:5d:a4:5c:fe brd ff:ff:ff:ff:ff:ff
    inet 172.18.111.14/20 brd 172.18.111.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::215:5dff:fea4:5cfe/64 scope link 
       valid_lft forever preferred_lft forever
3: br-995a7930ad95: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether aa:38:70:b1:35:4d brd ff:ff:ff:ff:ff:ff
    inet 172.19.0.1/16 brd 172.19.255.255 scope global br-995a7930ad95
       valid_lft forever preferred_lft forever
4: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 7e:45:67:ce:9e:db brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
```

---