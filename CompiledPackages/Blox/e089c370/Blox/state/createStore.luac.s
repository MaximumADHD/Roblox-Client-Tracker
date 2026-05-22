PROTO_0:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R7
        7 CALL                             R8 1 1
        8 JUMPIFNOT                        R8 ; [+5]
        9 MOVE                             R8 R7
       10 MOVE                             R9 R2
       11 CALL                             R8 1 1
       12 MOVE                             R2 R8
       13 JUMP                             ; [+1]
       14 GETTABLE                         R2 R2 R7
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADNIL                          R8
       18 RETURN                           R8 1
       19 FORGLOOP                         R3 2 ; [-15]
       21 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+16]
        7 JUMPIFNOTEQ                      R0 R1 ; [+14]
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R3 R0
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEN                        R3 R4 1
       14 JUMPIFNOTLT                      R3 R2 ; [+5]
       16 GETUPVAL                         R3 1
       17 SETTABLEN                        R2 R3 1
       18 LOADB                            R3 0
       19 RETURN                           R3 1
       20 LOADB                            R3 1
       21 RETURN                           R3 1
       22 JUMPIFEQ                         R0 R1 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 1
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 SETTABLEN                        R1 R2 1
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL1                        TYPEOF R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+7]
       22 GETUPVAL                         R7 2
       23 MOVE                             R8 R6
       24 CALL                             R7 1 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADB                            R7 1
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 2 ; [-14]
       30 LOADB                            R2 0
       31 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 JUMPIFNOTEQ                      R0 R1 ; [+10]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 MOVE                             R4 R2
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 NOT                              R3 R4
       17 RETURN                           R3 1
       18 JUMPIFEQ                         R0 R1 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R5 0 1
        2 LOADN                            R6 0
        3 SETLIST                          R5 R6 1 [1]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R5
        8 GETUPVAL                         R5 0
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 MOVE                             R7 R4
       15 CALL                             R5 2 -1
       16 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R5 0 1
        2 LOADN                            R6 0
        3 SETLIST                          R5 R6 1 [1]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R5
        8 GETUPVAL                         R5 0
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 MOVE                             R7 R4
       15 CALL                             R5 2 -1
       16 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R1 R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 2
        6 JUMPIF                           R2 ; [+17]
        7 GETUPVAL                         R2 3
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 5
       11 GETUPVAL                         R4 6
       12 GETUPVAL                         R5 1
       13 GETUPVAL                         R6 7
       14 CALL                             R2 4 1
       15 SETUPVAL                         R2 2
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R2 8
       18 GETUPVAL                         R3 5
       19 GETUPVAL                         R4 6
       20 GETUPVAL                         R5 1
       21 GETUPVAL                         R6 7
       22 CALL                             R2 4 1
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R1
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_11:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+16]
        7 LOADN                            R4 1
        8 LOADN                            R5 2
        9 NAMECALL                         R2 R1 K3 ["sub"]
       11 CALL                             R2 3 1
       12 JUMPIFNOTEQKS                    R2 K4 ["$$"] ; [+9]
       14 GETUPVAL                         R3 0
       15 FASTCALL2                        RAWGET R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K6 [rawget]
       20 CALL                             R2 2 1
       21 RETURN                           R2 1
       22 GETUPVAL                         R2 1
       23 JUMPIFNOTEQ                      R1 R2 ; [+13]
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 GETUPVAL                         R4 4
       28 GETIMPORT                        R5 K9 [table.clone]
       30 GETUPVAL                         R6 5
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 6
       33 GETUPVAL                         R7 7
       34 LOADB                            R8 1
       35 CALL                             R2 6 -1
       36 RETURN                           R2 -1
       37 GETIMPORT                        R2 K9 [table.clone]
       39 GETUPVAL                         R3 5
       40 CALL                             R2 1 1
       41 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       43 MOVE                             R4 R2
       44 MOVE                             R5 R1
       45 GETIMPORT                        R3 K11 [table.insert]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 2
       49 GETUPVAL                         R4 3
       50 GETUPVAL                         R5 4
       51 MOVE                             R6 R2
       52 GETUPVAL                         R7 6
       53 GETUPVAL                         R8 7
       54 GETUPVAL                         R9 8
       55 CALL                             R3 6 -1
       56 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["SHOW_STORE_INTERNALS"]
        3 NEWTABLE                         R7 4 0
        5 JUMPIFNOT                        R6 ; [+2]
        6 MOVE                             R8 R1
        7 JUMP                             ; [+1]
        8 LOADB                            R8 1
        9 SETTABLEKS                       R8 R7 K1 ["$$store"]
       11 JUMPIFNOT                        R6 ; [+2]
       12 MOVE                             R8 R2
       13 JUMP                             ; [+1]
       14 LOADNIL                          R8
       15 SETTABLEKS                       R8 R7 K2 ["$$path"]
       17 JUMPIFNOT                        R6 ; [+2]
       18 MOVE                             R8 R0
       19 JUMP                             ; [+1]
       20 LOADB                            R8 1
       21 SETTABLEKS                       R8 R7 K3 ["$$signal"]
       23 LOADNIL                          R8
       24 DUPTABLE                         R11 K6 [{"__call", "__index"}]
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          REF R8
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R12 R11 K4 ["__call"]
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R12 R11 K5 ["__index"]
       49 FASTCALL2                        SETMETATABLE R7 R11 ; [+4]
       51 MOVE                             R10 R7
       52 GETIMPORT                        R9 K8 [setmetatable]
       54 CALL                             R9 2 1
       55 CLOSEUPVALS                      R8
       56 RETURN                           R9 1

PROTO_13:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 1
        3 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K0 ["Failed to get path from cursor for store update. Did you pass a cursor to the same store?"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["new"]
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 3
       16 GETUPVAL                         R6 0
       17 GETUPVAL                         R7 4
       18 CALL                             R2 5 -1
       19 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["peek"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWTABLE                         R5 0 0
       10 DUPTABLE                         R6 K2 [{"__mode"}]
       11 LOADK                            R7 K3 ["k"]
       12 SETTABLEKS                       R7 R6 K1 ["__mode"]
       14 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       16 GETIMPORT                        R4 K5 [setmetatable]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R1
       21 MOVE                             R7 R3
       22 NEWTABLE                         R8 0 0
       24 MOVE                             R9 R2
       25 MOVE                             R10 R4
       26 CALL                             R5 5 1
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Debug"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["isCallable"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K9 ["util"]
       25 GETTABLEKS                       R5 R5 K10 ["pretty"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K6 ["state"]
       32 GETTABLEKS                       R6 R6 K11 ["StoreWriter"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K6 ["state"]
       39 GETTABLEKS                       R7 R7 K12 ["StoreMatchers"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K13 ["deep"]
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R9 R0 K14 ["types"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R2 K15 ["createComputed"]
       51 GETTABLEKS                       R10 R2 K16 ["createSignal"]
       53 DUPCLOSURE                       R11 K17 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R12 K18 [PROTO_2]
       56 DUPCLOSURE                       R13 K19 [PROTO_5]
       57 DUPCLOSURE                       R14 K20 [PROTO_7]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R11
       60 DUPCLOSURE                       R15 K21 [PROTO_9]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R11
       63 DUPCLOSURE                       R16 K22 [PROTO_12]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R15
       66 CAPTURE                          VAL R14
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R16
       69 DUPCLOSURE                       R17 K23 [PROTO_14]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R16
       73 CAPTURE                          VAL R5
       74 RETURN                           R17 1
