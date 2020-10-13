function usage {
   echo Options are -r -h -b --branch --version --help
   exit 1
}
function handleopts {
    OPTS=`getopt -o r:hb::  -l branch::  -l help -l version -- "$@"`
    if [ $? != 0 ]
    then
        echo ERROR parsing arguments >&2
        exit 1
    fi
    eval set -- "$OPTS"
    while true ; do
        case "$1" in
            -r ) rightway=$2 
                shift 2;;
            --version ) echo "Version 1.2"; 
                 exit 0;;
            -h | --help ) usage; 
                 shift;;
            -b | --branch)  
                case "$2" in
                "") branchname="default"  ; shift 2 ;;
                 *) branchname="$2" ; shift 2 ;;
                esac ;;
            --) shift; break;;
        esac
    done
    if [ "$#" -ne 0 ]
    then
	echo Error extra command line arguments "$@"
	usage
    fi
}
rightway=no
handleopts $@
echo rightway = $rightway
echo branchname = $branchname


#$ bash options.sh 
#rightway = no
#branchname =
#
#$ bash options.sh -ryes
#rightway = yes
#branchname =
#
#$ bash options.sh -r yes
#rightway = yes
#branchname =
#
#$ bash options.sh -r=yes
#rightway = =yes
#branchname =
#
#$ bash options.sh -b
#rightway = no
#branchname = default
#
#$ bash options.sh -bhotdog
#rightway = no
#branchname = hotdog
#
#$ bash options.sh -b hotdog
#Error extra command line arguments hotdog
#Options are -r -h -b --branch --version --help
#
#$ bash options.sh -b=hotdog
#rightway = no
#branchname = =hotdog
#
#$ bash options.sh --branch
#rightway = no
#branchname = default
#
#$ bash options.sh --branchhotter
#getopt: unrecognized option '--branchhotter'
#ERROR parsing arguments
#
#$ bash options.sh --branch hotter
#Error extra command line arguments hotter
#Options are -r -h -b --branch --version --help
#
#$ bash options.sh --branch=hotter
#rightway = no
#branchname = hotter

