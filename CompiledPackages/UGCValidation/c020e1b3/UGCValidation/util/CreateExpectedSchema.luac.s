PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["Name"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K1 ["FOLDER_NAMES"]
        9 GETTABLEKS                       R7 R7 K2 ["R15ArtistIntent"]
       11 JUMPIFNOTEQ                      R6 R7 ; [+2]
       13 RETURN                           R5 1
       14 FORGLOOP                         R1 2 ; [-11]
       16 GETTABLEN                        R1 R0 1
       17 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"ClassName", "_children"}]
        1 LOADK                            R2 K3 ["Folder"]
        2 SETTABLEKS                       R2 R1 K0 ["ClassName"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["_children"]
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R8 R6 K4 ["allSelectedInstances"]
       14 MOVE                             R9 R8
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 GETTABLEKS                       R14 R13 K5 ["Name"]
       20 GETUPVAL                         R15 0
       21 GETTABLEKS                       R15 R15 K6 ["FOLDER_NAMES"]
       23 GETTABLEKS                       R15 R15 K7 ["R15ArtistIntent"]
       25 JUMPIFNOTEQ                      R14 R15 ; [+3]
       27 MOVE                             R7 R13
       28 JUMP                             ; [+3]
       29 FORGLOOP                         R9 2 ; [-12]
       31 GETTABLEN                        R7 R8 1
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R7
       34 GETTABLEKS                       R10 R6 K8 ["assetTypeEnum"]
       36 LOADNIL                          R11
       37 CALL                             R8 3 1
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K9 ["generateAssetSchema"]
       41 MOVE                             R10 R8
       42 GETTABLEKS                       R11 R6 K8 ["assetTypeEnum"]
       44 MOVE                             R12 R7
       45 CALL                             R9 3 1
       46 GETTABLEKS                       R10 R9 K0 ["ClassName"]
       48 JUMPIFNOTEQKS                    R10 K3 ["Folder"] ; [+17]
       50 GETTABLEKS                       R10 R9 K1 ["_children"]
       52 LOADNIL                          R11
       53 LOADNIL                          R12
       54 FORGPREP                         R10
       55 GETTABLEKS                       R16 R1 K1 ["_children"]
       57 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       59 MOVE                             R17 R14
       60 GETIMPORT                        R15 K12 [table.insert]
       62 CALL                             R15 2 0
       63 FORGLOOP                         R10 2 ; [-9]
       65 JUMP                             ; [+8]
       66 GETTABLEKS                       R11 R1 K1 ["_children"]
       68 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       70 MOVE                             R12 R9
       71 GETIMPORT                        R10 K12 [table.insert]
       73 CALL                             R10 2 0
       74 FORGLOOP                         R2 2 ; [-63]
       76 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 DUPTABLE                         R2 K3 [{"ClassName", "_children"}]
        5 LOADK                            R3 K4 ["Folder"]
        6 SETTABLEKS                       R3 R2 K1 ["ClassName"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K2 ["_children"]
       12 GETIMPORT                        R3 K6 [pairs]
       14 GETTABLEKS                       R4 R1 K7 ["subParts"]
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R0
       20 MOVE                             R10 R6
       21 CALL                             R8 2 1
       22 GETTABLEKS                       R10 R2 K2 ["_children"]
       24 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       26 MOVE                             R11 R8
       27 GETIMPORT                        R9 K10 [table.insert]
       29 CALL                             R9 2 0
       30 FORGLOOP                         R3 1 ; [-13]
       32 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+26]
        3 GETIMPORT                        R2 K3 [Enum.AssetType.EyebrowAccessory]
        5 JUMPIFEQ                         R0 R2 ; [+5]
        7 GETIMPORT                        R2 K5 [Enum.AssetType.EyelashAccessory]
        9 JUMPIFNOTEQ                      R0 R2 ; [+10]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K6 ["ASSET_TYPE_INFO"]
       15 GETTABLE                         R3 R4 R0
       16 GETTABLEKS                       R3 R3 K7 ["attachmentNames"]
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["ASSET_TYPE_INFO"]
       24 GETTABLE                         R3 R4 R0
       25 GETTABLEKS                       R3 R3 K7 ["attachmentNames"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K6 ["ASSET_TYPE_INFO"]
       33 GETTABLE                         R3 R4 R0
       34 GETTABLEKS                       R3 R3 K7 ["attachmentNames"]
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R2 R3 R0
        4 LOADK                            R5 K1 ["MeshPart"]
        5 NAMECALL                         R3 R1 K2 ["FindFirstChildOfClass"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R2 K3 ["attachmentNames"]
       12 CALL                             R3 1 -1
       13 RETURN                           R3 -1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R4 R2 K3 ["attachmentNames"]
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 -1
        5 RETURN                           R3 -1

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
       21 GETTABLEKS                       R4 R0 K5 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["createIndividualBodyPartSchema"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K5 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["createLayeredClothingSchema"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["createEyebrowEyelashSchema"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K5 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["createMeshPartAccessorySchema"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["createMakeupSchema"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K5 ["util"]
       58 GETTABLEKS                       R9 R9 K13 ["createDynamicHeadMeshPartSchema"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K5 ["util"]
       65 GETTABLEKS                       R10 R10 K14 ["createAccessorySchema"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K5 ["util"]
       72 GETTABLEKS                       R11 R11 K15 ["createEmoteSchema"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K5 ["util"]
       79 GETTABLEKS                       R12 R12 K16 ["getUploadCategory"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R0 K17 ["flags"]
       86 GETTABLEKS                       R13 R13 K18 ["getFFlagUGCValidateMakeupAssetTypeNewPipeline"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R14 R0 K17 ["flags"]
       93 GETTABLEKS                       R14 R14 K19 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
       95 CALL                             R13 1 1
       96 NEWTABLE                         R14 2 0
       98 DUPCLOSURE                       R15 K20 [PROTO_0]
       99 CAPTURE                          VAL R2
      100 DUPCLOSURE                       R16 K21 [PROTO_1]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R14
      104 SETTABLEKS                       R16 R14 K22 ["generateBundleSchema"]
      106 DUPCLOSURE                       R16 K23 [PROTO_2]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 DUPTABLE                         R17 K30 [{"EMOTE_ANIMATION", "DYNAMIC_HEAD", "TORSO_AND_LIMBS", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "MAKEUP"}]
      110 DUPCLOSURE                       R18 K31 [PROTO_3]
      111 CAPTURE                          VAL R10
      112 SETTABLEKS                       R18 R17 K24 ["EMOTE_ANIMATION"]
      114 DUPCLOSURE                       R18 K32 [PROTO_4]
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R18 R17 K25 ["DYNAMIC_HEAD"]
      118 DUPCLOSURE                       R18 K33 [PROTO_5]
      119 CAPTURE                          VAL R16
      120 SETTABLEKS                       R18 R17 K26 ["TORSO_AND_LIMBS"]
      122 DUPCLOSURE                       R18 K34 [PROTO_6]
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R18 R17 K27 ["LAYERED_CLOTHING"]
      129 DUPCLOSURE                       R18 K35 [PROTO_7]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R9
      133 SETTABLEKS                       R18 R17 K28 ["RIGID_ACCESSORY"]
      135 MOVE                             R19 R12
      136 CALL                             R19 0 1
      137 JUMPIFNOT                        R19 ; [+3]
      138 DUPCLOSURE                       R18 K36 [PROTO_8]
      139 CAPTURE                          VAL R7
      140 JUMP                             ; [+1]
      141 LOADNIL                          R18
      142 SETTABLEKS                       R18 R17 K29 ["MAKEUP"]
      144 DUPCLOSURE                       R18 K37 [PROTO_9]
      145 CAPTURE                          VAL R17
      146 SETTABLEKS                       R18 R14 K38 ["generateAssetSchema"]
      148 RETURN                           R14 1
