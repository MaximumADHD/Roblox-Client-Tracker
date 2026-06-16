PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

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
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K3 ["JSONEncode"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+19]
       15 JUMPIFEQ                         R0 R0 ; [+3]
       17 LOADK                            R3 K5 ["NaN"]
       18 RETURN                           R3 1
       19 JUMPIFNOTEQKN                    R0 K6 [∞] ; [+3]
       21 LOADK                            R3 K7 ["Infinity"]
       22 RETURN                           R3 1
       23 JUMPIFNOTEQKN                    R0 K8 [-∞] ; [+3]
       25 LOADK                            R3 K9 ["-Infinity"]
       26 RETURN                           R3 1
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R4 R0
       29 GETIMPORT                        R3 K11 [tostring]
       31 CALL                             R3 1 1
       32 RETURN                           R3 1
       33 JUMPIFNOTEQKS                    R2 K12 ["function"] ; [+19]
       35 LOADK                            R3 K13 ["[function"]
       36 GETIMPORT                        R4 K16 [debug.info]
       38 MOVE                             R5 R0
       39 LOADK                            R6 K17 ["n"]
       40 CALL                             R4 2 1
       41 JUMPIFEQKNIL                     R4 ; [+7]
       43 JUMPIFEQKS                       R4 K18 [""] ; [+5]
       45 MOVE                             R5 R3
       46 LOADK                            R6 K19 [" "]
       47 MOVE                             R7 R4
       48 CONCAT                           R3 R5 R7
       49 MOVE                             R6 R3
       50 LOADK                            R7 K20 ["]"]
       51 CONCAT                           R5 R6 R7
       52 RETURN                           R5 1
       53 JUMPIFNOTEQKS                    R2 K21 ["table"] ; [+6]
       55 GETUPVAL                         R3 1
       56 MOVE                             R4 R0
       57 MOVE                             R5 R1
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1
       60 FASTCALL1                        TOSTRING R0 ; [+3]
       61 MOVE                             R4 R0
       62 GETIMPORT                        R3 K11 [tostring]
       64 CALL                             R3 1 1
       65 RETURN                           R3 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.find]
        2 MOVE                             R3 R1
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 LOADK                            R2 K3 ["[Circular]"]
        8 RETURN                           R2 1
        9 NEWTABLE                         R2 0 1
       11 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K5 [unpack]
       15 CALL                             R3 1 -1
       16 SETLIST                          R2 R3 -1 [1]
       18 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       20 MOVE                             R4 R2
       21 MOVE                             R5 R0
       22 GETIMPORT                        R3 K7 [table.insert]
       24 CALL                             R3 2 0
       25 GETTABLEKS                       R4 R0 K8 ["toJSON"]
       27 FASTCALL1                        TYPEOF R4 ; [+2]
       28 GETIMPORT                        R3 K10 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K11 ["function"] ; [+21]
       33 MOVE                             R5 R0
       34 NAMECALL                         R3 R0 K8 ["toJSON"]
       36 CALL                             R3 2 1
       37 JUMPIFEQ                         R3 R0 ; [+26]
       39 FASTCALL1                        TYPEOF R3 ; [+3]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K10 [typeof]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K12 ["string"] ; [+2]
       46 RETURN                           R3 1
       47 GETUPVAL                         R4 0
       48 MOVE                             R5 R3
       49 MOVE                             R6 R2
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1
       52 JUMP                             ; [+11]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K13 ["isArray"]
       56 MOVE                             R4 R0
       57 CALL                             R3 1 1
       58 JUMPIFNOT                        R3 ; [+5]
       59 GETUPVAL                         R3 2
       60 MOVE                             R4 R0
       61 MOVE                             R5 R2
       62 CALL                             R3 2 -1
       63 RETURN                           R3 -1
       64 GETUPVAL                         R3 3
       65 MOVE                             R4 R0
       66 MOVE                             R5 R2
       67 CALL                             R3 2 -1
       68 RETURN                           R3 -1

PROTO_8:
        0 LOADK                            R2 K0 [""]
        1 FASTCALL1                        GETMETATABLE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [getmetatable]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+14]
        7 FASTCALL2K                       RAWGET R3 K3 ; [+5]
        9 MOVE                             R5 R3
       10 LOADK                            R6 K3 ["__tostring"]
       11 GETIMPORT                        R4 K5 [rawget]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+6]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K7 [tostring]
       19 CALL                             R4 1 1
       20 RETURN                           R4 1
       21 GETUPVAL                         R4 0
       22 MOVE                             R5 R0
       23 CALL                             R4 1 3
       24 JUMPIFNOTEQKN                    R6 K8 [0] ; [+7]
       26 JUMPIFNOTEQKN                    R5 K8 [0] ; [+5]
       28 MOVE                             R7 R2
       29 LOADK                            R8 K9 ["{}"]
       30 CONCAT                           R2 R7 R8
       31 RETURN                           R2 1
       32 LENGTH                           R7 R1
       33 LOADN                            R8 2
       34 JUMPIFNOTLT                      R8 R7 ; [+10]
       36 MOVE                             R7 R2
       37 LOADK                            R8 K10 ["["]
       38 GETUPVAL                         R11 1
       39 MOVE                             R12 R0
       40 CALL                             R11 1 1
       41 MOVE                             R9 R11
       42 LOADK                            R10 K11 ["]"]
       43 CONCAT                           R2 R7 R10
       44 RETURN                           R2 1
       45 NEWTABLE                         R7 0 0
       47 LOADN                            R10 1
       48 MOVE                             R8 R6
       49 LOADN                            R9 1
       50 FORNPREP                         R8
       51 GETUPVAL                         R11 2
       52 GETTABLE                         R12 R0 R10
       53 MOVE                             R13 R1
       54 CALL                             R11 2 1
       55 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
       57 MOVE                             R13 R7
       58 MOVE                             R14 R11
       59 GETIMPORT                        R12 K14 [table.insert]
       61 CALL                             R12 2 0
       62 FORNLOOP                         R8
       63 LOADN                            R10 1
       64 MOVE                             R8 R5
       65 LOADN                            R9 1
       66 FORNPREP                         R8
       67 GETTABLE                         R11 R4 R10
       68 GETUPVAL                         R12 2
       69 GETTABLE                         R13 R0 R11
       70 MOVE                             R14 R1
       71 CALL                             R12 2 1
       72 MOVE                             R16 R11
       73 LOADK                            R17 K15 [": "]
       74 MOVE                             R18 R12
       75 CONCAT                           R15 R16 R18
       76 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       78 MOVE                             R14 R7
       79 GETIMPORT                        R13 K14 [table.insert]
       81 CALL                             R13 2 0
       82 FORNLOOP                         R8
       83 MOVE                             R8 R2
       84 LOADK                            R9 K16 ["{ "]
       85 GETIMPORT                        R12 K18 [table.concat]
       87 MOVE                             R13 R7
       88 LOADK                            R14 K19 [", "]
       89 CALL                             R12 2 1
       90 MOVE                             R10 R12
       91 LOADK                            R11 K20 [" }"]
       92 CONCAT                           R2 R8 R11
       93 RETURN                           R2 1

PROTO_9:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADK                            R3 K1 ["[]"]
        4 RETURN                           R3 1
        5 LENGTH                           R3 R1
        6 LOADN                            R4 2
        7 JUMPIFNOTLT                      R4 R3 ; [+3]
        9 LOADK                            R3 K2 ["[Array]"]
       10 RETURN                           R3 1
       11 LOADN                            R4 10
       12 FASTCALL2                        MATH_MIN R4 R2 ; [+4]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R3 K5 [math.min]
       17 CALL                             R3 2 1
       18 SUB                              R4 R2 R3
       19 NEWTABLE                         R5 0 0
       21 LOADN                            R8 1
       22 MOVE                             R6 R3
       23 LOADN                            R7 1
       24 FORNPREP                         R6
       25 GETUPVAL                         R9 0
       26 GETTABLE                         R10 R0 R8
       27 MOVE                             R11 R1
       28 CALL                             R9 2 1
       29 SETTABLE                         R9 R5 R8
       30 FORNLOOP                         R6
       31 JUMPIFNOTEQKN                    R4 K6 [1] ; [+9]
       33 FASTCALL2K                       TABLE_INSERT R5 K7 ; [+5]
       35 MOVE                             R7 R5
       36 LOADK                            R8 K7 ["... 1 more item"]
       37 GETIMPORT                        R6 K10 [table.insert]
       39 CALL                             R6 2 0
       40 JUMP                             ; [+17]
       41 LOADN                            R6 1
       42 JUMPIFNOTLT                      R6 R4 ; [+15]
       44 MOVE                             R7 R5
       45 LOADK                            R8 K11 ["... %s more items"]
       46 FASTCALL1                        TOSTRING R4 ; [+3]
       47 MOVE                             R11 R4
       48 GETIMPORT                        R10 K13 [tostring]
       50 CALL                             R10 1 1
       51 NAMECALL                         R8 R8 K14 ["format"]
       53 CALL                             R8 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R6 K10 [table.insert]
       57 CALL                             R6 -1 0
       58 LOADK                            R7 K15 ["["]
       59 GETIMPORT                        R10 K17 [table.concat]
       61 MOVE                             R11 R5
       62 LOADK                            R12 K18 [", "]
       63 CALL                             R10 2 1
       64 MOVE                             R8 R10
       65 LOADK                            R9 K19 ["]"]
       66 CONCAT                           R6 R7 R9
       67 RETURN                           R6 1

PROTO_10:
        0 LOADK                            R1 K0 ["Object"]
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["Array"]
       17 CALL                             R1 1 1
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          REF R2
       25 DUPCLOSURE                       R8 K10 [PROTO_1]
       26 DUPCLOSURE                       R9 K11 [PROTO_2]
       27 DUPCLOSURE                       R10 K12 [PROTO_3]
       28 DUPCLOSURE                       R11 K13 [PROTO_4]
       29 DUPCLOSURE                       R12 K14 [PROTO_5]
       30 CAPTURE                          VAL R10
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R3
       34 NEWCLOSURE                       R3 P7
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          REF R4
       38 CAPTURE                          REF R5
       39 NEWCLOSURE                       R5 P8
       40 CAPTURE                          VAL R12
       41 CAPTURE                          REF R6
       42 CAPTURE                          REF R2
       43 NEWCLOSURE                       R4 P9
       44 CAPTURE                          REF R2
       45 DUPCLOSURE                       R6 K15 [PROTO_10]
       46 CLOSEUPVALS                      R2
       47 RETURN                           R7 1
