PROTO_0:
        0 JUMPIFEQKNIL                     R2 ; [+30]
        2 GETIMPORT                        R3 K3 [Enum.BundleType.BodyParts]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["UploadCategory"]
        9 GETTABLEKS                       R3 R3 K5 ["FULL_BODY"]
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETIMPORT                        R3 K7 [Enum.BundleType.Animations]
       17 JUMPIFNOTEQ                      R2 R3 ; [+7]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["UploadCategory"]
       22 GETTABLEKS                       R3 R3 K8 ["ANIMATION_PACK"]
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["UploadCategory"]
       28 GETTABLEKS                       R3 R3 K9 ["BOTH_SHOES"]
       30 RETURN                           R3 1
       31 FASTCALL1                        ASSERT R1 ; [+3]
       32 MOVE                             R4 R1
       33 GETIMPORT                        R3 K11 [assert]
       35 CALL                             R3 1 0
       36 LOADNIL                          R3
       37 GETIMPORT                        R4 K14 [Enum.AssetType.EmoteAnimation]
       39 JUMPIFNOTEQ                      R1 R4 ; [+7]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
       44 GETTABLEKS                       R3 R4 K15 ["EMOTE_ANIMATION"]
       46 JUMP                             ; [+93]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K16 ["ASSET_TYPE_INFO"]
       50 GETTABLE                         R4 R5 R1
       51 JUMPIFNOT                        R4 ; [+24]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K16 ["ASSET_TYPE_INFO"]
       55 GETTABLE                         R4 R5 R1
       56 GETTABLEKS                       R4 R4 K17 ["isBodyPart"]
       58 JUMPIFNOT                        R4 ; [+17]
       59 GETIMPORT                        R5 K19 [Enum.AssetType.DynamicHead]
       61 JUMPIFNOTEQ                      R1 R5 ; [+7]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
       66 GETTABLEKS                       R4 R4 K20 ["DYNAMIC_HEAD"]
       68 JUMPIF                           R4 ; [+5]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
       72 GETTABLEKS                       R4 R4 K21 ["TORSO_AND_LIMBS"]
       74 MOVE                             R3 R4
       75 JUMP                             ; [+64]
       76 GETIMPORT                        R4 K24 [table.find]
       78 GETUPVAL                         R5 3
       79 GETTABLEKS                       R7 R1 K25 ["Value"]
       81 FASTCALL1                        TOSTRING R7 ; [+2]
       82 GETIMPORT                        R6 K27 [tostring]
       84 CALL                             R6 1 1
       85 CALL                             R4 2 1
       86 JUMPIFNOT                        R4 ; [+6]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
       90 GETTABLEKS                       R3 R4 K28 ["LAYERED_CLOTHING"]
       92 JUMP                             ; [+47]
       93 GETUPVAL                         R5 2
       94 GETTABLEKS                       R5 R5 K16 ["ASSET_TYPE_INFO"]
       96 GETTABLE                         R4 R5 R1
       97 JUMPIFNOT                        R4 ; [+13]
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R5 R5 K16 ["ASSET_TYPE_INFO"]
      101 GETTABLE                         R4 R5 R1
      102 GETTABLEKS                       R4 R4 K29 ["rigidAllowed"]
      104 JUMPIFNOT                        R4 ; [+6]
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
      108 GETTABLEKS                       R3 R4 K30 ["RIGID_ACCESSORY"]
      110 JUMP                             ; [+29]
      111 GETUPVAL                         R4 4
      112 GETTABLEKS                       R4 R4 K31 ["isMakeupAsset"]
      114 MOVE                             R5 R1
      115 CALL                             R4 1 1
      116 JUMPIFNOT                        R4 ; [+6]
      117 GETUPVAL                         R4 0
      118 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
      120 GETTABLEKS                       R3 R4 K32 ["MAKEUP"]
      122 JUMP                             ; [+17]
      123 GETUPVAL                         R4 1
      124 CALL                             R4 0 1
      125 JUMPIFNOT                        R4 ; [+14]
      126 GETUPVAL                         R4 2
      127 GETTABLEKS                       R4 R4 K33 ["ANIMATION_ASSET_INFO"]
      129 JUMPIFNOT                        R4 ; [+10]
      130 GETUPVAL                         R5 2
      131 GETTABLEKS                       R5 R5 K33 ["ANIMATION_ASSET_INFO"]
      133 GETTABLE                         R4 R5 R1
      134 JUMPIFNOT                        R4 ; [+5]
      135 GETUPVAL                         R4 0
      136 GETTABLEKS                       R4 R4 K4 ["UploadCategory"]
      138 GETTABLEKS                       R3 R4 K34 ["ANIMATION"]
      140 JUMPIFNOTEQKNIL                  R3 ; [+13]
      142 GETIMPORT                        R4 K36 [error]
      144 LOADK                            R6 K37 ["No assigned validation category for %*, %*, %* "]
      145 GETTABLEKS                       R8 R0 K38 ["Name"]
      147 MOVE                             R9 R1
      148 MOVE                             R10 R2
      149 NAMECALL                         R6 R6 K39 ["format"]
      151 CALL                             R6 4 1
      152 MOVE                             R5 R6
      153 CALL                             R4 1 0
      154 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["validationSystem"]
       11 GETTABLEKS                       R2 R2 K6 ["ValidationEnums"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["flags"]
       28 GETTABLEKS                       R5 R5 K10 ["getFStringUGCLCAllowedAssetTypeIds"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K9 ["flags"]
       35 GETTABLEKS                       R6 R6 K11 ["getFFlagUGCValidationAnimationPackSupport"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K14 [string.split]
       40 MOVE                             R7 R4
       41 CALL                             R7 0 1
       42 LOADK                            R8 K15 [","]
       43 CALL                             R6 2 1
       44 DUPCLOSURE                       R7 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
