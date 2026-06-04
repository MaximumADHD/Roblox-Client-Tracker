PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 MOVE                             R9 R2
        5 NAMECALL                         R7 R1 K1 ["Dot"]
        7 CALL                             R7 2 1
        8 FASTCALL1                        MATH_ACOS R7 ; [+2]
        9 GETIMPORT                        R6 K4 [math.acos]
       11 CALL                             R6 1 1
       12 FASTCALL1                        MATH_DEG R6 ; [+2]
       13 GETIMPORT                        R5 K6 [math.deg]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R7 1
       17 CALL                             R7 0 1
       18 JUMPIFNOT                        R7 ; [+3]
       19 JUMPIFNOT                        R3 ; [+2]
       20 GETUPVAL                         R6 2
       21 JUMP                             ; [+1]
       22 GETUPVAL                         R6 3
       23 JUMPIFNOTLT                      R6 R5 ; [+28]
       25 LOADB                            R9 0
       26 NEWTABLE                         R10 0 1
       28 GETIMPORT                        R11 K9 [string.format]
       30 LOADK                            R12 K10 ["%s is at a %d degree angle from the X,Y plane, it must be within %d degrees. Make sure the character is in I pose, A pose, or T pose"]
       31 GETUPVAL                         R14 1
       32 CALL                             R14 0 1
       33 JUMPIFNOT                        R14 ; [+8]
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETTABLEKS                       R14 R0 K11 ["Name"]
       37 LOADK                            R15 K12 [" ("]
       38 MOVE                             R16 R3
       39 LOADK                            R17 K13 [")"]
       40 CONCAT                           R13 R14 R17
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R13 R0 K11 ["Name"]
       44 MOVE                             R14 R5
       45 MOVE                             R15 R6
       46 CALL                             R11 4 -1
       47 SETLIST                          R10 R11 -1 [1]
       49 NAMECALL                         R7 R4 K14 ["updateReasons"]
       51 CALL                             R7 3 0
       52 NAMECALL                         R7 R4 K15 ["getFinalResults"]
       54 CALL                             R7 1 -1
       55 RETURN                           R7 -1

PROTO_1:
        0 MOVE                             R10 R2
        1 NAMECALL                         R8 R1 K0 ["Dot"]
        3 CALL                             R8 2 1
        4 FASTCALL1                        MATH_ACOS R8 ; [+2]
        5 GETIMPORT                        R7 K3 [math.acos]
        7 CALL                             R7 1 1
        8 FASTCALL1                        MATH_DEG R7 ; [+2]
        9 GETIMPORT                        R6 K5 [math.deg]
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R7 R1 K6 ["Y"]
       14 LOADN                            R8 0
       15 JUMPIFNOTLT                      R8 R7 ; [+2]
       17 JUMP                             ; [+1]
       18 MINUS                            R6 R6
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["new"]
       22 CALL                             R7 0 1
       23 JUMPIFLT                         R6 R3 ; [+3]
       25 JUMPIFNOTLT                      R4 R6 ; [+32]
       27 LOADB                            R10 0
       28 NEWTABLE                         R11 0 1
       30 GETIMPORT                        R12 K10 [string.format]
       32 LOADK                            R13 K11 ["%s is at a %d angle of the [%s] vector on the X,Y plane, it must be between %d and %d degrees. Make sure the character is in I pose, A pose, or T pose"]
       33 GETUPVAL                         R15 1
       34 CALL                             R15 0 1
       35 JUMPIFNOT                        R15 ; [+8]
       36 JUMPIFNOT                        R5 ; [+7]
       37 GETTABLEKS                       R15 R0 K12 ["Name"]
       39 LOADK                            R16 K13 [" ("]
       40 MOVE                             R17 R5
       41 LOADK                            R18 K14 [")"]
       42 CONCAT                           R14 R15 R18
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R14 R0 K12 ["Name"]
       46 MOVE                             R15 R6
       47 GETUPVAL                         R16 2
       48 MOVE                             R17 R2
       49 CALL                             R16 1 1
       50 MOVE                             R17 R3
       51 MOVE                             R18 R4
       52 CALL                             R12 6 -1
       53 SETLIST                          R11 R12 -1 [1]
       55 NAMECALL                         R8 R7 K15 ["updateReasons"]
       57 CALL                             R8 3 0
       58 NAMECALL                         R8 R7 K16 ["getFinalResults"]
       60 CALL                             R8 1 -1
       61 RETURN                           R8 -1

PROTO_2:
        0 JUMPIF                           R1 ; [+20]
        1 LOADB                            R3 0
        2 NEWTABLE                         R4 0 1
        4 GETIMPORT                        R5 K2 [string.format]
        6 LOADK                            R6 K3 ["Failed to calculate %s asset CFrame. Make sure the character is in I pose, A pose, or T pose, and the parts are not all in the same position"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R8 R0 K4 ["Name"]
       10 LOADK                            R9 K5 [" ("]
       11 MOVE                             R10 R2
       12 LOADK                            R11 K6 [")"]
       13 CONCAT                           R7 R8 R11
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R7 R0 K4 ["Name"]
       17 CALL                             R5 2 -1
       18 SETLIST                          R4 R5 -1 [1]
       20 RETURN                           R3 2
       21 GETTABLEKS                       R4 R1 K7 ["YVector"]
       23 GETTABLEKS                       R4 R4 K8 ["Unit"]
       25 LOADK                            R6 K9 [{0, 0, 1}]
       26 GETTABLEKS                       R7 R1 K7 ["YVector"]
       28 GETTABLEKS                       R7 R7 K8 ["Unit"]
       30 LOADK                            R9 K9 [{0, 0, 1}]
       31 NAMECALL                         R7 R7 K10 ["Dot"]
       33 CALL                             R7 2 1
       34 MUL                              R5 R6 R7
       35 SUB                              R3 R4 R5
       36 GETUPVAL                         R4 0
       37 MOVE                             R5 R3
       38 CALL                             R4 1 1
       39 JUMPIF                           R4 ; [+20]
       40 LOADB                            R4 0
       41 NEWTABLE                         R5 0 1
       43 GETIMPORT                        R6 K2 [string.format]
       45 LOADK                            R7 K11 ["%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose"]
       46 JUMPIFNOT                        R2 ; [+7]
       47 GETTABLEKS                       R9 R0 K4 ["Name"]
       49 LOADK                            R10 K5 [" ("]
       50 MOVE                             R11 R2
       51 LOADK                            R12 K6 [")"]
       52 CONCAT                           R8 R9 R12
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R8 R0 K4 ["Name"]
       56 CALL                             R6 2 -1
       57 SETLIST                          R5 R6 -1 [1]
       59 RETURN                           R4 2
       60 GETTABLEKS                       R5 R3 K8 ["Unit"]
       62 MINUS                            R4 R5
       63 GETTABLEKS                       R6 R1 K7 ["YVector"]
       65 GETTABLEKS                       R6 R6 K8 ["Unit"]
       67 MINUS                            R5 R6
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K12 ["new"]
       71 CALL                             R6 0 1
       72 GETUPVAL                         R9 2
       73 MOVE                             R10 R0
       74 MOVE                             R11 R4
       75 MOVE                             R12 R5
       76 MOVE                             R13 R2
       77 CALL                             R9 4 -1
       78 NAMECALL                         R7 R6 K13 ["updateReasons"]
       80 CALL                             R7 -1 0
       81 GETIMPORT                        R8 K17 [Enum.AssetType.RightArm]
       83 JUMPIFEQ                         R0 R8 ; [+5]
       85 GETIMPORT                        R8 K19 [Enum.AssetType.RightLeg]
       87 JUMPIFNOTEQ                      R0 R8 ; [+3]
       89 LOADK                            R7 K20 [{1, 0, 0}]
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K21 [{-1, 0, 0}]
       92 LOADNIL                          R8
       93 LOADNIL                          R9
       94 JUMPIFNOT                        R2 ; [+14]
       95 GETIMPORT                        R10 K17 [Enum.AssetType.RightArm]
       97 JUMPIFEQ                         R0 R10 ; [+5]
       99 GETIMPORT                        R10 K23 [Enum.AssetType.LeftArm]
      101 JUMPIFNOTEQ                      R0 R10 ; [+4]
      103 GETUPVAL                         R8 3
      104 GETUPVAL                         R9 4
      105 JUMP                             ; [+16]
      106 GETUPVAL                         R8 5
      107 GETUPVAL                         R9 6
      108 JUMP                             ; [+13]
      109 GETIMPORT                        R10 K17 [Enum.AssetType.RightArm]
      111 JUMPIFEQ                         R0 R10 ; [+5]
      113 GETIMPORT                        R10 K23 [Enum.AssetType.LeftArm]
      115 JUMPIFNOTEQ                      R0 R10 ; [+4]
      117 GETUPVAL                         R8 7
      118 GETUPVAL                         R9 8
      119 JUMP                             ; [+2]
      120 GETUPVAL                         R8 9
      121 GETUPVAL                         R9 10
      122 GETUPVAL                         R12 11
      123 MOVE                             R13 R0
      124 MOVE                             R14 R4
      125 MOVE                             R15 R7
      126 MOVE                             R16 R8
      127 MOVE                             R17 R9
      128 MOVE                             R18 R2
      129 CALL                             R12 6 -1
      130 NAMECALL                         R10 R6 K13 ["updateReasons"]
      132 CALL                             R10 -1 0
      133 NAMECALL                         R10 R6 K24 ["getFinalResults"]
      135 CALL                             R10 1 -1
      136 RETURN                           R10 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["calculateAllTransformsForAsset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["new"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 CALL                             R4 1 3
       13 FORGPREP                         R4
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R9 R9 K2 ["getAssetRigChild"]
       17 MOVE                             R10 R0
       18 MOVE                             R11 R8
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+18]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K3 ["calculatePartCFrameFromRigAttachments"]
       24 MOVE                             R10 R0
       25 MOVE                             R13 R8
       26 NAMECALL                         R11 R1 K4 ["FindFirstChild"]
       28 CALL                             R11 2 1
       29 GETTABLE                         R12 R2 R8
       30 CALL                             R9 3 1
       31 GETUPVAL                         R12 4
       32 MOVE                             R13 R0
       33 MOVE                             R14 R9
       34 MOVE                             R15 R8
       35 CALL                             R12 3 -1
       36 NAMECALL                         R10 R3 K5 ["updateReasons"]
       38 CALL                             R10 -1 0
       39 FORGLOOP                         R4 2 ; [-26]
       41 NAMECALL                         R4 R3 K6 ["getFinalResults"]
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1

PROTO_4:
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
       31 GETUPVAL                         R4 1
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+22]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K14 ["new"]
       37 CALL                             R4 0 1
       38 GETUPVAL                         R7 3
       39 MOVE                             R8 R2
       40 MOVE                             R9 R3
       41 CALL                             R7 2 -1
       42 NAMECALL                         R5 R4 K15 ["updateReasons"]
       44 CALL                             R5 -1 0
       45 GETUPVAL                         R7 4
       46 MOVE                             R8 R2
       47 MOVE                             R9 R0
       48 CALL                             R7 2 -1
       49 NAMECALL                         R5 R4 K15 ["updateReasons"]
       51 CALL                             R5 -1 0
       52 NAMECALL                         R5 R4 K16 ["getFinalResults"]
       54 CALL                             R5 1 -1
       55 RETURN                           R5 -1
       56 JUMPIF                           R3 ; [+12]
       57 LOADB                            R4 0
       58 NEWTABLE                         R5 0 1
       60 GETIMPORT                        R6 K19 [string.format]
       62 LOADK                            R7 K20 ["Failed to calculate %s asset CFrame. Make sure the character is in I pose, A pose, or T pose, and the parts are not all in the same position"]
       63 GETTABLEKS                       R8 R2 K21 ["Name"]
       65 CALL                             R6 2 -1
       66 SETLIST                          R5 R6 -1 [1]
       68 RETURN                           R4 2
       69 GETTABLEKS                       R5 R3 K22 ["YVector"]
       71 GETTABLEKS                       R5 R5 K23 ["Unit"]
       73 LOADK                            R7 K24 [{0, 0, 1}]
       74 GETTABLEKS                       R8 R3 K22 ["YVector"]
       76 GETTABLEKS                       R8 R8 K23 ["Unit"]
       78 LOADK                            R10 K24 [{0, 0, 1}]
       79 NAMECALL                         R8 R8 K25 ["Dot"]
       81 CALL                             R8 2 1
       82 MUL                              R6 R7 R8
       83 SUB                              R4 R5 R6
       84 GETUPVAL                         R5 5
       85 MOVE                             R6 R4
       86 CALL                             R5 1 1
       87 JUMPIF                           R5 ; [+12]
       88 LOADB                            R5 0
       89 NEWTABLE                         R6 0 1
       91 GETIMPORT                        R7 K19 [string.format]
       93 LOADK                            R8 K26 ["%s is pointing along the world Z vector. Make sure the character is in I pose, A pose, or T pose"]
       94 GETTABLEKS                       R9 R2 K21 ["Name"]
       96 CALL                             R7 2 -1
       97 SETLIST                          R6 R7 -1 [1]
       99 RETURN                           R5 2
      100 GETTABLEKS                       R6 R4 K23 ["Unit"]
      102 MINUS                            R5 R6
      103 GETTABLEKS                       R7 R3 K22 ["YVector"]
      105 GETTABLEKS                       R7 R7 K23 ["Unit"]
      107 MINUS                            R6 R7
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K14 ["new"]
      111 CALL                             R7 0 1
      112 GETUPVAL                         R10 6
      113 MOVE                             R11 R2
      114 MOVE                             R12 R5
      115 MOVE                             R13 R6
      116 CALL                             R10 3 -1
      117 NAMECALL                         R8 R7 K15 ["updateReasons"]
      119 CALL                             R8 -1 0
      120 GETIMPORT                        R9 K8 [Enum.AssetType.RightArm]
      122 JUMPIFEQ                         R2 R9 ; [+5]
      124 GETIMPORT                        R9 K12 [Enum.AssetType.RightLeg]
      126 JUMPIFNOTEQ                      R2 R9 ; [+3]
      128 LOADK                            R8 K27 [{1, 0, 0}]
      129 JUMP                             ; [+1]
      130 LOADK                            R8 K28 [{-1, 0, 0}]
      131 LOADNIL                          R9
      132 LOADNIL                          R10
      133 GETIMPORT                        R11 K8 [Enum.AssetType.RightArm]
      135 JUMPIFEQ                         R2 R11 ; [+5]
      137 GETIMPORT                        R11 K6 [Enum.AssetType.LeftArm]
      139 JUMPIFNOTEQ                      R2 R11 ; [+4]
      141 GETUPVAL                         R9 7
      142 GETUPVAL                         R10 8
      143 JUMP                             ; [+2]
      144 GETUPVAL                         R9 9
      145 GETUPVAL                         R10 10
      146 GETUPVAL                         R13 11
      147 MOVE                             R14 R2
      148 MOVE                             R15 R5
      149 MOVE                             R16 R8
      150 MOVE                             R17 R9
      151 MOVE                             R18 R10
      152 CALL                             R13 5 -1
      153 NAMECALL                         R11 R7 K15 ["updateReasons"]
      155 CALL                             R11 -1 0
      156 NAMECALL                         R11 R7 K16 ["getFinalResults"]
      158 CALL                             R11 1 -1
      159 RETURN                           R11 -1

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
       32 GETTABLEKS                       R5 R5 K9 ["getPartNamesInHierarchyOrder"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["util"]
       39 GETTABLEKS                       R6 R6 K10 ["AssetTraversalUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["util"]
       46 GETTABLEKS                       R7 R7 K11 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K12 ["flags"]
       53 GETTABLEKS                       R8 R8 K13 ["getFFlagUGCValidateStraightenLimbsPose"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["util"]
       60 GETTABLEKS                       R9 R9 K14 ["FailureReasonsAccumulator"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K16 [game]
       65 LOADK                            R11 K17 ["UGCValidatePoseDegFromXYPlane"]
       66 LOADN                            R12 20
       67 NAMECALL                         R9 R9 K18 ["DefineFastInt"]
       69 CALL                             R9 3 1
       70 GETIMPORT                        R10 K16 [game]
       72 LOADK                            R12 K19 ["UGCValidatePoseArmMinDegFromXVectorOnXYPlane"]
       73 LOADN                            R13 166
       74 NAMECALL                         R10 R10 K18 ["DefineFastInt"]
       76 CALL                             R10 3 1
       77 GETIMPORT                        R11 K16 [game]
       79 LOADK                            R13 K20 ["UGCValidatePoseArmMaxDegFromXVectorOnXYPlane"]
       80 LOADN                            R14 30
       81 NAMECALL                         R11 R11 K18 ["DefineFastInt"]
       83 CALL                             R11 3 1
       84 GETIMPORT                        R12 K16 [game]
       86 LOADK                            R14 K21 ["UGCValidatePoseLegMinDegFromXVectorOnXYPlane"]
       87 LOADN                            R15 163
       88 NAMECALL                         R12 R12 K18 ["DefineFastInt"]
       90 CALL                             R12 3 1
       91 GETIMPORT                        R13 K16 [game]
       93 LOADK                            R15 K22 ["UGCValidatePoseLegMaxDegFromXVectorOnXYPlane"]
       94 LOADN                            R16 196
       95 NAMECALL                         R13 R13 K18 ["DefineFastInt"]
       97 CALL                             R13 3 1
       98 GETIMPORT                        R14 K16 [game]
      100 LOADK                            R16 K23 ["UGCValidatePartDegFromXYPlane"]
      101 LOADN                            R17 30
      102 NAMECALL                         R14 R14 K18 ["DefineFastInt"]
      104 CALL                             R14 3 1
      105 GETIMPORT                        R15 K16 [game]
      107 LOADK                            R17 K24 ["UGCValidatePartArmMinDegFromXVectorOnXYPlane"]
      108 LOADN                            R18 146
      109 NAMECALL                         R15 R15 K18 ["DefineFastInt"]
      111 CALL                             R15 3 1
      112 GETIMPORT                        R16 K16 [game]
      114 LOADK                            R18 K25 ["UGCValidatePartArmMaxDegFromXVectorOnXYPlane"]
      115 LOADN                            R19 40
      116 NAMECALL                         R16 R16 K18 ["DefineFastInt"]
      118 CALL                             R16 3 1
      119 GETIMPORT                        R17 K16 [game]
      121 LOADK                            R19 K26 ["UGCValidatePartLegMinDegFromXVectorOnXYPlane"]
      122 LOADN                            R20 163
      123 NAMECALL                         R17 R17 K18 ["DefineFastInt"]
      125 CALL                             R17 3 1
      126 GETIMPORT                        R18 K16 [game]
      128 LOADK                            R20 K27 ["UGCValidatePartLegMaxDegFromXVectorOnXYPlane"]
      129 LOADN                            R21 196
      130 NAMECALL                         R18 R18 K18 ["DefineFastInt"]
      132 CALL                             R18 3 1
      133 DUPCLOSURE                       R19 K28 [PROTO_0]
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R9
      138 DUPCLOSURE                       R20 K29 [PROTO_1]
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R3
      142 DUPCLOSURE                       R21 K30 [PROTO_2]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R20
      155 DUPCLOSURE                       R22 K31 [PROTO_3]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R21
      161 DUPCLOSURE                       R23 K32 [PROTO_4]
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R20
      174 RETURN                           R23 1
