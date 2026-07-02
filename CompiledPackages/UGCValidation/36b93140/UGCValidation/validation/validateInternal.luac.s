PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["assetTypeEnum"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["assetTypeEnum is required in validateBodyPartInternal"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["isBodyPart"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R2 K3 [assert]
       20 CALL                             R2 -1 0
       21 GETIMPORT                        R2 K8 [Enum.AssetType.DynamicHead]
       23 JUMPIFNOTEQ                      R2 R1 ; [+5]
       25 GETUPVAL                         R2 1
       26 MOVE                             R3 R0
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R0
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["instances required in validationContext for validateInternal"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       20 LOADK                            R3 K5 ["assetTypeEnum required in validationContext for validateInternal"]
       21 GETIMPORT                        R1 K3 [assert]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K0 ["instances"]
       26 GETTABLEKS                       R2 R0 K4 ["assetTypeEnum"]
       28 GETTABLEKS                       R3 R0 K6 ["validateMeshPartAccessories"]
       30 GETUPVAL                         R4 0
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+11]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K7 ["ANIMATION_ASSET_INFO"]
       36 JUMPIFNOT                        R4 ; [+7]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K7 ["ANIMATION_ASSET_INFO"]
       40 GETTABLE                         R4 R5 R2
       41 JUMPIFNOT                        R4 ; [+2]
       42 LOADB                            R4 1
       43 RETURN                           R4 1
       44 GETIMPORT                        R4 K11 [Enum.AssetType.EmoteAnimation]
       46 JUMPIFNOTEQ                      R2 R4 ; [+7]
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K12 ["validate"]
       51 MOVE                             R5 R0
       52 CALL                             R4 1 -1
       53 RETURN                           R4 -1
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R4 R4 K13 ["isMakeupAsset"]
       57 MOVE                             R5 R2
       58 CALL                             R4 1 1
       59 JUMPIFNOT                        R4 ; [+4]
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R0
       62 CALL                             R4 1 -1
       63 RETURN                           R4 -1
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K14 ["isBodyPart"]
       67 MOVE                             R5 R2
       68 CALL                             R4 1 1
       69 JUMPIFNOT                        R4 ; [+4]
       70 GETUPVAL                         R4 5
       71 MOVE                             R5 R0
       72 CALL                             R4 1 -1
       73 RETURN                           R4 -1
       74 GETIMPORT                        R4 K16 [Enum.AssetType.Model]
       76 JUMPIFNOTEQ                      R2 R4 ; [+5]
       78 GETUPVAL                         R4 6
       79 MOVE                             R5 R0
       80 CALL                             R4 1 -1
       81 RETURN                           R4 -1
       82 JUMPIFNOT                        R3 ; [+21]
       83 GETTABLEN                        R4 R1 1
       84 GETUPVAL                         R5 7
       85 MOVE                             R6 R4
       86 CALL                             R5 1 1
       87 JUMPIFNOT                        R5 ; [+12]
       88 GETUPVAL                         R5 8
       89 MOVE                             R6 R4
       90 CALL                             R5 1 1
       91 JUMPIFNOT                        R5 ; [+4]
       92 GETUPVAL                         R5 9
       93 MOVE                             R6 R0
       94 CALL                             R5 1 -1
       95 RETURN                           R5 -1
       96 GETUPVAL                         R5 10
       97 MOVE                             R6 R0
       98 CALL                             R5 1 -1
       99 RETURN                           R5 -1
      100 GETUPVAL                         R5 11
      101 MOVE                             R6 R0
      102 CALL                             R5 1 -1
      103 RETURN                           R5 -1
      104 GETUPVAL                         R4 8
      105 GETTABLEN                        R5 R1 1
      106 CALL                             R4 1 1
      107 JUMPIFNOT                        R4 ; [+4]
      108 GETUPVAL                         R4 9
      109 MOVE                             R5 R0
      110 CALL                             R4 1 -1
      111 RETURN                           R4 -1
      112 GETUPVAL                         R4 11
      113 MOVE                             R5 R0
      114 CALL                             R4 1 -1
      115 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["flags"]
       28 GETTABLEKS                       R5 R5 K10 ["getFFlagUGCValidationAnimationPackSupport"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["util"]
       35 GETTABLEKS                       R6 R6 K11 ["isMeshPartAccessory"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["util"]
       42 GETTABLEKS                       R7 R7 K12 ["isLayeredClothing"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R0 K13 ["validation"]
       49 GETTABLEKS                       R8 R8 K14 ["validateLayeredClothingAccessory"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R0 K13 ["validation"]
       56 GETTABLEKS                       R9 R9 K15 ["validateLegacyAccessory"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R10 R0 K13 ["validation"]
       63 GETTABLEKS                       R10 R10 K16 ["validateMeshPartAccessory"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R11 R0 K13 ["validation"]
       70 GETTABLEKS                       R11 R11 K17 ["validateMakeupAsset"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K4 [require]
       75 GETTABLEKS                       R12 R0 K13 ["validation"]
       77 GETTABLEKS                       R12 R12 K18 ["validateLimbsAndTorso"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K4 [require]
       82 GETTABLEKS                       R13 R0 K13 ["validation"]
       84 GETTABLEKS                       R13 R13 K19 ["validateDynamicHeadMeshPartFormat"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K4 [require]
       89 GETTABLEKS                       R14 R0 K13 ["validation"]
       91 GETTABLEKS                       R14 R14 K20 ["validatePackage"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K4 [require]
       96 GETTABLEKS                       R15 R0 K13 ["validation"]
       98 GETTABLEKS                       R15 R15 K21 ["ValidateEmoteAnimation"]
      100 CALL                             R14 1 1
      101 DUPCLOSURE                       R15 K22 [PROTO_0]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R11
      105 DUPCLOSURE                       R16 K23 [PROTO_1]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R8
      118 RETURN                           R16 1
