PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 ORK                              R3 R0 K1 [False]
        4 CALL                             R2 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R3
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R0
       14 SETLIST                          R6 R7 1 [1]
       16 CALL                             R4 2 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R0
       27 MOVE                             R8 R1
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 MOVE                             R5 R2
       32 MOVE                             R6 R4
       33 RETURN                           R5 2

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
       14 DUPCLOSURE                       R3 K8 [PROTO_2]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
