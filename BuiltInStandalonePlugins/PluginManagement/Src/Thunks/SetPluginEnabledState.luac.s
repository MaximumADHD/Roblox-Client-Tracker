PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assetId"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 2
        7 MOVE                             R4 R1
        8 GETUPVAL                         R5 3
        9 NAMECALL                         R2 R2 K1 ["SetPluginEnabled"]
       11 CALL                             R2 3 0
       12 JUMP                             ; [+6]
       13 GETUPVAL                         R2 4
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 3
       16 NAMECALL                         R2 R2 K1 ["SetPluginEnabled"]
       18 CALL                             R2 3 0
       19 GETUPVAL                         R4 5
       20 MOVE                             R5 R1
       21 GETUPVAL                         R6 3
       22 CALL                             R4 2 -1
       23 NAMECALL                         R2 R0 K2 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K8 [game]
       18 LOADK                            R4 K9 ["StudioService"]
       19 NAMECALL                         R2 R2 K10 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Actions"]
       28 GETTABLEKS                       R4 R4 K13 ["SetPluginEnabledState"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1
