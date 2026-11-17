PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["useDelayedActionHandler"]
        8 MOVE                             R5 R1
        9 LOADNIL                          R6
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CALL                             R4 3 1
       14 CALL                             R4 0 0
       15 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
