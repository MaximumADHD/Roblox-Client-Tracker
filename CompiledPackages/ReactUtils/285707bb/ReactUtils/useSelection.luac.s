PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+6]
        2 GETIMPORT                        R1 K1 [game]
        4 LOADK                            R3 K2 ["Selection"]
        5 NAMECALL                         R1 R1 K3 ["GetService"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["useState"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R5 R1 K5 ["SelectionChanged"]
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R7 0 0
       22 CALL                             R4 3 0
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["useEventConnection"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_2]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 RETURN                           R4 1
