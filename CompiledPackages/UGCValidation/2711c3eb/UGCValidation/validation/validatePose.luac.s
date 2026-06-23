PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 MOVE                             R8 R2
        5 NAMECALL                         R6 R1 K1 ["Dot"]
        7 CALL                             R6 2 1
        8 FASTCALL1                        MATH_ACOS R6 ; [+2]
        9 GETIMPORT                        R5 K4 [math.acos]
       11 CALL                             R5 1 1
       12 FASTCALL1                        MATH_DEG R5 ; [+2]
       13 GETIMPORT                        R4 K6 [math.deg]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 JUMPIFNOTLT                      R5 R4 ; [+17]
       19 LOADB                            R7 0
       20 NEWTABLE                         R8 0 1
       22 GETIMPORT                        R9 K9 [string.format]
       24 LOADK                            R10 K10 ["%s is at a %d degree angle from the X,Y plane, it must be within %d degrees. Make sure the character is in I pose, A pose, or T pose"]
       25 GETTABLEKS                       R11 R0 K11 ["Name"]
       27 MOVE                             R12 R4
       28 GETUPVAL                         R13 1
       29 CALL                             R9 4 -1
       30 SETLIST                          R8 R9 -1 [1]
       32 NAMECALL                         R5 R3 K12 ["updateReasons"]
       34 CALL                             R5 3 0
       35 NAMECALL                         R5 R3 K13 ["getFinalResults"]
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1

PROTO_1:
        0 MOVE                             R9 R2
        1 NAMECALL                         R7 R1 K0 ["Dot"]
        3 CALL                             R7 2 1
        4 FASTCALL1                        MATH_ACOS R7 ; [+2]
        5 GETIMPORT                        R6 K3 [math.acos]
        7 CALL                             R6 1 1
        8 FASTCALL1                        MATH_DEG R6 ; [+2]
        9 GETIMPORT                        R5 K5 [math.deg]
       11 CALL                             R5 1 1
       12 GETTABLEKS                       R6 R1 K6 ["Y"]
       14 LOADN                            R7 0
       15 JUMPIFNOTLT                      R7 R6 ; [+2]
       17 JUMP                             ; [+1]
       18 MINUS                            R5 R5
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K7 ["new"]
       22 CALL                             R6 0 1
       23 JUMPIFLT                         R5 R3 ; [+3]
       25 JUMPIFNOTLT                      R4 R5 ; [+21]
       27 LOADB                            R9 0
       28 NEWTABLE                         R10 0 1
       30 GETIMPORT                        R11 K10 [string.format]
       32 LOADK                            R12 K11 ["%s is at a %d angle of the [%s] vector on the X,Y plane, it must be between %d and %d degrees. Make sure the character is in I pose, A pose, or T pose"]
       33 GETTABLEKS                       R13 R0 K12 ["Name"]
       35 MOVE                             R14 R5
       36 GETUPVAL                         R15 1
       37 MOVE                             R16 R2
       38 CALL                             R15 1 1
       39 MOVE                             R16 R3
       40 MOVE                             R17 R4
       41 CALL                             R11 6 -1
       42 SETLIST                          R10 R11 -1 [1]
       44 NAMECALL                         R7 R6 K13 ["updateReasons"]
       46 CALL                             R7 3 0
       47 NAMECALL                         R7 R6 K14 ["getFinalResults"]
       49 CALL                             R7 1 -1
       50 RETURN                           R7 -1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K6 [Enum.AssetType.LeftArm]
        9 JUMPIFEQ                         R2 R3 ; [+15]
       11 GETIMPORT                        R3 K8 [Enum.AssetType.RightArm]
       13 JUMPIFEQ                         R2 R3 ; [+11]
       15 GETIMPORT                        R3 K10 [Enum.AssetType.LeftLeg]
       17 JUMPIFEQ                         R2 R3 ; [+7]
       19 GETIMPORT                        R3 K12 [Enum.AssetType.RightLeg]
       21 JUMPIFEQ                         R2 R3 ; [+3]
       23 LOADB                            R3 1
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K13 ["calculateAssetCFrame"]
       28 MOVE                             R4 R2
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+12]
       32 LOADB                            R4 0
       33 NEWTABLE                         R5 0 1
       35 GETIMPORT                        R6 K16 [string.format]
       37 LOADK                            R7 K17 ["Failed to calculate %s asset CFrame. Make sure the character is in I pose, A pose, or T pose, and the parts are not all in the same position"]
       38 GETTABLEKS                       R8 R2 K18 ["Name"]
       40 CALL                             R6 2 -1
       41 SETLIST                          R5 R6 -1 [1]
       43 RETURN                           R4 2
       44 GETTABLEKS                       R5 R3 K19 ["YVector"]
       46 GETTABLEKS                       R5 R5 K20 ["Unit"]
       48 LOADK                            R7 K21 [{0, 0, 1}]
       49 GETTABLEKS                       R8 R3 K19 ["YVector"]
       51 GETTABLEKS                       R8 R8 K20 ["Unit"]
       53 LOADK                            R10 K21 [{0, 0, 1}]
       54 NAMECALL                         R8 R8 K22 ["Dot"]
       56 CALL                             R8 2 1
       57 MUL                              R6 R7 R8
       58 SUB                              R4 R5 R6
       59 GETUPVAL                         R5 1
       60 MOVE                             R6 R4
       61 CALL                             R5 1 1
       62 JUMPIF                           R5 ; [+12]
       63 LOADB                            R5 0
       64 NEWTABLE                         R6 0 1
       66 GETIMPORT                        R7 K16 [string.format]
       68 LOADK                            R8 K23 ["%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose"]
       69 GETTABLEKS                       R9 R2 K18 ["Name"]
       71 CALL                             R7 2 -1
       72 SETLIST                          R6 R7 -1 [1]
       74 RETURN                           R5 2
       75 GETTABLEKS                       R6 R4 K20 ["Unit"]
       77 MINUS                            R5 R6
       78 GETTABLEKS                       R7 R3 K19 ["YVector"]
       80 GETTABLEKS                       R7 R7 K20 ["Unit"]
       82 MINUS                            R6 R7
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K24 ["new"]
       86 CALL                             R7 0 1
       87 GETUPVAL                         R10 3
       88 MOVE                             R11 R2
       89 MOVE                             R12 R5
       90 MOVE                             R13 R6
       91 CALL                             R10 3 -1
       92 NAMECALL                         R8 R7 K25 ["updateReasons"]
       94 CALL                             R8 -1 0
       95 GETIMPORT                        R9 K8 [Enum.AssetType.RightArm]
       97 JUMPIFEQ                         R2 R9 ; [+5]
       99 GETIMPORT                        R9 K12 [Enum.AssetType.RightLeg]
      101 JUMPIFNOTEQ                      R2 R9 ; [+3]
      103 LOADK                            R8 K26 [{1, 0, 0}]
      104 JUMP                             ; [+1]
      105 LOADK                            R8 K27 [{-1, 0, 0}]
      106 LOADNIL                          R9
      107 LOADNIL                          R10
      108 GETIMPORT                        R11 K8 [Enum.AssetType.RightArm]
      110 JUMPIFEQ                         R2 R11 ; [+5]
      112 GETIMPORT                        R11 K6 [Enum.AssetType.LeftArm]
      114 JUMPIFNOTEQ                      R2 R11 ; [+4]
      116 GETUPVAL                         R9 4
      117 GETUPVAL                         R10 5
      118 JUMP                             ; [+2]
      119 GETUPVAL                         R9 6
      120 GETUPVAL                         R10 7
      121 GETUPVAL                         R13 8
      122 MOVE                             R14 R2
      123 MOVE                             R15 R5
      124 MOVE                             R16 R8
      125 MOVE                             R17 R9
      126 MOVE                             R18 R10
      127 CALL                             R13 5 -1
      128 NAMECALL                         R11 R7 K25 ["updateReasons"]
      130 CALL                             R11 -1 0
      131 NAMECALL                         R11 R7 K28 ["getFinalResults"]
      133 CALL                             R11 1 -1
      134 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["AssetCalculator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["canBeNormalized"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["util"]
       25 GETTABLEKS                       R4 R4 K8 ["prettyPrintVector3"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["util"]
       32 GETTABLEKS                       R5 R5 K9 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["util"]
       39 GETTABLEKS                       R6 R6 K10 ["FailureReasonsAccumulator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K12 [game]
       44 LOADK                            R8 K13 ["UGCValidatePoseDegFromXYPlane"]
       45 LOADN                            R9 20
       46 NAMECALL                         R6 R6 K14 ["DefineFastInt"]
       48 CALL                             R6 3 1
       49 GETIMPORT                        R7 K12 [game]
       51 LOADK                            R9 K15 ["UGCValidatePoseArmMinDegFromXVectorOnXYPlane"]
       52 LOADN                            R10 166
       53 NAMECALL                         R7 R7 K14 ["DefineFastInt"]
       55 CALL                             R7 3 1
       56 GETIMPORT                        R8 K12 [game]
       58 LOADK                            R10 K16 ["UGCValidatePoseArmMaxDegFromXVectorOnXYPlane"]
       59 LOADN                            R11 30
       60 NAMECALL                         R8 R8 K14 ["DefineFastInt"]
       62 CALL                             R8 3 1
       63 GETIMPORT                        R9 K12 [game]
       65 LOADK                            R11 K17 ["UGCValidatePoseLegMinDegFromXVectorOnXYPlane"]
       66 LOADN                            R12 163
       67 NAMECALL                         R9 R9 K14 ["DefineFastInt"]
       69 CALL                             R9 3 1
       70 GETIMPORT                        R10 K12 [game]
       72 LOADK                            R12 K18 ["UGCValidatePoseLegMaxDegFromXVectorOnXYPlane"]
       73 LOADN                            R13 196
       74 NAMECALL                         R10 R10 K14 ["DefineFastInt"]
       76 CALL                             R10 3 1
       77 DUPCLOSURE                       R11 K19 [PROTO_0]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R12 K20 [PROTO_1]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 DUPCLOSURE                       R13 K21 [PROTO_2]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 RETURN                           R13 1
