PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+12]
        2 LOADB                            R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R0 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
        9 LENGTH                           R2 R3
       10 JUMPIFLE                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+12]
        2 LOADB                            R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R0 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
        9 LENGTH                           R2 R3
       10 JUMPIFLE                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
       18 GETTABLE                         R2 R3 R0
       19 GETTABLEKS                       R2 R2 K1 ["assetType"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["AssetType"]
       24 GETTABLEKS                       R3 R3 K3 ["PACKAGE"]
       26 JUMPIFEQ                         R2 R3 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+12]
        2 LOADB                            R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R0 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
        9 LENGTH                           R2 R3
       10 JUMPIFLE                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
       18 GETTABLE                         R2 R3 R0
       19 GETTABLEKS                       R2 R2 K1 ["ownershipType"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["OwnershipType"]
       24 GETTABLEKS                       R3 R3 K3 ["FREE"]
       26 JUMPIFEQ                         R2 R3 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CREATIONS_KEY"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+3]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 MOVE                             R2 R1
        8 JUMPIFNOT                        R2 ; [+12]
        9 LOADB                            R2 0
       10 LOADN                            R3 1
       11 JUMPIFNOTLE                      R3 R1 ; [+9]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["INVENTORY_WITH_GROUPS"]
       16 LENGTH                           R3 R4
       17 JUMPIFLE                         R1 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K1 ["INVENTORY_WITH_GROUPS"]
       25 GETTABLE                         R3 R4 R1
       26 GETTABLEKS                       R3 R3 K2 ["ownershipType"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K3 ["OwnershipType"]
       31 GETTABLEKS                       R4 R4 K4 ["GROUP"]
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+12]
        2 LOADB                            R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R0 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
        9 LENGTH                           R2 R3
       10 JUMPIFLE                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+15]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["INVENTORY_WITH_GROUPS"]
       18 GETTABLE                         R2 R3 R0
       19 GETTABLEKS                       R2 R2 K1 ["assetType"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["AssetType"]
       24 GETTABLEKS                       R3 R3 K3 ["PLUGIN"]
       26 JUMPIFEQ                         R2 R3 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CREATIONS_KEY"]
        3 JUMPIFNOTEQ                      R2 R0 ; [+13]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETTABLEKS                       R2 R1 K1 ["isCatalogItemCreator"]
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R0
       11 GETTABLEN                        R2 R3 2
       12 RETURN                           R2 1
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R3 R4 R0
       15 GETTABLEN                        R2 R3 1
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 1
       18 GETTABLE                         R2 R3 R0
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ToolboxAssetTypeToEngine"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+17]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R3 K4 ["Lua toolbox: No engine assetType for category asset type %s"]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K6 [tostring]
       17 CALL                             R5 1 1
       18 NAMECALL                         R3 R3 K7 ["format"]
       20 CALL                             R3 2 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OwnershipType"]
        3 GETTABLEKS                       R1 R1 K1 ["FREE"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K1 ["FREE"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["OwnershipType"]
       12 GETTABLEKS                       R1 R1 K2 ["MY"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K2 ["MY"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["OwnershipType"]
       21 GETTABLEKS                       R1 R1 K3 ["RECENT"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K3 ["RECENT"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["OwnershipType"]
       30 GETTABLEKS                       R1 R1 K4 ["GROUP"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K4 ["GROUP"]
       35 RETURN                           R1 1
       36 LOADK                            R1 K5 ["[unknown]"]
       37 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssetType"]
        3 GETTABLEKS                       R1 R1 K1 ["MODEL"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+3]
        7 LOADK                            R1 K1 ["MODEL"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       12 GETTABLEKS                       R1 R1 K2 ["DECAL"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADK                            R1 K2 ["DECAL"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       21 GETTABLEKS                       R1 R1 K3 ["MESH"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADK                            R1 K3 ["MESH"]
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       30 GETTABLEKS                       R1 R1 K4 ["AUDIO"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+3]
       34 LOADK                            R1 K4 ["AUDIO"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       39 GETTABLEKS                       R1 R1 K5 ["PACKAGE"]
       41 JUMPIFNOTEQ                      R0 R1 ; [+3]
       43 LOADK                            R1 K5 ["PACKAGE"]
       44 RETURN                           R1 1
       45 LOADK                            R1 K6 ["[unknown]"]
       46 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R1 K0 ["Category(name=\"%s\", category=\"%s\", ownershipType=\"%s\", assetType=\"%s\")"]
        1 GETTABLEKS                       R3 R0 K1 ["name"]
        3 GETTABLEKS                       R4 R0 K2 ["category"]
        5 GETTABLEKS                       R6 R0 K3 ["ownershipType"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K4 ["OwnershipType"]
       10 GETTABLEKS                       R7 R7 K5 ["FREE"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+3]
       14 LOADK                            R5 K5 ["FREE"]
       15 JUMP                             ; [+28]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K4 ["OwnershipType"]
       19 GETTABLEKS                       R7 R7 K6 ["MY"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+3]
       23 LOADK                            R5 K6 ["MY"]
       24 JUMP                             ; [+19]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K4 ["OwnershipType"]
       28 GETTABLEKS                       R7 R7 K7 ["RECENT"]
       30 JUMPIFNOTEQ                      R6 R7 ; [+3]
       32 LOADK                            R5 K7 ["RECENT"]
       33 JUMP                             ; [+10]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K4 ["OwnershipType"]
       37 GETTABLEKS                       R7 R7 K8 ["GROUP"]
       39 JUMPIFNOTEQ                      R6 R7 ; [+3]
       41 LOADK                            R5 K8 ["GROUP"]
       42 JUMP                             ; [+1]
       43 LOADK                            R5 K9 ["[unknown]"]
       44 GETTABLEKS                       R7 R0 K10 ["assetType"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       49 GETTABLEKS                       R8 R8 K12 ["MODEL"]
       51 JUMPIFNOTEQ                      R7 R8 ; [+3]
       53 LOADK                            R6 K12 ["MODEL"]
       54 JUMP                             ; [+37]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       58 GETTABLEKS                       R8 R8 K13 ["DECAL"]
       60 JUMPIFNOTEQ                      R7 R8 ; [+3]
       62 LOADK                            R6 K13 ["DECAL"]
       63 JUMP                             ; [+28]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       67 GETTABLEKS                       R8 R8 K14 ["MESH"]
       69 JUMPIFNOTEQ                      R7 R8 ; [+3]
       71 LOADK                            R6 K14 ["MESH"]
       72 JUMP                             ; [+19]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       76 GETTABLEKS                       R8 R8 K15 ["AUDIO"]
       78 JUMPIFNOTEQ                      R7 R8 ; [+3]
       80 LOADK                            R6 K15 ["AUDIO"]
       81 JUMP                             ; [+10]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K11 ["AssetType"]
       85 GETTABLEKS                       R8 R8 K16 ["PACKAGE"]
       87 JUMPIFNOTEQ                      R7 R8 ; [+3]
       89 LOADK                            R6 K16 ["PACKAGE"]
       90 JUMP                             ; [+1]
       91 LOADK                            R6 K9 ["[unknown]"]
       92 NAMECALL                         R1 R1 K17 ["format"]
       94 CALL                             R1 5 -1
       95 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 64 0
       20 DUPTABLE                         R3 K12 [{"FREE", "MY", "RECENT", "GROUP"}]
       21 LOADN                            R4 0
       22 SETTABLEKS                       R4 R3 K8 ["FREE"]
       24 LOADN                            R4 1
       25 SETTABLEKS                       R4 R3 K9 ["MY"]
       27 LOADN                            R4 2
       28 SETTABLEKS                       R4 R3 K10 ["RECENT"]
       30 LOADN                            R4 3
       31 SETTABLEKS                       R4 R3 K11 ["GROUP"]
       33 SETTABLEKS                       R3 R2 K13 ["OwnershipType"]
       35 DUPTABLE                         R3 K31 [{"MODEL", "DECAL", "MESH", "AUDIO", "PACKAGE", "PLUGIN", "HAT", "TEE_SHIRT", "SHIRT", "PANTS", "HAIR_ACCESSORY", "FACE_ACCESSORY", "NECK_ACCESSORY", "SHOULDER_ACCESSORY", "FRONT_ACCESSORY", "BACK_ACCESSORY", "WAIST_ACCESSORY"}]
       36 LOADN                            R4 0
       37 SETTABLEKS                       R4 R3 K14 ["MODEL"]
       39 LOADN                            R4 1
       40 SETTABLEKS                       R4 R3 K15 ["DECAL"]
       42 LOADN                            R4 2
       43 SETTABLEKS                       R4 R3 K16 ["MESH"]
       45 LOADN                            R4 3
       46 SETTABLEKS                       R4 R3 K17 ["AUDIO"]
       48 LOADN                            R4 4
       49 SETTABLEKS                       R4 R3 K18 ["PACKAGE"]
       51 LOADN                            R4 5
       52 SETTABLEKS                       R4 R3 K19 ["PLUGIN"]
       54 LOADN                            R4 6
       55 SETTABLEKS                       R4 R3 K20 ["HAT"]
       57 LOADN                            R4 7
       58 SETTABLEKS                       R4 R3 K21 ["TEE_SHIRT"]
       60 LOADN                            R4 8
       61 SETTABLEKS                       R4 R3 K22 ["SHIRT"]
       63 LOADN                            R4 9
       64 SETTABLEKS                       R4 R3 K23 ["PANTS"]
       66 LOADN                            R4 10
       67 SETTABLEKS                       R4 R3 K24 ["HAIR_ACCESSORY"]
       69 LOADN                            R4 11
       70 SETTABLEKS                       R4 R3 K25 ["FACE_ACCESSORY"]
       72 LOADN                            R4 12
       73 SETTABLEKS                       R4 R3 K26 ["NECK_ACCESSORY"]
       75 LOADN                            R4 13
       76 SETTABLEKS                       R4 R3 K27 ["SHOULDER_ACCESSORY"]
       78 LOADN                            R4 14
       79 SETTABLEKS                       R4 R3 K28 ["FRONT_ACCESSORY"]
       81 LOADN                            R4 15
       82 SETTABLEKS                       R4 R3 K29 ["BACK_ACCESSORY"]
       84 LOADN                            R4 16
       85 SETTABLEKS                       R4 R3 K30 ["WAIST_ACCESSORY"]
       87 SETTABLEKS                       R3 R2 K32 ["AssetType"]
       89 NEWTABLE                         R3 32 0
       91 GETTABLEKS                       R4 R2 K32 ["AssetType"]
       93 GETTABLEKS                       R4 R4 K14 ["MODEL"]
       95 GETIMPORT                        R5 K35 [Enum.AssetType.Model]
       97 SETTABLE                         R5 R3 R4
       98 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      100 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      102 GETIMPORT                        R5 K37 [Enum.AssetType.Decal]
      104 SETTABLE                         R5 R3 R4
      105 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      107 GETTABLEKS                       R4 R4 K16 ["MESH"]
      109 GETIMPORT                        R5 K39 [Enum.AssetType.Mesh]
      111 SETTABLE                         R5 R3 R4
      112 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      114 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      116 GETIMPORT                        R5 K41 [Enum.AssetType.Audio]
      118 SETTABLE                         R5 R3 R4
      119 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      121 GETTABLEKS                       R4 R4 K18 ["PACKAGE"]
      123 GETIMPORT                        R5 K43 [Enum.AssetType.Package]
      125 SETTABLE                         R5 R3 R4
      126 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      128 GETTABLEKS                       R4 R4 K19 ["PLUGIN"]
      130 GETIMPORT                        R5 K45 [Enum.AssetType.Plugin]
      132 SETTABLE                         R5 R3 R4
      133 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      135 GETTABLEKS                       R4 R4 K20 ["HAT"]
      137 GETIMPORT                        R5 K47 [Enum.AssetType.Hat]
      139 SETTABLE                         R5 R3 R4
      140 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      142 GETTABLEKS                       R4 R4 K21 ["TEE_SHIRT"]
      144 GETIMPORT                        R5 K49 [Enum.AssetType.TShirt]
      146 SETTABLE                         R5 R3 R4
      147 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      149 GETTABLEKS                       R4 R4 K22 ["SHIRT"]
      151 GETIMPORT                        R5 K51 [Enum.AssetType.Shirt]
      153 SETTABLE                         R5 R3 R4
      154 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      156 GETTABLEKS                       R4 R4 K23 ["PANTS"]
      158 GETIMPORT                        R5 K53 [Enum.AssetType.Pants]
      160 SETTABLE                         R5 R3 R4
      161 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      163 GETTABLEKS                       R4 R4 K24 ["HAIR_ACCESSORY"]
      165 GETIMPORT                        R5 K55 [Enum.AssetType.HairAccessory]
      167 SETTABLE                         R5 R3 R4
      168 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      170 GETTABLEKS                       R4 R4 K25 ["FACE_ACCESSORY"]
      172 GETIMPORT                        R5 K57 [Enum.AssetType.FaceAccessory]
      174 SETTABLE                         R5 R3 R4
      175 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      177 GETTABLEKS                       R4 R4 K26 ["NECK_ACCESSORY"]
      179 GETIMPORT                        R5 K59 [Enum.AssetType.NeckAccessory]
      181 SETTABLE                         R5 R3 R4
      182 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      184 GETTABLEKS                       R4 R4 K27 ["SHOULDER_ACCESSORY"]
      186 GETIMPORT                        R5 K61 [Enum.AssetType.ShoulderAccessory]
      188 SETTABLE                         R5 R3 R4
      189 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      191 GETTABLEKS                       R4 R4 K28 ["FRONT_ACCESSORY"]
      193 GETIMPORT                        R5 K63 [Enum.AssetType.FrontAccessory]
      195 SETTABLE                         R5 R3 R4
      196 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      198 GETTABLEKS                       R4 R4 K29 ["BACK_ACCESSORY"]
      200 GETIMPORT                        R5 K65 [Enum.AssetType.BackAccessory]
      202 SETTABLE                         R5 R3 R4
      203 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      205 GETTABLEKS                       R4 R4 K30 ["WAIST_ACCESSORY"]
      207 GETIMPORT                        R5 K67 [Enum.AssetType.WaistAccessory]
      209 SETTABLE                         R5 R3 R4
      210 SETTABLEKS                       R3 R2 K68 ["ToolboxAssetTypeToEngine"]
      212 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      213 LOADK                            R4 K74 ["FreeModels"]
      214 SETTABLEKS                       R4 R3 K69 ["name"]
      216 LOADK                            R4 K74 ["FreeModels"]
      217 SETTABLEKS                       R4 R3 K70 ["category"]
      219 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      221 GETTABLEKS                       R4 R4 K8 ["FREE"]
      223 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      225 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      227 GETTABLEKS                       R4 R4 K14 ["MODEL"]
      229 SETTABLEKS                       R4 R3 K72 ["assetType"]
      231 SETTABLEKS                       R3 R2 K75 ["FREE_MODELS"]
      233 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      234 LOADK                            R4 K76 ["FreeDecals"]
      235 SETTABLEKS                       R4 R3 K69 ["name"]
      237 LOADK                            R4 K76 ["FreeDecals"]
      238 SETTABLEKS                       R4 R3 K70 ["category"]
      240 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      242 GETTABLEKS                       R4 R4 K8 ["FREE"]
      244 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      246 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      248 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      250 SETTABLEKS                       R4 R3 K72 ["assetType"]
      252 SETTABLEKS                       R3 R2 K77 ["FREE_DECALS"]
      254 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      255 LOADK                            R4 K78 ["FreeMeshes"]
      256 SETTABLEKS                       R4 R3 K69 ["name"]
      258 LOADK                            R4 K78 ["FreeMeshes"]
      259 SETTABLEKS                       R4 R3 K70 ["category"]
      261 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      263 GETTABLEKS                       R4 R4 K8 ["FREE"]
      265 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      267 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      269 GETTABLEKS                       R4 R4 K16 ["MESH"]
      271 SETTABLEKS                       R4 R3 K72 ["assetType"]
      273 SETTABLEKS                       R3 R2 K79 ["FREE_MESHES"]
      275 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      276 LOADK                            R4 K80 ["FreeAudio"]
      277 SETTABLEKS                       R4 R3 K69 ["name"]
      279 LOADK                            R4 K80 ["FreeAudio"]
      280 SETTABLEKS                       R4 R3 K70 ["category"]
      282 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      284 GETTABLEKS                       R4 R4 K8 ["FREE"]
      286 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      288 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      290 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      292 SETTABLEKS                       R4 R3 K72 ["assetType"]
      294 SETTABLEKS                       R3 R2 K81 ["FREE_AUDIO"]
      296 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      297 LOADK                            R4 K82 ["MyModels"]
      298 SETTABLEKS                       R4 R3 K69 ["name"]
      300 LOADK                            R4 K83 ["MyModelsExceptPackage"]
      301 SETTABLEKS                       R4 R3 K70 ["category"]
      303 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      305 GETTABLEKS                       R4 R4 K9 ["MY"]
      307 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      309 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      311 GETTABLEKS                       R4 R4 K14 ["MODEL"]
      313 SETTABLEKS                       R4 R3 K72 ["assetType"]
      315 SETTABLEKS                       R3 R2 K84 ["MY_MODELS"]
      317 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      318 LOADK                            R4 K85 ["MyDecals"]
      319 SETTABLEKS                       R4 R3 K69 ["name"]
      321 LOADK                            R4 K85 ["MyDecals"]
      322 SETTABLEKS                       R4 R3 K70 ["category"]
      324 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      326 GETTABLEKS                       R4 R4 K9 ["MY"]
      328 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      330 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      332 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      334 SETTABLEKS                       R4 R3 K72 ["assetType"]
      336 SETTABLEKS                       R3 R2 K86 ["MY_DECALS"]
      338 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      339 LOADK                            R4 K87 ["MyMeshes"]
      340 SETTABLEKS                       R4 R3 K69 ["name"]
      342 LOADK                            R4 K87 ["MyMeshes"]
      343 SETTABLEKS                       R4 R3 K70 ["category"]
      345 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      347 GETTABLEKS                       R4 R4 K9 ["MY"]
      349 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      351 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      353 GETTABLEKS                       R4 R4 K16 ["MESH"]
      355 SETTABLEKS                       R4 R3 K72 ["assetType"]
      357 SETTABLEKS                       R3 R2 K88 ["MY_MESHES"]
      359 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      360 LOADK                            R4 K89 ["MyAudio"]
      361 SETTABLEKS                       R4 R3 K69 ["name"]
      363 LOADK                            R4 K89 ["MyAudio"]
      364 SETTABLEKS                       R4 R3 K70 ["category"]
      366 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      368 GETTABLEKS                       R4 R4 K9 ["MY"]
      370 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      372 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      374 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      376 SETTABLEKS                       R4 R3 K72 ["assetType"]
      378 SETTABLEKS                       R3 R2 K90 ["MY_AUDIO"]
      380 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      381 LOADK                            R4 K91 ["MyPlugins"]
      382 SETTABLEKS                       R4 R3 K69 ["name"]
      384 LOADK                            R4 K91 ["MyPlugins"]
      385 SETTABLEKS                       R4 R3 K70 ["category"]
      387 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      389 GETTABLEKS                       R4 R4 K19 ["PLUGIN"]
      391 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      393 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      395 GETTABLEKS                       R4 R4 K19 ["PLUGIN"]
      397 SETTABLEKS                       R4 R3 K72 ["assetType"]
      399 SETTABLEKS                       R3 R2 K92 ["MY_PLUGINS"]
      401 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      402 LOADK                            R4 K93 ["RecentModels"]
      403 SETTABLEKS                       R4 R3 K69 ["name"]
      405 LOADK                            R4 K93 ["RecentModels"]
      406 SETTABLEKS                       R4 R3 K70 ["category"]
      408 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      410 GETTABLEKS                       R4 R4 K10 ["RECENT"]
      412 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      414 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      416 GETTABLEKS                       R4 R4 K14 ["MODEL"]
      418 SETTABLEKS                       R4 R3 K72 ["assetType"]
      420 SETTABLEKS                       R3 R2 K94 ["RECENT_MODELS"]
      422 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      423 LOADK                            R4 K95 ["RecentDecals"]
      424 SETTABLEKS                       R4 R3 K69 ["name"]
      426 LOADK                            R4 K95 ["RecentDecals"]
      427 SETTABLEKS                       R4 R3 K70 ["category"]
      429 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      431 GETTABLEKS                       R4 R4 K10 ["RECENT"]
      433 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      435 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      437 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      439 SETTABLEKS                       R4 R3 K72 ["assetType"]
      441 SETTABLEKS                       R3 R2 K96 ["RECENT_DECALS"]
      443 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      444 LOADK                            R4 K97 ["RecentMeshes"]
      445 SETTABLEKS                       R4 R3 K69 ["name"]
      447 LOADK                            R4 K97 ["RecentMeshes"]
      448 SETTABLEKS                       R4 R3 K70 ["category"]
      450 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      452 GETTABLEKS                       R4 R4 K10 ["RECENT"]
      454 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      456 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      458 GETTABLEKS                       R4 R4 K16 ["MESH"]
      460 SETTABLEKS                       R4 R3 K72 ["assetType"]
      462 SETTABLEKS                       R3 R2 K98 ["RECENT_MESHES"]
      464 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      465 LOADK                            R4 K99 ["RecentAudio"]
      466 SETTABLEKS                       R4 R3 K69 ["name"]
      468 LOADK                            R4 K99 ["RecentAudio"]
      469 SETTABLEKS                       R4 R3 K70 ["category"]
      471 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      473 GETTABLEKS                       R4 R4 K10 ["RECENT"]
      475 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      477 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      479 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      481 SETTABLEKS                       R4 R3 K72 ["assetType"]
      483 SETTABLEKS                       R3 R2 K100 ["RECENT_AUDIO"]
      485 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      486 LOADK                            R4 K101 ["GroupModels"]
      487 SETTABLEKS                       R4 R3 K69 ["name"]
      489 LOADK                            R4 K102 ["GroupModelsExceptPackage"]
      490 SETTABLEKS                       R4 R3 K70 ["category"]
      492 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      494 GETTABLEKS                       R4 R4 K11 ["GROUP"]
      496 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      498 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      500 GETTABLEKS                       R4 R4 K14 ["MODEL"]
      502 SETTABLEKS                       R4 R3 K72 ["assetType"]
      504 SETTABLEKS                       R3 R2 K103 ["GROUP_MODELS"]
      506 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      507 LOADK                            R4 K104 ["GroupDecals"]
      508 SETTABLEKS                       R4 R3 K69 ["name"]
      510 LOADK                            R4 K104 ["GroupDecals"]
      511 SETTABLEKS                       R4 R3 K70 ["category"]
      513 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      515 GETTABLEKS                       R4 R4 K11 ["GROUP"]
      517 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      519 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      521 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      523 SETTABLEKS                       R4 R3 K72 ["assetType"]
      525 SETTABLEKS                       R3 R2 K105 ["GROUP_DECALS"]
      527 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      528 LOADK                            R4 K106 ["GroupMeshes"]
      529 SETTABLEKS                       R4 R3 K69 ["name"]
      531 LOADK                            R4 K106 ["GroupMeshes"]
      532 SETTABLEKS                       R4 R3 K70 ["category"]
      534 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      536 GETTABLEKS                       R4 R4 K11 ["GROUP"]
      538 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      540 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      542 GETTABLEKS                       R4 R4 K16 ["MESH"]
      544 SETTABLEKS                       R4 R3 K72 ["assetType"]
      546 SETTABLEKS                       R3 R2 K107 ["GROUP_MESHES"]
      548 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      549 LOADK                            R4 K108 ["GroupAudio"]
      550 SETTABLEKS                       R4 R3 K69 ["name"]
      552 LOADK                            R4 K108 ["GroupAudio"]
      553 SETTABLEKS                       R4 R3 K70 ["category"]
      555 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      557 GETTABLEKS                       R4 R4 K11 ["GROUP"]
      559 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      561 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      563 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      565 SETTABLEKS                       R4 R3 K72 ["assetType"]
      567 SETTABLEKS                       R3 R2 K109 ["GROUP_AUDIO"]
      569 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      570 LOADK                            R4 K110 ["MyPackages"]
      571 SETTABLEKS                       R4 R3 K69 ["name"]
      573 LOADK                            R4 K110 ["MyPackages"]
      574 SETTABLEKS                       R4 R3 K70 ["category"]
      576 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      578 GETTABLEKS                       R4 R4 K9 ["MY"]
      580 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      582 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      584 GETTABLEKS                       R4 R4 K18 ["PACKAGE"]
      586 SETTABLEKS                       R4 R3 K72 ["assetType"]
      588 SETTABLEKS                       R3 R2 K111 ["MY_PACKAGES"]
      590 DUPTABLE                         R3 K73 [{"name", "category", "ownershipType", "assetType"}]
      591 LOADK                            R4 K112 ["GroupPackages"]
      592 SETTABLEKS                       R4 R3 K69 ["name"]
      594 LOADK                            R4 K112 ["GroupPackages"]
      595 SETTABLEKS                       R4 R3 K70 ["category"]
      597 GETTABLEKS                       R4 R2 K13 ["OwnershipType"]
      599 GETTABLEKS                       R4 R4 K11 ["GROUP"]
      601 SETTABLEKS                       R4 R3 K71 ["ownershipType"]
      603 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      605 GETTABLEKS                       R4 R4 K18 ["PACKAGE"]
      607 SETTABLEKS                       R4 R3 K72 ["assetType"]
      609 SETTABLEKS                       R3 R2 K113 ["GROUP_PACKAGES"]
      611 DUPTABLE                         R3 K115 [{"name", "selectable"}]
      612 LOADK                            R4 K116 ["CreationsDevelopmentSectionDivider"]
      613 SETTABLEKS                       R4 R3 K69 ["name"]
      615 LOADB                            R4 0
      616 SETTABLEKS                       R4 R3 K114 ["selectable"]
      618 SETTABLEKS                       R3 R2 K117 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      620 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      621 LOADK                            R4 K119 ["CreationsModels"]
      622 SETTABLEKS                       R4 R3 K69 ["name"]
      624 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      626 GETTABLEKS                       R4 R4 K14 ["MODEL"]
      628 SETTABLEKS                       R4 R3 K72 ["assetType"]
      630 SETTABLEKS                       R3 R2 K120 ["CREATIONS_MODELS"]
      632 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      633 LOADK                            R4 K121 ["CreationsDecals"]
      634 SETTABLEKS                       R4 R3 K69 ["name"]
      636 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      638 GETTABLEKS                       R4 R4 K15 ["DECAL"]
      640 SETTABLEKS                       R4 R3 K72 ["assetType"]
      642 SETTABLEKS                       R3 R2 K122 ["CREATIONS_DECALS"]
      644 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      645 LOADK                            R4 K123 ["CreationsAudio"]
      646 SETTABLEKS                       R4 R3 K69 ["name"]
      648 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      650 GETTABLEKS                       R4 R4 K17 ["AUDIO"]
      652 SETTABLEKS                       R4 R3 K72 ["assetType"]
      654 SETTABLEKS                       R3 R2 K124 ["CREATIONS_AUDIO"]
      656 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      657 LOADK                            R4 K125 ["CreationsMeshes"]
      658 SETTABLEKS                       R4 R3 K69 ["name"]
      660 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      662 GETTABLEKS                       R4 R4 K16 ["MESH"]
      664 SETTABLEKS                       R4 R3 K72 ["assetType"]
      666 SETTABLEKS                       R3 R2 K126 ["CREATIONS_MESHES"]
      668 DUPTABLE                         R3 K115 [{"name", "selectable"}]
      669 LOADK                            R4 K127 ["CreationsCatalogSectionDivider"]
      670 SETTABLEKS                       R4 R3 K69 ["name"]
      672 LOADB                            R4 0
      673 SETTABLEKS                       R4 R3 K114 ["selectable"]
      675 SETTABLEKS                       R3 R2 K128 ["CREATIONS_CATALOG_SECTION_DIVIDER"]
      677 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      678 LOADK                            R4 K129 ["CreationsHats"]
      679 SETTABLEKS                       R4 R3 K69 ["name"]
      681 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      683 GETTABLEKS                       R4 R4 K20 ["HAT"]
      685 SETTABLEKS                       R4 R3 K72 ["assetType"]
      687 SETTABLEKS                       R3 R2 K130 ["CREATIONS_HATS"]
      689 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      690 LOADK                            R4 K131 ["CreationsTeeShirts"]
      691 SETTABLEKS                       R4 R3 K69 ["name"]
      693 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      695 GETTABLEKS                       R4 R4 K21 ["TEE_SHIRT"]
      697 SETTABLEKS                       R4 R3 K72 ["assetType"]
      699 SETTABLEKS                       R3 R2 K132 ["CREATIONS_TEE_SHIRT"]
      701 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      702 LOADK                            R4 K133 ["CreationsShirts"]
      703 SETTABLEKS                       R4 R3 K69 ["name"]
      705 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      707 GETTABLEKS                       R4 R4 K22 ["SHIRT"]
      709 SETTABLEKS                       R4 R3 K72 ["assetType"]
      711 SETTABLEKS                       R3 R2 K134 ["CREATIONS_SHIRT"]
      713 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      714 LOADK                            R4 K135 ["CreationsPants"]
      715 SETTABLEKS                       R4 R3 K69 ["name"]
      717 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      719 GETTABLEKS                       R4 R4 K23 ["PANTS"]
      721 SETTABLEKS                       R4 R3 K72 ["assetType"]
      723 SETTABLEKS                       R3 R2 K136 ["CREATIONS_PANTS"]
      725 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      726 LOADK                            R4 K137 ["CreationsHair"]
      727 SETTABLEKS                       R4 R3 K69 ["name"]
      729 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      731 GETTABLEKS                       R4 R4 K54 ["HairAccessory"]
      733 SETTABLEKS                       R4 R3 K72 ["assetType"]
      735 SETTABLEKS                       R3 R2 K138 ["CREATIONS_HAIR"]
      737 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      738 LOADK                            R4 K139 ["CreationsFaceAccessorys"]
      739 SETTABLEKS                       R4 R3 K69 ["name"]
      741 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      743 GETTABLEKS                       R4 R4 K56 ["FaceAccessory"]
      745 SETTABLEKS                       R4 R3 K72 ["assetType"]
      747 SETTABLEKS                       R3 R2 K140 ["CREATIONS_FACE_ACCESSORYS"]
      749 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      750 LOADK                            R4 K141 ["CreationsNeckAccessorys"]
      751 SETTABLEKS                       R4 R3 K69 ["name"]
      753 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      755 GETTABLEKS                       R4 R4 K58 ["NeckAccessory"]
      757 SETTABLEKS                       R4 R3 K72 ["assetType"]
      759 SETTABLEKS                       R3 R2 K142 ["CREATIONS_NECK_ACCESSORYS"]
      761 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      762 LOADK                            R4 K143 ["CreationsShoulderAccessorys"]
      763 SETTABLEKS                       R4 R3 K69 ["name"]
      765 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      767 GETTABLEKS                       R4 R4 K60 ["ShoulderAccessory"]
      769 SETTABLEKS                       R4 R3 K72 ["assetType"]
      771 SETTABLEKS                       R3 R2 K144 ["CREATIONS_SHOULDER_ACCESSORYS"]
      773 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      774 LOADK                            R4 K145 ["CreationsFrontAccessorys"]
      775 SETTABLEKS                       R4 R3 K69 ["name"]
      777 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      779 GETTABLEKS                       R4 R4 K62 ["FrontAccessory"]
      781 SETTABLEKS                       R4 R3 K72 ["assetType"]
      783 SETTABLEKS                       R3 R2 K146 ["CREATIONS_FRONT_ACCESSORYS"]
      785 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      786 LOADK                            R4 K147 ["CreationsBackAccessorys"]
      787 SETTABLEKS                       R4 R3 K69 ["name"]
      789 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      791 GETTABLEKS                       R4 R4 K64 ["BackAccessory"]
      793 SETTABLEKS                       R4 R3 K72 ["assetType"]
      795 SETTABLEKS                       R3 R2 K148 ["CREATIONS_BACK_ACCESSORYS"]
      797 DUPTABLE                         R3 K118 [{"name", "assetType"}]
      798 LOADK                            R4 K149 ["CreationsWaistAccessorys"]
      799 SETTABLEKS                       R4 R3 K69 ["name"]
      801 GETTABLEKS                       R4 R2 K32 ["AssetType"]
      803 GETTABLEKS                       R4 R4 K66 ["WaistAccessory"]
      805 SETTABLEKS                       R4 R3 K72 ["assetType"]
      807 SETTABLEKS                       R3 R2 K150 ["CREATIONS_WAIST_ACCESSORYS"]
      809 NEWTABLE                         R3 0 4
      811 GETTABLEKS                       R4 R2 K75 ["FREE_MODELS"]
      813 GETTABLEKS                       R5 R2 K77 ["FREE_DECALS"]
      815 GETTABLEKS                       R6 R2 K79 ["FREE_MESHES"]
      817 GETTABLEKS                       R7 R2 K81 ["FREE_AUDIO"]
      819 SETLIST                          R3 R4 4 [1]
      821 SETTABLEKS                       R3 R2 K151 ["MARKETPLACE"]
      823 NEWTABLE                         R3 0 5
      825 GETTABLEKS                       R4 R2 K84 ["MY_MODELS"]
      827 GETTABLEKS                       R5 R2 K86 ["MY_DECALS"]
      829 GETTABLEKS                       R6 R2 K88 ["MY_MESHES"]
      831 GETTABLEKS                       R7 R2 K90 ["MY_AUDIO"]
      833 GETTABLEKS                       R8 R2 K111 ["MY_PACKAGES"]
      835 SETLIST                          R3 R4 5 [1]
      837 SETTABLEKS                       R3 R2 K152 ["INVENTORY"]
      839 NEWTABLE                         R3 0 9
      841 GETTABLEKS                       R4 R2 K84 ["MY_MODELS"]
      843 GETTABLEKS                       R5 R2 K86 ["MY_DECALS"]
      845 GETTABLEKS                       R6 R2 K88 ["MY_MESHES"]
      847 GETTABLEKS                       R7 R2 K90 ["MY_AUDIO"]
      849 GETTABLEKS                       R8 R2 K111 ["MY_PACKAGES"]
      851 GETTABLEKS                       R9 R2 K103 ["GROUP_MODELS"]
      853 GETTABLEKS                       R10 R2 K105 ["GROUP_DECALS"]
      855 GETTABLEKS                       R11 R2 K107 ["GROUP_MESHES"]
      857 GETTABLEKS                       R12 R2 K109 ["GROUP_AUDIO"]
      859 SETLIST                          R3 R4 9 [1]
      861 SETTABLEKS                       R3 R2 K153 ["INVENTORY_WITH_GROUPS"]
      863 NEWTABLE                         R3 0 4
      865 GETTABLEKS                       R4 R2 K94 ["RECENT_MODELS"]
      867 GETTABLEKS                       R5 R2 K96 ["RECENT_DECALS"]
      869 GETTABLEKS                       R6 R2 K98 ["RECENT_MESHES"]
      871 GETTABLEKS                       R7 R2 K100 ["RECENT_AUDIO"]
      873 SETLIST                          R3 R4 4 [1]
      875 SETTABLEKS                       R3 R2 K10 ["RECENT"]
      877 NEWTABLE                         R3 0 5
      879 GETTABLEKS                       R4 R2 K117 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      881 GETTABLEKS                       R5 R2 K120 ["CREATIONS_MODELS"]
      883 GETTABLEKS                       R6 R2 K122 ["CREATIONS_DECALS"]
      885 GETTABLEKS                       R7 R2 K124 ["CREATIONS_AUDIO"]
      887 GETTABLEKS                       R8 R2 K126 ["CREATIONS_MESHES"]
      889 SETLIST                          R3 R4 5 [1]
      891 NEWTABLE                         R4 0 7
      893 GETTABLEKS                       R5 R2 K117 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      895 GETTABLEKS                       R6 R2 K120 ["CREATIONS_MODELS"]
      897 GETTABLEKS                       R7 R2 K122 ["CREATIONS_DECALS"]
      899 GETTABLEKS                       R8 R2 K124 ["CREATIONS_AUDIO"]
      901 GETTABLEKS                       R9 R2 K126 ["CREATIONS_MESHES"]
      903 GETTABLEKS                       R10 R2 K128 ["CREATIONS_CATALOG_SECTION_DIVIDER"]
      905 GETTABLEKS                       R11 R2 K130 ["CREATIONS_HATS"]
      907 SETLIST                          R4 R5 7 [1]
      909 LOADK                            R5 K154 ["Marketplace"]
      910 SETTABLEKS                       R5 R2 K155 ["MARKETPLACE_KEY"]
      912 LOADK                            R5 K156 ["Inventory"]
      913 SETTABLEKS                       R5 R2 K157 ["INVENTORY_KEY"]
      915 LOADK                            R5 K158 ["Recent"]
      916 SETTABLEKS                       R5 R2 K159 ["RECENT_KEY"]
      918 LOADK                            R5 K160 ["Creations"]
      919 SETTABLEKS                       R5 R2 K161 ["CREATIONS_KEY"]
      921 NEWTABLE                         R5 4 0
      923 GETTABLEKS                       R6 R2 K155 ["MARKETPLACE_KEY"]
      925 GETTABLEKS                       R7 R2 K151 ["MARKETPLACE"]
      927 SETTABLE                         R7 R5 R6
      928 GETTABLEKS                       R6 R2 K157 ["INVENTORY_KEY"]
      930 GETTABLEKS                       R7 R2 K152 ["INVENTORY"]
      932 SETTABLE                         R7 R5 R6
      933 GETTABLEKS                       R6 R2 K159 ["RECENT_KEY"]
      935 GETTABLEKS                       R7 R2 K10 ["RECENT"]
      937 SETTABLE                         R7 R5 R6
      938 GETTABLEKS                       R6 R2 K161 ["CREATIONS_KEY"]
      940 NEWTABLE                         R7 0 2
      942 SETTABLEN                        R3 R7 1
      943 SETTABLEN                        R4 R7 2
      944 SETTABLE                         R7 R5 R6
      945 DUPCLOSURE                       R6 K162 [PROTO_0]
      946 CAPTURE                          VAL R2
      947 DUPCLOSURE                       R7 K163 [PROTO_1]
      948 CAPTURE                          VAL R2
      949 SETTABLEKS                       R7 R2 K164 ["categoryIsPackage"]
      951 DUPCLOSURE                       R7 K165 [PROTO_2]
      952 CAPTURE                          VAL R2
      953 SETTABLEKS                       R7 R2 K166 ["categoryIsFreeAsset"]
      955 DUPCLOSURE                       R7 K167 [PROTO_3]
      956 CAPTURE                          VAL R2
      957 SETTABLEKS                       R7 R2 K168 ["categoryIsGroupAsset"]
      959 DUPCLOSURE                       R7 K169 [PROTO_4]
      960 CAPTURE                          VAL R2
      961 SETTABLEKS                       R7 R2 K170 ["categoryIsPlugin"]
      963 DUPCLOSURE                       R7 K171 [PROTO_5]
      964 CAPTURE                          VAL R2
      965 CAPTURE                          VAL R5
      966 SETTABLEKS                       R7 R2 K172 ["getCategories"]
      968 DUPCLOSURE                       R7 K173 [PROTO_6]
      969 CAPTURE                          VAL R2
      970 CAPTURE                          VAL R1
      971 SETTABLEKS                       R7 R2 K174 ["getEngineAssetType"]
      973 DUPCLOSURE                       R7 K175 [PROTO_7]
      974 CAPTURE                          VAL R2
      975 DUPCLOSURE                       R8 K176 [PROTO_8]
      976 CAPTURE                          VAL R2
      977 DUPCLOSURE                       R9 K177 [PROTO_9]
      978 CAPTURE                          VAL R2
      979 SETTABLEKS                       R9 R2 K178 ["categoryToString"]
      981 RETURN                           R2 1
