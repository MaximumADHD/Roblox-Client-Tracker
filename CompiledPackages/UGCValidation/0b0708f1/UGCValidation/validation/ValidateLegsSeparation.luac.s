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
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        5 FASTCALL1                        ASSERT R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K4 [assert]
        9 CALL                             R4 1 0
       10 GETIMPORT                        R4 K8 [Enum.AssetType.RightLeg]
       12 JUMPIFEQ                         R3 R4 ; [+7]
       14 GETIMPORT                        R4 K10 [Enum.AssetType.LeftLeg]
       16 JUMPIFEQ                         R3 R4 ; [+3]
       18 LOADB                            R4 1
       19 RETURN                           R4 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K11 ["new"]
       23 CALL                             R4 0 1
       24 GETUPVAL                         R7 1
       25 MOVE                             R8 R0
       26 MOVE                             R9 R3
       27 CALL                             R7 2 -1
       28 NAMECALL                         R5 R4 K12 ["updateReasons"]
       30 CALL                             R5 -1 0
       31 NAMECALL                         R5 R4 K13 ["getFinalResults"]
       33 CALL                             R5 1 1
       34 JUMPIF                           R5 ; [+11]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K14 ["reportFailure"]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K15 ["ErrorType"]
       41 GETTABLEKS                       R6 R7 K16 ["validateLegsSeparation_InvalidAttachmentPosition"]
       43 LOADNIL                          R7
       44 MOVE                             R8 R1
       45 CALL                             R5 3 0
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R5 R6 K17 ["recordScriptTime"]
       49 GETIMPORT                        R7 K19 [script]
       51 GETTABLEKS                       R6 R7 K20 ["Name"]
       53 MOVE                             R7 R2
       54 MOVE                             R8 R1
       55 CALL                             R5 3 0
       56 NAMECALL                         R5 R4 K13 ["getFinalResults"]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R3 K8 ["getFFlagUGCValidateLegFullBodySeparation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R3 K9 ["GetFStringUGCValidateLegHipAttachmentRange"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R3 K10 ["GetFStringUGCValidateAllowedLegOverlapMultiplier"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R0 K11 ["util"]
       36 GETIMPORT                        R8 K4 [require]
       38 GETTABLEKS                       R9 R7 K12 ["Types"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K4 [require]
       43 GETTABLEKS                       R10 R7 K13 ["FailureReasonsAccumulator"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R7 K14 ["BoundsDataUtils"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R7 K15 ["BoundsCalculator"]
       55 CALL                             R11 1 1
       56 NEWTABLE                         R12 2 0
       58 DUPCLOSURE                       R13 K16 [PROTO_0]
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R14 K17 [PROTO_1]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R14 R12 K18 ["validateAsset"]
       66 DUPCLOSURE                       R14 K19 [PROTO_2]
       67 CAPTURE                          VAL R10
       68 DUPCLOSURE                       R15 K20 [PROTO_3]
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R16 K21 [PROTO_4]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R16 R12 K22 ["validateFullBody"]
       81 RETURN                           R12 1
