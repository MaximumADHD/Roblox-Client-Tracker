PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["DEPRECATED_installPlugin is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["store"]
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["pluginManagementApi"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["api"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["analytics"]
       22 MOVE                             R7 R0
       23 CALL                             R3 4 -1
       24 NAMECALL                         R1 R1 K7 ["dispatch"]
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 3
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

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
       10 CALL                             R2 2 -1
       11 NAMECALL                         R0 R0 K3 ["dispatch"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R1 K2 ["PluginInstallation"]
        3 SETTABLEKS                       R1 R0 K3 ["Name"]
        5 GETUPVAL                         R0 0
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+14]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K4 ["pluginManagementApi"]
       12 GETTABLEKS                       R2 R2 K5 ["OnPluginInstalledFromWeb"]
       14 GETUPVAL                         R4 3
       15 NAMECALL                         R2 R2 K6 ["Connect"]
       17 CALL                             R2 2 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R0 K9 [table.insert]
       21 CALL                             R0 -1 0
       22 LOADNIL                          R0
       23 GETIMPORT                        R1 K1 [plugin]
       25 GETTABLEKS                       R1 R1 K10 ["Unloading"]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          REF R0
       30 CAPTURE                          UPVAL U4
       31 NAMECALL                         R1 R1 K6 ["Connect"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K4 ["pluginManagementApi"]
       38 LOADK                            R5 K11 ["InstalledPluginData"]
       39 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       41 CALL                             R3 2 1
       42 DUPCLOSURE                       R5 K13 [PROTO_2]
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U5
       45 NAMECALL                         R3 R3 K6 ["Connect"]
       47 CALL                             R3 2 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R1 K9 [table.insert]
       51 CALL                             R1 -1 0
       52 GETUPVAL                         R1 4
       53 GETTABLEKS                       R1 R1 K14 ["createElement"]
       55 GETUPVAL                         R2 6
       56 DUPTABLE                         R3 K18 [{"plugin", "store", "api", "analytics", "pluginManagementApi"}]
       57 GETIMPORT                        R4 K1 [plugin]
       59 SETTABLEKS                       R4 R3 K0 ["plugin"]
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R4 R4 K15 ["store"]
       64 SETTABLEKS                       R4 R3 K15 ["store"]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R4 R4 K16 ["api"]
       69 SETTABLEKS                       R4 R3 K16 ["api"]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K17 ["analytics"]
       74 SETTABLEKS                       R4 R3 K17 ["analytics"]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R4 R4 K4 ["pluginManagementApi"]
       79 SETTABLEKS                       R4 R3 K4 ["pluginManagementApi"]
       81 CALL                             R1 2 1
       82 GETUPVAL                         R2 4
       83 GETTABLEKS                       R2 R2 K19 ["mount"]
       85 MOVE                             R3 R1
       86 CALL                             R2 1 1
       87 MOVE                             R0 R2
       88 CLOSEUPVALS                      R0
       89 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Flags"]
       13 GETTABLEKS                       R2 R2 K7 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K4 [require]
       18 GETTABLEKS                       R2 R0 K5 ["Src"]
       20 GETTABLEKS                       R2 R2 K6 ["Flags"]
       22 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioLazyPluginManagement"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K4 [require]
       31 GETTABLEKS                       R3 R0 K5 ["Src"]
       33 GETTABLEKS                       R3 R3 K6 ["Flags"]
       35 GETTABLEKS                       R3 R3 K9 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K4 [require]
       40 GETTABLEKS                       R4 R0 K5 ["Src"]
       42 GETTABLEKS                       R4 R4 K10 ["Util"]
       44 GETTABLEKS                       R4 R4 K11 ["isCli"]
       46 CALL                             R3 1 1
       47 MOVE                             R4 R3
       48 CALL                             R4 0 1
       49 JUMPIFNOT                        R4 ; [+1]
       50 RETURN                           R0 0
       51 GETIMPORT                        R4 K4 [require]
       53 GETTABLEKS                       R5 R0 K12 ["Packages"]
       55 GETTABLEKS                       R5 R5 K13 ["Roact"]
       57 CALL                             R4 1 1
       58 GETIMPORT                        R5 K4 [require]
       60 GETTABLEKS                       R6 R0 K5 ["Src"]
       62 GETTABLEKS                       R6 R6 K10 ["Util"]
       64 GETTABLEKS                       R6 R6 K14 ["getPluginGlobals"]
       66 CALL                             R5 1 1
       67 GETIMPORT                        R6 K4 [require]
       69 GETTABLEKS                       R7 R0 K5 ["Src"]
       71 GETTABLEKS                       R7 R7 K10 ["Util"]
       73 GETTABLEKS                       R7 R7 K15 ["showDialog"]
       75 CALL                             R6 1 1
       76 GETIMPORT                        R7 K4 [require]
       78 GETTABLEKS                       R8 R0 K5 ["Src"]
       80 GETTABLEKS                       R8 R8 K16 ["Thunks"]
       82 GETTABLEKS                       R8 R8 K17 ["InstallPluginFromWeb"]
       84 CALL                             R7 1 1
       85 GETIMPORT                        R8 K4 [require]
       87 GETTABLEKS                       R9 R0 K5 ["Src"]
       89 GETTABLEKS                       R9 R9 K16 ["Thunks"]
       91 GETTABLEKS                       R9 R9 K18 ["RefreshPlugins"]
       93 CALL                             R8 1 1
       94 GETIMPORT                        R9 K4 [require]
       96 GETTABLEKS                       R10 R0 K5 ["Src"]
       98 GETTABLEKS                       R10 R10 K19 ["Components"]
      100 GETTABLEKS                       R10 R10 K20 ["ManagementApp"]
      102 CALL                             R9 1 1
      103 MOVE                             R10 R5
      104 GETIMPORT                        R11 K22 [plugin]
      106 CALL                             R10 1 1
      107 NEWTABLE                         R11 0 0
      109 DUPCLOSURE                       R12 K23 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R6
      114 DUPCLOSURE                       R13 K24 [PROTO_3]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 MOVE                             R14 R13
      123 CALL                             R14 0 0
      124 RETURN                           R0 0
