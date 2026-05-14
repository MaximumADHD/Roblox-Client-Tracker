PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R2 R0 K0 ["Value"]
        5 SETTABLEKS                       R2 R1 K1 ["MasterVolumeStudio"]
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K5 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Uri"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K6 ["action"]
        7 LOADK                            R2 K7 ["MainVolume"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K1 ["Text"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K8 ["tooltip"]
       14 LOADK                            R2 K7 ["MainVolume"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K2 ["Tooltip"]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K3 ["Enabled"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K9 ["MasterVolumeStudio"]
       24 SETTABLEKS                       R1 R0 K4 ["Value"]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K5 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K0 ["Uri"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K6 ["action"]
       10 LOADK                            R5 K7 ["MainVolume"]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["Text"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K8 ["tooltip"]
       17 LOADK                            R5 K7 ["MainVolume"]
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K2 ["Tooltip"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K3 ["Enabled"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K9 ["MasterVolumeStudio"]
       27 SETTABLEKS                       R4 R3 K4 ["Value"]
       29 SETLIST                          R2 R3 1 [1]
       31 NAMECALL                         R0 R0 K10 ["UpdateAsync"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

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
       13 JUMPIFNOT                        R3 ; [+34]
       14 NEWTABLE                         R5 0 1
       16 DUPTABLE                         R6 K8 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
       17 GETUPVAL                         R7 0
       18 SETTABLEKS                       R7 R6 K3 ["Uri"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K9 ["action"]
       23 LOADK                            R8 K10 ["MainVolume"]
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K4 ["Text"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K11 ["tooltip"]
       30 LOADK                            R8 K10 ["MainVolume"]
       31 CALL                             R7 1 1
       32 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K12 ["MasterVolumeStudio"]
       40 SETTABLEKS                       R7 R6 K7 ["Value"]
       42 SETLIST                          R5 R6 1 [1]
       44 NAMECALL                         R3 R1 K13 ["UpdateAsync"]
       46 CALL                             R3 2 0
       47 JUMP                             ; [+33]
       48 NEWTABLE                         R5 0 1
       50 DUPTABLE                         R6 K8 [{"Uri", "Text", "Tooltip", "Enabled", "Value"}]
       51 GETUPVAL                         R7 0
       52 SETTABLEKS                       R7 R6 K3 ["Uri"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K9 ["action"]
       57 LOADK                            R8 K10 ["MainVolume"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R7 R6 K4 ["Text"]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K11 ["tooltip"]
       64 LOADK                            R8 K10 ["MainVolume"]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K5 ["Tooltip"]
       68 LOADB                            R7 1
       69 SETTABLEKS                       R7 R6 K6 ["Enabled"]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R7 R7 K12 ["MasterVolumeStudio"]
       74 SETTABLEKS                       R7 R6 K7 ["Value"]
       76 SETLIST                          R5 R6 1 [1]
       78 NAMECALL                         R3 R1 K14 ["CreateAsync"]
       80 CALL                             R3 2 0
       81 GETUPVAL                         R3 3
       82 JUMPIFNOT                        R3 ; [+6]
       83 GETUPVAL                         R3 3
       84 NAMECALL                         R3 R3 K15 ["Disconnect"]
       86 CALL                             R3 1 0
       87 LOADNIL                          R3
       88 SETUPVAL                         R3 3
       89 GETUPVAL                         R5 0
       90 NAMECALL                         R3 R1 K16 ["BindAsync"]
       92 CALL                             R3 2 1
       93 GETUPVAL                         R5 4
       94 NAMECALL                         R3 R3 K17 ["Connect"]
       96 CALL                             R3 2 1
       97 SETUPVAL                         R3 3
       98 GETUPVAL                         R3 5
       99 JUMPIFNOT                        R3 ; [+6]
      100 GETUPVAL                         R3 5
      101 NAMECALL                         R3 R3 K15 ["Disconnect"]
      103 CALL                             R3 1 0
      104 LOADNIL                          R3
      105 SETUPVAL                         R3 5
      106 GETUPVAL                         R3 2
      107 LOADK                            R5 K12 ["MasterVolumeStudio"]
      108 NAMECALL                         R3 R3 K18 ["GetPropertyChangedSignal"]
      110 CALL                             R3 2 1
      111 NEWCLOSURE                       R5 P0
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U2
      116 NAMECALL                         R3 R3 K17 ["Connect"]
      118 CALL                             R3 2 1
      119 SETUPVAL                         R3 5
      120 RETURN                           R0 0

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
       25 DUPTABLE                         R4 K18 [{"DataModel", "PluginId", "Category", "ItemId"}]
       26 LOADK                            R5 K19 ["Standalone"]
       27 SETTABLEKS                       R5 R4 K14 ["DataModel"]
       29 LOADK                            R5 K20 ["Audio"]
       30 SETTABLEKS                       R5 R4 K15 ["PluginId"]
       32 LOADK                            R5 K21 ["Settings"]
       33 SETTABLEKS                       R5 R4 K16 ["Category"]
       35 LOADK                            R5 K22 ["Main Volume"]
       36 SETTABLEKS                       R5 R4 K17 ["ItemId"]
       38 DUPCLOSURE                       R5 K23 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R6 2 0
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          REF R8
       53 SETTABLEKS                       R9 R6 K24 ["register"]
       55 NEWCLOSURE                       R9 P3
       56 CAPTURE                          REF R7
       57 CAPTURE                          REF R8
       58 SETTABLEKS                       R9 R6 K25 ["deregister"]
       60 CLOSEUPVALS                      R7
       61 RETURN                           R6 1
