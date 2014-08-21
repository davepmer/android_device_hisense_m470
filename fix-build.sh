cp -r sounds ../../../frameworks/base/data/

cp -r toolchain/prebuilt ../../../

cp build-mods.diff ../../../
cp deviceinfo.diff ../../../

cd ../../../

patch -p1 < build-mods.diff
patch -p1 < deviceinfo.diff

rm build-mods.diff
rm deviceinfo.diff

cd vendor/cm

./get-prebuilts
