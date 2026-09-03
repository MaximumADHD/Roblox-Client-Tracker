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
      123 JUMPIFNOT                        R5 ; [+533]
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
      210 JUMPIFNOTEQ                      R5 R6 ; [+446]
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
      251 JUMPIFNOTEQ                      R5 R6 ; [+64]
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
      274 DUPTABLE                         R6 K68 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
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
      300 GETTABLEKS                       R7 R1 K69 ["uploadFee"]
      302 SETTABLEKS                       R7 R6 K65 ["expectedPrice"]
      304 GETTABLEKS                       R7 R1 K50 ["instances"]
      306 SETTABLEKS                       R7 R6 K66 ["instance"]
      308 GETTABLEKS                       R7 R1 K70 ["PublishService"]
      310 GETTABLEKS                       R7 R7 K67 ["publishService"]
      312 SETTABLEKS                       R7 R6 K67 ["publishService"]
      314 CALL                             R5 1 0
      315 RETURN                           R0 0
      316 GETUPVAL                         R5 9
      317 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      319 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      321 CALL                             R5 1 1
      322 JUMPIFNOT                        R5 ; [+146]
      323 GETUPVAL                         R5 13
      324 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      326 GETTABLEKS                       R8 R2 K71 ["dataSharingEnabled"]
      328 GETTABLEKS                       R9 R2 K72 ["dataSharingToggled"]
      330 NAMECALL                         R5 R5 K73 ["getDataSharingLicenseTypes"]
      332 CALL                             R5 4 1
      333 GETTABLEKS                       R6 R1 K74 ["isUploadFeeEnabled"]
      335 JUMPIFNOT                        R6 ; [+74]
      336 GETTABLEKS                       R6 R1 K75 ["uploadCatalogItemWithFee"]
      338 GETTABLEKS                       R7 R1 K21 ["Network"]
      340 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      342 GETUPVAL                         R8 1
      343 GETTABLEKS                       R8 R8 K2 ["state"]
      345 GETTABLEKS                       R8 R8 K24 ["name"]
      347 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      349 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      351 MOVE                             R12 R10
      352 JUMPIFNOT                        R12 ; [+5]
      353 MOVE                             R12 R11
      354 JUMPIFNOT                        R12 ; [+3]
      355 GETTABLEKS                       R13 R11 K77 ["Name"]
      357 GETTABLE                         R12 R10 R13
      358 MOVE                             R13 R12
      359 JUMPIFNOT                        R13 ; [+2]
      360 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      362 MOVE                             R14 R13
      363 JUMPIFNOT                        R14 ; [+6]
      364 LOADB                            R14 0
      365 LENGTH                           R15 R13
      366 LOADN                            R16 0
      367 JUMPIFNOTLT                      R16 R15 ; [+2]
      369 GETTABLEN                        R14 R13 1
      370 JUMPIFNOT                        R14 ; [+8]
      371 GETIMPORT                        R15 K81 [string.gsub]
      373 MOVE                             R16 R14
      374 LOADK                            R17 K82 ["^%."]
      375 LOADK                            R18 K25 [""]
      376 CALL                             R15 3 1
      377 MOVE                             R9 R15
      378 JUMPIF                           R9 ; [+1]
      379 LOADK                            R9 K83 ["rbxm"]
      380 GETUPVAL                         R11 1
      381 GETTABLEKS                       R11 R11 K2 ["state"]
      383 GETTABLEKS                       R11 R11 K26 ["description"]
      385 ORK                              R10 R11 K25 [""]
      386 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      388 GETTABLEKS                       R12 R1 K50 ["instances"]
      390 MOVE                             R13 R3
      391 MOVE                             R14 R5
      392 GETTABLEKS                       R15 R1 K84 ["Localization"]
      394 GETTABLEKS                       R16 R1 K69 ["uploadFee"]
      396 GETUPVAL                         R17 9
      397 GETTABLEKS                       R17 R17 K85 ["getPublishOnApprovalCreationContext"]
      399 GETTABLEKS                       R18 R2 K86 ["publishOnApprovalToggled"]
      401 GETTABLEKS                       R19 R1 K87 ["hasPublishingPreferences"]
      403 GETTABLEKS                       R20 R1 K88 ["hasPublishingFeePreview"]
      405 GETTABLEKS                       R21 R1 K89 ["publishingFeePreview"]
      407 CALL                             R17 4 -1
      408 CALL                             R6 -1 0
      409 RETURN                           R0 0
      410 GETTABLEKS                       R6 R1 K90 ["uploadCatalogItem"]
      412 GETTABLEKS                       R7 R1 K21 ["Network"]
      414 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      416 GETUPVAL                         R8 1
      417 GETTABLEKS                       R8 R8 K2 ["state"]
      419 GETTABLEKS                       R8 R8 K24 ["name"]
      421 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      423 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      425 MOVE                             R12 R10
      426 JUMPIFNOT                        R12 ; [+5]
      427 MOVE                             R12 R11
      428 JUMPIFNOT                        R12 ; [+3]
      429 GETTABLEKS                       R13 R11 K77 ["Name"]
      431 GETTABLE                         R12 R10 R13
      432 MOVE                             R13 R12
      433 JUMPIFNOT                        R13 ; [+2]
      434 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      436 MOVE                             R14 R13
      437 JUMPIFNOT                        R14 ; [+6]
      438 LOADB                            R14 0
      439 LENGTH                           R15 R13
      440 LOADN                            R16 0
      441 JUMPIFNOTLT                      R16 R15 ; [+2]
      443 GETTABLEN                        R14 R13 1
      444 JUMPIFNOT                        R14 ; [+8]
      445 GETIMPORT                        R15 K81 [string.gsub]
      447 MOVE                             R16 R14
      448 LOADK                            R17 K82 ["^%."]
      449 LOADK                            R18 K25 [""]
      450 CALL                             R15 3 1
      451 MOVE                             R9 R15
      452 JUMPIF                           R9 ; [+1]
      453 LOADK                            R9 K83 ["rbxm"]
      454 GETUPVAL                         R11 1
      455 GETTABLEKS                       R11 R11 K2 ["state"]
      457 GETTABLEKS                       R11 R11 K26 ["description"]
      459 ORK                              R10 R11 K25 [""]
      460 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      462 GETTABLEKS                       R12 R1 K50 ["instances"]
      464 MOVE                             R13 R5
      465 GETTABLEKS                       R14 R1 K84 ["Localization"]
      467 CALL                             R6 8 0
      468 RETURN                           R0 0
      469 GETUPVAL                         R5 9
      470 GETTABLEKS                       R5 R5 K91 ["isUGCBundleType"]
      472 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      474 CALL                             R5 1 1
      475 JUMPIFNOT                        R5 ; [+67]
      476 LOADNIL                          R5
      477 GETTABLEKS                       R6 R2 K71 ["dataSharingEnabled"]
      479 JUMPIFNOT                        R6 ; [+16]
      480 GETTABLEKS                       R6 R2 K72 ["dataSharingToggled"]
      482 JUMPIFNOT                        R6 ; [+11]
      483 NEWTABLE                         R6 0 1
      485 GETUPVAL                         R7 14
      486 GETTABLEKS                       R7 R7 K92 ["DataSharingLicenseTypes"]
      488 GETTABLEKS                       R7 R7 K93 ["RobloxGlobal"]
      490 SETLIST                          R6 R7 1 [1]
      492 MOVE                             R5 R6
      493 JUMP                             ; [+2]
      494 NEWTABLE                         R5 0 0
      496 GETUPVAL                         R7 15
      497 CALL                             R7 0 1
      498 JUMPIFNOT                        R7 ; [+7]
      499 GETUPVAL                         R6 16
      500 GETTABLEKS                       R6 R6 K94 ["isEmissiveFromAttributes"]
      502 GETTABLEKS                       R7 R1 K95 ["specialAttributes"]
      504 CALL                             R6 1 1
      505 JUMP                             ; [+1]
      506 LOADNIL                          R6
      507 GETTABLEKS                       R7 R1 K96 ["uploadUGCBundleWithFee"]
      509 GETTABLEKS                       R8 R1 K21 ["Network"]
      511 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      513 GETTABLEKS                       R10 R1 K50 ["instances"]
      515 GETTABLEN                        R9 R10 1
      516 GETTABLEKS                       R10 R1 K17 ["assetTypeEnum"]
      518 GETTABLEKS                       R11 R2 K24 ["name"]
      520 GETTABLEKS                       R13 R2 K26 ["description"]
      522 ORK                              R12 R13 K25 [""]
      523 GETTABLEKS                       R13 R1 K97 ["allowedBundleTypeSettings"]
      525 GETTABLEKS                       R14 R1 K84 ["Localization"]
      527 GETTABLEKS                       R15 R1 K69 ["uploadFee"]
      529 MOVE                             R16 R5
      530 GETTABLEKS                       R17 R1 K70 ["PublishService"]
      532 GETTABLEKS                       R17 R17 K67 ["publishService"]
      534 GETTABLEKS                       R19 R1 K98 ["groupBundlesUploadEnabledForUser"]
      536 JUMPIFNOT                        R19 ; [+2]
      537 MOVE                             R18 R3
      538 JUMP                             ; [+1]
      539 LOADNIL                          R18
      540 MOVE                             R19 R6
      541 CALL                             R7 12 0
      542 RETURN                           R0 0
      543 GETUPVAL                         R5 9
      544 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      546 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      548 CALL                             R5 1 1
      549 JUMPIFNOT                        R5 ; [+30]
      550 GETUPVAL                         R5 11
      551 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      553 NAMECALL                         R5 R5 K59 ["isOverride"]
      555 CALL                             R5 2 1
      556 JUMPIFNOT                        R5 ; [+23]
      557 GETTABLEKS                       R5 R1 K99 ["overrideAsset"]
      559 GETTABLEKS                       R6 R1 K21 ["Network"]
      561 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      563 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      565 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      567 GETTABLEKS                       R8 R8 K77 ["Name"]
      569 GETTABLEKS                       R9 R1 K50 ["instances"]
      571 GETUPVAL                         R11 17
      572 CALL                             R11 0 1
      573 JUMPIFNOT                        R11 ; [+3]
      574 GETTABLEKS                       R10 R1 K84 ["Localization"]
      576 JUMP                             ; [+1]
      577 LOADNIL                          R10
      578 CALL                             R5 5 0
      579 RETURN                           R0 0
      580 GETTABLEKS                       R5 R1 K100 ["uploadMarketplaceItem"]
      582 DUPTABLE                         R6 K102 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      583 GETTABLEKS                       R7 R1 K21 ["Network"]
      585 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      587 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      589 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      591 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      593 GETTABLEKS                       R7 R2 K24 ["name"]
      595 SETTABLEKS                       R7 R6 K24 ["name"]
      597 GETTABLEKS                       R8 R2 K26 ["description"]
      599 ORK                              R7 R8 K25 [""]
      600 SETTABLEKS                       R7 R6 K26 ["description"]
      602 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      604 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      606 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      608 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      610 SETTABLEKS                       R3 R6 K3 ["groupId"]
      612 GETTABLEKS                       R7 R1 K50 ["instances"]
      614 SETTABLEKS                       R7 R6 K50 ["instances"]
      616 JUMPIFNOT                        R4 ; [+2]
      617 LOADB                            R7 1
      618 JUMP                             ; [+1]
      619 LOADNIL                          R7
      620 SETTABLEKS                       R7 R6 K101 ["isMarketplaceModelsAsPackagesEnabled"]
      622 GETTABLEKS                       R7 R2 K27 ["status"]
      624 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      626 GETTABLEKS                       R7 R2 K29 ["price"]
      628 SETTABLEKS                       R7 R6 K29 ["price"]
      630 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      632 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      634 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      636 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      638 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      640 JUMPIFNOT                        R8 ; [+5]
      641 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      643 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      645 JUMP                             ; [+1]
      646 LOADNIL                          R7
      647 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      649 GETUPVAL                         R8 17
      650 CALL                             R8 0 1
      651 JUMPIFNOT                        R8 ; [+3]
      652 GETTABLEKS                       R7 R1 K84 ["Localization"]
      654 JUMP                             ; [+1]
      655 LOADNIL                          R7
      656 CALL                             R5 2 0
      657 RETURN                           R0 0

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
       47 JUMPIFNOT                        R6 ; [+287]
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
       77 JUMP                             ; [+259]
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
      164 JUMP                             ; [+172]
      165 GETUPVAL                         R7 6
      166 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
      168 GETTABLEKS                       R7 R7 K31 ["UPLOAD_FLOW"]
      170 GETUPVAL                         R8 1
      171 GETTABLEKS                       R8 R8 K0 ["props"]
      173 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
      175 JUMPIFNOTEQ                      R7 R8 ; [+161]
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
      195 DUPTABLE                         R9 K43 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled", "publishOnApprovalCreationContext"}]
      196 GETUPVAL                         R10 1
      197 GETTABLEKS                       R10 R10 K0 ["props"]
      199 GETTABLEKS                       R10 R10 K29 ["Network"]
      201 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      203 SETTABLEKS                       R10 R9 K14 ["networkInterface"]
      205 GETUPVAL                         R10 1
      206 GETTABLEKS                       R10 R10 K0 ["props"]
      208 GETTABLEKS                       R10 R10 K44 ["Localization"]
      210 SETTABLEKS                       R10 R9 K37 ["localization"]
      212 GETUPVAL                         R10 1
      213 GETTABLEKS                       R10 R10 K0 ["props"]
      215 GETTABLEKS                       R10 R10 K45 ["PublishService"]
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
      247 GETTABLEKS                       R12 R12 K46 ["None"]
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
      310 GETUPVAL                         R10 8
      311 GETTABLEKS                       R10 R10 K47 ["getPublishOnApprovalCreationContext"]
      313 GETTABLEKS                       R11 R6 K48 ["publishOnApprovalToggled"]
      315 GETUPVAL                         R12 1
      316 GETTABLEKS                       R12 R12 K0 ["props"]
      318 GETTABLEKS                       R12 R12 K49 ["hasPublishingPreferences"]
      320 GETUPVAL                         R13 1
      321 GETTABLEKS                       R13 R13 K0 ["props"]
      323 GETTABLEKS                       R13 R13 K50 ["hasPublishingFeePreview"]
      325 GETUPVAL                         R14 1
      326 GETTABLEKS                       R14 R14 K0 ["props"]
      328 GETTABLEKS                       R14 R14 K51 ["publishingFeePreview"]
      330 CALL                             R10 4 1
      331 SETTABLEKS                       R10 R9 K42 ["publishOnApprovalCreationContext"]
      333 CALL                             R8 1 0
      334 JUMP                             ; [+2]
      335 MOVE                             R6 R1
      336 CALL                             R6 0 0
      337 JUMPIFNOT                        R5 ; [+43]
      338 MOVE                             R6 R2
      339 MOVE                             R7 R4
      340 CALL                             R6 1 0
      341 GETUPVAL                         R6 1
      342 GETTABLEKS                       R6 R6 K0 ["props"]
      344 GETTABLEKS                       R6 R6 K52 ["isPackageAsset"]
      346 JUMPIFNOT                        R6 ; [+34]
      347 GETUPVAL                         R6 1
      348 GETTABLEKS                       R6 R6 K0 ["props"]
      350 GETTABLEKS                       R6 R6 K53 ["assetConfigData"]
      352 GETTABLEKS                       R7 R6 K54 ["Id"]
      354 GETTABLEKS                       R8 R4 K55 ["VersionItemSelect"]
      356 JUMPIFNOT                        R8 ; [+3]
      357 GETTABLEKS                       R9 R4 K55 ["VersionItemSelect"]
      359 GETTABLEN                        R8 R9 1
      360 JUMPIFNOT                        R7 ; [+20]
      361 GETUPVAL                         R9 1
      362 GETTABLEKS                       R9 R9 K0 ["props"]
      364 GETTABLEKS                       R9 R9 K56 ["dispatchPutPackagePermissionsRequest"]
      366 GETUPVAL                         R10 1
      367 GETTABLEKS                       R10 R10 K0 ["props"]
      369 GETTABLEKS                       R10 R10 K29 ["Network"]
      371 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      373 MOVE                             R11 R7
      374 MOVE                             R12 R8
      375 GETUPVAL                         R13 1
      376 GETTABLEKS                       R13 R13 K0 ["props"]
      378 GETTABLEKS                       R13 R13 K44 ["Localization"]
      380 CALL                             R9 4 0
      381 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R2 K2 [{[1] = False}]
        6 NAMECALL                         R0 R0 K3 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 LOADB                            R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["FLOW_TYPE"]
        9 GETTABLEKS                       R1 R1 K1 ["UPLOAD_FLOW"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["props"]
       14 GETTABLEKS                       R2 R2 K3 ["screenFlowType"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+32]
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K4 ["canAutoPublishAvatarAssetType"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["props"]
       24 GETTABLEKS                       R1 R1 K5 ["assetTypeEnum"]
       26 CALL                             R0 1 1
       27 JUMPIFNOT                        R0 ; [+21]
       28 LOADB                            R0 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K6 ["isEmissiveFromAttributes"]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K2 ["props"]
       35 GETTABLEKS                       R2 R2 K7 ["specialAttributes"]
       37 CALL                             R1 1 1
       38 JUMPIFEQKB                       R1 TRUE ; [+10]
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K2 ["props"]
       43 GETTABLEKS                       R1 R1 K8 ["isUploadFeeEnabled"]
       45 JUMPIFEQKB                       R1 TRUE ; [+2]
       47 LOADB                            R0 0 +1
       48 LOADB                            R0 1
       49 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["publishingPreferencesGeneration"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["canOfferPublishOnApproval"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R1 K1 ["publishingPreferencesGeneration"]
       13 ADDK                             R2 R2 K2 [1]
       14 SETTABLEKS                       R2 R1 K1 ["publishingPreferencesGeneration"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K1 ["publishingPreferencesGeneration"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["props"]
       22 GETTABLEKS                       R2 R2 K4 ["clearPublishingPreferences"]
       24 CALL                             R2 0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K3 ["props"]
       28 GETTABLEKS                       R2 R2 K5 ["getPublishingPreferences"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K3 ["props"]
       33 GETTABLEKS                       R3 R3 K6 ["Network"]
       35 GETTABLEKS                       R3 R3 K7 ["networkInterface"]
       37 MOVE                             R4 R0
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 CALL                             R2 3 0
       42 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetTypeEnum"]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["canOfferPublishOnApproval"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["clearPublishingFeePreview"]
       15 CALL                             R1 0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K1 ["props"]
       19 GETTABLEKS                       R1 R1 K3 ["getPublishingFeePreview"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K1 ["props"]
       24 GETTABLEKS                       R2 R2 K4 ["Network"]
       26 GETTABLEKS                       R2 R2 K5 ["networkInterface"]
       28 MOVE                             R3 R0
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_40:
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
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K18 ["clearPublishOnApprovalOptIn"]
       60 CALL                             R6 0 0
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K19 ["fetchPublishingPreferences"]
       64 JUMPIFNOT                        R4 ; [+2]
       65 MOVE                             R7 R3
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 CALL                             R6 1 0
       69 RETURN                           R0 0

PROTO_41:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_41]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_43:
        0 DUPTABLE                         R1 K1 [{"publishOnApprovalToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["publishOnApprovalToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["publishOnApprovalToggled"]
        6 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPCLOSURE                       R2 K0 [PROTO_43]
        6 NAMECALL                         R0 R0 K1 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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
      122 LOADB                            R3 0
      123 SETTABLEKS                       R3 R2 K38 ["publishOnApprovalToggled"]
      125 GETUPVAL                         R4 2
      126 CALL                             R4 0 1
      127 JUMPIFNOT                        R4 ; [+12]
      128 GETUPVAL                         R3 3
      129 GETTABLEKS                       R3 R3 K39 ["getThumbnailSkinColor"]
      131 GETTABLEKS                       R4 R0 K40 ["props"]
      133 GETTABLEKS                       R4 R4 K41 ["Plugin"]
      135 NAMECALL                         R4 R4 K42 ["get"]
      137 CALL                             R4 1 -1
      138 CALL                             R3 -1 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R3
      141 SETTABLEKS                       R3 R2 K43 ["selectedColor"]
      143 LOADB                            R3 0
      144 SETTABLEKS                       R3 R2 K44 ["showColorPickerRequiredError"]
      146 LOADB                            R3 0
      147 SETTABLEKS                       R3 R2 K45 ["showNameRequiredError"]
      149 LOADB                            R3 0
      150 SETTABLEKS                       R3 R2 K46 ["showDescriptionRequiredError"]
      152 SETTABLEKS                       R2 R0 K47 ["state"]
      154 GETTABLEKS                       R2 R0 K47 ["state"]
      156 GETUPVAL                         R3 3
      157 GETTABLEKS                       R3 R3 K48 ["hasAllowedAssetTypesForRelease"]
      159 GETTABLEKS                       R4 R0 K40 ["props"]
      161 GETTABLEKS                       R4 R4 K49 ["allowedAssetTypesForRelease"]
      163 CALL                             R3 1 1
      164 JUMPIFNOT                        R3 ; [+9]
      165 GETUPVAL                         R4 3
      166 GETTABLEKS                       R4 R4 K50 ["isBuyableMarketplaceAsset"]
      168 GETTABLEKS                       R5 R0 K40 ["props"]
      170 GETTABLEKS                       R5 R5 K51 ["assetTypeEnum"]
      172 CALL                             R4 1 1
      173 NOT                              R3 R4
      174 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
      176 GETUPVAL                         R2 3
      177 GETTABLEKS                       R2 R2 K52 ["isMarketplaceAsset"]
      179 GETTABLEKS                       R3 R1 K51 ["assetTypeEnum"]
      181 CALL                             R2 1 1
      182 JUMPIFNOT                        R2 ; [+9]
      183 GETTABLEKS                       R2 R0 K47 ["state"]
      185 GETUPVAL                         R3 4
      186 GETTABLEKS                       R3 R3 K53 ["ASSET_STATUS"]
      188 GETTABLEKS                       R3 R3 K54 ["OffSale"]
      190 SETTABLEKS                       R3 R2 K12 ["status"]
      192 LOADNIL                          R2
      193 SETTABLEKS                       R2 R0 K55 ["nameString"]
      195 LOADNIL                          R2
      196 SETTABLEKS                       R2 R0 K56 ["descriptionString"]
      198 LOADB                            R2 0
      199 SETTABLEKS                       R2 R0 K57 ["init"]
      201 NEWCLOSURE                       R2 P0
      202 CAPTURE                          VAL R0
      203 SETTABLEKS                       R2 R0 K58 ["onDialogAccepted"]
      205 NEWCLOSURE                       R2 P1
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R2 R0 K59 ["onDialogCanceled"]
      209 NEWCLOSURE                       R2 P2
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R2 R0 K60 ["onAssetPublishDialogAccepted"]
      213 NEWCLOSURE                       R2 P3
      214 CAPTURE                          VAL R0
      215 SETTABLEKS                       R2 R0 K61 ["onAssetPublishDialogCanceled"]
      217 GETUPVAL                         R3 0
      218 CALL                             R3 0 1
      219 JUMPIFNOT                        R3 ; [+2]
      220 LOADNIL                          R2
      221 JUMP                             ; [+2]
      222 NEWCLOSURE                       R2 P4
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R2 R0 K62 ["onAssetPublishPayAndConfirmAccepted"]
      226 GETUPVAL                         R3 0
      227 CALL                             R3 0 1
      228 JUMPIFNOT                        R3 ; [+2]
      229 LOADNIL                          R2
      230 JUMP                             ; [+2]
      231 NEWCLOSURE                       R2 P5
      232 CAPTURE                          VAL R0
      233 SETTABLEKS                       R2 R0 K63 ["onAssetPublishPayAndConfirmCanceled"]
      235 NEWCLOSURE                       R2 P6
      236 CAPTURE                          VAL R0
      237 SETTABLEKS                       R2 R0 K64 ["tryMakeAssetsPublic"]
      239 NEWCLOSURE                       R2 P7
      240 CAPTURE                          VAL R0
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          UPVAL U5
      243 CAPTURE                          UPVAL U4
      244 CAPTURE                          UPVAL U6
      245 CAPTURE                          UPVAL U0
      246 SETTABLEKS                       R2 R0 K65 ["tryPublishWithConfirmDialog"]
      248 NEWCLOSURE                       R2 P8
      249 CAPTURE                          UPVAL U7
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          UPVAL U9
      253 CAPTURE                          UPVAL U10
      254 CAPTURE                          UPVAL U11
      255 CAPTURE                          UPVAL U4
      256 CAPTURE                          UPVAL U12
      257 CAPTURE                          UPVAL U3
      258 CAPTURE                          UPVAL U2
      259 CAPTURE                          UPVAL U13
      260 CAPTURE                          UPVAL U14
      261 CAPTURE                          UPVAL U15
      262 CAPTURE                          UPVAL U1
      263 CAPTURE                          UPVAL U16
      264 CAPTURE                          UPVAL U17
      265 CAPTURE                          UPVAL U18
      266 CAPTURE                          VAL R1
      267 SETTABLEKS                       R2 R0 K66 ["tryPublish"]
      269 NEWCLOSURE                       R2 P9
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R1
      272 CAPTURE                          UPVAL U4
      273 SETTABLEKS                       R2 R0 K67 ["tryCancel"]
      275 NEWCLOSURE                       R2 P10
      276 CAPTURE                          VAL R0
      277 SETTABLEKS                       R2 R0 K68 ["tryCancelNoYield"]
      279 NEWCLOSURE                       R2 P11
      280 CAPTURE                          VAL R0
      281 SETTABLEKS                       R2 R0 K69 ["tryCancelWithYield"]
      283 NEWCLOSURE                       R2 P12
      284 CAPTURE                          VAL R0
      285 SETTABLEKS                       R2 R0 K70 ["onMessageBoxClosed"]
      287 NEWCLOSURE                       R2 P13
      288 CAPTURE                          UPVAL U19
      289 CAPTURE                          VAL R0
      290 CAPTURE                          UPVAL U20
      291 SETTABLEKS                       R2 R0 K71 ["tryCloseAssetConfig"]
      293 NEWCLOSURE                       R2 P14
      294 CAPTURE                          VAL R0
      295 NEWCLOSURE                       R3 P15
      296 CAPTURE                          VAL R0
      297 CAPTURE                          UPVAL U21
      298 SETTABLEKS                       R3 R0 K72 ["onNameChange"]
      300 NEWCLOSURE                       R3 P16
      301 CAPTURE                          VAL R0
      302 CAPTURE                          UPVAL U21
      303 SETTABLEKS                       R3 R0 K73 ["onDescChange"]
      305 NEWCLOSURE                       R3 P17
      306 CAPTURE                          VAL R0
      307 SETTABLEKS                       R3 R0 K74 ["onStatusChange"]
      309 NEWCLOSURE                       R3 P18
      310 CAPTURE                          VAL R0
      311 SETTABLEKS                       R3 R0 K75 ["onPriceChange"]
      313 LOADN                            R3 0
      314 SETTABLEKS                       R3 R0 K76 ["publishingPreferencesGeneration"]
      316 NEWCLOSURE                       R3 P19
      317 CAPTURE                          UPVAL U22
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R3 R0 K77 ["clearPublishOnApprovalOptIn"]
      321 NEWCLOSURE                       R3 P20
      322 CAPTURE                          UPVAL U22
      323 CAPTURE                          UPVAL U4
      324 CAPTURE                          VAL R0
      325 CAPTURE                          UPVAL U3
      326 CAPTURE                          UPVAL U17
      327 SETTABLEKS                       R3 R0 K78 ["canOfferPublishOnApproval"]
      329 NEWCLOSURE                       R3 P21
      330 CAPTURE                          UPVAL U22
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R3 R0 K79 ["fetchPublishingPreferences"]
      334 NEWCLOSURE                       R3 P22
      335 CAPTURE                          UPVAL U22
      336 CAPTURE                          VAL R0
      337 SETTABLEKS                       R3 R0 K80 ["fetchPublishingFeePreview"]
      339 NEWCLOSURE                       R3 P23
      340 CAPTURE                          VAL R0
      341 CAPTURE                          UPVAL U8
      342 SETTABLEKS                       R3 R0 K81 ["onAccessChange"]
      344 NEWCLOSURE                       R3 P24
      345 CAPTURE                          VAL R0
      346 SETTABLEKS                       R3 R0 K82 ["onDataConsentToggleClick"]
      348 NEWCLOSURE                       R3 P25
      349 CAPTURE                          UPVAL U22
      350 CAPTURE                          VAL R0
      351 SETTABLEKS                       R3 R0 K83 ["onPublishToMarketplaceToggleClick"]
      353 NEWCLOSURE                       R3 P26
      354 CAPTURE                          VAL R0
      355 SETTABLEKS                       R3 R0 K84 ["toggleCopy"]
      357 NEWCLOSURE                       R3 P27
      358 CAPTURE                          VAL R0
      359 SETTABLEKS                       R3 R0 K85 ["toggleComment"]
      361 NEWCLOSURE                       R3 P28
      362 CAPTURE                          VAL R0
      363 SETTABLEKS                       R3 R0 K86 ["toggleDeleteLocal"]
      365 GETUPVAL                         R3 23
      366 CALL                             R3 0 1
      367 JUMPIFNOT                        R3 ; [+9]
      368 NEWCLOSURE                       R3 P29
      369 CAPTURE                          VAL R0
      370 CAPTURE                          UPVAL U8
      371 SETTABLEKS                       R3 R0 K87 ["onAnimationSelectionChanged"]
      373 NEWCLOSURE                       R3 P30
      374 CAPTURE                          VAL R0
      375 SETTABLEKS                       R3 R0 K88 ["onanimationSectionValidityChanged"]
      377 GETUPVAL                         R4 2
      378 CALL                             R4 0 1
      379 JUMPIFNOT                        R4 ; [+4]
      380 NEWCLOSURE                       R3 P31
      381 CAPTURE                          VAL R0
      382 CAPTURE                          UPVAL U3
      383 JUMP                             ; [+1]
      384 LOADNIL                          R3
      385 SETTABLEKS                       R3 R0 K89 ["onSelectedColorChange"]
      387 NEWCLOSURE                       R3 P32
      388 CAPTURE                          VAL R0
      389 CAPTURE                          UPVAL U19
      390 CAPTURE                          UPVAL U20
      391 SETTABLEKS                       R3 R0 K90 ["versionsOnDescClicked"]
      393 NEWCLOSURE                       R3 P33
      394 CAPTURE                          VAL R0
      395 CAPTURE                          UPVAL U24
      396 CAPTURE                          UPVAL U25
      397 SETTABLEKS                       R3 R0 K91 ["versionsSaveInput"]
      399 NEWCLOSURE                       R3 P34
      400 CAPTURE                          VAL R0
      401 CAPTURE                          UPVAL U1
      402 SETTABLEKS                       R3 R0 K92 ["versionsSetStates"]
      404 NEWCLOSURE                       R3 P35
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R3 R0 K93 ["versionsCloseInput"]
      408 NEWCLOSURE                       R3 P36
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R3 R0 K94 ["setVersionError"]
      412 NEWCLOSURE                       R3 P37
      413 CAPTURE                          VAL R0
      414 SETTABLEKS                       R3 R0 K95 ["versionsSetPreviousInput"]
      416 NEWCLOSURE                       R3 P38
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R3 R0 K96 ["versionsOnPageChange"]
      420 NEWCLOSURE                       R3 P39
      421 CAPTURE                          VAL R0
      422 CAPTURE                          VAL R1
      423 SETTABLEKS                       R3 R0 K97 ["onTabSelect"]
      425 NEWCLOSURE                       R3 P40
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R3 R0 K98 ["onOverrideAssetSelected"]
      429 NEWCLOSURE                       R3 P41
      430 CAPTURE                          UPVAL U3
      431 CAPTURE                          VAL R0
      432 SETTABLEKS                       R3 R0 K99 ["chooseThumbnail"]
      434 NEWCLOSURE                       R3 P42
      435 CAPTURE                          VAL R0
      436 SETTABLEKS                       R3 R0 K100 ["onSharingChanged"]
      438 NEWCLOSURE                       R3 P43
      439 CAPTURE                          VAL R0
      440 SETTABLEKS                       R3 R0 K101 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      442 NEWCLOSURE                       R3 P44
      443 CAPTURE                          VAL R0
      444 CAPTURE                          UPVAL U26
      445 SETTABLEKS                       R3 R0 K102 ["getPublishingRequirements"]
      447 NEWCLOSURE                       R3 P45
      448 CAPTURE                          VAL R0
      449 SETTABLEKS                       R3 R0 K103 ["onAdditionalImagesChanged"]
      451 NEWCLOSURE                       R3 P46
      452 CAPTURE                          UPVAL U3
      453 CAPTURE                          VAL R0
      454 SETTABLEKS                       R3 R0 K104 ["isValidCatalogAsset"]
      456 NEWCLOSURE                       R3 P47
      457 CAPTURE                          VAL R0
      458 SETTABLEKS                       R3 R0 K105 ["validVersionDescriptions"]
      460 NEWCLOSURE                       R3 P48
      461 CAPTURE                          VAL R0
      462 CAPTURE                          UPVAL U1
      463 CAPTURE                          UPVAL U27
      464 SETTABLEKS                       R3 R0 K106 ["getMessageBoxProps"]
      466 RETURN                           R0 0

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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
      123 JUMPIF                           R4 ; [+242]
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
      240 JUMP                             ; [+125]
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
      267 GETUPVAL                         R3 6
      268 GETTABLEKS                       R3 R3 K64 ["isEmissiveFromAttributes"]
      270 GETTABLEKS                       R4 R0 K1 ["props"]
      272 GETTABLEKS                       R4 R4 K65 ["specialAttributes"]
      274 CALL                             R3 1 1
      275 JUMPIFNOTEQKB                    R3 TRUE ; [+12]
      277 GETUPVAL                         R3 6
      278 GETTABLEKS                       R3 R3 K64 ["isEmissiveFromAttributes"]
      280 GETTABLEKS                       R4 R1 K65 ["specialAttributes"]
      282 CALL                             R3 1 1
      283 JUMPIFEQKB                       R3 TRUE ; [+4]
      285 GETTABLEKS                       R3 R0 K66 ["clearPublishOnApprovalOptIn"]
      287 CALL                             R3 0 0
      288 GETTABLEKS                       R3 R0 K1 ["props"]
      290 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      292 GETUPVAL                         R4 0
      293 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      295 GETTABLEKS                       R4 R4 K67 ["UPLOAD_FLOW"]
      297 JUMPIFNOTEQ                      R3 R4 ; [+43]
      299 GETTABLEKS                       R3 R1 K68 ["isUploadFeeEnabled"]
      301 GETTABLEKS                       R4 R0 K1 ["props"]
      303 GETTABLEKS                       R4 R4 K68 ["isUploadFeeEnabled"]
      305 JUMPIFEQ                         R3 R4 ; [+35]
      307 GETTABLEKS                       R3 R0 K69 ["canOfferPublishOnApproval"]
      309 CALL                             R3 0 1
      310 JUMPIFNOT                        R3 ; [+30]
      311 GETTABLEKS                       R3 R0 K70 ["fetchPublishingPreferences"]
      313 GETTABLEKS                       R5 R0 K1 ["props"]
      315 GETTABLEKS                       R5 R5 K71 ["groupId"]
      317 JUMPIFNOT                        R5 ; [+14]
      318 GETTABLEKS                       R5 R0 K1 ["props"]
      320 GETTABLEKS                       R5 R5 K71 ["groupId"]
      322 GETUPVAL                         R6 7
      323 GETTABLEKS                       R6 R6 K72 ["None"]
      325 JUMPIFEQ                         R5 R6 ; [+6]
      327 GETTABLEKS                       R4 R0 K1 ["props"]
      329 GETTABLEKS                       R4 R4 K71 ["groupId"]
      331 JUMP                             ; [+1]
      332 LOADNIL                          R4
      333 CALL                             R3 1 0
      334 GETTABLEKS                       R3 R0 K73 ["fetchPublishingFeePreview"]
      336 GETTABLEKS                       R4 R0 K1 ["props"]
      338 GETTABLEKS                       R4 R4 K55 ["assetTypeEnum"]
      340 CALL                             R3 1 0
      341 GETTABLEKS                       R3 R0 K1 ["props"]
      343 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      345 GETUPVAL                         R4 0
      346 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      348 GETTABLEKS                       R4 R4 K67 ["UPLOAD_FLOW"]
      350 JUMPIFNOTEQ                      R3 R4 ; [+15]
      352 GETTABLEKS                       R3 R1 K55 ["assetTypeEnum"]
      354 GETTABLEKS                       R4 R0 K1 ["props"]
      356 GETTABLEKS                       R4 R4 K55 ["assetTypeEnum"]
      358 JUMPIFEQ                         R3 R4 ; [+7]
      360 GETTABLEKS                       R3 R0 K66 ["clearPublishOnApprovalOptIn"]
      362 CALL                             R3 0 0
      363 NAMECALL                         R3 R0 K74 ["getAssetInformation"]
      365 CALL                             R3 1 0
      366 GETTABLEKS                       R3 R2 K75 ["versionsCurrentItem"]
      368 GETUPVAL                         R5 8
      369 CALL                             R5 0 1
      370 JUMPIFNOT                        R5 ; [+5]
      371 GETTABLEKS                       R4 R0 K1 ["props"]
      373 GETTABLEKS                       R4 R4 K76 ["versionHistoryWithDescriptions"]
      375 JUMP                             ; [+4]
      376 GETTABLEKS                       R4 R0 K1 ["props"]
      378 GETTABLEKS                       R4 R4 K77 ["versionHistory"]
      380 GETIMPORT                        R5 K8 [next]
      382 MOVE                             R6 R3
      383 CALL                             R5 1 1
      384 JUMPIF                           R5 ; [+72]
      385 JUMPIFNOT                        R4 ; [+71]
      386 NEWTABLE                         R5 0 0
      388 GETIMPORT                        R6 K79 [ipairs]
      390 MOVE                             R7 R4
      391 CALL                             R6 1 3
      392 FORGPREP_INEXT                   R6
      393 GETUPVAL                         R12 8
      394 CALL                             R12 0 1
      395 JUMPIFNOT                        R12 ; [+4]
      396 GETTABLEKS                       R12 R10 K81 ["versionDescription"]
      398 ORK                              R11 R12 K80 [""]
      399 JUMP                             ; [+2]
      400 GETTABLEKS                       R11 R10 K81 ["versionDescription"]
      402 GETTABLEKS                       R12 R10 K82 ["creatorTargetId"]
      404 GETTABLEKS                       R13 R10 K83 ["creatorType"]
      406 GETTABLEKS                       R14 R10 K84 ["assetVersionNumber"]
      408 DUPTABLE                         R15 K88 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      409 GETTABLEKS                       R16 R10 K84 ["assetVersionNumber"]
      411 SETTABLEKS                       R16 R15 K85 ["versionColumn"]
      413 DUPTABLE                         R16 K91 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      414 SETTABLEKS                       R11 R16 K81 ["versionDescription"]
      416 GETTABLEKS                       R17 R10 K89 ["created"]
      418 SETTABLEKS                       R17 R16 K89 ["created"]
      420 GETTABLEKS                       R17 R10 K84 ["assetVersionNumber"]
      422 SETTABLEKS                       R17 R16 K84 ["assetVersionNumber"]
      424 SETTABLEKS                       R12 R16 K90 ["creatorId"]
      426 SETTABLEKS                       R13 R16 K83 ["creatorType"]
      428 SETTABLEKS                       R16 R15 K86 ["descriptionColumn"]
      430 GETTABLEKS                       R16 R10 K84 ["assetVersionNumber"]
      432 SETTABLEKS                       R16 R15 K87 ["restoreColumn"]
      434 SETTABLE                         R15 R5 R14
      435 FORGLOOP                         R6 2 [inext] ; [-43]
      437 DUPTABLE                         R8 K94 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      438 GETUPVAL                         R9 9
      439 MOVE                             R10 R4
      440 CALL                             R9 1 1
      441 SETTABLEKS                       R9 R8 K75 ["versionsCurrentItem"]
      443 SETTABLEKS                       R5 R8 K92 ["versionsRootItems"]
      445 LOADN                            R11 1
      446 GETUPVAL                         R12 10
      447 GETTABLEKS                       R12 R12 K95 ["VERSIONS_ROWS_PER_PAGE"]
      449 NAMECALL                         R9 R0 K96 ["versionsGetPageRootItems"]
      451 CALL                             R9 3 1
      452 SETTABLEKS                       R9 R8 K93 ["versionsPageRootItems"]
      454 NAMECALL                         R6 R0 K21 ["setState"]
      456 CALL                             R6 2 0
      457 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
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

PROTO_78:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_81:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_82:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_83:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_84:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_85:
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
       35 JUMPIFNOT                        R1 ; [+381]
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
      108 JUMPIF                           R6 ; [+308]
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
      146 DUPCLOSURE                       R8 K24 [PROTO_80]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_81]
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
      220 JUMPIFNOT                        R6 ; [+75]
      221 GETTABLEKS                       R6 R0 K33 ["canOfferPublishOnApproval"]
      223 CALL                             R6 0 1
      224 JUMPIFNOT                        R6 ; [+30]
      225 GETTABLEKS                       R6 R0 K34 ["fetchPublishingPreferences"]
      227 GETTABLEKS                       R8 R0 K0 ["props"]
      229 GETTABLEKS                       R8 R8 K35 ["groupId"]
      231 JUMPIFNOT                        R8 ; [+14]
      232 GETTABLEKS                       R8 R0 K0 ["props"]
      234 GETTABLEKS                       R8 R8 K35 ["groupId"]
      236 GETUPVAL                         R9 2
      237 GETTABLEKS                       R9 R9 K36 ["None"]
      239 JUMPIFEQ                         R8 R9 ; [+6]
      241 GETTABLEKS                       R7 R0 K0 ["props"]
      243 GETTABLEKS                       R7 R7 K35 ["groupId"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R7
      247 CALL                             R6 1 0
      248 GETTABLEKS                       R6 R0 K37 ["fetchPublishingFeePreview"]
      250 GETTABLEKS                       R7 R0 K0 ["props"]
      252 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      254 CALL                             R6 1 0
      255 GETUPVAL                         R6 3
      256 CALL                             R6 0 1
      257 JUMPIFNOT                        R6 ; [+21]
      258 GETTABLEKS                       R6 R0 K0 ["props"]
      260 GETTABLEKS                       R6 R6 K38 ["dispatchFetchUploadFeeWithMetadata"]
      262 GETTABLEKS                       R7 R0 K0 ["props"]
      264 GETTABLEKS                       R7 R7 K13 ["Network"]
      266 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      268 GETTABLEKS                       R8 R0 K0 ["props"]
      270 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      272 LOADB                            R9 0
      273 GETTABLEKS                       R10 R0 K0 ["props"]
      275 GETTABLEKS                       R10 R10 K2 ["instances"]
      277 CALL                             R6 4 0
      278 JUMP                             ; [+70]
      279 GETTABLEKS                       R6 R0 K0 ["props"]
      281 GETTABLEKS                       R6 R6 K39 ["getItemUploadFee"]
      283 GETTABLEKS                       R7 R0 K0 ["props"]
      285 GETTABLEKS                       R7 R7 K13 ["Network"]
      287 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      289 GETTABLEKS                       R8 R0 K0 ["props"]
      291 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      293 LOADB                            R9 0
      294 CALL                             R6 3 0
      295 JUMP                             ; [+53]
      296 GETUPVAL                         R6 1
      297 GETTABLEKS                       R6 R6 K40 ["isUGCBundleType"]
      299 GETTABLEKS                       R7 R0 K0 ["props"]
      301 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      303 CALL                             R6 1 1
      304 JUMPIFNOT                        R6 ; [+41]
      305 GETUPVAL                         R6 3
      306 CALL                             R6 0 1
      307 JUMPIFNOT                        R6 ; [+21]
      308 GETTABLEKS                       R6 R0 K0 ["props"]
      310 GETTABLEKS                       R6 R6 K38 ["dispatchFetchUploadFeeWithMetadata"]
      312 GETTABLEKS                       R7 R0 K0 ["props"]
      314 GETTABLEKS                       R7 R7 K13 ["Network"]
      316 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      318 GETTABLEKS                       R8 R0 K0 ["props"]
      320 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      322 LOADB                            R9 1
      323 GETTABLEKS                       R10 R0 K0 ["props"]
      325 GETTABLEKS                       R10 R10 K2 ["instances"]
      327 CALL                             R6 4 0
      328 JUMP                             ; [+20]
      329 GETTABLEKS                       R6 R0 K0 ["props"]
      331 GETTABLEKS                       R6 R6 K39 ["getItemUploadFee"]
      333 GETTABLEKS                       R7 R0 K0 ["props"]
      335 GETTABLEKS                       R7 R7 K13 ["Network"]
      337 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      339 GETTABLEKS                       R8 R0 K0 ["props"]
      341 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      343 LOADB                            R9 1
      344 CALL                             R6 3 0
      345 JUMP                             ; [+3]
      346 GETTABLEKS                       R6 R0 K41 ["getPublishingRequirements"]
      348 CALL                             R6 0 0
      349 GETTABLEKS                       R6 R0 K0 ["props"]
      351 GETTABLEKS                       R6 R6 K42 ["dispatchSetDescendantPermissions"]
      353 NEWTABLE                         R7 0 0
      355 CALL                             R6 1 0
      356 DUPTABLE                         R8 K44 [{"descendantIds"}]
      357 NEWTABLE                         R9 0 0
      359 SETTABLEKS                       R9 R8 K43 ["descendantIds"]
      361 NAMECALL                         R6 R0 K25 ["setState"]
      363 CALL                             R6 2 0
      364 NEWTABLE                         R6 0 0
      366 JUMPIFNOT                        R2 ; [+50]
      367 GETTABLEKS                       R7 R0 K0 ["props"]
      369 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      371 GETIMPORT                        R8 K48 [Enum.AssetType.Model]
      373 JUMPIFNOTEQ                      R7 R8 ; [+43]
      375 GETIMPORT                        R7 K50 [pairs]
      377 MOVE                             R8 R2
      378 CALL                             R7 1 3
      379 FORGPREP_NEXT                    R7
      380 NAMECALL                         R12 R11 K51 ["GetDescendants"]
      382 CALL                             R12 1 1
      383 GETIMPORT                        R13 K50 [pairs]
      385 MOVE                             R14 R12
      386 CALL                             R13 1 3
      387 FORGPREP_NEXT                    R13
      388 LOADK                            R20 K52 ["Sound"]
      389 NAMECALL                         R18 R17 K53 ["IsA"]
      391 CALL                             R18 2 1
      392 JUMPIFNOT                        R18 ; [+14]
      393 GETIMPORT                        R18 K56 [string.gsub]
      395 GETTABLEKS                       R19 R17 K57 ["SoundId"]
      397 LOADK                            R20 K58 ["rbxassetid://"]
      398 LOADK                            R21 K28 [""]
      399 CALL                             R18 3 1
      400 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      402 MOVE                             R20 R6
      403 MOVE                             R21 R18
      404 GETIMPORT                        R19 K61 [table.insert]
      406 CALL                             R19 2 0
      407 FORGLOOP                         R13 2 ; [-20]
      409 FORGLOOP                         R7 2 ; [-30]
      411 DUPTABLE                         R9 K44 [{"descendantIds"}]
      412 SETTABLEKS                       R6 R9 K43 ["descendantIds"]
      414 NAMECALL                         R7 R0 K25 ["setState"]
      416 CALL                             R7 2 0
      417 RETURN                           R0 0

PROTO_86:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_87:
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

PROTO_88:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_90:
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

PROTO_91:
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
      838 JUMPIFNOT                        R78 ; [+284]
      839 GETUPVAL                         R78 1
      840 MOVE                             R80 R6
      841 NAMECALL                         R78 R78 K212 ["isGeneral"]
      843 CALL                             R78 2 1
      844 JUMPIFNOT                        R78 ; [+278]
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
      952 GETTABLEKS                       R81 R0 K230 ["canOfferPublishOnApproval"]
      954 CALL                             R81 0 1
      955 SETTABLEKS                       R81 R80 K231 ["publishOnApprovalEnabled"]
      957 GETTABLEKS                       R81 R1 K232 ["hasPublishingPreferences"]
      959 SETTABLEKS                       R81 R80 K232 ["hasPublishingPreferences"]
      961 GETTABLEKS                       R81 R1 K233 ["hasPublishingFeePreview"]
      963 SETTABLEKS                       R81 R80 K233 ["hasPublishingFeePreview"]
      965 GETTABLEKS                       R81 R1 K234 ["publishingFeePreview"]
      967 SETTABLEKS                       R81 R80 K234 ["publishingFeePreview"]
      969 GETTABLEKS                       R81 R2 K235 ["publishOnApprovalToggled"]
      971 SETTABLEKS                       R81 R80 K235 ["publishOnApprovalToggled"]
      973 GETTABLEKS                       R81 R0 K236 ["onPublishToMarketplaceToggleClick"]
      975 SETTABLEKS                       R81 R80 K236 ["onPublishToMarketplaceToggleClick"]
      977 GETUPVAL                         R82 24
      978 CALL                             R82 0 1
      979 JUMPIFNOT                        R82 ; [+3]
      980 GETTABLEKS                       R81 R1 K237 ["specialAttributes"]
      982 JUMP                             ; [+1]
      983 LOADNIL                          R81
      984 SETTABLEKS                       R81 R80 K237 ["specialAttributes"]
      986 GETUPVAL                         R82 24
      987 CALL                             R82 0 1
      988 JUMPIFNOT                        R82 ; [+3]
      989 GETTABLEKS                       R81 R1 K238 ["hasMetadataPermission"]
      991 JUMP                             ; [+1]
      992 LOADNIL                          R81
      993 SETTABLEKS                       R81 R80 K238 ["hasMetadataPermission"]
      995 SETTABLEKS                       R32 R80 K239 ["displayOwnership"]
      997 SETTABLEKS                       R33 R80 K240 ["displayCopy"]
      999 SETTABLEKS                       R35 R80 K241 ["displayComment"]
     1001 SETTABLEKS                       R36 R80 K242 ["displayAssetType"]
     1003 SETTABLEKS                       R48 R80 K243 ["displaySharing"]
     1005 SETTABLEKS                       R34 R80 K244 ["displayAssetTypeSelection"]
     1007 JUMPIFNOT                        R46 ; [+2]
     1008 MOVE                             R81 R27
     1009 JUMP                             ; [+1]
     1010 LOADNIL                          R81
     1011 SETTABLEKS                       R81 R80 K30 ["allowedAssetTypesForRelease"]
     1013 SETTABLEKS                       R28 R80 K31 ["allowedAssetTypesForFree"]
     1015 JUMPIFNOT                        R46 ; [+2]
     1016 MOVE                             R81 R16
     1017 JUMP                             ; [+1]
     1018 LOADNIL                          R81
     1019 SETTABLEKS                       R81 R80 K245 ["newAssetStatus"]
     1021 JUMPIFNOT                        R46 ; [+2]
     1022 MOVE                             R81 R30
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R81
     1025 SETTABLEKS                       R81 R80 K246 ["currentAssetStatus"]
     1027 JUMPIFNOT                        R46 ; [+3]
     1028 GETTABLEKS                       R81 R0 K247 ["onStatusChange"]
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R81
     1032 SETTABLEKS                       R81 R80 K247 ["onStatusChange"]
     1034 JUMPIFNOT                        R46 ; [+3]
     1035 GETTABLEKS                       R81 R0 K248 ["onPriceChange"]
     1037 JUMP                             ; [+1]
     1038 LOADNIL                          R81
     1039 SETTABLEKS                       R81 R80 K248 ["onPriceChange"]
     1041 JUMPIFNOT                        R46 ; [+2]
     1042 MOVE                             R81 R31
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R81
     1045 SETTABLEKS                       R81 R80 K35 ["price"]
     1047 LOADNIL                          R81
     1048 SETTABLEKS                       R81 R80 K249 ["minPrice"]
     1050 LOADNIL                          R81
     1051 SETTABLEKS                       R81 R80 K250 ["maxPrice"]
     1053 LOADNIL                          R81
     1054 SETTABLEKS                       R81 R80 K251 ["feeRate"]
     1056 LOADNIL                          R81
     1057 SETTABLEKS                       R81 R80 K252 ["isPriceValid"]
     1059 LOADN                            R81 3
     1060 SETTABLEKS                       R81 R80 K127 ["LayoutOrder"]
     1062 GETTABLEKS                       R81 R1 K47 ["instances"]
     1064 SETTABLEKS                       R81 R80 K47 ["instances"]
     1066 GETUPVAL                         R82 8
     1067 CALL                             R82 0 1
     1068 JUMPIFNOT                        R82 ; [+2]
     1069 MOVE                             R81 R68
     1070 JUMP                             ; [+1]
     1071 LOADNIL                          R81
     1072 SETTABLEKS                       R81 R80 K253 ["showColorPicker"]
     1074 GETUPVAL                         R82 8
     1075 CALL                             R82 0 1
     1076 JUMPIFNOT                        R82 ; [+4]
     1077 JUMPIFNOT                        R68 ; [+3]
     1078 GETTABLEKS                       R81 R2 K254 ["showColorPickerRequiredError"]
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R81
     1082 SETTABLEKS                       R81 R80 K254 ["showColorPickerRequiredError"]
     1084 GETUPVAL                         R82 25
     1085 CALL                             R82 0 1
     1086 JUMPIFNOT                        R82 ; [+3]
     1087 GETTABLEKS                       R81 R2 K255 ["showNameRequiredError"]
     1089 JUMP                             ; [+1]
     1090 LOADNIL                          R81
     1091 SETTABLEKS                       R81 R80 K255 ["showNameRequiredError"]
     1093 GETUPVAL                         R82 25
     1094 CALL                             R82 0 1
     1095 JUMPIFNOT                        R82 ; [+3]
     1096 GETTABLEKS                       R81 R2 K256 ["showDescriptionRequiredError"]
     1098 JUMP                             ; [+1]
     1099 LOADNIL                          R81
     1100 SETTABLEKS                       R81 R80 K256 ["showDescriptionRequiredError"]
     1102 GETUPVAL                         R82 8
     1103 CALL                             R82 0 1
     1104 JUMPIFNOT                        R82 ; [+4]
     1105 JUMPIFNOT                        R68 ; [+3]
     1106 GETTABLEKS                       R81 R2 K57 ["selectedColor"]
     1108 JUMP                             ; [+1]
     1109 LOADNIL                          R81
     1110 SETTABLEKS                       R81 R80 K57 ["selectedColor"]
     1112 GETUPVAL                         R82 8
     1113 CALL                             R82 0 1
     1114 JUMPIFNOT                        R82 ; [+4]
     1115 JUMPIFNOT                        R68 ; [+3]
     1116 GETTABLEKS                       R81 R0 K257 ["onSelectedColorChange"]
     1118 JUMP                             ; [+1]
     1119 LOADNIL                          R81
     1120 SETTABLEKS                       R81 R80 K258 ["setSelectedColor"]
     1122 CALL                             R78 2 1
     1123 SETTABLEKS                       R78 R77 K161 ["PublishAsset"]
     1125 GETUPVAL                         R78 1
     1126 MOVE                             R80 R6
     1127 NAMECALL                         R78 R78 K259 ["isVersions"]
     1129 CALL                             R78 2 1
     1130 JUMPIFNOT                        R78 ; [+75]
     1131 GETUPVAL                         R78 12
     1132 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1134 GETUPVAL                         R79 26
     1135 DUPTABLE                         R80 K273 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
     1136 GETIMPORT                        R81 K156 [UDim2.new]
     1138 LOADN                            R82 1
     1139 LOADN                            R83 -240
     1140 LOADN                            R84 1
     1141 LOADN                            R85 -20
     1142 CALL                             R81 4 1
     1143 SETTABLEKS                       R81 R80 K3 ["Size"]
     1145 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1147 GETTABLEKS                       R81 R2 K274 ["versionsCurrentItem"]
     1149 SETTABLEKS                       R81 R80 K260 ["currentItem"]
     1151 GETTABLEKS                       R81 R2 K275 ["versionsRootItems"]
     1153 SETTABLEKS                       R81 R80 K261 ["rootItems"]
     1155 GETTABLEKS                       R81 R2 K276 ["versionsOpenInputKey"]
     1157 SETTABLEKS                       R81 R80 K262 ["openInputKey"]
     1159 GETTABLEKS                       R81 R2 K277 ["versionsPreviousInput"]
     1161 SETTABLEKS                       R81 R80 K263 ["previousInput"]
     1163 GETTABLEKS                       R81 R2 K278 ["versionsPageIndex"]
     1165 SETTABLEKS                       R81 R80 K264 ["pageIndex"]
     1167 GETTABLEKS                       R81 R2 K279 ["versionsPageRootItems"]
     1169 SETTABLEKS                       R81 R80 K265 ["pageRootItems"]
     1171 GETUPVAL                         R82 27
     1172 CALL                             R82 0 1
     1173 JUMPIFNOT                        R82 ; [+3]
     1174 GETTABLEKS                       R81 R1 K280 ["versionHistoryWithDescriptions"]
     1176 JUMP                             ; [+2]
     1177 GETTABLEKS                       R81 R1 K266 ["versionHistory"]
     1179 SETTABLEKS                       R81 R80 K266 ["versionHistory"]
     1181 GETTABLEKS                       R81 R0 K281 ["versionsOnDescClicked"]
     1183 SETTABLEKS                       R81 R80 K267 ["onDescClicked"]
     1185 GETTABLEKS                       R81 R0 K282 ["versionsCloseInput"]
     1187 SETTABLEKS                       R81 R80 K268 ["closeInput"]
     1189 GETTABLEKS                       R81 R0 K269 ["setVersionError"]
     1191 SETTABLEKS                       R81 R80 K269 ["setVersionError"]
     1193 GETTABLEKS                       R81 R0 K283 ["versionsSetPreviousInput"]
     1195 SETTABLEKS                       R81 R80 K270 ["setPreviousInput"]
     1197 GETTABLEKS                       R81 R0 K284 ["versionsOnPageChange"]
     1199 SETTABLEKS                       R81 R80 K271 ["onPageChange"]
     1201 GETTABLEKS                       R81 R0 K285 ["versionsSetStates"]
     1203 SETTABLEKS                       R81 R80 K272 ["setStates"]
     1205 CALL                             R78 2 1
     1206 SETTABLEKS                       R78 R77 K162 ["Versions"]
     1208 GETUPVAL                         R79 1
     1209 MOVE                             R81 R6
     1210 NAMECALL                         R79 R79 K286 ["isSales"]
     1212 CALL                             R79 2 1
     1213 JUMPIFNOT                        R79 ; [+18]
     1214 GETUPVAL                         R78 12
     1215 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1217 GETUPVAL                         R79 28
     1218 DUPTABLE                         R80 K289 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1219 GETIMPORT                        R81 K156 [UDim2.new]
     1221 LOADN                            R82 1
     1222 LOADN                            R83 -240
     1223 LOADN                            R84 1
     1224 LOADN                            R85 0
     1225 CALL                             R81 4 1
     1226 SETTABLEKS                       R81 R80 K287 ["size"]
     1228 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1230 CALL                             R78 2 1
     1231 JUMP                             ; [+1]
     1232 LOADNIL                          R78
     1233 SETTABLEKS                       R78 R77 K163 ["Sales"]
     1235 GETUPVAL                         R78 1
     1236 MOVE                             R80 R6
     1237 NAMECALL                         R78 R78 K290 ["isOverride"]
     1239 CALL                             R78 2 1
     1240 JUMPIFNOT                        R78 ; [+56]
     1241 GETUPVAL                         R79 29
     1242 CALL                             R79 0 1
     1243 JUMPIFNOT                        R79 ; [+28]
     1244 GETUPVAL                         R79 3
     1245 GETTABLEKS                       R79 R79 K291 ["isCatalogAsset"]
     1247 MOVE                             R80 R24
     1248 CALL                             R79 1 1
     1249 JUMPIFNOT                        R79 ; [+22]
     1250 GETUPVAL                         R78 19
     1251 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1253 GETUPVAL                         R79 30
     1254 DUPTABLE                         R80 K293 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1255 GETIMPORT                        R81 K156 [UDim2.new]
     1257 LOADN                            R82 1
     1258 LOADN                            R83 -240
     1259 LOADN                            R84 1
     1260 LOADN                            R85 0
     1261 CALL                             R81 4 1
     1262 SETTABLEKS                       R81 R80 K3 ["Size"]
     1264 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
     1266 GETTABLEKS                       R81 R0 K292 ["onOverrideAssetSelected"]
     1268 SETTABLEKS                       R81 R80 K292 ["onOverrideAssetSelected"]
     1270 CALL                             R78 2 1
     1271 JUMP                             ; [+25]
     1272 GETUPVAL                         R78 12
     1273 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1275 GETUPVAL                         R79 31
     1276 DUPTABLE                         R80 K294 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1277 GETIMPORT                        R81 K156 [UDim2.new]
     1279 LOADN                            R82 1
     1280 LOADN                            R83 -240
     1281 LOADN                            R84 1
     1282 LOADN                            R85 0
     1283 CALL                             R81 4 1
     1284 SETTABLEKS                       R81 R80 K3 ["Size"]
     1286 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
     1288 GETTABLEKS                       R81 R1 K47 ["instances"]
     1290 SETTABLEKS                       R81 R80 K47 ["instances"]
     1292 GETTABLEKS                       R81 R0 K292 ["onOverrideAssetSelected"]
     1294 SETTABLEKS                       R81 R80 K292 ["onOverrideAssetSelected"]
     1296 CALL                             R78 2 1
     1297 SETTABLEKS                       R78 R77 K164 ["OverrideAsset"]
     1299 GETUPVAL                         R78 1
     1300 MOVE                             R80 R6
     1301 NAMECALL                         R78 R78 K295 ["isPermissions"]
     1303 CALL                             R78 2 1
     1304 JUMPIFNOT                        R78 ; [+30]
     1305 GETUPVAL                         R78 12
     1306 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1308 GETUPVAL                         R79 32
     1309 GETTABLEKS                       R79 R79 K296 ["AsyncCache"]
     1311 NEWTABLE                         R80 0 0
     1313 NEWTABLE                         R81 0 1
     1315 GETUPVAL                         R82 12
     1316 GETTABLEKS                       R82 R82 K98 ["createElement"]
     1318 GETUPVAL                         R83 33
     1319 DUPTABLE                         R84 K297 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1320 GETIMPORT                        R85 K156 [UDim2.new]
     1322 LOADN                            R86 1
     1323 MOVE                             R87 R42
     1324 LOADN                            R88 1
     1325 LOADN                            R89 0
     1326 CALL                             R85 4 1
     1327 SETTABLEKS                       R85 R84 K3 ["Size"]
     1329 SETTABLEKS                       R7 R84 K181 ["AssetId"]
     1331 CALL                             R82 2 -1
     1332 SETLIST                          R81 R82 -1 [1]
     1334 CALL                             R78 3 1
     1335 SETTABLEKS                       R78 R77 K165 ["PackagePermissions"]
     1337 CALL                             R74 3 1
     1338 SETTABLEKS                       R74 R73 K112 ["MainPage"]
     1340 GETUPVAL                         R74 12
     1341 GETTABLEKS                       R74 R74 K98 ["createElement"]
     1343 GETUPVAL                         R75 34
     1344 DUPTABLE                         R76 K302 [{["AssetId"], ["CanSave"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1345 GETTABLEKS                       R77 R2 K303 ["overrideAssetId"]
     1347 SETTABLEKS                       R77 R76 K181 ["AssetId"]
     1349 SETTABLEKS                       R41 R76 K298 ["CanSave"]
     1351 GETIMPORT                        R77 K156 [UDim2.new]
     1353 LOADN                            R78 1
     1354 LOADN                            R79 0
     1355 LOADN                            R80 0
     1356 LOADN                            R81 62
     1357 CALL                             R77 4 1
     1358 SETTABLEKS                       R77 R76 K3 ["Size"]
     1360 GETTABLEKS                       R77 R0 K304 ["tryCancelWithYield"]
     1362 SETTABLEKS                       R77 R76 K299 ["TryCancel"]
     1364 GETTABLEKS                       R77 R0 K305 ["tryPublishWithConfirmDialog"]
     1366 SETTABLEKS                       R77 R76 K300 ["TryPublish"]
     1368 GETUPVAL                         R78 8
     1369 CALL                             R78 0 1
     1370 JUMPIFNOT                        R78 ; [+10]
     1371 JUMPIF                           R41 ; [+9]
     1372 NEWCLOSURE                       R77 P1
     1373 CAPTURE                          VAL R0
     1374 CAPTURE                          VAL R69
     1375 CAPTURE                          UPVAL U25
     1376 CAPTURE                          VAL R8
     1377 CAPTURE                          VAL R9
     1378 CAPTURE                          UPVAL U3
     1379 CAPTURE                          VAL R24
     1380 JUMP                             ; [+1]
     1381 LOADNIL                          R77
     1382 SETTABLEKS                       R77 R76 K301 ["OnPublishButtonHover"]
     1384 CALL                             R74 2 1
     1385 SETTABLEKS                       R74 R73 K113 ["Footer"]
     1387 CALL                             R70 3 -1
     1388 RETURN                           R70 -1

PROTO_92:
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
      180 GETTABLEKS                       R16 R0 K39 ["hasPublishingPreferences"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R16
      184 SETTABLEKS                       R16 R15 K39 ["hasPublishingPreferences"]
      186 GETUPVAL                         R17 5
      187 CALL                             R17 0 1
      188 JUMPIFNOT                        R17 ; [+3]
      189 GETTABLEKS                       R16 R0 K40 ["hasPublishingFeePreview"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R16
      193 SETTABLEKS                       R16 R15 K40 ["hasPublishingFeePreview"]
      195 GETUPVAL                         R17 5
      196 CALL                             R17 0 1
      197 JUMPIFNOT                        R17 ; [+3]
      198 GETTABLEKS                       R16 R0 K41 ["publishingFeePreview"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R16
      202 SETTABLEKS                       R16 R15 K41 ["publishingFeePreview"]
      204 GETUPVAL                         R17 6
      205 CALL                             R17 0 1
      206 JUMPIFNOT                        R17 ; [+3]
      207 GETTABLEKS                       R16 R0 K42 ["specialAttributes"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R16
      211 SETTABLEKS                       R16 R15 K42 ["specialAttributes"]
      213 GETUPVAL                         R17 6
      214 CALL                             R17 0 1
      215 JUMPIFNOT                        R17 ; [+3]
      216 GETTABLEKS                       R16 R0 K43 ["hasMetadataPermission"]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R16
      220 SETTABLEKS                       R16 R15 K43 ["hasMetadataPermission"]
      222 GETTABLEKS                       R16 R0 K44 ["deleteLocal"]
      224 SETTABLEKS                       R16 R15 K44 ["deleteLocal"]
      226 SETTABLEKS                       R12 R15 K10 ["versionHistory"]
      228 SETTABLEKS                       R13 R15 K11 ["versionHistoryWithDescriptions"]
      230 SETTABLEKS                       R14 R15 K45 ["permissions"]
      232 SETTABLEKS                       R8 R15 K46 ["publishingRestrictions"]
      234 GETTABLEKS                       R18 R1 K33 ["assetId"]
      236 GETTABLE                         R17 R2 R18
      237 JUMPIFNOT                        R17 ; [+4]
      238 GETTABLEKS                       R17 R1 K33 ["assetId"]
      240 GETTABLE                         R16 R2 R17
      241 JUMP                             ; [+4]
      242 GETUPVAL                         R16 7
      243 GETTABLEKS                       R16 R16 K47 ["getDefaultFiatProduct"]
      245 CALL                             R16 0 1
      246 SETTABLEKS                       R16 R15 K48 ["fiatProduct"]
      248 GETTABLEKS                       R16 R0 K49 ["groupBundlesUploadEnabledForUser"]
      250 SETTABLEKS                       R16 R15 K49 ["groupBundlesUploadEnabledForUser"]
      252 GETUPVAL                         R17 8
      253 CALL                             R17 0 1
      254 JUMPIFNOT                        R17 ; [+3]
      255 GETTABLEKS                       R16 R0 K50 ["animationPackType"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R16
      259 SETTABLEKS                       R16 R15 K50 ["animationPackType"]
      261 GETUPVAL                         R17 8
      262 CALL                             R17 0 1
      263 JUMPIFNOT                        R17 ; [+3]
      264 GETTABLEKS                       R16 R0 K51 ["animationPackSubName"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R16
      268 SETTABLEKS                       R16 R15 K51 ["animationPackSubName"]
      270 GETUPVAL                         R17 8
      271 CALL                             R17 0 1
      272 JUMPIFNOT                        R17 ; [+3]
      273 GETTABLEKS                       R16 R0 K52 ["animationPackWeight"]
      275 JUMP                             ; [+1]
      276 LOADNIL                          R16
      277 SETTABLEKS                       R16 R15 K52 ["animationPackWeight"]
      279 GETUPVAL                         R17 8
      280 CALL                             R17 0 1
      281 JUMPIFNOT                        R17 ; [+3]
      282 GETTABLEKS                       R16 R0 K53 ["animationPackParentModelName"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R16
      286 SETTABLEKS                       R16 R15 K53 ["animationPackParentModelName"]
      288 GETUPVAL                         R17 8
      289 CALL                             R17 0 1
      290 JUMPIFNOT                        R17 ; [+3]
      291 GETTABLEKS                       R16 R0 K54 ["animationSectionValid"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R16
      295 SETTABLEKS                       R16 R15 K54 ["animationSectionValid"]
      297 GETUPVAL                         R17 9
      298 CALL                             R17 0 1
      299 JUMPIFNOT                        R17 ; [+3]
      300 GETTABLEKS                       R16 R0 K55 ["isAvatarItemDialogFlowEnabled"]
      302 JUMP                             ; [+1]
      303 LOADNIL                          R16
      304 SETTABLEKS                       R16 R15 K55 ["isAvatarItemDialogFlowEnabled"]
      306 RETURN                           R15 1

PROTO_93:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_98:
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

PROTO_99:
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

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_104:
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

PROTO_105:
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

PROTO_106:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_113:
        0 NEWTABLE                         R11 0 0
        2 MOVE                             R12 R5
        3 JUMPIF                           R12 ; [+2]
        4 NEWTABLE                         R12 0 0
        6 LOADNIL                          R13
        7 LOADNIL                          R14
        8 FORGPREP                         R12
        9 NAMECALL                         R17 R16 K0 ["Clone"]
       11 CALL                             R17 1 1
       12 GETUPVAL                         R18 0
       13 MOVE                             R19 R17
       14 CALL                             R18 1 0
       15 SETTABLE                         R17 R11 R15
       16 FORGLOOP                         R12 2 ; [-8]
       18 GETUPVAL                         R12 1
       19 GETUPVAL                         R13 2
       20 MOVE                             R14 R0
       21 MOVE                             R15 R1
       22 MOVE                             R16 R3
       23 MOVE                             R17 R4
       24 MOVE                             R18 R11
       25 MOVE                             R19 R6
       26 MOVE                             R20 R7
       27 MOVE                             R21 R8
       28 MOVE                             R22 R9
       29 MOVE                             R23 R10
       30 CALL                             R13 10 -1
       31 CALL                             R12 -1 0
       32 RETURN                           R0 0

PROTO_114:
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

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_127:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_135:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_137:
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
      115 SETTABLEKS                       R2 R1 K15 ["getPublishingPreferences"]
      117 GETUPVAL                         R3 20
      118 CALL                             R3 0 1
      119 JUMPIFNOT                        R3 ; [+4]
      120 NEWCLOSURE                       R2 P16
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U22
      123 JUMP                             ; [+1]
      124 LOADNIL                          R2
      125 SETTABLEKS                       R2 R1 K16 ["clearPublishingPreferences"]
      127 GETUPVAL                         R3 20
      128 CALL                             R3 0 1
      129 JUMPIFNOT                        R3 ; [+4]
      130 NEWCLOSURE                       R2 P17
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U23
      133 JUMP                             ; [+1]
      134 LOADNIL                          R2
      135 SETTABLEKS                       R2 R1 K17 ["getPublishingFeePreview"]
      137 GETUPVAL                         R3 20
      138 CALL                             R3 0 1
      139 JUMPIFNOT                        R3 ; [+4]
      140 NEWCLOSURE                       R2 P18
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U24
      143 JUMP                             ; [+1]
      144 LOADNIL                          R2
      145 SETTABLEKS                       R2 R1 K18 ["clearPublishingFeePreview"]
      147 GETUPVAL                         R3 25
      148 CALL                             R3 0 1
      149 JUMPIFNOT                        R3 ; [+4]
      150 NEWCLOSURE                       R2 P19
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U26
      153 JUMP                             ; [+1]
      154 LOADNIL                          R2
      155 SETTABLEKS                       R2 R1 K19 ["dispatchFetchUploadFeeWithMetadata"]
      157 GETUPVAL                         R3 6
      158 CALL                             R3 0 1
      159 JUMPIF                           R3 ; [+5]
      160 NEWCLOSURE                       R2 P20
      161 CAPTURE                          UPVAL U27
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U28
      164 JUMP                             ; [+1]
      165 LOADNIL                          R2
      166 SETTABLEKS                       R2 R1 K20 ["uploadCatalogItemWithFee"]
      168 GETUPVAL                         R3 6
      169 CALL                             R3 0 1
      170 JUMPIF                           R3 ; [+4]
      171 NEWCLOSURE                       R2 P21
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U29
      174 JUMP                             ; [+1]
      175 LOADNIL                          R2
      176 SETTABLEKS                       R2 R1 K21 ["uploadUGCBundleWithFee"]
      178 NEWCLOSURE                       R2 P22
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U30
      181 SETTABLEKS                       R2 R1 K22 ["dispatchPostPackageMetadataRequest"]
      183 NEWCLOSURE                       R2 P23
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U31
      186 SETTABLEKS                       R2 R1 K23 ["updateStore"]
      188 NEWCLOSURE                       R2 P24
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U32
      191 SETTABLEKS                       R2 R1 K24 ["dispatchGetPackageCollaboratorsRequest"]
      193 NEWCLOSURE                       R2 P25
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U33
      196 SETTABLEKS                       R2 R1 K25 ["dispatchPutPackagePermissionsRequest"]
      198 NEWCLOSURE                       R2 P26
      199 CAPTURE                          VAL R0
      200 CAPTURE                          UPVAL U34
      201 SETTABLEKS                       R2 R1 K26 ["dispatchPostAssetCheckPermissions"]
      203 NEWCLOSURE                       R2 P27
      204 CAPTURE                          VAL R0
      205 CAPTURE                          UPVAL U35
      206 SETTABLEKS                       R2 R1 K27 ["dispatchGetGroupMetadata"]
      208 NEWCLOSURE                       R2 P28
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U36
      211 SETTABLEKS                       R2 R1 K28 ["dispatchGetGroupRoleInfo"]
      213 NEWCLOSURE                       R2 P29
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U37
      216 SETTABLEKS                       R2 R1 K29 ["dispatchGetUsername"]
      218 NEWCLOSURE                       R2 P30
      219 CAPTURE                          VAL R0
      220 CAPTURE                          UPVAL U38
      221 SETTABLEKS                       R2 R1 K30 ["dispatchPatchMakeAssetPublicRequest"]
      223 NEWCLOSURE                       R2 P31
      224 CAPTURE                          VAL R0
      225 CAPTURE                          UPVAL U39
      226 SETTABLEKS                       R2 R1 K31 ["dispatchGetAssetPermissionsRequest"]
      228 NEWCLOSURE                       R2 P32
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U40
      231 SETTABLEKS                       R2 R1 K32 ["dispatchSetDescendantPermissions"]
      233 NEWCLOSURE                       R2 P33
      234 CAPTURE                          VAL R0
      235 CAPTURE                          UPVAL U41
      236 SETTABLEKS                       R2 R1 K33 ["dispatchGetPublishingRequirements"]
      238 NEWCLOSURE                       R2 P34
      239 CAPTURE                          VAL R0
      240 CAPTURE                          UPVAL U42
      241 SETTABLEKS                       R2 R1 K34 ["dispatchGetAssetMediaMetadataArray"]
      243 NEWCLOSURE                       R2 P35
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U43
      246 SETTABLEKS                       R2 R1 K35 ["dispatchGetFiatProduct"]
      248 GETUPVAL                         R3 44
      249 CALL                             R3 0 1
      250 JUMPIFNOT                        R3 ; [+4]
      251 NEWCLOSURE                       R2 P36
      252 CAPTURE                          VAL R0
      253 CAPTURE                          UPVAL U45
      254 JUMP                             ; [+1]
      255 LOADNIL                          R2
      256 SETTABLEKS                       R2 R1 K36 ["dispatchGetSellerStatus"]
      258 NEWCLOSURE                       R2 P37
      259 CAPTURE                          VAL R0
      260 CAPTURE                          UPVAL U46
      261 SETTABLEKS                       R2 R1 K37 ["dispatchValidateAnimationResult"]
      263 GETUPVAL                         R3 47
      264 CALL                             R3 0 1
      265 JUMPIFNOT                        R3 ; [+4]
      266 NEWCLOSURE                       R2 P38
      267 CAPTURE                          VAL R0
      268 CAPTURE                          UPVAL U48
      269 JUMP                             ; [+1]
      270 LOADNIL                          R2
      271 SETTABLEKS                       R2 R1 K38 ["dispatchCheckAvatarAssetPrivacy"]
      273 GETUPVAL                         R2 6
      274 CALL                             R2 0 1
      275 JUMPIF                           R2 ; [+10]
      276 NEWCLOSURE                       R2 P39
      277 CAPTURE                          VAL R0
      278 CAPTURE                          UPVAL U49
      279 SETTABLEKS                       R2 R1 K39 ["uploadAnimationAsset"]
      281 NEWCLOSURE                       R2 P40
      282 CAPTURE                          VAL R0
      283 CAPTURE                          UPVAL U50
      284 SETTABLEKS                       R2 R1 K40 ["overrideAnimationAsset"]
      286 GETUPVAL                         R2 6
      287 CALL                             R2 0 1
      288 JUMPIFNOT                        R2 ; [+15]
      289 NEWCLOSURE                       R2 P41
      290 CAPTURE                          VAL R0
      291 CAPTURE                          UPVAL U51
      292 SETTABLEKS                       R2 R1 K41 ["dispatchDownloadFlow"]
      294 NEWCLOSURE                       R2 P42
      295 CAPTURE                          VAL R0
      296 CAPTURE                          UPVAL U52
      297 SETTABLEKS                       R2 R1 K42 ["dispatchEditFlow"]
      299 NEWCLOSURE                       R2 P43
      300 CAPTURE                          VAL R0
      301 CAPTURE                          UPVAL U53
      302 SETTABLEKS                       R2 R1 K43 ["dispatchUploadFlow"]
      304 RETURN                           R1 1

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
      421 GETTABLEKS                       R78 R59 K90 ["GetPublishingPreferencesRequest"]
      423 CALL                             R77 1 1
      424 GETIMPORT                        R78 K15 [require]
      426 GETTABLEKS                       R79 R59 K91 ["GetPublishingFeePreviewRequest"]
      428 CALL                             R78 1 1
      429 GETIMPORT                        R79 K15 [require]
      431 GETTABLEKS                       R80 R59 K92 ["UGCBundleUploadRequest"]
      433 CALL                             R79 1 1
      434 GETIMPORT                        R80 K15 [require]
      436 GETTABLEKS                       R81 R59 K93 ["PatchMakeAssetPublicRequest"]
      438 CALL                             R80 1 1
      439 GETIMPORT                        R81 K15 [require]
      441 GETTABLEKS                       R82 R59 K94 ["GetAssetPermissionsRequest"]
      443 CALL                             R81 1 1
      444 GETIMPORT                        R82 K15 [require]
      446 GETTABLEKS                       R83 R59 K95 ["GetPublishingRequirementsRequest"]
      448 CALL                             R82 1 1
      449 GETIMPORT                        R83 K15 [require]
      451 GETTABLEKS                       R84 R59 K96 ["GetAssetMediaMetadataArrayRequest"]
      453 CALL                             R83 1 1
      454 GETIMPORT                        R84 K15 [require]
      456 GETTABLEKS                       R85 R59 K97 ["UGCAccessoryUploadRequest"]
      458 CALL                             R84 1 1
      459 GETIMPORT                        R85 K15 [require]
      461 GETTABLEKS                       R86 R59 K98 ["GetVersionHistoryRequest"]
      463 CALL                             R85 1 1
      464 GETIMPORT                        R86 K15 [require]
      466 GETTABLEKS                       R87 R59 K99 ["GetFiatProductRequest"]
      468 CALL                             R86 1 1
      469 GETIMPORT                        R87 K15 [require]
      471 GETTABLEKS                       R88 R59 K100 ["GetSellerStatusRequest"]
      473 CALL                             R87 1 1
      474 GETIMPORT                        R88 K15 [require]
      476 GETTABLEKS                       R89 R59 K101 ["GetDefaultBundleDataSharingRequest"]
      478 CALL                             R88 1 1
      479 GETIMPORT                        R89 K15 [require]
      481 GETTABLEKS                       R90 R1 K7 ["Src"]
      483 GETTABLEKS                       R90 R90 K102 ["Actions"]
      485 GETTABLEKS                       R90 R90 K103 ["ClearChange"]
      487 CALL                             R89 1 1
      488 GETIMPORT                        R90 K15 [require]
      490 GETTABLEKS                       R91 R1 K7 ["Src"]
      492 GETTABLEKS                       R91 R91 K102 ["Actions"]
      494 GETTABLEKS                       R91 R91 K104 ["SetAssetConfigTab"]
      496 CALL                             R90 1 1
      497 GETIMPORT                        R91 K15 [require]
      499 GETTABLEKS                       R92 R1 K7 ["Src"]
      501 GETTABLEKS                       R92 R92 K102 ["Actions"]
      503 GETTABLEKS                       R92 R92 K105 ["UpdateAssetConfigStore"]
      505 CALL                             R91 1 1
      506 GETIMPORT                        R92 K15 [require]
      508 GETTABLEKS                       R93 R1 K7 ["Src"]
      510 GETTABLEKS                       R93 R93 K102 ["Actions"]
      512 GETTABLEKS                       R93 R93 K106 ["PublishingPreferencesReceived"]
      514 CALL                             R92 1 1
      515 GETIMPORT                        R93 K15 [require]
      517 GETTABLEKS                       R94 R1 K7 ["Src"]
      519 GETTABLEKS                       R94 R94 K102 ["Actions"]
      521 GETTABLEKS                       R94 R94 K107 ["PublishingFeePreviewReceived"]
      523 CALL                             R93 1 1
      524 GETIMPORT                        R94 K15 [require]
      526 GETTABLEKS                       R95 R1 K7 ["Src"]
      528 GETTABLEKS                       R95 R95 K102 ["Actions"]
      530 GETTABLEKS                       R95 R95 K108 ["SetDescendantPermissions"]
      532 CALL                             R94 1 1
      533 GETIMPORT                        R95 K15 [require]
      535 GETTABLEKS                       R96 R1 K7 ["Src"]
      537 GETTABLEKS                       R96 R96 K102 ["Actions"]
      539 GETTABLEKS                       R96 R96 K109 ["UploadResult"]
      541 CALL                             R95 1 1
      542 GETIMPORT                        R96 K15 [require]
      544 GETTABLEKS                       R97 R1 K7 ["Src"]
      546 GETTABLEKS                       R97 R97 K102 ["Actions"]
      548 GETTABLEKS                       R97 R97 K110 ["ValidateAnimationResult"]
      550 CALL                             R96 1 1
      551 GETIMPORT                        R97 K15 [require]
      553 GETTABLEKS                       R98 R1 K7 ["Src"]
      555 GETTABLEKS                       R98 R98 K111 ["Thunks"]
      557 GETTABLEKS                       R98 R98 K112 ["GetGroupMetadata"]
      559 CALL                             R97 1 1
      560 GETIMPORT                        R98 K15 [require]
      562 GETTABLEKS                       R99 R1 K7 ["Src"]
      564 GETTABLEKS                       R99 R99 K111 ["Thunks"]
      566 GETTABLEKS                       R99 R99 K113 ["GetGroupRoleInfo"]
      568 CALL                             R98 1 1
      569 GETIMPORT                        R99 K15 [require]
      571 GETTABLEKS                       R100 R1 K7 ["Src"]
      573 GETTABLEKS                       R100 R100 K111 ["Thunks"]
      575 GETTABLEKS                       R100 R100 K114 ["GetUsername"]
      577 CALL                             R99 1 1
      578 GETIMPORT                        R100 K15 [require]
      580 GETTABLEKS                       R101 R1 K7 ["Src"]
      582 GETTABLEKS                       R101 R101 K111 ["Thunks"]
      584 GETTABLEKS                       R101 R101 K115 ["CheckAvatarAssetPrivacy"]
      586 CALL                             R100 1 1
      587 GETIMPORT                        R101 K15 [require]
      589 GETTABLEKS                       R102 R1 K7 ["Src"]
      591 GETTABLEKS                       R102 R102 K111 ["Thunks"]
      593 GETTABLEKS                       R102 R102 K32 ["AssetConfiguration"]
      595 GETTABLEKS                       R102 R102 K116 ["DownloadFlowRequest"]
      597 CALL                             R101 1 1
      598 GETIMPORT                        R102 K15 [require]
      600 GETTABLEKS                       R103 R1 K7 ["Src"]
      602 GETTABLEKS                       R103 R103 K111 ["Thunks"]
      604 GETTABLEKS                       R103 R103 K32 ["AssetConfiguration"]
      606 GETTABLEKS                       R103 R103 K117 ["EditFlowRequest"]
      608 CALL                             R102 1 1
      609 GETIMPORT                        R103 K15 [require]
      611 GETTABLEKS                       R104 R1 K7 ["Src"]
      613 GETTABLEKS                       R104 R104 K111 ["Thunks"]
      615 GETTABLEKS                       R104 R104 K32 ["AssetConfiguration"]
      617 GETTABLEKS                       R104 R104 K118 ["UploadFlowRequest"]
      619 CALL                             R103 1 1
      620 GETIMPORT                        R104 K15 [require]
      622 GETTABLEKS                       R105 R1 K7 ["Src"]
      624 GETTABLEKS                       R105 R105 K111 ["Thunks"]
      626 GETTABLEKS                       R105 R105 K32 ["AssetConfiguration"]
      628 GETTABLEKS                       R105 R105 K119 ["FetchUploadFeeWithMetadataRequest"]
      630 CALL                             R104 1 1
      631 GETIMPORT                        R105 K15 [require]
      633 GETTABLEKS                       R106 R1 K7 ["Src"]
      635 GETTABLEKS                       R106 R106 K120 ["ContextServices"]
      637 GETTABLEKS                       R106 R106 K121 ["IXPContext"]
      639 CALL                             R105 1 1
      640 GETIMPORT                        R106 K15 [require]
      642 GETTABLEKS                       R107 R1 K7 ["Src"]
      644 GETTABLEKS                       R107 R107 K120 ["ContextServices"]
      646 GETTABLEKS                       R107 R107 K122 ["NetworkContext"]
      648 CALL                             R106 1 1
      649 GETIMPORT                        R107 K15 [require]
      651 GETTABLEKS                       R108 R1 K7 ["Src"]
      653 GETTABLEKS                       R108 R108 K120 ["ContextServices"]
      655 GETTABLEKS                       R108 R108 K123 ["PublishServiceContext"]
      657 CALL                             R107 1 1
      658 GETIMPORT                        R108 K15 [require]
      660 GETTABLEKS                       R109 R1 K7 ["Src"]
      662 GETTABLEKS                       R109 R109 K120 ["ContextServices"]
      664 GETTABLEKS                       R109 R109 K124 ["PluginGuiServiceContext"]
      666 CALL                             R108 1 1
      667 GETIMPORT                        R109 K15 [require]
      669 GETTABLEKS                       R110 R1 K7 ["Src"]
      671 GETTABLEKS                       R110 R110 K120 ["ContextServices"]
      673 GETTABLEKS                       R110 R110 K125 ["ContentProviderContext"]
      675 CALL                             R109 1 1
      676 GETIMPORT                        R110 K15 [require]
      678 GETTABLEKS                       R111 R13 K61 ["Framework"]
      680 CALL                             R110 1 1
      681 GETTABLEKS                       R111 R110 K120 ["ContextServices"]
      683 GETTABLEKS                       R112 R111 K126 ["withContext"]
      685 GETTABLEKS                       R113 R110 K127 ["UI"]
      687 GETTABLEKS                       R113 R113 K128 ["LoadingIndicator"]
      689 GETTABLEKS                       R114 R110 K127 ["UI"]
      691 GETTABLEKS                       R114 R114 K129 ["Container"]
      693 GETTABLEKS                       R115 R15 K130 ["PureComponent"]
      695 LOADK                            R117 K131 ["AssetConfig"]
      696 NAMECALL                         R115 R115 K132 ["extend"]
      698 CALL                             R115 2 1
      699 GETIMPORT                        R116 K135 [utf8.char]
      701 LOADK                            R117 K136 [57346]
      702 CALL                             R116 1 1
      703 GETIMPORT                        R117 K15 [require]
      705 GETTABLEKS                       R118 R1 K7 ["Src"]
      707 GETTABLEKS                       R118 R118 K20 ["Flags"]
      709 GETTABLEKS                       R118 R118 K137 ["getFFlagToolboxPublishFlowHelpers"]
      711 CALL                             R117 1 1
      712 GETIMPORT                        R118 K15 [require]
      714 GETTABLEKS                       R119 R1 K7 ["Src"]
      716 GETTABLEKS                       R119 R119 K20 ["Flags"]
      718 GETTABLEKS                       R119 R119 K138 ["getFFlagEnableUploadingMakeup"]
      720 CALL                             R118 1 1
      721 GETIMPORT                        R119 K15 [require]
      723 GETTABLEKS                       R120 R1 K7 ["Src"]
      725 GETTABLEKS                       R120 R120 K20 ["Flags"]
      727 GETTABLEKS                       R120 R120 K139 ["getFFlagEnableUploadingAvatarAnimations"]
      729 CALL                             R119 1 1
      730 GETIMPORT                        R120 K15 [require]
      732 GETTABLEKS                       R121 R1 K7 ["Src"]
      734 GETTABLEKS                       R121 R121 K20 ["Flags"]
      736 GETTABLEKS                       R121 R121 K140 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      738 CALL                             R120 1 1
      739 GETIMPORT                        R121 K15 [require]
      741 GETTABLEKS                       R122 R1 K7 ["Src"]
      743 GETTABLEKS                       R122 R122 K20 ["Flags"]
      745 GETTABLEKS                       R122 R122 K141 ["getFFlagEnableUpdateAvatarItem"]
      747 CALL                             R121 1 1
      748 GETIMPORT                        R122 K15 [require]
      750 GETTABLEKS                       R123 R1 K7 ["Src"]
      752 GETTABLEKS                       R123 R123 K20 ["Flags"]
      754 GETTABLEKS                       R123 R123 K142 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      756 CALL                             R122 1 1
      757 GETIMPORT                        R123 K15 [require]
      759 GETTABLEKS                       R124 R1 K7 ["Src"]
      761 GETTABLEKS                       R124 R124 K20 ["Flags"]
      763 GETTABLEKS                       R124 R124 K143 ["getFFlagDividerFoundationMigration"]
      765 CALL                             R123 1 1
      766 GETIMPORT                        R124 K15 [require]
      768 GETTABLEKS                       R125 R1 K7 ["Src"]
      770 GETTABLEKS                       R125 R125 K20 ["Flags"]
      772 GETTABLEKS                       R125 R125 K144 ["getFFlagToolboxDynamicUploadFee"]
      774 CALL                             R124 1 1
      775 GETIMPORT                        R125 K15 [require]
      777 GETTABLEKS                       R126 R1 K7 ["Src"]
      779 GETTABLEKS                       R126 R126 K20 ["Flags"]
      781 GETTABLEKS                       R126 R126 K145 ["getFFlagToolboxPublishOnApproval"]
      783 CALL                             R125 1 1
      784 NEWCLOSURE                       R126 P0
      785 CAPTURE                          VAL R10
      786 CAPTURE                          VAL R40
      787 CAPTURE                          VAL R118
      788 CAPTURE                          VAL R42
      789 CAPTURE                          VAL R39
      790 CAPTURE                          VAL R6
      791 CAPTURE                          VAL R36
      792 CAPTURE                          VAL R117
      793 CAPTURE                          VAL R18
      794 CAPTURE                          VAL R4
      795 CAPTURE                          VAL R5
      796 CAPTURE                          REF R48
      797 CAPTURE                          VAL R11
      798 CAPTURE                          VAL R58
      799 CAPTURE                          VAL R12
      800 CAPTURE                          VAL R26
      801 CAPTURE                          VAL R124
      802 CAPTURE                          VAL R47
      803 CAPTURE                          VAL R7
      804 CAPTURE                          VAL R9
      805 CAPTURE                          VAL R19
      806 CAPTURE                          VAL R120
      807 CAPTURE                          VAL R125
      808 CAPTURE                          VAL R119
      809 CAPTURE                          VAL R50
      810 CAPTURE                          VAL R51
      811 CAPTURE                          VAL R57
      812 CAPTURE                          VAL R38
      813 SETTABLEKS                       R126 R115 K146 ["init"]
      815 DUPCLOSURE                       R126 K147 [PROTO_71]
      816 SETTABLEKS                       R126 R115 K148 ["attachXButtonCallback"]
      818 DUPCLOSURE                       R126 K149 [PROTO_72]
      819 SETTABLEKS                       R126 R115 K150 ["detachXButtonCallback"]
      821 DUPCLOSURE                       R126 K151 [PROTO_73]
      822 CAPTURE                          VAL R39
      823 SETTABLEKS                       R126 R115 K152 ["isLoading"]
      825 DUPCLOSURE                       R126 K153 [PROTO_74]
      826 CAPTURE                          VAL R18
      827 DUPCLOSURE                       R127 K154 [PROTO_75]
      828 CAPTURE                          VAL R39
      829 CAPTURE                          VAL R58
      830 CAPTURE                          VAL R36
      831 CAPTURE                          VAL R42
      832 CAPTURE                          VAL R3
      833 CAPTURE                          VAL R44
      834 CAPTURE                          VAL R47
      835 CAPTURE                          VAL R18
      836 CAPTURE                          VAL R122
      837 CAPTURE                          VAL R126
      838 CAPTURE                          VAL R40
      839 SETTABLEKS                       R127 R115 K155 ["didUpdate"]
      841 DUPCLOSURE                       R127 K156 [PROTO_76]
      842 CAPTURE                          VAL R53
      843 SETTABLEKS                       R127 R115 K157 ["versionsGetPageRootItems"]
      845 DUPCLOSURE                       R127 K158 [PROTO_79]
      846 CAPTURE                          VAL R88
      847 SETTABLEKS                       R127 R115 K159 ["getDefaultBundleDataSharing"]
      849 DUPCLOSURE                       R127 K160 [PROTO_85]
      850 CAPTURE                          VAL R39
      851 CAPTURE                          VAL R42
      852 CAPTURE                          VAL R18
      853 CAPTURE                          VAL R124
      854 SETTABLEKS                       R127 R115 K161 ["getAssetInformation"]
      856 DUPCLOSURE                       R127 K162 [PROTO_87]
      857 CAPTURE                          VAL R42
      858 CAPTURE                          VAL R8
      859 CAPTURE                          VAL R46
      860 SETTABLEKS                       R127 R115 K163 ["didMount"]
      862 DUPCLOSURE                       R127 K164 [PROTO_88]
      863 SETTABLEKS                       R127 R115 K165 ["willUnmount"]
      865 DUPCLOSURE                       R127 K166 [PROTO_91]
      866 CAPTURE                          VAL R39
      867 CAPTURE                          VAL R58
      868 CAPTURE                          VAL R10
      869 CAPTURE                          VAL R42
      870 CAPTURE                          VAL R41
      871 CAPTURE                          VAL R119
      872 CAPTURE                          VAL R37
      873 CAPTURE                          VAL R44
      874 CAPTURE                          VAL R118
      875 CAPTURE                          VAL R40
      876 CAPTURE                          VAL R116
      877 CAPTURE                          VAL R6
      878 CAPTURE                          VAL R15
      879 CAPTURE                          VAL R35
      880 CAPTURE                          VAL R31
      881 CAPTURE                          VAL R32
      882 CAPTURE                          VAL R30
      883 CAPTURE                          VAL R22
      884 CAPTURE                          VAL R123
      885 CAPTURE                          VAL R14
      886 CAPTURE                          VAL R17
      887 CAPTURE                          VAL R114
      888 CAPTURE                          VAL R113
      889 CAPTURE                          VAL R23
      890 CAPTURE                          VAL R124
      891 CAPTURE                          VAL R120
      892 CAPTURE                          VAL R25
      893 CAPTURE                          VAL R122
      894 CAPTURE                          VAL R27
      895 CAPTURE                          VAL R121
      896 CAPTURE                          VAL R34
      897 CAPTURE                          VAL R33
      898 CAPTURE                          VAL R29
      899 CAPTURE                          VAL R28
      900 CAPTURE                          VAL R24
      901 SETTABLEKS                       R127 R115 K167 ["render"]
      903 MOVE                             R127 R112
      904 DUPTABLE                         R128 K177 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      905 GETTABLEKS                       R129 R111 K168 ["Focus"]
      907 SETTABLEKS                       R129 R128 K168 ["Focus"]
      909 JUMPIFNOT                        R5 ; [+2]
      910 MOVE                             R129 R105
      911 JUMP                             ; [+1]
      912 LOADNIL                          R129
      913 SETTABLEKS                       R129 R128 K169 ["IXP"]
      915 GETTABLEKS                       R129 R111 K170 ["Localization"]
      917 SETTABLEKS                       R129 R128 K170 ["Localization"]
      919 GETTABLEKS                       R129 R111 K171 ["Stylizer"]
      921 SETTABLEKS                       R129 R128 K171 ["Stylizer"]
      923 MOVE                             R130 R118
      924 CALL                             R130 0 1
      925 JUMPIFNOT                        R130 ; [+3]
      926 GETTABLEKS                       R129 R111 K172 ["Plugin"]
      928 JUMP                             ; [+1]
      929 LOADNIL                          R129
      930 SETTABLEKS                       R129 R128 K172 ["Plugin"]
      932 SETTABLEKS                       R106 R128 K173 ["Network"]
      934 SETTABLEKS                       R107 R128 K174 ["PublishService"]
      936 MOVE                             R130 R10
      937 CALL                             R130 0 1
      938 JUMPIFNOT                        R130 ; [+2]
      939 MOVE                             R129 R108
      940 JUMP                             ; [+1]
      941 LOADNIL                          R129
      942 SETTABLEKS                       R129 R128 K175 ["PluginGuiService"]
      944 MOVE                             R130 R10
      945 CALL                             R130 0 1
      946 JUMPIFNOT                        R130 ; [+2]
      947 MOVE                             R129 R109
      948 JUMP                             ; [+1]
      949 LOADNIL                          R129
      950 SETTABLEKS                       R129 R128 K176 ["ContentProvider"]
      952 CALL                             R127 1 1
      953 MOVE                             R128 R115
      954 CALL                             R127 1 1
      955 MOVE                             R115 R127
      956 DUPCLOSURE                       R127 K178 [PROTO_92]
      957 CAPTURE                          VAL R57
      958 CAPTURE                          VAL R122
      959 CAPTURE                          VAL R4
      960 CAPTURE                          VAL R5
      961 CAPTURE                          VAL R3
      962 CAPTURE                          VAL R125
      963 CAPTURE                          VAL R124
      964 CAPTURE                          VAL R46
      965 CAPTURE                          VAL R119
      966 CAPTURE                          VAL R10
      967 DUPCLOSURE                       R128 K179 [PROTO_137]
      968 CAPTURE                          VAL R62
      969 CAPTURE                          VAL R75
      970 CAPTURE                          VAL R85
      971 CAPTURE                          VAL R54
      972 CAPTURE                          VAL R95
      973 CAPTURE                          VAL R18
      974 CAPTURE                          VAL R117
      975 CAPTURE                          VAL R60
      976 CAPTURE                          VAL R61
      977 CAPTURE                          VAL R65
      978 CAPTURE                          VAL R66
      979 CAPTURE                          VAL R7
      980 CAPTURE                          VAL R63
      981 CAPTURE                          VAL R64
      982 CAPTURE                          VAL R90
      983 CAPTURE                          VAL R89
      984 CAPTURE                          VAL R39
      985 CAPTURE                          VAL R67
      986 CAPTURE                          VAL R70
      987 CAPTURE                          VAL R76
      988 CAPTURE                          VAL R125
      989 CAPTURE                          VAL R77
      990 CAPTURE                          VAL R92
      991 CAPTURE                          VAL R78
      992 CAPTURE                          VAL R93
      993 CAPTURE                          VAL R124
      994 CAPTURE                          VAL R104
      995 CAPTURE                          VAL R43
      996 CAPTURE                          VAL R84
      997 CAPTURE                          VAL R79
      998 CAPTURE                          VAL R71
      999 CAPTURE                          VAL R91
     1000 CAPTURE                          VAL R72
     1001 CAPTURE                          VAL R73
     1002 CAPTURE                          VAL R74
     1003 CAPTURE                          VAL R97
     1004 CAPTURE                          VAL R98
     1005 CAPTURE                          VAL R99
     1006 CAPTURE                          VAL R80
     1007 CAPTURE                          VAL R81
     1008 CAPTURE                          VAL R94
     1009 CAPTURE                          VAL R82
     1010 CAPTURE                          VAL R83
     1011 CAPTURE                          VAL R86
     1012 CAPTURE                          VAL R8
     1013 CAPTURE                          VAL R87
     1014 CAPTURE                          VAL R96
     1015 CAPTURE                          VAL R10
     1016 CAPTURE                          VAL R100
     1017 CAPTURE                          VAL R68
     1018 CAPTURE                          VAL R69
     1019 CAPTURE                          VAL R101
     1020 CAPTURE                          VAL R102
     1021 CAPTURE                          VAL R103
     1022 GETTABLEKS                       R129 R16 K180 ["connect"]
     1024 MOVE                             R130 R127
     1025 MOVE                             R131 R128
     1026 CALL                             R129 2 1
     1027 MOVE                             R130 R115
     1028 CALL                             R129 1 -1
     1029 CLOSEUPVALS                      R48
     1030 RETURN                           R129 -1
