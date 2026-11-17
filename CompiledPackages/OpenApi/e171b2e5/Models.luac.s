PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 JUMPIFEQ                         R3 R4 ; [+18]
        8 LOADK                            R5 K2 ["%*Expected %*, got %*"]
        9 MOVE                             R7 R2
       10 GETUPVAL                         R8 0
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K1 [typeof]
       15 CALL                             R9 1 1
       16 NAMECALL                         R5 R5 K3 ["format"]
       18 CALL                             R5 4 1
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["validate"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["validate"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["scalar"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 JUMPIFEQ                         R3 R4 ; [+18]
        8 LOADK                            R5 K2 ["%*Expected %*, got %*"]
        9 MOVE                             R7 R2
       10 GETUPVAL                         R8 0
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K1 [typeof]
       15 CALL                             R9 1 1
       16 NAMECALL                         R5 R5 K3 ["format"]
       18 CALL                             R5 4 1
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R2 K6 [{[1] = True, ["scalar"], ["validate"], ["fromResponse"], ["toRequest"]}]
        1 SETTABLEKS                       R0 R2 K2 ["scalar"]
        3 SETTABLEKS                       R1 R2 K3 ["validate"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R3 R2 K4 ["fromResponse"]
        9 DUPCLOSURE                       R3 K7 [PROTO_3]
       10 SETTABLEKS                       R3 R2 K5 ["toRequest"]
       12 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+18]
        7 MODK                             R3 R0 K3 [1]
        8 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       10 JUMPIFEQ                         R0 R0 ; [+13]
       12 LOADK                            R5 K5 ["%*Expected an integer, got %*"]
       13 MOVE                             R7 R2
       14 MOVE                             R8 R0
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 3 1
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K9 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+22]
        7 MODK                             R3 R0 K3 [1]
        8 JUMPIFNOTEQKN                    R3 K4 [0] ; [+7]
       10 LOADK                            R3 K5 [-2147483648]
       11 JUMPIFLT                         R0 R3 ; [+4]
       13 LOADK                            R3 K6 [2147483647]
       14 JUMPIFNOTLT                      R3 R0 ; [+13]
       16 LOADK                            R5 K7 ["%*Expected a 32-bit integer, got %*"]
       17 MOVE                             R7 R2
       18 MOVE                             R8 R0
       19 NAMECALL                         R5 R5 K8 ["format"]
       21 CALL                             R5 3 1
       22 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       24 MOVE                             R4 R1
       25 GETIMPORT                        R3 K11 [table.insert]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 1

PROTO_8:
        0 RETURN                           R0 1

PROTO_9:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["validate"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["fromResponse"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_11:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["toRequest"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_12:
        0 DUPTABLE                         R1 K8 [{[1], ["scalar"], ["optional"] = True, ["knownKeys"], ["validate"], ["fromResponse"], ["toRequest"]}]
        1 GETTABLEKS                       R2 R0 K0 ["identity"]
        3 SETTABLEKS                       R2 R1 K0 ["identity"]
        5 GETTABLEKS                       R2 R0 K1 ["scalar"]
        7 SETTABLEKS                       R2 R1 K1 ["scalar"]
        9 GETTABLEKS                       R2 R0 K4 ["knownKeys"]
       11 SETTABLEKS                       R2 R1 K4 ["knownKeys"]
       13 GETTABLEKS                       R3 R0 K5 ["validate"]
       15 JUMPIFEQKNIL                     R3 ; [+4]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 JUMP                             ; [+1]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K5 ["validate"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R1 K6 ["fromResponse"]
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R1 K7 ["toRequest"]
       31 RETURN                           R1 1

PROTO_13:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 MOVE                             R10 R1
       15 LOADK                            R11 K3 ["%*%* > "]
       16 MOVE                             R13 R2
       17 GETUPVAL                         R14 1
       18 MOVE                             R15 R6
       19 CALL                             R14 1 1
       20 NAMECALL                         R11 R11 K4 ["format"]
       22 CALL                             R11 3 1
       23 CALL                             R8 3 0
       24 FORGLOOP                         R3 2 ; [-13]
       26 RETURN                           R0 0

PROTO_14:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 MOVE                             R3 R0
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 FASTCALL1                        TYPEOF R6 ; [+3]
       29 MOVE                             R9 R6
       30 GETIMPORT                        R8 K1 [typeof]
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 0
       34 JUMPIFEQ                         R8 R9 ; [+26]
       36 LOADK                            R10 K7 ["%*Expected %* of type %*, got %* as %*"]
       37 MOVE                             R12 R2
       38 GETUPVAL                         R14 0
       39 JUMPIFNOTEQKS                    R14 K8 ["string"] ; [+3]
       41 LOADK                            R13 K9 ["key"]
       42 JUMP                             ; [+1]
       43 LOADK                            R13 K10 ["index"]
       44 GETUPVAL                         R14 0
       45 MOVE                             R15 R6
       46 FASTCALL1                        TYPEOF R6 ; [+3]
       47 MOVE                             R17 R6
       48 GETIMPORT                        R16 K1 [typeof]
       50 CALL                             R16 1 1
       51 NAMECALL                         R10 R10 K4 ["format"]
       53 CALL                             R10 6 1
       54 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       56 MOVE                             R9 R1
       57 GETIMPORT                        R8 K6 [table.insert]
       59 CALL                             R8 2 0
       60 JUMP                             ; [+17]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K11 ["fromResponse"]
       64 MOVE                             R9 R7
       65 MOVE                             R10 R1
       66 LOADK                            R11 K12 ["%*%* > "]
       67 MOVE                             R13 R2
       68 GETUPVAL                         R14 2
       69 MOVE                             R15 R6
       70 CALL                             R14 1 1
       71 NAMECALL                         R11 R11 K4 ["format"]
       73 CALL                             R11 3 1
       74 CALL                             R8 3 1
       75 JUMPIFEQ                         R8 R7 ; [+2]
       77 SETTABLE                         R8 R0 R6
       78 FORGLOOP                         R3 2 ; [-51]
       80 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [type]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        9 GETIMPORT                        R1 K4 [next]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 GETUPVAL                         R1 1
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["identity"]
       20 JUMPIFNOT                        R1 ; [+1]
       21 RETURN                           R0 1
       22 GETIMPORT                        R1 K7 [table.clone]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 MOVE                             R2 R1
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K8 ["toRequest"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 1
       35 SETTABLE                         R7 R1 R5
       36 FORGLOOP                         R2 2 ; [-7]
       38 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["validate"]
        2 JUMPIFEQKS                       R1 K1 ["string"] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 DUPTABLE                         R5 K5 [{"identity", "validate", "fromResponse", "toRequest"}]
        7 GETTABLEKS                       R6 R0 K2 ["identity"]
        9 JUMPIFNOT                        R6 ; [+1]
       10 NOT                              R6 R4
       11 SETTABLEKS                       R6 R5 K2 ["identity"]
       13 JUMPIFEQKNIL                     R3 ; [+5]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 SETTABLEKS                       R6 R5 K0 ["validate"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R6 R5 K3 ["fromResponse"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R6 R5 K4 ["toRequest"]
       34 RETURN                           R5 1

PROTO_17:
        0 LOADK                            R1 K0 ["[%*]"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["number"]
        3 DUPCLOSURE                       R4 K1 [PROTO_17]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_19:
        0 LOADK                            R1 K0 ["[\"%*\"]"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["string"]
        3 DUPCLOSURE                       R4 K1 [PROTO_19]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R5
        8 FORGLOOP                         R2 1 ; [-3]
       10 RETURN                           R1 1

PROTO_22:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLE                         R8 R0 R7
       13 JUMPIFNOTEQKNIL                  R8 ; [+14]
       15 LOADK                            R10 K3 ["%*%*Missing required property"]
       16 MOVE                             R12 R2
       17 GETUPVAL                         R14 1
       18 GETTABLE                         R13 R14 R7
       19 NAMECALL                         R10 R10 K4 ["format"]
       21 CALL                             R10 3 1
       22 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       24 MOVE                             R9 R1
       25 GETIMPORT                        R8 K6 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-17]
       30 GETUPVAL                         R3 2
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 GETTABLE                         R8 R0 R7
       35 JUMPIFEQKNIL                     R8 ; [+12]
       37 GETUPVAL                         R10 3
       38 GETTABLE                         R9 R10 R7
       39 GETTABLEKS                       R9 R9 K7 ["validate"]
       41 MOVE                             R10 R8
       42 MOVE                             R11 R1
       43 MOVE                             R13 R2
       44 GETUPVAL                         R15 1
       45 GETTABLE                         R14 R15 R7
       46 CONCAT                           R12 R13 R14
       47 CALL                             R9 3 0
       48 FORGLOOP                         R3 2 ; [-15]
       50 RETURN                           R0 0

PROTO_23:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETUPVAL                         R3 0
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETTABLE                         R8 R0 R7
       29 JUMPIFNOTEQKNIL                  R8 ; [+4]
       31 GETUPVAL                         R10 1
       32 GETTABLE                         R9 R10 R7
       33 JUMPIFNOT                        R9 ; [+25]
       34 GETUPVAL                         R10 2
       35 GETTABLE                         R9 R10 R7
       36 JUMPIFEQKNIL                     R9 ; [+8]
       38 FASTCALL1                        TYPEOF R8 ; [+3]
       39 MOVE                             R11 R8
       40 GETIMPORT                        R10 K1 [typeof]
       42 CALL                             R10 1 1
       43 JUMPIFEQ                         R10 R9 ; [+15]
       45 GETUPVAL                         R11 3
       46 GETTABLE                         R10 R11 R7
       47 GETTABLEKS                       R10 R10 K7 ["fromResponse"]
       49 MOVE                             R11 R8
       50 MOVE                             R12 R1
       51 MOVE                             R14 R2
       52 GETUPVAL                         R16 4
       53 GETTABLE                         R15 R16 R7
       54 CONCAT                           R13 R14 R15
       55 CALL                             R10 3 1
       56 JUMPIFEQ                         R10 R8 ; [+2]
       58 SETTABLE                         R10 R0 R7
       59 FORGLOOP                         R3 2 ; [-32]
       61 RETURN                           R0 1

PROTO_24:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [next]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 GETUPVAL                         R1 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R2 1
       17 LENGTH                           R1 R2
       18 JUMPIFNOTEQKN                    R1 K5 [0] ; [+2]
       20 RETURN                           R0 1
       21 GETIMPORT                        R1 K7 [table.clone]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 1
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLE                         R7 R1 R6
       30 JUMPIFEQKNIL                     R7 ; [+8]
       32 GETUPVAL                         R8 2
       33 GETTABLE                         R7 R8 R6
       34 GETTABLEKS                       R7 R7 K8 ["toRequest"]
       36 GETTABLE                         R8 R1 R6
       37 CALL                             R7 1 1
       38 SETTABLE                         R7 R1 R6
       39 FORGLOOP                         R2 2 ; [-11]
       41 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 JUMPIFEQKNIL                     R1 ; [+10]
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 SETTABLE                         R8 R2 R7
       13 LOADB                            R9 1
       14 SETTABLE                         R9 R3 R7
       15 FORGLOOP                         R4 2 ; [-4]
       17 NEWTABLE                         R4 0 0
       19 NEWTABLE                         R5 0 0
       21 NEWTABLE                         R6 0 0
       23 NEWTABLE                         R7 0 0
       25 NEWTABLE                         R8 0 0
       27 MOVE                             R9 R2
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 FORGPREP                         R9
       31 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       33 MOVE                             R15 R4
       34 MOVE                             R16 R12
       35 GETIMPORT                        R14 K4 [table.insert]
       37 CALL                             R14 2 0
       38 LOADK                            R14 K5 ["\"%*\" > "]
       39 MOVE                             R16 R12
       40 NAMECALL                         R14 R14 K6 ["format"]
       42 CALL                             R14 2 1
       43 SETTABLE                         R14 R7 R12
       44 GETTABLEKS                       R14 R13 K7 ["scalar"]
       46 JUMPIFEQKNIL                     R14 ; [+4]
       48 GETTABLEKS                       R14 R13 K7 ["scalar"]
       50 SETTABLE                         R14 R8 R12
       51 GETTABLEKS                       R14 R13 K8 ["validate"]
       53 JUMPIFEQKNIL                     R14 ; [+8]
       55 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       57 MOVE                             R15 R5
       58 MOVE                             R16 R12
       59 GETIMPORT                        R14 K4 [table.insert]
       61 CALL                             R14 2 0
       62 GETTABLEKS                       R14 R13 K9 ["identity"]
       64 JUMPIF                           R14 ; [+7]
       65 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       67 MOVE                             R15 R6
       68 MOVE                             R16 R12
       69 GETIMPORT                        R14 K4 [table.insert]
       71 CALL                             R14 2 0
       72 FORGLOOP                         R9 2 ; [-42]
       74 GETIMPORT                        R9 K11 [table.sort]
       76 MOVE                             R10 R4
       77 CALL                             R9 1 0
       78 GETIMPORT                        R9 K11 [table.sort]
       80 MOVE                             R10 R5
       81 CALL                             R9 1 0
       82 GETIMPORT                        R9 K11 [table.sort]
       84 MOVE                             R10 R6
       85 CALL                             R9 1 0
       86 NEWTABLE                         R9 0 0
       88 MOVE                             R10 R4
       89 LOADNIL                          R11
       90 LOADNIL                          R12
       91 FORGPREP                         R10
       92 GETTABLE                         R15 R3 R14
       93 JUMPIFNOT                        R15 ; [+7]
       94 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       96 MOVE                             R16 R9
       97 MOVE                             R17 R14
       98 GETIMPORT                        R15 K4 [table.insert]
      100 CALL                             R15 2 0
      101 FORGLOOP                         R10 2 ; [-10]
      103 DUPTABLE                         R10 K16 [{["identity"] = False, ["knownKeys"], ["validate"], ["fromResponse"], ["toRequest"]}]
      104 NEWTABLE                         R11 0 0
      106 MOVE                             R12 R2
      107 LOADNIL                          R13
      108 LOADNIL                          R14
      109 FORGPREP                         R12
      110 LOADB                            R17 1
      111 SETTABLE                         R17 R11 R15
      112 FORGLOOP                         R12 1 ; [-3]
      114 SETTABLEKS                       R11 R10 K13 ["knownKeys"]
      116 LENGTH                           R12 R5
      117 LOADN                            R13 0
      118 JUMPIFLT                         R13 R12 ; [+5]
      120 LENGTH                           R12 R9
      121 LOADN                            R13 0
      122 JUMPIFNOTLT                      R13 R12 ; [+7]
      124 NEWCLOSURE                       R11 P0
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R2
      129 JUMP                             ; [+1]
      130 LOADNIL                          R11
      131 SETTABLEKS                       R11 R10 K8 ["validate"]
      133 NEWCLOSURE                       R11 P1
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R11 R10 K14 ["fromResponse"]
      141 NEWCLOSURE                       R11 P2
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R11 R10 K15 ["toRequest"]
      147 RETURN                           R10 1

PROTO_26:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R9 R7
       10 GETIMPORT                        R8 K1 [typeof]
       12 CALL                             R8 1 1
       13 GETTABLE                         R9 R1 R8
       14 JUMPIF                           R9 ; [+9]
       15 LOADB                            R9 1
       16 SETTABLE                         R9 R1 R8
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R10 R2
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K4 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R3 2 ; [-17]
       26 LENGTH                           R3 R2
       27 JUMPIFNOTEQKN                    R3 K5 [0] ; [+4]
       29 DUPTABLE                         R3 K8 [{["string"] = True}]
       30 LOADK                            R4 K6 ["string"]
       31 RETURN                           R3 2
       32 GETIMPORT                        R3 K10 [table.sort]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 MOVE                             R3 R1
       37 GETIMPORT                        R4 K12 [table.concat]
       39 MOVE                             R5 R2
       40 LOADK                            R6 K13 [" or "]
       41 CALL                             R4 2 -1
       42 RETURN                           R3 -1

PROTO_27:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+5]
        7 JUMPIFEQKS                       R1 K3 ["number"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+7]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K6 [tostring]
       15 CALL                             R2 1 1
       16 RETURN                           R2 1
       17 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R4 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 GETTABLE                         R3 R4 R5
        7 JUMPIF                           R3 ; [+18]
        8 LOADK                            R5 K2 ["%*Expected %*, got %*"]
        9 MOVE                             R7 R2
       10 GETUPVAL                         R8 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K1 [typeof]
       15 CALL                             R9 1 1
       16 NAMECALL                         R5 R5 K3 ["format"]
       18 CALL                             R5 4 1
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 2
       27 GETTABLE                         R3 R4 R0
       28 JUMPIF                           R3 ; [+30]
       29 LOADK                            R5 K7 ["%*Unexpected enum value %*"]
       30 MOVE                             R7 R2
       31 FASTCALL1                        TYPEOF R0 ; [+3]
       32 MOVE                             R10 R0
       33 GETIMPORT                        R9 K1 [typeof]
       35 CALL                             R9 1 1
       36 JUMPIFEQKS                       R9 K8 ["string"] ; [+5]
       38 JUMPIFEQKS                       R9 K9 ["number"] ; [+3]
       40 JUMPIFNOTEQKS                    R9 K10 ["boolean"] ; [+8]
       42 FASTCALL1                        TOSTRING R0 ; [+3]
       43 MOVE                             R11 R0
       44 GETIMPORT                        R10 K12 [tostring]
       46 CALL                             R10 1 1
       47 MOVE                             R8 R10
       48 JUMP                             ; [+1]
       49 MOVE                             R8 R9
       50 NAMECALL                         R5 R5 K3 ["format"]
       52 CALL                             R5 3 1
       53 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       55 MOVE                             R4 R1
       56 GETIMPORT                        R3 K6 [table.insert]
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R4 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 GETTABLE                         R3 R4 R5
        7 JUMPIF                           R3 ; [+18]
        8 LOADK                            R5 K2 ["%*Expected %*, got %*"]
        9 MOVE                             R7 R2
       10 GETUPVAL                         R8 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K1 [typeof]
       15 CALL                             R9 1 1
       16 NAMECALL                         R5 R5 K3 ["format"]
       18 CALL                             R5 4 1
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 1
       26 GETUPVAL                         R3 2
       27 JUMPIF                           R3 ; [+33]
       28 GETUPVAL                         R4 3
       29 GETTABLE                         R3 R4 R0
       30 JUMPIF                           R3 ; [+30]
       31 LOADK                            R5 K7 ["%*Unexpected enum value %*"]
       32 MOVE                             R7 R2
       33 FASTCALL1                        TYPEOF R0 ; [+3]
       34 MOVE                             R10 R0
       35 GETIMPORT                        R9 K1 [typeof]
       37 CALL                             R9 1 1
       38 JUMPIFEQKS                       R9 K8 ["string"] ; [+5]
       40 JUMPIFEQKS                       R9 K9 ["number"] ; [+3]
       42 JUMPIFNOTEQKS                    R9 K10 ["boolean"] ; [+8]
       44 FASTCALL1                        TOSTRING R0 ; [+3]
       45 MOVE                             R11 R0
       46 GETIMPORT                        R10 K12 [tostring]
       48 CALL                             R10 1 1
       49 MOVE                             R8 R10
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R9
       52 NAMECALL                         R5 R5 K3 ["format"]
       54 CALL                             R5 3 1
       55 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       57 MOVE                             R4 R1
       58 GETIMPORT                        R3 K6 [table.insert]
       60 CALL                             R3 2 0
       61 RETURN                           R0 1

PROTO_30:
        0 RETURN                           R0 1

PROTO_31:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADB                            R9 1
        7 SETTABLE                         R9 R3 R8
        8 FORGLOOP                         R4 2 ; [-3]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R0
       12 CALL                             R4 1 2
       13 LOADB                            R6 0
       14 JUMPIFEQKNIL                     R2 ; [+7]
       16 GETTABLEKS                       R7 R2 K0 ["lenient"]
       18 JUMPIFEQKB                       R7 TRUE ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 DUPTABLE                         R7 K7 [{["identity"] = True, ["values"], ["validate"], ["fromResponse"], ["toRequest"]}]
       23 SETTABLEKS                       R1 R7 K3 ["values"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R8 R7 K4 ["validate"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R8 R7 K5 ["fromResponse"]
       38 DUPCLOSURE                       R8 K8 [PROTO_30]
       39 SETTABLEKS                       R8 R7 K6 ["toRequest"]
       41 RETURN                           R7 1

PROTO_32:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+5]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 JUMPIFNOTEQKNIL                  R3 ; [+31]
       11 LOADK                            R5 K3 ["%*Unexpected enum value %*"]
       12 MOVE                             R7 R2
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R10 R0
       15 GETIMPORT                        R9 K1 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFEQKS                       R9 K2 ["string"] ; [+5]
       20 JUMPIFEQKS                       R9 K4 ["number"] ; [+3]
       22 JUMPIFNOTEQKS                    R9 K5 ["boolean"] ; [+8]
       24 FASTCALL1                        TOSTRING R0 ; [+3]
       25 MOVE                             R11 R0
       26 GETIMPORT                        R10 K7 [tostring]
       28 CALL                             R10 1 1
       29 MOVE                             R8 R10
       30 JUMP                             ; [+1]
       31 MOVE                             R8 R9
       32 NAMECALL                         R5 R5 K8 ["format"]
       34 CALL                             R5 3 1
       35 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K11 [table.insert]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R4 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [typeof]
        5 CALL                             R5 1 1
        6 GETTABLE                         R3 R4 R5
        7 JUMPIF                           R3 ; [+18]
        8 LOADK                            R5 K2 ["%*Expected %*, got %*"]
        9 MOVE                             R7 R2
       10 GETUPVAL                         R8 1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R10 R0
       13 GETIMPORT                        R9 K1 [typeof]
       15 CALL                             R9 1 1
       16 NAMECALL                         R5 R5 K3 ["format"]
       18 CALL                             R5 4 1
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 1
       26 GETUPVAL                         R4 2
       27 GETTABLE                         R3 R4 R0
       28 JUMPIFNOTEQKNIL                  R3 ; [+34]
       30 GETUPVAL                         R4 3
       31 JUMPIF                           R4 ; [+30]
       32 LOADK                            R6 K7 ["%*Value %* is not a known enum value"]
       33 MOVE                             R8 R2
       34 FASTCALL1                        TYPEOF R0 ; [+3]
       35 MOVE                             R11 R0
       36 GETIMPORT                        R10 K1 [typeof]
       38 CALL                             R10 1 1
       39 JUMPIFEQKS                       R10 K8 ["string"] ; [+5]
       41 JUMPIFEQKS                       R10 K9 ["number"] ; [+3]
       43 JUMPIFNOTEQKS                    R10 K10 ["boolean"] ; [+8]
       45 FASTCALL1                        TOSTRING R0 ; [+3]
       46 MOVE                             R12 R0
       47 GETIMPORT                        R11 K12 [tostring]
       49 CALL                             R11 1 1
       50 MOVE                             R9 R11
       51 JUMP                             ; [+1]
       52 MOVE                             R9 R10
       53 NAMECALL                         R6 R6 K3 ["format"]
       55 CALL                             R6 3 1
       56 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       58 MOVE                             R5 R1
       59 GETIMPORT                        R4 K6 [table.insert]
       61 CALL                             R4 2 0
       62 RETURN                           R0 1
       63 RETURN                           R3 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 1
        7 RETURN                           R1 1

PROTO_35:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 SETTABLE                         R8 R3 R9
        9 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       11 MOVE                             R11 R4
       12 MOVE                             R12 R8
       13 GETIMPORT                        R10 K2 [table.insert]
       15 CALL                             R10 2 0
       16 FORGLOOP                         R5 2 ; [-9]
       18 GETUPVAL                         R5 0
       19 MOVE                             R6 R4
       20 CALL                             R5 1 2
       21 LOADB                            R7 0
       22 JUMPIFEQKNIL                     R2 ; [+7]
       24 GETTABLEKS                       R8 R2 K3 ["lenient"]
       26 JUMPIFEQKB                       R8 TRUE ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 DUPTABLE                         R8 K8 [{"values", "validate", "fromResponse", "toRequest"}]
       31 SETTABLEKS                       R1 R8 K4 ["values"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R9 R8 K5 ["validate"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R7
       42 SETTABLEKS                       R9 R8 K6 ["fromResponse"]
       44 NEWCLOSURE                       R9 P2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R9 R8 K7 ["toRequest"]
       49 RETURN                           R8 1

PROTO_36:
        0 JUMPIFEQKNIL                     R0 ; [+7]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [tonumber]
        6 CALL                             R3 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 LOADB                            R4 0
       10 JUMPIFEQKNIL                     R3 ; [+8]
       12 LOADB                            R4 0
       13 JUMPIFNOTLE                      R1 R3 ; [+5]
       15 JUMPIFLE                         R3 R2 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 RETURN                           R4 1

PROTO_37:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^(%d%d%d%d)%-(%d%d)%-(%d%d)$"]
        4 CALL                             R1 2 3
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 FASTCALL1                        TONUMBER R2 ; [+3]
        8 MOVE                             R6 R2
        9 GETIMPORT                        R5 K5 [tonumber]
       11 CALL                             R5 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R5
       14 LOADB                            R4 0
       15 JUMPIFEQKNIL                     R5 ; [+10]
       17 LOADB                            R4 0
       18 LOADN                            R6 1
       19 JUMPIFNOTLE                      R6 R5 ; [+6]
       21 LOADN                            R6 12
       22 JUMPIFLE                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMPIF                           R4 ; [+2]
       27 LOADB                            R4 0
       28 RETURN                           R4 1
       29 FASTCALL1                        TONUMBER R2 ; [+3]
       30 MOVE                             R7 R2
       31 GETIMPORT                        R6 K5 [tonumber]
       33 CALL                             R6 1 1
       34 MOVE                             R4 R6
       35 FASTCALL1                        TONUMBER R1 ; [+3]
       36 MOVE                             R6 R1
       37 GETIMPORT                        R5 K5 [tonumber]
       39 CALL                             R5 1 1
       40 LOADB                            R6 0
       41 MODK                             R7 R5 K6 [4]
       42 JUMPIFNOTEQKN                    R7 K7 [0] ; [+10]
       44 LOADB                            R6 1
       45 MODK                             R7 R5 K8 [100]
       46 JUMPIFNOTEQKN                    R7 K7 [0] ; [+6]
       48 MODK                             R7 R5 K9 [400]
       49 JUMPIFEQKN                       R7 K7 [0] ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 JUMPIFNOTEQKN                    R4 K10 [2] ; [+4]
       55 JUMPIFNOT                        R6 ; [+2]
       56 LOADN                            R7 29
       57 JUMP                             ; [+2]
       58 GETUPVAL                         R8 0
       59 GETTABLE                         R7 R8 R4
       60 JUMPIFEQKNIL                     R3 ; [+7]
       62 FASTCALL1                        TONUMBER R3 ; [+3]
       63 MOVE                             R10 R3
       64 GETIMPORT                        R9 K5 [tonumber]
       66 CALL                             R9 1 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R9
       69 LOADB                            R8 0
       70 JUMPIFEQKNIL                     R9 ; [+9]
       72 LOADB                            R8 0
       73 LOADN                            R10 1
       74 JUMPIFNOTLE                      R10 R9 ; [+5]
       76 JUMPIFLE                         R9 R7 ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 RETURN                           R8 1

PROTO_38:
        0 JUMPIFEQKS                       R0 K0 ["Z"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["z"] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K4 [string.match]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K5 ["^[%+%-](%d%d):(%d%d)$"]
       10 CALL                             R1 2 2
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 FASTCALL1                        TONUMBER R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K7 [tonumber]
       17 CALL                             R4 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 LOADB                            R3 0
       21 JUMPIFEQKNIL                     R4 ; [+10]
       23 LOADB                            R3 0
       24 LOADN                            R5 0
       25 JUMPIFNOTLE                      R5 R4 ; [+6]
       27 LOADN                            R5 23
       28 JUMPIFLE                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R3 ; [+21]
       33 JUMPIFEQKNIL                     R2 ; [+7]
       35 FASTCALL1                        TONUMBER R2 ; [+3]
       36 MOVE                             R5 R2
       37 GETIMPORT                        R4 K7 [tonumber]
       39 CALL                             R4 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 LOADB                            R3 0
       43 JUMPIFEQKNIL                     R4 ; [+10]
       45 LOADB                            R3 0
       46 LOADN                            R5 0
       47 JUMPIFNOTLE                      R5 R4 ; [+6]
       49 LOADN                            R5 59
       50 JUMPIFLE                         R4 R5 ; [+2]
       52 LOADB                            R3 0 +1
       53 LOADB                            R3 1
       54 RETURN                           R3 1

PROTO_39:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^(%d%d%d%d%-%d%d%-%d%d)[Tt](%d%d):(%d%d):(%d%d)(.*)$"]
        4 CALL                             R1 2 5
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 JUMPIFEQKNIL                     R5 ; [+5]
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R1
       11 CALL                             R6 1 1
       12 JUMPIF                           R6 ; [+2]
       13 LOADB                            R6 0
       14 RETURN                           R6 1
       15 JUMPIFEQKNIL                     R2 ; [+7]
       17 FASTCALL1                        TONUMBER R2 ; [+3]
       18 MOVE                             R8 R2
       19 GETIMPORT                        R7 K5 [tonumber]
       21 CALL                             R7 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 LOADB                            R6 0
       25 JUMPIFEQKNIL                     R7 ; [+10]
       27 LOADB                            R6 0
       28 LOADN                            R8 0
       29 JUMPIFNOTLE                      R8 R7 ; [+6]
       31 LOADN                            R8 23
       32 JUMPIFLE                         R7 R8 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 JUMPIFNOT                        R6 ; [+44]
       37 JUMPIFEQKNIL                     R3 ; [+7]
       39 FASTCALL1                        TONUMBER R3 ; [+3]
       40 MOVE                             R8 R3
       41 GETIMPORT                        R7 K5 [tonumber]
       43 CALL                             R7 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R7
       46 LOADB                            R6 0
       47 JUMPIFEQKNIL                     R7 ; [+10]
       49 LOADB                            R6 0
       50 LOADN                            R8 0
       51 JUMPIFNOTLE                      R8 R7 ; [+6]
       53 LOADN                            R8 59
       54 JUMPIFLE                         R7 R8 ; [+2]
       56 LOADB                            R6 0 +1
       57 LOADB                            R6 1
       58 JUMPIFNOT                        R6 ; [+22]
       59 JUMPIFEQKNIL                     R4 ; [+7]
       61 FASTCALL1                        TONUMBER R4 ; [+3]
       62 MOVE                             R8 R4
       63 GETIMPORT                        R7 K5 [tonumber]
       65 CALL                             R7 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 LOADB                            R6 0
       69 JUMPIFEQKNIL                     R7 ; [+10]
       71 LOADB                            R6 0
       72 LOADN                            R8 0
       73 JUMPIFNOTLE                      R8 R7 ; [+6]
       75 LOADN                            R8 60
       76 JUMPIFLE                         R7 R8 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 JUMPIF                           R6 ; [+2]
       81 LOADB                            R6 0
       82 RETURN                           R6 1
       83 GETIMPORT                        R6 K2 [string.match]
       85 MOVE                             R7 R5
       86 LOADK                            R8 K6 ["^%.%d+"]
       87 CALL                             R6 2 1
       88 JUMPIFEQKNIL                     R6 ; [+10]
       90 LENGTH                           R11 R6
       91 ADDK                             R10 R11 K7 [1]
       92 FASTCALL2                        STRING_SUB R5 R10 ; [+4]
       94 MOVE                             R9 R5
       95 GETIMPORT                        R8 K9 [string.sub]
       97 CALL                             R8 2 1
       98 JUMP                             ; [+1]
       99 MOVE                             R8 R5
      100 JUMPIFEQKS                       R8 K10 ["Z"] ; [+3]
      102 JUMPIFNOTEQKS                    R8 K11 ["z"] ; [+3]
      104 LOADB                            R7 1
      105 RETURN                           R7 1
      106 GETIMPORT                        R9 K2 [string.match]
      108 MOVE                             R10 R8
      109 LOADK                            R11 K12 ["^[%+%-](%d%d):(%d%d)$"]
      110 CALL                             R9 2 2
      111 JUMPIFEQKNIL                     R9 ; [+7]
      113 FASTCALL1                        TONUMBER R9 ; [+3]
      114 MOVE                             R12 R9
      115 GETIMPORT                        R11 K5 [tonumber]
      117 CALL                             R11 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R11
      120 LOADB                            R7 0
      121 JUMPIFEQKNIL                     R11 ; [+10]
      123 LOADB                            R7 0
      124 LOADN                            R12 0
      125 JUMPIFNOTLE                      R12 R11 ; [+6]
      127 LOADN                            R12 23
      128 JUMPIFLE                         R11 R12 ; [+2]
      130 LOADB                            R7 0 +1
      131 LOADB                            R7 1
      132 JUMPIFNOT                        R7 ; [+21]
      133 JUMPIFEQKNIL                     R10 ; [+7]
      135 FASTCALL1                        TONUMBER R10 ; [+3]
      136 MOVE                             R12 R10
      137 GETIMPORT                        R11 K5 [tonumber]
      139 CALL                             R11 1 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R11
      142 LOADB                            R7 0
      143 JUMPIFEQKNIL                     R11 ; [+10]
      145 LOADB                            R7 0
      146 LOADN                            R12 0
      147 JUMPIFNOTLE                      R12 R11 ; [+6]
      149 LOADN                            R12 59
      150 JUMPIFLE                         R11 R12 ; [+2]
      152 LOADB                            R7 0 +1
      153 LOADB                            R7 1
      154 RETURN                           R7 1

PROTO_40:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x$"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_41:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_42:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 DIV                              R2 R0 R1
        5 FASTCALL1                        MATH_ROUND R2 ; [+3]
        6 MOVE                             R7 R2
        7 GETIMPORT                        R6 K3 [math.round]
        9 CALL                             R6 1 1
       10 SUB                              R5 R2 R6
       11 FASTCALL1                        MATH_ABS R5 ; [+2]
       12 GETIMPORT                        R4 K5 [math.abs]
       14 CALL                             R4 1 1
       15 LOADN                            R7 1
       16 FASTCALL1                        MATH_ABS R2 ; [+3]
       17 MOVE                             R9 R2
       18 GETIMPORT                        R8 K5 [math.abs]
       20 CALL                             R8 1 1
       21 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       23 GETIMPORT                        R6 K8 [math.max]
       25 CALL                             R6 2 1
       26 MULK                             R5 R6 K6 [1E-09]
       27 JUMPIFLE                         R4 R5 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_43:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+156]
        7 JUMPIFEQ                         R1 R1 ; [+13]
        9 LOADK                            R7 K3 ["%*Expected a number, got NaN"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K4 ["format"]
       13 CALL                             R7 2 1
       14 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K7 [table.insert]
       19 CALL                             R5 2 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R5 R0 K8 ["minimum"]
       23 JUMPIFEQKNIL                     R5 ; [+19]
       25 GETTABLEKS                       R5 R0 K8 ["minimum"]
       27 JUMPIFNOTLT                      R1 R5 ; [+15]
       29 LOADK                            R7 K9 ["%*Expected at least %*, got %*"]
       30 MOVE                             R9 R3
       31 GETTABLEKS                       R10 R0 K8 ["minimum"]
       33 MOVE                             R11 R1
       34 NAMECALL                         R7 R7 K4 ["format"]
       36 CALL                             R7 4 1
       37 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       39 MOVE                             R6 R2
       40 GETIMPORT                        R5 K7 [table.insert]
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R5 R0 K10 ["maximum"]
       45 JUMPIFEQKNIL                     R5 ; [+19]
       47 GETTABLEKS                       R5 R0 K10 ["maximum"]
       49 JUMPIFNOTLT                      R5 R1 ; [+15]
       51 LOADK                            R7 K11 ["%*Expected at most %*, got %*"]
       52 MOVE                             R9 R3
       53 GETTABLEKS                       R10 R0 K10 ["maximum"]
       55 MOVE                             R11 R1
       56 NAMECALL                         R7 R7 K4 ["format"]
       58 CALL                             R7 4 1
       59 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       61 MOVE                             R6 R2
       62 GETIMPORT                        R5 K7 [table.insert]
       64 CALL                             R5 2 0
       65 GETTABLEKS                       R5 R0 K12 ["exclusiveMinimum"]
       67 JUMPIFEQKNIL                     R5 ; [+19]
       69 GETTABLEKS                       R5 R0 K12 ["exclusiveMinimum"]
       71 JUMPIFNOTLE                      R1 R5 ; [+15]
       73 LOADK                            R7 K13 ["%*Expected more than %*, got %*"]
       74 MOVE                             R9 R3
       75 GETTABLEKS                       R10 R0 K12 ["exclusiveMinimum"]
       77 MOVE                             R11 R1
       78 NAMECALL                         R7 R7 K4 ["format"]
       80 CALL                             R7 4 1
       81 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       83 MOVE                             R6 R2
       84 GETIMPORT                        R5 K7 [table.insert]
       86 CALL                             R5 2 0
       87 GETTABLEKS                       R5 R0 K14 ["exclusiveMaximum"]
       89 JUMPIFEQKNIL                     R5 ; [+19]
       91 GETTABLEKS                       R5 R0 K14 ["exclusiveMaximum"]
       93 JUMPIFNOTLE                      R5 R1 ; [+15]
       95 LOADK                            R7 K15 ["%*Expected less than %*, got %*"]
       96 MOVE                             R9 R3
       97 GETTABLEKS                       R10 R0 K14 ["exclusiveMaximum"]
       99 MOVE                             R11 R1
      100 NAMECALL                         R7 R7 K4 ["format"]
      102 CALL                             R7 4 1
      103 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      105 MOVE                             R6 R2
      106 GETIMPORT                        R5 K7 [table.insert]
      108 CALL                             R5 2 0
      109 GETTABLEKS                       R5 R0 K16 ["multipleOf"]
      111 JUMPIFEQKNIL                     R5 ; [+243]
      113 GETTABLEKS                       R6 R0 K16 ["multipleOf"]
      115 JUMPIFNOTEQKN                    R6 K17 [0] ; [+3]
      117 LOADB                            R5 1
      118 JUMP                             ; [+27]
      119 DIV                              R7 R1 R6
      120 FASTCALL1                        MATH_ROUND R7 ; [+3]
      121 MOVE                             R11 R7
      122 GETIMPORT                        R10 K20 [math.round]
      124 CALL                             R10 1 1
      125 SUB                              R9 R7 R10
      126 FASTCALL1                        MATH_ABS R9 ; [+2]
      127 GETIMPORT                        R8 K22 [math.abs]
      129 CALL                             R8 1 1
      130 LOADN                            R11 1
      131 FASTCALL1                        MATH_ABS R7 ; [+3]
      132 MOVE                             R13 R7
      133 GETIMPORT                        R12 K22 [math.abs]
      135 CALL                             R12 1 1
      136 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
      138 GETIMPORT                        R10 K25 [math.max]
      140 CALL                             R10 2 1
      141 MULK                             R9 R10 K23 [1E-09]
      142 JUMPIFLE                         R8 R9 ; [+2]
      144 LOADB                            R5 0 +1
      145 LOADB                            R5 1
      146 JUMPIF                           R5 ; [+208]
      147 LOADK                            R7 K26 ["%*Expected a multiple of %*, got %*"]
      148 MOVE                             R9 R3
      149 GETTABLEKS                       R10 R0 K16 ["multipleOf"]
      151 MOVE                             R11 R1
      152 NAMECALL                         R7 R7 K4 ["format"]
      154 CALL                             R7 4 1
      155 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
      157 MOVE                             R6 R2
      158 GETIMPORT                        R5 K7 [table.insert]
      160 CALL                             R5 2 0
      161 RETURN                           R0 0
      162 JUMPIFNOTEQKS                    R4 K27 ["string"] ; [+77]
      164 GETIMPORT                        R5 K30 [utf8.len]
      166 MOVE                             R6 R1
      167 CALL                             R5 1 1
      168 JUMPIF                           R5 ; [+1]
      169 LENGTH                           R5 R1
      170 GETTABLEKS                       R6 R0 K31 ["minLength"]
      172 JUMPIFEQKNIL                     R6 ; [+19]
      174 GETTABLEKS                       R6 R0 K31 ["minLength"]
      176 JUMPIFNOTLT                      R5 R6 ; [+15]
      178 LOADK                            R8 K32 ["%*Expected at least %* characters, got %*"]
      179 MOVE                             R10 R3
      180 GETTABLEKS                       R11 R0 K31 ["minLength"]
      182 MOVE                             R12 R5
      183 NAMECALL                         R8 R8 K4 ["format"]
      185 CALL                             R8 4 1
      186 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      188 MOVE                             R7 R2
      189 GETIMPORT                        R6 K7 [table.insert]
      191 CALL                             R6 2 0
      192 GETTABLEKS                       R6 R0 K33 ["maxLength"]
      194 JUMPIFEQKNIL                     R6 ; [+19]
      196 GETTABLEKS                       R6 R0 K33 ["maxLength"]
      198 JUMPIFNOTLT                      R6 R5 ; [+15]
      200 LOADK                            R8 K34 ["%*Expected at most %* characters, got %*"]
      201 MOVE                             R10 R3
      202 GETTABLEKS                       R11 R0 K33 ["maxLength"]
      204 MOVE                             R12 R5
      205 NAMECALL                         R8 R8 K4 ["format"]
      207 CALL                             R8 4 1
      208 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      210 MOVE                             R7 R2
      211 GETIMPORT                        R6 K7 [table.insert]
      213 CALL                             R6 2 0
      214 GETTABLEKS                       R6 R0 K4 ["format"]
      216 JUMPIFEQKNIL                     R6 ; [+138]
      218 GETUPVAL                         R7 0
      219 GETTABLEKS                       R8 R0 K4 ["format"]
      221 GETTABLE                         R6 R7 R8
      222 MOVE                             R7 R1
      223 CALL                             R6 1 1
      224 JUMPIF                           R6 ; [+130]
      225 LOADK                            R8 K35 ["%*Expected a %*, got %*"]
      226 MOVE                             R10 R3
      227 GETTABLEKS                       R11 R0 K4 ["format"]
      229 MOVE                             R12 R1
      230 NAMECALL                         R8 R8 K4 ["format"]
      232 CALL                             R8 4 1
      233 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      235 MOVE                             R7 R2
      236 GETIMPORT                        R6 K7 [table.insert]
      238 CALL                             R6 2 0
      239 RETURN                           R0 0
      240 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+114]
      242 LOADB                            R5 1
      243 GETIMPORT                        R6 K37 [next]
      245 MOVE                             R7 R1
      246 CALL                             R6 1 1
      247 JUMPIFEQKNIL                     R6 ; [+6]
      249 GETTABLEN                        R6 R1 1
      250 JUMPIFNOTEQKNIL                  R6 ; [+2]
      252 LOADB                            R5 0 +1
      253 LOADB                            R5 1
      254 LOADN                            R6 0
      255 MOVE                             R7 R1
      256 LOADNIL                          R8
      257 LOADNIL                          R9
      258 FORGPREP                         R7
      259 ADDK                             R6 R6 K38 [1]
      260 FORGLOOP                         R7 1 ; [-2]
      262 JUMPIFNOT                        R5 ; [+3]
      263 GETTABLEKS                       R7 R0 K39 ["minItems"]
      265 JUMP                             ; [+2]
      266 GETTABLEKS                       R7 R0 K40 ["minProperties"]
      268 JUMPIFNOT                        R5 ; [+3]
      269 GETTABLEKS                       R8 R0 K41 ["maxItems"]
      271 JUMP                             ; [+2]
      272 GETTABLEKS                       R8 R0 K42 ["maxProperties"]
      274 JUMPIFNOT                        R5 ; [+2]
      275 LOADK                            R9 K43 ["items"]
      276 JUMP                             ; [+1]
      277 LOADK                            R9 K44 ["properties"]
      278 JUMPIFEQKNIL                     R7 ; [+17]
      280 JUMPIFNOTLT                      R6 R7 ; [+15]
      282 LOADK                            R12 K45 ["%*Expected at least %* %*, got %*"]
      283 MOVE                             R14 R3
      284 MOVE                             R15 R7
      285 MOVE                             R16 R9
      286 MOVE                             R17 R6
      287 NAMECALL                         R12 R12 K4 ["format"]
      289 CALL                             R12 5 1
      290 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      292 MOVE                             R11 R2
      293 GETIMPORT                        R10 K7 [table.insert]
      295 CALL                             R10 2 0
      296 JUMPIFEQKNIL                     R8 ; [+17]
      298 JUMPIFNOTLT                      R8 R6 ; [+15]
      300 LOADK                            R12 K46 ["%*Expected at most %* %*, got %*"]
      301 MOVE                             R14 R3
      302 MOVE                             R15 R8
      303 MOVE                             R16 R9
      304 MOVE                             R17 R6
      305 NAMECALL                         R12 R12 K4 ["format"]
      307 CALL                             R12 5 1
      308 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      310 MOVE                             R11 R2
      311 GETIMPORT                        R10 K7 [table.insert]
      313 CALL                             R10 2 0
      314 GETTABLEKS                       R10 R0 K47 ["uniqueItems"]
      316 JUMPIFNOTEQKB                    R10 TRUE ; [+38]
      318 JUMPIFNOT                        R5 ; [+36]
      319 NEWTABLE                         R10 0 0
      321 MOVE                             R11 R1
      322 LOADNIL                          R12
      323 LOADNIL                          R13
      324 FORGPREP                         R11
      325 FASTCALL1                        TYPE R15 ; [+3]
      326 MOVE                             R17 R15
      327 GETIMPORT                        R16 K49 [type]
      329 CALL                             R16 1 1
      330 JUMPIFEQKS                       R16 K5 ["table"] ; [+18]
      332 JUMPIFNOTEQ                      R15 R15 ; [+16]
      334 GETTABLE                         R16 R10 R15
      335 JUMPIFNOT                        R16 ; [+13]
      336 LOADK                            R18 K50 ["%*Expected unique items, got %* twice"]
      337 MOVE                             R20 R3
      338 MOVE                             R21 R15
      339 NAMECALL                         R18 R18 K4 ["format"]
      341 CALL                             R18 3 1
      342 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      344 MOVE                             R17 R2
      345 GETIMPORT                        R16 K7 [table.insert]
      347 CALL                             R16 2 0
      348 RETURN                           R0 0
      349 JUMPIFNOTEQ                      R15 R15 ; [+3]
      351 LOADB                            R16 1
      352 SETTABLE                         R16 R10 R15
      353 FORGLOOP                         R11 2 ; [-29]
      355 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R3 4 0
        6 GETUPVAL                         R3 2
        7 JUMPIFEQKNIL                     R3 ; [+6]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R3 R0 K0 ["validate"]
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["validate"]
        6 JUMP                             ; [+8]
        7 GETTABLEKS                       R3 R0 K1 ["scalar"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+3]
       11 LOADNIL                          R2
       12 JUMP                             ; [+2]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R3
       15 GETIMPORT                        R3 K4 [table.clone]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K0 ["validate"]
       25 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 0
        7 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["knownKeys"]
        9 LOADB                            R3 0
       10 JUMPIFEQKNIL                     R2 ; [+6]
       12 GETTABLE                         R4 R2 R1
       13 JUMPIFEQKB                       R4 TRUE ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+4]
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 SETUPVAL                         R4 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["validate"]
        9 JUMPIFEQKNIL                     R3 ; [+6]
       11 MOVE                             R4 R3
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+4]
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 SETUPVAL                         R4 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["fromResponse"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["toRequest"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_51:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 DUPTABLE                         R3 K4 [{"knownKeys", "validate", "fromResponse", "toRequest"}]
        5 NEWTABLE                         R5 0 0
        7 DUPTABLE                         R6 K6 [{"__index"}]
        8 NEWCLOSURE                       R7 P1
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R7 R6 K5 ["__index"]
       13 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       15 GETIMPORT                        R4 K8 [setmetatable]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K0 ["knownKeys"]
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K1 ["validate"]
       25 NEWCLOSURE                       R4 P3
       26 CAPTURE                          REF R1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R3 K2 ["fromResponse"]
       30 NEWCLOSURE                       R4 P4
       31 CAPTURE                          REF R1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R3 K3 ["toRequest"]
       35 CLOSEUPVALS                      R1
       36 RETURN                           R3 1

PROTO_52:
        0 GETTABLEKS                       R2 R0 K0 ["knownKeys"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K3 ["table"] ; [+3]
       11 LOADN                            R3 0
       12 RETURN                           R3 1
       13 LOADN                            R3 0
       14 MOVE                             R4 R1
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLE                         R9 R2 R7
       19 JUMPIFNOT                        R9 ; [+1]
       20 ADDK                             R3 R3 K4 [1]
       21 FORGLOOP                         R4 1 ; [-4]
       23 RETURN                           R3 1

PROTO_53:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADN                            R3 -1
        3 GETUPVAL                         R4 0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEN                        R9 R8 2
        8 GETUPVAL                         R11 1
        9 GETTABLE                         R10 R11 R9
       10 LOADB                            R11 0
       11 JUMPIFNOTEQKNIL                  R10 ; [+3]
       13 OR                               R1 R1 R9
       14 JUMP                             ; [+15]
       15 NEWTABLE                         R12 0 0
       17 MOVE                             R13 R10
       18 MOVE                             R14 R0
       19 MOVE                             R15 R12
       20 LOADK                            R16 K0 [""]
       21 CALL                             R13 3 0
       22 LENGTH                           R13 R12
       23 LOADN                            R14 0
       24 JUMPIFLT                         R14 R13 ; [+41]
       26 GETUPVAL                         R13 2
       27 JUMPIF                           R13 ; [+1]
       28 RETURN                           R9 1
       29 LOADB                            R11 1
       30 GETUPVAL                         R12 2
       31 JUMPIFNOT                        R12 ; [+34]
       32 GETTABLEKS                       R15 R9 K2 ["knownKeys"]
       34 JUMPIFEQKNIL                     R15 ; [+8]
       36 FASTCALL1                        TYPEOF R0 ; [+3]
       37 MOVE                             R17 R0
       38 GETIMPORT                        R16 K4 [typeof]
       40 CALL                             R16 1 1
       41 JUMPIFEQKS                       R16 K5 ["table"] ; [+3]
       43 LOADN                            R14 0
       44 JUMP                             ; [+11]
       45 LOADN                            R16 0
       46 MOVE                             R17 R0
       47 LOADNIL                          R18
       48 LOADNIL                          R19
       49 FORGPREP                         R17
       50 GETTABLE                         R22 R15 R20
       51 JUMPIFNOT                        R22 ; [+1]
       52 ADDK                             R16 R16 K6 [1]
       53 FORGLOOP                         R17 1 ; [-4]
       55 MOVE                             R14 R16
       56 MULK                             R13 R14 K1 [2]
       57 JUMPIFNOT                        R11 ; [+2]
       58 LOADN                            R14 1
       59 JUMP                             ; [+1]
       60 LOADN                            R14 0
       61 ADD                              R12 R13 R14
       62 JUMPIFNOTLT                      R3 R12 ; [+3]
       64 MOVE                             R2 R9
       65 MOVE                             R3 R12
       66 FORGLOOP                         R4 2 ; [-60]
       68 OR                               R4 R2 R1
       69 RETURN                           R4 1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+54]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+4]
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R0 R4
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFEQKNIL                     R3 ; [+12]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R7 2
       18 JUMPIFEQKNIL                     R7 ; [+5]
       20 GETUPVAL                         R8 2
       21 GETTABLE                         R7 R8 R3
       22 OR                               R6 R7 R3
       23 JUMP                             ; [+1]
       24 MOVE                             R6 R3
       25 GETTABLE                         R4 R5 R6
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOTEQKNIL                  R4 ; [+16]
       30 LOADK                            R7 K3 ["%*Unexpected %* %*, expected one of: %*"]
       31 MOVE                             R9 R2
       32 GETUPVAL                         R10 0
       33 MOVE                             R11 R3
       34 GETUPVAL                         R12 3
       35 NAMECALL                         R7 R7 K4 ["format"]
       37 CALL                             R7 5 1
       38 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       40 MOVE                             R6 R1
       41 GETIMPORT                        R5 K6 [table.insert]
       43 CALL                             R5 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R6 4
       46 GETTABLE                         R5 R6 R4
       47 JUMPIFEQKNIL                     R5 ; [+7]
       49 GETUPVAL                         R6 4
       50 GETTABLE                         R5 R6 R4
       51 MOVE                             R6 R0
       52 MOVE                             R7 R1
       53 MOVE                             R8 R2
       54 CALL                             R5 3 0
       55 RETURN                           R0 0
       56 LOADNIL                          R3
       57 GETUPVAL                         R4 5
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 FORGPREP                         R4
       61 NEWTABLE                         R9 0 0
       63 GETUPVAL                         R11 4
       64 GETTABLEN                        R12 R8 2
       65 GETTABLE                         R10 R11 R12
       66 JUMPIFEQKNIL                     R10 ; [+6]
       68 MOVE                             R11 R10
       69 MOVE                             R12 R0
       70 MOVE                             R13 R9
       71 MOVE                             R14 R2
       72 CALL                             R11 3 0
       73 LENGTH                           R11 R9
       74 JUMPIFNOTEQKN                    R11 K7 [0] ; [+2]
       76 RETURN                           R0 0
       77 OR                               R3 R3 R9
       78 FORGLOOP                         R4 2 ; [-18]
       80 JUMPIFEQKNIL                     R3 ; [+14]
       82 MOVE                             R4 R3
       83 LOADNIL                          R5
       84 LOADNIL                          R6
       85 FORGPREP                         R4
       86 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       88 MOVE                             R10 R1
       89 MOVE                             R11 R8
       90 GETIMPORT                        R9 K6 [table.insert]
       92 CALL                             R9 2 0
       93 FORGLOOP                         R4 2 ; [-8]
       95 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+50]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+4]
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R0 R4
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFEQKNIL                     R3 ; [+12]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R7 2
       18 JUMPIFEQKNIL                     R7 ; [+5]
       20 GETUPVAL                         R8 2
       21 GETTABLE                         R7 R8 R3
       22 OR                               R6 R7 R3
       23 JUMP                             ; [+1]
       24 MOVE                             R6 R3
       25 GETTABLE                         R4 R5 R6
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOTEQKNIL                  R4 ; [+16]
       30 LOADK                            R7 K3 ["%*Unexpected %* %*, expected one of: %*"]
       31 MOVE                             R9 R2
       32 GETUPVAL                         R10 0
       33 MOVE                             R11 R3
       34 GETUPVAL                         R12 3
       35 NAMECALL                         R7 R7 K4 ["format"]
       37 CALL                             R7 5 1
       38 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       40 MOVE                             R6 R1
       41 GETIMPORT                        R5 K6 [table.insert]
       43 CALL                             R5 2 0
       44 RETURN                           R0 1
       45 GETTABLEKS                       R5 R4 K7 ["fromResponse"]
       47 MOVE                             R6 R0
       48 MOVE                             R7 R1
       49 MOVE                             R8 R2
       50 CALL                             R5 3 -1
       51 RETURN                           R5 -1
       52 LOADNIL                          R3
       53 LOADB                            R4 0
       54 LOADN                            R5 -1
       55 GETUPVAL                         R6 4
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 NEWTABLE                         R11 0 0
       61 GETTABLEN                        R12 R10 2
       62 GETTABLEKS                       R12 R12 K7 ["fromResponse"]
       64 GETUPVAL                         R13 5
       65 MOVE                             R14 R0
       66 CALL                             R13 1 1
       67 MOVE                             R14 R11
       68 MOVE                             R15 R2
       69 CALL                             R12 3 1
       70 LENGTH                           R13 R11
       71 JUMPIFNOTEQKN                    R13 K8 [0] ; [+41]
       73 GETUPVAL                         R13 6
       74 JUMPIFNOT                        R13 ; [+7]
       75 FASTCALL1                        TYPEOF R0 ; [+3]
       76 MOVE                             R14 R0
       77 GETIMPORT                        R13 K1 [typeof]
       79 CALL                             R13 1 1
       80 JUMPIFEQKS                       R13 K2 ["table"] ; [+2]
       82 RETURN                           R12 1
       83 GETTABLEN                        R14 R10 2
       84 GETTABLEKS                       R15 R14 K9 ["knownKeys"]
       86 JUMPIFEQKNIL                     R15 ; [+8]
       88 FASTCALL1                        TYPEOF R0 ; [+3]
       89 MOVE                             R17 R0
       90 GETIMPORT                        R16 K1 [typeof]
       92 CALL                             R16 1 1
       93 JUMPIFEQKS                       R16 K2 ["table"] ; [+3]
       95 LOADN                            R13 0
       96 JUMP                             ; [+11]
       97 LOADN                            R16 0
       98 MOVE                             R17 R0
       99 LOADNIL                          R18
      100 LOADNIL                          R19
      101 FORGPREP                         R17
      102 GETTABLE                         R22 R15 R20
      103 JUMPIFNOT                        R22 ; [+1]
      104 ADDK                             R16 R16 K10 [1]
      105 FORGLOOP                         R17 1 ; [-4]
      107 MOVE                             R13 R16
      108 JUMPIFNOTLT                      R5 R13 ; [+4]
      110 MOVE                             R3 R12
      111 LOADB                            R4 1
      112 MOVE                             R5 R13
      113 FORGLOOP                         R6 2 ; [-55]
      115 JUMPIFNOT                        R4 ; [+1]
      116 RETURN                           R3 1
      117 LOADK                            R8 K11 ["%*Expected one of: %*, got %*"]
      118 MOVE                             R10 R2
      119 GETUPVAL                         R11 3
      120 FASTCALL1                        TYPEOF R0 ; [+3]
      121 MOVE                             R13 R0
      122 GETIMPORT                        R12 K1 [typeof]
      124 CALL                             R12 1 1
      125 NAMECALL                         R8 R8 K4 ["format"]
      127 CALL                             R8 4 1
      128 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      130 MOVE                             R7 R1
      131 GETIMPORT                        R6 K6 [table.insert]
      133 CALL                             R6 2 0
      134 RETURN                           R0 1

PROTO_56:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+19]
        7 GETUPVAL                         R1 0
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 1
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIFEQKNIL                     R1 ; [+6]
       18 GETTABLEKS                       R2 R1 K3 ["toRequest"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 RETURN                           R2 1
       23 MOVE                             R2 R0
       24 RETURN                           R2 1
       25 GETUPVAL                         R1 0
       26 JUMPIFNOTEQKNIL                  R1 ; [+36]
       28 GETIMPORT                        R1 K5 [next]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 JUMPIFEQKNIL                     R1 ; [+13]
       34 GETUPVAL                         R1 1
       35 MOVE                             R2 R0
       36 CALL                             R1 1 1
       37 JUMPIFEQKNIL                     R1 ; [+6]
       39 GETTABLEKS                       R2 R1 K3 ["toRequest"]
       41 MOVE                             R3 R0
       42 CALL                             R2 1 1
       43 RETURN                           R2 1
       44 MOVE                             R2 R0
       45 RETURN                           R2 1
       46 GETUPVAL                         R1 2
       47 LOADNIL                          R2
       48 LOADNIL                          R3
       49 FORGPREP                         R1
       50 GETTABLEN                        R6 R5 2
       51 GETTABLEKS                       R6 R6 K3 ["toRequest"]
       53 MOVE                             R7 R0
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 3
       56 JUMPIFNOTEQ                      R6 R7 ; [+3]
       58 GETUPVAL                         R6 3
       59 RETURN                           R6 1
       60 FORGLOOP                         R1 2 ; [-11]
       62 RETURN                           R0 1
       63 GETUPVAL                         R2 0
       64 GETTABLE                         R1 R0 R2
       65 JUMPIFEQKNIL                     R1 ; [+12]
       67 GETUPVAL                         R3 4
       68 GETUPVAL                         R5 5
       69 JUMPIFEQKNIL                     R5 ; [+5]
       71 GETUPVAL                         R6 5
       72 GETTABLE                         R5 R6 R1
       73 OR                               R4 R5 R1
       74 JUMP                             ; [+1]
       75 MOVE                             R4 R1
       76 GETTABLE                         R2 R3 R4
       77 JUMP                             ; [+1]
       78 LOADNIL                          R2
       79 JUMPIFEQKNIL                     R2 ; [+6]
       81 GETTABLEKS                       R3 R2 K3 ["toRequest"]
       83 MOVE                             R4 R0
       84 CALL                             R3 1 1
       85 RETURN                           R3 1
       86 MOVE                             R3 R0
       87 RETURN                           R3 1

PROTO_57:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 MOVE                             R6 R0
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETTABLEN                        R13 R10 1
       11 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       13 MOVE                             R12 R3
       14 GETIMPORT                        R11 K2 [table.insert]
       16 CALL                             R11 2 0
       17 GETTABLEN                        R11 R10 1
       18 GETTABLEN                        R12 R10 2
       19 SETTABLE                         R12 R4 R11
       20 GETTABLEN                        R12 R10 2
       21 GETTABLEKS                       R13 R12 K3 ["validate"]
       23 JUMPIFEQKNIL                     R13 ; [+4]
       25 GETTABLEKS                       R11 R12 K3 ["validate"]
       27 JUMP                             ; [+8]
       28 GETTABLEKS                       R13 R12 K4 ["scalar"]
       30 JUMPIFNOTEQKNIL                  R13 ; [+3]
       32 LOADNIL                          R11
       33 JUMP                             ; [+2]
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          VAL R13
       36 JUMPIFEQKNIL                     R11 ; [+3]
       38 GETTABLEN                        R12 R10 2
       39 SETTABLE                         R11 R5 R12
       40 FORGLOOP                         R6 2 ; [-31]
       42 GETIMPORT                        R6 K6 [table.concat]
       44 MOVE                             R7 R3
       45 LOADK                            R8 K7 [", "]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R8 K9 [next]
       49 MOVE                             R9 R5
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKNIL                  R8 ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 LOADB                            R8 0
       56 MOVE                             R9 R0
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 MOVE                             R14 R8
       61 JUMPIF                           R14 ; [+7]
       62 GETTABLEN                        R15 R13 2
       63 GETTABLEKS                       R15 R15 K10 ["knownKeys"]
       65 JUMPIFNOTEQKNIL                  R15 ; [+2]
       67 LOADB                            R14 0 +1
       68 LOADB                            R14 1
       69 MOVE                             R8 R14
       70 FORGLOOP                         R9 2 ; [-11]
       72 DUPCLOSURE                       R9 K11 [PROTO_52]
       73 NEWCLOSURE                       R10 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R5
       76 CAPTURE                          REF R8
       77 DUPTABLE                         R11 K14 [{"validate", "fromResponse", "toRequest"}]
       78 JUMPIFNOT                        R7 ; [+8]
       79 NEWCLOSURE                       R12 P3
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R0
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 SETTABLEKS                       R12 R11 K3 ["validate"]
       90 NEWCLOSURE                       R12 P4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          REF R8
       98 SETTABLEKS                       R12 R11 K12 ["fromResponse"]
      100 NEWCLOSURE                       R12 P5
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R12 R11 K13 ["toRequest"]
      109 CLOSEUPVALS                      R8
      110 RETURN                           R11 1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_59:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

PROTO_60:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

PROTO_61:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADNIL                          R4
        3 MOVE                             R5 R1
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["./Types"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K1 [require]
        7 LOADK                            R2 K3 ["./deepClone"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K1 [require]
       11 LOADK                            R3 K4 ["./emptyObject"]
       12 CALL                             R2 1 1
       13 DUPCLOSURE                       R3 K5 [PROTO_1]
       14 NEWTABLE                         R4 32 0
       16 DUPCLOSURE                       R5 K6 [PROTO_4]
       17 MOVE                             R6 R5
       18 LOADK                            R7 K7 ["string"]
       19 CALL                             R6 1 1
       20 SETTABLEKS                       R6 R4 K8 ["String"]
       22 MOVE                             R6 R5
       23 LOADK                            R7 K9 ["number"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R4 K10 ["Number"]
       27 MOVE                             R6 R5
       28 LOADK                            R7 K11 ["boolean"]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R4 K12 ["Boolean"]
       32 MOVE                             R6 R5
       33 LOADK                            R7 K9 ["number"]
       34 DUPCLOSURE                       R8 K13 [PROTO_5]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R4 K14 ["Integer"]
       38 MOVE                             R6 R5
       39 LOADK                            R7 K9 ["number"]
       40 DUPCLOSURE                       R8 K15 [PROTO_6]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R4 K16 ["Int32"]
       44 DUPTABLE                         R6 K21 [{["identity"] = True, ["fromResponse"], ["toRequest"]}]
       45 DUPCLOSURE                       R7 K22 [PROTO_7]
       46 SETTABLEKS                       R7 R6 K19 ["fromResponse"]
       48 DUPCLOSURE                       R7 K23 [PROTO_8]
       49 SETTABLEKS                       R7 R6 K20 ["toRequest"]
       51 SETTABLEKS                       R6 R4 K24 ["Any"]
       53 DUPCLOSURE                       R6 K25 [PROTO_12]
       54 SETTABLEKS                       R6 R4 K26 ["optional"]
       56 DUPCLOSURE                       R6 K27 [PROTO_16]
       57 CAPTURE                          VAL R2
       58 DUPCLOSURE                       R7 K28 [PROTO_18]
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R7 R4 K29 ["arrayOf"]
       62 DUPCLOSURE                       R7 K30 [PROTO_20]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R7 R4 K31 ["dictOf"]
       66 GETTABLEKS                       R7 R4 K29 ["arrayOf"]
       68 GETTABLEKS                       R8 R4 K24 ["Any"]
       70 CALL                             R7 1 1
       71 SETTABLEKS                       R7 R4 K32 ["Array"]
       73 GETTABLEKS                       R7 R4 K31 ["dictOf"]
       75 GETTABLEKS                       R8 R4 K24 ["Any"]
       77 CALL                             R7 1 1
       78 SETTABLEKS                       R7 R4 K33 ["Dict"]
       80 DUPCLOSURE                       R7 K34 [PROTO_21]
       81 DUPCLOSURE                       R8 K35 [PROTO_25]
       82 CAPTURE                          VAL R2
       83 DUPCLOSURE                       R9 K36 [PROTO_26]
       84 DUPCLOSURE                       R10 K37 [PROTO_27]
       85 DUPCLOSURE                       R11 K38 [PROTO_31]
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R12 K39 [PROTO_35]
       88 CAPTURE                          VAL R9
       89 DUPCLOSURE                       R13 K40 [PROTO_36]
       90 NEWTABLE                         R14 0 12
       92 LOADN                            R15 31
       93 LOADN                            R16 28
       94 LOADN                            R17 31
       95 LOADN                            R18 30
       96 LOADN                            R19 31
       97 LOADN                            R20 30
       98 LOADN                            R21 31
       99 LOADN                            R22 31
      100 LOADN                            R23 30
      101 LOADN                            R24 31
      102 LOADN                            R25 30
      103 LOADN                            R26 31
      104 SETLIST                          R14 R15 12 [1]
      106 DUPCLOSURE                       R15 K41 [PROTO_37]
      107 CAPTURE                          VAL R14
      108 DUPCLOSURE                       R16 K42 [PROTO_38]
      109 DUPCLOSURE                       R17 K43 [PROTO_39]
      110 CAPTURE                          VAL R15
      111 NEWTABLE                         R18 4 0
      113 DUPCLOSURE                       R19 K44 [PROTO_40]
      114 SETTABLEKS                       R19 R18 K45 ["uuid"]
      116 SETTABLEKS                       R15 R18 K46 ["date"]
      118 SETTABLEKS                       R17 R18 K47 ["date-time"]
      120 DUPCLOSURE                       R19 K48 [PROTO_41]
      121 DUPCLOSURE                       R20 K49 [PROTO_42]
      122 DUPCLOSURE                       R21 K50 [PROTO_43]
      123 CAPTURE                          VAL R18
      124 DUPCLOSURE                       R22 K51 [PROTO_45]
      125 CAPTURE                          VAL R21
      126 SETTABLEKS                       R22 R4 K52 ["constrain"]
      128 DUPCLOSURE                       R22 K53 [PROTO_51]
      129 SETTABLEKS                       R22 R4 K54 ["lazy"]
      131 DUPCLOSURE                       R22 K55 [PROTO_57]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R2
      134 DUPCLOSURE                       R23 K56 [PROTO_58]
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R23 R4 K57 ["object"]
      138 DUPCLOSURE                       R23 K58 [PROTO_59]
      139 CAPTURE                          VAL R22
      140 SETTABLEKS                       R23 R4 K59 ["oneOf"]
      142 DUPCLOSURE                       R23 K60 [PROTO_60]
      143 CAPTURE                          VAL R11
      144 SETTABLEKS                       R23 R4 K61 ["enumOf"]
      146 DUPCLOSURE                       R23 K62 [PROTO_61]
      147 CAPTURE                          VAL R12
      148 SETTABLEKS                       R23 R4 K63 ["mappedEnum"]
      150 DUPCLOSURE                       R23 K64 [PROTO_62]
      151 CAPTURE                          VAL R11
      152 SETTABLEKS                       R23 R4 K65 ["numberEnum"]
      154 RETURN                           R4 1
