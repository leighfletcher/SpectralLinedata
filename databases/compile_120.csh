#!/bin/csh

#-----------------------------------------------------------------------
# 120 format database
#-----------------------------------------------------------------------
 	set database = 'db120.par'

 	# set the inpout files for each gas
 	set filelist = ''
 	set filelist = "$filelist "'../../linedata/ld/h2o/h2o.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/co/co.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/co2/co2.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/ch4/ch4.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/c2h2/c2h2.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/c2h4/c2h4.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/c2h6/c2h6.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/c3h4/c3h4.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/c3h8/c3h8.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/c4h2/c4h2.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/c6h6/c6h6.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/ph3/ph3.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/nh3/nh3.0.h2.120'
 	set filelist = "$filelist "'../../linedata/ld/hf/hf.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/hcl/hcl.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/hbr/hbr.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/hi/hi.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/hcn/hcn.0.air.120'
 	set filelist = "$filelist "'../../linedata/ld/h2/h2.0.120'
 	set filelist = "$filelist "'../../linedata/ld/so2/so2.0.air.120'
        set filelist = "$filelist "'../../linedata/ld/hcp/hcp.0.air.120'
	set filelist = "$filelist "'../../linedata/ld/cs/cs.0.air.120'
	set filelist = "$filelist "'../../linedata/ldnir_2011/geh4/geh4.0.air.120'
	set filelist = "$filelist "'../../linedata/ldnir_2011/ash3/ash3.0.air.120'
 	cat $filelist | sort -n > $database

 	Makedb < db120_makedb.in

