downloaddir="downloads"
extractdir="extract"
target="jar/jcodecmerged-0.2.5.jar"

rm -rf $downloaddir $extractdir
mkdir $downloaddir $extractdir
wget -i urls.txt -P $downloaddir

currentdir=`pwd`
rpdd=`realpath ${downloaddir}`
rptarget=`realpath ${target}`
cd $extractdir
for i in `ls ${rpdd}/*.jar`; do
	jar -xf $i
done

jar -cf $rptarget *

cd $currentdir
