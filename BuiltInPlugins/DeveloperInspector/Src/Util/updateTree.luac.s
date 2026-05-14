PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["Children"]
        6 GETTABLE                         R2 R3 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPCLOSURE                       R4 K0 [PROTO_0]
        3 MOVE                             R5 R0
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K0 ["Children"]
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R2 K0 ["Children"]
       10 GETTABLEKS                       R5 R0 K0 ["Children"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R0 K0 ["Children"]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R2 K0 ["Children"]
       18 SETTABLEKS                       R3 R0 K0 ["Children"]
       20 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 2 0
        7 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["Path"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["Path"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["Children"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["Children"]
       12 GETTABLE                         R1 R2 R0
       13 JUMPIFNOT                        R1 ; [+12]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["Children"]
       18 GETTABLE                         R3 R4 R0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["Children"]
       23 SETTABLE                         R2 R3 R0
       24 SETUPVAL                         R2 0
       25 RETURN                           R0 0
       26 LOADNIL                          R2
       27 SETUPVAL                         R2 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["expanded"]
        3 DUPCLOSURE                       R3 K1 [PROTO_4]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["selected"]
        8 DUPCLOSURE                       R4 K3 [PROTO_5]
        9 CALL                             R2 2 1
       10 LOADNIL                          R3
       11 GETTABLEKS                       R5 R0 K4 ["path"]
       13 LENGTH                           R4 R5
       14 JUMPIFNOTEQKN                    R4 K5 [0] ; [+8]
       16 DUPTABLE                         R4 K7 [{"Children"}]
       17 GETTABLEKS                       R5 R0 K8 ["children"]
       19 SETTABLEKS                       R5 R4 K6 ["Children"]
       21 MOVE                             R3 R4
       22 JUMP                             ; [+29]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R5 R0 K9 ["root"]
       26 CALL                             R4 1 1
       27 MOVE                             R3 R4
       28 MOVE                             R4 R3
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R6 R0 K4 ["path"]
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          REF R4
       34 CAPTURE                          UPVAL U1
       35 CALL                             R5 2 0
       36 JUMPIFNOT                        R4 ; [+14]
       37 GETTABLEKS                       R6 R4 K6 ["Children"]
       39 GETTABLEKS                       R7 R0 K8 ["children"]
       41 JUMPIFNOT                        R6 ; [+6]
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R7
       44 NEWCLOSURE                       R10 P3
       45 CAPTURE                          VAL R6
       46 CAPTURE                          UPVAL U3
       47 CALL                             R8 2 0
       48 MOVE                             R5 R7
       49 SETTABLEKS                       R5 R4 K6 ["Children"]
       51 CLOSEUPVALS                      R4
       52 GETUPVAL                         R4 4
       53 MOVE                             R5 R2
       54 NEWCLOSURE                       R6 P4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          REF R3
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 4
       59 MOVE                             R6 R1
       60 NEWCLOSURE                       R7 P5
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          REF R3
       63 CALL                             R5 2 1
       64 DUPTABLE                         R6 K10 [{"root", "selected", "expanded"}]
       65 SETTABLEKS                       R3 R6 K9 ["root"]
       67 SETTABLEKS                       R4 R6 K2 ["selected"]
       69 SETTABLEKS                       R5 R6 K0 ["expanded"]
       71 CLOSEUPVALS                      R3
       72 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["collectArray"]
       18 GETTABLEKS                       R3 R1 K8 ["collectSet"]
       20 GETTABLEKS                       R4 R1 K9 ["copy"]
       22 GETTABLEKS                       R5 R1 K10 ["forEach"]
       24 GETTABLEKS                       R6 R1 K11 ["reduce"]
       26 DUPCLOSURE                       R7 K12 [PROTO_1]
       27 CAPTURE                          VAL R6
       28 DUPCLOSURE                       R8 K13 [PROTO_3]
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R8
       31 DUPCLOSURE                       R9 K14 [PROTO_9]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R7
       38 RETURN                           R9 1
