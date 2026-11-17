PROTO_0:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 JUMPIFNOTEQKN                    R2 K0 [1] ; [+7]
        4 GETTABLEN                        R3 R0 1
        5 LENGTH                           R2 R3
        6 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEN                        R8 R7 1
        8 GETUPVAL                         R9 0
        9 JUMPIFNOTEQ                      R8 R9 ; [+3]
       11 ADDK                             R1 R1 K2 [1]
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R9 1
       14 JUMPIFNOTEQ                      R8 R9 ; [+2]
       16 ADDK                             R2 R2 K2 [1]
       17 FORGLOOP                         R3 2 [inext] ; [-11]
       19 DUPTABLE                         R3 K5 [{"a", "b"}]
       20 SETTABLEKS                       R1 R3 K3 ["a"]
       22 SETTABLEKS                       R2 R3 K4 ["b"]
       24 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["aAnnotation"]
        2 GETTABLEKS                       R3 R0 K1 ["aColor"]
        4 GETTABLEKS                       R4 R0 K2 ["aIndicator"]
        6 GETTABLEKS                       R5 R0 K3 ["bAnnotation"]
        8 GETTABLEKS                       R6 R0 K4 ["bColor"]
       10 GETTABLEKS                       R7 R0 K5 ["bIndicator"]
       12 GETTABLEKS                       R8 R0 K6 ["includeChangeCounts"]
       14 GETTABLEKS                       R9 R0 K7 ["omitAnnotationLines"]
       16 JUMPIFNOT                        R9 ; [+2]
       17 LOADK                            R10 K8 [""]
       18 RETURN                           R10 1
       19 LOADK                            R10 K8 [""]
       20 LOADK                            R11 K8 [""]
       21 JUMPIFNOT                        R8 ; [+76]
       22 GETTABLEKS                       R13 R1 K9 ["a"]
       24 FASTCALL1                        TOSTRING R13 ; [+2]
       25 GETIMPORT                        R12 K11 [tostring]
       27 CALL                             R12 1 1
       28 GETTABLEKS                       R14 R1 K12 ["b"]
       30 FASTCALL1                        TOSTRING R14 ; [+2]
       31 GETIMPORT                        R13 K11 [tostring]
       33 CALL                             R13 1 1
       34 LENGTH                           R15 R5
       35 LENGTH                           R16 R2
       36 SUB                              R14 R15 R16
       37 GETIMPORT                        R15 K15 [string.rep]
       39 LOADK                            R16 K16 [" "]
       40 LOADN                            R18 0
       41 FASTCALL2                        MATH_MAX R18 R14 ; [+4]
       43 MOVE                             R19 R14
       44 GETIMPORT                        R17 K19 [math.max]
       46 CALL                             R17 2 1
       47 CALL                             R15 2 1
       48 GETIMPORT                        R16 K15 [string.rep]
       50 LOADK                            R17 K16 [" "]
       51 LOADN                            R19 0
       52 MINUS                            R20 R14
       53 FASTCALL2                        MATH_MAX R19 R20 ; [+3]
       55 GETIMPORT                        R18 K19 [math.max]
       57 CALL                             R18 2 1
       58 CALL                             R16 2 1
       59 LENGTH                           R18 R13
       60 LENGTH                           R19 R12
       61 SUB                              R17 R18 R19
       62 GETIMPORT                        R18 K15 [string.rep]
       64 LOADK                            R19 K16 [" "]
       65 LOADN                            R21 0
       66 FASTCALL2                        MATH_MAX R21 R17 ; [+4]
       68 MOVE                             R22 R17
       69 GETIMPORT                        R20 K19 [math.max]
       71 CALL                             R20 2 1
       72 CALL                             R18 2 1
       73 GETIMPORT                        R19 K15 [string.rep]
       75 LOADK                            R20 K16 [" "]
       76 LOADN                            R22 0
       77 MINUS                            R23 R17
       78 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
       80 GETIMPORT                        R21 K19 [math.max]
       82 CALL                             R21 2 1
       83 CALL                             R19 2 1
       84 MOVE                             R20 R15
       85 LOADK                            R21 K20 ["  "]
       86 MOVE                             R22 R4
       87 LOADK                            R23 K16 [" "]
       88 MOVE                             R24 R18
       89 MOVE                             R25 R12
       90 CONCAT                           R10 R20 R25
       91 MOVE                             R20 R16
       92 LOADK                            R21 K20 ["  "]
       93 MOVE                             R22 R7
       94 LOADK                            R23 K16 [" "]
       95 MOVE                             R24 R19
       96 MOVE                             R25 R13
       97 CONCAT                           R11 R20 R25
       98 MOVE                             R13 R3
       99 MOVE                             R15 R4
      100 LOADK                            R16 K16 [" "]
      101 MOVE                             R17 R2
      102 MOVE                             R18 R10
      103 CONCAT                           R14 R15 R18
      104 CALL                             R13 1 1
      105 LOADK                            R14 K21 ["\n"]
      106 MOVE                             R15 R6
      107 MOVE                             R17 R7
      108 LOADK                            R18 K16 [" "]
      109 MOVE                             R19 R5
      110 MOVE                             R20 R11
      111 CONCAT                           R16 R17 R20
      112 CALL                             R15 1 1
      113 LOADK                            R16 K22 ["\n\n"]
      114 CONCAT                           R12 R13 R16
      115 RETURN                           R12 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["expand"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R0
       19 CALL                             R5 1 1
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 CALL                             R4 2 1
       25 CONCAT                           R2 R3 R4
       26 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R3 0
        1 LENGTH                           R5 R0
        2 JUMPIFNOTEQKN                    R5 K0 [1] ; [+7]
        4 GETTABLEN                        R6 R0 1
        5 LENGTH                           R5 R6
        6 JUMPIFEQKN                       R5 K1 [0] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 NEWTABLE                         R0 0 0
       13 LOADB                            R3 0
       14 LENGTH                           R5 R1
       15 JUMPIFNOTEQKN                    R5 K0 [1] ; [+7]
       17 GETTABLEN                        R6 R1 1
       18 LENGTH                           R5 R6
       19 JUMPIFEQKN                       R5 K1 [0] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIFNOT                        R3 ; [+2]
       24 NEWTABLE                         R1 0 0
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R4 1
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R2
       33 CALL                             R5 1 -1
       34 CALL                             R3 -1 1
       35 RETURN                           R3 1

PROTO_5:
        0 LOADB                            R5 0
        1 LENGTH                           R7 R0
        2 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
        4 GETTABLEN                        R8 R0 1
        5 LENGTH                           R7 R8
        6 JUMPIFEQKN                       R7 K1 [0] ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 JUMPIFNOT                        R5 ; [+15]
       11 LOADB                            R5 0
       12 LENGTH                           R7 R2
       13 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       15 GETTABLEN                        R8 R2 1
       16 LENGTH                           R7 R8
       17 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 JUMPIFNOT                        R5 ; [+4]
       22 NEWTABLE                         R0 0 0
       24 NEWTABLE                         R2 0 0
       26 LOADB                            R5 0
       27 LENGTH                           R7 R1
       28 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       30 GETTABLEN                        R8 R1 1
       31 LENGTH                           R7 R8
       32 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 JUMPIFNOT                        R5 ; [+15]
       37 LOADB                            R5 0
       38 LENGTH                           R7 R3
       39 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       41 GETTABLEN                        R8 R3 1
       42 LENGTH                           R7 R8
       43 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 JUMPIFNOT                        R5 ; [+4]
       48 NEWTABLE                         R1 0 0
       50 NEWTABLE                         R3 0 0
       52 LENGTH                           R5 R0
       53 LENGTH                           R6 R2
       54 JUMPIFNOTEQ                      R5 R6 ; [+5]
       56 LENGTH                           R5 R1
       57 LENGTH                           R6 R3
       58 JUMPIFEQ                         R5 R6 ; [+7]
       60 GETUPVAL                         R5 0
       61 MOVE                             R6 R0
       62 MOVE                             R7 R1
       63 MOVE                             R8 R4
       64 CALL                             R5 3 1
       65 RETURN                           R5 1
       66 GETUPVAL                         R5 1
       67 MOVE                             R6 R2
       68 MOVE                             R7 R3
       69 CALL                             R5 2 1
       70 LOADN                            R6 0
       71 LOADN                            R7 0
       72 GETIMPORT                        R8 K3 [ipairs]
       74 MOVE                             R9 R5
       75 CALL                             R8 1 3
       76 FORGPREP_INEXT                   R8
       77 GETTABLEN                        R13 R12 1
       78 GETUPVAL                         R14 2
       79 JUMPIFNOTEQ                      R13 R14 ; [+6]
       81 ADDK                             R15 R6 K0 [1]
       82 GETTABLE                         R14 R0 R15
       83 SETTABLEN                        R14 R12 2
       84 ADDK                             R6 R6 K0 [1]
       85 JUMP                             ; [+13]
       86 GETUPVAL                         R14 3
       87 JUMPIFNOTEQ                      R13 R14 ; [+6]
       89 ADDK                             R15 R7 K0 [1]
       90 GETTABLE                         R14 R1 R15
       91 SETTABLEN                        R14 R12 2
       92 ADDK                             R7 R7 K0 [1]
       93 JUMP                             ; [+5]
       94 ADDK                             R15 R7 K0 [1]
       95 GETTABLE                         R14 R1 R15
       96 SETTABLEN                        R14 R12 2
       97 ADDK                             R6 R6 K0 [1]
       98 ADDK                             R7 R7 K0 [1]
       99 FORGLOOP                         R8 2 [inext] ; [-23]
      101 GETUPVAL                         R8 4
      102 MOVE                             R9 R5
      103 GETUPVAL                         R10 5
      104 MOVE                             R11 R4
      105 CALL                             R10 1 -1
      106 CALL                             R8 -1 1
      107 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 ADDK                             R5 R0 K0 [1]
        2 GETTABLE                         R3 R4 R5
        3 GETUPVAL                         R5 1
        4 ADDK                             R6 R1 K0 [1]
        5 GETTABLE                         R4 R5 R6
        6 JUMPIFEQ                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R3 R1 ; [+19]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["new"]
        7 GETUPVAL                         R6 3
        8 GETUPVAL                         R8 4
        9 GETUPVAL                         R10 0
       10 ADDK                             R9 R10 K1 [1]
       11 GETTABLE                         R7 R8 R9
       12 CALL                             R5 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R3 K4 [table.insert]
       16 CALL                             R3 -1 0
       17 GETUPVAL                         R3 0
       18 ADDK                             R3 R3 K1 [1]
       19 SETUPVAL                         R3 0
       20 JUMPBACK                         ; [-21]
       21 GETUPVAL                         R3 5
       22 JUMPIFEQ                         R3 R2 ; [+19]
       24 GETUPVAL                         R4 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K0 ["new"]
       28 GETUPVAL                         R6 6
       29 GETUPVAL                         R8 7
       30 GETUPVAL                         R10 5
       31 ADDK                             R9 R10 K1 [1]
       32 GETTABLE                         R7 R8 R9
       33 CALL                             R5 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R3 K4 [table.insert]
       37 CALL                             R3 -1 0
       38 GETUPVAL                         R3 5
       39 ADDK                             R3 R3 K1 [1]
       40 SETUPVAL                         R3 5
       41 JUMPBACK                         ; [-21]
       42 JUMPIFEQKN                       R0 K5 [0] ; [+23]
       44 GETUPVAL                         R4 1
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R5 R5 K0 ["new"]
       48 GETUPVAL                         R6 8
       49 GETUPVAL                         R8 7
       50 GETUPVAL                         R10 5
       51 ADDK                             R9 R10 K1 [1]
       52 GETTABLE                         R7 R8 R9
       53 CALL                             R5 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R3 K4 [table.insert]
       57 CALL                             R3 -1 0
       58 SUBK                             R0 R0 K1 [1]
       59 GETUPVAL                         R3 0
       60 ADDK                             R3 R3 K1 [1]
       61 SETUPVAL                         R3 0
       62 GETUPVAL                         R3 5
       63 ADDK                             R3 R3 K1 [1]
       64 SETUPVAL                         R3 5
       65 JUMPBACK                         ; [-24]
       66 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NEWTABLE                         R5 0 0
        7 LOADN                            R6 0
        8 LOADN                            R7 0
        9 NEWCLOSURE                       R8 P1
       10 CAPTURE                          REF R6
       11 CAPTURE                          VAL R5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R7
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 GETUPVAL                         R9 4
       20 MOVE                             R10 R2
       21 MOVE                             R11 R3
       22 MOVE                             R12 R4
       23 MOVE                             R13 R8
       24 CALL                             R9 4 0
       25 JUMPIFEQ                         R6 R2 ; [+15]
       27 MOVE                             R10 R5
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K0 ["new"]
       31 GETUPVAL                         R12 1
       32 ADDK                             R14 R6 K1 [1]
       33 GETTABLE                         R13 R0 R14
       34 CALL                             R11 2 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R9 K4 [table.insert]
       38 CALL                             R9 -1 0
       39 ADDK                             R6 R6 K1 [1]
       40 JUMPBACK                         ; [-16]
       41 JUMPIFEQ                         R7 R3 ; [+15]
       43 MOVE                             R10 R5
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K0 ["new"]
       47 GETUPVAL                         R12 2
       48 ADDK                             R14 R7 K1 [1]
       49 GETTABLE                         R13 R1 R14
       50 CALL                             R11 2 -1
       51 FASTCALL                         TABLE_INSERT ; [+2]
       52 GETIMPORT                        R9 K4 [table.insert]
       54 CALL                             R9 -1 0
       55 ADDK                             R7 R7 K1 [1]
       56 JUMPBACK                         ; [-16]
       57 CLOSEUPVALS                      R6
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["DiffSequences"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["CleanupSemantic"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R4 K8 ["DIFF_DELETE"]
       24 GETTABLEKS                       R6 R4 K9 ["DIFF_EQUAL"]
       26 GETTABLEKS                       R7 R4 K10 ["DIFF_INSERT"]
       28 GETTABLEKS                       R8 R4 K11 ["Diff"]
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R0 K12 ["JoinAlignedDiffs"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R9 R9 K13 ["joinAlignedDiffsExpand"]
       37 GETIMPORT                        R10 K4 [require]
       39 GETTABLEKS                       R11 R0 K12 ["JoinAlignedDiffs"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R10 R10 K14 ["joinAlignedDiffsNoExpand"]
       44 GETIMPORT                        R11 K4 [require]
       46 GETTABLEKS                       R12 R0 K15 ["NormalizeDiffOptions"]
       48 CALL                             R11 1 1
       49 GETTABLEKS                       R11 R11 K16 ["normalizeDiffOptions"]
       51 GETIMPORT                        R12 K4 [require]
       53 GETTABLEKS                       R13 R0 K17 ["types"]
       55 CALL                             R12 1 1
       56 LOADNIL                          R13
       57 DUPCLOSURE                       R14 K18 [PROTO_0]
       58 DUPCLOSURE                       R15 K19 [PROTO_1]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R16 K20 [PROTO_2]
       62 DUPCLOSURE                       R17 K21 [PROTO_3]
       63 CAPTURE                          VAL R16
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R10
       67 NEWCLOSURE                       R18 P4
       68 CAPTURE                          VAL R17
       69 CAPTURE                          REF R13
       70 CAPTURE                          VAL R11
       71 NEWCLOSURE                       R19 P5
       72 CAPTURE                          VAL R18
       73 CAPTURE                          REF R13
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R17
       77 CAPTURE                          VAL R11
       78 DUPCLOSURE                       R13 K22 [PROTO_8]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 DUPTABLE                         R20 K27 [{"printDiffLines", "diffLinesUnified", "diffLinesUnified2", "diffLinesRaw"}]
       85 SETTABLEKS                       R17 R20 K23 ["printDiffLines"]
       87 SETTABLEKS                       R18 R20 K24 ["diffLinesUnified"]
       89 SETTABLEKS                       R19 R20 K25 ["diffLinesUnified2"]
       91 SETTABLEKS                       R13 R20 K26 ["diffLinesRaw"]
       93 CLOSEUPVALS                      R13
       94 RETURN                           R20 1
