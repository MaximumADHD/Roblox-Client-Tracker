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
       73 LOADN                            R8 255
       74 MOVE                             R11 R5
       75 LOADN                            R9 0
       76 LOADN                            R10 255
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
       73 LOADN                            R8 255
       74 MOVE                             R11 R5
       75 LOADN                            R9 0
       76 LOADN                            R10 255
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
        7 DUPTABLE                         R6 K5 [{"depth", "multiline", "maxLineLength", "indent"}]
        8 LOADN                            R7 100
        9 SETTABLEKS                       R7 R6 K1 ["depth"]
       11 LOADB                            R7 1
       12 SETTABLEKS                       R7 R6 K2 ["multiline"]
       14 LOADN                            R7 100
       15 SETTABLEKS                       R7 R6 K3 ["maxLineLength"]
       17 LOADK                            R7 K6 ["  "]
       18 SETTABLEKS                       R7 R6 K4 ["indent"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R1
       23 DUPTABLE                         R7 K5 [{"depth", "multiline", "maxLineLength", "indent"}]
       24 LOADN                            R8 100
       25 SETTABLEKS                       R8 R7 K1 ["depth"]
       27 LOADB                            R8 1
       28 SETTABLEKS                       R8 R7 K2 ["multiline"]
       30 LOADN                            R8 100
       31 SETTABLEKS                       R8 R7 K3 ["maxLineLength"]
       33 LOADK                            R8 K6 ["  "]
       34 SETTABLEKS                       R8 R7 K4 ["indent"]
       36 CALL                             R5 2 1
       37 JUMPIFNOTEQ                      R4 R5 ; [+3]
       39 LOADK                            R6 K7 ["Compared values have no visual difference."]
       40 RETURN                           R6 1
       41 GETUPVAL                         R6 2
       42 MOVE                             R7 R4
       43 MOVE                             R8 R5
       44 DUPTABLE                         R9 K8 [{"contextLines"}]
       45 SETTABLEKS                       R3 R9 K0 ["contextLines"]
       47 CALL                             R6 3 1
       48 LOADN                            R7 0
       49 JUMPIFNOTLT                      R7 R6 ; [+17]
       51 ADDK                             R9 R6 K9 [1]
       52 FASTCALL2                        STRING_SUB R4 R9 ; [+4]
       54 MOVE                             R8 R4
       55 GETIMPORT                        R7 K12 [string.sub]
       57 CALL                             R7 2 1
       58 MOVE                             R4 R7
       59 ADDK                             R9 R6 K9 [1]
       60 FASTCALL2                        STRING_SUB R5 R9 ; [+4]
       62 MOVE                             R8 R5
       63 GETIMPORT                        R7 K12 [string.sub]
       65 CALL                             R7 2 1
       66 MOVE                             R5 R7
       67 GETUPVAL                         R7 3
       68 MOVE                             R8 R4
       69 MOVE                             R9 R5
       70 DUPTABLE                         R10 K8 [{"contextLines"}]
       71 SETTABLEKS                       R3 R10 K0 ["contextLines"]
       73 CALL                             R7 3 1
       74 LOADN                            R8 0
       75 JUMPIFNOTLT                      R8 R7 ; [+21]
       77 LOADN                            R10 1
       78 MINUS                            R12 R7
       79 SUBK                             R11 R12 K9 [1]
       80 FASTCALL3                        STRING_SUB R4 R10 R11
       82 MOVE                             R9 R4
       83 GETIMPORT                        R8 K12 [string.sub]
       85 CALL                             R8 3 1
       86 MOVE                             R4 R8
       87 LOADN                            R10 1
       88 MINUS                            R12 R7
       89 SUBK                             R11 R12 K9 [1]
       90 FASTCALL3                        STRING_SUB R5 R10 R11
       92 MOVE                             R9 R5
       93 GETIMPORT                        R8 K12 [string.sub]
       95 CALL                             R8 3 1
       96 MOVE                             R5 R8
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R8 R9 K13 ["diff"]
      100 MOVE                             R9 R4
      101 MOVE                             R10 R5
      102 DUPTABLE                         R11 K21 [{"contextLines", "expand", "omitAnnotationLines", "aColor", "bColor", "patchColor", "changeColor", "commonColor"}]
      103 SETTABLEKS                       R3 R11 K0 ["contextLines"]
      105 LOADB                            R12 0
      106 SETTABLEKS                       R12 R11 K14 ["expand"]
      108 LOADB                            R12 1
      109 SETTABLEKS                       R12 R11 K15 ["omitAnnotationLines"]
      111 GETUPVAL                         R12 5
      112 SETTABLEKS                       R12 R11 K16 ["aColor"]
      114 GETUPVAL                         R12 6
      115 SETTABLEKS                       R12 R11 K17 ["bColor"]
      117 GETUPVAL                         R12 7
      118 SETTABLEKS                       R12 R11 K18 ["patchColor"]
      120 GETUPVAL                         R12 8
      121 SETTABLEKS                       R12 R11 K19 ["changeColor"]
      123 GETUPVAL                         R12 9
      124 SETTABLEKS                       R12 R11 K20 ["commonColor"]
      126 CALL                             R8 3 1
      127 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["JestDiff"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["pretty"]
       25 DUPTABLE                         R4 K10 [{"contextLines"}]
       26 LOADN                            R5 3
       27 SETTABLEKS                       R5 R4 K9 ["contextLines"]
       29 DUPCLOSURE                       R5 K11 [PROTO_0]
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 DUPCLOSURE                       R7 K13 [PROTO_2]
       32 DUPCLOSURE                       R8 K14 [PROTO_3]
       33 DUPCLOSURE                       R9 K15 [PROTO_4]
       34 DUPCLOSURE                       R10 K16 [PROTO_5]
       35 DUPCLOSURE                       R11 K17 [PROTO_6]
       36 DUPCLOSURE                       R12 K18 [PROTO_7]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R10
       40 CAPTURE                          VAL R11
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R5
       47 RETURN                           R12 1
