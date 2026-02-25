PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.AssetType.RightLeg]
        2 JUMPIFNOTEQ                      R1 R2 ; [+46]
        4 GETTABLEKS                       R5 R0 K4 ["RightUpperLeg"]
        6 GETTABLEKS                       R4 R5 K5 ["Size"]
        8 GETTABLEKS                       R3 R4 K6 ["X"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K7 ["asNumber"]
       13 CALL                             R4 0 1
       14 MUL                              R2 R3 R4
       15 GETTABLEKS                       R7 R0 K4 ["RightUpperLeg"]
       17 GETTABLEKS                       R6 R7 K8 ["RightHipRigAttachment"]
       19 GETTABLEKS                       R5 R6 K9 ["CFrame"]
       21 GETTABLEKS                       R4 R5 K10 ["Position"]
       23 GETTABLEKS                       R3 R4 K6 ["X"]
       25 JUMPIFNOTLT                      R2 R3 ; [+72]
       27 LOADB                            R3 0
       28 NEWTABLE                         R4 0 1
       30 GETIMPORT                        R5 K13 [string.format]
       32 LOADK                            R6 K14 ["RightUpperLeg.RightHipRigAttachment.CFrame.Position.X is %.2f and cannot be greater than %.2f. Please fix the Attachment."]
       33 GETTABLEKS                       R11 R0 K4 ["RightUpperLeg"]
       35 GETTABLEKS                       R10 R11 K8 ["RightHipRigAttachment"]
       37 GETTABLEKS                       R9 R10 K9 ["CFrame"]
       39 GETTABLEKS                       R8 R9 K10 ["Position"]
       41 GETTABLEKS                       R7 R8 K6 ["X"]
       43 MOVE                             R8 R2
       44 CALL                             R5 3 -1
       45 SETLIST                          R4 R5 -1 [1]
       47 RETURN                           R3 2
       48 JUMP                             ; [+49]
       49 GETIMPORT                        R2 K16 [Enum.AssetType.LeftLeg]
       51 JUMPIFNOTEQ                      R1 R2 ; [+46]
       53 GETTABLEKS                       R6 R0 K17 ["LeftUpperLeg"]
       55 GETTABLEKS                       R5 R6 K5 ["Size"]
       57 GETTABLEKS                       R4 R5 K6 ["X"]
       59 MINUS                            R3 R4
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R4 R5 K7 ["asNumber"]
       63 CALL                             R4 0 1
       64 MUL                              R2 R3 R4
       65 GETTABLEKS                       R7 R0 K17 ["LeftUpperLeg"]
       67 GETTABLEKS                       R6 R7 K18 ["LeftHipRigAttachment"]
       69 GETTABLEKS                       R5 R6 K9 ["CFrame"]
       71 GETTABLEKS                       R4 R5 K10 ["Position"]
       73 GETTABLEKS                       R3 R4 K6 ["X"]
       75 JUMPIFNOTLT                      R3 R2 ; [+22]
       77 LOADB                            R3 0
       78 NEWTABLE                         R4 0 1
       80 GETIMPORT                        R5 K13 [string.format]
       82 LOADK                            R6 K19 ["LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X is %.2f and cannot be less than %.2f. Please fix the Attachment."]
       83 GETTABLEKS                       R11 R0 K17 ["LeftUpperLeg"]
       85 GETTABLEKS                       R10 R11 K18 ["LeftHipRigAttachment"]
       87 GETTABLEKS                       R9 R10 K9 ["CFrame"]
       89 GETTABLEKS                       R8 R9 K10 ["Position"]
       91 GETTABLEKS                       R7 R8 K6 ["X"]
       93 MOVE                             R8 R2
       94 CALL                             R5 3 -1
       95 SETLIST                          R4 R5 -1 [1]
       97 RETURN                           R3 2
       98 LOADB                            R2 1
       99 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K1 [tick]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
       10 FASTCALL1                        ASSERT R3 ; [+3]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 1 0
       15 GETIMPORT                        R4 K8 [Enum.AssetType.RightLeg]
       17 JUMPIFEQ                         R3 R4 ; [+7]
       19 GETIMPORT                        R4 K10 [Enum.AssetType.LeftLeg]
       21 JUMPIFEQ                         R3 R4 ; [+3]
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K11 ["new"]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R7 2
       30 MOVE                             R8 R0
       31 MOVE                             R9 R3
       32 CALL                             R7 2 -1
       33 NAMECALL                         R5 R4 K12 ["updateReasons"]
       35 CALL                             R5 -1 0
       36 NAMECALL                         R5 R4 K13 ["getFinalResults"]
       38 CALL                             R5 1 1
       39 JUMPIF                           R5 ; [+11]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R5 R6 K14 ["reportFailure"]
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R7 R8 K15 ["ErrorType"]
       46 GETTABLEKS                       R6 R7 K16 ["validateLegsSeparation_InvalidAttachmentPosition"]
       48 LOADNIL                          R7
       49 MOVE                             R8 R1
       50 CALL                             R5 3 0
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R5 R6 K17 ["recordScriptTime"]
       54 GETIMPORT                        R7 K19 [script]
       56 GETTABLEKS                       R6 R7 K20 ["Name"]
       58 MOVE                             R7 R2
       59 MOVE                             R8 R1
       60 CALL                             R5 3 0
       61 NAMECALL                         R5 R4 K13 ["getFinalResults"]
       63 CALL                             R5 1 -1
       64 RETURN                           R5 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K0 ["combineBounds"]
        9 MOVE                             R9 R2
       10 GETTABLE                         R11 R0 R7
       11 GETTABLEKS                       R10 R11 K1 ["boundsData"]
       13 CALL                             R8 2 1
       14 MOVE                             R2 R8
       15 FORGLOOP                         R3 2 ; [-10]
       17 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["calculateIndividualFullBodyPartsData"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADB                            R6 0
        7 CALL                             R2 4 3
        8 JUMPIF                           R2 ; [+3]
        9 LOADB                            R5 0
       10 MOVE                             R6 R3
       11 RETURN                           R5 2
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R4
       14 NEWTABLE                         R7 0 3
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K1 ["NAMED_R15_BODY_PARTS"]
       19 GETTABLEKS                       R8 R9 K2 ["LeftUpperLeg"]
       21 GETUPVAL                         R11 2
       22 GETTABLEKS                       R10 R11 K1 ["NAMED_R15_BODY_PARTS"]
       24 GETTABLEKS                       R9 R10 K3 ["LeftLowerLeg"]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K1 ["NAMED_R15_BODY_PARTS"]
       29 GETTABLEKS                       R10 R11 K4 ["LeftFoot"]
       31 SETLIST                          R7 R8 3 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R6 R7 K5 ["calculateBoundsCenters"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 1
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R7 R8 K6 ["calculateBoundsDimensions"]
       42 MOVE                             R8 R5
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 1
       45 MOVE                             R9 R4
       46 NEWTABLE                         R10 0 3
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R12 R13 K1 ["NAMED_R15_BODY_PARTS"]
       51 GETTABLEKS                       R11 R12 K7 ["RightUpperLeg"]
       53 GETUPVAL                         R14 2
       54 GETTABLEKS                       R13 R14 K1 ["NAMED_R15_BODY_PARTS"]
       56 GETTABLEKS                       R12 R13 K8 ["RightLowerLeg"]
       58 GETUPVAL                         R15 2
       59 GETTABLEKS                       R14 R15 K1 ["NAMED_R15_BODY_PARTS"]
       61 GETTABLEKS                       R13 R14 K9 ["RightFoot"]
       63 SETLIST                          R10 R11 3 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R9 R10 K5 ["calculateBoundsCenters"]
       69 MOVE                             R10 R8
       70 CALL                             R9 1 1
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R10 R11 K6 ["calculateBoundsDimensions"]
       74 MOVE                             R11 R8
       75 CALL                             R10 1 1
       76 JUMPIFNOT                        R6 ; [+3]
       77 JUMPIFNOT                        R7 ; [+2]
       78 JUMPIFNOT                        R9 ; [+1]
       79 JUMPIF                           R10 ; [+2]
       80 LOADB                            R11 1
       81 RETURN                           R11 1
       82 GETTABLEKS                       R12 R9 K10 ["X"]
       84 GETTABLEKS                       R13 R6 K10 ["X"]
       86 SUB                              R11 R12 R13
       87 GETTABLEKS                       R14 R7 K10 ["X"]
       89 GETTABLEKS                       R15 R10 K10 ["X"]
       91 ADD                              R13 R14 R15
       92 MULK                             R12 R13 K11 [0.5]
       93 SUB                              R13 R12 R11
       94 LOADN                            R14 0
       95 JUMPIFNOTLE                      R13 R14 ; [+3]
       97 LOADB                            R14 1
       98 RETURN                           R14 1
       99 GETTABLEKS                       R15 R7 K10 ["X"]
      101 GETUPVAL                         R17 4
      102 GETTABLEKS                       R16 R17 K12 ["asNumber"]
      104 CALL                             R16 0 1
      105 MUL                              R14 R15 R16
      106 GETTABLEKS                       R16 R10 K10 ["X"]
      108 GETUPVAL                         R18 4
      109 GETTABLEKS                       R17 R18 K12 ["asNumber"]
      111 CALL                             R17 0 1
      112 MUL                              R15 R16 R17
      113 JUMPIFLT                         R14 R13 ; [+3]
      115 JUMPIFNOTLT                      R15 R13 ; [+14]
      117 LOADB                            R16 0
      118 NEWTABLE                         R17 0 1
      120 GETIMPORT                        R18 K15 [string.format]
      122 LOADK                            R19 K16 ["The legs overlap by %.2f studs on the x axis. %.2f is the left leg maximum. %.2f is the right leg maximum. Please adjust the legs to reduce overlap."]
      123 MOVE                             R20 R13
      124 MOVE                             R21 R14
      125 MOVE                             R22 R15
      126 CALL                             R18 4 -1
      127 SETLIST                          R17 R18 -1 [1]
      129 RETURN                           R16 2
      130 LOADB                            R16 1
      131 RETURN                           R16 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K1 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["new"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K3 ["updateReasons"]
       18 CALL                             R4 -1 0
       19 NAMECALL                         R4 R3 K4 ["getFinalResults"]
       21 CALL                             R4 1 1
       22 JUMPIF                           R4 ; [+11]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K5 ["reportFailure"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R6 R7 K6 ["ErrorType"]
       29 GETTABLEKS                       R5 R6 K7 ["validateLegsSeparation_LegsOverlap"]
       31 LOADNIL                          R6
       32 MOVE                             R7 R1
       33 CALL                             R4 3 0
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K8 ["recordScriptTime"]
       37 GETIMPORT                        R6 K10 [script]
       39 GETTABLEKS                       R5 R6 K11 ["Name"]
       41 MOVE                             R6 R2
       42 MOVE                             R7 R1
       43 CALL                             R4 3 0
       44 NAMECALL                         R4 R3 K4 ["getFinalResults"]
       46 CALL                             R4 1 -1
       47 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R0 K7 ["flags"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R3 K8 ["getFFlagUGCValidateLegAssetSeparation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R3 K9 ["getFFlagUGCValidateLegFullBodySeparation"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R3 K10 ["GetFStringUGCValidateLegHipAttachmentRange"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETTABLEKS                       R8 R3 K11 ["GetFStringUGCValidateAllowedLegOverlapMultiplier"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R0 K12 ["util"]
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R8 K13 ["Types"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R8 K14 ["FailureReasonsAccumulator"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R8 K15 ["BoundsDataUtils"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K4 [require]
       58 GETTABLEKS                       R13 R8 K16 ["BoundsCalculator"]
       60 CALL                             R12 1 1
       61 NEWTABLE                         R13 2 0
       63 DUPCLOSURE                       R14 K17 [PROTO_0]
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R15 K18 [PROTO_1]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R14
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R15 R13 K19 ["validateAsset"]
       72 DUPCLOSURE                       R15 K20 [PROTO_2]
       73 CAPTURE                          VAL R11
       74 DUPCLOSURE                       R16 K21 [PROTO_3]
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R17 K22 [PROTO_4]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R16
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R17 R13 K23 ["validateFullBody"]
       87 RETURN                           R13 1
