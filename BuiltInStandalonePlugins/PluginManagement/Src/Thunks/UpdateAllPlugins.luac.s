PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Management"]
        5 GETTABLEKS                       R1 R1 K2 ["plugins"]
        7 GETIMPORT                        R2 K4 [pairs]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R9 R6 K5 ["assetId"]
       15 GETTABLEKS                       R10 R6 K6 ["latestVersion"]
       17 NAMECALL                         R7 R7 K7 ["IsPluginUpToDate"]
       19 CALL                             R7 3 1
       20 JUMPIF                           R7 ; [+8]
       21 GETUPVAL                         R10 1
       22 GETUPVAL                         R11 0
       23 MOVE                             R12 R6
       24 GETUPVAL                         R13 2
       25 CALL                             R10 3 -1
       26 NAMECALL                         R8 R0 K8 ["dispatch"]
       28 CALL                             R8 -1 0
       29 FORGLOOP                         R2 2 ; [-18]
       31 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["UpdatePlugin"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
