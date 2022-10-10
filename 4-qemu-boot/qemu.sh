export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/c/Program Files/qemu" &&

qemu-system-x86_64 -M microvm,x-option-roms=off -no-acpi \
   -m 512m -smp 2 \
   -nodefaults -no-user-config -nographic -no-reboot \
   -device virtio-serial-device -chardev stdio,id=virtiocon0 \
   -device virtconsole,chardev=virtiocon0 -drive id=root,file=alpine.qcow2,format=qcow2,if=none \
   -device virtio-blk-device,drive=root -kernel ./bzImage -append "earlyprintk=ttyS0 console=hvc0 root=/dev/vda rw acpi=off" 
   
read -p
