PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+39]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["GetInstalledPlugins"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K1 ["GetInstalledPluginIds"]
       10 CALL                             R2 1 1
       11 LENGTH                           R3 R2
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+20]
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
       27 GETUPVAL                         R5 4
       28 GETUPVAL                         R6 1
       29 CALL                             R5 1 -1
       30 NAMECALL                         R3 R0 K5 ["dispatch"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 5
       35 NEWTABLE                         R6 0 0
       37 CALL                             R5 1 -1
       38 NAMECALL                         R3 R0 K5 ["dispatch"]
       40 CALL                             R3 -1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R1 6
       43 GETUPVAL                         R2 1
       44 NAMECALL                         R2 R2 K6 ["DEPRECATED_GetInstalledPluginData"]
       46 CALL                             R2 1 -1
       47 CALL                             R1 -1 1
       48 NEWTABLE                         R2 0 0
       50 GETIMPORT                        R3 K8 [pairs]
       52 MOVE                             R4 R1
       53 CALL                             R3 1 3
       54 FORGPREP_NEXT                    R3
       55 GETTABLEKS                       R9 R7 K9 ["assetId"]
       57 FASTCALL1                        TONUMBER R9 ; [+2]
       58 GETIMPORT                        R8 K11 [tonumber]
       60 CALL                             R8 1 1
       61 JUMPIFNOTEQKNIL                  R8 ; [+10]
       63 GETIMPORT                        R9 K13 [warn]
       65 LOADK                            R10 K14 ["assetId is nil or non-numeric for installedPlugin on refresh"]
       66 GETTABLEKS                       R11 R7 K9 ["assetId"]
       68 CALL                             R9 2 0
       69 LOADNIL                          R9
       70 SETTABLE                         R9 R1 R6
       71 JUMP                             ; [+8]
       72 GETTABLE                         R9 R1 R6
       73 SETTABLEKS                       R8 R9 K9 ["assetId"]
       75 LENGTH                           R10 R2
       76 ADDK                             R9 R10 K15 [1]
       77 GETTABLEKS                       R10 R7 K9 ["assetId"]
       79 SETTABLE                         R10 R2 R9
       80 FORGLOOP                         R3 2 ; [-26]
       82 LENGTH                           R3 R2
       83 LOADN                            R4 0
       84 JUMPIFNOTLT                      R4 R3 ; [+17]
       86 GETUPVAL                         R5 2
       87 GETUPVAL                         R6 1
       88 GETUPVAL                         R7 3
       89 MOVE                             R8 R2
       90 MOVE                             R9 R1
       91 CALL                             R5 4 -1
       92 NAMECALL                         R3 R0 K5 ["dispatch"]
       94 CALL                             R3 -1 0
       95 GETUPVAL                         R5 4
       96 GETUPVAL                         R6 1
       97 CALL                             R5 1 -1
       98 NAMECALL                         R3 R0 K5 ["dispatch"]
      100 CALL                             R3 -1 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R5 5
      103 NEWTABLE                         R6 0 0
      105 CALL                             R5 1 -1
      106 NAMECALL                         R3 R0 K5 ["dispatch"]
      108 CALL                             R3 -1 0
      109 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioCacheExtractedInstalledPlugins"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["GetAllPluginPermissions"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Thunks"]
       33 GETTABLEKS                       R4 R4 K10 ["MultiGetPluginInfoRequest"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K11 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["SetLoadedPluginData"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K13 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["extractPluginsFromJsonString"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K15 [PROTO_1]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 RETURN                           R6 1
