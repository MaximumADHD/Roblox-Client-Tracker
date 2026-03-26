PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [setmetatable]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+5]
        2 GETVARARGS                       R1 1
        3 GETIMPORT                        R2 K1 [error]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      2
        1 MOVE                             R2 R0
        2 CALL                             R2 0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 GETVARARGS                       R4 -1
        6 CALL                             R2 -1 0
        7 GETVARARGS                       R2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["attempted to use scope beyond scope's lifetime"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          REF R2
        6 GETUPVAL                         R5 0
        7 MOVE                             R6 R4
        8 GETIMPORT                        R7 K1 [pcall]
       10 GETUPVAL                         R8 1
       11 MOVE                             R9 R0
       12 MOVE                             R10 R3
       13 CALL                             R7 3 -1
       14 CALL                             R5 -1 -1
       15 CLOSEUPVALS                      R2
       16 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+30]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R2 2
        5 FASTCALL1                        TYPEOF R2 ; [+2]
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+5]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 1
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R0 2
       16 SETUPVAL                         R0 1
       17 GETIMPORT                        R0 K5 [os.clock]
       19 CALL                             R0 0 1
       20 SETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 GETUPVAL                         R4 6
       24 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       26 MOVE                             R3 R1
       27 GETIMPORT                        R2 K7 [setmetatable]
       29 CALL                             R2 2 1
       30 MOVE                             R0 R2
       31 SETUPVAL                         R0 5
       32 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R0
       10 LOADN                            R2 0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 RETURN                           R2 1

PROTO_9:
        0 JUMPIFEQKB                       R0 FALSE ; [+7]
        2 MOVE                             R1 R0
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 SETTABLE                         R3 R2 R1
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 1 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 JUMPIFEQKB                       R0 FALSE ; [+7]
        4 MOVE                             R1 R0
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R1
       10 GETUPVAL                         R1 3
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+6]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 1
       13 JUMP                             ; [+1]
       14 MOVE                             R1 R0
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R1
       19 CALL                             R2 3 1
       20 JUMPIF                           R2 ; [+19]
       21 SETUPVAL                         R1 2
       22 GETIMPORT                        R2 K5 [os.clock]
       24 CALL                             R2 0 1
       25 SETUPVAL                         R2 4
       26 GETUPVAL                         R2 5
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 MOVE                             R7 R5
       31 CALL                             R7 0 0
       32 FORGLOOP                         R2 1 ; [-3]
       34 GETIMPORT                        R2 K8 [table.clear]
       36 GETUPVAL                         R3 5
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 6
       39 CALL                             R2 0 0
       40 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R2 0
        1 LOADN                            R3 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 MOVE                             R6 R1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R6 0
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          REF R3
       15 CAPTURE                          REF R5
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R3
       20 NEWCLOSURE                       R9 P2
       21 CAPTURE                          VAL R8
       22 CAPTURE                          REF R5
       23 NEWCLOSURE                       R10 P3
       24 CAPTURE                          REF R5
       25 NEWCLOSURE                       R11 P4
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R8
       28 CAPTURE                          REF R5
       29 CAPTURE                          REF R4
       30 NEWCLOSURE                       R12 P5
       31 CAPTURE                          VAL R7
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R6
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R5
       37 CAPTURE                          UPVAL U3
       38 CLOSEUPVALS                      R2
       39 RETURN                           R11 2

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 1 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R3
        9 CALL                             R5 0 0
       10 FORGLOOP                         R0 1 ; [-3]
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+27]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R4 2
        7 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K1 [setmetatable]
       12 CALL                             R2 2 1
       13 MOVE                             R0 R2
       14 SETUPVAL                         R0 1
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 3
       18 GETUPVAL                         R0 5
       19 GETUPVAL                         R1 6
       20 GETUPVAL                         R2 7
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 4
       23 GETIMPORT                        R0 K4 [os.clock]
       25 CALL                             R0 0 1
       26 SETUPVAL                         R0 8
       27 GETUPVAL                         R0 8
       28 SETUPVAL                         R0 9
       29 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 GETUPVAL                         R6 1
        6 LOADB                            R7 1
        7 CALL                             R5 2 0
        8 FORGLOOP                         R0 1 ; [-5]
       10 GETIMPORT                        R0 K2 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+54]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R3
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 JUMPIFNOTLT                      R6 R5 ; [+33]
       13 GETUPVAL                         R6 1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R9
       18 GETUPVAL                         R12 3
       19 LOADB                            R13 1
       20 CALL                             R11 2 0
       21 FORGLOOP                         R6 1 ; [-5]
       23 GETIMPORT                        R6 K2 [table.clear]
       25 GETUPVAL                         R7 1
       26 CALL                             R6 1 0
       27 GETUPVAL                         R6 4
       28 GETUPVAL                         R7 5
       29 GETUPVAL                         R8 6
       30 CALL                             R6 2 1
       31 GETIMPORT                        R7 K5 [os.clock]
       33 CALL                             R7 0 1
       34 SETUPVAL                         R7 2
       35 GETUPVAL                         R7 7
       36 GETUPVAL                         R8 8
       37 GETUPVAL                         R9 9
       38 MOVE                             R10 R6
       39 CALL                             R7 3 1
       40 JUMPIF                           R7 ; [+3]
       41 SETUPVAL                         R6 9
       42 GETUPVAL                         R7 2
       43 SETUPVAL                         R7 10
       44 RETURN                           R0 0
       45 FORGLOOP                         R0 1 ; [-38]
       47 GETUPVAL                         R0 1
       48 LOADNIL                          R1
       49 LOADNIL                          R2
       50 FORGPREP                         R0
       51 MOVE                             R5 R3
       52 GETUPVAL                         R6 3
       53 CALL                             R5 1 0
       54 FORGLOOP                         R0 1 ; [-4]
       56 RETURN                           R0 0

PROTO_20:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R0
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R0
       10 LOADN                            R2 0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 2
       15 RETURN                           R2 1

PROTO_21:
        0 JUMPIFEQKB                       R0 FALSE ; [+7]
        2 MOVE                             R1 R0
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 SETTABLE                         R3 R2 R1
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 JUMPIFEQKB                       R0 FALSE ; [+7]
        6 MOVE                             R1 R0
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 3
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R2 R1
       12 GETUPVAL                         R1 4
       13 RETURN                           R1 1

PROTO_23:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 JUMPIFEQKNIL                     R1 ; [+3]
        9 MOVE                             R9 R1
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R9 0
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          REF R8
       14 NEWCLOSURE                       R11 P1
       15 CAPTURE                          REF R3
       16 CAPTURE                          REF R8
       17 NEWCLOSURE                       R12 P2
       18 CAPTURE                          REF R7
       19 CAPTURE                          VAL R11
       20 NEWCLOSURE                       R13 P3
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R8
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          REF R7
       25 CAPTURE                          REF R6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R12
       29 CAPTURE                          REF R5
       30 CAPTURE                          REF R4
       31 NEWCLOSURE                       R14 P4
       32 CAPTURE                          REF R7
       33 CAPTURE                          VAL R11
       34 NEWCLOSURE                       R15 P5
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R7
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R11
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R12
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R9
       44 CAPTURE                          REF R6
       45 CAPTURE                          REF R4
       46 NEWCLOSURE                       R16 P6
       47 CAPTURE                          REF R8
       48 CAPTURE                          VAL R15
       49 CAPTURE                          REF R4
       50 NEWCLOSURE                       R17 P7
       51 CAPTURE                          VAL R16
       52 CAPTURE                          REF R8
       53 NEWCLOSURE                       R18 P8
       54 CAPTURE                          VAL R13
       55 CAPTURE                          VAL R15
       56 CAPTURE                          VAL R16
       57 CAPTURE                          REF R8
       58 CAPTURE                          REF R6
       59 CLOSEUPVALS                      R2
       60 RETURN                           R18 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 GETUPVAL                         R6 1
        6 LOADB                            R7 1
        7 CALL                             R5 2 0
        8 FORGLOOP                         R0 1 ; [-5]
       10 GETIMPORT                        R0 K2 [table.clear]
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_25:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R3
        7 GETUPVAL                         R6 2
        8 LOADB                            R7 1
        9 CALL                             R5 2 0
       10 FORGLOOP                         R0 1 ; [-5]
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+45]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R3
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 3
       11 JUMPIFNOTLT                      R6 R5 ; [+24]
       13 GETUPVAL                         R6 2
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 MOVE                             R11 R9
       18 GETUPVAL                         R12 4
       19 LOADB                            R13 1
       20 CALL                             R11 2 0
       21 FORGLOOP                         R6 1 ; [-5]
       23 GETIMPORT                        R6 K2 [table.clear]
       25 GETUPVAL                         R7 2
       26 CALL                             R6 1 0
       27 GETUPVAL                         R6 5
       28 GETUPVAL                         R7 6
       29 GETUPVAL                         R8 7
       30 CALL                             R6 2 0
       31 GETIMPORT                        R6 K5 [os.clock]
       33 CALL                             R6 0 1
       34 SETUPVAL                         R6 3
       35 RETURN                           R0 0
       36 FORGLOOP                         R0 1 ; [-29]
       38 GETUPVAL                         R0 2
       39 LOADNIL                          R1
       40 LOADNIL                          R2
       41 FORGPREP                         R0
       42 MOVE                             R5 R3
       43 GETUPVAL                         R6 4
       44 CALL                             R5 1 0
       45 FORGLOOP                         R0 1 ; [-4]
       47 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+5]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R1 0
        1 LOADB                            R2 0
        2 LOADN                            R3 0
        3 NEWTABLE                         R4 0 0
        5 LOADNIL                          R5
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          REF R5
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R4
       12 CAPTURE                          REF R5
       13 NEWCLOSURE                       R8 P2
       14 CAPTURE                          VAL R4
       15 CAPTURE                          REF R5
       16 NEWCLOSURE                       R9 P3
       17 CAPTURE                          REF R2
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R4
       20 CAPTURE                          REF R3
       21 CAPTURE                          REF R5
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R8
       25 NEWCLOSURE                       R5 P4
       26 CAPTURE                          REF R2
       27 CAPTURE                          REF R1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R9
       30 GETUPVAL                         R10 0
       31 MOVE                             R11 R0
       32 MOVE                             R12 R8
       33 CALL                             R10 2 0
       34 GETIMPORT                        R10 K2 [os.clock]
       36 CALL                             R10 0 1
       37 MOVE                             R3 R10
       38 CLOSEUPVALS                      R1
       39 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["callUserSpace"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Scheduler"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["scheduleWork"]
       21 GETTABLEKS                       R3 R1 K8 ["runContinuations"]
       23 DUPTABLE                         R4 K10 [{"__mode"}]
       24 LOADK                            R5 K11 ["k"]
       25 SETTABLEKS                       R5 R4 K9 ["__mode"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R6 K13 [PROTO_1]
       30 DUPCLOSURE                       R7 K14 [PROTO_2]
       31 DUPCLOSURE                       R8 K15 [PROTO_3]
       32 CAPTURE                          VAL R7
       33 DUPCLOSURE                       R9 K16 [PROTO_6]
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R0
       36 GETIMPORT                        R11 K18 [_G]
       38 GETTABLEKS                       R10 R11 K19 ["__SIGNALS_VALIDATION_ENABLED__"]
       40 JUMPIF                           R10 ; [+4]
       41 GETIMPORT                        R11 K18 [_G]
       43 GETTABLEKS                       R10 R11 K20 ["__DEV__"]
       45 JUMPIFNOT                        R10 ; [+2]
       46 MOVE                             R11 R9
       47 JUMP                             ; [+1]
       48 MOVE                             R11 R0
       49 DUPCLOSURE                       R12 K21 [PROTO_13]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R13 K22 [PROTO_23]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R0
       59 DUPCLOSURE                       R14 K23 [PROTO_29]
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R2
       62 DUPTABLE                         R15 K27 [{"createSignal", "createComputed", "createEffect"}]
       63 SETTABLEKS                       R12 R15 K24 ["createSignal"]
       65 SETTABLEKS                       R13 R15 K25 ["createComputed"]
       67 SETTABLEKS                       R14 R15 K26 ["createEffect"]
       69 RETURN                           R15 1
