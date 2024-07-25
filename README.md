# riscv-baremetal-benchmark


```shell
source run_with_spike_toddmaustin.sh
```

güncel spike ile çalıştırmak için (to run with up-to-date spike)

```shell
# change this to where you have the /riscv-isa-sim directory (it have to be built)
export SPIKE_ORIG=$SPIKE_ORIG 
git submodule update --init --recursive
cd bringup-bench
make TARGET=spike run-tests
```

sayaç tabanlı performans ölçümleri yapmak için uygun bir yer:
(an appropriate place to perform counter based performance measurements)
[jal x1, main](https://github.com/farukyld/bringup-bench/blob/00658228aa6ac738f29d190879743491b3446688/target/spike-crt0.S#L87)
