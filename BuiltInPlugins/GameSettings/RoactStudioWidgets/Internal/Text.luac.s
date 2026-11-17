PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETUPVAL                         R8 1
        5 NAMECALL                         R3 R3 K0 ["GetTextSize"]
        7 CALL                             R3 5 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Vector2.new]
        9 LOADN                            R2 5000
       10 LOADN                            R3 5000
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 1 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K8 ["calculateTextSize"]
       19 RETURN                           R2 1
