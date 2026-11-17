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
       20 DUPTABLE                         R3 K16 [{["FREE"] = 0, ["MY"] = 1, ["RECENT"] = 2, ["GROUP"] = 3}]
       21 SETTABLEKS                       R3 R2 K17 ["OwnershipType"]
       23 DUPTABLE                         R3 K48 [{["MODEL"] = 0, ["DECAL"] = 1, ["MESH"] = 2, ["AUDIO"] = 3, ["PACKAGE"] = 4, ["PLUGIN"] = 5, ["HAT"] = 6, ["TEE_SHIRT"] = 7, ["SHIRT"] = 8, ["PANTS"] = 9, ["HAIR_ACCESSORY"] = 10, ["FACE_ACCESSORY"] = 11, ["NECK_ACCESSORY"] = 12, ["SHOULDER_ACCESSORY"] = 13, ["FRONT_ACCESSORY"] = 14, ["BACK_ACCESSORY"] = 15, ["WAIST_ACCESSORY"] = 16}]
       24 SETTABLEKS                       R3 R2 K49 ["AssetType"]
       26 NEWTABLE                         R3 32 0
       28 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       30 GETTABLEKS                       R4 R4 K18 ["MODEL"]
       32 GETIMPORT                        R5 K52 [Enum.AssetType.Model]
       34 SETTABLE                         R5 R3 R4
       35 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       37 GETTABLEKS                       R4 R4 K19 ["DECAL"]
       39 GETIMPORT                        R5 K54 [Enum.AssetType.Decal]
       41 SETTABLE                         R5 R3 R4
       42 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       44 GETTABLEKS                       R4 R4 K20 ["MESH"]
       46 GETIMPORT                        R5 K56 [Enum.AssetType.Mesh]
       48 SETTABLE                         R5 R3 R4
       49 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       51 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
       53 GETIMPORT                        R5 K58 [Enum.AssetType.Audio]
       55 SETTABLE                         R5 R3 R4
       56 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       58 GETTABLEKS                       R4 R4 K22 ["PACKAGE"]
       60 GETIMPORT                        R5 K60 [Enum.AssetType.Package]
       62 SETTABLE                         R5 R3 R4
       63 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       65 GETTABLEKS                       R4 R4 K24 ["PLUGIN"]
       67 GETIMPORT                        R5 K62 [Enum.AssetType.Plugin]
       69 SETTABLE                         R5 R3 R4
       70 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       72 GETTABLEKS                       R4 R4 K26 ["HAT"]
       74 GETIMPORT                        R5 K64 [Enum.AssetType.Hat]
       76 SETTABLE                         R5 R3 R4
       77 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       79 GETTABLEKS                       R4 R4 K28 ["TEE_SHIRT"]
       81 GETIMPORT                        R5 K66 [Enum.AssetType.TShirt]
       83 SETTABLE                         R5 R3 R4
       84 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       86 GETTABLEKS                       R4 R4 K30 ["SHIRT"]
       88 GETIMPORT                        R5 K68 [Enum.AssetType.Shirt]
       90 SETTABLE                         R5 R3 R4
       91 GETTABLEKS                       R4 R2 K49 ["AssetType"]
       93 GETTABLEKS                       R4 R4 K32 ["PANTS"]
       95 GETIMPORT                        R5 K70 [Enum.AssetType.Pants]
       97 SETTABLE                         R5 R3 R4
       98 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      100 GETTABLEKS                       R4 R4 K34 ["HAIR_ACCESSORY"]
      102 GETIMPORT                        R5 K72 [Enum.AssetType.HairAccessory]
      104 SETTABLE                         R5 R3 R4
      105 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      107 GETTABLEKS                       R4 R4 K36 ["FACE_ACCESSORY"]
      109 GETIMPORT                        R5 K74 [Enum.AssetType.FaceAccessory]
      111 SETTABLE                         R5 R3 R4
      112 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      114 GETTABLEKS                       R4 R4 K38 ["NECK_ACCESSORY"]
      116 GETIMPORT                        R5 K76 [Enum.AssetType.NeckAccessory]
      118 SETTABLE                         R5 R3 R4
      119 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      121 GETTABLEKS                       R4 R4 K40 ["SHOULDER_ACCESSORY"]
      123 GETIMPORT                        R5 K78 [Enum.AssetType.ShoulderAccessory]
      125 SETTABLE                         R5 R3 R4
      126 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      128 GETTABLEKS                       R4 R4 K42 ["FRONT_ACCESSORY"]
      130 GETIMPORT                        R5 K80 [Enum.AssetType.FrontAccessory]
      132 SETTABLE                         R5 R3 R4
      133 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      135 GETTABLEKS                       R4 R4 K44 ["BACK_ACCESSORY"]
      137 GETIMPORT                        R5 K82 [Enum.AssetType.BackAccessory]
      139 SETTABLE                         R5 R3 R4
      140 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      142 GETTABLEKS                       R4 R4 K46 ["WAIST_ACCESSORY"]
      144 GETIMPORT                        R5 K84 [Enum.AssetType.WaistAccessory]
      146 SETTABLE                         R5 R3 R4
      147 SETTABLEKS                       R3 R2 K85 ["ToolboxAssetTypeToEngine"]
      149 DUPTABLE                         R3 K91 [{["name"] = "FreeModels", ["category"] = "FreeModels", ["ownershipType"], ["assetType"]}]
      150 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      152 GETTABLEKS                       R4 R4 K8 ["FREE"]
      154 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      156 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      158 GETTABLEKS                       R4 R4 K18 ["MODEL"]
      160 SETTABLEKS                       R4 R3 K90 ["assetType"]
      162 SETTABLEKS                       R3 R2 K92 ["FREE_MODELS"]
      164 DUPTABLE                         R3 K94 [{["name"] = "FreeDecals", ["category"] = "FreeDecals", ["ownershipType"], ["assetType"]}]
      165 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      167 GETTABLEKS                       R4 R4 K8 ["FREE"]
      169 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      171 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      173 GETTABLEKS                       R4 R4 K19 ["DECAL"]
      175 SETTABLEKS                       R4 R3 K90 ["assetType"]
      177 SETTABLEKS                       R3 R2 K95 ["FREE_DECALS"]
      179 DUPTABLE                         R3 K97 [{["name"] = "FreeMeshes", ["category"] = "FreeMeshes", ["ownershipType"], ["assetType"]}]
      180 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      182 GETTABLEKS                       R4 R4 K8 ["FREE"]
      184 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      186 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      188 GETTABLEKS                       R4 R4 K20 ["MESH"]
      190 SETTABLEKS                       R4 R3 K90 ["assetType"]
      192 SETTABLEKS                       R3 R2 K98 ["FREE_MESHES"]
      194 DUPTABLE                         R3 K100 [{["name"] = "FreeAudio", ["category"] = "FreeAudio", ["ownershipType"], ["assetType"]}]
      195 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      197 GETTABLEKS                       R4 R4 K8 ["FREE"]
      199 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      201 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      203 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
      205 SETTABLEKS                       R4 R3 K90 ["assetType"]
      207 SETTABLEKS                       R3 R2 K101 ["FREE_AUDIO"]
      209 DUPTABLE                         R3 K104 [{["name"] = "MyModels", ["category"] = "MyModelsExceptPackage", ["ownershipType"], ["assetType"]}]
      210 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      212 GETTABLEKS                       R4 R4 K10 ["MY"]
      214 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      216 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      218 GETTABLEKS                       R4 R4 K18 ["MODEL"]
      220 SETTABLEKS                       R4 R3 K90 ["assetType"]
      222 SETTABLEKS                       R3 R2 K105 ["MY_MODELS"]
      224 DUPTABLE                         R3 K107 [{["name"] = "MyDecals", ["category"] = "MyDecals", ["ownershipType"], ["assetType"]}]
      225 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      227 GETTABLEKS                       R4 R4 K10 ["MY"]
      229 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      231 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      233 GETTABLEKS                       R4 R4 K19 ["DECAL"]
      235 SETTABLEKS                       R4 R3 K90 ["assetType"]
      237 SETTABLEKS                       R3 R2 K108 ["MY_DECALS"]
      239 DUPTABLE                         R3 K110 [{["name"] = "MyMeshes", ["category"] = "MyMeshes", ["ownershipType"], ["assetType"]}]
      240 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      242 GETTABLEKS                       R4 R4 K10 ["MY"]
      244 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      246 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      248 GETTABLEKS                       R4 R4 K20 ["MESH"]
      250 SETTABLEKS                       R4 R3 K90 ["assetType"]
      252 SETTABLEKS                       R3 R2 K111 ["MY_MESHES"]
      254 DUPTABLE                         R3 K113 [{["name"] = "MyAudio", ["category"] = "MyAudio", ["ownershipType"], ["assetType"]}]
      255 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      257 GETTABLEKS                       R4 R4 K10 ["MY"]
      259 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      261 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      263 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
      265 SETTABLEKS                       R4 R3 K90 ["assetType"]
      267 SETTABLEKS                       R3 R2 K114 ["MY_AUDIO"]
      269 DUPTABLE                         R3 K116 [{["name"] = "MyPlugins", ["category"] = "MyPlugins", ["ownershipType"], ["assetType"]}]
      270 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      272 GETTABLEKS                       R4 R4 K24 ["PLUGIN"]
      274 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      276 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      278 GETTABLEKS                       R4 R4 K24 ["PLUGIN"]
      280 SETTABLEKS                       R4 R3 K90 ["assetType"]
      282 SETTABLEKS                       R3 R2 K117 ["MY_PLUGINS"]
      284 DUPTABLE                         R3 K119 [{["name"] = "RecentModels", ["category"] = "RecentModels", ["ownershipType"], ["assetType"]}]
      285 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      287 GETTABLEKS                       R4 R4 K12 ["RECENT"]
      289 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      291 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      293 GETTABLEKS                       R4 R4 K18 ["MODEL"]
      295 SETTABLEKS                       R4 R3 K90 ["assetType"]
      297 SETTABLEKS                       R3 R2 K120 ["RECENT_MODELS"]
      299 DUPTABLE                         R3 K122 [{["name"] = "RecentDecals", ["category"] = "RecentDecals", ["ownershipType"], ["assetType"]}]
      300 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      302 GETTABLEKS                       R4 R4 K12 ["RECENT"]
      304 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      306 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      308 GETTABLEKS                       R4 R4 K19 ["DECAL"]
      310 SETTABLEKS                       R4 R3 K90 ["assetType"]
      312 SETTABLEKS                       R3 R2 K123 ["RECENT_DECALS"]
      314 DUPTABLE                         R3 K125 [{["name"] = "RecentMeshes", ["category"] = "RecentMeshes", ["ownershipType"], ["assetType"]}]
      315 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      317 GETTABLEKS                       R4 R4 K12 ["RECENT"]
      319 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      321 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      323 GETTABLEKS                       R4 R4 K20 ["MESH"]
      325 SETTABLEKS                       R4 R3 K90 ["assetType"]
      327 SETTABLEKS                       R3 R2 K126 ["RECENT_MESHES"]
      329 DUPTABLE                         R3 K128 [{["name"] = "RecentAudio", ["category"] = "RecentAudio", ["ownershipType"], ["assetType"]}]
      330 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      332 GETTABLEKS                       R4 R4 K12 ["RECENT"]
      334 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      336 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      338 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
      340 SETTABLEKS                       R4 R3 K90 ["assetType"]
      342 SETTABLEKS                       R3 R2 K129 ["RECENT_AUDIO"]
      344 DUPTABLE                         R3 K132 [{["name"] = "GroupModels", ["category"] = "GroupModelsExceptPackage", ["ownershipType"], ["assetType"]}]
      345 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      347 GETTABLEKS                       R4 R4 K14 ["GROUP"]
      349 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      351 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      353 GETTABLEKS                       R4 R4 K18 ["MODEL"]
      355 SETTABLEKS                       R4 R3 K90 ["assetType"]
      357 SETTABLEKS                       R3 R2 K133 ["GROUP_MODELS"]
      359 DUPTABLE                         R3 K135 [{["name"] = "GroupDecals", ["category"] = "GroupDecals", ["ownershipType"], ["assetType"]}]
      360 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      362 GETTABLEKS                       R4 R4 K14 ["GROUP"]
      364 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      366 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      368 GETTABLEKS                       R4 R4 K19 ["DECAL"]
      370 SETTABLEKS                       R4 R3 K90 ["assetType"]
      372 SETTABLEKS                       R3 R2 K136 ["GROUP_DECALS"]
      374 DUPTABLE                         R3 K138 [{["name"] = "GroupMeshes", ["category"] = "GroupMeshes", ["ownershipType"], ["assetType"]}]
      375 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      377 GETTABLEKS                       R4 R4 K14 ["GROUP"]
      379 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      381 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      383 GETTABLEKS                       R4 R4 K20 ["MESH"]
      385 SETTABLEKS                       R4 R3 K90 ["assetType"]
      387 SETTABLEKS                       R3 R2 K139 ["GROUP_MESHES"]
      389 DUPTABLE                         R3 K141 [{["name"] = "GroupAudio", ["category"] = "GroupAudio", ["ownershipType"], ["assetType"]}]
      390 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      392 GETTABLEKS                       R4 R4 K14 ["GROUP"]
      394 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      396 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      398 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
      400 SETTABLEKS                       R4 R3 K90 ["assetType"]
      402 SETTABLEKS                       R3 R2 K142 ["GROUP_AUDIO"]
      404 DUPTABLE                         R3 K144 [{["name"] = "MyPackages", ["category"] = "MyPackages", ["ownershipType"], ["assetType"]}]
      405 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      407 GETTABLEKS                       R4 R4 K10 ["MY"]
      409 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      411 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      413 GETTABLEKS                       R4 R4 K22 ["PACKAGE"]
      415 SETTABLEKS                       R4 R3 K90 ["assetType"]
      417 SETTABLEKS                       R3 R2 K145 ["MY_PACKAGES"]
      419 DUPTABLE                         R3 K147 [{["name"] = "GroupPackages", ["category"] = "GroupPackages", ["ownershipType"], ["assetType"]}]
      420 GETTABLEKS                       R4 R2 K17 ["OwnershipType"]
      422 GETTABLEKS                       R4 R4 K14 ["GROUP"]
      424 SETTABLEKS                       R4 R3 K89 ["ownershipType"]
      426 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      428 GETTABLEKS                       R4 R4 K22 ["PACKAGE"]
      430 SETTABLEKS                       R4 R3 K90 ["assetType"]
      432 SETTABLEKS                       R3 R2 K148 ["GROUP_PACKAGES"]
      434 DUPTABLE                         R3 K152 [{["name"] = "CreationsDevelopmentSectionDivider", ["selectable"] = False}]
      435 SETTABLEKS                       R3 R2 K153 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      437 DUPTABLE                         R3 K155 [{["name"] = "CreationsModels", ["assetType"]}]
      438 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      440 GETTABLEKS                       R4 R4 K18 ["MODEL"]
      442 SETTABLEKS                       R4 R3 K90 ["assetType"]
      444 SETTABLEKS                       R3 R2 K156 ["CREATIONS_MODELS"]
      446 DUPTABLE                         R3 K158 [{["name"] = "CreationsDecals", ["assetType"]}]
      447 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      449 GETTABLEKS                       R4 R4 K19 ["DECAL"]
      451 SETTABLEKS                       R4 R3 K90 ["assetType"]
      453 SETTABLEKS                       R3 R2 K159 ["CREATIONS_DECALS"]
      455 DUPTABLE                         R3 K161 [{["name"] = "CreationsAudio", ["assetType"]}]
      456 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      458 GETTABLEKS                       R4 R4 K21 ["AUDIO"]
      460 SETTABLEKS                       R4 R3 K90 ["assetType"]
      462 SETTABLEKS                       R3 R2 K162 ["CREATIONS_AUDIO"]
      464 DUPTABLE                         R3 K164 [{["name"] = "CreationsMeshes", ["assetType"]}]
      465 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      467 GETTABLEKS                       R4 R4 K20 ["MESH"]
      469 SETTABLEKS                       R4 R3 K90 ["assetType"]
      471 SETTABLEKS                       R3 R2 K165 ["CREATIONS_MESHES"]
      473 DUPTABLE                         R3 K167 [{["name"] = "CreationsCatalogSectionDivider", ["selectable"] = False}]
      474 SETTABLEKS                       R3 R2 K168 ["CREATIONS_CATALOG_SECTION_DIVIDER"]
      476 DUPTABLE                         R3 K170 [{["name"] = "CreationsHats", ["assetType"]}]
      477 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      479 GETTABLEKS                       R4 R4 K26 ["HAT"]
      481 SETTABLEKS                       R4 R3 K90 ["assetType"]
      483 SETTABLEKS                       R3 R2 K171 ["CREATIONS_HATS"]
      485 DUPTABLE                         R3 K173 [{["name"] = "CreationsTeeShirts", ["assetType"]}]
      486 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      488 GETTABLEKS                       R4 R4 K28 ["TEE_SHIRT"]
      490 SETTABLEKS                       R4 R3 K90 ["assetType"]
      492 SETTABLEKS                       R3 R2 K174 ["CREATIONS_TEE_SHIRT"]
      494 DUPTABLE                         R3 K176 [{["name"] = "CreationsShirts", ["assetType"]}]
      495 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      497 GETTABLEKS                       R4 R4 K30 ["SHIRT"]
      499 SETTABLEKS                       R4 R3 K90 ["assetType"]
      501 SETTABLEKS                       R3 R2 K177 ["CREATIONS_SHIRT"]
      503 DUPTABLE                         R3 K179 [{["name"] = "CreationsPants", ["assetType"]}]
      504 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      506 GETTABLEKS                       R4 R4 K32 ["PANTS"]
      508 SETTABLEKS                       R4 R3 K90 ["assetType"]
      510 SETTABLEKS                       R3 R2 K180 ["CREATIONS_PANTS"]
      512 DUPTABLE                         R3 K182 [{["name"] = "CreationsHair", ["assetType"]}]
      513 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      515 GETTABLEKS                       R4 R4 K71 ["HairAccessory"]
      517 SETTABLEKS                       R4 R3 K90 ["assetType"]
      519 SETTABLEKS                       R3 R2 K183 ["CREATIONS_HAIR"]
      521 DUPTABLE                         R3 K185 [{["name"] = "CreationsFaceAccessorys", ["assetType"]}]
      522 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      524 GETTABLEKS                       R4 R4 K73 ["FaceAccessory"]
      526 SETTABLEKS                       R4 R3 K90 ["assetType"]
      528 SETTABLEKS                       R3 R2 K186 ["CREATIONS_FACE_ACCESSORYS"]
      530 DUPTABLE                         R3 K188 [{["name"] = "CreationsNeckAccessorys", ["assetType"]}]
      531 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      533 GETTABLEKS                       R4 R4 K75 ["NeckAccessory"]
      535 SETTABLEKS                       R4 R3 K90 ["assetType"]
      537 SETTABLEKS                       R3 R2 K189 ["CREATIONS_NECK_ACCESSORYS"]
      539 DUPTABLE                         R3 K191 [{["name"] = "CreationsShoulderAccessorys", ["assetType"]}]
      540 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      542 GETTABLEKS                       R4 R4 K77 ["ShoulderAccessory"]
      544 SETTABLEKS                       R4 R3 K90 ["assetType"]
      546 SETTABLEKS                       R3 R2 K192 ["CREATIONS_SHOULDER_ACCESSORYS"]
      548 DUPTABLE                         R3 K194 [{["name"] = "CreationsFrontAccessorys", ["assetType"]}]
      549 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      551 GETTABLEKS                       R4 R4 K79 ["FrontAccessory"]
      553 SETTABLEKS                       R4 R3 K90 ["assetType"]
      555 SETTABLEKS                       R3 R2 K195 ["CREATIONS_FRONT_ACCESSORYS"]
      557 DUPTABLE                         R3 K197 [{["name"] = "CreationsBackAccessorys", ["assetType"]}]
      558 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      560 GETTABLEKS                       R4 R4 K81 ["BackAccessory"]
      562 SETTABLEKS                       R4 R3 K90 ["assetType"]
      564 SETTABLEKS                       R3 R2 K198 ["CREATIONS_BACK_ACCESSORYS"]
      566 DUPTABLE                         R3 K200 [{["name"] = "CreationsWaistAccessorys", ["assetType"]}]
      567 GETTABLEKS                       R4 R2 K49 ["AssetType"]
      569 GETTABLEKS                       R4 R4 K83 ["WaistAccessory"]
      571 SETTABLEKS                       R4 R3 K90 ["assetType"]
      573 SETTABLEKS                       R3 R2 K201 ["CREATIONS_WAIST_ACCESSORYS"]
      575 NEWTABLE                         R3 0 4
      577 GETTABLEKS                       R4 R2 K92 ["FREE_MODELS"]
      579 GETTABLEKS                       R5 R2 K95 ["FREE_DECALS"]
      581 GETTABLEKS                       R6 R2 K98 ["FREE_MESHES"]
      583 GETTABLEKS                       R7 R2 K101 ["FREE_AUDIO"]
      585 SETLIST                          R3 R4 4 [1]
      587 SETTABLEKS                       R3 R2 K202 ["MARKETPLACE"]
      589 NEWTABLE                         R3 0 5
      591 GETTABLEKS                       R4 R2 K105 ["MY_MODELS"]
      593 GETTABLEKS                       R5 R2 K108 ["MY_DECALS"]
      595 GETTABLEKS                       R6 R2 K111 ["MY_MESHES"]
      597 GETTABLEKS                       R7 R2 K114 ["MY_AUDIO"]
      599 GETTABLEKS                       R8 R2 K145 ["MY_PACKAGES"]
      601 SETLIST                          R3 R4 5 [1]
      603 SETTABLEKS                       R3 R2 K203 ["INVENTORY"]
      605 NEWTABLE                         R3 0 9
      607 GETTABLEKS                       R4 R2 K105 ["MY_MODELS"]
      609 GETTABLEKS                       R5 R2 K108 ["MY_DECALS"]
      611 GETTABLEKS                       R6 R2 K111 ["MY_MESHES"]
      613 GETTABLEKS                       R7 R2 K114 ["MY_AUDIO"]
      615 GETTABLEKS                       R8 R2 K145 ["MY_PACKAGES"]
      617 GETTABLEKS                       R9 R2 K133 ["GROUP_MODELS"]
      619 GETTABLEKS                       R10 R2 K136 ["GROUP_DECALS"]
      621 GETTABLEKS                       R11 R2 K139 ["GROUP_MESHES"]
      623 GETTABLEKS                       R12 R2 K142 ["GROUP_AUDIO"]
      625 SETLIST                          R3 R4 9 [1]
      627 SETTABLEKS                       R3 R2 K204 ["INVENTORY_WITH_GROUPS"]
      629 NEWTABLE                         R3 0 4
      631 GETTABLEKS                       R4 R2 K120 ["RECENT_MODELS"]
      633 GETTABLEKS                       R5 R2 K123 ["RECENT_DECALS"]
      635 GETTABLEKS                       R6 R2 K126 ["RECENT_MESHES"]
      637 GETTABLEKS                       R7 R2 K129 ["RECENT_AUDIO"]
      639 SETLIST                          R3 R4 4 [1]
      641 SETTABLEKS                       R3 R2 K12 ["RECENT"]
      643 NEWTABLE                         R3 0 5
      645 GETTABLEKS                       R4 R2 K153 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      647 GETTABLEKS                       R5 R2 K156 ["CREATIONS_MODELS"]
      649 GETTABLEKS                       R6 R2 K159 ["CREATIONS_DECALS"]
      651 GETTABLEKS                       R7 R2 K162 ["CREATIONS_AUDIO"]
      653 GETTABLEKS                       R8 R2 K165 ["CREATIONS_MESHES"]
      655 SETLIST                          R3 R4 5 [1]
      657 NEWTABLE                         R4 0 7
      659 GETTABLEKS                       R5 R2 K153 ["CREATIONS_DEVELOPMENT_SECTION_DIVIDER"]
      661 GETTABLEKS                       R6 R2 K156 ["CREATIONS_MODELS"]
      663 GETTABLEKS                       R7 R2 K159 ["CREATIONS_DECALS"]
      665 GETTABLEKS                       R8 R2 K162 ["CREATIONS_AUDIO"]
      667 GETTABLEKS                       R9 R2 K165 ["CREATIONS_MESHES"]
      669 GETTABLEKS                       R10 R2 K168 ["CREATIONS_CATALOG_SECTION_DIVIDER"]
      671 GETTABLEKS                       R11 R2 K171 ["CREATIONS_HATS"]
      673 SETLIST                          R4 R5 7 [1]
      675 LOADK                            R5 K205 ["Marketplace"]
      676 SETTABLEKS                       R5 R2 K206 ["MARKETPLACE_KEY"]
      678 LOADK                            R5 K207 ["Inventory"]
      679 SETTABLEKS                       R5 R2 K208 ["INVENTORY_KEY"]
      681 LOADK                            R5 K209 ["Recent"]
      682 SETTABLEKS                       R5 R2 K210 ["RECENT_KEY"]
      684 LOADK                            R5 K211 ["Creations"]
      685 SETTABLEKS                       R5 R2 K212 ["CREATIONS_KEY"]
      687 NEWTABLE                         R5 4 0
      689 GETTABLEKS                       R6 R2 K206 ["MARKETPLACE_KEY"]
      691 GETTABLEKS                       R7 R2 K202 ["MARKETPLACE"]
      693 SETTABLE                         R7 R5 R6
      694 GETTABLEKS                       R6 R2 K208 ["INVENTORY_KEY"]
      696 GETTABLEKS                       R7 R2 K203 ["INVENTORY"]
      698 SETTABLE                         R7 R5 R6
      699 GETTABLEKS                       R6 R2 K210 ["RECENT_KEY"]
      701 GETTABLEKS                       R7 R2 K12 ["RECENT"]
      703 SETTABLE                         R7 R5 R6
      704 GETTABLEKS                       R6 R2 K212 ["CREATIONS_KEY"]
      706 NEWTABLE                         R7 0 2
      708 SETTABLEN                        R3 R7 1
      709 SETTABLEN                        R4 R7 2
      710 SETTABLE                         R7 R5 R6
      711 DUPCLOSURE                       R6 K213 [PROTO_0]
      712 CAPTURE                          VAL R2
      713 DUPCLOSURE                       R7 K214 [PROTO_1]
      714 CAPTURE                          VAL R2
      715 SETTABLEKS                       R7 R2 K215 ["categoryIsPackage"]
      717 DUPCLOSURE                       R7 K216 [PROTO_2]
      718 CAPTURE                          VAL R2
      719 SETTABLEKS                       R7 R2 K217 ["categoryIsFreeAsset"]
      721 DUPCLOSURE                       R7 K218 [PROTO_3]
      722 CAPTURE                          VAL R2
      723 SETTABLEKS                       R7 R2 K219 ["categoryIsGroupAsset"]
      725 DUPCLOSURE                       R7 K220 [PROTO_4]
      726 CAPTURE                          VAL R2
      727 SETTABLEKS                       R7 R2 K221 ["categoryIsPlugin"]
      729 DUPCLOSURE                       R7 K222 [PROTO_5]
      730 CAPTURE                          VAL R2
      731 CAPTURE                          VAL R5
      732 SETTABLEKS                       R7 R2 K223 ["getCategories"]
      734 DUPCLOSURE                       R7 K224 [PROTO_6]
      735 CAPTURE                          VAL R2
      736 CAPTURE                          VAL R1
      737 SETTABLEKS                       R7 R2 K225 ["getEngineAssetType"]
      739 DUPCLOSURE                       R7 K226 [PROTO_7]
      740 CAPTURE                          VAL R2
      741 DUPCLOSURE                       R8 K227 [PROTO_8]
      742 CAPTURE                          VAL R2
      743 DUPCLOSURE                       R9 K228 [PROTO_9]
      744 CAPTURE                          VAL R2
      745 SETTABLEKS                       R9 R2 K229 ["categoryToString"]
      747 RETURN                           R2 1
