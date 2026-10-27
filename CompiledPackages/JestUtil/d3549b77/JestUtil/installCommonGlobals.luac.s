PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["startsWith"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K4 ["DTRACE"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETIMPORT                        R3 K1 [_G]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R2 R3 R4
       10 GETUPVAL                         R3 1
       11 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K4 [table.unpack]
       15 CALL                             R4 1 -1
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 SETTABLEKS                       R2 R0 K0 ["process"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["assign"]
        7 MOVE                             R3 R0
        8 NEWTABLE                         R4 4 0
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["for_"]
       13 LOADK                            R6 K3 ["jest-native-promise"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 3
       16 SETTABLE                         R6 R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K2 ["for_"]
       20 LOADK                            R6 K4 ["jest-native-now"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K7 [DateTime.now]
       24 SETTABLE                         R6 R4 R5
       25 GETUPVAL                         R5 2
       26 SETTABLEKS                       R5 R4 K8 ["jest-symbol-do-not-touch"]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K9 ["forEach"]
       32 GETUPVAL                         R3 5
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R0
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K1 ["assign"]
       40 MOVE                             R3 R0
       41 GETUPVAL                         R4 6
       42 MOVE                             R5 R1
       43 CALL                             R4 1 -1
       44 CALL                             R2 -1 -1
       45 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [script]
        2 GETTABLEKS                       R0 R0 K2 ["Parent"]
        4 GETTABLEKS                       R1 R0 K2 ["Parent"]
        6 GETIMPORT                        R2 K4 [require]
        8 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K6 ["Array"]
       13 GETTABLEKS                       R4 R2 K7 ["Object"]
       15 GETTABLEKS                       R5 R2 K8 ["String"]
       17 GETTABLEKS                       R6 R2 K9 ["Symbol"]
       19 GETIMPORT                        R7 K4 [require]
       21 GETTABLEKS                       R8 R1 K10 ["Promise"]
       23 CALL                             R7 1 1
       24 NEWTABLE                         R8 1 0
       26 GETIMPORT                        R9 K4 [require]
       28 GETTABLEKS                       R10 R1 K11 ["JestTypes"]
       30 CALL                             R9 1 1
       31 GETIMPORT                        R10 K4 [require]
       33 GETIMPORT                        R11 K1 [script]
       35 GETTABLEKS                       R11 R11 K2 ["Parent"]
       37 GETTABLEKS                       R11 R11 K12 ["createProcessObject"]
       39 CALL                             R10 1 1
       40 GETTABLEKS                       R10 R10 K13 ["default"]
       42 GETIMPORT                        R11 K4 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R12 R12 K2 ["Parent"]
       48 GETTABLEKS                       R12 R12 K14 ["deepCyclicCopy"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R11 R11 K13 ["default"]
       53 GETTABLEKS                       R12 R3 K15 ["filter"]
       55 GETTABLEKS                       R13 R4 K16 ["keys"]
       57 GETIMPORT                        R14 K18 [_G]
       59 CALL                             R13 1 1
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          VAL R5
       62 CALL                             R12 2 1
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 SETTABLEKS                       R13 R8 K13 ["default"]
       73 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
