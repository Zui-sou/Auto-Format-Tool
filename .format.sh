lsblk

sleep .2

echo "Path of the desired drive"

read drive

umount $drive?*

wipefs --all $drive

sleep .05

echo -e 'o\nw' | fdisk $drive

echo -e 'n\np\n1\n\n\nw' | fdisk $drive

sleep .05

mkfs.exfat $drive'1'
