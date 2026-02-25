PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+4]
        2 DUPTABLE                         R2 K1 [{"depth"}]
        3 LOADN                            R3 2
        4 SETTABLEKS                       R3 R2 K0 ["depth"]
        6 GETTABLEKS                       R4 R2 K0 ["depth"]
        8 ORK                              R3 R4 K2 [2]
        9 LOADN                            R5 0
       10 JUMPIFNOTLE                      R5 R3 ; [+3]
       12 MOVE                             R4 R3
       13 JUMP                             ; [+1]
       14 LOADN                            R4 2
       15 SETTABLEKS                       R4 R2 K0 ["depth"]
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R0
       19 NEWTABLE                         R6 0 0
       21 MOVE                             R7 R2
       22 CALL                             R4 3 -1
       23 RETURN                           R4 -1

PROTO_1:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+17]
        8 LOADB                            R2 0
        9 JUMPIFNOTLE                      R0 R1 ; [+14]
       11 LOADB                            R2 0
       12 LOADN                            R3 1
       13 JUMPIFNOTLE                      R3 R0 ; [+10]
       15 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K5 [math.floor]
       19 CALL                             R3 1 1
       20 JUMPIFEQ                         R3 R0 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R1 1
        1 FASTCALL2                        RAWGET R0 R1 ; [+5]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K1 [rawget]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+11]
       10 ADDK                             R1 R1 K2 [1]
       11 FASTCALL2                        RAWGET R0 R1 ; [+5]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K1 [rawget]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 JUMPBACK                         ; [-12]
       20 SUBK                             R3 R1 K2 [1]
       21 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K1 [type]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 JUMPIFEQKS                       R2 K2 ["number"] ; [+3]
       14 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+6]
       16 JUMPIFLT                         R0 R1 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 JUMPIFLT                         R2 R3 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 RETURN                           R4 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 RETURN                           R1 3

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LOADN                            R4 1
        4 FASTCALL2                        RAWGET R0 R4 ; [+5]
        6 MOVE                             R6 R0
        7 MOVE                             R7 R4
        8 GETIMPORT                        R5 K1 [rawget]
       10 CALL                             R5 2 1
       11 JUMPIFEQKNIL                     R5 ; [+11]
       13 ADDK                             R4 R4 K2 [1]
       14 FASTCALL2                        RAWGET R0 R4 ; [+5]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R4
       18 GETIMPORT                        R6 K1 [rawget]
       20 CALL                             R6 2 1
       21 MOVE                             R5 R6
       22 JUMPBACK                         ; [-12]
       23 SUBK                             R3 R4 K2 [1]
       24 GETIMPORT                        R4 K4 [next]
       26 MOVE                             R5 R0
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 LOADB                            R9 0
       30 FASTCALL1                        TYPE R7 ; [+3]
       31 MOVE                             R11 R7
       32 GETIMPORT                        R10 K6 [type]
       34 CALL                             R10 1 1
       35 JUMPIFNOTEQKS                    R10 K7 ["number"] ; [+17]
       37 LOADB                            R9 0
       38 JUMPIFNOTLE                      R7 R3 ; [+14]
       40 LOADB                            R9 0
       41 LOADN                            R10 1
       42 JUMPIFNOTLE                      R10 R7 ; [+10]
       44 FASTCALL1                        MATH_FLOOR R7 ; [+3]
       45 MOVE                             R11 R7
       46 GETIMPORT                        R10 K10 [math.floor]
       48 CALL                             R10 1 1
       49 JUMPIFEQ                         R10 R7 ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 JUMPIF                           R9 ; [+2]
       54 ADDK                             R2 R2 K2 [1]
       55 SETTABLE                         R7 R1 R2
       56 FORGLOOP                         R4 2 ; [-28]
       58 GETIMPORT                        R4 K13 [table.sort]
       60 MOVE                             R5 R1
       61 GETUPVAL                         R6 0
       62 CALL                             R4 2 0
       63 RETURN                           R1 3

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+7]
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K3 ["JSONEncode"]
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1
       13 JUMPIFNOTEQKS                    R3 K4 ["number"] ; [+19]
       15 JUMPIFEQ                         R0 R0 ; [+3]
       17 LOADK                            R4 K5 ["NaN"]
       18 RETURN                           R4 1
       19 JUMPIFNOTEQKN                    R0 K6 [∞] ; [+3]
       21 LOADK                            R4 K7 ["Infinity"]
       22 RETURN                           R4 1
       23 JUMPIFNOTEQKN                    R0 K8 [-∞] ; [+3]
       25 LOADK                            R4 K9 ["-Infinity"]
       26 RETURN                           R4 1
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R5 R0
       29 GETIMPORT                        R4 K11 [tostring]
       31 CALL                             R4 1 1
       32 RETURN                           R4 1
       33 JUMPIFNOTEQKS                    R3 K12 ["function"] ; [+19]
       35 LOADK                            R4 K13 ["[function"]
       36 GETIMPORT                        R5 K16 [debug.info]
       38 MOVE                             R6 R0
       39 LOADK                            R7 K17 ["n"]
       40 CALL                             R5 2 1
       41 JUMPIFEQKNIL                     R5 ; [+7]
       43 JUMPIFEQKS                       R5 K18 [""] ; [+5]
       45 MOVE                             R6 R4
       46 LOADK                            R7 K19 [" "]
       47 MOVE                             R8 R5
       48 CONCAT                           R4 R6 R8
       49 MOVE                             R7 R4
       50 LOADK                            R8 K20 ["]"]
       51 CONCAT                           R6 R7 R8
       52 RETURN                           R6 1
       53 JUMPIFNOTEQKS                    R3 K21 ["table"] ; [+7]
       55 GETUPVAL                         R4 1
       56 MOVE                             R5 R0
       57 MOVE                             R6 R1
       58 MOVE                             R7 R2
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1
       61 FASTCALL1                        TOSTRING R0 ; [+3]
       62 MOVE                             R5 R0
       63 GETIMPORT                        R4 K11 [tostring]
       65 CALL                             R4 1 1
       66 RETURN                           R4 1

PROTO_7:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 JUMPIFEQKNIL                     R3 ; [+3]
        7 LOADK                            R3 K3 ["[Circular]"]
        8 RETURN                           R3 1
        9 NEWTABLE                         R3 0 1
       11 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K5 [unpack]
       15 CALL                             R4 1 -1
       16 SETLIST                          R3 R4 -1 [1]
       18 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       20 MOVE                             R5 R3
       21 MOVE                             R6 R0
       22 GETIMPORT                        R4 K7 [table.insert]
       24 CALL                             R4 2 0
       25 GETTABLEKS                       R5 R0 K8 ["toJSON"]
       27 FASTCALL1                        TYPEOF R5 ; [+2]
       28 GETIMPORT                        R4 K10 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K11 ["function"] ; [+22]
       33 MOVE                             R6 R0
       34 NAMECALL                         R4 R0 K8 ["toJSON"]
       36 CALL                             R4 2 1
       37 JUMPIFEQ                         R4 R0 ; [+26]
       39 FASTCALL1                        TYPEOF R4 ; [+3]
       40 MOVE                             R6 R4
       41 GETIMPORT                        R5 K10 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFNOTEQKS                    R5 K12 ["string"] ; [+2]
       46 RETURN                           R4 1
       47 GETUPVAL                         R5 0
       48 MOVE                             R6 R4
       49 MOVE                             R7 R3
       50 MOVE                             R8 R2
       51 CALL                             R5 3 -1
       52 RETURN                           R5 -1
       53 JUMP                             ; [+10]
       54 GETUPVAL                         R4 1
       55 MOVE                             R5 R0
       56 CALL                             R4 1 1
       57 JUMPIFNOT                        R4 ; [+6]
       58 GETUPVAL                         R4 2
       59 MOVE                             R5 R0
       60 MOVE                             R6 R3
       61 MOVE                             R7 R2
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1
       64 GETUPVAL                         R4 3
       65 MOVE                             R5 R0
       66 MOVE                             R6 R3
       67 MOVE                             R7 R2
       68 CALL                             R4 3 -1
       69 RETURN                           R4 -1

PROTO_8:
        0 LOADK                            R3 K0 [""]
        1 FASTCALL1                        GETMETATABLE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K2 [getmetatable]
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+14]
        7 FASTCALL2K                       RAWGET R4 K3 ; [+5]
        9 MOVE                             R6 R4
       10 LOADK                            R7 K3 ["__tostring"]
       11 GETIMPORT                        R5 K5 [rawget]
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R5 ; [+6]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K7 [tostring]
       19 CALL                             R5 1 1
       20 RETURN                           R5 1
       21 GETUPVAL                         R5 0
       22 MOVE                             R6 R0
       23 CALL                             R5 1 3
       24 JUMPIFNOTEQKN                    R7 K8 [0] ; [+7]
       26 JUMPIFNOTEQKN                    R6 K8 [0] ; [+5]
       28 MOVE                             R8 R3
       29 LOADK                            R9 K9 ["{}"]
       30 CONCAT                           R3 R8 R9
       31 RETURN                           R3 1
       32 LENGTH                           R8 R1
       33 GETTABLEKS                       R9 R2 K10 ["depth"]
       35 JUMPIFNOTLT                      R9 R8 ; [+10]
       37 MOVE                             R8 R3
       38 LOADK                            R9 K11 ["["]
       39 GETUPVAL                         R12 1
       40 MOVE                             R13 R0
       41 CALL                             R12 1 1
       42 MOVE                             R10 R12
       43 LOADK                            R11 K12 ["]"]
       44 CONCAT                           R3 R8 R11
       45 RETURN                           R3 1
       46 NEWTABLE                         R8 0 0
       48 LOADN                            R11 1
       49 MOVE                             R9 R7
       50 LOADN                            R10 1
       51 FORNPREP                         R9
       52 GETUPVAL                         R12 2
       53 GETTABLE                         R13 R0 R11
       54 MOVE                             R14 R1
       55 MOVE                             R15 R2
       56 CALL                             R12 3 1
       57 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
       59 MOVE                             R14 R8
       60 MOVE                             R15 R12
       61 GETIMPORT                        R13 K15 [table.insert]
       63 CALL                             R13 2 0
       64 FORNLOOP                         R9
       65 LOADN                            R11 1
       66 MOVE                             R9 R6
       67 LOADN                            R10 1
       68 FORNPREP                         R9
       69 GETTABLE                         R12 R5 R11
       70 GETUPVAL                         R13 2
       71 GETTABLE                         R14 R0 R12
       72 MOVE                             R15 R1
       73 MOVE                             R16 R2
       74 CALL                             R13 3 1
       75 MOVE                             R17 R12
       76 LOADK                            R18 K16 [": "]
       77 MOVE                             R19 R13
       78 CONCAT                           R16 R17 R19
       79 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       81 MOVE                             R15 R8
       82 GETIMPORT                        R14 K15 [table.insert]
       84 CALL                             R14 2 0
       85 FORNLOOP                         R9
       86 MOVE                             R9 R3
       87 LOADK                            R10 K17 ["{ "]
       88 GETIMPORT                        R13 K19 [table.concat]
       90 MOVE                             R14 R8
       91 LOADK                            R15 K20 [", "]
       92 CALL                             R13 2 1
       93 MOVE                             R11 R13
       94 LOADK                            R12 K21 [" }"]
       95 CONCAT                           R3 R9 R12
       96 RETURN                           R3 1

PROTO_9:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        3 LOADK                            R4 K1 ["[]"]
        4 RETURN                           R4 1
        5 LENGTH                           R4 R1
        6 GETTABLEKS                       R5 R2 K2 ["depth"]
        8 JUMPIFNOTLT                      R5 R4 ; [+3]
       10 LOADK                            R4 K3 ["[Array]"]
       11 RETURN                           R4 1
       12 LOADN                            R5 10
       13 FASTCALL2                        MATH_MIN R5 R3 ; [+4]
       15 MOVE                             R6 R3
       16 GETIMPORT                        R4 K6 [math.min]
       18 CALL                             R4 2 1
       19 SUB                              R5 R3 R4
       20 NEWTABLE                         R6 0 0
       22 LOADN                            R9 1
       23 MOVE                             R7 R4
       24 LOADN                            R8 1
       25 FORNPREP                         R7
       26 GETUPVAL                         R10 0
       27 GETTABLE                         R11 R0 R9
       28 MOVE                             R12 R1
       29 MOVE                             R13 R2
       30 CALL                             R10 3 1
       31 SETTABLE                         R10 R6 R9
       32 FORNLOOP                         R7
       33 JUMPIFNOTEQKN                    R5 K7 [1] ; [+9]
       35 FASTCALL2K                       TABLE_INSERT R6 K8 ; [+5]
       37 MOVE                             R8 R6
       38 LOADK                            R9 K8 ["... 1 more item"]
       39 GETIMPORT                        R7 K11 [table.insert]
       41 CALL                             R7 2 0
       42 JUMP                             ; [+17]
       43 LOADN                            R7 1
       44 JUMPIFNOTLT                      R7 R5 ; [+15]
       46 MOVE                             R8 R6
       47 LOADK                            R9 K12 ["... %s more items"]
       48 FASTCALL1                        TOSTRING R5 ; [+3]
       49 MOVE                             R12 R5
       50 GETIMPORT                        R11 K14 [tostring]
       52 CALL                             R11 1 1
       53 NAMECALL                         R9 R9 K15 ["format"]
       55 CALL                             R9 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R7 K11 [table.insert]
       59 CALL                             R7 -1 0
       60 LOADK                            R8 K16 ["["]
       61 GETIMPORT                        R11 K18 [table.concat]
       63 MOVE                             R12 R6
       64 LOADK                            R13 K19 [", "]
       65 CALL                             R11 2 1
       66 MOVE                             R9 R11
       67 LOADK                            R10 K20 ["]"]
       68 CONCAT                           R7 R8 R10
       69 RETURN                           R7 1

PROTO_10:
        0 LOADK                            R1 K0 ["Object"]
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETIMPORT                        R3 K8 [require]
       15 GETTABLEKS                       R5 R1 K9 ["Array"]
       17 GETTABLEKS                       R4 R5 K10 ["isArray"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R2 K11 ["ES7Types"]
       24 CALL                             R4 1 1
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          REF R5
       32 DUPCLOSURE                       R11 K12 [PROTO_1]
       33 DUPCLOSURE                       R12 K13 [PROTO_2]
       34 DUPCLOSURE                       R13 K14 [PROTO_3]
       35 DUPCLOSURE                       R14 K15 [PROTO_4]
       36 DUPCLOSURE                       R15 K16 [PROTO_5]
       37 CAPTURE                          VAL R13
       38 NEWCLOSURE                       R5 P6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          REF R6
       41 NEWCLOSURE                       R6 P7
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          REF R7
       45 CAPTURE                          REF R8
       46 NEWCLOSURE                       R8 P8
       47 CAPTURE                          VAL R15
       48 CAPTURE                          REF R9
       49 CAPTURE                          REF R5
       50 NEWCLOSURE                       R7 P9
       51 CAPTURE                          REF R5
       52 DUPCLOSURE                       R9 K17 [PROTO_10]
       53 CLOSEUPVALS                      R5
       54 RETURN                           R10 1
