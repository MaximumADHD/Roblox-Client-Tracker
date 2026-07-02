PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["left"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETTABLEKS                       R1 R1 K1 ["left"]
       10 JUMPIFNOT                        R1 ; [+27]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K2 ["right"]
       16 JUMPIFNOT                        R1 ; [+21]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["current"]
       21 GETTABLEKS                       R3 R3 K2 ["right"]
       23 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
       25 GETTABLEKS                       R3 R3 K4 ["X"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["current"]
       30 GETTABLEKS                       R4 R4 K1 ["left"]
       32 GETTABLEKS                       R4 R4 K3 ["AbsoluteSize"]
       34 GETTABLEKS                       R4 R4 K4 ["X"]
       36 SUB                              R2 R3 R4
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["right"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETTABLEKS                       R1 R1 K2 ["left"]
       10 JUMPIFNOT                        R1 ; [+27]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K1 ["right"]
       16 JUMPIFNOT                        R1 ; [+21]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["current"]
       21 GETTABLEKS                       R3 R3 K1 ["right"]
       23 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
       25 GETTABLEKS                       R3 R3 K4 ["X"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["current"]
       30 GETTABLEKS                       R4 R4 K2 ["left"]
       32 GETTABLEKS                       R4 R4 K3 ["AbsoluteSize"]
       34 GETTABLEKS                       R4 R4 K4 ["X"]
       36 SUB                              R2 R3 R4
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{[1] = , ["right"] = }]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R5 0 2
       12 MOVE                             R6 R2
       13 MOVE                             R7 R1
       14 SETLIST                          R5 R6 2 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 MOVE                             R8 R1
       25 SETLIST                          R6 R7 2 [1]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R0
       29 MOVE                             R6 R3
       30 MOVE                             R7 R4
       31 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useBinding"]
       16 GETTABLEKS                       R3 R1 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R1 K10 ["useRef"]
       20 DUPCLOSURE                       R5 K11 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 RETURN                           R5 1
