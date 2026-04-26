PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
        8 GETTABLEKS                       R5 R6 K3 ["validateMakeupDecal_UVZoneError"]
       10 LOADNIL                          R6
       11 MOVE                             R7 R2
       12 CALL                             R4 3 0
       13 LOADB                            R4 0
       14 NEWTABLE                         R5 0 1
       16 GETIMPORT                        R6 K6 [string.format]
       18 LOADK                            R7 K7 ["Opaque area of ColorMap for %s does not fall within allowed UV area of [%s] and [%s] for asset type %s"]
       19 GETTABLEKS                       R8 R0 K8 ["Name"]
       21 GETTABLEKS                       R10 R1 K9 ["MinBound"]
       23 FASTCALL1                        TOSTRING R10 ; [+2]
       24 GETIMPORT                        R9 K11 [tostring]
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R11 R1 K12 ["MaxBound"]
       29 FASTCALL1                        TOSTRING R11 ; [+2]
       30 GETIMPORT                        R10 K11 [tostring]
       32 CALL                             R10 1 1
       33 GETTABLEKS                       R11 R3 K8 ["Name"]
       35 CALL                             R6 5 -1
       36 SETLIST                          R5 R6 -1 [1]
       38 RETURN                           R4 2

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["reportFailure"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["ErrorType"]
        8 GETTABLEKS                       R5 R6 K3 ["validateMakeupDecal_UVZoneError"]
       10 LOADNIL                          R6
       11 MOVE                             R7 R2
       12 CALL                             R4 3 0
       13 LOADB                            R4 0
       14 NEWTABLE                         R5 0 1
       16 GETIMPORT                        R6 K6 [string.format]
       18 LOADK                            R7 K7 ["Opaque pixels in ColorMap for %s were found within a restricted UV area of [%s] and [%s] for asset type %s"]
       19 GETTABLEKS                       R8 R0 K8 ["Name"]
       21 GETTABLEKS                       R10 R1 K9 ["MinBound"]
       23 FASTCALL1                        TOSTRING R10 ; [+2]
       24 GETIMPORT                        R9 K11 [tostring]
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R11 R1 K12 ["MaxBound"]
       29 FASTCALL1                        TOSTRING R11 ; [+2]
       30 GETIMPORT                        R10 K11 [tostring]
       32 CALL                             R10 1 1
       33 GETTABLEKS                       R11 R3 K8 ["Name"]
       35 CALL                             R6 5 -1
       36 SETLIST                          R5 R6 -1 [1]
       38 RETURN                           R4 2

PROTO_2:
        0 GETIMPORT                        R8 K2 [Vector2.new]
        2 LOADN                            R9 0
        3 LOADN                            R10 0
        4 CALL                             R8 2 1
        5 GETTABLEKS                       R9 R1 K3 ["Size"]
        7 NAMECALL                         R6 R1 K4 ["ReadPixelsBuffer"]
        9 CALL                             R6 3 1
       10 LOADN                            R7 0
       11 GETTABLEKS                       R10 R1 K3 ["Size"]
       13 GETTABLEKS                       R9 R10 K6 ["Y"]
       15 SUBK                             R8 R9 K5 [1]
       16 LOADN                            R11 0
       17 GETIMPORT                        R12 K9 [buffer.len]
       19 MOVE                             R13 R6
       20 CALL                             R12 1 1
       21 SUBK                             R9 R12 K5 [1]
       22 LOADN                            R10 4
       23 FORNPREP                         R9
       24 GETTABLEKS                       R13 R1 K3 ["Size"]
       26 GETTABLEKS                       R12 R13 K10 ["X"]
       28 JUMPIFNOTEQ                      R7 R12 ; [+3]
       30 LOADN                            R7 0
       31 SUBK                             R8 R8 K5 [1]
       32 ADDK                             R14 R11 K11 [3]
       33 FASTCALL2                        BUFFER_READU8 R6 R14 ; [+4]
       35 MOVE                             R13 R6
       36 GETIMPORT                        R12 K13 [buffer.readu8]
       38 CALL                             R12 2 1
       39 GETTABLEKS                       R13 R4 K14 ["isIncludeBound"]
       41 JUMPIFNOT                        R13 ; [+26]
       42 GETTABLEKS                       R13 R2 K10 ["X"]
       44 JUMPIFLT                         R7 R13 ; [+13]
       46 GETTABLEKS                       R13 R2 K6 ["Y"]
       48 JUMPIFLT                         R8 R13 ; [+9]
       50 GETTABLEKS                       R13 R3 K10 ["X"]
       52 JUMPIFLT                         R13 R7 ; [+5]
       54 GETTABLEKS                       R13 R3 K6 ["Y"]
       56 JUMPIFNOTLT                      R13 R8 ; [+36]
       58 LOADN                            R13 0
       59 JUMPIFNOTLT                      R13 R12 ; [+33]
       61 GETUPVAL                         R13 0
       62 MOVE                             R14 R0
       63 MOVE                             R15 R4
       64 MOVE                             R16 R5
       65 CALL                             R13 3 -1
       66 RETURN                           R13 -1
       67 JUMP                             ; [+25]
       68 GETTABLEKS                       R13 R2 K10 ["X"]
       70 JUMPIFNOTLT                      R13 R7 ; [+22]
       72 GETTABLEKS                       R13 R2 K6 ["Y"]
       74 JUMPIFNOTLT                      R13 R8 ; [+18]
       76 GETTABLEKS                       R13 R3 K10 ["X"]
       78 JUMPIFNOTLT                      R7 R13 ; [+14]
       80 GETTABLEKS                       R13 R3 K6 ["Y"]
       82 JUMPIFNOTLT                      R8 R13 ; [+10]
       84 LOADN                            R13 0
       85 JUMPIFNOTLT                      R13 R12 ; [+7]
       87 GETUPVAL                         R13 1
       88 MOVE                             R14 R0
       89 MOVE                             R15 R4
       90 MOVE                             R16 R5
       91 CALL                             R13 3 -1
       92 RETURN                           R13 -1
       93 ADDK                             R7 R7 K5 [1]
       94 FORNLOOP                         R9
       95 LOADB                            R9 1
       96 RETURN                           R9 1

PROTO_3:
        0 GETTABLEKS                       R11 R3 K2 ["X"]
        2 GETTABLEKS                       R12 R2 K2 ["X"]
        4 SUB                              R10 R11 R12
        5 GETTABLEKS                       R12 R3 K3 ["Y"]
        7 GETTABLEKS                       R13 R2 K3 ["Y"]
        9 SUB                              R11 R12 R13
       10 MUL                              R9 R10 R11
       11 GETUPVAL                         R10 0
       12 MUL                              R8 R9 R10
       13 DIVK                             R7 R8 K1 [10000]
       14 MULK                             R6 R7 K0 [255]
       15 LOADN                            R7 0
       16 GETIMPORT                        R10 K6 [Vector2.new]
       18 LOADN                            R11 0
       19 LOADN                            R12 0
       20 CALL                             R10 2 1
       21 GETTABLEKS                       R11 R1 K7 ["Size"]
       23 NAMECALL                         R8 R1 K8 ["ReadPixelsBuffer"]
       25 CALL                             R8 3 1
       26 LOADN                            R9 0
       27 GETTABLEKS                       R12 R1 K7 ["Size"]
       29 GETTABLEKS                       R11 R12 K3 ["Y"]
       31 SUBK                             R10 R11 K9 [1]
       32 LOADN                            R13 0
       33 GETIMPORT                        R14 K12 [buffer.len]
       35 MOVE                             R15 R8
       36 CALL                             R14 1 1
       37 SUBK                             R11 R14 K9 [1]
       38 LOADN                            R12 4
       39 FORNPREP                         R11
       40 GETTABLEKS                       R15 R1 K7 ["Size"]
       42 GETTABLEKS                       R14 R15 K2 ["X"]
       44 JUMPIFNOTEQ                      R9 R14 ; [+3]
       46 LOADN                            R9 0
       47 SUBK                             R10 R10 K9 [1]
       48 ADDK                             R16 R13 K13 [3]
       49 FASTCALL2                        BUFFER_READU8 R8 R16 ; [+4]
       51 MOVE                             R15 R8
       52 GETIMPORT                        R14 K15 [buffer.readu8]
       54 CALL                             R14 2 1
       55 LOADN                            R15 0
       56 JUMPIFNOTLT                      R15 R14 ; [+18]
       58 GETTABLEKS                       R15 R2 K2 ["X"]
       60 JUMPIFLT                         R9 R15 ; [+13]
       62 GETTABLEKS                       R15 R2 K3 ["Y"]
       64 JUMPIFLT                         R10 R15 ; [+9]
       66 GETTABLEKS                       R15 R3 K2 ["X"]
       68 JUMPIFLT                         R15 R9 ; [+5]
       70 GETTABLEKS                       R15 R3 K3 ["Y"]
       72 JUMPIFNOTLT                      R15 R10 ; [+2]
       74 ADD                              R7 R7 R14
       75 ADDK                             R9 R9 K9 [1]
       76 FORNLOOP                         R11
       77 JUMPIFNOTLT                      R6 R7 ; [+7]
       79 GETUPVAL                         R11 1
       80 MOVE                             R12 R0
       81 MOVE                             R13 R4
       82 MOVE                             R14 R5
       83 CALL                             R11 3 -1
       84 RETURN                           R11 -1
       85 LOADB                            R11 1
       86 RETURN                           R11 1

PROTO_4:
        0 GETTABLEKS                       R11 R3 K2 ["X"]
        2 GETTABLEKS                       R12 R2 K2 ["X"]
        4 SUB                              R10 R11 R12
        5 GETTABLEKS                       R12 R3 K3 ["Y"]
        7 GETTABLEKS                       R13 R2 K3 ["Y"]
        9 SUB                              R11 R12 R13
       10 MUL                              R9 R10 R11
       11 GETUPVAL                         R10 0
       12 MUL                              R8 R9 R10
       13 DIVK                             R7 R8 K1 [10000]
       14 MULK                             R6 R7 K0 [255]
       15 LOADN                            R7 0
       16 GETIMPORT                        R10 K6 [Vector2.new]
       18 LOADN                            R11 0
       19 LOADN                            R12 0
       20 CALL                             R10 2 1
       21 GETTABLEKS                       R11 R1 K7 ["Size"]
       23 NAMECALL                         R8 R1 K8 ["ReadPixelsBuffer"]
       25 CALL                             R8 3 1
       26 LOADN                            R9 0
       27 GETTABLEKS                       R12 R1 K7 ["Size"]
       29 GETTABLEKS                       R11 R12 K3 ["Y"]
       31 SUBK                             R10 R11 K9 [1]
       32 LOADN                            R13 0
       33 GETIMPORT                        R14 K12 [buffer.len]
       35 MOVE                             R15 R8
       36 CALL                             R14 1 1
       37 SUBK                             R11 R14 K9 [1]
       38 LOADN                            R12 4
       39 FORNPREP                         R11
       40 GETTABLEKS                       R15 R1 K7 ["Size"]
       42 GETTABLEKS                       R14 R15 K2 ["X"]
       44 JUMPIFNOTEQ                      R9 R14 ; [+3]
       46 LOADN                            R9 0
       47 SUBK                             R10 R10 K9 [1]
       48 ADDK                             R16 R13 K13 [3]
       49 FASTCALL2                        BUFFER_READU8 R8 R16 ; [+4]
       51 MOVE                             R15 R8
       52 GETIMPORT                        R14 K15 [buffer.readu8]
       54 CALL                             R14 2 1
       55 LOADN                            R15 0
       56 JUMPIFNOTLT                      R15 R14 ; [+18]
       58 GETTABLEKS                       R15 R2 K2 ["X"]
       60 JUMPIFNOTLT                      R15 R9 ; [+14]
       62 GETTABLEKS                       R15 R2 K3 ["Y"]
       64 JUMPIFNOTLT                      R15 R10 ; [+10]
       66 GETTABLEKS                       R15 R3 K2 ["X"]
       68 JUMPIFNOTLT                      R9 R15 ; [+6]
       70 GETTABLEKS                       R15 R3 K3 ["Y"]
       72 JUMPIFNOTLT                      R10 R15 ; [+2]
       74 ADD                              R7 R7 R14
       75 ADDK                             R9 R9 K9 [1]
       76 FORNLOOP                         R11
       77 JUMPIFNOTLT                      R6 R7 ; [+7]
       79 GETUPVAL                         R11 1
       80 MOVE                             R12 R0
       81 MOVE                             R13 R4
       82 MOVE                             R14 R5
       83 CALL                             R11 3 -1
       84 RETURN                           R11 -1
       85 LOADB                            R11 1
       86 RETURN                           R11 1

PROTO_5:
        0 GETTABLEKS                       R6 R2 K0 ["UVMaxBound"]
        2 GETTABLEKS                       R7 R2 K1 ["UVMinBound"]
        4 SUB                              R5 R6 R7
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["new"]
        8 CALL                             R6 0 1
        9 MOVE                             R7 R3
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLEKS                       R14 R11 K3 ["MinBound"]
       15 GETTABLEKS                       R15 R2 K1 ["UVMinBound"]
       17 SUB                              R13 R14 R15
       18 DIV                              R12 R13 R5
       19 GETTABLEKS                       R15 R11 K4 ["MaxBound"]
       21 GETTABLEKS                       R16 R2 K1 ["UVMinBound"]
       23 SUB                              R14 R15 R16
       24 DIV                              R13 R14 R5
       25 GETTABLEKS                       R15 R1 K5 ["Size"]
       27 MUL                              R14 R12 R15
       28 GETTABLEKS                       R16 R1 K5 ["Size"]
       30 MUL                              R15 R13 R16
       31 GETUPVAL                         R16 1
       32 JUMPIFNOT                        R16 ; [+27]
       33 GETTABLEKS                       R16 R11 K6 ["isIncludeBound"]
       35 JUMPIFNOT                        R16 ; [+12]
       36 GETUPVAL                         R18 2
       37 MOVE                             R19 R0
       38 MOVE                             R20 R1
       39 MOVE                             R21 R14
       40 MOVE                             R22 R15
       41 MOVE                             R23 R11
       42 MOVE                             R24 R4
       43 CALL                             R18 6 -1
       44 NAMECALL                         R16 R6 K7 ["updateReasons"]
       46 CALL                             R16 -1 0
       47 JUMP                             ; [+23]
       48 GETUPVAL                         R18 3
       49 MOVE                             R19 R0
       50 MOVE                             R20 R1
       51 MOVE                             R21 R14
       52 MOVE                             R22 R15
       53 MOVE                             R23 R11
       54 MOVE                             R24 R4
       55 CALL                             R18 6 -1
       56 NAMECALL                         R16 R6 K7 ["updateReasons"]
       58 CALL                             R16 -1 0
       59 JUMP                             ; [+11]
       60 GETUPVAL                         R18 4
       61 MOVE                             R19 R0
       62 MOVE                             R20 R1
       63 MOVE                             R21 R14
       64 MOVE                             R22 R15
       65 MOVE                             R23 R11
       66 MOVE                             R24 R4
       67 CALL                             R18 6 -1
       68 NAMECALL                         R16 R6 K7 ["updateReasons"]
       70 CALL                             R16 -1 0
       71 FORGLOOP                         R7 2 ; [-59]
       73 NAMECALL                         R7 R6 K8 ["getFinalResults"]
       75 CALL                             R7 1 -1
       76 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["FailureReasonsAccumulator"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [game]
       28 LOADK                            R6 K11 ["ValidateMakeupZonesUseTolerance"]
       29 LOADB                            R7 0
       30 NAMECALL                         R4 R4 K12 ["DefineFastFlag"]
       32 CALL                             R4 3 1
       33 GETIMPORT                        R5 K10 [game]
       35 LOADK                            R7 K13 ["ValidateMakeupZoneIncludeToleranceHundredthsPercent"]
       36 LOADN                            R8 100
       37 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       39 CALL                             R5 3 1
       40 GETIMPORT                        R6 K10 [game]
       42 LOADK                            R8 K15 ["ValidateMakeupZoneExcludeHundredthsPercent"]
       43 LOADN                            R9 200
       44 NAMECALL                         R6 R6 K14 ["DefineFastInt"]
       46 CALL                             R6 3 1
       47 DUPCLOSURE                       R7 K16 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R8 K17 [PROTO_1]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R9 K18 [PROTO_2]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 DUPCLOSURE                       R10 K19 [PROTO_3]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R11 K20 [PROTO_4]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R12 K21 [PROTO_5]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R9
       66 RETURN                           R12 1
