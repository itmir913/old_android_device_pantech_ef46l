clear
echo ""
echo ""
echo "   ---------------------------------"
sleep 0.5
echo "    CM10.1 patch"
sleep 0.5
echo "    Source by hPa and Edit by Mir"
sleep 0.5
echo "   ---------------------------------"
sleep 0.5
echo "    Shell Script will start"
sleep 0.5
echo "   ---------------------------------"
sleep 0.5

# PATH DEVICE
DEVICE=ef46l
VENDOR=pantech

# ril PATH
cp ./ril/telephony/java/com/android/internal/telephony/SkyQualcommRIL.java ../../../frameworks/opt/telephony/src/java/com/android/internal/telephony

# install bdroid_buildcfg.h
cp ./bluetooth/bdroid_buildcfg.h ../../../external/bluetooth/bluedroid/audio_a2dp_hw

# ERROR FIX - no rules to make "out/target/product/$DEVICE/obj/KERNEL_OBJ/usr"
mkdir -p ../../../out/target/product/$DEVICE/obj/KERNEL_OBJ/usr

# ERROR FIX - Symlink
# ERROR : prebuilts/gcc/linux-x86/host/i686-linux-glibc2.7-4.6/bin/../sysroot/usr/include/bits/byteswap.h:22:3: error: #error "Never use <bits/byteswap.h> directly; include <byteswap.h> instead."
#if [ ! -s /usr/include/bits ]; then
#	sudo mkdir -p /usr/include/bits
#	sudo ln -s /usr/include/byteswap.h /usr/include/bits/byteswap.h
#	sudo ln -s /usr/include/linux/stat.h /usr/include/bits/stat.h
#	sudo cp -f ./ClentSocket/byteswap.h /usr/include/bits/byteswap.h
#	#sudo cp -f ./ClentSocket/stat.h /usr/include/bits/stat.h
#else
#	if [ ! -s /usr/include/bits/byteswap.h ]; then
#	#sudo cp -f ./ClentSocket/byteswap.h /usr/include/bits/byteswap.h
#	sudo ln -s /usr/include/byteswap.h /usr/include/bits/byteswap.h
#	fi
#	if [ ! -s /usr/include/bits/stat.h ]; then
#	#sudo cp -f ./ClentSocket/stat.h /usr/include/bits/stat.h
#	sudo ln -s /usr/include/linux/stat.h /usr/include/bits/stat.h
#	fi
#fi


# ERROR FIX - include
# ERROR : error: #error "Never include <bits/byteswap.h> directly; use <byteswap.h> instead."
#         error: #error "Never include <bits/stat.h> directly; use <sys/stat.h> instead."
#
if [ ! -s /usr/include/bits/byteswap.h ]; then
	sudo cp -f ./usrinclude/endian.h /usr/include
fi

if [ ! -s /usr/include/bits/stat.h ]; then
	sudo cp -f ./usrinclude/fcntl.h /usr/include
fi

# ERROR FIX - no such file
# ERROR : /usr/include/regex.h:26:31: fatal error: gnu/option-groups.h: No such file or directory
if [ ! -s /usr/include/gnu/option-groups.h ]; then
	sudo cp -f ./usrinclude/regex.h /usr/include
fi


echo ""
echo "    Finished Source PATCH and Error Fix"
echo ""
sleep 1
