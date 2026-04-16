PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["Management"]
        5 GETTABLEKS                       R1 R2 K2 ["plugins"]
        7 GETIMPORT                        R2 K4 [pairs]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R9 R6 K5 ["assetId"]
       15 GETTABLEKS                       R10 R6 K6 ["latestVersion"]
       17 NAMECALL                         R7 R7 K7 ["IsPluginUpToDate"]
       19 CALL                             R7 3 1
       20 JUMPIF                           R7 ; [+7]
       21 GETUPVAL                         R9 1
       22 MOVE                             R10 R6
       23 GETUPVAL                         R11 2
       24 CALL                             R9 2 -1
       25 NAMECALL                         R7 R0 K8 ["dispatch"]
       27 CALL                             R7 -1 0
       28 FORGLOOP                         R2 2 ; [-17]
       30 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

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
       19 GETTABLEKS                       R4 R5 K10 ["Thunks"]
       21 GETTABLEKS                       R3 R4 K11 ["UpdatePlugin"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K12 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
