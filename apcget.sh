#!/bin/bash

case $1 in
	"date")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f1;;
	"linevoltage")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f4;;
	"outputvoltage")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f5;;
	"batteryvoltage")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f6;;
	"outputfreq")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f7;;
	"load")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f8;;
	"internaltemp")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f9;;
	"frequency")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f14;;
	"batterycapacity")  tail -n1 /opt/APC/PowerChuteBusinessEdition/Agent/DataLog | cut -d$'\t' -f15;;
*) echo "ZBX_UNSUPPORTED";;
esac
