PROTO_0:
        0 LOADK                            R3 K0 ["AvatarPartScaleType"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["AvatarPartScaleTypes"]
        8 GETTABLEKS                       R4 R1 K3 ["Value"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["Value"]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R1
        4 LOADNIL                          R4
        5 GETIMPORT                        R5 K4 [Enum.AssetType.DynamicHead]
        7 JUMPIFNOTEQ                      R5 R1 ; [+18]
        9 LOADK                            R8 K5 ["AvatarPartScaleType"]
       10 NAMECALL                         R6 R0 K6 ["FindFirstChild"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+10]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["AvatarPartScaleTypes"]
       17 GETTABLEKS                       R9 R6 K8 ["Value"]
       19 GETTABLE                         R7 R8 R9
       20 JUMPIFNOT                        R7 ; [+3]
       21 GETTABLEKS                       R5 R6 K8 ["Value"]
       23 RETURN                           R5 1
       24 LOADNIL                          R5
       25 RETURN                           R5 1
       26 GETIMPORT                        R5 K10 [pairs]
       28 GETTABLEKS                       R6 R3 K11 ["subParts"]
       30 CALL                             R5 1 3
       31 FORGPREP_NEXT                    R5
       32 MOVE                             R12 R8
       33 NAMECALL                         R10 R0 K6 ["FindFirstChild"]
       35 CALL                             R10 2 1
       36 JUMPIFNOT                        R10 ; [+35]
       37 LOADK                            R14 K5 ["AvatarPartScaleType"]
       38 NAMECALL                         R12 R10 K6 ["FindFirstChild"]
       40 CALL                             R12 2 1
       41 JUMPIFNOT                        R12 ; [+10]
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R14 R14 K7 ["AvatarPartScaleTypes"]
       45 GETTABLEKS                       R15 R12 K8 ["Value"]
       47 GETTABLE                         R13 R14 R15
       48 JUMPIFNOT                        R13 ; [+3]
       49 GETTABLEKS                       R11 R12 K8 ["Value"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R11
       53 JUMPIFNOT                        R11 ; [+18]
       54 JUMPIFNOTEQKNIL                  R4 ; [+3]
       56 MOVE                             R4 R11
       57 JUMP                             ; [+14]
       58 JUMPIFEQ                         R4 R11 ; [+13]
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R14 R14 K12 ["Keys"]
       63 GETTABLEKS                       R14 R14 K13 ["AssetBounds_InconsistentScaleType"]
       65 LOADNIL                          R15
       66 MOVE                             R16 R0
       67 NAMECALL                         R12 R2 K14 ["fail"]
       69 CALL                             R12 4 0
       70 LOADNIL                          R12
       71 RETURN                           R12 1
       72 FORGLOOP                         R5 1 ; [-41]
       74 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R6 R2 K0 ["maxMeshCorner"]
        2 GETTABLEKS                       R7 R2 K1 ["minMeshCorner"]
        4 SUB                              R5 R6 R7
        5 NEWTABLE                         R6 0 3
        7 LOADK                            R9 K2 ["X"]
        8 LOADK                            R10 K3 ["Y"]
        9 LOADK                            R11 K4 ["Z"]
       10 SETLIST                          R6 R9 3 [1]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLE                         R11 R5 R10
       16 GETTABLE                         R12 R0 R10
       17 JUMPIFNOTLT                      R11 R12 ; [+29]
       19 GETUPVAL                         R15 0
       20 GETTABLEKS                       R15 R15 K5 ["Keys"]
       22 GETTABLEKS                       R15 R15 K6 ["AssetBounds_TooSmall"]
       24 DUPTABLE                         R16 K11 [{"assetName", "axis", "currentSize", "minSize"}]
       25 SETTABLEKS                       R1 R16 K7 ["assetName"]
       27 SETTABLEKS                       R10 R16 K8 ["axis"]
       29 GETIMPORT                        R17 K14 [string.format]
       31 LOADK                            R18 K15 ["%.2f"]
       32 MOVE                             R19 R11
       33 CALL                             R17 2 1
       34 SETTABLEKS                       R17 R16 K9 ["currentSize"]
       36 GETIMPORT                        R17 K14 [string.format]
       38 LOADK                            R18 K15 ["%.2f"]
       39 MOVE                             R19 R12
       40 CALL                             R17 2 1
       41 SETTABLEKS                       R17 R16 K10 ["minSize"]
       43 MOVE                             R17 R4
       44 NAMECALL                         R13 R3 K16 ["fail"]
       46 CALL                             R13 4 0
       47 FORGLOOP                         R6 2 ; [-33]
       49 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R6 R2 K0 ["maxOverall"]
        2 GETTABLEKS                       R7 R2 K1 ["minOverall"]
        4 SUB                              R5 R6 R7
        5 NEWTABLE                         R6 0 3
        7 LOADK                            R9 K2 ["X"]
        8 LOADK                            R10 K3 ["Y"]
        9 LOADK                            R11 K4 ["Z"]
       10 SETLIST                          R6 R9 3 [1]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLE                         R11 R5 R10
       16 GETTABLE                         R12 R0 R10
       17 JUMPIFNOTLT                      R12 R11 ; [+29]
       19 GETUPVAL                         R15 0
       20 GETTABLEKS                       R15 R15 K5 ["Keys"]
       22 GETTABLEKS                       R15 R15 K6 ["AssetBounds_TooLarge"]
       24 DUPTABLE                         R16 K11 [{"assetName", "axis", "currentSize", "maxSize"}]
       25 SETTABLEKS                       R1 R16 K7 ["assetName"]
       27 SETTABLEKS                       R10 R16 K8 ["axis"]
       29 GETIMPORT                        R17 K14 [string.format]
       31 LOADK                            R18 K15 ["%.2f"]
       32 MOVE                             R19 R11
       33 CALL                             R17 2 1
       34 SETTABLEKS                       R17 R16 K9 ["currentSize"]
       36 GETIMPORT                        R17 K14 [string.format]
       38 LOADK                            R18 K15 ["%.2f"]
       39 MOVE                             R19 R12
       40 CALL                             R17 2 1
       41 SETTABLEKS                       R17 R16 K10 ["maxSize"]
       43 MOVE                             R17 R4
       44 NAMECALL                         R13 R3 K16 ["fail"]
       46 CALL                             R13 4 0
       47 FORGLOOP                         R6 2 ; [-33]
       49 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 LOADNIL                          R3
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 LOADK                            R11 K0 ["AvatarPartScaleType"]
        6 NAMECALL                         R9 R8 K1 ["FindFirstChild"]
        8 CALL                             R9 2 1
        9 JUMPIFNOT                        R9 ; [+43]
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R11 R11 K2 ["AvatarPartScaleTypes"]
       13 GETTABLEKS                       R12 R9 K3 ["Value"]
       15 GETTABLE                         R10 R11 R12
       16 JUMPIF                           R10 ; [+16]
       17 GETUPVAL                         R12 1
       18 GETTABLEKS                       R12 R12 K4 ["Keys"]
       20 GETTABLEKS                       R12 R12 K5 ["ScaleTypeInvalid"]
       22 DUPTABLE                         R13 K7 [{"ParentName"}]
       23 GETTABLEKS                       R14 R8 K8 ["Name"]
       25 SETTABLEKS                       R14 R13 K6 ["ParentName"]
       27 MOVE                             R14 R8
       28 NAMECALL                         R10 R1 K9 ["fail"]
       30 CALL                             R10 4 0
       31 LOADNIL                          R10
       32 RETURN                           R10 1
       33 GETTABLEKS                       R10 R9 K3 ["Value"]
       35 JUMPIFNOTEQKNIL                  R3 ; [+3]
       37 MOVE                             R3 R10
       38 JUMP                             ; [+14]
       39 JUMPIFEQ                         R3 R10 ; [+13]
       41 GETUPVAL                         R13 1
       42 GETTABLEKS                       R13 R13 K4 ["Keys"]
       44 GETTABLEKS                       R13 R13 K10 ["AssetBounds_InconsistentScaleType"]
       46 LOADNIL                          R14
       47 MOVE                             R15 R2
       48 NAMECALL                         R11 R1 K9 ["fail"]
       50 CALL                             R11 4 0
       51 LOADNIL                          R11
       52 RETURN                           R11 1
       53 FORGLOOP                         R4 2 ; [-49]
       55 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        4 GETTABLEKS                       R4 R1 K2 ["uploadCategory"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["UploadCategory"]
        9 GETTABLEKS                       R5 R5 K4 ["FULL_BODY"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+54]
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 GETIMPORT                        R6 K6 [next]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 JUMPIF                           R6 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R6 2
       25 MOVE                             R7 R5
       26 MOVE                             R8 R0
       27 MOVE                             R9 R2
       28 CALL                             R6 3 1
       29 JUMPIF                           R6 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K7 ["FULL_BODY_BOUNDS"]
       34 GETTABLE                         R7 R8 R6
       35 JUMPIF                           R7 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R8 4
       38 GETTABLEKS                       R8 R8 K8 ["calculateFullBodyBoundsFromData"]
       40 MOVE                             R9 R5
       41 MOVE                             R10 R3
       42 CALL                             R8 2 3
       43 JUMPIF                           R8 ; [+5]
       44 LOADK                            R13 K9 ["Failed to calculate full body bounds"]
       45 NAMECALL                         R11 R0 K10 ["fetchError"]
       47 CALL                             R11 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R12 R7 K11 ["minSize"]
       52 LOADK                            R13 K12 ["Full body"]
       53 MOVE                             R14 R10
       54 MOVE                             R15 R0
       55 MOVE                             R16 R2
       56 CALL                             R11 5 0
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R12 R7 K13 ["maxSize"]
       60 LOADK                            R13 K12 ["Full body"]
       61 MOVE                             R14 R10
       62 MOVE                             R15 R0
       63 MOVE                             R16 R2
       64 CALL                             R11 5 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R5 R1 K14 ["uploadEnum"]
       68 GETTABLEKS                       R5 R5 K15 ["assetType"]
       70 GETUPVAL                         R6 7
       71 MOVE                             R7 R2
       72 MOVE                             R8 R5
       73 MOVE                             R9 R0
       74 CALL                             R6 3 1
       75 JUMPIF                           R6 ; [+1]
       76 RETURN                           R0 0
       77 GETUPVAL                         R8 3
       78 GETTABLEKS                       R8 R8 K16 ["ASSET_TYPE_INFO"]
       80 GETTABLE                         R7 R8 R5
       81 JUMPIFNOT                        R7 ; [+7]
       82 GETTABLEKS                       R8 R7 K17 ["bounds"]
       84 JUMPIFNOT                        R8 ; [+4]
       85 GETTABLEKS                       R9 R7 K17 ["bounds"]
       87 GETTABLE                         R8 R9 R6
       88 JUMPIF                           R8 ; [+1]
       89 RETURN                           R0 0
       90 JUMPIF                           R3 ; [+1]
       91 RETURN                           R0 0
       92 GETUPVAL                         R8 4
       93 GETTABLEKS                       R8 R8 K18 ["calculateAssetBoundsFromData"]
       95 MOVE                             R9 R2
       96 MOVE                             R10 R5
       97 MOVE                             R11 R3
       98 CALL                             R8 3 3
       99 JUMPIF                           R8 ; [+8]
      100 LOADK                            R14 K19 ["Failed to calculate asset bounds for "]
      101 GETTABLEKS                       R15 R5 K20 ["Name"]
      103 CONCAT                           R13 R14 R15
      104 NAMECALL                         R11 R0 K10 ["fetchError"]
      106 CALL                             R11 2 0
      107 RETURN                           R0 0
      108 GETTABLEKS                       R11 R5 K20 ["Name"]
      110 GETUPVAL                         R12 5
      111 GETTABLEKS                       R14 R7 K17 ["bounds"]
      113 GETTABLE                         R13 R14 R6
      114 GETTABLEKS                       R13 R13 K11 ["minSize"]
      116 MOVE                             R14 R11
      117 MOVE                             R15 R10
      118 MOVE                             R16 R0
      119 MOVE                             R17 R2
      120 CALL                             R12 5 0
      121 GETUPVAL                         R12 6
      122 GETTABLEKS                       R14 R7 K17 ["bounds"]
      124 GETTABLE                         R13 R14 R6
      125 GETTABLEKS                       R13 R13 K13 ["maxSize"]
      127 MOVE                             R14 R11
      128 MOVE                             R15 R10
      129 MOVE                             R16 R0
      130 MOVE                             R17 R2
      131 CALL                             R12 5 0
      132 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R6 K11 ["BoundsCalculator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K12 ["flags"]
       46 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateMigrateBodyPartBounds"]
       48 CALL                             R6 1 1
       49 NEWTABLE                         R7 8 0
       51 NEWTABLE                         R8 0 3
       53 GETTABLEKS                       R9 R3 K14 ["UploadCategory"]
       55 GETTABLEKS                       R9 R9 K15 ["TORSO_AND_LIMBS"]
       57 GETTABLEKS                       R10 R3 K14 ["UploadCategory"]
       59 GETTABLEKS                       R10 R10 K16 ["DYNAMIC_HEAD"]
       61 GETTABLEKS                       R11 R3 K14 ["UploadCategory"]
       63 GETTABLEKS                       R11 R11 K17 ["FULL_BODY"]
       65 SETLIST                          R8 R9 3 [1]
       67 SETTABLEKS                       R8 R7 K18 ["categories"]
       69 NEWTABLE                         R8 0 2
       71 GETTABLEKS                       R9 R3 K19 ["SharedDataMember"]
       73 GETTABLEKS                       R9 R9 K20 ["rootInstance"]
       75 GETTABLEKS                       R10 R3 K19 ["SharedDataMember"]
       77 GETTABLEKS                       R10 R10 K21 ["uploadEnum"]
       79 SETLIST                          R8 R9 2 [1]
       81 SETTABLEKS                       R8 R7 K22 ["requiredData"]
       83 NEWTABLE                         R8 0 1
       85 GETTABLEKS                       R9 R3 K19 ["SharedDataMember"]
       87 GETTABLEKS                       R9 R9 K23 ["renderMeshesData"]
       89 SETLIST                          R8 R9 1 [1]
       91 SETTABLEKS                       R8 R7 K24 ["conditionalData"]
       93 SETTABLEKS                       R6 R7 K25 ["fflag"]
       95 NEWTABLE                         R8 0 0
       97 SETTABLEKS                       R8 R7 K26 ["expectedFailures"]
       99 DUPCLOSURE                       R8 K27 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R9 K28 [PROTO_1]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 DUPCLOSURE                       R10 K29 [PROTO_2]
      105 CAPTURE                          VAL R4
      106 DUPCLOSURE                       R11 K30 [PROTO_3]
      107 CAPTURE                          VAL R4
      108 DUPCLOSURE                       R12 K31 [PROTO_4]
      109 DUPCLOSURE                       R13 K32 [PROTO_5]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R4
      112 DUPCLOSURE                       R14 K33 [PROTO_6]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R9
      121 SETTABLEKS                       R14 R7 K34 ["run"]
      123 RETURN                           R7 1
