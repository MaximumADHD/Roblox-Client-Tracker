PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 NAMECALL                         R0 R0 K0 ["TryInstallPlugin"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

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
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+16]
       25 GETUPVAL                         R4 6
       26 LOADK                            R6 K6 ["UpdatePluginSuccess"]
       27 MOVE                             R7 R1
       28 NAMECALL                         R4 R4 K7 ["report"]
       30 CALL                             R4 3 0
       31 GETUPVAL                         R6 1
       32 MOVE                             R7 R1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K8 ["Success"]
       36 CALL                             R6 2 -1
       37 NAMECALL                         R4 R0 K3 ["dispatch"]
       39 CALL                             R4 -1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R4 6
       42 LOADK                            R6 K9 ["UpdatePluginFailure"]
       43 MOVE                             R7 R1
       44 NAMECALL                         R4 R4 K7 ["report"]
       46 CALL                             R4 3 0
       47 GETUPVAL                         R6 1
       48 MOVE                             R7 R1
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K10 ["Error"]
       52 CALL                             R6 2 -1
       53 NAMECALL                         R4 R0 K3 ["dispatch"]
       55 CALL                             R4 -1 0
       56 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

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
       26 GETTABLEKS                       R5 R6 K12 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["UpdateStatus"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R7 R0 K11 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Actions"]
       37 GETTABLEKS                       R5 R6 K15 ["SetPluginUpdateStatus"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K16 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 RETURN                           R5 1
