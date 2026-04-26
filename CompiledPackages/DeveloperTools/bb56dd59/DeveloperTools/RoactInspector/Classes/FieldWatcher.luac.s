PROTO_0:
        0 DUPTABLE                         R2 K3 [{"onFieldsChanged", "activeFields", "rootKey"}]
        1 SETTABLEKS                       R0 R2 K0 ["onFieldsChanged"]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K1 ["activeFields"]
        7 SETTABLEKS                       R1 R2 K2 ["rootKey"]
        9 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["polling"]
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["checkFields"]
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K4 [delay]
       14 LOADK                            R1 K5 [0.5]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["onPoll"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPoll"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["polling"]
        2 JUMPIF                           R1 ; [+8]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["polling"]
        6 GETIMPORT                        R1 K2 [spawn]
        8 GETTABLEKS                       R2 R0 K3 ["onPoll"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["root"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R2 R2 K1 ["walk"]
        7 CALL                             R2 3 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+3]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R2
       15 RETURN                           R3 2
       16 LOADNIL                          R3
       17 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["activeFields"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R3 R0 K0 ["activeFields"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 LENGTH                           R3 R2
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+5]
       19 GETTABLEKS                       R3 R0 K1 ["onFieldsChanged"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+3]
        7 MOVE                             R2 R0
        8 JUMPIF                           R2 ; [+5]
        9 FASTCALL1                        TOSTRING R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K4 [tostring]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 CALL                             R3 1 1
       17 FASTCALL2                        TABLE_INSERT R3 R2 ; [+4]
       19 MOVE                             R5 R3
       20 MOVE                             R6 R2
       21 GETUPVAL                         R4 2
       22 CALL                             R4 2 0
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K1 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+14]
       30 GETUPVAL                         R5 3
       31 LOADN                            R6 0
       32 JUMPIFNOTLT                      R6 R5 ; [+10]
       34 GETUPVAL                         R4 4
       35 MOVE                             R6 R1
       36 GETUPVAL                         R8 3
       37 SUBK                             R7 R8 K6 [1]
       38 MOVE                             R8 R3
       39 NAMECALL                         R4 R4 K7 ["collect"]
       41 CALL                             R4 4 1
       42 JUMPIF                           R4 ; [+2]
       43 NEWTABLE                         R4 0 0
       45 MOVE                             R5 R2
       46 DUPTABLE                         R6 K12 [{"Name", "Summary", "Path", "Children"}]
       47 SETTABLEKS                       R2 R6 K8 ["Name"]
       49 GETUPVAL                         R7 5
       50 MOVE                             R8 R1
       51 DUPTABLE                         R9 K15 [{"depth", "arrayLength"}]
       52 LOADN                            R10 2
       53 SETTABLEKS                       R10 R9 K13 ["depth"]
       55 LOADB                            R10 1
       56 SETTABLEKS                       R10 R9 K14 ["arrayLength"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K9 ["Summary"]
       61 SETTABLEKS                       R3 R6 K10 ["Path"]
       63 SETTABLEKS                       R4 R6 K11 ["Children"]
       65 RETURN                           R5 2

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+4]
        7 NEWTABLE                         R4 0 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CALL                             R4 2 1
       20 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+11]
        5 JUMPIFNOTEQKN                    R2 K0 [1] ; [+10]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["rootKey"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K1 ["rootKey"]
       14 GETTABLE                         R4 R3 R5
       15 RETURN                           R4 1
       16 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K0 ["root"]
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+12]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R6 K4 ["Cannot walk path %s: %s "]
       12 GETUPVAL                         R8 2
       13 MOVE                             R9 R2
       14 CALL                             R8 1 1
       15 MOVE                             R9 R4
       16 NAMECALL                         R6 R6 K5 ["format"]
       18 CALL                             R6 3 -1
       19 CALL                             R5 -1 0
       20 LOADNIL                          R4
       21 RETURN                           R4 1

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["root"]
        2 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["activeFields"]
        4 NAMECALL                         R1 R0 K1 ["monitor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["root"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R0 K1 ["walk"]
        5 CALL                             R2 3 1
        6 GETTABLEKS                       R3 R0 K2 ["activeFields"]
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+2]
       13 NEWTABLE                         R4 0 0
       15 SETTABLE                         R4 R3 R1
       16 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["root"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["polling"]
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R4 R5 K6 ["Utils"]
       17 GETTABLEKS                       R3 R4 K7 ["getChildAtKey"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K8 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K9 ["assign"]
       27 GETTABLEKS                       R5 R3 K10 ["class"]
       29 GETTABLEKS                       R6 R3 K11 ["collect"]
       31 GETTABLEKS                       R7 R3 K12 ["copy"]
       33 GETTABLEKS                       R8 R3 K13 ["keys"]
       35 GETTABLEKS                       R9 R3 K14 ["pretty"]
       37 GETTABLEKS                       R10 R3 K15 ["reduce"]
       39 GETTABLEKS                       R11 R3 K16 ["shallowEqual"]
       41 GETIMPORT                        R12 K19 [table.insert]
       43 MOVE                             R13 R5
       44 LOADK                            R14 K20 ["FieldWatcher"]
       45 DUPCLOSURE                       R15 K21 [PROTO_0]
       46 CALL                             R13 2 1
       47 DUPCLOSURE                       R14 K22 [PROTO_2]
       48 SETTABLEKS                       R14 R13 K23 ["_init"]
       50 DUPCLOSURE                       R14 K24 [PROTO_3]
       51 SETTABLEKS                       R14 R13 K25 ["monitor"]
       53 DUPCLOSURE                       R14 K26 [PROTO_5]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R14 R13 K27 ["checkFields"]
       60 DUPCLOSURE                       R14 K28 [PROTO_7]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R14 R13 K11 ["collect"]
       67 DUPCLOSURE                       R14 K29 [PROTO_10]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 SETTABLEKS                       R14 R13 K30 ["walk"]
       73 DUPCLOSURE                       R14 K31 [PROTO_11]
       74 SETTABLEKS                       R14 R13 K32 ["setRoot"]
       76 DUPCLOSURE                       R14 K33 [PROTO_12]
       77 SETTABLEKS                       R14 R13 K34 ["clear"]
       79 DUPCLOSURE                       R14 K35 [PROTO_13]
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R14 R13 K36 ["addPath"]
       83 DUPCLOSURE                       R14 K37 [PROTO_14]
       84 SETTABLEKS                       R14 R13 K38 ["destroy"]
       86 RETURN                           R13 1
