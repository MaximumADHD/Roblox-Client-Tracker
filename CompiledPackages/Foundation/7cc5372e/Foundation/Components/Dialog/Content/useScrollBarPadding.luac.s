PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        2 GETTABLEKS                       R2 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        6 GETTABLEKS                       R3 R4 K1 ["Y"]
        8 JUMPIFLT                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 0
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R3 R0 K3 ["ScrollBarThickness"]
       16 JUMP                             ; [+1]
       17 LOADN                            R3 0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 MOVE                             R3 R0
       14 MOVE                             R4 R2
       15 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
