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
       63 GETIMPORT                        R4 K15 [Enum.AssetType.Model]
       65 JUMPIFNOTEQ                      R2 R4 ; [+5]
       67 GETUPVAL                         R4 5
       68 MOVE                             R5 R0
       69 CALL                             R4 1 -1
       70 RETURN                           R4 -1
       71 JUMPIFNOT                        R3 ; [+21]
       72 GETTABLEN                        R4 R1 1
       73 GETUPVAL                         R5 6
       74 MOVE                             R6 R4
       75 CALL                             R5 1 1
       76 JUMPIFNOT                        R5 ; [+12]
       77 GETUPVAL                         R5 7
       78 MOVE                             R6 R4
       79 CALL                             R5 1 1
       80 JUMPIFNOT                        R5 ; [+4]
       81 GETUPVAL                         R5 8
       82 MOVE                             R6 R0
       83 CALL                             R5 1 -1
       84 RETURN                           R5 -1
       85 GETUPVAL                         R5 9
       86 MOVE                             R6 R0
       87 CALL                             R5 1 -1
       88 RETURN                           R5 -1
       89 GETUPVAL                         R5 10
       90 MOVE                             R6 R0
       91 CALL                             R5 1 -1
       92 RETURN                           R5 -1
       93 GETUPVAL                         R4 7
       94 GETTABLEN                        R5 R1 1
       95 CALL                             R4 1 1
       96 JUMPIFNOT                        R4 ; [+4]
       97 GETUPVAL                         R4 8
       98 MOVE                             R5 R0
       99 CALL                             R4 1 -1
      100 RETURN                           R4 -1
      101 GETUPVAL                         R4 10
      102 MOVE                             R5 R0
      103 CALL                             R4 1 -1
      104 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["getFFlagUGCValidationMakeupSupport"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["ConstantsInterface"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K5 ["util"]
       30 GETTABLEKS                       R5 R6 K10 ["isMeshPartAccessory"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R7 K11 ["isLayeredClothing"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K12 ["validation"]
       44 GETTABLEKS                       R7 R8 K13 ["validateLayeredClothingAccessory"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K12 ["validation"]
       51 GETTABLEKS                       R8 R9 K14 ["validateLegacyAccessory"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K12 ["validation"]
       58 GETTABLEKS                       R9 R10 K15 ["validateMeshPartAccessory"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K12 ["validation"]
       65 GETTABLEKS                       R10 R11 K16 ["validateMakeupAsset"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K12 ["validation"]
       72 GETTABLEKS                       R11 R12 K17 ["validateLimbsAndTorso"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K12 ["validation"]
       79 GETTABLEKS                       R12 R13 K18 ["validateDynamicHeadMeshPartFormat"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K12 ["validation"]
       86 GETTABLEKS                       R13 R14 K19 ["validatePackage"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K12 ["validation"]
       93 GETTABLEKS                       R14 R15 K20 ["ValidateEmoteAnimation"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K21 [PROTO_0]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R10
      100 DUPCLOSURE                       R15 K22 [PROTO_1]
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R7
      112 RETURN                           R15 1
