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

## Accessing my virtual machine for the class
To access it via ssh:
```sh
ssh aluno@10.49.6.13
```

To authenticate with my institution ID and 
```sh
internet.sh
```

---

```sh
docker container run hello-world
```

Output:
```sh
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
17eec7bbc9d7: Pull complete 
Digest: sha256:54e66cc1dd1fcb1c3c58bd8017914dbed8701e2d8c74d9262e26bd9cc1642d31
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.
[...]
```

---

```sh
docker ps
```

Output:
```sh
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

---

```sh
docker images
```

Output:
```sh
REPOSITORY                    TAG       IMAGE ID       CREATED        SIZE
hello-world                   latest    1b44b5a3e06a   6 weeks ago    10.1kB
gcr.io/k8s-minikube/kicbase   v0.0.47   795ea6a69ce6   4 months ago   1.31GB
```

---

```sh
docker container ps -a
```

Output:
```sh
CONTAINER ID   IMAGE                                 COMMAND                  CREATED         STATUS                     PORTS     NAMES
2e7e0ef8d093   hello-world                           "/hello"                 3 minutes ago   Exited (0) 3 minutes ago             compassionate_gagarin
6b6d7730819a   gcr.io/k8s-minikube/kicbase:v0.0.47   "/usr/local/bin/entr…"   2 weeks ago     Exited (130) 2 weeks ago             minikube
```

---

```sh
docker run -it ubuntu bash
```

Output
```sh
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
953cdd413371: Pull complete 
Digest: sha256:353675e2a41babd526e2b837d7ec780c2a05bca0164f7ea5dbbd433d21d166fc
Status: Downloaded newer image for ubuntu:latest
root@1ac33b9d24cd:/# 
```

---

```sh
docker container run -ti centos:7
Unable to find image 'centos:7' locally
7: Pulling from library/centos
2d473b07cdd5: Pull complete 
Digest: sha256:be65f488b7764ad3638f236b7b515b3678369a5124c47b8d32916d6487418ea4
Status: Downloaded newer image for centos:7
```

```sh
[root@be1a3fbc25cb /]# cat /etc/redhat-release 
CentOS Linux release 7.9.2009 (Core)
```

---

```sh
aluno@controlplane:~$ docker container run -d -ti centos:7
16c1c2aef855db08d27385d409bc1c8de642f265b31246b7e2eea96d4aa6588f
aluno@controlplane:~$ docker ps
CONTAINER ID   IMAGE      COMMAND       CREATED         STATUS         PORTS     NAMES
0bd9d980c0d4   centos:7   "/bin/bash"   8 seconds ago   Up 8 seconds             loving_carson
```

---

```sh
```

<!-- 
- a container has its own network interfaces
- it works through a bridge with the machine running the docker service
- docker0 is the name of the bridge
- this isolation process is kinda of good
- iptables for port redirections
 -->