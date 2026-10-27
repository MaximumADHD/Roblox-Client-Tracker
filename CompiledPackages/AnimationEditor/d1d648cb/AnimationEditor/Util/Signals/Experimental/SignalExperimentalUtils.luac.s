PROTO_0:
        0 JUMPIFEQ                         R0 R1 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+5]
        2 GETVARARGS                       R1 1
        3 GETIMPORT                        R2 K1 [error]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 MOVE                             R2 R0
        2 CALL                             R2 0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 GETVARARGS                       R4 -1
        6 CALL                             R2 -1 0
        7 GETVARARGS                       R2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["attempted to use scope beyond scope's lifetime"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [setmetatable]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       14 LOADB                            R0 0
       15 SETUPVAL                         R0 2
       16 LOADB                            R0 0
       17 SETUPVAL                         R0 3
       18 LOADN                            R0 0
       19 SETUPVAL                         R0 4
       20 LOADN                            R0 0
       21 SETUPVAL                         R0 5
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 6
       24 GETIMPORT                        R0 K2 [table.clear]
       26 GETUPVAL                         R1 0
       27 CALL                             R0 1 0
       28 GETIMPORT                        R0 K2 [table.clear]
       30 GETUPVAL                         R1 7
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_14:
        0 JUMPIFEQKNIL                     R0 ; [+48]
        2 JUMPIFNOT                        R1 ; [+41]
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R2 R0
        6 GETIMPORT                        R2 K1 [next]
        8 GETUPVAL                         R3 0
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+36]
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 MOVE                             R7 R5
       16 GETUPVAL                         R8 2
       17 LOADB                            R9 1
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 1 ; [-5]
       21 GETIMPORT                        R2 K4 [table.clear]
       23 GETUPVAL                         R3 1
       24 CALL                             R2 1 0
       25 LOADB                            R2 0
       26 SETUPVAL                         R2 3
       27 LOADB                            R2 0
       28 SETUPVAL                         R2 4
       29 LOADN                            R2 0
       30 SETUPVAL                         R2 5
       31 LOADN                            R2 0
       32 SETUPVAL                         R2 6
       33 LOADNIL                          R2
       34 SETUPVAL                         R2 7
       35 GETIMPORT                        R2 K4 [table.clear]
       37 GETUPVAL                         R3 1
       38 CALL                             R2 1 0
       39 GETIMPORT                        R2 K4 [table.clear]
       41 GETUPVAL                         R3 0
       42 CALL                             R2 1 0
       43 JUMP                             ; [+3]
       44 GETUPVAL                         R2 0
       45 LOADB                            R3 1
       46 SETTABLE                         R3 R2 R0
       47 LOADN                            R2 0
       48 RETURN                           R2 1
       49 GETUPVAL                         R2 8
       50 CALL                             R2 0 0
       51 GETUPVAL                         R2 5
       52 RETURN                           R2 1

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+6]
        1 MOVE                             R1 R0
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R2 R1
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+6]
        5 MOVE                             R1 R0
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 3
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R1
       11 GETUPVAL                         R1 4
       12 RETURN                           R1 1

PROTO_17:
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
       47 CAPTURE                          REF R7
       48 CAPTURE                          VAL R11
       49 CAPTURE                          REF R2
       50 CAPTURE                          REF R3
       51 CAPTURE                          REF R4
       52 CAPTURE                          REF R5
       53 CAPTURE                          REF R6
       54 CAPTURE                          REF R8
       55 NEWCLOSURE                       R17 P7
       56 CAPTURE                          REF R8
       57 CAPTURE                          REF R7
       58 CAPTURE                          VAL R11
       59 CAPTURE                          REF R2
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R4
       62 CAPTURE                          REF R5
       63 CAPTURE                          REF R6
       64 CAPTURE                          VAL R15
       65 NEWCLOSURE                       R18 P8
       66 CAPTURE                          VAL R17
       67 CAPTURE                          REF R8
       68 NEWCLOSURE                       R19 P9
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R15
       71 CAPTURE                          VAL R17
       72 CAPTURE                          REF R8
       73 CAPTURE                          REF R6
       74 CLOSEUPVALS                      R2
       75 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K7 ["Signals"]
       20 GETTABLEKS                       R3 R3 K9 ["Experimental"]
       22 GETTABLEKS                       R3 R3 K10 ["callUserSpace"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 1 0
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 DUPCLOSURE                       R6 K13 [PROTO_2]
       30 CAPTURE                          VAL R5
       31 DUPCLOSURE                       R7 K14 [PROTO_5]
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R2
       34 GETIMPORT                        R8 K16 [_G]
       36 GETTABLEKS                       R8 R8 K17 ["__SIGNALS_VALIDATION_ENABLED__"]
       38 JUMPIF                           R8 ; [+4]
       39 GETIMPORT                        R8 K16 [_G]
       41 GETTABLEKS                       R8 R8 K18 ["__DEV__"]
       43 JUMPIFNOT                        R8 ; [+2]
       44 MOVE                             R9 R7
       45 JUMP                             ; [+1]
       46 MOVE                             R9 R2
       47 DUPTABLE                         R10 K21 [{["__mode"] = "k"}]
       48 DUPCLOSURE                       R11 K22 [PROTO_6]
       49 CAPTURE                          VAL R10
       50 DUPCLOSURE                       R12 K23 [PROTO_17]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R12 R3 K24 ["createComputed"]
       57 RETURN                           R3 1
