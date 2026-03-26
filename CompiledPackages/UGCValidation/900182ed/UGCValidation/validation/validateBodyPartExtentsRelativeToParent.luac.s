PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["reportFailure"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["ErrorType"]
        6 GETTABLEKS                       R5 R6 K2 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
        8 LOADNIL                          R6
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 LOADB                            R4 0
       12 NEWTABLE                         R5 0 1
       14 GETIMPORT                        R6 K5 [string.format]
       16 LOADK                            R7 K6 ["%s cannot extend above %s. You can adjust how the parts are put together by moving %s"]
       17 GETTABLEKS                       R8 R1 K7 ["Name"]
       19 GETTABLEKS                       R9 R0 K7 ["Name"]
       21 MOVE                             R10 R2
       22 CALL                             R6 4 -1
       23 SETLIST                          R5 R6 -1 [1]
       25 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["reportFailure"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["ErrorType"]
        6 GETTABLEKS                       R5 R6 K2 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
        8 LOADNIL                          R6
        9 MOVE                             R7 R3
       10 CALL                             R4 3 0
       11 LOADB                            R4 0
       12 NEWTABLE                         R5 0 1
       14 GETIMPORT                        R6 K5 [string.format]
       16 LOADK                            R7 K6 ["%s cannot extend below %s. You can adjust how the parts are put together by moving %s"]
       17 GETTABLEKS                       R8 R0 K7 ["Name"]
       19 GETTABLEKS                       R9 R1 K7 ["Name"]
       21 MOVE                             R10 R2
       22 CALL                             R6 4 -1
       23 SETLIST                          R5 R6 -1 [1]
       25 RETURN                           R4 2

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["new"]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R8 R0 K1 ["Name"]
        6 GETTABLE                         R7 R2 R8
        7 GETTABLEKS                       R6 R7 K2 ["boundsData"]
        9 GETTABLEKS                       R9 R1 K1 ["Name"]
       11 GETTABLE                         R8 R2 R9
       12 GETTABLEKS                       R7 R8 K2 ["boundsData"]
       14 GETTABLEKS                       R8 R7 K3 ["maxOverall"]
       16 JUMPIFNOT                        R8 ; [+22]
       17 GETTABLEKS                       R8 R6 K3 ["maxOverall"]
       19 JUMPIFNOT                        R8 ; [+19]
       20 GETTABLEKS                       R9 R7 K3 ["maxOverall"]
       22 GETTABLEKS                       R8 R9 K4 ["Y"]
       24 GETTABLEKS                       R10 R6 K3 ["maxOverall"]
       26 GETTABLEKS                       R9 R10 K4 ["Y"]
       28 JUMPIFNOTLT                      R9 R8 ; [+10]
       30 GETUPVAL                         R10 1
       31 MOVE                             R11 R0
       32 MOVE                             R12 R1
       33 MOVE                             R13 R3
       34 MOVE                             R14 R4
       35 CALL                             R10 4 -1
       36 NAMECALL                         R8 R5 K5 ["updateReasons"]
       38 CALL                             R8 -1 0
       39 GETTABLEKS                       R8 R6 K6 ["minOverall"]
       41 JUMPIFNOT                        R8 ; [+22]
       42 GETTABLEKS                       R8 R7 K6 ["minOverall"]
       44 JUMPIFNOT                        R8 ; [+19]
       45 GETTABLEKS                       R9 R6 K6 ["minOverall"]
       47 GETTABLEKS                       R8 R9 K4 ["Y"]
       49 GETTABLEKS                       R10 R7 K6 ["minOverall"]
       51 GETTABLEKS                       R9 R10 K4 ["Y"]
       53 JUMPIFNOTLT                      R8 R9 ; [+10]
       55 GETUPVAL                         R10 2
       56 MOVE                             R11 R0
       57 MOVE                             R12 R1
       58 MOVE                             R13 R3
       59 MOVE                             R14 R4
       60 CALL                             R10 4 -1
       61 NAMECALL                         R8 R5 K5 ["updateReasons"]
       63 CALL                             R8 -1 0
       64 NAMECALL                         R8 R5 K7 ["getFinalResults"]
       66 CALL                             R8 1 -1
       67 RETURN                           R8 -1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 MOVE                             R7 R2
        5 NAMECALL                         R5 R1 K1 ["FindFirstChild"]
        7 CALL                             R5 2 1
        8 MOVE                             R8 R2
        9 NAMECALL                         R6 R0 K1 ["FindFirstChild"]
       11 CALL                             R6 2 1
       12 FASTCALL1                        ASSERT R5 ; [+3]
       13 MOVE                             R8 R5
       14 GETIMPORT                        R7 K3 [assert]
       16 CALL                             R7 1 0
       17 FASTCALL1                        ASSERT R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K3 [assert]
       21 CALL                             R7 1 0
       22 GETUPVAL                         R7 1
       23 MOVE                             R8 R1
       24 MOVE                             R9 R3
       25 CALL                             R7 2 1
       26 GETUPVAL                         R8 1
       27 MOVE                             R9 R0
       28 MOVE                             R10 R3
       29 CALL                             R8 2 1
       30 DIVK                             R11 R7 K4 [2]
       31 GETTABLEKS                       R12 R5 K5 ["Position"]
       33 SUB                              R10 R11 R12
       34 GETTABLEKS                       R9 R10 K6 ["Y"]
       36 DIVK                             R12 R7 K4 [2]
       37 GETTABLEKS                       R13 R5 K5 ["Position"]
       39 ADD                              R11 R12 R13
       40 GETTABLEKS                       R10 R11 K6 ["Y"]
       42 DIVK                             R13 R8 K4 [2]
       43 GETTABLEKS                       R14 R6 K5 ["Position"]
       45 SUB                              R12 R13 R14
       46 GETTABLEKS                       R11 R12 K6 ["Y"]
       48 DIVK                             R14 R8 K4 [2]
       49 GETTABLEKS                       R15 R6 K5 ["Position"]
       51 ADD                              R13 R14 R15
       52 GETTABLEKS                       R12 R13 K6 ["Y"]
       54 JUMPIFNOTLT                      R11 R9 ; [+10]
       56 GETUPVAL                         R15 2
       57 MOVE                             R16 R0
       58 MOVE                             R17 R1
       59 MOVE                             R18 R2
       60 MOVE                             R19 R3
       61 CALL                             R15 4 -1
       62 NAMECALL                         R13 R4 K7 ["updateReasons"]
       64 CALL                             R13 -1 0
       65 JUMPIFNOTLT                      R10 R12 ; [+10]
       67 GETUPVAL                         R15 3
       68 MOVE                             R16 R0
       69 MOVE                             R17 R1
       70 MOVE                             R18 R2
       71 MOVE                             R19 R3
       72 CALL                             R15 4 -1
       73 NAMECALL                         R13 R4 K7 ["updateReasons"]
       75 CALL                             R13 -1 0
       76 NAMECALL                         R13 R4 K8 ["getFinalResults"]
       78 CALL                             R13 1 -1
       79 RETURN                           R13 -1

PROTO_4:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        5 FASTCALL1                        ASSERT R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K4 [assert]
        9 CALL                             R4 1 0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K5 ["ASSET_TYPE_INFO"]
       13 GETTABLE                         R4 R5 R3
       14 FASTCALL1                        ASSERT R4 ; [+3]
       15 MOVE                             R6 R4
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 1 0
       19 GETUPVAL                         R6 1
       20 GETTABLE                         R5 R6 R3
       21 JUMPIF                           R5 ; [+2]
       22 LOADB                            R5 1
       23 RETURN                           R5 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K6 ["calculateIndividualAssetPartsData"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 CALL                             R5 2 3
       30 JUMPIF                           R5 ; [+3]
       31 LOADB                            R8 0
       32 MOVE                             R9 R6
       33 RETURN                           R8 2
       34 FASTCALL1                        ASSERT R7 ; [+3]
       35 MOVE                             R9 R7
       36 GETIMPORT                        R8 K4 [assert]
       38 CALL                             R8 1 0
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R8 R9 K7 ["new"]
       42 CALL                             R8 0 1
       43 GETIMPORT                        R9 K9 [pairs]
       45 GETTABLEKS                       R10 R4 K10 ["subParts"]
       47 CALL                             R9 1 3
       48 FORGPREP_NEXT                    R9
       49 GETUPVAL                         R16 0
       50 GETTABLEKS                       R15 R16 K11 ["BODYPART_TO_PARENT"]
       52 GETTABLE                         R14 R15 R12
       53 JUMPIFEQKNIL                     R14 ; [+59]
       55 MOVE                             R17 R12
       56 NAMECALL                         R15 R0 K12 ["FindFirstChild"]
       58 CALL                             R15 2 1
       59 MOVE                             R18 R14
       60 NAMECALL                         R16 R0 K12 ["FindFirstChild"]
       62 CALL                             R16 2 1
       63 FASTCALL1                        ASSERT R15 ; [+3]
       64 MOVE                             R18 R15
       65 GETIMPORT                        R17 K4 [assert]
       67 CALL                             R17 1 0
       68 FASTCALL1                        ASSERT R16 ; [+3]
       69 MOVE                             R18 R16
       70 GETIMPORT                        R17 K4 [assert]
       72 CALL                             R17 1 0
       73 MOVE                             R17 R16
       74 MOVE                             R18 R15
       75 GETUPVAL                         R20 4
       76 GETTABLE                         R19 R20 R12
       77 JUMPIFNOT                        R19 ; [+2]
       78 MOVE                             R17 R15
       79 MOVE                             R18 R16
       80 GETTABLEKS                       R20 R13 K13 ["rigAttachmentToParent"]
       82 GETTABLEKS                       R19 R20 K14 ["name"]
       84 GETUPVAL                         R21 5
       85 GETTABLEKS                       R20 R21 K15 ["validateSinglePartBasedOnBBoxes"]
       87 MOVE                             R21 R17
       88 MOVE                             R22 R18
       89 MOVE                             R23 R7
       90 MOVE                             R24 R19
       91 MOVE                             R25 R1
       92 CALL                             R20 5 2
       93 MOVE                             R24 R20
       94 MOVE                             R25 R21
       95 NAMECALL                         R22 R8 K16 ["updateReasons"]
       97 CALL                             R22 3 0
       98 JUMPIFNOT                        R20 ; [+14]
       99 GETUPVAL                         R23 6
      100 GETTABLE                         R22 R23 R3
      101 JUMPIFNOT                        R22 ; [+11]
      102 GETUPVAL                         R25 5
      103 GETTABLEKS                       R24 R25 K17 ["validateSinglePartBasedOnAttachmentYPos"]
      105 MOVE                             R25 R17
      106 MOVE                             R26 R18
      107 MOVE                             R27 R19
      108 MOVE                             R28 R1
      109 CALL                             R24 4 -1
      110 NAMECALL                         R22 R8 K16 ["updateReasons"]
      112 CALL                             R22 -1 0
      113 FORGLOOP                         R9 2 ; [-65]
      115 GETUPVAL                         R10 7
      116 GETTABLEKS                       R9 R10 K18 ["recordScriptTime"]
      118 GETIMPORT                        R11 K20 [script]
      120 GETTABLEKS                       R10 R11 K21 ["Name"]
      122 MOVE                             R11 R2
      123 MOVE                             R12 R1
      124 CALL                             R9 3 0
      125 NAMECALL                         R9 R8 K22 ["getFinalResults"]
      127 CALL                             R9 1 -1
      128 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Constants"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K5 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["FailureReasonsAccumulator"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["util"]
       35 GETTABLEKS                       R6 R7 K10 ["getExpectedPartSize"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["util"]
       42 GETTABLEKS                       R7 R8 K11 ["BoundsCalculator"]
       44 CALL                             R6 1 1
       45 NEWTABLE                         R7 8 0
       47 GETIMPORT                        R8 K15 [Enum.AssetType.Torso]
       49 LOADB                            R9 1
       50 SETTABLE                         R9 R7 R8
       51 GETIMPORT                        R8 K17 [Enum.AssetType.LeftArm]
       53 LOADB                            R9 1
       54 SETTABLE                         R9 R7 R8
       55 GETIMPORT                        R8 K19 [Enum.AssetType.RightArm]
       57 LOADB                            R9 1
       58 SETTABLE                         R9 R7 R8
       59 GETIMPORT                        R8 K21 [Enum.AssetType.RightLeg]
       61 LOADB                            R9 1
       62 SETTABLE                         R9 R7 R8
       63 GETIMPORT                        R8 K23 [Enum.AssetType.LeftLeg]
       65 LOADB                            R9 1
       66 SETTABLE                         R9 R7 R8
       67 NEWTABLE                         R8 1 0
       69 LOADB                            R9 1
       70 SETTABLEKS                       R9 R8 K24 ["UpperTorso"]
       72 NEWTABLE                         R9 2 0
       74 GETIMPORT                        R10 K23 [Enum.AssetType.LeftLeg]
       76 LOADB                            R11 1
       77 SETTABLE                         R11 R9 R10
       78 GETIMPORT                        R10 K21 [Enum.AssetType.RightLeg]
       80 LOADB                            R11 1
       81 SETTABLE                         R11 R9 R10
       82 DUPCLOSURE                       R10 K25 [PROTO_0]
       83 CAPTURE                          VAL R2
       84 DUPCLOSURE                       R11 K26 [PROTO_1]
       85 CAPTURE                          VAL R2
       86 NEWTABLE                         R12 4 0
       88 DUPCLOSURE                       R13 K27 [PROTO_2]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R13 R12 K28 ["validateSinglePartBasedOnBBoxes"]
       94 DUPCLOSURE                       R13 K29 [PROTO_3]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R11
       99 SETTABLEKS                       R13 R12 K30 ["validateSinglePartBasedOnAttachmentYPos"]
      101 DUPCLOSURE                       R13 K31 [PROTO_4]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R13 R12 K32 ["runValidation"]
      112 RETURN                           R12 1
