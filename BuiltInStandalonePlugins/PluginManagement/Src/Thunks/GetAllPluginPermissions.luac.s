PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R3 R3 K0 ["GetInstalledPluginData"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K1 ["InstalledPluginData"]
       16 CALL                             R2 1 1
       17 MOVE                             R1 R2
       18 NEWTABLE                         R2 0 0
       20 GETIMPORT                        R3 K3 [pairs]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 3
       24 FORGPREP_NEXT                    R3
       25 GETTABLEKS                       R9 R7 K4 ["assetId"]
       27 FASTCALL1                        TONUMBER R9 ; [+2]
       28 GETIMPORT                        R8 K6 [tonumber]
       30 CALL                             R8 1 1
       31 JUMPIFNOTEQKNIL                  R8 ; [+8]
       33 GETIMPORT                        R9 K8 [warn]
       35 LOADK                            R10 K9 ["assetId is nil or non-numeric for installedPlugin"]
       36 GETTABLEKS                       R11 R7 K4 ["assetId"]
       38 CALL                             R9 2 0
       39 JUMP                             ; [+18]
       40 GETUPVAL                         R9 0
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+8]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R11 R7 K4 ["assetId"]
       46 NAMECALL                         R9 R9 K10 ["GetPermissions"]
       48 CALL                             R9 2 1
       49 SETTABLE                         R9 R2 R8
       50 JUMP                             ; [+7]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R11 R7 K4 ["assetId"]
       54 NAMECALL                         R9 R9 K10 ["GetPermissions"]
       56 CALL                             R9 2 1
       57 SETTABLE                         R9 R2 R8
       58 FORGLOOP                         R3 2 ; [-34]
       60 GETUPVAL                         R5 5
       61 MOVE                             R6 R2
       62 CALL                             R5 1 -1
       63 NAMECALL                         R3 R0 K11 ["dispatch"]
       65 CALL                             R3 -1 0
       66 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R3 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K8 [game]
       18 LOADK                            R4 K9 ["StudioService"]
       19 NAMECALL                         R2 R2 K10 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Actions"]
       28 GETTABLEKS                       R4 R5 K13 ["SetAllPluginPermissions"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R7 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Util"]
       37 GETTABLEKS                       R5 R6 K15 ["extractPluginsFromJsonString"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K16 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
