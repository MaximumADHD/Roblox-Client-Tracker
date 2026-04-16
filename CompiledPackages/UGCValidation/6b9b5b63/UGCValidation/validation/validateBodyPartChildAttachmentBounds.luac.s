PROTO_0:
        0 GETTABLEKS                       R6 R4 K0 ["cframe"]
        2 GETUPVAL                         R7 0
        3 MOVE                             R8 R0
        4 CALL                             R7 1 1
        5 MUL                              R5 R6 R7
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["calculateBoundsCenters"]
        9 GETTABLEKS                       R7 R4 K2 ["boundsData"]
       11 CALL                             R6 1 1
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K3 ["calculateBoundsDimensions"]
       15 GETTABLEKS                       R8 R4 K2 ["boundsData"]
       17 CALL                             R7 1 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 JUMPIF                           R7 ; [+10]
       20 LOADB                            R8 0
       21 NEWTABLE                         R9 0 1
       23 LOADK                            R11 K4 ["Missing mesh data for "]
       24 GETTABLEKS                       R12 R1 K5 ["Name"]
       26 CONCAT                           R10 R11 R12
       27 SETLIST                          R9 R10 1 [1]
       29 RETURN                           R8 2
       30 GETTABLEKS                       R9 R5 K6 ["Position"]
       32 SUB                              R8 R9 R6
       33 DIVK                             R9 R7 K7 [2]
       34 DIV                              R10 R8 R9
       35 GETTABLEKS                       R11 R2 K8 ["min"]
       37 GETTABLEKS                       R12 R2 K9 ["max"]
       39 NEWTABLE                         R13 0 3
       41 LOADK                            R16 K10 ["X"]
       42 LOADK                            R17 K11 ["Y"]
       43 LOADK                            R18 K12 ["Z"]
       44 SETLIST                          R13 R16 3 [1]
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 FORGPREP                         R13
       49 GETTABLE                         R18 R10 R17
       50 GETTABLE                         R19 R11 R17
       51 JUMPIFLT                         R18 R19 ; [+5]
       53 GETTABLE                         R18 R10 R17
       54 GETTABLE                         R19 R12 R17
       55 JUMPIFNOTLT                      R19 R18 ; [+111]
       57 GETUPVAL                         R19 2
       58 GETTABLEKS                       R18 R19 K13 ["reportFailure"]
       60 GETUPVAL                         R21 2
       61 GETTABLEKS                       R20 R21 K14 ["ErrorType"]
       63 GETTABLEKS                       R19 R20 K15 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
       65 LOADNIL                          R20
       66 MOVE                             R21 R3
       67 CALL                             R18 3 0
       68 GETUPVAL                         R19 3
       69 GETTABLEKS                       R18 R19 K16 ["clampAttachmentToBounds"]
       71 MOVE                             R19 R0
       72 MOVE                             R20 R4
       73 MOVE                             R21 R2
       74 LOADK                            R22 K17 [0.001]
       75 CALL                             R18 4 1
       76 AND                              R20 R6 R7
       77 FASTCALL2K                       ASSERT R20 K18 ; [+4]
       79 LOADK                            R21 K18 ["meshCenterOpt and meshDimensionsOpt must be defined"]
       80 GETIMPORT                        R19 K20 [assert]
       82 CALL                             R19 2 0
       83 GETUPVAL                         R20 3
       84 GETTABLEKS                       R19 R20 K21 ["calculateAcceptableBoundsLocalSpace"]
       86 MOVE                             R20 R2
       87 MOVE                             R21 R4
       88 MOVE                             R22 R7
       89 MOVE                             R23 R6
       90 CALL                             R19 4 2
       91 GETTABLEKS                       R21 R19 K6 ["Position"]
       93 GETTABLEKS                       R22 R19 K22 ["Rotation"]
       95 NAMECALL                         R22 R22 K23 ["ToOrientation"]
       97 CALL                             R22 1 3
       98 FASTCALL1                        MATH_DEG R22 ; [+3]
       99 MOVE                             R27 R22
      100 GETIMPORT                        R26 K26 [math.deg]
      102 CALL                             R26 1 1
      103 FASTCALL1                        MATH_DEG R23 ; [+3]
      104 MOVE                             R28 R23
      105 GETIMPORT                        R27 K26 [math.deg]
      107 CALL                             R27 1 1
      108 FASTCALL1                        MATH_DEG R24 ; [+3]
      109 MOVE                             R29 R24
      110 GETIMPORT                        R28 K26 [math.deg]
      112 CALL                             R28 1 1
      113 FASTCALL                         VECTOR ; [+2]
      114 GETIMPORT                        R25 K29 [Vector3.new]
      116 CALL                             R25 3 1
      117 LOADB                            R26 0
      118 NEWTABLE                         R27 0 1
      120 GETIMPORT                        R28 K32 [string.format]
      122 LOADK                            R29 K33 ["Attachment (%s) in %s is placed at position [%s] that is outside the valid range. The closest valid position is [%s]. (the attachment must be within the oriented bounding box - Position: [%s], Orientation: [%s], Size: [%s]%s)"]
      123 GETTABLEKS                       R30 R0 K5 ["Name"]
      125 GETTABLEKS                       R31 R1 K5 ["Name"]
      127 GETUPVAL                         R32 4
      128 GETTABLEKS                       R34 R0 K34 ["CFrame"]
      130 GETTABLEKS                       R33 R34 K6 ["Position"]
      132 LOADN                            R34 3
      133 CALL                             R32 2 1
      134 GETUPVAL                         R33 4
      135 GETTABLEKS                       R34 R18 K6 ["Position"]
      137 LOADN                            R35 3
      138 CALL                             R33 2 1
      139 GETUPVAL                         R34 4
      140 MOVE                             R35 R21
      141 LOADN                            R36 3
      142 CALL                             R34 2 1
      143 GETUPVAL                         R35 4
      144 MOVE                             R36 R25
      145 LOADN                            R37 3
      146 CALL                             R35 2 1
      147 GETUPVAL                         R36 4
      148 MOVE                             R37 R20
      149 LOADN                            R38 3
      150 CALL                             R36 2 1
      151 GETUPVAL                         R38 5
      152 CALL                             R38 0 1
      153 JUMPIFEQKS                       R38 K35 [""] ; [+8]
      155 LOADK                            R38 K36 [". See "]
      156 GETUPVAL                         R41 5
      157 CALL                             R41 0 1
      158 MOVE                             R39 R41
      159 LOADK                            R40 K37 [" for further explanation"]
      160 CONCAT                           R37 R38 R40
      161 JUMP                             ; [+1]
      162 LOADK                            R37 K35 [""]
      163 CALL                             R28 9 -1
      164 SETLIST                          R27 R28 -1 [1]
      166 RETURN                           R26 2
      167 FORGLOOP                         R13 2 ; [-119]
      169 LOADB                            R13 1
      170 RETURN                           R13 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["new"]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R9 R2 K1 ["rigAttachmentToParent"]
        6 GETTABLEKS                       R8 R9 K2 ["name"]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K3 ["checkFlagEnabledForAllowHrd"]
       11 CALL                             R9 0 -1
       12 NAMECALL                         R6 R0 K4 ["FindFirstChild"]
       14 CALL                             R6 -1 1
       15 FASTCALL1                        ASSERT R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K6 [assert]
       19 CALL                             R7 1 0
       20 GETUPVAL                         R9 2
       21 MOVE                             R10 R6
       22 MOVE                             R11 R0
       23 GETTABLEKS                       R13 R2 K1 ["rigAttachmentToParent"]
       25 GETTABLEKS                       R12 R13 K7 ["bounds"]
       27 MOVE                             R13 R3
       28 MOVE                             R14 R4
       29 CALL                             R9 5 -1
       30 NAMECALL                         R7 R5 K8 ["updateReasons"]
       32 CALL                             R7 -1 0
       33 GETIMPORT                        R7 K10 [pairs]
       35 GETTABLEKS                       R8 R2 K11 ["otherAttachments"]
       37 CALL                             R7 1 3
       38 FORGPREP_NEXT                    R7
       39 MOVE                             R14 R10
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R15 R16 K3 ["checkFlagEnabledForAllowHrd"]
       43 CALL                             R15 0 -1
       44 NAMECALL                         R12 R0 K4 ["FindFirstChild"]
       46 CALL                             R12 -1 1
       47 FASTCALL1                        ASSERT R12 ; [+3]
       48 MOVE                             R14 R12
       49 GETIMPORT                        R13 K6 [assert]
       51 CALL                             R13 1 0
       52 GETUPVAL                         R15 2
       53 MOVE                             R16 R12
       54 MOVE                             R17 R0
       55 GETTABLEKS                       R18 R11 K7 ["bounds"]
       57 MOVE                             R19 R3
       58 MOVE                             R20 R4
       59 CALL                             R15 5 -1
       60 NAMECALL                         R13 R5 K8 ["updateReasons"]
       62 CALL                             R13 -1 0
       63 FORGLOOP                         R7 2 ; [-25]
       65 NAMECALL                         R7 R5 K12 ["getFinalResults"]
       67 CALL                             R7 1 -1
       68 RETURN                           R7 -1

PROTO_2:
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
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K8 ["calculateIndividualAssetPartsData"]
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 CALL                             R7 2 3
       31 JUMPIF                           R7 ; [+1]
       32 RETURN                           R7 2
       33 GETIMPORT                        R10 K12 [Enum.AssetType.DynamicHead]
       35 JUMPIFNOTEQ                      R10 R3 ; [+18]
       37 GETTABLEKS                       R11 R0 K13 ["Name"]
       39 GETTABLE                         R10 R9 R11
       40 GETUPVAL                         R13 3
       41 MOVE                             R14 R0
       42 MOVE                             R15 R4
       43 GETTABLEKS                       R17 R5 K14 ["subParts"]
       45 GETTABLEKS                       R16 R17 K15 ["Head"]
       47 MOVE                             R17 R1
       48 MOVE                             R18 R10
       49 CALL                             R13 5 -1
       50 NAMECALL                         R11 R6 K16 ["updateReasons"]
       52 CALL                             R11 -1 0
       53 JUMP                             ; [+28]
       54 GETIMPORT                        R10 K18 [pairs]
       56 GETTABLEKS                       R11 R5 K14 ["subParts"]
       58 CALL                             R10 1 3
       59 FORGPREP_NEXT                    R10
       60 MOVE                             R17 R13
       61 NAMECALL                         R15 R0 K19 ["FindFirstChild"]
       63 CALL                             R15 2 1
       64 FASTCALL1                        ASSERT R15 ; [+3]
       65 MOVE                             R17 R15
       66 GETIMPORT                        R16 K5 [assert]
       68 CALL                             R16 1 0
       69 GETTABLE                         R16 R9 R13
       70 GETUPVAL                         R19 3
       71 MOVE                             R20 R15
       72 MOVE                             R21 R4
       73 MOVE                             R22 R14
       74 MOVE                             R23 R1
       75 MOVE                             R24 R16
       76 CALL                             R19 5 -1
       77 NAMECALL                         R17 R6 K16 ["updateReasons"]
       79 CALL                             R17 -1 0
       80 FORGLOOP                         R10 2 ; [-21]
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R10 R11 K20 ["recordScriptTime"]
       85 GETIMPORT                        R12 K22 [script]
       87 GETTABLEKS                       R11 R12 K13 ["Name"]
       89 MOVE                             R12 R2
       90 MOVE                             R13 R1
       91 CALL                             R10 3 0
       92 NAMECALL                         R10 R6 K23 ["getFinalResults"]
       94 CALL                             R10 1 -1
       95 RETURN                           R10 -1

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
       42 GETTABLEKS                       R7 R8 K11 ["BoundsCalculator"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K5 ["util"]
       49 GETTABLEKS                       R8 R9 K12 ["BoundsDataUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K5 ["util"]
       56 GETTABLEKS                       R9 R10 K13 ["MeshSpaceUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R0 K14 ["flags"]
       63 GETTABLEKS                       R10 R11 K15 ["getFStringUGCValidationAttachmentErrorLink"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R0 K5 ["util"]
       70 GETTABLEKS                       R11 R12 K16 ["R15plusUtils"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R13 R0 K5 ["util"]
       77 GETTABLEKS                       R12 R13 K17 ["getAttachmentCFrameInPartSpace"]
       79 CALL                             R11 1 1
       80 DUPCLOSURE                       R12 K18 [PROTO_0]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R9
       87 DUPCLOSURE                       R13 K19 [PROTO_1]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R12
       91 DUPCLOSURE                       R14 K20 [PROTO_2]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R2
       97 RETURN                           R14 1
