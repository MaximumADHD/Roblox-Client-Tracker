PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["assetTypeEnum"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["reportFailure"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["ErrorType"]
        8 GETTABLEKS                       R5 R5 K3 ["validateMakeupDecal_UVZoneError"]
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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["reportFailure"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["ErrorType"]
        8 GETTABLEKS                       R5 R5 K3 ["validateMakeupDecal_UVZoneError"]
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
       27 GETTABLEKS                       R11 R1 K7 ["Size"]
       29 GETTABLEKS                       R11 R11 K3 ["Y"]
       31 SUBK                             R10 R11 K9 [1]
       32 LOADN                            R13 0
       33 GETIMPORT                        R14 K12 [buffer.len]
       35 MOVE                             R15 R8
       36 CALL                             R14 1 1
       37 SUBK                             R11 R14 K9 [1]
       38 LOADN                            R12 4
       39 FORNPREP                         R11
       40 GETTABLEKS                       R14 R1 K7 ["Size"]
       42 GETTABLEKS                       R14 R14 K2 ["X"]
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
       27 GETTABLEKS                       R11 R1 K7 ["Size"]
       29 GETTABLEKS                       R11 R11 K3 ["Y"]
       31 SUBK                             R10 R11 K9 [1]
       32 LOADN                            R13 0
       33 GETIMPORT                        R14 K12 [buffer.len]
       35 MOVE                             R15 R8
       36 CALL                             R14 1 1
       37 SUBK                             R11 R14 K9 [1]
       38 LOADN                            R12 4
       39 FORNPREP                         R11
       40 GETTABLEKS                       R14 R1 K7 ["Size"]
       42 GETTABLEKS                       R14 R14 K2 ["X"]
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

PROTO_4:
        0 GETTABLEKS                       R6 R2 K0 ["UVMaxBound"]
        2 GETTABLEKS                       R7 R2 K1 ["UVMinBound"]
        4 SUB                              R5 R6 R7
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K2 ["new"]
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
       31 GETTABLEKS                       R16 R11 K6 ["isIncludeBound"]
       33 JUMPIFNOT                        R16 ; [+12]
       34 GETUPVAL                         R18 1
       35 MOVE                             R19 R0
       36 MOVE                             R20 R1
       37 MOVE                             R21 R14
       38 MOVE                             R22 R15
       39 MOVE                             R23 R11
       40 MOVE                             R24 R4
       41 CALL                             R18 6 -1
       42 NAMECALL                         R16 R6 K7 ["updateReasons"]
       44 CALL                             R16 -1 0
       45 JUMP                             ; [+11]
       46 GETUPVAL                         R18 2
       47 MOVE                             R19 R0
       48 MOVE                             R20 R1
       49 MOVE                             R21 R14
       50 MOVE                             R22 R15
       51 MOVE                             R23 R11
       52 MOVE                             R24 R4
       53 CALL                             R18 6 -1
       54 NAMECALL                         R16 R6 K7 ["updateReasons"]
       56 CALL                             R16 -1 0
       57 FORGLOOP                         R7 2 ; [-45]
       59 NAMECALL                         R7 R6 K8 ["getFinalResults"]
       61 CALL                             R7 1 -1
       62 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["FailureReasonsAccumulator"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [game]
       28 LOADK                            R6 K11 ["ValidateMakeupZoneIncludeToleranceHundredthsPercent"]
       29 LOADN                            R7 100
       30 NAMECALL                         R4 R4 K12 ["DefineFastInt"]
       32 CALL                             R4 3 1
       33 GETIMPORT                        R5 K10 [game]
       35 LOADK                            R7 K13 ["ValidateMakeupZoneExcludeHundredthsPercent"]
       36 LOADN                            R8 200
       37 NAMECALL                         R5 R5 K12 ["DefineFastInt"]
       39 CALL                             R5 3 1
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R7 K15 [PROTO_1]
       43 CAPTURE                          VAL R1
       44 DUPCLOSURE                       R8 K16 [PROTO_2]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R9 K17 [PROTO_3]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R10 K18 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R9
       54 RETURN                           R10 1
