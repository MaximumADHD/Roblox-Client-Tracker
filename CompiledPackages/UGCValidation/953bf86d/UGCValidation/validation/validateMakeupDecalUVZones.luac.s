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
       18 LOADK                            R7 K7 ["Opague area of ColorMap for %s does not fall within allowed UV area of [%s] and [%s] for asset type %s"]
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
       18 LOADK                            R7 K7 ["Opague pixels in ColorMap for %s were found within a restricted UV area of [%s] and [%s] for asset type %s"]
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
       31 GETUPVAL                         R18 1
       32 MOVE                             R19 R0
       33 MOVE                             R20 R1
       34 MOVE                             R21 R14
       35 MOVE                             R22 R15
       36 MOVE                             R23 R11
       37 MOVE                             R24 R4
       38 CALL                             R18 6 -1
       39 NAMECALL                         R16 R6 K6 ["updateReasons"]
       41 CALL                             R16 -1 0
       42 FORGLOOP                         R7 2 ; [-30]
       44 NAMECALL                         R7 R6 K7 ["getFinalResults"]
       46 CALL                             R7 1 -1
       47 RETURN                           R7 -1

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
       26 DUPCLOSURE                       R4 K9 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 DUPCLOSURE                       R5 K10 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 DUPCLOSURE                       R6 K11 [PROTO_2]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R7 K12 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 RETURN                           R7 1
