PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

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
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R2 K1 ["Y"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K0 ["AbsoluteSize"]
       12 NAMECALL                         R1 R1 K2 ["GetPropertyChangedSignal"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 NAMECALL                         R1 R1 K3 ["Connect"]
       20 CALL                             R1 2 1
       21 MOVE                             R0 R1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          REF R0
       24 CLOSEUPVALS                      R0
       25 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K2 ["Y"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADN                            R2 0
       12 CALL                             R1 1 2
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["useLayoutEffect"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R0
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 0
       25 RETURN                           R1 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Overlay"]
       20 GETTABLEKS                       R4 R4 K10 ["useOverlay"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_3]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
