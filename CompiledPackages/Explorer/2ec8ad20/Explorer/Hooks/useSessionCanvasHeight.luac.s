PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["focusedRootObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETTABLEKS                       R0 R0 K2 ["children"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETTABLEKS                       R2 R0 K3 ["treeDescendantCount"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["explorerRowHeight"]
       14 MUL                              R1 R2 R3
       15 RETURN                           R1 1
       16 LOADN                            R1 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

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
        6 NEWTABLE                         R3 0 2
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R0 K1 ["focusedRootObservable"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["useBinding"]
       17 MOVE                             R3 R1
       18 CALL                             R3 0 -1
       19 CALL                             R2 -1 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R1
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 1
       39 MOVE                             R8 R0
       40 SETLIST                          R7 R8 1 [1]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R6 R0 K1 ["focusedRootObservable"]
       46 GETTABLEKS                       R6 R6 K4 ["changedSignal"]
       48 MOVE                             R7 R4
       49 NEWTABLE                         R8 0 1
       51 MOVE                             R9 R4
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R5 3 0
       55 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R5 R5 K12 ["useEventConnection"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 RETURN                           R5 1
