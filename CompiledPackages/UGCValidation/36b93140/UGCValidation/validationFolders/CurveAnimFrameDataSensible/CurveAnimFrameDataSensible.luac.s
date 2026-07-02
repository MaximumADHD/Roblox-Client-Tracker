PROTO_0:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 JUMPIFEQKN                       R0 K0 [∞] ; [+5]
        3 JUMPIFEQKN                       R0 K1 [-∞] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 NEWTABLE                         R2 0 0
        5 GETVARARGS                       R5 -1
        6 SETLIST                          R2 R5 -1 [1]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 JUMPIFNOTEQ                      R6 R6 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 LOADB                            R7 1
       19 JUMPIFEQKN                       R6 K2 [∞] ; [+5]
       21 JUMPIFEQKN                       R6 K3 [-∞] ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADB                            R7 0
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 2 ; [-18]
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["animFrames"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 MOVE                             R8 R7
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 GETUPVAL                         R13 0
       12 NAMECALL                         R14 R12 K2 ["GetComponents"]
       14 CALL                             R14 1 -1
       15 CALL                             R13 -1 1
       16 JUMPIF                           R13 ; [+9]
       17 GETUPVAL                         R15 1
       18 GETTABLEKS                       R15 R15 K3 ["Keys"]
       20 GETTABLEKS                       R15 R15 K4 ["CurveAnim_InvalidNumericalData"]
       22 NAMECALL                         R13 R0 K5 ["fail"]
       24 CALL                             R13 2 0
       25 RETURN                           R0 0
       26 FORGLOOP                         R8 2 ; [-16]
       28 FORGLOOP                         R3 2 ; [-22]
       30 GETTABLEKS                       R3 R2 K6 ["positionMagnitudeFrames"]
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 MOVE                             R8 R7
       36 LOADNIL                          R9
       37 LOADNIL                          R10
       38 FORGPREP                         R8
       39 GETUPVAL                         R13 0
       40 MOVE                             R14 R12
       41 CALL                             R13 1 1
       42 JUMPIF                           R13 ; [+9]
       43 GETUPVAL                         R15 1
       44 GETTABLEKS                       R15 R15 K3 ["Keys"]
       46 GETTABLEKS                       R15 R15 K4 ["CurveAnim_InvalidNumericalData"]
       48 NAMECALL                         R13 R0 K5 ["fail"]
       50 CALL                             R13 2 0
       51 RETURN                           R0 0
       52 FORGLOOP                         R8 2 ; [-14]
       54 FORGLOOP                         R3 2 ; [-20]
       56 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateCurveAnim"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationAnimationPackSupport"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K14 ["EMOTE_ANIMATION"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K15 ["categories"]
       56 MOVE                             R7 R5
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+11]
       59 GETTABLEKS                       R8 R6 K15 ["categories"]
       61 GETTABLEKS                       R9 R2 K13 ["UploadCategory"]
       63 GETTABLEKS                       R9 R9 K16 ["ANIMATION"]
       65 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       67 GETIMPORT                        R7 K19 [table.insert]
       69 CALL                             R7 2 0
       70 NEWTABLE                         R7 0 2
       72 GETTABLEKS                       R8 R2 K20 ["SharedDataMember"]
       74 GETTABLEKS                       R8 R8 K21 ["curveAnimations"]
       76 GETTABLEKS                       R9 R2 K20 ["SharedDataMember"]
       78 GETTABLEKS                       R9 R9 K22 ["curveAnimComputedFrames"]
       80 SETLIST                          R7 R8 2 [1]
       82 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       84 SETTABLEKS                       R4 R6 K24 ["fflag"]
       86 NEWTABLE                         R7 0 0
       88 SETTABLEKS                       R7 R6 K25 ["expectedFailures"]
       90 NEWTABLE                         R7 0 1
       92 GETTABLEKS                       R8 R2 K26 ["ValidationModule"]
       94 GETTABLEKS                       R8 R8 K27 ["CurveAnimDataAvailable"]
       96 SETLIST                          R7 R8 1 [1]
       98 SETTABLEKS                       R7 R6 K28 ["prereqTests"]
      100 DUPCLOSURE                       R7 K29 [PROTO_2]
      101 DUPCLOSURE                       R8 K30 [PROTO_3]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R8 R6 K31 ["run"]
      106 RETURN                           R6 1
