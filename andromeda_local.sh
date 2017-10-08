pkg=$(pm path projekt.andromeda)

echo "pkg:    $pkg"

echo "Cutting pkg"
echo $pkg | cut -d : -f 2 | sed s/\\r//g
echo "pkg:    $pkg"

tokill=$(pidof andromeda)

if [[ "$tokill" == "" ]]
then echo
am force-stop projekt.substratum
appops set projekt.andromeda RUN_IN_BACKGROUND allow
appops set projekt.substratum RUN_IN_BACKGROUND allow
CLASSPATH=$pkg app_process /system/bin --nice-name=andromeda projekt.andromeda.Andromeda &
echo "Done"
else echo
am force-stop projekt.substratum
kill -9 $kill
appops set projekt.andromeda RUN_IN_BACKGROUND allow
appops set projekt.substratum RUN_IN_BACKGROUND allow
CLASSPATH=$pkg app_process /system/bin --nice-name=andromeda projekt.andromeda.Andromeda &
echo "Done"
fi
