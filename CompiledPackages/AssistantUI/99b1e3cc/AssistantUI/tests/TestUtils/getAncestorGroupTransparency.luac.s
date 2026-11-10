PROTO_0:
        0 LOADK                            R4 K0 ["CanvasGroup"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["GroupTransparency"]
        7 JUMPIF                           R1 ; [+1]
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_0]
        3 CALL                             R1 2 1
        4 ORK                              R2 R1 K1 [0]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["traverseAncestors"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
