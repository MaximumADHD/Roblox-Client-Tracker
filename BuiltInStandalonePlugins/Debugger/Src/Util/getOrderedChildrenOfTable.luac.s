PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R4 K1 ["Y"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Contents"]
        2 GETTABLEKS                       R1 R1 K1 ["List"]
        4 GETTABLEKS                       R1 R1 K2 ["Child"]
        6 NAMECALL                         R2 R1 K3 ["GetChildren"]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K6 [table.sort]
       11 MOVE                             R4 R2
       12 DUPCLOSURE                       R5 K7 [PROTO_0]
       13 CALL                             R3 2 0
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
