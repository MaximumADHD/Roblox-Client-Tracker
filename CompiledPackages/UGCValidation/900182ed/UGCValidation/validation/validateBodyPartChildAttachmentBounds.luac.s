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
       66 DUPCLOSURE                       R10 K16 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R11 K17 [PROTO_1]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R10
       75 DUPCLOSURE                       R12 K18 [PROTO_2]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R2
       81 RETURN                           R12 1
