PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assetId"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["latestVersion"]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R1
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K2 ["Updating"]
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R0 K3 ["dispatch"]
       14 CALL                             R3 -1 0
       15 GETIMPORT                        R3 K5 [pcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+16]
       23 GETUPVAL                         R4 4
       24 LOADK                            R6 K6 ["UpdatePluginSuccess"]
       25 MOVE                             R7 R1
       26 NAMECALL                         R4 R4 K7 ["report"]
       28 CALL                             R4 3 0
       29 GETUPVAL                         R6 1
       30 MOVE                             R7 R1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K8 ["Success"]
       34 CALL                             R6 2 -1
       35 NAMECALL                         R4 R0 K3 ["dispatch"]
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 4
       40 LOADK                            R6 K9 ["UpdatePluginFailure"]
       41 MOVE                             R7 R1
       42 NAMECALL                         R4 R4 K7 ["report"]
       44 CALL                             R4 3 0
       45 GETUPVAL                         R6 1
       46 MOVE                             R7 R1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K10 ["Error"]
       50 CALL                             R6 2 -1
       51 NAMECALL                         R4 R0 K3 ["dispatch"]
       53 CALL                             R4 -1 0
       54 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

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
       19 GETTABLEKS                       R4 R5 K10 ["Util"]
       21 GETTABLEKS                       R3 R4 K11 ["UpdateStatus"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R6 R0 K9 ["Src"]
       28 GETTABLEKS                       R5 R6 K12 ["Actions"]
       30 GETTABLEKS                       R4 R5 K13 ["SetPluginUpdateStatus"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K14 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 RETURN                           R4 1
