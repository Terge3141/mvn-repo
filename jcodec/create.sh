downloaddir="downloads"
extractdir="extract"
targetdir="jar"
target="${targetdir}/jcodecmerged-0.2.5.jar"
pomfilesrc="${extractdir}/META-INF/maven/org.jcodec/jcodec/pom.xml"
pomfiledst="${targetdir}/jcodecmerged-0.2.5.pom"

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

cp $pomfilesrc $pomfiledst

