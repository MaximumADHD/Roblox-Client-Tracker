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
        6 JUMPIFEQ                         R0 R2 ; [+26]
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       12 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       14 JUMPIFEQ                         R0 R2 ; [+18]
       16 LOADB                            R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       20 GETTABLEKS                       R2 R2 K3 ["Shoes"]
       22 JUMPIFEQ                         R0 R2 ; [+10]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       27 GETTABLEKS                       R2 R2 K4 ["AvatarAnimations"]
       29 JUMPIFEQ                         R0 R2 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        3 GETTABLEKS                       R2 R2 K1 ["AvatarAnimations"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

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
       24 JUMP                             ; [+46]
       25 GETIMPORT                        R7 K10 [table.find]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K11 ["MAKEUP_ASSET_TYPES"]
       30 GETIMPORT                        R10 K14 [Enum.AssetType]
       32 GETTABLE                         R9 R10 R6
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 GETIMPORT                        R8 K14 [Enum.AssetType]
       37 GETTABLE                         R7 R8 R6
       38 GETTABLEKS                       R7 R7 K15 ["Name"]
       40 NEWTABLE                         R8 0 0
       42 SETTABLE                         R8 R1 R7
       43 GETIMPORT                        R7 K10 [table.find]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K16 ["ASSET_TYPES_2D"]
       48 GETIMPORT                        R10 K14 [Enum.AssetType]
       50 GETTABLE                         R9 R10 R6
       51 CALL                             R7 2 1
       52 JUMPIF                           R7 ; [+18]
       53 GETIMPORT                        R7 K10 [table.find]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K17 ["BODY_PARTS"]
       58 GETIMPORT                        R10 K14 [Enum.AssetType]
       60 GETTABLE                         R9 R10 R6
       61 CALL                             R7 2 1
       62 JUMPIF                           R7 ; [+8]
       63 GETIMPORT                        R8 K14 [Enum.AssetType]
       65 GETTABLE                         R7 R8 R6
       66 GETTABLEKS                       R7 R7 K15 ["Name"]
       68 NEWTABLE                         R8 0 0
       70 SETTABLE                         R8 R1 R7
       71 CLOSEUPVALS                      R6
       72 FORGLOOP                         R2 2 [inext] ; [-66]
       74 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R1 0
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R0 K1 ["Name"]
       16 GETTABLE                         R2 R3 R4
       17 NOT                              R1 R2
       18 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+14]
       13 LOADB                            R1 0
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R0 ; [+10]
       17 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K5 [math.floor]
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R0 R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+2]
        3 LOADNIL                          R4
        4 RETURN                           R4 1
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+5]
        7 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        9 JUMPIFEQKB                       R2 TRUE ; [+3]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["isUsablePublishingFee"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIF                           R4 ; [+12]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K1 ["shouldDebugWarnings"]
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETIMPORT                        R4 K3 [warn]
       26 LOADK                            R5 K4 ["Dropping the publish on approval opt in: the publishing fee is unusable:"]
       27 MOVE                             R6 R3
       28 CALL                             R4 2 0
       29 LOADNIL                          R4
       30 RETURN                           R4 1
       31 GETUPVAL                         R4 3
       32 DUPTABLE                         R6 K8 [{["publishOnApproval"] = True, ["agreedPublishingFee"]}]
       33 SETTABLEKS                       R3 R6 K7 ["agreedPublishingFee"]
       35 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+3]
        7 LOADN                            R1 0
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["publishOnApprovalEnabled"]
       11 JUMPIFNOTEQKB                    R1 TRUE ; [+13]
       13 GETTABLEKS                       R1 R0 K1 ["publishOnApprovalToggled"]
       15 JUMPIFNOTEQKB                    R1 TRUE ; [+9]
       17 GETTABLEKS                       R1 R0 K2 ["hasPublishingPreferences"]
       19 JUMPIFNOTEQKB                    R1 TRUE ; [+5]
       21 GETTABLEKS                       R1 R0 K3 ["hasPublishingFeePreview"]
       23 JUMPIFEQKB                       R1 TRUE ; [+3]
       25 LOADN                            R1 0
       26 RETURN                           R1 1
       27 GETTABLEKS                       R1 R0 K4 ["publishingFeePreview"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K5 ["isUsablePublishingFee"]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 JUMPIF                           R2 ; [+2]
       35 LOADN                            R2 0
       36 RETURN                           R2 1
       37 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 ORK                              R2 R0 K0 [0]
        4 RETURN                           R2 1
        5 ORK                              R3 R0 K0 [0]
        6 ORK                              R4 R1 K0 [0]
        7 ADD                              R2 R3 R4
        8 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AssetConfig"]
        2 MOVE                             R5 R0
        3 DUPTABLE                         R6 K2 [{"amount"}]
        4 GETUPVAL                         R8 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R10 R1
        7 GETIMPORT                        R9 K4 [tostring]
        9 CALL                             R9 1 1
       10 CONCAT                           R7 R8 R9
       11 SETTABLEKS                       R7 R6 K1 ["amount"]
       13 NAMECALL                         R2 R2 K5 ["getText"]
       15 CALL                             R2 4 -1
       16 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADK                            R3 K0 [""]
        4 RETURN                           R3 1
        5 FASTCALL1                        TONUMBER R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K3 [tonumber]
        9 CALL                             R4 1 1
       10 ORK                              R3 R4 K1 [0]
       11 FASTCALL1                        TONUMBER R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K3 [tonumber]
       15 CALL                             R5 1 1
       16 ORK                              R4 R5 K1 [0]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 GETIMPORT                        R6 K6 [table.concat]
       22 NEWTABLE                         R7 0 3
       24 LOADK                            R10 K7 ["AssetConfig"]
       25 LOADK                            R11 K8 ["PayAndConfirmUploadFee"]
       26 DUPTABLE                         R12 K10 [{"amount"}]
       27 GETUPVAL                         R14 1
       28 FASTCALL1                        TOSTRING R3 ; [+3]
       29 MOVE                             R16 R3
       30 GETIMPORT                        R15 K12 [tostring]
       32 CALL                             R15 1 1
       33 CONCAT                           R13 R14 R15
       34 SETTABLEKS                       R13 R12 K9 ["amount"]
       36 NAMECALL                         R8 R0 K13 ["getText"]
       38 CALL                             R8 4 1
       39 LOADK                            R11 K7 ["AssetConfig"]
       40 LOADK                            R12 K14 ["PayAndConfirmPublishingFee"]
       41 DUPTABLE                         R13 K10 [{"amount"}]
       42 GETUPVAL                         R15 1
       43 FASTCALL1                        TOSTRING R4 ; [+3]
       44 MOVE                             R17 R4
       45 GETIMPORT                        R16 K12 [tostring]
       47 CALL                             R16 1 1
       48 CONCAT                           R14 R15 R16
       49 SETTABLEKS                       R14 R13 K9 ["amount"]
       51 NAMECALL                         R9 R0 K13 ["getText"]
       53 CALL                             R9 4 1
       54 MOVE                             R10 R5
       55 LOADK                            R11 K15 ["PayAndConfirmTotal"]
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R12 R12 K16 ["getSubmitTotal"]
       59 MOVE                             R13 R3
       60 MOVE                             R14 R4
       61 CALL                             R12 2 -1
       62 CALL                             R10 -1 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 LOADK                            R8 K17 ["\n"]
       66 CALL                             R6 2 -1
       67 RETURN                           R6 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R2 K0 [""]
        4 RETURN                           R2 1
        5 JUMPIFEQKNIL                     R0 ; [+9]
        7 LOADK                            R3 K1 ["&groupId="]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K3 [tostring]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1
       15 JUMPIFEQKNIL                     R1 ; [+12]
       17 LOADN                            R2 0
       18 JUMPIFNOTLT                      R2 R1 ; [+9]
       20 LOADK                            R3 K4 ["&userId="]
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R5 R1
       23 GETIMPORT                        R4 K3 [tostring]
       25 CALL                             R4 1 1
       26 CONCAT                           R2 R3 R4
       27 RETURN                           R2 1
       28 LOADK                            R2 K0 [""]
       29 RETURN                           R2 1

PROTO_20:
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

PROTO_21:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+18]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["MAKEUP_ASSET_TYPES"]
        7 JUMPIFEQKNIL                     R2 ; [+12]
        9 GETIMPORT                        R2 K3 [table.find]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["MAKEUP_ASSET_TYPES"]
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 LOADB                            R1 0
        4 JUMPIFEQKNIL                     R0 ; [+12]
        6 GETIMPORT                        R2 K2 [table.find]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["AVATAR_ITEM_UPDATE_ASSET_TYPES"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Toolbox_MakeupThumbnailSkinColor"]
        4 NAMECALL                         R1 R0 K1 ["GetSetting"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 FASTCALL1                        TYPE R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K3 [type]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETIMPORT                        R2 K6 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CALL                             R2 1 2
       23 JUMPIFNOT                        R2 ; [+3]
       24 JUMPIFNOT                        R3 ; [+2]
       25 MOVE                             R4 R3
       26 RETURN                           R4 1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 DUPTABLE                         R2 K3 [{"r", "g", "b"}]
        4 GETTABLEKS                       R3 R1 K4 ["R"]
        6 SETTABLEKS                       R3 R2 K0 ["r"]
        8 GETTABLEKS                       R3 R1 K5 ["G"]
       10 SETTABLEKS                       R3 R2 K1 ["g"]
       12 GETTABLEKS                       R3 R1 K6 ["B"]
       14 SETTABLEKS                       R3 R2 K2 ["b"]
       16 LOADK                            R5 K7 ["Toolbox_MakeupThumbnailSkinColor"]
       17 GETUPVAL                         R6 0
       18 MOVE                             R8 R2
       19 NAMECALL                         R6 R6 K8 ["JSONEncode"]
       21 CALL                             R6 2 -1
       22 NAMECALL                         R3 R0 K9 ["SetSetting"]
       24 CALL                             R3 -1 0
       25 RETURN                           R0 0

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADK                            R4 K0 ["ThumbnailConfiguration"]
        4 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+14]
        8 LOADK                            R5 K2 ["SkinColorValue"]
        9 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+19]
       13 LOADK                            R6 K3 ["Color3Value"]
       14 NAMECALL                         R4 R3 K4 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+14]
       18 SETTABLEKS                       R1 R3 K5 ["Value"]
       20 RETURN                           R0 0
       21 JUMP                             ; [+10]
       22 GETIMPORT                        R3 K8 [Instance.new]
       24 LOADK                            R4 K9 ["Configuration"]
       25 CALL                             R3 1 1
       26 MOVE                             R2 R3
       27 LOADK                            R3 K0 ["ThumbnailConfiguration"]
       28 SETTABLEKS                       R3 R2 K10 ["Name"]
       30 SETTABLEKS                       R0 R2 K11 ["Parent"]
       32 GETIMPORT                        R3 K8 [Instance.new]
       34 LOADK                            R4 K3 ["Color3Value"]
       35 CALL                             R3 1 1
       36 LOADK                            R4 K2 ["SkinColorValue"]
       37 SETTABLEKS                       R4 R3 K10 ["Name"]
       39 SETTABLEKS                       R1 R3 K5 ["Value"]
       41 SETTABLEKS                       R2 R3 K11 ["Parent"]
       43 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GENRE_TYPE"]
        3 RETURN                           R0 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 NEWTABLE                         R2 0 1
        2 DUPTABLE                         R3 K4 [{[1], ["creatorType"] = "User", ["creatorId"]}]
        3 LOADK                            R6 K5 ["General"]
        4 LOADK                            R7 K6 ["Me"]
        5 NAMECALL                         R4 R1 K7 ["getText"]
        7 CALL                             R4 3 1
        8 SETTABLEKS                       R4 R3 K0 ["name"]
       10 GETUPVAL                         R4 0
       11 CALL                             R4 0 1
       12 SETTABLEKS                       R4 R3 K3 ["creatorId"]
       14 SETLIST                          R2 R3 1 [1]
       16 GETIMPORT                        R3 K9 [ipairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_INEXT                   R3
       21 DUPTABLE                         R10 K12 [{[1], ["creatorId"], ["creatorType"] = "Group", ["item"]}]
       22 GETTABLEKS                       R11 R7 K0 ["name"]
       24 SETTABLEKS                       R11 R10 K0 ["name"]
       26 GETTABLEKS                       R11 R7 K13 ["id"]
       28 SETTABLEKS                       R11 R10 K3 ["creatorId"]
       30 SETTABLEKS                       R7 R10 K11 ["item"]
       32 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       34 MOVE                             R9 R2
       35 GETIMPORT                        R8 K16 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 2 [inext] ; [-18]
       40 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 NAMECALL                         R0 R0 K0 ["Clone"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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
       17 JUMPIFNOTEQ                      R3 R5 ; [+13]
       19 MOVE                             R6 R4
       20 LOADK                            R9 K4 ["AssetConfig"]
       21 LOADK                            R10 K5 ["BodyScaleValidationErrorUnknown"]
       22 DUPTABLE                         R11 K8 [{["scaleTypes"] = "AvatarPartScaleType: Classic | ProportionsNormal | ProportionsSlender"}]
       23 NAMECALL                         R7 R1 K9 ["getText"]
       25 CALL                             R7 4 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R5 K12 [table.insert]
       29 CALL                             R5 -1 0
       30 RETURN                           R4 1
       31 JUMPIFNOTEQKNIL                  R2 ; [+12]
       33 MOVE                             R6 R4
       34 LOADK                            R9 K4 ["AssetConfig"]
       35 LOADK                            R10 K13 ["BodyScaleValidationErrorHumanoidMissing"]
       36 NAMECALL                         R7 R1 K9 ["getText"]
       38 CALL                             R7 3 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R5 K12 [table.insert]
       42 CALL                             R5 -1 0
       43 RETURN                           R4 1
       44 MOVE                             R5 R2
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K14 ["BodyScaleDefaults"]
       51 GETTABLE                         R11 R12 R3
       52 GETTABLE                         R10 R11 R8
       53 JUMPIFEQ                         R9 R10 ; [+25]
       55 MOVE                             R12 R4
       56 LOADK                            R15 K4 ["AssetConfig"]
       57 LOADK                            R16 K15 ["BodyScaleValidationErrorNotDefaultValue"]
       58 DUPTABLE                         R17 K19 [{"scaleName", "defaultValue", "scaleType"}]
       59 GETUPVAL                         R19 1
       60 GETTABLEKS                       R19 R19 K20 ["bodyScaleNameToString"]
       62 GETTABLE                         R18 R19 R8
       63 SETTABLEKS                       R18 R17 K16 ["scaleName"]
       65 SETTABLEKS                       R10 R17 K17 ["defaultValue"]
       67 LOADK                            R19 K21 ["AvatarPartScaleType "]
       68 MOVE                             R20 R3
       69 CONCAT                           R18 R19 R20
       70 SETTABLEKS                       R18 R17 K18 ["scaleType"]
       72 NAMECALL                         R13 R1 K9 ["getText"]
       74 CALL                             R13 4 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R11 K12 [table.insert]
       78 CALL                             R11 -1 0
       79 FORGLOOP                         R5 2 ; [-32]
       81 RETURN                           R4 1

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypeStringToEnumeration"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_52:
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

PROTO_53:
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
       19 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       21 JUMPIFNOT                        R1 ; [+12]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       25 LOADNIL                          R2
       26 LOADNIL                          R3
       27 FORGPREP                         R1
       28 JUMPIFNOTEQ                      R0 R5 ; [+3]
       30 LOADB                            R6 0
       31 RETURN                           R6 1
       32 FORGLOOP                         R1 2 ; [-5]
       34 LOADB                            R1 1
       35 RETURN                           R1 1

PROTO_54:
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

PROTO_55:
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
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       42 GETTABLEKS                       R2 R2 K9 ["AvatarAnimations"]
       44 JUMPIFNOTEQ                      R0 R2 ; [+7]
       46 LOADK                            R4 K2 ["AssetConfig"]
       47 LOADK                            R5 K10 ["UGCAvatarAnimationsBundleName"]
       48 NAMECALL                         R2 R1 K4 ["getText"]
       50 CALL                             R2 3 -1
       51 RETURN                           R2 -1
       52 LOADK                            R2 K11 [""]
       53 RETURN                           R2 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["isAnimationBundleType"]
       17 MOVE                             R6 R2
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K4 ["UGC_AVATAR_ANIMATIONS_PARTS"]
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       27 GETTABLEKS                       R5 R5 K6 ["join"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["UGC_BODY_PARTS"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K8 ["UGC_BUNDLE_PARTS"]
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R4
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K3 ["isAnimationBundleType"]
       46 MOVE                             R13 R2
       47 CALL                             R12 1 1
       48 JUMPIFNOT                        R12 ; [+7]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R11 R11 K9 ["resolveBundlePartContainer"]
       52 MOVE                             R12 R0
       53 MOVE                             R13 R10
       54 CALL                             R11 2 1
       55 JUMP                             ; [+4]
       56 MOVE                             R13 R10
       57 NAMECALL                         R11 R0 K10 ["FindFirstChild"]
       59 CALL                             R11 2 1
       60 JUMPIFEQKNIL                     R11 ; [+55]
       62 LOADNIL                          R12
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K3 ["isAnimationBundleType"]
       66 MOVE                             R14 R2
       67 CALL                             R13 1 1
       68 JUMPIFNOT                        R13 ; [+5]
       69 GETUPVAL                         R13 1
       70 GETTABLEKS                       R13 R13 K11 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       72 GETTABLE                         R12 R13 R9
       73 JUMP                             ; [+15]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K12 ["isUGCBodyBundleType"]
       77 MOVE                             R14 R2
       78 CALL                             R13 1 1
       79 JUMPIFNOT                        R13 ; [+5]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R13 R13 K13 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       83 GETTABLE                         R12 R13 R9
       84 JUMP                             ; [+4]
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R13 R13 K14 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       88 GETTABLE                         R12 R13 R9
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K15 ["isAllowedUGCAssetType"]
       92 MOVE                             R14 R12
       93 MOVE                             R15 R3
       94 CALL                             R13 2 1
       95 JUMPIFNOT                        R13 ; [+20]
       96 GETTABLE                         R13 R5 R12
       97 JUMPIFNOTEQKNIL                  R13 ; [+8]
       99 NEWTABLE                         R13 0 1
      101 MOVE                             R14 R11
      102 SETLIST                          R13 R14 1 [1]
      104 SETTABLE                         R13 R5 R12
      105 JUMP                             ; [+10]
      106 GETUPVAL                         R13 4
      107 GETTABLEKS                       R13 R13 K16 ["append"]
      109 GETTABLE                         R14 R5 R12
      110 NEWTABLE                         R15 0 1
      112 MOVE                             R16 R11
      113 SETLIST                          R15 R16 1 [1]
      115 CALL                             R13 2 0
      116 FORGLOOP                         R6 2 ; [-74]
      118 RETURN                           R5 1

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["GetDependencyContentIds"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 FASTCALL1                        TYPE R8 ; [+3]
       11 MOVE                             R10 R8
       12 GETIMPORT                        R9 K2 [type]
       14 CALL                             R9 1 1
       15 JUMPIFNOTEQKS                    R9 K3 ["string"] ; [+9]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K4 ["parseDependencyContentIdToAssetIdString"]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADB                            R10 1
       24 SETTABLE                         R10 R3 R9
       25 FORGLOOP                         R4 2 ; [-16]
       27 NEWTABLE                         R4 0 0
       29 MOVE                             R5 R3
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 FASTCALL1                        TONUMBER R8 ; [+3]
       34 MOVE                             R13 R8
       35 GETIMPORT                        R12 K6 [tonumber]
       37 CALL                             R12 1 1
       38 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       40 MOVE                             R11 R4
       41 GETIMPORT                        R10 K9 [table.insert]
       43 CALL                             R10 2 0
       44 FORGLOOP                         R5 2 ; [-12]
       46 RETURN                           R4 1

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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
      153 GETTABLEKS                       R25 R1 K40 ["AvatarAnimationBundleUtil"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K6 [require]
      158 GETTABLEKS                       R26 R0 K3 ["Src"]
      160 GETTABLEKS                       R26 R26 K36 ["Flags"]
      162 GETTABLEKS                       R26 R26 K41 ["getFFlagUsePublishMarketplaceActionType"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K6 [require]
      167 GETTABLEKS                       R27 R0 K3 ["Src"]
      169 GETTABLEKS                       R27 R27 K36 ["Flags"]
      171 GETTABLEKS                       R27 R27 K42 ["getFFlagToolboxPublishOnApproval"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K6 [require]
      176 GETTABLEKS                       R28 R0 K3 ["Src"]
      178 GETTABLEKS                       R28 R28 K36 ["Flags"]
      180 GETTABLEKS                       R28 R28 K43 ["getFFlagEnableUpdateAvatarItem"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K24 [game]
      185 LOADK                            R30 K44 ["HttpService"]
      186 NAMECALL                         R28 R28 K45 ["GetService"]
      188 CALL                             R28 2 1
      189 GETIMPORT                        R29 K24 [game]
      191 LOADK                            R31 K46 ["StudioService"]
      192 NAMECALL                         R29 R29 K45 ["GetService"]
      194 CALL                             R29 2 1
      195 DUPCLOSURE                       R30 K47 [PROTO_0]
      196 NEWTABLE                         R31 128 0
      198 DUPCLOSURE                       R32 K48 [PROTO_1]
      199 CAPTURE                          VAL R3
      200 SETTABLEKS                       R32 R31 K49 ["isUGCBundleType"]
      202 DUPCLOSURE                       R32 K50 [PROTO_2]
      203 CAPTURE                          VAL R3
      204 SETTABLEKS                       R32 R31 K51 ["isUGCBodyBundleType"]
      206 DUPCLOSURE                       R32 K52 [PROTO_3]
      207 CAPTURE                          VAL R3
      208 SETTABLEKS                       R32 R31 K53 ["isAnimationBundleType"]
      210 DUPCLOSURE                       R32 K54 [PROTO_4]
      211 CAPTURE                          VAL R3
      212 SETTABLEKS                       R32 R31 K55 ["isReadyForSale"]
      214 DUPCLOSURE                       R32 K56 [PROTO_5]
      215 CAPTURE                          VAL R3
      216 SETTABLEKS                       R32 R31 K57 ["isOnSale"]
      218 DUPCLOSURE                       R32 K58 [PROTO_6]
      219 CAPTURE                          VAL R3
      220 SETTABLEKS                       R32 R31 K59 ["isBuyableMarketplaceAsset"]
      222 DUPCLOSURE                       R32 K60 [PROTO_8]
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R3
      225 SETTABLEKS                       R32 R31 K61 ["filterAllowedAssetTypesForRelease"]
      227 DUPCLOSURE                       R32 K62 [PROTO_9]
      228 CAPTURE                          VAL R11
      229 SETTABLEKS                       R32 R31 K63 ["hasAllowedAssetTypesForRelease"]
      231 DUPCLOSURE                       R32 K64 [PROTO_10]
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R12
      235 SETTABLEKS                       R32 R31 K65 ["promptImagePicker"]
      237 DUPCLOSURE                       R32 K66 [PROTO_11]
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R32 R31 K67 ["isCatalogAsset"]
      241 GETIMPORT                        R32 K70 [utf8.char]
      243 LOADK                            R33 K71 [57346]
      244 CALL                             R32 1 1
      245 DUPTABLE                         R33 K77 [{["TShirt"] = True, ["Shirt"] = True, ["Pants"] = True, ["AvatarBackground"] = True}]
      246 DUPCLOSURE                       R34 K78 [PROTO_12]
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R33
      250 SETTABLEKS                       R34 R31 K79 ["canAutoPublishAvatarAssetType"]
      252 LOADK                            R34 K80 ["EncryptedCreationContext"]
      253 SETTABLEKS                       R34 R31 K81 ["ENCRYPTED_CREATION_CONTEXT_KEY"]
      255 DUPCLOSURE                       R34 K82 [PROTO_13]
      256 CAPTURE                          VAL R26
      257 SETTABLEKS                       R34 R31 K83 ["isUsablePublishingFee"]
      259 DUPCLOSURE                       R34 K84 [PROTO_14]
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R31
      262 CAPTURE                          VAL R16
      263 CAPTURE                          VAL R28
      264 SETTABLEKS                       R34 R31 K85 ["getPublishOnApprovalCreationContext"]
      266 DUPCLOSURE                       R34 K86 [PROTO_15]
      267 CAPTURE                          VAL R26
      268 CAPTURE                          VAL R31
      269 SETTABLEKS                       R34 R31 K87 ["getPublishOnApprovalFee"]
      271 DUPCLOSURE                       R34 K88 [PROTO_16]
      272 CAPTURE                          VAL R26
      273 SETTABLEKS                       R34 R31 K89 ["getSubmitTotal"]
      275 DUPCLOSURE                       R34 K90 [PROTO_18]
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R32
      278 CAPTURE                          VAL R31
      279 SETTABLEKS                       R34 R31 K91 ["getItemizedFeeDescription"]
      281 DUPCLOSURE                       R34 K92 [PROTO_19]
      282 CAPTURE                          VAL R26
      283 SETTABLEKS                       R34 R31 K93 ["getCreatorQueryParam"]
      285 DUPCLOSURE                       R34 K94 [PROTO_20]
      286 CAPTURE                          VAL R3
      287 SETTABLEKS                       R34 R31 K95 ["isMarketplaceAsset"]
      289 DUPCLOSURE                       R34 K96 [PROTO_21]
      290 CAPTURE                          VAL R3
      291 SETTABLEKS                       R34 R31 K97 ["isMakeupAsset"]
      293 DUPCLOSURE                       R34 K98 [PROTO_22]
      294 CAPTURE                          VAL R27
      295 CAPTURE                          VAL R3
      296 SETTABLEKS                       R34 R31 K99 ["isAvatarItemUpdateSupported"]
      298 DUPCLOSURE                       R34 K100 [PROTO_24]
      299 CAPTURE                          VAL R28
      300 SETTABLEKS                       R34 R31 K101 ["getThumbnailSkinColor"]
      302 DUPCLOSURE                       R34 K102 [PROTO_25]
      303 CAPTURE                          VAL R28
      304 SETTABLEKS                       R34 R31 K103 ["setThumbnailSkinColor"]
      306 DUPCLOSURE                       R34 K104 [PROTO_26]
      307 SETTABLEKS                       R34 R31 K105 ["addMakeupThumbnailConfiguration"]
      309 DUPCLOSURE                       R34 K106 [PROTO_27]
      310 CAPTURE                          VAL R31
      311 SETTABLEKS                       R34 R31 K107 ["isCreatorStoreAssetNotIncludingAnimation"]
      313 DUPCLOSURE                       R34 K108 [PROTO_28]
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R31
      316 SETTABLEKS                       R34 R31 K109 ["getFlowStartScreen"]
      318 DUPCLOSURE                       R34 K110 [PROTO_29]
      319 CAPTURE                          VAL R3
      320 SETTABLEKS                       R34 R31 K111 ["getGenreTypes"]
      322 DUPCLOSURE                       R34 K112 [PROTO_30]
      323 CAPTURE                          VAL R3
      324 SETTABLEKS                       R34 R31 K113 ["getGenreIndex"]
      326 DUPCLOSURE                       R34 K114 [PROTO_31]
      327 CAPTURE                          VAL R3
      328 SETTABLEKS                       R34 R31 K115 ["getGenreName"]
      330 DUPCLOSURE                       R34 K116 [PROTO_32]
      331 CAPTURE                          VAL R5
      332 SETTABLEKS                       R34 R31 K117 ["getOwnerDropDownContent"]
      334 DUPCLOSURE                       R34 K118 [PROTO_34]
      335 SETTABLEKS                       R34 R31 K119 ["getClonedInstances"]
      337 DUPCLOSURE                       R34 K120 [PROTO_35]
      338 CAPTURE                          VAL R3
      339 CAPTURE                          VAL R31
      340 CAPTURE                          VAL R13
      341 SETTABLEKS                       R34 R31 K121 ["getPreviewType"]
      343 DUPCLOSURE                       R34 K122 [PROTO_36]
      344 CAPTURE                          VAL R6
      345 CAPTURE                          VAL R3
      346 SETTABLEKS                       R34 R31 K123 ["getResultThumbnail"]
      348 DUPCLOSURE                       R34 K124 [PROTO_37]
      349 CAPTURE                          VAL R14
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R31
      352 SETTABLEKS                       R34 R31 K125 ["isPackagePublishAllowed"]
      354 DUPCLOSURE                       R34 K126 [PROTO_38]
      355 SETTABLEKS                       R34 R31 K127 ["isPackage"]
      357 DUPCLOSURE                       R34 K128 [PROTO_39]
      358 CAPTURE                          VAL R31
      359 SETTABLEKS                       R34 R31 K129 ["getUGCBodyBundleAssetQuantities"]
      361 DUPCLOSURE                       R34 K130 [PROTO_41]
      362 CAPTURE                          VAL R19
      363 SETTABLEKS                       R34 R31 K131 ["getBodyScaleValues"]
      365 MOVE                             R34 R19
      366 CALL                             R34 0 1
      367 JUMPIFNOT                        R34 ; [+9]
      368 DUPCLOSURE                       R34 K132 [PROTO_42]
      369 CAPTURE                          VAL R3
      370 SETTABLEKS                       R34 R31 K133 ["getBodyScaleType"]
      372 DUPCLOSURE                       R34 K134 [PROTO_43]
      373 CAPTURE                          VAL R31
      374 CAPTURE                          VAL R3
      375 SETTABLEKS                       R34 R31 K135 ["ValidateScaleSettings"]
      377 DUPCLOSURE                       R34 K136 [PROTO_44]
      378 CAPTURE                          VAL R20
      379 SETTABLEKS                       R34 R31 K137 ["getBodyColorSet"]
      381 MOVE                             R34 R21
      382 CALL                             R34 0 1
      383 JUMPIFNOT                        R34 ; [+4]
      384 DUPCLOSURE                       R34 K138 [PROTO_45]
      385 CAPTURE                          VAL R31
      386 SETTABLEKS                       R34 R31 K139 ["ValidateBodyColors"]
      388 MOVE                             R34 R19
      389 CALL                             R34 0 1
      390 JUMPIF                           R34 ; [+3]
      391 MOVE                             R34 R21
      392 CALL                             R34 0 1
      393 JUMPIFNOT                        R34 ; [+6]
      394 DUPCLOSURE                       R34 K140 [PROTO_46]
      395 CAPTURE                          VAL R19
      396 CAPTURE                          VAL R31
      397 CAPTURE                          VAL R21
      398 SETTABLEKS                       R34 R31 K141 ["ValidateBody"]
      400 DUPCLOSURE                       R34 K142 [PROTO_47]
      401 CAPTURE                          VAL R3
      402 SETTABLEKS                       R34 R31 K143 ["getUGCBundleTypeFromString"]
      404 DUPCLOSURE                       R34 K144 [PROTO_48]
      405 CAPTURE                          VAL R8
      406 SETTABLEKS                       R34 R31 K145 ["getAllowedAssetTypeSettingsForBundle"]
      408 DUPCLOSURE                       R34 K146 [PROTO_49]
      409 CAPTURE                          VAL R31
      410 CAPTURE                          VAL R3
      411 SETTABLEKS                       R34 R31 K147 ["getAllowedAssetTypeEnumsForBundle"]
      413 DUPCLOSURE                       R34 K148 [PROTO_50]
      414 CAPTURE                          VAL R31
      415 CAPTURE                          VAL R3
      416 SETTABLEKS                       R34 R31 K149 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
      418 DUPCLOSURE                       R34 K150 [PROTO_51]
      419 SETTABLEKS                       R34 R31 K151 ["isAllowedUGCAssetType"]
      421 DUPCLOSURE                       R34 K152 [PROTO_52]
      422 CAPTURE                          VAL R31
      423 CAPTURE                          VAL R3
      424 CAPTURE                          VAL R10
      425 SETTABLEKS                       R34 R31 K153 ["getUGCBodyPartsAssetTypeMap"]
      427 DUPCLOSURE                       R34 K154 [PROTO_53]
      428 CAPTURE                          VAL R3
      429 SETTABLEKS                       R34 R31 K155 ["AssetTypeRequiresFolderForUpload"]
      431 DUPCLOSURE                       R34 K156 [PROTO_54]
      432 CAPTURE                          VAL R31
      433 SETTABLEKS                       R34 R31 K157 ["createUGCBodyPartFolders"]
      435 DUPCLOSURE                       R34 K158 [PROTO_55]
      436 CAPTURE                          VAL R3
      437 SETTABLEKS                       R34 R31 K159 ["getLocalizedUGCBundleName"]
      439 DUPCLOSURE                       R34 K160 [PROTO_56]
      440 CAPTURE                          VAL R4
      441 SETTABLEKS                       R34 R31 K161 ["sanitizeForValidation"]
      443 DUPCLOSURE                       R34 K162 [PROTO_57]
      444 CAPTURE                          VAL R31
      445 SETTABLEKS                       R34 R31 K163 ["getOptionalAssetTypesForBundle"]
      447 DUPCLOSURE                       R34 K164 [PROTO_58]
      448 CAPTURE                          VAL R31
      449 SETTABLEKS                       R34 R31 K165 ["getOptionalBodyPartsNotFound"]
      451 DUPCLOSURE                       R34 K166 [PROTO_59]
      452 CAPTURE                          VAL R31
      453 SETTABLEKS                       R34 R31 K167 ["getAllowedAssetTypesByBundleType"]
      455 DUPCLOSURE                       R34 K168 [PROTO_60]
      456 CAPTURE                          VAL R3
      457 SETTABLEKS                       R34 R31 K169 ["getUnknownMeshPartNames"]
      459 DUPCLOSURE                       R34 K170 [PROTO_61]
      460 CAPTURE                          VAL R31
      461 SETTABLEKS                       R34 R31 K171 ["getAvatarAssetTypeAsString"]
      463 DUPCLOSURE                       R34 K172 [PROTO_62]
      464 CAPTURE                          VAL R31
      465 CAPTURE                          VAL R3
      466 CAPTURE                          VAL R8
      467 CAPTURE                          VAL R24
      468 CAPTURE                          VAL R10
      469 SETTABLEKS                       R34 R31 K173 ["getUGCBundlePartsAssetTypeMap"]
      471 DUPCLOSURE                       R34 K174 [PROTO_63]
      472 CAPTURE                          VAL R31
      473 SETTABLEKS                       R34 R31 K175 ["getUGCBundleAssetQuantities"]
      475 DUPCLOSURE                       R34 K176 [PROTO_64]
      476 CAPTURE                          VAL R31
      477 CAPTURE                          VAL R3
      478 CAPTURE                          VAL R10
      479 SETTABLEKS                       R34 R31 K177 ["createUGCShoesPartFolders"]
      481 DUPCLOSURE                       R34 K178 [PROTO_65]
      482 CAPTURE                          VAL R31
      483 SETTABLEKS                       R34 R31 K179 ["shouldValidateAssetType"]
      485 DUPCLOSURE                       R34 K180 [PROTO_66]
      486 SETTABLEKS                       R34 R31 K181 ["getValidationFailuresAsString"]
      488 MOVE                             R34 R22
      489 CALL                             R34 0 1
      490 JUMPIFNOT                        R34 ; [+4]
      491 DUPCLOSURE                       R34 K182 [PROTO_67]
      492 CAPTURE                          VAL R2
      493 SETTABLEKS                       R34 R31 K183 ["getAssetIdsFromInstance"]
      495 DUPCLOSURE                       R34 K184 [PROTO_68]
      496 CAPTURE                          VAL R23
      497 SETTABLEKS                       R34 R31 K185 ["isAllowedAssetType"]
      499 DUPCLOSURE                       R34 K186 [PROTO_69]
      500 SETTABLEKS                       R34 R31 K187 ["normalizeAnimationAssetIdInput"]
      502 DUPCLOSURE                       R34 K188 [PROTO_70]
      503 SETTABLEKS                       R34 R31 K189 ["getValidationErrorText"]
      505 RETURN                           R31 1
