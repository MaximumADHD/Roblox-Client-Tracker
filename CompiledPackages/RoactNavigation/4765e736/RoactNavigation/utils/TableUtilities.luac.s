PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R1 K4 [string.format]
        9 LOADK                            R2 K5 ["%s"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [string.format]
       15 LOADK                            R2 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K8 [tostring]
       20 CALL                             R3 1 1
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R2 K4 [string.format]
        9 LOADK                            R3 K5 ["%q"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 JUMPIFEQKS                       R1 K6 ["function"] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+11]
       17 GETIMPORT                        R2 K4 [string.format]
       19 LOADK                            R3 K8 ["<%s>"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R5 R0
       22 GETIMPORT                        R4 K10 [tostring]
       24 CALL                             R4 1 1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K4 [string.format]
       29 LOADK                            R3 K11 ["%s"]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R5 R0
       32 GETIMPORT                        R4 K10 [tostring]
       34 CALL                             R4 1 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+7]
        7 GETIMPORT                        R4 K4 [string.format]
        9 LOADK                            R5 K5 ["%s"]
       10 MOVE                             R6 R0
       11 CALL                             R4 2 1
       12 JUMP                             ; [+10]
       13 GETIMPORT                        R4 K4 [string.format]
       15 LOADK                            R5 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CALL                             R4 2 1
       22 JUMP                             ; [0]
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 JUMPIFNOT                        R3 ; [+6]
       27 GETIMPORT                        R6 K4 [string.format]
       29 LOADK                            R7 K9 [" -- %s"]
       30 MOVE                             R8 R3
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+1]
       33 LOADK                            R6 K10 [""]
       34 GETIMPORT                        R7 K12 [print]
       36 GETIMPORT                        R8 K4 [string.format]
       38 LOADK                            R9 K13 ["%s%s = %s,%s"]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R4
       41 MOVE                             R12 R5
       42 MOVE                             R13 R6
       43 CALL                             R8 5 -1
       44 CALL                             R7 -1 0
       45 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TableDifference"]
        3 NEWTABLE                         R5 0 0
        5 LOADN                            R8 1
        6 LENGTH                           R6 R0
        7 LOADN                            R7 1
        8 FORNPREP                         R6
        9 GETTABLE                         R9 R0 R8
       10 LOADB                            R10 1
       11 SETTABLE                         R10 R5 R9
       12 FORNLOOP                         R6
       13 MOVE                             R4 R5
       14 NEWTABLE                         R6 0 0
       16 LOADN                            R9 1
       17 LENGTH                           R7 R1
       18 LOADN                            R8 1
       19 FORNPREP                         R7
       20 GETTABLE                         R10 R1 R9
       21 LOADB                            R11 1
       22 SETTABLE                         R11 R6 R10
       23 FORNLOOP                         R7
       24 MOVE                             R5 R6
       25 CALL                             R3 2 1
       26 NEWTABLE                         R4 0 0
       28 GETIMPORT                        R5 K2 [pairs]
       30 MOVE                             R6 R3
       31 CALL                             R5 1 3
       32 FORGPREP_NEXT                    R5
       33 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       35 MOVE                             R11 R4
       36 MOVE                             R12 R8
       37 GETIMPORT                        R10 K5 [table.insert]
       39 CALL                             R10 2 0
       40 FORGLOOP                         R5 2 ; [-8]
       42 MOVE                             R2 R4
       43 RETURN                           R2 1

PROTO_9:
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

PROTO_10:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+75]
        8 LOADK                            R2 K0 [""]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K4 ["CheckListConsistency"]
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
       31 JUMPIFNOTEQKS                    R8 K9 ["string"] ; [+22]
       33 MOVE                             R8 R2
       34 LOADK                            R9 K10 ["  "]
       35 MOVE                             R10 R1
       36 FASTCALL1                        TOSTRING R6 ; [+3]
       37 MOVE                             R16 R6
       38 GETIMPORT                        R15 K12 [tostring]
       40 CALL                             R15 1 1
       41 MOVE                             R11 R15
       42 LOADK                            R12 K13 [" = "]
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R15 R16 K14 ["RecursiveToString"]
       46 MOVE                             R16 R7
       47 LOADK                            R18 K10 ["  "]
       48 MOVE                             R19 R1
       49 CONCAT                           R17 R18 R19
       50 CALL                             R15 2 1
       51 MOVE                             R13 R15
       52 LOADK                            R14 K15 [";\n"]
       53 CONCAT                           R2 R8 R14
       54 FASTCALL1                        TYPE R6 ; [+3]
       55 MOVE                             R9 R6
       56 GETIMPORT                        R8 K2 [type]
       58 CALL                             R8 1 1
       59 JUMPIFNOTEQKS                    R8 K16 ["number"] ; [+15]
       61 MOVE                             R8 R2
       62 LOADK                            R9 K10 ["  "]
       63 MOVE                             R10 R1
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R13 R14 K14 ["RecursiveToString"]
       67 MOVE                             R14 R7
       68 LOADK                            R16 K10 ["  "]
       69 MOVE                             R17 R1
       70 CONCAT                           R15 R16 R17
       71 CALL                             R13 2 1
       72 MOVE                             R11 R13
       73 LOADK                            R12 K17 [",\n"]
       74 CONCAT                           R2 R8 R12
       75 FORGLOOP                         R3 2 ; [-50]
       77 MOVE                             R3 R2
       78 MOVE                             R4 R1
       79 LOADK                            R5 K18 ["}"]
       80 CONCAT                           R2 R3 R5
       81 RETURN                           R2 1
       82 FASTCALL1                        TOSTRING R0 ; [+3]
       83 MOVE                             R3 R0
       84 GETIMPORT                        R2 K12 [tostring]
       86 CALL                             R2 1 1
       87 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLE                         R4 R3 R0
        3 GETIMPORT                        R3 K2 [string.rep]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K2 [string.rep]
       10 GETUPVAL                         R5 1
       11 ADDK                             R6 R2 K3 [1]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R1 ; [+35]
       14 GETIMPORT                        R5 K5 [print]
       16 GETIMPORT                        R6 K7 [string.format]
       18 LOADK                            R7 K8 ["%s%s = %s {"]
       19 MOVE                             R8 R3
       20 FASTCALL1                        TYPE R1 ; [+3]
       21 MOVE                             R11 R1
       22 GETIMPORT                        R10 K10 [type]
       24 CALL                             R10 1 1
       25 JUMPIFNOTEQKS                    R10 K0 ["string"] ; [+7]
       27 GETIMPORT                        R9 K7 [string.format]
       29 LOADK                            R10 K11 ["%s"]
       30 MOVE                             R11 R1
       31 CALL                             R9 2 1
       32 JUMP                             ; [+10]
       33 GETIMPORT                        R9 K7 [string.format]
       35 LOADK                            R10 K12 ["[%s]"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R12 R1
       38 GETIMPORT                        R11 K14 [tostring]
       40 CALL                             R11 1 1
       41 CALL                             R9 2 1
       42 JUMP                             ; [0]
       43 GETUPVAL                         R10 2
       44 MOVE                             R11 R0
       45 CALL                             R10 1 -1
       46 CALL                             R6 -1 -1
       47 CALL                             R5 -1 0
       48 JUMP                             ; [+11]
       49 GETIMPORT                        R5 K5 [print]
       51 GETIMPORT                        R6 K7 [string.format]
       53 LOADK                            R7 K15 ["%s%s {"]
       54 MOVE                             R8 R3
       55 GETUPVAL                         R9 2
       56 MOVE                             R10 R0
       57 CALL                             R9 1 -1
       58 CALL                             R6 -1 -1
       59 CALL                             R5 -1 0
       60 GETIMPORT                        R5 K17 [pairs]
       62 MOVE                             R6 R0
       63 CALL                             R5 1 3
       64 FORGPREP_NEXT                    R5
       65 FASTCALL1                        TYPE R9 ; [+3]
       66 MOVE                             R11 R9
       67 GETIMPORT                        R10 K10 [type]
       69 CALL                             R10 1 1
       70 JUMPIFNOTEQKS                    R10 K18 ["table"] ; [+17]
       72 GETUPVAL                         R11 0
       73 GETTABLE                         R10 R11 R9
       74 JUMPIFNOT                        R10 ; [+7]
       75 GETUPVAL                         R10 3
       76 MOVE                             R11 R8
       77 MOVE                             R12 R9
       78 MOVE                             R13 R4
       79 LOADK                            R14 K19 ["Possible cycle"]
       80 CALL                             R10 4 0
       81 JUMP                             ; [+11]
       82 GETUPVAL                         R10 4
       83 MOVE                             R11 R9
       84 MOVE                             R12 R8
       85 ADDK                             R13 R2 K3 [1]
       86 CALL                             R10 3 0
       87 JUMP                             ; [+5]
       88 GETUPVAL                         R10 3
       89 MOVE                             R11 R8
       90 MOVE                             R12 R9
       91 MOVE                             R13 R4
       92 CALL                             R10 3 0
       93 FORGLOOP                         R5 2 ; [-29]
       95 GETIMPORT                        R5 K5 [print]
       97 GETIMPORT                        R6 K7 [string.format]
       99 LOADK                            R7 K20 ["%s}%s"]
      100 MOVE                             R8 R3
      101 LOADN                            R10 0
      102 JUMPIFNOTLT                      R10 R2 ; [+3]
      104 LOADK                            R9 K21 [","]
      105 JUMP                             ; [+1]
      106 LOADK                            R9 K22 [""]
      107 CALL                             R6 3 -1
      108 CALL                             R5 -1 0
      109 RETURN                           R0 0

PROTO_12:
        0 ORK                              R1 R1 K0 ["  "]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["table"] ; [+6]
        8 GETIMPORT                        R2 K5 [error]
       10 LOADK                            R3 K6 ["TableUtilities.Print must be passed a table"]
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 NEWTABLE                         R2 0 0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 MOVE                             R4 R3
       22 MOVE                             R5 R0
       23 LOADNIL                          R6
       24 LOADN                            R7 0
       25 CALL                             R4 3 0
       26 CLOSEUPVALS                      R1
       27 RETURN                           R0 0

PROTO_13:
        0 LOADN                            R1 0
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 ADDK                             R1 R1 K2 [1]
        7 FORGLOOP                         R2 1 ; [-2]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 DUPCLOSURE                       R3 K1 [PROTO_1]
        7 DUPCLOSURE                       R4 K2 [PROTO_2]
        8 CAPTURE                          VAL R3
        9 DUPCLOSURE                       R5 K3 [PROTO_3]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R5 R0 K4 ["ShallowEqual"]
       13 DUPCLOSURE                       R5 K5 [PROTO_4]
       14 SETTABLEKS                       R5 R0 K6 ["EqualKey"]
       16 DUPCLOSURE                       R5 K7 [PROTO_5]
       17 SETTABLEKS                       R5 R0 K8 ["TableDifference"]
       19 DUPCLOSURE                       R5 K9 [PROTO_6]
       20 DUPCLOSURE                       R6 K10 [PROTO_7]
       21 DUPCLOSURE                       R7 K11 [PROTO_8]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R7 R0 K12 ["ListDifference"]
       25 DUPCLOSURE                       R7 K13 [PROTO_9]
       26 SETTABLEKS                       R7 R0 K14 ["CheckListConsistency"]
       28 DUPCLOSURE                       R7 K15 [PROTO_10]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R7 R0 K16 ["RecursiveToString"]
       32 DUPCLOSURE                       R7 K17 [PROTO_12]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R7 R0 K18 ["Print"]
       37 DUPCLOSURE                       R7 K19 [PROTO_13]
       38 SETTABLEKS                       R7 R0 K20 ["FieldCount"]
       40 RETURN                           R0 1
