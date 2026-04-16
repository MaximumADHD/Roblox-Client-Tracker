PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["api"]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K2 ["analytics"]
       11 MOVE                             R7 R0
       12 CALL                             R3 4 -1
       13 NAMECALL                         R1 R1 K3 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 3
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
        5 GETTABLEKS                       R3 R4 K1 ["api"]
        7 GETUPVAL                         R4 2
        8 CALL                             R2 2 -1
        9 NAMECALL                         R0 R0 K2 ["dispatch"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R1 K2 ["PluginInstallation"]
        3 SETTABLEKS                       R1 R0 K3 ["Name"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["OnPluginInstalledFromWeb"]
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R2 R2 K5 ["Connect"]
       12 CALL                             R2 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R0 K8 [table.insert]
       16 CALL                             R0 -1 0
       17 LOADNIL                          R0
       18 GETIMPORT                        R2 K1 [plugin]
       20 GETTABLEKS                       R1 R2 K9 ["Unloading"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          REF R0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K10 ["connect"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 1
       31 LOADK                            R5 K11 ["InstalledPluginData"]
       32 NAMECALL                         R3 R3 K12 ["GetPropertyChangedSignal"]
       34 CALL                             R3 2 1
       35 DUPCLOSURE                       R5 K13 [PROTO_2]
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NAMECALL                         R3 R3 K5 ["Connect"]
       41 CALL                             R3 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R1 K8 [table.insert]
       45 CALL                             R1 -1 0
       46 GETUPVAL                         R2 3
       47 GETTABLEKS                       R1 R2 K14 ["createElement"]
       49 GETUPVAL                         R2 7
       50 DUPTABLE                         R3 K18 [{"plugin", "store", "api", "analytics"}]
       51 GETIMPORT                        R4 K1 [plugin]
       53 SETTABLEKS                       R4 R3 K0 ["plugin"]
       55 GETUPVAL                         R5 4
       56 GETTABLEKS                       R4 R5 K15 ["store"]
       58 SETTABLEKS                       R4 R3 K15 ["store"]
       60 GETUPVAL                         R5 4
       61 GETTABLEKS                       R4 R5 K16 ["api"]
       63 SETTABLEKS                       R4 R3 K16 ["api"]
       65 GETUPVAL                         R5 4
       66 GETTABLEKS                       R4 R5 K17 ["analytics"]
       68 SETTABLEKS                       R4 R3 K17 ["analytics"]
       70 CALL                             R1 2 1
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R2 R3 K19 ["mount"]
       74 MOVE                             R3 R1
       75 CALL                             R2 1 1
       76 MOVE                             R0 R2
       77 CLOSEUPVALS                      R0
       78 RETURN                           R0 0

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
       28 GETTABLEKS                       R5 R2 K12 ["Packages"]
       30 GETTABLEKS                       R4 R5 K13 ["Roact"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R7 R2 K14 ["Src"]
       37 GETTABLEKS                       R6 R7 K15 ["Util"]
       39 GETTABLEKS                       R5 R6 K16 ["getPluginGlobals"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R8 R2 K14 ["Src"]
       46 GETTABLEKS                       R7 R8 K15 ["Util"]
       48 GETTABLEKS                       R6 R7 K17 ["showDialog"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K9 [require]
       53 GETTABLEKS                       R9 R2 K14 ["Src"]
       55 GETTABLEKS                       R8 R9 K18 ["Thunks"]
       57 GETTABLEKS                       R7 R8 K19 ["InstallPluginFromWeb"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R10 R2 K14 ["Src"]
       64 GETTABLEKS                       R9 R10 K18 ["Thunks"]
       66 GETTABLEKS                       R8 R9 K20 ["RefreshPlugins"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R11 R2 K14 ["Src"]
       73 GETTABLEKS                       R10 R11 K21 ["Components"]
       75 GETTABLEKS                       R9 R10 K22 ["ManagementApp"]
       77 CALL                             R8 1 1
       78 MOVE                             R9 R4
       79 GETIMPORT                        R10 K24 [plugin]
       81 CALL                             R9 1 1
       82 NEWTABLE                         R10 0 0
       84 DUPCLOSURE                       R11 K25 [PROTO_0]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R5
       89 DUPCLOSURE                       R12 K26 [PROTO_3]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R8
       98 MOVE                             R13 R12
       99 CALL                             R13 0 0
      100 RETURN                           R0 0
