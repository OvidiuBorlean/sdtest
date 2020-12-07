#!/bin/bash
echo "Testing disk write speed"
dd if=/dev/zero of=~/test.tmp bs=500K count=1024
echo "Cleaning Cache"
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches
echo "Testing read  speed"

dd if=~/test.tmp of=/dev/null bs=500K count=1024