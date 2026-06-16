PROTO_0:
        0 GETIMPORT                        R3 K3 [Enum.AssetType.RightLeg]
        2 JUMPIFNOTEQ                      R2 R3 ; [+63]
        4 GETTABLEKS                       R4 R1 K4 ["RightUpperLeg"]
        6 GETTABLEKS                       R4 R4 K5 ["Size"]
        8 GETTABLEKS                       R4 R4 K6 ["X"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K7 ["asNumber"]
       13 CALL                             R5 0 1
       14 MUL                              R3 R4 R5
       15 GETTABLEKS                       R4 R1 K4 ["RightUpperLeg"]
       17 GETTABLEKS                       R4 R4 K8 ["RightHipRigAttachment"]
       19 GETTABLEKS                       R4 R4 K9 ["CFrame"]
       21 GETTABLEKS                       R4 R4 K10 ["Position"]
       23 GETTABLEKS                       R4 R4 K6 ["X"]
       25 JUMPIFNOTLT                      R3 R4 ; [+106]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K11 ["Keys"]
       30 GETTABLEKS                       R6 R6 K12 ["LegsSeparated_HipAttachmentOutOfRange"]
       32 DUPTABLE                         R7 K17 [{"attachmentPath", "currentValue", "comparison", "cutoff"}]
       33 LOADK                            R8 K18 ["RightUpperLeg.RightHipRigAttachment.CFrame.Position.X"]
       34 SETTABLEKS                       R8 R7 K13 ["attachmentPath"]
       36 GETIMPORT                        R8 K21 [string.format]
       38 LOADK                            R9 K22 ["%.2f"]
       39 GETTABLEKS                       R10 R1 K4 ["RightUpperLeg"]
       41 GETTABLEKS                       R10 R10 K8 ["RightHipRigAttachment"]
       43 GETTABLEKS                       R10 R10 K9 ["CFrame"]
       45 GETTABLEKS                       R10 R10 K10 ["Position"]
       47 GETTABLEKS                       R10 R10 K6 ["X"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K14 ["currentValue"]
       52 LOADK                            R8 K23 ["greater than"]
       53 SETTABLEKS                       R8 R7 K15 ["comparison"]
       55 GETIMPORT                        R8 K21 [string.format]
       57 LOADK                            R9 K22 ["%.2f"]
       58 MOVE                             R10 R3
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K16 ["cutoff"]
       62 NAMECALL                         R4 R0 K24 ["fail"]
       64 CALL                             R4 3 0
       65 RETURN                           R0 0
       66 GETIMPORT                        R3 K26 [Enum.AssetType.LeftLeg]
       68 JUMPIFNOTEQ                      R2 R3 ; [+63]
       70 GETTABLEKS                       R5 R1 K27 ["LeftUpperLeg"]
       72 GETTABLEKS                       R5 R5 K5 ["Size"]
       74 GETTABLEKS                       R5 R5 K6 ["X"]
       76 MINUS                            R4 R5
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K7 ["asNumber"]
       80 CALL                             R5 0 1
       81 MUL                              R3 R4 R5
       82 GETTABLEKS                       R4 R1 K27 ["LeftUpperLeg"]
       84 GETTABLEKS                       R4 R4 K28 ["LeftHipRigAttachment"]
       86 GETTABLEKS                       R4 R4 K9 ["CFrame"]
       88 GETTABLEKS                       R4 R4 K10 ["Position"]
       90 GETTABLEKS                       R4 R4 K6 ["X"]
       92 JUMPIFNOTLT                      R4 R3 ; [+39]
       94 GETUPVAL                         R6 1
       95 GETTABLEKS                       R6 R6 K11 ["Keys"]
       97 GETTABLEKS                       R6 R6 K12 ["LegsSeparated_HipAttachmentOutOfRange"]
       99 DUPTABLE                         R7 K17 [{"attachmentPath", "currentValue", "comparison", "cutoff"}]
      100 LOADK                            R8 K29 ["LeftUpperLeg.LeftHipRigAttachment.CFrame.Position.X"]
      101 SETTABLEKS                       R8 R7 K13 ["attachmentPath"]
      103 GETIMPORT                        R8 K21 [string.format]
      105 LOADK                            R9 K22 ["%.2f"]
      106 GETTABLEKS                       R10 R1 K27 ["LeftUpperLeg"]
      108 GETTABLEKS                       R10 R10 K28 ["LeftHipRigAttachment"]
      110 GETTABLEKS                       R10 R10 K9 ["CFrame"]
      112 GETTABLEKS                       R10 R10 K10 ["Position"]
      114 GETTABLEKS                       R10 R10 K6 ["X"]
      116 CALL                             R8 2 1
      117 SETTABLEKS                       R8 R7 K14 ["currentValue"]
      119 LOADK                            R8 K30 ["less than"]
      120 SETTABLEKS                       R8 R7 K15 ["comparison"]
      122 GETIMPORT                        R8 K21 [string.format]
      124 LOADK                            R9 K22 ["%.2f"]
      125 MOVE                             R10 R3
      126 CALL                             R8 2 1
      127 SETTABLEKS                       R8 R7 K16 ["cutoff"]
      129 NAMECALL                         R4 R0 K24 ["fail"]
      131 CALL                             R4 3 0
      132 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["combineBounds"]
        9 MOVE                             R9 R2
       10 GETTABLE                         R10 R0 R7
       11 GETTABLEKS                       R10 R10 K1 ["boundsData"]
       13 CALL                             R8 2 1
       14 MOVE                             R2 R8
       15 FORGLOOP                         R3 2 ; [-10]
       17 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["renderMeshesData"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R0 K1 ["rootInstance"]
        9 MOVE                             R9 R5
       10 LOADB                            R10 1
       11 NAMECALL                         R7 R7 K2 ["FindFirstChild"]
       13 CALL                             R7 3 1
       14 JUMPIFNOT                        R7 ; [+15]
       15 GETTABLEKS                       R8 R6 K3 ["editable"]
       17 JUMPIFNOT                        R8 ; [+12]
       18 DUPTABLE                         R8 K5 [{"MeshId"}]
       19 DUPTABLE                         R9 K8 [{"instance", "created"}]
       20 GETTABLEKS                       R10 R6 K3 ["editable"]
       22 SETTABLEKS                       R10 R9 K6 ["instance"]
       24 LOADB                            R10 0
       25 SETTABLEKS                       R10 R9 K7 ["created"]
       27 SETTABLEKS                       R9 R8 K4 ["MeshId"]
       29 SETTABLE                         R8 R1 R7
       30 FORGLOOP                         R2 2 ; [-24]
       32 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["MeshPart"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+3]
       11 GETTABLEKS                       R7 R6 K3 ["Name"]
       13 SETTABLE                         R6 R1 R7
       14 FORGLOOP                         R2 2 ; [-9]
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R1 K0 ["rootInstance"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 DUPTABLE                         R4 K3 [{"isServer", "editableMeshes"}]
       12 GETTABLEKS                       R6 R1 K4 ["consumerConfig"]
       14 GETTABLEKS                       R6 R6 K5 ["consumerEnv"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K6 ["ConsumerEnv"]
       19 GETTABLEKS                       R7 R7 K7 ["Backend"]
       21 JUMPIFEQ                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K1 ["isServer"]
       27 SETTABLEKS                       R3 R4 K2 ["editableMeshes"]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K8 ["calculateIndividualFullBodyPartsData"]
       32 MOVE                             R6 R2
       33 MOVE                             R7 R4
       34 LOADNIL                          R8
       35 LOADB                            R9 0
       36 CALL                             R5 4 3
       37 JUMPIF                           R5 ; [+20]
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R10 R10 K9 ["Keys"]
       41 GETTABLEKS                       R10 R10 K10 ["LegsSeparated_BoundsCalculationFailed"]
       43 DUPTABLE                         R11 K12 [{"details"}]
       44 JUMPIFNOT                        R6 ; [+6]
       45 GETIMPORT                        R12 K15 [table.concat]
       47 MOVE                             R13 R6
       48 LOADK                            R14 K16 ["; "]
       49 CALL                             R12 2 1
       50 JUMP                             ; [+1]
       51 LOADK                            R12 K17 ["Unknown error"]
       52 SETTABLEKS                       R12 R11 K11 ["details"]
       54 NAMECALL                         R8 R0 K18 ["fail"]
       56 CALL                             R8 3 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R8 6
       59 MOVE                             R9 R7
       60 NEWTABLE                         R10 0 3
       62 GETUPVAL                         R11 7
       63 GETTABLEKS                       R11 R11 K19 ["NAMED_R15_BODY_PARTS"]
       65 GETTABLEKS                       R11 R11 K20 ["LeftUpperLeg"]
       67 GETUPVAL                         R12 7
       68 GETTABLEKS                       R12 R12 K19 ["NAMED_R15_BODY_PARTS"]
       70 GETTABLEKS                       R12 R12 K21 ["LeftLowerLeg"]
       72 GETUPVAL                         R13 7
       73 GETTABLEKS                       R13 R13 K19 ["NAMED_R15_BODY_PARTS"]
       75 GETTABLEKS                       R13 R13 K22 ["LeftFoot"]
       77 SETLIST                          R10 R11 3 [1]
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 8
       81 GETTABLEKS                       R9 R9 K23 ["calculateBoundsCenters"]
       83 MOVE                             R10 R8
       84 CALL                             R9 1 1
       85 GETUPVAL                         R10 8
       86 GETTABLEKS                       R10 R10 K24 ["calculateBoundsDimensions"]
       88 MOVE                             R11 R8
       89 CALL                             R10 1 1
       90 GETUPVAL                         R11 6
       91 MOVE                             R12 R7
       92 NEWTABLE                         R13 0 3
       94 GETUPVAL                         R14 7
       95 GETTABLEKS                       R14 R14 K19 ["NAMED_R15_BODY_PARTS"]
       97 GETTABLEKS                       R14 R14 K25 ["RightUpperLeg"]
       99 GETUPVAL                         R15 7
      100 GETTABLEKS                       R15 R15 K19 ["NAMED_R15_BODY_PARTS"]
      102 GETTABLEKS                       R15 R15 K26 ["RightLowerLeg"]
      104 GETUPVAL                         R16 7
      105 GETTABLEKS                       R16 R16 K19 ["NAMED_R15_BODY_PARTS"]
      107 GETTABLEKS                       R16 R16 K27 ["RightFoot"]
      109 SETLIST                          R13 R14 3 [1]
      111 CALL                             R11 2 1
      112 GETUPVAL                         R12 8
      113 GETTABLEKS                       R12 R12 K23 ["calculateBoundsCenters"]
      115 MOVE                             R13 R11
      116 CALL                             R12 1 1
      117 GETUPVAL                         R13 8
      118 GETTABLEKS                       R13 R13 K24 ["calculateBoundsDimensions"]
      120 MOVE                             R14 R11
      121 CALL                             R13 1 1
      122 JUMPIFNOT                        R9 ; [+3]
      123 JUMPIFNOT                        R10 ; [+2]
      124 JUMPIFNOT                        R12 ; [+1]
      125 JUMPIF                           R13 ; [+1]
      126 RETURN                           R0 0
      127 GETTABLEKS                       R15 R12 K28 ["X"]
      129 GETTABLEKS                       R16 R9 K28 ["X"]
      131 SUB                              R14 R15 R16
      132 GETTABLEKS                       R17 R10 K28 ["X"]
      134 GETTABLEKS                       R18 R13 K28 ["X"]
      136 ADD                              R16 R17 R18
      137 MULK                             R15 R16 K29 [0.5]
      138 SUB                              R16 R15 R14
      139 LOADN                            R17 0
      140 JUMPIFNOTLE                      R16 R17 ; [+2]
      142 RETURN                           R0 0
      143 GETTABLEKS                       R18 R10 K28 ["X"]
      145 GETUPVAL                         R19 9
      146 GETTABLEKS                       R19 R19 K30 ["asNumber"]
      148 CALL                             R19 0 1
      149 MUL                              R17 R18 R19
      150 GETTABLEKS                       R19 R13 K28 ["X"]
      152 GETUPVAL                         R20 9
      153 GETTABLEKS                       R20 R20 K30 ["asNumber"]
      155 CALL                             R20 0 1
      156 MUL                              R18 R19 R20
      157 JUMPIFLT                         R17 R16 ; [+3]
      159 JUMPIFNOTLT                      R18 R16 ; [+31]
      161 GETUPVAL                         R21 5
      162 GETTABLEKS                       R21 R21 K9 ["Keys"]
      164 GETTABLEKS                       R21 R21 K31 ["LegsSeparated_LegsOverlap"]
      166 DUPTABLE                         R22 K35 [{"overlap", "leftMax", "rightMax"}]
      167 GETIMPORT                        R23 K38 [string.format]
      169 LOADK                            R24 K39 ["%.2f"]
      170 MOVE                             R25 R16
      171 CALL                             R23 2 1
      172 SETTABLEKS                       R23 R22 K32 ["overlap"]
      174 GETIMPORT                        R23 K38 [string.format]
      176 LOADK                            R24 K39 ["%.2f"]
      177 MOVE                             R25 R17
      178 CALL                             R23 2 1
      179 SETTABLEKS                       R23 R22 K33 ["leftMax"]
      181 GETIMPORT                        R23 K38 [string.format]
      183 LOADK                            R24 K39 ["%.2f"]
      184 MOVE                             R25 R18
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R22 K34 ["rightMax"]
      188 NAMECALL                         R19 R0 K18 ["fail"]
      190 CALL                             R19 3 0
      191 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["uploadCategory"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["UploadCategory"]
        5 GETTABLEKS                       R3 R3 K2 ["FULL_BODY"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+6]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R1 K3 ["uploadEnum"]
       16 JUMPIFNOT                        R4 ; [+10]
       17 GETTABLEKS                       R4 R1 K3 ["uploadEnum"]
       19 GETTABLEKS                       R4 R4 K4 ["assetType"]
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETTABLEKS                       R3 R1 K3 ["uploadEnum"]
       24 GETTABLEKS                       R3 R3 K4 ["assetType"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 JUMPIF                           R3 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R4 K8 [Enum.AssetType.RightLeg]
       32 JUMPIFEQ                         R3 R4 ; [+6]
       34 GETIMPORT                        R4 K10 [Enum.AssetType.LeftLeg]
       36 JUMPIFEQ                         R3 R4 ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 2
       40 MOVE                             R5 R0
       41 GETTABLEKS                       R6 R1 K11 ["rootInstance"]
       43 MOVE                             R7 R3
       44 CALL                             R4 3 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K6 ["util"]
       39 GETTABLEKS                       R6 R6 K11 ["BoundsDataUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["BoundsCalculator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K13 ["flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateMigratePoseBlocking"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K13 ["flags"]
       60 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateLegFullBodySeparation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K13 ["flags"]
       67 GETTABLEKS                       R10 R10 K16 ["GetFStringUGCValidateLegHipAttachmentRange"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K13 ["flags"]
       74 GETTABLEKS                       R11 R11 K17 ["GetFStringUGCValidateAllowedLegOverlapMultiplier"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 8 0
       79 NEWTABLE                         R12 0 2
       81 GETTABLEKS                       R13 R3 K18 ["UploadCategory"]
       83 GETTABLEKS                       R13 R13 K19 ["TORSO_AND_LIMBS"]
       85 GETTABLEKS                       R14 R3 K18 ["UploadCategory"]
       87 GETTABLEKS                       R14 R14 K20 ["FULL_BODY"]
       89 SETLIST                          R12 R13 2 [1]
       91 SETTABLEKS                       R12 R11 K21 ["categories"]
       93 NEWTABLE                         R12 0 2
       95 GETTABLEKS                       R13 R3 K22 ["SharedDataMember"]
       97 GETTABLEKS                       R13 R13 K23 ["rootInstance"]
       99 GETTABLEKS                       R14 R3 K22 ["SharedDataMember"]
      101 GETTABLEKS                       R14 R14 K24 ["renderMeshesData"]
      103 SETLIST                          R12 R13 2 [1]
      105 SETTABLEKS                       R12 R11 K25 ["requiredData"]
      107 SETTABLEKS                       R7 R11 K26 ["fflag"]
      109 NEWTABLE                         R12 0 0
      111 SETTABLEKS                       R12 R11 K27 ["expectedFailures"]
      113 DUPCLOSURE                       R12 K28 [PROTO_0]
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R4
      116 DUPCLOSURE                       R13 K29 [PROTO_1]
      117 CAPTURE                          VAL R5
      118 DUPCLOSURE                       R14 K30 [PROTO_2]
      119 DUPCLOSURE                       R15 K31 [PROTO_3]
      120 DUPCLOSURE                       R16 K32 [PROTO_4]
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R10
      131 DUPCLOSURE                       R17 K33 [PROTO_5]
      132 DUPCLOSURE                       R18 K34 [PROTO_6]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R18 R11 K35 ["run"]
      138 RETURN                           R11 1
