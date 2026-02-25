PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R1 K1 ["Status"]
        5 GETTABLEKS                       R3 R4 K2 ["VisualizeBones"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
       10 GETTABLEKS                       R5 R1 K1 ["Status"]
       12 GETTABLEKS                       R4 R5 K4 ["RootInstance"]
       14 GETTABLEKS                       R6 R1 K1 ["Status"]
       16 GETTABLEKS                       R5 R6 K5 ["Active"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 JUMPIFNOT                        R4 ; [+1]
       20 JUMPIF                           R5 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R2
       24 CALL                             R8 1 -1
       25 NAMECALL                         R6 R0 K6 ["dispatch"]
       27 CALL                             R6 -1 0
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K7 ["updateMicrobones"]
       31 MOVE                             R7 R4
       32 MOVE                             R8 R2
       33 CALL                             R6 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetBoneVisualization"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["RigVisualization"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
