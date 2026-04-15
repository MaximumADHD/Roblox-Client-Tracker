PROTO_0:
        0 JUMPIFEQKNIL                     R2 ; [+17]
        2 GETIMPORT                        R3 K3 [Enum.BundleType.BodyParts]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
        9 GETTABLEKS                       R3 R4 K5 ["FULL_BODY"]
       11 RETURN                           R3 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
       15 GETTABLEKS                       R3 R4 K6 ["BOTH_SHOES"]
       17 RETURN                           R3 1
       18 FASTCALL1                        ASSERT R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K8 [assert]
       22 CALL                             R3 1 0
       23 LOADNIL                          R3
       24 GETIMPORT                        R4 K11 [Enum.AssetType.EmoteAnimation]
       26 JUMPIFNOTEQ                      R1 R4 ; [+7]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
       31 GETTABLEKS                       R3 R4 K12 ["EMOTE_ANIMATION"]
       33 JUMP                             ; [+78]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K13 ["ASSET_TYPE_INFO"]
       37 GETTABLE                         R4 R5 R1
       38 JUMPIFNOT                        R4 ; [+24]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K13 ["ASSET_TYPE_INFO"]
       42 GETTABLE                         R5 R6 R1
       43 GETTABLEKS                       R4 R5 K14 ["isBodyPart"]
       45 JUMPIFNOT                        R4 ; [+17]
       46 GETIMPORT                        R5 K16 [Enum.AssetType.DynamicHead]
       48 JUMPIFNOTEQ                      R1 R5 ; [+7]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R5 R6 K4 ["UploadCategory"]
       53 GETTABLEKS                       R4 R5 K17 ["DYNAMIC_HEAD"]
       55 JUMPIF                           R4 ; [+5]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K4 ["UploadCategory"]
       59 GETTABLEKS                       R4 R5 K18 ["TORSO_AND_LIMBS"]
       61 MOVE                             R3 R4
       62 JUMP                             ; [+49]
       63 GETIMPORT                        R4 K21 [table.find]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R7 R1 K22 ["Value"]
       68 FASTCALL1                        TOSTRING R7 ; [+2]
       69 GETIMPORT                        R6 K24 [tostring]
       71 CALL                             R6 1 1
       72 CALL                             R4 2 1
       73 JUMPIFNOT                        R4 ; [+6]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
       77 GETTABLEKS                       R3 R4 K25 ["LAYERED_CLOTHING"]
       79 JUMP                             ; [+32]
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R5 R6 K13 ["ASSET_TYPE_INFO"]
       83 GETTABLE                         R4 R5 R1
       84 JUMPIFNOT                        R4 ; [+13]
       85 GETUPVAL                         R7 1
       86 GETTABLEKS                       R6 R7 K13 ["ASSET_TYPE_INFO"]
       88 GETTABLE                         R5 R6 R1
       89 GETTABLEKS                       R4 R5 K26 ["rigidAllowed"]
       91 JUMPIFNOT                        R4 ; [+6]
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
       95 GETTABLEKS                       R3 R4 K27 ["RIGID_ACCESSORY"]
       97 JUMP                             ; [+14]
       98 GETUPVAL                         R4 3
       99 CALL                             R4 0 1
      100 JUMPIFNOT                        R4 ; [+11]
      101 GETUPVAL                         R5 4
      102 GETTABLEKS                       R4 R5 K28 ["isMakeupAsset"]
      104 MOVE                             R5 R1
      105 CALL                             R4 1 1
      106 JUMPIFNOT                        R4 ; [+5]
      107 GETUPVAL                         R5 0
      108 GETTABLEKS                       R4 R5 K4 ["UploadCategory"]
      110 GETTABLEKS                       R3 R4 K29 ["MAKEUP"]
      112 JUMPIFNOTEQKNIL                  R3 ; [+13]
      114 GETIMPORT                        R4 K31 [error]
      116 LOADK                            R6 K32 ["No assigned validation category for %*, %*, %* "]
      117 GETTABLEKS                       R8 R0 K33 ["Name"]
      119 MOVE                             R9 R1
      120 MOVE                             R10 R2
      121 NAMECALL                         R6 R6 K34 ["format"]
      123 CALL                             R6 4 1
      124 MOVE                             R5 R6
      125 CALL                             R4 1 0
      126 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["validationSystem"]
       11 GETTABLEKS                       R2 R3 K6 ["ValidationEnums"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K9 ["flags"]
       28 GETTABLEKS                       R5 R6 K10 ["getFStringUGCLCAllowedAssetTypeIds"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K9 ["flags"]
       35 GETTABLEKS                       R6 R7 K11 ["getFFlagUGCValidateMakeupAssetTypeNewPipeline"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K14 [string.split]
       40 MOVE                             R7 R4
       41 CALL                             R7 0 1
       42 LOADK                            R8 K15 [","]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
