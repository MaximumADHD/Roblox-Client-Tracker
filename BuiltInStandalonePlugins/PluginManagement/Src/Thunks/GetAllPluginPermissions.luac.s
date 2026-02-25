PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["InstalledPluginData"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 GETTABLEKS                       R9 R7 K3 ["assetId"]
       14 FASTCALL1                        TONUMBER R9 ; [+2]
       15 GETIMPORT                        R8 K5 [tonumber]
       17 CALL                             R8 1 1
       18 JUMPIFNOTEQKNIL                  R8 ; [+8]
       20 GETIMPORT                        R9 K7 [warn]
       22 LOADK                            R10 K8 ["assetId is nil or non-numeric for installedPlugin"]
       23 GETTABLEKS                       R11 R7 K3 ["assetId"]
       25 CALL                             R9 2 0
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R11 R7 K3 ["assetId"]
       30 NAMECALL                         R9 R9 K9 ["GetPermissions"]
       32 CALL                             R9 2 1
       33 SETTABLE                         R9 R2 R8
       34 FORGLOOP                         R3 2 ; [-23]
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R2
       38 CALL                             R5 1 -1
       39 NAMECALL                         R3 R0 K10 ["dispatch"]
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R0 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Actions"]
       21 GETTABLEKS                       R3 R4 K11 ["SetAllPluginPermissions"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R6 R0 K9 ["Src"]
       28 GETTABLEKS                       R5 R6 K12 ["Util"]
       30 GETTABLEKS                       R4 R5 K13 ["extractPluginsFromJsonString"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K14 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R4 1
