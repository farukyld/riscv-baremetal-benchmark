# riscv-baremetal-benchmark


```shell
source run_with_spike_toddmaustin.sh
```

güncel spike ile çalıştırmak için (to run with up-to-date spike)

```shell
# change this to where you have the built /riscv-isa-sim directory
export SPIKE_ORIG=$SPIKE_ORIG 
git submodule update --init --recursive
cd bringup-bench
make TARGET=spike run-tests
```

sayaç tabanlı performans ölçümleri yapmak için uygun bir yer:
(an appropriate place to perform counter based performance measurements)
[jal x1, main](https://github.com/farukyld/bringup-bench/blob/cd225ccfebf721de32bb53ed2a5c0b86add9870e/target/simple-crt0.S#L80)
