PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 JUMPIF                           R2 ; [+1]
        9 GETUPVAL                         R2 0
       10 GETIMPORT                        R3 K1 [pairs]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETTABLE                         R8 R1 R6
       16 JUMPIFEQ                         R8 R7 ; [+5]
       18 GETTABLE                         R8 R2 R6
       19 JUMPIF                           R8 ; [+2]
       20 LOADB                            R8 0
       21 RETURN                           R8 1
       22 FORGLOOP                         R3 2 ; [-8]
       24 GETIMPORT                        R3 K1 [pairs]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 3
       28 FORGPREP_NEXT                    R3
       29 GETTABLE                         R8 R0 R6
       30 JUMPIFEQ                         R8 R7 ; [+5]
       32 GETTABLE                         R8 R2 R6
       33 JUMPIF                           R8 ; [+2]
       34 LOADB                            R8 0
       35 RETURN                           R8 1
       36 FORGLOOP                         R3 2 ; [-8]
       38 LOADB                            R3 1
       39 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+14]
        1 JUMPIFNOT                        R1 ; [+13]
        2 JUMPIFNOT                        R2 ; [+12]
        3 JUMPIFEQKS                       R2 K0 [""] ; [+11]
        5 GETTABLE                         R3 R0 R2
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLE                         R3 R1 R2
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLE                         R3 R0 R2
       10 GETTABLE                         R4 R1 R2
       11 JUMPIFNOTEQ                      R3 R4 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 LOADB                            R3 0
       16 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLE                         R8 R1 R6
        8 GETTABLE                         R9 R0 R6
        9 JUMPIFEQ                         R8 R9 ; [+2]
       11 SETTABLE                         R7 R2 R6
       12 FORGLOOP                         R3 2 ; [-6]
       14 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETTABLE                         R5 R0 R4
        7 LOADB                            R6 1
        8 SETTABLE                         R6 R1 R5
        9 FORNLOOP                         R2
       10 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["TableDifference"]
        3 NEWTABLE                         R4 0 0
        5 LOADN                            R7 1
        6 LENGTH                           R5 R0
        7 LOADN                            R6 1
        8 FORNPREP                         R5
        9 GETTABLE                         R8 R0 R7
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R4 R8
       12 FORNLOOP                         R5
       13 NEWTABLE                         R5 0 0
       15 LOADN                            R8 1
       16 LENGTH                           R6 R1
       17 LOADN                            R7 1
       18 FORNPREP                         R6
       19 GETTABLE                         R9 R1 R8
       20 LOADB                            R10 1
       21 SETTABLE                         R10 R5 R9
       22 FORNLOOP                         R6
       23 CALL                             R3 2 1
       24 NEWTABLE                         R2 0 0
       26 GETIMPORT                        R4 K2 [pairs]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       33 MOVE                             R10 R2
       34 MOVE                             R11 R7
       35 GETIMPORT                        R9 K5 [table.insert]
       37 CALL                             R9 2 0
       38 FORGLOOP                         R4 2 ; [-8]
       40 RETURN                           R2 1

PROTO_6:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 LOADB                            R3 1
        3 LOADN                            R4 1
        4 GETIMPORT                        R5 K1 [pairs]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 3
        8 FORGPREP_NEXT                    R5
        9 FASTCALL1                        TYPE R8 ; [+3]
       10 MOVE                             R11 R8
       11 GETIMPORT                        R10 K3 [type]
       13 CALL                             R10 1 1
       14 JUMPIFNOTEQKS                    R10 K4 ["string"] ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+14]
       18 FASTCALL1                        TYPE R8 ; [+3]
       19 MOVE                             R11 R8
       20 GETIMPORT                        R10 K3 [type]
       22 CALL                             R10 1 1
       23 JUMPIFNOTEQKS                    R10 K5 ["number"] ; [+6]
       25 JUMPIFEQ                         R4 R8 ; [+2]
       27 LOADB                            R3 0
       28 LOADB                            R1 1
       29 JUMP                             ; [+2]
       30 LOADB                            R10 0
       31 RETURN                           R10 1
       32 JUMPIFNOT                        R2 ; [+3]
       33 JUMPIFNOT                        R1 ; [+2]
       34 LOADB                            R10 0
       35 RETURN                           R10 1
       36 ADDK                             R4 R4 K6 [1]
       37 FORGLOOP                         R5 2 ; [-29]
       39 JUMPIFNOT                        R1 ; [+1]
       40 RETURN                           R3 1
       41 LOADB                            R5 1
       42 RETURN                           R5 1

PROTO_7:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+72]
        8 LOADK                            R2 K0 [""]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["CheckListConsistency"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+3]
       15 MOVE                             R3 R2
       16 LOADK                            R4 K5 ["-- WARNING: this table fails the list consistency test\n"]
       17 CONCAT                           R2 R3 R4
       18 MOVE                             R3 R2
       19 LOADK                            R4 K6 ["{\n"]
       20 CONCAT                           R2 R3 R4
       21 GETIMPORT                        R3 K8 [pairs]
       23 MOVE                             R4 R0
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 FASTCALL1                        TYPE R6 ; [+3]
       27 MOVE                             R9 R6
       28 GETIMPORT                        R8 K2 [type]
       30 CALL                             R8 1 1
       31 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+20]
       33 MOVE                             R8 R2
       34 LOADK                            R9 K10 ["  "]
       35 MOVE                             R10 R1
       36 FASTCALL1                        TOSTRING R6 ; [+3]
       37 MOVE                             R12 R6
       38 GETIMPORT                        R11 K12 [tostring]
       40 CALL                             R11 1 1
       41 LOADK                            R12 K13 [" = "]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R13 R13 K14 ["RecursiveToString"]
       45 MOVE                             R14 R7
       46 LOADK                            R16 K10 ["  "]
       47 MOVE                             R17 R1
       48 CONCAT                           R15 R16 R17
       49 CALL                             R13 2 1
       50 LOADK                            R14 K15 [";\n"]
       51 CONCAT                           R2 R8 R14
       52 FASTCALL1                        TYPE R6 ; [+3]
       53 MOVE                             R9 R6
       54 GETIMPORT                        R8 K2 [type]
       56 CALL                             R8 1 1
       57 JUMPIFNOTEQKS                    R8 K16 ["number"] ; [+14]
       59 MOVE                             R8 R2
       60 LOADK                            R9 K10 ["  "]
       61 MOVE                             R10 R1
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K14 ["RecursiveToString"]
       65 MOVE                             R12 R7
       66 LOADK                            R14 K10 ["  "]
       67 MOVE                             R15 R1
       68 CONCAT                           R13 R14 R15
       69 CALL                             R11 2 1
       70 LOADK                            R12 K17 [",\n"]
       71 CONCAT                           R2 R8 R12
       72 FORGLOOP                         R3 2 ; [-47]
       74 MOVE                             R3 R2
       75 MOVE                             R4 R1
       76 LOADK                            R5 K18 ["}"]
       77 CONCAT                           R2 R3 R5
       78 RETURN                           R2 1
       79 FASTCALL1                        TOSTRING R0 ; [+3]
       80 MOVE                             R3 R0
       81 GETIMPORT                        R2 K12 [tostring]
       83 CALL                             R2 1 1
       84 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R2 R0 K1 ["ShallowEqual"]
        9 DUPCLOSURE                       R2 K2 [PROTO_1]
       10 SETTABLEKS                       R2 R0 K3 ["EqualKey"]
       12 DUPCLOSURE                       R2 K4 [PROTO_2]
       13 SETTABLEKS                       R2 R0 K5 ["TableDifference"]
       15 DUPCLOSURE                       R2 K6 [PROTO_3]
       16 DUPCLOSURE                       R3 K7 [PROTO_4]
       17 DUPCLOSURE                       R4 K8 [PROTO_5]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R4 R0 K9 ["ListDifference"]
       21 DUPCLOSURE                       R4 K10 [PROTO_6]
       22 SETTABLEKS                       R4 R0 K11 ["CheckListConsistency"]
       24 DUPCLOSURE                       R4 K12 [PROTO_7]
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R4 R0 K13 ["RecursiveToString"]
       28 RETURN                           R0 1
