PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["GetInstalledPluginData"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 1
        6 NEWTABLE                         R2 0 0
        8 GETIMPORT                        R3 K2 [pairs]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 3
       12 FORGPREP_NEXT                    R3
       13 GETTABLEKS                       R9 R7 K3 ["assetId"]
       15 FASTCALL1                        TONUMBER R9 ; [+2]
       16 GETIMPORT                        R8 K5 [tonumber]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQKNIL                  R8 ; [+8]
       21 GETIMPORT                        R9 K7 [warn]
       23 LOADK                            R10 K8 ["assetId is nil or non-numeric for installedPlugin"]
       24 GETTABLEKS                       R11 R7 K3 ["assetId"]
       26 CALL                             R9 2 0
       27 JUMP                             ; [+7]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R11 R7 K3 ["assetId"]
       31 NAMECALL                         R9 R9 K9 ["GetPermissions"]
       33 CALL                             R9 2 1
       34 SETTABLE                         R9 R2 R8
       35 FORGLOOP                         R3 2 ; [-23]
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R2
       39 CALL                             R5 1 -1
       40 NAMECALL                         R3 R0 K10 ["dispatch"]
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAllPluginPermissions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["extractPluginsFromJsonString"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
