PROTO_0:
        0 GETTABLEKS                       R6 R4 K0 ["cframe"]
        2 GETTABLEKS                       R7 R0 K1 ["CFrame"]
        4 MUL                              R5 R6 R7
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["calculateBoundsCenters"]
        8 GETTABLEKS                       R7 R4 K3 ["boundsData"]
       10 CALL                             R6 1 1
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K4 ["calculateBoundsDimensions"]
       14 GETTABLEKS                       R8 R4 K3 ["boundsData"]
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R6 ; [+1]
       18 JUMPIF                           R7 ; [+10]
       19 LOADB                            R8 0
       20 NEWTABLE                         R9 0 1
       22 LOADK                            R11 K5 ["Missing mesh data for "]
       23 GETTABLEKS                       R12 R1 K6 ["Name"]
       25 CONCAT                           R10 R11 R12
       26 SETLIST                          R9 R10 1 [1]
       28 RETURN                           R8 2
       29 GETTABLEKS                       R9 R5 K7 ["Position"]
       31 SUB                              R8 R9 R6
       32 DIVK                             R9 R7 K8 [2]
       33 DIV                              R10 R8 R9
       34 GETTABLEKS                       R11 R2 K9 ["min"]
       36 GETTABLEKS                       R12 R2 K10 ["max"]
       38 NEWTABLE                         R13 0 3
       40 LOADK                            R16 K11 ["X"]
       41 LOADK                            R17 K12 ["Y"]
       42 LOADK                            R18 K13 ["Z"]
       43 SETLIST                          R13 R16 3 [1]
       45 LOADNIL                          R14
       46 LOADNIL                          R15
       47 FORGPREP                         R13
       48 GETTABLE                         R18 R10 R17
       49 GETTABLE                         R19 R11 R17
       50 JUMPIFLT                         R18 R19 ; [+5]
       52 GETTABLE                         R18 R10 R17
       53 GETTABLE                         R19 R12 R17
       54 JUMPIFNOTLT                      R19 R18 ; [+111]
       56 GETUPVAL                         R19 1
       57 GETTABLEKS                       R18 R19 K14 ["reportFailure"]
       59 GETUPVAL                         R21 1
       60 GETTABLEKS                       R20 R21 K15 ["ErrorType"]
       62 GETTABLEKS                       R19 R20 K16 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
       64 LOADNIL                          R20
       65 MOVE                             R21 R3
       66 CALL                             R18 3 0
       67 GETUPVAL                         R19 2
       68 GETTABLEKS                       R18 R19 K17 ["clampAttachmentToBounds"]
       70 MOVE                             R19 R0
       71 MOVE                             R20 R4
       72 MOVE                             R21 R2
       73 LOADK                            R22 K18 [0.001]
       74 CALL                             R18 4 1
       75 AND                              R20 R6 R7
       76 FASTCALL2K                       ASSERT R20 K19 ; [+4]
       78 LOADK                            R21 K19 ["meshCenterOpt and meshDimensionsOpt must be defined"]
       79 GETIMPORT                        R19 K21 [assert]
       81 CALL                             R19 2 0
       82 GETUPVAL                         R20 2
       83 GETTABLEKS                       R19 R20 K22 ["calculateAcceptableBoundsLocalSpace"]
       85 MOVE                             R20 R2
       86 MOVE                             R21 R4
       87 MOVE                             R22 R7
       88 MOVE                             R23 R6
       89 CALL                             R19 4 2
       90 GETTABLEKS                       R21 R19 K7 ["Position"]
       92 GETTABLEKS                       R22 R19 K23 ["Rotation"]
       94 NAMECALL                         R22 R22 K24 ["ToOrientation"]
       96 CALL                             R22 1 3
       97 FASTCALL1                        MATH_DEG R22 ; [+3]
       98 MOVE                             R27 R22
       99 GETIMPORT                        R26 K27 [math.deg]
      101 CALL                             R26 1 1
      102 FASTCALL1                        MATH_DEG R23 ; [+3]
      103 MOVE                             R28 R23
      104 GETIMPORT                        R27 K27 [math.deg]
      106 CALL                             R27 1 1
      107 FASTCALL1                        MATH_DEG R24 ; [+3]
      108 MOVE                             R29 R24
      109 GETIMPORT                        R28 K27 [math.deg]
      111 CALL                             R28 1 1
      112 FASTCALL                         VECTOR ; [+2]
      113 GETIMPORT                        R25 K30 [Vector3.new]
      115 CALL                             R25 3 1
      116 LOADB                            R26 0
      117 NEWTABLE                         R27 0 1
      119 GETIMPORT                        R28 K33 [string.format]
      121 LOADK                            R29 K34 ["Attachment (%s) in %s is placed at position [%s] that is outside the valid range. The closest valid position is [%s]. (the attachment must be within the oriented bounding box - Position: [%s], Orientation: [%s], Size: [%s]%s)"]
      122 GETTABLEKS                       R30 R0 K6 ["Name"]
      124 GETTABLEKS                       R31 R1 K6 ["Name"]
      126 GETUPVAL                         R32 3
      127 GETTABLEKS                       R34 R0 K1 ["CFrame"]
      129 GETTABLEKS                       R33 R34 K7 ["Position"]
      131 LOADN                            R34 3
      132 CALL                             R32 2 1
      133 GETUPVAL                         R33 3
      134 GETTABLEKS                       R34 R18 K7 ["Position"]
      136 LOADN                            R35 3
      137 CALL                             R33 2 1
      138 GETUPVAL                         R34 3
      139 MOVE                             R35 R21
      140 LOADN                            R36 3
      141 CALL                             R34 2 1
      142 GETUPVAL                         R35 3
      143 MOVE                             R36 R25
      144 LOADN                            R37 3
      145 CALL                             R35 2 1
      146 GETUPVAL                         R36 3
      147 MOVE                             R37 R20
      148 LOADN                            R38 3
      149 CALL                             R36 2 1
      150 GETUPVAL                         R38 4
      151 CALL                             R38 0 1
      152 JUMPIFEQKS                       R38 K35 [""] ; [+8]
      154 LOADK                            R38 K36 [". See "]
      155 GETUPVAL                         R41 4
      156 CALL                             R41 0 1
      157 MOVE                             R39 R41
      158 LOADK                            R40 K37 [" for further explanation"]
      159 CONCAT                           R37 R38 R40
      160 JUMP                             ; [+1]
      161 LOADK                            R37 K35 [""]
      162 CALL                             R28 9 -1
      163 SETLIST                          R27 R28 -1 [1]
      165 RETURN                           R26 2
      166 FORGLOOP                         R13 2 ; [-119]
      168 LOADB                            R13 1
      169 RETURN                           R13 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["new"]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R9 R2 K1 ["rigAttachmentToParent"]
        6 GETTABLEKS                       R8 R9 K2 ["name"]
        8 NAMECALL                         R6 R0 K3 ["FindFirstChild"]
       10 CALL                             R6 2 1
       11 FASTCALL1                        ASSERT R6 ; [+3]
       12 MOVE                             R8 R6
       13 GETIMPORT                        R7 K5 [assert]
       15 CALL                             R7 1 0
       16 GETUPVAL                         R9 1
       17 MOVE                             R10 R6
       18 MOVE                             R11 R0
       19 GETTABLEKS                       R13 R2 K1 ["rigAttachmentToParent"]
       21 GETTABLEKS                       R12 R13 K6 ["bounds"]
       23 MOVE                             R13 R3
       24 MOVE                             R14 R4
       25 CALL                             R9 5 -1
       26 NAMECALL                         R7 R5 K7 ["updateReasons"]
       28 CALL                             R7 -1 0
       29 GETIMPORT                        R7 K9 [pairs]
       31 GETTABLEKS                       R8 R2 K10 ["otherAttachments"]
       33 CALL                             R7 1 3
       34 FORGPREP_NEXT                    R7
       35 MOVE                             R14 R10
       36 NAMECALL                         R12 R0 K3 ["FindFirstChild"]
       38 CALL                             R12 2 1
       39 FASTCALL1                        ASSERT R12 ; [+3]
       40 MOVE                             R14 R12
       41 GETIMPORT                        R13 K5 [assert]
       43 CALL                             R13 1 0
       44 GETUPVAL                         R15 1
       45 MOVE                             R16 R12
       46 MOVE                             R17 R0
       47 GETTABLEKS                       R18 R11 K6 ["bounds"]
       49 MOVE                             R19 R3
       50 MOVE                             R20 R4
       51 CALL                             R15 5 -1
       52 NAMECALL                         R13 R5 K7 ["updateReasons"]
       54 CALL                             R13 -1 0
       55 FORGLOOP                         R7 2 ; [-21]
       57 NAMECALL                         R7 R5 K11 ["getFinalResults"]
       59 CALL                             R7 1 -1
       60 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ErrorType"]
        3 GETTABLEKS                       R3 R4 K1 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
        5 FASTCALL1                        ASSERT R3 ; [+2]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K4 ["new"]
       12 CALL                             R2 0 1
       13 NAMECALL                         R6 R0 K5 ["GetDescendants"]
       15 CALL                             R6 1 1
       16 MOVE                             R3 R6
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 LOADB                            R8 0
       21 GETTABLEKS                       R9 R7 K6 ["ClassName"]
       23 JUMPIFNOTEQKS                    R9 K7 ["Attachment"] ; [+7]
       25 GETIMPORT                        R8 K10 [string.find]
       27 GETTABLEKS                       R9 R7 K11 ["Name"]
       29 LOADK                            R10 K12 ["RigAttachment"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+46]
       32 GETTABLEKS                       R9 R7 K13 ["CFrame"]
       34 NAMECALL                         R9 R9 K14 ["ToOrientation"]
       36 CALL                             R9 1 3
       37 GETUPVAL                         R12 2
       38 MOVE                             R13 R9
       39 LOADN                            R14 0
       40 CALL                             R12 2 1
       41 JUMPIFNOT                        R12 ; [+10]
       42 GETUPVAL                         R12 2
       43 MOVE                             R13 R10
       44 LOADN                            R14 0
       45 CALL                             R12 2 1
       46 JUMPIFNOT                        R12 ; [+5]
       47 GETUPVAL                         R12 2
       48 MOVE                             R13 R11
       49 LOADN                            R14 0
       50 CALL                             R12 2 1
       51 JUMPIF                           R12 ; [+26]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R12 R13 K15 ["reportFailure"]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R14 R15 K0 ["ErrorType"]
       58 GETTABLEKS                       R13 R14 K1 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
       60 LOADNIL                          R14
       61 MOVE                             R15 R1
       62 CALL                             R12 3 0
       63 LOADB                            R14 0
       64 NEWTABLE                         R15 0 1
       66 GETIMPORT                        R16 K17 [string.format]
       68 LOADK                            R17 K18 ["Detected rotation in Attachment '%s'. You must reset all rotation values for this attachment to zero."]
       69 NAMECALL                         R18 R7 K19 ["GetFullName"]
       71 CALL                             R18 1 -1
       72 CALL                             R16 -1 -1
       73 SETLIST                          R15 R16 -1 [1]
       75 NAMECALL                         R12 R2 K20 ["updateReasons"]
       77 CALL                             R12 3 0
       78 FORGLOOP                         R3 2 ; [-59]
       80 NAMECALL                         R3 R2 K21 ["getFinalResults"]
       82 CALL                             R3 1 -1
       83 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        5 GETTABLEKS                       R4 R1 K3 ["isServer"]
        7 FASTCALL1                        ASSERT R3 ; [+3]
        8 MOVE                             R6 R3
        9 GETIMPORT                        R5 K5 [assert]
       11 CALL                             R5 1 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K6 ["ASSET_TYPE_INFO"]
       15 GETTABLE                         R5 R6 R3
       16 FASTCALL1                        ASSERT R5 ; [+3]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K5 [assert]
       20 CALL                             R6 1 0
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K7 ["new"]
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 2
       26 CALL                             R7 0 1
       27 JUMPIF                           R7 ; [+7]
       28 GETUPVAL                         R9 3
       29 MOVE                             R10 R0
       30 MOVE                             R11 R1
       31 CALL                             R9 2 -1
       32 NAMECALL                         R7 R6 K8 ["updateReasons"]
       34 CALL                             R7 -1 0
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R7 R8 K9 ["calculateIndividualAssetPartsData"]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R1
       40 CALL                             R7 2 3
       41 JUMPIF                           R7 ; [+1]
       42 RETURN                           R7 2
       43 GETIMPORT                        R10 K13 [Enum.AssetType.DynamicHead]
       45 JUMPIFNOTEQ                      R10 R3 ; [+18]
       47 GETTABLEKS                       R11 R0 K14 ["Name"]
       49 GETTABLE                         R10 R9 R11
       50 GETUPVAL                         R13 5
       51 MOVE                             R14 R0
       52 MOVE                             R15 R4
       53 GETTABLEKS                       R17 R5 K15 ["subParts"]
       55 GETTABLEKS                       R16 R17 K16 ["Head"]
       57 MOVE                             R17 R1
       58 MOVE                             R18 R10
       59 CALL                             R13 5 -1
       60 NAMECALL                         R11 R6 K8 ["updateReasons"]
       62 CALL                             R11 -1 0
       63 JUMP                             ; [+28]
       64 GETIMPORT                        R10 K18 [pairs]
       66 GETTABLEKS                       R11 R5 K15 ["subParts"]
       68 CALL                             R10 1 3
       69 FORGPREP_NEXT                    R10
       70 MOVE                             R17 R13
       71 NAMECALL                         R15 R0 K19 ["FindFirstChild"]
       73 CALL                             R15 2 1
       74 FASTCALL1                        ASSERT R15 ; [+3]
       75 MOVE                             R17 R15
       76 GETIMPORT                        R16 K5 [assert]
       78 CALL                             R16 1 0
       79 GETTABLE                         R16 R9 R13
       80 GETUPVAL                         R19 5
       81 MOVE                             R20 R15
       82 MOVE                             R21 R4
       83 MOVE                             R22 R14
       84 MOVE                             R23 R1
       85 MOVE                             R24 R16
       86 CALL                             R19 5 -1
       87 NAMECALL                         R17 R6 K8 ["updateReasons"]
       89 CALL                             R17 -1 0
       90 FORGLOOP                         R10 2 ; [-21]
       92 GETUPVAL                         R11 6
       93 GETTABLEKS                       R10 R11 K20 ["recordScriptTime"]
       95 GETIMPORT                        R12 K22 [script]
       97 GETTABLEKS                       R11 R12 K14 ["Name"]
       99 MOVE                             R12 R2
      100 MOVE                             R13 R1
      101 CALL                             R10 3 0
      102 NAMECALL                         R10 R6 K23 ["getFinalResults"]
      104 CALL                             R10 1 -1
      105 RETURN                           R10 -1

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
       35 GETTABLEKS                       R6 R7 K10 ["prettyPrintVector3"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K5 ["util"]
       42 GETTABLEKS                       R7 R8 K11 ["floatEquals"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K5 ["util"]
       49 GETTABLEKS                       R8 R9 K12 ["BoundsCalculator"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K5 ["util"]
       56 GETTABLEKS                       R9 R10 K13 ["BoundsDataUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R0 K5 ["util"]
       63 GETTABLEKS                       R10 R11 K14 ["MeshSpaceUtils"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R0 K15 ["flags"]
       70 GETTABLEKS                       R11 R12 K16 ["getFStringUGCValidationAttachmentErrorLink"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R13 R0 K15 ["flags"]
       77 GETTABLEKS                       R12 R13 K17 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K18 [PROTO_0]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R10
       86 DUPCLOSURE                       R13 K19 [PROTO_1]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R12
       89 DUPCLOSURE                       R14 K20 [PROTO_2]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R15 K21 [PROTO_3]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R2
      101 RETURN                           R15 1
