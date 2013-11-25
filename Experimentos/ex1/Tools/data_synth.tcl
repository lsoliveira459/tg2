#--BEGIN DESIGN SPECIFIC DATA----------------------------------------------
# 1:environment variables for all configurations
#set ::env(XIL_TIMING_ALLOW_IMPOSSIBLE) 1
# 2:part definition
set PART xc7k325t-2-ffg900

# 3:constraints file
set UCF ../../Source/UCF/KC705_Rev1_0_U1_ucf.ucf

# 4:Partition names
# These names must match the actual instance names in the design
set TOP_PART   /static
set DYNAMIC_PART ${TOP_PART}/dynamic

# 5:RM names
set DYNCOUNTER DynCounter
set DYNFSM     DynFSM
set TOP        Top

# 6:RM list
# Each RM in the list will be synthesized with bottom-up synthesis.
# You must create a directory for each of the RMs in the list
set RMs [list $DYNCOUNTER $DYNFSM $TOP]


# 7:Partition Attributes List
##############################################################################
# Create the per-partition attributes list.  This list must be called
# "PartitionAttrsList".  The format is:
#   set PartitionAttrsList <partitionlist>
# where
#   <partitionlist>  ::= { <partitionattrs> ... }
#   <partitionattrs> ::= { <partitionName> <attrslist> }
#   <attrslist>      ::= <namevalpair> ...
#   <namevalpair>    ::= { <attrName> <attrValue> }
##############################################################################

set PartitionAttrsList {
  {/top }
  {/top/dynamic  {Reconfigurable true}}
}
# 8:Configuration Information
##############################################################################
# Create the per-configuration variables.  The format is:
#   set CONFIG1DATA <ConfigList>
#   set CONFIG2DATA <ConfigList>
#     ...
#   set ALL_CFGS [list $CONFIG1DATA $CONFIG2DATA ... ]
# where
#   <ConfigList>        ::= { <ConfigNamePair> <Settings> }
#   <ConfigNamePair>    ::= { 'ConfigName' <Name> }
#   <Settings>          ::= { 'Settings' <SettingsList> }
#   <SettingsList>      ::= <PartSettingsList> ...
#   <PartSettingsList>  ::= <partitionName> <namevalpair> ...
##############################################################################

# Configuration Cfg_First_CW settings.
# Everything is implemented and `
#there is no import location
set CONFIG_First {
  {ConfigName CounterConfig}
  {Settings
    {/top	{State implement} }
    {/top/DynCounter	{State implement} {NetlistDir DynCounter} {ModName DynCounter } }
  }
}

# Configuration Cfg_Second_CCW settings.
# Everything is implemented and `
#there is no import location
set CONFIG_Second {
  {ConfigName FSMConfig}
  {Settings
    {/top	{State import} {ImportLocation ../XCfg_First_CW} }
    {/top/U1_RP_Bram	{State implement} {NetlistDir DynFSM} {ModName DynFSM } }
  }
}

# 9:List of configurations in order of implementation
# finally, build the list of all the configuration data.
# This list will drive the implementation of all configurations,
# in the order they are listed
set ALL_CFGS [list $CONFIG_First $CONFIG_Second]

# 10:Implementation options
# set the optional implementation data flags.
# The format of the optional data is:
# SYNTH_TOOL="xst" or "synplify_pro"
# RUN_RM_SYNTH=NO if the design has no modules to be synthesized bottom-up
# RUN_CFG_SYNTH=YES if you want "static" to be resynthesized for each configuration
# NGDBUILD_TOP=<top_path> is path to netlist for top relative to config directory
# NGDBUILD_SEARCH=<search_path ...> a string containing search path directories
# NGDBUILD_OPTS=<ngdbuild_command_line_options> optional command line options for Ngdbuild
# RUN_NGDBUILD=NO if you do not want to run NGDBuild
# RUN_MAP=NO if you do not want to run Map
# MAP_OPTS=<map_command_line_options> optional command line options for Map
# RUN_PAR=NO if you do not want to run PAR
# PAR_OPTS=<par_command_line_options> optional command line options for Par
# RUN_BITGEN=NO if you do not want to generate bitstreams
array set IMPLEMENTATION_DATA { \
                               SYNTH_TOOL "xst" \
                               RUN_RM_SYNTH YES \
                               RUN_CFG_SYNTH NO \
                               NGDBUILD_TOP ../../Synth/Top/Top.ngc \
                               RUN_NGDBUILD NO \
                               RUN_MAP NO \
                               RUN_PAR NO \
                               RUN_BITGEN NO \
			       			      }

#--END DESIGN SPECIFIC DATA------------------------------------------------
