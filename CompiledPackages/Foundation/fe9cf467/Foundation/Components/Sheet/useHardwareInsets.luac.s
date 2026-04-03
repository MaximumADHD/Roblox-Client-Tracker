PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["bottom"]
        4 GETTABLEKS                       R3 R0 K0 ["bottom"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+19]
        8 GETTABLEKS                       R2 R1 K1 ["top"]
       10 GETTABLEKS                       R3 R0 K1 ["top"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+13]
       14 GETTABLEKS                       R2 R1 K2 ["left"]
       16 GETTABLEKS                       R3 R0 K2 ["left"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+7]
       20 GETTABLEKS                       R2 R1 K3 ["right"]
       22 GETTABLEKS                       R3 R0 K3 ["right"]
       24 JUMPIFEQ                         R2 R3 ; [+2]
       26 RETURN                           R1 1
       27 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["AbsoluteSize"]
        5 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R1 R1 K2 ["Connect"]
       13 CALL                             R1 2 1
       14 MOVE                             R0 R1
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          REF R0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
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
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["getHardwareSafeAreaInsets"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
