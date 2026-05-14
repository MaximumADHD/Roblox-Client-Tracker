PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 NAMECALL                         R3 R3 K0 ["GetTextSize"]
        7 CALL                             R3 5 1
        8 GETTABLEKS                       R3 R3 K1 ["X"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Vector2.new]
        9 LOADK                            R2 K7 [∞]
       10 LOADK                            R3 K7 [∞]
       11 CALL                             R1 2 1
       12 DUPCLOSURE                       R2 K8 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1
