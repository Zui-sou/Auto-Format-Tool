lsblk

sleep .2

echo "Path for the wanted drive"

read pathToDrive

umount $pathToDrive'1' $pathToDrive'2' $pathToDrive '3'

echo 'd\nn\np\n1\n\n\nw' | fdisk $pathToDrive

sleep .05

mkfs.exfat $pathToDrive'1'
