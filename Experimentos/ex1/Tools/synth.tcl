exec xst -ifn ./Auxiliar/dynamic_counter.prj -ofn dynamic_counter -ofmt NGC -p xc7k325t-2-ffg900 -top dynamic -iobuf NO


# set the synthesis tool
set SYNTH_TOOL [lindex [array get IMPLEMENTATION_DATA SYNTH_TOOL] 1]   
if {$SYNTH_TOOL == ""} {
  puts "Setting default synthesis tool to xst"
  set SYNTH_TOOL "xst"
} else {
  puts "Synthesis tool is set to $SYNTH_TOOL"
}

# Synthesize each of the RMs first
foreach rm $RMs {
  puts "**** Synthesizing Reconfig Module named <$rm> ****"
  cd $synthDir/$rm
  if {$debug >= 1} {
    set PWD [pwd]
    puts "DEBUG: pwd = $PWD"
  }
  # create the runfile for this module
  if {$GENERATE_RUNFILES == "YES"} {
     set runfile [open runfile.local "w"]
     puts $runfile "# source runfile.local "
  }

  # set up the command line
  if {$SYNTH_TOOL == "xst"} {
     set XST_DIR xst/xst.tmp
     file mkdir $XST_DIR
     set SYNTH_CMD "xst -ifn $rm.xst"
  } else {
     if {$SYNTH_TOOL == "synplify_pro"} {
        set SYNTH_CMD "synplify_pro -batch $rm.prj"
     } else {
        puts "Unrecognized SYNTH_TOOL $SYNTH_TOOL!"
        return 1
     }
  }

  puts $SYNTH_CMD

  # if there is a local xpartition.pxml, make sure it can be written to
  if [file exists "xpartition.pxml"] {
     puts "Local xpartition.pxml file found.  Making it writable on $tcl_platform(os)."
     if {$tcl_platform(os) == "Linux"} {
        file attributes xpartition.pxml -permissions 00666
     } elseif {$tcl_platform(os) == "Windows NT"} {
        file attributes xpartition.pxml -readonly 0
     } else {
        puts "Unsupported Platform $tcl_platform(os)"
        return 1
     }
  }

  if {$GENERATE_RUNFILES == "YES"} {
     puts $runfile $SYNTH_CMD
  } else {

  # run synthesis 
  if {[catch { eval exec $SYNTH_CMD } results] } {
     puts "ERROR: failed to synthesize $rm - $results!"
     cd $origDir
     exit 1;
  }
  }

  # close the runfile for this module
  if {$GENERATE_RUNFILES == "YES"} {
     close $runfile
  }
  cd $origDir
}

puts "\n**** Finished bottom-up synthesis of all RMs ****"