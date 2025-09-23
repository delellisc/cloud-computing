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