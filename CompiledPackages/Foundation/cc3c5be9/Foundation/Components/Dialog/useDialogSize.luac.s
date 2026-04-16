PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R1 R0 K1 ["X"]
        5 JUMPIFEQKN                       R1 K2 [0] ; [+5]
        7 GETTABLEKS                       R1 R0 K3 ["Y"]
        9 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R3 R2 K2 ["X"]
       12 JUMPIFEQKN                       R3 K3 [0] ; [+9]
       14 GETTABLEKS                       R3 R2 K4 ["Y"]
       16 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 LOADK                            R4 K1 ["AbsoluteSize"]
       23 NAMECALL                         R2 R0 K5 ["GetPropertyChangedSignal"]
       25 CALL                             R2 2 1
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R2 K6 ["Connect"]
       29 CALL                             R2 2 1
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["useEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 RETURN                           R1 1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_3]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
