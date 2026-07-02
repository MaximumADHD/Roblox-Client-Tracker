PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 2
        4 DUPTABLE                         R3 K2 [{"getter", "setter"}]
        5 SETTABLEKS                       R1 R3 K0 ["getter"]
        7 SETTABLEKS                       R2 R3 K1 ["setter"]
        9 RETURN                           R3 1

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 LOADN                            R1 0
        4 GETIMPORT                        R2 K1 [ipairs]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 GETTABLEKS                       R7 R6 K2 ["getter"]
       11 LOADB                            R8 0
       12 CALL                             R7 1 1
       13 JUMPIFEQKNIL                     R7 ; [+2]
       15 ADDK                             R1 R1 K3 [1]
       16 FORGLOOP                         R2 2 [inext] ; [-8]
       18 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 JUMPIFEQKNIL                     R3 ; [+10]
       11 GETTABLEKS                       R4 R3 K2 ["getter"]
       13 GETUPVAL                         R5 0
       14 CALL                             R4 1 1
       15 JUMPIFEQKNIL                     R4 ; [+4]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R4
       19 RETURN                           R5 2
       20 MOVE                             R1 R2
       21 JUMPBACK                         ; [-22]
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R1 3
        5 RETURN                           R0 2

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+18]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 2
       10 LOADNIL                          R5
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R5
       13 CALL                             R3 1 2
       14 DUPTABLE                         R2 K2 [{"getter", "setter"}]
       15 SETTABLEKS                       R3 R2 K0 ["getter"]
       17 SETTABLEKS                       R4 R2 K1 ["setter"]
       19 GETUPVAL                         R3 0
       20 SETTABLE                         R2 R3 R1
       21 GETTABLEKS                       R3 R2 K0 ["getter"]
       23 GETUPVAL                         R4 1
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R5 K2 ["attempt to update read-only store at %* with %*"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 3 1
        8 MOVE                             R4 R5
        9 LOADN                            R5 2
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R1
        5 NEWCLOSURE                       R4 P2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U2
       10 NEWCLOSURE                       R5 P3
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 DUPCLOSURE                       R6 K0 [PROTO_8]
       15 GETIMPORT                        R7 K3 [table.freeze]
       17 DUPTABLE                         R8 K10 [{["__len"], ["__iter"], ["__index"], ["__newindex"], ["__metatable"] = False}]
       18 SETTABLEKS                       R2 R8 K4 ["__len"]
       20 SETTABLEKS                       R4 R8 K5 ["__iter"]
       22 SETTABLEKS                       R5 R8 K6 ["__index"]
       24 SETTABLEKS                       R6 R8 K7 ["__newindex"]
       26 CALL                             R7 1 1
       27 NEWTABLE                         R9 0 0
       29 FASTCALL2                        SETMETATABLE R9 R7 ; [+4]
       31 MOVE                             R10 R7
       32 GETIMPORT                        R8 K12 [setmetatable]
       34 CALL                             R8 2 1
       35 RETURN                           R8 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 JUMPIFEQKNIL                     R3 ; [+10]
       11 GETTABLEKS                       R4 R3 K2 ["getter"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 1
       15 JUMPIFEQKNIL                     R4 ; [+4]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R4
       19 RETURN                           R5 2
       20 MOVE                             R1 R2
       21 JUMPBACK                         ; [-22]
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETTABLEKS                       R3 R2 K0 ["getter"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setter"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 JUMPIFEQKNIL                     R0 ; [+4]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOTEQKNIL                  R0 ; [+3]
       12 GETUPVAL                         R0 3
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOTEQKNIL                  R3 ; [+17]
        4 JUMPIFEQKNIL                     R2 ; [+28]
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R2
        9 CALL                             R4 1 2
       10 DUPTABLE                         R3 K2 [{"getter", "setter"}]
       11 SETTABLEKS                       R4 R3 K0 ["getter"]
       13 SETTABLEKS                       R5 R3 K1 ["setter"]
       15 GETUPVAL                         R4 0
       16 SETTABLE                         R3 R4 R1
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 0
       19 JUMP                             ; [+13]
       20 GETTABLEKS                       R4 R3 K0 ["getter"]
       22 LOADB                            R5 0
       23 CALL                             R4 1 1
       24 JUMPIFEQ                         R4 R2 ; [+8]
       26 GETUPVAL                         R5 3
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U2
       32 CALL                             R5 1 0
       33 CLOSEUPVALS                      R3
       34 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 NEWCLOSURE                       R9 P0
        8 CAPTURE                          VAL R6
        9 CALL                             R8 1 2
       10 DUPTABLE                         R7 K2 [{"getter", "setter"}]
       11 SETTABLEKS                       R8 R7 K0 ["getter"]
       13 SETTABLEKS                       R9 R7 K1 ["setter"]
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-11]
       18 GETUPVAL                         R2 0
       19 LOADNIL                          R3
       20 DUPCLOSURE                       R4 K3 [PROTO_2]
       21 CALL                             R2 2 2
       22 GETUPVAL                         R4 1
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 CALL                             R4 1 1
       27 NEWCLOSURE                       R5 P3
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U0
       32 NEWCLOSURE                       R6 P4
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R7 K4 [PROTO_11]
       35 NEWCLOSURE                       R8 P6
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R1
       38 NEWCLOSURE                       R9 P7
       39 CAPTURE                          VAL R1
       40 NEWCLOSURE                       R10 P8
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U2
       45 GETIMPORT                        R11 K7 [table.freeze]
       47 DUPTABLE                         R12 K15 [{["__len"], ["__call"], ["__iter"], ["__index"], ["__newindex"], ["__metatable"] = False}]
       48 SETTABLEKS                       R6 R12 K8 ["__len"]
       50 SETTABLEKS                       R5 R12 K9 ["__call"]
       52 SETTABLEKS                       R8 R12 K10 ["__iter"]
       54 SETTABLEKS                       R9 R12 K11 ["__index"]
       56 SETTABLEKS                       R10 R12 K12 ["__newindex"]
       58 CALL                             R11 1 1
       59 NEWTABLE                         R13 0 0
       61 FASTCALL2                        SETMETATABLE R13 R11 ; [+4]
       63 MOVE                             R14 R11
       64 GETIMPORT                        R12 K17 [setmetatable]
       66 CALL                             R12 2 1
       67 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Signals"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["createSignal"]
       14 GETTABLEKS                       R3 R1 K7 ["createComputed"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["SignalsScheduler"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K9 ["batch"]
       23 DUPCLOSURE                       R6 K10 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R7 K11 [PROTO_17]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R5
       29 RETURN                           R7 1
