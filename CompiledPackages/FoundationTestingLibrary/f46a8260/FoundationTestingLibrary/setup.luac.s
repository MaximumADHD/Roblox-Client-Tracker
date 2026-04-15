PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K0 ["rerender"]
       10 GETUPVAL                         R3 3
       11 NEWTABLE                         R4 1 0
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R7 5
       15 GETTABLEKS                       R6 R7 K1 ["createElement"]
       17 GETUPVAL                         R7 6
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLE                         R6 R4 R5
       21 CALL                             R3 1 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 JUMPIF                           R5 ; [+2]
        3 NEWTABLE                         R5 0 0
        5 MOVE                             R6 R2
        6 JUMPIF                           R6 ; [+2]
        7 NEWTABLE                         R6 0 0
        9 CALL                             R4 2 1
       10 ORK                              R5 R3 K0 ["Component"]
       11 GETUPVAL                         R6 1
       12 GETUPVAL                         R7 2
       13 NEWTABLE                         R8 1 0
       15 GETUPVAL                         R10 3
       16 GETTABLEKS                       R9 R10 K1 ["createElement"]
       18 MOVE                             R10 R0
       19 MOVE                             R11 R4
       20 CALL                             R9 2 1
       21 SETTABLE                         R9 R8 R5
       22 CALL                             R7 1 -1
       23 CALL                             R6 -1 1
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 RETURN                           R6 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 JUMPIFNOT                        R1 ; [+2]
        5 MOVE                             R6 R1
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R6 3
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FoundationTestingLibrary"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactTestingLibrary"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["render"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETIMPORT                        R9 K1 [script]
       30 GETTABLEKS                       R8 R9 K4 ["Parent"]
       32 GETTABLEKS                       R7 R8 K11 ["mockComponent"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R8 R2 K12 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["withDefaults"]
       39 DUPCLOSURE                       R8 K14 [PROTO_1]
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R3
       44 DUPCLOSURE                       R9 K15 [PROTO_3]
       45 CAPTURE                          VAL R8
       46 RETURN                           R9 1
