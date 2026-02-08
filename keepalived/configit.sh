#!/bin/bash
case $(hostname) in 
	"newsounds" )	STATE=MASTER sh ./configit.sh ;;
	"sounds")	STATE=BACKUP sh ./configit.sh ;;
	* ) echo "Host not recognized, needs setup" 1>&2 && exit -1
	;;
esac
