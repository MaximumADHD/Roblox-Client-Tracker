PROTO_0:
        0 MOVE                             R8 R3
        1 NAMECALL                         R6 R2 K0 ["Dot"]
        3 CALL                             R6 2 1
        4 FASTCALL1                        MATH_ACOS R6 ; [+2]
        5 GETIMPORT                        R5 K3 [math.acos]
        7 CALL                             R5 1 1
        8 FASTCALL1                        MATH_DEG R5 ; [+2]
        9 GETIMPORT                        R4 K5 [math.deg]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 JUMPIFNOTLT                      R5 R4 ; [+28]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K6 ["Keys"]
       18 GETTABLEKS                       R7 R7 K7 ["Pose_AngleFromXYPlane"]
       20 DUPTABLE                         R8 K11 [{"assetName", "angle", "limit"}]
       21 GETTABLEKS                       R9 R1 K12 ["Name"]
       23 SETTABLEKS                       R9 R8 K8 ["assetName"]
       25 GETIMPORT                        R9 K15 [string.format]
       27 LOADK                            R10 K16 ["%d"]
       28 MOVE                             R11 R4
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K9 ["angle"]
       32 GETIMPORT                        R9 K15 [string.format]
       34 LOADK                            R10 K16 ["%d"]
       35 GETUPVAL                         R11 0
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K10 ["limit"]
       39 NAMECALL                         R5 R0 K17 ["fail"]
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R10 R3
        1 NAMECALL                         R8 R2 K0 ["Dot"]
        3 CALL                             R8 2 1
        4 FASTCALL1                        MATH_ACOS R8 ; [+2]
        5 GETIMPORT                        R7 K3 [math.acos]
        7 CALL                             R7 1 1
        8 FASTCALL1                        MATH_DEG R7 ; [+2]
        9 GETIMPORT                        R6 K5 [math.deg]
       11 CALL                             R6 1 1
       12 GETTABLEKS                       R7 R2 K6 ["Y"]
       14 LOADN                            R8 0
       15 JUMPIFNOTLT                      R8 R7 ; [+2]
       17 JUMP                             ; [+1]
       18 MINUS                            R6 R6
       19 JUMPIFLT                         R6 R4 ; [+3]
       21 JUMPIFNOTLT                      R5 R6 ; [+40]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K7 ["Keys"]
       26 GETTABLEKS                       R9 R9 K8 ["Pose_AngleOnXYPlane"]
       28 DUPTABLE                         R10 K14 [{"assetName", "angle", "xVector", "minAngle", "maxAngle"}]
       29 GETTABLEKS                       R11 R1 K15 ["Name"]
       31 SETTABLEKS                       R11 R10 K9 ["assetName"]
       33 GETIMPORT                        R11 K18 [string.format]
       35 LOADK                            R12 K19 ["%d"]
       36 MOVE                             R13 R6
       37 CALL                             R11 2 1
       38 SETTABLEKS                       R11 R10 K10 ["angle"]
       40 GETUPVAL                         R11 1
       41 MOVE                             R12 R3
       42 CALL                             R11 1 1
       43 SETTABLEKS                       R11 R10 K11 ["xVector"]
       45 GETIMPORT                        R11 K18 [string.format]
       47 LOADK                            R12 K19 ["%d"]
       48 MOVE                             R13 R4
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K12 ["minAngle"]
       52 GETIMPORT                        R11 K18 [string.format]
       54 LOADK                            R12 K19 ["%d"]
       55 MOVE                             R13 R5
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R10 K13 ["maxAngle"]
       59 NAMECALL                         R7 R0 K20 ["fail"]
       61 CALL                             R7 3 0
       62 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
        5 GETTABLEKS                       R1 R1 K1 ["assetType"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
       10 GETTABLEKS                       R1 R1 K1 ["assetType"]
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R4 R1 K1 ["uploadEnum"]
        4 JUMPIFNOT                        R4 ; [+10]
        5 GETTABLEKS                       R4 R1 K1 ["uploadEnum"]
        7 GETTABLEKS                       R4 R4 K2 ["assetType"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
       12 GETTABLEKS                       R3 R3 K2 ["assetType"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R4 K6 [Enum.AssetType.LeftArm]
       20 JUMPIFEQ                         R3 R4 ; [+14]
       22 GETIMPORT                        R4 K8 [Enum.AssetType.RightArm]
       24 JUMPIFEQ                         R3 R4 ; [+10]
       26 GETIMPORT                        R4 K10 [Enum.AssetType.LeftLeg]
       28 JUMPIFEQ                         R3 R4 ; [+6]
       30 GETIMPORT                        R4 K12 [Enum.AssetType.RightLeg]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 RETURN                           R0 0
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K13 ["calculateAssetCFrame"]
       38 MOVE                             R5 R3
       39 MOVE                             R6 R2
       40 CALL                             R4 2 1
       41 JUMPIF                           R4 ; [+14]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K14 ["Keys"]
       45 GETTABLEKS                       R7 R7 K15 ["Pose_CFrameCalculationFailed"]
       47 DUPTABLE                         R8 K17 [{"assetName"}]
       48 GETTABLEKS                       R9 R3 K18 ["Name"]
       50 SETTABLEKS                       R9 R8 K16 ["assetName"]
       52 NAMECALL                         R5 R0 K19 ["fail"]
       54 CALL                             R5 3 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R6 R4 K20 ["YVector"]
       58 GETTABLEKS                       R6 R6 K21 ["Unit"]
       60 LOADK                            R8 K22 [{0, 0, 1}]
       61 GETTABLEKS                       R9 R4 K20 ["YVector"]
       63 GETTABLEKS                       R9 R9 K21 ["Unit"]
       65 LOADK                            R11 K22 [{0, 0, 1}]
       66 NAMECALL                         R9 R9 K23 ["Dot"]
       68 CALL                             R9 2 1
       69 MUL                              R7 R8 R9
       70 SUB                              R5 R6 R7
       71 GETUPVAL                         R6 2
       72 MOVE                             R7 R5
       73 CALL                             R6 1 1
       74 JUMPIF                           R6 ; [+14]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K14 ["Keys"]
       78 GETTABLEKS                       R8 R8 K24 ["Pose_PointingAlongZVector"]
       80 DUPTABLE                         R9 K17 [{"assetName"}]
       81 GETTABLEKS                       R10 R3 K18 ["Name"]
       83 SETTABLEKS                       R10 R9 K16 ["assetName"]
       85 NAMECALL                         R6 R0 K19 ["fail"]
       87 CALL                             R6 3 0
       88 RETURN                           R0 0
       89 GETTABLEKS                       R7 R5 K21 ["Unit"]
       91 MINUS                            R6 R7
       92 GETTABLEKS                       R8 R4 K20 ["YVector"]
       94 GETTABLEKS                       R8 R8 K21 ["Unit"]
       96 MINUS                            R7 R8
       97 GETUPVAL                         R8 3
       98 MOVE                             R9 R0
       99 MOVE                             R10 R3
      100 MOVE                             R11 R6
      101 MOVE                             R12 R7
      102 CALL                             R8 4 0
      103 GETIMPORT                        R9 K8 [Enum.AssetType.RightArm]
      105 JUMPIFEQ                         R3 R9 ; [+5]
      107 GETIMPORT                        R9 K12 [Enum.AssetType.RightLeg]
      109 JUMPIFNOTEQ                      R3 R9 ; [+3]
      111 LOADK                            R8 K25 [{1, 0, 0}]
      112 JUMP                             ; [+1]
      113 LOADK                            R8 K26 [{-1, 0, 0}]
      114 LOADNIL                          R9
      115 LOADNIL                          R10
      116 GETIMPORT                        R11 K8 [Enum.AssetType.RightArm]
      118 JUMPIFEQ                         R3 R11 ; [+5]
      120 GETIMPORT                        R11 K6 [Enum.AssetType.LeftArm]
      122 JUMPIFNOTEQ                      R3 R11 ; [+4]
      124 GETUPVAL                         R9 4
      125 GETUPVAL                         R10 5
      126 JUMP                             ; [+2]
      127 GETUPVAL                         R9 6
      128 GETUPVAL                         R10 7
      129 GETUPVAL                         R11 8
      130 MOVE                             R12 R0
      131 MOVE                             R13 R3
      132 MOVE                             R14 R6
      133 MOVE                             R15 R8
      134 MOVE                             R16 R9
      135 MOVE                             R17 R10
      136 CALL                             R11 6 0
      137 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["AssetCalculator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["canBeNormalized"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["prettyPrintVector3"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K13 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateMigratePoseBlocking"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K16 [game]
       60 LOADK                            R10 K17 ["UGCValidatePoseDegFromXYPlane"]
       61 LOADN                            R11 20
       62 NAMECALL                         R8 R8 K18 ["DefineFastInt"]
       64 CALL                             R8 3 1
       65 GETIMPORT                        R9 K16 [game]
       67 LOADK                            R11 K19 ["UGCValidatePoseArmMinDegFromXVectorOnXYPlane"]
       68 LOADN                            R12 -90
       69 NAMECALL                         R9 R9 K18 ["DefineFastInt"]
       71 CALL                             R9 3 1
       72 GETIMPORT                        R10 K16 [game]
       74 LOADK                            R12 K20 ["UGCValidatePoseArmMaxDegFromXVectorOnXYPlane"]
       75 LOADN                            R13 30
       76 NAMECALL                         R10 R10 K18 ["DefineFastInt"]
       78 CALL                             R10 3 1
       79 GETIMPORT                        R11 K16 [game]
       81 LOADK                            R13 K21 ["UGCValidatePoseLegMinDegFromXVectorOnXYPlane"]
       82 LOADN                            R14 -93
       83 NAMECALL                         R11 R11 K18 ["DefineFastInt"]
       85 CALL                             R11 3 1
       86 GETIMPORT                        R12 K16 [game]
       88 LOADK                            R14 K22 ["UGCValidatePoseLegMaxDegFromXVectorOnXYPlane"]
       89 LOADN                            R15 -60
       90 NAMECALL                         R12 R12 K18 ["DefineFastInt"]
       92 CALL                             R12 3 1
       93 NEWTABLE                         R13 8 0
       95 NEWTABLE                         R14 0 1
       97 GETTABLEKS                       R15 R2 K23 ["UploadCategory"]
       99 GETTABLEKS                       R15 R15 K24 ["TORSO_AND_LIMBS"]
      101 SETLIST                          R14 R15 1 [1]
      103 SETTABLEKS                       R14 R13 K25 ["categories"]
      105 NEWTABLE                         R14 0 1
      107 GETTABLEKS                       R15 R2 K26 ["SharedDataMember"]
      109 GETTABLEKS                       R15 R15 K27 ["rootInstance"]
      111 SETLIST                          R14 R15 1 [1]
      113 SETTABLEKS                       R14 R13 K28 ["requiredData"]
      115 SETTABLEKS                       R7 R13 K29 ["fflag"]
      117 NEWTABLE                         R14 0 0
      119 SETTABLEKS                       R14 R13 K30 ["expectedFailures"]
      121 DUPCLOSURE                       R14 K31 [PROTO_0]
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R3
      124 DUPCLOSURE                       R15 K32 [PROTO_1]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R6
      127 DUPCLOSURE                       R16 K33 [PROTO_2]
      128 DUPCLOSURE                       R17 K34 [PROTO_3]
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R15
      138 SETTABLEKS                       R17 R13 K35 ["run"]
      140 RETURN                           R13 1
