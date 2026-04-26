PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["store"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["pluginManagementApi"]
       10 LOADNIL                          R5
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["api"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K3 ["analytics"]
       17 MOVE                             R8 R0
       18 CALL                             R3 5 -1
       19 NAMECALL                         R1 R1 K4 ["dispatch"]
       21 CALL                             R1 -1 0
       22 JUMP                             ; [+17]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K0 ["store"]
       26 GETUPVAL                         R3 2
       27 LOADNIL                          R4
       28 GETUPVAL                         R5 3
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K2 ["api"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K3 ["analytics"]
       35 MOVE                             R8 R0
       36 CALL                             R3 5 -1
       37 NAMECALL                         R1 R1 K4 ["dispatch"]
       39 CALL                             R1 -1 0
       40 GETUPVAL                         R1 4
       41 MOVE                             R2 R0
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["Disconnect"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K3 ["unmount"]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["pluginManagementApi"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["api"]
       10 LOADNIL                          R5
       11 CALL                             R2 3 -1
       12 NAMECALL                         R0 R0 K3 ["dispatch"]
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["api"]
        8 GETUPVAL                         R5 2
        9 CALL                             R2 3 -1
       10 NAMECALL                         R0 R0 K2 ["dispatch"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R1 K2 ["PluginInstallation"]
        3 SETTABLEKS                       R1 R0 K3 ["Name"]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K4 ["pluginManagementApi"]
       12 GETTABLEKS                       R2 R3 K5 ["OnPluginInstalledFromWeb"]
       14 GETUPVAL                         R4 3
       15 NAMECALL                         R2 R2 K6 ["Connect"]
       17 CALL                             R2 2 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R0 K9 [table.insert]
       21 CALL                             R0 -1 0
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R2 R3 K5 ["OnPluginInstalledFromWeb"]
       27 GETUPVAL                         R4 3
       28 NAMECALL                         R2 R2 K6 ["Connect"]
       30 CALL                             R2 2 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R0 K9 [table.insert]
       34 CALL                             R0 -1 0
       35 LOADNIL                          R0
       36 GETIMPORT                        R2 K1 [plugin]
       38 GETTABLEKS                       R1 R2 K10 ["Unloading"]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          REF R0
       43 CAPTURE                          UPVAL U5
       44 NAMECALL                         R1 R1 K6 ["Connect"]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 0
       48 CALL                             R1 0 1
       49 JUMPIFNOT                        R1 ; [+19]
       50 GETUPVAL                         R2 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K4 ["pluginManagementApi"]
       54 LOADK                            R5 K11 ["InstalledPluginData"]
       55 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       57 CALL                             R3 2 1
       58 DUPCLOSURE                       R5 K13 [PROTO_2]
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U6
       61 NAMECALL                         R3 R3 K6 ["Connect"]
       63 CALL                             R3 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R1 K9 [table.insert]
       67 CALL                             R1 -1 0
       68 JUMP                             ; [+17]
       69 GETUPVAL                         R2 1
       70 GETUPVAL                         R3 4
       71 LOADK                            R5 K11 ["InstalledPluginData"]
       72 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       74 CALL                             R3 2 1
       75 DUPCLOSURE                       R5 K14 [PROTO_3]
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 NAMECALL                         R3 R3 K6 ["Connect"]
       81 CALL                             R3 2 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R1 K9 [table.insert]
       85 CALL                             R1 -1 0
       86 GETUPVAL                         R2 5
       87 GETTABLEKS                       R1 R2 K15 ["createElement"]
       89 GETUPVAL                         R2 8
       90 DUPTABLE                         R3 K19 [{"plugin", "store", "api", "analytics", "pluginManagementApi"}]
       91 GETIMPORT                        R4 K1 [plugin]
       93 SETTABLEKS                       R4 R3 K0 ["plugin"]
       95 GETUPVAL                         R5 2
       96 GETTABLEKS                       R4 R5 K16 ["store"]
       98 SETTABLEKS                       R4 R3 K16 ["store"]
      100 GETUPVAL                         R5 2
      101 GETTABLEKS                       R4 R5 K17 ["api"]
      103 SETTABLEKS                       R4 R3 K17 ["api"]
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R4 R5 K18 ["analytics"]
      108 SETTABLEKS                       R4 R3 K18 ["analytics"]
      110 GETUPVAL                         R5 0
      111 CALL                             R5 0 1
      112 JUMPIFNOT                        R5 ; [+4]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R4 R5 K4 ["pluginManagementApi"]
      116 JUMPIF                           R4 ; [+1]
      117 LOADNIL                          R4
      118 SETTABLEKS                       R4 R3 K4 ["pluginManagementApi"]
      120 CALL                             R1 2 1
      121 GETUPVAL                         R3 5
      122 GETTABLEKS                       R2 R3 K20 ["mount"]
      124 MOVE                             R3 R1
      125 CALL                             R2 1 1
      126 MOVE                             R0 R2
      127 CLOSEUPVALS                      R0
      128 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MarketplaceService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K10 ["Bin"]
       23 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       25 CALL                             R3 1 0
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R5 R2 K10 ["Bin"]
       30 GETTABLEKS                       R4 R5 K12 ["getFFlagStudioFixPluginManagementPluginTests"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R3
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+11]
       36 GETIMPORT                        R4 K9 [require]
       38 GETTABLEKS                       R6 R2 K10 ["Bin"]
       40 GETTABLEKS                       R5 R6 K13 ["isCli"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R4
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+1]
       46 RETURN                           R0 0
       47 GETIMPORT                        R4 K9 [require]
       49 GETTABLEKS                       R6 R2 K14 ["Packages"]
       51 GETTABLEKS                       R5 R6 K15 ["Roact"]
       53 CALL                             R4 1 1
       54 GETIMPORT                        R5 K9 [require]
       56 GETTABLEKS                       R8 R2 K16 ["Src"]
       58 GETTABLEKS                       R7 R8 K17 ["Util"]
       60 GETTABLEKS                       R6 R7 K18 ["getPluginGlobals"]
       62 CALL                             R5 1 1
       63 GETIMPORT                        R6 K9 [require]
       65 GETTABLEKS                       R9 R2 K16 ["Src"]
       67 GETTABLEKS                       R8 R9 K17 ["Util"]
       69 GETTABLEKS                       R7 R8 K19 ["showDialog"]
       71 CALL                             R6 1 1
       72 GETIMPORT                        R7 K9 [require]
       74 GETTABLEKS                       R10 R2 K16 ["Src"]
       76 GETTABLEKS                       R9 R10 K20 ["Thunks"]
       78 GETTABLEKS                       R8 R9 K21 ["InstallPluginFromWeb"]
       80 CALL                             R7 1 1
       81 GETIMPORT                        R8 K9 [require]
       83 GETTABLEKS                       R11 R2 K16 ["Src"]
       85 GETTABLEKS                       R10 R11 K20 ["Thunks"]
       87 GETTABLEKS                       R9 R10 K22 ["RefreshPlugins"]
       89 CALL                             R8 1 1
       90 GETIMPORT                        R9 K9 [require]
       92 GETTABLEKS                       R12 R2 K16 ["Src"]
       94 GETTABLEKS                       R11 R12 K23 ["Components"]
       96 GETTABLEKS                       R10 R11 K24 ["ManagementApp"]
       98 CALL                             R9 1 1
       99 MOVE                             R10 R5
      100 GETIMPORT                        R11 K26 [plugin]
      102 CALL                             R10 1 1
      103 NEWTABLE                         R11 0 0
      105 DUPCLOSURE                       R12 K27 [PROTO_0]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R6
      111 DUPCLOSURE                       R13 K28 [PROTO_4]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R9
      121 MOVE                             R14 R13
      122 CALL                             R14 0 0
      123 RETURN                           R0 0
