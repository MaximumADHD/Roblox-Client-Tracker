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
       16 JUMPIFNOT                        R7 ; [+9]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          REF R6
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R7 K7 [pcall]
       24 CALL                             R7 1 1
       25 JUMP                             ; [+46]
       26 GETIMPORT                        R7 K10 [table.find]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K11 ["MAKEUP_ASSET_TYPES"]
       31 GETIMPORT                        R10 K14 [Enum.AssetType]
       33 GETTABLE                         R9 R10 R6
       34 CALL                             R7 2 1
       35 JUMPIFNOT                        R7 ; [+8]
       36 GETIMPORT                        R8 K14 [Enum.AssetType]
       38 GETTABLE                         R7 R8 R6
       39 GETTABLEKS                       R7 R7 K15 ["Name"]
       41 NEWTABLE                         R8 0 0
       43 SETTABLE                         R8 R1 R7
       44 GETIMPORT                        R7 K10 [table.find]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K16 ["ASSET_TYPES_2D"]
       49 GETIMPORT                        R10 K14 [Enum.AssetType]
       51 GETTABLE                         R9 R10 R6
       52 CALL                             R7 2 1
       53 JUMPIF                           R7 ; [+18]
       54 GETIMPORT                        R7 K10 [table.find]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K17 ["BODY_PARTS"]
       59 GETIMPORT                        R10 K14 [Enum.AssetType]
       61 GETTABLE                         R9 R10 R6
       62 CALL                             R7 2 1
       63 JUMPIF                           R7 ; [+8]
       64 GETIMPORT                        R8 K14 [Enum.AssetType]
       66 GETTABLE                         R7 R8 R6
       67 GETTABLEKS                       R7 R7 K15 ["Name"]
       69 NEWTABLE                         R8 0 0
       71 SETTABLE                         R8 R1 R7
       72 CLOSEUPVALS                      R6
       73 FORGLOOP                         R2 2 [inext] ; [-67]
       75 RETURN                           R1 1

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
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["isUsablePublishingFee"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R1 0
       13 RETURN                           R1 1
       14 LOADB                            R1 0
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K2 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K3 ["number"] ; [+14]
       22 LOADB                            R1 0
       23 LOADN                            R2 0
       24 JUMPIFNOTLT                      R2 R0 ; [+10]
       26 FASTCALL1                        MATH_FLOOR R0 ; [+3]
       27 MOVE                             R3 R0
       28 GETIMPORT                        R2 K6 [math.floor]
       30 CALL                             R2 1 1
       31 JUMPIFEQ                         R0 R2 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+9]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getPublishOnApprovalCreationContext"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 CALL                             R4 4 -1
       11 RETURN                           R4 -1
       12 GETUPVAL                         R4 2
       13 CALL                             R4 0 1
       14 JUMPIF                           R4 ; [+2]
       15 LOADNIL                          R4
       16 RETURN                           R4 1
       17 JUMPIFNOTEQKB                    R0 TRUE ; [+5]
       19 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
       21 JUMPIFEQKB                       R2 TRUE ; [+3]
       23 LOADNIL                          R4
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K1 ["isUsablePublishingFee"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 JUMPIF                           R4 ; [+12]
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K2 ["shouldDebugWarnings"]
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+5]
       36 GETIMPORT                        R4 K4 [warn]
       38 LOADK                            R5 K5 ["Dropping the publish on approval opt in: the publishing fee is unusable:"]
       39 MOVE                             R6 R3
       40 CALL                             R4 2 0
       41 LOADNIL                          R4
       42 RETURN                           R4 1
       43 GETUPVAL                         R4 5
       44 DUPTABLE                         R6 K9 [{["publishOnApproval"] = True, ["agreedPublishingFee"]}]
       45 SETTABLEKS                       R3 R6 K8 ["agreedPublishingFee"]
       47 NAMECALL                         R4 R4 K10 ["JSONEncode"]
       49 CALL                             R4 2 -1
       50 RETURN                           R4 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getPublishOnApprovalFee"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADN                            R1 0
       13 RETURN                           R1 1
       14 JUMPIFNOTEQKNIL                  R0 ; [+3]
       16 LOADN                            R1 0
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K1 ["publishOnApprovalEnabled"]
       20 JUMPIFNOTEQKB                    R1 TRUE ; [+13]
       22 GETTABLEKS                       R1 R0 K2 ["publishOnApprovalToggled"]
       24 JUMPIFNOTEQKB                    R1 TRUE ; [+9]
       26 GETTABLEKS                       R1 R0 K3 ["hasPublishingPreferences"]
       28 JUMPIFNOTEQKB                    R1 TRUE ; [+5]
       30 GETTABLEKS                       R1 R0 K4 ["hasPublishingFeePreview"]
       32 JUMPIFEQKB                       R1 TRUE ; [+3]
       34 LOADN                            R1 0
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K5 ["publishingFeePreview"]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K6 ["isUsablePublishingFee"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 1
       43 JUMPIF                           R2 ; [+2]
       44 LOADN                            R2 0
       45 RETURN                           R2 1
       46 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getSubmitTotal"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIF                           R2 ; [+2]
       13 ORK                              R2 R0 K1 [0]
       14 RETURN                           R2 1
       15 ORK                              R3 R0 K1 [0]
       16 ORK                              R4 R1 K1 [0]
       17 ADD                              R2 R3 R4
       18 RETURN                           R2 1

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
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getItemizedFeeDescription"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADK                            R3 K1 [""]
       15 RETURN                           R3 1
       16 FASTCALL1                        TONUMBER R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K4 [tonumber]
       20 CALL                             R4 1 1
       21 ORK                              R3 R4 K2 [0]
       22 FASTCALL1                        TONUMBER R2 ; [+3]
       23 MOVE                             R6 R2
       24 GETIMPORT                        R5 K4 [tonumber]
       26 CALL                             R5 1 1
       27 ORK                              R4 R5 K2 [0]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 GETIMPORT                        R6 K7 [table.concat]
       33 NEWTABLE                         R7 0 3
       35 LOADK                            R10 K8 ["AssetConfig"]
       36 LOADK                            R11 K9 ["PayAndConfirmUploadFee"]
       37 DUPTABLE                         R12 K11 [{"amount"}]
       38 GETUPVAL                         R14 3
       39 FASTCALL1                        TOSTRING R3 ; [+3]
       40 MOVE                             R16 R3
       41 GETIMPORT                        R15 K13 [tostring]
       43 CALL                             R15 1 1
       44 CONCAT                           R13 R14 R15
       45 SETTABLEKS                       R13 R12 K10 ["amount"]
       47 NAMECALL                         R8 R0 K14 ["getText"]
       49 CALL                             R8 4 1
       50 LOADK                            R11 K8 ["AssetConfig"]
       51 LOADK                            R12 K15 ["PayAndConfirmPublishingFee"]
       52 DUPTABLE                         R13 K11 [{"amount"}]
       53 GETUPVAL                         R15 3
       54 FASTCALL1                        TOSTRING R4 ; [+3]
       55 MOVE                             R17 R4
       56 GETIMPORT                        R16 K13 [tostring]
       58 CALL                             R16 1 1
       59 CONCAT                           R14 R15 R16
       60 SETTABLEKS                       R14 R13 K10 ["amount"]
       62 NAMECALL                         R9 R0 K14 ["getText"]
       64 CALL                             R9 4 1
       65 MOVE                             R10 R5
       66 LOADK                            R11 K16 ["PayAndConfirmTotal"]
       67 GETUPVAL                         R12 4
       68 GETTABLEKS                       R12 R12 K17 ["getSubmitTotal"]
       70 MOVE                             R13 R3
       71 MOVE                             R14 R4
       72 CALL                             R12 2 -1
       73 CALL                             R10 -1 -1
       74 SETLIST                          R7 R8 -1 [1]
       76 LOADK                            R8 K18 ["\n"]
       77 CALL                             R6 2 -1
       78 RETURN                           R6 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getCreatorQueryParam"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADK                            R2 K1 [""]
       14 RETURN                           R2 1
       15 JUMPIFEQKNIL                     R0 ; [+9]
       17 LOADK                            R3 K2 ["&groupId="]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R5 R0
       20 GETIMPORT                        R4 K4 [tostring]
       22 CALL                             R4 1 1
       23 CONCAT                           R2 R3 R4
       24 RETURN                           R2 1
       25 JUMPIFEQKNIL                     R1 ; [+12]
       27 LOADN                            R2 0
       28 JUMPIFNOTLT                      R2 R1 ; [+9]
       30 LOADK                            R3 K5 ["&userId="]
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R5 R1
       33 GETIMPORT                        R4 K4 [tostring]
       35 CALL                             R4 1 1
       36 CONCAT                           R2 R3 R4
       37 RETURN                           R2 1
       38 LOADK                            R2 K1 [""]
       39 RETURN                           R2 1

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
        0 GETIMPORT                        R2 K3 [Enum.AssetType.TextDocument]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMarketplaceAsset"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["isTextDocumentAsset"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R1
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R2 K6 [pcall]
       23 CALL                             R2 1 2
       24 JUMPIFNOT                        R2 ; [+3]
       25 JUMPIFNOT                        R3 ; [+2]
       26 MOVE                             R4 R3
       27 RETURN                           R4 1
       28 LOADNIL                          R4
       29 RETURN                           R4 1

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GENRE_TYPE"]
        3 RETURN                           R0 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 NAMECALL                         R0 R0 K0 ["Clone"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_36:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R4
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R5 K1 [pcall]
       12 CALL                             R5 1 2
       13 LENGTH                           R8 R1
       14 ADDK                             R7 R8 K2 [1]
       15 JUMPIFNOT                        R5 ; [+2]
       16 MOVE                             R8 R6
       17 JUMPIF                           R8 ; [+1]
       18 LOADNIL                          R8
       19 SETTABLE                         R8 R1 R7
       20 FORNLOOP                         R2
       21 RETURN                           R1 1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getUGCBodyBundleAssetQuantities"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["getUGCBodyPartsAssetTypeMap"]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+3]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 NEWTABLE                         R4 0 0
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R10 R8 K2 ["Name"]
       30 GETTABLE                         R11 R4 R10
       31 JUMPIFEQKNIL                     R11 ; [+4]
       33 ADDK                             R12 R11 K3 [1]
       34 SETTABLE                         R12 R4 R10
       35 JUMP                             ; [+2]
       36 LOADN                            R12 1
       37 SETTABLE                         R12 R4 R10
       38 FORGLOOP                         R5 1 ; [-11]
       40 RETURN                           R4 1

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getBodyScaleValues"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       13 LOADK                            R3 K1 ["FFlagEnableUGCBundleUploadBodyScale is not enabled"]
       14 GETIMPORT                        R1 K3 [assert]
       16 CALL                             R1 2 0
       17 LOADK                            R3 K4 ["Humanoid"]
       18 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       20 CALL                             R1 2 1
       21 JUMPIFNOTEQKNIL                  R1 ; [+3]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R3 K11 [{"height", "width", "head", "bodyType", "proportion"}]
       28 LOADK                            R7 K12 ["BodyHeightScale"]
       29 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       31 CALL                             R5 2 1
       32 JUMPIFEQKNIL                     R5 ; [+9]
       34 LOADK                            R8 K13 ["NumberValue"]
       35 NAMECALL                         R6 R5 K14 ["IsA"]
       37 CALL                             R6 2 1
       38 JUMPIFNOT                        R6 ; [+3]
       39 GETTABLEKS                       R4 R5 K15 ["Value"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K6 ["height"]
       45 LOADK                            R7 K16 ["BodyWidthScale"]
       46 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       48 CALL                             R5 2 1
       49 JUMPIFEQKNIL                     R5 ; [+9]
       51 LOADK                            R8 K13 ["NumberValue"]
       52 NAMECALL                         R6 R5 K14 ["IsA"]
       54 CALL                             R6 2 1
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETTABLEKS                       R4 R5 K15 ["Value"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R4
       60 SETTABLEKS                       R4 R3 K7 ["width"]
       62 LOADK                            R7 K17 ["HeadScale"]
       63 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       65 CALL                             R5 2 1
       66 JUMPIFEQKNIL                     R5 ; [+9]
       68 LOADK                            R8 K13 ["NumberValue"]
       69 NAMECALL                         R6 R5 K14 ["IsA"]
       71 CALL                             R6 2 1
       72 JUMPIFNOT                        R6 ; [+3]
       73 GETTABLEKS                       R4 R5 K15 ["Value"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R4
       77 SETTABLEKS                       R4 R3 K8 ["head"]
       79 LOADK                            R7 K18 ["BodyTypeScale"]
       80 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       82 CALL                             R5 2 1
       83 JUMPIFEQKNIL                     R5 ; [+9]
       85 LOADK                            R8 K13 ["NumberValue"]
       86 NAMECALL                         R6 R5 K14 ["IsA"]
       88 CALL                             R6 2 1
       89 JUMPIFNOT                        R6 ; [+3]
       90 GETTABLEKS                       R4 R5 K15 ["Value"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K9 ["bodyType"]
       96 LOADK                            R7 K19 ["BodyProportionScale"]
       97 NAMECALL                         R5 R1 K5 ["FindFirstChild"]
       99 CALL                             R5 2 1
      100 JUMPIFEQKNIL                     R5 ; [+9]
      102 LOADK                            R8 K13 ["NumberValue"]
      103 NAMECALL                         R6 R5 K14 ["IsA"]
      105 CALL                             R6 2 1
      106 JUMPIFNOT                        R6 ; [+3]
      107 GETTABLEKS                       R4 R5 K15 ["Value"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R3 K10 ["proportion"]
      113 RETURN                           R3 1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getBodyScaleType"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 LOADK                            R3 K1 ["Head"]
       10 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+6]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["BodyScaleTypes"]
       17 GETTABLEKS                       R2 R2 K4 ["Unknown"]
       19 RETURN                           R2 1
       20 LOADK                            R4 K5 ["AvatarPartScaleType"]
       21 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+6]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K3 ["BodyScaleTypes"]
       28 GETTABLEKS                       R3 R3 K6 ["Classic"]
       30 RETURN                           R3 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K3 ["BodyScaleTypes"]
       34 GETTABLEKS                       R5 R2 K7 ["Value"]
       36 GETTABLE                         R3 R4 R5
       37 JUMPIF                           R3 ; [+6]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K3 ["BodyScaleTypes"]
       41 GETTABLEKS                       R4 R4 K4 ["Unknown"]
       43 RETURN                           R4 1
       44 RETURN                           R3 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["ValidateScaleSettings"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["getBodyScaleValues"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["getBodyScaleType"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 NEWTABLE                         R4 0 0
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K3 ["BodyScaleTypes"]
       25 GETTABLEKS                       R5 R5 K4 ["Unknown"]
       27 JUMPIFNOTEQ                      R3 R5 ; [+13]
       29 MOVE                             R6 R4
       30 LOADK                            R9 K5 ["AssetConfig"]
       31 LOADK                            R10 K6 ["BodyScaleValidationErrorUnknown"]
       32 DUPTABLE                         R11 K9 [{["scaleTypes"] = "AvatarPartScaleType: Classic | ProportionsNormal | ProportionsSlender"}]
       33 NAMECALL                         R7 R1 K10 ["getText"]
       35 CALL                             R7 4 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R5 K13 [table.insert]
       39 CALL                             R5 -1 0
       40 RETURN                           R4 1
       41 JUMPIFNOTEQKNIL                  R2 ; [+12]
       43 MOVE                             R6 R4
       44 LOADK                            R9 K5 ["AssetConfig"]
       45 LOADK                            R10 K14 ["BodyScaleValidationErrorHumanoidMissing"]
       46 NAMECALL                         R7 R1 K10 ["getText"]
       48 CALL                             R7 3 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R5 K13 [table.insert]
       52 CALL                             R5 -1 0
       53 RETURN                           R4 1
       54 MOVE                             R5 R2
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 GETUPVAL                         R12 3
       59 GETTABLEKS                       R12 R12 K15 ["BodyScaleDefaults"]
       61 GETTABLE                         R11 R12 R3
       62 GETTABLE                         R10 R11 R8
       63 JUMPIFEQ                         R9 R10 ; [+25]
       65 MOVE                             R12 R4
       66 LOADK                            R15 K5 ["AssetConfig"]
       67 LOADK                            R16 K16 ["BodyScaleValidationErrorNotDefaultValue"]
       68 DUPTABLE                         R17 K20 [{"scaleName", "defaultValue", "scaleType"}]
       69 GETUPVAL                         R19 3
       70 GETTABLEKS                       R19 R19 K21 ["bodyScaleNameToString"]
       72 GETTABLE                         R18 R19 R8
       73 SETTABLEKS                       R18 R17 K17 ["scaleName"]
       75 SETTABLEKS                       R10 R17 K18 ["defaultValue"]
       77 LOADK                            R19 K22 ["AvatarPartScaleType "]
       78 MOVE                             R20 R3
       79 CONCAT                           R18 R19 R20
       80 SETTABLEKS                       R18 R17 K19 ["scaleType"]
       82 NAMECALL                         R13 R1 K10 ["getText"]
       84 CALL                             R13 4 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R11 K13 [table.insert]
       88 CALL                             R11 -1 0
       89 FORGLOOP                         R5 2 ; [-32]
       91 RETURN                           R4 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getBodyColorSet"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 LOADK                            R3 K1 ["BodyColors"]
       10 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 DUPTABLE                         R2 K9 [{"headColor3", "torsoColor3", "leftArmColor3", "rightArmColor3", "leftLegColor3", "rightLegColor3"}]
       18 GETTABLEKS                       R4 R1 K10 ["HeadColor3"]
       20 NAMECALL                         R4 R4 K11 ["ToHex"]
       22 CALL                             R4 1 -1
       23 FASTCALL                         TOSTRING ; [+2]
       24 GETIMPORT                        R3 K13 [tostring]
       26 CALL                             R3 -1 1
       27 SETTABLEKS                       R3 R2 K3 ["headColor3"]
       29 GETTABLEKS                       R4 R1 K14 ["TorsoColor3"]
       31 NAMECALL                         R4 R4 K11 ["ToHex"]
       33 CALL                             R4 1 -1
       34 FASTCALL                         TOSTRING ; [+2]
       35 GETIMPORT                        R3 K13 [tostring]
       37 CALL                             R3 -1 1
       38 SETTABLEKS                       R3 R2 K4 ["torsoColor3"]
       40 GETTABLEKS                       R4 R1 K15 ["LeftArmColor3"]
       42 NAMECALL                         R4 R4 K11 ["ToHex"]
       44 CALL                             R4 1 -1
       45 FASTCALL                         TOSTRING ; [+2]
       46 GETIMPORT                        R3 K13 [tostring]
       48 CALL                             R3 -1 1
       49 SETTABLEKS                       R3 R2 K5 ["leftArmColor3"]
       51 GETTABLEKS                       R4 R1 K16 ["RightArmColor3"]
       53 NAMECALL                         R4 R4 K11 ["ToHex"]
       55 CALL                             R4 1 -1
       56 FASTCALL                         TOSTRING ; [+2]
       57 GETIMPORT                        R3 K13 [tostring]
       59 CALL                             R3 -1 1
       60 SETTABLEKS                       R3 R2 K6 ["rightArmColor3"]
       62 GETTABLEKS                       R4 R1 K17 ["LeftLegColor3"]
       64 NAMECALL                         R4 R4 K11 ["ToHex"]
       66 CALL                             R4 1 -1
       67 FASTCALL                         TOSTRING ; [+2]
       68 GETIMPORT                        R3 K13 [tostring]
       70 CALL                             R3 -1 1
       71 SETTABLEKS                       R3 R2 K7 ["leftLegColor3"]
       73 GETTABLEKS                       R4 R1 K18 ["RightLegColor3"]
       75 NAMECALL                         R4 R4 K11 ["ToHex"]
       77 CALL                             R4 1 -1
       78 FASTCALL                         TOSTRING ; [+2]
       79 GETIMPORT                        R3 K13 [tostring]
       81 CALL                             R3 -1 1
       82 SETTABLEKS                       R3 R2 K8 ["rightLegColor3"]
       84 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["ValidateBodyColors"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["getBodyColorSet"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+11]
       19 MOVE                             R5 R2
       20 LOADK                            R8 K2 ["AssetConfig"]
       21 LOADK                            R9 K3 ["UGCBodyValidationColorsError"]
       22 NAMECALL                         R6 R1 K4 ["getText"]
       24 CALL                             R6 3 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R4 K7 [table.insert]
       28 CALL                             R4 -1 0
       29 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["ValidateBody"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+19]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["ValidateScaleSettings"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 1
       21 MOVE                             R4 R3
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       27 MOVE                             R10 R2
       28 MOVE                             R11 R8
       29 GETIMPORT                        R9 K4 [table.insert]
       31 CALL                             R9 2 0
       32 FORGLOOP                         R4 2 ; [-8]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K5 ["ValidateBodyColors"]
       37 MOVE                             R4 R0
       38 MOVE                             R5 R1
       39 CALL                             R3 2 1
       40 MOVE                             R4 R3
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       46 MOVE                             R10 R2
       47 MOVE                             R11 R8
       48 GETIMPORT                        R9 K4 [table.insert]
       50 CALL                             R9 2 0
       51 FORGLOOP                         R4 2 ; [-8]
       53 RETURN                           R2 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUGCBundleTypeFromString"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["UGCBundleTypeStringToEnumeration"]
       12 GETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeSettingsForBundle"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 JUMPIFEQKNIL                     R1 ; [+6]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["None"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R1 K2 ["rawValue"]
       21 CALL                             R3 0 1
       22 GETTABLE                         R2 R0 R3
       23 GETTABLEKS                       R2 R2 K3 ["allowedAssetTypeSettings"]
       25 RETURN                           R2 1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundle"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["getAllowedAssetTypeSettingsForBundle"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 RETURN                           R2 1
       21 MOVE                             R4 R3
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K2 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       28 GETTABLE                         R9 R10 R7
       29 JUMPIFEQKNIL                     R9 ; [+8]
       31 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       33 MOVE                             R11 R2
       34 MOVE                             R12 R9
       35 GETIMPORT                        R10 K5 [table.insert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R4 1 ; [-14]
       40 RETURN                           R2 1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 NEWTABLE                         R2 0 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["getAllowedAssetTypeSettingsForBundle"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 RETURN                           R2 1
       21 MOVE                             R4 R3
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K2 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       28 GETTABLE                         R9 R10 R7
       29 JUMPIFEQKNIL                     R9 ; [+12]
       31 DUPTABLE                         R12 K5 [{"assetType", "settings"}]
       32 SETTABLEKS                       R9 R12 K3 ["assetType"]
       34 SETTABLEKS                       R8 R12 K4 ["settings"]
       36 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       38 MOVE                             R11 R2
       39 GETIMPORT                        R10 K8 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R4 2 ; [-18]
       44 RETURN                           R2 1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["isAllowedUGCAssetType"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETIMPORT                        R3 K3 [table.find]
       12 MOVE                             R4 R1
       13 MOVE                             R5 R0
       14 CALL                             R3 2 1
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_54:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getUGCBodyPartsAssetTypeMap"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 LOADK                            R5 K1 ["Model"]
       12 NAMECALL                         R3 R0 K2 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+2]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["getAllowedAssetTypeEnumsForBundle"]
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 CALL                             R4 2 1
       24 NEWTABLE                         R5 0 0
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K4 ["UGC_BODY_PARTS"]
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 MOVE                             R13 R10
       33 NAMECALL                         R11 R0 K5 ["FindFirstChild"]
       35 CALL                             R11 2 1
       36 JUMPIFEQKNIL                     R11 ; [+32]
       38 GETUPVAL                         R13 3
       39 GETTABLEKS                       R13 R13 K6 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       41 GETTABLE                         R12 R13 R9
       42 GETUPVAL                         R13 2
       43 GETTABLEKS                       R13 R13 K7 ["isAllowedUGCAssetType"]
       45 MOVE                             R14 R12
       46 MOVE                             R15 R4
       47 CALL                             R13 2 1
       48 JUMPIFNOT                        R13 ; [+20]
       49 GETTABLE                         R13 R5 R12
       50 JUMPIFNOTEQKNIL                  R13 ; [+8]
       52 NEWTABLE                         R13 0 1
       54 MOVE                             R14 R11
       55 SETLIST                          R13 R14 1 [1]
       57 SETTABLE                         R13 R5 R12
       58 JUMP                             ; [+10]
       59 GETUPVAL                         R13 4
       60 GETTABLEKS                       R13 R13 K8 ["append"]
       62 GETTABLE                         R14 R5 R12
       63 NEWTABLE                         R15 0 1
       65 MOVE                             R16 R11
       66 SETLIST                          R15 R16 1 [1]
       68 CALL                             R13 2 0
       69 FORGLOOP                         R6 2 ; [-38]
       71 RETURN                           R5 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["AssetTypeRequiresFolderForUpload"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K4 [Enum.AssetType.DynamicHead]
       11 JUMPIFEQ                         R0 R1 ; [+13]
       13 GETIMPORT                        R1 K6 [Enum.AssetType.EyebrowAccessory]
       15 JUMPIFEQ                         R0 R1 ; [+9]
       17 GETIMPORT                        R1 K8 [Enum.AssetType.EyelashAccessory]
       19 JUMPIFEQ                         R0 R1 ; [+5]
       21 GETIMPORT                        R1 K10 [Enum.AssetType.HairAccessory]
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADB                            R1 0
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K11 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       30 JUMPIFNOT                        R1 ; [+12]
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R1 R1 K11 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       34 LOADNIL                          R2
       35 LOADNIL                          R3
       36 FORGPREP                         R1
       37 JUMPIFNOTEQ                      R0 R5 ; [+3]
       39 LOADB                            R6 0
       40 RETURN                           R6 1
       41 FORGLOOP                         R1 2 ; [-5]
       43 LOADB                            R1 1
       44 RETURN                           R1 1

PROTO_56:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+9]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["createUGCBodyPartFolders"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R3
       10 CALL                             R4 4 -1
       11 RETURN                           R4 -1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["getUGCBodyPartsAssetTypeMap"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 CALL                             R4 3 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 NEWTABLE                         R5 0 0
       25 MOVE                             R6 R4
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K2 ["AssetTypeRequiresFolderForUpload"]
       32 MOVE                             R12 R9
       33 CALL                             R11 1 1
       34 JUMPIFNOT                        R11 ; [+50]
       35 GETIMPORT                        R12 K5 [Instance.new]
       37 LOADK                            R13 K6 ["Folder"]
       38 CALL                             R12 1 1
       39 LOADK                            R13 K7 ["R15ArtistIntent"]
       40 SETTABLEKS                       R13 R12 K8 ["Name"]
       42 MOVE                             R13 R10
       43 LOADNIL                          R14
       44 LOADNIL                          R15
       45 FORGPREP                         R13
       46 SETTABLEKS                       R12 R17 K9 ["Parent"]
       48 FORGLOOP                         R13 2 ; [-3]
       50 NEWTABLE                         R13 0 1
       52 MOVE                             R14 R12
       53 SETLIST                          R13 R14 1 [1]
       55 SETTABLE                         R13 R5 R9
       56 JUMPIFNOT                        R3 ; [+29]
       57 NAMECALL                         R13 R12 K10 ["Clone"]
       59 CALL                             R13 1 1
       60 LOADK                            R14 K11 ["R15Fixed"]
       61 SETTABLEKS                       R14 R13 K8 ["Name"]
       63 GETTABLE                         R15 R5 R9
       64 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
       66 MOVE                             R16 R13
       67 GETIMPORT                        R14 K14 [table.insert]
       69 CALL                             R14 2 0
       70 GETIMPORT                        R14 K5 [Instance.new]
       72 LOADK                            R15 K6 ["Folder"]
       73 CALL                             R14 1 1
       74 LOADK                            R15 K15 ["R6"]
       75 SETTABLEKS                       R15 R14 K8 ["Name"]
       77 GETTABLE                         R16 R5 R9
       78 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       80 MOVE                             R17 R14
       81 GETIMPORT                        R15 K14 [table.insert]
       83 CALL                             R15 2 0
       84 JUMP                             ; [+1]
       85 SETTABLE                         R10 R5 R9
       86 FORGLOOP                         R6 2 ; [-58]
       88 RETURN                           R5 1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getLocalizedUGCBundleName"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["UGCBundleTypes"]
       13 GETTABLEKS                       R2 R2 K2 ["Body"]
       15 JUMPIFNOTEQ                      R0 R2 ; [+7]
       17 LOADK                            R4 K3 ["AssetConfig"]
       18 LOADK                            R5 K4 ["UGCBodyBundleName"]
       19 NAMECALL                         R2 R1 K5 ["getText"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K1 ["UGCBundleTypes"]
       26 GETTABLEKS                       R2 R2 K6 ["DynamicHead"]
       28 JUMPIFNOTEQ                      R0 R2 ; [+7]
       30 LOADK                            R4 K3 ["AssetConfig"]
       31 LOADK                            R5 K7 ["UGCDynamicHeadBundleName"]
       32 NAMECALL                         R2 R1 K5 ["getText"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K1 ["UGCBundleTypes"]
       39 GETTABLEKS                       R2 R2 K8 ["Shoes"]
       41 JUMPIFNOTEQ                      R0 R2 ; [+7]
       43 LOADK                            R4 K3 ["AssetConfig"]
       44 LOADK                            R5 K9 ["UGCShoesBundleName"]
       45 NAMECALL                         R2 R1 K5 ["getText"]
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1
       49 GETUPVAL                         R2 2
       50 GETTABLEKS                       R2 R2 K1 ["UGCBundleTypes"]
       52 GETTABLEKS                       R2 R2 K10 ["AvatarAnimations"]
       54 JUMPIFNOTEQ                      R0 R2 ; [+7]
       56 LOADK                            R4 K3 ["AssetConfig"]
       57 LOADK                            R5 K11 ["UGCAvatarAnimationsBundleName"]
       58 NAMECALL                         R2 R1 K5 ["getText"]
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1
       62 LOADK                            R2 K12 [""]
       63 RETURN                           R2 1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getOptionalAssetTypesForBundle"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R9 R8 K2 ["settings"]
       24 GETTABLEKS                       R9 R9 K3 ["minimumQuantity"]
       26 JUMPIFNOTEQKN                    R9 K4 [0] ; [+9]
       28 GETTABLEKS                       R11 R8 K5 ["assetType"]
       30 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       32 MOVE                             R10 R3
       33 GETIMPORT                        R9 K8 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R4 2 ; [-15]
       38 RETURN                           R3 1

PROTO_60:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getOptionalBodyPartsNotFound"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["getOptionalAssetTypesForBundle"]
       14 MOVE                             R4 R1
       15 MOVE                             R5 R2
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K2 ["getUGCBodyPartsAssetTypeMap"]
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 MOVE                             R7 R2
       23 CALL                             R4 3 1
       24 NEWTABLE                         R5 0 0
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 RETURN                           R5 1
       29 MOVE                             R6 R3
       30 LOADNIL                          R7
       31 LOADNIL                          R8
       32 FORGPREP                         R6
       33 GETTABLE                         R11 R4 R10
       34 JUMPIFNOTEQKNIL                  R11 ; [+8]
       36 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       38 MOVE                             R12 R5
       39 MOVE                             R13 R10
       40 GETIMPORT                        R11 K5 [table.insert]
       42 CALL                             R11 2 0
       43 FORGLOOP                         R6 2 ; [-11]
       45 RETURN                           R5 1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypesByBundleType"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["getAllowedAssetTypeEnumsForBundle"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 SETTABLE                         R8 R3 R8
       23 FORGLOOP                         R4 2 ; [-2]
       25 RETURN                           R3 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUnknownMeshPartNames"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 NEWTABLE                         R1 0 0
       11 GETIMPORT                        R2 K2 [pairs]
       13 NAMECALL                         R3 R0 K3 ["GetChildren"]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 3
       17 FORGPREP_NEXT                    R2
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["UGC_BODY_PARTS"]
       21 GETTABLEKS                       R9 R6 K5 ["Name"]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIFNOTEQKNIL                  R7 ; [+14]
       26 LOADK                            R9 K6 ["MeshPart"]
       27 NAMECALL                         R7 R6 K7 ["IsA"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+8]
       31 GETTABLEKS                       R9 R6 K5 ["Name"]
       33 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       35 MOVE                             R8 R1
       36 GETIMPORT                        R7 K10 [table.insert]
       38 CALL                             R7 2 0
       39 FORGLOOP                         R2 2 ; [-22]
       41 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getAvatarAssetTypeAsString"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 JUMPIFEQKNIL                     R0 ; [+16]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["isUGCBundleType"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+6]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["isCatalogAsset"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R1 R0 K3 ["Name"]
       25 RETURN                           R1 1
       26 LOADK                            R1 K4 [""]
       27 RETURN                           R1 1

PROTO_64:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getUGCBundlePartsAssetTypeMap"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 LOADK                            R5 K1 ["Model"]
       12 NAMECALL                         R3 R0 K2 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R3 ; [+2]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["getAllowedAssetTypeEnumsForBundle"]
       21 MOVE                             R4 R1
       22 MOVE                             R5 R2
       23 CALL                             R3 2 1
       24 LOADNIL                          R4
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["isAnimationBundleType"]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+4]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K5 ["UGC_AVATAR_ANIMATIONS_PARTS"]
       34 JUMP                             ; [+13]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K6 ["Dictionary"]
       38 GETTABLEKS                       R5 R5 K7 ["join"]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K8 ["UGC_BODY_PARTS"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K9 ["UGC_BUNDLE_PARTS"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 NEWTABLE                         R5 0 0
       50 MOVE                             R6 R4
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K4 ["isAnimationBundleType"]
       57 MOVE                             R13 R2
       58 CALL                             R12 1 1
       59 JUMPIFNOT                        R12 ; [+7]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K10 ["resolveBundlePartContainer"]
       63 MOVE                             R12 R0
       64 MOVE                             R13 R10
       65 CALL                             R11 2 1
       66 JUMP                             ; [+4]
       67 MOVE                             R13 R10
       68 NAMECALL                         R11 R0 K11 ["FindFirstChild"]
       70 CALL                             R11 2 1
       71 JUMPIFEQKNIL                     R11 ; [+55]
       73 LOADNIL                          R12
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R13 R13 K4 ["isAnimationBundleType"]
       77 MOVE                             R14 R2
       78 CALL                             R13 1 1
       79 JUMPIFNOT                        R13 ; [+5]
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R13 R13 K12 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       83 GETTABLE                         R12 R13 R9
       84 JUMP                             ; [+15]
       85 GETUPVAL                         R13 2
       86 GETTABLEKS                       R13 R13 K13 ["isUGCBodyBundleType"]
       88 MOVE                             R14 R2
       89 CALL                             R13 1 1
       90 JUMPIFNOT                        R13 ; [+5]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R13 R13 K14 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       94 GETTABLE                         R12 R13 R9
       95 JUMP                             ; [+4]
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R13 R13 K15 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       99 GETTABLE                         R12 R13 R9
      100 GETUPVAL                         R13 2
      101 GETTABLEKS                       R13 R13 K16 ["isAllowedUGCAssetType"]
      103 MOVE                             R14 R12
      104 MOVE                             R15 R3
      105 CALL                             R13 2 1
      106 JUMPIFNOT                        R13 ; [+20]
      107 GETTABLE                         R13 R5 R12
      108 JUMPIFNOTEQKNIL                  R13 ; [+8]
      110 NEWTABLE                         R13 0 1
      112 MOVE                             R14 R11
      113 SETLIST                          R13 R14 1 [1]
      115 SETTABLE                         R13 R5 R12
      116 JUMP                             ; [+10]
      117 GETUPVAL                         R13 6
      118 GETTABLEKS                       R13 R13 K17 ["append"]
      120 GETTABLE                         R14 R5 R12
      121 NEWTABLE                         R15 0 1
      123 MOVE                             R16 R11
      124 SETLIST                          R15 R16 1 [1]
      126 CALL                             R13 2 0
      127 FORGLOOP                         R6 2 ; [-74]
      129 RETURN                           R5 1

PROTO_65:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["getUGCBundleAssetQuantities"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["getUGCBundlePartsAssetTypeMap"]
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 JUMPIFNOTEQKNIL                  R3 ; [+3]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 NEWTABLE                         R4 0 0
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R10 R8 K2 ["Name"]
       30 GETTABLE                         R11 R4 R10
       31 JUMPIFEQKNIL                     R11 ; [+4]
       33 ADDK                             R12 R11 K3 [1]
       34 SETTABLE                         R12 R4 R10
       35 JUMP                             ; [+2]
       36 LOADN                            R12 1
       37 SETTABLE                         R12 R4 R10
       38 FORGLOOP                         R5 1 ; [-11]
       40 RETURN                           R4 1

PROTO_66:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["createUGCShoesPartFolders"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1
       11 NEWTABLE                         R3 0 0
       13 LOADK                            R6 K1 ["Model"]
       14 NAMECALL                         R4 R0 K2 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+2]
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["getAllowedAssetTypeEnumsForBundle"]
       23 MOVE                             R5 R1
       24 MOVE                             R6 R2
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K4 ["UGC_BUNDLE_PARTS"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 MOVE                             R12 R9
       33 NAMECALL                         R10 R0 K5 ["FindFirstChild"]
       35 CALL                             R10 2 1
       36 JUMPIFEQKNIL                     R10 ; [+32]
       38 GETUPVAL                         R12 3
       39 GETTABLEKS                       R12 R12 K6 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       41 GETTABLE                         R11 R12 R8
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K7 ["isAllowedUGCAssetType"]
       45 MOVE                             R13 R11
       46 MOVE                             R14 R4
       47 CALL                             R12 2 1
       48 JUMPIFNOT                        R12 ; [+20]
       49 GETTABLE                         R12 R3 R11
       50 JUMPIFNOTEQKNIL                  R12 ; [+8]
       52 NEWTABLE                         R12 0 1
       54 MOVE                             R13 R10
       55 SETLIST                          R12 R13 1 [1]
       57 SETTABLE                         R12 R3 R11
       58 JUMP                             ; [+10]
       59 GETUPVAL                         R12 4
       60 GETTABLEKS                       R12 R12 K8 ["append"]
       62 GETTABLE                         R13 R3 R11
       63 NEWTABLE                         R14 0 1
       65 MOVE                             R15 R10
       66 SETLIST                          R14 R15 1 [1]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R5 2 ; [-38]
       71 JUMPIFNOTEQKNIL                  R3 ; [+3]
       73 LOADNIL                          R5
       74 RETURN                           R5 1
       75 NEWTABLE                         R5 0 0
       77 MOVE                             R6 R3
       78 LOADNIL                          R7
       79 LOADNIL                          R8
       80 FORGPREP                         R6
       81 SETTABLE                         R10 R5 R9
       82 FORGLOOP                         R6 2 ; [-2]
       84 RETURN                           R5 1

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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
      119 GETTABLEKS                       R21 R0 K3 ["Src"]
      121 GETTABLEKS                       R21 R21 K35 ["Flags"]
      123 GETTABLEKS                       R21 R21 K36 ["getFStringAllowedAssetTypesPrivacyCheck"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K6 [require]
      128 GETTABLEKS                       R22 R1 K37 ["AvatarAnimationBundleUtil"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K6 [require]
      133 GETTABLEKS                       R23 R0 K3 ["Src"]
      135 GETTABLEKS                       R23 R23 K35 ["Flags"]
      137 GETTABLEKS                       R23 R23 K38 ["getFFlagUsePublishMarketplaceActionType"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K6 [require]
      142 GETTABLEKS                       R24 R0 K3 ["Src"]
      144 GETTABLEKS                       R24 R24 K35 ["Flags"]
      146 GETTABLEKS                       R24 R24 K39 ["getFFlagToolboxPublishOnApproval"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K6 [require]
      151 GETTABLEKS                       R25 R0 K3 ["Src"]
      153 GETTABLEKS                       R25 R25 K35 ["Flags"]
      155 GETTABLEKS                       R25 R25 K40 ["getFFlagEnableUpdateAvatarItem"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K6 [require]
      160 GETTABLEKS                       R26 R0 K3 ["Src"]
      162 GETTABLEKS                       R26 R26 K35 ["Flags"]
      164 GETTABLEKS                       R26 R26 K41 ["getEngineFeatureStudioTextDocumentUploadAsset"]
      166 CALL                             R25 1 1
      167 GETIMPORT                        R26 K6 [require]
      169 GETTABLEKS                       R27 R0 K3 ["Src"]
      171 GETTABLEKS                       R27 R27 K35 ["Flags"]
      173 GETTABLEKS                       R27 R27 K42 ["getFFlagToolboxSplitAssetConfigUtil"]
      175 CALL                             R26 1 1
      176 GETIMPORT                        R27 K6 [require]
      178 GETTABLEKS                       R28 R1 K43 ["AssetPublishFeeUtil"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K6 [require]
      183 GETTABLEKS                       R29 R1 K44 ["UGCBundleConfigUtil"]
      185 CALL                             R28 1 1
      186 GETIMPORT                        R29 K24 [game]
      188 LOADK                            R31 K45 ["HttpService"]
      189 NAMECALL                         R29 R29 K46 ["GetService"]
      191 CALL                             R29 2 1
      192 GETIMPORT                        R30 K24 [game]
      194 LOADK                            R32 K47 ["StudioService"]
      195 NAMECALL                         R30 R30 K46 ["GetService"]
      197 CALL                             R30 2 1
      198 DUPCLOSURE                       R31 K48 [PROTO_0]
      199 NEWTABLE                         R32 128 0
      201 DUPCLOSURE                       R33 K49 [PROTO_1]
      202 CAPTURE                          VAL R3
      203 SETTABLEKS                       R33 R32 K50 ["isUGCBundleType"]
      205 DUPCLOSURE                       R33 K51 [PROTO_2]
      206 CAPTURE                          VAL R3
      207 SETTABLEKS                       R33 R32 K52 ["isUGCBodyBundleType"]
      209 DUPCLOSURE                       R33 K53 [PROTO_3]
      210 CAPTURE                          VAL R3
      211 SETTABLEKS                       R33 R32 K54 ["isAnimationBundleType"]
      213 DUPCLOSURE                       R33 K55 [PROTO_4]
      214 CAPTURE                          VAL R3
      215 SETTABLEKS                       R33 R32 K56 ["isReadyForSale"]
      217 DUPCLOSURE                       R33 K57 [PROTO_5]
      218 CAPTURE                          VAL R3
      219 SETTABLEKS                       R33 R32 K58 ["isOnSale"]
      221 DUPCLOSURE                       R33 K59 [PROTO_6]
      222 CAPTURE                          VAL R3
      223 SETTABLEKS                       R33 R32 K60 ["isBuyableMarketplaceAsset"]
      225 DUPCLOSURE                       R33 K61 [PROTO_8]
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R3
      228 SETTABLEKS                       R33 R32 K62 ["filterAllowedAssetTypesForRelease"]
      230 DUPCLOSURE                       R33 K63 [PROTO_9]
      231 CAPTURE                          VAL R11
      232 SETTABLEKS                       R33 R32 K64 ["hasAllowedAssetTypesForRelease"]
      234 DUPCLOSURE                       R33 K65 [PROTO_10]
      235 CAPTURE                          VAL R30
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R12
      238 SETTABLEKS                       R33 R32 K66 ["promptImagePicker"]
      240 DUPCLOSURE                       R33 K67 [PROTO_11]
      241 CAPTURE                          VAL R3
      242 SETTABLEKS                       R33 R32 K68 ["isCatalogAsset"]
      244 GETIMPORT                        R33 K71 [utf8.char]
      246 LOADK                            R34 K72 [57346]
      247 CALL                             R33 1 1
      248 DUPTABLE                         R34 K78 [{["TShirt"] = True, ["Shirt"] = True, ["Pants"] = True, ["AvatarBackground"] = True}]
      249 DUPCLOSURE                       R35 K79 [PROTO_12]
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R34
      253 SETTABLEKS                       R35 R32 K80 ["canAutoPublishAvatarAssetType"]
      255 LOADK                            R35 K81 ["EncryptedCreationContext"]
      256 SETTABLEKS                       R35 R32 K82 ["ENCRYPTED_CREATION_CONTEXT_KEY"]
      258 DUPCLOSURE                       R35 K83 [PROTO_13]
      259 CAPTURE                          VAL R26
      260 CAPTURE                          VAL R27
      261 CAPTURE                          VAL R23
      262 SETTABLEKS                       R35 R32 K84 ["isUsablePublishingFee"]
      264 DUPCLOSURE                       R35 K85 [PROTO_14]
      265 CAPTURE                          VAL R26
      266 CAPTURE                          VAL R27
      267 CAPTURE                          VAL R23
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R16
      270 CAPTURE                          VAL R29
      271 SETTABLEKS                       R35 R32 K86 ["getPublishOnApprovalCreationContext"]
      273 DUPCLOSURE                       R35 K87 [PROTO_15]
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R27
      276 CAPTURE                          VAL R23
      277 CAPTURE                          VAL R32
      278 SETTABLEKS                       R35 R32 K88 ["getPublishOnApprovalFee"]
      280 DUPCLOSURE                       R35 K89 [PROTO_16]
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R27
      283 CAPTURE                          VAL R23
      284 SETTABLEKS                       R35 R32 K90 ["getSubmitTotal"]
      286 DUPCLOSURE                       R35 K91 [PROTO_18]
      287 CAPTURE                          VAL R26
      288 CAPTURE                          VAL R27
      289 CAPTURE                          VAL R23
      290 CAPTURE                          VAL R33
      291 CAPTURE                          VAL R32
      292 SETTABLEKS                       R35 R32 K92 ["getItemizedFeeDescription"]
      294 DUPCLOSURE                       R35 K93 [PROTO_19]
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R27
      297 CAPTURE                          VAL R23
      298 SETTABLEKS                       R35 R32 K94 ["getCreatorQueryParam"]
      300 DUPCLOSURE                       R35 K95 [PROTO_20]
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R35 R32 K96 ["isMarketplaceAsset"]
      304 DUPCLOSURE                       R35 K97 [PROTO_21]
      305 SETTABLEKS                       R35 R32 K98 ["isTextDocumentAsset"]
      307 DUPCLOSURE                       R35 K99 [PROTO_22]
      308 CAPTURE                          VAL R32
      309 CAPTURE                          VAL R25
      310 SETTABLEKS                       R35 R32 K100 ["isEditedAsMarketplaceAsset"]
      312 DUPCLOSURE                       R35 K101 [PROTO_23]
      313 CAPTURE                          VAL R3
      314 SETTABLEKS                       R35 R32 K102 ["isMakeupAsset"]
      316 DUPCLOSURE                       R35 K103 [PROTO_24]
      317 CAPTURE                          VAL R24
      318 CAPTURE                          VAL R3
      319 SETTABLEKS                       R35 R32 K104 ["isAvatarItemUpdateSupported"]
      321 DUPCLOSURE                       R35 K105 [PROTO_26]
      322 CAPTURE                          VAL R29
      323 SETTABLEKS                       R35 R32 K106 ["getThumbnailSkinColor"]
      325 DUPCLOSURE                       R35 K107 [PROTO_27]
      326 CAPTURE                          VAL R29
      327 SETTABLEKS                       R35 R32 K108 ["setThumbnailSkinColor"]
      329 DUPCLOSURE                       R35 K109 [PROTO_28]
      330 SETTABLEKS                       R35 R32 K110 ["addMakeupThumbnailConfiguration"]
      332 DUPCLOSURE                       R35 K111 [PROTO_29]
      333 CAPTURE                          VAL R32
      334 SETTABLEKS                       R35 R32 K112 ["isCreatorStoreAssetNotIncludingAnimation"]
      336 DUPCLOSURE                       R35 K113 [PROTO_30]
      337 CAPTURE                          VAL R3
      338 CAPTURE                          VAL R32
      339 SETTABLEKS                       R35 R32 K114 ["getFlowStartScreen"]
      341 DUPCLOSURE                       R35 K115 [PROTO_31]
      342 CAPTURE                          VAL R3
      343 SETTABLEKS                       R35 R32 K116 ["getGenreTypes"]
      345 DUPCLOSURE                       R35 K117 [PROTO_32]
      346 CAPTURE                          VAL R3
      347 SETTABLEKS                       R35 R32 K118 ["getGenreIndex"]
      349 DUPCLOSURE                       R35 K119 [PROTO_33]
      350 CAPTURE                          VAL R3
      351 SETTABLEKS                       R35 R32 K120 ["getGenreName"]
      353 DUPCLOSURE                       R35 K121 [PROTO_34]
      354 CAPTURE                          VAL R5
      355 SETTABLEKS                       R35 R32 K122 ["getOwnerDropDownContent"]
      357 DUPCLOSURE                       R35 K123 [PROTO_36]
      358 SETTABLEKS                       R35 R32 K124 ["getClonedInstances"]
      360 DUPCLOSURE                       R35 K125 [PROTO_37]
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R32
      363 CAPTURE                          VAL R13
      364 SETTABLEKS                       R35 R32 K126 ["getPreviewType"]
      366 DUPCLOSURE                       R35 K127 [PROTO_38]
      367 CAPTURE                          VAL R6
      368 CAPTURE                          VAL R3
      369 SETTABLEKS                       R35 R32 K128 ["getResultThumbnail"]
      371 DUPCLOSURE                       R35 K129 [PROTO_39]
      372 CAPTURE                          VAL R14
      373 CAPTURE                          VAL R15
      374 CAPTURE                          VAL R32
      375 SETTABLEKS                       R35 R32 K130 ["isPackagePublishAllowed"]
      377 DUPCLOSURE                       R35 K131 [PROTO_40]
      378 SETTABLEKS                       R35 R32 K132 ["isPackage"]
      380 DUPCLOSURE                       R35 K133 [PROTO_41]
      381 CAPTURE                          VAL R26
      382 CAPTURE                          VAL R28
      383 CAPTURE                          VAL R32
      384 SETTABLEKS                       R35 R32 K134 ["getUGCBodyBundleAssetQuantities"]
      386 DUPCLOSURE                       R35 K135 [PROTO_43]
      387 CAPTURE                          VAL R26
      388 CAPTURE                          VAL R28
      389 CAPTURE                          VAL R19
      390 SETTABLEKS                       R35 R32 K136 ["getBodyScaleValues"]
      392 MOVE                             R35 R19
      393 CALL                             R35 0 1
      394 JUMPIFNOT                        R35 ; [+13]
      395 DUPCLOSURE                       R35 K137 [PROTO_44]
      396 CAPTURE                          VAL R26
      397 CAPTURE                          VAL R28
      398 CAPTURE                          VAL R3
      399 SETTABLEKS                       R35 R32 K138 ["getBodyScaleType"]
      401 DUPCLOSURE                       R35 K139 [PROTO_45]
      402 CAPTURE                          VAL R26
      403 CAPTURE                          VAL R28
      404 CAPTURE                          VAL R32
      405 CAPTURE                          VAL R3
      406 SETTABLEKS                       R35 R32 K140 ["ValidateScaleSettings"]
      408 DUPCLOSURE                       R35 K141 [PROTO_46]
      409 CAPTURE                          VAL R26
      410 CAPTURE                          VAL R28
      411 SETTABLEKS                       R35 R32 K142 ["getBodyColorSet"]
      413 DUPCLOSURE                       R35 K143 [PROTO_47]
      414 CAPTURE                          VAL R26
      415 CAPTURE                          VAL R28
      416 CAPTURE                          VAL R32
      417 SETTABLEKS                       R35 R32 K144 ["ValidateBodyColors"]
      419 DUPCLOSURE                       R35 K145 [PROTO_48]
      420 CAPTURE                          VAL R26
      421 CAPTURE                          VAL R28
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R32
      424 SETTABLEKS                       R35 R32 K146 ["ValidateBody"]
      426 DUPCLOSURE                       R35 K147 [PROTO_49]
      427 CAPTURE                          VAL R26
      428 CAPTURE                          VAL R28
      429 CAPTURE                          VAL R3
      430 SETTABLEKS                       R35 R32 K148 ["getUGCBundleTypeFromString"]
      432 DUPCLOSURE                       R35 K149 [PROTO_50]
      433 CAPTURE                          VAL R26
      434 CAPTURE                          VAL R28
      435 CAPTURE                          VAL R8
      436 SETTABLEKS                       R35 R32 K150 ["getAllowedAssetTypeSettingsForBundle"]
      438 DUPCLOSURE                       R35 K151 [PROTO_51]
      439 CAPTURE                          VAL R26
      440 CAPTURE                          VAL R28
      441 CAPTURE                          VAL R32
      442 CAPTURE                          VAL R3
      443 SETTABLEKS                       R35 R32 K152 ["getAllowedAssetTypeEnumsForBundle"]
      445 DUPCLOSURE                       R35 K153 [PROTO_52]
      446 CAPTURE                          VAL R26
      447 CAPTURE                          VAL R28
      448 CAPTURE                          VAL R32
      449 CAPTURE                          VAL R3
      450 SETTABLEKS                       R35 R32 K154 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
      452 DUPCLOSURE                       R35 K155 [PROTO_53]
      453 CAPTURE                          VAL R26
      454 CAPTURE                          VAL R28
      455 SETTABLEKS                       R35 R32 K156 ["isAllowedUGCAssetType"]
      457 DUPCLOSURE                       R35 K157 [PROTO_54]
      458 CAPTURE                          VAL R26
      459 CAPTURE                          VAL R28
      460 CAPTURE                          VAL R32
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R10
      463 SETTABLEKS                       R35 R32 K158 ["getUGCBodyPartsAssetTypeMap"]
      465 DUPCLOSURE                       R35 K159 [PROTO_55]
      466 CAPTURE                          VAL R26
      467 CAPTURE                          VAL R28
      468 CAPTURE                          VAL R3
      469 SETTABLEKS                       R35 R32 K160 ["AssetTypeRequiresFolderForUpload"]
      471 DUPCLOSURE                       R35 K161 [PROTO_56]
      472 CAPTURE                          VAL R26
      473 CAPTURE                          VAL R28
      474 CAPTURE                          VAL R32
      475 SETTABLEKS                       R35 R32 K162 ["createUGCBodyPartFolders"]
      477 DUPCLOSURE                       R35 K163 [PROTO_57]
      478 CAPTURE                          VAL R26
      479 CAPTURE                          VAL R28
      480 CAPTURE                          VAL R3
      481 SETTABLEKS                       R35 R32 K164 ["getLocalizedUGCBundleName"]
      483 DUPCLOSURE                       R35 K165 [PROTO_58]
      484 CAPTURE                          VAL R4
      485 SETTABLEKS                       R35 R32 K166 ["sanitizeForValidation"]
      487 DUPCLOSURE                       R35 K167 [PROTO_59]
      488 CAPTURE                          VAL R26
      489 CAPTURE                          VAL R28
      490 CAPTURE                          VAL R32
      491 SETTABLEKS                       R35 R32 K168 ["getOptionalAssetTypesForBundle"]
      493 DUPCLOSURE                       R35 K169 [PROTO_60]
      494 CAPTURE                          VAL R26
      495 CAPTURE                          VAL R28
      496 CAPTURE                          VAL R32
      497 SETTABLEKS                       R35 R32 K170 ["getOptionalBodyPartsNotFound"]
      499 DUPCLOSURE                       R35 K171 [PROTO_61]
      500 CAPTURE                          VAL R26
      501 CAPTURE                          VAL R28
      502 CAPTURE                          VAL R32
      503 SETTABLEKS                       R35 R32 K172 ["getAllowedAssetTypesByBundleType"]
      505 DUPCLOSURE                       R35 K173 [PROTO_62]
      506 CAPTURE                          VAL R26
      507 CAPTURE                          VAL R28
      508 CAPTURE                          VAL R3
      509 SETTABLEKS                       R35 R32 K174 ["getUnknownMeshPartNames"]
      511 DUPCLOSURE                       R35 K175 [PROTO_63]
      512 CAPTURE                          VAL R26
      513 CAPTURE                          VAL R28
      514 CAPTURE                          VAL R32
      515 SETTABLEKS                       R35 R32 K176 ["getAvatarAssetTypeAsString"]
      517 DUPCLOSURE                       R35 K177 [PROTO_64]
      518 CAPTURE                          VAL R26
      519 CAPTURE                          VAL R28
      520 CAPTURE                          VAL R32
      521 CAPTURE                          VAL R3
      522 CAPTURE                          VAL R8
      523 CAPTURE                          VAL R21
      524 CAPTURE                          VAL R10
      525 SETTABLEKS                       R35 R32 K178 ["getUGCBundlePartsAssetTypeMap"]
      527 DUPCLOSURE                       R35 K179 [PROTO_65]
      528 CAPTURE                          VAL R26
      529 CAPTURE                          VAL R28
      530 CAPTURE                          VAL R32
      531 SETTABLEKS                       R35 R32 K180 ["getUGCBundleAssetQuantities"]
      533 DUPCLOSURE                       R35 K181 [PROTO_66]
      534 CAPTURE                          VAL R26
      535 CAPTURE                          VAL R28
      536 CAPTURE                          VAL R32
      537 CAPTURE                          VAL R3
      538 CAPTURE                          VAL R10
      539 SETTABLEKS                       R35 R32 K182 ["createUGCShoesPartFolders"]
      541 DUPCLOSURE                       R35 K183 [PROTO_67]
      542 CAPTURE                          VAL R32
      543 SETTABLEKS                       R35 R32 K184 ["shouldValidateAssetType"]
      545 DUPCLOSURE                       R35 K185 [PROTO_68]
      546 SETTABLEKS                       R35 R32 K186 ["getValidationFailuresAsString"]
      548 DUPCLOSURE                       R35 K187 [PROTO_69]
      549 CAPTURE                          VAL R2
      550 SETTABLEKS                       R35 R32 K188 ["getAssetIdsFromInstance"]
      552 DUPCLOSURE                       R35 K189 [PROTO_70]
      553 CAPTURE                          VAL R20
      554 SETTABLEKS                       R35 R32 K190 ["isAllowedAssetType"]
      556 DUPCLOSURE                       R35 K191 [PROTO_71]
      557 SETTABLEKS                       R35 R32 K192 ["normalizeAnimationAssetIdInput"]
      559 DUPCLOSURE                       R35 K193 [PROTO_72]
      560 SETTABLEKS                       R35 R32 K194 ["getValidationErrorText"]
      562 RETURN                           R32 1
