# once toddmaustin'in forkladigi spike repo'sunu indirip kuruyoruz.
git submodule update --init --recursive
cd spike_toddmaustin
mkdir -p build
cd build
../configure --prefix=$RISCV
make -j12

# SPIKE_TODDMAUSTIN degiskenini bashrc scriptine ekliyoruz.
cd .. # build dizininden cikarak spike_toddmaustin dizinine gidiyoruz.
echo "export SPIKE_TODDMAUSTIN=$(pwd)" >> ~/.bashrc
source ~/.bashrc


# testleri calistirmadan once mmio_plugin.so'yu derliyoruz.
cd ../bringup-bench
make spike-build # bringup-bench/target dizini altinda mmio_plugin.so 
#                  dosyasi olusacak.
# testleri calistiriyoruz.
make TARGET=spike run-tests
# NOT: 
# bende riscv derleyicisinin multi-lib konfigurasyonu:
riscv64-unknown-elf-gcc --print-multi-lib
# bu asagidaki gibi.
# .;
# rv32e/ilp32e;@march=rv32e@mabi=ilp32e
# rv32ea/ilp32e;@march=rv32ea@mabi=ilp32e
# rv32em/ilp32e;@march=rv32em@mabi=ilp32e
# rv32eac/ilp32e;@march=rv32eac@mabi=ilp32e
# rv32emac/ilp32e;@march=rv32emac@mabi=ilp32e
# rv32i/ilp32;@march=rv32i@mabi=ilp32
# rv32if_zicsr/ilp32f;@march=rv32if_zicsr@mabi=ilp32f
# rv32ifd_zicsr/ilp32d;@march=rv32ifd_zicsr@mabi=ilp32d
# rv32ia/ilp32;@march=rv32ia@mabi=ilp32
# rv32iaf_zicsr/ilp32f;@march=rv32iaf_zicsr@mabi=ilp32f
# rv32imaf_zicsr/ilp32f;@march=rv32imaf_zicsr@mabi=ilp32f
# rv32iafd_zicsr/ilp32d;@march=rv32iafd_zicsr@mabi=ilp32d
# rv32im/ilp32;@march=rv32im@mabi=ilp32
# rv32imf_zicsr/ilp32f;@march=rv32imf_zicsr@mabi=ilp32f
# rv32imfc_zicsr/ilp32f;@march=rv32imfc_zicsr@mabi=ilp32f
# rv32imfd_zicsr/ilp32d;@march=rv32imfd_zicsr@mabi=ilp32d
# rv32iac/ilp32;@march=rv32iac@mabi=ilp32
# rv32imac/ilp32;@march=rv32imac@mabi=ilp32
# rv32imafc_zicsr/ilp32f;@march=rv32imafc_zicsr@mabi=ilp32f
# rv32imafdc_zicsr/ilp32d;@march=rv32imafdc_zicsr@mabi=ilp32d
# rv64i/lp64;@march=rv64i@mabi=lp64
# rv64if_zicsr/lp64f;@march=rv64if_zicsr@mabi=lp64f
# rv64ifd_zicsr/lp64d;@march=rv64ifd_zicsr@mabi=lp64d
# rv64ia/lp64;@march=rv64ia@mabi=lp64
# rv64iaf_zicsr/lp64f;@march=rv64iaf_zicsr@mabi=lp64f
# rv64imaf_zicsr/lp64f;@march=rv64imaf_zicsr@mabi=lp64f
# rv64iafd_zicsr/lp64d;@march=rv64iafd_zicsr@mabi=lp64d
# rv64im/lp64;@march=rv64im@mabi=lp64
# rv64imf_zicsr/lp64f;@march=rv64imf_zicsr@mabi=lp64f
# rv64imfc_zicsr/lp64f;@march=rv64imfc_zicsr@mabi=lp64f
# rv64imfd_zicsr/lp64d;@march=rv64imfd_zicsr@mabi=lp64d
# rv64iac/lp64;@march=rv64iac@mabi=lp64
# rv64imac/lp64;@march=rv64imac@mabi=lp64
# rv64imafc_zicsr/lp64f;@march=rv64imafc_zicsr@mabi=lp64f
# rv64imafdc_zicsr_zifencei/lp64d;@march=rv64imafdc_zicsr_zifencei@mabi=lp64d

# bu konfigurasyondaki derleyiciyi kullanarak
# bringup-bench'teki Makefile'daki komutla derleyince
# (anladigim kadariyla float buyruklari kullanmayip soft-float derledigi icin)
# spike'ta sorunsuz calisiyor.
