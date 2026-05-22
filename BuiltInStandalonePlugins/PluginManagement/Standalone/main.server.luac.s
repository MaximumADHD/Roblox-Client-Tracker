PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["DEPRECATED_installPlugin is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+20]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["store"]
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["pluginManagementApi"]
       19 LOADNIL                          R5
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K5 ["api"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K6 ["analytics"]
       26 MOVE                             R8 R0
       27 CALL                             R3 5 -1
       28 NAMECALL                         R1 R1 K7 ["dispatch"]
       30 CALL                             R1 -1 0
       31 JUMP                             ; [+17]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K3 ["store"]
       35 GETUPVAL                         R3 3
       36 LOADNIL                          R4
       37 GETUPVAL                         R5 4
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K5 ["api"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K6 ["analytics"]
       44 MOVE                             R8 R0
       45 CALL                             R3 5 -1
       46 NAMECALL                         R1 R1 K7 ["dispatch"]
       48 CALL                             R1 -1 0
       49 GETUPVAL                         R1 5
       50 MOVE                             R2 R0
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

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
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["unmount"]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["pluginManagementApi"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["api"]
       10 LOADNIL                          R5
       11 CALL                             R2 3 -1
       12 NAMECALL                         R0 R0 K3 ["dispatch"]
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["api"]
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
        7 JUMPIF                           R0 ; [+30]
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+15]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K4 ["pluginManagementApi"]
       15 GETTABLEKS                       R2 R2 K5 ["OnPluginInstalledFromWeb"]
       17 GETUPVAL                         R4 4
       18 NAMECALL                         R2 R2 K6 ["Connect"]
       20 CALL                             R2 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R0 K9 [table.insert]
       24 CALL                             R0 -1 0
       25 JUMP                             ; [+12]
       26 GETUPVAL                         R1 2
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K5 ["OnPluginInstalledFromWeb"]
       30 GETUPVAL                         R4 4
       31 NAMECALL                         R2 R2 K6 ["Connect"]
       33 CALL                             R2 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R0 K9 [table.insert]
       37 CALL                             R0 -1 0
       38 LOADNIL                          R0
       39 GETIMPORT                        R1 K1 [plugin]
       41 GETTABLEKS                       R1 R1 K10 ["Unloading"]
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          REF R0
       46 CAPTURE                          UPVAL U6
       47 NAMECALL                         R1 R1 K6 ["Connect"]
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 1
       51 CALL                             R1 0 1
       52 JUMPIFNOT                        R1 ; [+19]
       53 GETUPVAL                         R2 2
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K4 ["pluginManagementApi"]
       57 LOADK                            R5 K11 ["InstalledPluginData"]
       58 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       60 CALL                             R3 2 1
       61 DUPCLOSURE                       R5 K13 [PROTO_2]
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U7
       64 NAMECALL                         R3 R3 K6 ["Connect"]
       66 CALL                             R3 2 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R1 K9 [table.insert]
       70 CALL                             R1 -1 0
       71 JUMP                             ; [+17]
       72 GETUPVAL                         R2 2
       73 GETUPVAL                         R3 5
       74 LOADK                            R5 K11 ["InstalledPluginData"]
       75 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       77 CALL                             R3 2 1
       78 DUPCLOSURE                       R5 K14 [PROTO_3]
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          UPVAL U8
       82 NAMECALL                         R3 R3 K6 ["Connect"]
       84 CALL                             R3 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R1 K9 [table.insert]
       88 CALL                             R1 -1 0
       89 GETUPVAL                         R1 6
       90 GETTABLEKS                       R1 R1 K15 ["createElement"]
       92 GETUPVAL                         R2 9
       93 DUPTABLE                         R3 K19 [{"plugin", "store", "api", "analytics", "pluginManagementApi"}]
       94 GETIMPORT                        R4 K1 [plugin]
       96 SETTABLEKS                       R4 R3 K0 ["plugin"]
       98 GETUPVAL                         R4 3
       99 GETTABLEKS                       R4 R4 K16 ["store"]
      101 SETTABLEKS                       R4 R3 K16 ["store"]
      103 GETUPVAL                         R4 3
      104 GETTABLEKS                       R4 R4 K17 ["api"]
      106 SETTABLEKS                       R4 R3 K17 ["api"]
      108 GETUPVAL                         R4 3
      109 GETTABLEKS                       R4 R4 K18 ["analytics"]
      111 SETTABLEKS                       R4 R3 K18 ["analytics"]
      113 GETUPVAL                         R5 1
      114 CALL                             R5 0 1
      115 JUMPIFNOT                        R5 ; [+4]
      116 GETUPVAL                         R4 3
      117 GETTABLEKS                       R4 R4 K4 ["pluginManagementApi"]
      119 JUMPIF                           R4 ; [+1]
      120 LOADNIL                          R4
      121 SETTABLEKS                       R4 R3 K4 ["pluginManagementApi"]
      123 CALL                             R1 2 1
      124 GETUPVAL                         R2 6
      125 GETTABLEKS                       R2 R2 K20 ["mount"]
      127 MOVE                             R3 R1
      128 CALL                             R2 1 1
      129 MOVE                             R0 R2
      130 CLOSEUPVALS                      R0
      131 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Bin"]
       23 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       25 CALL                             R3 1 0
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R2 K10 ["Bin"]
       30 GETTABLEKS                       R4 R4 K12 ["getFFlagStudioFixPluginManagementPluginTests"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R2 K10 ["Bin"]
       37 GETTABLEKS                       R5 R5 K13 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       39 CALL                             R4 1 1
       40 MOVE                             R5 R3
       41 CALL                             R5 0 1
       42 JUMPIFNOT                        R5 ; [+11]
       43 GETIMPORT                        R5 K9 [require]
       45 GETTABLEKS                       R6 R2 K10 ["Bin"]
       47 GETTABLEKS                       R6 R6 K14 ["isCli"]
       49 CALL                             R5 1 1
       50 MOVE                             R6 R5
       51 CALL                             R6 0 1
       52 JUMPIFNOT                        R6 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R5 K9 [require]
       56 GETTABLEKS                       R6 R2 K15 ["Packages"]
       58 GETTABLEKS                       R6 R6 K16 ["Roact"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K9 [require]
       63 GETTABLEKS                       R7 R2 K17 ["Src"]
       65 GETTABLEKS                       R7 R7 K18 ["Util"]
       67 GETTABLEKS                       R7 R7 K19 ["getPluginGlobals"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K9 [require]
       72 GETTABLEKS                       R8 R2 K17 ["Src"]
       74 GETTABLEKS                       R8 R8 K18 ["Util"]
       76 GETTABLEKS                       R8 R8 K20 ["showDialog"]
       78 CALL                             R7 1 1
       79 GETIMPORT                        R8 K9 [require]
       81 GETTABLEKS                       R9 R2 K17 ["Src"]
       83 GETTABLEKS                       R9 R9 K21 ["Thunks"]
       85 GETTABLEKS                       R9 R9 K22 ["InstallPluginFromWeb"]
       87 CALL                             R8 1 1
       88 GETIMPORT                        R9 K9 [require]
       90 GETTABLEKS                       R10 R2 K17 ["Src"]
       92 GETTABLEKS                       R10 R10 K21 ["Thunks"]
       94 GETTABLEKS                       R10 R10 K23 ["RefreshPlugins"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K9 [require]
       99 GETTABLEKS                       R11 R2 K17 ["Src"]
      101 GETTABLEKS                       R11 R11 K24 ["Components"]
      103 GETTABLEKS                       R11 R11 K25 ["ManagementApp"]
      105 CALL                             R10 1 1
      106 MOVE                             R11 R6
      107 GETIMPORT                        R12 K27 [plugin]
      109 CALL                             R11 1 1
      110 NEWTABLE                         R12 0 0
      112 DUPCLOSURE                       R13 K28 [PROTO_0]
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R7
      119 DUPCLOSURE                       R14 K29 [PROTO_4]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R10
      130 MOVE                             R15 R14
      131 CALL                             R15 0 0
      132 RETURN                           R0 0
