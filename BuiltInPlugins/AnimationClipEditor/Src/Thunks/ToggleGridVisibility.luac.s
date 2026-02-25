PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R1 K1 ["Status"]
        5 GETTABLEKS                       R3 R4 K2 ["VisualizeGrid"]
        7 NOT                              R2 R3
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R2
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K3 ["dispatch"]
       13 CALL                             R3 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetGridVisualization"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
