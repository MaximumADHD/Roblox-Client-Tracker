PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADN                            R2 1
        5 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R4 R4 K1 ["Y"]
        9 GETTABLEKS                       R6 R0 K2 ["AbsoluteWindowSize"]
       11 GETTABLEKS                       R6 R6 K1 ["Y"]
       13 ADD                              R5 R6 R2
       14 JUMPIFLT                         R5 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
