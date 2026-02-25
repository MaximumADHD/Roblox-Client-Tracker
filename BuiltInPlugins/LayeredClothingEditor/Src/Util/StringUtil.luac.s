PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 GETUPVAL                         R9 1
        5 NAMECALL                         R4 R4 K0 ["GetTextSize"]
        7 CALL                             R4 5 1
        8 GETTABLEKS                       R3 R4 K1 ["X"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 GETIMPORT                        R2 K6 [Vector2.new]
       11 LOADK                            R3 K7 [1000000]
       12 LOADN                            R4 50
       13 CALL                             R2 2 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R1 K9 ["getTextWidth"]
       19 RETURN                           R1 1
