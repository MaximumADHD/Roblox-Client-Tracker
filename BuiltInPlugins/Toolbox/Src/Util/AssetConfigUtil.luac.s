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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+26]
        3 LOADB                            R1 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
        7 GETTABLEKS                       R2 R3 K1 ["Body"]
        9 JUMPIFEQ                         R0 R2 ; [+18]
       11 LOADB                            R1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       15 GETTABLEKS                       R2 R3 K2 ["DynamicHead"]
       17 JUMPIFEQ                         R0 R2 ; [+10]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       22 GETTABLEKS                       R2 R3 K3 ["Shoes"]
       24 JUMPIFEQ                         R0 R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1
       29 LOADB                            R1 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       33 GETTABLEKS                       R2 R3 K1 ["Body"]
       35 JUMPIFEQ                         R0 R2 ; [+10]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       40 GETTABLEKS                       R2 R3 K2 ["DynamicHead"]
       42 JUMPIFEQ                         R0 R2 ; [+2]
       44 LOADB                            R1 0 +1
       45 LOADB                            R1 1
       46 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
        4 GETTABLEKS                       R2 R3 K1 ["Body"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       11 GETTABLEKS                       R2 R3 K2 ["DynamicHead"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
        4 GETTABLEKS                       R2 R3 K1 ["ReviewApproved"]
        6 JUMPIFEQ                         R2 R0 ; [+26]
        8 LOADB                            R1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       12 GETTABLEKS                       R2 R3 K2 ["OnSale"]
       14 JUMPIFEQ                         R2 R0 ; [+18]
       16 LOADB                            R1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       20 GETTABLEKS                       R2 R3 K3 ["OffSale"]
       22 JUMPIFEQ                         R2 R0 ; [+10]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       27 GETTABLEKS                       R2 R3 K4 ["DelayedRelease"]
       29 JUMPIFEQ                         R2 R0 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
        4 GETTABLEKS                       R2 R3 K1 ["OnSale"]
        6 JUMPIFEQ                         R2 R0 ; [+10]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["ASSET_STATUS"]
       11 GETTABLEKS                       R2 R3 K2 ["Free"]
       13 JUMPIFEQ                         R2 R0 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
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

PROTO_6:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 JUMPIFEQKNIL                     R0 ; [+18]
        6 GETIMPORT                        R1 K5 [table.find]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K6 ["ASSET_TYPES_2D"]
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

PROTO_7:
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
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K11 ["MAKEUP_ASSET_TYPES"]
       33 GETIMPORT                        R10 K14 [Enum.AssetType]
       35 GETTABLE                         R9 R10 R6
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+8]
       38 GETIMPORT                        R9 K14 [Enum.AssetType]
       40 GETTABLE                         R8 R9 R6
       41 GETTABLEKS                       R7 R8 K15 ["Name"]
       43 NEWTABLE                         R8 0 0
       45 SETTABLE                         R8 R1 R7
       46 GETIMPORT                        R7 K10 [table.find]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K16 ["ASSET_TYPES_2D"]
       51 GETIMPORT                        R10 K14 [Enum.AssetType]
       53 GETTABLE                         R9 R10 R6
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+18]
       56 GETIMPORT                        R7 K10 [table.find]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R8 R9 K17 ["BODY_PARTS"]
       61 GETIMPORT                        R10 K14 [Enum.AssetType]
       63 GETTABLE                         R9 R10 R6
       64 CALL                             R7 2 1
       65 JUMPIF                           R7 ; [+8]
       66 GETIMPORT                        R9 K14 [Enum.AssetType]
       68 GETTABLE                         R8 R9 R6
       69 GETTABLEKS                       R7 R8 K15 ["Name"]
       71 NEWTABLE                         R8 0 0
       73 SETTABLE                         R8 R1 R7
       74 CLOSEUPVALS                      R6
       75 FORGLOOP                         R2 2 [inext] ; [-69]
       77 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 LENGTH                           R2 R3
        4 LOADN                            R3 0
        5 JUMPIFLT                         R3 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["IMAGE_TYPES"]
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

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["isCatalog"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["isMarketplace"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 JUMPIFEQKNIL                     R0 ; [+18]
        8 LOADB                            R1 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["MAKEUP_ASSET_TYPES"]
       12 JUMPIFEQKNIL                     R2 ; [+12]
       14 GETIMPORT                        R2 K3 [table.find]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K0 ["MAKEUP_ASSET_TYPES"]
       19 MOVE                             R4 R0
       20 CALL                             R2 2 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["isMarketplaceAsset"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        9 JUMPIFEQ                         R0 R2 ; [+3]
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
        3 GETTABLEKS                       R2 R3 K1 ["UPLOAD_FLOW"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+19]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["hasAllowedAssetTypesForRelease"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["SCREENS"]
       16 GETTABLEKS                       R2 R3 K4 ["CONFIGURE_ASSET"]
       18 RETURN                           R2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K3 ["SCREENS"]
       22 GETTABLEKS                       R2 R3 K5 ["ASSET_TYPE_SELECTION"]
       24 RETURN                           R2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
       28 GETTABLEKS                       R2 R3 K6 ["EDIT_FLOW"]
       30 JUMPIFEQ                         R0 R2 ; [+8]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K0 ["FLOW_TYPE"]
       35 GETTABLEKS                       R2 R3 K7 ["DOWNLOAD_FLOW"]
       37 JUMPIFNOTEQ                      R0 R2 ; [+7]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K3 ["SCREENS"]
       42 GETTABLEKS                       R2 R3 K4 ["CONFIGURE_ASSET"]
       44 RETURN                           R2 1
       45 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GENRE_TYPE"]
        3 RETURN                           R0 1

PROTO_20:
        0 LOADN                            R1 1
        1 GETIMPORT                        R2 K1 [pairs]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R3 R5 K2 ["GENRE_TYPE"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R6 K3 ["name"]
       10 JUMPIFNOTEQ                      R0 R7 ; [+3]
       12 MOVE                             R1 R5
       13 RETURN                           R1 1
       14 FORGLOOP                         R2 2 ; [-7]
       16 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GENRE_TYPE"]
        3 LENGTH                           R1 R2
        4 JUMPIFNOTLT                      R1 R0 ; [+2]
        6 LOADN                            R0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["GENRE_TYPE"]
       10 GETTABLE                         R2 R3 R0
       11 GETTABLEKS                       R1 R2 K1 ["name"]
       13 RETURN                           R1 1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 NAMECALL                         R0 R0 K0 ["Clone"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_24:
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

PROTO_25:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["PreviewTypes"]
        4 GETTABLEKS                       R2 R3 K1 ["ModelPreview"]
        6 JUMPIF                           R2 ; [+5]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["PreviewTypes"]
       10 GETTABLEKS                       R2 R3 K2 ["Thumbnail"]
       12 JUMPIFNOT                        R0 ; [+11]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K3 ["isBuyableMarketplaceAsset"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["PreviewTypes"]
       22 GETTABLEKS                       R2 R3 K4 ["ImagePicker"]
       24 GETUPVAL                         R3 2
       25 JUMPIFNOT                        R3 ; [+9]
       26 GETIMPORT                        R3 K8 [Enum.AssetType.Animation]
       28 JUMPIFNOTEQ                      R0 R3 ; [+6]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K0 ["PreviewTypes"]
       33 GETTABLEKS                       R2 R3 K2 ["Thumbnail"]
       35 RETURN                           R2 1

PROTO_26:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+5]
        2 NAMECALL                         R3 R1 K0 ["GetTemporaryId"]
        4 CALL                             R3 1 1
        5 MOVE                             R2 R3
        6 RETURN                           R2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["constructAssetThumbnailUrl"]
       10 MOVE                             R4 R0
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["rbxThumbSizes"]
       14 GETTABLEKS                       R5 R6 K3 ["AssetThumbnailSize"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K2 ["rbxThumbSizes"]
       19 GETTABLEKS                       R6 R7 K3 ["AssetThumbnailSize"]
       21 CALL                             R3 3 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1

PROTO_27:
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
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K3 ["isPackage"]
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
       44 GETTABLEKS                       R6 R4 K6 ["PrimaryPart"]
       46 GETTABLEKS                       R5 R6 K7 ["Archivable"]
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

PROTO_28:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getUGCBodyPartsAssetTypeMap"]
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["BodyScaleTypes"]
        8 GETTABLEKS                       R2 R3 K3 ["Unknown"]
       10 RETURN                           R2 1
       11 LOADK                            R4 K4 ["AvatarPartScaleType"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["BodyScaleTypes"]
       19 GETTABLEKS                       R3 R4 K5 ["Classic"]
       21 RETURN                           R3 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K2 ["BodyScaleTypes"]
       25 GETTABLEKS                       R5 R2 K6 ["Value"]
       27 GETTABLE                         R3 R4 R5
       28 JUMPIF                           R3 ; [+6]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K2 ["BodyScaleTypes"]
       32 GETTABLEKS                       R4 R5 K3 ["Unknown"]
       34 RETURN                           R4 1
       35 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getBodyScaleValues"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["getBodyScaleType"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K2 ["BodyScaleTypes"]
       15 GETTABLEKS                       R5 R6 K3 ["Unknown"]
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
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K14 ["BodyScaleDefaults"]
       54 GETTABLE                         R11 R12 R3
       55 GETTABLE                         R10 R11 R8
       56 JUMPIFEQ                         R9 R10 ; [+25]
       58 MOVE                             R12 R4
       59 LOADK                            R15 K4 ["AssetConfig"]
       60 LOADK                            R16 K15 ["BodyScaleValidationErrorNotDefaultValue"]
       61 DUPTABLE                         R17 K19 [{"scaleName", "defaultValue", "scaleType"}]
       62 GETUPVAL                         R20 1
       63 GETTABLEKS                       R19 R20 K20 ["bodyScaleNameToString"]
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

PROTO_34:
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

PROTO_35:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getBodyColorSet"]
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

PROTO_36:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+19]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["ValidateScaleSettings"]
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
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K4 ["ValidateBodyColors"]
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

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["UGCBundleTypeStringToEnumeration"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_38:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["None"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R4 R1 K1 ["rawValue"]
       11 CALL                             R4 0 1
       12 GETTABLE                         R3 R0 R4
       13 GETTABLEKS                       R2 R3 K2 ["allowedAssetTypeSettings"]
       15 RETURN                           R2 1

PROTO_39:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R11 1
       16 GETTABLEKS                       R10 R11 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       23 MOVE                             R11 R2
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K4 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R4 1 ; [-14]
       30 RETURN                           R2 1

PROTO_40:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R11 1
       16 GETTABLEKS                       R10 R11 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
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

PROTO_41:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_42:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 NEWTABLE                         R5 0 0
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R6 R9 K3 ["UGC_BODY_PARTS"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R13 R10
       22 NAMECALL                         R11 R0 K4 ["FindFirstChild"]
       24 CALL                             R11 2 1
       25 JUMPIFEQKNIL                     R11 ; [+32]
       27 GETUPVAL                         R14 1
       28 GETTABLEKS                       R13 R14 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R12 R13 R9
       31 GETUPVAL                         R14 0
       32 GETTABLEKS                       R13 R14 K6 ["isAllowedUGCAssetType"]
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
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K7 ["append"]
       51 GETTABLE                         R14 R5 R12
       52 NEWTABLE                         R15 0 1
       54 MOVE                             R16 R11
       55 SETLIST                          R15 R16 1 [1]
       57 CALL                             R13 2 0
       58 FORGLOOP                         R6 2 ; [-38]
       60 RETURN                           R5 1

PROTO_43:
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
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getUGCBodyPartsAssetTypeMap"]
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
       17 GETUPVAL                         R12 0
       18 GETTABLEKS                       R11 R12 K1 ["AssetTypeRequiresFolderForUpload"]
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

PROTO_45:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
        3 GETTABLEKS                       R2 R3 K1 ["Body"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 LOADK                            R4 K2 ["AssetConfig"]
        8 LOADK                            R5 K3 ["UGCBodyBundleName"]
        9 NAMECALL                         R2 R1 K4 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       16 GETTABLEKS                       R2 R3 K5 ["DynamicHead"]
       18 JUMPIFNOTEQ                      R0 R2 ; [+7]
       20 LOADK                            R4 K2 ["AssetConfig"]
       21 LOADK                            R5 K6 ["UGCDynamicHeadBundleName"]
       22 NAMECALL                         R2 R1 K4 ["getText"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 1
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+13]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K0 ["UGCBundleTypes"]
       32 GETTABLEKS                       R2 R3 K7 ["Shoes"]
       34 JUMPIFNOTEQ                      R0 R2 ; [+7]
       36 LOADK                            R4 K2 ["AssetConfig"]
       37 LOADK                            R5 K8 ["UGCShoesBundleName"]
       38 NAMECALL                         R2 R1 K4 ["getText"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
       42 LOADK                            R2 K9 [""]
       43 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R10 R8 K1 ["settings"]
       14 GETTABLEKS                       R9 R10 K2 ["minimumQuantity"]
       16 JUMPIFNOTEQKN                    R9 K3 [0] ; [+9]
       18 GETTABLEKS                       R11 R8 K4 ["assetType"]
       20 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       22 MOVE                             R10 R3
       23 GETIMPORT                        R9 K7 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-15]
       28 RETURN                           R3 1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getOptionalAssetTypesForBundle"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["getUGCBodyPartsAssetTypeMap"]
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

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getAllowedAssetTypeEnumsForBundle"]
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

PROTO_50:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 NAMECALL                         R3 R0 K2 ["GetChildren"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K3 ["UGC_BODY_PARTS"]
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

PROTO_51:
        0 JUMPIFEQKNIL                     R0 ; [+16]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["isUGCBundleType"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["isCatalogAsset"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 GETTABLEKS                       R1 R0 K2 ["Name"]
       16 RETURN                           R1 1
       17 LOADK                            R1 K3 [""]
       18 RETURN                           R1 1

PROTO_52:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["Dictionary"]
       16 GETTABLEKS                       R4 R5 K4 ["join"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K5 ["UGC_BODY_PARTS"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K6 ["UGC_BUNDLE_PARTS"]
       24 CALL                             R4 2 1
       25 NEWTABLE                         R5 0 0
       27 MOVE                             R6 R4
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 MOVE                             R13 R10
       32 NAMECALL                         R11 R0 K7 ["FindFirstChild"]
       34 CALL                             R11 2 1
       35 JUMPIFEQKNIL                     R11 ; [+43]
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R13 R14 K8 ["isUGCBodyBundleType"]
       40 MOVE                             R14 R2
       41 CALL                             R13 1 1
       42 JUMPIFNOT                        R13 ; [+5]
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R13 R14 K9 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       46 GETTABLE                         R12 R13 R9
       47 JUMP                             ; [+4]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K10 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       51 GETTABLE                         R12 R13 R9
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R13 R14 K11 ["isAllowedUGCAssetType"]
       55 MOVE                             R14 R12
       56 MOVE                             R15 R3
       57 CALL                             R13 2 1
       58 JUMPIFNOT                        R13 ; [+20]
       59 GETTABLE                         R13 R5 R12
       60 JUMPIFNOTEQKNIL                  R13 ; [+8]
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R11
       65 SETLIST                          R13 R14 1 [1]
       67 SETTABLE                         R13 R5 R12
       68 JUMP                             ; [+10]
       69 GETUPVAL                         R14 3
       70 GETTABLEKS                       R13 R14 K12 ["append"]
       72 GETTABLE                         R14 R5 R12
       73 NEWTABLE                         R15 0 1
       75 MOVE                             R16 R11
       76 SETLIST                          R15 R16 1 [1]
       78 CALL                             R13 2 0
       79 FORGLOOP                         R6 2 ; [-49]
       81 RETURN                           R5 1

PROTO_53:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getUGCBundlePartsAssetTypeMap"]
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

PROTO_54:
        0 NEWTABLE                         R3 0 0
        2 LOADK                            R6 K0 ["Model"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["getAllowedAssetTypeEnumsForBundle"]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R5 R8 K3 ["UGC_BUNDLE_PARTS"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 MOVE                             R12 R9
       22 NAMECALL                         R10 R0 K4 ["FindFirstChild"]
       24 CALL                             R10 2 1
       25 JUMPIFEQKNIL                     R10 ; [+32]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R12 R13 K5 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R11 R12 R8
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R12 R13 K6 ["isAllowedUGCAssetType"]
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
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R12 R13 K7 ["append"]
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

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isCatalogAsset"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["isUGCBundleType"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_56:
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

PROTO_57:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["GetDependencyContentIds"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 LOADB                            R9 0
       11 GETUPVAL                         R13 0
       12 GETTABLEKS                       R10 R13 K1 ["assetIdStringPatterns"]
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 FORGPREP                         R10
       17 GETIMPORT                        R15 K4 [string.match]
       19 MOVE                             R16 R8
       20 MOVE                             R17 R14
       21 CALL                             R15 2 1
       22 JUMPIFNOTEQ                      R15 R14 ; [+2]
       24 LOADB                            R9 1
       25 FORGLOOP                         R10 2 ; [-9]
       27 JUMPIFNOT                        R9 ; [+7]
       28 GETIMPORT                        R10 K4 [string.match]
       30 MOVE                             R11 R8
       31 LOADK                            R12 K5 ["(%d+)$"]
       32 CALL                             R10 2 1
       33 LOADB                            R11 1
       34 SETTABLE                         R11 R3 R10
       35 FORGLOOP                         R4 2 ; [-26]
       37 NEWTABLE                         R4 0 0
       39 MOVE                             R5 R3
       40 LOADNIL                          R6
       41 LOADNIL                          R7
       42 FORGPREP                         R5
       43 FASTCALL1                        TONUMBER R8 ; [+3]
       44 MOVE                             R13 R8
       45 GETIMPORT                        R12 K7 [tonumber]
       47 CALL                             R12 1 1
       48 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       50 MOVE                             R11 R4
       51 GETIMPORT                        R10 K10 [table.insert]
       53 CALL                             R10 2 0
       54 FORGLOOP                         R5 2 ; [-12]
       56 RETURN                           R4 1

PROTO_58:
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

PROTO_59:
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AssetConfigConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["fixUpPreValidation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["getUserId"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K10 ["Urls"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K11 ["Packages"]
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R6 K12 ["Cryo"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R6 K13 ["Framework"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R6 K14 ["Dash"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R1 K15 ["getAllowedAssetTypeEnums"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R12 K17 [settings]
       57 CALL                             R12 0 1
       58 LOADK                            R14 K18 ["FileMaxSizeBytes"]
       59 NAMECALL                         R12 R12 K19 ["GetFVariable"]
       61 CALL                             R12 2 -1
       62 FASTCALL                         TONUMBER ; [+2]
       63 GETIMPORT                        R11 K21 [tonumber]
       65 CALL                             R11 -1 1
       66 GETIMPORT                        R12 K23 [game]
       68 LOADK                            R14 K24 ["UseDefaultThumbnailForAnimation"]
       69 NAMECALL                         R12 R12 K25 ["GetFastFlag"]
       71 CALL                             R12 2 1
       72 GETIMPORT                        R13 K23 [game]
       74 LOADK                            R15 K26 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       75 NAMECALL                         R13 R13 K25 ["GetFastFlag"]
       77 CALL                             R13 2 1
       78 GETIMPORT                        R14 K23 [game]
       80 LOADK                            R16 K27 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       81 NAMECALL                         R14 R14 K25 ["GetFastFlag"]
       83 CALL                             R14 2 1
       84 GETIMPORT                        R15 K6 [require]
       86 GETTABLEKS                       R16 R1 K28 ["DebugFlags"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K6 [require]
       91 GETTABLEKS                       R19 R0 K3 ["Src"]
       93 GETTABLEKS                       R18 R19 K29 ["Localization"]
       95 GETTABLEKS                       R17 R18 K30 ["getLocalizedAssetTextMap"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K6 [require]
      100 GETTABLEKS                       R19 R1 K31 ["SharedFlags"]
      102 GETTABLEKS                       R18 R19 K32 ["getFFlagEnableUGCUploadFlowAnalytics"]
      104 CALL                             R17 1 1
      105 GETIMPORT                        R18 K6 [require]
      107 GETTABLEKS                       R20 R1 K31 ["SharedFlags"]
      109 GETTABLEKS                       R19 R20 K33 ["getFFlagEnableUGCBundleUploadBodyScale"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K6 [require]
      114 GETTABLEKS                       R21 R1 K31 ["SharedFlags"]
      116 GETTABLEKS                       R20 R21 K34 ["getFFlagEnableBodyColorSetUploadSupport"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K6 [require]
      121 GETTABLEKS                       R23 R0 K3 ["Src"]
      123 GETTABLEKS                       R22 R23 K35 ["Flags"]
      125 GETTABLEKS                       R21 R22 K36 ["getFFlagRequireBodyColorsForBodyUpload"]
      127 CALL                             R20 1 1
      128 GETIMPORT                        R21 K6 [require]
      130 GETTABLEKS                       R24 R0 K3 ["Src"]
      132 GETTABLEKS                       R23 R24 K35 ["Flags"]
      134 GETTABLEKS                       R22 R23 K37 ["getFFlagEnableUploadingShoes"]
      136 CALL                             R21 1 1
      137 GETIMPORT                        R22 K6 [require]
      139 GETTABLEKS                       R25 R0 K3 ["Src"]
      141 GETTABLEKS                       R24 R25 K35 ["Flags"]
      143 GETTABLEKS                       R23 R24 K38 ["getFFlagCheckAvatarAssetPrivacy"]
      145 CALL                             R22 1 1
      146 GETIMPORT                        R23 K6 [require]
      148 GETTABLEKS                       R26 R0 K3 ["Src"]
      150 GETTABLEKS                       R25 R26 K35 ["Flags"]
      152 GETTABLEKS                       R24 R25 K39 ["getFFlagPrivacyCheckAssetType"]
      154 CALL                             R23 1 1
      155 GETIMPORT                        R24 K6 [require]
      157 GETTABLEKS                       R27 R0 K3 ["Src"]
      159 GETTABLEKS                       R26 R27 K35 ["Flags"]
      161 GETTABLEKS                       R25 R26 K40 ["getFStringAllowedAssetTypesPrivacyCheck"]
      163 CALL                             R24 1 1
      164 GETIMPORT                        R25 K6 [require]
      166 GETTABLEKS                       R28 R0 K3 ["Src"]
      168 GETTABLEKS                       R27 R28 K35 ["Flags"]
      170 GETTABLEKS                       R26 R27 K41 ["getFFlagEnableUploadingMakeup"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K6 [require]
      175 GETTABLEKS                       R29 R0 K3 ["Src"]
      177 GETTABLEKS                       R28 R29 K35 ["Flags"]
      179 GETTABLEKS                       R27 R28 K42 ["getFFlagUsePublishMarketplaceActionType"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K23 [game]
      184 LOADK                            R29 K43 ["HttpService"]
      185 NAMECALL                         R27 R27 K44 ["GetService"]
      187 CALL                             R27 2 1
      188 GETIMPORT                        R28 K23 [game]
      190 LOADK                            R30 K45 ["StudioService"]
      191 NAMECALL                         R28 R28 K44 ["GetService"]
      193 CALL                             R28 2 1
      194 GETIMPORT                        R29 K6 [require]
      196 GETTABLEKS                       R30 R6 K46 ["UGCValidation"]
      198 CALL                             R29 1 1
      199 DUPCLOSURE                       R30 K47 [PROTO_0]
      200 NEWTABLE                         R31 64 0
      202 DUPCLOSURE                       R32 K48 [PROTO_1]
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R2
      205 SETTABLEKS                       R32 R31 K49 ["isUGCBundleType"]
      207 MOVE                             R32 R21
      208 CALL                             R32 0 1
      209 JUMPIFNOT                        R32 ; [+4]
      210 DUPCLOSURE                       R32 K50 [PROTO_2]
      211 CAPTURE                          VAL R2
      212 SETTABLEKS                       R32 R31 K51 ["isUGCBodyBundleType"]
      214 DUPCLOSURE                       R32 K52 [PROTO_3]
      215 CAPTURE                          VAL R2
      216 SETTABLEKS                       R32 R31 K53 ["isReadyForSale"]
      218 DUPCLOSURE                       R32 K54 [PROTO_4]
      219 CAPTURE                          VAL R2
      220 SETTABLEKS                       R32 R31 K55 ["isOnSale"]
      222 DUPCLOSURE                       R32 K56 [PROTO_5]
      223 CAPTURE                          VAL R2
      224 SETTABLEKS                       R32 R31 K57 ["isBuyableMarketplaceAsset"]
      226 DUPCLOSURE                       R32 K58 [PROTO_7]
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R25
      230 SETTABLEKS                       R32 R31 K59 ["filterAllowedAssetTypesForRelease"]
      232 DUPCLOSURE                       R32 K60 [PROTO_8]
      233 CAPTURE                          VAL R10
      234 SETTABLEKS                       R32 R31 K61 ["hasAllowedAssetTypesForRelease"]
      236 DUPCLOSURE                       R32 K62 [PROTO_9]
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R11
      240 SETTABLEKS                       R32 R31 K63 ["promptImagePicker"]
      242 DUPCLOSURE                       R32 K64 [PROTO_10]
      243 CAPTURE                          VAL R2
      244 SETTABLEKS                       R32 R31 K65 ["isCatalogAsset"]
      246 DUPCLOSURE                       R32 K66 [PROTO_11]
      247 CAPTURE                          VAL R2
      248 SETTABLEKS                       R32 R31 K67 ["isMarketplaceAsset"]
      250 DUPCLOSURE                       R32 K68 [PROTO_12]
      251 CAPTURE                          VAL R25
      252 CAPTURE                          VAL R2
      253 SETTABLEKS                       R32 R31 K69 ["isMakeupAsset"]
      255 DUPCLOSURE                       R32 K70 [PROTO_14]
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R27
      258 SETTABLEKS                       R32 R31 K71 ["getThumbnailSkinColor"]
      260 DUPCLOSURE                       R32 K72 [PROTO_15]
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R27
      263 SETTABLEKS                       R32 R31 K73 ["setThumbnailSkinColor"]
      265 DUPCLOSURE                       R32 K74 [PROTO_16]
      266 CAPTURE                          VAL R25
      267 SETTABLEKS                       R32 R31 K75 ["addMakeupThumbnailConfiguration"]
      269 DUPCLOSURE                       R32 K76 [PROTO_17]
      270 CAPTURE                          VAL R31
      271 SETTABLEKS                       R32 R31 K77 ["isCreatorStoreAssetNotIncludingAnimation"]
      273 DUPCLOSURE                       R32 K78 [PROTO_18]
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R31
      276 SETTABLEKS                       R32 R31 K79 ["getFlowStartScreen"]
      278 DUPCLOSURE                       R32 K80 [PROTO_19]
      279 CAPTURE                          VAL R2
      280 SETTABLEKS                       R32 R31 K81 ["getGenreTypes"]
      282 DUPCLOSURE                       R32 K82 [PROTO_20]
      283 CAPTURE                          VAL R2
      284 SETTABLEKS                       R32 R31 K83 ["getGenreIndex"]
      286 DUPCLOSURE                       R32 K84 [PROTO_21]
      287 CAPTURE                          VAL R2
      288 SETTABLEKS                       R32 R31 K85 ["getGenreName"]
      290 DUPCLOSURE                       R32 K86 [PROTO_22]
      291 CAPTURE                          VAL R4
      292 SETTABLEKS                       R32 R31 K87 ["getOwnerDropDownContent"]
      294 DUPCLOSURE                       R32 K88 [PROTO_24]
      295 SETTABLEKS                       R32 R31 K89 ["getClonedInstances"]
      297 DUPCLOSURE                       R32 K90 [PROTO_25]
      298 CAPTURE                          VAL R2
      299 CAPTURE                          VAL R31
      300 CAPTURE                          VAL R12
      301 SETTABLEKS                       R32 R31 K91 ["getPreviewType"]
      303 DUPCLOSURE                       R32 K92 [PROTO_26]
      304 CAPTURE                          VAL R5
      305 CAPTURE                          VAL R2
      306 SETTABLEKS                       R32 R31 K93 ["getResultThumbnail"]
      308 DUPCLOSURE                       R32 K94 [PROTO_27]
      309 CAPTURE                          VAL R13
      310 CAPTURE                          VAL R14
      311 CAPTURE                          VAL R31
      312 SETTABLEKS                       R32 R31 K95 ["isPackagePublishAllowed"]
      314 DUPCLOSURE                       R32 K96 [PROTO_28]
      315 SETTABLEKS                       R32 R31 K97 ["isPackage"]
      317 DUPCLOSURE                       R32 K98 [PROTO_29]
      318 CAPTURE                          VAL R31
      319 SETTABLEKS                       R32 R31 K99 ["getUGCBodyBundleAssetQuantities"]
      321 DUPCLOSURE                       R32 K100 [PROTO_31]
      322 CAPTURE                          VAL R18
      323 SETTABLEKS                       R32 R31 K101 ["getBodyScaleValues"]
      325 MOVE                             R32 R18
      326 CALL                             R32 0 1
      327 JUMPIFNOT                        R32 ; [+9]
      328 DUPCLOSURE                       R32 K102 [PROTO_32]
      329 CAPTURE                          VAL R2
      330 SETTABLEKS                       R32 R31 K103 ["getBodyScaleType"]
      332 DUPCLOSURE                       R32 K104 [PROTO_33]
      333 CAPTURE                          VAL R31
      334 CAPTURE                          VAL R2
      335 SETTABLEKS                       R32 R31 K105 ["ValidateScaleSettings"]
      337 DUPCLOSURE                       R32 K106 [PROTO_34]
      338 CAPTURE                          VAL R19
      339 SETTABLEKS                       R32 R31 K107 ["getBodyColorSet"]
      341 MOVE                             R32 R20
      342 CALL                             R32 0 1
      343 JUMPIFNOT                        R32 ; [+4]
      344 DUPCLOSURE                       R32 K108 [PROTO_35]
      345 CAPTURE                          VAL R31
      346 SETTABLEKS                       R32 R31 K109 ["ValidateBodyColors"]
      348 MOVE                             R32 R18
      349 CALL                             R32 0 1
      350 JUMPIF                           R32 ; [+3]
      351 MOVE                             R32 R20
      352 CALL                             R32 0 1
      353 JUMPIFNOT                        R32 ; [+6]
      354 DUPCLOSURE                       R32 K110 [PROTO_36]
      355 CAPTURE                          VAL R18
      356 CAPTURE                          VAL R31
      357 CAPTURE                          VAL R20
      358 SETTABLEKS                       R32 R31 K111 ["ValidateBody"]
      360 DUPCLOSURE                       R32 K112 [PROTO_37]
      361 CAPTURE                          VAL R2
      362 SETTABLEKS                       R32 R31 K113 ["getUGCBundleTypeFromString"]
      364 DUPCLOSURE                       R32 K114 [PROTO_38]
      365 CAPTURE                          VAL R7
      366 SETTABLEKS                       R32 R31 K115 ["getAllowedAssetTypeSettingsForBundle"]
      368 DUPCLOSURE                       R32 K116 [PROTO_39]
      369 CAPTURE                          VAL R31
      370 CAPTURE                          VAL R2
      371 SETTABLEKS                       R32 R31 K117 ["getAllowedAssetTypeEnumsForBundle"]
      373 DUPCLOSURE                       R32 K118 [PROTO_40]
      374 CAPTURE                          VAL R31
      375 CAPTURE                          VAL R2
      376 SETTABLEKS                       R32 R31 K119 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
      378 DUPCLOSURE                       R32 K120 [PROTO_41]
      379 SETTABLEKS                       R32 R31 K121 ["isAllowedUGCAssetType"]
      381 DUPCLOSURE                       R32 K122 [PROTO_42]
      382 CAPTURE                          VAL R31
      383 CAPTURE                          VAL R2
      384 CAPTURE                          VAL R9
      385 SETTABLEKS                       R32 R31 K123 ["getUGCBodyPartsAssetTypeMap"]
      387 DUPCLOSURE                       R32 K124 [PROTO_43]
      388 SETTABLEKS                       R32 R31 K125 ["AssetTypeRequiresFolderForUpload"]
      390 DUPCLOSURE                       R32 K126 [PROTO_44]
      391 CAPTURE                          VAL R31
      392 SETTABLEKS                       R32 R31 K127 ["createUGCBodyPartFolders"]
      394 DUPCLOSURE                       R32 K128 [PROTO_45]
      395 CAPTURE                          VAL R2
      396 CAPTURE                          VAL R21
      397 SETTABLEKS                       R32 R31 K129 ["getLocalizedUGCBundleName"]
      399 DUPCLOSURE                       R32 K130 [PROTO_46]
      400 CAPTURE                          VAL R3
      401 SETTABLEKS                       R32 R31 K131 ["sanitizeForValidation"]
      403 DUPCLOSURE                       R32 K132 [PROTO_47]
      404 CAPTURE                          VAL R31
      405 SETTABLEKS                       R32 R31 K133 ["getOptionalAssetTypesForBundle"]
      407 DUPCLOSURE                       R32 K134 [PROTO_48]
      408 CAPTURE                          VAL R31
      409 SETTABLEKS                       R32 R31 K135 ["getOptionalBodyPartsNotFound"]
      411 DUPCLOSURE                       R32 K136 [PROTO_49]
      412 CAPTURE                          VAL R31
      413 SETTABLEKS                       R32 R31 K137 ["getAllowedAssetTypesByBundleType"]
      415 DUPCLOSURE                       R32 K138 [PROTO_50]
      416 CAPTURE                          VAL R2
      417 SETTABLEKS                       R32 R31 K139 ["getUnknownMeshPartNames"]
      419 DUPCLOSURE                       R32 K140 [PROTO_51]
      420 CAPTURE                          VAL R31
      421 SETTABLEKS                       R32 R31 K141 ["getAvatarAssetTypeAsString"]
      423 MOVE                             R32 R21
      424 CALL                             R32 0 1
      425 JUMPIFNOT                        R32 ; [+17]
      426 DUPCLOSURE                       R32 K142 [PROTO_52]
      427 CAPTURE                          VAL R31
      428 CAPTURE                          VAL R7
      429 CAPTURE                          VAL R2
      430 CAPTURE                          VAL R9
      431 SETTABLEKS                       R32 R31 K143 ["getUGCBundlePartsAssetTypeMap"]
      433 DUPCLOSURE                       R32 K144 [PROTO_53]
      434 CAPTURE                          VAL R31
      435 SETTABLEKS                       R32 R31 K145 ["getUGCBundleAssetQuantities"]
      437 DUPCLOSURE                       R32 K146 [PROTO_54]
      438 CAPTURE                          VAL R31
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R9
      441 SETTABLEKS                       R32 R31 K147 ["createUGCShoesPartFolders"]
      443 DUPCLOSURE                       R32 K148 [PROTO_55]
      444 CAPTURE                          VAL R31
      445 SETTABLEKS                       R32 R31 K149 ["shouldValidateAssetType"]
      447 DUPCLOSURE                       R32 K150 [PROTO_56]
      448 SETTABLEKS                       R32 R31 K151 ["getValidationFailuresAsString"]
      450 MOVE                             R32 R22
      451 CALL                             R32 0 1
      452 JUMPIFNOT                        R32 ; [+4]
      453 DUPCLOSURE                       R32 K152 [PROTO_57]
      454 CAPTURE                          VAL R2
      455 SETTABLEKS                       R32 R31 K153 ["getAssetIdsFromInstance"]
      457 MOVE                             R32 R23
      458 CALL                             R32 0 1
      459 JUMPIFNOT                        R32 ; [+4]
      460 DUPCLOSURE                       R32 K154 [PROTO_58]
      461 CAPTURE                          VAL R24
      462 SETTABLEKS                       R32 R31 K155 ["isAllowedAssetType"]
      464 GETTABLEKS                       R32 R29 K156 ["isEntrypointMergingEnabled"]
      466 JUMPIFNOT                        R32 ; [+7]
      467 GETTABLEKS                       R32 R29 K156 ["isEntrypointMergingEnabled"]
      469 CALL                             R32 0 1
      470 JUMPIFNOT                        R32 ; [+3]
      471 DUPCLOSURE                       R32 K157 [PROTO_59]
      472 SETTABLEKS                       R32 R31 K158 ["getValidationErrorText"]
      474 RETURN                           R31 1
