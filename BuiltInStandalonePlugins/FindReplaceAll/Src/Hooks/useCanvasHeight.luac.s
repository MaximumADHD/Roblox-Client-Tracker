PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["resultRowHeight"]
        7 MUL                              R0 R1 R2
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["getValue"]
        5 CALL                             R1 1 1
        6 JUMPIFEQ                         R1 R0 ; [+4]
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R3 0 -1
       17 CALL                             R2 -1 2
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R1
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R0
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 0
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R6 R0 K3 ["changedSignal"]
       45 MOVE                             R7 R4
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R4
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R5 3 0
       52 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Observable"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Resources"]
       29 GETTABLEKS                       R4 R4 K12 ["StyleConstants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K14 ["useEventConnection"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R5 1
