PROTO_0:
        0 DUPTABLE                         R2 K2 [{"arguments", "title"}]
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["assign"]
        6 NEWTABLE                         R5 0 0
        8 MOVE                             R6 R0
        9 CALL                             R4 2 -1
       10 SETLIST                          R3 R4 -1 [1]
       12 SETTABLEKS                       R3 R2 K0 ["arguments"]
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R3 3 1
       19 SETTABLEKS                       R3 R2 K1 ["title"]
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K0 ["map"]
       11 MOVE                             R6 R4
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R0
       16 CALL                             R5 2 -1
       17 RETURN                           R5 -1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["assign"]
        3 MOVE                             R4 R0
        4 NEWTABLE                         R5 1 0
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R2
        8 SETTABLE                         R1 R5 R6
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reduce"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R4 0 0
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["map"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Object"]
       18 NEWTABLE                         R4 1 0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R0 K8 ["JestTypes"]
       26 CALL                             R7 1 1
       27 GETIMPORT                        R8 K4 [require]
       29 GETIMPORT                        R11 K1 [script]
       31 GETTABLEKS                       R10 R11 K2 ["Parent"]
       33 GETTABLEKS                       R9 R10 K9 ["interpolation"]
       35 CALL                             R8 1 1
       36 GETIMPORT                        R10 K4 [require]
       38 GETIMPORT                        R13 K1 [script]
       40 GETTABLEKS                       R12 R13 K2 ["Parent"]
       42 GETTABLEKS                       R11 R12 K9 ["interpolation"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R9 R10 K10 ["interpolateVariables"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          REF R5
       49 CAPTURE                          REF R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R10 R4 K11 ["default"]
       55 DUPCLOSURE                       R5 K12 [PROTO_2]
       56 DUPCLOSURE                       R6 K13 [PROTO_5]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CLOSEUPVALS                      R5
       60 RETURN                           R4 1
