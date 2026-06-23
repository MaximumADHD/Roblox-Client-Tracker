PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["confirmationDialogKey"]
        6 CALL                             R0 1 0
        7 DUPTABLE                         R0 K3 [{"confirmationDialogKey", "isConfirmationDialogEnabled"}]
        8 LOADK                            R1 K4 [""]
        9 SETTABLEKS                       R1 R0 K1 ["confirmationDialogKey"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["isConfirmationDialogEnabled"]
       14 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K2 [{"confirmationDialogKey", "isConfirmationDialogEnabled"}]
        1 LOADK                            R1 K3 [""]
        2 SETTABLEKS                       R1 R0 K0 ["confirmationDialogKey"]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["isConfirmationDialogEnabled"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"isPublishAssetsDialogEnabled"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isPublishAssetsDialogEnabled"]
        4 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K1 [{"isPublishAssetsDialogEnabled"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isPublishAssetsDialogEnabled"]
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"isShowRobuxSpendMessageBox"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isShowRobuxSpendMessageBox"]
        4 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K1 [{"isShowRobuxSpendMessageBox"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isShowRobuxSpendMessageBox"]
        4 RETURN                           R0 1

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
        0 DUPTABLE                         R0 K1 [{"isPublishAssetsDialogEnabled"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isPublishAssetsDialogEnabled"]
        4 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R0 K1 [{"isShowRobuxSpendMessageBox"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isShowRobuxSpendMessageBox"]
        4 RETURN                           R0 1

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
       44 JUMPIFNOT                        R8 ; [+23]
       45 JUMPIFNOT                        R3 ; [+22]
       46 GETTABLEKS                       R8 R0 K14 ["isAssetPublicOriginalValue"]
       48 JUMPIFEQKB                       R8 TRUE ; [+19]
       50 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       55 GETTABLEKS                       R9 R9 K17 ["Public"]
       57 JUMPIFNOTEQ                      R8 R9 ; [+10]
       59 DUPTABLE                         R8 K20 [{"confirmationDialogKey", "isConfirmationDialogEnabled"}]
       60 GETUPVAL                         R10 4
       61 ORK                              R9 R10 K21 [""]
       62 SETTABLEKS                       R9 R8 K18 ["confirmationDialogKey"]
       64 LOADB                            R9 1
       65 SETTABLEKS                       R9 R8 K19 ["isConfirmationDialogEnabled"]
       67 RETURN                           R8 1
       68 JUMPIFNOT                        R4 ; [+48]
       69 GETTABLEKS                       R8 R0 K15 ["isAssetPublic"]
       71 GETUPVAL                         R9 3
       72 GETTABLEKS                       R9 R9 K16 ["SHARING_KEYS"]
       74 GETTABLEKS                       R9 R9 K17 ["Public"]
       76 JUMPIFNOTEQ                      R8 R9 ; [+40]
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K22 ["FLOW_TYPE"]
       81 GETTABLEKS                       R8 R8 K23 ["UPLOAD_FLOW"]
       83 GETTABLEKS                       R9 R1 K24 ["screenFlowType"]
       85 JUMPIFNOTEQ                      R8 R9 ; [+31]
       87 LOADB                            R8 0
       88 GETIMPORT                        R9 K26 [pairs]
       90 GETTABLEKS                       R10 R1 K27 ["descendantPermissions"]
       92 CALL                             R9 1 3
       93 FORGPREP_NEXT                    R9
       94 GETUPVAL                         R14 5
       95 GETTABLEKS                       R14 R14 K15 ["isAssetPublic"]
       97 MOVE                             R15 R13
       98 CALL                             R14 1 1
       99 JUMPIF                           R14 ; [+2]
      100 LOADB                            R8 1
      101 JUMP                             ; [+2]
      102 FORGLOOP                         R9 2 ; [-9]
      104 JUMPIFNOT                        R8 ; [+6]
      105 GETUPVAL                         R9 0
      106 DUPCLOSURE                       R11 K28 [PROTO_13]
      107 NAMECALL                         R9 R9 K29 ["setState"]
      109 CALL                             R9 2 0
      110 RETURN                           R0 0
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R9 R9 K30 ["tryPublish"]
      114 LOADNIL                          R10
      115 CALL                             R9 1 0
      116 RETURN                           R0 0
      117 JUMPIF                           R5 ; [+1]
      118 JUMPIFNOT                        R6 ; [+44]
      119 JUMPIFEQKNIL                     R7 ; [+43]
      121 LOADN                            R8 0
      122 JUMPIFNOTLT                      R8 R7 ; [+40]
      124 GETUPVAL                         R8 6
      125 CALL                             R8 0 1
      126 JUMPIFNOT                        R8 ; [+30]
      127 GETTABLEKS                       R8 R1 K31 ["dispatchCheckAvatarAssetPrivacy"]
      129 GETTABLEKS                       R9 R1 K32 ["Network"]
      131 GETTABLEKS                       R9 R9 K33 ["networkInterface"]
      133 GETTABLEKS                       R11 R1 K34 ["instances"]
      135 GETTABLEN                        R10 R11 1
      136 DUPTABLE                         R11 K38 [{"publishService", "pluginGuiService", "contentProvider"}]
      137 GETTABLEKS                       R12 R1 K39 ["PublishService"]
      139 GETTABLEKS                       R12 R12 K35 ["publishService"]
      141 SETTABLEKS                       R12 R11 K35 ["publishService"]
      143 GETTABLEKS                       R12 R1 K40 ["PluginGuiService"]
      145 GETTABLEKS                       R12 R12 K36 ["pluginGuiService"]
      147 SETTABLEKS                       R12 R11 K36 ["pluginGuiService"]
      149 GETTABLEKS                       R12 R1 K41 ["ContentProvider"]
      151 GETTABLEKS                       R12 R12 K37 ["contentProvider"]
      153 SETTABLEKS                       R12 R11 K37 ["contentProvider"]
      155 CALL                             R8 3 0
      156 RETURN                           R0 0
      157 GETUPVAL                         R8 0
      158 DUPCLOSURE                       R10 K42 [PROTO_14]
      159 NAMECALL                         R8 R8 K29 ["setState"]
      161 CALL                             R8 2 0
      162 RETURN                           R0 0
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R8 R8 K30 ["tryPublish"]
      166 GETUPVAL                         R9 4
      167 CALL                             R8 1 0
      168 RETURN                           R0 0

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
      123 JUMPIFNOT                        R5 ; [+509]
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
      210 JUMPIFNOTEQ                      R5 R6 ; [+422]
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
      251 JUMPIFNOTEQ                      R5 R6 ; [+61]
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
      274 DUPTABLE                         R6 K66 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      275 GETTABLEKS                       R7 R1 K21 ["Network"]
      277 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      279 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      281 LOADN                            R7 0
      282 SETTABLEKS                       R7 R6 K23 ["assetId"]
      284 GETTABLEKS                       R7 R2 K24 ["name"]
      286 SETTABLEKS                       R7 R6 K24 ["name"]
      288 GETTABLEKS                       R8 R2 K26 ["description"]
      290 ORK                              R7 R8 K25 [""]
      291 SETTABLEKS                       R7 R6 K26 ["description"]
      293 GETUPVAL                         R7 12
      294 CALL                             R7 0 1
      295 SETTABLEKS                       R7 R6 K63 ["userId"]
      297 SETTABLEKS                       R3 R6 K3 ["groupId"]
      299 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      301 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      303 GETTABLEKS                       R7 R1 K67 ["uploadFee"]
      305 SETTABLEKS                       R7 R6 K64 ["expectedPrice"]
      307 GETTABLEKS                       R7 R1 K50 ["instances"]
      309 SETTABLEKS                       R7 R6 K65 ["instance"]
      311 CALL                             R5 1 0
      312 RETURN                           R0 0
      313 GETUPVAL                         R5 9
      314 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      316 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      318 CALL                             R5 1 1
      319 JUMPIFNOT                        R5 ; [+134]
      320 GETUPVAL                         R5 13
      321 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      323 GETTABLEKS                       R8 R2 K68 ["dataSharingEnabled"]
      325 GETTABLEKS                       R9 R2 K69 ["dataSharingToggled"]
      327 NAMECALL                         R5 R5 K70 ["getDataSharingLicenseTypes"]
      329 CALL                             R5 4 1
      330 GETTABLEKS                       R6 R1 K71 ["isUploadFeeEnabled"]
      332 JUMPIFNOT                        R6 ; [+62]
      333 GETTABLEKS                       R6 R1 K72 ["uploadCatalogItemWithFee"]
      335 GETTABLEKS                       R7 R1 K21 ["Network"]
      337 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      339 GETUPVAL                         R8 1
      340 GETTABLEKS                       R8 R8 K2 ["state"]
      342 GETTABLEKS                       R8 R8 K24 ["name"]
      344 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      346 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      348 MOVE                             R12 R10
      349 JUMPIFNOT                        R12 ; [+5]
      350 MOVE                             R12 R11
      351 JUMPIFNOT                        R12 ; [+3]
      352 GETTABLEKS                       R13 R11 K74 ["Name"]
      354 GETTABLE                         R12 R10 R13
      355 MOVE                             R13 R12
      356 JUMPIFNOT                        R13 ; [+2]
      357 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      359 MOVE                             R14 R13
      360 JUMPIFNOT                        R14 ; [+6]
      361 LOADB                            R14 0
      362 LENGTH                           R15 R13
      363 LOADN                            R16 0
      364 JUMPIFNOTLT                      R16 R15 ; [+2]
      366 GETTABLEN                        R14 R13 1
      367 JUMPIFNOT                        R14 ; [+8]
      368 GETIMPORT                        R15 K78 [string.gsub]
      370 MOVE                             R16 R14
      371 LOADK                            R17 K79 ["^%."]
      372 LOADK                            R18 K25 [""]
      373 CALL                             R15 3 1
      374 MOVE                             R9 R15
      375 JUMPIF                           R9 ; [+1]
      376 LOADK                            R9 K80 ["rbxm"]
      377 GETUPVAL                         R11 1
      378 GETTABLEKS                       R11 R11 K2 ["state"]
      380 GETTABLEKS                       R11 R11 K26 ["description"]
      382 ORK                              R10 R11 K25 [""]
      383 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      385 GETTABLEKS                       R12 R1 K50 ["instances"]
      387 MOVE                             R13 R3
      388 MOVE                             R14 R5
      389 GETTABLEKS                       R15 R1 K81 ["Localization"]
      391 GETTABLEKS                       R16 R1 K67 ["uploadFee"]
      393 CALL                             R6 10 0
      394 RETURN                           R0 0
      395 GETTABLEKS                       R6 R1 K82 ["uploadCatalogItem"]
      397 GETTABLEKS                       R7 R1 K21 ["Network"]
      399 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      401 GETUPVAL                         R8 1
      402 GETTABLEKS                       R8 R8 K2 ["state"]
      404 GETTABLEKS                       R8 R8 K24 ["name"]
      406 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      408 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      410 MOVE                             R12 R10
      411 JUMPIFNOT                        R12 ; [+5]
      412 MOVE                             R12 R11
      413 JUMPIFNOT                        R12 ; [+3]
      414 GETTABLEKS                       R13 R11 K74 ["Name"]
      416 GETTABLE                         R12 R10 R13
      417 MOVE                             R13 R12
      418 JUMPIFNOT                        R13 ; [+2]
      419 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      421 MOVE                             R14 R13
      422 JUMPIFNOT                        R14 ; [+6]
      423 LOADB                            R14 0
      424 LENGTH                           R15 R13
      425 LOADN                            R16 0
      426 JUMPIFNOTLT                      R16 R15 ; [+2]
      428 GETTABLEN                        R14 R13 1
      429 JUMPIFNOT                        R14 ; [+8]
      430 GETIMPORT                        R15 K78 [string.gsub]
      432 MOVE                             R16 R14
      433 LOADK                            R17 K79 ["^%."]
      434 LOADK                            R18 K25 [""]
      435 CALL                             R15 3 1
      436 MOVE                             R9 R15
      437 JUMPIF                           R9 ; [+1]
      438 LOADK                            R9 K80 ["rbxm"]
      439 GETUPVAL                         R11 1
      440 GETTABLEKS                       R11 R11 K2 ["state"]
      442 GETTABLEKS                       R11 R11 K26 ["description"]
      444 ORK                              R10 R11 K25 [""]
      445 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      447 GETTABLEKS                       R12 R1 K50 ["instances"]
      449 MOVE                             R13 R5
      450 GETTABLEKS                       R14 R1 K81 ["Localization"]
      452 CALL                             R6 8 0
      453 RETURN                           R0 0
      454 GETUPVAL                         R5 9
      455 GETTABLEKS                       R5 R5 K83 ["isUGCBundleType"]
      457 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      459 CALL                             R5 1 1
      460 JUMPIFNOT                        R5 ; [+55]
      461 LOADNIL                          R5
      462 GETTABLEKS                       R6 R2 K68 ["dataSharingEnabled"]
      464 JUMPIFNOT                        R6 ; [+16]
      465 GETTABLEKS                       R6 R2 K69 ["dataSharingToggled"]
      467 JUMPIFNOT                        R6 ; [+11]
      468 NEWTABLE                         R6 0 1
      470 GETUPVAL                         R7 14
      471 GETTABLEKS                       R7 R7 K84 ["DataSharingLicenseTypes"]
      473 GETTABLEKS                       R7 R7 K85 ["RobloxGlobal"]
      475 SETLIST                          R6 R7 1 [1]
      477 MOVE                             R5 R6
      478 JUMP                             ; [+2]
      479 NEWTABLE                         R5 0 0
      481 GETTABLEKS                       R6 R1 K86 ["uploadUGCBundleWithFee"]
      483 GETTABLEKS                       R7 R1 K21 ["Network"]
      485 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      487 GETTABLEKS                       R9 R1 K50 ["instances"]
      489 GETTABLEN                        R8 R9 1
      490 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      492 GETTABLEKS                       R10 R2 K24 ["name"]
      494 GETTABLEKS                       R12 R2 K26 ["description"]
      496 ORK                              R11 R12 K25 [""]
      497 GETTABLEKS                       R12 R1 K87 ["allowedBundleTypeSettings"]
      499 GETTABLEKS                       R13 R1 K81 ["Localization"]
      501 GETTABLEKS                       R14 R1 K67 ["uploadFee"]
      503 MOVE                             R15 R5
      504 GETTABLEKS                       R16 R1 K88 ["PublishService"]
      506 GETTABLEKS                       R16 R16 K89 ["publishService"]
      508 GETTABLEKS                       R18 R1 K90 ["groupBundlesUploadEnabledForUser"]
      510 JUMPIFNOT                        R18 ; [+2]
      511 MOVE                             R17 R3
      512 JUMP                             ; [+1]
      513 LOADNIL                          R17
      514 CALL                             R6 11 0
      515 RETURN                           R0 0
      516 GETUPVAL                         R5 9
      517 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      519 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      521 CALL                             R5 1 1
      522 JUMPIFNOT                        R5 ; [+30]
      523 GETUPVAL                         R5 11
      524 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      526 NAMECALL                         R5 R5 K59 ["isOverride"]
      528 CALL                             R5 2 1
      529 JUMPIFNOT                        R5 ; [+23]
      530 GETTABLEKS                       R5 R1 K91 ["overrideAsset"]
      532 GETTABLEKS                       R6 R1 K21 ["Network"]
      534 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      536 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      538 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      540 GETTABLEKS                       R8 R8 K74 ["Name"]
      542 GETTABLEKS                       R9 R1 K50 ["instances"]
      544 GETUPVAL                         R11 15
      545 CALL                             R11 0 1
      546 JUMPIFNOT                        R11 ; [+3]
      547 GETTABLEKS                       R10 R1 K81 ["Localization"]
      549 JUMP                             ; [+1]
      550 LOADNIL                          R10
      551 CALL                             R5 5 0
      552 RETURN                           R0 0
      553 GETTABLEKS                       R5 R1 K92 ["uploadMarketplaceItem"]
      555 DUPTABLE                         R6 K94 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      556 GETTABLEKS                       R7 R1 K21 ["Network"]
      558 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      560 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      562 LOADN                            R7 0
      563 SETTABLEKS                       R7 R6 K23 ["assetId"]
      565 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      567 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      569 GETTABLEKS                       R7 R2 K24 ["name"]
      571 SETTABLEKS                       R7 R6 K24 ["name"]
      573 GETTABLEKS                       R8 R2 K26 ["description"]
      575 ORK                              R7 R8 K25 [""]
      576 SETTABLEKS                       R7 R6 K26 ["description"]
      578 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      580 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      582 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      584 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      586 SETTABLEKS                       R3 R6 K3 ["groupId"]
      588 GETTABLEKS                       R7 R1 K50 ["instances"]
      590 SETTABLEKS                       R7 R6 K50 ["instances"]
      592 JUMPIFNOT                        R4 ; [+2]
      593 LOADB                            R7 1
      594 JUMP                             ; [+1]
      595 LOADNIL                          R7
      596 SETTABLEKS                       R7 R6 K93 ["isMarketplaceModelsAsPackagesEnabled"]
      598 GETTABLEKS                       R7 R2 K27 ["status"]
      600 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      602 GETTABLEKS                       R7 R2 K29 ["price"]
      604 SETTABLEKS                       R7 R6 K29 ["price"]
      606 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      608 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      610 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      612 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      614 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      616 JUMPIFNOT                        R8 ; [+5]
      617 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      619 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      621 JUMP                             ; [+1]
      622 LOADNIL                          R7
      623 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      625 GETUPVAL                         R8 15
      626 CALL                             R8 0 1
      627 JUMPIFNOT                        R8 ; [+3]
      628 GETTABLEKS                       R7 R1 K81 ["Localization"]
      630 JUMP                             ; [+1]
      631 LOADNIL                          R7
      632 CALL                             R5 2 0
      633 RETURN                           R0 0

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
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U15
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K0 ["props"]
       25 GETTABLEKS                       R4 R4 K1 ["changeTable"]
       27 MOVE                             R5 R4
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R6 K3 [next]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K0 ["props"]
       40 GETTABLEKS                       R6 R6 K4 ["resetUploadResult"]
       42 CALL                             R6 0 0
       43 GETUPVAL                         R6 0
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+264]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K5 ["state"]
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       52 GETTABLEKS                       R7 R7 K7 ["DOWNLOAD_FLOW"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K0 ["props"]
       57 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       59 JUMPIFNOTEQ                      R7 R8 ; [+16]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K0 ["props"]
       64 GETTABLEKS                       R7 R7 K9 ["dispatchDownloadFlow"]
       66 MOVE                             R8 R0
       67 GETTABLEKS                       R9 R6 K10 ["overrideAssetId"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K0 ["props"]
       72 GETTABLEKS                       R10 R10 K11 ["onClose"]
       74 CALL                             R7 3 0
       75 JUMP                             ; [+236]
       76 GETUPVAL                         R7 6
       77 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       79 GETTABLEKS                       R7 R7 K12 ["EDIT_FLOW"]
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R8 R8 K0 ["props"]
       84 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       86 JUMPIFNOTEQ                      R7 R8 ; [+76]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K0 ["props"]
       91 GETTABLEKS                       R7 R7 K13 ["dispatchEditFlow"]
       93 DUPTABLE                         R8 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       94 GETUPVAL                         R9 1
       95 GETTABLEKS                       R9 R9 K0 ["props"]
       97 GETTABLEKS                       R9 R9 K29 ["Network"]
       99 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      101 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      103 GETUPVAL                         R9 1
      104 GETTABLEKS                       R9 R9 K0 ["props"]
      106 GETTABLEKS                       R9 R9 K30 ["IXP"]
      108 SETTABLEKS                       R9 R8 K15 ["ixp"]
      110 GETUPVAL                         R9 1
      111 GETTABLEKS                       R9 R9 K0 ["props"]
      113 GETTABLEKS                       R9 R9 K16 ["assetId"]
      115 SETTABLEKS                       R9 R8 K16 ["assetId"]
      117 GETTABLEKS                       R9 R6 K16 ["assetId"]
      119 SETTABLEKS                       R9 R8 K17 ["stateAssetId"]
      121 GETTABLEKS                       R9 R6 K18 ["name"]
      123 SETTABLEKS                       R9 R8 K18 ["name"]
      125 GETTABLEKS                       R9 R6 K19 ["description"]
      127 SETTABLEKS                       R9 R8 K19 ["description"]
      129 GETTABLEKS                       R9 R6 K20 ["price"]
      131 SETTABLEKS                       R9 R8 K20 ["price"]
      133 GETTABLEKS                       R9 R6 K21 ["status"]
      135 SETTABLEKS                       R9 R8 K21 ["status"]
      137 GETTABLEKS                       R9 R6 K22 ["copyOn"]
      139 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      141 GETTABLEKS                       R9 R6 K23 ["copyChanged"]
      143 SETTABLEKS                       R9 R8 K23 ["copyChanged"]
      145 GETTABLEKS                       R9 R6 K24 ["commentOn"]
      147 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      149 GETTABLEKS                       R9 R6 K25 ["isAssetPublic"]
      151 SETTABLEKS                       R9 R8 K25 ["isAssetPublic"]
      153 GETTABLEKS                       R9 R6 K26 ["iconFile"]
      155 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      157 GETTABLEKS                       R9 R6 K27 ["assetMediaUpdateData"]
      159 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      161 CALL                             R7 1 0
      162 JUMP                             ; [+149]
      163 GETUPVAL                         R7 6
      164 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
      166 GETTABLEKS                       R7 R7 K31 ["UPLOAD_FLOW"]
      168 GETUPVAL                         R8 1
      169 GETTABLEKS                       R8 R8 K0 ["props"]
      171 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
      173 JUMPIFNOTEQ                      R7 R8 ; [+138]
      175 GETUPVAL                         R7 12
      176 GETUPVAL                         R9 1
      177 GETTABLEKS                       R9 R9 K0 ["props"]
      179 GETTABLEKS                       R9 R9 K32 ["assetTypeEnum"]
      181 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      183 GETTABLEKS                       R11 R6 K34 ["dataSharingToggled"]
      185 NAMECALL                         R7 R7 K35 ["getDataSharingLicenseTypes"]
      187 CALL                             R7 4 1
      188 GETUPVAL                         R8 1
      189 GETTABLEKS                       R8 R8 K0 ["props"]
      191 GETTABLEKS                       R8 R8 K36 ["dispatchUploadFlow"]
      193 DUPTABLE                         R9 K42 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled"}]
      194 GETUPVAL                         R10 1
      195 GETTABLEKS                       R10 R10 K0 ["props"]
      197 GETTABLEKS                       R10 R10 K29 ["Network"]
      199 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      201 SETTABLEKS                       R10 R9 K14 ["networkInterface"]
      203 GETUPVAL                         R10 1
      204 GETTABLEKS                       R10 R10 K0 ["props"]
      206 GETTABLEKS                       R10 R10 K43 ["Localization"]
      208 SETTABLEKS                       R10 R9 K37 ["localization"]
      210 GETUPVAL                         R10 1
      211 GETTABLEKS                       R10 R10 K0 ["props"]
      213 GETTABLEKS                       R10 R10 K44 ["PublishService"]
      215 GETTABLEKS                       R10 R10 K38 ["publishService"]
      217 SETTABLEKS                       R10 R9 K38 ["publishService"]
      219 GETUPVAL                         R10 1
      220 GETTABLEKS                       R10 R10 K0 ["props"]
      222 GETTABLEKS                       R10 R10 K30 ["IXP"]
      224 SETTABLEKS                       R10 R9 K15 ["ixp"]
      226 GETUPVAL                         R10 1
      227 GETTABLEKS                       R10 R10 K0 ["props"]
      229 GETTABLEKS                       R10 R10 K16 ["assetId"]
      231 SETTABLEKS                       R10 R9 K16 ["assetId"]
      233 GETUPVAL                         R11 1
      234 GETTABLEKS                       R11 R11 K0 ["props"]
      236 GETTABLEKS                       R11 R11 K39 ["groupId"]
      238 JUMPIFNOT                        R11 ; [+16]
      239 GETUPVAL                         R11 1
      240 GETTABLEKS                       R11 R11 K0 ["props"]
      242 GETTABLEKS                       R11 R11 K39 ["groupId"]
      244 GETUPVAL                         R12 2
      245 GETTABLEKS                       R12 R12 K45 ["None"]
      247 JUMPIFEQ                         R11 R12 ; [+7]
      249 GETUPVAL                         R10 1
      250 GETTABLEKS                       R10 R10 K0 ["props"]
      252 GETTABLEKS                       R10 R10 K39 ["groupId"]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R10
      256 SETTABLEKS                       R10 R9 K39 ["groupId"]
      258 GETTABLEKS                       R10 R6 K18 ["name"]
      260 SETTABLEKS                       R10 R9 K18 ["name"]
      262 GETTABLEKS                       R10 R6 K19 ["description"]
      264 SETTABLEKS                       R10 R9 K19 ["description"]
      266 GETTABLEKS                       R10 R6 K10 ["overrideAssetId"]
      268 SETTABLEKS                       R10 R9 K10 ["overrideAssetId"]
      270 GETTABLEKS                       R10 R6 K22 ["copyOn"]
      272 SETTABLEKS                       R10 R9 K22 ["copyOn"]
      274 GETTABLEKS                       R10 R6 K24 ["commentOn"]
      276 SETTABLEKS                       R10 R9 K24 ["commentOn"]
      278 GETTABLEKS                       R10 R6 K21 ["status"]
      280 SETTABLEKS                       R10 R9 K21 ["status"]
      282 GETTABLEKS                       R10 R6 K20 ["price"]
      284 SETTABLEKS                       R10 R9 K20 ["price"]
      286 GETTABLEKS                       R10 R6 K26 ["iconFile"]
      288 SETTABLEKS                       R10 R9 K26 ["iconFile"]
      290 GETTABLEKS                       R10 R6 K40 ["selectedColor"]
      292 SETTABLEKS                       R10 R9 K40 ["selectedColor"]
      294 GETTABLEKS                       R10 R6 K27 ["assetMediaUpdateData"]
      296 SETTABLEKS                       R10 R9 K27 ["assetMediaUpdateData"]
      298 SETTABLEKS                       R7 R9 K41 ["dataSharingLicenseTypes"]
      300 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      302 SETTABLEKS                       R10 R9 K33 ["dataSharingEnabled"]
      304 GETTABLEKS                       R10 R6 K34 ["dataSharingToggled"]
      306 SETTABLEKS                       R10 R9 K34 ["dataSharingToggled"]
      308 CALL                             R8 1 0
      309 JUMP                             ; [+2]
      310 MOVE                             R6 R1
      311 CALL                             R6 0 0
      312 JUMPIFNOT                        R5 ; [+43]
      313 MOVE                             R6 R2
      314 MOVE                             R7 R4
      315 CALL                             R6 1 0
      316 GETUPVAL                         R6 1
      317 GETTABLEKS                       R6 R6 K0 ["props"]
      319 GETTABLEKS                       R6 R6 K46 ["isPackageAsset"]
      321 JUMPIFNOT                        R6 ; [+34]
      322 GETUPVAL                         R6 1
      323 GETTABLEKS                       R6 R6 K0 ["props"]
      325 GETTABLEKS                       R6 R6 K47 ["assetConfigData"]
      327 GETTABLEKS                       R7 R6 K48 ["Id"]
      329 GETTABLEKS                       R8 R4 K49 ["VersionItemSelect"]
      331 JUMPIFNOT                        R8 ; [+3]
      332 GETTABLEKS                       R9 R4 K49 ["VersionItemSelect"]
      334 GETTABLEN                        R8 R9 1
      335 JUMPIFNOT                        R7 ; [+20]
      336 GETUPVAL                         R9 1
      337 GETTABLEKS                       R9 R9 K0 ["props"]
      339 GETTABLEKS                       R9 R9 K50 ["dispatchPutPackagePermissionsRequest"]
      341 GETUPVAL                         R10 1
      342 GETTABLEKS                       R10 R10 K0 ["props"]
      344 GETTABLEKS                       R10 R10 K29 ["Network"]
      346 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      348 MOVE                             R11 R7
      349 MOVE                             R12 R8
      350 GETUPVAL                         R13 1
      351 GETTABLEKS                       R13 R13 K0 ["props"]
      353 GETTABLEKS                       R13 R13 K43 ["Localization"]
      355 CALL                             R9 4 0
      356 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowChangeDiscardMessageBox"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isShowChangeDiscardMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       41 JUMPIFNOT                        R4 ; [+17]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U0
       44 JUMPIFNOT                        R0 ; [+9]
       45 GETUPVAL                         R6 0
       46 DUPTABLE                         R8 K13 [{"isShowChangeDiscardMessageBox"}]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K12 ["isShowChangeDiscardMessageBox"]
       50 NAMECALL                         R6 R6 K14 ["setState"]
       52 CALL                             R6 2 0
       53 RETURN                           R0 0
       54 GETIMPORT                        R6 K16 [spawn]
       56 MOVE                             R7 R5
       57 CALL                             R6 1 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["props"]
       62 GETTABLEKS                       R5 R5 K17 ["onClose"]
       64 CALL                             R5 0 0
       65 GETIMPORT                        R5 K19 [game]
       67 LOADK                            R7 K20 ["StudioAssetService"]
       68 NAMECALL                         R5 R5 K21 ["GetService"]
       70 CALL                             R5 2 1
       71 LOADB                            R7 0
       72 NAMECALL                         R5 R5 K22 ["FireOnUGCSubmitCompleted"]
       74 CALL                             R5 2 0
       75 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"isShowChangeDiscardMessageBox"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isShowChangeDiscardMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
       50 DUPTABLE                         R4 K15 [{"isShowChangeDiscardMessageBox"}]
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R4 K14 ["isShowChangeDiscardMessageBox"]
       54 NAMECALL                         R2 R2 K16 ["setState"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

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
        1 DUPTABLE                         R3 K2 [{"selectedColor", "showColorPickerRequiredError"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedColor"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["showColorPickerRequiredError"]
        7 NAMECALL                         R1 R1 K3 ["setState"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["setThumbnailSkinColor"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["props"]
       16 GETTABLEKS                       R2 R2 K6 ["Plugin"]
       18 NAMECALL                         R2 R2 K7 ["get"]
       20 CALL                             R2 1 1
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

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
       10 LOADN                            R2 255
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
       13 LOADN                            R5 255
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
       10 LOADN                            R3 255
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
       29 JUMPIFNOT                        R0 ; [+48]
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
       50 DUPTABLE                         R4 K20 [{"Text", "Font", "TextSize", "action"}]
       51 GETTABLEKS                       R5 R1 K12 ["Localization"]
       53 LOADK                            R7 K21 ["Common"]
       54 LOADK                            R8 K22 ["Close"]
       55 NAMECALL                         R5 R5 K15 ["getText"]
       57 CALL                             R5 3 1
       58 SETTABLEKS                       R5 R4 K18 ["Text"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K8 ["FONT"]
       63 SETTABLEKS                       R5 R4 K2 ["Font"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
       68 SETTABLEKS                       R5 R4 K1 ["TextSize"]
       70 LOADK                            R5 K23 ["yes"]
       71 SETTABLEKS                       R5 R4 K19 ["action"]
       73 SETLIST                          R3 R4 1 [1]
       75 SETTABLEKS                       R3 R2 K24 ["buttons"]
       77 RETURN                           R2 1
       78 GETTABLEKS                       R3 R1 K12 ["Localization"]
       80 LOADK                            R5 K25 ["General"]
       81 LOADK                            R6 K26 ["Discard"]
       82 NAMECALL                         R3 R3 K15 ["getText"]
       84 CALL                             R3 3 1
       85 SETTABLEKS                       R3 R2 K16 ["Title"]
       87 GETTABLEKS                       R3 R1 K12 ["Localization"]
       89 LOADK                            R5 K25 ["General"]
       90 LOADK                            R6 K27 ["DiscardMessage"]
       91 NAMECALL                         R3 R3 K15 ["getText"]
       93 CALL                             R3 3 1
       94 SETTABLEKS                       R3 R2 K18 ["Text"]
       96 NEWTABLE                         R3 0 2
       98 DUPTABLE                         R4 K20 [{"Text", "Font", "TextSize", "action"}]
       99 GETTABLEKS                       R5 R1 K12 ["Localization"]
      101 LOADK                            R7 K25 ["General"]
      102 LOADK                            R8 K28 ["SearchOptionsCancel"]
      103 NAMECALL                         R5 R5 K15 ["getText"]
      105 CALL                             R5 3 1
      106 SETTABLEKS                       R5 R4 K18 ["Text"]
      108 GETUPVAL                         R5 1
      109 GETTABLEKS                       R5 R5 K8 ["FONT"]
      111 SETTABLEKS                       R5 R4 K2 ["Font"]
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R5 R5 K7 ["FONT_SIZE_MEDIUM"]
      116 SETTABLEKS                       R5 R4 K1 ["TextSize"]
      118 LOADK                            R5 K29 ["no"]
      119 SETTABLEKS                       R5 R4 K19 ["action"]
      121 DUPTABLE                         R5 K20 [{"Text", "Font", "TextSize", "action"}]
      122 GETTABLEKS                       R6 R1 K12 ["Localization"]
      124 LOADK                            R8 K25 ["General"]
      125 LOADK                            R9 K26 ["Discard"]
      126 NAMECALL                         R6 R6 K15 ["getText"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K18 ["Text"]
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K8 ["FONT"]
      134 SETTABLEKS                       R6 R5 K2 ["Font"]
      136 GETUPVAL                         R6 1
      137 GETTABLEKS                       R6 R6 K7 ["FONT_SIZE_MEDIUM"]
      139 SETTABLEKS                       R6 R5 K1 ["TextSize"]
      141 LOADK                            R6 K23 ["yes"]
      142 SETTABLEKS                       R6 R5 K19 ["action"]
      144 SETLIST                          R3 R4 2 [1]
      146 SETTABLEKS                       R3 R2 K24 ["buttons"]
      148 RETURN                           R2 1

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
       94 LOADN                            R3 255
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
      261 CAPTURE                          VAL R1
      262 SETTABLEKS                       R2 R0 K65 ["tryPublish"]
      264 NEWCLOSURE                       R2 P9
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R1
      267 CAPTURE                          UPVAL U4
      268 SETTABLEKS                       R2 R0 K66 ["tryCancel"]
      270 NEWCLOSURE                       R2 P10
      271 CAPTURE                          VAL R0
      272 SETTABLEKS                       R2 R0 K67 ["tryCancelNoYield"]
      274 NEWCLOSURE                       R2 P11
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R2 R0 K68 ["tryCancelWithYield"]
      278 NEWCLOSURE                       R2 P12
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R2 R0 K69 ["onMessageBoxClosed"]
      282 NEWCLOSURE                       R2 P13
      283 CAPTURE                          UPVAL U17
      284 CAPTURE                          VAL R0
      285 CAPTURE                          UPVAL U18
      286 SETTABLEKS                       R2 R0 K70 ["tryCloseAssetConfig"]
      288 NEWCLOSURE                       R2 P14
      289 CAPTURE                          VAL R0
      290 NEWCLOSURE                       R3 P15
      291 CAPTURE                          VAL R0
      292 CAPTURE                          UPVAL U19
      293 SETTABLEKS                       R3 R0 K71 ["onNameChange"]
      295 NEWCLOSURE                       R3 P16
      296 CAPTURE                          VAL R0
      297 CAPTURE                          UPVAL U19
      298 SETTABLEKS                       R3 R0 K72 ["onDescChange"]
      300 NEWCLOSURE                       R3 P17
      301 CAPTURE                          VAL R0
      302 SETTABLEKS                       R3 R0 K73 ["onStatusChange"]
      304 NEWCLOSURE                       R3 P18
      305 CAPTURE                          VAL R0
      306 SETTABLEKS                       R3 R0 K74 ["onPriceChange"]
      308 NEWCLOSURE                       R3 P19
      309 CAPTURE                          VAL R0
      310 CAPTURE                          UPVAL U8
      311 SETTABLEKS                       R3 R0 K75 ["onAccessChange"]
      313 NEWCLOSURE                       R3 P20
      314 CAPTURE                          VAL R0
      315 SETTABLEKS                       R3 R0 K76 ["onDataConsentToggleClick"]
      317 NEWCLOSURE                       R3 P21
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R3 R0 K77 ["toggleCopy"]
      321 NEWCLOSURE                       R3 P22
      322 CAPTURE                          VAL R0
      323 SETTABLEKS                       R3 R0 K78 ["toggleComment"]
      325 NEWCLOSURE                       R3 P23
      326 CAPTURE                          VAL R0
      327 SETTABLEKS                       R3 R0 K79 ["toggleDeleteLocal"]
      329 GETUPVAL                         R3 20
      330 CALL                             R3 0 1
      331 JUMPIFNOT                        R3 ; [+9]
      332 NEWCLOSURE                       R3 P24
      333 CAPTURE                          VAL R0
      334 CAPTURE                          UPVAL U8
      335 SETTABLEKS                       R3 R0 K80 ["onAnimationSelectionChanged"]
      337 NEWCLOSURE                       R3 P25
      338 CAPTURE                          VAL R0
      339 SETTABLEKS                       R3 R0 K81 ["onanimationSectionValidityChanged"]
      341 GETUPVAL                         R4 2
      342 CALL                             R4 0 1
      343 JUMPIFNOT                        R4 ; [+4]
      344 NEWCLOSURE                       R3 P26
      345 CAPTURE                          VAL R0
      346 CAPTURE                          UPVAL U3
      347 JUMP                             ; [+1]
      348 LOADNIL                          R3
      349 SETTABLEKS                       R3 R0 K82 ["onSelectedColorChange"]
      351 NEWCLOSURE                       R3 P27
      352 CAPTURE                          VAL R0
      353 CAPTURE                          UPVAL U17
      354 CAPTURE                          UPVAL U18
      355 SETTABLEKS                       R3 R0 K83 ["versionsOnDescClicked"]
      357 NEWCLOSURE                       R3 P28
      358 CAPTURE                          VAL R0
      359 CAPTURE                          UPVAL U21
      360 CAPTURE                          UPVAL U22
      361 SETTABLEKS                       R3 R0 K84 ["versionsSaveInput"]
      363 NEWCLOSURE                       R3 P29
      364 CAPTURE                          VAL R0
      365 CAPTURE                          UPVAL U1
      366 SETTABLEKS                       R3 R0 K85 ["versionsSetStates"]
      368 NEWCLOSURE                       R3 P30
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R3 R0 K86 ["versionsCloseInput"]
      372 NEWCLOSURE                       R3 P31
      373 CAPTURE                          VAL R0
      374 SETTABLEKS                       R3 R0 K87 ["setVersionError"]
      376 NEWCLOSURE                       R3 P32
      377 CAPTURE                          VAL R0
      378 SETTABLEKS                       R3 R0 K88 ["versionsSetPreviousInput"]
      380 NEWCLOSURE                       R3 P33
      381 CAPTURE                          VAL R0
      382 SETTABLEKS                       R3 R0 K89 ["versionsOnPageChange"]
      384 NEWCLOSURE                       R3 P34
      385 CAPTURE                          VAL R0
      386 CAPTURE                          VAL R1
      387 SETTABLEKS                       R3 R0 K90 ["onTabSelect"]
      389 NEWCLOSURE                       R3 P35
      390 CAPTURE                          VAL R0
      391 SETTABLEKS                       R3 R0 K91 ["onOverrideAssetSelected"]
      393 NEWCLOSURE                       R3 P36
      394 CAPTURE                          UPVAL U3
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R3 R0 K92 ["chooseThumbnail"]
      398 NEWCLOSURE                       R3 P37
      399 CAPTURE                          VAL R0
      400 SETTABLEKS                       R3 R0 K93 ["onSharingChanged"]
      402 NEWCLOSURE                       R3 P38
      403 CAPTURE                          VAL R0
      404 SETTABLEKS                       R3 R0 K94 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      406 NEWCLOSURE                       R3 P39
      407 CAPTURE                          VAL R0
      408 CAPTURE                          UPVAL U23
      409 SETTABLEKS                       R3 R0 K95 ["getPublishingRequirements"]
      411 NEWCLOSURE                       R3 P40
      412 CAPTURE                          VAL R0
      413 SETTABLEKS                       R3 R0 K96 ["onAdditionalImagesChanged"]
      415 NEWCLOSURE                       R3 P41
      416 CAPTURE                          UPVAL U3
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R3 R0 K97 ["isValidCatalogAsset"]
      420 NEWCLOSURE                       R3 P42
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R3 R0 K98 ["validVersionDescriptions"]
      424 NEWCLOSURE                       R3 P43
      425 CAPTURE                          VAL R0
      426 CAPTURE                          UPVAL U1
      427 CAPTURE                          UPVAL U24
      428 SETTABLEKS                       R3 R0 K99 ["getMessageBoxProps"]
      430 RETURN                           R0 0

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
       24 JUMPIFNOTEQ                      R3 R4 ; [+225]
       26 GETTABLEKS                       R3 R0 K1 ["props"]
       28 GETTABLEKS                       R3 R3 K6 ["assetConfigData"]
       30 GETIMPORT                        R4 K8 [next]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K9 ["state"]
       38 GETTABLEKS                       R4 R4 K10 ["dispatchGetFunction"]
       40 JUMPIF                           R4 ; [+86]
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
       70 JUMPIFNOTEQ                      R6 R7 ; [+19]
       72 GETTABLEKS                       R6 R4 K16 ["username"]
       74 JUMPIF                           R6 ; [+15]
       75 GETTABLEKS                       R6 R0 K1 ["props"]
       77 GETTABLEKS                       R6 R6 K17 ["dispatchGetUsername"]
       79 GETTABLEKS                       R7 R4 K18 ["targetId"]
       81 CALL                             R6 1 0
       82 DUPTABLE                         R8 K19 [{"dispatchGetFunction"}]
       83 LOADB                            R9 1
       84 SETTABLEKS                       R9 R8 K10 ["dispatchGetFunction"]
       86 NAMECALL                         R6 R0 K20 ["setState"]
       88 CALL                             R6 2 0
       89 JUMP                             ; [+37]
       90 GETTABLEKS                       R6 R4 K13 ["typeId"]
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R7 R7 K14 ["OWNER_TYPES"]
       95 GETTABLEKS                       R7 R7 K21 ["Group"]
       97 JUMPIFNOTEQ                      R6 R7 ; [+29]
       99 JUMPIFNOT                        R5 ; [+27]
      100 GETTABLEKS                       R6 R0 K1 ["props"]
      102 GETTABLEKS                       R6 R6 K22 ["dispatchGetGroupMetadata"]
      104 GETTABLEKS                       R7 R4 K18 ["targetId"]
      106 CALL                             R6 1 0
      107 GETTABLEKS                       R6 R0 K1 ["props"]
      109 GETTABLEKS                       R6 R6 K23 ["dispatchGetGroupRoleInfo"]
      111 GETTABLEKS                       R7 R0 K1 ["props"]
      113 GETTABLEKS                       R7 R7 K24 ["Network"]
      115 GETTABLEKS                       R7 R7 K25 ["networkInterface"]
      117 GETTABLEKS                       R8 R4 K18 ["targetId"]
      119 CALL                             R6 2 0
      120 DUPTABLE                         R8 K19 [{"dispatchGetFunction"}]
      121 LOADB                            R9 1
      122 SETTABLEKS                       R9 R8 K10 ["dispatchGetFunction"]
      124 NAMECALL                         R6 R0 K20 ["setState"]
      126 CALL                             R6 2 0
      127 GETTABLEKS                       R4 R0 K26 ["init"]
      129 JUMPIF                           R4 ; [+168]
      130 LOADNIL                          R4
      131 GETTABLEKS                       R5 R3 K27 ["AssetPermissions"]
      133 JUMPIFNOT                        R5 ; [+7]
      134 GETUPVAL                         R5 2
      135 GETTABLEKS                       R5 R5 K28 ["isAssetPublic"]
      137 GETTABLEKS                       R6 R3 K27 ["AssetPermissions"]
      139 CALL                             R5 1 1
      140 MOVE                             R4 R5
      141 GETTABLEKS                       R5 R3 K29 ["Status"]
      143 GETTABLEKS                       R6 R3 K30 ["IsCopyingAllowed"]
      145 JUMPIF                           R6 ; [+5]
      146 GETUPVAL                         R6 3
      147 GETTABLEKS                       R6 R6 K31 ["isOnSale"]
      149 MOVE                             R7 R5
      150 CALL                             R6 1 1
      151 GETTABLEKS                       R7 R0 K1 ["props"]
      153 GETTABLEKS                       R7 R7 K32 ["fiatProduct"]
      155 JUMPIFNOT                        R7 ; [+6]
      156 GETTABLEKS                       R7 R0 K1 ["props"]
      158 GETTABLEKS                       R7 R7 K32 ["fiatProduct"]
      160 GETTABLEKS                       R6 R7 K33 ["purchasable"]
      162 LOADNIL                          R7
      163 GETUPVAL                         R8 4
      164 JUMPIFNOT                        R8 ; [+14]
      165 GETTABLEKS                       R8 R0 K1 ["props"]
      167 GETTABLEKS                       R7 R8 K34 ["isPublishingAllowed"]
      169 GETTABLEKS                       R8 R0 K1 ["props"]
      171 GETTABLEKS                       R8 R8 K0 ["isPackageAsset"]
      173 JUMPIFNOT                        R8 ; [+5]
      174 GETTABLEKS                       R8 R0 K1 ["props"]
      176 GETTABLEKS                       R8 R8 K36 ["isPackageMarketplacePublishAllowed"]
      178 ORK                              R7 R8 K35 [False]
      179 GETUPVAL                         R8 5
      180 GETTABLEKS                       R8 R8 K37 ["getRestrictionThatAppliesToAsset"]
      182 GETTABLEKS                       R9 R0 K1 ["props"]
      184 GETTABLEKS                       R9 R9 K38 ["publishingRestrictions"]
      186 CALL                             R8 1 1
      187 DUPTABLE                         R11 K51 [{"assetId", "name", "description", "owner", "allowCopy", "copyOn", "copyOnOriginalValue", "commentOn", "price", "status", "isAssetPublic", "isAssetPublicOriginalValue", "publishingRestriction"}]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K52 ["isMarketplaceAsset"]
      191 GETTABLEKS                       R14 R0 K1 ["props"]
      193 GETTABLEKS                       R14 R14 K53 ["assetTypeEnum"]
      195 CALL                             R13 1 1
      196 JUMPIFNOT                        R13 ; [+3]
      197 GETTABLEKS                       R12 R3 K54 ["Id"]
      199 JUMPIF                           R12 ; [+2]
      200 GETTABLEKS                       R12 R3 K55 ["AssetId"]
      202 SETTABLEKS                       R12 R11 K39 ["assetId"]
      204 GETTABLEKS                       R12 R3 K56 ["Name"]
      206 SETTABLEKS                       R12 R11 K40 ["name"]
      208 GETTABLEKS                       R12 R3 K57 ["Description"]
      210 SETTABLEKS                       R12 R11 K41 ["description"]
      212 GETTABLEKS                       R12 R3 K11 ["Creator"]
      214 SETTABLEKS                       R12 R11 K42 ["owner"]
      216 GETUPVAL                         R13 4
      217 JUMPIFNOT                        R13 ; [+2]
      218 OR                               R12 R6 R7
      219 JUMP                             ; [+2]
      220 GETTABLEKS                       R12 R3 K58 ["IsPublicDomainEnabled"]
      222 SETTABLEKS                       R12 R11 K43 ["allowCopy"]
      224 SETTABLEKS                       R6 R11 K44 ["copyOn"]
      226 SETTABLEKS                       R6 R11 K45 ["copyOnOriginalValue"]
      228 GETTABLEKS                       R12 R3 K59 ["EnableComments"]
      230 SETTABLEKS                       R12 R11 K46 ["commentOn"]
      232 LOADNIL                          R12
      233 SETTABLEKS                       R12 R11 K47 ["price"]
      235 SETTABLEKS                       R5 R11 K48 ["status"]
      237 SETTABLEKS                       R4 R11 K28 ["isAssetPublic"]
      239 SETTABLEKS                       R4 R11 K49 ["isAssetPublicOriginalValue"]
      241 SETTABLEKS                       R8 R11 K50 ["publishingRestriction"]
      243 NAMECALL                         R9 R0 K20 ["setState"]
      245 CALL                             R9 2 0
      246 LOADB                            R9 1
      247 SETTABLEKS                       R9 R0 K26 ["init"]
      249 JUMP                             ; [+48]
      250 GETTABLEKS                       R3 R0 K1 ["props"]
      252 GETTABLEKS                       R3 R3 K60 ["isVerifiedCreator"]
      254 JUMPIFEQKNIL                     R3 ; [+21]
      256 GETTABLEKS                       R3 R0 K9 ["state"]
      258 GETTABLEKS                       R3 R3 K43 ["allowCopy"]
      260 GETTABLEKS                       R4 R0 K1 ["props"]
      262 GETTABLEKS                       R4 R4 K60 ["isVerifiedCreator"]
      264 JUMPIFEQ                         R3 R4 ; [+11]
      266 DUPTABLE                         R5 K61 [{"allowCopy"}]
      267 GETTABLEKS                       R6 R0 K1 ["props"]
      269 GETTABLEKS                       R6 R6 K60 ["isVerifiedCreator"]
      271 SETTABLEKS                       R6 R5 K43 ["allowCopy"]
      273 NAMECALL                         R3 R0 K20 ["setState"]
      275 CALL                             R3 2 0
      276 GETTABLEKS                       R3 R0 K1 ["props"]
      278 GETTABLEKS                       R3 R3 K3 ["screenFlowType"]
      280 GETUPVAL                         R4 0
      281 GETTABLEKS                       R4 R4 K4 ["FLOW_TYPE"]
      283 GETTABLEKS                       R4 R4 K62 ["UPLOAD_FLOW"]
      285 JUMPIFNOTEQ                      R3 R4 ; [+12]
      287 GETTABLEKS                       R3 R1 K53 ["assetTypeEnum"]
      289 GETTABLEKS                       R4 R0 K1 ["props"]
      291 GETTABLEKS                       R4 R4 K53 ["assetTypeEnum"]
      293 JUMPIFEQ                         R3 R4 ; [+4]
      295 NAMECALL                         R3 R0 K63 ["getAssetInformation"]
      297 CALL                             R3 1 0
      298 GETTABLEKS                       R3 R2 K64 ["versionsCurrentItem"]
      300 GETUPVAL                         R5 6
      301 CALL                             R5 0 1
      302 JUMPIFNOT                        R5 ; [+5]
      303 GETTABLEKS                       R4 R0 K1 ["props"]
      305 GETTABLEKS                       R4 R4 K65 ["versionHistoryWithDescriptions"]
      307 JUMP                             ; [+4]
      308 GETTABLEKS                       R4 R0 K1 ["props"]
      310 GETTABLEKS                       R4 R4 K66 ["versionHistory"]
      312 GETIMPORT                        R5 K8 [next]
      314 MOVE                             R6 R3
      315 CALL                             R5 1 1
      316 JUMPIF                           R5 ; [+72]
      317 JUMPIFNOT                        R4 ; [+71]
      318 NEWTABLE                         R5 0 0
      320 GETIMPORT                        R6 K68 [ipairs]
      322 MOVE                             R7 R4
      323 CALL                             R6 1 3
      324 FORGPREP_INEXT                   R6
      325 GETUPVAL                         R12 6
      326 CALL                             R12 0 1
      327 JUMPIFNOT                        R12 ; [+4]
      328 GETTABLEKS                       R12 R10 K70 ["versionDescription"]
      330 ORK                              R11 R12 K69 [""]
      331 JUMP                             ; [+2]
      332 GETTABLEKS                       R11 R10 K70 ["versionDescription"]
      334 GETTABLEKS                       R12 R10 K71 ["creatorTargetId"]
      336 GETTABLEKS                       R13 R10 K72 ["creatorType"]
      338 GETTABLEKS                       R14 R10 K73 ["assetVersionNumber"]
      340 DUPTABLE                         R15 K77 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      341 GETTABLEKS                       R16 R10 K73 ["assetVersionNumber"]
      343 SETTABLEKS                       R16 R15 K74 ["versionColumn"]
      345 DUPTABLE                         R16 K80 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      346 SETTABLEKS                       R11 R16 K70 ["versionDescription"]
      348 GETTABLEKS                       R17 R10 K78 ["created"]
      350 SETTABLEKS                       R17 R16 K78 ["created"]
      352 GETTABLEKS                       R17 R10 K73 ["assetVersionNumber"]
      354 SETTABLEKS                       R17 R16 K73 ["assetVersionNumber"]
      356 SETTABLEKS                       R12 R16 K79 ["creatorId"]
      358 SETTABLEKS                       R13 R16 K72 ["creatorType"]
      360 SETTABLEKS                       R16 R15 K75 ["descriptionColumn"]
      362 GETTABLEKS                       R16 R10 K73 ["assetVersionNumber"]
      364 SETTABLEKS                       R16 R15 K76 ["restoreColumn"]
      366 SETTABLE                         R15 R5 R14
      367 FORGLOOP                         R6 2 [inext] ; [-43]
      369 DUPTABLE                         R8 K83 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      370 GETUPVAL                         R9 7
      371 MOVE                             R10 R4
      372 CALL                             R9 1 1
      373 SETTABLEKS                       R9 R8 K64 ["versionsCurrentItem"]
      375 SETTABLEKS                       R5 R8 K81 ["versionsRootItems"]
      377 LOADN                            R11 1
      378 GETUPVAL                         R12 8
      379 GETTABLEKS                       R12 R12 K84 ["VERSIONS_ROWS_PER_PAGE"]
      381 NAMECALL                         R9 R0 K85 ["versionsGetPageRootItems"]
      383 CALL                             R9 3 1
      384 SETTABLEKS                       R9 R8 K82 ["versionsPageRootItems"]
      386 NAMECALL                         R6 R0 K20 ["setState"]
      388 CALL                             R6 2 0
      389 RETURN                           R0 0

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
       20 LOADN                            R7 255
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
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["status"]
        4 RETURN                           R0 1

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
       35 JUMPIFNOT                        R1 ; [+299]
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
      108 JUMPIF                           R6 ; [+226]
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
      220 JUMPIFNOT                        R6 ; [+17]
      221 GETTABLEKS                       R6 R0 K0 ["props"]
      223 GETTABLEKS                       R6 R6 K33 ["getItemUploadFee"]
      225 GETTABLEKS                       R7 R0 K0 ["props"]
      227 GETTABLEKS                       R7 R7 K13 ["Network"]
      229 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      231 GETTABLEKS                       R8 R0 K0 ["props"]
      233 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      235 LOADB                            R9 0
      236 CALL                             R6 3 0
      237 JUMP                             ; [+29]
      238 GETUPVAL                         R6 1
      239 GETTABLEKS                       R6 R6 K34 ["isUGCBundleType"]
      241 GETTABLEKS                       R7 R0 K0 ["props"]
      243 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      245 CALL                             R6 1 1
      246 JUMPIFNOT                        R6 ; [+17]
      247 GETTABLEKS                       R6 R0 K0 ["props"]
      249 GETTABLEKS                       R6 R6 K33 ["getItemUploadFee"]
      251 GETTABLEKS                       R7 R0 K0 ["props"]
      253 GETTABLEKS                       R7 R7 K13 ["Network"]
      255 GETTABLEKS                       R7 R7 K14 ["networkInterface"]
      257 GETTABLEKS                       R8 R0 K0 ["props"]
      259 GETTABLEKS                       R8 R8 K11 ["assetTypeEnum"]
      261 LOADB                            R9 1
      262 CALL                             R6 3 0
      263 JUMP                             ; [+3]
      264 GETTABLEKS                       R6 R0 K35 ["getPublishingRequirements"]
      266 CALL                             R6 0 0
      267 GETTABLEKS                       R6 R0 K0 ["props"]
      269 GETTABLEKS                       R6 R6 K36 ["dispatchSetDescendantPermissions"]
      271 NEWTABLE                         R7 0 0
      273 CALL                             R6 1 0
      274 DUPTABLE                         R8 K38 [{"descendantIds"}]
      275 NEWTABLE                         R9 0 0
      277 SETTABLEKS                       R9 R8 K37 ["descendantIds"]
      279 NAMECALL                         R6 R0 K25 ["setState"]
      281 CALL                             R6 2 0
      282 NEWTABLE                         R6 0 0
      284 JUMPIFNOT                        R2 ; [+50]
      285 GETTABLEKS                       R7 R0 K0 ["props"]
      287 GETTABLEKS                       R7 R7 K11 ["assetTypeEnum"]
      289 GETIMPORT                        R8 K42 [Enum.AssetType.Model]
      291 JUMPIFNOTEQ                      R7 R8 ; [+43]
      293 GETIMPORT                        R7 K44 [pairs]
      295 MOVE                             R8 R2
      296 CALL                             R7 1 3
      297 FORGPREP_NEXT                    R7
      298 NAMECALL                         R12 R11 K45 ["GetDescendants"]
      300 CALL                             R12 1 1
      301 GETIMPORT                        R13 K44 [pairs]
      303 MOVE                             R14 R12
      304 CALL                             R13 1 3
      305 FORGPREP_NEXT                    R13
      306 LOADK                            R20 K46 ["Sound"]
      307 NAMECALL                         R18 R17 K47 ["IsA"]
      309 CALL                             R18 2 1
      310 JUMPIFNOT                        R18 ; [+14]
      311 GETIMPORT                        R18 K50 [string.gsub]
      313 GETTABLEKS                       R19 R17 K51 ["SoundId"]
      315 LOADK                            R20 K52 ["rbxassetid://"]
      316 LOADK                            R21 K28 [""]
      317 CALL                             R18 3 1
      318 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      320 MOVE                             R20 R6
      321 MOVE                             R21 R18
      322 GETIMPORT                        R19 K55 [table.insert]
      324 CALL                             R19 2 0
      325 FORGLOOP                         R13 2 ; [-20]
      327 FORGLOOP                         R7 2 ; [-30]
      329 DUPTABLE                         R9 K38 [{"descendantIds"}]
      330 SETTABLEKS                       R6 R9 K37 ["descendantIds"]
      332 NAMECALL                         R7 R0 K25 ["setState"]
      334 CALL                             R7 2 0
      335 RETURN                           R0 0

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
      275 SUBRK                            R42 R63 K43 ["isAssetTypeSelectionAllowed"]
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
      462 DUPTABLE                         R72 K103 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      463 SETTABLEKS                       R4 R72 K3 ["Size"]
      465 LOADN                            R73 0
      466 SETTABLEKS                       R73 R72 K100 ["BackgroundTransparency"]
      468 GETTABLEKS                       R73 R3 K104 ["assetConfig"]
      470 GETTABLEKS                       R73 R73 K105 ["backgroundColor"]
      472 SETTABLEKS                       R73 R72 K101 ["BackgroundColor3"]
      474 LOADN                            R73 0
      475 SETTABLEKS                       R73 R72 K102 ["BorderSizePixel"]
      477 DUPTABLE                         R73 K113 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      478 GETUPVAL                         R74 12
      479 GETTABLEKS                       R74 R74 K98 ["createElement"]
      481 LOADK                            R75 K106 ["UIListLayout"]
      482 DUPTABLE                         R76 K119 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      483 GETIMPORT                        R77 K121 [Enum.FillDirection.Vertical]
      485 SETTABLEKS                       R77 R76 K114 ["FillDirection"]
      487 GETIMPORT                        R77 K123 [Enum.HorizontalAlignment.Left]
      489 SETTABLEKS                       R77 R76 K115 ["HorizontalAlignment"]
      491 GETIMPORT                        R77 K125 [Enum.VerticalAlignment.Bottom]
      493 SETTABLEKS                       R77 R76 K116 ["VerticalAlignment"]
      495 GETIMPORT                        R77 K127 [Enum.SortOrder.LayoutOrder]
      497 SETTABLEKS                       R77 R76 K117 ["SortOrder"]
      499 GETIMPORT                        R77 K130 [UDim.new]
      501 LOADN                            R78 0
      502 LOADN                            R79 0
      503 CALL                             R77 2 1
      504 SETTABLEKS                       R77 R76 K118 ["Padding"]
      506 CALL                             R74 2 1
      507 SETTABLEKS                       R74 R73 K106 ["UIListLayout"]
      509 MOVE                             R74 R20
      510 JUMPIFNOT                        R74 ; [+9]
      511 GETUPVAL                         R74 12
      512 GETTABLEKS                       R74 R74 K98 ["createElement"]
      514 GETUPVAL                         R75 13
      515 GETTABLEKS                       R76 R0 K131 ["getMessageBoxProps"]
      517 MOVE                             R77 R19
      518 CALL                             R76 1 -1
      519 CALL                             R74 -1 1
      520 SETTABLEKS                       R74 R73 K107 ["AssetConfigMessageBox"]
      522 GETUPVAL                         R75 2
      523 CALL                             R75 0 1
      524 JUMPIFNOT                        R75 ; [+2]
      525 LOADNIL                          R74
      526 JUMP                             ; [+28]
      527 MOVE                             R74 R21
      528 JUMPIFNOT                        R74 ; [+26]
      529 GETUPVAL                         R74 12
      530 GETTABLEKS                       R74 R74 K98 ["createElement"]
      532 GETUPVAL                         R75 14
      533 DUPTABLE                         R76 K140 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      534 SETTABLEKS                       R66 R76 K132 ["AcceptText"]
      536 SETTABLEKS                       R58 R76 K133 ["CancelText"]
      538 SETTABLEKS                       R65 R76 K134 ["Description"]
      540 SETTABLEKS                       R21 R76 K135 ["Enabled"]
      542 SETTABLEKS                       R63 R76 K136 ["Heading"]
      544 GETTABLEKS                       R77 R0 K141 ["onAssetPublishPayAndConfirmAccepted"]
      546 SETTABLEKS                       R77 R76 K137 ["OnAccepted"]
      548 GETTABLEKS                       R77 R0 K142 ["onAssetPublishPayAndConfirmCanceled"]
      550 SETTABLEKS                       R77 R76 K138 ["OnCanceled"]
      552 SETTABLEKS                       R62 R76 K139 ["Title"]
      554 CALL                             R74 2 1
      555 SETTABLEKS                       R74 R73 K108 ["RobuxSpendConfirmationMessageBox"]
      557 GETUPVAL                         R75 2
      558 CALL                             R75 0 1
      559 JUMPIFNOT                        R75 ; [+24]
      560 GETTABLEKS                       R74 R1 K55 ["isAvatarItemDialogFlowEnabled"]
      562 JUMPIFNOT                        R74 ; [+22]
      563 GETUPVAL                         R74 12
      564 GETTABLEKS                       R74 R74 K98 ["createElement"]
      566 GETUPVAL                         R75 15
      567 DUPTABLE                         R76 K146 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      568 NEWCLOSURE                       R77 P0
      569 CAPTURE                          VAL R0
      570 SETTABLEKS                       R77 R76 K143 ["OnUploadConfirmed"]
      572 GETTABLEKS                       R78 R1 K92 ["uploadFee"]
      574 ORK                              R77 R78 K7 [""]
      575 SETTABLEKS                       R77 R76 K144 ["UploadFee"]
      577 GETTABLEKS                       R78 R2 K8 ["name"]
      579 ORK                              R77 R78 K7 [""]
      580 SETTABLEKS                       R77 R76 K145 ["ItemName"]
      582 CALL                             R74 2 1
      583 JUMP                             ; [+1]
      584 LOADNIL                          R74
      585 SETTABLEKS                       R74 R73 K109 ["AvatarItemMessageBox"]
      587 JUMPIFNOT                        R67 ; [+30]
      588 GETUPVAL                         R74 12
      589 GETTABLEKS                       R74 R74 K98 ["createElement"]
      591 GETUPVAL                         R75 16
      592 DUPTABLE                         R76 K148 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      593 SETTABLEKS                       R57 R76 K132 ["AcceptText"]
      595 SETTABLEKS                       R58 R76 K133 ["CancelText"]
      597 LOADNIL                          R77
      598 SETTABLEKS                       R77 R76 K147 ["ConfirmationKey"]
      600 SETTABLEKS                       R59 R76 K134 ["Description"]
      602 SETTABLEKS                       R67 R76 K135 ["Enabled"]
      604 SETTABLEKS                       R60 R76 K136 ["Heading"]
      606 GETTABLEKS                       R77 R0 K149 ["onAssetPublishDialogAccepted"]
      608 SETTABLEKS                       R77 R76 K137 ["OnAccepted"]
      610 GETTABLEKS                       R77 R0 K150 ["onAssetPublishDialogCanceled"]
      612 SETTABLEKS                       R77 R76 K138 ["OnCanceled"]
      614 SETTABLEKS                       R61 R76 K139 ["Title"]
      616 CALL                             R74 2 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R74
      619 SETTABLEKS                       R74 R73 K110 ["AssetConfigMakeAssetPublicMessageBox"]
      621 GETUPVAL                         R74 12
      622 GETTABLEKS                       R74 R74 K98 ["createElement"]
      624 LOADK                            R75 K99 ["Frame"]
      625 DUPTABLE                         R76 K151 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      626 GETIMPORT                        R77 K153 [UDim2.new]
      628 LOADN                            R78 1
      629 LOADN                            R79 0
      630 LOADN                            R80 1
      631 LOADN                            R81 194
      632 CALL                             R77 4 1
      633 SETTABLEKS                       R77 R76 K3 ["Size"]
      635 LOADN                            R77 1
      636 SETTABLEKS                       R77 R76 K100 ["BackgroundTransparency"]
      638 LOADN                            R77 1
      639 SETTABLEKS                       R77 R76 K126 ["LayoutOrder"]
      641 DUPTABLE                         R77 K163 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      642 GETUPVAL                         R78 12
      643 GETTABLEKS                       R78 R78 K98 ["createElement"]
      645 LOADK                            R79 K106 ["UIListLayout"]
      646 DUPTABLE                         R80 K119 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      647 GETIMPORT                        R81 K165 [Enum.FillDirection.Horizontal]
      649 SETTABLEKS                       R81 R80 K114 ["FillDirection"]
      651 GETIMPORT                        R81 K123 [Enum.HorizontalAlignment.Left]
      653 SETTABLEKS                       R81 R80 K115 ["HorizontalAlignment"]
      655 GETIMPORT                        R81 K167 [Enum.VerticalAlignment.Top]
      657 SETTABLEKS                       R81 R80 K116 ["VerticalAlignment"]
      659 GETIMPORT                        R81 K127 [Enum.SortOrder.LayoutOrder]
      661 SETTABLEKS                       R81 R80 K117 ["SortOrder"]
      663 GETIMPORT                        R81 K130 [UDim.new]
      665 LOADN                            R82 0
      666 LOADN                            R83 0
      667 CALL                             R81 2 1
      668 SETTABLEKS                       R81 R80 K118 ["Padding"]
      670 CALL                             R78 2 1
      671 SETTABLEKS                       R78 R77 K106 ["UIListLayout"]
      673 GETUPVAL                         R78 12
      674 GETTABLEKS                       R78 R78 K98 ["createElement"]
      676 GETUPVAL                         R79 16
      677 DUPTABLE                         R80 K148 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      678 SETTABLEKS                       R50 R80 K132 ["AcceptText"]
      680 SETTABLEKS                       R51 R80 K133 ["CancelText"]
      682 SETTABLEKS                       R56 R80 K147 ["ConfirmationKey"]
      684 SETTABLEKS                       R53 R80 K134 ["Description"]
      686 SETTABLEKS                       R55 R80 K135 ["Enabled"]
      688 SETTABLEKS                       R52 R80 K136 ["Heading"]
      690 GETTABLEKS                       R81 R0 K168 ["onDialogAccepted"]
      692 SETTABLEKS                       R81 R80 K137 ["OnAccepted"]
      694 GETTABLEKS                       R81 R0 K169 ["onDialogCanceled"]
      696 SETTABLEKS                       R81 R80 K138 ["OnCanceled"]
      698 SETTABLEKS                       R54 R80 K139 ["Title"]
      700 CALL                             R78 2 1
      701 SETTABLEKS                       R78 R77 K154 ["SharingConfirmationDialog"]
      703 GETUPVAL                         R78 12
      704 GETTABLEKS                       R78 R78 K98 ["createElement"]
      706 GETUPVAL                         R79 17
      707 DUPTABLE                         R80 K183 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor", "animationTypeThumbnailUri"}]
      708 LOADN                            R81 240
      709 SETTABLEKS                       R81 R80 K170 ["TotalWidth"]
      711 SETTABLEKS                       R39 R80 K171 ["TabItems"]
      713 SETTABLEKS                       R6 R80 K172 ["CurrentTab"]
      715 SETTABLEKS                       R37 R80 K173 ["PreviewType"]
      717 SETTABLEKS                       R25 R80 K174 ["ScreenFlowType"]
      719 SETTABLEKS                       R16 R80 K175 ["AssetStatus"]
      721 SETTABLEKS                       R7 R80 K176 ["AssetId"]
      723 SETTABLEKS                       R22 R80 K177 ["IconFile"]
      725 SETTABLEKS                       R24 R80 K178 ["AssetTypeEnum"]
      727 SETTABLEKS                       R29 R80 K179 ["AllowedBundleTypeSettings"]
      729 GETTABLEKS                       R81 R0 K184 ["onTabSelect"]
      731 SETTABLEKS                       R81 R80 K180 ["OnTabSelect"]
      733 GETTABLEKS                       R81 R0 K185 ["chooseThumbnail"]
      735 SETTABLEKS                       R81 R80 K181 ["ChooseThumbnail"]
      737 LOADN                            R81 1
      738 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
      740 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
      742 GETUPVAL                         R82 8
      743 CALL                             R82 0 1
      744 JUMPIFNOT                        R82 ; [+4]
      745 JUMPIFNOT                        R68 ; [+3]
      746 GETTABLEKS                       R81 R2 K57 ["selectedColor"]
      748 JUMP                             ; [+1]
      749 LOADNIL                          R81
      750 SETTABLEKS                       R81 R80 K57 ["selectedColor"]
      752 GETUPVAL                         R82 5
      753 CALL                             R82 0 1
      754 JUMPIFNOT                        R82 ; [+2]
      755 MOVE                             R81 R38
      756 JUMP                             ; [+1]
      757 LOADNIL                          R81
      758 SETTABLEKS                       R81 R80 K182 ["animationTypeThumbnailUri"]
      760 CALL                             R78 2 1
      761 SETTABLEKS                       R78 R77 K155 ["Preview"]
      763 GETUPVAL                         R79 18
      764 CALL                             R79 0 1
      765 JUMPIFNOT                        R79 ; [+21]
      766 GETUPVAL                         R78 19
      767 GETTABLEKS                       R78 R78 K98 ["createElement"]
      769 GETUPVAL                         R79 20
      770 GETTABLEKS                       R79 R79 K186 ["Divider"]
      772 DUPTABLE                         R80 K188 [{"orientation", "LayoutOrder"}]
      773 GETUPVAL                         R81 20
      774 GETTABLEKS                       R81 R81 K189 ["Enums"]
      776 GETTABLEKS                       R81 R81 K190 ["DividerOrientation"]
      778 GETTABLEKS                       R81 R81 K120 ["Vertical"]
      780 SETTABLEKS                       R81 R80 K187 ["orientation"]
      782 LOADN                            R81 2
      783 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
      785 CALL                             R78 2 1
      786 JUMP                             ; [+30]
      787 GETUPVAL                         R78 12
      788 GETTABLEKS                       R78 R78 K98 ["createElement"]
      790 LOADK                            R79 K99 ["Frame"]
      791 DUPTABLE                         R80 K191 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      792 GETIMPORT                        R81 K153 [UDim2.new]
      794 LOADN                            R82 0
      795 LOADN                            R83 2
      796 LOADN                            R84 1
      797 LOADN                            R85 0
      798 CALL                             R81 4 1
      799 SETTABLEKS                       R81 R80 K3 ["Size"]
      801 LOADN                            R81 0
      802 SETTABLEKS                       R81 R80 K100 ["BackgroundTransparency"]
      804 GETTABLEKS                       R81 R3 K192 ["divider"]
      806 GETTABLEKS                       R81 R81 K193 ["verticalLineColor"]
      808 SETTABLEKS                       R81 R80 K101 ["BackgroundColor3"]
      810 LOADN                            R81 0
      811 SETTABLEKS                       R81 R80 K102 ["BorderSizePixel"]
      813 LOADN                            R81 2
      814 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
      816 CALL                             R78 2 1
      817 SETTABLEKS                       R78 R77 K156 ["VerticalLine"]
      819 MOVE                             R78 R40
      820 JUMPIFNOT                        R78 ; [+50]
      821 GETUPVAL                         R78 12
      822 GETTABLEKS                       R78 R78 K98 ["createElement"]
      824 GETUPVAL                         R79 21
      825 DUPTABLE                         R80 K194 [{"LayoutOrder", "Size"}]
      826 LOADN                            R81 3
      827 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
      829 GETIMPORT                        R81 K153 [UDim2.new]
      831 LOADN                            R82 1
      832 LOADN                            R83 16
      833 LOADN                            R84 1
      834 LOADN                            R85 0
      835 CALL                             R81 4 1
      836 SETTABLEKS                       R81 R80 K3 ["Size"]
      838 DUPTABLE                         R81 K196 [{"LoadingIndicator"}]
      839 GETUPVAL                         R82 12
      840 GETTABLEKS                       R82 R82 K98 ["createElement"]
      842 GETUPVAL                         R83 22
      843 DUPTABLE                         R84 K199 [{"Size", "AnchorPoint", "Position"}]
      844 GETIMPORT                        R85 K153 [UDim2.new]
      846 LOADN                            R86 0
      847 LOADN                            R87 100
      848 LOADN                            R88 0
      849 LOADN                            R89 100
      850 CALL                             R85 4 1
      851 SETTABLEKS                       R85 R84 K3 ["Size"]
      853 GETIMPORT                        R85 K201 [Vector2.new]
      855 LOADK                            R86 K202 [0.5]
      856 LOADK                            R87 K202 [0.5]
      857 CALL                             R85 2 1
      858 SETTABLEKS                       R85 R84 K197 ["AnchorPoint"]
      860 GETIMPORT                        R85 K204 [UDim2.fromScale]
      862 LOADK                            R86 K202 [0.5]
      863 LOADK                            R87 K202 [0.5]
      864 CALL                             R85 2 1
      865 SETTABLEKS                       R85 R84 K198 ["Position"]
      867 CALL                             R82 2 1
      868 SETTABLEKS                       R82 R81 K195 ["LoadingIndicator"]
      870 CALL                             R78 3 1
      871 SETTABLEKS                       R78 R77 K157 ["LoadingIndicatorWrapper"]
      873 NOT                              R78 R40
      874 JUMPIFNOT                        R78 ; [+241]
      875 GETUPVAL                         R78 1
      876 MOVE                             R80 R6
      877 NAMECALL                         R78 R78 K205 ["isGeneral"]
      879 CALL                             R78 2 1
      880 JUMPIFNOT                        R78 ; [+235]
      881 GETUPVAL                         R78 12
      882 GETTABLEKS                       R78 R78 K98 ["createElement"]
      884 GETUPVAL                         R79 23
      885 NEWTABLE                         R80 64 0
      887 GETIMPORT                        R81 K153 [UDim2.new]
      889 LOADN                            R82 1
      890 LOADN                            R83 16
      891 LOADN                            R84 1
      892 LOADN                            R85 0
      893 CALL                             R81 4 1
      894 SETTABLEKS                       R81 R80 K3 ["Size"]
      896 SETTABLEKS                       R47 R80 K206 ["allowSelectPrivate"]
      898 SETTABLEKS                       R7 R80 K6 ["assetId"]
      900 SETTABLEKS                       R8 R80 K8 ["name"]
      902 SETTABLEKS                       R9 R80 K9 ["description"]
      904 SETTABLEKS                       R10 R80 K13 ["owner"]
      906 SETTABLEKS                       R11 R80 K14 ["allowCopy"]
      908 SETTABLEKS                       R12 R80 K15 ["copyOn"]
      910 SETTABLEKS                       R13 R80 K16 ["allowComment"]
      912 SETTABLEKS                       R14 R80 K17 ["commentOn"]
      914 SETTABLEKS                       R15 R80 K18 ["deleteLocal"]
      916 SETTABLEKS                       R17 R80 K20 ["isAssetPublic"]
      918 SETTABLEKS                       R18 R80 K21 ["publishingRestriction"]
      920 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
      922 GETTABLEKS                       R81 R0 K207 ["onNameChange"]
      924 SETTABLEKS                       R81 R80 K207 ["onNameChange"]
      926 GETTABLEKS                       R81 R0 K208 ["onDescChange"]
      928 SETTABLEKS                       R81 R80 K208 ["onDescChange"]
      930 GETTABLEKS                       R81 R1 K209 ["groupId"]
      932 SETTABLEKS                       R81 R80 K210 ["preselectedGroupId"]
      934 GETTABLEKS                       R81 R0 K211 ["onAccessChange"]
      936 SETTABLEKS                       R81 R80 K212 ["onOwnerSelected"]
      938 GETTABLEKS                       R81 R0 K213 ["onSharingChanged"]
      940 SETTABLEKS                       R81 R80 K213 ["onSharingChanged"]
      942 GETTABLEKS                       R81 R0 K214 ["onAdditionalImagesChanged"]
      944 SETTABLEKS                       R81 R80 K214 ["onAdditionalImagesChanged"]
      946 GETTABLEKS                       R81 R0 K215 ["toggleCopy"]
      948 SETTABLEKS                       R81 R80 K215 ["toggleCopy"]
      950 GETTABLEKS                       R81 R0 K216 ["toggleComment"]
      952 SETTABLEKS                       R81 R80 K216 ["toggleComment"]
      954 GETTABLEKS                       R81 R0 K217 ["toggleDeleteLocal"]
      956 SETTABLEKS                       R81 R80 K217 ["toggleDeleteLocal"]
      958 GETUPVAL                         R82 5
      959 CALL                             R82 0 1
      960 JUMPIFNOT                        R82 ; [+3]
      961 GETTABLEKS                       R81 R0 K218 ["onAnimationSelectionChanged"]
      963 JUMP                             ; [+1]
      964 LOADNIL                          R81
      965 SETTABLEKS                       R81 R80 K218 ["onAnimationSelectionChanged"]
      967 GETUPVAL                         R82 5
      968 CALL                             R82 0 1
      969 JUMPIFNOT                        R82 ; [+3]
      970 GETTABLEKS                       R81 R0 K219 ["onanimationSectionValidityChanged"]
      972 JUMP                             ; [+1]
      973 LOADNIL                          R81
      974 SETTABLEKS                       R81 R80 K219 ["onanimationSectionValidityChanged"]
      976 GETTABLEKS                       R81 R2 K220 ["dataSharingEnabled"]
      978 SETTABLEKS                       R81 R80 K220 ["dataSharingEnabled"]
      980 GETTABLEKS                       R81 R2 K221 ["dataSharingToggled"]
      982 SETTABLEKS                       R81 R80 K221 ["dataSharingToggled"]
      984 GETTABLEKS                       R81 R0 K222 ["onDataConsentToggleClick"]
      986 SETTABLEKS                       R81 R80 K222 ["onDataConsentToggleClick"]
      988 SETTABLEKS                       R32 R80 K223 ["displayOwnership"]
      990 SETTABLEKS                       R33 R80 K224 ["displayCopy"]
      992 SETTABLEKS                       R35 R80 K225 ["displayComment"]
      994 SETTABLEKS                       R36 R80 K226 ["displayAssetType"]
      996 SETTABLEKS                       R48 R80 K227 ["displaySharing"]
      998 SETTABLEKS                       R34 R80 K228 ["displayAssetTypeSelection"]
     1000 JUMPIFNOT                        R46 ; [+2]
     1001 MOVE                             R81 R27
     1002 JUMP                             ; [+1]
     1003 LOADNIL                          R81
     1004 SETTABLEKS                       R81 R80 K30 ["allowedAssetTypesForRelease"]
     1006 SETTABLEKS                       R28 R80 K31 ["allowedAssetTypesForFree"]
     1008 JUMPIFNOT                        R46 ; [+2]
     1009 MOVE                             R81 R16
     1010 JUMP                             ; [+1]
     1011 LOADNIL                          R81
     1012 SETTABLEKS                       R81 R80 K229 ["newAssetStatus"]
     1014 JUMPIFNOT                        R46 ; [+2]
     1015 MOVE                             R81 R30
     1016 JUMP                             ; [+1]
     1017 LOADNIL                          R81
     1018 SETTABLEKS                       R81 R80 K230 ["currentAssetStatus"]
     1020 JUMPIFNOT                        R46 ; [+3]
     1021 GETTABLEKS                       R81 R0 K231 ["onStatusChange"]
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R81
     1025 SETTABLEKS                       R81 R80 K231 ["onStatusChange"]
     1027 JUMPIFNOT                        R46 ; [+3]
     1028 GETTABLEKS                       R81 R0 K232 ["onPriceChange"]
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R81
     1032 SETTABLEKS                       R81 R80 K232 ["onPriceChange"]
     1034 JUMPIFNOT                        R46 ; [+2]
     1035 MOVE                             R81 R31
     1036 JUMP                             ; [+1]
     1037 LOADNIL                          R81
     1038 SETTABLEKS                       R81 R80 K35 ["price"]
     1040 LOADNIL                          R81
     1041 SETTABLEKS                       R81 R80 K233 ["minPrice"]
     1043 LOADNIL                          R81
     1044 SETTABLEKS                       R81 R80 K234 ["maxPrice"]
     1046 LOADNIL                          R81
     1047 SETTABLEKS                       R81 R80 K235 ["feeRate"]
     1049 LOADNIL                          R81
     1050 SETTABLEKS                       R81 R80 K236 ["isPriceValid"]
     1052 LOADN                            R81 3
     1053 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
     1055 GETTABLEKS                       R81 R1 K47 ["instances"]
     1057 SETTABLEKS                       R81 R80 K47 ["instances"]
     1059 GETUPVAL                         R82 8
     1060 CALL                             R82 0 1
     1061 JUMPIFNOT                        R82 ; [+2]
     1062 MOVE                             R81 R68
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R81
     1065 SETTABLEKS                       R81 R80 K237 ["showColorPicker"]
     1067 GETUPVAL                         R82 8
     1068 CALL                             R82 0 1
     1069 JUMPIFNOT                        R82 ; [+4]
     1070 JUMPIFNOT                        R68 ; [+3]
     1071 GETTABLEKS                       R81 R2 K238 ["showColorPickerRequiredError"]
     1073 JUMP                             ; [+1]
     1074 LOADNIL                          R81
     1075 SETTABLEKS                       R81 R80 K238 ["showColorPickerRequiredError"]
     1077 GETUPVAL                         R82 24
     1078 CALL                             R82 0 1
     1079 JUMPIFNOT                        R82 ; [+3]
     1080 GETTABLEKS                       R81 R2 K239 ["showNameRequiredError"]
     1082 JUMP                             ; [+1]
     1083 LOADNIL                          R81
     1084 SETTABLEKS                       R81 R80 K239 ["showNameRequiredError"]
     1086 GETUPVAL                         R82 24
     1087 CALL                             R82 0 1
     1088 JUMPIFNOT                        R82 ; [+3]
     1089 GETTABLEKS                       R81 R2 K240 ["showDescriptionRequiredError"]
     1091 JUMP                             ; [+1]
     1092 LOADNIL                          R81
     1093 SETTABLEKS                       R81 R80 K240 ["showDescriptionRequiredError"]
     1095 GETUPVAL                         R82 8
     1096 CALL                             R82 0 1
     1097 JUMPIFNOT                        R82 ; [+4]
     1098 JUMPIFNOT                        R68 ; [+3]
     1099 GETTABLEKS                       R81 R2 K57 ["selectedColor"]
     1101 JUMP                             ; [+1]
     1102 LOADNIL                          R81
     1103 SETTABLEKS                       R81 R80 K57 ["selectedColor"]
     1105 GETUPVAL                         R82 8
     1106 CALL                             R82 0 1
     1107 JUMPIFNOT                        R82 ; [+4]
     1108 JUMPIFNOT                        R68 ; [+3]
     1109 GETTABLEKS                       R81 R0 K241 ["onSelectedColorChange"]
     1111 JUMP                             ; [+1]
     1112 LOADNIL                          R81
     1113 SETTABLEKS                       R81 R80 K242 ["setSelectedColor"]
     1115 CALL                             R78 2 1
     1116 SETTABLEKS                       R78 R77 K158 ["PublishAsset"]
     1118 GETUPVAL                         R78 1
     1119 MOVE                             R80 R6
     1120 NAMECALL                         R78 R78 K243 ["isVersions"]
     1122 CALL                             R78 2 1
     1123 JUMPIFNOT                        R78 ; [+78]
     1124 GETUPVAL                         R78 12
     1125 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1127 GETUPVAL                         R79 25
     1128 DUPTABLE                         R80 K257 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1129 GETIMPORT                        R81 K153 [UDim2.new]
     1131 LOADN                            R82 1
     1132 LOADN                            R83 16
     1133 LOADN                            R84 1
     1134 LOADN                            R85 236
     1135 CALL                             R81 4 1
     1136 SETTABLEKS                       R81 R80 K3 ["Size"]
     1138 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1140 LOADN                            R81 3
     1141 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
     1143 GETTABLEKS                       R81 R2 K258 ["versionsCurrentItem"]
     1145 SETTABLEKS                       R81 R80 K244 ["currentItem"]
     1147 GETTABLEKS                       R81 R2 K259 ["versionsRootItems"]
     1149 SETTABLEKS                       R81 R80 K245 ["rootItems"]
     1151 GETTABLEKS                       R81 R2 K260 ["versionsOpenInputKey"]
     1153 SETTABLEKS                       R81 R80 K246 ["openInputKey"]
     1155 GETTABLEKS                       R81 R2 K261 ["versionsPreviousInput"]
     1157 SETTABLEKS                       R81 R80 K247 ["previousInput"]
     1159 GETTABLEKS                       R81 R2 K262 ["versionsPageIndex"]
     1161 SETTABLEKS                       R81 R80 K248 ["pageIndex"]
     1163 GETTABLEKS                       R81 R2 K263 ["versionsPageRootItems"]
     1165 SETTABLEKS                       R81 R80 K249 ["pageRootItems"]
     1167 GETUPVAL                         R82 26
     1168 CALL                             R82 0 1
     1169 JUMPIFNOT                        R82 ; [+3]
     1170 GETTABLEKS                       R81 R1 K264 ["versionHistoryWithDescriptions"]
     1172 JUMP                             ; [+2]
     1173 GETTABLEKS                       R81 R1 K250 ["versionHistory"]
     1175 SETTABLEKS                       R81 R80 K250 ["versionHistory"]
     1177 GETTABLEKS                       R81 R0 K265 ["versionsOnDescClicked"]
     1179 SETTABLEKS                       R81 R80 K251 ["onDescClicked"]
     1181 GETTABLEKS                       R81 R0 K266 ["versionsCloseInput"]
     1183 SETTABLEKS                       R81 R80 K252 ["closeInput"]
     1185 GETTABLEKS                       R81 R0 K253 ["setVersionError"]
     1187 SETTABLEKS                       R81 R80 K253 ["setVersionError"]
     1189 GETTABLEKS                       R81 R0 K267 ["versionsSetPreviousInput"]
     1191 SETTABLEKS                       R81 R80 K254 ["setPreviousInput"]
     1193 GETTABLEKS                       R81 R0 K268 ["versionsOnPageChange"]
     1195 SETTABLEKS                       R81 R80 K255 ["onPageChange"]
     1197 GETTABLEKS                       R81 R0 K269 ["versionsSetStates"]
     1199 SETTABLEKS                       R81 R80 K256 ["setStates"]
     1201 CALL                             R78 2 1
     1202 SETTABLEKS                       R78 R77 K159 ["Versions"]
     1204 GETUPVAL                         R79 1
     1205 MOVE                             R81 R6
     1206 NAMECALL                         R79 R79 K270 ["isSales"]
     1208 CALL                             R79 2 1
     1209 JUMPIFNOT                        R79 ; [+21]
     1210 GETUPVAL                         R78 12
     1211 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1213 GETUPVAL                         R79 27
     1214 DUPTABLE                         R80 K273 [{"size", "assetId", "layoutOrder"}]
     1215 GETIMPORT                        R81 K153 [UDim2.new]
     1217 LOADN                            R82 1
     1218 LOADN                            R83 16
     1219 LOADN                            R84 1
     1220 LOADN                            R85 0
     1221 CALL                             R81 4 1
     1222 SETTABLEKS                       R81 R80 K271 ["size"]
     1224 SETTABLEKS                       R7 R80 K6 ["assetId"]
     1226 LOADN                            R81 3
     1227 SETTABLEKS                       R81 R80 K272 ["layoutOrder"]
     1229 CALL                             R78 2 1
     1230 JUMP                             ; [+1]
     1231 LOADNIL                          R78
     1232 SETTABLEKS                       R78 R77 K160 ["Sales"]
     1234 GETUPVAL                         R78 1
     1235 MOVE                             R80 R6
     1236 NAMECALL                         R78 R78 K274 ["isOverride"]
     1238 CALL                             R78 2 1
     1239 JUMPIFNOT                        R78 ; [+28]
     1240 GETUPVAL                         R78 12
     1241 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1243 GETUPVAL                         R79 28
     1244 DUPTABLE                         R80 K276 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1245 GETIMPORT                        R81 K153 [UDim2.new]
     1247 LOADN                            R82 1
     1248 LOADN                            R83 16
     1249 LOADN                            R84 1
     1250 LOADN                            R85 0
     1251 CALL                             R81 4 1
     1252 SETTABLEKS                       R81 R80 K3 ["Size"]
     1254 SETTABLEKS                       R24 R80 K28 ["assetTypeEnum"]
     1256 GETTABLEKS                       R81 R1 K47 ["instances"]
     1258 SETTABLEKS                       R81 R80 K47 ["instances"]
     1260 GETTABLEKS                       R81 R0 K275 ["onOverrideAssetSelected"]
     1262 SETTABLEKS                       R81 R80 K275 ["onOverrideAssetSelected"]
     1264 LOADN                            R81 3
     1265 SETTABLEKS                       R81 R80 K126 ["LayoutOrder"]
     1267 CALL                             R78 2 1
     1268 SETTABLEKS                       R78 R77 K161 ["OverrideAsset"]
     1270 GETUPVAL                         R78 1
     1271 MOVE                             R80 R6
     1272 NAMECALL                         R78 R78 K277 ["isPermissions"]
     1274 CALL                             R78 2 1
     1275 JUMPIFNOT                        R78 ; [+33]
     1276 GETUPVAL                         R78 12
     1277 GETTABLEKS                       R78 R78 K98 ["createElement"]
     1279 GETUPVAL                         R79 29
     1280 GETTABLEKS                       R79 R79 K278 ["AsyncCache"]
     1282 NEWTABLE                         R80 0 0
     1284 NEWTABLE                         R81 0 1
     1286 GETUPVAL                         R82 12
     1287 GETTABLEKS                       R82 R82 K98 ["createElement"]
     1289 GETUPVAL                         R83 30
     1290 DUPTABLE                         R84 K279 [{"Size", "AssetId", "LayoutOrder"}]
     1291 GETIMPORT                        R85 K153 [UDim2.new]
     1293 LOADN                            R86 1
     1294 MOVE                             R87 R42
     1295 LOADN                            R88 1
     1296 LOADN                            R89 0
     1297 CALL                             R85 4 1
     1298 SETTABLEKS                       R85 R84 K3 ["Size"]
     1300 SETTABLEKS                       R7 R84 K176 ["AssetId"]
     1302 LOADN                            R85 3
     1303 SETTABLEKS                       R85 R84 K126 ["LayoutOrder"]
     1305 CALL                             R82 2 -1
     1306 SETLIST                          R81 R82 -1 [1]
     1308 CALL                             R78 3 1
     1309 SETTABLEKS                       R78 R77 K162 ["PackagePermissions"]
     1311 CALL                             R74 3 1
     1312 SETTABLEKS                       R74 R73 K111 ["MainPage"]
     1314 GETUPVAL                         R74 12
     1315 GETTABLEKS                       R74 R74 K98 ["createElement"]
     1317 GETUPVAL                         R75 31
     1318 DUPTABLE                         R76 K284 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1319 GETTABLEKS                       R77 R2 K285 ["overrideAssetId"]
     1321 SETTABLEKS                       R77 R76 K176 ["AssetId"]
     1323 SETTABLEKS                       R41 R76 K280 ["CanSave"]
     1325 LOADN                            R77 2
     1326 SETTABLEKS                       R77 R76 K126 ["LayoutOrder"]
     1328 GETIMPORT                        R77 K153 [UDim2.new]
     1330 LOADN                            R78 1
     1331 LOADN                            R79 0
     1332 LOADN                            R80 0
     1333 LOADN                            R81 62
     1334 CALL                             R77 4 1
     1335 SETTABLEKS                       R77 R76 K3 ["Size"]
     1337 GETTABLEKS                       R77 R0 K286 ["tryCancelWithYield"]
     1339 SETTABLEKS                       R77 R76 K281 ["TryCancel"]
     1341 GETTABLEKS                       R77 R0 K287 ["tryPublishWithConfirmDialog"]
     1343 SETTABLEKS                       R77 R76 K282 ["TryPublish"]
     1345 GETUPVAL                         R78 8
     1346 CALL                             R78 0 1
     1347 JUMPIFNOT                        R78 ; [+10]
     1348 JUMPIF                           R41 ; [+9]
     1349 NEWCLOSURE                       R77 P1
     1350 CAPTURE                          VAL R0
     1351 CAPTURE                          VAL R69
     1352 CAPTURE                          UPVAL U24
     1353 CAPTURE                          VAL R8
     1354 CAPTURE                          VAL R9
     1355 CAPTURE                          UPVAL U3
     1356 CAPTURE                          VAL R24
     1357 JUMP                             ; [+1]
     1358 LOADNIL                          R77
     1359 SETTABLEKS                       R77 R76 K283 ["OnPublishButtonHover"]
     1361 CALL                             R74 2 1
     1362 SETTABLEKS                       R74 R73 K112 ["Footer"]
     1364 CALL                             R70 3 -1
     1365 RETURN                           R70 -1

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
      177 GETTABLEKS                       R16 R0 K39 ["deleteLocal"]
      179 SETTABLEKS                       R16 R15 K39 ["deleteLocal"]
      181 SETTABLEKS                       R12 R15 K10 ["versionHistory"]
      183 SETTABLEKS                       R13 R15 K11 ["versionHistoryWithDescriptions"]
      185 SETTABLEKS                       R14 R15 K40 ["permissions"]
      187 SETTABLEKS                       R8 R15 K41 ["publishingRestrictions"]
      189 GETTABLEKS                       R18 R1 K33 ["assetId"]
      191 GETTABLE                         R17 R2 R18
      192 JUMPIFNOT                        R17 ; [+4]
      193 GETTABLEKS                       R17 R1 K33 ["assetId"]
      195 GETTABLE                         R16 R2 R17
      196 JUMP                             ; [+4]
      197 GETUPVAL                         R16 5
      198 GETTABLEKS                       R16 R16 K42 ["getDefaultFiatProduct"]
      200 CALL                             R16 0 1
      201 SETTABLEKS                       R16 R15 K43 ["fiatProduct"]
      203 GETTABLEKS                       R16 R0 K44 ["groupBundlesUploadEnabledForUser"]
      205 SETTABLEKS                       R16 R15 K44 ["groupBundlesUploadEnabledForUser"]
      207 GETUPVAL                         R17 6
      208 CALL                             R17 0 1
      209 JUMPIFNOT                        R17 ; [+3]
      210 GETTABLEKS                       R16 R0 K45 ["animationPackType"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R16
      214 SETTABLEKS                       R16 R15 K45 ["animationPackType"]
      216 GETUPVAL                         R17 6
      217 CALL                             R17 0 1
      218 JUMPIFNOT                        R17 ; [+3]
      219 GETTABLEKS                       R16 R0 K46 ["animationPackSubName"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R16
      223 SETTABLEKS                       R16 R15 K46 ["animationPackSubName"]
      225 GETUPVAL                         R17 6
      226 CALL                             R17 0 1
      227 JUMPIFNOT                        R17 ; [+3]
      228 GETTABLEKS                       R16 R0 K47 ["animationPackWeight"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R16
      232 SETTABLEKS                       R16 R15 K47 ["animationPackWeight"]
      234 GETUPVAL                         R17 6
      235 CALL                             R17 0 1
      236 JUMPIFNOT                        R17 ; [+3]
      237 GETTABLEKS                       R16 R0 K48 ["animationPackParentModelName"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R16
      241 SETTABLEKS                       R16 R15 K48 ["animationPackParentModelName"]
      243 GETUPVAL                         R17 6
      244 CALL                             R17 0 1
      245 JUMPIFNOT                        R17 ; [+3]
      246 GETTABLEKS                       R16 R0 K49 ["animationSectionValid"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R16
      250 SETTABLEKS                       R16 R15 K49 ["animationSectionValid"]
      252 GETUPVAL                         R17 7
      253 CALL                             R17 0 1
      254 JUMPIFNOT                        R17 ; [+3]
      255 GETTABLEKS                       R16 R0 K50 ["isAvatarItemDialogFlowEnabled"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R16
      259 SETTABLEKS                       R16 R15 K50 ["isAvatarItemDialogFlowEnabled"]
      261 RETURN                           R15 1

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

PROTO_101:
        0 GETUPVAL                         R11 0
        1 GETUPVAL                         R12 1
        2 MOVE                             R13 R0
        3 MOVE                             R14 R1
        4 MOVE                             R15 R2
        5 MOVE                             R16 R3
        6 MOVE                             R17 R4
        7 MOVE                             R18 R5
        8 MOVE                             R19 R6
        9 MOVE                             R20 R7
       10 MOVE                             R21 R8
       11 MOVE                             R22 R9
       12 MOVE                             R23 R10
       13 CALL                             R12 11 -1
       14 CALL                             R11 -1 0
       15 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_114:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_124:
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
      107 GETUPVAL                         R3 6
      108 CALL                             R3 0 1
      109 JUMPIF                           R3 ; [+5]
      110 NEWCLOSURE                       R2 P15
      111 CAPTURE                          UPVAL U20
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U21
      114 JUMP                             ; [+1]
      115 LOADNIL                          R2
      116 SETTABLEKS                       R2 R1 K15 ["uploadCatalogItemWithFee"]
      118 GETUPVAL                         R3 6
      119 CALL                             R3 0 1
      120 JUMPIF                           R3 ; [+4]
      121 NEWCLOSURE                       R2 P16
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U22
      124 JUMP                             ; [+1]
      125 LOADNIL                          R2
      126 SETTABLEKS                       R2 R1 K16 ["uploadUGCBundleWithFee"]
      128 NEWCLOSURE                       R2 P17
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U23
      131 SETTABLEKS                       R2 R1 K17 ["dispatchPostPackageMetadataRequest"]
      133 NEWCLOSURE                       R2 P18
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U24
      136 SETTABLEKS                       R2 R1 K18 ["updateStore"]
      138 NEWCLOSURE                       R2 P19
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U25
      141 SETTABLEKS                       R2 R1 K19 ["dispatchGetPackageCollaboratorsRequest"]
      143 NEWCLOSURE                       R2 P20
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U26
      146 SETTABLEKS                       R2 R1 K20 ["dispatchPutPackagePermissionsRequest"]
      148 NEWCLOSURE                       R2 P21
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U27
      151 SETTABLEKS                       R2 R1 K21 ["dispatchPostAssetCheckPermissions"]
      153 NEWCLOSURE                       R2 P22
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U28
      156 SETTABLEKS                       R2 R1 K22 ["dispatchGetGroupMetadata"]
      158 NEWCLOSURE                       R2 P23
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U29
      161 SETTABLEKS                       R2 R1 K23 ["dispatchGetGroupRoleInfo"]
      163 NEWCLOSURE                       R2 P24
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U30
      166 SETTABLEKS                       R2 R1 K24 ["dispatchGetUsername"]
      168 NEWCLOSURE                       R2 P25
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U31
      171 SETTABLEKS                       R2 R1 K25 ["dispatchPatchMakeAssetPublicRequest"]
      173 NEWCLOSURE                       R2 P26
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U32
      176 SETTABLEKS                       R2 R1 K26 ["dispatchGetAssetPermissionsRequest"]
      178 NEWCLOSURE                       R2 P27
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U33
      181 SETTABLEKS                       R2 R1 K27 ["dispatchSetDescendantPermissions"]
      183 NEWCLOSURE                       R2 P28
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U34
      186 SETTABLEKS                       R2 R1 K28 ["dispatchGetPublishingRequirements"]
      188 NEWCLOSURE                       R2 P29
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U35
      191 SETTABLEKS                       R2 R1 K29 ["dispatchGetAssetMediaMetadataArray"]
      193 NEWCLOSURE                       R2 P30
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U36
      196 SETTABLEKS                       R2 R1 K30 ["dispatchGetFiatProduct"]
      198 GETUPVAL                         R3 37
      199 CALL                             R3 0 1
      200 JUMPIFNOT                        R3 ; [+4]
      201 NEWCLOSURE                       R2 P31
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U38
      204 JUMP                             ; [+1]
      205 LOADNIL                          R2
      206 SETTABLEKS                       R2 R1 K31 ["dispatchGetSellerStatus"]
      208 NEWCLOSURE                       R2 P32
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U39
      211 SETTABLEKS                       R2 R1 K32 ["dispatchValidateAnimationResult"]
      213 GETUPVAL                         R3 40
      214 CALL                             R3 0 1
      215 JUMPIFNOT                        R3 ; [+4]
      216 NEWCLOSURE                       R2 P33
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U41
      219 JUMP                             ; [+1]
      220 LOADNIL                          R2
      221 SETTABLEKS                       R2 R1 K33 ["dispatchCheckAvatarAssetPrivacy"]
      223 GETUPVAL                         R2 6
      224 CALL                             R2 0 1
      225 JUMPIF                           R2 ; [+10]
      226 NEWCLOSURE                       R2 P34
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U42
      229 SETTABLEKS                       R2 R1 K34 ["uploadAnimationAsset"]
      231 NEWCLOSURE                       R2 P35
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U43
      234 SETTABLEKS                       R2 R1 K35 ["overrideAnimationAsset"]
      236 GETUPVAL                         R2 6
      237 CALL                             R2 0 1
      238 JUMPIFNOT                        R2 ; [+15]
      239 NEWCLOSURE                       R2 P36
      240 CAPTURE                          VAL R0
      241 CAPTURE                          UPVAL U44
      242 SETTABLEKS                       R2 R1 K36 ["dispatchDownloadFlow"]
      244 NEWCLOSURE                       R2 P37
      245 CAPTURE                          VAL R0
      246 CAPTURE                          UPVAL U45
      247 SETTABLEKS                       R2 R1 K37 ["dispatchEditFlow"]
      249 NEWCLOSURE                       R2 P38
      250 CAPTURE                          VAL R0
      251 CAPTURE                          UPVAL U46
      252 SETTABLEKS                       R2 R1 K38 ["dispatchUploadFlow"]
      254 RETURN                           R1 1

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
      203 GETTABLEKS                       R35 R20 K46 ["MessageBox"]
      205 GETTABLEKS                       R35 R35 K46 ["MessageBox"]
      207 CALL                             R34 1 1
      208 GETIMPORT                        R35 K15 [require]
      210 GETTABLEKS                       R36 R2 K47 ["AssetPermissionUtil"]
      212 CALL                             R35 1 1
      213 GETIMPORT                        R36 K15 [require]
      215 GETTABLEKS                       R37 R2 K48 ["AvatarAnimationStudioToolboxTextures"]
      217 CALL                             R36 1 1
      218 GETIMPORT                        R37 K15 [require]
      220 GETTABLEKS                       R38 R2 K49 ["Images"]
      222 CALL                             R37 1 1
      223 GETIMPORT                        R38 K15 [require]
      225 GETTABLEKS                       R39 R2 K50 ["AssetConfigConstants"]
      227 CALL                             R38 1 1
      228 GETIMPORT                        R39 K15 [require]
      230 GETTABLEKS                       R40 R2 K51 ["Constants"]
      232 CALL                             R39 1 1
      233 GETIMPORT                        R40 K15 [require]
      235 GETTABLEKS                       R41 R2 K52 ["ScreenSetup"]
      237 CALL                             R40 1 1
      238 GETIMPORT                        R41 K15 [require]
      240 GETTABLEKS                       R42 R2 K53 ["AssetConfigUtil"]
      242 CALL                             R41 1 1
      243 GETIMPORT                        R42 K15 [require]
      245 GETTABLEKS                       R43 R2 K54 ["fixUpPreValidation"]
      247 CALL                             R42 1 1
      248 GETIMPORT                        R43 K15 [require]
      250 GETTABLEKS                       R44 R2 K55 ["PublishUtil"]
      252 CALL                             R43 1 1
      253 GETIMPORT                        R44 K15 [require]
      255 GETTABLEKS                       R45 R2 K56 ["getAllowedAssetTypeEnums"]
      257 CALL                             R44 1 1
      258 GETIMPORT                        R45 K15 [require]
      260 GETTABLEKS                       R46 R2 K57 ["FiatUtil"]
      262 CALL                             R45 1 1
      263 LOADNIL                          R46
      264 JUMPIFNOT                        R5 ; [+6]
      265 GETIMPORT                        R47 K15 [require]
      267 GETTABLEKS                       R48 R2 K58 ["getIsIXPVariableEnabled"]
      269 CALL                             R47 1 1
      270 MOVE                             R46 R47
      271 GETIMPORT                        R47 K15 [require]
      273 GETTABLEKS                       R48 R13 K59 ["Framework"]
      275 CALL                             R47 1 1
      276 GETTABLEKS                       R48 R47 K8 ["Util"]
      278 GETTABLEKS                       R48 R48 K60 ["deepCopy"]
      280 GETTABLEKS                       R49 R47 K8 ["Util"]
      282 GETTABLEKS                       R49 R49 K61 ["deepEqual"]
      284 GETTABLEKS                       R50 R47 K62 ["Dash"]
      286 GETTABLEKS                       R51 R50 K63 ["slice"]
      288 GETIMPORT                        R52 K15 [require]
      290 GETTABLEKS                       R53 R1 K7 ["Src"]
      292 GETTABLEKS                       R53 R53 K64 ["Networking"]
      294 GETTABLEKS                       R53 R53 K65 ["Requests"]
      296 GETTABLEKS                       R53 R53 K66 ["MakeChangeRequest"]
      298 CALL                             R52 1 1
      299 GETTABLEKS                       R53 R1 K7 ["Src"]
      301 GETTABLEKS                       R53 R53 K67 ["Types"]
      303 GETIMPORT                        R54 K15 [require]
      305 GETTABLEKS                       R55 R53 K68 ["AssetMediaTypes"]
      307 CALL                             R54 1 1
      308 GETIMPORT                        R55 K15 [require]
      310 GETTABLEKS                       R56 R53 K69 ["AssetSubTypes"]
      312 CALL                             R55 1 1
      313 GETIMPORT                        R56 K15 [require]
      315 GETTABLEKS                       R57 R53 K70 ["ConfigTypes"]
      317 CALL                             R56 1 1
      318 GETTABLEKS                       R57 R1 K7 ["Src"]
      320 GETTABLEKS                       R57 R57 K64 ["Networking"]
      322 GETTABLEKS                       R57 R57 K65 ["Requests"]
      324 GETIMPORT                        R58 K15 [require]
      326 GETTABLEKS                       R59 R57 K71 ["UploadCatalogItemRequest"]
      328 CALL                             R58 1 1
      329 GETIMPORT                        R59 K15 [require]
      331 GETTABLEKS                       R60 R57 K72 ["ConfigureCatalogItemRequest"]
      333 CALL                             R59 1 1
      334 GETIMPORT                        R60 K15 [require]
      336 GETTABLEKS                       R61 R57 K73 ["GetAssetDetailsRequest"]
      338 CALL                             R60 1 1
      339 GETIMPORT                        R61 K15 [require]
      341 GETTABLEKS                       R62 R57 K74 ["PostRevertVersionRequest"]
      343 CALL                             R61 1 1
      344 GETIMPORT                        R62 K15 [require]
      346 GETTABLEKS                       R63 R57 K75 ["PostVersionDescriptionRequest"]
      348 CALL                             R62 1 1
      349 GETIMPORT                        R63 K15 [require]
      351 GETTABLEKS                       R64 R57 K76 ["PatchAssetRequest"]
      353 CALL                             R63 1 1
      354 GETIMPORT                        R64 K15 [require]
      356 GETTABLEKS                       R65 R57 K77 ["PostUploadAssetRequest"]
      358 CALL                             R64 1 1
      359 GETIMPORT                        R65 K15 [require]
      361 GETTABLEKS                       R66 R57 K78 ["PostOverrideAssetRequest"]
      363 CALL                             R65 1 1
      364 GETIMPORT                        R66 K15 [require]
      366 GETTABLEKS                       R67 R57 K79 ["PostUploadAnimationRequest"]
      368 CALL                             R66 1 1
      369 GETIMPORT                        R67 K15 [require]
      371 GETTABLEKS                       R68 R57 K80 ["PostOverrideAnimationRequest"]
      373 CALL                             R67 1 1
      374 GETIMPORT                        R68 K15 [require]
      376 GETTABLEKS                       R69 R57 K81 ["GetIsVerifiedCreatorRequest"]
      378 CALL                             R68 1 1
      379 GETIMPORT                        R69 K15 [require]
      381 GETTABLEKS                       R70 R57 K82 ["PostPackageMetadataRequest"]
      383 CALL                             R69 1 1
      384 GETIMPORT                        R70 K15 [require]
      386 GETTABLEKS                       R71 R57 K83 ["GetPackageCollaboratorsRequest"]
      388 CALL                             R70 1 1
      389 GETIMPORT                        R71 K15 [require]
      391 GETTABLEKS                       R72 R57 K84 ["PutPackagePermissionsRequest"]
      393 CALL                             R71 1 1
      394 GETIMPORT                        R72 K15 [require]
      396 GETTABLEKS                       R73 R57 K85 ["PostAssetCheckPermissions"]
      398 CALL                             R72 1 1
      399 GETIMPORT                        R73 K15 [require]
      401 GETTABLEKS                       R74 R57 K86 ["GetMarketplaceInfoRequest"]
      403 CALL                             R73 1 1
      404 GETIMPORT                        R74 K15 [require]
      406 GETTABLEKS                       R75 R57 K87 ["GetItemUploadFeeRequest"]
      408 CALL                             R74 1 1
      409 GETIMPORT                        R75 K15 [require]
      411 GETTABLEKS                       R76 R57 K88 ["UGCBundleUploadRequest"]
      413 CALL                             R75 1 1
      414 GETIMPORT                        R76 K15 [require]
      416 GETTABLEKS                       R77 R57 K89 ["PatchMakeAssetPublicRequest"]
      418 CALL                             R76 1 1
      419 GETIMPORT                        R77 K15 [require]
      421 GETTABLEKS                       R78 R57 K90 ["GetAssetPermissionsRequest"]
      423 CALL                             R77 1 1
      424 GETIMPORT                        R78 K15 [require]
      426 GETTABLEKS                       R79 R57 K91 ["GetPublishingRequirementsRequest"]
      428 CALL                             R78 1 1
      429 GETIMPORT                        R79 K15 [require]
      431 GETTABLEKS                       R80 R57 K92 ["GetAssetMediaMetadataArrayRequest"]
      433 CALL                             R79 1 1
      434 GETIMPORT                        R80 K15 [require]
      436 GETTABLEKS                       R81 R57 K93 ["UGCAccessoryUploadRequest"]
      438 CALL                             R80 1 1
      439 GETIMPORT                        R81 K15 [require]
      441 GETTABLEKS                       R82 R57 K94 ["GetVersionHistoryRequest"]
      443 CALL                             R81 1 1
      444 GETIMPORT                        R82 K15 [require]
      446 GETTABLEKS                       R83 R57 K95 ["GetFiatProductRequest"]
      448 CALL                             R82 1 1
      449 GETIMPORT                        R83 K15 [require]
      451 GETTABLEKS                       R84 R57 K96 ["GetSellerStatusRequest"]
      453 CALL                             R83 1 1
      454 GETIMPORT                        R84 K15 [require]
      456 GETTABLEKS                       R85 R57 K97 ["GetDefaultBundleDataSharingRequest"]
      458 CALL                             R84 1 1
      459 GETIMPORT                        R85 K15 [require]
      461 GETTABLEKS                       R86 R1 K7 ["Src"]
      463 GETTABLEKS                       R86 R86 K98 ["Actions"]
      465 GETTABLEKS                       R86 R86 K99 ["ClearChange"]
      467 CALL                             R85 1 1
      468 GETIMPORT                        R86 K15 [require]
      470 GETTABLEKS                       R87 R1 K7 ["Src"]
      472 GETTABLEKS                       R87 R87 K98 ["Actions"]
      474 GETTABLEKS                       R87 R87 K100 ["SetAssetConfigTab"]
      476 CALL                             R86 1 1
      477 GETIMPORT                        R87 K15 [require]
      479 GETTABLEKS                       R88 R1 K7 ["Src"]
      481 GETTABLEKS                       R88 R88 K98 ["Actions"]
      483 GETTABLEKS                       R88 R88 K101 ["UpdateAssetConfigStore"]
      485 CALL                             R87 1 1
      486 GETIMPORT                        R88 K15 [require]
      488 GETTABLEKS                       R89 R1 K7 ["Src"]
      490 GETTABLEKS                       R89 R89 K98 ["Actions"]
      492 GETTABLEKS                       R89 R89 K102 ["SetDescendantPermissions"]
      494 CALL                             R88 1 1
      495 GETIMPORT                        R89 K15 [require]
      497 GETTABLEKS                       R90 R1 K7 ["Src"]
      499 GETTABLEKS                       R90 R90 K98 ["Actions"]
      501 GETTABLEKS                       R90 R90 K103 ["UploadResult"]
      503 CALL                             R89 1 1
      504 GETIMPORT                        R90 K15 [require]
      506 GETTABLEKS                       R91 R1 K7 ["Src"]
      508 GETTABLEKS                       R91 R91 K98 ["Actions"]
      510 GETTABLEKS                       R91 R91 K104 ["ValidateAnimationResult"]
      512 CALL                             R90 1 1
      513 GETIMPORT                        R91 K15 [require]
      515 GETTABLEKS                       R92 R1 K7 ["Src"]
      517 GETTABLEKS                       R92 R92 K105 ["Thunks"]
      519 GETTABLEKS                       R92 R92 K106 ["GetGroupMetadata"]
      521 CALL                             R91 1 1
      522 GETIMPORT                        R92 K15 [require]
      524 GETTABLEKS                       R93 R1 K7 ["Src"]
      526 GETTABLEKS                       R93 R93 K105 ["Thunks"]
      528 GETTABLEKS                       R93 R93 K107 ["GetGroupRoleInfo"]
      530 CALL                             R92 1 1
      531 GETIMPORT                        R93 K15 [require]
      533 GETTABLEKS                       R94 R1 K7 ["Src"]
      535 GETTABLEKS                       R94 R94 K105 ["Thunks"]
      537 GETTABLEKS                       R94 R94 K108 ["GetUsername"]
      539 CALL                             R93 1 1
      540 GETIMPORT                        R94 K15 [require]
      542 GETTABLEKS                       R95 R1 K7 ["Src"]
      544 GETTABLEKS                       R95 R95 K105 ["Thunks"]
      546 GETTABLEKS                       R95 R95 K109 ["CheckAvatarAssetPrivacy"]
      548 CALL                             R94 1 1
      549 GETIMPORT                        R95 K15 [require]
      551 GETTABLEKS                       R96 R1 K7 ["Src"]
      553 GETTABLEKS                       R96 R96 K105 ["Thunks"]
      555 GETTABLEKS                       R96 R96 K32 ["AssetConfiguration"]
      557 GETTABLEKS                       R96 R96 K110 ["DownloadFlowRequest"]
      559 CALL                             R95 1 1
      560 GETIMPORT                        R96 K15 [require]
      562 GETTABLEKS                       R97 R1 K7 ["Src"]
      564 GETTABLEKS                       R97 R97 K105 ["Thunks"]
      566 GETTABLEKS                       R97 R97 K32 ["AssetConfiguration"]
      568 GETTABLEKS                       R97 R97 K111 ["EditFlowRequest"]
      570 CALL                             R96 1 1
      571 GETIMPORT                        R97 K15 [require]
      573 GETTABLEKS                       R98 R1 K7 ["Src"]
      575 GETTABLEKS                       R98 R98 K105 ["Thunks"]
      577 GETTABLEKS                       R98 R98 K32 ["AssetConfiguration"]
      579 GETTABLEKS                       R98 R98 K112 ["UploadFlowRequest"]
      581 CALL                             R97 1 1
      582 GETIMPORT                        R98 K15 [require]
      584 GETTABLEKS                       R99 R1 K7 ["Src"]
      586 GETTABLEKS                       R99 R99 K113 ["ContextServices"]
      588 GETTABLEKS                       R99 R99 K114 ["IXPContext"]
      590 CALL                             R98 1 1
      591 GETIMPORT                        R99 K15 [require]
      593 GETTABLEKS                       R100 R1 K7 ["Src"]
      595 GETTABLEKS                       R100 R100 K113 ["ContextServices"]
      597 GETTABLEKS                       R100 R100 K115 ["NetworkContext"]
      599 CALL                             R99 1 1
      600 GETIMPORT                        R100 K15 [require]
      602 GETTABLEKS                       R101 R1 K7 ["Src"]
      604 GETTABLEKS                       R101 R101 K113 ["ContextServices"]
      606 GETTABLEKS                       R101 R101 K116 ["PublishServiceContext"]
      608 CALL                             R100 1 1
      609 GETIMPORT                        R101 K15 [require]
      611 GETTABLEKS                       R102 R1 K7 ["Src"]
      613 GETTABLEKS                       R102 R102 K113 ["ContextServices"]
      615 GETTABLEKS                       R102 R102 K117 ["PluginGuiServiceContext"]
      617 CALL                             R101 1 1
      618 GETIMPORT                        R102 K15 [require]
      620 GETTABLEKS                       R103 R1 K7 ["Src"]
      622 GETTABLEKS                       R103 R103 K113 ["ContextServices"]
      624 GETTABLEKS                       R103 R103 K118 ["ContentProviderContext"]
      626 CALL                             R102 1 1
      627 GETIMPORT                        R103 K15 [require]
      629 GETTABLEKS                       R104 R13 K59 ["Framework"]
      631 CALL                             R103 1 1
      632 GETTABLEKS                       R104 R103 K113 ["ContextServices"]
      634 GETTABLEKS                       R105 R104 K119 ["withContext"]
      636 GETTABLEKS                       R106 R103 K120 ["UI"]
      638 GETTABLEKS                       R106 R106 K121 ["LoadingIndicator"]
      640 GETTABLEKS                       R107 R103 K120 ["UI"]
      642 GETTABLEKS                       R107 R107 K122 ["Container"]
      644 GETTABLEKS                       R108 R15 K123 ["PureComponent"]
      646 LOADK                            R110 K124 ["AssetConfig"]
      647 NAMECALL                         R108 R108 K125 ["extend"]
      649 CALL                             R108 2 1
      650 GETIMPORT                        R109 K128 [utf8.char]
      652 LOADK                            R110 K129 [57346]
      653 CALL                             R109 1 1
      654 GETIMPORT                        R110 K15 [require]
      656 GETTABLEKS                       R111 R1 K7 ["Src"]
      658 GETTABLEKS                       R111 R111 K20 ["Flags"]
      660 GETTABLEKS                       R111 R111 K130 ["getFFlagToolboxPublishFlowHelpers"]
      662 CALL                             R110 1 1
      663 GETIMPORT                        R111 K15 [require]
      665 GETTABLEKS                       R112 R1 K7 ["Src"]
      667 GETTABLEKS                       R112 R112 K20 ["Flags"]
      669 GETTABLEKS                       R112 R112 K131 ["getFFlagEnableUploadingMakeup"]
      671 CALL                             R111 1 1
      672 GETIMPORT                        R112 K15 [require]
      674 GETTABLEKS                       R113 R1 K7 ["Src"]
      676 GETTABLEKS                       R113 R113 K20 ["Flags"]
      678 GETTABLEKS                       R113 R113 K132 ["getFFlagEnableUploadingAvatarAnimations"]
      680 CALL                             R112 1 1
      681 GETIMPORT                        R113 K15 [require]
      683 GETTABLEKS                       R114 R1 K7 ["Src"]
      685 GETTABLEKS                       R114 R114 K20 ["Flags"]
      687 GETTABLEKS                       R114 R114 K133 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      689 CALL                             R113 1 1
      690 GETIMPORT                        R114 K15 [require]
      692 GETTABLEKS                       R115 R1 K7 ["Src"]
      694 GETTABLEKS                       R115 R115 K20 ["Flags"]
      696 GETTABLEKS                       R115 R115 K134 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      698 CALL                             R114 1 1
      699 GETIMPORT                        R115 K15 [require]
      701 GETTABLEKS                       R116 R1 K7 ["Src"]
      703 GETTABLEKS                       R116 R116 K20 ["Flags"]
      705 GETTABLEKS                       R116 R116 K135 ["getFFlagDividerFoundationMigration"]
      707 CALL                             R115 1 1
      708 NEWCLOSURE                       R116 P0
      709 CAPTURE                          VAL R10
      710 CAPTURE                          VAL R39
      711 CAPTURE                          VAL R111
      712 CAPTURE                          VAL R41
      713 CAPTURE                          VAL R38
      714 CAPTURE                          VAL R6
      715 CAPTURE                          VAL R35
      716 CAPTURE                          VAL R110
      717 CAPTURE                          VAL R18
      718 CAPTURE                          VAL R4
      719 CAPTURE                          VAL R5
      720 CAPTURE                          REF R46
      721 CAPTURE                          VAL R11
      722 CAPTURE                          VAL R56
      723 CAPTURE                          VAL R12
      724 CAPTURE                          VAL R26
      725 CAPTURE                          VAL R7
      726 CAPTURE                          VAL R9
      727 CAPTURE                          VAL R19
      728 CAPTURE                          VAL R113
      729 CAPTURE                          VAL R112
      730 CAPTURE                          VAL R48
      731 CAPTURE                          VAL R49
      732 CAPTURE                          VAL R55
      733 CAPTURE                          VAL R37
      734 SETTABLEKS                       R116 R108 K136 ["init"]
      736 DUPCLOSURE                       R116 K137 [PROTO_63]
      737 SETTABLEKS                       R116 R108 K138 ["attachXButtonCallback"]
      739 DUPCLOSURE                       R116 K139 [PROTO_64]
      740 SETTABLEKS                       R116 R108 K140 ["detachXButtonCallback"]
      742 DUPCLOSURE                       R116 K141 [PROTO_65]
      743 CAPTURE                          VAL R38
      744 SETTABLEKS                       R116 R108 K142 ["isLoading"]
      746 DUPCLOSURE                       R116 K143 [PROTO_66]
      747 CAPTURE                          VAL R18
      748 DUPCLOSURE                       R117 K144 [PROTO_67]
      749 CAPTURE                          VAL R38
      750 CAPTURE                          VAL R56
      751 CAPTURE                          VAL R35
      752 CAPTURE                          VAL R41
      753 CAPTURE                          VAL R3
      754 CAPTURE                          VAL R43
      755 CAPTURE                          VAL R114
      756 CAPTURE                          VAL R116
      757 CAPTURE                          VAL R39
      758 SETTABLEKS                       R117 R108 K145 ["didUpdate"]
      760 DUPCLOSURE                       R117 K146 [PROTO_68]
      761 CAPTURE                          VAL R51
      762 SETTABLEKS                       R117 R108 K147 ["versionsGetPageRootItems"]
      764 DUPCLOSURE                       R117 K148 [PROTO_71]
      765 CAPTURE                          VAL R84
      766 SETTABLEKS                       R117 R108 K149 ["getDefaultBundleDataSharing"]
      768 DUPCLOSURE                       R117 K150 [PROTO_77]
      769 CAPTURE                          VAL R38
      770 CAPTURE                          VAL R41
      771 SETTABLEKS                       R117 R108 K151 ["getAssetInformation"]
      773 DUPCLOSURE                       R117 K152 [PROTO_79]
      774 CAPTURE                          VAL R41
      775 CAPTURE                          VAL R8
      776 CAPTURE                          VAL R45
      777 SETTABLEKS                       R117 R108 K153 ["didMount"]
      779 DUPCLOSURE                       R117 K154 [PROTO_80]
      780 SETTABLEKS                       R117 R108 K155 ["willUnmount"]
      782 DUPCLOSURE                       R117 K156 [PROTO_83]
      783 CAPTURE                          VAL R38
      784 CAPTURE                          VAL R56
      785 CAPTURE                          VAL R10
      786 CAPTURE                          VAL R41
      787 CAPTURE                          VAL R40
      788 CAPTURE                          VAL R112
      789 CAPTURE                          VAL R36
      790 CAPTURE                          VAL R43
      791 CAPTURE                          VAL R111
      792 CAPTURE                          VAL R39
      793 CAPTURE                          VAL R109
      794 CAPTURE                          VAL R6
      795 CAPTURE                          VAL R15
      796 CAPTURE                          VAL R34
      797 CAPTURE                          VAL R31
      798 CAPTURE                          VAL R32
      799 CAPTURE                          VAL R30
      800 CAPTURE                          VAL R22
      801 CAPTURE                          VAL R115
      802 CAPTURE                          VAL R14
      803 CAPTURE                          VAL R17
      804 CAPTURE                          VAL R107
      805 CAPTURE                          VAL R106
      806 CAPTURE                          VAL R23
      807 CAPTURE                          VAL R113
      808 CAPTURE                          VAL R25
      809 CAPTURE                          VAL R114
      810 CAPTURE                          VAL R27
      811 CAPTURE                          VAL R33
      812 CAPTURE                          VAL R29
      813 CAPTURE                          VAL R28
      814 CAPTURE                          VAL R24
      815 SETTABLEKS                       R117 R108 K157 ["render"]
      817 MOVE                             R117 R105
      818 DUPTABLE                         R118 K167 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      819 GETTABLEKS                       R119 R104 K158 ["Focus"]
      821 SETTABLEKS                       R119 R118 K158 ["Focus"]
      823 JUMPIFNOT                        R5 ; [+2]
      824 MOVE                             R119 R98
      825 JUMP                             ; [+1]
      826 LOADNIL                          R119
      827 SETTABLEKS                       R119 R118 K159 ["IXP"]
      829 GETTABLEKS                       R119 R104 K160 ["Localization"]
      831 SETTABLEKS                       R119 R118 K160 ["Localization"]
      833 GETTABLEKS                       R119 R104 K161 ["Stylizer"]
      835 SETTABLEKS                       R119 R118 K161 ["Stylizer"]
      837 MOVE                             R120 R111
      838 CALL                             R120 0 1
      839 JUMPIFNOT                        R120 ; [+3]
      840 GETTABLEKS                       R119 R104 K162 ["Plugin"]
      842 JUMP                             ; [+1]
      843 LOADNIL                          R119
      844 SETTABLEKS                       R119 R118 K162 ["Plugin"]
      846 SETTABLEKS                       R99 R118 K163 ["Network"]
      848 SETTABLEKS                       R100 R118 K164 ["PublishService"]
      850 MOVE                             R120 R10
      851 CALL                             R120 0 1
      852 JUMPIFNOT                        R120 ; [+2]
      853 MOVE                             R119 R101
      854 JUMP                             ; [+1]
      855 LOADNIL                          R119
      856 SETTABLEKS                       R119 R118 K165 ["PluginGuiService"]
      858 MOVE                             R120 R10
      859 CALL                             R120 0 1
      860 JUMPIFNOT                        R120 ; [+2]
      861 MOVE                             R119 R102
      862 JUMP                             ; [+1]
      863 LOADNIL                          R119
      864 SETTABLEKS                       R119 R118 K166 ["ContentProvider"]
      866 CALL                             R117 1 1
      867 MOVE                             R118 R108
      868 CALL                             R117 1 1
      869 MOVE                             R108 R117
      870 DUPCLOSURE                       R117 K168 [PROTO_84]
      871 CAPTURE                          VAL R55
      872 CAPTURE                          VAL R114
      873 CAPTURE                          VAL R4
      874 CAPTURE                          VAL R5
      875 CAPTURE                          VAL R3
      876 CAPTURE                          VAL R45
      877 CAPTURE                          VAL R112
      878 CAPTURE                          VAL R10
      879 DUPCLOSURE                       R118 K169 [PROTO_124]
      880 CAPTURE                          VAL R60
      881 CAPTURE                          VAL R73
      882 CAPTURE                          VAL R81
      883 CAPTURE                          VAL R52
      884 CAPTURE                          VAL R89
      885 CAPTURE                          VAL R18
      886 CAPTURE                          VAL R110
      887 CAPTURE                          VAL R58
      888 CAPTURE                          VAL R59
      889 CAPTURE                          VAL R63
      890 CAPTURE                          VAL R64
      891 CAPTURE                          VAL R7
      892 CAPTURE                          VAL R61
      893 CAPTURE                          VAL R62
      894 CAPTURE                          VAL R86
      895 CAPTURE                          VAL R85
      896 CAPTURE                          VAL R38
      897 CAPTURE                          VAL R65
      898 CAPTURE                          VAL R68
      899 CAPTURE                          VAL R74
      900 CAPTURE                          VAL R42
      901 CAPTURE                          VAL R80
      902 CAPTURE                          VAL R75
      903 CAPTURE                          VAL R69
      904 CAPTURE                          VAL R87
      905 CAPTURE                          VAL R70
      906 CAPTURE                          VAL R71
      907 CAPTURE                          VAL R72
      908 CAPTURE                          VAL R91
      909 CAPTURE                          VAL R92
      910 CAPTURE                          VAL R93
      911 CAPTURE                          VAL R76
      912 CAPTURE                          VAL R77
      913 CAPTURE                          VAL R88
      914 CAPTURE                          VAL R78
      915 CAPTURE                          VAL R79
      916 CAPTURE                          VAL R82
      917 CAPTURE                          VAL R8
      918 CAPTURE                          VAL R83
      919 CAPTURE                          VAL R90
      920 CAPTURE                          VAL R10
      921 CAPTURE                          VAL R94
      922 CAPTURE                          VAL R66
      923 CAPTURE                          VAL R67
      924 CAPTURE                          VAL R95
      925 CAPTURE                          VAL R96
      926 CAPTURE                          VAL R97
      927 GETTABLEKS                       R119 R16 K170 ["connect"]
      929 MOVE                             R120 R117
      930 MOVE                             R121 R118
      931 CALL                             R119 2 1
      932 MOVE                             R120 R108
      933 CALL                             R119 1 -1
      934 CLOSEUPVALS                      R46
      935 RETURN                           R119 -1
