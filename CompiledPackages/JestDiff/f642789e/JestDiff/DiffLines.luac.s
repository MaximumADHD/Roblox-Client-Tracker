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
       98 MOVE                             R17 R3
       99 MOVE                             R19 R4
      100 LOADK                            R20 K16 [" "]
      101 MOVE                             R21 R2
      102 MOVE                             R22 R10
      103 CONCAT                           R18 R19 R22
      104 CALL                             R17 1 1
      105 MOVE                             R13 R17
      106 LOADK                            R14 K21 ["\n"]
      107 MOVE                             R17 R6
      108 MOVE                             R19 R7
      109 LOADK                            R20 K16 [" "]
      110 MOVE                             R21 R5
      111 MOVE                             R22 R11
      112 CONCAT                           R18 R19 R22
      113 CALL                             R17 1 1
      114 MOVE                             R15 R17
      115 LOADK                            R16 K22 ["\n\n"]
      116 CONCAT                           R12 R13 R16
      117 RETURN                           R12 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["expand"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R1
        5 GETUPVAL                         R7 1
        6 MOVE                             R8 R0
        7 CALL                             R7 1 1
        8 CALL                             R5 2 1
        9 MOVE                             R3 R5
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 CONCAT                           R2 R3 R4
       15 RETURN                           R2 1
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R1
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R0
       20 CALL                             R7 1 1
       21 CALL                             R5 2 1
       22 MOVE                             R3 R5
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 CALL                             R4 2 1
       27 CONCAT                           R2 R3 R4
       28 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R4 R0
        1 LOADB                            R3 0
        2 LENGTH                           R5 R4
        3 JUMPIFNOTEQKN                    R5 K0 [1] ; [+7]
        5 GETTABLEN                        R6 R4 1
        6 LENGTH                           R5 R6
        7 JUMPIFEQKN                       R5 K1 [0] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 JUMPIFNOT                        R3 ; [+2]
       12 NEWTABLE                         R0 0 0
       14 MOVE                             R4 R1
       15 LOADB                            R3 0
       16 LENGTH                           R5 R4
       17 JUMPIFNOTEQKN                    R5 K0 [1] ; [+7]
       19 GETTABLEN                        R6 R4 1
       20 LENGTH                           R5 R6
       21 JUMPIFEQKN                       R5 K1 [0] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIFNOT                        R3 ; [+2]
       26 NEWTABLE                         R1 0 0
       28 GETUPVAL                         R3 0
       29 GETUPVAL                         R4 1
       30 MOVE                             R5 R0
       31 MOVE                             R6 R1
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 2
       34 MOVE                             R6 R2
       35 CALL                             R5 1 -1
       36 CALL                             R3 -1 1
       37 RETURN                           R3 1

PROTO_5:
        0 MOVE                             R6 R0
        1 LOADB                            R5 0
        2 LENGTH                           R7 R6
        3 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
        5 GETTABLEN                        R8 R6 1
        6 LENGTH                           R7 R8
        7 JUMPIFEQKN                       R7 K1 [0] ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 JUMPIFNOT                        R5 ; [+16]
       12 MOVE                             R6 R2
       13 LOADB                            R5 0
       14 LENGTH                           R7 R6
       15 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       17 GETTABLEN                        R8 R6 1
       18 LENGTH                           R7 R8
       19 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 NEWTABLE                         R0 0 0
       26 NEWTABLE                         R2 0 0
       28 MOVE                             R6 R1
       29 LOADB                            R5 0
       30 LENGTH                           R7 R6
       31 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       33 GETTABLEN                        R8 R6 1
       34 LENGTH                           R7 R8
       35 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 JUMPIFNOT                        R5 ; [+16]
       40 MOVE                             R6 R3
       41 LOADB                            R5 0
       42 LENGTH                           R7 R6
       43 JUMPIFNOTEQKN                    R7 K0 [1] ; [+7]
       45 GETTABLEN                        R8 R6 1
       46 LENGTH                           R7 R8
       47 JUMPIFEQKN                       R7 K1 [0] ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 JUMPIFNOT                        R5 ; [+4]
       52 NEWTABLE                         R1 0 0
       54 NEWTABLE                         R3 0 0
       56 LENGTH                           R5 R0
       57 LENGTH                           R6 R2
       58 JUMPIFNOTEQ                      R5 R6 ; [+5]
       60 LENGTH                           R5 R1
       61 LENGTH                           R6 R3
       62 JUMPIFEQ                         R5 R6 ; [+7]
       64 GETUPVAL                         R5 0
       65 MOVE                             R6 R0
       66 MOVE                             R7 R1
       67 MOVE                             R8 R4
       68 CALL                             R5 3 1
       69 RETURN                           R5 1
       70 GETUPVAL                         R5 1
       71 MOVE                             R6 R2
       72 MOVE                             R7 R3
       73 CALL                             R5 2 1
       74 LOADN                            R6 0
       75 LOADN                            R7 0
       76 GETIMPORT                        R8 K3 [ipairs]
       78 MOVE                             R9 R5
       79 CALL                             R8 1 3
       80 FORGPREP_INEXT                   R8
       81 GETTABLEN                        R13 R12 1
       82 GETUPVAL                         R14 2
       83 JUMPIFNOTEQ                      R13 R14 ; [+6]
       85 ADDK                             R15 R6 K0 [1]
       86 GETTABLE                         R14 R0 R15
       87 SETTABLEN                        R14 R12 2
       88 ADDK                             R6 R6 K0 [1]
       89 JUMP                             ; [+13]
       90 GETUPVAL                         R14 3
       91 JUMPIFNOTEQ                      R13 R14 ; [+6]
       93 ADDK                             R15 R7 K0 [1]
       94 GETTABLE                         R14 R1 R15
       95 SETTABLEN                        R14 R12 2
       96 ADDK                             R7 R7 K0 [1]
       97 JUMP                             ; [+5]
       98 ADDK                             R15 R7 K0 [1]
       99 GETTABLE                         R14 R1 R15
      100 SETTABLEN                        R14 R12 2
      101 ADDK                             R6 R6 K0 [1]
      102 ADDK                             R7 R7 K0 [1]
      103 FORGLOOP                         R8 2 [inext] ; [-23]
      105 GETUPVAL                         R8 4
      106 MOVE                             R9 R5
      107 GETUPVAL                         R10 5
      108 MOVE                             R11 R4
      109 CALL                             R10 1 -1
      110 CALL                             R8 -1 1
      111 RETURN                           R8 1

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
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K0 ["new"]
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
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K0 ["new"]
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
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K0 ["new"]
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
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K0 ["new"]
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
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K0 ["new"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       30 GETIMPORT                        R10 K4 [require]
       32 GETTABLEKS                       R11 R0 K12 ["JoinAlignedDiffs"]
       34 CALL                             R10 1 1
       35 GETTABLEKS                       R9 R10 K13 ["joinAlignedDiffsExpand"]
       37 GETIMPORT                        R11 K4 [require]
       39 GETTABLEKS                       R12 R0 K12 ["JoinAlignedDiffs"]
       41 CALL                             R11 1 1
       42 GETTABLEKS                       R10 R11 K14 ["joinAlignedDiffsNoExpand"]
       44 GETIMPORT                        R12 K4 [require]
       46 GETTABLEKS                       R13 R0 K15 ["NormalizeDiffOptions"]
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R11 R12 K16 ["normalizeDiffOptions"]
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
