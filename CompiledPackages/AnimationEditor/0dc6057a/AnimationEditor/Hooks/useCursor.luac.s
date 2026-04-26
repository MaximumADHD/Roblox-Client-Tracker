PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 NAMECALL                         R0 R0 K1 ["__pushCursor"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["__popCursor"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["__popCursor"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 4
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R6 0 4
       18 MOVE                             R7 R3
       19 MOVE                             R8 R1
       20 MOVE                             R9 R0
       21 MOVE                             R10 R2
       22 SETLIST                          R6 R7 4 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 4
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R7 0 3
       32 MOVE                             R8 R3
       33 MOVE                             R9 R1
       34 MOVE                             R10 R2
       35 SETLIST                          R7 R8 3 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 5
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R8 0 3
       45 MOVE                             R9 R3
       46 MOVE                             R10 R1
       47 MOVE                             R11 R2
       48 SETLIST                          R8 R9 3 [1]
       50 CALL                             R6 2 0
       51 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CursorPriority"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R4 R5 K12 ["Mouse"]
       32 GETTABLEKS                       R5 R3 K13 ["useCallback"]
       34 GETTABLEKS                       R6 R3 K14 ["useContext"]
       36 GETTABLEKS                       R7 R3 K15 ["useEffect"]
       38 GETTABLEKS                       R8 R3 K16 ["useRef"]
       40 DUPCLOSURE                       R9 K17 [PROTO_4]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R7
       47 RETURN                           R9 1
