PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K2 ["Metadata"]
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       13 GETTABLEKS                       R2 R2 K4 ["join"]
       15 MOVE                             R3 R1
       16 DUPTABLE                         R4 K5 [{"Metadata"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       20 GETTABLEKS                       R5 R5 K4 ["join"]
       22 GETTABLEKS                       R6 R1 K2 ["Metadata"]
       24 GETUPVAL                         R7 1
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K2 ["Metadata"]
       28 CALL                             R2 2 1
       29 GETUPVAL                         R5 2
       30 MOVE                             R6 R2
       31 CALL                             R5 1 -1
       32 NAMECALL                         R3 R0 K6 ["dispatch"]
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetAnimationData"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
