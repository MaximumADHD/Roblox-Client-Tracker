PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R2 R0 K0 ["Value"]
        5 SETTABLEKS                       R2 R1 K1 ["MasterVolumeStudio"]
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K6 [{[1], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Uri"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K7 ["action"]
        7 LOADK                            R2 K8 ["MainVolume"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K1 ["Text"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K9 ["tooltip"]
       14 LOADK                            R2 K8 ["MainVolume"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K2 ["Tooltip"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K10 ["MasterVolumeStudio"]
       21 SETTABLEKS                       R1 R0 K5 ["Value"]
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K6 [{[1], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K0 ["Uri"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K7 ["action"]
       10 LOADK                            R5 K8 ["MainVolume"]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["Text"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["tooltip"]
       17 LOADK                            R5 K8 ["MainVolume"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K10 ["MasterVolumeStudio"]
       24 SETTABLEKS                       R4 R3 K5 ["Value"]
       26 SETLIST                          R2 R3 1 [1]
       28 NAMECALL                         R0 R0 K11 ["UpdateAsync"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["Settings"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R4 0 1
        6 GETUPVAL                         R5 0
        7 SETLIST                          R4 R5 1 [1]
        9 NAMECALL                         R2 R1 K2 ["GetAsync"]
       11 CALL                             R2 2 1
       12 GETTABLEN                        R3 R2 1
       13 JUMPIFNOT                        R3 ; [+31]
       14 NEWTABLE                         R5 0 1
       16 DUPTABLE                         R6 K9 [{["Uri"], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
       17 GETUPVAL                         R7 0
       18 SETTABLEKS                       R7 R6 K3 ["Uri"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K10 ["action"]
       23 LOADK                            R8 K11 ["MainVolume"]
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K4 ["Text"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K12 ["tooltip"]
       30 LOADK                            R8 K11 ["MainVolume"]
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K13 ["MasterVolumeStudio"]
       37 SETTABLEKS                       R7 R6 K8 ["Value"]
       39 SETLIST                          R5 R6 1 [1]
       41 NAMECALL                         R3 R1 K14 ["UpdateAsync"]
       43 CALL                             R3 2 0
       44 JUMP                             ; [+30]
       45 NEWTABLE                         R5 0 1
       47 DUPTABLE                         R6 K9 [{["Uri"], ["Text"], ["Tooltip"], ["Enabled"] = True, ["Value"]}]
       48 GETUPVAL                         R7 0
       49 SETTABLEKS                       R7 R6 K3 ["Uri"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K10 ["action"]
       54 LOADK                            R8 K11 ["MainVolume"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K4 ["Text"]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K12 ["tooltip"]
       61 LOADK                            R8 K11 ["MainVolume"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K13 ["MasterVolumeStudio"]
       68 SETTABLEKS                       R7 R6 K8 ["Value"]
       70 SETLIST                          R5 R6 1 [1]
       72 NAMECALL                         R3 R1 K15 ["CreateAsync"]
       74 CALL                             R3 2 0
       75 GETUPVAL                         R3 3
       76 JUMPIFNOT                        R3 ; [+6]
       77 GETUPVAL                         R3 3
       78 NAMECALL                         R3 R3 K16 ["Disconnect"]
       80 CALL                             R3 1 0
       81 LOADNIL                          R3
       82 SETUPVAL                         R3 3
       83 GETUPVAL                         R5 0
       84 NAMECALL                         R3 R1 K17 ["BindAsync"]
       86 CALL                             R3 2 1
       87 GETUPVAL                         R5 4
       88 NAMECALL                         R3 R3 K18 ["Connect"]
       90 CALL                             R3 2 1
       91 SETUPVAL                         R3 3
       92 GETUPVAL                         R3 5
       93 JUMPIFNOT                        R3 ; [+6]
       94 GETUPVAL                         R3 5
       95 NAMECALL                         R3 R3 K16 ["Disconnect"]
       97 CALL                             R3 1 0
       98 LOADNIL                          R3
       99 SETUPVAL                         R3 5
      100 GETUPVAL                         R3 2
      101 LOADK                            R5 K13 ["MasterVolumeStudio"]
      102 NAMECALL                         R3 R3 K19 ["GetPropertyChangedSignal"]
      104 CALL                             R3 2 1
      105 NEWCLOSURE                       R5 P0
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          UPVAL U2
      110 NAMECALL                         R3 R3 K18 ["Connect"]
      112 CALL                             R3 2 1
      113 SETUPVAL                         R3 5
      114 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [UserSettings]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K2 ["UserGameSettings"]
        5 NAMECALL                         R0 R0 K3 ["GetService"]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["AudioActions"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Src"]
       18 GETTABLEKS                       R3 R3 K11 ["Util"]
       20 GETTABLEKS                       R3 R3 K12 ["LocalizationUtil"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K13 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Settings", ["ItemId"] = "Main Volume"}]
       26 DUPCLOSURE                       R5 K23 [PROTO_1]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 2 0
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          REF R7
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R8
       41 SETTABLEKS                       R9 R6 K24 ["register"]
       43 NEWCLOSURE                       R9 P3
       44 CAPTURE                          REF R7
       45 CAPTURE                          REF R8
       46 SETTABLEKS                       R9 R6 K25 ["deregister"]
       48 CLOSEUPVALS                      R7
       49 RETURN                           R6 1
