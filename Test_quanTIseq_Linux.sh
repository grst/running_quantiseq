#$ -S /bin/sh

realpath2 ()
{

        relpath=$1
        cpath=`pwd`
        reldir=`dirname $relpath`
        relfile=`basename $relpath`
        cd $reldir
        abspath=`pwd`
        abspath=$abspath"/"$relfile
        cd $cpath
        echo $abspath

}

# Input file
infile=$1

# New path
infile=$(realpath2 $infile)

echo $infile

