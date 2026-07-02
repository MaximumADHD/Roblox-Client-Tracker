PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R2 K0 ["<font color=\"#FFCE0B\">"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["</font>"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["<font color=\"#008BDB\">"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["</font>"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["<font color=\"#009E56\">"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["</font>"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["<font color=\"#EF1E14\">"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["</font>"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_5:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [0] ; [+20]
        3 LENGTH                           R3 R1
        4 JUMPIFEQKN                       R3 K0 [0] ; [+17]
        6 FASTCALL2K                       STRING_BYTE R0 K1 ; [+5]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K1 [1]
       10 GETIMPORT                        R3 K4 [string.byte]
       12 CALL                             R3 2 1
       13 FASTCALL2K                       STRING_BYTE R1 K1 ; [+5]
       15 MOVE                             R5 R1
       16 LOADK                            R6 K1 [1]
       17 GETIMPORT                        R4 K4 [string.byte]
       19 CALL                             R4 2 1
       20 JUMPIFEQ                         R3 R4 ; [+3]
       22 LOADN                            R3 0
       23 RETURN                           R3 1
       24 LOADN                            R3 1
       25 LENGTH                           R5 R0
       26 LENGTH                           R6 R1
       27 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       29 GETIMPORT                        R4 K7 [math.min]
       31 CALL                             R4 2 1
       32 MOVE                             R5 R4
       33 LOADN                            R6 1
       34 JUMPIFNOTLT                      R3 R5 ; [+32]
       36 FASTCALL3                        STRING_SUB R0 R6 R5
       38 MOVE                             R8 R0
       39 MOVE                             R9 R6
       40 MOVE                             R10 R5
       41 GETIMPORT                        R7 K9 [string.sub]
       43 CALL                             R7 3 1
       44 FASTCALL3                        STRING_SUB R1 R6 R5
       46 MOVE                             R9 R1
       47 MOVE                             R10 R6
       48 MOVE                             R11 R5
       49 GETIMPORT                        R8 K9 [string.sub]
       51 CALL                             R8 3 1
       52 JUMPIFNOTEQ                      R7 R8 ; [+4]
       54 MOVE                             R3 R5
       55 MOVE                             R6 R3
       56 JUMP                             ; [+1]
       57 MOVE                             R4 R5
       58 SUB                              R10 R4 R3
       59 DIVK                             R9 R10 K10 [2]
       60 ADD                              R8 R3 R9
       61 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       62 GETIMPORT                        R7 K12 [math.floor]
       64 CALL                             R7 1 1
       65 MOVE                             R5 R7
       66 JUMPBACK                         ; [-33]
       67 JUMPIFNOT                        R2 ; [+3]
       68 GETTABLEKS                       R8 R2 K13 ["contextLines"]
       70 JUMP                             ; [+1]
       71 LOADN                            R8 0
       72 ORK                              R7 R8 K0 [0]
       73 LOADN                            R8 -1
       74 MOVE                             R11 R5
       75 LOADN                            R9 0
       76 LOADN                            R10 -1
       77 FORNPREP                         R9
       78 MOVE                             R5 R11
       79 FASTCALL2                        STRING_BYTE R0 R11 ; [+5]
       81 MOVE                             R13 R0
       82 MOVE                             R14 R11
       83 GETIMPORT                        R12 K4 [string.byte]
       85 CALL                             R12 2 1
       86 JUMPIFNOTEQKN                    R12 K14 [10] ; [+4]
       88 ADDK                             R8 R8 K1 [1]
       89 JUMPIFLE                         R7 R8 ; [+2]
       91 FORNLOOP                         R9
       92 RETURN                           R5 1

PROTO_6:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [0] ; [+20]
        3 LENGTH                           R3 R1
        4 JUMPIFEQKN                       R3 K0 [0] ; [+17]
        6 FASTCALL2K                       STRING_BYTE R0 K1 ; [+5]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K1 [-1]
       10 GETIMPORT                        R3 K4 [string.byte]
       12 CALL                             R3 2 1
       13 FASTCALL2K                       STRING_BYTE R1 K1 ; [+5]
       15 MOVE                             R5 R1
       16 LOADK                            R6 K1 [-1]
       17 GETIMPORT                        R4 K4 [string.byte]
       19 CALL                             R4 2 1
       20 JUMPIFEQ                         R3 R4 ; [+3]
       22 LOADN                            R3 0
       23 RETURN                           R3 1
       24 LOADN                            R3 1
       25 LENGTH                           R5 R0
       26 LENGTH                           R6 R1
       27 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       29 GETIMPORT                        R4 K7 [math.min]
       31 CALL                             R4 2 1
       32 MOVE                             R5 R4
       33 LOADN                            R6 1
       34 JUMPIFNOTLT                      R3 R5 ; [+32]
       36 MINUS                            R9 R5
       37 MINUS                            R10 R6
       38 FASTCALL3                        STRING_SUB R0 R9 R10
       40 MOVE                             R8 R0
       41 GETIMPORT                        R7 K9 [string.sub]
       43 CALL                             R7 3 1
       44 MINUS                            R10 R5
       45 MINUS                            R11 R6
       46 FASTCALL3                        STRING_SUB R1 R10 R11
       48 MOVE                             R9 R1
       49 GETIMPORT                        R8 K9 [string.sub]
       51 CALL                             R8 3 1
       52 JUMPIFNOTEQ                      R7 R8 ; [+4]
       54 MOVE                             R3 R5
       55 MOVE                             R6 R3
       56 JUMP                             ; [+1]
       57 MOVE                             R4 R5
       58 SUB                              R10 R4 R3
       59 DIVK                             R9 R10 K10 [2]
       60 ADD                              R8 R3 R9
       61 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       62 GETIMPORT                        R7 K12 [math.floor]
       64 CALL                             R7 1 1
       65 MOVE                             R5 R7
       66 JUMPBACK                         ; [-33]
       67 JUMPIFNOT                        R2 ; [+3]
       68 GETTABLEKS                       R8 R2 K13 ["contextLines"]
       70 JUMP                             ; [+1]
       71 LOADN                            R8 0
       72 ORK                              R7 R8 K0 [0]
       73 LOADN                            R8 -1
       74 MOVE                             R11 R5
       75 LOADN                            R9 0
       76 LOADN                            R10 -1
       77 FORNPREP                         R9
       78 MOVE                             R5 R11
       79 MINUS                            R14 R11
       80 FASTCALL2                        STRING_BYTE R0 R14 ; [+4]
       82 MOVE                             R13 R0
       83 GETIMPORT                        R12 K4 [string.byte]
       85 CALL                             R12 2 1
       86 JUMPIFNOTEQKN                    R12 K14 [10] ; [+4]
       88 ADDK                             R8 R8 K15 [1]
       89 JUMPIFLE                         R7 R8 ; [+2]
       91 FORNLOOP                         R9
       92 RETURN                           R5 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R2 K0 ["contextLines"]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 DUPTABLE                         R6 K8 [{["depth"] = 100, ["multiline"] = True, ["maxLineLength"] = 100, ["indent"] = "  "}]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R1
       11 DUPTABLE                         R7 K8 [{["depth"] = 100, ["multiline"] = True, ["maxLineLength"] = 100, ["indent"] = "  "}]
       12 CALL                             R5 2 1
       13 JUMPIFNOTEQ                      R4 R5 ; [+3]
       15 LOADK                            R6 K9 ["Compared values have no visual difference."]
       16 RETURN                           R6 1
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R4
       19 MOVE                             R8 R5
       20 DUPTABLE                         R9 K10 [{"contextLines"}]
       21 SETTABLEKS                       R3 R9 K0 ["contextLines"]
       23 CALL                             R6 3 1
       24 LOADN                            R7 0
       25 JUMPIFNOTLT                      R7 R6 ; [+17]
       27 ADDK                             R9 R6 K11 [1]
       28 FASTCALL2                        STRING_SUB R4 R9 ; [+4]
       30 MOVE                             R8 R4
       31 GETIMPORT                        R7 K14 [string.sub]
       33 CALL                             R7 2 1
       34 MOVE                             R4 R7
       35 ADDK                             R9 R6 K11 [1]
       36 FASTCALL2                        STRING_SUB R5 R9 ; [+4]
       38 MOVE                             R8 R5
       39 GETIMPORT                        R7 K14 [string.sub]
       41 CALL                             R7 2 1
       42 MOVE                             R5 R7
       43 GETUPVAL                         R7 3
       44 MOVE                             R8 R4
       45 MOVE                             R9 R5
       46 DUPTABLE                         R10 K10 [{"contextLines"}]
       47 SETTABLEKS                       R3 R10 K0 ["contextLines"]
       49 CALL                             R7 3 1
       50 LOADN                            R8 0
       51 JUMPIFNOTLT                      R8 R7 ; [+21]
       53 LOADN                            R10 1
       54 MINUS                            R12 R7
       55 SUBK                             R11 R12 K11 [1]
       56 FASTCALL3                        STRING_SUB R4 R10 R11
       58 MOVE                             R9 R4
       59 GETIMPORT                        R8 K14 [string.sub]
       61 CALL                             R8 3 1
       62 MOVE                             R4 R8
       63 LOADN                            R10 1
       64 MINUS                            R12 R7
       65 SUBK                             R11 R12 K11 [1]
       66 FASTCALL3                        STRING_SUB R5 R10 R11
       68 MOVE                             R9 R5
       69 GETIMPORT                        R8 K14 [string.sub]
       71 CALL                             R8 3 1
       72 MOVE                             R5 R8
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K15 ["diff"]
       76 MOVE                             R9 R4
       77 MOVE                             R10 R5
       78 DUPTABLE                         R11 K24 [{[1], ["expand"] = False, ["omitAnnotationLines"] = True, ["aColor"], ["bColor"], ["patchColor"], ["changeColor"], ["commonColor"]}]
       79 SETTABLEKS                       R3 R11 K0 ["contextLines"]
       81 GETUPVAL                         R12 5
       82 SETTABLEKS                       R12 R11 K19 ["aColor"]
       84 GETUPVAL                         R12 6
       85 SETTABLEKS                       R12 R11 K20 ["bColor"]
       87 GETUPVAL                         R12 7
       88 SETTABLEKS                       R12 R11 K21 ["patchColor"]
       90 GETUPVAL                         R12 8
       91 SETTABLEKS                       R12 R11 K22 ["changeColor"]
       93 GETUPVAL                         R12 9
       94 SETTABLEKS                       R12 R11 K23 ["commonColor"]
       96 CALL                             R8 3 1
       97 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["JestDiff"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["pretty"]
       25 DUPTABLE                         R4 K11 [{["contextLines"] = 3}]
       26 DUPCLOSURE                       R5 K12 [PROTO_0]
       27 DUPCLOSURE                       R6 K13 [PROTO_1]
       28 DUPCLOSURE                       R7 K14 [PROTO_2]
       29 DUPCLOSURE                       R8 K15 [PROTO_3]
       30 DUPCLOSURE                       R9 K16 [PROTO_4]
       31 DUPCLOSURE                       R10 K17 [PROTO_5]
       32 DUPCLOSURE                       R11 K18 [PROTO_6]
       33 DUPCLOSURE                       R12 K19 [PROTO_7]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R10
       37 CAPTURE                          VAL R11
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R5
       44 RETURN                           R12 1
