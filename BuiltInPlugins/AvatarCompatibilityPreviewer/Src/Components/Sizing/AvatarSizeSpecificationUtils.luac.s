PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["BodyPartRules"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+13]
        6 GETIMPORT                        R2 K2 [error]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["ValidationRules missing entry for assetType %s"]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R6 R0
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 GETTABLEKS                       R3 R1 K9 ["Bounds"]
       20 GETUPVAL                         R4 1
       21 GETTABLE                         R2 R3 R4
       22 JUMPIFNOTEQKNIL                  R2 ; [+18]
       24 GETIMPORT                        R3 K2 [error]
       26 GETIMPORT                        R4 K5 [string.format]
       28 LOADK                            R5 K10 ["ValidationRules missing entry for assetType %s and proportionType %s"]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R7 R0
       31 GETIMPORT                        R6 K8 [tostring]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R8 1
       35 FASTCALL1                        TOSTRING R8 ; [+2]
       36 GETIMPORT                        R7 K8 [tostring]
       38 CALL                             R7 1 1
       39 CALL                             R4 3 -1
       40 CALL                             R3 -1 0
       41 DUPTABLE                         R3 K13 [{"minSize", "maxSize"}]
       42 GETTABLEKS                       R4 R2 K14 ["MinSize"]
       44 SETTABLEKS                       R4 R3 K11 ["minSize"]
       46 GETTABLEKS                       R4 R2 K15 ["MaxSize"]
       48 SETTABLEKS                       R4 R3 K12 ["maxSize"]
       50 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetValidationRules"]
        3 CALL                             R1 1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 DUPTABLE                         R3 K5 [{"head", "arm", "torso", "leg"}]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R5 K9 [Enum.AssetType.DynamicHead]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["head"]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R5 K11 [Enum.AssetType.LeftArm]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K2 ["arm"]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R5 K13 [Enum.AssetType.Torso]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K3 ["torso"]
       26 MOVE                             R4 R2
       27 GETIMPORT                        R5 K15 [Enum.AssetType.LeftLeg]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K4 ["leg"]
       32 RETURN                           R3 1

PROTO_2:
        0 DUPTABLE                         R3 K3 [{"bodySegmentType", "key", "r15BodyParts"}]
        1 SETTABLEKS                       R0 R3 K0 ["bodySegmentType"]
        3 SETTABLEKS                       R1 R3 K1 ["key"]
        5 SETTABLEKS                       R2 R3 K2 ["r15BodyParts"]
        7 RETURN                           R3 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["head"] ; [+14]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
        5 LOADK                            R2 K0 ["head"]
        6 LOADK                            R3 K0 ["head"]
        7 NEWTABLE                         R4 0 1
        9 GETIMPORT                        R5 K5 [Enum.BodyPartR15.Head]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 JUMPIFNOTEQKS                    R0 K6 ["leftArm"] ; [+18]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
       20 LOADK                            R2 K7 ["arm"]
       21 LOADK                            R3 K6 ["leftArm"]
       22 NEWTABLE                         R4 0 3
       24 GETIMPORT                        R5 K9 [Enum.BodyPartR15.LeftUpperArm]
       26 GETIMPORT                        R6 K11 [Enum.BodyPartR15.LeftLowerArm]
       28 GETIMPORT                        R7 K13 [Enum.BodyPartR15.LeftHand]
       30 SETLIST                          R4 R5 3 [1]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1
       34 JUMPIFNOTEQKS                    R0 K14 ["rightArm"] ; [+18]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
       39 LOADK                            R2 K7 ["arm"]
       40 LOADK                            R3 K14 ["rightArm"]
       41 NEWTABLE                         R4 0 3
       43 GETIMPORT                        R5 K16 [Enum.BodyPartR15.RightUpperArm]
       45 GETIMPORT                        R6 K18 [Enum.BodyPartR15.RightLowerArm]
       47 GETIMPORT                        R7 K20 [Enum.BodyPartR15.RightHand]
       49 SETLIST                          R4 R5 3 [1]
       51 CALL                             R1 3 -1
       52 RETURN                           R1 -1
       53 JUMPIFNOTEQKS                    R0 K21 ["leftLeg"] ; [+18]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
       58 LOADK                            R2 K22 ["leg"]
       59 LOADK                            R3 K21 ["leftLeg"]
       60 NEWTABLE                         R4 0 3
       62 GETIMPORT                        R5 K24 [Enum.BodyPartR15.LeftUpperLeg]
       64 GETIMPORT                        R6 K26 [Enum.BodyPartR15.LeftLowerLeg]
       66 GETIMPORT                        R7 K28 [Enum.BodyPartR15.LeftFoot]
       68 SETLIST                          R4 R5 3 [1]
       70 CALL                             R1 3 -1
       71 RETURN                           R1 -1
       72 JUMPIFNOTEQKS                    R0 K29 ["rightLeg"] ; [+18]
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
       77 LOADK                            R2 K22 ["leg"]
       78 LOADK                            R3 K29 ["rightLeg"]
       79 NEWTABLE                         R4 0 3
       81 GETIMPORT                        R5 K31 [Enum.BodyPartR15.RightUpperLeg]
       83 GETIMPORT                        R6 K33 [Enum.BodyPartR15.RightLowerLeg]
       85 GETIMPORT                        R7 K35 [Enum.BodyPartR15.RightFoot]
       87 SETLIST                          R4 R5 3 [1]
       89 CALL                             R1 3 -1
       90 RETURN                           R1 -1
       91 JUMPIFNOTEQKS                    R0 K36 ["torso"] ; [+16]
       93 GETUPVAL                         R1 0
       94 GETTABLEKS                       R1 R1 K1 ["createR15BodySegment"]
       96 MOVE                             R2 R0
       97 LOADK                            R3 K36 ["torso"]
       98 NEWTABLE                         R4 0 2
      100 GETIMPORT                        R5 K38 [Enum.BodyPartR15.UpperTorso]
      102 GETIMPORT                        R6 K40 [Enum.BodyPartR15.LowerTorso]
      104 SETLIST                          R4 R5 2 [1]
      106 CALL                             R1 3 -1
      107 RETURN                           R1 -1
      108 GETIMPORT                        R1 K42 [error]
      110 LOADK                            R2 K43 ["Invalid bodySegmentType"]
      111 CALL                             R1 1 0
      112 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["AccessoryWeld"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 LOADK                            R4 K2 ["Weld"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R1 K4 ["Part0"]
       15 JUMPIFEQ                         R2 R0 ; [+3]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETTABLEKS                       R3 R1 K5 ["Part1"]
       21 JUMPIF                           R3 ; [+2]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 GETTABLEKS                       R4 R3 K6 ["Parent"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["Parent"]
       29 JUMPIFEQ                         R4 R5 ; [+3]
       31 LOADNIL                          R4
       32 RETURN                           R4 1
       33 GETUPVAL                         R4 0
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K7 ["GetBodyPartR15"]
       37 CALL                             R4 2 1
       38 JUMPIFNOT                        R4 ; [+1]
       39 RETURN                           R4 1
       40 LOADNIL                          R5
       41 RETURN                           R5 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["r15BodyParts"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETUPVAL                         R9 0
       10 GETTABLE                         R8 R9 R7
       11 JUMPIFEQKNIL                     R8 ; [+14]
       13 MOVE                             R9 R8
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 FORGPREP                         R9
       17 FASTCALL2                        TABLE_INSERT R1 R13 ; [+5]
       19 MOVE                             R15 R1
       20 MOVE                             R16 R13
       21 GETIMPORT                        R14 K3 [table.insert]
       23 CALL                             R14 2 0
       24 FORGLOOP                         R9 2 ; [-8]
       26 GETUPVAL                         R10 1
       27 GETTABLE                         R9 R10 R7
       28 JUMPIFEQKNIL                     R9 ; [+14]
       30 MOVE                             R10 R9
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 FORGPREP                         R10
       34 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
       36 MOVE                             R16 R2
       37 MOVE                             R17 R14
       38 GETIMPORT                        R15 K3 [table.insert]
       40 CALL                             R15 2 0
       41 FORGLOOP                         R10 2 ; [-8]
       43 FORGLOOP                         R3 2 ; [-35]
       45 RETURN                           R1 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K0 ["getAvatarPartScaleType"]
       12 MOVE                             R9 R7
       13 CALL                             R8 1 1
       14 JUMPIFNOT                        R8 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       17 MOVE                             R10 R2
       18 MOVE                             R11 R8
       19 GETIMPORT                        R9 K3 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R3 2 ; [-14]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["computeAvatarPartScaleType"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 -1
       29 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 GETIMPORT                        R4 K1 [next]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["CFrame"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["getAABoundingBox"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R4
       19 CALL                             R5 2 2
       20 DUPTABLE                         R7 K12 [{"key", "bodySegmentType", "cframe", "size", "accessoryParts", "r15BodyParts", "segmentParts", "sizeBounds"}]
       21 GETTABLEKS                       R8 R0 K4 ["key"]
       23 SETTABLEKS                       R8 R7 K4 ["key"]
       25 GETTABLEKS                       R8 R0 K5 ["bodySegmentType"]
       27 SETTABLEKS                       R8 R7 K5 ["bodySegmentType"]
       29 GETIMPORT                        R10 K14 [CFrame.new]
       31 MOVE                             R11 R5
       32 CALL                             R10 1 -1
       33 NAMECALL                         R8 R4 K15 ["ToWorldSpace"]
       35 CALL                             R8 -1 1
       36 SETTABLEKS                       R8 R7 K6 ["cframe"]
       38 SETTABLEKS                       R6 R7 K7 ["size"]
       40 SETTABLEKS                       R3 R7 K8 ["accessoryParts"]
       42 GETTABLEKS                       R8 R0 K9 ["r15BodyParts"]
       44 SETTABLEKS                       R8 R7 K9 ["r15BodyParts"]
       46 SETTABLEKS                       R2 R7 K10 ["segmentParts"]
       48 SETTABLEKS                       R1 R7 K11 ["sizeBounds"]
       50 RETURN                           R7 1

PROTO_8:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADK                            R4 K2 ["HumanoidRootPart"]
        9 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+6]
       14 LOADK                            R5 K4 ["BasePart"]
       15 NAMECALL                         R3 R2 K5 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+2]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 NEWTABLE                         R3 0 0
       23 NEWTABLE                         R4 0 0
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R6 R0 K6 ["GetChildren"]
       29 CALL                             R6 1 3
       30 FORGPREP                         R6
       31 LOADK                            R13 K7 ["Accessory"]
       32 NAMECALL                         R11 R10 K5 ["IsA"]
       34 CALL                             R11 2 1
       35 JUMPIFNOT                        R11 ; [+32]
       36 LOADK                            R13 K8 ["Handle"]
       37 NAMECALL                         R11 R10 K3 ["FindFirstChild"]
       39 CALL                             R11 2 1
       40 JUMPIFEQKNIL                     R11 ; [+54]
       42 LOADK                            R14 K4 ["BasePart"]
       43 NAMECALL                         R12 R11 K5 ["IsA"]
       45 CALL                             R12 2 1
       46 JUMPIFNOT                        R12 ; [+48]
       47 MOVE                             R12 R5
       48 MOVE                             R13 R11
       49 CALL                             R12 1 1
       50 JUMPIFNOT                        R12 ; [+44]
       51 GETTABLE                         R13 R4 R12
       52 JUMPIFNOTEQKNIL                  R13 ; [+8]
       54 NEWTABLE                         R13 0 1
       56 MOVE                             R14 R11
       57 SETLIST                          R13 R14 1 [1]
       59 SETTABLE                         R13 R4 R12
       60 JUMP                             ; [+7]
       61 GETTABLE                         R14 R4 R12
       62 FASTCALL2                        TABLE_INSERT R14 R11 ; [+4]
       64 MOVE                             R15 R11
       65 GETIMPORT                        R13 K11 [table.insert]
       67 CALL                             R13 2 0
       68 LOADK                            R13 K4 ["BasePart"]
       69 NAMECALL                         R11 R10 K5 ["IsA"]
       71 CALL                             R11 2 1
       72 JUMPIFNOT                        R11 ; [+22]
       73 MOVE                             R13 R10
       74 NAMECALL                         R11 R1 K12 ["GetBodyPartR15"]
       76 CALL                             R11 2 1
       77 JUMPIFNOT                        R11 ; [+17]
       78 GETTABLE                         R12 R3 R11
       79 JUMPIFNOTEQKNIL                  R12 ; [+8]
       81 NEWTABLE                         R12 0 1
       83 MOVE                             R13 R10
       84 SETLIST                          R12 R13 1 [1]
       86 SETTABLE                         R12 R3 R11
       87 JUMP                             ; [+7]
       88 GETTABLE                         R13 R3 R11
       89 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       91 MOVE                             R14 R10
       92 GETIMPORT                        R12 K11 [table.insert]
       94 CALL                             R12 2 0
       95 FORGLOOP                         R6 2 ; [-65]
       97 NEWCLOSURE                       R6 P1
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 NEWCLOSURE                       R7 P2
      101 CAPTURE                          VAL R6
      102 CAPTURE                          UPVAL U0
      103 NEWCLOSURE                       R8 P3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          UPVAL U1
      107 DUPTABLE                         R9 K15 [{"getInvalidBodyPart", "getProportions"}]
      108 SETTABLEKS                       R8 R9 K13 ["getInvalidBodyPart"]
      110 SETTABLEKS                       R7 R9 K14 ["getProportions"]
      112 RETURN                           R9 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getBodyPartR15FromBodySegmentType"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["getProportions"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 JUMPIFNOTEQKS                    R3 K2 ["Mixed"] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLE                         R4 R1 R3
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R4 K3 ["ok"]
       21 JUMPIF                           R5 ; [+1]
       22 RETURN                           R0 0
       23 DUPTABLE                         R5 K6 [{"minSize", "maxSize"}]
       24 GETTABLEKS                       R7 R1 K7 ["meshSize"]
       26 GETTABLEKS                       R9 R4 K8 ["X"]
       28 GETTABLEKS                       R9 R9 K9 ["min"]
       30 GETTABLEKS                       R10 R4 K10 ["Y"]
       32 GETTABLEKS                       R10 R10 K9 ["min"]
       34 GETTABLEKS                       R11 R4 K11 ["Z"]
       36 GETTABLEKS                       R11 R11 K9 ["min"]
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R8 K14 [Vector3.new]
       41 CALL                             R8 3 1
       42 MUL                              R6 R7 R8
       43 SETTABLEKS                       R6 R5 K4 ["minSize"]
       45 GETTABLEKS                       R7 R1 K15 ["overallSize"]
       47 GETTABLEKS                       R9 R4 K8 ["X"]
       49 GETTABLEKS                       R9 R9 K16 ["max"]
       51 GETTABLEKS                       R10 R4 K10 ["Y"]
       53 GETTABLEKS                       R10 R10 K16 ["max"]
       55 GETTABLEKS                       R11 R4 K11 ["Z"]
       57 GETTABLEKS                       R11 R11 K16 ["max"]
       59 FASTCALL                         VECTOR ; [+2]
       60 GETIMPORT                        R8 K14 [Vector3.new]
       62 CALL                             R8 3 1
       63 MUL                              R6 R7 R8
       64 SETTABLEKS                       R6 R5 K5 ["maxSize"]
       66 LOADB                            R6 0
       67 GETTABLEKS                       R7 R4 K16 ["max"]
       69 LOADN                            R8 1
       70 JUMPIFNOTLE                      R8 R7 ; [+15]
       72 LOADB                            R6 0
       73 GETTABLEKS                       R7 R4 K9 ["min"]
       75 LOADN                            R8 1
       76 JUMPIFNOTLE                      R7 R8 ; [+9]
       78 GETTABLEKS                       R7 R4 K9 ["min"]
       80 GETTABLEKS                       R8 R4 K16 ["max"]
       82 JUMPIFLE                         R7 R8 ; [+2]
       84 LOADB                            R6 0 +1
       85 LOADB                            R6 1
       86 JUMPIFNOT                        R6 ; [+1]
       87 RETURN                           R0 0
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K17 ["getInvalidBodyPart"]
       91 MOVE                             R8 R2
       92 MOVE                             R9 R5
       93 CALL                             R7 2 1
       94 JUMPIFNOT                        R7 ; [+8]
       95 GETUPVAL                         R9 2
       96 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       98 MOVE                             R10 R7
       99 GETIMPORT                        R8 K20 [table.insert]
      101 CALL                             R8 2 0
      102 RETURN                           R0 0
      103 GETIMPORT                        R8 K22 [warn]
      105 LOADK                            R9 K23 ["No invalidBodyPart"]
      106 CALL                             R8 1 0
      107 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["ok"]
        4 JUMPIFEQKB                       R3 TRUE ; [+2]
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["createInvalidBodyPartFactory"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R2 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 MOVE                             R5 R4
       19 LOADK                            R6 K2 ["head"]
       20 GETTABLEKS                       R7 R1 K3 ["DynamicHead"]
       22 CALL                             R5 2 0
       23 MOVE                             R5 R4
       24 LOADK                            R6 K4 ["torso"]
       25 GETTABLEKS                       R7 R1 K5 ["Torso"]
       27 CALL                             R5 2 0
       28 MOVE                             R5 R4
       29 LOADK                            R6 K6 ["leftArm"]
       30 GETTABLEKS                       R7 R1 K7 ["LeftArm"]
       32 CALL                             R5 2 0
       33 MOVE                             R5 R4
       34 LOADK                            R6 K8 ["rightArm"]
       35 GETTABLEKS                       R7 R1 K9 ["RightArm"]
       37 CALL                             R5 2 0
       38 MOVE                             R5 R4
       39 LOADK                            R6 K10 ["leftLeg"]
       40 GETTABLEKS                       R7 R1 K11 ["LeftLeg"]
       42 CALL                             R5 2 0
       43 MOVE                             R5 R4
       44 LOADK                            R6 K12 ["rightLeg"]
       45 GETTABLEKS                       R7 R1 K13 ["RightLeg"]
       47 CALL                             R5 2 0
       48 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFEQKNIL                     R2 ; [+106]
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R3 K2 [{"minSize", "maxSize"}]
       11 GETUPVAL                         R7 0
       12 GETTABLE                         R6 R7 R0
       13 GETTABLEKS                       R6 R6 K0 ["minSize"]
       15 GETTABLEKS                       R6 R6 K3 ["X"]
       17 GETTABLEKS                       R7 R1 K0 ["minSize"]
       19 GETTABLEKS                       R7 R7 K3 ["X"]
       21 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       23 GETIMPORT                        R5 K6 [math.min]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R8 0
       27 GETTABLE                         R7 R8 R0
       28 GETTABLEKS                       R7 R7 K0 ["minSize"]
       30 GETTABLEKS                       R7 R7 K7 ["Y"]
       32 GETTABLEKS                       R8 R1 K0 ["minSize"]
       34 GETTABLEKS                       R8 R8 K7 ["Y"]
       36 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       38 GETIMPORT                        R6 K6 [math.min]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R9 0
       42 GETTABLE                         R8 R9 R0
       43 GETTABLEKS                       R8 R8 K0 ["minSize"]
       45 GETTABLEKS                       R8 R8 K8 ["Z"]
       47 GETTABLEKS                       R9 R1 K0 ["minSize"]
       49 GETTABLEKS                       R9 R9 K8 ["Z"]
       51 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       53 GETIMPORT                        R7 K6 [math.min]
       55 CALL                             R7 2 1
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R4 K11 [Vector3.new]
       59 CALL                             R4 3 1
       60 SETTABLEKS                       R4 R3 K0 ["minSize"]
       62 GETUPVAL                         R7 0
       63 GETTABLE                         R6 R7 R0
       64 GETTABLEKS                       R6 R6 K1 ["maxSize"]
       66 GETTABLEKS                       R6 R6 K3 ["X"]
       68 GETTABLEKS                       R7 R1 K1 ["maxSize"]
       70 GETTABLEKS                       R7 R7 K3 ["X"]
       72 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       74 GETIMPORT                        R5 K13 [math.max]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R8 0
       78 GETTABLE                         R7 R8 R0
       79 GETTABLEKS                       R7 R7 K1 ["maxSize"]
       81 GETTABLEKS                       R7 R7 K7 ["Y"]
       83 GETTABLEKS                       R8 R1 K1 ["maxSize"]
       85 GETTABLEKS                       R8 R8 K7 ["Y"]
       87 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       89 GETIMPORT                        R6 K13 [math.max]
       91 CALL                             R6 2 1
       92 GETUPVAL                         R9 0
       93 GETTABLE                         R8 R9 R0
       94 GETTABLEKS                       R8 R8 K1 ["maxSize"]
       96 GETTABLEKS                       R8 R8 K8 ["Z"]
       98 GETTABLEKS                       R9 R1 K1 ["maxSize"]
      100 GETTABLEKS                       R9 R9 K8 ["Z"]
      102 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      104 GETIMPORT                        R7 K13 [math.max]
      106 CALL                             R7 2 1
      107 FASTCALL                         VECTOR ; [+2]
      108 GETIMPORT                        R4 K11 [Vector3.new]
      110 CALL                             R4 3 1
      111 SETTABLEKS                       R4 R3 K1 ["maxSize"]
      113 SETTABLE                         R3 R2 R0
      114 GETUPVAL                         R2 0
      115 SETTABLE                         R1 R2 R0
      116 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKS                    R0 K0 ["Classic"] ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getSpecFromProportionType"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 JUMPIFNOTEQKS                    R0 K2 ["ProportionsNormal"] ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["getSpecFromProportionType"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1
       16 JUMPIFNOTEQKS                    R0 K3 ["ProportionsSlender"] ; [+7]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["getSpecFromProportionType"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1
       24 JUMPIFNOTEQKS                    R0 K4 ["Mixed"] ; [+200]
       26 LOADK                            R4 K5 ["Humanoid"]
       27 NAMECALL                         R2 R1 K6 ["FindFirstChildWhichIsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOTEQKNIL                  R2 ; [+7]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K1 ["getSpecFromProportionType"]
       35 LOADK                            R4 K2 ["ProportionsNormal"]
       36 CALL                             R3 1 -1
       37 RETURN                           R3 -1
       38 GETTABLEKS                       R3 R2 K7 ["RigType"]
       40 GETIMPORT                        R4 K11 [Enum.HumanoidRigType.R15]
       42 JUMPIFEQ                         R3 R4 ; [+7]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K1 ["getSpecFromProportionType"]
       47 LOADK                            R4 K0 ["Classic"]
       48 CALL                             R3 1 -1
       49 RETURN                           R3 -1
       50 NEWTABLE                         R3 4 0
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          VAL R3
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K12 ["allAvatarPartScaleTypeValueObjects"]
       57 MOVE                             R6 R1
       58 CALL                             R5 1 3
       59 FORGPREP                         R5
       60 GETTABLEKS                       R10 R9 K13 ["Value"]
       62 JUMPIFEQKS                       R10 K2 ["ProportionsNormal"] ; [+5]
       64 JUMPIFEQKS                       R10 K3 ["ProportionsSlender"] ; [+3]
       66 JUMPIFNOTEQKS                    R10 K0 ["Classic"] ; [+122]
       68 GETTABLEKS                       R11 R9 K14 ["Parent"]
       70 FASTCALL1                        TYPEOF R11 ; [+3]
       71 MOVE                             R13 R11
       72 GETIMPORT                        R12 K16 [typeof]
       74 CALL                             R12 1 1
       75 JUMPIFNOTEQKS                    R12 K17 ["Instance"] ; [+113]
       77 LOADK                            R14 K18 ["BasePart"]
       78 NAMECALL                         R12 R11 K19 ["IsA"]
       80 CALL                             R12 2 1
       81 JUMPIFNOT                        R12 ; [+107]
       82 MOVE                             R14 R11
       83 NAMECALL                         R12 R2 K20 ["GetBodyPartR15"]
       85 CALL                             R12 2 1
       86 GETIMPORT                        R13 K23 [Enum.BodyPartR15.Head]
       88 JUMPIFNOTEQ                      R12 R13 ; [+12]
       90 MOVE                             R13 R4
       91 LOADK                            R14 K24 ["head"]
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R15 R15 K1 ["getSpecFromProportionType"]
       95 MOVE                             R16 R10
       96 CALL                             R15 1 1
       97 GETTABLEKS                       R15 R15 K24 ["head"]
       99 CALL                             R13 2 0
      100 JUMP                             ; [+88]
      101 GETIMPORT                        R13 K26 [Enum.BodyPartR15.LeftUpperArm]
      103 JUMPIFEQ                         R12 R13 ; [+21]
      105 GETIMPORT                        R13 K28 [Enum.BodyPartR15.LeftLowerArm]
      107 JUMPIFEQ                         R12 R13 ; [+17]
      109 GETIMPORT                        R13 K30 [Enum.BodyPartR15.LeftHand]
      111 JUMPIFEQ                         R12 R13 ; [+13]
      113 GETIMPORT                        R13 K32 [Enum.BodyPartR15.RightUpperArm]
      115 JUMPIFEQ                         R12 R13 ; [+9]
      117 GETIMPORT                        R13 K34 [Enum.BodyPartR15.RightLowerArm]
      119 JUMPIFEQ                         R12 R13 ; [+5]
      121 GETIMPORT                        R13 K36 [Enum.BodyPartR15.RightHand]
      123 JUMPIFNOTEQ                      R12 R13 ; [+12]
      125 MOVE                             R13 R4
      126 LOADK                            R14 K37 ["arm"]
      127 GETUPVAL                         R15 0
      128 GETTABLEKS                       R15 R15 K1 ["getSpecFromProportionType"]
      130 MOVE                             R16 R10
      131 CALL                             R15 1 1
      132 GETTABLEKS                       R15 R15 K37 ["arm"]
      134 CALL                             R13 2 0
      135 JUMP                             ; [+53]
      136 GETIMPORT                        R13 K39 [Enum.BodyPartR15.UpperTorso]
      138 JUMPIFEQ                         R12 R13 ; [+5]
      140 GETIMPORT                        R13 K41 [Enum.BodyPartR15.LowerTorso]
      142 JUMPIFNOTEQ                      R12 R13 ; [+12]
      144 MOVE                             R13 R4
      145 LOADK                            R14 K42 ["torso"]
      146 GETUPVAL                         R15 0
      147 GETTABLEKS                       R15 R15 K1 ["getSpecFromProportionType"]
      149 MOVE                             R16 R10
      150 CALL                             R15 1 1
      151 GETTABLEKS                       R15 R15 K42 ["torso"]
      153 CALL                             R13 2 0
      154 JUMP                             ; [+34]
      155 GETIMPORT                        R13 K44 [Enum.BodyPartR15.LeftUpperLeg]
      157 JUMPIFEQ                         R12 R13 ; [+21]
      159 GETIMPORT                        R13 K46 [Enum.BodyPartR15.LeftLowerLeg]
      161 JUMPIFEQ                         R12 R13 ; [+17]
      163 GETIMPORT                        R13 K48 [Enum.BodyPartR15.LeftFoot]
      165 JUMPIFEQ                         R12 R13 ; [+13]
      167 GETIMPORT                        R13 K50 [Enum.BodyPartR15.RightUpperLeg]
      169 JUMPIFEQ                         R12 R13 ; [+9]
      171 GETIMPORT                        R13 K52 [Enum.BodyPartR15.RightLowerLeg]
      173 JUMPIFEQ                         R12 R13 ; [+5]
      175 GETIMPORT                        R13 K54 [Enum.BodyPartR15.RightFoot]
      177 JUMPIFNOTEQ                      R12 R13 ; [+11]
      179 MOVE                             R13 R4
      180 LOADK                            R14 K55 ["leg"]
      181 GETUPVAL                         R15 0
      182 GETTABLEKS                       R15 R15 K1 ["getSpecFromProportionType"]
      184 MOVE                             R16 R10
      185 CALL                             R15 1 1
      186 GETTABLEKS                       R15 R15 K55 ["leg"]
      188 CALL                             R13 2 0
      189 FORGLOOP                         R5 2 ; [-130]
      191 GETUPVAL                         R5 0
      192 GETTABLEKS                       R5 R5 K1 ["getSpecFromProportionType"]
      194 LOADK                            R6 K0 ["Classic"]
      195 CALL                             R5 1 1
      196 GETTABLEKS                       R6 R3 K24 ["head"]
      198 JUMPIF                           R6 ; [+4]
      199 GETTABLEKS                       R6 R5 K24 ["head"]
      201 SETTABLEKS                       R6 R3 K24 ["head"]
      203 GETTABLEKS                       R6 R3 K37 ["arm"]
      205 JUMPIF                           R6 ; [+4]
      206 GETTABLEKS                       R6 R5 K37 ["arm"]
      208 SETTABLEKS                       R6 R3 K37 ["arm"]
      210 GETTABLEKS                       R6 R3 K42 ["torso"]
      212 JUMPIF                           R6 ; [+4]
      213 GETTABLEKS                       R6 R5 K42 ["torso"]
      215 SETTABLEKS                       R6 R3 K42 ["torso"]
      217 GETTABLEKS                       R6 R3 K55 ["leg"]
      219 JUMPIF                           R6 ; [+4]
      220 GETTABLEKS                       R6 R5 K55 ["leg"]
      222 SETTABLEKS                       R6 R3 K55 ["leg"]
      224 RETURN                           R3 1
      225 GETIMPORT                        R2 K57 [error]
      227 LOADK                            R3 K58 ["Invalid proportions value"]
      228 CALL                             R2 1 0
      229 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K1 ["arm"]
        2 GETTABLEKS                       R3 R3 K2 ["minSize"]
        4 GETTABLEKS                       R3 R3 K3 ["X"]
        6 MULK                             R2 R3 K0 [2]
        7 GETTABLEKS                       R3 R0 K4 ["torso"]
        9 GETTABLEKS                       R3 R3 K2 ["minSize"]
       11 GETTABLEKS                       R3 R3 K3 ["X"]
       13 ADD                              R1 R2 R3
       14 GETTABLEKS                       R4 R0 K1 ["arm"]
       16 GETTABLEKS                       R4 R4 K5 ["maxSize"]
       18 GETTABLEKS                       R4 R4 K3 ["X"]
       20 MULK                             R3 R4 K0 [2]
       21 GETTABLEKS                       R4 R0 K4 ["torso"]
       23 GETTABLEKS                       R4 R4 K5 ["maxSize"]
       25 GETTABLEKS                       R4 R4 K3 ["X"]
       27 ADD                              R2 R3 R4
       28 GETTABLEKS                       R5 R0 K6 ["head"]
       30 GETTABLEKS                       R5 R5 K2 ["minSize"]
       32 GETTABLEKS                       R5 R5 K7 ["Y"]
       34 GETTABLEKS                       R6 R0 K4 ["torso"]
       36 GETTABLEKS                       R6 R6 K2 ["minSize"]
       38 GETTABLEKS                       R6 R6 K7 ["Y"]
       40 ADD                              R4 R5 R6
       41 GETTABLEKS                       R5 R0 K8 ["leg"]
       43 GETTABLEKS                       R5 R5 K2 ["minSize"]
       45 GETTABLEKS                       R5 R5 K7 ["Y"]
       47 ADD                              R3 R4 R5
       48 GETTABLEKS                       R6 R0 K6 ["head"]
       50 GETTABLEKS                       R6 R6 K5 ["maxSize"]
       52 GETTABLEKS                       R6 R6 K7 ["Y"]
       54 GETTABLEKS                       R7 R0 K4 ["torso"]
       56 GETTABLEKS                       R7 R7 K5 ["maxSize"]
       58 GETTABLEKS                       R7 R7 K7 ["Y"]
       60 ADD                              R5 R6 R7
       61 GETTABLEKS                       R6 R0 K8 ["leg"]
       63 GETTABLEKS                       R6 R6 K5 ["maxSize"]
       65 GETTABLEKS                       R6 R6 K7 ["Y"]
       67 ADD                              R4 R5 R6
       68 GETTABLEKS                       R6 R0 K6 ["head"]
       70 GETTABLEKS                       R6 R6 K2 ["minSize"]
       72 GETTABLEKS                       R6 R6 K9 ["Z"]
       74 GETTABLEKS                       R7 R0 K1 ["arm"]
       76 GETTABLEKS                       R7 R7 K2 ["minSize"]
       78 GETTABLEKS                       R7 R7 K9 ["Z"]
       80 GETTABLEKS                       R8 R0 K8 ["leg"]
       82 GETTABLEKS                       R8 R8 K2 ["minSize"]
       84 GETTABLEKS                       R8 R8 K9 ["Z"]
       86 GETTABLEKS                       R9 R0 K4 ["torso"]
       88 GETTABLEKS                       R9 R9 K2 ["minSize"]
       90 GETTABLEKS                       R9 R9 K9 ["Z"]
       92 FASTCALL                         MATH_MAX ; [+2]
       93 GETIMPORT                        R5 K12 [math.max]
       95 CALL                             R5 4 1
       96 GETTABLEKS                       R7 R0 K6 ["head"]
       98 GETTABLEKS                       R7 R7 K5 ["maxSize"]
      100 GETTABLEKS                       R7 R7 K9 ["Z"]
      102 GETTABLEKS                       R8 R0 K1 ["arm"]
      104 GETTABLEKS                       R8 R8 K5 ["maxSize"]
      106 GETTABLEKS                       R8 R8 K9 ["Z"]
      108 GETTABLEKS                       R9 R0 K8 ["leg"]
      110 GETTABLEKS                       R9 R9 K5 ["maxSize"]
      112 GETTABLEKS                       R9 R9 K9 ["Z"]
      114 GETTABLEKS                       R10 R0 K4 ["torso"]
      116 GETTABLEKS                       R10 R10 K5 ["maxSize"]
      118 GETTABLEKS                       R10 R10 K9 ["Z"]
      120 FASTCALL                         MATH_MAX ; [+2]
      121 GETIMPORT                        R6 K12 [math.max]
      123 CALL                             R6 4 1
      124 DUPTABLE                         R7 K13 [{"minSize", "maxSize"}]
      125 FASTCALL3                        VECTOR R1 R3 R5
      127 MOVE                             R9 R1
      128 MOVE                             R10 R3
      129 MOVE                             R11 R5
      130 GETIMPORT                        R8 K16 [Vector3.new]
      132 CALL                             R8 3 1
      133 SETTABLEKS                       R8 R7 K2 ["minSize"]
      135 FASTCALL3                        VECTOR R2 R4 R6
      137 MOVE                             R9 R2
      138 MOVE                             R10 R4
      139 MOVE                             R11 R6
      140 GETIMPORT                        R8 K16 [Vector3.new]
      142 CALL                             R8 3 1
      143 SETTABLEKS                       R8 R7 K5 ["maxSize"]
      145 RETURN                           R7 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["ok"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K1 ["Mixed"] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K2 ["FullBody"]
       11 GETTABLE                         R3 R2 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+3]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 GETTABLEKS                       R4 R3 K0 ["ok"]
       18 JUMPIF                           R4 ; [+2]
       19 LOADNIL                          R4
       20 RETURN                           R4 1
       21 DUPTABLE                         R4 K5 [{"minSize", "maxSize"}]
       22 GETTABLEKS                       R6 R2 K6 ["meshSize"]
       24 GETTABLEKS                       R8 R3 K7 ["X"]
       26 GETTABLEKS                       R8 R8 K8 ["min"]
       28 GETTABLEKS                       R9 R3 K9 ["Y"]
       30 GETTABLEKS                       R9 R9 K8 ["min"]
       32 GETTABLEKS                       R10 R3 K10 ["Z"]
       34 GETTABLEKS                       R10 R10 K8 ["min"]
       36 FASTCALL                         VECTOR ; [+2]
       37 GETIMPORT                        R7 K13 [Vector3.new]
       39 CALL                             R7 3 1
       40 MUL                              R5 R6 R7
       41 SETTABLEKS                       R5 R4 K3 ["minSize"]
       43 GETTABLEKS                       R6 R2 K14 ["overallSize"]
       45 GETTABLEKS                       R8 R3 K7 ["X"]
       47 GETTABLEKS                       R8 R8 K15 ["max"]
       49 GETTABLEKS                       R9 R3 K9 ["Y"]
       51 GETTABLEKS                       R9 R9 K15 ["max"]
       53 GETTABLEKS                       R10 R3 K10 ["Z"]
       55 GETTABLEKS                       R10 R10 K15 ["max"]
       57 FASTCALL                         VECTOR ; [+2]
       58 GETIMPORT                        R7 K13 [Vector3.new]
       60 CALL                             R7 3 1
       61 MUL                              R5 R6 R7
       62 SETTABLEKS                       R5 R4 K4 ["maxSize"]
       64 RETURN                           R4 1

PROTO_15:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 JUMPIFNOTLE                      R4 R3 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R1 K1 ["Y"]
       12 JUMPIFNOTLE                      R4 R3 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["Z"]
       16 GETTABLEKS                       R4 R1 K2 ["Z"]
       18 JUMPIFLE                         R4 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_16:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R1 K0 ["X"]
        5 JUMPIFNOTLE                      R3 R4 ; [+16]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["Y"]
       10 GETTABLEKS                       R4 R1 K1 ["Y"]
       12 JUMPIFNOTLE                      R3 R4 ; [+9]
       14 GETTABLEKS                       R3 R0 K2 ["Z"]
       16 GETTABLEKS                       R4 R1 K2 ["Z"]
       18 JUMPIFLE                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_17:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_18:
        0 DUPCLOSURE                       R2 K0 [PROTO_17]
        1 GETTABLEKS                       R4 R0 K1 ["X"]
        3 GETTABLEKS                       R5 R1 K1 ["X"]
        5 DIV                              R3 R4 R5
        6 GETTABLEKS                       R7 R0 K2 ["Y"]
        8 GETTABLEKS                       R8 R1 K2 ["Y"]
       10 DIV                              R6 R7 R8
       11 FASTCALL2                        MATH_MAX R3 R6 ; [+4]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K5 [math.max]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 GETTABLEKS                       R7 R0 K6 ["Z"]
       20 GETTABLEKS                       R8 R1 K6 ["Z"]
       22 DIV                              R6 R7 R8
       23 FASTCALL2                        MATH_MAX R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K5 [math.max]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 RETURN                           R3 1

PROTO_19:
        0 DIV                              R2 R0 R1
        1 RETURN                           R2 1

PROTO_20:
        0 DUPCLOSURE                       R2 K0 [PROTO_19]
        1 GETTABLEKS                       R4 R0 K1 ["X"]
        3 GETTABLEKS                       R5 R1 K1 ["X"]
        5 DIV                              R3 R4 R5
        6 GETTABLEKS                       R7 R0 K2 ["Y"]
        8 GETTABLEKS                       R8 R1 K2 ["Y"]
       10 DIV                              R6 R7 R8
       11 FASTCALL2                        MATH_MIN R3 R6 ; [+4]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K5 [math.min]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 GETTABLEKS                       R7 R0 K6 ["Z"]
       20 GETTABLEKS                       R8 R1 K6 ["Z"]
       22 DIV                              R6 R7 R8
       23 FASTCALL2                        MATH_MIN R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K5 [math.min]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["coversMin"]
        3 MOVE                             R3 R0
        4 GETTABLEKS                       R4 R1 K1 ["minSize"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["containsMax"]
       11 MOVE                             R3 R0
       12 GETTABLEKS                       R4 R1 K3 ["maxSize"]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AvatarCreationService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarScalingTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["BoundingBoxUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Src"]
       35 GETTABLEKS                       R5 R5 K14 ["Types"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K15 ["Packages"]
       42 GETTABLEKS                       R6 R6 K16 ["UGCValidation"]
       44 CALL                             R5 1 1
       45 NEWTABLE                         R6 16 0
       47 DUPCLOSURE                       R7 K17 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R7 R6 K18 ["getSpecFromProportionType"]
       51 DUPCLOSURE                       R7 K19 [PROTO_2]
       52 SETTABLEKS                       R7 R6 K20 ["createR15BodySegment"]
       54 DUPCLOSURE                       R7 K21 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 SETTABLEKS                       R7 R6 K22 ["getBodyPartR15FromBodySegmentType"]
       58 DUPCLOSURE                       R7 K23 [PROTO_8]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R7 R6 K24 ["createInvalidBodyPartFactory"]
       63 DUPCLOSURE                       R7 K25 [PROTO_10]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R7 R6 K26 ["computeInvalidBodyPartList"]
       67 DUPCLOSURE                       R7 K27 [PROTO_12]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R7 R6 K28 ["getBodyTypeSizeSpecification"]
       72 DUPCLOSURE                       R7 K29 [PROTO_13]
       73 SETTABLEKS                       R7 R6 K30 ["guessAvatarSizeBounds"]
       75 DUPCLOSURE                       R7 K31 [PROTO_14]
       76 SETTABLEKS                       R7 R6 K32 ["getAvatarSizeBoundsFromValidationResults"]
       78 DUPCLOSURE                       R7 K33 [PROTO_15]
       79 SETTABLEKS                       R7 R6 K34 ["coversMin"]
       81 DUPCLOSURE                       R7 K35 [PROTO_16]
       82 SETTABLEKS                       R7 R6 K36 ["containsMax"]
       84 DUPCLOSURE                       R7 K37 [PROTO_18]
       85 SETTABLEKS                       R7 R6 K38 ["getScaleFactorToContain"]
       87 DUPCLOSURE                       R7 K39 [PROTO_20]
       88 SETTABLEKS                       R7 R6 K40 ["getScaleFactorToCover"]
       90 DUPCLOSURE                       R7 K41 [PROTO_21]
       91 CAPTURE                          VAL R6
       92 SETTABLEKS                       R7 R6 K42 ["fitsSizeBounds"]
       94 RETURN                           R6 1
