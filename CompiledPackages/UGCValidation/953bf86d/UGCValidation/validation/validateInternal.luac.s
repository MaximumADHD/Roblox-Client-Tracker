PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["assetTypeEnum"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["assetTypeEnum is required in validateBodyPartInternal"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K4 ["isBodyPart"]
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
       30 GETIMPORT                        R4 K10 [Enum.AssetType.EmoteAnimation]
       32 JUMPIFNOTEQ                      R2 R4 ; [+7]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K11 ["validate"]
       37 MOVE                             R5 R0
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1
       40 GETUPVAL                         R4 1
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+10]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R4 R5 K12 ["isMakeupAsset"]
       46 MOVE                             R5 R2
       47 CALL                             R4 1 1
       48 JUMPIFNOT                        R4 ; [+4]
       49 GETUPVAL                         R4 3
       50 MOVE                             R5 R0
       51 CALL                             R4 1 -1
       52 RETURN                           R4 -1
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R4 R5 K13 ["isBodyPart"]
       56 MOVE                             R5 R2
       57 CALL                             R4 1 1
       58 JUMPIFNOT                        R4 ; [+4]
       59 GETUPVAL                         R4 4
       60 MOVE                             R5 R0
       61 CALL                             R4 1 -1
       62 RETURN                           R4 -1
       63 GETUPVAL                         R4 5
       64 CALL                             R4 0 1
       65 JUMPIFNOT                        R4 ; [+8]
       66 GETIMPORT                        R4 K15 [Enum.AssetType.Model]
       68 JUMPIFNOTEQ                      R2 R4 ; [+5]
       70 GETUPVAL                         R4 6
       71 MOVE                             R5 R0
       72 CALL                             R4 1 -1
       73 RETURN                           R4 -1
       74 JUMPIFNOT                        R3 ; [+21]
       75 GETTABLEN                        R4 R1 1
       76 GETUPVAL                         R5 7
       77 MOVE                             R6 R4
       78 CALL                             R5 1 1
       79 JUMPIFNOT                        R5 ; [+12]
       80 GETUPVAL                         R5 8
       81 MOVE                             R6 R4
       82 CALL                             R5 1 1
       83 JUMPIFNOT                        R5 ; [+4]
       84 GETUPVAL                         R5 9
       85 MOVE                             R6 R0
       86 CALL                             R5 1 -1
       87 RETURN                           R5 -1
       88 GETUPVAL                         R5 10
       89 MOVE                             R6 R0
       90 CALL                             R5 1 -1
       91 RETURN                           R5 -1
       92 GETUPVAL                         R5 11
       93 MOVE                             R6 R0
       94 CALL                             R5 1 -1
       95 RETURN                           R5 -1
       96 GETUPVAL                         R4 8
       97 GETTABLEN                        R5 R1 1
       98 CALL                             R4 1 1
       99 JUMPIFNOT                        R4 ; [+4]
      100 GETUPVAL                         R4 9
      101 MOVE                             R5 R0
      102 CALL                             R4 1 -1
      103 RETURN                           R4 -1
      104 GETUPVAL                         R4 11
      105 MOVE                             R5 R0
      106 CALL                             R4 1 -1
      107 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K7 ["flags"]
       18 GETTABLEKS                       R3 R4 K8 ["getFFlagAddUGCValidationForPackage"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["flags"]
       25 GETTABLEKS                       R4 R5 K9 ["getFFlagUGCValidationMakeupSupport"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K10 ["ConstantsInterface"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R7 K11 ["isMeshPartAccessory"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["util"]
       44 GETTABLEKS                       R7 R8 K12 ["isLayeredClothing"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K13 ["validation"]
       51 GETTABLEKS                       R8 R9 K14 ["validateLayeredClothingAccessory"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K13 ["validation"]
       58 GETTABLEKS                       R9 R10 K15 ["validateLegacyAccessory"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K13 ["validation"]
       65 GETTABLEKS                       R10 R11 K16 ["validateMeshPartAccessory"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K13 ["validation"]
       72 GETTABLEKS                       R11 R12 K17 ["validateMakeupAsset"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K13 ["validation"]
       79 GETTABLEKS                       R12 R13 K18 ["validateLimbsAndTorso"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K13 ["validation"]
       86 GETTABLEKS                       R13 R14 K19 ["validateDynamicHeadMeshPartFormat"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K13 ["validation"]
       93 GETTABLEKS                       R14 R15 K20 ["validatePackage"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R16 R0 K13 ["validation"]
      100 GETTABLEKS                       R15 R16 K21 ["ValidateEmoteAnimation"]
      102 CALL                             R14 1 1
      103 DUPCLOSURE                       R15 K22 [PROTO_0]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R11
      107 DUPCLOSURE                       R16 K23 [PROTO_1]
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R8
      120 RETURN                           R16 1
