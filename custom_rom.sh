#!/bin/bash
# Copyright (C) 2016 - 2019 Tuxafgmur - Dhollmen
# Removes unwanted files from the rom, before packaged it
# Parameters:
#   1 = $(TARGET_OUT)

WSYSTEMDIR=$1

sed '/ro.expect.recovery_id/d'          -i $WSYSTEMDIR/build.prop
sed '/dalvik.vm.stack-trace/d'          -i $WSYSTEMDIR/build.prop

FirstSortLine=`grep -n 'Additional Build Properties' $WSYSTEMDIR/build.prop | cut -d: -f1`
LastSortLine=`wc -l $WSYSTEMDIR/build.prop | cut -d ' ' -f1`
head -n $FirstSortLine $WSYSTEMDIR/build.prop > $WSYSTEMDIR/build.new
head -n $((LastSortLine)) $WSYSTEMDIR/build.prop | tail -n +$((FirstSortLine + 1)) | tr '\n[' '[\n' | sort | tr '\n[' '[\n' | grep -v '^\[$' | sort >> $WSYSTEMDIR/build.new
rm $WSYSTEMDIR/build.prop && mv $WSYSTEMDIR/build.new $WSYSTEMDIR/build.prop

sed '/dalvik.vm.stack-trace-file/d'     -i $WSYSTEMDIR/vendor/build.prop
FirstSortLine=`grep -n 'Additional Vendor Build Properties' $WSYSTEMDIR/vendor/build.prop | cut -d: -f1`
LastSortLine=`wc -l $WSYSTEMDIR/vendor/build.prop | cut -d ' ' -f1`
head -n $FirstSortLine $WSYSTEMDIR/vendor/build.prop > $WSYSTEMDIR/vendor/build.new
head -n $((LastSortLine)) $WSYSTEMDIR/vendor/build.prop | tail -n +$((FirstSortLine + 1)) | tr '\n[' '[\n' | sort | tr '\n[' '[\n' | grep -v '^\[$' | sort >> $WSYSTEMDIR/vendor/build.new
rm $WSYSTEMDIR/vendor/build.prop && mv $WSYSTEMDIR/vendor/build.new $WSYSTEMDIR/vendor/build.prop
