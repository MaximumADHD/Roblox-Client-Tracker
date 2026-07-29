PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
        9 GETTABLEKS                       R10 R6 K1 ["AssetType"]
       11 GETTABLE                         R8 R9 R10
       12 LOADK                            R10 K2 ["No known accessory type for "]
       13 GETTABLEKS                       R12 R6 K1 ["AssetType"]
       15 FASTCALL1                        TOSTRING R12 ; [+2]
       16 GETIMPORT                        R11 K4 [tostring]
       18 CALL                             R11 1 1
       19 CONCAT                           R9 R10 R11
       20 FASTCALL2                        ASSERT R8 R9 ; [+3]
       22 GETIMPORT                        R7 K6 [assert]
       24 CALL                             R7 2 1
       25 DUPTABLE                         R10 K19 [{["AccessoryType"], ["AssetId"], ["Order"], ["IsLayered"] = True, ["Puffiness"] = 0, ["Position"] = {0, 0, 0}, ["Rotation"] = {0, 0, 0}, ["Scale"] = {1, 1, 1}}]
       26 SETTABLEKS                       R7 R10 K7 ["AccessoryType"]
       28 GETTABLEKS                       R11 R6 K8 ["AssetId"]
       30 SETTABLEKS                       R11 R10 K8 ["AssetId"]
       32 GETTABLEKS                       R12 R6 K9 ["Order"]
       34 ORK                              R11 R12 K13 [0]
       35 SETTABLEKS                       R11 R10 K9 ["Order"]
       37 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       39 MOVE                             R9 R1
       40 GETIMPORT                        R8 K22 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-38]
       45 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R3 R1
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R3 ; [+8]
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R1
        6 CALL                             R5 1 1
        7 LOADB                            R6 1
        8 NAMECALL                         R3 R0 K0 ["SetAccessories"]
       10 CALL                             R3 3 0
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETIMPORT                        R8 K3 [Instance.new]
       17 LOADK                            R9 K4 ["MakeupDescription"]
       18 CALL                             R8 1 1
       19 GETTABLEKS                       R9 R7 K5 ["AssetId"]
       21 SETTABLEKS                       R9 R8 K5 ["AssetId"]
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K6 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       26 GETTABLEKS                       R11 R7 K7 ["AssetType"]
       28 GETTABLE                         R9 R10 R11
       29 SETTABLEKS                       R9 R8 K8 ["MakeupType"]
       31 GETTABLEKS                       R10 R7 K10 ["Order"]
       33 ORK                              R9 R10 K9 [0]
       34 SETTABLEKS                       R9 R8 K10 ["Order"]
       36 SETTABLEKS                       R0 R8 K11 ["Parent"]
       38 FORGLOOP                         R3 2 ; [-24]
       40 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 JUMPIFEQKS                       R6 K4 ["Head"] ; [+4]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K5 ["Transparency"]
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R3 0
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLEKS                       R9 R8 K0 ["rowState"]
       11 JUMPIFNOTEQKS                    R9 K1 ["Selected"] ; [+58]
       13 GETTABLEKS                       R9 R8 K2 ["assetType"]
       15 GETIMPORT                        R10 K6 [Enum.AssetType.EyebrowAccessory]
       17 JUMPIFEQ                         R9 R10 ; [+7]
       19 GETTABLEKS                       R9 R8 K2 ["assetType"]
       21 GETIMPORT                        R10 K8 [Enum.AssetType.EyelashAccessory]
       23 JUMPIFNOTEQ                      R9 R10 ; [+20]
       25 ADDK                             R3 R3 K9 [1]
       26 DUPTABLE                         R11 K12 [{"AssetId", "AssetType", "Order"}]
       27 GETTABLEKS                       R12 R8 K13 ["id"]
       29 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       31 GETTABLEKS                       R12 R8 K2 ["assetType"]
       33 SETTABLEKS                       R12 R11 K4 ["AssetType"]
       35 SETTABLEKS                       R3 R11 K11 ["Order"]
       37 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       39 MOVE                             R10 R1
       40 GETIMPORT                        R9 K16 [table.insert]
       42 CALL                             R9 2 0
       43 JUMP                             ; [+26]
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K17 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       47 GETTABLEKS                       R11 R8 K2 ["assetType"]
       49 GETTABLE                         R9 R10 R11
       50 JUMPIFEQKNIL                     R9 ; [+19]
       52 ADDK                             R3 R3 K9 [1]
       53 DUPTABLE                         R11 K12 [{"AssetId", "AssetType", "Order"}]
       54 GETTABLEKS                       R12 R8 K13 ["id"]
       56 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       58 GETTABLEKS                       R12 R8 K2 ["assetType"]
       60 SETTABLEKS                       R12 R11 K4 ["AssetType"]
       62 SETTABLEKS                       R3 R11 K11 ["Order"]
       64 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       66 MOVE                             R10 R2
       67 GETIMPORT                        R9 K16 [table.insert]
       69 CALL                             R9 2 0
       70 FORGLOOP                         R4 2 ; [-62]
       72 RETURN                           R1 2

PROTO_4:
        0 JUMPIFNOT                        R2 ; [+2]
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+7]
        3 GETIMPORT                        R3 K2 [warn]
        5 LOADK                            R4 K3 ["[LookPreview] Failed to get head asset ID for makeup look"]
        6 CALL                             R3 1 0
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 CALL                             R3 1 2
       12 GETIMPORT                        R5 K6 [Instance.new]
       14 LOADK                            R6 K7 ["HumanoidDescription"]
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R2 R5 K8 ["Head"]
       18 SETTABLEKS                       R1 R5 K9 ["HeadColor"]
       20 GETUPVAL                         R6 1
       21 MOVE                             R7 R5
       22 MOVE                             R8 R3
       23 MOVE                             R9 R4
       24 CALL                             R6 3 0
       25 RETURN                           R5 1

PROTO_5:
        0 GETIMPORT                        R3 K3 [Enum.AssetType.Shirt]
        2 JUMPIFNOTEQ                      R1 R3 ; [+4]
        4 SETTABLEKS                       R2 R0 K2 ["Shirt"]
        6 RETURN                           R0 0
        7 GETIMPORT                        R3 K5 [Enum.AssetType.Pants]
        9 JUMPIFNOTEQ                      R1 R3 ; [+4]
       11 SETTABLEKS                       R2 R0 K4 ["Pants"]
       13 RETURN                           R0 0
       14 GETIMPORT                        R3 K7 [Enum.AssetType.TShirt]
       16 JUMPIFNOTEQ                      R1 R3 ; [+3]
       18 SETTABLEKS                       R2 R0 K8 ["GraphicTShirt"]
       20 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K3 [Enum.AssetType.DynamicHead]
        2 JUMPIFEQ                         R1 R3 ; [+5]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.Head]
        6 JUMPIFNOTEQ                      R1 R3 ; [+4]
        8 SETTABLEKS                       R2 R0 K4 ["Head"]
       10 RETURN                           R0 0
       11 GETIMPORT                        R3 K7 [Enum.AssetType.Torso]
       13 JUMPIFNOTEQ                      R1 R3 ; [+4]
       15 SETTABLEKS                       R2 R0 K6 ["Torso"]
       17 RETURN                           R0 0
       18 GETIMPORT                        R3 K9 [Enum.AssetType.LeftArm]
       20 JUMPIFNOTEQ                      R1 R3 ; [+4]
       22 SETTABLEKS                       R2 R0 K8 ["LeftArm"]
       24 RETURN                           R0 0
       25 GETIMPORT                        R3 K11 [Enum.AssetType.RightArm]
       27 JUMPIFNOTEQ                      R1 R3 ; [+4]
       29 SETTABLEKS                       R2 R0 K10 ["RightArm"]
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K13 [Enum.AssetType.LeftLeg]
       34 JUMPIFNOTEQ                      R1 R3 ; [+4]
       36 SETTABLEKS                       R2 R0 K12 ["LeftLeg"]
       38 RETURN                           R0 0
       39 GETIMPORT                        R3 K15 [Enum.AssetType.RightLeg]
       41 JUMPIFNOTEQ                      R1 R3 ; [+3]
       43 SETTABLEKS                       R2 R0 K14 ["RightLeg"]
       45 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["bodyType"]
        2 SETTABLEKS                       R2 R0 K1 ["BodyTypeScale"]
        4 GETTABLEKS                       R2 R1 K2 ["depth"]
        6 SETTABLEKS                       R2 R0 K3 ["DepthScale"]
        8 GETTABLEKS                       R2 R1 K4 ["head"]
       10 SETTABLEKS                       R2 R0 K5 ["HeadScale"]
       12 GETTABLEKS                       R2 R1 K6 ["height"]
       14 SETTABLEKS                       R2 R0 K7 ["HeightScale"]
       16 GETTABLEKS                       R2 R1 K8 ["proportion"]
       18 SETTABLEKS                       R2 R0 K9 ["ProportionScale"]
       20 GETTABLEKS                       R2 R1 K10 ["width"]
       22 SETTABLEKS                       R2 R0 K11 ["WidthScale"]
       24 RETURN                           R0 0

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["HeadColor"]
        2 SETTABLEKS                       R1 R0 K1 ["TorsoColor"]
        4 SETTABLEKS                       R1 R0 K2 ["LeftArmColor"]
        6 SETTABLEKS                       R1 R0 K3 ["RightArmColor"]
        8 SETTABLEKS                       R1 R0 K4 ["LeftLegColor"]
       10 SETTABLEKS                       R1 R0 K5 ["RightLegColor"]
       12 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K2 [Enum.AssetType]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K3 ["FromValue"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 ADDK                             R3 R3 K4 [1]
       10 SETUPVAL                         R3 0
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETUPVAL                         R4 2
       15 DUPTABLE                         R5 K7 [{"id", "assetType"}]
       16 SETTABLEKS                       R0 R5 K5 ["id"]
       18 SETTABLEKS                       R2 R5 K6 ["assetType"]
       20 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       22 GETIMPORT                        R3 K10 [table.insert]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R3 K12 [Enum.AssetType.EyebrowAccessory]
       28 JUMPIFEQ                         R2 R3 ; [+5]
       30 GETIMPORT                        R3 K14 [Enum.AssetType.EyelashAccessory]
       32 JUMPIFNOTEQ                      R2 R3 ; [+16]
       34 GETUPVAL                         R4 3
       35 DUPTABLE                         R5 K17 [{"AssetId", "AssetType", "Order"}]
       36 SETTABLEKS                       R0 R5 K15 ["AssetId"]
       38 SETTABLEKS                       R2 R5 K1 ["AssetType"]
       40 GETUPVAL                         R6 0
       41 SETTABLEKS                       R6 R5 K16 ["Order"]
       43 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       45 GETIMPORT                        R3 K10 [table.insert]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R4 4
       50 GETTABLE                         R3 R4 R2
       51 JUMPIFNOT                        R3 ; [+15]
       52 GETUPVAL                         R4 5
       53 DUPTABLE                         R5 K17 [{"AssetId", "AssetType", "Order"}]
       54 SETTABLEKS                       R0 R5 K15 ["AssetId"]
       56 SETTABLEKS                       R2 R5 K1 ["AssetType"]
       58 GETUPVAL                         R6 0
       59 SETTABLEKS                       R6 R5 K16 ["Order"]
       61 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       63 GETIMPORT                        R3 K10 [table.insert]
       65 CALL                             R3 2 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 6
       68 GETTABLE                         R3 R4 R2
       69 JUMPIFNOT                        R3 ; [+12]
       70 GETUPVAL                         R4 7
       71 DUPTABLE                         R5 K7 [{"id", "assetType"}]
       72 SETTABLEKS                       R0 R5 K5 ["id"]
       74 SETTABLEKS                       R2 R5 K6 ["assetType"]
       76 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       78 GETIMPORT                        R3 K10 [table.insert]
       80 CALL                             R3 2 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R4 8
       83 GETTABLEKS                       R4 R4 K18 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       85 GETTABLE                         R3 R4 R2
       86 JUMPIFNOT                        R3 ; [+14]
       87 GETUPVAL                         R4 9
       88 DUPTABLE                         R5 K17 [{"AssetId", "AssetType", "Order"}]
       89 SETTABLEKS                       R0 R5 K15 ["AssetId"]
       91 SETTABLEKS                       R2 R5 K1 ["AssetType"]
       93 GETUPVAL                         R6 0
       94 SETTABLEKS                       R6 R5 K16 ["Order"]
       96 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       98 GETIMPORT                        R3 K10 [table.insert]
      100 CALL                             R3 2 0
      101 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 NEWTABLE                         R5 0 0
       10 LOADN                            R6 0
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          REF R6
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R4
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R5
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 MOVE                             R8 R0
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 FORGPREP                         R8
       26 GETTABLEKS                       R13 R12 K0 ["itemRowType"]
       28 JUMPIFNOTEQKS                    R13 K1 ["Asset"] ; [+14]
       30 GETTABLEKS                       R13 R12 K2 ["rowState"]
       32 JUMPIFNOTEQKS                    R13 K3 ["Selected"] ; [+10]
       34 MOVE                             R13 R7
       35 GETTABLEKS                       R14 R12 K4 ["id"]
       37 GETTABLEKS                       R15 R12 K5 ["assetType"]
       39 GETTABLEKS                       R15 R15 K6 ["Value"]
       41 CALL                             R13 2 0
       42 JUMP                             ; [+21]
       43 GETTABLEKS                       R13 R12 K0 ["itemRowType"]
       45 JUMPIFNOTEQKS                    R13 K7 ["Bundle"] ; [+18]
       47 GETTABLEKS                       R13 R12 K2 ["rowState"]
       49 JUMPIFNOTEQKS                    R13 K3 ["Selected"] ; [+14]
       51 GETUPVAL                         R13 4
       52 GETTABLEKS                       R14 R12 K8 ["assetsInBundle"]
       54 CALL                             R13 1 3
       55 FORGPREP                         R13
       56 MOVE                             R18 R7
       57 GETTABLEKS                       R19 R17 K4 ["id"]
       59 GETTABLEKS                       R20 R17 K5 ["assetType"]
       61 CALL                             R18 2 0
       62 FORGLOOP                         R13 2 ; [-7]
       64 FORGLOOP                         R8 2 ; [-39]
       66 DUPTABLE                         R8 K14 [{"bodyParts", "accessories", "makeupAccessories", "makeupDecals", "classicClothing"}]
       67 SETTABLEKS                       R1 R8 K9 ["bodyParts"]
       69 SETTABLEKS                       R2 R8 K10 ["accessories"]
       71 SETTABLEKS                       R3 R8 K11 ["makeupAccessories"]
       73 SETTABLEKS                       R4 R8 K12 ["makeupDecals"]
       75 SETTABLEKS                       R5 R8 K13 ["classicClothing"]
       77 CLOSEUPVALS                      R6
       78 RETURN                           R8 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K2 [Instance.new]
        5 LOADK                            R5 K3 ["HumanoidDescription"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R5 R3 K4 ["bodyParts"]
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETUPVAL                         R10 1
       13 MOVE                             R11 R4
       14 GETTABLEKS                       R12 R9 K5 ["assetType"]
       16 GETTABLEKS                       R13 R9 K6 ["id"]
       18 CALL                             R10 3 0
       19 FORGLOOP                         R5 2 ; [-8]
       21 GETTABLEKS                       R5 R3 K7 ["classicClothing"]
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETTABLEKS                       R10 R9 K5 ["assetType"]
       28 GETTABLEKS                       R11 R9 K6 ["id"]
       30 GETIMPORT                        R12 K11 [Enum.AssetType.Shirt]
       32 JUMPIFNOTEQ                      R10 R12 ; [+4]
       34 SETTABLEKS                       R11 R4 K10 ["Shirt"]
       36 JUMP                             ; [+13]
       37 GETIMPORT                        R12 K13 [Enum.AssetType.Pants]
       39 JUMPIFNOTEQ                      R10 R12 ; [+4]
       41 SETTABLEKS                       R11 R4 K12 ["Pants"]
       43 JUMP                             ; [+6]
       44 GETIMPORT                        R12 K15 [Enum.AssetType.TShirt]
       46 JUMPIFNOTEQ                      R10 R12 ; [+3]
       48 SETTABLEKS                       R11 R4 K16 ["GraphicTShirt"]
       50 FORGLOOP                         R5 2 ; [-25]
       52 SETTABLEKS                       R2 R4 K17 ["HeadColor"]
       54 SETTABLEKS                       R2 R4 K18 ["TorsoColor"]
       56 SETTABLEKS                       R2 R4 K19 ["LeftArmColor"]
       58 SETTABLEKS                       R2 R4 K20 ["RightArmColor"]
       60 SETTABLEKS                       R2 R4 K21 ["LeftLegColor"]
       62 SETTABLEKS                       R2 R4 K22 ["RightLegColor"]
       64 JUMPIFNOT                        R1 ; [+24]
       65 GETTABLEKS                       R5 R1 K23 ["bodyType"]
       67 SETTABLEKS                       R5 R4 K24 ["BodyTypeScale"]
       69 GETTABLEKS                       R5 R1 K25 ["depth"]
       71 SETTABLEKS                       R5 R4 K26 ["DepthScale"]
       73 GETTABLEKS                       R5 R1 K27 ["head"]
       75 SETTABLEKS                       R5 R4 K28 ["HeadScale"]
       77 GETTABLEKS                       R5 R1 K29 ["height"]
       79 SETTABLEKS                       R5 R4 K30 ["HeightScale"]
       81 GETTABLEKS                       R5 R1 K31 ["proportion"]
       83 SETTABLEKS                       R5 R4 K32 ["ProportionScale"]
       85 GETTABLEKS                       R5 R1 K33 ["width"]
       87 SETTABLEKS                       R5 R4 K34 ["WidthScale"]
       89 NEWTABLE                         R5 0 0
       91 GETTABLEKS                       R6 R3 K35 ["accessories"]
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 FORGPREP                         R6
       96 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       98 MOVE                             R12 R5
       99 MOVE                             R13 R10
      100 GETIMPORT                        R11 K38 [table.insert]
      102 CALL                             R11 2 0
      103 FORGLOOP                         R6 2 ; [-8]
      105 GETTABLEKS                       R6 R3 K39 ["makeupAccessories"]
      107 LOADNIL                          R7
      108 LOADNIL                          R8
      109 FORGPREP                         R6
      110 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
      112 MOVE                             R12 R5
      113 MOVE                             R13 R10
      114 GETIMPORT                        R11 K38 [table.insert]
      116 CALL                             R11 2 0
      117 FORGLOOP                         R6 2 ; [-8]
      119 GETUPVAL                         R6 2
      120 MOVE                             R7 R4
      121 MOVE                             R8 R5
      122 GETTABLEKS                       R9 R3 K40 ["makeupDecals"]
      124 CALL                             R6 3 0
      125 RETURN                           R4 1

PROTO_12:
        0 JUMPIFNOTEQKS                    R0 K0 ["MakeupLook"] ; [+47]
        2 NEWTABLE                         R5 0 0
        4 MOVE                             R6 R1
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K1 ["itemRowType"]
       10 JUMPIFNOTEQKS                    R11 K2 ["Asset"] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       14 MOVE                             R12 R5
       15 MOVE                             R13 R10
       16 GETIMPORT                        R11 K5 [table.insert]
       18 CALL                             R11 2 0
       19 FORGLOOP                         R6 2 ; [-12]
       21 JUMPIFNOT                        R4 ; [+2]
       22 JUMPIFNOTEQKN                    R4 K6 [0] ; [+7]
       24 GETIMPORT                        R7 K8 [warn]
       26 LOADK                            R8 K9 ["[LookPreview] Failed to get head asset ID for makeup look"]
       27 CALL                             R7 1 0
       28 LOADNIL                          R6
       29 RETURN                           R6 1
       30 GETUPVAL                         R7 0
       31 MOVE                             R8 R5
       32 CALL                             R7 1 2
       33 GETIMPORT                        R9 K12 [Instance.new]
       35 LOADK                            R10 K13 ["HumanoidDescription"]
       36 CALL                             R9 1 1
       37 SETTABLEKS                       R4 R9 K14 ["Head"]
       39 SETTABLEKS                       R2 R9 K15 ["HeadColor"]
       41 GETUPVAL                         R10 1
       42 MOVE                             R11 R9
       43 MOVE                             R12 R7
       44 MOVE                             R13 R8
       45 CALL                             R10 3 0
       46 MOVE                             R6 R9
       47 RETURN                           R6 1
       48 GETUPVAL                         R5 2
       49 MOVE                             R6 R1
       50 MOVE                             R7 R3
       51 MOVE                             R8 R2
       52 CALL                             R5 3 1
       53 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["getIncludedBundleAssets"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 2 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R6 K12 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R7 K13 [PROTO_2]
       40 SETTABLEKS                       R7 R4 K14 ["hideBodyExceptHead"]
       42 DUPCLOSURE                       R7 K15 [PROTO_3]
       43 CAPTURE                          VAL R1
       44 DUPCLOSURE                       R8 K16 [PROTO_4]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R6
       47 NEWTABLE                         R9 8 0
       49 GETIMPORT                        R10 K20 [Enum.AssetType.DynamicHead]
       51 LOADB                            R11 1
       52 SETTABLE                         R11 R9 R10
       53 GETIMPORT                        R10 K22 [Enum.AssetType.Head]
       55 LOADB                            R11 1
       56 SETTABLE                         R11 R9 R10
       57 GETIMPORT                        R10 K24 [Enum.AssetType.Torso]
       59 LOADB                            R11 1
       60 SETTABLE                         R11 R9 R10
       61 GETIMPORT                        R10 K26 [Enum.AssetType.LeftArm]
       63 LOADB                            R11 1
       64 SETTABLE                         R11 R9 R10
       65 GETIMPORT                        R10 K28 [Enum.AssetType.RightArm]
       67 LOADB                            R11 1
       68 SETTABLE                         R11 R9 R10
       69 GETIMPORT                        R10 K30 [Enum.AssetType.LeftLeg]
       71 LOADB                            R11 1
       72 SETTABLE                         R11 R9 R10
       73 GETIMPORT                        R10 K32 [Enum.AssetType.RightLeg]
       75 LOADB                            R11 1
       76 SETTABLE                         R11 R9 R10
       77 NEWTABLE                         R10 0 0
       79 GETTABLEKS                       R11 R1 K33 ["MAKEUP_ASSET_TYPES"]
       81 LOADNIL                          R12
       82 LOADNIL                          R13
       83 FORGPREP                         R11
       84 LOADB                            R16 1
       85 SETTABLE                         R16 R10 R15
       86 FORGLOOP                         R11 2 ; [-3]
       88 NEWTABLE                         R11 4 0
       90 GETIMPORT                        R12 K35 [Enum.AssetType.Shirt]
       92 LOADB                            R13 1
       93 SETTABLE                         R13 R11 R12
       94 GETIMPORT                        R12 K37 [Enum.AssetType.Pants]
       96 LOADB                            R13 1
       97 SETTABLE                         R13 R11 R12
       98 GETIMPORT                        R12 K39 [Enum.AssetType.TShirt]
      100 LOADB                            R13 1
      101 SETTABLE                         R13 R11 R12
      102 DUPCLOSURE                       R12 K40 [PROTO_5]
      103 DUPCLOSURE                       R13 K41 [PROTO_6]
      104 DUPCLOSURE                       R14 K42 [PROTO_7]
      105 DUPCLOSURE                       R15 K43 [PROTO_8]
      106 DUPCLOSURE                       R16 K44 [PROTO_10]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R3
      112 DUPCLOSURE                       R17 K45 [PROTO_11]
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R6
      116 DUPCLOSURE                       R18 K46 [PROTO_12]
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R17
      120 SETTABLEKS                       R18 R4 K47 ["buildLookDescription"]
      122 RETURN                           R4 1
