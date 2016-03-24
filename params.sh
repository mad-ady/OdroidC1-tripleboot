# ================================================================
# ==== P A R A M E T E R S =======================================
# ˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇˇ

# ****************************************************************
# Set sdcard block device (/dev/sdX) or IMAGE name               *
# You can check with "sudo blkid" which drive to use             *
# == For "extract_android" script it must be sdcard block device =
# == and it MUST CONTAIN ALLREADY INITIALIZED ANDROID SYSTEM     =
# For other scripts it can also be the image name                *
# IMAGE MUST BE PREPARED WITH "create_tripleboot_sd" SCRIPT      *
# ****************************************************************
sdcard="/dev/loop0"
#sdcard="/home/LoBo2_Razno/Odroid/images/OpenELEC-Odroid-C1-5.0.5.0.img"
#sdcard="ubuntu-14.04.2lts-lubuntu-odroid-c1-20150401.img"

# *********************************************************
# Backup/restore folder                                   *
# Destination folder for "extract_*" & "backup_*" scripts *
# Source folder for "restore_to_sdcard",                  *
#  "create_tripleboot_sd" & "copy_to_sdcard" scripts      *
# *********************************************************
bkpdir="odroid_triple_boot"


# *********************************************************
# File system type of linux partition                     *
# === USED ONLY IN create_tripleboot_sd ===               *
# *********************************************************
linux_fs_type="ext4"
#linux_fs_type="btrfs"


# *********************************************************
# Set this to "yes" if you don't need OpenELEC            *
# "create_tripleboot_sd" WILL STILL CREATE SMALL openElec *
# PARTITION (only 16MB) TO PRESERVE PARTITION STRUCTURE   *
# ******************************************************* *
skip_OpenELEC="no"
#skip_OpenELEC="yes"


# *********************************************************
# ==== ONLY USED IN "create_tripleboot_sd" SCRIPT =====   *
# ====       IF PREPARING SDCARD IMAGE !!         =====   *
# Set sdcard size in MB (1024x1024 byte)                  *
# "16 GB" SD CARD USUALLY HAS SIZE OF 15079 M             *
# ------------------------------------------------------- *
# Use fdisk -l /dev/sdX  to find your sd card size:       *
# sdcard_size = <size_in_bytes> / 1024 /102 - 100         *
# *********************************************************
sdcard_size=15079
#sdcard_size=7500

# *********************************************************
# ==== ONLY USED IN "create_tripleboot_sd" SCRIPT =====   *
# Set partition sizes                                     *
# LINUX partition is last, and it's size is calculated    *
# automaticaly to fit sd card size !                      *
# ------------------------------------------------------- *
# IF OpenELEC IS NOT USED, SWAP PARTITION IS CREATED      *
# WITH SIZE oelec_size                                    *
# *********************************************************
# === example: 16GB card ===
storage_size=3072   # Android STORAGE partition (FAT32)
system_size=512     # Android system partition (ext4)
userdata_size=2048  # Android userdata partition (ext4)
cache_size=512      # Android cache partition (ext4)
oelec_size=1024     # OpenELEC user data partition or SWAP partition

# === example: 8GB card ===
#storage_size=1024
#system_size=512
#userdata_size=1024
#cache_size=384
#oelec_size=512

# *********************************************************
# Start offset of storage partition (as reported by fdisk)*
# C1+ has 49152                                           *
# C2  has 65536                                           *
# Select the correct value based on your board type       *
# ------------------------------------------------------- *
# *********************************************************
# Uncomment below for C1
#storage_offset=49152
# Uncomment below for C2
storage_offset=65536

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# ==== P A R A M E T E R S =======================================
# ================================================================


