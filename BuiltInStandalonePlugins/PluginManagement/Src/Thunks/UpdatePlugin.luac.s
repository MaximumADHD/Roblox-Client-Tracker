PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assetId"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["latestVersion"]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R1
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K2 ["Updating"]
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R0 K3 ["dispatch"]
       14 CALL                             R3 -1 0
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R3 K5 [pcall]
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+16]
       24 GETUPVAL                         R4 4
       25 LOADK                            R6 K6 ["UpdatePluginSuccess"]
       26 MOVE                             R7 R1
       27 NAMECALL                         R4 R4 K7 ["report"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R1
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K8 ["Success"]
       35 CALL                             R6 2 -1
       36 NAMECALL                         R4 R0 K3 ["dispatch"]
       38 CALL                             R4 -1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 4
       41 LOADK                            R6 K9 ["UpdatePluginFailure"]
       42 MOVE                             R7 R1
       43 NAMECALL                         R4 R4 K7 ["report"]
       45 CALL                             R4 3 0
       46 GETUPVAL                         R6 1
       47 MOVE                             R7 R1
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K10 ["Error"]
       51 CALL                             R6 2 -1
       52 NAMECALL                         R4 R0 K3 ["dispatch"]
       54 CALL                             R4 -1 0
       55 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["UpdateStatus"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SetPluginUpdateStatus"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
