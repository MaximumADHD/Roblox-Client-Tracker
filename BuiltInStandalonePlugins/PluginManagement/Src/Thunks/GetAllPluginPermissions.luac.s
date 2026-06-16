PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["GetInstalledPluginIds"]
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETUPVAL                         R8 1
       14 FASTCALL1                        TOSTRING R7 ; [+3]
       15 MOVE                             R11 R7
       16 GETIMPORT                        R10 K2 [tostring]
       18 CALL                             R10 1 1
       19 NAMECALL                         R8 R8 K3 ["GetPermissions"]
       21 CALL                             R8 2 1
       22 SETTABLE                         R8 R2 R7
       23 FORGLOOP                         R3 2 ; [-11]
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R2
       27 CALL                             R5 1 -1
       28 NAMECALL                         R3 R0 K4 ["dispatch"]
       30 CALL                             R3 -1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 3
       33 GETUPVAL                         R2 1
       34 NAMECALL                         R2 R2 K5 ["DEPRECATED_GetInstalledPluginData"]
       36 CALL                             R2 1 -1
       37 CALL                             R1 -1 1
       38 NEWTABLE                         R2 0 0
       40 GETIMPORT                        R3 K7 [pairs]
       42 MOVE                             R4 R1
       43 CALL                             R3 1 3
       44 FORGPREP_NEXT                    R3
       45 GETTABLEKS                       R9 R7 K8 ["assetId"]
       47 FASTCALL1                        TONUMBER R9 ; [+2]
       48 GETIMPORT                        R8 K10 [tonumber]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKNIL                  R8 ; [+8]
       53 GETIMPORT                        R9 K12 [warn]
       55 LOADK                            R10 K13 ["assetId is nil or non-numeric for installedPlugin"]
       56 GETTABLEKS                       R11 R7 K8 ["assetId"]
       58 CALL                             R9 2 0
       59 JUMP                             ; [+7]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R11 R7 K8 ["assetId"]
       63 NAMECALL                         R9 R9 K3 ["GetPermissions"]
       65 CALL                             R9 2 1
       66 SETTABLE                         R9 R2 R8
       67 FORGLOOP                         R3 2 ; [-23]
       69 GETUPVAL                         R5 2
       70 MOVE                             R6 R2
       71 CALL                             R5 1 -1
       72 NAMECALL                         R3 R0 K4 ["dispatch"]
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R2 1

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
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SetAllPluginPermissions"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["extractPluginsFromJsonString"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K12 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R4 1
