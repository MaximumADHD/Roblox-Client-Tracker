PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 LOADN                            R1 0
        5 JUMPIFNOTLE                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["get"]
       13 CALL                             R1 0 1
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 MOVE                             R4 R0
       20 MOVE                             R5 R1
       21 CALL                             R2 3 1
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useState"]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["useCallback"]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R4
       15 NEWTABLE                         R7 0 4
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 MOVE                             R10 R4
       20 MOVE                             R11 R2
       21 SETLIST                          R7 R8 4 [1]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       27 MOVE                             R7 R1
       28 MOVE                             R8 R5
       29 NEWTABLE                         R9 0 1
       31 MOVE                             R10 R5
       32 SETLIST                          R9 R10 1 [1]
       34 CALL                             R6 3 0
       35 JUMPIFNOT                        R2 ; [+11]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       39 MOVE                             R7 R2
       40 MOVE                             R8 R5
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R5
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R6 3 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R5
       52 NEWTABLE                         R8 0 1
       54 MOVE                             R9 R5
       55 SETLIST                          R8 R9 1 [1]
       57 CALL                             R6 2 0
       58 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Observable"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["calculateResponsiveWidths"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
