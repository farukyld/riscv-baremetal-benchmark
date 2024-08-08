current_dir=${PWD##*/}
prev_dir=$PWD

if [ "$current_dir" != "bringup-bench" ]; then
  if [ -d "bringup-bench" ]; then
    cd bringup-bench
  fi
fi

echo -e  "\033[33m running test with: hard float is used, aliasing is disabled \033[0m"
make TARGET=spike HARD_FLOAT=1 ALIAS_RM_LIBMIN=0 run-tests # hard float is used, aliasing is disabled
echo -e  "\033[32m completed test with: hard float is used, aliasing is disabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: hard float is used, aliasing is enabled \033[0m"
# make TARGET=spike HARD_FLOAT=1 ALIAS_RM_LIBMIN=1 run-tests # hard float is used, aliasing is enabled
# echo -e  "\033[32m completed test with: hard float is used, aliasing is enabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is disabled \033[0m"
# make TARGET=spike HARD_FLOAT=0 ALIAS_RM_LIBMIN=1 run-tests # soft float is used, aliasing is enabled
# echo -e  "\033[32m completed test with: soft float is used, aliasing is enabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is disabled \033[0m"
# make TARGET=spike HARD_FLOAT=0 ALIAS_RM_LIBMIN=0 run-tests # soft float is used, aliasing is disabled
# echo -e  "\033[32m completed test with: soft float is used, aliasing is disabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is enabled \033[0m"
# make TARGET=spike ALIAS_RM_LIBMIN=0 run-tests # soft float is used, aliasing is disabled
# echo -e  "\033[32m completed test with: soft float is used, aliasing is disabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is enabled \033[0m"
# make TARGET=spike ALIAS_RM_LIBMIN=1 run-tests # soft float is used, aliasing is enabled
# echo -e  "\033[32m completed test with: soft float is used, aliasing is enabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is enabled \033[0m"
# make TARGET=spike HARD_FLOAT=0 run-tests # soft float is used, aliasing is enabled.
# echo -e  "\033[32m completed test with: soft float is used, aliasing is enabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: hard float is used, aliasing is enabled \033[0m"
# make TARGET=spike HARD_FLOAT=1 run-tests # hard float is used, aliasing is enabled.
# echo -e  "\033[32m completed test with: hard float is used, aliasing is enabled \033[0m"
# make all-clean

# echo -e  "\033[33m running test with: soft float is used, aliasing is enabled \033[0m"
# make TARGET=spike run-tests # soft float is used, aliasing is enabled.
# echo -e  "\033[32m completed test with: soft float is used, aliasing is enabled \033[0m"
# make all-clean


# echo -e  "\033[33m running test for target host \033[0m"
# make TARGET=host run-tests
# echo -e  "\033[32m completed test for target host \033[0m"

# echo -e  "\033[33m running test for spike_toddmaustin \033[0m"

cd $prev_dir
