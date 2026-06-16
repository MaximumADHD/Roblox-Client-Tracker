PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+43]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["GetInstalledPlugins"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["GetInstalledPluginIds"]
       10 CALL                             R2 1 1
       11 LENGTH                           R3 R2
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+24]
       15 GETUPVAL                         R5 2
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 3
       18 GETIMPORT                        R8 K4 [table.clone]
       20 MOVE                             R9 R2
       21 CALL                             R8 1 1
       22 MOVE                             R9 R1
       23 CALL                             R5 4 -1
       24 NAMECALL                         R3 R0 K5 ["dispatch"]
       26 CALL                             R3 -1 0
       27 GETUPVAL                         R3 4
       28 CALL                             R3 0 1
       29 JUMPIFNOT                        R3 ; [+87]
       30 GETUPVAL                         R5 5
       31 GETUPVAL                         R6 1
       32 GETUPVAL                         R7 3
       33 CALL                             R5 2 -1
       34 NAMECALL                         R3 R0 K5 ["dispatch"]
       36 CALL                             R3 -1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R5 6
       39 NEWTABLE                         R6 0 0
       41 CALL                             R5 1 -1
       42 NAMECALL                         R3 R0 K5 ["dispatch"]
       44 CALL                             R3 -1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 7
       47 GETUPVAL                         R2 1
       48 NAMECALL                         R2 R2 K6 ["DEPRECATED_GetInstalledPluginData"]
       50 CALL                             R2 1 -1
       51 CALL                             R1 -1 1
       52 NEWTABLE                         R2 0 0
       54 GETIMPORT                        R3 K8 [pairs]
       56 MOVE                             R4 R1
       57 CALL                             R3 1 3
       58 FORGPREP_NEXT                    R3
       59 GETTABLEKS                       R9 R7 K9 ["assetId"]
       61 FASTCALL1                        TONUMBER R9 ; [+2]
       62 GETIMPORT                        R8 K11 [tonumber]
       64 CALL                             R8 1 1
       65 JUMPIFNOTEQKNIL                  R8 ; [+10]
       67 GETIMPORT                        R9 K13 [warn]
       69 LOADK                            R10 K14 ["assetId is nil or non-numeric for installedPlugin on refresh"]
       70 GETTABLEKS                       R11 R7 K9 ["assetId"]
       72 CALL                             R9 2 0
       73 LOADNIL                          R9
       74 SETTABLE                         R9 R1 R6
       75 JUMP                             ; [+8]
       76 GETTABLE                         R9 R1 R6
       77 SETTABLEKS                       R8 R9 K9 ["assetId"]
       79 LENGTH                           R10 R2
       80 ADDK                             R9 R10 K15 [1]
       81 GETTABLEKS                       R10 R7 K9 ["assetId"]
       83 SETTABLE                         R10 R2 R9
       84 FORGLOOP                         R3 2 ; [-26]
       86 LENGTH                           R3 R2
       87 LOADN                            R4 0
       88 JUMPIFNOTLT                      R4 R3 ; [+21]
       90 GETUPVAL                         R5 2
       91 GETUPVAL                         R6 1
       92 GETUPVAL                         R7 3
       93 MOVE                             R8 R2
       94 MOVE                             R9 R1
       95 CALL                             R5 4 -1
       96 NAMECALL                         R3 R0 K5 ["dispatch"]
       98 CALL                             R3 -1 0
       99 GETUPVAL                         R3 4
      100 CALL                             R3 0 1
      101 JUMPIFNOT                        R3 ; [+15]
      102 GETUPVAL                         R5 5
      103 GETUPVAL                         R6 1
      104 GETUPVAL                         R7 3
      105 CALL                             R5 2 -1
      106 NAMECALL                         R3 R0 K5 ["dispatch"]
      108 CALL                             R3 -1 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R5 6
      111 NEWTABLE                         R6 0 0
      113 CALL                             R5 1 -1
      114 NAMECALL                         R3 R0 K5 ["dispatch"]
      116 CALL                             R3 -1 0
      117 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRefreshPluginPermissions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Flags"]
       24 GETTABLEKS                       R3 R3 K8 ["getFFlagStudioCacheExtractedInstalledPlugins"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Thunks"]
       33 GETTABLEKS                       R4 R4 K10 ["GetAllPluginPermissions"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K9 ["Thunks"]
       42 GETTABLEKS                       R5 R5 K11 ["MultiGetPluginInfoRequest"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K12 ["Actions"]
       51 GETTABLEKS                       R6 R6 K13 ["SetLoadedPluginData"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K14 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["extractPluginsFromJsonString"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K16 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 RETURN                           R7 1
