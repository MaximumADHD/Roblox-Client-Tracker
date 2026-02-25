PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 ADDK                             R2 R3 K0 [1]
        3 NAMECALL                         R0 R0 K1 ["__popCursor"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Arrow"]
        2 GETUPVAL                         R4 1
        3 ADDK                             R3 R4 K1 [1]
        4 NAMECALL                         R0 R0 K2 ["__pushCursor"]
        6 CALL                             R0 3 0
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R3 R4 K1 ["createElement"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K2 ["Provider"]
       24 DUPTABLE                         R5 K4 [{"value"}]
       25 ADDK                             R6 R2 K5 [1]
       26 SETTABLEKS                       R6 R5 K3 ["value"]
       28 GETTABLEKS                       R6 R0 K6 ["children"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Mouse"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["useContext"]
       27 GETTABLEKS                       R5 R3 K12 ["useEffect"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       35 GETTABLEKS                       R7 R8 K15 ["CursorPriority"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K16 [PROTO_2]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 RETURN                           R7 1
