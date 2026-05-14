PROTO_0:
        0 LOADN                            R3 10
        1 ORK                              R4 R1 K0 [0]
        2 POW                              R2 R3 R4
        3 MUL                              R6 R0 R2
        4 ADDK                             R5 R6 K1 [0.5]
        5 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.floor]
        8 CALL                             R4 1 1
        9 DIV                              R3 R4 R2
       10 RETURN                           R3 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        4 GETTABLEKS                       R2 R2 K1 ["Body"]
        6 JUMPIFEQ                         R0 R2 ; [+29]
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       12 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       14 JUMPIFEQ                         R0 R2 ; [+21]
       16 LOADB                            R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       20 GETTABLEKS                       R2 R2 K3 ["Shoes"]
       22 JUMPIFEQ                         R0 R2 ; [+13]
       24 GETUPVAL                         R1 1
       25 CALL                             R1 0 1
       26 JUMPIFNOT                        R1 ; [+9]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       30 GETTABLEKS                       R2 R2 K4 ["AvatarAnimations"]
       32 JUMPIFEQ                         R0 R2 ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        4 GETTABLEKS                       R2 R2 K1 ["Body"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       11 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        6 GETTABLEKS                       R2 R2 K1 ["AvatarAnimations"]
        8 JUMPIFEQ                         R0 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
        4 GETTABLEKS                       R2 R2 K1 ["ReviewApproved"]
        6 JUMPIFEQ                         R2 R0 ; [+26]
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
       12 GETTABLEKS                       R2 R2 K2 ["OnSale"]
       14 JUMPIFEQ                         R2 R0 ; [+18]
       16 LOADB                            R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
       20 GETTABLEKS                       R2 R2 K3 ["OffSale"]
       22 JUMPIFEQ                         R2 R0 ; [+10]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
       27 GETTABLEKS                       R2 R2 K4 ["DelayedRelease"]
       29 JUMPIFEQ                         R2 R0 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
        4 GETTABLEKS                       R2 R2 K1 ["OnSale"]
        6 JUMPIFEQ                         R2 R0 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["ASSET_STATUS"]
       11 GETTABLEKS                       R2 R2 K2 ["Free"]
       13 JUMPIFEQ                         R2 R0 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+12]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R1 K1 ["isMarketplace"]
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       12 GETTABLEKS                       R3 R1 K2 ["isBuyable"]
       14 JUMPIFEQKB                       R3 TRUE ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 JUMPIFEQKNIL                     R0 ; [+18]
        6 GETIMPORT                        R1 K5 [table.find]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K6 ["ASSET_TYPES_2D"]
       11 GETIMPORT                        R4 K2 [Enum.AssetType]
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R3 R4 R5
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+6]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R2 R0 K7 ["Name"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLE                         R3 R1 R2
       23 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 JUMPIFNOTEQKS                    R6 K2 ["Tshirt"] ; [+3]
        9 LOADK                            R6 K3 ["TShirt"]
       10 JUMP                             ; [+3]
       11 JUMPIFNOTEQKS                    R6 K4 ["TshirtAccessory"] ; [+2]
       13 LOADK                            R6 K5 ["TShirtAccessory"]
       14 GETUPVAL                         R7 0
       15 CALL                             R7 0 1
       16 JUMPIFNOT                        R7 ; [+8]
       17 GETIMPORT                        R7 K7 [pcall]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          REF R6
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CALL                             R7 1 1
       24 JUMP                             ; [+49]
       25 GETUPVAL                         R7 2
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+18]
       28 GETIMPORT                        R7 K10 [table.find]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K11 ["MAKEUP_ASSET_TYPES"]
       33 GETIMPORT                        R10 K14 [Enum.AssetType]
       35 GETTABLE                         R9 R10 R6
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+8]
       38 GETIMPORT                        R8 K14 [Enum.AssetType]
       40 GETTABLE                         R7 R8 R6
       41 GETTABLEKS                       R7 R7 K15 ["Name"]
       43 NEWTABLE                         R8 0 0
       45 SETTABLE                         R8 R1 R7
       46 GETIMPORT                        R7 K10 [table.find]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K16 ["ASSET_TYPES_2D"]
       51 GETIMPORT                        R10 K14 [Enum.AssetType]
       53 GETTABLE                         R9 R10 R6
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+18]
       56 GETIMPORT                        R7 K10 [table.find]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K17 ["BODY_PARTS"]
       61 GETIMPORT                        R10 K14 [Enum.AssetType]
       63 GETTABLE                         R9 R10 R6
       64 CALL                             R7 2 1
       65 JUMPIF                           R7 ; [+8]
       66 GETIMPORT                        R8 K14 [Enum.AssetType]
       68 GETTABLE                         R7 R8 R6
       69 GETTABLEKS                       R7 R7 K15 ["Name"]
       71 NEWTABLE                         R8 0 0
       73 SETTABLE                         R8 R1 R7
       74 CLOSEUPVALS                      R6
       75 FORGLOOP                         R2 2 [inext] ; [-69]
       77 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 LOADN                            R3 0
        5 JUMPIFLT                         R3 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["IMAGE_TYPES"]
        4 NAMECALL                         R0 R0 K1 ["PromptImportFile"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETTABLEKS                       R1 R0 K2 ["Size"]
       10 GETUPVAL                         R2 2
       11 JUMPIFNOTLT                      R2 R1 ; [+3]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 RETURN                           R0 1
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["isCatalog"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["isMarketplace"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 JUMPIFEQKNIL                     R0 ; [+18]
        8 LOADB                            R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["MAKEUP_ASSET_TYPES"]
       12 JUMPIFEQKNIL                     R2 ; [+12]
       14 GETIMPORT                        R2 K3 [table.find]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K0 ["MAKEUP_ASSET_TYPES"]
       19 MOVE                             R4 R0
       20 CALL                             R2 2 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K3 [Color3.new]
        7 GETTABLEKS                       R2 R0 K4 ["r"]
        9 GETTABLEKS                       R3 R0 K5 ["g"]
       11 GETTABLEKS                       R4 R0 K6 ["b"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 LOADK                            R3 K0 ["Toolbox_MakeupThumbnailSkinColor"]
        7 NAMECALL                         R1 R0 K1 ["GetSetting"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+7]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K3 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K4 ["string"] ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K6 [pcall]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R1
       25 CALL                             R2 1 2
       26 JUMPIFNOT                        R2 ; [+3]
       27 JUMPIFNOT                        R3 ; [+2]
       28 MOVE                             R4 R3
       29 RETURN                           R4 1
       30 LOADNIL                          R4
       31 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOT                        R0 ; [+1]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 DUPTABLE                         R2 K3 [{"r", "g", "b"}]
        7 GETTABLEKS                       R3 R1 K4 ["R"]
        9 SETTABLEKS                       R3 R2 K0 ["r"]
       11 GETTABLEKS                       R3 R1 K5 ["G"]
       13 SETTABLEKS                       R3 R2 K1 ["g"]
       15 GETTABLEKS                       R3 R1 K6 ["B"]
       17 SETTABLEKS                       R3 R2 K2 ["b"]
       19 LOADK                            R5 K7 ["Toolbox_MakeupThumbnailSkinColor"]
       20 GETUPVAL                         R6 1
       21 MOVE                             R8 R2
       22 NAMECALL                         R6 R6 K8 ["JSONEncode"]
       24 CALL                             R6 2 -1
       25 NAMECALL                         R3 R0 K9 ["SetSetting"]
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOT                        R0 ; [+1]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R4 K0 ["ThumbnailConfiguration"]
        7 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+14]
       11 LOADK                            R5 K2 ["SkinColorValue"]
       12 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+19]
       16 LOADK                            R6 K3 ["Color3Value"]
       17 NAMECALL                         R4 R3 K4 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+14]
       21 SETTABLEKS                       R1 R3 K5 ["Value"]
       23 RETURN                           R0 0
       24 JUMP                             ; [+10]
       25 GETIMPORT                        R3 K8 [Instance.new]
       27 LOADK                            R4 K9 ["Configuration"]
       28 CALL                             R3 1 1
       29 MOVE                             R2 R3
       30 LOADK                            R3 K0 ["ThumbnailConfiguration"]
       31 SETTABLEKS                       R3 R2 K10 ["Name"]
       33 SETTABLEKS                       R0 R2 K11 ["Parent"]
       35 GETIMPORT                        R3 K8 [Instance.new]
       37 LOADK                            R4 K3 ["Color3Value"]
       38 CALL                             R3 1 1
       39 LOADK                            R4 K2 ["SkinColorValue"]
       40 SETTABLEKS                       R4 R3 K10 ["Name"]
       42 SETTABLEKS                       R1 R3 K5 ["Value"]
       44 SETTABLEKS                       R2 R3 K11 ["Parent"]
       46 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["isMarketplaceAsset"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        9 JUMPIFEQ                         R0 R2 ; [+3]
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R2 R2 K1 ["UPLOAD_FLOW"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+19]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["hasAllowedAssetTypesForRelease"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["SCREENS"]
       16 GETTABLEKS                       R2 R2 K4 ["CONFIGURE_ASSET"]
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K3 ["SCREENS"]
       22 GETTABLEKS                       R2 R2 K5 ["ASSET_TYPE_SELECTION"]
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
       28 GETTABLEKS                       R2 R2 K6 ["EDIT_FLOW"]
       30 JUMPIFEQ                         R0 R2 ; [+8]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K0 ["FLOW_TYPE"]
       35 GETTABLEKS                       R2 R2 K7 ["DOWNLOAD_FLOW"]
       37 JUMPIFNOTEQ                      R0 R2 ; [+7]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K3 ["SCREENS"]
       42 GETTABLEKS                       R2 R2 K4 ["CONFIGURE_ASSET"]
       44 RETURN                           R2 1
       45 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GENRE_TYPE"]
        3 RETURN                           R0 1

PROTO_21:
        0 LOADN                            R1 1
        1 GETIMPORT                        R2 K1 [pairs]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["GENRE_TYPE"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K3 ["name"]
       10 JUMPIFNOTEQ                      R0 R7 ; [+3]
       12 MOVE                             R1 R5
       13 RETURN                           R1 1
       14 FORGLOOP                         R2 2 ; [-7]
       16 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GENRE_TYPE"]
        3 LENGTH                           R1 R2
        4 JUMPIFNOTLT                      R1 R0 ; [+2]
        6 LOADN                            R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["GENRE_TYPE"]
       10 GETTABLE                         R1 R2 R0
       11 GETTABLEKS                       R1 R1 K1 ["name"]
       13 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K3 [{"name", "creatorType", "creatorId"}]
        3 LOADK                            R6 K4 ["General"]
        4 LOADK                            R7 K5 ["Me"]
        5 NAMECALL                         R4 R1 K6 ["getText"]
        7 CALL                             R4 3 1
        8 SETTABLEKS                       R4 R3 K0 ["name"]
       10 LOADK                            R4 K7 ["User"]
       11 SETTABLEKS                       R4 R3 K1 ["creatorType"]
       13 GETUPVAL                         R4 0
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K2 ["creatorId"]
       17 SETLIST                          R2 R3 1 [1]
       19 GETIMPORT                        R3 K9 [ipairs]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 3
       23 FORGPREP_INEXT                   R3
       24 DUPTABLE                         R10 K11 [{"name", "creatorId", "creatorType", "item"}]
       25 GETTABLEKS                       R11 R7 K0 ["name"]
       27 SETTABLEKS                       R11 R10 K0 ["name"]
       29 GETTABLEKS                       R11 R7 K12 ["id"]
       31 SETTABLEKS                       R11 R10 K2 ["creatorId"]
       33 LOADK                            R11 K13 ["Group"]
       34 SETTABLEKS                       R11 R10 K1 ["creatorType"]
       36 SETTABLEKS                       R7 R10 K10 ["item"]
       38 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       40 MOVE                             R9 R2
       41 GETIMPORT                        R8 K16 [table.insert]
       43 CALL                             R8 2 0
       44 FORGLOOP                         R3 2 [inext] ; [-21]
       46 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 NAMECALL                         R0 R0 K0 ["Clone"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETIMPORT                        R5 K1 [pcall]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R4
       11 CALL                             R5 1 2
       12 LENGTH                           R8 R1
       13 ADDK                             R7 R8 K2 [1]
       14 JUMPIFNOT                        R5 ; [+2]
       15 MOVE                             R8 R6
       16 JUMPIF                           R8 ; [+1]
       17 LOADNIL                          R8
       18 SETTABLE                         R8 R1 R7
       19 FORNLOOP                         R2
       20 RETURN                           R1 1

PROTO_26:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["PreviewTypes"]
        4 GETTABLEKS                       R2 R2 K1 ["ModelPreview"]
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["PreviewTypes"]
       10 GETTABLEKS                       R2 R2 K2 ["Thumbnail"]
       12 JUMPIFNOT                        R0 ; [+11]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["isBuyableMarketplaceAsset"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["PreviewTypes"]
       22 GETTABLEKS                       R2 R3 K4 ["ImagePicker"]
       24 GETUPVAL                         R3 2
       25 JUMPIFNOT                        R3 ; [+9]
       26 GETIMPORT                        R3 K8 [Enum.AssetType.Animation]
       28 JUMPIFNOTEQ                      R0 R3 ; [+6]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K0 ["PreviewTypes"]
       33 GETTABLEKS                       R2 R3 K2 ["Thumbnail"]
       35 RETURN                           R2 1

PROTO_27:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+5]
        2 NAMECALL                         R3 R1 K0 ["GetTemporaryId"]
        4 CALL                             R3 1 1
        5 MOVE                             R2 R3
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["constructAssetThumbnailUrl"]
       10 MOVE                             R4 R0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["rbxThumbSizes"]
       14 GETTABLEKS                       R5 R5 K3 ["AssetThumbnailSize"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K2 ["rbxThumbSizes"]
       19 GETTABLEKS                       R6 R6 K3 ["AssetThumbnailSize"]
       21 CALL                             R3 3 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1

PROTO_28:
        0 LOADB                            R2 1
        1 LOADNIL                          R3
        2 LENGTH                           R4 R0
        3 LOADN                            R5 1
        4 JUMPIFNOTLT                      R5 R4 ; [+22]
        6 LOADB                            R2 0
        7 GETUPVAL                         R4 0
        8 JUMPIF                           R4 ; [+2]
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+10]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADK                            R6 K0 ["AssetConfigPackage"]
       13 LOADK                            R7 K1 ["CantConvertMultipleInstancesWarning"]
       14 NAMECALL                         R4 R1 K2 ["getText"]
       16 CALL                             R4 3 1
       17 MOVE                             R3 R4
       18 JUMP                             ; [+8]
       19 LOADNIL                          R3
       20 JUMP                             ; [+6]
       21 LOADK                            R6 K0 ["AssetConfigPackage"]
       22 LOADK                            R7 K1 ["CantConvertMultipleInstancesWarning"]
       23 NAMECALL                         R4 R1 K2 ["getText"]
       25 CALL                             R4 3 1
       26 MOVE                             R3 R4
       27 GETTABLEN                        R4 R0 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K3 ["isPackage"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R5 ; [+1]
       34 LOADB                            R2 0
       35 LOADK                            R7 K4 ["Model"]
       36 NAMECALL                         R5 R4 K5 ["IsA"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+31]
       40 GETTABLEKS                       R5 R4 K6 ["PrimaryPart"]
       42 JUMPIFEQKNIL                     R5 ; [+28]
       44 GETTABLEKS                       R5 R4 K6 ["PrimaryPart"]
       46 GETTABLEKS                       R5 R5 K7 ["Archivable"]
       48 JUMPIFEQKB                       R5 TRUE ; [+22]
       50 LOADB                            R2 0
       51 GETUPVAL                         R5 0
       52 JUMPIF                           R5 ; [+2]
       53 GETUPVAL                         R5 1
       54 JUMPIFNOT                        R5 ; [+10]
       55 JUMPIFNOT                        R1 ; [+7]
       56 LOADK                            R7 K0 ["AssetConfigPackage"]
       57 LOADK                            R8 K8 ["CantConvertModelWithPrimaryPartNonArchivableWarning"]
       58 NAMECALL                         R5 R1 K2 ["getText"]
       60 CALL                             R5 3 1
       61 MOVE                             R3 R5
       62 JUMP                             ; [+8]
       63 LOADNIL                          R3
       64 JUMP                             ; [+6]
       65 LOADK                            R7 K0 ["AssetConfigPackage"]
       66 LOADK                            R8 K8 ["CantConvertModelWithPrimaryPartNonArchivableWarning"]
       67 NAMECALL                         R5 R1 K2 ["getText"]
       69 CALL                             R5 3 1
       70 MOVE                             R3 R5
       71 LOADK                            R7 K9 ["PVInstance"]
       72 NAMECALL                         R5 R4 K5 ["IsA"]
       74 CALL                             R5 2 1
       75 JUMPIFNOTEQKB                    R5 FALSE ; [+27]
       77 LOADK                            R7 K9 ["PVInstance"]
       78 NAMECALL                         R5 R4 K10 ["FindFirstChildWhichIsA"]
       80 CALL                             R5 2 1
       81 JUMPIFEQKNIL                     R5 ; [+21]
       83 GETUPVAL                         R5 0
       84 JUMPIF                           R5 ; [+2]
       85 GETUPVAL                         R5 1
       86 JUMPIFNOT                        R5 ; [+10]
       87 JUMPIFNOT                        R1 ; [+7]
       88 LOADK                            R7 K0 ["AssetConfigPackage"]
       89 LOADK                            R8 K11 ["Non3DRoot3DDescendentsWarning"]
       90 NAMECALL                         R5 R1 K2 ["getText"]
       92 CALL                             R5 3 1
       93 MOVE                             R3 R5
       94 JUMP                             ; [+8]
       95 LOADNIL                          R3
       96 JUMP                             ; [+6]
       97 LOADK                            R7 K0 ["AssetConfigPackage"]
       98 LOADK                            R8 K11 ["Non3DRoot3DDescendentsWarning"]
       99 NAMECALL                         R5 R1 K2 ["getText"]
      101 CALL                             R5 3 1
      102 MOVE                             R3 R5
      103 GETIMPORT                        R5 K13 [pairs]
      105 NAMECALL                         R6 R4 K14 ["GetDescendants"]
      107 CALL                             R6 1 -1
      108 CALL                             R5 -1 3
      109 FORGPREP_NEXT                    R5
      110 LOADK                            R12 K15 ["PackageLink"]
      111 NAMECALL                         R10 R9 K5 ["IsA"]
      113 CALL                             R10 2 1
      114 JUMPIFNOT                        R10 ; [+37]
      115 GETTABLEKS                       R10 R9 K16 ["Parent"]
      117 JUMPIFEQ                         R10 R4 ; [+34]
      119 GETTABLEKS                       R10 R9 K17 ["Status"]
      121 JUMPIFEQKNIL                     R10 ; [+30]
      123 GETTABLEKS                       R10 R9 K17 ["Status"]
      125 JUMPIFEQKS                       R10 K18 ["Changed"] ; [+5]
      127 GETTABLEKS                       R10 R9 K17 ["Status"]
      129 JUMPIFNOTEQKS                    R10 K19 ["Changed + New Version Available"] ; [+22]
      131 LOADB                            R2 0
      132 GETUPVAL                         R10 0
      133 JUMPIF                           R10 ; [+2]
      134 GETUPVAL                         R10 1
      135 JUMPIFNOT                        R10 ; [+10]
      136 JUMPIFNOT                        R1 ; [+7]
      137 LOADK                            R12 K0 ["AssetConfigPackage"]
      138 LOADK                            R13 K20 ["CantConvertIfChildPackageHasUnpublishedChangesWarning"]
      139 NAMECALL                         R10 R1 K2 ["getText"]
      141 CALL                             R10 3 1
      142 MOVE                             R3 R10
      143 JUMP                             ; [+8]
      144 LOADNIL                          R3
      145 JUMP                             ; [+6]
      146 LOADK                            R12 K0 ["AssetConfigPackage"]
      147 LOADK                            R13 K20 ["CantConvertIfChildPackageHasUnpublishedChangesWarning"]
      148 NAMECALL                         R10 R1 K2 ["getText"]
      150 CALL                             R10 3 1
      151 MOVE                             R3 R10
      152 FORGLOOP                         R5 2 ; [-43]
      154 RETURN                           R2 2

PROTO_29:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getUGCBodyPartsAssetTypeMap"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R8 K1 ["Name"]
       19 GETTABLE                         R11 R4 R10
       20 JUMPIFEQKNIL                     R11 ; [+4]
       22 ADDK                             R12 R11 K2 [1]
       23 SETTABLE                         R12 R4 R10
       24 JUMP                             ; [+2]
       25 LOADN                            R12 1
       26 SETTABLE                         R12 R4 R10
       27 FORGLOOP                         R5 1 ; [-11]
       29 RETURN                           R4 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 LOADK                            R4 K1 ["NumberValue"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["Value"]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagEnableUGCBundleUploadBodyScale is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADK                            R3 K3 ["Humanoid"]
        9 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K10 [{"height", "width", "head", "bodyType", "proportion"}]
       19 LOADK                            R7 K11 ["BodyHeightScale"]
       20 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 JUMPIFEQKNIL                     R5 ; [+9]
       25 LOADK                            R8 K12 ["NumberValue"]
       26 NAMECALL                         R6 R5 K13 ["IsA"]
       28 CALL                             R6 2 1
       29 JUMPIFNOT                        R6 ; [+3]
       30 GETTABLEKS                       R4 R5 K14 ["Value"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K5 ["height"]
       36 LOADK                            R7 K15 ["BodyWidthScale"]
       37 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       39 CALL                             R5 2 1
       40 JUMPIFEQKNIL                     R5 ; [+9]
       42 LOADK                            R8 K12 ["NumberValue"]
       43 NAMECALL                         R6 R5 K13 ["IsA"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+3]
       47 GETTABLEKS                       R4 R5 K14 ["Value"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K6 ["width"]
       53 LOADK                            R7 K16 ["HeadScale"]
       54 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       56 CALL                             R5 2 1
       57 JUMPIFEQKNIL                     R5 ; [+9]
       59 LOADK                            R8 K12 ["NumberValue"]
       60 NAMECALL                         R6 R5 K13 ["IsA"]
       62 CALL                             R6 2 1
       63 JUMPIFNOT                        R6 ; [+3]
       64 GETTABLEKS                       R4 R5 K14 ["Value"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R4
       68 SETTABLEKS                       R4 R3 K7 ["head"]
       70 LOADK                            R7 K17 ["BodyTypeScale"]
       71 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       73 CALL                             R5 2 1
       74 JUMPIFEQKNIL                     R5 ; [+9]
       76 LOADK                            R8 K12 ["NumberValue"]
       77 NAMECALL                         R6 R5 K13 ["IsA"]
       79 CALL                             R6 2 1
       80 JUMPIFNOT                        R6 ; [+3]
       81 GETTABLEKS                       R4 R5 K14 ["Value"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R4
       85 SETTABLEKS                       R4 R3 K8 ["bodyType"]
       87 LOADK                            R7 K18 ["BodyProportionScale"]
       88 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       90 CALL                             R5 2 1
       91 JUMPIFEQKNIL                     R5 ; [+9]
       93 LOADK                            R8 K12 ["NumberValue"]
       94 NAMECALL                         R6 R5 K13 ["IsA"]
       96 CALL                             R6 2 1
       97 JUMPIFNOT                        R6 ; [+3]
       98 GETTABLEKS                       R4 R5 K14 ["Value"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R4
      102 SETTABLEKS                       R4 R3 K9 ["proportion"]
      104 RETURN                           R3 1

PROTO_33:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["BodyScaleTypes"]
        8 GETTABLEKS                       R2 R2 K3 ["Unknown"]
       10 RETURN                           R2 1
       11 LOADK                            R4 K4 ["AvatarPartScaleType"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["BodyScaleTypes"]
       19 GETTABLEKS                       R3 R3 K5 ["Classic"]
       21 RETURN                           R3 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["BodyScaleTypes"]
       25 GETTABLEKS                       R5 R2 K6 ["Value"]
       27 GETTABLE                         R3 R4 R5
       28 JUMPIF                           R3 ; [+6]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K2 ["BodyScaleTypes"]
       32 GETTABLEKS                       R4 R4 K3 ["Unknown"]
       34 RETURN                           R4 1
       35 RETURN                           R3 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getBodyScaleValues"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["getBodyScaleType"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["BodyScaleTypes"]
       15 GETTABLEKS                       R5 R5 K3 ["Unknown"]
       17 JUMPIFNOTEQ                      R3 R5 ; [+16]
       19 MOVE                             R6 R4
       20 LOADK                            R9 K4 ["AssetConfig"]
       21 LOADK                            R10 K5 ["BodyScaleValidationErrorUnknown"]
       22 DUPTABLE                         R11 K7 [{"scaleTypes"}]
       23 LOADK                            R12 K8 ["AvatarPartScaleType: Classic | ProportionsNormal | ProportionsSlender"]
       24 SETTABLEKS                       R12 R11 K6 ["scaleTypes"]
       26 NAMECALL                         R7 R1 K9 ["getText"]
       28 CALL                             R7 4 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R5 K12 [table.insert]
       32 CALL                             R5 -1 0
       33 RETURN                           R4 1
       34 JUMPIFNOTEQKNIL                  R2 ; [+12]
       36 MOVE                             R6 R4
       37 LOADK                            R9 K4 ["AssetConfig"]
       38 LOADK                            R10 K13 ["BodyScaleValidationErrorHumanoidMissing"]
       39 NAMECALL                         R7 R1 K9 ["getText"]
       41 CALL                             R7 3 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R5 K12 [table.insert]
       45 CALL                             R5 -1 0
       46 RETURN                           R4 1
       47 MOVE                             R5 R2
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K14 ["BodyScaleDefaults"]
       54 GETTABLE                         R11 R12 R3
       55 GETTABLE                         R10 R11 R8
       56 JUMPIFEQ                         R9 R10 ; [+25]
       58 MOVE                             R12 R4
       59 LOADK                            R15 K4 ["AssetConfig"]
       60 LOADK                            R16 K15 ["BodyScaleValidationErrorNotDefaultValue"]
       61 DUPTABLE                         R17 K19 [{"scaleName", "defaultValue", "scaleType"}]
       62 GETUPVAL                         R19 1
       63 GETTABLEKS                       R19 R19 K20 ["bodyScaleNameToString"]
       65 GETTABLE                         R18 R19 R8
       66 SETTABLEKS                       R18 R17 K16 ["scaleName"]
       68 SETTABLEKS                       R10 R17 K17 ["defaultValue"]
       70 LOADK                            R19 K21 ["AvatarPartScaleType "]
       71 MOVE                             R20 R3
       72 CONCAT                           R18 R19 R20
       73 SETTABLEKS                       R18 R17 K18 ["scaleType"]
       75 NAMECALL                         R13 R1 K9 ["getText"]
       77 CALL                             R13 4 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R11 K12 [table.insert]
       81 CALL                             R11 -1 0
       82 FORGLOOP                         R5 2 ; [-32]
       84 RETURN                           R4 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagEnableBodyColorSetUploadSupport is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADK                            R3 K3 ["BodyColors"]
        9 NAMECALL                         R1 R0 K4 ["FindFirstChildWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 DUPTABLE                         R2 K11 [{"headColor3", "torsoColor3", "leftArmColor3", "rightArmColor3", "leftLegColor3", "rightLegColor3"}]
       17 GETTABLEKS                       R4 R1 K12 ["HeadColor3"]
       19 NAMECALL                         R4 R4 K13 ["ToHex"]
       21 CALL                             R4 1 -1
       22 FASTCALL                         TOSTRING ; [+2]
       23 GETIMPORT                        R3 K15 [tostring]
       25 CALL                             R3 -1 1
       26 SETTABLEKS                       R3 R2 K5 ["headColor3"]
       28 GETTABLEKS                       R4 R1 K16 ["TorsoColor3"]
       30 NAMECALL                         R4 R4 K13 ["ToHex"]
       32 CALL                             R4 1 -1
       33 FASTCALL                         TOSTRING ; [+2]
       34 GETIMPORT                        R3 K15 [tostring]
       36 CALL                             R3 -1 1
       37 SETTABLEKS                       R3 R2 K6 ["torsoColor3"]
       39 GETTABLEKS                       R4 R1 K17 ["LeftArmColor3"]
       41 NAMECALL                         R4 R4 K13 ["ToHex"]
       43 CALL                             R4 1 -1
       44 FASTCALL                         TOSTRING ; [+2]
       45 GETIMPORT                        R3 K15 [tostring]
       47 CALL                             R3 -1 1
       48 SETTABLEKS                       R3 R2 K7 ["leftArmColor3"]
       50 GETTABLEKS                       R4 R1 K18 ["RightArmColor3"]
       52 NAMECALL                         R4 R4 K13 ["ToHex"]
       54 CALL                             R4 1 -1
       55 FASTCALL                         TOSTRING ; [+2]
       56 GETIMPORT                        R3 K15 [tostring]
       58 CALL                             R3 -1 1
       59 SETTABLEKS                       R3 R2 K8 ["rightArmColor3"]
       61 GETTABLEKS                       R4 R1 K19 ["LeftLegColor3"]
       63 NAMECALL                         R4 R4 K13 ["ToHex"]
       65 CALL                             R4 1 -1
       66 FASTCALL                         TOSTRING ; [+2]
       67 GETIMPORT                        R3 K15 [tostring]
       69 CALL                             R3 -1 1
       70 SETTABLEKS                       R3 R2 K9 ["leftLegColor3"]
       72 GETTABLEKS                       R4 R1 K20 ["RightLegColor3"]
       74 NAMECALL                         R4 R4 K13 ["ToHex"]
       76 CALL                             R4 1 -1
       77 FASTCALL                         TOSTRING ; [+2]
       78 GETIMPORT                        R3 K15 [tostring]
       80 CALL                             R3 -1 1
       81 SETTABLEKS                       R3 R2 K10 ["rightLegColor3"]
       83 RETURN                           R2 1

PROTO_36:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getBodyColorSet"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+11]
        9 MOVE                             R5 R2
       10 LOADK                            R8 K1 ["AssetConfig"]
       11 LOADK                            R9 K2 ["UGCBodyValidationColorsError"]
       12 NAMECALL                         R6 R1 K3 ["getText"]
       14 CALL                             R6 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R4 K6 [table.insert]
       18 CALL                             R4 -1 0
       19 RETURN                           R2 1

PROTO_37:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+19]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["ValidateScaleSettings"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       17 MOVE                             R10 R2
       18 MOVE                             R11 R8
       19 GETIMPORT                        R9 K3 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R4 2 ; [-8]
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+19]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["ValidateBodyColors"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 CALL                             R3 2 1
       33 MOVE                             R4 R3
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K3 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-8]
       46 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypeStringToEnumeration"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_39:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R1 K1 ["rawValue"]
       11 CALL                             R3 0 1
       12 GETTABLE                         R2 R0 R3
       13 GETTABLEKS                       R2 R2 K2 ["allowedAssetTypeSettings"]
       15 RETURN                           R2 1

PROTO_40:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       23 MOVE                             R11 R2
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K4 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R4 1 ; [-14]
       30 RETURN                           R2 1

PROTO_41:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+12]
       21 DUPTABLE                         R12 K4 [{"assetType", "settings"}]
       22 SETTABLEKS                       R9 R12 K2 ["assetType"]
       24 SETTABLEKS                       R8 R12 K3 ["settings"]
       26 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       28 MOVE                             R11 R2
       29 GETIMPORT                        R10 K7 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R4 2 ; [-18]
       34 RETURN                           R2 1

PROTO_42:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_43:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 NEWTABLE                         R5 0 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["UGC_BODY_PARTS"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R13 R10
       22 NAMECALL                         R11 R0 K4 ["FindFirstChild"]
       24 CALL                             R11 2 1
       25 JUMPIFEQKNIL                     R11 ; [+32]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R13 R13 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R12 R13 R9
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K6 ["isAllowedUGCAssetType"]
       34 MOVE                             R14 R12
       35 MOVE                             R15 R4
       36 CALL                             R13 2 1
       37 JUMPIFNOT                        R13 ; [+20]
       38 GETTABLE                         R13 R5 R12
       39 JUMPIFNOTEQKNIL                  R13 ; [+8]
       41 NEWTABLE                         R13 0 1
       43 MOVE                             R14 R11
       44 SETLIST                          R13 R14 1 [1]
       46 SETTABLE                         R13 R5 R12
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K7 ["append"]
       51 GETTABLE                         R14 R5 R12
       52 NEWTABLE                         R15 0 1
       54 MOVE                             R16 R11
       55 SETLIST                          R15 R16 1 [1]
       57 CALL                             R13 2 0
       58 FORGLOOP                         R6 2 ; [-38]
       60 RETURN                           R5 1

PROTO_44:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.DynamicHead]
        2 JUMPIFEQ                         R0 R1 ; [+13]
        4 GETIMPORT                        R1 K5 [Enum.AssetType.EyebrowAccessory]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETIMPORT                        R1 K7 [Enum.AssetType.EyelashAccessory]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.AssetType.HairAccessory]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+16]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 FORGPREP                         R1
       31 JUMPIFNOTEQ                      R0 R5 ; [+3]
       33 LOADB                            R6 0
       34 RETURN                           R6 1
       35 FORGLOOP                         R1 2 ; [-5]
       37 LOADB                            R1 1
       38 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getUGCBodyPartsAssetTypeMap"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R4 3 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R4
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K1 ["AssetTypeRequiresFolderForUpload"]
       20 MOVE                             R12 R9
       21 CALL                             R11 1 1
       22 JUMPIFNOT                        R11 ; [+50]
       23 GETIMPORT                        R12 K4 [Instance.new]
       25 LOADK                            R13 K5 ["Folder"]
       26 CALL                             R12 1 1
       27 LOADK                            R13 K6 ["R15ArtistIntent"]
       28 SETTABLEKS                       R13 R12 K7 ["Name"]
       30 MOVE                             R13 R10
       31 LOADNIL                          R14
       32 LOADNIL                          R15
       33 FORGPREP                         R13
       34 SETTABLEKS                       R12 R17 K8 ["Parent"]
       36 FORGLOOP                         R13 2 ; [-3]
       38 NEWTABLE                         R13 0 1
       40 MOVE                             R14 R12
       41 SETLIST                          R13 R14 1 [1]
       43 SETTABLE                         R13 R5 R9
       44 JUMPIFNOT                        R3 ; [+29]
       45 NAMECALL                         R13 R12 K9 ["Clone"]
       47 CALL                             R13 1 1
       48 LOADK                            R14 K10 ["R15Fixed"]
       49 SETTABLEKS                       R14 R13 K7 ["Name"]
       51 GETTABLE                         R15 R5 R9
       52 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
       54 MOVE                             R16 R13
       55 GETIMPORT                        R14 K13 [table.insert]
       57 CALL                             R14 2 0
       58 GETIMPORT                        R14 K4 [Instance.new]
       60 LOADK                            R15 K5 ["Folder"]
       61 CALL                             R14 1 1
       62 LOADK                            R15 K14 ["R6"]
       63 SETTABLEKS                       R15 R14 K7 ["Name"]
       65 GETTABLE                         R16 R5 R9
       66 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       68 MOVE                             R17 R14
       69 GETIMPORT                        R15 K13 [table.insert]
       71 CALL                             R15 2 0
       72 JUMP                             ; [+1]
       73 SETTABLE                         R10 R5 R9
       74 FORGLOOP                         R6 2 ; [-58]
       76 RETURN                           R5 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        3 GETTABLEKS                       R2 R2 K1 ["Body"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 LOADK                            R4 K2 ["AssetConfig"]
        8 LOADK                            R5 K3 ["UGCBodyBundleName"]
        9 NAMECALL                         R2 R1 K4 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       16 GETTABLEKS                       R2 R2 K5 ["DynamicHead"]
       18 JUMPIFNOTEQ                      R0 R2 ; [+7]
       20 LOADK                            R4 K2 ["AssetConfig"]
       21 LOADK                            R5 K6 ["UGCDynamicHeadBundleName"]
       22 NAMECALL                         R2 R1 K4 ["getText"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       29 GETTABLEKS                       R2 R2 K7 ["Shoes"]
       31 JUMPIFNOTEQ                      R0 R2 ; [+7]
       33 LOADK                            R4 K2 ["AssetConfig"]
       34 LOADK                            R5 K8 ["UGCShoesBundleName"]
       35 NAMECALL                         R2 R1 K4 ["getText"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1
       39 GETUPVAL                         R2 1
       40 CALL                             R2 0 1
       41 JUMPIFNOT                        R2 ; [+13]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       45 GETTABLEKS                       R2 R2 K9 ["AvatarAnimations"]
       47 JUMPIFNOTEQ                      R0 R2 ; [+7]
       49 LOADK                            R4 K2 ["AssetConfig"]
       50 LOADK                            R5 K10 ["UGCAvatarAnimationsBundleName"]
       51 NAMECALL                         R2 R1 K4 ["getText"]
       53 CALL                             R2 3 -1
       54 RETURN                           R2 -1
       55 LOADK                            R2 K11 [""]
       56 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K1 ["settings"]
       14 GETTABLEKS                       R9 R9 K2 ["minimumQuantity"]
       16 JUMPIFNOTEQKN                    R9 K3 [0] ; [+9]
       18 GETTABLEKS                       R11 R8 K4 ["assetType"]
       20 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       22 MOVE                             R10 R3
       23 GETIMPORT                        R9 K7 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-15]
       28 RETURN                           R3 1

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getOptionalAssetTypesForBundle"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["getUGCBodyPartsAssetTypeMap"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 1
       13 NEWTABLE                         R5 0 0
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 RETURN                           R5 1
       18 MOVE                             R6 R3
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLE                         R11 R4 R10
       23 JUMPIFNOTEQKNIL                  R11 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       27 MOVE                             R12 R5
       28 MOVE                             R13 R10
       29 GETIMPORT                        R11 K4 [table.insert]
       31 CALL                             R11 2 0
       32 FORGLOOP                         R6 2 ; [-11]
       34 RETURN                           R5 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundle"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 SETTABLE                         R8 R3 R8
       13 FORGLOOP                         R4 2 ; [-2]
       15 RETURN                           R3 1

PROTO_51:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 NAMECALL                         R3 R0 K2 ["GetChildren"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K3 ["UGC_BODY_PARTS"]
       12 GETTABLEKS                       R9 R6 K4 ["Name"]
       14 GETTABLE                         R7 R8 R9
       15 JUMPIFNOTEQKNIL                  R7 ; [+14]
       17 LOADK                            R9 K5 ["MeshPart"]
       18 NAMECALL                         R7 R6 K6 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETTABLEKS                       R9 R6 K4 ["Name"]
       24 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       26 MOVE                             R8 R1
       27 GETIMPORT                        R7 K9 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-22]
       32 RETURN                           R1 1

PROTO_52:
        0 JUMPIFEQKNIL                     R0 ; [+16]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["isUGCBundleType"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["isCatalogAsset"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R1 R0 K2 ["Name"]
       16 RETURN                           R1 1
       17 LOADK                            R1 K3 [""]
       18 RETURN                           R1 1

PROTO_53:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+10]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["isAnimationBundleType"]
       20 MOVE                             R6 R2
       21 CALL                             R5 1 1
       22 JUMPIFNOT                        R5 ; [+4]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K4 ["UGC_AVATAR_ANIMATIONS_PARTS"]
       26 JUMP                             ; [+13]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       30 GETTABLEKS                       R5 R5 K6 ["join"]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K7 ["UGC_BODY_PARTS"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K8 ["UGC_BUNDLE_PARTS"]
       38 CALL                             R5 2 1
       39 MOVE                             R4 R5
       40 NEWTABLE                         R5 0 0
       42 MOVE                             R6 R4
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 GETUPVAL                         R12 1
       47 CALL                             R12 0 1
       48 JUMPIFNOT                        R12 ; [+13]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R12 R12 K3 ["isAnimationBundleType"]
       52 MOVE                             R13 R2
       53 CALL                             R12 1 1
       54 JUMPIFNOT                        R12 ; [+7]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K9 ["resolveBundlePartContainer"]
       58 MOVE                             R12 R0
       59 MOVE                             R13 R10
       60 CALL                             R11 2 1
       61 JUMP                             ; [+4]
       62 MOVE                             R13 R10
       63 NAMECALL                         R11 R0 K10 ["FindFirstChild"]
       65 CALL                             R11 2 1
       66 JUMPIFEQKNIL                     R11 ; [+58]
       68 LOADNIL                          R12
       69 GETUPVAL                         R13 1
       70 CALL                             R13 0 1
       71 JUMPIFNOT                        R13 ; [+11]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K3 ["isAnimationBundleType"]
       75 MOVE                             R14 R2
       76 CALL                             R13 1 1
       77 JUMPIFNOT                        R13 ; [+5]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R13 R13 K11 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       81 GETTABLE                         R12 R13 R9
       82 JUMP                             ; [+15]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K12 ["isUGCBodyBundleType"]
       86 MOVE                             R14 R2
       87 CALL                             R13 1 1
       88 JUMPIFNOT                        R13 ; [+5]
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K13 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       92 GETTABLE                         R12 R13 R9
       93 JUMP                             ; [+4]
       94 GETUPVAL                         R13 2
       95 GETTABLEKS                       R13 R13 K14 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       97 GETTABLE                         R12 R13 R9
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K15 ["isAllowedUGCAssetType"]
      101 MOVE                             R14 R12
      102 MOVE                             R15 R3
      103 CALL                             R13 2 1
      104 JUMPIFNOT                        R13 ; [+20]
      105 GETTABLE                         R13 R5 R12
      106 JUMPIFNOTEQKNIL                  R13 ; [+8]
      108 NEWTABLE                         R13 0 1
      110 MOVE                             R14 R11
      111 SETLIST                          R13 R14 1 [1]
      113 SETTABLE                         R13 R5 R12
      114 JUMP                             ; [+10]
      115 GETUPVAL                         R13 5
      116 GETTABLEKS                       R13 R13 K16 ["append"]
      118 GETTABLE                         R14 R5 R12
      119 NEWTABLE                         R15 0 1
      121 MOVE                             R16 R11
      122 SETLIST                          R15 R16 1 [1]
      124 CALL                             R13 2 0
      125 FORGLOOP                         R6 2 ; [-80]
      127 RETURN                           R5 1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getUGCBundlePartsAssetTypeMap"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R8 K1 ["Name"]
       19 GETTABLE                         R11 R4 R10
       20 JUMPIFEQKNIL                     R11 ; [+4]
       22 ADDK                             R12 R11 K2 [1]
       23 SETTABLE                         R12 R4 R10
       24 JUMP                             ; [+2]
       25 LOADN                            R12 1
       26 SETTABLE                         R12 R4 R10
       27 FORGLOOP                         R5 1 ; [-11]
       29 RETURN                           R4 1

PROTO_55:
        0 NEWTABLE                         R3 0 0
        2 LOADK                            R6 K0 ["Model"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["getAllowedAssetTypeEnumsForBundle"]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["UGC_BUNDLE_PARTS"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 MOVE                             R12 R9
       22 NAMECALL                         R10 R0 K4 ["FindFirstChild"]
       24 CALL                             R10 2 1
       25 JUMPIFEQKNIL                     R10 ; [+32]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K5 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R11 R12 R8
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K6 ["isAllowedUGCAssetType"]
       34 MOVE                             R13 R11
       35 MOVE                             R14 R4
       36 CALL                             R12 2 1
       37 JUMPIFNOT                        R12 ; [+20]
       38 GETTABLE                         R12 R3 R11
       39 JUMPIFNOTEQKNIL                  R12 ; [+8]
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R10
       44 SETLIST                          R12 R13 1 [1]
       46 SETTABLE                         R12 R3 R11
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R12 R12 K7 ["append"]
       51 GETTABLE                         R13 R3 R11
       52 NEWTABLE                         R14 0 1
       54 MOVE                             R15 R10
       55 SETLIST                          R14 R15 1 [1]
       57 CALL                             R12 2 0
       58 FORGLOOP                         R5 2 ; [-38]
       60 JUMPIFNOTEQKNIL                  R3 ; [+3]
       62 LOADNIL                          R5
       63 RETURN                           R5 1
       64 NEWTABLE                         R5 0 0
       66 MOVE                             R6 R3
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 FORGPREP                         R6
       70 SETTABLE                         R10 R5 R9
       71 FORGLOOP                         R6 2 ; [-2]
       73 RETURN                           R5 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["isUGCBundleType"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_57:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADNIL                          R1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 GETIMPORT                        R2 K4 [table.concat]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 ["\n"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K7 [tostring]
       22 CALL                             R2 1 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1

PROTO_58:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["GetDependencyContentIds"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+22]
        9 MOVE                             R4 R2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 FASTCALL1                        TYPE R8 ; [+3]
       14 MOVE                             R10 R8
       15 GETIMPORT                        R9 K2 [type]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K3 ["string"] ; [+9]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R9 R9 K4 ["parseDependencyContentIdToAssetIdString"]
       23 MOVE                             R10 R8
       24 CALL                             R9 1 1
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADB                            R10 1
       27 SETTABLE                         R10 R3 R9
       28 FORGLOOP                         R4 2 ; [-16]
       30 JUMP                             ; [+31]
       31 MOVE                             R4 R2
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 LOADB                            R9 0
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K5 ["assetIdStringPatterns"]
       39 LOADNIL                          R11
       40 LOADNIL                          R12
       41 FORGPREP                         R10
       42 GETIMPORT                        R15 K7 [string.match]
       44 MOVE                             R16 R8
       45 MOVE                             R17 R14
       46 CALL                             R15 2 1
       47 JUMPIFNOTEQ                      R15 R14 ; [+2]
       49 LOADB                            R9 1
       50 FORGLOOP                         R10 2 ; [-9]
       52 JUMPIFNOT                        R9 ; [+7]
       53 GETIMPORT                        R10 K7 [string.match]
       55 MOVE                             R11 R8
       56 LOADK                            R12 K8 ["(%d+)$"]
       57 CALL                             R10 2 1
       58 LOADB                            R11 1
       59 SETTABLE                         R11 R3 R10
       60 FORGLOOP                         R4 2 ; [-26]
       62 NEWTABLE                         R4 0 0
       64 MOVE                             R5 R3
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 FORGPREP                         R5
       68 FASTCALL1                        TONUMBER R8 ; [+3]
       69 MOVE                             R13 R8
       70 GETIMPORT                        R12 K10 [tonumber]
       72 CALL                             R12 1 1
       73 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       75 MOVE                             R11 R4
       76 GETIMPORT                        R10 K13 [table.insert]
       78 CALL                             R10 2 0
       79 FORGLOOP                         R5 2 ; [-12]
       81 RETURN                           R4 1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K3 [string.gmatch]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K4 ["([^,]+)"]
       11 CALL                             R2 2 3
       12 FORGPREP                         R2
       13 GETIMPORT                        R7 K6 [string.gsub]
       15 MOVE                             R8 R5
       16 LOADK                            R9 K7 ["^%s*(.-)%s*$"]
       17 LOADK                            R10 K8 ["%1"]
       18 CALL                             R7 3 1
       19 MOVE                             R5 R7
       20 JUMPIFNOTEQ                      R5 R0 ; [+3]
       22 LOADB                            R7 1
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 1 ; [-12]
       26 LOADB                            R2 0
       27 RETURN                           R2 1

PROTO_60:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 [""]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K3 [string.gsub]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K5 [tostring]
       10 CALL                             R2 1 1
       11 LOADK                            R3 K6 ["[\n\r]"]
       12 LOADK                            R4 K7 [" "]
       13 CALL                             R1 3 1
       14 GETIMPORT                        R2 K3 [string.gsub]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K8 ["^%s*(.-)%s*$"]
       18 LOADK                            R5 K9 ["%1"]
       19 CALL                             R2 3 1
       20 MOVE                             R1 R2
       21 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
       23 LOADK                            R2 K0 [""]
       24 RETURN                           R2 1
       25 GETIMPORT                        R2 K11 [string.lower]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K13 [string.match]
       31 MOVE                             R4 R2
       32 LOADK                            R5 K14 ["rbxassetid://(%d+)"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+1]
       35 RETURN                           R3 1
       36 GETIMPORT                        R4 K13 [string.match]
       38 MOVE                             R5 R2
       39 LOADK                            R6 K15 ["create%.roblox%.com/dashboard/creations/store/(%d+)"]
       40 CALL                             R4 2 1
       41 JUMPIFNOT                        R4 ; [+1]
       42 RETURN                           R4 1
       43 RETURN                           R1 1

PROTO_61:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 LOADK                            R4 K1 ["."]
        3 NAMECALL                         R2 R2 K2 ["split"]
        5 CALL                             R2 2 1
        6 LOADK                            R5 K3 ["Common"]
        7 LOADK                            R6 K4 ["UGCValidation"]
        8 LOADK                            R7 K5 ["ErrorLabel"]
        9 LENGTH                           R9 R2
       10 GETTABLE                         R8 R2 R9
       11 GETTABLEKS                       R9 R0 K6 ["params"]
       13 NAMECALL                         R3 R1 K7 ["getExternalText"]
       15 CALL                             R3 6 -1
       16 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AssetUtil"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["AssetConfigConstants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["fixUpPreValidation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K10 ["getUserId"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K11 ["Urls"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R0 K12 ["Packages"]
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R7 K13 ["Cryo"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R7 K14 ["Framework"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R7 K15 ["Dash"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R1 K16 ["getAllowedAssetTypeEnums"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R13 K18 [settings]
       62 CALL                             R13 0 1
       63 LOADK                            R15 K19 ["FileMaxSizeBytes"]
       64 NAMECALL                         R13 R13 K20 ["GetFVariable"]
       66 CALL                             R13 2 -1
       67 FASTCALL                         TONUMBER ; [+2]
       68 GETIMPORT                        R12 K22 [tonumber]
       70 CALL                             R12 -1 1
       71 GETIMPORT                        R13 K24 [game]
       73 LOADK                            R15 K25 ["UseDefaultThumbnailForAnimation"]
       74 NAMECALL                         R13 R13 K26 ["GetFastFlag"]
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K24 [game]
       79 LOADK                            R16 K27 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       80 NAMECALL                         R14 R14 K26 ["GetFastFlag"]
       82 CALL                             R14 2 1
       83 GETIMPORT                        R15 K24 [game]
       85 LOADK                            R17 K28 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       86 NAMECALL                         R15 R15 K26 ["GetFastFlag"]
       88 CALL                             R15 2 1
       89 GETIMPORT                        R16 K6 [require]
       91 GETTABLEKS                       R17 R1 K29 ["DebugFlags"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K6 [require]
       96 GETTABLEKS                       R18 R0 K3 ["Src"]
       98 GETTABLEKS                       R18 R18 K30 ["Localization"]
      100 GETTABLEKS                       R18 R18 K31 ["getLocalizedAssetTextMap"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R19 R1 K32 ["SharedFlags"]
      107 GETTABLEKS                       R19 R19 K33 ["getFFlagEnableUGCUploadFlowAnalytics"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R1 K32 ["SharedFlags"]
      114 GETTABLEKS                       R20 R20 K34 ["getFFlagEnableUGCBundleUploadBodyScale"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETTABLEKS                       R21 R1 K32 ["SharedFlags"]
      121 GETTABLEKS                       R21 R21 K35 ["getFFlagEnableBodyColorSetUploadSupport"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETTABLEKS                       R22 R0 K3 ["Src"]
      128 GETTABLEKS                       R22 R22 K36 ["Flags"]
      130 GETTABLEKS                       R22 R22 K37 ["getFFlagRequireBodyColorsForBodyUpload"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K6 [require]
      135 GETTABLEKS                       R23 R0 K3 ["Src"]
      137 GETTABLEKS                       R23 R23 K36 ["Flags"]
      139 GETTABLEKS                       R23 R23 K38 ["getFFlagCheckAvatarAssetPrivacy"]
      141 CALL                             R22 1 1
      142 GETIMPORT                        R23 K6 [require]
      144 GETTABLEKS                       R24 R0 K3 ["Src"]
      146 GETTABLEKS                       R24 R24 K36 ["Flags"]
      148 GETTABLEKS                       R24 R24 K39 ["getFStringAllowedAssetTypesPrivacyCheck"]
      150 CALL                             R23 1 1
      151 GETIMPORT                        R24 K6 [require]
      153 GETTABLEKS                       R25 R0 K3 ["Src"]
      155 GETTABLEKS                       R25 R25 K36 ["Flags"]
      157 GETTABLEKS                       R25 R25 K40 ["getFFlagEnableUploadingAvatarAnimations"]
      159 CALL                             R24 1 1
      160 GETIMPORT                        R25 K6 [require]
      162 GETTABLEKS                       R26 R1 K41 ["AvatarAnimationBundleUtil"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K6 [require]
      167 GETTABLEKS                       R27 R0 K3 ["Src"]
      169 GETTABLEKS                       R27 R27 K36 ["Flags"]
      171 GETTABLEKS                       R27 R27 K42 ["getFFlagEnableUploadingMakeup"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K6 [require]
      176 GETTABLEKS                       R28 R0 K3 ["Src"]
      178 GETTABLEKS                       R28 R28 K36 ["Flags"]
      180 GETTABLEKS                       R28 R28 K43 ["getFFlagUsePublishMarketplaceActionType"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K24 [game]
      185 LOADK                            R30 K44 ["HttpService"]
      186 NAMECALL                         R28 R28 K45 ["GetService"]
      188 CALL                             R28 2 1
      189 GETIMPORT                        R29 K24 [game]
      191 LOADK                            R31 K46 ["StudioService"]
      192 NAMECALL                         R29 R29 K45 ["GetService"]
      194 CALL                             R29 2 1
      195 GETIMPORT                        R30 K6 [require]
      197 GETTABLEKS                       R31 R7 K47 ["UGCValidation"]
      199 CALL                             R30 1 1
      200 DUPCLOSURE                       R31 K48 [PROTO_0]
      201 NEWTABLE                         R32 64 0
      203 DUPCLOSURE                       R33 K49 [PROTO_1]
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R24
      206 SETTABLEKS                       R33 R32 K50 ["isUGCBundleType"]
      208 DUPCLOSURE                       R33 K51 [PROTO_2]
      209 CAPTURE                          VAL R3
      210 SETTABLEKS                       R33 R32 K52 ["isUGCBodyBundleType"]
      212 DUPCLOSURE                       R33 K53 [PROTO_3]
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R3
      215 SETTABLEKS                       R33 R32 K54 ["isAnimationBundleType"]
      217 DUPCLOSURE                       R33 K55 [PROTO_4]
      218 CAPTURE                          VAL R3
      219 SETTABLEKS                       R33 R32 K56 ["isReadyForSale"]
      221 DUPCLOSURE                       R33 K57 [PROTO_5]
      222 CAPTURE                          VAL R3
      223 SETTABLEKS                       R33 R32 K58 ["isOnSale"]
      225 DUPCLOSURE                       R33 K59 [PROTO_6]
      226 CAPTURE                          VAL R3
      227 SETTABLEKS                       R33 R32 K60 ["isBuyableMarketplaceAsset"]
      229 DUPCLOSURE                       R33 K61 [PROTO_8]
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R26
      233 SETTABLEKS                       R33 R32 K62 ["filterAllowedAssetTypesForRelease"]
      235 DUPCLOSURE                       R33 K63 [PROTO_9]
      236 CAPTURE                          VAL R11
      237 SETTABLEKS                       R33 R32 K64 ["hasAllowedAssetTypesForRelease"]
      239 DUPCLOSURE                       R33 K65 [PROTO_10]
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R12
      243 SETTABLEKS                       R33 R32 K66 ["promptImagePicker"]
      245 DUPCLOSURE                       R33 K67 [PROTO_11]
      246 CAPTURE                          VAL R3
      247 SETTABLEKS                       R33 R32 K68 ["isCatalogAsset"]
      249 DUPCLOSURE                       R33 K69 [PROTO_12]
      250 CAPTURE                          VAL R3
      251 SETTABLEKS                       R33 R32 K70 ["isMarketplaceAsset"]
      253 DUPCLOSURE                       R33 K71 [PROTO_13]
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R3
      256 SETTABLEKS                       R33 R32 K72 ["isMakeupAsset"]
      258 DUPCLOSURE                       R33 K73 [PROTO_15]
      259 CAPTURE                          VAL R26
      260 CAPTURE                          VAL R28
      261 SETTABLEKS                       R33 R32 K74 ["getThumbnailSkinColor"]
      263 DUPCLOSURE                       R33 K75 [PROTO_16]
      264 CAPTURE                          VAL R26
      265 CAPTURE                          VAL R28
      266 SETTABLEKS                       R33 R32 K76 ["setThumbnailSkinColor"]
      268 DUPCLOSURE                       R33 K77 [PROTO_17]
      269 CAPTURE                          VAL R26
      270 SETTABLEKS                       R33 R32 K78 ["addMakeupThumbnailConfiguration"]
      272 DUPCLOSURE                       R33 K79 [PROTO_18]
      273 CAPTURE                          VAL R32
      274 SETTABLEKS                       R33 R32 K80 ["isCreatorStoreAssetNotIncludingAnimation"]
      276 DUPCLOSURE                       R33 K81 [PROTO_19]
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R32
      279 SETTABLEKS                       R33 R32 K82 ["getFlowStartScreen"]
      281 DUPCLOSURE                       R33 K83 [PROTO_20]
      282 CAPTURE                          VAL R3
      283 SETTABLEKS                       R33 R32 K84 ["getGenreTypes"]
      285 DUPCLOSURE                       R33 K85 [PROTO_21]
      286 CAPTURE                          VAL R3
      287 SETTABLEKS                       R33 R32 K86 ["getGenreIndex"]
      289 DUPCLOSURE                       R33 K87 [PROTO_22]
      290 CAPTURE                          VAL R3
      291 SETTABLEKS                       R33 R32 K88 ["getGenreName"]
      293 DUPCLOSURE                       R33 K89 [PROTO_23]
      294 CAPTURE                          VAL R5
      295 SETTABLEKS                       R33 R32 K90 ["getOwnerDropDownContent"]
      297 DUPCLOSURE                       R33 K91 [PROTO_25]
      298 SETTABLEKS                       R33 R32 K92 ["getClonedInstances"]
      300 DUPCLOSURE                       R33 K93 [PROTO_26]
      301 CAPTURE                          VAL R3
      302 CAPTURE                          VAL R32
      303 CAPTURE                          VAL R13
      304 SETTABLEKS                       R33 R32 K94 ["getPreviewType"]
      306 DUPCLOSURE                       R33 K95 [PROTO_27]
      307 CAPTURE                          VAL R6
      308 CAPTURE                          VAL R3
      309 SETTABLEKS                       R33 R32 K96 ["getResultThumbnail"]
      311 DUPCLOSURE                       R33 K97 [PROTO_28]
      312 CAPTURE                          VAL R14
      313 CAPTURE                          VAL R15
      314 CAPTURE                          VAL R32
      315 SETTABLEKS                       R33 R32 K98 ["isPackagePublishAllowed"]
      317 DUPCLOSURE                       R33 K99 [PROTO_29]
      318 SETTABLEKS                       R33 R32 K100 ["isPackage"]
      320 DUPCLOSURE                       R33 K101 [PROTO_30]
      321 CAPTURE                          VAL R32
      322 SETTABLEKS                       R33 R32 K102 ["getUGCBodyBundleAssetQuantities"]
      324 DUPCLOSURE                       R33 K103 [PROTO_32]
      325 CAPTURE                          VAL R19
      326 SETTABLEKS                       R33 R32 K104 ["getBodyScaleValues"]
      328 MOVE                             R33 R19
      329 CALL                             R33 0 1
      330 JUMPIFNOT                        R33 ; [+9]
      331 DUPCLOSURE                       R33 K105 [PROTO_33]
      332 CAPTURE                          VAL R3
      333 SETTABLEKS                       R33 R32 K106 ["getBodyScaleType"]
      335 DUPCLOSURE                       R33 K107 [PROTO_34]
      336 CAPTURE                          VAL R32
      337 CAPTURE                          VAL R3
      338 SETTABLEKS                       R33 R32 K108 ["ValidateScaleSettings"]
      340 DUPCLOSURE                       R33 K109 [PROTO_35]
      341 CAPTURE                          VAL R20
      342 SETTABLEKS                       R33 R32 K110 ["getBodyColorSet"]
      344 MOVE                             R33 R21
      345 CALL                             R33 0 1
      346 JUMPIFNOT                        R33 ; [+4]
      347 DUPCLOSURE                       R33 K111 [PROTO_36]
      348 CAPTURE                          VAL R32
      349 SETTABLEKS                       R33 R32 K112 ["ValidateBodyColors"]
      351 MOVE                             R33 R19
      352 CALL                             R33 0 1
      353 JUMPIF                           R33 ; [+3]
      354 MOVE                             R33 R21
      355 CALL                             R33 0 1
      356 JUMPIFNOT                        R33 ; [+6]
      357 DUPCLOSURE                       R33 K113 [PROTO_37]
      358 CAPTURE                          VAL R19
      359 CAPTURE                          VAL R32
      360 CAPTURE                          VAL R21
      361 SETTABLEKS                       R33 R32 K114 ["ValidateBody"]
      363 DUPCLOSURE                       R33 K115 [PROTO_38]
      364 CAPTURE                          VAL R3
      365 SETTABLEKS                       R33 R32 K116 ["getUGCBundleTypeFromString"]
      367 DUPCLOSURE                       R33 K117 [PROTO_39]
      368 CAPTURE                          VAL R8
      369 SETTABLEKS                       R33 R32 K118 ["getAllowedAssetTypeSettingsForBundle"]
      371 DUPCLOSURE                       R33 K119 [PROTO_40]
      372 CAPTURE                          VAL R32
      373 CAPTURE                          VAL R3
      374 SETTABLEKS                       R33 R32 K120 ["getAllowedAssetTypeEnumsForBundle"]
      376 DUPCLOSURE                       R33 K121 [PROTO_41]
      377 CAPTURE                          VAL R32
      378 CAPTURE                          VAL R3
      379 SETTABLEKS                       R33 R32 K122 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
      381 DUPCLOSURE                       R33 K123 [PROTO_42]
      382 SETTABLEKS                       R33 R32 K124 ["isAllowedUGCAssetType"]
      384 DUPCLOSURE                       R33 K125 [PROTO_43]
      385 CAPTURE                          VAL R32
      386 CAPTURE                          VAL R3
      387 CAPTURE                          VAL R10
      388 SETTABLEKS                       R33 R32 K126 ["getUGCBodyPartsAssetTypeMap"]
      390 DUPCLOSURE                       R33 K127 [PROTO_44]
      391 CAPTURE                          VAL R24
      392 CAPTURE                          VAL R3
      393 SETTABLEKS                       R33 R32 K128 ["AssetTypeRequiresFolderForUpload"]
      395 DUPCLOSURE                       R33 K129 [PROTO_45]
      396 CAPTURE                          VAL R32
      397 SETTABLEKS                       R33 R32 K130 ["createUGCBodyPartFolders"]
      399 DUPCLOSURE                       R33 K131 [PROTO_46]
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R24
      402 SETTABLEKS                       R33 R32 K132 ["getLocalizedUGCBundleName"]
      404 DUPCLOSURE                       R33 K133 [PROTO_47]
      405 CAPTURE                          VAL R4
      406 SETTABLEKS                       R33 R32 K134 ["sanitizeForValidation"]
      408 DUPCLOSURE                       R33 K135 [PROTO_48]
      409 CAPTURE                          VAL R32
      410 SETTABLEKS                       R33 R32 K136 ["getOptionalAssetTypesForBundle"]
      412 DUPCLOSURE                       R33 K137 [PROTO_49]
      413 CAPTURE                          VAL R32
      414 SETTABLEKS                       R33 R32 K138 ["getOptionalBodyPartsNotFound"]
      416 DUPCLOSURE                       R33 K139 [PROTO_50]
      417 CAPTURE                          VAL R32
      418 SETTABLEKS                       R33 R32 K140 ["getAllowedAssetTypesByBundleType"]
      420 DUPCLOSURE                       R33 K141 [PROTO_51]
      421 CAPTURE                          VAL R3
      422 SETTABLEKS                       R33 R32 K142 ["getUnknownMeshPartNames"]
      424 DUPCLOSURE                       R33 K143 [PROTO_52]
      425 CAPTURE                          VAL R32
      426 SETTABLEKS                       R33 R32 K144 ["getAvatarAssetTypeAsString"]
      428 DUPCLOSURE                       R33 K145 [PROTO_53]
      429 CAPTURE                          VAL R32
      430 CAPTURE                          VAL R24
      431 CAPTURE                          VAL R3
      432 CAPTURE                          VAL R8
      433 CAPTURE                          VAL R25
      434 CAPTURE                          VAL R10
      435 SETTABLEKS                       R33 R32 K146 ["getUGCBundlePartsAssetTypeMap"]
      437 DUPCLOSURE                       R33 K147 [PROTO_54]
      438 CAPTURE                          VAL R32
      439 SETTABLEKS                       R33 R32 K148 ["getUGCBundleAssetQuantities"]
      441 DUPCLOSURE                       R33 K149 [PROTO_55]
      442 CAPTURE                          VAL R32
      443 CAPTURE                          VAL R3
      444 CAPTURE                          VAL R10
      445 SETTABLEKS                       R33 R32 K150 ["createUGCShoesPartFolders"]
      447 DUPCLOSURE                       R33 K151 [PROTO_56]
      448 CAPTURE                          VAL R32
      449 SETTABLEKS                       R33 R32 K152 ["shouldValidateAssetType"]
      451 DUPCLOSURE                       R33 K153 [PROTO_57]
      452 SETTABLEKS                       R33 R32 K154 ["getValidationFailuresAsString"]
      454 MOVE                             R33 R22
      455 CALL                             R33 0 1
      456 JUMPIFNOT                        R33 ; [+6]
      457 DUPCLOSURE                       R33 K155 [PROTO_58]
      458 CAPTURE                          VAL R24
      459 CAPTURE                          VAL R2
      460 CAPTURE                          VAL R3
      461 SETTABLEKS                       R33 R32 K156 ["getAssetIdsFromInstance"]
      463 DUPCLOSURE                       R33 K157 [PROTO_59]
      464 CAPTURE                          VAL R23
      465 SETTABLEKS                       R33 R32 K158 ["isAllowedAssetType"]
      467 DUPCLOSURE                       R33 K159 [PROTO_60]
      468 SETTABLEKS                       R33 R32 K160 ["normalizeAnimationAssetIdInput"]
      470 GETTABLEKS                       R33 R30 K161 ["isEntrypointMergingEnabled"]
      472 JUMPIFNOT                        R33 ; [+7]
      473 GETTABLEKS                       R33 R30 K161 ["isEntrypointMergingEnabled"]
      475 CALL                             R33 0 1
      476 JUMPIFNOT                        R33 ; [+3]
      477 DUPCLOSURE                       R33 K162 [PROTO_61]
      478 SETTABLEKS                       R33 R32 K163 ["getValidationErrorText"]
      480 RETURN                           R32 1
