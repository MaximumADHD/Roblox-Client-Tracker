PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["AbsoluteSize"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K0 ["AbsoluteSize"]
       10 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R1 R1 K2 ["Connect"]
       18 CALL                             R1 2 1
       19 MOVE                             R0 R1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          REF R0
       22 CLOSEUPVALS                      R0
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useState"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 JUMPIF                           R2 ; [+5]
        9 GETIMPORT                        R2 K4 [Vector2.new]
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 CALL                             R2 2 1
       14 CALL                             R1 1 2
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K5 ["useLayoutEffect"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R0
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 0
       27 RETURN                           R1 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Overlay"]
       20 GETTABLEKS                       R4 R5 K10 ["useOverlay"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_3]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
