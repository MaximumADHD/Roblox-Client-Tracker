PROTO_0:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 LOADK                            R2 K0 [-∞]
        2 JUMPIFNOTLT                      R2 R0 ; [+6]
        4 LOADK                            R2 K1 [∞]
        5 JUMPIFLT                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isNaN"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isFinite"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidNumber"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["isValidNumber"]
       10 GETTABLEKS                       R2 R0 K2 ["Y"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isNaN"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isFinite"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["isValidNumber"]
       13 DUPCLOSURE                       R1 K6 [PROTO_3]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["isValidVector2"]
       17 RETURN                           R0 1
