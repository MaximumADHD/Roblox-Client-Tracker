PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["confirmationDialogKey"]
        6 CALL                             R0 1 0
        7 DUPTABLE                         R0 K5 [{["confirmationDialogKey"] = "", ["isConfirmationDialogEnabled"] = False}]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K1 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K4 [{[1] = "", ["isConfirmationDialogEnabled"] = False}]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["tryMakeAssetsPublic"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["tryPublish"]
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETIMPORT                        R2 K3 [pairs]
        8 GETTABLEKS                       R3 R1 K4 ["descendantIds"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R0 K5 ["dispatchPatchMakeAssetPublicRequest"]
       14 GETTABLEKS                       R8 R0 K6 ["Network"]
       16 GETTABLEKS                       R8 R8 K7 ["networkInterface"]
       18 MOVE                             R9 R6
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K8 ["tryPublish"]
       25 LOADNIL                          R3
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["assetTypeEnum"]
        5 GETIMPORT                        R4 K5 [Enum.AssetType.Audio]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 GETTABLEKS                       R4 R1 K1 ["assetTypeEnum"]
       13 GETIMPORT                        R5 K7 [Enum.AssetType.Video]
       15 JUMPIFEQ                         R4 R5 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
       21 GETIMPORT                        R6 K9 [Enum.AssetType.Model]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K10 ["isCatalogAsset"]
       30 GETTABLEKS                       R6 R1 K1 ["assetTypeEnum"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K11 ["isUGCBundleType"]
       36 GETTABLEKS                       R7 R1 K1 ["assetTypeEnum"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R1 K13 ["uploadFee"]
       41 ORK                              R7 R8 K12 [0]
       42 JUMPIF                           R2 ; [+3]
       43 GETUPVAL                         R8 2
       44 JUMPIFNOT                        R8 ; [+20]
       45 JUMPIFNOT                        R3 ; [+19]
       46 GETTABLEKS                       R8 R0 K14 ["isAssetPublicOriginalValue"]
       48 JUMPIFEQKB                       R8 TRUE ; [+16]
       50 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       55 GETTABLEKS                       R9 R9 K17 ["Public"]
       57 JUMPIFNOTEQ                      R8 R9 ; [+7]
       59 DUPTABLE                         R8 K21 [{["confirmationDialogKey"], ["isConfirmationDialogEnabled"] = True}]
       60 GETUPVAL                         R10 4
       61 ORK                              R9 R10 K22 [""]
       62 SETTABLEKS                       R9 R8 K18 ["confirmationDialogKey"]
       64 RETURN                           R8 1
       65 JUMPIFNOT                        R4 ; [+48]
       66 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       71 GETTABLEKS                       R9 R9 K17 ["Public"]
       73 JUMPIFNOTEQ                      R8 R9 ; [+40]
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R8 R8 K23 ["FLOW_TYPE"]
       78 GETTABLEKS                       R8 R8 K24 ["UPLOAD_FLOW"]
       80 GETTABLEKS                       R9 R1 K25 ["screenFlowType"]
       82 JUMPIFNOTEQ                      R8 R9 ; [+31]
       84 LOADB                            R8 0
       85 GETIMPORT                        R9 K27 [pairs]
       87 GETTABLEKS                       R10 R1 K28 ["descendantPermissions"]
       89 CALL                             R9 1 3
       90 FORGPREP_NEXT                    R9
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R14 R14 K15 ["isAssetPublic"]
       94 MOVE                             R15 R13
       95 CALL                             R14 1 1
       96 JUMPIF                           R14 ; [+2]
       97 LOADB                            R8 1
       98 JUMP                             ; [+2]
       99 FORGLOOP                         R9 2 ; [-9]
      101 JUMPIFNOT                        R8 ; [+6]
      102 GETUPVAL                         R9 0
      103 DUPCLOSURE                       R11 K29 [PROTO_13]
      104 NAMECALL                         R9 R9 K30 ["setState"]
      106 CALL                             R9 2 0
      107 RETURN                           R0 0
      108 GETUPVAL                         R9 0
      109 GETTABLEKS                       R9 R9 K31 ["tryPublish"]
      111 LOADNIL                          R10
      112 CALL                             R9 1 0
      113 RETURN                           R0 0
      114 JUMPIF                           R5 ; [+1]
      115 JUMPIFNOT                        R6 ; [+44]
      116 JUMPIFEQKNIL                     R7 ; [+43]
      118 LOADN                            R8 0
      119 JUMPIFNOTLT                      R8 R7 ; [+40]
      121 GETUPVAL                         R8 6
      122 CALL                             R8 0 1
      123 JUMPIFNOT                        R8 ; [+30]
      124 GETTABLEKS                       R8 R1 K32 ["dispatchCheckAvatarAssetPrivacy"]
      126 GETTABLEKS                       R9 R1 K33 ["Network"]
      128 GETTABLEKS                       R9 R9 K34 ["networkInterface"]
      130 GETTABLEKS                       R11 R1 K35 ["instances"]
      132 GETTABLEN                        R10 R11 1
      133 DUPTABLE                         R11 K39 [{"publishService", "pluginGuiService", "contentProvider"}]
      134 GETTABLEKS                       R12 R1 K40 ["PublishService"]
      136 GETTABLEKS                       R12 R12 K36 ["publishService"]
      138 SETTABLEKS                       R12 R11 K36 ["publishService"]
      140 GETTABLEKS                       R12 R1 K41 ["PluginGuiService"]
      142 GETTABLEKS                       R12 R12 K37 ["pluginGuiService"]
      144 SETTABLEKS                       R12 R11 K37 ["pluginGuiService"]
      146 GETTABLEKS                       R12 R1 K42 ["ContentProvider"]
      148 GETTABLEKS                       R12 R12 K38 ["contentProvider"]
      150 SETTABLEKS                       R12 R11 K38 ["contentProvider"]
      152 CALL                             R8 3 0
      153 RETURN                           R0 0
      154 GETUPVAL                         R8 0
      155 DUPCLOSURE                       R10 K43 [PROTO_14]
      156 NAMECALL                         R8 R8 K30 ["setState"]
      158 CALL                             R8 2 0
      159 RETURN                           R0 0
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R8 R8 K31 ["tryPublish"]
      163 GETUPVAL                         R9 4
      164 CALL                             R8 1 0
      165 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R1 R1 K0 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+5]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["Name"]
        6 GETTABLE                         R2 R0 R3
        7 MOVE                             R3 R2
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETTABLEKS                       R3 R2 K1 ["allowedFileExtensions"]
       11 MOVE                             R4 R3
       12 JUMPIFNOT                        R4 ; [+6]
       13 LOADB                            R4 0
       14 LENGTH                           R5 R3
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+2]
       18 GETTABLEN                        R4 R3 1
       19 JUMPIFNOT                        R4 ; [+7]
       20 GETIMPORT                        R5 K4 [string.gsub]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K5 ["^%."]
       24 LOADK                            R8 K6 [""]
       25 CALL                             R5 3 1
       26 JUMPIF                           R5 ; [+1]
       27 LOADK                            R5 K7 ["rbxm"]
       28 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["overrideAssetId"]
        9 NAMECALL                         R0 R0 K2 ["AnimationIdSelected"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 DUPCLOSURE                       R0 K0 [PROTO_17]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["props"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["state"]
       11 GETTABLEKS                       R4 R1 K3 ["groupId"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R4 R1 K3 ["groupId"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["None"]
       19 JUMPIFEQ                         R4 R5 ; [+4]
       21 GETTABLEKS                       R3 R1 K3 ["groupId"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETUPVAL                         R4 3
       26 JUMPIF                           R4 ; [+8]
       27 GETUPVAL                         R4 4
       28 JUMPIFNOT                        R4 ; [+6]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R5 R1 K5 ["IXP"]
       32 LOADK                            R6 K6 ["MarketplaceModelsAsPackages"]
       33 LOADK                            R7 K7 ["MarketplaceModelsAsPackagesEnabled"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       38 GETTABLEKS                       R5 R5 K9 ["DOWNLOAD_FLOW"]
       40 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       42 JUMPIFNOTEQ                      R5 R6 ; [+18]
       44 GETIMPORT                        R5 K12 [pcall]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          VAL R2
       50 CALL                             R5 1 1
       51 JUMPIFNOT                        R5 ; [+4]
       52 GETTABLEKS                       R6 R1 K13 ["onClose"]
       54 CALL                             R6 0 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R6 R1 K14 ["dispatchValidateAnimationResult"]
       58 LOADB                            R7 0
       59 CALL                             R6 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       64 GETTABLEKS                       R5 R5 K15 ["EDIT_FLOW"]
       66 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       68 JUMPIFNOTEQ                      R5 R6 ; [+134]
       70 GETUPVAL                         R5 9
       71 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
       73 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
       75 CALL                             R5 1 1
       76 JUMPIFNOT                        R5 ; [+40]
       77 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       79 JUMPIFNOT                        R5 ; [+32]
       80 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       82 GETTABLEKS                       R5 R5 K19 ["Status"]
       84 JUMPIFNOT                        R5 ; [+27]
       85 GETTABLEKS                       R5 R1 K20 ["configureCatalogItem"]
       87 GETTABLEKS                       R6 R1 K21 ["Network"]
       89 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
       91 GETTABLEKS                       R7 R1 K23 ["assetId"]
       93 GETTABLEKS                       R8 R2 K24 ["name"]
       95 GETTABLEKS                       R10 R2 K26 ["description"]
       97 ORK                              R9 R10 K25 [""]
       98 GETTABLEKS                       R10 R1 K18 ["assetConfigData"]
      100 GETTABLEKS                       R10 R10 K19 ["Status"]
      102 GETTABLEKS                       R11 R2 K27 ["status"]
      104 GETTABLEKS                       R12 R1 K18 ["assetConfigData"]
      106 GETTABLEKS                       R12 R12 K28 ["Price"]
      108 GETTABLEKS                       R13 R2 K29 ["price"]
      110 CALL                             R5 8 0
      111 RETURN                           R0 0
      112 GETIMPORT                        R5 K31 [warn]
      114 LOADK                            R6 K32 ["Could not configure sales, missing Asset Status!"]
      115 CALL                             R5 1 0
      116 RETURN                           R0 0
      117 GETUPVAL                         R5 9
      118 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      120 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      122 CALL                             R5 1 1
      123 JUMPIFNOT                        R5 ; [+515]
      124 GETTABLEKS                       R5 R2 K34 ["copyOn"]
      126 GETTABLEKS                       R6 R2 K35 ["copyChanged"]
      128 JUMPIF                           R6 ; [+1]
      129 LOADNIL                          R5
      130 GETTABLEKS                       R6 R1 K36 ["configureMarketplaceItem"]
      132 DUPTABLE                         R7 K45 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      133 GETTABLEKS                       R8 R1 K21 ["Network"]
      135 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      137 SETTABLEKS                       R8 R7 K22 ["networkInterface"]
      139 GETTABLEKS                       R8 R2 K23 ["assetId"]
      141 SETTABLEKS                       R8 R7 K23 ["assetId"]
      143 GETTABLEKS                       R8 R2 K37 ["assetMediaUpdateData"]
      145 SETTABLEKS                       R8 R7 K37 ["assetMediaUpdateData"]
      147 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      149 SETTABLEKS                       R8 R7 K17 ["assetTypeEnum"]
      151 GETTABLEKS                       R8 R2 K24 ["name"]
      153 SETTABLEKS                       R8 R7 K24 ["name"]
      155 GETTABLEKS                       R9 R2 K26 ["description"]
      157 ORK                              R8 R9 K25 [""]
      158 SETTABLEKS                       R8 R7 K26 ["description"]
      160 GETTABLEKS                       R8 R2 K38 ["commentOn"]
      162 SETTABLEKS                       R8 R7 K38 ["commentOn"]
      164 SETTABLEKS                       R5 R7 K34 ["copyOn"]
      166 GETTABLEKS                       R8 R2 K27 ["status"]
      168 SETTABLEKS                       R8 R7 K39 ["saleStatus"]
      170 GETTABLEKS                       R8 R1 K18 ["assetConfigData"]
      172 GETTABLEKS                       R8 R8 K28 ["Price"]
      174 SETTABLEKS                       R8 R7 K40 ["fromPrice"]
      176 GETTABLEKS                       R8 R2 K29 ["price"]
      178 SETTABLEKS                       R8 R7 K29 ["price"]
      180 GETTABLEKS                       R8 R2 K41 ["iconFile"]
      182 SETTABLEKS                       R8 R7 K41 ["iconFile"]
      184 GETTABLEKS                       R8 R2 K42 ["isAssetPublic"]
      186 SETTABLEKS                       R8 R7 K42 ["isAssetPublic"]
      188 SETTABLEKS                       R4 R7 K43 ["isConvertMarketplaceModelsToPackageEnabled"]
      190 GETTABLEKS                       R9 R1 K46 ["fiatProduct"]
      192 JUMPIFNOT                        R9 ; [+5]
      193 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      195 GETTABLEKS                       R8 R8 K44 ["basePrice"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R8
      199 SETTABLEKS                       R8 R7 K44 ["basePrice"]
      201 CALL                             R6 1 0
      202 RETURN                           R0 0
      203 GETUPVAL                         R5 6
      204 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
      206 GETTABLEKS                       R5 R5 K47 ["UPLOAD_FLOW"]
      208 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
      210 JUMPIFNOTEQ                      R5 R6 ; [+428]
      212 GETUPVAL                         R5 10
      213 CALL                             R5 0 1
      214 JUMPIFNOT                        R5 ; [+26]
      215 GETUPVAL                         R5 9
      216 GETTABLEKS                       R5 R5 K48 ["isMakeupAsset"]
      218 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      220 CALL                             R5 1 1
      221 JUMPIFNOT                        R5 ; [+19]
      222 GETTABLEKS                       R5 R2 K49 ["selectedColor"]
      224 JUMPIFNOT                        R5 ; [+16]
      225 GETTABLEKS                       R5 R1 K50 ["instances"]
      227 JUMPIFNOT                        R5 ; [+13]
      228 GETTABLEKS                       R6 R1 K50 ["instances"]
      230 GETTABLEN                        R5 R6 1
      231 JUMPIFNOT                        R5 ; [+9]
      232 GETUPVAL                         R5 9
      233 GETTABLEKS                       R5 R5 K51 ["addMakeupThumbnailConfiguration"]
      235 GETTABLEKS                       R7 R1 K50 ["instances"]
      237 GETTABLEN                        R6 R7 1
      238 GETTABLEKS                       R7 R2 K49 ["selectedColor"]
      240 CALL                             R5 2 0
      241 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      243 GETIMPORT                        R6 K55 [Enum.AssetType.Animation]
      245 JUMPIFEQ                         R5 R6 ; [+7]
      247 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      249 GETIMPORT                        R6 K57 [Enum.AssetType.EmoteAnimation]
      251 JUMPIFNOTEQ                      R5 R6 ; [+58]
      253 GETUPVAL                         R5 11
      254 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      256 NAMECALL                         R5 R5 K59 ["isOverride"]
      258 CALL                             R5 2 1
      259 JUMPIFNOT                        R5 ; [+12]
      260 GETTABLEKS                       R5 R1 K60 ["overrideAnimationAsset"]
      262 GETTABLEKS                       R6 R1 K21 ["Network"]
      264 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      266 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      268 GETTABLEKS                       R8 R1 K50 ["instances"]
      270 CALL                             R5 3 0
      271 RETURN                           R0 0
      272 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      274 DUPTABLE                         R6 K67 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"]}]
      275 GETTABLEKS                       R7 R1 K21 ["Network"]
      277 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      279 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      281 GETTABLEKS                       R7 R2 K24 ["name"]
      283 SETTABLEKS                       R7 R6 K24 ["name"]
      285 GETTABLEKS                       R8 R2 K26 ["description"]
      287 ORK                              R7 R8 K25 [""]
      288 SETTABLEKS                       R7 R6 K26 ["description"]
      290 GETUPVAL                         R7 12
      291 CALL                             R7 0 1
      292 SETTABLEKS                       R7 R6 K64 ["userId"]
      294 SETTABLEKS                       R3 R6 K3 ["groupId"]
      296 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      298 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      300 GETTABLEKS                       R7 R1 K68 ["uploadFee"]
      302 SETTABLEKS                       R7 R6 K65 ["expectedPrice"]
      304 GETTABLEKS                       R7 R1 K50 ["instances"]
      306 SETTABLEKS                       R7 R6 K66 ["instance"]
      308 CALL                             R5 1 0
      309 RETURN                           R0 0
      310 GETUPVAL                         R5 9
      311 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      313 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      315 CALL                             R5 1 1
      316 JUMPIFNOT                        R5 ; [+134]
      317 GETUPVAL                         R5 13
      318 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      320 GETTABLEKS                       R8 R2 K69 ["dataSharingEnabled"]
      322 GETTABLEKS                       R9 R2 K70 ["dataSharingToggled"]
      324 NAMECALL                         R5 R5 K71 ["getDataSharingLicenseTypes"]
      326 CALL                             R5 4 1
      327 GETTABLEKS                       R6 R1 K72 ["isUploadFeeEnabled"]
      329 JUMPIFNOT                        R6 ; [+62]
      330 GETTABLEKS                       R6 R1 K73 ["uploadCatalogItemWithFee"]
      332 GETTABLEKS                       R7 R1 K21 ["Network"]
      334 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      336 GETUPVAL                         R8 1
      337 GETTABLEKS                       R8 R8 K2 ["state"]
      339 GETTABLEKS                       R8 R8 K24 ["name"]
      341 GETTABLEKS                       R10 R1 K74 ["allowedAssetTypesForUpload"]
      343 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      345 MOVE                             R12 R10
      346 JUMPIFNOT                        R12 ; [+5]
      347 MOVE                             R12 R11
      348 JUMPIFNOT                        R12 ; [+3]
      349 GETTABLEKS                       R13 R11 K75 ["Name"]
      351 GETTABLE                         R12 R10 R13
      352 MOVE                             R13 R12
      353 JUMPIFNOT                        R13 ; [+2]
      354 GETTABLEKS                       R13 R12 K76 ["allowedFileExtensions"]
      356 MOVE                             R14 R13
      357 JUMPIFNOT                        R14 ; [+6]
      358 LOADB                            R14 0
      359 LENGTH                           R15 R13
      360 LOADN                            R16 0
      361 JUMPIFNOTLT                      R16 R15 ; [+2]
      363 GETTABLEN                        R14 R13 1
      364 JUMPIFNOT                        R14 ; [+8]
      365 GETIMPORT                        R15 K79 [string.gsub]
      367 MOVE                             R16 R14
      368 LOADK                            R17 K80 ["^%."]
      369 LOADK                            R18 K25 [""]
      370 CALL                             R15 3 1
      371 MOVE                             R9 R15
      372 JUMPIF                           R9 ; [+1]
      373 LOADK                            R9 K81 ["rbxm"]
      374 GETUPVAL                         R11 1
      375 GETTABLEKS                       R11 R11 K2 ["state"]
      377 GETTABLEKS                       R11 R11 K26 ["description"]
      379 ORK                              R10 R11 K25 [""]
      380 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      382 GETTABLEKS                       R12 R1 K50 ["instances"]
      384 MOVE                             R13 R3
      385 MOVE                             R14 R5
      386 GETTABLEKS                       R15 R1 K82 ["Localization"]
      388 GETTABLEKS                       R16 R1 K68 ["uploadFee"]
      390 CALL                             R6 10 0
      391 RETURN                           R0 0
      392 GETTABLEKS                       R6 R1 K83 ["uploadCatalogItem"]
      394 GETTABLEKS                       R7 R1 K21 ["Network"]
      396 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      398 GETUPVAL                         R8 1
      399 GETTABLEKS                       R8 R8 K2 ["state"]
      401 GETTABLEKS                       R8 R8 K24 ["name"]
      403 GETTABLEKS                       R10 R1 K74 ["allowedAssetTypesForUpload"]
      405 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      407 MOVE                             R12 R10
      408 JUMPIFNOT                        R12 ; [+5]
      409 MOVE                             R12 R11
      410 JUMPIFNOT                        R12 ; [+3]
      411 GETTABLEKS                       R13 R11 K75 ["Name"]
      413 GETTABLE                         R12 R10 R13
      414 MOVE                             R13 R12
      415 JUMPIFNOT                        R13 ; [+2]
      416 GETTABLEKS                       R13 R12 K76 ["allowedFileExtensions"]
      418 MOVE                             R14 R13
      419 JUMPIFNOT                        R14 ; [+6]
      420 LOADB                            R14 0
      421 LENGTH                           R15 R13
      422 LOADN                            R16 0
      423 JUMPIFNOTLT                      R16 R15 ; [+2]
      425 GETTABLEN                        R14 R13 1
      426 JUMPIFNOT                        R14 ; [+8]
      427 GETIMPORT                        R15 K79 [string.gsub]
      429 MOVE                             R16 R14
      430 LOADK                            R17 K80 ["^%."]
      431 LOADK                            R18 K25 [""]
      432 CALL                             R15 3 1
      433 MOVE                             R9 R15
      434 JUMPIF                           R9 ; [+1]
      435 LOADK                            R9 K81 ["rbxm"]
      436 GETUPVAL                         R11 1
      437 GETTABLEKS                       R11 R11 K2 ["state"]
      439 GETTABLEKS                       R11 R11 K26 ["description"]
      441 ORK                              R10 R11 K25 [""]
      442 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      444 GETTABLEKS                       R12 R1 K50 ["instances"]
      446 MOVE                             R13 R5
      447 GETTABLEKS                       R14 R1 K82 ["Localization"]
      449 CALL                             R6 8 0
      450 RETURN                           R0 0
      451 GETUPVAL                         R5 9
      452 GETTABLEKS                       R5 R5 K84 ["isUGCBundleType"]
      454 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      456 CALL                             R5 1 1
      457 JUMPIFNOT                        R5 ; [+67]
      458 LOADNIL                          R5
      459 GETTABLEKS                       R6 R2 K69 ["dataSharingEnabled"]
      461 JUMPIFNOT                        R6 ; [+16]
      462 GETTABLEKS                       R6 R2 K70 ["dataSharingToggled"]
      464 JUMPIFNOT                        R6 ; [+11]
      465 NEWTABLE                         R6 0 1
      467 GETUPVAL                         R7 14
      468 GETTABLEKS                       R7 R7 K85 ["DataSharingLicenseTypes"]
      470 GETTABLEKS                       R7 R7 K86 ["RobloxGlobal"]
      472 SETLIST                          R6 R7 1 [1]
      474 MOVE                             R5 R6
      475 JUMP                             ; [+2]
      476 NEWTABLE                         R5 0 0
      478 GETUPVAL                         R7 15
      479 CALL                             R7 0 1
      480 JUMPIFNOT                        R7 ; [+7]
      481 GETUPVAL                         R6 16
      482 GETTABLEKS                       R6 R6 K87 ["isEmissiveFromAttributes"]
      484 GETTABLEKS                       R7 R1 K88 ["specialAttributes"]
      486 CALL                             R6 1 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R6
      489 GETTABLEKS                       R7 R1 K89 ["uploadUGCBundleWithFee"]
      491 GETTABLEKS                       R8 R1 K21 ["Network"]
      493 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      495 GETTABLEKS                       R10 R1 K50 ["instances"]
      497 GETTABLEN                        R9 R10 1
      498 GETTABLEKS                       R10 R1 K17 ["assetTypeEnum"]
      500 GETTABLEKS                       R11 R2 K24 ["name"]
      502 GETTABLEKS                       R13 R2 K26 ["description"]
      504 ORK                              R12 R13 K25 [""]
      505 GETTABLEKS                       R13 R1 K90 ["allowedBundleTypeSettings"]
      507 GETTABLEKS                       R14 R1 K82 ["Localization"]
      509 GETTABLEKS                       R15 R1 K68 ["uploadFee"]
      511 MOVE                             R16 R5
      512 GETTABLEKS                       R17 R1 K91 ["PublishService"]
      514 GETTABLEKS                       R17 R17 K92 ["publishService"]
      516 GETTABLEKS                       R19 R1 K93 ["groupBundlesUploadEnabledForUser"]
      518 JUMPIFNOT                        R19 ; [+2]
      519 MOVE                             R18 R3
      520 JUMP                             ; [+1]
      521 LOADNIL                          R18
      522 MOVE                             R19 R6
      523 CALL                             R7 12 0
      524 RETURN                           R0 0
      525 GETUPVAL                         R5 9
      526 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      528 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      530 CALL                             R5 1 1
      531 JUMPIFNOT                        R5 ; [+30]
      532 GETUPVAL                         R5 11
      533 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      535 NAMECALL                         R5 R5 K59 ["isOverride"]
      537 CALL                             R5 2 1
      538 JUMPIFNOT                        R5 ; [+23]
      539 GETTABLEKS                       R5 R1 K94 ["overrideAsset"]
      541 GETTABLEKS                       R6 R1 K21 ["Network"]
      543 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      545 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      547 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      549 GETTABLEKS                       R8 R8 K75 ["Name"]
      551 GETTABLEKS                       R9 R1 K50 ["instances"]
      553 GETUPVAL                         R11 17
      554 CALL                             R11 0 1
      555 JUMPIFNOT                        R11 ; [+3]
      556 GETTABLEKS                       R10 R1 K82 ["Localization"]
      558 JUMP                             ; [+1]
      559 LOADNIL                          R10
      560 CALL                             R5 5 0
      561 RETURN                           R0 0
      562 GETTABLEKS                       R5 R1 K95 ["uploadMarketplaceItem"]
      564 DUPTABLE                         R6 K97 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      565 GETTABLEKS                       R7 R1 K21 ["Network"]
      567 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      569 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      571 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      573 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      575 GETTABLEKS                       R7 R2 K24 ["name"]
      577 SETTABLEKS                       R7 R6 K24 ["name"]
      579 GETTABLEKS                       R8 R2 K26 ["description"]
      581 ORK                              R7 R8 K25 [""]
      582 SETTABLEKS                       R7 R6 K26 ["description"]
      584 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      586 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      588 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      590 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      592 SETTABLEKS                       R3 R6 K3 ["groupId"]
      594 GETTABLEKS                       R7 R1 K50 ["instances"]
      596 SETTABLEKS                       R7 R6 K50 ["instances"]
      598 JUMPIFNOT                        R4 ; [+2]
      599 LOADB                            R7 1
      600 JUMP                             ; [+1]
      601 LOADNIL                          R7
      602 SETTABLEKS                       R7 R6 K96 ["isMarketplaceModelsAsPackagesEnabled"]
      604 GETTABLEKS                       R7 R2 K27 ["status"]
      606 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      608 GETTABLEKS                       R7 R2 K29 ["price"]
      610 SETTABLEKS                       R7 R6 K29 ["price"]
      612 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      614 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      616 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      618 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      620 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      622 JUMPIFNOT                        R8 ; [+5]
      623 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      625 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      627 JUMP                             ; [+1]
      628 LOADNIL                          R7
      629 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      631 GETUPVAL                         R8 17
      632 CALL                             R8 0 1
      633 JUMPIFNOT                        R8 ; [+3]
      634 GETTABLEKS                       R7 R1 K82 ["Localization"]
      636 JUMP                             ; [+1]
      637 LOADNIL                          R7
      638 CALL                             R5 2 0
      639 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R1 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["VersionItemSelect"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R0 K3 ["VersionItemSelect"]
       12 GETTABLEN                        R3 R4 1
       13 GETTABLEKS                       R5 R0 K4 ["VersionDescriptionSave"]
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R4 R0 K4 ["VersionDescriptionSave"]
       18 JUMP                             ; [+2]
       19 NEWTABLE                         R4 0 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["props"]
       24 GETTABLEKS                       R5 R5 K5 ["Network"]
       26 GETTABLEKS                       R5 R5 K6 ["networkInterface"]
       28 JUMPIFNOT                        R2 ; [+31]
       29 JUMPIFNOT                        R3 ; [+30]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K0 ["props"]
       33 GETTABLEKS                       R6 R6 K7 ["postRevertVersion"]
       35 MOVE                             R7 R5
       36 MOVE                             R8 R2
       37 MOVE                             R9 R3
       38 CALL                             R6 3 0
       39 GETTABLEKS                       R8 R0 K3 ["VersionItemSelect"]
       41 GETTABLEN                        R7 R8 2
       42 ADDK                             R6 R7 K8 [1]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K9 ["Localization"]
       46 LOADK                            R9 K10 ["AssetConfig"]
       47 LOADK                            R10 K11 ["RestoredFromVersion"]
       48 DUPTABLE                         R11 K13 [{"versionNumber"}]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R13 R3
       51 GETIMPORT                        R12 K15 [tostring]
       53 CALL                             R12 1 1
       54 SETTABLEKS                       R12 R11 K12 ["versionNumber"]
       56 NAMECALL                         R7 R7 K16 ["getText"]
       58 CALL                             R7 4 1
       59 SETTABLE                         R7 R4 R6
       60 GETIMPORT                        R6 K18 [pairs]
       62 MOVE                             R7 R4
       63 CALL                             R6 1 3
       64 FORGPREP_NEXT                    R6
       65 JUMPIFNOT                        R10 ; [+10]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K0 ["props"]
       69 GETTABLEKS                       R11 R11 K19 ["postVersionDescription"]
       71 MOVE                             R12 R5
       72 MOVE                             R13 R2
       73 MOVE                             R14 R9
       74 MOVE                             R15 R10
       75 CALL                             R11 4 0
       76 FORGLOOP                         R6 2 ; [-12]
       78 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R1 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["VersionItemSelect"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R0 K3 ["VersionItemSelect"]
       12 GETTABLEN                        R3 R4 1
       13 JUMPIFNOT                        R2 ; [+20]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["props"]
       17 GETTABLEKS                       R4 R4 K4 ["dispatchPutPackagePermissionsRequest"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["props"]
       22 GETTABLEKS                       R5 R5 K5 ["Network"]
       24 GETTABLEKS                       R5 R5 K6 ["networkInterface"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["props"]
       31 GETTABLEKS                       R8 R8 K7 ["Localization"]
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U17
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          UPVAL U1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K0 ["props"]
       27 GETTABLEKS                       R4 R4 K1 ["changeTable"]
       29 MOVE                             R5 R4
       30 JUMPIFNOT                        R5 ; [+8]
       31 GETIMPORT                        R6 K3 [next]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKNIL                  R6 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K0 ["props"]
       42 GETTABLEKS                       R6 R6 K4 ["resetUploadResult"]
       44 CALL                             R6 0 0
       45 GETUPVAL                         R6 0
       46 CALL                             R6 0 1
       47 JUMPIFNOT                        R6 ; [+264]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K5 ["state"]
       51 GETUPVAL                         R7 6
       52 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       54 GETTABLEKS                       R7 R7 K7 ["DOWNLOAD_FLOW"]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K0 ["props"]
       59 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       61 JUMPIFNOTEQ                      R7 R8 ; [+16]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K0 ["props"]
       66 GETTABLEKS                       R7 R7 K9 ["dispatchDownloadFlow"]
       68 MOVE                             R8 R0
       69 GETTABLEKS                       R9 R6 K10 ["overrideAssetId"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K0 ["props"]
       74 GETTABLEKS                       R10 R10 K11 ["onClose"]
       76 CALL                             R7 3 0
       77 JUMP                             ; [+236]
       78 GETUPVAL                         R7 6
       79 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       81 GETTABLEKS                       R7 R7 K12 ["EDIT_FLOW"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K0 ["props"]
       86 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       88 JUMPIFNOTEQ                      R7 R8 ; [+76]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K0 ["props"]
       93 GETTABLEKS                       R7 R7 K13 ["dispatchEditFlow"]
       95 DUPTABLE                         R8 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K0 ["props"]
       99 GETTABLEKS                       R9 R9 K29 ["Network"]
      101 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      103 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K0 ["props"]
      108 GETTABLEKS                       R9 R9 K30 ["IXP"]
      110 SETTABLEKS                       R9 R8 K15 ["ixp"]
      112 GETUPVAL                         R9 1
      113 GETTABLEKS                       R9 R9 K0 ["props"]
      115 GETTABLEKS                       R9 R9 K16 ["assetId"]
      117 SETTABLEKS                       R9 R8 K16 ["assetId"]
      119 GETTABLEKS                       R9 R6 K16 ["assetId"]
      121 SETTABLEKS                       R9 R8 K17 ["stateAssetId"]
      123 GETTABLEKS                       R9 R6 K18 ["name"]
      125 SETTABLEKS                       R9 R8 K18 ["name"]
      127 GETTABLEKS                       R9 R6 K19 ["description"]
      129 SETTABLEKS                       R9 R8 K19 ["description"]
      131 GETTABLEKS                       R9 R6 K20 ["price"]
      133 SETTABLEKS                       R9 R8 K20 ["price"]
      135 GETTABLEKS                       R9 R6 K21 ["status"]
      137 SETTABLEKS                       R9 R8 K21 ["status"]
      139 GETTABLEKS                       R9 R6 K22 ["copyOn"]
      141 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      143 GETTABLEKS                       R9 R6 K23 ["copyChanged"]
      145 SETTABLEKS                       R9 R8 K23 ["copyChanged"]
      147 GETTABLEKS                       R9 R6 K24 ["commentOn"]
      149 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      151 GETTABLEKS                       R9 R6 K25 ["isAssetPublic"]
      153 SETTABLEKS                       R9 R8 K25 ["isAssetPublic"]
      155 GETTABLEKS                       R9 R6 K26 ["iconFile"]
      157 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      159 GETTABLEKS                       R9 R6 K27 ["assetMediaUpdateData"]
      161 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      163 CALL                             R7 1 0
      164 JUMP                             ; [+149]
      165 GETUPVAL                         R7 6
      166 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
      168 GETTABLEKS                       R7 R7 K31 ["UPLOAD_FLOW"]
      170 GETUPVAL                         R8 1
      171 GETTABLEKS                       R8 R8 K0 ["props"]
      173 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
      175 JUMPIFNOTEQ                      R7 R8 ; [+138]
      177 GETUPVAL                         R7 12
      178 GETUPVAL                         R9 1
      179 GETTABLEKS                       R9 R9 K0 ["props"]
      181 GETTABLEKS                       R9 R9 K32 ["assetTypeEnum"]
      183 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      185 GETTABLEKS                       R11 R6 K34 ["dataSharingToggled"]
      187 NAMECALL                         R7 R7 K35 ["getDataSharingLicenseTypes"]
      189 CALL                             R7 4 1
      190 GETUPVAL                         R8 1
      191 GETTABLEKS                       R8 R8 K0 ["props"]
      193 GETTABLEKS                       R8 R8 K36 ["dispatchUploadFlow"]
      195 DUPTABLE                         R9 K42 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled"}]
      196 GETUPVAL                         R10 1
      197 GETTABLEKS                       R10 R10 K0 ["props"]
      199 GETTABLEKS                       R10 R10 K29 ["Network"]
      201 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      203 SETTABLEKS                       R10 R9 K14 ["networkInterface"]
      205 GETUPVAL                         R10 1
      206 GETTABLEKS                       R10 R10 K0 ["props"]
      208 GETTABLEKS                       R10 R10 K43 ["Localization"]
      210 SETTABLEKS                       R10 R9 K37 ["localization"]
      212 GETUPVAL                         R10 1
      213 GETTABLEKS                       R10 R10 K0 ["props"]
      215 GETTABLEKS                       R10 R10 K44 ["PublishService"]
      217 GETTABLEKS                       R10 R10 K38 ["publishService"]
      219 SETTABLEKS                       R10 R9 K38 ["publishService"]
      221 GETUPVAL                         R10 1
      222 GETTABLEKS                       R10 R10 K0 ["props"]
      224 GETTABLEKS                       R10 R10 K30 ["IXP"]
      226 SETTABLEKS                       R10 R9 K15 ["ixp"]
      228 GETUPVAL                         R10 1
      229 GETTABLEKS                       R10 R10 K0 ["props"]
      231 GETTABLEKS                       R10 R10 K16 ["assetId"]
      233 SETTABLEKS                       R10 R9 K16 ["assetId"]
      235 GETUPVAL                         R11 1
      236 GETTABLEKS                       R11 R11 K0 ["props"]
      238 GETTABLEKS                       R11 R11 K39 ["groupId"]
      240 JUMPIFNOT                        R11 ; [+16]
      241 GETUPVAL                         R11 1
      242 GETTABLEKS                       R11 R11 K0 ["props"]
      244 GETTABLEKS                       R11 R11 K39 ["groupId"]
      246 GETUPVAL                         R12 2
      247 GETTABLEKS                       R12 R12 K45 ["None"]
      249 JUMPIFEQ                         R11 R12 ; [+7]
      251 GETUPVAL                         R10 1
      252 GETTABLEKS                       R10 R10 K0 ["props"]
      254 GETTABLEKS                       R10 R10 K39 ["groupId"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R10
      258 SETTABLEKS                       R10 R9 K39 ["groupId"]
      260 GETTABLEKS                       R10 R6 K18 ["name"]
      262 SETTABLEKS                       R10 R9 K18 ["name"]
      264 GETTABLEKS                       R10 R6 K19 ["description"]
      266 SETTABLEKS                       R10 R9 K19 ["description"]
      268 GETTABLEKS                       R10 R6 K10 ["overrideAssetId"]
      270 SETTABLEKS                       R10 R9 K10 ["overrideAssetId"]
      272 GETTABLEKS                       R10 R6 K22 ["copyOn"]
      274 SETTABLEKS                       R10 R9 K22 ["copyOn"]
      276 GETTABLEKS                       R10 R6 K24 ["commentOn"]
      278 SETTABLEKS                       R10 R9 K24 ["commentOn"]
      280 GETTABLEKS                       R10 R6 K21 ["status"]
      282 SETTABLEKS                       R10 R9 K21 ["status"]
      284 GETTABLEKS                       R10 R6 K20 ["price"]
      286 SETTABLEKS                       R10 R9 K20 ["price"]
      288 GETTABLEKS                       R10 R6 K26 ["iconFile"]
      290 SETTABLEKS                       R10 R9 K26 ["iconFile"]
      292 GETTABLEKS                       R10 R6 K40 ["selectedColor"]
      294 SETTABLEKS                       R10 R9 K40 ["selectedColor"]
      296 GETTABLEKS                       R10 R6 K27 ["assetMediaUpdateData"]
      298 SETTABLEKS                       R10 R9 K27 ["assetMediaUpdateData"]
      300 SETTABLEKS                       R7 R9 K41 ["dataSharingLicenseTypes"]
      302 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      304 SETTABLEKS                       R10 R9 K33 ["dataSharingEnabled"]
      306 GETTABLEKS                       R10 R6 K34 ["dataSharingToggled"]
      308 SETTABLEKS                       R10 R9 K34 ["dataSharingToggled"]
      310 CALL                             R8 1 0
      311 JUMP                             ; [+2]
      312 MOVE                             R6 R1
      313 CALL                             R6 0 0
      314 JUMPIFNOT                        R5 ; [+43]
      315 MOVE                             R6 R2
      316 MOVE                             R7 R4
      317 CALL                             R6 1 0
      318 GETUPVAL                         R6 1
      319 GETTABLEKS                       R6 R6 K0 ["props"]
      321 GETTABLEKS                       R6 R6 K46 ["isPackageAsset"]
      323 JUMPIFNOT                        R6 ; [+34]
      324 GETUPVAL                         R6 1
      325 GETTABLEKS                       R6 R6 K0 ["props"]
      327 GETTABLEKS                       R6 R6 K47 ["assetConfigData"]
      329 GETTABLEKS                       R7 R6 K48 ["Id"]
      331 GETTABLEKS                       R8 R4 K49 ["VersionItemSelect"]
      333 JUMPIFNOT                        R8 ; [+3]
      334 GETTABLEKS                       R9 R4 K49 ["VersionItemSelect"]
      336 GETTABLEN                        R8 R9 1
      337 JUMPIFNOT                        R7 ; [+20]
      338 GETUPVAL                         R9 1
      339 GETTABLEKS                       R9 R9 K0 ["props"]
      341 GETTABLEKS                       R9 R9 K50 ["dispatchPutPackagePermissionsRequest"]
      343 GETUPVAL                         R10 1
      344 GETTABLEKS                       R10 R10 K0 ["props"]
      346 GETTABLEKS                       R10 R10 K29 ["Network"]
      348 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      350 MOVE                             R11 R7
      351 MOVE                             R12 R8
      352 GETUPVAL                         R13 1
      353 GETTABLEKS                       R13 R13 K0 ["props"]
      355 GETTABLEKS                       R13 R13 K43 ["Localization"]
      357 CALL                             R9 4 0
      358 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["changeTable"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R3 K3 [next]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LOADB                            R3 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["assetTypeEnum"]
       20 GETIMPORT                        R5 K8 [Enum.AssetType.Animation]
       22 JUMPIFNOTEQ                      R4 R5 ; [+15]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["props"]
       27 GETTABLEKS                       R4 R4 K9 ["screenFlowType"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K10 ["FLOW_TYPE"]
       32 GETTABLEKS                       R5 R5 K11 ["DOWNLOAD_FLOW"]
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 MOVE                             R4 R2
       39 JUMPIFNOT                        R4 ; [+1]
       40 NOT                              R4 R3
       41 JUMPIFNOT                        R4 ; [+14]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U0
       44 JUMPIFNOT                        R0 ; [+6]
       45 GETUPVAL                         R6 0
       46 DUPTABLE                         R8 K14 [{["isShowChangeDiscardMessageBox"] = True}]
       47 NAMECALL                         R6 R6 K15 ["setState"]
       49 CALL                             R6 2 0
       50 RETURN                           R0 0
       51 GETIMPORT                        R6 K17 [spawn]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K0 ["props"]
       59 GETTABLEKS                       R5 R5 K18 ["onClose"]
       61 CALL                             R5 0 0
       62 GETIMPORT                        R5 K20 [game]
       64 LOADK                            R7 K21 ["StudioAssetService"]
       65 NAMECALL                         R5 R5 K22 ["GetService"]
       67 CALL                             R5 2 1
       68 LOADB                            R7 0
       69 NAMECALL                         R5 R5 K23 ["FireOnUGCSubmitCompleted"]
       71 CALL                             R5 2 0
       72 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_28:
        0 JUMPIFNOTEQKS                    R1 K0 ["yes"] ; [+48]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+23]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["changeTable"]
        9 JUMPIFNOT                        R2 ; [+17]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["changeTable"]
       15 GETTABLEKS                       R2 R2 K3 ["VersionDescriptionSave"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["onPackageNoteCanceled"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["props"]
       24 GETTABLEKS                       R3 R3 K5 ["assetId"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K1 ["props"]
       30 GETTABLEKS                       R2 R2 K6 ["Focus"]
       32 NAMECALL                         R2 R2 K7 ["get"]
       34 CALL                             R2 1 1
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K8 ["Enabled"]
       38 GETIMPORT                        R3 K10 [game]
       40 LOADK                            R5 K11 ["StudioAssetService"]
       41 NAMECALL                         R3 R3 K12 ["GetService"]
       43 CALL                             R3 2 1
       44 LOADB                            R5 1
       45 NAMECALL                         R3 R3 K13 ["FireOnUGCSubmitCompleted"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 1
       50 DUPTABLE                         R4 K16 [{["isShowChangeDiscardMessageBox"] = False}]
       51 NAMECALL                         R2 R2 K17 ["setState"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigName"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Name"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K8 [{"name", "showNameRequiredError"}]
       25 SETTABLEKS                       R0 R3 K6 ["name"]
       27 GETUPVAL                         R5 1
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADB                            R4 0
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K7 ["showNameRequiredError"]
       35 NAMECALL                         R1 R1 K9 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigDesc"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Description"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K8 [{"description", "showDescriptionRequiredError"}]
       25 SETTABLEKS                       R0 R3 K6 ["description"]
       27 GETUPVAL                         R5 1
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADB                            R4 0
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R3 K7 ["showDescriptionRequiredError"]
       35 NAMECALL                         R1 R1 K9 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigStatus"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Status"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADNIL                          R3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K6 [{"status"}]
       25 SETTABLEKS                       R0 R3 K5 ["status"]
       27 NAMECALL                         R1 R1 K7 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigPrice"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Price"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADNIL                          R3
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K6 [{"price"}]
       25 SETTABLEKS                       R0 R3 K5 ["price"]
       27 NAMECALL                         R1 R1 K7 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R2 K2 ["Creator"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["makeChangeRequest"]
       15 LOADK                            R4 K4 ["AssetConfigOwner"]
       16 GETTABLEKS                       R6 R2 K6 ["type"]
       18 ORK                              R5 R6 K5 [1]
       19 MOVE                             R6 R0
       20 CALL                             R3 3 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["None"]
       24 LOADB                            R4 0
       25 GETTABLEKS                       R5 R1 K8 ["creatorType"]
       27 JUMPIFNOTEQKS                    R5 K9 ["Group"] ; [+4]
       29 GETTABLEKS                       R3 R1 K10 ["creatorId"]
       31 LOADB                            R4 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K11 ["Dictionary"]
       35 GETTABLEKS                       R5 R5 K12 ["join"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K13 ["state"]
       40 GETTABLEKS                       R6 R6 K14 ["owner"]
       42 JUMPIF                           R6 ; [+2]
       43 NEWTABLE                         R6 0 0
       45 DUPTABLE                         R7 K16 [{"typeId"}]
       46 SETTABLEKS                       R0 R7 K15 ["typeId"]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["props"]
       52 GETTABLEKS                       R6 R6 K17 ["setOwner"]
       54 MOVE                             R7 R5
       55 MOVE                             R8 R3
       56 CALL                             R6 2 0
       57 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_35]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["state"]
        6 GETTABLEKS                       R2 R2 K1 ["status"]
        8 GETUPVAL                         R3 0
        9 DUPTABLE                         R5 K4 [{"copyChanged", "copyOn", "status"}]
       10 SETTABLEKS                       R1 R5 K2 ["copyChanged"]
       12 SETTABLEKS                       R0 R5 K3 ["copyOn"]
       14 SETTABLEKS                       R2 R5 K1 ["status"]
       16 NAMECALL                         R3 R3 K5 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["props"]
       22 GETTABLEKS                       R4 R4 K8 ["assetConfigData"]
       24 GETTABLEKS                       R4 R4 K9 ["IsCopyingAllowed"]
       26 ORK                              R3 R4 K6 [False]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["props"]
       30 GETTABLEKS                       R4 R4 K10 ["fiatProduct"]
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K7 ["props"]
       36 GETTABLEKS                       R4 R4 K10 ["fiatProduct"]
       38 GETTABLEKS                       R3 R4 K11 ["purchasable"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K7 ["props"]
       43 GETTABLEKS                       R4 R4 K12 ["makeChangeRequest"]
       45 LOADK                            R5 K13 ["AssetConfigCopy"]
       46 MOVE                             R6 R3
       47 MOVE                             R7 R0
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"commentOn"}]
        2 SETTABLEKS                       R0 R3 K0 ["commentOn"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["AssetConfigComment"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["props"]
       16 GETTABLEKS                       R4 R4 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R4 K8 ["EnableComments"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["updateStore"]
        5 DUPTABLE                         R5 K6 [{"animationPackType", "animationPackSubName", "animationPackWeight", "animationPackParentModelName"}]
        6 MOVE                             R6 R0
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K7 ["None"]
       11 SETTABLEKS                       R6 R5 K2 ["animationPackType"]
       13 MOVE                             R6 R1
       14 JUMPIF                           R6 ; [+3]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K7 ["None"]
       18 SETTABLEKS                       R6 R5 K3 ["animationPackSubName"]
       20 MOVE                             R6 R2
       21 JUMPIF                           R6 ; [+3]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K7 ["None"]
       25 SETTABLEKS                       R6 R5 K4 ["animationPackWeight"]
       27 MOVE                             R6 R3
       28 JUMPIF                           R6 ; [+3]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["None"]
       32 SETTABLEKS                       R6 R5 K5 ["animationPackParentModelName"]
       34 CALL                             R4 1 0
       35 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{[1], ["showColorPickerRequiredError"] = False}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedColor"]
        4 NAMECALL                         R1 R1 K4 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["setThumbnailSkinColor"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K6 ["props"]
       13 GETTABLEKS                       R2 R2 K7 ["Plugin"]
       15 NAMECALL                         R2 R2 K8 ["get"]
       17 CALL                             R2 1 1
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["versionsOpenInputKey"]
        5 LOADNIL                          R4
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQ                      R3 R0 ; [+3]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 1
       14 JUMPIFNOT                        R5 ; [+46]
       15 JUMPIFNOT                        R2 ; [+45]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["state"]
       19 GETTABLEKS                       R5 R5 K2 ["versionsRootItems"]
       21 JUMPIFNOT                        R5 ; [+39]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K0 ["state"]
       25 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       27 GETTABLE                         R5 R6 R3
       28 JUMPIFNOT                        R5 ; [+32]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K0 ["state"]
       32 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       34 GETTABLE                         R5 R6 R3
       35 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       37 JUMPIFNOT                        R5 ; [+23]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["state"]
       41 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       43 GETTABLE                         R5 R6 R3
       44 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       46 GETTABLEKS                       R5 R5 K4 ["versionDescription"]
       48 JUMPIFEQ                         R1 R5 ; [+12]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K5 ["onPackageNoteDiscarded"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K6 ["props"]
       56 GETTABLEKS                       R6 R6 K7 ["assetId"]
       58 MOVE                             R7 R3
       59 MOVE                             R8 R1
       60 CALL                             R5 3 0
       61 JUMPIF                           R2 ; [+27]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["state"]
       65 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       67 GETTABLE                         R5 R6 R3
       68 JUMPIFNOT                        R5 ; [+20]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K0 ["state"]
       72 GETTABLEKS                       R6 R6 K2 ["versionsRootItems"]
       74 GETTABLE                         R5 R6 R3
       75 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       77 GETTABLEKS                       R5 R5 K4 ["versionDescription"]
       79 JUMPIFEQ                         R1 R5 ; [+9]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K8 ["versionsSaveInput"]
       84 MOVE                             R6 R1
       85 MOVE                             R7 R3
       86 MOVE                             R8 R4
       87 CALL                             R5 3 0
       88 RETURN                           R0 0
       89 JUMPIFNOT                        R4 ; [+7]
       90 GETUPVAL                         R5 0
       91 DUPTABLE                         R7 K9 [{"versionsOpenInputKey"}]
       92 SETTABLEKS                       R4 R7 K1 ["versionsOpenInputKey"]
       94 NAMECALL                         R5 R5 K10 ["setState"]
       96 CALL                             R5 2 0
       97 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["state"]
        3 GETTABLEKS                       R5 R5 K1 ["versionsRootItems"]
        5 GETTABLE                         R6 R5 R1
        6 JUMPIFNOT                        R6 ; [+37]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["props"]
       10 GETTABLEKS                       R7 R7 K3 ["changeTable"]
       12 GETTABLEKS                       R7 R7 K4 ["VersionDescriptionSave"]
       14 JUMPIFNOT                        R7 ; [+8]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["props"]
       18 GETTABLEKS                       R6 R6 K3 ["changeTable"]
       20 GETTABLEKS                       R6 R6 K4 ["VersionDescriptionSave"]
       22 JUMP                             ; [+2]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 SETTABLE                         R0 R7 R1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K2 ["props"]
       32 GETTABLEKS                       R8 R8 K5 ["makeChangeRequest"]
       34 LOADK                            R9 K4 ["VersionDescriptionSave"]
       35 MOVE                             R10 R6
       36 MOVE                             R11 R7
       37 GETUPVAL                         R12 2
       38 CALL                             R8 4 0
       39 GETTABLE                         R8 R5 R1
       40 GETTABLEKS                       R8 R8 K6 ["descriptionColumn"]
       42 SETTABLEKS                       R0 R8 K7 ["versionDescription"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K8 ["versionsSetStates"]
       47 MOVE                             R7 R5
       48 MOVE                             R8 R2
       49 MOVE                             R9 R3
       50 MOVE                             R10 R4
       51 CALL                             R6 4 0
       52 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R4 K2 [{"versionsPageRootItems", "versionsRootItems"}]
        1 GETUPVAL                         R5 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 MOVE                             R7 R2
        4 JUMP                             ; [+5]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K3 ["state"]
        8 GETTABLEKS                       R7 R7 K4 ["versionsPageIndex"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R8 R3
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K5 ["VERSIONS_ROWS_PER_PAGE"]
       16 NAMECALL                         R5 R5 K6 ["versionsGetPageRootItems"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K0 ["versionsPageRootItems"]
       21 SETTABLEKS                       R0 R4 K1 ["versionsRootItems"]
       23 JUMPIFNOT                        R1 ; [+2]
       24 SETTABLEKS                       R1 R4 K7 ["versionsOpenInputKey"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 SETTABLEKS                       R2 R4 K4 ["versionsPageIndex"]
       29 GETUPVAL                         R5 0
       30 MOVE                             R7 R4
       31 NAMECALL                         R5 R5 K8 ["setState"]
       33 CALL                             R5 2 0
       34 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R1 K2 [-1] ; [+12]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["versionsOnDescClicked"]
       10 LOADN                            R2 -1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["state"]
       14 GETTABLEKS                       R3 R3 K4 ["versionsPreviousInput"]
       16 MOVE                             R4 R0
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["versionDescriptionErrors"]
        5 SETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K2 [{"versionDescriptionErrors"}]
        8 SETTABLEKS                       R2 R5 K1 ["versionDescriptionErrors"]
       10 NAMECALL                         R3 R3 K3 ["setState"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["versionsSaveInput"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["versionsPreviousInput"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["state"]
       11 GETTABLEKS                       R4 R4 K3 ["versionsOpenInputKey"]
       13 LOADN                            R5 -1
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R2 K2 [1] ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["versionsOnDescClicked"]
       10 LOADN                            R3 -1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["state"]
       14 GETTABLEKS                       R4 R4 K4 ["versionsPreviousInput"]
       16 LOADB                            R5 0
       17 CALL                             R2 3 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["setTab"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_53:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+27]
        8 JUMPIFNOT                        R0 ; [+26]
        9 GETUPVAL                         R3 1
       10 DUPTABLE                         R5 K3 [{"iconFile"}]
       11 SETTABLEKS                       R0 R5 K2 ["iconFile"]
       13 NAMECALL                         R3 R3 K4 ["setState"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["props"]
       19 GETTABLEKS                       R3 R3 K6 ["makeChangeRequest"]
       21 LOADK                            R4 K7 ["AssetConfigIconSelect"]
       22 LOADK                            R5 K8 [""]
       23 GETTABLEKS                       R6 R0 K9 ["Name"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["props"]
       29 GETTABLEKS                       R3 R3 K10 ["updateStore"]
       31 DUPTABLE                         R4 K3 [{"iconFile"}]
       32 SETTABLEKS                       R0 R4 K2 ["iconFile"]
       34 CALL                             R3 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isAssetPublic"}]
        2 SETTABLEKS                       R0 R3 K0 ["isAssetPublic"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["SharingEnabled"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["props"]
       16 GETTABLEKS                       R4 R4 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R4 K5 ["SharingEnabled"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 JUMPIF                           R0 ; [+17]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K8 ["state"]
       27 GETTABLEKS                       R3 R1 K9 ["copyOnOriginalValue"]
       29 GETTABLEKS                       R4 R1 K10 ["copyOn"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K11 ["toggleCopy"]
       38 LOADB                            R4 0
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 MOVE                             R2 R0
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["verification"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["verification"]
       10 GETTABLEKS                       R2 R2 K2 ["isVerified"]
       12 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
       14 GETIMPORT                        R5 K7 [Enum.AssetType.Plugin]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 AND                              R4 R2 R3
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETTABLEKS                       R5 R1 K8 ["dispatchGetAssetMediaMetadataArray"]
       24 GETTABLEKS                       R6 R1 K9 ["Network"]
       26 GETTABLEKS                       R6 R6 K10 ["networkInterface"]
       28 GETTABLEKS                       R7 R1 K11 ["assetId"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["assetId"]
        9 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       11 GETTABLEKS                       R4 R0 K5 ["isPackageAsset"]
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+8]
       20 NEWTABLE                         R6 0 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K6 ["Package"]
       25 SETLIST                          R6 R7 1 [1]
       27 MOVE                             R5 R6
       28 GETTABLEKS                       R6 R0 K7 ["dispatchGetPublishingRequirements"]
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 MOVE                             R9 R3
       33 MOVE                             R10 R5
       34 CALL                             R6 4 -1
       35 RETURN                           R6 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["assetMediaUpdateData"]
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K3 [{"assetMediaUpdateData"}]
       11 SETTABLEKS                       R0 R3 K2 ["assetMediaUpdateData"]
       13 NAMECALL                         R1 R1 K4 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["assetTypeEnum"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+10]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["isUGCBundleType"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["props"]
       16 GETTABLEKS                       R1 R1 K2 ["assetTypeEnum"]
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+5]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K1 ["props"]
       23 GETTABLEKS                       R0 R0 K4 ["assetTypeValidationSucceeded"]
       25 RETURN                           R0 1

PROTO_60:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["state"]
        5 GETTABLEKS                       R1 R1 K3 ["versionDescriptionErrors"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADB                            R5 0
       11 RETURN                           R5 1
       12 FORGLOOP                         R0 2 ; [-4]
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 DUPTABLE                         R2 K6 [{"TextSize", "Font", "Icon", "onButtonClicked", "onClose"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K7 ["FONT_SIZE_MEDIUM"]
        7 SETTABLEKS                       R3 R2 K1 ["TextSize"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K8 ["FONT"]
       12 SETTABLEKS                       R3 R2 K2 ["Font"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K9 ["INFO_ICON"]
       17 SETTABLEKS                       R3 R2 K3 ["Icon"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K10 ["tryCloseAssetConfig"]
       22 SETTABLEKS                       R3 R2 K4 ["onButtonClicked"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K11 ["onMessageBoxClosed"]
       27 SETTABLEKS                       R3 R2 K5 ["onClose"]
       29 JUMPIFNOT                        R0 ; [+45]
       30 GETTABLEKS                       R3 R1 K12 ["Localization"]
       32 LOADK                            R5 K13 ["AssetConfig"]
       33 LOADK                            R6 K14 ["Error"]
       34 NAMECALL                         R3 R3 K15 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K16 ["Title"]
       39 GETTABLEKS                       R3 R1 K12 ["Localization"]
       41 LOADK                            R5 K13 ["AssetConfig"]
       42 LOADK                            R6 K17 ["GetAssetFailed"]
       43 NAMECALL                         R3 R3 K15 ["getText"]
       45 CALL                             R3 3 1
       46 SETTABLEKS                       R3 R2 K18 ["Text"]
       48 NEWTABLE                         R3 0 1
       50 DUPTABLE                         R4 K21 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
       51 GETTABLEKS                       R5 R1 K12 ["Localization"]
       53 LOADK                            R7 K22 ["Common"]
       54 LOADK                            R8 K23 ["Close"]
       55 NAMECALL                         R5 R5 K15 ["getText"]
       57 CALL                             R5 3 1
       58 SETTABLEKS                       R5 R4 K18 ["Text"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K8 ["FONT"]
       63 SETTABLEKS                       R5 R4 K2 ["Font"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
       68 SETTABLEKS                       R5 R4 K1 ["TextSize"]
       70 SETLIST                          R3 R4 1 [1]
       72 SETTABLEKS                       R3 R2 K24 ["buttons"]
       74 RETURN                           R2 1
       75 GETTABLEKS                       R3 R1 K12 ["Localization"]
       77 LOADK                            R5 K25 ["General"]
       78 LOADK                            R6 K26 ["Discard"]
       79 NAMECALL                         R3 R3 K15 ["getText"]
       81 CALL                             R3 3 1
       82 SETTABLEKS                       R3 R2 K16 ["Title"]
       84 GETTABLEKS                       R3 R1 K12 ["Localization"]
       86 LOADK                            R5 K25 ["General"]
       87 LOADK                            R6 K27 ["DiscardMessage"]
       88 NAMECALL                         R3 R3 K15 ["getText"]
       90 CALL                             R3 3 1
       91 SETTABLEKS                       R3 R2 K18 ["Text"]
       93 NEWTABLE                         R3 0 2
       95 DUPTABLE                         R4 K29 [{["Text"], ["Font"], ["TextSize"], ["action"] = "no"}]
       96 GETTABLEKS                       R5 R1 K12 ["Localization"]
       98 LOADK                            R7 K25 ["General"]
       99 LOADK                            R8 K30 ["SearchOptionsCancel"]
      100 NAMECALL                         R5 R5 K15 ["getText"]
      102 CALL                             R5 3 1
      103 SETTABLEKS                       R5 R4 K18 ["Text"]
      105 GETUPVAL                         R5 1
      106 GETTABLEKS                       R5 R5 K8 ["FONT"]
      108 SETTABLEKS                       R5 R4 K2 ["Font"]
      110 GETUPVAL                         R5 1
      111 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
      113 SETTABLEKS                       R5 R4 K1 ["TextSize"]
      115 DUPTABLE                         R5 K21 [{["Text"], ["Font"], ["TextSize"], ["action"] = "yes"}]
      116 GETTABLEKS                       R6 R1 K12 ["Localization"]
      118 LOADK                            R8 K25 ["General"]
      119 LOADK                            R9 K26 ["Discard"]
      120 NAMECALL                         R6 R6 K15 ["getText"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K18 ["Text"]
      125 GETUPVAL                         R6 1
      126 GETTABLEKS                       R6 R6 K8 ["FONT"]
      128 SETTABLEKS                       R6 R5 K2 ["Font"]
      130 GETUPVAL                         R6 1
      131 GETTABLEKS                       R6 R6 K7 ["FONT_SIZE_MEDIUM"]
      133 SETTABLEKS                       R6 R5 K1 ["TextSize"]
      135 SETLIST                          R3 R4 2 [1]
      137 SETTABLEKS                       R3 R2 K24 ["buttons"]
      139 RETURN                           R2 1

PROTO_62:
        0 NEWTABLE                         R2 64 0
        2 LOADNIL                          R3
        3 SETTABLEKS                       R3 R2 K0 ["assetId"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["name"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["description"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K3 ["owner"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["allowCopy"]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K5 ["copyOn"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K6 ["copyChanged"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K7 ["allowComment"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K8 ["commentOn"]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K9 ["canBePackage"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K10 ["isPackageAsset"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K11 ["price"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K12 ["status"]
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K13 ["isAssetPublic"]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K14 ["assetMediaUpdateData"]
       47 LOADB                            R3 0
       48 SETTABLEKS                       R3 R2 K15 ["isShowChangeDiscardMessageBox"]
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K16 ["isPublishAssetsDialogEnabled"]
       53 LOADB                            R3 0
       54 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
       56 GETUPVAL                         R4 0
       57 CALL                             R4 0 1
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADNIL                          R3
       60 JUMP                             ; [+1]
       61 LOADB                            R3 0
       62 SETTABLEKS                       R3 R2 K18 ["isShowRobuxSpendMessageBox"]
       64 NEWTABLE                         R3 0 0
       66 SETTABLEKS                       R3 R2 K19 ["descendantIds"]
       68 LOADNIL                          R3
       69 SETTABLEKS                       R3 R2 K20 ["overrideAssetId"]
       71 LOADNIL                          R3
       72 SETTABLEKS                       R3 R2 K21 ["groupId"]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K22 ["iconFile"]
       77 LOADB                            R3 0
       78 SETTABLEKS                       R3 R2 K23 ["dispatchGetFunction"]
       80 LOADB                            R3 0
       81 SETTABLEKS                       R3 R2 K24 ["isConfirmationDialogEnabled"]
       83 LOADB                            R3 0
       84 SETTABLEKS                       R3 R2 K25 ["confirmationDialogKey"]
       86 NEWTABLE                         R3 0 0
       88 SETTABLEKS                       R3 R2 K26 ["versionsCurrentItem"]
       90 NEWTABLE                         R3 0 0
       92 SETTABLEKS                       R3 R2 K27 ["versionsRootItems"]
       94 LOADN                            R3 -1
       95 SETTABLEKS                       R3 R2 K28 ["versionsOpenInputKey"]
       97 LOADK                            R3 K29 [""]
       98 SETTABLEKS                       R3 R2 K30 ["versionsPreviousInput"]
      100 LOADN                            R3 1
      101 SETTABLEKS                       R3 R2 K31 ["versionsPageIndex"]
      103 LOADN                            R5 1
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K32 ["VERSIONS_ROWS_PER_PAGE"]
      107 NAMECALL                         R3 R0 K33 ["versionsGetPageRootItems"]
      109 CALL                             R3 3 1
      110 SETTABLEKS                       R3 R2 K34 ["versionsPageRootItems"]
      112 NEWTABLE                         R3 0 0
      114 SETTABLEKS                       R3 R2 K35 ["versionDescriptionErrors"]
      116 LOADB                            R3 0
      117 SETTABLEKS                       R3 R2 K36 ["dataSharingEnabled"]
      119 LOADB                            R3 0
      120 SETTABLEKS                       R3 R2 K37 ["dataSharingToggled"]
      122 GETUPVAL                         R4 2
      123 CALL                             R4 0 1
      124 JUMPIFNOT                        R4 ; [+12]
      125 GETUPVAL                         R3 3
      126 GETTABLEKS                       R3 R3 K38 ["getThumbnailSkinColor"]
      128 GETTABLEKS                       R4 R0 K39 ["props"]
      130 GETTABLEKS                       R4 R4 K40 ["Plugin"]
      132 NAMECALL                         R4 R4 K41 ["get"]
      134 CALL                             R4 1 -1
      135 CALL                             R3 -1 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R3
      138 SETTABLEKS                       R3 R2 K42 ["selectedColor"]
      140 LOADB                            R3 0
      141 SETTABLEKS                       R3 R2 K43 ["showColorPickerRequiredError"]
      143 LOADB                            R3 0
      144 SETTABLEKS                       R3 R2 K44 ["showNameRequiredError"]
      146 LOADB                            R3 0
      147 SETTABLEKS                       R3 R2 K45 ["showDescriptionRequiredError"]
      149 SETTABLEKS                       R2 R0 K46 ["state"]
      151 GETTABLEKS                       R2 R0 K46 ["state"]
      153 GETUPVAL                         R3 3
      154 GETTABLEKS                       R3 R3 K47 ["hasAllowedAssetTypesForRelease"]
      156 GETTABLEKS                       R4 R0 K39 ["props"]
      158 GETTABLEKS                       R4 R4 K48 ["allowedAssetTypesForRelease"]
      160 CALL                             R3 1 1
      161 JUMPIFNOT                        R3 ; [+9]
      162 GETUPVAL                         R4 3
      163 GETTABLEKS                       R4 R4 K49 ["isBuyableMarketplaceAsset"]
      165 GETTABLEKS                       R5 R0 K39 ["props"]
      167 GETTABLEKS                       R5 R5 K50 ["assetTypeEnum"]
      169 CALL                             R4 1 1
      170 NOT                              R3 R4
      171 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
      173 GETUPVAL                         R2 3
      174 GETTABLEKS                       R2 R2 K51 ["isMarketplaceAsset"]
      176 GETTABLEKS                       R3 R1 K50 ["assetTypeEnum"]
      178 CALL                             R2 1 1
      179 JUMPIFNOT                        R2 ; [+9]
      180 GETTABLEKS                       R2 R0 K46 ["state"]
      182 GETUPVAL                         R3 4
      183 GETTABLEKS                       R3 R3 K52 ["ASSET_STATUS"]
      185 GETTABLEKS                       R3 R3 K53 ["OffSale"]
      187 SETTABLEKS                       R3 R2 K12 ["status"]
      189 LOADNIL                          R2
      190 SETTABLEKS                       R2 R0 K54 ["nameString"]
      192 LOADNIL                          R2
      193 SETTABLEKS                       R2 R0 K55 ["descriptionString"]
      195 LOADB                            R2 0
      196 SETTABLEKS                       R2 R0 K56 ["init"]
      198 NEWCLOSURE                       R2 P0
      199 CAPTURE                          VAL R0
      200 SETTABLEKS                       R2 R0 K57 ["onDialogAccepted"]
      202 NEWCLOSURE                       R2 P1
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R2 R0 K58 ["onDialogCanceled"]
      206 NEWCLOSURE                       R2 P2
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R2 R0 K59 ["onAssetPublishDialogAccepted"]
      210 NEWCLOSURE                       R2 P3
      211 CAPTURE                          VAL R0
      212 SETTABLEKS                       R2 R0 K60 ["onAssetPublishDialogCanceled"]
      214 GETUPVAL                         R3 0
      215 CALL                             R3 0 1
      216 JUMPIFNOT                        R3 ; [+2]
      217 LOADNIL                          R2
      218 JUMP                             ; [+2]
      219 NEWCLOSURE                       R2 P4
      220 CAPTURE                          VAL R0
      221 SETTABLEKS                       R2 R0 K61 ["onAssetPublishPayAndConfirmAccepted"]
      223 GETUPVAL                         R3 0
      224 CALL                             R3 0 1
      225 JUMPIFNOT                        R3 ; [+2]
      226 LOADNIL                          R2
      227 JUMP                             ; [+2]
      228 NEWCLOSURE                       R2 P5
      229 CAPTURE                          VAL R0
      230 SETTABLEKS                       R2 R0 K62 ["onAssetPublishPayAndConfirmCanceled"]
      232 NEWCLOSURE                       R2 P6
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R2 R0 K63 ["tryMakeAssetsPublic"]
      236 NEWCLOSURE                       R2 P7
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U3
      239 CAPTURE                          UPVAL U5
      240 CAPTURE                          UPVAL U4
      241 CAPTURE                          UPVAL U6
      242 CAPTURE                          UPVAL U0
      243 SETTABLEKS                       R2 R0 K64 ["tryPublishWithConfirmDialog"]
      245 NEWCLOSURE                       R2 P8
      246 CAPTURE                          UPVAL U7
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U8
      249 CAPTURE                          UPVAL U9
      250 CAPTURE                          UPVAL U10
      251 CAPTURE                          UPVAL U11
      252 CAPTURE                          UPVAL U4
      253 CAPTURE                          UPVAL U12
      254 CAPTURE                          UPVAL U3
      255 CAPTURE                          UPVAL U2
      256 CAPTURE                          UPVAL U13
      257 CAPTURE                          UPVAL U14
      258 CAPTURE                          UPVAL U15
      259 CAPTURE                          UPVAL U1
      260 CAPTURE                          UPVAL U16
      261 CAPTURE                          UPVAL U17
      262 CAPTURE                          UPVAL U18
      263 CAPTURE                          VAL R1
      264 SETTABLEKS                       R2 R0 K65 ["tryPublish"]
      266 NEWCLOSURE                       R2 P9
      267 CAPTURE                          VAL R0
      268 CAPTURE                          VAL R1
      269 CAPTURE                          UPVAL U4
      270 SETTABLEKS                       R2 R0 K66 ["tryCancel"]
      272 NEWCLOSURE                       R2 P10
      273 CAPTURE                          VAL R0
      274 SETTABLEKS                       R2 R0 K67 ["tryCancelNoYield"]
      276 NEWCLOSURE                       R2 P11
      277 CAPTURE                          VAL R0
      278 SETTABLEKS                       R2 R0 K68 ["tryCancelWithYield"]
      280 NEWCLOSURE                       R2 P12
      281 CAPTURE                          VAL R0
      282 SETTABLEKS                       R2 R0 K69 ["onMessageBoxClosed"]
      284 NEWCLOSURE                       R2 P13
      285 CAPTURE                          UPVAL U19
      286 CAPTURE                          VAL R0
      287 CAPTURE                          UPVAL U20
      288 SETTABLEKS                       R2 R0 K70 ["tryCloseAssetConfig"]
      290 NEWCLOSURE                       R2 P14
      291 CAPTURE                          VAL R0
      292 NEWCLOSURE                       R3 P15
      293 CAPTURE                          VAL R0
      294 CAPTURE                          UPVAL U21
      295 SETTABLEKS                       R3 R0 K71 ["onNameChange"]
      297 NEWCLOSURE                       R3 P16
      298 CAPTURE                          VAL R0
      299 CAPTURE                          UPVAL U21
      300 SETTABLEKS                       R3 R0 K72 ["onDescChange"]
      302 NEWCLOSURE                       R3 P17
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R3 R0 K73 ["onStatusChange"]
      306 NEWCLOSURE                       R3 P18
      307 CAPTURE                          VAL R0
      308 SETTABLEKS                       R3 R0 K74 ["onPriceChange"]
      310 NEWCLOSURE                       R3 P19
      311 CAPTURE                          VAL R0
      312 CAPTURE                          UPVAL U8
      313 SETTABLEKS                       R3 R0 K75 ["onAccessChange"]
      315 NEWCLOSURE                       R3 P20
      316 CAPTURE                          VAL R0
      317 SETTABLEKS                       R3 R0 K76 ["onDataConsentToggleClick"]
      319 NEWCLOSURE                       R3 P21
      320 CAPTURE                          VAL R0
      321 SETTABLEKS                       R3 R0 K77 ["toggleCopy"]
      323 NEWCLOSURE                       R3 P22
      324 CAPTURE                          VAL R0
      325 SETTABLEKS                       R3 R0 K78 ["toggleComment"]
      327 NEWCLOSURE                       R3 P23
      328 CAPTURE                          VAL R0
      329 SETTABLEKS                       R3 R0 K79 ["toggleDeleteLocal"]
      331 GETUPVAL                         R3 22
      332 CALL                             R3 0 1
      333 JUMPIFNOT                        R3 ; [+9]
      334 NEWCLOSURE                       R3 P24
      335 CAPTURE                          VAL R0
      336 CAPTURE                          UPVAL U8
      337 SETTABLEKS                       R3 R0 K80 ["onAnimationSelectionChanged"]
      339 NEWCLOSURE                       R3 P25
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R3 R0 K81 ["onanimationSectionValidityChanged"]
      343 GETUPVAL                         R4 2
      344 CALL                             R4 0 1
      345 JUMPIFNOT                        R4 ; [+4]
      346 NEWCLOSURE                       R3 P26
      347 CAPTURE                          VAL R0
      348 CAPTURE                          UPVAL U3
      349 JUMP                             ; [+1]
      350 LOADNIL                          R3
      351 SETTABLEKS                       R3 R0 K82 ["onSelectedColorChange"]
      353 NEWCLOSURE                       R3 P27
      354 CAPTURE                          VAL R0
      355 CAPTURE                          UPVAL U19
      356 CAPTURE                          UPVAL U20
      357 SETTABLEKS                       R3 R0 K83 ["versionsOnDescClicked"]
      359 NEWCLOSURE                       R3 P28
      360 CAPTURE                          VAL R0
      361 CAPTURE                          UPVAL U23
      362 CAPTURE                          UPVAL U24
      363 SETTABLEKS                       R3 R0 K84 ["versionsSaveInput"]
      365 NEWCLOSURE                       R3 P29
      366 CAPTURE                          VAL R0
      367 CAPTURE                          UPVAL U1
      368 SETTABLEKS                       R3 R0 K85 ["versionsSetStates"]
      370 NEWCLOSURE                       R3 P30
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R3 R0 K86 ["versionsCloseInput"]
      374 NEWCLOSURE                       R3 P31
      375 CAPTURE                          VAL R0
      376 SETTABLEKS                       R3 R0 K87 ["setVersionError"]
      378 NEWCLOSURE                       R3 P32
      379 CAPTURE                          VAL R0
      380 SETTABLEKS                       R3 R0 K88 ["versionsSetPreviousInput"]
      382 NEWCLOSURE                       R3 P33
      383 CAPTURE                          VAL R0
      384 SETTABLEKS                       R3 R0 K89 ["versionsOnPageChange"]
      386 NEWCLOSURE                       R3 P34
      387 CAPTURE                          VAL R0
      388 CAPTURE                          VAL R1
      389 SETTABLEKS                       R3 R0 K90 ["onTabSelect"]
      391 NEWCLOSURE                       R3 P35
      392 CAPTURE                          VAL R0
      393 SETTABLEKS                       R3 R0 K91 ["onOverrideAssetSelected"]
      395 NEWCLOSURE                       R3 P36
      396 CAPTURE                          UPVAL U3
      397 CAPTURE                          VAL R0
      398 SETTABLEKS                       R3 R0 K92 ["chooseThumbnail"]
      400 NEWCLOSURE                       R3 P37
      401 CAPTURE                          VAL R0
      402 SETTABLEKS                       R3 R0 K93 ["onSharingChanged"]
      404 NEWCLOSURE                       R3 P38
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R3 R0 K94 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      408 NEWCLOSURE                       R3 P39
      409 CAPTURE                          VAL R0
      410 CAPTURE                          UPVAL U25
      411 SETTABLEKS                       R3 R0 K95 ["getPublishingRequirements"]
      413 NEWCLOSURE                       R3 P40
      414 CAPTURE                          VAL R0
      415 SETTABLEKS                       R3 R0 K96 ["onAdditionalImagesChanged"]
      417 NEWCLOSURE                       R3 P41
      418 CAPTURE                          UPVAL U3
      419 CAPTURE                          VAL R0
      420 SETTABLEKS                       R3 R0 K97 ["isValidCatalogAsset"]
      422 NEWCLOSURE                       R3 P42
      423 CAPTURE                          VAL R0
      424 SETTABLEKS                       R3 R0 K98 ["validVersionDescriptions"]
      426 NEWCLOSURE                       R3 P43
      427 CAPTURE                          VAL R0
      428 CAPTURE                          UPVAL U1
      429 CAPTURE                          UPVAL U26
      430 SETTABLEKS                       R3 R0 K99 ["getMessageBoxProps"]
      432 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_65:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["screenFlowType"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["FLOW_TYPE"]
        8 GETTABLEKS                       R3 R3 K3 ["EDIT_FLOW"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+6]
       12 GETTABLEKS                       R2 R0 K4 ["state"]
       14 GETTABLEKS                       R2 R2 K5 ["assetId"]
       16 NOT                              R1 R2
       17 RETURN                           R1 1

PROTO_66:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R2 K1 ["join"]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_67:
        0 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        2 JUMPIFEQKNIL                     R3 ; [+12]
        4 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        6 GETTABLEKS                       R4 R0 K1 ["props"]
        8 GETTABLEKS                       R4 R4 K0 ["isPackageAsset"]
       10 JUMPIFEQ                         R3 R4 ; [+4]
       12 GETTABLEKS                       R3 R0 K2 ["getPublishingRequirements"]
       14 CALL                             R3 0 0
       15 GETTABLEKS                       R3 R0 K1 ["props"]
       17 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
       22 GETTABLEKS                       R4 R4 K5 ["EDIT_FLOW"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+216]
       26 GETTABLEKS                       R3 R0 K1 ["props"]
       28 GETTABLEKS                       R3 R3 K6 ["assetConfigData"]
       30 GETIMPORT                        R4 K8 [next]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K9 ["state"]
       38 GETTABLEKS                       R4 R4 K10 ["dispatchGetFunction"]
       40 JUMPIF                           R4 ; [+80]
       41 GETTABLEKS                       R4 R3 K11 ["Creator"]
       43 JUMPIF                           R4 ; [+2]
       44 NEWTABLE                         R4 0 0
       46 GETTABLEKS                       R6 R0 K9 ["state"]
       48 GETTABLEKS                       R6 R6 K12 ["groupMetadata"]
       50 NOT                              R5 R6
       51 JUMPIF                           R5 ; [+11]
       52 GETIMPORT                        R6 K8 [next]
       54 GETTABLEKS                       R7 R0 K9 ["state"]
       56 GETTABLEKS                       R7 R7 K12 ["groupMetadata"]
       58 CALL                             R6 1 1
       59 JUMPIFEQKNIL                     R6 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 GETTABLEKS                       R6 R4 K13 ["typeId"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K14 ["OWNER_TYPES"]
       68 GETTABLEKS                       R7 R7 K15 ["User"]
       70 JUMPIFNOTEQ                      R6 R7 ; [+16]
       72 GETTABLEKS                       R6 R4 K16 ["username"]
       74 JUMPIF                           R6 ; [+12]
       75 GETTABLEKS                       R6 R0 K1 ["props"]
       77 GETTABLEKS                       R6 R6 K17 ["dispatchGetUsername"]
       79 GETTABLEKS                       R7 R4 K18 ["targetId"]
       81 CALL                             R6 1 0
       82 DUPTABLE                         R8 K20 [{["dispatchGetFunction"] = True}]
       83 NAMECALL                         R6 R0 K21 ["setState"]
       85 CALL                             R6 2 0
       86 JUMP                             ; [+34]
       87 GETTABLEKS                       R6 R4 K13 ["typeId"]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K14 ["OWNER_TYPES"]
       92 GETTABLEKS                       R7 R7 K22 ["Group"]
       94 JUMPIFNOTEQ                      R6 R7 ; [+26]
       96 JUMPIFNOT                        R5 ; [+24]
       97 GETTABLEKS                       R6 R0 K1 ["props"]
       99 GETTABLEKS                       R6 R6 K23 ["dispatchGetGroupMetadata"]
      101 GETTABLEKS                       R7 R4 K18 ["targetId"]
      103 CALL                             R6 1 0
      104 GETTABLEKS                       R6 R0 K1 ["props"]
      106 GETTABLEKS                       R6 R6 K24 ["dispatchGetGroupRoleInfo"]
      108 GETTABLEKS                       R7 R0 K1 ["props"]
      110 GETTABLEKS                       R7 R7 K25 ["Network"]
      112 GETTABLEKS                       R7 R7 K26 ["networkInterface"]
      114 GETTABLEKS                       R8 R4 K18 ["targetId"]
      116 CALL                             R6 2 0
      117 DUPTABLE                         R8 K20 [{["dispatchGetFunction"] = True}]
      118 NAMECALL                         R6 R0 K21 ["setState"]
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R4 R0 K27 ["init"]
      123 JUMPIF                           R4 ; [+165]
      124 LOADNIL                          R4
      125 GETTABLEKS                       R5 R3 K28 ["AssetPermissions"]
      127 JUMPIFNOT                        R5 ; [+7]
      128 GETUPVAL                         R5 2
      129 GETTABLEKS                       R5 R5 K29 ["isAssetPublic"]
      131 GETTABLEKS                       R6 R3 K28 ["AssetPermissions"]
      133 CALL                             R5 1 1
      134 MOVE                             R4 R5
      135 GETTABLEKS                       R5 R3 K30 ["Status"]
      137 GETTABLEKS                       R6 R3 K31 ["IsCopyingAllowed"]
      139 JUMPIF                           R6 ; [+5]
      140 GETUPVAL                         R6 3
      141 GETTABLEKS                       R6 R6 K32 ["isOnSale"]
      143 MOVE                             R7 R5
      144 CALL                             R6 1 1
      145 GETTABLEKS                       R7 R0 K1 ["props"]
      147 GETTABLEKS                       R7 R7 K33 ["fiatProduct"]
      149 JUMPIFNOT                        R7 ; [+6]
      150 GETTABLEKS                       R7 R0 K1 ["props"]
      152 GETTABLEKS                       R7 R7 K33 ["fiatProduct"]
      154 GETTABLEKS                       R6 R7 K34 ["purchasable"]
      156 LOADNIL                          R7
      157 GETUPVAL                         R8 4
      158 JUMPIFNOT                        R8 ; [+14]
      159 GETTABLEKS                       R8 R0 K1 ["props"]
      161 GETTABLEKS                       R7 R8 K35 ["isPublishingAllowed"]
      163 GETTABLEKS                       R8 R0 K1 ["props"]
      165 GETTABLEKS                       R8 R8 K0 ["isPackageAsset"]
      167 JUMPIFNOT                        R8 ; [+5]
      168 GETTABLEKS                       R8 R0 K1 ["props"]
      170 GETTABLEKS                       R8 R8 K37 ["isPackageMarketplacePublishAllowed"]
      172 ORK                              R7 R8 K36 [False]
      173 GETUPVAL                         R8 5
      174 GETTABLEKS                       R8 R8 K38 ["getRestrictionThatAppliesToAsset"]
      176 GETTABLEKS                       R9 R0 K1 ["props"]
      178 GETTABLEKS                       R9 R9 K39 ["publishingRestrictions"]
      180 CALL                             R8 1 1
      181 DUPTABLE                         R11 K53 [{["assetId"], ["name"], ["description"], ["owner"], ["allowCopy"], ["copyOn"], ["copyOnOriginalValue"], ["commentOn"], ["price"] = , ["status"], ["isAssetPublic"], ["isAssetPublicOriginalValue"], ["publishingRestriction"]}]
      182 GETUPVAL                         R13 3
      183 GETTABLEKS                       R13 R13 K54 ["isMarketplaceAsset"]
      185 GETTABLEKS                       R14 R0 K1 ["props"]
      187 GETTABLEKS                       R14 R14 K55 ["assetTypeEnum"]
      189 CALL                             R13 1 1
      190 JUMPIFNOT                        R13 ; [+3]
      191 GETTABLEKS                       R12 R3 K56 ["Id"]
      193 JUMPIF                           R12 ; [+2]
      194 GETTABLEKS                       R12 R3 K57 ["AssetId"]
      196 SETTABLEKS                       R12 R11 K40 ["assetId"]
      198 GETTABLEKS                       R12 R3 K58 ["Name"]
      200 SETTABLEKS                       R12 R11 K41 ["name"]
      202 GETTABLEKS                       R12 R3 K59 ["Description"]
      204 SETTABLEKS                       R12 R11 K42 ["description"]
      206 GETTABLEKS                       R12 R3 K11 ["Creator"]
      208 SETTABLEKS                       R12 R11 K43 ["owner"]
      210 GETUPVAL                         R13 4
      211 JUMPIFNOT                        R13 ; [+2]
      212 OR                               R12 R6 R7
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R12 R3 K60 ["IsPublicDomainEnabled"]
      216 SETTABLEKS                       R12 R11 K44 ["allowCopy"]
      218 SETTABLEKS                       R6 R11 K45 ["copyOn"]
      220 SETTABLEKS                       R6 R11 K46 ["copyOnOriginalValue"]
      222 GETTABLEKS                       R12 R3 K61 ["EnableComments"]
      224 SETTABLEKS                       R12 R11 K47 ["commentOn"]
      226 SETTABLEKS                       R5 R11 K50 ["status"]
      228 SETTABLEKS                       R4 R11 K29 ["isAssetPublic"]
      230 SETTABLEKS                       R4 R11 K51 ["isAssetPublicOriginalValue"]
      232 SETTABLEKS                       R8 R11 K52 ["publishingRestriction"]
      234 NAMECALL                         R9 R0 K21 ["setState"]
      236 CALL                             R9 2 0
      237 LOADB                            R9 1
      238 SETTABLEKS                       R9 R0 K27 ["init"]
      240 JUMP                             ; [+48]
      241 GETTABLEKS                       R3 R0 K1 ["props"]
      243 GETTABLEKS                       R3 R3 K62 ["isVerifiedCreator"]
      245 JUMPIFEQKNIL                     R3 ; [+21]
      247 GETTABLEKS                       R3 R0 K9 ["state"]
      249 GETTABLEKS                       R3 R3 K44 ["allowCopy"]
      251 GETTABLEKS                       R4 R0 K1 ["props"]
      253 GETTABLEKS                       R4 R4 K62 ["isVerifiedCreator"]
      255 JUMPIFEQ                         R3 R4 ; [+11]
      257 DUPTABLE                         R5 K63 [{"allowCopy"}]
      258 GETTABLEKS                       R6 R0 K1 ["props"]
      260 GETTABLEKS                       R6 R6 K62 ["isVerifiedCreator"]
      262 SETTABLEKS                       R6 R5 K44 ["allowCopy"]
      264 NAMECALL                         R3 R0 K21 ["setState"]
      266 CALL                             R3 2 0
      267 GETTABLEKS                       R3 R0 K1 ["props"]
      269 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      271 GETUPVAL                         R4 0
      272 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      274 GETTABLEKS                       R4 R4 K64 ["UPLOAD_FLOW"]
      276 JUMPIFNOTEQ                      R3 R4 ; [+12]
      278 GETTABLEKS                       R3 R1 K55 ["assetTypeEnum"]
      280 GETTABLEKS                       R4 R0 K1 ["props"]
      282 GETTABLEKS                       R4 R4 K55 ["assetTypeEnum"]
      284 JUMPIFEQ                         R3 R4 ; [+4]
      286 NAMECALL                         R3 R0 K65 ["getAssetInformation"]
      288 CALL                             R3 1 0
      289 GETTABLEKS                       R3 R2 K66 ["versionsCurrentItem"]
      291 GETUPVAL                         R5 6
      292 CALL                             R5 0 1
      293 JUMPIFNOT                        R5 ; [+5]
      294 GETTABLEKS                       R4 R0 K1 ["props"]
      296 GETTABLEKS                       R4 R4 K67 ["versionHistoryWithDescriptions"]
      298 JUMP                             ; [+4]
      299 GETTABLEKS                       R4 R0 K1 ["props"]
      301 GETTABLEKS                       R4 R4 K68 ["versionHistory"]
      303 GETIMPORT                        R5 K8 [next]
      305 MOVE                             R6 R3
      306 CALL                             R5 1 1
      307 JUMPIF                           R5 ; [+72]
      308 JUMPIFNOT                        R4 ; [+71]
      309 NEWTABLE                         R5 0 0
      311 GETIMPORT                        R6 K70 [ipairs]
      313 MOVE                             R7 R4
      314 CALL                             R6 1 3
      315 FORGPREP_INEXT                   R6
      316 GETUPVAL                         R12 6
      317 CALL                             R12 0 1
      318 JUMPIFNOT                        R12 ; [+4]
      319 GETTABLEKS                       R12 R10 K72 ["versionDescription"]
      321 ORK                              R11 R12 K71 [""]
      322 JUMP                             ; [+2]
      323 GETTABLEKS                       R11 R10 K72 ["versionDescription"]
      325 GETTABLEKS                       R12 R10 K73 ["creatorTargetId"]
      327 GETTABLEKS                       R13 R10 K74 ["creatorType"]
      329 GETTABLEKS                       R14 R10 K75 ["assetVersionNumber"]
      331 DUPTABLE                         R15 K79 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      332 GETTABLEKS                       R16 R10 K75 ["assetVersionNumber"]
      334 SETTABLEKS                       R16 R15 K76 ["versionColumn"]
      336 DUPTABLE                         R16 K82 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      337 SETTABLEKS                       R11 R16 K72 ["versionDescription"]
      339 GETTABLEKS                       R17 R10 K80 ["created"]
      341 SETTABLEKS                       R17 R16 K80 ["created"]
      343 GETTABLEKS                       R17 R10 K75 ["assetVersionNumber"]
      345 SETTABLEKS                       R17 R16 K75 ["assetVersionNumber"]
      347 SETTABLEKS                       R12 R16 K81 ["creatorId"]
      349 SETTABLEKS                       R13 R16 K74 ["creatorType"]
      351 SETTABLEKS                       R16 R15 K77 ["descriptionColumn"]
      353 GETTABLEKS                       R16 R10 K75 ["assetVersionNumber"]
      355 SETTABLEKS                       R16 R15 K78 ["restoreColumn"]
      357 SETTABLE                         R15 R5 R14
      358 FORGLOOP                         R6 2 [inext] ; [-43]
      360 DUPTABLE                         R8 K85 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      361 GETUPVAL                         R9 7
      362 MOVE                             R10 R4
      363 CALL                             R9 1 1
      364 SETTABLEKS                       R9 R8 K66 ["versionsCurrentItem"]
      366 SETTABLEKS                       R5 R8 K83 ["versionsRootItems"]
      368 LOADN                            R11 1
      369 GETUPVAL                         R12 8
      370 GETTABLEKS                       R12 R12 K86 ["VERSIONS_ROWS_PER_PAGE"]
      372 NAMECALL                         R9 R0 K87 ["versionsGetPageRootItems"]
      374 CALL                             R9 3 1
      375 SETTABLEKS                       R9 R8 K84 ["versionsPageRootItems"]
      377 NAMECALL                         R6 R0 K21 ["setState"]
      379 CALL                             R6 2 0
      380 RETURN                           R0 0

PROTO_68:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWTABLE                         R5 0 0
        4 GETTABLEKS                       R6 R0 K0 ["state"]
        6 GETTABLEKS                       R6 R6 K1 ["versionsRootItems"]
        8 JUMPIFNOT                        R6 ; [+25]
        9 SUBK                             R7 R1 K2 [1]
       10 MUL                              R6 R7 R2
       11 ADDK                             R3 R6 K2 [1]
       12 ADD                              R6 R3 R2
       13 SUBK                             R4 R6 K2 [1]
       14 GETTABLEKS                       R9 R0 K0 ["state"]
       16 GETTABLEKS                       R9 R9 K1 ["versionsRootItems"]
       18 LENGTH                           R8 R9
       19 LOADN                            R6 1
       20 LOADN                            R7 -1
       21 FORNPREP                         R6
       22 GETTABLEKS                       R12 R0 K0 ["state"]
       24 GETTABLEKS                       R12 R12 K1 ["versionsRootItems"]
       26 GETTABLE                         R11 R12 R8
       27 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       29 MOVE                             R10 R5
       30 GETIMPORT                        R9 K5 [table.insert]
       32 CALL                             R9 2 0
       33 FORNLOOP                         R6
       34 GETTABLEKS                       R6 R0 K0 ["state"]
       36 GETTABLEKS                       R6 R6 K1 ["versionsRootItems"]
       38 JUMPIFNOT                        R6 ; [+5]
       39 GETUPVAL                         R6 0
       40 MOVE                             R7 R5
       41 MOVE                             R8 R3
       42 MOVE                             R9 R4
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R8 R0 K0 ["state"]
       46 GETTABLEKS                       R8 R8 K1 ["versionsRootItems"]
       48 JUMPIFNOT                        R8 ; [+2]
       49 MOVE                             R7 R6
       50 RETURN                           R7 1
       51 NEWTABLE                         R7 0 0
       53 RETURN                           R7 1

PROTO_69:
        0 DUPTABLE                         R0 K2 [{"dataSharingEnabled", "dataSharingToggled"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["isEligible"]
        4 SETTABLEKS                       R1 R0 K0 ["dataSharingEnabled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["isEligible"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["configurations"]
       13 GETTABLEN                        R2 R3 1
       14 GETTABLEKS                       R2 R2 K5 ["isOptOut"]
       16 NOT                              R1 R2
       17 SETTABLEKS                       R1 R0 K1 ["dataSharingToggled"]
       19 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
        7 CALL                             R1 1 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["andThen"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_72:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_73:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_74:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_75:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["assetId"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["instances"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K4 ["changeTable"]
       14 MOVE                             R5 R4
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETIMPORT                        R6 K6 [next]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K7 ["FLOW_TYPE"]
       27 GETTABLEKS                       R6 R6 K8 ["EDIT_FLOW"]
       29 GETTABLEKS                       R7 R0 K0 ["props"]
       31 GETTABLEKS                       R7 R7 K9 ["screenFlowType"]
       33 JUMPIFNOTEQ                      R6 R7 ; [+92]
       35 JUMPIFNOT                        R1 ; [+347]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K10 ["isCatalogAsset"]
       39 GETTABLEKS                       R7 R0 K0 ["props"]
       41 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+14]
       45 GETTABLEKS                       R6 R0 K0 ["props"]
       47 GETTABLEKS                       R6 R6 K12 ["getAssetDetails"]
       49 GETTABLEKS                       R7 R0 K0 ["props"]
       51 GETTABLEKS                       R7 R7 K13 ["Network"]
       53 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       55 MOVE                             R8 R1
       56 LOADB                            R9 0
       57 CALL                             R6 3 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R6 R0 K15 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
       61 CALL                             R6 0 0
       62 GETTABLEKS                       R6 R0 K0 ["props"]
       64 GETTABLEKS                       R6 R6 K16 ["dispatchGetMarketplaceInfo"]
       66 GETTABLEKS                       R7 R0 K0 ["props"]
       68 GETTABLEKS                       R7 R7 K13 ["Network"]
       70 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       72 MOVE                             R8 R1
       73 CALL                             R6 2 0
       74 GETTABLEKS                       R6 R0 K0 ["props"]
       76 GETTABLEKS                       R6 R6 K17 ["isPackageAsset"]
       78 JUMPIFNOTEQKNIL                  R6 ; [+13]
       80 GETTABLEKS                       R6 R0 K0 ["props"]
       82 GETTABLEKS                       R6 R6 K18 ["dispatchPostPackageMetadataRequest"]
       84 GETTABLEKS                       R7 R0 K0 ["props"]
       86 GETTABLEKS                       R7 R7 K13 ["Network"]
       88 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
       90 MOVE                             R8 R1
       91 CALL                             R6 2 0
       92 GETTABLEKS                       R6 R0 K0 ["props"]
       94 GETTABLEKS                       R6 R6 K19 ["dispatchGetPackageCollaboratorsRequest"]
       96 GETTABLEKS                       R7 R0 K0 ["props"]
       98 GETTABLEKS                       R7 R7 K13 ["Network"]
      100 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      102 MOVE                             R8 R1
      103 CALL                             R6 2 0
      104 GETTABLEKS                       R6 R0 K0 ["props"]
      106 GETTABLEKS                       R6 R6 K20 ["hasPackagePermission"]
      108 JUMPIF                           R6 ; [+274]
      109 GETTABLEKS                       R6 R0 K0 ["props"]
      111 GETTABLEKS                       R6 R6 K21 ["dispatchPostAssetCheckPermissions"]
      113 GETTABLEKS                       R7 R0 K0 ["props"]
      115 GETTABLEKS                       R7 R7 K13 ["Network"]
      117 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      119 NEWTABLE                         R8 0 1
      121 MOVE                             R9 R1
      122 SETLIST                          R8 R9 1 [1]
      124 CALL                             R6 2 0
      125 RETURN                           R0 0
      126 GETTABLEKS                       R6 R0 K0 ["props"]
      128 GETTABLEKS                       R6 R6 K9 ["screenFlowType"]
      130 GETUPVAL                         R7 0
      131 GETTABLEKS                       R7 R7 K7 ["FLOW_TYPE"]
      133 GETTABLEKS                       R7 R7 K22 ["UPLOAD_FLOW"]
      135 JUMPIFNOTEQ                      R6 R7 ; [+20]
      137 GETUPVAL                         R6 1
      138 GETTABLEKS                       R6 R6 K23 ["isMarketplaceAsset"]
      140 GETTABLEKS                       R7 R0 K0 ["props"]
      142 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      144 CALL                             R6 1 1
      145 JUMPIFNOT                        R6 ; [+6]
      146 DUPCLOSURE                       R8 K24 [PROTO_72]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_73]
      153 NAMECALL                         R6 R0 K25 ["setState"]
      155 CALL                             R6 2 0
      156 GETTABLEKS                       R6 R3 K27 ["name"]
      158 JUMPIFEQKNIL                     R6 ; [+5]
      160 GETTABLEKS                       R6 R3 K27 ["name"]
      162 JUMPIFNOTEQKS                    R6 K28 [""] ; [+21]
      164 JUMPIFNOT                        R2 ; [+19]
      165 LENGTH                           R6 R2
      166 LOADN                            R7 0
      167 JUMPIFNOTLT                      R7 R6 ; [+16]
      169 JUMPIFNOT                        R5 ; [+9]
      170 GETTABLEKS                       R6 R4 K29 ["AssetConfigName"]
      172 JUMPIFNOT                        R6 ; [+11]
      173 NEWCLOSURE                       R8 P2
      174 CAPTURE                          VAL R4
      175 NAMECALL                         R6 R0 K25 ["setState"]
      177 CALL                             R6 2 0
      178 JUMP                             ; [+5]
      179 NEWCLOSURE                       R8 P3
      180 CAPTURE                          VAL R2
      181 NAMECALL                         R6 R0 K25 ["setState"]
      183 CALL                             R6 2 0
      184 GETTABLEKS                       R6 R3 K30 ["description"]
      186 JUMPIFEQKNIL                     R6 ; [+5]
      188 GETTABLEKS                       R6 R3 K30 ["description"]
      190 JUMPIFNOTEQKS                    R6 K28 [""] ; [+10]
      192 JUMPIFNOT                        R5 ; [+8]
      193 GETTABLEKS                       R6 R4 K31 ["AssetConfigDesc"]
      195 JUMPIFNOT                        R6 ; [+5]
      196 NEWCLOSURE                       R8 P4
      197 CAPTURE                          VAL R4
      198 NAMECALL                         R6 R0 K25 ["setState"]
      200 CALL                             R6 2 0
      201 GETTABLEKS                       R6 R0 K0 ["props"]
      203 GETTABLEKS                       R6 R6 K32 ["getIsVerifiedCreator"]
      205 GETTABLEKS                       R7 R0 K0 ["props"]
      207 GETTABLEKS                       R7 R7 K13 ["Network"]
      209 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      211 CALL                             R6 1 0
      212 GETUPVAL                         R6 1
      213 GETTABLEKS                       R6 R6 K10 ["isCatalogAsset"]
      215 GETTABLEKS                       R7 R0 K0 ["props"]
      217 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      219 CALL                             R6 1 1
      220 JUMPIFNOT                        R6 ; [+41]
      221 GETUPVAL                         R6 2
      222 CALL                             R6 0 1
      223 JUMPIFNOT                        R6 ; [+21]
      224 GETTABLEKS                       R6 R0 K0 ["props"]
      226 GETTABLEKS                       R6 R6 K33 ["dispatchFetchUploadFeeWithMetadata"]
      228 GETTABLEKS                       R7 R0 K0 ["props"]
      230 GETTABLEKS                       R7 R7 K13 ["Network"]
      232 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      234 GETTABLEKS                       R8 R0 K0 ["props"]
      236 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      238 LOADB                            R9 0
      239 GETTABLEKS                       R10 R0 K0 ["props"]
      241 GETTABLEKS                       R10 R10 K2 ["instances"]
      243 CALL                             R6 4 0
      244 JUMP                             ; [+70]
      245 GETTABLEKS                       R6 R0 K0 ["props"]
      247 GETTABLEKS                       R6 R6 K34 ["getItemUploadFee"]
      249 GETTABLEKS                       R7 R0 K0 ["props"]
      251 GETTABLEKS                       R7 R7 K13 ["Network"]
      253 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      255 GETTABLEKS                       R8 R0 K0 ["props"]
      257 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      259 LOADB                            R9 0
      260 CALL                             R6 3 0
      261 JUMP                             ; [+53]
      262 GETUPVAL                         R6 1
      263 GETTABLEKS                       R6 R6 K35 ["isUGCBundleType"]
      265 GETTABLEKS                       R7 R0 K0 ["props"]
      267 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      269 CALL                             R6 1 1
      270 JUMPIFNOT                        R6 ; [+41]
      271 GETUPVAL                         R6 2
      272 CALL                             R6 0 1
      273 JUMPIFNOT                        R6 ; [+21]
      274 GETTABLEKS                       R6 R0 K0 ["props"]
      276 GETTABLEKS                       R6 R6 K33 ["dispatchFetchUploadFeeWithMetadata"]
      278 GETTABLEKS                       R7 R0 K0 ["props"]
      280 GETTABLEKS                       R7 R7 K13 ["Network"]
      282 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      284 GETTABLEKS                       R8 R0 K0 ["props"]
      286 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      288 LOADB                            R9 1
      289 GETTABLEKS                       R10 R0 K0 ["props"]
      291 GETTABLEKS                       R10 R10 K2 ["instances"]
      293 CALL                             R6 4 0
      294 JUMP                             ; [+20]
      295 GETTABLEKS                       R6 R0 K0 ["props"]
      297 GETTABLEKS                       R6 R6 K34 ["getItemUploadFee"]
      299 GETTABLEKS                       R7 R0 K0 ["props"]
      301 GETTABLEKS                       R7 R7 K13 ["Network"]
      303 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      305 GETTABLEKS                       R8 R0 K0 ["props"]
      307 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      309 LOADB                            R9 1
      310 CALL                             R6 3 0
      311 JUMP                             ; [+3]
      312 GETTABLEKS                       R6 R0 K36 ["getPublishingRequirements"]
      314 CALL                             R6 0 0
      315 GETTABLEKS                       R6 R0 K0 ["props"]
      317 GETTABLEKS                       R6 R6 K37 ["dispatchSetDescendantPermissions"]
      319 NEWTABLE                         R7 0 0
      321 CALL                             R6 1 0
      322 DUPTABLE                         R8 K39 [{"descendantIds"}]
      323 NEWTABLE                         R9 0 0
      325 SETTABLEKS                       R9 R8 K38 ["descendantIds"]
      327 NAMECALL                         R6 R0 K25 ["setState"]
      329 CALL                             R6 2 0
      330 NEWTABLE                         R6 0 0
      332 JUMPIFNOT                        R2 ; [+50]
      333 GETTABLEKS                       R7 R0 K0 ["props"]
      335 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      337 GETIMPORT                        R8 K43 [Enum.AssetType.Model]
      339 JUMPIFNOTEQ                      R7 R8 ; [+43]
      341 GETIMPORT                        R7 K45 [pairs]
      343 MOVE                             R8 R2
      344 CALL                             R7 1 3
      345 FORGPREP_NEXT                    R7
      346 NAMECALL                         R12 R11 K46 ["GetDescendants"]
      348 CALL                             R12 1 1
      349 GETIMPORT                        R13 K45 [pairs]
      351 MOVE                             R14 R12
      352 CALL                             R13 1 3
      353 FORGPREP_NEXT                    R13
      354 LOADK                            R20 K47 ["Sound"]
      355 NAMECALL                         R18 R17 K48 ["IsA"]
      357 CALL                             R18 2 1
      358 JUMPIFNOT                        R18 ; [+14]
      359 GETIMPORT                        R18 K51 [string.gsub]
      361 GETTABLEKS                       R19 R17 K52 ["SoundId"]
      363 LOADK                            R20 K53 ["rbxassetid://"]
      364 LOADK                            R21 K28 [""]
      365 CALL                             R18 3 1
      366 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      368 MOVE                             R20 R6
      369 MOVE                             R21 R18
      370 GETIMPORT                        R19 K56 [table.insert]
      372 CALL                             R19 2 0
      373 FORGLOOP                         R13 2 ; [-20]
      375 FORGLOOP                         R7 2 ; [-30]
      377 DUPTABLE                         R9 K39 [{"descendantIds"}]
      378 SETTABLEKS                       R6 R9 K38 ["descendantIds"]
      380 NAMECALL                         R7 R0 K25 ["setState"]
      382 CALL                             R7 2 0
      383 RETURN                           R0 0

PROTO_78:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_79:
        0 NAMECALL                         R1 R0 K0 ["attachXButtonCallback"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["hasAllowedAssetTypesForRelease"]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["allowedAssetTypesForRelease"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["isBuyableMarketplaceAsset"]
       15 GETTABLEKS                       R3 R0 K2 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       19 CALL                             R2 1 1
       20 NOT                              R1 R2
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R1
       23 NAMECALL                         R2 R0 K6 ["setState"]
       25 CALL                             R2 2 0
       26 NAMECALL                         R2 R0 K7 ["getAssetInformation"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R0 K2 ["props"]
       31 GETTABLEKS                       R2 R2 K8 ["assetId"]
       33 JUMPIFNOT                        R2 ; [+12]
       34 GETTABLEKS                       R3 R0 K2 ["props"]
       36 GETTABLEKS                       R3 R3 K9 ["getVersionHistory"]
       38 GETTABLEKS                       R4 R0 K2 ["props"]
       40 GETTABLEKS                       R4 R4 K10 ["Network"]
       42 GETTABLEKS                       R4 R4 K11 ["networkInterface"]
       44 MOVE                             R5 R2
       45 CALL                             R3 2 0
       46 NAMECALL                         R3 R0 K12 ["getDefaultBundleDataSharing"]
       48 CALL                             R3 1 0
       49 GETTABLEKS                       R3 R0 K2 ["props"]
       51 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       53 JUMPIFNOT                        R2 ; [+48]
       54 JUMPIFNOT                        R3 ; [+47]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K13 ["isMarketplaceAsset"]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 1
       60 JUMPIFNOT                        R4 ; [+41]
       61 GETIMPORT                        R4 K17 [Enum.AssetType.Animation]
       63 JUMPIFEQ                         R3 R4 ; [+38]
       65 GETTABLEKS                       R4 R0 K2 ["props"]
       67 GETTABLEKS                       R4 R4 K18 ["dispatchGetFiatProduct"]
       69 GETTABLEKS                       R5 R0 K2 ["props"]
       71 GETTABLEKS                       R5 R5 K10 ["Network"]
       73 GETTABLEKS                       R5 R5 K11 ["networkInterface"]
       75 MOVE                             R6 R2
       76 MOVE                             R7 R3
       77 CALL                             R4 3 0
       78 GETUPVAL                         R4 1
       79 CALL                             R4 0 1
       80 JUMPIFNOT                        R4 ; [+21]
       81 JUMPIFNOT                        R3 ; [+7]
       82 GETUPVAL                         R5 2
       83 GETTABLEKS                       R5 R5 K19 ["MONETIZABLE_ASSET_TYPES"]
       85 GETTABLEKS                       R6 R3 K20 ["Name"]
       87 GETTABLE                         R4 R5 R6
       88 JUMP                             ; [+1]
       89 LOADB                            R4 0
       90 JUMPIFNOT                        R4 ; [+11]
       91 GETTABLEKS                       R5 R0 K2 ["props"]
       93 GETTABLEKS                       R5 R5 K21 ["dispatchGetSellerStatus"]
       95 GETTABLEKS                       R6 R0 K2 ["props"]
       97 GETTABLEKS                       R6 R6 K10 ["Network"]
       99 GETTABLEKS                       R6 R6 K11 ["networkInterface"]
      101 CALL                             R5 1 0
      102 RETURN                           R0 0

PROTO_80:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"showColorPickerRequiredError", "showNameRequiredError", "showDescriptionRequiredError"}]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+2]
        4 MOVE                             R4 R0
        5 JUMP                             ; [+1]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K0 ["showColorPickerRequiredError"]
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+13]
       12 MOVE                             R4 R0
       13 JUMPIFNOT                        R4 ; [+12]
       14 GETUPVAL                         R7 3
       15 ORK                              R6 R7 K4 [""]
       16 FASTCALL1                        TOSTRING R6 ; [+2]
       17 GETIMPORT                        R5 K6 [tostring]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K4 [""] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 JUMP                             ; [+1]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R3 K1 ["showNameRequiredError"]
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+23]
       31 MOVE                             R4 R0
       32 JUMPIFNOT                        R4 ; [+22]
       33 LOADB                            R4 0
       34 GETUPVAL                         R7 4
       35 ORK                              R6 R7 K4 [""]
       36 FASTCALL1                        TOSTRING R6 ; [+2]
       37 GETIMPORT                        R5 K6 [tostring]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K4 [""] ; [+14]
       42 GETUPVAL                         R4 5
       43 GETTABLEKS                       R4 R4 K7 ["isCatalogAsset"]
       45 GETUPVAL                         R5 6
       46 CALL                             R4 1 1
       47 JUMPIF                           R4 ; [+7]
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R4 R4 K8 ["isUGCBundleType"]
       51 GETUPVAL                         R5 6
       52 CALL                             R4 1 1
       53 JUMP                             ; [+1]
       54 LOADB                            R4 0
       55 SETTABLEKS                       R4 R3 K2 ["showDescriptionRequiredError"]
       57 NAMECALL                         R1 R1 K9 ["setState"]
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

PROTO_83:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R2 K4 ["isAssetPublicOriginalValue"]
       10 GETTABLEKS                       R6 R1 K5 ["currentTab"]
       12 GETTABLEKS                       R7 R2 K6 ["assetId"]
       14 JUMPIF                           R7 ; [+2]
       15 GETTABLEKS                       R7 R1 K6 ["assetId"]
       17 GETTABLEKS                       R9 R2 K8 ["name"]
       19 ORK                              R8 R9 K7 [""]
       20 GETTABLEKS                       R10 R2 K9 ["description"]
       22 ORK                              R9 R10 K7 [""]
       23 GETTABLEKS                       R11 R1 K10 ["screenFlowType"]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K11 ["FLOW_TYPE"]
       28 GETTABLEKS                       R12 R12 K12 ["UPLOAD_FLOW"]
       30 JUMPIFNOTEQ                      R11 R12 ; [+4]
       32 GETTABLEKS                       R10 R1 K13 ["owner"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R10 R2 K13 ["owner"]
       37 GETTABLEKS                       R11 R2 K14 ["allowCopy"]
       39 GETTABLEKS                       R12 R2 K15 ["copyOn"]
       41 GETTABLEKS                       R13 R2 K16 ["allowComment"]
       43 GETTABLEKS                       R14 R2 K17 ["commentOn"]
       45 GETTABLEKS                       R15 R1 K18 ["deleteLocal"]
       47 GETTABLEKS                       R16 R2 K19 ["status"]
       49 GETTABLEKS                       R17 R2 K20 ["isAssetPublic"]
       51 GETTABLEKS                       R18 R2 K21 ["publishingRestriction"]
       53 GETTABLEKS                       R20 R1 K22 ["networkErrorAction"]
       55 GETUPVAL                         R21 1
       56 GETTABLEKS                       R21 R21 K23 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       58 JUMPIFEQ                         R20 R21 ; [+2]
       60 LOADB                            R19 0 +1
       61 LOADB                            R19 1
       62 GETTABLEKS                       R21 R2 K24 ["isShowChangeDiscardMessageBox"]
       64 OR                               R20 R21 R19
       65 GETUPVAL                         R22 2
       66 CALL                             R22 0 1
       67 JUMPIFNOT                        R22 ; [+2]
       68 LOADNIL                          R21
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R21 R2 K25 ["isShowRobuxSpendMessageBox"]
       72 GETTABLEKS                       R22 R2 K26 ["iconFile"]
       74 GETTABLEKS                       R23 R2 K27 ["assetMediaUpdateData"]
       76 GETTABLEKS                       R24 R1 K28 ["assetTypeEnum"]
       78 GETTABLEKS                       R25 R1 K10 ["screenFlowType"]
       80 GETTABLEKS                       R26 R1 K29 ["changeTable"]
       82 JUMPIF                           R26 ; [+2]
       83 NEWTABLE                         R26 0 0
       85 GETTABLEKS                       R27 R1 K30 ["allowedAssetTypesForRelease"]
       87 GETTABLEKS                       R28 R1 K31 ["allowedAssetTypesForFree"]
       89 GETTABLEKS                       R29 R1 K32 ["allowedBundleTypeSettings"]
       91 MOVE                             R30 R16
       92 JUMPIF                           R30 ; [+5]
       93 GETUPVAL                         R30 0
       94 GETTABLEKS                       R30 R30 K33 ["ASSET_STATUS"]
       96 GETTABLEKS                       R30 R30 K34 ["Unknown"]
       98 GETTABLEKS                       R31 R2 K35 ["price"]
      100 GETUPVAL                         R33 3
      101 GETTABLEKS                       R33 R33 K36 ["isUGCBundleType"]
      103 MOVE                             R34 R24
      104 CALL                             R33 1 1
      105 JUMPIFNOT                        R33 ; [+3]
      106 GETTABLEKS                       R32 R1 K37 ["groupBundlesUploadEnabledForUser"]
      108 JUMP                             ; [+11]
      109 GETUPVAL                         R32 4
      110 GETTABLEKS                       R32 R32 K38 ["queryParam"]
      112 MOVE                             R33 R25
      113 MOVE                             R34 R24
      114 GETUPVAL                         R35 4
      115 GETTABLEKS                       R35 R35 K39 ["keys"]
      117 GETTABLEKS                       R35 R35 K40 ["SHOW_OWNERSHIP"]
      119 CALL                             R32 3 1
      120 GETUPVAL                         R33 4
      121 GETTABLEKS                       R33 R33 K38 ["queryParam"]
      123 MOVE                             R34 R25
      124 MOVE                             R35 R24
      125 GETUPVAL                         R36 4
      126 GETTABLEKS                       R36 R36 K39 ["keys"]
      128 GETTABLEKS                       R36 R36 K41 ["SHOW_COPY"]
      130 CALL                             R33 3 1
      131 GETTABLEKS                       R34 R1 K42 ["isPackageAsset"]
      133 JUMPIFNOT                        R34 ; [+1]
      134 LOADB                            R33 0
      135 GETTABLEKS                       R34 R0 K1 ["state"]
      137 GETTABLEKS                       R34 R34 K43 ["isAssetTypeSelectionAllowed"]
      139 JUMPIFNOT                        R34 ; [+13]
      140 GETTABLEKS                       R35 R0 K0 ["props"]
      142 GETTABLEKS                       R35 R35 K10 ["screenFlowType"]
      144 GETUPVAL                         R36 0
      145 GETTABLEKS                       R36 R36 K11 ["FLOW_TYPE"]
      147 GETTABLEKS                       R36 R36 K12 ["UPLOAD_FLOW"]
      149 JUMPIFEQ                         R35 R36 ; [+2]
      151 LOADB                            R34 0 +1
      152 LOADB                            R34 1
      153 GETUPVAL                         R35 4
      154 GETTABLEKS                       R35 R35 K38 ["queryParam"]
      156 MOVE                             R36 R25
      157 MOVE                             R37 R24
      158 GETUPVAL                         R38 4
      159 GETTABLEKS                       R38 R38 K39 ["keys"]
      161 GETTABLEKS                       R38 R38 K44 ["SHOW_COMMENT"]
      163 CALL                             R35 3 1
      164 GETUPVAL                         R36 4
      165 GETTABLEKS                       R36 R36 K38 ["queryParam"]
      167 MOVE                             R37 R25
      168 MOVE                             R38 R24
      169 GETUPVAL                         R39 4
      170 GETTABLEKS                       R39 R39 K39 ["keys"]
      172 GETTABLEKS                       R39 R39 K45 ["SHOW_ASSET_TYPE"]
      174 CALL                             R36 3 1
      175 GETUPVAL                         R37 3
      176 GETTABLEKS                       R37 R37 K46 ["getPreviewType"]
      178 MOVE                             R38 R24
      179 GETTABLEKS                       R39 R1 K47 ["instances"]
      181 CALL                             R37 2 1
      182 GETUPVAL                         R39 5
      183 CALL                             R39 0 1
      184 JUMPIFNOT                        R39 ; [+11]
      185 GETTABLEKS                       R39 R1 K48 ["animationPackType"]
      187 JUMPIFEQKNIL                     R39 ; [+8]
      189 GETUPVAL                         R38 6
      190 GETTABLEKS                       R38 R38 K49 ["getAvatarAnimationPartThumbnailUri"]
      192 GETTABLEKS                       R39 R1 K48 ["animationPackType"]
      194 CALL                             R38 1 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R38
      197 GETUPVAL                         R39 1
      198 MOVE                             R41 R25
      199 MOVE                             R42 R24
      200 GETTABLEKS                       R43 R0 K0 ["props"]
      202 GETTABLEKS                       R43 R43 K42 ["isPackageAsset"]
      204 MOVE                             R44 R10
      205 NAMECALL                         R39 R39 K50 ["getAssetconfigContent"]
      207 CALL                             R39 5 1
      208 NAMECALL                         R40 R0 K51 ["isLoading"]
      210 CALL                             R40 1 1
      211 GETUPVAL                         R41 7
      212 GETTABLEKS                       R41 R41 K52 ["checkCanSave"]
      214 MOVE                             R42 R26
      215 MOVE                             R43 R8
      216 MOVE                             R44 R9
      217 MOVE                             R45 R6
      218 MOVE                             R46 R25
      219 MOVE                             R47 R24
      220 MOVE                             R48 R23
      221 GETTABLEKS                       R49 R0 K53 ["isValidCatalogAsset"]
      223 CALL                             R49 0 1
      224 GETTABLEKS                       R50 R0 K54 ["validVersionDescriptions"]
      226 CALL                             R50 0 -1
      227 CALL                             R41 -1 1
      228 JUMPIFNOT                        R41 ; [+1]
      229 NOT                              R41 R40
      230 GETUPVAL                         R42 2
      231 CALL                             R42 0 1
      232 JUMPIFNOT                        R42 ; [+7]
      233 MOVE                             R42 R41
      234 JUMPIFNOT                        R42 ; [+3]
      235 GETTABLEKS                       R43 R1 K55 ["isAvatarItemDialogFlowEnabled"]
      237 NOT                              R42 R43
      238 MOVE                             R41 R42
      239 JUMP                             ; [+6]
      240 MOVE                             R42 R41
      241 JUMPIFNOT                        R42 ; [+3]
      242 GETTABLEKS                       R43 R2 K25 ["isShowRobuxSpendMessageBox"]
      244 NOT                              R42 R43
      245 MOVE                             R41 R42
      246 GETUPVAL                         R42 8
      247 CALL                             R42 0 1
      248 JUMPIFNOT                        R42 ; [+11]
      249 GETUPVAL                         R42 3
      250 GETTABLEKS                       R42 R42 K56 ["isMakeupAsset"]
      252 MOVE                             R43 R24
      253 CALL                             R42 1 1
      254 JUMPIFNOT                        R42 ; [+5]
      255 GETTABLEKS                       R42 R2 K57 ["selectedColor"]
      257 JUMPIFNOTEQKNIL                  R42 ; [+2]
      259 LOADB                            R41 0
      260 GETUPVAL                         R42 5
      261 CALL                             R42 0 1
      262 JUMPIFNOT                        R42 ; [+9]
      263 GETIMPORT                        R42 K61 [Enum.AssetType.Animation]
      265 JUMPIFNOTEQ                      R24 R42 ; [+6]
      267 GETTABLEKS                       R42 R1 K62 ["animationSectionValid"]
      269 JUMPIFNOTEQKB                    R42 FALSE ; [+2]
      271 LOADB                            R41 0
      272 GETUPVAL                         R43 9
      273 GETTABLEKS                       R43 R43 K64 ["SCROLLBAR_PADDING"]
      275 SUBRK                            R42 K63 [-240] R43
      276 GETTABLEKS                       R44 R1 K28 ["assetTypeEnum"]
      278 GETIMPORT                        R45 K66 [Enum.AssetType.Audio]
      280 JUMPIFEQ                         R44 R45 ; [+2]
      282 LOADB                            R43 0 +1
      283 LOADB                            R43 1
      284 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      286 GETIMPORT                        R46 K68 [Enum.AssetType.Video]
      288 JUMPIFEQ                         R45 R46 ; [+2]
      290 LOADB                            R44 0 +1
      291 LOADB                            R44 1
      292 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      294 GETIMPORT                        R47 K70 [Enum.AssetType.Model]
      296 JUMPIFEQ                         R46 R47 ; [+2]
      298 LOADB                            R45 0 +1
      299 LOADB                            R45 1
      300 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      302 GETIMPORT                        R48 K72 [Enum.AssetType.Plugin]
      304 JUMPIFEQ                         R47 R48 ; [+2]
      306 LOADB                            R46 0 +1
      307 LOADB                            R46 1
      308 LOADNIL                          R47
      309 LOADB                            R48 0
      310 GETTABLEKS                       R49 R1 K73 ["Localization"]
      312 LOADK                            R52 K74 ["General"]
      313 LOADK                            R53 K75 ["Proceed"]
      314 NAMECALL                         R50 R49 K76 ["getText"]
      316 CALL                             R50 3 1
      317 LOADK                            R53 K74 ["General"]
      318 LOADK                            R54 K77 ["GoBack"]
      319 NAMECALL                         R51 R49 K76 ["getText"]
      321 CALL                             R51 3 1
      322 LOADK                            R54 K78 ["AssetConfigSharing"]
      323 LOADK                            R55 K79 ["PublicConfirmationHeading"]
      324 NAMECALL                         R52 R49 K76 ["getText"]
      326 CALL                             R52 3 1
      327 LOADK                            R55 K78 ["AssetConfigSharing"]
      328 LOADK                            R56 K80 ["PublicConfirmationMessage"]
      329 NAMECALL                         R53 R49 K76 ["getText"]
      331 CALL                             R53 3 1
      332 LOADK                            R56 K78 ["AssetConfigSharing"]
      333 LOADK                            R57 K81 ["PublicConfirmationTitle"]
      334 NAMECALL                         R54 R49 K76 ["getText"]
      336 CALL                             R54 3 1
      337 GETTABLEKS                       R55 R2 K82 ["isConfirmationDialogEnabled"]
      339 GETTABLEKS                       R56 R2 K83 ["confirmationDialogKey"]
      341 LOADK                            R59 K84 ["AssetConfig"]
      342 LOADK                            R60 K85 ["PublishAssetDialogPublish"]
      343 NAMECALL                         R57 R49 K76 ["getText"]
      345 CALL                             R57 3 1
      346 LOADK                            R60 K74 ["General"]
      347 LOADK                            R61 K86 ["Cancel"]
      348 NAMECALL                         R58 R49 K76 ["getText"]
      350 CALL                             R58 3 1
      351 LOADK                            R61 K84 ["AssetConfig"]
      352 LOADK                            R62 K87 ["PublishAssetDialogDescription"]
      353 NAMECALL                         R59 R49 K76 ["getText"]
      355 CALL                             R59 3 1
      356 LOADK                            R62 K84 ["AssetConfig"]
      357 LOADK                            R63 K88 ["PublishAssetDialogHeading"]
      358 NAMECALL                         R60 R49 K76 ["getText"]
      360 CALL                             R60 3 1
      361 LOADK                            R63 K74 ["General"]
      362 LOADK                            R64 K89 ["RobloxStudio"]
      363 NAMECALL                         R61 R49 K76 ["getText"]
      365 CALL                             R61 3 1
      366 GETUPVAL                         R63 2
      367 CALL                             R63 0 1
      368 JUMPIFNOT                        R63 ; [+2]
      369 LOADNIL                          R62
      370 JUMP                             ; [+5]
      371 LOADK                            R64 K74 ["General"]
      372 LOADK                            R65 K89 ["RobloxStudio"]
      373 NAMECALL                         R62 R49 K76 ["getText"]
      375 CALL                             R62 3 1
      376 GETUPVAL                         R64 2
      377 CALL                             R64 0 1
      378 JUMPIFNOT                        R64 ; [+2]
      379 LOADNIL                          R63
      380 JUMP                             ; [+8]
      381 LOADK                            R65 K84 ["AssetConfig"]
      382 LOADK                            R66 K90 ["PayAndConfirmHeading"]
      383 DUPTABLE                         R67 K91 [{"name"}]
      384 SETTABLEKS                       R8 R67 K8 ["name"]
      386 NAMECALL                         R63 R49 K76 ["getText"]
      388 CALL                             R63 4 1
      389 GETTABLEKS                       R65 R1 K92 ["uploadFee"]
      391 JUMPIFNOT                        R65 ; [+3]
      392 GETTABLEKS                       R64 R1 K92 ["uploadFee"]
      394 JUMP                             ; [+1]
      395 LOADK                            R64 K7 [""]
      396 GETUPVAL                         R66 2
      397 CALL                             R66 0 1
      398 JUMPIFNOT                        R66 ; [+2]
      399 LOADNIL                          R65
      400 JUMP                             ; [+11]
      401 LOADK                            R67 K84 ["AssetConfig"]
      402 LOADK                            R68 K93 ["PayAndConfirmDescription"]
      403 DUPTABLE                         R69 K95 [{"amount"}]
      404 GETUPVAL                         R71 10
      405 MOVE                             R72 R64
      406 CONCAT                           R70 R71 R72
      407 SETTABLEKS                       R70 R69 K94 ["amount"]
      409 NAMECALL                         R65 R49 K76 ["getText"]
      411 CALL                             R65 4 1
      412 GETUPVAL                         R67 2
      413 CALL                             R67 0 1
      414 JUMPIFNOT                        R67 ; [+2]
      415 LOADNIL                          R66
      416 JUMP                             ; [+5]
      417 LOADK                            R68 K74 ["General"]
      418 LOADK                            R69 K96 ["PayAndSubmit"]
      419 NAMECALL                         R66 R49 K76 ["getText"]
      421 CALL                             R66 3 1
      422 GETTABLEKS                       R67 R2 K97 ["isPublishAssetsDialogEnabled"]
      424 JUMPIF                           R43 ; [+3]
      425 GETUPVAL                         R68 11
      426 JUMPIFNOT                        R68 ; [+3]
      427 JUMPIFNOT                        R44 ; [+2]
      428 NOT                              R47 R5
      429 JUMP                             ; [+2]
      430 JUMPIFNOT                        R45 ; [+1]
      431 LOADB                            R47 1
      432 JUMPIF                           R43 ; [+3]
      433 GETUPVAL                         R68 11
      434 JUMPIFNOT                        R68 ; [+2]
      435 JUMPIFNOT                        R44 ; [+1]
      436 LOADB                            R48 1
      437 JUMPIF                           R43 ; [+3]
      438 GETUPVAL                         R68 11
      439 JUMPIFNOT                        R68 ; [+2]
      440 JUMPIFNOT                        R44 ; [+1]
      441 MOVE                             R11 R17
      442 GETUPVAL                         R68 3
      443 GETTABLEKS                       R68 R68 K56 ["isMakeupAsset"]
      445 MOVE                             R69 R24
      446 CALL                             R68 1 1
      447 GETUPVAL                         R69 8
      448 CALL                             R69 0 1
      449 JUMPIFNOT                        R69 ; [+8]
      450 MOVE                             R69 R68
      451 JUMPIFNOT                        R69 ; [+6]
      452 GETTABLEKS                       R70 R2 K57 ["selectedColor"]
      454 JUMPIFEQKNIL                     R70 ; [+2]
      456 LOADB                            R69 0 +1
      457 LOADB                            R69 1
      458 GETUPVAL                         R70 12
      459 GETTABLEKS                       R70 R70 K98 ["createElement"]
      461 LOADK                            R71 K99 ["Frame"]
      462 DUPTABLE                         R72 K104 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      463 SETTABLEKS                       R4 R72 K3 ["Size"]
      465 GETTABLEKS                       R73 R3 K105 ["assetConfig"]
      467 GETTABLEKS                       R73 R73 K106 ["backgroundColor"]
      469 SETTABLEKS                       R73 R72 K102 ["BackgroundColor3"]
      471 DUPTABLE                         R73 K114 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      472 GETUPVAL                         R74 12
      473 GETTABLEKS                       R74 R74 K98 ["createElement"]
      475 LOADK                            R75 K107 ["UIListLayout"]
      476 DUPTABLE                         R76 K120 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      477 GETIMPORT                        R77 K122 [Enum.FillDirection.Vertical]
      479 SETTABLEKS                       R77 R76 K115 ["FillDirection"]
      481 GETIMPORT                        R77 K124 [Enum.HorizontalAlignment.Left]
      483 SETTABLEKS                       R77 R76 K116 ["HorizontalAlignment"]
      485 GETIMPORT                        R77 K126 [Enum.VerticalAlignment.Bottom]
      487 SETTABLEKS                       R77 R76 K117 ["VerticalAlignment"]
      489 GETIMPORT                        R77 K128 [Enum.SortOrder.LayoutOrder]
      491 SETTABLEKS                       R77 R76 K118 ["SortOrder"]
      493 GETIMPORT                        R77 K131 [UDim.new]
      495 LOADN                            R78 0
      496 LOADN                            R79 0
      497 CALL                             R77 2 1
      498 SETTABLEKS                       R77 R76 K119 ["Padding"]
      500 CALL                             R74 2 1
      501 SETTABLEKS                       R74 R73 K107 ["UIListLayout"]
      503 MOVE                             R74 R20
      504 JUMPIFNOT                        R74 ; [+9]
      505 GETUPVAL                         R74 12
      506 GETTABLEKS                       R74 R74 K98 ["createElement"]
      508 GETUPVAL                         R75 13
      509 GETTABLEKS                       R76 R0 K132 ["getMessageBoxProps"]
      511 MOVE                             R77 R19
      512 CALL                             R76 1 -1
      513 CALL                             R74 -1 1
      514 SETTABLEKS                       R74 R73 K108 ["AssetConfigMessageBox"]
      516 GETUPVAL                         R75 2
      517 CALL                             R75 0 1
      518 JUMPIFNOT                        R75 ; [+2]
      519 LOADNIL                          R74
      520 JUMP                             ; [+28]
      521 MOVE                             R74 R21
      522 JUMPIFNOT                        R74 ; [+26]
      523 GETUPVAL                         R74 12
      524 GETTABLEKS                       R74 R74 K98 ["createElement"]
      526 GETUPVAL                         R75 14
      527 DUPTABLE                         R76 K141 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      528 SETTABLEKS                       R66 R76 K133 ["AcceptText"]
      530 SETTABLEKS                       R58 R76 K134 ["CancelText"]
      532 SETTABLEKS                       R65 R76 K135 ["Description"]
      534 SETTABLEKS                       R21 R76 K136 ["Enabled"]
      536 SETTABLEKS                       R63 R76 K137 ["Heading"]
      538 GETTABLEKS                       R77 R0 K142 ["onAssetPublishPayAndConfirmAccepted"]
      540 SETTABLEKS                       R77 R76 K138 ["OnAccepted"]
      542 GETTABLEKS                       R77 R0 K143 ["onAssetPublishPayAndConfirmCanceled"]
      544 SETTABLEKS                       R77 R76 K139 ["OnCanceled"]
      546 SETTABLEKS                       R62 R76 K140 ["Title"]
      548 CALL                             R74 2 1
      549 SETTABLEKS                       R74 R73 K109 ["RobuxSpendConfirmationMessageBox"]
      551 GETUPVAL                         R75 2
      552 CALL                             R75 0 1
      553 JUMPIFNOT                        R75 ; [+24]
      554 GETTABLEKS                       R74 R1 K55 ["isAvatarItemDialogFlowEnabled"]
      556 JUMPIFNOT                        R74 ; [+22]
      557 GETUPVAL                         R74 12
      558 GETTABLEKS                       R74 R74 K98 ["createElement"]
      560 GETUPVAL                         R75 15
      561 DUPTABLE                         R76 K147 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      562 NEWCLOSURE                       R77 P0
      563 CAPTURE                          VAL R0
      564 SETTABLEKS                       R77 R76 K144 ["OnUploadConfirmed"]
      566 GETTABLEKS                       R78 R1 K92 ["uploadFee"]
      568 ORK                              R77 R78 K7 [""]
      569 SETTABLEKS                       R77 R76 K145 ["UploadFee"]
      571 GETTABLEKS                       R78 R2 K8 ["name"]
      573 ORK                              R77 R78 K7 [""]
      574 SETTABLEKS                       R77 R76 K146 ["ItemName"]
      576 CALL                             R74 2 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R74
      579 SETTABLEKS                       R74 R73 K110 ["AvatarItemMessageBox"]
      581 JUMPIFNOT                        R67 ; [+27]
      582 GETUPVAL                         R74 12
      583 GETTABLEKS                       R74 R74 K98 ["createElement"]
      585 GETUPVAL                         R75 16
      586 DUPTABLE                         R76 K150 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      587 SETTABLEKS                       R57 R76 K133 ["AcceptText"]
      589 SETTABLEKS                       R58 R76 K134 ["CancelText"]
      591 SETTABLEKS                       R59 R76 K135 ["Description"]
      593 SETTABLEKS                       R67 R76 K136 ["Enabled"]
      595 SETTABLEKS                       R60 R76 K137 ["Heading"]
      597 GETTABLEKS                       R77 R0 K151 ["onAssetPublishDialogAccepted"]
      599 SETTABLEKS                       R77 R76 K138 ["OnAccepted"]
      601 GETTABLEKS                       R77 R0 K152 ["onAssetPublishDialogCanceled"]
      603 SETTABLEKS                       R77 R76 K139 ["OnCanceled"]
      605 SETTABLEKS                       R61 R76 K140 ["Title"]
      607 CALL                             R74 2 1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R74
      610 SETTABLEKS                       R74 R73 K111 ["AssetConfigMakeAssetPublicMessageBox"]
      612 GETUPVAL                         R74 12
      613 GETTABLEKS                       R74 R74 K98 ["createElement"]
      615 LOADK                            R75 K99 ["Frame"]
      616 DUPTABLE                         R76 K154 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      617 GETIMPORT                        R77 K156 [UDim2.new]
      619 LOADN                            R78 1
      620 LOADN                            R79 0
      621 LOADN                            R80 1
      622 LOADN                            R81 -62
      623 CALL                             R77 4 1
      624 SETTABLEKS                       R77 R76 K3 ["Size"]
      626 DUPTABLE                         R77 K166 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      627 GETUPVAL                         R78 12
      628 GETTABLEKS                       R78 R78 K98 ["createElement"]
      630 LOADK                            R79 K107 ["UIListLayout"]
      631 DUPTABLE                         R80 K120 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      632 GETIMPORT                        R81 K168 [Enum.FillDirection.Horizontal]
      634 SETTABLEKS                       R81 R80 K115 ["FillDirection"]
      636 GETIMPORT                        R81 K124 [Enum.HorizontalAlignment.Left]
      638 SETTABLEKS                       R81 R80 K116 ["HorizontalAlignment"]
      640 GETIMPORT                        R81 K170 [Enum.VerticalAlignment.Top]
      642 SETTABLEKS                       R81 R80 K117 ["VerticalAlignment"]
      644 GETIMPORT                        R81 K128 [Enum.SortOrder.LayoutOrder]
      646 SETTABLEKS                       R81 R80 K118 ["SortOrder"]
      648 GETIMPORT                        R81 K131 [UDim.new]
      650 LOADN                            R82 0
      651 LOADN                            R83 0
      652 CALL                             R81 2 1
      653 SETTABLEKS                       R81 R80 K119 ["Padding"]
      655 CALL                             R78 2 1
      656 SETTABLEKS                       R78 R77 K107 ["UIListLayout"]
      658 GETUPVAL                         R78 12
      659 GETTABLEKS                       R78 R78 K98 ["createElement"]
      661 GETUPVAL                         R79 16
      662 DUPTABLE                         R80 K171 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      663 SETTABLEKS                       R50 R80 K133 ["AcceptText"]
      665 SETTABLEKS                       R51 R80 K134 ["CancelText"]
      667 SETTABLEKS                       R56 R80 K148 ["ConfirmationKey"]
      669 SETTABLEKS                       R53 R80 K135 ["Description"]
      671 SETTABLEKS                       R55 R80 K136 ["Enabled"]
      673 SETTABLEKS                       R52 R80 K137 ["Heading"]
      675 GETTABLEKS                       R81 R0 K172 ["onDialogAccepted"]
      677 SETTABLEKS                       R81 R80 K138 ["OnAccepted"]
      679 GETTABLEKS                       R81 R0 K173 ["onDialogCanceled"]
      681 SETTABLEKS                       R81 R80 K139 ["OnCanceled"]
      683 SETTABLEKS                       R54 R80 K140 ["Title"]
      685 CALL                             R78 2 1
      686 SETTABLEKS                       R78 R77 K157 ["SharingConfirmationDialog"]
      688 GETUPVAL                         R78 12
      689 GETTABLEKS                       R78 R78 K98 ["createElement"]
      691 GETUPVAL                         R79 17
      692 DUPTABLE                         R80 K188 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      693 SETTABLEKS                       R39 R80 K176 ["TabItems"]
      695 SETTABLEKS                       R6 R80 K177 ["CurrentTab"]
      697 SETTABLEKS                       R37 R80 K178 ["PreviewType"]
      699 SETTABLEKS                       R25 R80 K179 ["ScreenFlowType"]
      701 SETTABLEKS                       R16 R80 K180 ["AssetStatus"]
      703 SETTABLEKS                       R7 R80 K181 ["AssetId"]
      705 SETTABLEKS                       R22 R80 K182 ["IconFile"]
      707 SETTABLEKS                       R24 R80 K183 ["AssetTypeEnum"]
      709 SETTABLEKS                       R29 R80 K184 ["AllowedBundleTypeSettings"]
      711 GETTABLEKS                       R81 R0 K189 ["onTabSelect"]
      713 SETTABLEKS                       R81 R80 K185 ["OnTabSelect"]
      715 GETTABLEKS                       R81 R0 K190 ["chooseThumbnail"]
      717 SETTABLEKS                       R81 R80 K186 ["ChooseThumbnail"]
      719 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
      721 GETUPVAL                         R82 8
      722 CALL                             R82 0 1
      723 JUMPIFNOT                        R82 ; [+4]
      724 JUMPIFNOT                        R68 ; [+3]
      725 GETTABLEKS                       R81 R2 K57 ["selectedColor"]
      727 JUMP                             ; [+1]
      728 LOADNIL                          R81
      729 SETTABLEKS                       R81 R80 K57 ["selectedColor"]
      731 GETUPVAL                         R82 5
      732 CALL                             R82 0 1
      733 JUMPIFNOT                        R82 ; [+2]
      734 MOVE                             R81 R38
      735 JUMP                             ; [+1]
      736 LOADNIL                          R81
      737 SETTABLEKS                       R81 R80 K187 ["animationTypeThumbnailUri"]
      739 CALL                             R78 2 1
      740 SETTABLEKS                       R78 R77 K158 ["Preview"]
      742 GETUPVAL                         R79 18
      743 CALL                             R79 0 1
      744 JUMPIFNOT                        R79 ; [+18]
      745 GETUPVAL                         R78 19
      746 GETTABLEKS                       R78 R78 K98 ["createElement"]
      748 GETUPVAL                         R79 20
      749 GETTABLEKS                       R79 R79 K191 ["Divider"]
      751 DUPTABLE                         R80 K194 [{["orientation"], ["LayoutOrder"] = 2}]
      752 GETUPVAL                         R81 20
      753 GETTABLEKS                       R81 R81 K195 ["Enums"]
      755 GETTABLEKS                       R81 R81 K196 ["DividerOrientation"]
      757 GETTABLEKS                       R81 R81 K121 ["Vertical"]
      759 SETTABLEKS                       R81 R80 K192 ["orientation"]
      761 CALL                             R78 2 1
      762 JUMP                             ; [+21]
      763 GETUPVAL                         R78 12
      764 GETTABLEKS                       R78 R78 K98 ["createElement"]
      766 LOADK                            R79 K99 ["Frame"]
      767 DUPTABLE                         R80 K197 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      768 GETIMPORT                        R81 K156 [UDim2.new]
      770 LOADN                            R82 0
      771 LOADN                            R83 2
      772 LOADN                            R84 1
      773 LOADN                            R85 0
      774 CALL                             R81 4 1
      775 SETTABLEKS                       R81 R80 K3 ["Size"]
      777 GETTABLEKS                       R81 R3 K198 ["divider"]
      779 GETTABLEKS                       R81 R81 K199 ["verticalLineColor"]
      781 SETTABLEKS                       R81 R80 K102 ["BackgroundColor3"]
      783 CALL                             R78 2 1
      784 SETTABLEKS                       R78 R77 K159 ["VerticalLine"]
      786 MOVE                             R78 R40
      787 JUMPIFNOT                        R78 ; [+47]
      788 GETUPVAL                         R78 12
      789 GETTABLEKS                       R78 R78 K98 ["createElement"]
      791 GETUPVAL                         R79 21
      792 DUPTABLE                         R80 K201 [{["LayoutOrder"] = 3, ["Size"]}]
      793 GETIMPORT                        R81 K156 [UDim2.new]
      795 LOADN                            R82 1
      796 LOADN                            R83 -240
      797 LOADN                            R84 1
      798 LOADN                            R85 0
      799 CALL                             R81 4 1
      800 SETTABLEKS                       R81 R80 K3 ["Size"]
      802 DUPTABLE                         R81 K203 [{"LoadingIndicator"}]
      803 GETUPVAL                         R82 12
      804 GETTABLEKS                       R82 R82 K98 ["createElement"]
      806 GETUPVAL                         R83 22
      807 DUPTABLE                         R84 K206 [{"Size", "AnchorPoint", "Position"}]
      808 GETIMPORT                        R85 K156 [UDim2.new]
      810 LOADN                            R86 0
      811 LOADN                            R87 100
      812 LOADN                            R88 0
      813 LOADN                            R89 100
      814 CALL                             R85 4 1
      815 SETTABLEKS                       R85 R84 K3 ["Size"]
      817 GETIMPORT                        R85 K208 [Vector2.new]
      819 LOADK                            R86 K209 [0.5]
      820 LOADK                            R87 K209 [0.5]
      821 CALL                             R85 2 1
      822 SETTABLEKS                       R85 R84 K204 ["AnchorPoint"]
      824 GETIMPORT                        R85 K211 [UDim2.fromScale]
      826 LOADK                            R86 K209 [0.5]
      827 LOADK                            R87 K209 [0.5]
      828 CALL                             R85 2 1
      829 SETTABLEKS                       R85 R84 K205 ["Position"]
      831 CALL                             R82 2 1
      832 SETTABLEKS                       R82 R81 K202 ["LoadingIndicator"]
      834 CALL                             R78 3 1
      835 SETTABLEKS                       R78 R77 K160 ["LoadingIndicatorWrapper"]
      837 NOT                              R78 R40
      838 JUMPIFNOT                        R78 ; [+259]
      839 GETUPVAL                         R78 1
      840 MOVE                             R80 R6
      841 NAMECALL                         R78 R78 K212 ["isGeneral"]
      843 CALL                             R78 2 1
      844 JUMPIFNOT                        R78 ; [+253]
      845 GETUPVAL                         R78 12
      846 GETTABLEKS                       R78 R78 K98 ["createElement"]
      848 GETUPVAL                         R79 23
      849 NEWTABLE                         R80 64 0
      851 GETIMPORT                        R81 K156 [UDim2.new]
      853 LOADN                            R82 1
      854 LOADN                            R83 -240
      855 LOADN                            R84 1
      856 LOADN                            R85 0
      857 CALL                             R81 4 1
      858 SETTABLEKS                       R81 R80 K3 ["Size"]
      860 SETTABLEKS                       R47 R80 K213 ["allowSelectPrivate"]
      862 SETTABLEKS                       R7 R80 K6 ["assetId"]
      864 SETTABLEKS                       R8 R80 K8 ["name"]
      866 SETTABLEKS                       R9 R80 K9 ["description"]
      868 SETTABLEKS                       R10 R80 K13 ["owner"]
      870 SETTABLEKS                       R11 R80 K14 ["allowCopy"]
      872 SETTABLEKS                       R12 R80 K15 ["copyOn"]
      874 SETTABLEKS                       R13 R80 K16 ["allowComment"]
      876 SETTABLEKS                       R14 R80 K17 ["commentOn"]
      878 SETTABLEKS                       R15 R80 K18 ["deleteLocal"]
      880 SETTABLEKS                       R17 R80 K20 ["isAssetPublic"]
      882 SETTABLEKS                       R18 R80 K21 ["publishingRestriction"]
      884 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
      886 GETTABLEKS                       R81 R0 K214 ["onNameChange"]
      888 SETTABLEKS                       R81 R80 K214 ["onNameChange"]
      890 GETTABLEKS                       R81 R0 K215 ["onDescChange"]
      892 SETTABLEKS                       R81 R80 K215 ["onDescChange"]
      894 GETTABLEKS                       R81 R1 K216 ["groupId"]
      896 SETTABLEKS                       R81 R80 K217 ["preselectedGroupId"]
      898 GETTABLEKS                       R81 R0 K218 ["onAccessChange"]
      900 SETTABLEKS                       R81 R80 K219 ["onOwnerSelected"]
      902 GETTABLEKS                       R81 R0 K220 ["onSharingChanged"]
      904 SETTABLEKS                       R81 R80 K220 ["onSharingChanged"]
      906 GETTABLEKS                       R81 R0 K221 ["onAdditionalImagesChanged"]
      908 SETTABLEKS                       R81 R80 K221 ["onAdditionalImagesChanged"]
      910 GETTABLEKS                       R81 R0 K222 ["toggleCopy"]
      912 SETTABLEKS                       R81 R80 K222 ["toggleCopy"]
      914 GETTABLEKS                       R81 R0 K223 ["toggleComment"]
      916 SETTABLEKS                       R81 R80 K223 ["toggleComment"]
      918 GETTABLEKS                       R81 R0 K224 ["toggleDeleteLocal"]
      920 SETTABLEKS                       R81 R80 K224 ["toggleDeleteLocal"]
      922 GETUPVAL                         R82 5
      923 CALL                             R82 0 1
      924 JUMPIFNOT                        R82 ; [+3]
      925 GETTABLEKS                       R81 R0 K225 ["onAnimationSelectionChanged"]
      927 JUMP                             ; [+1]
      928 LOADNIL                          R81
      929 SETTABLEKS                       R81 R80 K225 ["onAnimationSelectionChanged"]
      931 GETUPVAL                         R82 5
      932 CALL                             R82 0 1
      933 JUMPIFNOT                        R82 ; [+3]
      934 GETTABLEKS                       R81 R0 K226 ["onanimationSectionValidityChanged"]
      936 JUMP                             ; [+1]
      937 LOADNIL                          R81
      938 SETTABLEKS                       R81 R80 K226 ["onanimationSectionValidityChanged"]
      940 GETTABLEKS                       R81 R2 K227 ["dataSharingEnabled"]
      942 SETTABLEKS                       R81 R80 K227 ["dataSharingEnabled"]
      944 GETTABLEKS                       R81 R2 K228 ["dataSharingToggled"]
      946 SETTABLEKS                       R81 R80 K228 ["dataSharingToggled"]
      948 GETTABLEKS                       R81 R0 K229 ["onDataConsentToggleClick"]
      950 SETTABLEKS                       R81 R80 K229 ["onDataConsentToggleClick"]
      952 GETUPVAL                         R82 24
      953 CALL                             R82 0 1
      954 JUMPIFNOT                        R82 ; [+3]
      955 GETTABLEKS                       R81 R1 K230 ["specialAttributes"]
      957 JUMP                             ; [+1]
      958 LOADNIL                          R81
      959 SETTABLEKS                       R81 R80 K230 ["specialAttributes"]
      961 GETUPVAL                         R82 24
      962 CALL                             R82 0 1
      963 JUMPIFNOT                        R82 ; [+3]
      964 GETTABLEKS                       R81 R1 K231 ["hasMetadataPermission"]
      966 JUMP                             ; [+1]
      967 LOADNIL                          R81
      968 SETTABLEKS                       R81 R80 K231 ["hasMetadataPermission"]
      970 SETTABLEKS                       R32 R80 K232 ["displayOwnership"]
      972 SETTABLEKS                       R33 R80 K233 ["displayCopy"]
      974 SETTABLEKS                       R35 R80 K234 ["displayComment"]
      976 SETTABLEKS                       R36 R80 K235 ["displayAssetType"]
      978 SETTABLEKS                       R48 R80 K236 ["displaySharing"]
      980 SETTABLEKS                       R34 R80 K237 ["displayAssetTypeSelection"]
      982 JUMPIFNOT                        R46 ; [+2]
      983 MOVE                             R81 R27
      984 JUMP                             ; [+1]
      985 LOADNIL                          R81
      986 SETTABLEKS                       R81 R80 K30 ["allowedAssetTypesForRelease"]
      988 SETTABLEKS                       R28 R80 K31 ["allowedAssetTypesForFree"]
      990 JUMPIFNOT                        R46 ; [+2]
      991 MOVE                             R81 R16
      992 JUMP                             ; [+1]
      993 LOADNIL                          R81
      994 SETTABLEKS                       R81 R80 K238 ["newAssetStatus"]
      996 JUMPIFNOT                        R46 ; [+2]
      997 MOVE                             R81 R30
      998 JUMP                             ; [+1]
      999 LOADNIL                          R81
     1000 SETTABLEKS                       R81 R80 K239 ["currentAssetStatus"]
     1002 JUMPIFNOT                        R46 ; [+3]
     1003 GETTABLEKS                       R81 R0 K240 ["onStatusChange"]
     1005 JUMP                             ; [+1]
     1006 LOADNIL                          R81
     1007 SETTABLEKS                       R81 R80 K240 ["onStatusChange"]
     1009 JUMPIFNOT                        R46 ; [+3]
     1010 GETTABLEKS                       R81 R0 K241 ["onPriceChange"]
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R81
     1014 SETTABLEKS                       R81 R80 K241 ["onPriceChange"]
     1016 JUMPIFNOT                        R46 ; [+2]
     1017 MOVE                             R81 R31
     1018 JUMP                             ; [+1]
     1019 LOADNIL                          R81
     1020 SETTABLEKS                       R81 R80 K35 ["price"]
     1022 LOADNIL                          R81
     1023 SETTABLEKS                       R81 R80 K242 ["minPrice"]
     1025 LOADNIL                          R81
     1026 SETTABLEKS                       R81 R80 K243 ["maxPrice"]
     1028 LOADNIL                          R81
     1029 SETTABLEKS                       R81 R80 K244 ["feeRate"]
     1031 LOADNIL                          R81
     1032 SETTABLEKS                       R81 R80 K245 ["isPriceValid"]
     1034 LOADN                            R81 3
     1035 SETTABLEKS                       R81 R80 K127 ["LayoutOrder"]
     1037 GETTABLEKS                       R81 R1 K47 ["instances"]
     1039 SETTABLEKS                       R81 R80 K47 ["instances"]
     1041 GETUPVAL                         R82 8
     1042 CALL                             R82 0 1
     1043 JUMPIFNOT                        R82 ; [+2]
     1044 MOVE                             R81 R68
     1045 JUMP                             ; [+1]
     1046 LOADNIL                          R81
     1047 SETTABLEKS                       R81 R80 K246 ["showColorPicker"]
     1049 GETUPVAL                         R82 8
     1050 CALL                             R82 0 1
     1051 JUMPIFNOT                        R82 ; [+4]
     1052 JUMPIFNOT                        R68 ; [+3]
     1053 GETTABLEKS                       R81 R2 K247 ["showColorPickerRequiredError"]
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R81
     1057 SETTABLEKS                       R81 R80 K247 ["showColorPickerRequiredError"]
     1059 GETUPVAL                         R82 25
     1060 CALL                             R82 0 1
     1061 JUMPIFNOT                        R82 ; [+3]
     1062 GETTABLEKS                       R81 R2 K248 ["showNameRequiredError"]
     1064 JUMP                             ; [+1]
     1065 LOADNIL                          R81
     1066 SETTABLEKS                       R81 R80 K248 ["showNameRequiredError"]
     1068 GETUPVAL                         R82 25
     1069 CALL                             R82 0 1
     1070 JUMPIFNOT                        R82 ; [+3]
     1071 GETTABLEKS                       R81 R2 K249 ["showDescriptionRequiredError"]
     1073 JUMP                             ; [+1]
     1074 LOADNIL                          R81
     1075 SETTABLEKS                       R81 R80 K249 ["showDescriptionRequiredError"]
     1077 GETUPVAL                         R82 8
     1078 CALL                             R82 0 1
     1079 JUMPIFNOT                        R82 ; [+4]
     1080 JUMPIFNOT                        R68 ; [+3]
     1081 GETTABLEKS                       R81 R2 K57 ["selectedColor"]
     1083 JUMP                             ; [+1]
     1084 LOADNIL                          R81
     1085 SETTABLEKS                       R81 R80 K57 ["selectedColor"]
     1087 GETUPVAL                         R82 8
     1088 CALL                             R82 0 1
     1089 JUMPIFNOT                        R82 ; [+4]
     1090 JUMPIFNOT                        R68 ; [+3]
     1091 GETTABLEKS                       R81 R0 K250 ["onSelectedColorChange"]
     1093 JUMP                             ; [+1]
     1094 LOADNIL                          R81
     1095 SETTABLEKS                       R81 R80 K251 ["setSelectedColor"]
     1097 CALL                             R78 2 1
     1098 SETTABLEKS                       R78 R77 K161 ["PublishAsset"]
     1100 GETUPVAL                         R78 1
     1101 MOVE                             R80 R6
     1102 NAMECALL                         R78 R78 K252 ["isVersions"]
     1104 CALL                             R78 2 1
     1105 JUMPIFNOT                        R78 ; [+75]
     1106 GETUPVAL                         R78 12
     1107 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1109 GETUPVAL                         R79 26
     1110 DUPTABLE                         R80 K266 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
     1111 GETIMPORT                        R81 K156 [UDim2.new]
     1113 LOADN                            R82 1
     1114 LOADN                            R83 -240
     1115 LOADN                            R84 1
     1116 LOADN                            R85 -20
     1117 CALL                             R81 4 1
     1118 SETTABLEKS                       R81 R80 K3 ["Size"]
     1120 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1122 GETTABLEKS                       R81 R2 K267 ["versionsCurrentItem"]
     1124 SETTABLEKS                       R81 R80 K253 ["currentItem"]
     1126 GETTABLEKS                       R81 R2 K268 ["versionsRootItems"]
     1128 SETTABLEKS                       R81 R80 K254 ["rootItems"]
     1130 GETTABLEKS                       R81 R2 K269 ["versionsOpenInputKey"]
     1132 SETTABLEKS                       R81 R80 K255 ["openInputKey"]
     1134 GETTABLEKS                       R81 R2 K270 ["versionsPreviousInput"]
     1136 SETTABLEKS                       R81 R80 K256 ["previousInput"]
     1138 GETTABLEKS                       R81 R2 K271 ["versionsPageIndex"]
     1140 SETTABLEKS                       R81 R80 K257 ["pageIndex"]
     1142 GETTABLEKS                       R81 R2 K272 ["versionsPageRootItems"]
     1144 SETTABLEKS                       R81 R80 K258 ["pageRootItems"]
     1146 GETUPVAL                         R82 27
     1147 CALL                             R82 0 1
     1148 JUMPIFNOT                        R82 ; [+3]
     1149 GETTABLEKS                       R81 R1 K273 ["versionHistoryWithDescriptions"]
     1151 JUMP                             ; [+2]
     1152 GETTABLEKS                       R81 R1 K259 ["versionHistory"]
     1154 SETTABLEKS                       R81 R80 K259 ["versionHistory"]
     1156 GETTABLEKS                       R81 R0 K274 ["versionsOnDescClicked"]
     1158 SETTABLEKS                       R81 R80 K260 ["onDescClicked"]
     1160 GETTABLEKS                       R81 R0 K275 ["versionsCloseInput"]
     1162 SETTABLEKS                       R81 R80 K261 ["closeInput"]
     1164 GETTABLEKS                       R81 R0 K262 ["setVersionError"]
     1166 SETTABLEKS                       R81 R80 K262 ["setVersionError"]
     1168 GETTABLEKS                       R81 R0 K276 ["versionsSetPreviousInput"]
     1170 SETTABLEKS                       R81 R80 K263 ["setPreviousInput"]
     1172 GETTABLEKS                       R81 R0 K277 ["versionsOnPageChange"]
     1174 SETTABLEKS                       R81 R80 K264 ["onPageChange"]
     1176 GETTABLEKS                       R81 R0 K278 ["versionsSetStates"]
     1178 SETTABLEKS                       R81 R80 K265 ["setStates"]
     1180 CALL                             R78 2 1
     1181 SETTABLEKS                       R78 R77 K162 ["Versions"]
     1183 GETUPVAL                         R79 1
     1184 MOVE                             R81 R6
     1185 NAMECALL                         R79 R79 K279 ["isSales"]
     1187 CALL                             R79 2 1
     1188 JUMPIFNOT                        R79 ; [+18]
     1189 GETUPVAL                         R78 12
     1190 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1192 GETUPVAL                         R79 28
     1193 DUPTABLE                         R80 K282 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1194 GETIMPORT                        R81 K156 [UDim2.new]
     1196 LOADN                            R82 1
     1197 LOADN                            R83 -240
     1198 LOADN                            R84 1
     1199 LOADN                            R85 0
     1200 CALL                             R81 4 1
     1201 SETTABLEKS                       R81 R80 K280 ["size"]
     1203 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1205 CALL                             R78 2 1
     1206 JUMP                             ; [+1]
     1207 LOADNIL                          R78
     1208 SETTABLEKS                       R78 R77 K163 ["Sales"]
     1210 GETUPVAL                         R78 1
     1211 MOVE                             R80 R6
     1212 NAMECALL                         R78 R78 K283 ["isOverride"]
     1214 CALL                             R78 2 1
     1215 JUMPIFNOT                        R78 ; [+56]
     1216 GETUPVAL                         R79 29
     1217 CALL                             R79 0 1
     1218 JUMPIFNOT                        R79 ; [+28]
     1219 GETUPVAL                         R79 3
     1220 GETTABLEKS                       R79 R79 K284 ["isCatalogAsset"]
     1222 MOVE                             R80 R24
     1223 CALL                             R79 1 1
     1224 JUMPIFNOT                        R79 ; [+22]
     1225 GETUPVAL                         R78 19
     1226 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1228 GETUPVAL                         R79 30
     1229 DUPTABLE                         R80 K286 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1230 GETIMPORT                        R81 K156 [UDim2.new]
     1232 LOADN                            R82 1
     1233 LOADN                            R83 -240
     1234 LOADN                            R84 1
     1235 LOADN                            R85 0
     1236 CALL                             R81 4 1
     1237 SETTABLEKS                       R81 R80 K3 ["Size"]
     1239 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
     1241 GETTABLEKS                       R81 R0 K285 ["onOverrideAssetSelected"]
     1243 SETTABLEKS                       R81 R80 K285 ["onOverrideAssetSelected"]
     1245 CALL                             R78 2 1
     1246 JUMP                             ; [+25]
     1247 GETUPVAL                         R78 12
     1248 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1250 GETUPVAL                         R79 31
     1251 DUPTABLE                         R80 K287 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1252 GETIMPORT                        R81 K156 [UDim2.new]
     1254 LOADN                            R82 1
     1255 LOADN                            R83 -240
     1256 LOADN                            R84 1
     1257 LOADN                            R85 0
     1258 CALL                             R81 4 1
     1259 SETTABLEKS                       R81 R80 K3 ["Size"]
     1261 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
     1263 GETTABLEKS                       R81 R1 K47 ["instances"]
     1265 SETTABLEKS                       R81 R80 K47 ["instances"]
     1267 GETTABLEKS                       R81 R0 K285 ["onOverrideAssetSelected"]
     1269 SETTABLEKS                       R81 R80 K285 ["onOverrideAssetSelected"]
     1271 CALL                             R78 2 1
     1272 SETTABLEKS                       R78 R77 K164 ["OverrideAsset"]
     1274 GETUPVAL                         R78 1
     1275 MOVE                             R80 R6
     1276 NAMECALL                         R78 R78 K288 ["isPermissions"]
     1278 CALL                             R78 2 1
     1279 JUMPIFNOT                        R78 ; [+30]
     1280 GETUPVAL                         R78 12
     1281 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1283 GETUPVAL                         R79 32
     1284 GETTABLEKS                       R79 R79 K289 ["AsyncCache"]
     1286 NEWTABLE                         R80 0 0
     1288 NEWTABLE                         R81 0 1
     1290 GETUPVAL                         R82 12
     1291 GETTABLEKS                       R82 R82 K98 ["createElement"]
     1293 GETUPVAL                         R83 33
     1294 DUPTABLE                         R84 K290 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1295 GETIMPORT                        R85 K156 [UDim2.new]
     1297 LOADN                            R86 1
     1298 MOVE                             R87 R42
     1299 LOADN                            R88 1
     1300 LOADN                            R89 0
     1301 CALL                             R85 4 1
     1302 SETTABLEKS                       R85 R84 K3 ["Size"]
     1304 SETTABLEKS                       R7 R84 K181 ["AssetId"]
     1306 CALL                             R82 2 -1
     1307 SETLIST                          R81 R82 -1 [1]
     1309 CALL                             R78 3 1
     1310 SETTABLEKS                       R78 R77 K165 ["PackagePermissions"]
     1312 CALL                             R74 3 1
     1313 SETTABLEKS                       R74 R73 K112 ["MainPage"]
     1315 GETUPVAL                         R74 12
     1316 GETTABLEKS                       R74 R74 K98 ["createElement"]
     1318 GETUPVAL                         R75 34
     1319 DUPTABLE                         R76 K295 [{["AssetId"], ["CanSave"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1320 GETTABLEKS                       R77 R2 K296 ["overrideAssetId"]
     1322 SETTABLEKS                       R77 R76 K181 ["AssetId"]
     1324 SETTABLEKS                       R41 R76 K291 ["CanSave"]
     1326 GETIMPORT                        R77 K156 [UDim2.new]
     1328 LOADN                            R78 1
     1329 LOADN                            R79 0
     1330 LOADN                            R80 0
     1331 LOADN                            R81 62
     1332 CALL                             R77 4 1
     1333 SETTABLEKS                       R77 R76 K3 ["Size"]
     1335 GETTABLEKS                       R77 R0 K297 ["tryCancelWithYield"]
     1337 SETTABLEKS                       R77 R76 K292 ["TryCancel"]
     1339 GETTABLEKS                       R77 R0 K298 ["tryPublishWithConfirmDialog"]
     1341 SETTABLEKS                       R77 R76 K293 ["TryPublish"]
     1343 GETUPVAL                         R78 8
     1344 CALL                             R78 0 1
     1345 JUMPIFNOT                        R78 ; [+10]
     1346 JUMPIF                           R41 ; [+9]
     1347 NEWCLOSURE                       R77 P1
     1348 CAPTURE                          VAL R0
     1349 CAPTURE                          VAL R69
     1350 CAPTURE                          UPVAL U25
     1351 CAPTURE                          VAL R8
     1352 CAPTURE                          VAL R9
     1353 CAPTURE                          UPVAL U3
     1354 CAPTURE                          VAL R24
     1355 JUMP                             ; [+1]
     1356 LOADNIL                          R77
     1357 SETTABLEKS                       R77 R76 K294 ["OnPublishButtonHover"]
     1359 CALL                             R74 2 1
     1360 SETTABLEKS                       R74 R73 K113 ["Footer"]
     1362 CALL                             R70 3 -1
     1363 RETURN                           R70 -1

PROTO_84:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["idToFiatProductMap"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["assetConfigData"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETTABLEKS                       R4 R0 K2 ["changed"]
       17 GETTABLEKS                       R5 R0 K3 ["publishingRequirements"]
       19 JUMPIF                           R5 ; [+2]
       20 NEWTABLE                         R5 0 0
       22 GETTABLEKS                       R6 R5 K4 ["verification"]
       24 JUMPIF                           R6 ; [+2]
       25 NEWTABLE                         R6 0 0
       27 GETTABLEKS                       R7 R5 K5 ["publishing"]
       29 JUMPIF                           R7 ; [+2]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R8 R7 K6 ["restrictions"]
       34 JUMPIF                           R8 ; [+2]
       35 NEWTABLE                         R8 0 0
       37 NEWTABLE                         R9 0 0
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K7 ["contains"]
       42 MOVE                             R11 R9
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K8 ["Package"]
       46 CALL                             R10 2 1
       47 GETTABLEKS                       R11 R0 K9 ["isVerifiedCreator"]
       49 GETTABLEKS                       R12 R0 K10 ["versionHistory"]
       51 GETUPVAL                         R14 1
       52 CALL                             R14 0 1
       53 JUMPIFNOT                        R14 ; [+3]
       54 GETTABLEKS                       R13 R0 K11 ["versionHistoryWithDescriptions"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R13
       58 GETTABLEKS                       R14 R0 K12 ["collaborators"]
       60 JUMPIF                           R14 ; [+2]
       61 NEWTABLE                         R14 0 0
       63 NEWTABLE                         R15 64 0
       65 SETTABLEKS                       R3 R15 K1 ["assetConfigData"]
       67 GETTABLEKS                       R16 R0 K13 ["assetTypeEnum"]
       69 SETTABLEKS                       R16 R15 K13 ["assetTypeEnum"]
       71 GETTABLEKS                       R16 R0 K14 ["assetTypeValidationSucceeded"]
       73 SETTABLEKS                       R16 R15 K14 ["assetTypeValidationSucceeded"]
       75 GETTABLEKS                       R16 R0 K15 ["categoryType"]
       77 SETTABLEKS                       R16 R15 K15 ["categoryType"]
       79 GETTABLEKS                       R16 R0 K16 ["currentScreen"]
       81 SETTABLEKS                       R16 R15 K16 ["currentScreen"]
       83 SETTABLEKS                       R4 R15 K17 ["changeTable"]
       85 GETTABLEKS                       R16 R0 K18 ["screenFlowType"]
       87 SETTABLEKS                       R16 R15 K18 ["screenFlowType"]
       89 GETTABLEKS                       R16 R0 K19 ["instances"]
       91 SETTABLEKS                       R16 R15 K19 ["instances"]
       93 GETUPVAL                         R17 2
       94 JUMPIF                           R17 ; [+2]
       95 GETUPVAL                         R17 3
       96 JUMPIFNOT                        R17 ; [+3]
       97 GETTABLEKS                       R16 R0 K20 ["sourceInstances"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R16
      101 SETTABLEKS                       R16 R15 K20 ["sourceInstances"]
      103 GETTABLEKS                       R16 R0 K21 ["allowedAssetTypesForRelease"]
      105 SETTABLEKS                       R16 R15 K21 ["allowedAssetTypesForRelease"]
      107 GETTABLEKS                       R16 R0 K22 ["allowedAssetTypesForUpload"]
      109 SETTABLEKS                       R16 R15 K22 ["allowedAssetTypesForUpload"]
      111 GETTABLEKS                       R16 R0 K23 ["allowedAssetTypesForFree"]
      113 SETTABLEKS                       R16 R15 K23 ["allowedAssetTypesForFree"]
      115 GETTABLEKS                       R16 R0 K24 ["allowedBundleTypeSettings"]
      117 SETTABLEKS                       R16 R15 K24 ["allowedBundleTypeSettings"]
      119 GETTABLEKS                       R16 R0 K25 ["currentTab"]
      121 SETTABLEKS                       R16 R15 K25 ["currentTab"]
      123 SETTABLEKS                       R11 R15 K9 ["isVerifiedCreator"]
      125 GETUPVAL                         R17 4
      126 JUMPIFNOT                        R17 ; [+4]
      127 GETTABLEKS                       R17 R7 K27 ["isAllowed"]
      129 ORK                              R16 R17 K26 [False]
      130 JUMP                             ; [+1]
      131 LOADB                            R16 0
      132 SETTABLEKS                       R16 R15 K28 ["isPublishingAllowed"]
      134 SETTABLEKS                       R10 R15 K29 ["isPackageMarketplacePublishAllowed"]
      136 GETTABLEKS                       R16 R0 K30 ["networkError"]
      138 SETTABLEKS                       R16 R15 K30 ["networkError"]
      140 GETTABLEKS                       R16 R0 K31 ["networkErrorAction"]
      142 JUMPIF                           R16 ; [+2]
      143 NEWTABLE                         R16 0 0
      145 SETTABLEKS                       R16 R15 K31 ["networkErrorAction"]
      147 GETTABLEKS                       R16 R0 K32 ["isPackageAsset"]
      149 SETTABLEKS                       R16 R15 K32 ["isPackageAsset"]
      151 GETTABLEKS                       R16 R1 K33 ["assetId"]
      153 JUMPIFNOT                        R16 ; [+9]
      154 GETTABLEKS                       R18 R0 K34 ["packagePermissions"]
      156 GETTABLEKS                       R19 R1 K33 ["assetId"]
      158 GETTABLE                         R17 R18 R19
      159 JUMPIFNOTEQKNIL                  R17 ; [+2]
      161 LOADB                            R16 0 +1
      162 LOADB                            R16 1
      163 SETTABLEKS                       R16 R15 K35 ["hasPackagePermission"]
      165 GETTABLEKS                       R16 R0 K36 ["isUploadFeeEnabled"]
      167 SETTABLEKS                       R16 R15 K36 ["isUploadFeeEnabled"]
      169 GETTABLEKS                       R16 R0 K37 ["descendantPermissions"]
      171 SETTABLEKS                       R16 R15 K37 ["descendantPermissions"]
      173 GETTABLEKS                       R16 R0 K38 ["uploadFee"]
      175 SETTABLEKS                       R16 R15 K38 ["uploadFee"]
      177 GETUPVAL                         R17 5
      178 CALL                             R17 0 1
      179 JUMPIFNOT                        R17 ; [+3]
      180 GETTABLEKS                       R16 R0 K39 ["specialAttributes"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R16
      184 SETTABLEKS                       R16 R15 K39 ["specialAttributes"]
      186 GETUPVAL                         R17 5
      187 CALL                             R17 0 1
      188 JUMPIFNOT                        R17 ; [+3]
      189 GETTABLEKS                       R16 R0 K40 ["hasMetadataPermission"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R16
      193 SETTABLEKS                       R16 R15 K40 ["hasMetadataPermission"]
      195 GETTABLEKS                       R16 R0 K41 ["deleteLocal"]
      197 SETTABLEKS                       R16 R15 K41 ["deleteLocal"]
      199 SETTABLEKS                       R12 R15 K10 ["versionHistory"]
      201 SETTABLEKS                       R13 R15 K11 ["versionHistoryWithDescriptions"]
      203 SETTABLEKS                       R14 R15 K42 ["permissions"]
      205 SETTABLEKS                       R8 R15 K43 ["publishingRestrictions"]
      207 GETTABLEKS                       R18 R1 K33 ["assetId"]
      209 GETTABLE                         R17 R2 R18
      210 JUMPIFNOT                        R17 ; [+4]
      211 GETTABLEKS                       R17 R1 K33 ["assetId"]
      213 GETTABLE                         R16 R2 R17
      214 JUMP                             ; [+4]
      215 GETUPVAL                         R16 6
      216 GETTABLEKS                       R16 R16 K44 ["getDefaultFiatProduct"]
      218 CALL                             R16 0 1
      219 SETTABLEKS                       R16 R15 K45 ["fiatProduct"]
      221 GETTABLEKS                       R16 R0 K46 ["groupBundlesUploadEnabledForUser"]
      223 SETTABLEKS                       R16 R15 K46 ["groupBundlesUploadEnabledForUser"]
      225 GETUPVAL                         R17 7
      226 CALL                             R17 0 1
      227 JUMPIFNOT                        R17 ; [+3]
      228 GETTABLEKS                       R16 R0 K47 ["animationPackType"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R16
      232 SETTABLEKS                       R16 R15 K47 ["animationPackType"]
      234 GETUPVAL                         R17 7
      235 CALL                             R17 0 1
      236 JUMPIFNOT                        R17 ; [+3]
      237 GETTABLEKS                       R16 R0 K48 ["animationPackSubName"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R16
      241 SETTABLEKS                       R16 R15 K48 ["animationPackSubName"]
      243 GETUPVAL                         R17 7
      244 CALL                             R17 0 1
      245 JUMPIFNOT                        R17 ; [+3]
      246 GETTABLEKS                       R16 R0 K49 ["animationPackWeight"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R16
      250 SETTABLEKS                       R16 R15 K49 ["animationPackWeight"]
      252 GETUPVAL                         R17 7
      253 CALL                             R17 0 1
      254 JUMPIFNOT                        R17 ; [+3]
      255 GETTABLEKS                       R16 R0 K50 ["animationPackParentModelName"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R16
      259 SETTABLEKS                       R16 R15 K50 ["animationPackParentModelName"]
      261 GETUPVAL                         R17 7
      262 CALL                             R17 0 1
      263 JUMPIFNOT                        R17 ; [+3]
      264 GETTABLEKS                       R16 R0 K51 ["animationSectionValid"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R16
      268 SETTABLEKS                       R16 R15 K51 ["animationSectionValid"]
      270 GETUPVAL                         R17 8
      271 CALL                             R17 0 1
      272 JUMPIFNOT                        R17 ; [+3]
      273 GETTABLEKS                       R16 R0 K52 ["isAvatarItemDialogFlowEnabled"]
      275 JUMP                             ; [+1]
      276 LOADNIL                          R16
      277 SETTABLEKS                       R16 R15 K52 ["isAvatarItemDialogFlowEnabled"]
      279 RETURN                           R15 1

PROTO_85:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 MOVE                             R10 R0
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 CALL                             R9 8 -1
       11 CALL                             R8 -1 0
       12 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 MOVE                             R10 R0
        3 MOVE                             R11 R1
        4 MOVE                             R12 R2
        5 MOVE                             R13 R3
        6 MOVE                             R14 R4
        7 MOVE                             R15 R5
        8 MOVE                             R16 R6
        9 MOVE                             R17 R7
       10 CALL                             R9 8 -1
       11 CALL                             R8 -1 0
       12 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 CALL                             R6 0 1
        5 JUMPIFNOT                        R6 ; [+2]
        6 MOVE                             R5 R1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R5
        9 CALL                             R3 2 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["OVERRIDE_ASSET_ID"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 GETUPVAL                         R12 2
        7 CALL                             R12 0 1
        8 JUMPIFNOT                        R12 ; [+2]
        9 MOVE                             R11 R4
       10 JUMP                             ; [+1]
       11 LOADNIL                          R11
       12 CALL                             R6 5 -1
       13 CALL                             R5 -1 0
       14 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_101:
        0 NEWTABLE                         R10 0 0
        2 MOVE                             R11 R5
        3 JUMPIF                           R11 ; [+2]
        4 NEWTABLE                         R11 0 0
        6 LOADNIL                          R12
        7 LOADNIL                          R13
        8 FORGPREP                         R11
        9 NAMECALL                         R16 R15 K0 ["Clone"]
       11 CALL                             R16 1 1
       12 GETUPVAL                         R17 0
       13 MOVE                             R18 R16
       14 CALL                             R17 1 0
       15 SETTABLE                         R16 R10 R14
       16 FORGLOOP                         R11 2 ; [-8]
       18 GETUPVAL                         R11 1
       19 GETUPVAL                         R12 2
       20 MOVE                             R13 R0
       21 MOVE                             R14 R1
       22 MOVE                             R15 R3
       23 MOVE                             R16 R4
       24 MOVE                             R17 R10
       25 MOVE                             R18 R6
       26 MOVE                             R19 R7
       27 MOVE                             R20 R8
       28 MOVE                             R21 R9
       29 CALL                             R12 9 -1
       30 CALL                             R11 -1 0
       31 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R12 0
        1 GETUPVAL                         R13 1
        2 MOVE                             R14 R0
        3 MOVE                             R15 R1
        4 MOVE                             R16 R2
        5 MOVE                             R17 R3
        6 MOVE                             R18 R4
        7 MOVE                             R19 R5
        8 MOVE                             R20 R6
        9 MOVE                             R21 R7
       10 MOVE                             R22 R8
       11 MOVE                             R23 R9
       12 MOVE                             R24 R10
       13 MOVE                             R25 R11
       14 CALL                             R13 12 -1
       15 CALL                             R12 -1 0
       16 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_125:
        0 NEWTABLE                         R1 64 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R2 R1 K0 ["getAssetDetails"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R2 R1 K1 ["dispatchGetMarketplaceInfo"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R2 R1 K2 ["getVersionHistory"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R2 R1 K3 ["makeChangeRequest"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 SETTABLEKS                       R2 R1 K4 ["resetUploadResult"]
       28 GETUPVAL                         R3 6
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 NEWCLOSURE                       R2 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U7
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K5 ["uploadCatalogItem"]
       38 GETUPVAL                         R3 6
       39 CALL                             R3 0 1
       40 JUMPIF                           R3 ; [+4]
       41 NEWCLOSURE                       R2 P6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 JUMP                             ; [+1]
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R1 K6 ["configureCatalogItem"]
       48 GETUPVAL                         R3 6
       49 CALL                             R3 0 1
       50 JUMPIF                           R3 ; [+4]
       51 NEWCLOSURE                       R2 P7
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U9
       54 JUMP                             ; [+1]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K7 ["configureMarketplaceItem"]
       58 GETUPVAL                         R3 6
       59 CALL                             R3 0 1
       60 JUMPIF                           R3 ; [+5]
       61 NEWCLOSURE                       R2 P8
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 JUMP                             ; [+1]
       66 LOADNIL                          R2
       67 SETTABLEKS                       R2 R1 K8 ["uploadMarketplaceItem"]
       69 NEWCLOSURE                       R2 P9
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U12
       72 SETTABLEKS                       R2 R1 K9 ["postRevertVersion"]
       74 NEWCLOSURE                       R2 P10
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U13
       77 SETTABLEKS                       R2 R1 K10 ["postVersionDescription"]
       79 NEWCLOSURE                       R2 P11
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          UPVAL U15
       83 CAPTURE                          UPVAL U16
       84 SETTABLEKS                       R2 R1 K11 ["setTab"]
       86 GETUPVAL                         R3 6
       87 CALL                             R3 0 1
       88 JUMPIF                           R3 ; [+5]
       89 NEWCLOSURE                       R2 P12
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U17
       92 CAPTURE                          UPVAL U11
       93 JUMP                             ; [+1]
       94 LOADNIL                          R2
       95 SETTABLEKS                       R2 R1 K12 ["overrideAsset"]
       97 NEWCLOSURE                       R2 P13
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U18
      100 SETTABLEKS                       R2 R1 K13 ["getIsVerifiedCreator"]
      102 NEWCLOSURE                       R2 P14
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U19
      105 SETTABLEKS                       R2 R1 K14 ["getItemUploadFee"]
      107 GETUPVAL                         R3 20
      108 CALL                             R3 0 1
      109 JUMPIFNOT                        R3 ; [+4]
      110 NEWCLOSURE                       R2 P15
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U21
      113 JUMP                             ; [+1]
      114 LOADNIL                          R2
      115 SETTABLEKS                       R2 R1 K15 ["dispatchFetchUploadFeeWithMetadata"]
      117 GETUPVAL                         R3 6
      118 CALL                             R3 0 1
      119 JUMPIF                           R3 ; [+5]
      120 NEWCLOSURE                       R2 P16
      121 CAPTURE                          UPVAL U22
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U23
      124 JUMP                             ; [+1]
      125 LOADNIL                          R2
      126 SETTABLEKS                       R2 R1 K16 ["uploadCatalogItemWithFee"]
      128 GETUPVAL                         R3 6
      129 CALL                             R3 0 1
      130 JUMPIF                           R3 ; [+4]
      131 NEWCLOSURE                       R2 P17
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U24
      134 JUMP                             ; [+1]
      135 LOADNIL                          R2
      136 SETTABLEKS                       R2 R1 K17 ["uploadUGCBundleWithFee"]
      138 NEWCLOSURE                       R2 P18
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U25
      141 SETTABLEKS                       R2 R1 K18 ["dispatchPostPackageMetadataRequest"]
      143 NEWCLOSURE                       R2 P19
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U26
      146 SETTABLEKS                       R2 R1 K19 ["updateStore"]
      148 NEWCLOSURE                       R2 P20
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U27
      151 SETTABLEKS                       R2 R1 K20 ["dispatchGetPackageCollaboratorsRequest"]
      153 NEWCLOSURE                       R2 P21
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U28
      156 SETTABLEKS                       R2 R1 K21 ["dispatchPutPackagePermissionsRequest"]
      158 NEWCLOSURE                       R2 P22
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U29
      161 SETTABLEKS                       R2 R1 K22 ["dispatchPostAssetCheckPermissions"]
      163 NEWCLOSURE                       R2 P23
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U30
      166 SETTABLEKS                       R2 R1 K23 ["dispatchGetGroupMetadata"]
      168 NEWCLOSURE                       R2 P24
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U31
      171 SETTABLEKS                       R2 R1 K24 ["dispatchGetGroupRoleInfo"]
      173 NEWCLOSURE                       R2 P25
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U32
      176 SETTABLEKS                       R2 R1 K25 ["dispatchGetUsername"]
      178 NEWCLOSURE                       R2 P26
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U33
      181 SETTABLEKS                       R2 R1 K26 ["dispatchPatchMakeAssetPublicRequest"]
      183 NEWCLOSURE                       R2 P27
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U34
      186 SETTABLEKS                       R2 R1 K27 ["dispatchGetAssetPermissionsRequest"]
      188 NEWCLOSURE                       R2 P28
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U35
      191 SETTABLEKS                       R2 R1 K28 ["dispatchSetDescendantPermissions"]
      193 NEWCLOSURE                       R2 P29
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U36
      196 SETTABLEKS                       R2 R1 K29 ["dispatchGetPublishingRequirements"]
      198 NEWCLOSURE                       R2 P30
      199 CAPTURE                          VAL R0
      200 CAPTURE                          UPVAL U37
      201 SETTABLEKS                       R2 R1 K30 ["dispatchGetAssetMediaMetadataArray"]
      203 NEWCLOSURE                       R2 P31
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U38
      206 SETTABLEKS                       R2 R1 K31 ["dispatchGetFiatProduct"]
      208 GETUPVAL                         R3 39
      209 CALL                             R3 0 1
      210 JUMPIFNOT                        R3 ; [+4]
      211 NEWCLOSURE                       R2 P32
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U40
      214 JUMP                             ; [+1]
      215 LOADNIL                          R2
      216 SETTABLEKS                       R2 R1 K32 ["dispatchGetSellerStatus"]
      218 NEWCLOSURE                       R2 P33
      219 CAPTURE                          VAL R0
      220 CAPTURE                          UPVAL U41
      221 SETTABLEKS                       R2 R1 K33 ["dispatchValidateAnimationResult"]
      223 GETUPVAL                         R3 42
      224 CALL                             R3 0 1
      225 JUMPIFNOT                        R3 ; [+4]
      226 NEWCLOSURE                       R2 P34
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U43
      229 JUMP                             ; [+1]
      230 LOADNIL                          R2
      231 SETTABLEKS                       R2 R1 K34 ["dispatchCheckAvatarAssetPrivacy"]
      233 GETUPVAL                         R2 6
      234 CALL                             R2 0 1
      235 JUMPIF                           R2 ; [+10]
      236 NEWCLOSURE                       R2 P35
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U44
      239 SETTABLEKS                       R2 R1 K35 ["uploadAnimationAsset"]
      241 NEWCLOSURE                       R2 P36
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U45
      244 SETTABLEKS                       R2 R1 K36 ["overrideAnimationAsset"]
      246 GETUPVAL                         R2 6
      247 CALL                             R2 0 1
      248 JUMPIFNOT                        R2 ; [+15]
      249 NEWCLOSURE                       R2 P37
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U46
      252 SETTABLEKS                       R2 R1 K37 ["dispatchDownloadFlow"]
      254 NEWCLOSURE                       R2 P38
      255 CAPTURE                          VAL R0
      256 CAPTURE                          UPVAL U47
      257 SETTABLEKS                       R2 R1 K38 ["dispatchEditFlow"]
      259 NEWCLOSURE                       R2 P39
      260 CAPTURE                          VAL R0
      261 CAPTURE                          UPVAL U48
      262 SETTABLEKS                       R2 R1 K39 ["dispatchUploadFlow"]
      264 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterPack"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R2 K8 ["Util"]
       21 GETIMPORT                        R3 K1 [game]
       23 LOADK                            R5 K9 ["ToolboxEditDialogUseMPRS2"]
       24 NAMECALL                         R3 R3 K10 ["GetFastFlag"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K1 [game]
       29 LOADK                            R6 K11 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       30 NAMECALL                         R4 R4 K10 ["GetFastFlag"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K1 [game]
       35 LOADK                            R7 K12 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       36 NAMECALL                         R5 R5 K10 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K1 [game]
       41 LOADK                            R8 K13 ["ToolboxVideoConfigSharing2"]
       42 NAMECALL                         R6 R6 K10 ["GetFastFlag"]
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K15 [require]
       47 GETTABLEKS                       R8 R1 K7 ["Src"]
       49 GETTABLEKS                       R8 R8 K8 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["SharedFlags"]
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxTranslateUploadError"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K15 [require]
       58 GETTABLEKS                       R9 R1 K7 ["Src"]
       60 GETTABLEKS                       R9 R9 K8 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       64 GETTABLEKS                       R9 R9 K18 ["getFFlagToolboxAssetConfigOnboardingLink"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K1 [game]
       69 LOADK                            R11 K19 ["ToolboxSendPackageVersionNoteTelemetry"]
       70 NAMECALL                         R9 R9 K10 ["GetFastFlag"]
       72 CALL                             R9 2 1
       73 GETIMPORT                        R10 K15 [require]
       75 GETTABLEKS                       R11 R1 K7 ["Src"]
       77 GETTABLEKS                       R11 R11 K20 ["Flags"]
       79 GETTABLEKS                       R11 R11 K21 ["getFFlagCheckAvatarAssetPrivacy"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K1 [game]
       84 LOADK                            R13 K22 ["StudioService"]
       85 NAMECALL                         R11 R11 K3 ["GetService"]
       87 CALL                             R11 2 1
       88 GETIMPORT                        R12 K15 [require]
       90 GETTABLEKS                       R13 R1 K7 ["Src"]
       92 GETTABLEKS                       R13 R13 K8 ["Util"]
       94 GETTABLEKS                       R13 R13 K23 ["getUserId"]
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R13 R1 K24 ["Packages"]
       99 GETIMPORT                        R14 K15 [require]
      101 GETTABLEKS                       R15 R13 K25 ["React"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K15 [require]
      106 GETTABLEKS                       R16 R13 K26 ["Roact"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K15 [require]
      111 GETTABLEKS                       R17 R13 K27 ["RoactRodux"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K15 [require]
      116 GETTABLEKS                       R18 R13 K28 ["Foundation"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K15 [require]
      121 GETTABLEKS                       R19 R13 K29 ["Cryo"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K15 [require]
      126 GETTABLEKS                       R20 R2 K30 ["Analytics"]
      128 GETTABLEKS                       R20 R20 K30 ["Analytics"]
      130 CALL                             R19 1 1
      131 GETTABLEKS                       R20 R1 K7 ["Src"]
      133 GETTABLEKS                       R20 R20 K31 ["Components"]
      135 GETTABLEKS                       R21 R20 K32 ["AssetConfiguration"]
      137 GETIMPORT                        R22 K15 [require]
      139 GETTABLEKS                       R23 R21 K33 ["PreviewArea"]
      141 CALL                             R22 1 1
      142 GETIMPORT                        R23 K15 [require]
      144 GETTABLEKS                       R24 R21 K34 ["PublishAsset"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K15 [require]
      149 GETTABLEKS                       R25 R21 K35 ["AssetConfigFooter"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K15 [require]
      154 GETTABLEKS                       R26 R21 K36 ["Versions"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K15 [require]
      159 GETTABLEKS                       R27 R21 K37 ["DataSharing"]
      161 CALL                             R26 1 1
      162 GETIMPORT                        R27 K15 [require]
      164 GETTABLEKS                       R28 R21 K38 ["CreatorDashboardLinkContent"]
      166 CALL                             R27 1 1
      167 GETIMPORT                        R28 K15 [require]
      169 GETTABLEKS                       R29 R21 K39 ["Permissions"]
      171 GETTABLEKS                       R29 R29 K40 ["PermissionsPage"]
      173 CALL                             R28 1 1
      174 GETIMPORT                        R29 K15 [require]
      176 GETTABLEKS                       R30 R21 K39 ["Permissions"]
      178 GETTABLEKS                       R30 R30 K41 ["CollaboratorInfo"]
      180 CALL                             R29 1 1
      181 GETIMPORT                        R30 K15 [require]
      183 GETTABLEKS                       R31 R21 K42 ["WarningDialog"]
      185 CALL                             R30 1 1
      186 GETIMPORT                        R31 K15 [require]
      188 GETTABLEKS                       R32 R21 K43 ["StyledConfirmDialog"]
      190 CALL                             R31 1 1
      191 GETIMPORT                        R32 K15 [require]
      193 GETTABLEKS                       R33 R21 K44 ["AvatarItemDialogContainer"]
      195 CALL                             R32 1 1
      196 GETIMPORT                        R33 K15 [require]
      198 GETTABLEKS                       R34 R21 K45 ["OverrideAsset"]
      200 CALL                             R33 1 1
      201 GETIMPORT                        R34 K15 [require]
      203 GETTABLEKS                       R35 R21 K46 ["AvatarItemOverride"]
      205 CALL                             R34 1 1
      206 GETIMPORT                        R35 K15 [require]
      208 GETTABLEKS                       R36 R20 K47 ["MessageBox"]
      210 GETTABLEKS                       R36 R36 K47 ["MessageBox"]
      212 CALL                             R35 1 1
      213 GETIMPORT                        R36 K15 [require]
      215 GETTABLEKS                       R37 R2 K48 ["AssetPermissionUtil"]
      217 CALL                             R36 1 1
      218 GETIMPORT                        R37 K15 [require]
      220 GETTABLEKS                       R38 R2 K49 ["AvatarAnimationStudioToolboxTextures"]
      222 CALL                             R37 1 1
      223 GETIMPORT                        R38 K15 [require]
      225 GETTABLEKS                       R39 R2 K50 ["Images"]
      227 CALL                             R38 1 1
      228 GETIMPORT                        R39 K15 [require]
      230 GETTABLEKS                       R40 R2 K51 ["AssetConfigConstants"]
      232 CALL                             R39 1 1
      233 GETIMPORT                        R40 K15 [require]
      235 GETTABLEKS                       R41 R2 K52 ["Constants"]
      237 CALL                             R40 1 1
      238 GETIMPORT                        R41 K15 [require]
      240 GETTABLEKS                       R42 R2 K53 ["ScreenSetup"]
      242 CALL                             R41 1 1
      243 GETIMPORT                        R42 K15 [require]
      245 GETTABLEKS                       R43 R2 K54 ["AssetConfigUtil"]
      247 CALL                             R42 1 1
      248 GETIMPORT                        R43 K15 [require]
      250 GETTABLEKS                       R44 R2 K55 ["fixUpPreValidation"]
      252 CALL                             R43 1 1
      253 GETIMPORT                        R44 K15 [require]
      255 GETTABLEKS                       R45 R2 K56 ["PublishUtil"]
      257 CALL                             R44 1 1
      258 GETIMPORT                        R45 K15 [require]
      260 GETTABLEKS                       R46 R2 K57 ["getAllowedAssetTypeEnums"]
      262 CALL                             R45 1 1
      263 GETIMPORT                        R46 K15 [require]
      265 GETTABLEKS                       R47 R2 K58 ["FiatUtil"]
      267 CALL                             R46 1 1
      268 GETIMPORT                        R47 K15 [require]
      270 GETTABLEKS                       R48 R2 K59 ["MetadataType"]
      272 CALL                             R47 1 1
      273 LOADNIL                          R48
      274 JUMPIFNOT                        R5 ; [+6]
      275 GETIMPORT                        R49 K15 [require]
      277 GETTABLEKS                       R50 R2 K60 ["getIsIXPVariableEnabled"]
      279 CALL                             R49 1 1
      280 MOVE                             R48 R49
      281 GETIMPORT                        R49 K15 [require]
      283 GETTABLEKS                       R50 R13 K61 ["Framework"]
      285 CALL                             R49 1 1
      286 GETTABLEKS                       R50 R49 K8 ["Util"]
      288 GETTABLEKS                       R50 R50 K62 ["deepCopy"]
      290 GETTABLEKS                       R51 R49 K8 ["Util"]
      292 GETTABLEKS                       R51 R51 K63 ["deepEqual"]
      294 GETTABLEKS                       R52 R49 K64 ["Dash"]
      296 GETTABLEKS                       R53 R52 K65 ["slice"]
      298 GETIMPORT                        R54 K15 [require]
      300 GETTABLEKS                       R55 R1 K7 ["Src"]
      302 GETTABLEKS                       R55 R55 K66 ["Networking"]
      304 GETTABLEKS                       R55 R55 K67 ["Requests"]
      306 GETTABLEKS                       R55 R55 K68 ["MakeChangeRequest"]
      308 CALL                             R54 1 1
      309 GETTABLEKS                       R55 R1 K7 ["Src"]
      311 GETTABLEKS                       R55 R55 K69 ["Types"]
      313 GETIMPORT                        R56 K15 [require]
      315 GETTABLEKS                       R57 R55 K70 ["AssetMediaTypes"]
      317 CALL                             R56 1 1
      318 GETIMPORT                        R57 K15 [require]
      320 GETTABLEKS                       R58 R55 K71 ["AssetSubTypes"]
      322 CALL                             R57 1 1
      323 GETIMPORT                        R58 K15 [require]
      325 GETTABLEKS                       R59 R55 K72 ["ConfigTypes"]
      327 CALL                             R58 1 1
      328 GETTABLEKS                       R59 R1 K7 ["Src"]
      330 GETTABLEKS                       R59 R59 K66 ["Networking"]
      332 GETTABLEKS                       R59 R59 K67 ["Requests"]
      334 GETIMPORT                        R60 K15 [require]
      336 GETTABLEKS                       R61 R59 K73 ["UploadCatalogItemRequest"]
      338 CALL                             R60 1 1
      339 GETIMPORT                        R61 K15 [require]
      341 GETTABLEKS                       R62 R59 K74 ["ConfigureCatalogItemRequest"]
      343 CALL                             R61 1 1
      344 GETIMPORT                        R62 K15 [require]
      346 GETTABLEKS                       R63 R59 K75 ["GetAssetDetailsRequest"]
      348 CALL                             R62 1 1
      349 GETIMPORT                        R63 K15 [require]
      351 GETTABLEKS                       R64 R59 K76 ["PostRevertVersionRequest"]
      353 CALL                             R63 1 1
      354 GETIMPORT                        R64 K15 [require]
      356 GETTABLEKS                       R65 R59 K77 ["PostVersionDescriptionRequest"]
      358 CALL                             R64 1 1
      359 GETIMPORT                        R65 K15 [require]
      361 GETTABLEKS                       R66 R59 K78 ["PatchAssetRequest"]
      363 CALL                             R65 1 1
      364 GETIMPORT                        R66 K15 [require]
      366 GETTABLEKS                       R67 R59 K79 ["PostUploadAssetRequest"]
      368 CALL                             R66 1 1
      369 GETIMPORT                        R67 K15 [require]
      371 GETTABLEKS                       R68 R59 K80 ["PostOverrideAssetRequest"]
      373 CALL                             R67 1 1
      374 GETIMPORT                        R68 K15 [require]
      376 GETTABLEKS                       R69 R59 K81 ["PostUploadAnimationRequest"]
      378 CALL                             R68 1 1
      379 GETIMPORT                        R69 K15 [require]
      381 GETTABLEKS                       R70 R59 K82 ["PostOverrideAnimationRequest"]
      383 CALL                             R69 1 1
      384 GETIMPORT                        R70 K15 [require]
      386 GETTABLEKS                       R71 R59 K83 ["GetIsVerifiedCreatorRequest"]
      388 CALL                             R70 1 1
      389 GETIMPORT                        R71 K15 [require]
      391 GETTABLEKS                       R72 R59 K84 ["PostPackageMetadataRequest"]
      393 CALL                             R71 1 1
      394 GETIMPORT                        R72 K15 [require]
      396 GETTABLEKS                       R73 R59 K85 ["GetPackageCollaboratorsRequest"]
      398 CALL                             R72 1 1
      399 GETIMPORT                        R73 K15 [require]
      401 GETTABLEKS                       R74 R59 K86 ["PutPackagePermissionsRequest"]
      403 CALL                             R73 1 1
      404 GETIMPORT                        R74 K15 [require]
      406 GETTABLEKS                       R75 R59 K87 ["PostAssetCheckPermissions"]
      408 CALL                             R74 1 1
      409 GETIMPORT                        R75 K15 [require]
      411 GETTABLEKS                       R76 R59 K88 ["GetMarketplaceInfoRequest"]
      413 CALL                             R75 1 1
      414 GETIMPORT                        R76 K15 [require]
      416 GETTABLEKS                       R77 R59 K89 ["GetItemUploadFeeRequest"]
      418 CALL                             R76 1 1
      419 GETIMPORT                        R77 K15 [require]
      421 GETTABLEKS                       R78 R59 K90 ["UGCBundleUploadRequest"]
      423 CALL                             R77 1 1
      424 GETIMPORT                        R78 K15 [require]
      426 GETTABLEKS                       R79 R59 K91 ["PatchMakeAssetPublicRequest"]
      428 CALL                             R78 1 1
      429 GETIMPORT                        R79 K15 [require]
      431 GETTABLEKS                       R80 R59 K92 ["GetAssetPermissionsRequest"]
      433 CALL                             R79 1 1
      434 GETIMPORT                        R80 K15 [require]
      436 GETTABLEKS                       R81 R59 K93 ["GetPublishingRequirementsRequest"]
      438 CALL                             R80 1 1
      439 GETIMPORT                        R81 K15 [require]
      441 GETTABLEKS                       R82 R59 K94 ["GetAssetMediaMetadataArrayRequest"]
      443 CALL                             R81 1 1
      444 GETIMPORT                        R82 K15 [require]
      446 GETTABLEKS                       R83 R59 K95 ["UGCAccessoryUploadRequest"]
      448 CALL                             R82 1 1
      449 GETIMPORT                        R83 K15 [require]
      451 GETTABLEKS                       R84 R59 K96 ["GetVersionHistoryRequest"]
      453 CALL                             R83 1 1
      454 GETIMPORT                        R84 K15 [require]
      456 GETTABLEKS                       R85 R59 K97 ["GetFiatProductRequest"]
      458 CALL                             R84 1 1
      459 GETIMPORT                        R85 K15 [require]
      461 GETTABLEKS                       R86 R59 K98 ["GetSellerStatusRequest"]
      463 CALL                             R85 1 1
      464 GETIMPORT                        R86 K15 [require]
      466 GETTABLEKS                       R87 R59 K99 ["GetDefaultBundleDataSharingRequest"]
      468 CALL                             R86 1 1
      469 GETIMPORT                        R87 K15 [require]
      471 GETTABLEKS                       R88 R1 K7 ["Src"]
      473 GETTABLEKS                       R88 R88 K100 ["Actions"]
      475 GETTABLEKS                       R88 R88 K101 ["ClearChange"]
      477 CALL                             R87 1 1
      478 GETIMPORT                        R88 K15 [require]
      480 GETTABLEKS                       R89 R1 K7 ["Src"]
      482 GETTABLEKS                       R89 R89 K100 ["Actions"]
      484 GETTABLEKS                       R89 R89 K102 ["SetAssetConfigTab"]
      486 CALL                             R88 1 1
      487 GETIMPORT                        R89 K15 [require]
      489 GETTABLEKS                       R90 R1 K7 ["Src"]
      491 GETTABLEKS                       R90 R90 K100 ["Actions"]
      493 GETTABLEKS                       R90 R90 K103 ["UpdateAssetConfigStore"]
      495 CALL                             R89 1 1
      496 GETIMPORT                        R90 K15 [require]
      498 GETTABLEKS                       R91 R1 K7 ["Src"]
      500 GETTABLEKS                       R91 R91 K100 ["Actions"]
      502 GETTABLEKS                       R91 R91 K104 ["SetDescendantPermissions"]
      504 CALL                             R90 1 1
      505 GETIMPORT                        R91 K15 [require]
      507 GETTABLEKS                       R92 R1 K7 ["Src"]
      509 GETTABLEKS                       R92 R92 K100 ["Actions"]
      511 GETTABLEKS                       R92 R92 K105 ["UploadResult"]
      513 CALL                             R91 1 1
      514 GETIMPORT                        R92 K15 [require]
      516 GETTABLEKS                       R93 R1 K7 ["Src"]
      518 GETTABLEKS                       R93 R93 K100 ["Actions"]
      520 GETTABLEKS                       R93 R93 K106 ["ValidateAnimationResult"]
      522 CALL                             R92 1 1
      523 GETIMPORT                        R93 K15 [require]
      525 GETTABLEKS                       R94 R1 K7 ["Src"]
      527 GETTABLEKS                       R94 R94 K107 ["Thunks"]
      529 GETTABLEKS                       R94 R94 K108 ["GetGroupMetadata"]
      531 CALL                             R93 1 1
      532 GETIMPORT                        R94 K15 [require]
      534 GETTABLEKS                       R95 R1 K7 ["Src"]
      536 GETTABLEKS                       R95 R95 K107 ["Thunks"]
      538 GETTABLEKS                       R95 R95 K109 ["GetGroupRoleInfo"]
      540 CALL                             R94 1 1
      541 GETIMPORT                        R95 K15 [require]
      543 GETTABLEKS                       R96 R1 K7 ["Src"]
      545 GETTABLEKS                       R96 R96 K107 ["Thunks"]
      547 GETTABLEKS                       R96 R96 K110 ["GetUsername"]
      549 CALL                             R95 1 1
      550 GETIMPORT                        R96 K15 [require]
      552 GETTABLEKS                       R97 R1 K7 ["Src"]
      554 GETTABLEKS                       R97 R97 K107 ["Thunks"]
      556 GETTABLEKS                       R97 R97 K111 ["CheckAvatarAssetPrivacy"]
      558 CALL                             R96 1 1
      559 GETIMPORT                        R97 K15 [require]
      561 GETTABLEKS                       R98 R1 K7 ["Src"]
      563 GETTABLEKS                       R98 R98 K107 ["Thunks"]
      565 GETTABLEKS                       R98 R98 K32 ["AssetConfiguration"]
      567 GETTABLEKS                       R98 R98 K112 ["DownloadFlowRequest"]
      569 CALL                             R97 1 1
      570 GETIMPORT                        R98 K15 [require]
      572 GETTABLEKS                       R99 R1 K7 ["Src"]
      574 GETTABLEKS                       R99 R99 K107 ["Thunks"]
      576 GETTABLEKS                       R99 R99 K32 ["AssetConfiguration"]
      578 GETTABLEKS                       R99 R99 K113 ["EditFlowRequest"]
      580 CALL                             R98 1 1
      581 GETIMPORT                        R99 K15 [require]
      583 GETTABLEKS                       R100 R1 K7 ["Src"]
      585 GETTABLEKS                       R100 R100 K107 ["Thunks"]
      587 GETTABLEKS                       R100 R100 K32 ["AssetConfiguration"]
      589 GETTABLEKS                       R100 R100 K114 ["UploadFlowRequest"]
      591 CALL                             R99 1 1
      592 GETIMPORT                        R100 K15 [require]
      594 GETTABLEKS                       R101 R1 K7 ["Src"]
      596 GETTABLEKS                       R101 R101 K107 ["Thunks"]
      598 GETTABLEKS                       R101 R101 K32 ["AssetConfiguration"]
      600 GETTABLEKS                       R101 R101 K115 ["FetchUploadFeeWithMetadataRequest"]
      602 CALL                             R100 1 1
      603 GETIMPORT                        R101 K15 [require]
      605 GETTABLEKS                       R102 R1 K7 ["Src"]
      607 GETTABLEKS                       R102 R102 K116 ["ContextServices"]
      609 GETTABLEKS                       R102 R102 K117 ["IXPContext"]
      611 CALL                             R101 1 1
      612 GETIMPORT                        R102 K15 [require]
      614 GETTABLEKS                       R103 R1 K7 ["Src"]
      616 GETTABLEKS                       R103 R103 K116 ["ContextServices"]
      618 GETTABLEKS                       R103 R103 K118 ["NetworkContext"]
      620 CALL                             R102 1 1
      621 GETIMPORT                        R103 K15 [require]
      623 GETTABLEKS                       R104 R1 K7 ["Src"]
      625 GETTABLEKS                       R104 R104 K116 ["ContextServices"]
      627 GETTABLEKS                       R104 R104 K119 ["PublishServiceContext"]
      629 CALL                             R103 1 1
      630 GETIMPORT                        R104 K15 [require]
      632 GETTABLEKS                       R105 R1 K7 ["Src"]
      634 GETTABLEKS                       R105 R105 K116 ["ContextServices"]
      636 GETTABLEKS                       R105 R105 K120 ["PluginGuiServiceContext"]
      638 CALL                             R104 1 1
      639 GETIMPORT                        R105 K15 [require]
      641 GETTABLEKS                       R106 R1 K7 ["Src"]
      643 GETTABLEKS                       R106 R106 K116 ["ContextServices"]
      645 GETTABLEKS                       R106 R106 K121 ["ContentProviderContext"]
      647 CALL                             R105 1 1
      648 GETIMPORT                        R106 K15 [require]
      650 GETTABLEKS                       R107 R13 K61 ["Framework"]
      652 CALL                             R106 1 1
      653 GETTABLEKS                       R107 R106 K116 ["ContextServices"]
      655 GETTABLEKS                       R108 R107 K122 ["withContext"]
      657 GETTABLEKS                       R109 R106 K123 ["UI"]
      659 GETTABLEKS                       R109 R109 K124 ["LoadingIndicator"]
      661 GETTABLEKS                       R110 R106 K123 ["UI"]
      663 GETTABLEKS                       R110 R110 K125 ["Container"]
      665 GETTABLEKS                       R111 R15 K126 ["PureComponent"]
      667 LOADK                            R113 K127 ["AssetConfig"]
      668 NAMECALL                         R111 R111 K128 ["extend"]
      670 CALL                             R111 2 1
      671 GETIMPORT                        R112 K131 [utf8.char]
      673 LOADK                            R113 K132 [57346]
      674 CALL                             R112 1 1
      675 GETIMPORT                        R113 K15 [require]
      677 GETTABLEKS                       R114 R1 K7 ["Src"]
      679 GETTABLEKS                       R114 R114 K20 ["Flags"]
      681 GETTABLEKS                       R114 R114 K133 ["getFFlagToolboxPublishFlowHelpers"]
      683 CALL                             R113 1 1
      684 GETIMPORT                        R114 K15 [require]
      686 GETTABLEKS                       R115 R1 K7 ["Src"]
      688 GETTABLEKS                       R115 R115 K20 ["Flags"]
      690 GETTABLEKS                       R115 R115 K134 ["getFFlagEnableUploadingMakeup"]
      692 CALL                             R114 1 1
      693 GETIMPORT                        R115 K15 [require]
      695 GETTABLEKS                       R116 R1 K7 ["Src"]
      697 GETTABLEKS                       R116 R116 K20 ["Flags"]
      699 GETTABLEKS                       R116 R116 K135 ["getFFlagEnableUploadingAvatarAnimations"]
      701 CALL                             R115 1 1
      702 GETIMPORT                        R116 K15 [require]
      704 GETTABLEKS                       R117 R1 K7 ["Src"]
      706 GETTABLEKS                       R117 R117 K20 ["Flags"]
      708 GETTABLEKS                       R117 R117 K136 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      710 CALL                             R116 1 1
      711 GETIMPORT                        R117 K15 [require]
      713 GETTABLEKS                       R118 R1 K7 ["Src"]
      715 GETTABLEKS                       R118 R118 K20 ["Flags"]
      717 GETTABLEKS                       R118 R118 K137 ["getFFlagEnableUpdateAvatarItem"]
      719 CALL                             R117 1 1
      720 GETIMPORT                        R118 K15 [require]
      722 GETTABLEKS                       R119 R1 K7 ["Src"]
      724 GETTABLEKS                       R119 R119 K20 ["Flags"]
      726 GETTABLEKS                       R119 R119 K138 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      728 CALL                             R118 1 1
      729 GETIMPORT                        R119 K15 [require]
      731 GETTABLEKS                       R120 R1 K7 ["Src"]
      733 GETTABLEKS                       R120 R120 K20 ["Flags"]
      735 GETTABLEKS                       R120 R120 K139 ["getFFlagDividerFoundationMigration"]
      737 CALL                             R119 1 1
      738 GETIMPORT                        R120 K15 [require]
      740 GETTABLEKS                       R121 R1 K7 ["Src"]
      742 GETTABLEKS                       R121 R121 K20 ["Flags"]
      744 GETTABLEKS                       R121 R121 K140 ["getFFlagToolboxDynamicUploadFee"]
      746 CALL                             R120 1 1
      747 NEWCLOSURE                       R121 P0
      748 CAPTURE                          VAL R10
      749 CAPTURE                          VAL R40
      750 CAPTURE                          VAL R114
      751 CAPTURE                          VAL R42
      752 CAPTURE                          VAL R39
      753 CAPTURE                          VAL R6
      754 CAPTURE                          VAL R36
      755 CAPTURE                          VAL R113
      756 CAPTURE                          VAL R18
      757 CAPTURE                          VAL R4
      758 CAPTURE                          VAL R5
      759 CAPTURE                          REF R48
      760 CAPTURE                          VAL R11
      761 CAPTURE                          VAL R58
      762 CAPTURE                          VAL R12
      763 CAPTURE                          VAL R26
      764 CAPTURE                          VAL R120
      765 CAPTURE                          VAL R47
      766 CAPTURE                          VAL R7
      767 CAPTURE                          VAL R9
      768 CAPTURE                          VAL R19
      769 CAPTURE                          VAL R116
      770 CAPTURE                          VAL R115
      771 CAPTURE                          VAL R50
      772 CAPTURE                          VAL R51
      773 CAPTURE                          VAL R57
      774 CAPTURE                          VAL R38
      775 SETTABLEKS                       R121 R111 K141 ["init"]
      777 DUPCLOSURE                       R121 K142 [PROTO_63]
      778 SETTABLEKS                       R121 R111 K143 ["attachXButtonCallback"]
      780 DUPCLOSURE                       R121 K144 [PROTO_64]
      781 SETTABLEKS                       R121 R111 K145 ["detachXButtonCallback"]
      783 DUPCLOSURE                       R121 K146 [PROTO_65]
      784 CAPTURE                          VAL R39
      785 SETTABLEKS                       R121 R111 K147 ["isLoading"]
      787 DUPCLOSURE                       R121 K148 [PROTO_66]
      788 CAPTURE                          VAL R18
      789 DUPCLOSURE                       R122 K149 [PROTO_67]
      790 CAPTURE                          VAL R39
      791 CAPTURE                          VAL R58
      792 CAPTURE                          VAL R36
      793 CAPTURE                          VAL R42
      794 CAPTURE                          VAL R3
      795 CAPTURE                          VAL R44
      796 CAPTURE                          VAL R118
      797 CAPTURE                          VAL R121
      798 CAPTURE                          VAL R40
      799 SETTABLEKS                       R122 R111 K150 ["didUpdate"]
      801 DUPCLOSURE                       R122 K151 [PROTO_68]
      802 CAPTURE                          VAL R53
      803 SETTABLEKS                       R122 R111 K152 ["versionsGetPageRootItems"]
      805 DUPCLOSURE                       R122 K153 [PROTO_71]
      806 CAPTURE                          VAL R86
      807 SETTABLEKS                       R122 R111 K154 ["getDefaultBundleDataSharing"]
      809 DUPCLOSURE                       R122 K155 [PROTO_77]
      810 CAPTURE                          VAL R39
      811 CAPTURE                          VAL R42
      812 CAPTURE                          VAL R120
      813 SETTABLEKS                       R122 R111 K156 ["getAssetInformation"]
      815 DUPCLOSURE                       R122 K157 [PROTO_79]
      816 CAPTURE                          VAL R42
      817 CAPTURE                          VAL R8
      818 CAPTURE                          VAL R46
      819 SETTABLEKS                       R122 R111 K158 ["didMount"]
      821 DUPCLOSURE                       R122 K159 [PROTO_80]
      822 SETTABLEKS                       R122 R111 K160 ["willUnmount"]
      824 DUPCLOSURE                       R122 K161 [PROTO_83]
      825 CAPTURE                          VAL R39
      826 CAPTURE                          VAL R58
      827 CAPTURE                          VAL R10
      828 CAPTURE                          VAL R42
      829 CAPTURE                          VAL R41
      830 CAPTURE                          VAL R115
      831 CAPTURE                          VAL R37
      832 CAPTURE                          VAL R44
      833 CAPTURE                          VAL R114
      834 CAPTURE                          VAL R40
      835 CAPTURE                          VAL R112
      836 CAPTURE                          VAL R6
      837 CAPTURE                          VAL R15
      838 CAPTURE                          VAL R35
      839 CAPTURE                          VAL R31
      840 CAPTURE                          VAL R32
      841 CAPTURE                          VAL R30
      842 CAPTURE                          VAL R22
      843 CAPTURE                          VAL R119
      844 CAPTURE                          VAL R14
      845 CAPTURE                          VAL R17
      846 CAPTURE                          VAL R110
      847 CAPTURE                          VAL R109
      848 CAPTURE                          VAL R23
      849 CAPTURE                          VAL R120
      850 CAPTURE                          VAL R116
      851 CAPTURE                          VAL R25
      852 CAPTURE                          VAL R118
      853 CAPTURE                          VAL R27
      854 CAPTURE                          VAL R117
      855 CAPTURE                          VAL R34
      856 CAPTURE                          VAL R33
      857 CAPTURE                          VAL R29
      858 CAPTURE                          VAL R28
      859 CAPTURE                          VAL R24
      860 SETTABLEKS                       R122 R111 K162 ["render"]
      862 MOVE                             R122 R108
      863 DUPTABLE                         R123 K172 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      864 GETTABLEKS                       R124 R107 K163 ["Focus"]
      866 SETTABLEKS                       R124 R123 K163 ["Focus"]
      868 JUMPIFNOT                        R5 ; [+2]
      869 MOVE                             R124 R101
      870 JUMP                             ; [+1]
      871 LOADNIL                          R124
      872 SETTABLEKS                       R124 R123 K164 ["IXP"]
      874 GETTABLEKS                       R124 R107 K165 ["Localization"]
      876 SETTABLEKS                       R124 R123 K165 ["Localization"]
      878 GETTABLEKS                       R124 R107 K166 ["Stylizer"]
      880 SETTABLEKS                       R124 R123 K166 ["Stylizer"]
      882 MOVE                             R125 R114
      883 CALL                             R125 0 1
      884 JUMPIFNOT                        R125 ; [+3]
      885 GETTABLEKS                       R124 R107 K167 ["Plugin"]
      887 JUMP                             ; [+1]
      888 LOADNIL                          R124
      889 SETTABLEKS                       R124 R123 K167 ["Plugin"]
      891 SETTABLEKS                       R102 R123 K168 ["Network"]
      893 SETTABLEKS                       R103 R123 K169 ["PublishService"]
      895 MOVE                             R125 R10
      896 CALL                             R125 0 1
      897 JUMPIFNOT                        R125 ; [+2]
      898 MOVE                             R124 R104
      899 JUMP                             ; [+1]
      900 LOADNIL                          R124
      901 SETTABLEKS                       R124 R123 K170 ["PluginGuiService"]
      903 MOVE                             R125 R10
      904 CALL                             R125 0 1
      905 JUMPIFNOT                        R125 ; [+2]
      906 MOVE                             R124 R105
      907 JUMP                             ; [+1]
      908 LOADNIL                          R124
      909 SETTABLEKS                       R124 R123 K171 ["ContentProvider"]
      911 CALL                             R122 1 1
      912 MOVE                             R123 R111
      913 CALL                             R122 1 1
      914 MOVE                             R111 R122
      915 DUPCLOSURE                       R122 K173 [PROTO_84]
      916 CAPTURE                          VAL R57
      917 CAPTURE                          VAL R118
      918 CAPTURE                          VAL R4
      919 CAPTURE                          VAL R5
      920 CAPTURE                          VAL R3
      921 CAPTURE                          VAL R120
      922 CAPTURE                          VAL R46
      923 CAPTURE                          VAL R115
      924 CAPTURE                          VAL R10
      925 DUPCLOSURE                       R123 K174 [PROTO_125]
      926 CAPTURE                          VAL R62
      927 CAPTURE                          VAL R75
      928 CAPTURE                          VAL R83
      929 CAPTURE                          VAL R54
      930 CAPTURE                          VAL R91
      931 CAPTURE                          VAL R18
      932 CAPTURE                          VAL R113
      933 CAPTURE                          VAL R60
      934 CAPTURE                          VAL R61
      935 CAPTURE                          VAL R65
      936 CAPTURE                          VAL R66
      937 CAPTURE                          VAL R7
      938 CAPTURE                          VAL R63
      939 CAPTURE                          VAL R64
      940 CAPTURE                          VAL R88
      941 CAPTURE                          VAL R87
      942 CAPTURE                          VAL R39
      943 CAPTURE                          VAL R67
      944 CAPTURE                          VAL R70
      945 CAPTURE                          VAL R76
      946 CAPTURE                          VAL R120
      947 CAPTURE                          VAL R100
      948 CAPTURE                          VAL R43
      949 CAPTURE                          VAL R82
      950 CAPTURE                          VAL R77
      951 CAPTURE                          VAL R71
      952 CAPTURE                          VAL R89
      953 CAPTURE                          VAL R72
      954 CAPTURE                          VAL R73
      955 CAPTURE                          VAL R74
      956 CAPTURE                          VAL R93
      957 CAPTURE                          VAL R94
      958 CAPTURE                          VAL R95
      959 CAPTURE                          VAL R78
      960 CAPTURE                          VAL R79
      961 CAPTURE                          VAL R90
      962 CAPTURE                          VAL R80
      963 CAPTURE                          VAL R81
      964 CAPTURE                          VAL R84
      965 CAPTURE                          VAL R8
      966 CAPTURE                          VAL R85
      967 CAPTURE                          VAL R92
      968 CAPTURE                          VAL R10
      969 CAPTURE                          VAL R96
      970 CAPTURE                          VAL R68
      971 CAPTURE                          VAL R69
      972 CAPTURE                          VAL R97
      973 CAPTURE                          VAL R98
      974 CAPTURE                          VAL R99
      975 GETTABLEKS                       R124 R16 K175 ["connect"]
      977 MOVE                             R125 R122
      978 MOVE                             R126 R123
      979 CALL                             R124 2 1
      980 MOVE                             R125 R111
      981 CALL                             R124 1 -1
      982 CLOSEUPVALS                      R48
      983 RETURN                           R124 -1
