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
        0 DUPTABLE                         R1 K3 [{[1] = "Folder", ["_children"]}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["_children"]
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R8 R6 K4 ["allSelectedInstances"]
       11 MOVE                             R9 R8
       12 LOADNIL                          R10
       13 LOADNIL                          R11
       14 FORGPREP                         R9
       15 GETTABLEKS                       R14 R13 K5 ["Name"]
       17 GETUPVAL                         R15 0
       18 GETTABLEKS                       R15 R15 K6 ["FOLDER_NAMES"]
       20 GETTABLEKS                       R15 R15 K7 ["R15ArtistIntent"]
       22 JUMPIFNOTEQ                      R14 R15 ; [+3]
       24 MOVE                             R7 R13
       25 JUMP                             ; [+3]
       26 FORGLOOP                         R9 2 ; [-12]
       28 GETTABLEN                        R7 R8 1
       29 GETUPVAL                         R8 1
       30 MOVE                             R9 R7
       31 GETTABLEKS                       R10 R6 K8 ["assetTypeEnum"]
       33 LOADNIL                          R11
       34 CALL                             R8 3 1
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K9 ["generateAssetSchema"]
       38 MOVE                             R10 R8
       39 GETTABLEKS                       R11 R6 K8 ["assetTypeEnum"]
       41 MOVE                             R12 R7
       42 CALL                             R9 3 1
       43 GETTABLEKS                       R10 R9 K0 ["ClassName"]
       45 JUMPIFNOTEQKS                    R10 K1 ["Folder"] ; [+17]
       47 GETTABLEKS                       R10 R9 K2 ["_children"]
       49 LOADNIL                          R11
       50 LOADNIL                          R12
       51 FORGPREP                         R10
       52 GETTABLEKS                       R16 R1 K2 ["_children"]
       54 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       56 MOVE                             R17 R14
       57 GETIMPORT                        R15 K12 [table.insert]
       59 CALL                             R15 2 0
       60 FORGLOOP                         R10 2 ; [-9]
       62 JUMP                             ; [+8]
       63 GETTABLEKS                       R11 R1 K2 ["_children"]
       65 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       67 MOVE                             R12 R9
       68 GETIMPORT                        R10 K12 [table.insert]
       70 CALL                             R10 2 0
       71 FORGLOOP                         R2 2 ; [-63]
       73 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 DUPTABLE                         R2 K4 [{["ClassName"] = "Folder", ["_children"]}]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K3 ["_children"]
        9 GETIMPORT                        R3 K6 [pairs]
       11 GETTABLEKS                       R4 R1 K7 ["subParts"]
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETUPVAL                         R8 1
       16 MOVE                             R9 R0
       17 MOVE                             R10 R6
       18 CALL                             R8 2 1
       19 GETTABLEKS                       R10 R2 K3 ["_children"]
       21 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K10 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R3 1 ; [-13]
       29 RETURN                           R2 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 -1
        5 RETURN                           R3 -1

PROTO_11:
        0 DUPTABLE                         R0 K3 [{[1] = "Model", ["_children"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K2 ["_children"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["ANIMATION_ASSET_INFO"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R7 R0 K2 ["_children"]
       13 DUPTABLE                         R8 K8 [{[1] = "Model", ["Name"], ["_ignoreDescendants"] = True}]
       14 GETTABLEKS                       R9 R5 K9 ["modelName"]
       16 SETTABLEKS                       R9 R8 K5 ["Name"]
       18 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       20 GETIMPORT                        R6 K12 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-13]
       25 RETURN                           R0 1

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
       79 GETTABLEKS                       R12 R12 K16 ["createAnimationSchema"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R13 R0 K5 ["util"]
       86 GETTABLEKS                       R13 R13 K17 ["getUploadCategory"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R14 R0 K18 ["flags"]
       93 GETTABLEKS                       R14 R14 K19 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETTABLEKS                       R15 R0 K18 ["flags"]
      100 GETTABLEKS                       R15 R15 K20 ["getFFlagUGCValidationAnimationPackSupport"]
      102 CALL                             R14 1 1
      103 NEWTABLE                         R15 4 0
      105 DUPCLOSURE                       R16 K21 [PROTO_0]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R17 K22 [PROTO_1]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R15
      111 SETTABLEKS                       R17 R15 K23 ["generateBundleSchema"]
      113 DUPCLOSURE                       R17 K24 [PROTO_2]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 DUPTABLE                         R18 K31 [{"EMOTE_ANIMATION", "DYNAMIC_HEAD", "TORSO_AND_LIMBS", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "MAKEUP"}]
      117 DUPCLOSURE                       R19 K32 [PROTO_3]
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R19 R18 K25 ["EMOTE_ANIMATION"]
      121 DUPCLOSURE                       R19 K33 [PROTO_4]
      122 CAPTURE                          VAL R8
      123 SETTABLEKS                       R19 R18 K26 ["DYNAMIC_HEAD"]
      125 DUPCLOSURE                       R19 K34 [PROTO_5]
      126 CAPTURE                          VAL R17
      127 SETTABLEKS                       R19 R18 K27 ["TORSO_AND_LIMBS"]
      129 DUPCLOSURE                       R19 K35 [PROTO_6]
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R19 R18 K28 ["LAYERED_CLOTHING"]
      136 DUPCLOSURE                       R19 K36 [PROTO_7]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R19 R18 K29 ["RIGID_ACCESSORY"]
      142 DUPCLOSURE                       R19 K37 [PROTO_8]
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R19 R18 K30 ["MAKEUP"]
      146 MOVE                             R19 R14
      147 CALL                             R19 0 1
      148 JUMPIFNOT                        R19 ; [+4]
      149 DUPCLOSURE                       R19 K38 [PROTO_9]
      150 CAPTURE                          VAL R11
      151 SETTABLEKS                       R19 R18 K39 ["ANIMATION"]
      153 DUPCLOSURE                       R19 K40 [PROTO_10]
      154 CAPTURE                          VAL R18
      155 SETTABLEKS                       R19 R15 K41 ["generateAssetSchema"]
      157 DUPCLOSURE                       R19 K42 [PROTO_11]
      158 CAPTURE                          VAL R2
      159 SETTABLEKS                       R19 R15 K43 ["generateAnimationPackBundleSchema"]
      161 RETURN                           R15 1
