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
        0 DUPCLOSURE                       R0 K0 [PROTO_17]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K1 ["props"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["state"]
        7 GETTABLEKS                       R4 R1 K3 ["groupId"]
        9 JUMPIFNOT                        R4 ; [+10]
       10 GETTABLEKS                       R4 R1 K3 ["groupId"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["None"]
       15 JUMPIFEQ                         R4 R5 ; [+4]
       17 GETTABLEKS                       R3 R1 K3 ["groupId"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R4 2
       22 JUMPIF                           R4 ; [+8]
       23 GETUPVAL                         R4 3
       24 JUMPIFNOT                        R4 ; [+6]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R5 R1 K5 ["IXP"]
       28 LOADK                            R6 K6 ["MarketplaceModelsAsPackages"]
       29 LOADK                            R7 K7 ["MarketplaceModelsAsPackagesEnabled"]
       30 CALL                             R4 3 1
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       34 GETTABLEKS                       R5 R5 K9 ["DOWNLOAD_FLOW"]
       36 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       38 JUMPIFNOTEQ                      R5 R6 ; [+18]
       40 GETIMPORT                        R5 K12 [pcall]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R2
       46 CALL                             R5 1 1
       47 JUMPIFNOT                        R5 ; [+4]
       48 GETTABLEKS                       R6 R1 K13 ["onClose"]
       50 CALL                             R6 0 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R6 R1 K14 ["dispatchValidateAnimationResult"]
       54 LOADB                            R7 0
       55 CALL                             R6 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R5 5
       58 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
       60 GETTABLEKS                       R5 R5 K15 ["EDIT_FLOW"]
       62 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       64 JUMPIFNOTEQ                      R5 R6 ; [+134]
       66 GETUPVAL                         R5 8
       67 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
       69 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
       71 CALL                             R5 1 1
       72 JUMPIFNOT                        R5 ; [+40]
       73 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       75 JUMPIFNOT                        R5 ; [+32]
       76 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       78 GETTABLEKS                       R5 R5 K19 ["Status"]
       80 JUMPIFNOT                        R5 ; [+27]
       81 GETTABLEKS                       R5 R1 K20 ["configureCatalogItem"]
       83 GETTABLEKS                       R6 R1 K21 ["Network"]
       85 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
       87 GETTABLEKS                       R7 R1 K23 ["assetId"]
       89 GETTABLEKS                       R8 R2 K24 ["name"]
       91 GETTABLEKS                       R10 R2 K26 ["description"]
       93 ORK                              R9 R10 K25 [""]
       94 GETTABLEKS                       R10 R1 K18 ["assetConfigData"]
       96 GETTABLEKS                       R10 R10 K19 ["Status"]
       98 GETTABLEKS                       R11 R2 K27 ["status"]
      100 GETTABLEKS                       R12 R1 K18 ["assetConfigData"]
      102 GETTABLEKS                       R12 R12 K28 ["Price"]
      104 GETTABLEKS                       R13 R2 K29 ["price"]
      106 CALL                             R5 8 0
      107 RETURN                           R0 0
      108 GETIMPORT                        R5 K31 [warn]
      110 LOADK                            R6 K32 ["Could not configure sales, missing Asset Status!"]
      111 CALL                             R5 1 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R5 8
      114 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      116 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      118 CALL                             R5 1 1
      119 JUMPIFNOT                        R5 ; [+509]
      120 GETTABLEKS                       R5 R2 K34 ["copyOn"]
      122 GETTABLEKS                       R6 R2 K35 ["copyChanged"]
      124 JUMPIF                           R6 ; [+1]
      125 LOADNIL                          R5
      126 GETTABLEKS                       R6 R1 K36 ["configureMarketplaceItem"]
      128 DUPTABLE                         R7 K45 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      129 GETTABLEKS                       R8 R1 K21 ["Network"]
      131 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      133 SETTABLEKS                       R8 R7 K22 ["networkInterface"]
      135 GETTABLEKS                       R8 R2 K23 ["assetId"]
      137 SETTABLEKS                       R8 R7 K23 ["assetId"]
      139 GETTABLEKS                       R8 R2 K37 ["assetMediaUpdateData"]
      141 SETTABLEKS                       R8 R7 K37 ["assetMediaUpdateData"]
      143 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      145 SETTABLEKS                       R8 R7 K17 ["assetTypeEnum"]
      147 GETTABLEKS                       R8 R2 K24 ["name"]
      149 SETTABLEKS                       R8 R7 K24 ["name"]
      151 GETTABLEKS                       R9 R2 K26 ["description"]
      153 ORK                              R8 R9 K25 [""]
      154 SETTABLEKS                       R8 R7 K26 ["description"]
      156 GETTABLEKS                       R8 R2 K38 ["commentOn"]
      158 SETTABLEKS                       R8 R7 K38 ["commentOn"]
      160 SETTABLEKS                       R5 R7 K34 ["copyOn"]
      162 GETTABLEKS                       R8 R2 K27 ["status"]
      164 SETTABLEKS                       R8 R7 K39 ["saleStatus"]
      166 GETTABLEKS                       R8 R1 K18 ["assetConfigData"]
      168 GETTABLEKS                       R8 R8 K28 ["Price"]
      170 SETTABLEKS                       R8 R7 K40 ["fromPrice"]
      172 GETTABLEKS                       R8 R2 K29 ["price"]
      174 SETTABLEKS                       R8 R7 K29 ["price"]
      176 GETTABLEKS                       R8 R2 K41 ["iconFile"]
      178 SETTABLEKS                       R8 R7 K41 ["iconFile"]
      180 GETTABLEKS                       R8 R2 K42 ["isAssetPublic"]
      182 SETTABLEKS                       R8 R7 K42 ["isAssetPublic"]
      184 SETTABLEKS                       R4 R7 K43 ["isConvertMarketplaceModelsToPackageEnabled"]
      186 GETTABLEKS                       R9 R1 K46 ["fiatProduct"]
      188 JUMPIFNOT                        R9 ; [+5]
      189 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      191 GETTABLEKS                       R8 R8 K44 ["basePrice"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R8
      195 SETTABLEKS                       R8 R7 K44 ["basePrice"]
      197 CALL                             R6 1 0
      198 RETURN                           R0 0
      199 GETUPVAL                         R5 5
      200 GETTABLEKS                       R5 R5 K8 ["FLOW_TYPE"]
      202 GETTABLEKS                       R5 R5 K47 ["UPLOAD_FLOW"]
      204 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
      206 JUMPIFNOTEQ                      R5 R6 ; [+422]
      208 GETUPVAL                         R5 9
      209 CALL                             R5 0 1
      210 JUMPIFNOT                        R5 ; [+26]
      211 GETUPVAL                         R5 8
      212 GETTABLEKS                       R5 R5 K48 ["isMakeupAsset"]
      214 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      216 CALL                             R5 1 1
      217 JUMPIFNOT                        R5 ; [+19]
      218 GETTABLEKS                       R5 R2 K49 ["selectedColor"]
      220 JUMPIFNOT                        R5 ; [+16]
      221 GETTABLEKS                       R5 R1 K50 ["instances"]
      223 JUMPIFNOT                        R5 ; [+13]
      224 GETTABLEKS                       R6 R1 K50 ["instances"]
      226 GETTABLEN                        R5 R6 1
      227 JUMPIFNOT                        R5 ; [+9]
      228 GETUPVAL                         R5 8
      229 GETTABLEKS                       R5 R5 K51 ["addMakeupThumbnailConfiguration"]
      231 GETTABLEKS                       R7 R1 K50 ["instances"]
      233 GETTABLEN                        R6 R7 1
      234 GETTABLEKS                       R7 R2 K49 ["selectedColor"]
      236 CALL                             R5 2 0
      237 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      239 GETIMPORT                        R6 K55 [Enum.AssetType.Animation]
      241 JUMPIFEQ                         R5 R6 ; [+7]
      243 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      245 GETIMPORT                        R6 K57 [Enum.AssetType.EmoteAnimation]
      247 JUMPIFNOTEQ                      R5 R6 ; [+61]
      249 GETUPVAL                         R5 10
      250 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      252 NAMECALL                         R5 R5 K59 ["isOverride"]
      254 CALL                             R5 2 1
      255 JUMPIFNOT                        R5 ; [+12]
      256 GETTABLEKS                       R5 R1 K60 ["overrideAnimationAsset"]
      258 GETTABLEKS                       R6 R1 K21 ["Network"]
      260 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      262 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      264 GETTABLEKS                       R8 R1 K50 ["instances"]
      266 CALL                             R5 3 0
      267 RETURN                           R0 0
      268 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      270 DUPTABLE                         R6 K66 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      271 GETTABLEKS                       R7 R1 K21 ["Network"]
      273 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      275 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      277 LOADN                            R7 0
      278 SETTABLEKS                       R7 R6 K23 ["assetId"]
      280 GETTABLEKS                       R7 R2 K24 ["name"]
      282 SETTABLEKS                       R7 R6 K24 ["name"]
      284 GETTABLEKS                       R8 R2 K26 ["description"]
      286 ORK                              R7 R8 K25 [""]
      287 SETTABLEKS                       R7 R6 K26 ["description"]
      289 GETUPVAL                         R7 11
      290 CALL                             R7 0 1
      291 SETTABLEKS                       R7 R6 K63 ["userId"]
      293 SETTABLEKS                       R3 R6 K3 ["groupId"]
      295 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      297 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      299 GETTABLEKS                       R7 R1 K67 ["uploadFee"]
      301 SETTABLEKS                       R7 R6 K64 ["expectedPrice"]
      303 GETTABLEKS                       R7 R1 K50 ["instances"]
      305 SETTABLEKS                       R7 R6 K65 ["instance"]
      307 CALL                             R5 1 0
      308 RETURN                           R0 0
      309 GETUPVAL                         R5 8
      310 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      312 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      314 CALL                             R5 1 1
      315 JUMPIFNOT                        R5 ; [+134]
      316 GETUPVAL                         R5 12
      317 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      319 GETTABLEKS                       R8 R2 K68 ["dataSharingEnabled"]
      321 GETTABLEKS                       R9 R2 K69 ["dataSharingToggled"]
      323 NAMECALL                         R5 R5 K70 ["getDataSharingLicenseTypes"]
      325 CALL                             R5 4 1
      326 GETTABLEKS                       R6 R1 K71 ["isUploadFeeEnabled"]
      328 JUMPIFNOT                        R6 ; [+62]
      329 GETTABLEKS                       R6 R1 K72 ["uploadCatalogItemWithFee"]
      331 GETTABLEKS                       R7 R1 K21 ["Network"]
      333 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      335 GETUPVAL                         R8 0
      336 GETTABLEKS                       R8 R8 K2 ["state"]
      338 GETTABLEKS                       R8 R8 K24 ["name"]
      340 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      342 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      344 MOVE                             R12 R10
      345 JUMPIFNOT                        R12 ; [+5]
      346 MOVE                             R12 R11
      347 JUMPIFNOT                        R12 ; [+3]
      348 GETTABLEKS                       R13 R11 K74 ["Name"]
      350 GETTABLE                         R12 R10 R13
      351 MOVE                             R13 R12
      352 JUMPIFNOT                        R13 ; [+2]
      353 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      355 MOVE                             R14 R13
      356 JUMPIFNOT                        R14 ; [+6]
      357 LOADB                            R14 0
      358 LENGTH                           R15 R13
      359 LOADN                            R16 0
      360 JUMPIFNOTLT                      R16 R15 ; [+2]
      362 GETTABLEN                        R14 R13 1
      363 JUMPIFNOT                        R14 ; [+8]
      364 GETIMPORT                        R15 K78 [string.gsub]
      366 MOVE                             R16 R14
      367 LOADK                            R17 K79 ["^%."]
      368 LOADK                            R18 K25 [""]
      369 CALL                             R15 3 1
      370 MOVE                             R9 R15
      371 JUMPIF                           R9 ; [+1]
      372 LOADK                            R9 K80 ["rbxm"]
      373 GETUPVAL                         R11 0
      374 GETTABLEKS                       R11 R11 K2 ["state"]
      376 GETTABLEKS                       R11 R11 K26 ["description"]
      378 ORK                              R10 R11 K25 [""]
      379 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      381 GETTABLEKS                       R12 R1 K50 ["instances"]
      383 MOVE                             R13 R3
      384 MOVE                             R14 R5
      385 GETTABLEKS                       R15 R1 K81 ["Localization"]
      387 GETTABLEKS                       R16 R1 K67 ["uploadFee"]
      389 CALL                             R6 10 0
      390 RETURN                           R0 0
      391 GETTABLEKS                       R6 R1 K82 ["uploadCatalogItem"]
      393 GETTABLEKS                       R7 R1 K21 ["Network"]
      395 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      397 GETUPVAL                         R8 0
      398 GETTABLEKS                       R8 R8 K2 ["state"]
      400 GETTABLEKS                       R8 R8 K24 ["name"]
      402 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      404 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      406 MOVE                             R12 R10
      407 JUMPIFNOT                        R12 ; [+5]
      408 MOVE                             R12 R11
      409 JUMPIFNOT                        R12 ; [+3]
      410 GETTABLEKS                       R13 R11 K74 ["Name"]
      412 GETTABLE                         R12 R10 R13
      413 MOVE                             R13 R12
      414 JUMPIFNOT                        R13 ; [+2]
      415 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      417 MOVE                             R14 R13
      418 JUMPIFNOT                        R14 ; [+6]
      419 LOADB                            R14 0
      420 LENGTH                           R15 R13
      421 LOADN                            R16 0
      422 JUMPIFNOTLT                      R16 R15 ; [+2]
      424 GETTABLEN                        R14 R13 1
      425 JUMPIFNOT                        R14 ; [+8]
      426 GETIMPORT                        R15 K78 [string.gsub]
      428 MOVE                             R16 R14
      429 LOADK                            R17 K79 ["^%."]
      430 LOADK                            R18 K25 [""]
      431 CALL                             R15 3 1
      432 MOVE                             R9 R15
      433 JUMPIF                           R9 ; [+1]
      434 LOADK                            R9 K80 ["rbxm"]
      435 GETUPVAL                         R11 0
      436 GETTABLEKS                       R11 R11 K2 ["state"]
      438 GETTABLEKS                       R11 R11 K26 ["description"]
      440 ORK                              R10 R11 K25 [""]
      441 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      443 GETTABLEKS                       R12 R1 K50 ["instances"]
      445 MOVE                             R13 R5
      446 GETTABLEKS                       R14 R1 K81 ["Localization"]
      448 CALL                             R6 8 0
      449 RETURN                           R0 0
      450 GETUPVAL                         R5 8
      451 GETTABLEKS                       R5 R5 K83 ["isUGCBundleType"]
      453 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      455 CALL                             R5 1 1
      456 JUMPIFNOT                        R5 ; [+55]
      457 LOADNIL                          R5
      458 GETTABLEKS                       R6 R2 K68 ["dataSharingEnabled"]
      460 JUMPIFNOT                        R6 ; [+16]
      461 GETTABLEKS                       R6 R2 K69 ["dataSharingToggled"]
      463 JUMPIFNOT                        R6 ; [+11]
      464 NEWTABLE                         R6 0 1
      466 GETUPVAL                         R7 13
      467 GETTABLEKS                       R7 R7 K84 ["DataSharingLicenseTypes"]
      469 GETTABLEKS                       R7 R7 K85 ["RobloxGlobal"]
      471 SETLIST                          R6 R7 1 [1]
      473 MOVE                             R5 R6
      474 JUMP                             ; [+2]
      475 NEWTABLE                         R5 0 0
      477 GETTABLEKS                       R6 R1 K86 ["uploadUGCBundleWithFee"]
      479 GETTABLEKS                       R7 R1 K21 ["Network"]
      481 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      483 GETTABLEKS                       R9 R1 K50 ["instances"]
      485 GETTABLEN                        R8 R9 1
      486 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      488 GETTABLEKS                       R10 R2 K24 ["name"]
      490 GETTABLEKS                       R12 R2 K26 ["description"]
      492 ORK                              R11 R12 K25 [""]
      493 GETTABLEKS                       R12 R1 K87 ["allowedBundleTypeSettings"]
      495 GETTABLEKS                       R13 R1 K81 ["Localization"]
      497 GETTABLEKS                       R14 R1 K67 ["uploadFee"]
      499 MOVE                             R15 R5
      500 GETTABLEKS                       R16 R1 K88 ["PublishService"]
      502 GETTABLEKS                       R16 R16 K89 ["publishService"]
      504 GETTABLEKS                       R18 R1 K90 ["groupBundlesUploadEnabledForUser"]
      506 JUMPIFNOT                        R18 ; [+2]
      507 MOVE                             R17 R3
      508 JUMP                             ; [+1]
      509 LOADNIL                          R17
      510 CALL                             R6 11 0
      511 RETURN                           R0 0
      512 GETUPVAL                         R5 8
      513 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      515 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      517 CALL                             R5 1 1
      518 JUMPIFNOT                        R5 ; [+30]
      519 GETUPVAL                         R5 10
      520 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      522 NAMECALL                         R5 R5 K59 ["isOverride"]
      524 CALL                             R5 2 1
      525 JUMPIFNOT                        R5 ; [+23]
      526 GETTABLEKS                       R5 R1 K91 ["overrideAsset"]
      528 GETTABLEKS                       R6 R1 K21 ["Network"]
      530 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      532 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      534 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      536 GETTABLEKS                       R8 R8 K74 ["Name"]
      538 GETTABLEKS                       R9 R1 K50 ["instances"]
      540 GETUPVAL                         R11 14
      541 CALL                             R11 0 1
      542 JUMPIFNOT                        R11 ; [+3]
      543 GETTABLEKS                       R10 R1 K81 ["Localization"]
      545 JUMP                             ; [+1]
      546 LOADNIL                          R10
      547 CALL                             R5 5 0
      548 RETURN                           R0 0
      549 GETTABLEKS                       R5 R1 K92 ["uploadMarketplaceItem"]
      551 DUPTABLE                         R6 K94 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      552 GETTABLEKS                       R7 R1 K21 ["Network"]
      554 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      556 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      558 LOADN                            R7 0
      559 SETTABLEKS                       R7 R6 K23 ["assetId"]
      561 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      563 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      565 GETTABLEKS                       R7 R2 K24 ["name"]
      567 SETTABLEKS                       R7 R6 K24 ["name"]
      569 GETTABLEKS                       R8 R2 K26 ["description"]
      571 ORK                              R7 R8 K25 [""]
      572 SETTABLEKS                       R7 R6 K26 ["description"]
      574 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      576 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      578 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      580 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      582 SETTABLEKS                       R3 R6 K3 ["groupId"]
      584 GETTABLEKS                       R7 R1 K50 ["instances"]
      586 SETTABLEKS                       R7 R6 K50 ["instances"]
      588 JUMPIFNOT                        R4 ; [+2]
      589 LOADB                            R7 1
      590 JUMP                             ; [+1]
      591 LOADNIL                          R7
      592 SETTABLEKS                       R7 R6 K93 ["isMarketplaceModelsAsPackagesEnabled"]
      594 GETTABLEKS                       R7 R2 K27 ["status"]
      596 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      598 GETTABLEKS                       R7 R2 K29 ["price"]
      600 SETTABLEKS                       R7 R6 K29 ["price"]
      602 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      604 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      606 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      608 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      610 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      612 JUMPIFNOT                        R8 ; [+5]
      613 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      615 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      617 JUMP                             ; [+1]
      618 LOADNIL                          R7
      619 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      621 GETUPVAL                         R8 14
      622 CALL                             R8 0 1
      623 JUMPIFNOT                        R8 ; [+3]
      624 GETTABLEKS                       R7 R1 K81 ["Localization"]
      626 JUMP                             ; [+1]
      627 LOADNIL                          R7
      628 CALL                             R5 2 0
      629 RETURN                           R0 0

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
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U14
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          UPVAL U0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K1 ["changeTable"]
       26 MOVE                             R5 R4
       27 JUMPIFNOT                        R5 ; [+8]
       28 GETIMPORT                        R6 K3 [next]
       30 MOVE                             R7 R4
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKNIL                  R6 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K0 ["props"]
       39 GETTABLEKS                       R6 R6 K4 ["resetUploadResult"]
       41 CALL                             R6 0 0
       42 MOVE                             R6 R1
       43 CALL                             R6 0 0
       44 JUMPIFNOT                        R5 ; [+43]
       45 MOVE                             R6 R2
       46 MOVE                             R7 R4
       47 CALL                             R6 1 0
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K0 ["props"]
       51 GETTABLEKS                       R6 R6 K5 ["isPackageAsset"]
       53 JUMPIFNOT                        R6 ; [+34]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K0 ["props"]
       57 GETTABLEKS                       R6 R6 K6 ["assetConfigData"]
       59 GETTABLEKS                       R7 R6 K7 ["Id"]
       61 GETTABLEKS                       R8 R4 K8 ["VersionItemSelect"]
       63 JUMPIFNOT                        R8 ; [+3]
       64 GETTABLEKS                       R9 R4 K8 ["VersionItemSelect"]
       66 GETTABLEN                        R8 R9 1
       67 JUMPIFNOT                        R7 ; [+20]
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K0 ["props"]
       71 GETTABLEKS                       R9 R9 K9 ["dispatchPutPackagePermissionsRequest"]
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K0 ["props"]
       76 GETTABLEKS                       R10 R10 K10 ["Network"]
       78 GETTABLEKS                       R10 R10 K11 ["networkInterface"]
       80 MOVE                             R11 R7
       81 MOVE                             R12 R8
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K0 ["props"]
       85 GETTABLEKS                       R13 R13 K12 ["Localization"]
       87 CALL                             R9 4 0
       88 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigCategoryType"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K4 [{"categoryType"}]
       10 SETTABLEKS                       R0 R3 K3 ["categoryType"]
       12 NAMECALL                         R1 R1 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R0 K2 [{"canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["type"]
        4 JUMPIFEQKS                       R2 K4 ["allowed"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["canUploadWithUgcRestrictions"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["type"]
       13 JUMPIFNOTEQKS                    R2 K5 ["error"] ; [+5]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["message"]
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["denyReason"]
       22 FASTCALL1                        TOSTRING R2 ; [+2]
       23 GETIMPORT                        R1 K9 [tostring]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K1 ["canUploadWithUgcRestrictionsDenyReason"]
       28 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isUGCBundleType"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["assetTypeEnum"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADN                            R0 1
       11 JUMP                             ; [+1]
       12 LOADN                            R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["props"]
       16 GETTABLEKS                       R1 R1 K3 ["groupId"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["props"]
       22 GETTABLEKS                       R3 R3 K4 ["Network"]
       24 GETTABLEKS                       R3 R3 K5 ["networkInterface"]
       26 MOVE                             R4 R1
       27 MOVE                             R5 R0
       28 CALL                             R2 3 1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U1
       31 NAMECALL                         R2 R2 K6 ["andThen"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_38:
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
       32 GETUPVAL                         R5 2
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+4]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K11 ["getUploadPermissionStatus"]
       38 CALL                             R5 0 0
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K12 ["Dictionary"]
       42 GETTABLEKS                       R5 R5 K13 ["join"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K14 ["state"]
       47 GETTABLEKS                       R6 R6 K15 ["owner"]
       49 JUMPIF                           R6 ; [+2]
       50 NEWTABLE                         R6 0 0
       52 DUPTABLE                         R7 K17 [{"typeId"}]
       53 SETTABLEKS                       R0 R7 K16 ["typeId"]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K0 ["props"]
       59 GETTABLEKS                       R6 R6 K18 ["setOwner"]
       61 MOVE                             R7 R5
       62 MOVE                             R8 R3
       63 CALL                             R6 2 0
       64 RETURN                           R0 0

PROTO_39:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_39]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_57:
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

PROTO_58:
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

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
        0 NEWTABLE                         R2 64 0
        2 LOADNIL                          R3
        3 SETTABLEKS                       R3 R2 K0 ["assetId"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["name"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["description"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K3 ["owner"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["categoryType"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["canUploadWithUgcRestrictions"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["canUploadWithUgcRestrictionsDenyReason"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K7 ["allowCopy"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K8 ["copyOn"]
       29 LOADB                            R3 0
       30 SETTABLEKS                       R3 R2 K9 ["copyChanged"]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K10 ["allowComment"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K11 ["commentOn"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K12 ["canBePackage"]
       41 LOADNIL                          R3
       42 SETTABLEKS                       R3 R2 K13 ["isPackageAsset"]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K14 ["price"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K15 ["status"]
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K16 ["isAssetPublic"]
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K17 ["assetMediaUpdateData"]
       56 LOADB                            R3 0
       57 SETTABLEKS                       R3 R2 K18 ["isShowChangeDiscardMessageBox"]
       59 LOADB                            R3 0
       60 SETTABLEKS                       R3 R2 K19 ["isPublishAssetsDialogEnabled"]
       62 LOADB                            R3 0
       63 SETTABLEKS                       R3 R2 K20 ["isAssetTypeSelectionAllowed"]
       65 GETUPVAL                         R4 0
       66 CALL                             R4 0 1
       67 JUMPIFNOT                        R4 ; [+2]
       68 LOADNIL                          R3
       69 JUMP                             ; [+1]
       70 LOADB                            R3 0
       71 SETTABLEKS                       R3 R2 K21 ["isShowRobuxSpendMessageBox"]
       73 NEWTABLE                         R3 0 0
       75 SETTABLEKS                       R3 R2 K22 ["descendantIds"]
       77 LOADNIL                          R3
       78 SETTABLEKS                       R3 R2 K23 ["overrideAssetId"]
       80 LOADNIL                          R3
       81 SETTABLEKS                       R3 R2 K24 ["groupId"]
       83 LOADNIL                          R3
       84 SETTABLEKS                       R3 R2 K25 ["iconFile"]
       86 LOADB                            R3 0
       87 SETTABLEKS                       R3 R2 K26 ["dispatchGetFunction"]
       89 LOADB                            R3 0
       90 SETTABLEKS                       R3 R2 K27 ["isConfirmationDialogEnabled"]
       92 LOADB                            R3 0
       93 SETTABLEKS                       R3 R2 K28 ["confirmationDialogKey"]
       95 NEWTABLE                         R3 0 0
       97 SETTABLEKS                       R3 R2 K29 ["versionsCurrentItem"]
       99 NEWTABLE                         R3 0 0
      101 SETTABLEKS                       R3 R2 K30 ["versionsRootItems"]
      103 LOADN                            R3 255
      104 SETTABLEKS                       R3 R2 K31 ["versionsOpenInputKey"]
      106 LOADK                            R3 K32 [""]
      107 SETTABLEKS                       R3 R2 K33 ["versionsPreviousInput"]
      109 LOADN                            R3 1
      110 SETTABLEKS                       R3 R2 K34 ["versionsPageIndex"]
      112 LOADN                            R5 1
      113 GETUPVAL                         R6 1
      114 GETTABLEKS                       R6 R6 K35 ["VERSIONS_ROWS_PER_PAGE"]
      116 NAMECALL                         R3 R0 K36 ["versionsGetPageRootItems"]
      118 CALL                             R3 3 1
      119 SETTABLEKS                       R3 R2 K37 ["versionsPageRootItems"]
      121 NEWTABLE                         R3 0 0
      123 SETTABLEKS                       R3 R2 K38 ["versionDescriptionErrors"]
      125 LOADB                            R3 0
      126 SETTABLEKS                       R3 R2 K39 ["dataSharingEnabled"]
      128 LOADB                            R3 0
      129 SETTABLEKS                       R3 R2 K40 ["dataSharingToggled"]
      131 GETUPVAL                         R4 2
      132 CALL                             R4 0 1
      133 JUMPIFNOT                        R4 ; [+12]
      134 GETUPVAL                         R3 3
      135 GETTABLEKS                       R3 R3 K41 ["getThumbnailSkinColor"]
      137 GETTABLEKS                       R4 R0 K42 ["props"]
      139 GETTABLEKS                       R4 R4 K43 ["Plugin"]
      141 NAMECALL                         R4 R4 K44 ["get"]
      143 CALL                             R4 1 -1
      144 CALL                             R3 -1 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R3
      147 SETTABLEKS                       R3 R2 K45 ["selectedColor"]
      149 LOADB                            R3 0
      150 SETTABLEKS                       R3 R2 K46 ["showColorPickerRequiredError"]
      152 LOADB                            R3 0
      153 SETTABLEKS                       R3 R2 K47 ["showNameRequiredError"]
      155 LOADB                            R3 0
      156 SETTABLEKS                       R3 R2 K48 ["showDescriptionRequiredError"]
      158 SETTABLEKS                       R2 R0 K49 ["state"]
      160 GETTABLEKS                       R2 R0 K49 ["state"]
      162 GETUPVAL                         R3 3
      163 GETTABLEKS                       R3 R3 K50 ["hasAllowedAssetTypesForRelease"]
      165 GETTABLEKS                       R4 R0 K42 ["props"]
      167 GETTABLEKS                       R4 R4 K51 ["allowedAssetTypesForRelease"]
      169 CALL                             R3 1 1
      170 JUMPIFNOT                        R3 ; [+9]
      171 GETUPVAL                         R4 3
      172 GETTABLEKS                       R4 R4 K52 ["isBuyableMarketplaceAsset"]
      174 GETTABLEKS                       R5 R0 K42 ["props"]
      176 GETTABLEKS                       R5 R5 K53 ["assetTypeEnum"]
      178 CALL                             R4 1 1
      179 NOT                              R3 R4
      180 SETTABLEKS                       R3 R2 K20 ["isAssetTypeSelectionAllowed"]
      182 GETUPVAL                         R2 3
      183 GETTABLEKS                       R2 R2 K54 ["isMarketplaceAsset"]
      185 GETTABLEKS                       R3 R1 K53 ["assetTypeEnum"]
      187 CALL                             R2 1 1
      188 JUMPIFNOT                        R2 ; [+9]
      189 GETTABLEKS                       R2 R0 K49 ["state"]
      191 GETUPVAL                         R3 4
      192 GETTABLEKS                       R3 R3 K55 ["ASSET_STATUS"]
      194 GETTABLEKS                       R3 R3 K56 ["OffSale"]
      196 SETTABLEKS                       R3 R2 K15 ["status"]
      198 LOADNIL                          R2
      199 SETTABLEKS                       R2 R0 K57 ["nameString"]
      201 LOADNIL                          R2
      202 SETTABLEKS                       R2 R0 K58 ["descriptionString"]
      204 LOADB                            R2 0
      205 SETTABLEKS                       R2 R0 K59 ["init"]
      207 NEWCLOSURE                       R2 P0
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R2 R0 K60 ["onDialogAccepted"]
      211 NEWCLOSURE                       R2 P1
      212 CAPTURE                          VAL R0
      213 SETTABLEKS                       R2 R0 K61 ["onDialogCanceled"]
      215 NEWCLOSURE                       R2 P2
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R2 R0 K62 ["onAssetPublishDialogAccepted"]
      219 NEWCLOSURE                       R2 P3
      220 CAPTURE                          VAL R0
      221 SETTABLEKS                       R2 R0 K63 ["onAssetPublishDialogCanceled"]
      223 GETUPVAL                         R3 0
      224 CALL                             R3 0 1
      225 JUMPIFNOT                        R3 ; [+2]
      226 LOADNIL                          R2
      227 JUMP                             ; [+2]
      228 NEWCLOSURE                       R2 P4
      229 CAPTURE                          VAL R0
      230 SETTABLEKS                       R2 R0 K64 ["onAssetPublishPayAndConfirmAccepted"]
      232 GETUPVAL                         R3 0
      233 CALL                             R3 0 1
      234 JUMPIFNOT                        R3 ; [+2]
      235 LOADNIL                          R2
      236 JUMP                             ; [+2]
      237 NEWCLOSURE                       R2 P5
      238 CAPTURE                          VAL R0
      239 SETTABLEKS                       R2 R0 K65 ["onAssetPublishPayAndConfirmCanceled"]
      241 NEWCLOSURE                       R2 P6
      242 CAPTURE                          VAL R0
      243 SETTABLEKS                       R2 R0 K66 ["tryMakeAssetsPublic"]
      245 NEWCLOSURE                       R2 P7
      246 CAPTURE                          VAL R0
      247 CAPTURE                          UPVAL U3
      248 CAPTURE                          UPVAL U5
      249 CAPTURE                          UPVAL U4
      250 CAPTURE                          UPVAL U6
      251 CAPTURE                          UPVAL U0
      252 SETTABLEKS                       R2 R0 K67 ["tryPublishWithConfirmDialog"]
      254 NEWCLOSURE                       R2 P8
      255 CAPTURE                          VAL R0
      256 CAPTURE                          UPVAL U7
      257 CAPTURE                          UPVAL U8
      258 CAPTURE                          UPVAL U9
      259 CAPTURE                          UPVAL U10
      260 CAPTURE                          UPVAL U4
      261 CAPTURE                          UPVAL U11
      262 CAPTURE                          UPVAL U3
      263 CAPTURE                          UPVAL U2
      264 CAPTURE                          UPVAL U12
      265 CAPTURE                          UPVAL U13
      266 CAPTURE                          UPVAL U14
      267 CAPTURE                          UPVAL U1
      268 CAPTURE                          UPVAL U15
      269 CAPTURE                          VAL R1
      270 SETTABLEKS                       R2 R0 K68 ["tryPublish"]
      272 NEWCLOSURE                       R2 P9
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R1
      275 CAPTURE                          UPVAL U4
      276 SETTABLEKS                       R2 R0 K69 ["tryCancel"]
      278 NEWCLOSURE                       R2 P10
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R2 R0 K70 ["tryCancelNoYield"]
      282 NEWCLOSURE                       R2 P11
      283 CAPTURE                          VAL R0
      284 SETTABLEKS                       R2 R0 K71 ["tryCancelWithYield"]
      286 NEWCLOSURE                       R2 P12
      287 CAPTURE                          VAL R0
      288 SETTABLEKS                       R2 R0 K72 ["onMessageBoxClosed"]
      290 NEWCLOSURE                       R2 P13
      291 CAPTURE                          UPVAL U16
      292 CAPTURE                          VAL R0
      293 CAPTURE                          UPVAL U17
      294 SETTABLEKS                       R2 R0 K73 ["tryCloseAssetConfig"]
      296 NEWCLOSURE                       R2 P14
      297 CAPTURE                          VAL R0
      298 NEWCLOSURE                       R3 P15
      299 CAPTURE                          VAL R0
      300 CAPTURE                          UPVAL U18
      301 SETTABLEKS                       R3 R0 K74 ["onNameChange"]
      303 NEWCLOSURE                       R3 P16
      304 CAPTURE                          VAL R0
      305 CAPTURE                          UPVAL U18
      306 SETTABLEKS                       R3 R0 K75 ["onDescChange"]
      308 NEWCLOSURE                       R3 P17
      309 CAPTURE                          VAL R0
      310 SETTABLEKS                       R3 R0 K76 ["onStatusChange"]
      312 NEWCLOSURE                       R3 P18
      313 CAPTURE                          VAL R0
      314 SETTABLEKS                       R3 R0 K77 ["onPriceChange"]
      316 GETUPVAL                         R3 19
      317 CALL                             R3 0 1
      318 JUMPIFNOT                        R3 ; [+10]
      319 NEWCLOSURE                       R3 P19
      320 CAPTURE                          VAL R0
      321 SETTABLEKS                       R3 R0 K78 ["onCategoryChange"]
      323 NEWCLOSURE                       R3 P20
      324 CAPTURE                          UPVAL U3
      325 CAPTURE                          VAL R0
      326 CAPTURE                          UPVAL U20
      327 SETTABLEKS                       R3 R0 K79 ["getUploadPermissionStatus"]
      329 NEWCLOSURE                       R3 P21
      330 CAPTURE                          VAL R0
      331 CAPTURE                          UPVAL U7
      332 CAPTURE                          UPVAL U19
      333 SETTABLEKS                       R3 R0 K80 ["onAccessChange"]
      335 NEWCLOSURE                       R3 P22
      336 CAPTURE                          VAL R0
      337 SETTABLEKS                       R3 R0 K81 ["onDataConsentToggleClick"]
      339 NEWCLOSURE                       R3 P23
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R3 R0 K82 ["toggleCopy"]
      343 NEWCLOSURE                       R3 P24
      344 CAPTURE                          VAL R0
      345 SETTABLEKS                       R3 R0 K83 ["toggleComment"]
      347 NEWCLOSURE                       R3 P25
      348 CAPTURE                          VAL R0
      349 SETTABLEKS                       R3 R0 K84 ["toggleDeleteLocal"]
      351 GETUPVAL                         R3 21
      352 CALL                             R3 0 1
      353 JUMPIFNOT                        R3 ; [+9]
      354 NEWCLOSURE                       R3 P26
      355 CAPTURE                          VAL R0
      356 CAPTURE                          UPVAL U7
      357 SETTABLEKS                       R3 R0 K85 ["onAnimationSelectionChanged"]
      359 NEWCLOSURE                       R3 P27
      360 CAPTURE                          VAL R0
      361 SETTABLEKS                       R3 R0 K86 ["onanimationSectionValidityChanged"]
      363 GETUPVAL                         R4 2
      364 CALL                             R4 0 1
      365 JUMPIFNOT                        R4 ; [+4]
      366 NEWCLOSURE                       R3 P28
      367 CAPTURE                          VAL R0
      368 CAPTURE                          UPVAL U3
      369 JUMP                             ; [+1]
      370 LOADNIL                          R3
      371 SETTABLEKS                       R3 R0 K87 ["onSelectedColorChange"]
      373 NEWCLOSURE                       R3 P29
      374 CAPTURE                          VAL R0
      375 CAPTURE                          UPVAL U16
      376 CAPTURE                          UPVAL U17
      377 SETTABLEKS                       R3 R0 K88 ["versionsOnDescClicked"]
      379 NEWCLOSURE                       R3 P30
      380 CAPTURE                          VAL R0
      381 CAPTURE                          UPVAL U22
      382 CAPTURE                          UPVAL U23
      383 SETTABLEKS                       R3 R0 K89 ["versionsSaveInput"]
      385 NEWCLOSURE                       R3 P31
      386 CAPTURE                          VAL R0
      387 CAPTURE                          UPVAL U1
      388 SETTABLEKS                       R3 R0 K90 ["versionsSetStates"]
      390 NEWCLOSURE                       R3 P32
      391 CAPTURE                          VAL R0
      392 SETTABLEKS                       R3 R0 K91 ["versionsCloseInput"]
      394 NEWCLOSURE                       R3 P33
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R3 R0 K92 ["setVersionError"]
      398 NEWCLOSURE                       R3 P34
      399 CAPTURE                          VAL R0
      400 SETTABLEKS                       R3 R0 K93 ["versionsSetPreviousInput"]
      402 NEWCLOSURE                       R3 P35
      403 CAPTURE                          VAL R0
      404 SETTABLEKS                       R3 R0 K94 ["versionsOnPageChange"]
      406 NEWCLOSURE                       R3 P36
      407 CAPTURE                          VAL R0
      408 CAPTURE                          VAL R1
      409 SETTABLEKS                       R3 R0 K95 ["onTabSelect"]
      411 NEWCLOSURE                       R3 P37
      412 CAPTURE                          VAL R0
      413 SETTABLEKS                       R3 R0 K96 ["onOverrideAssetSelected"]
      415 NEWCLOSURE                       R3 P38
      416 CAPTURE                          UPVAL U3
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R3 R0 K97 ["chooseThumbnail"]
      420 NEWCLOSURE                       R3 P39
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R3 R0 K98 ["onSharingChanged"]
      424 NEWCLOSURE                       R3 P40
      425 CAPTURE                          VAL R0
      426 SETTABLEKS                       R3 R0 K99 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      428 NEWCLOSURE                       R3 P41
      429 CAPTURE                          VAL R0
      430 CAPTURE                          UPVAL U24
      431 SETTABLEKS                       R3 R0 K100 ["getPublishingRequirements"]
      433 NEWCLOSURE                       R3 P42
      434 CAPTURE                          VAL R0
      435 SETTABLEKS                       R3 R0 K101 ["onAdditionalImagesChanged"]
      437 NEWCLOSURE                       R3 P43
      438 CAPTURE                          UPVAL U3
      439 CAPTURE                          VAL R0
      440 SETTABLEKS                       R3 R0 K102 ["isValidCatalogAsset"]
      442 NEWCLOSURE                       R3 P44
      443 CAPTURE                          VAL R0
      444 SETTABLEKS                       R3 R0 K103 ["validVersionDescriptions"]
      446 NEWCLOSURE                       R3 P45
      447 CAPTURE                          VAL R0
      448 CAPTURE                          UPVAL U1
      449 CAPTURE                          UPVAL U25
      450 SETTABLEKS                       R3 R0 K104 ["getMessageBoxProps"]
      452 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_75:
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

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["status"]
        4 RETURN                           R0 1

PROTO_78:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_79:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_81:
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
      146 DUPCLOSURE                       R8 K24 [PROTO_76]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_77]
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

PROTO_82:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_83:
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
       29 GETUPVAL                         R2 1
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETTABLEKS                       R2 R0 K8 ["getUploadPermissionStatus"]
       34 CALL                             R2 0 0
       35 GETTABLEKS                       R2 R0 K2 ["props"]
       37 GETTABLEKS                       R2 R2 K9 ["assetId"]
       39 JUMPIFNOT                        R2 ; [+12]
       40 GETTABLEKS                       R3 R0 K2 ["props"]
       42 GETTABLEKS                       R3 R3 K10 ["getVersionHistory"]
       44 GETTABLEKS                       R4 R0 K2 ["props"]
       46 GETTABLEKS                       R4 R4 K11 ["Network"]
       48 GETTABLEKS                       R4 R4 K12 ["networkInterface"]
       50 MOVE                             R5 R2
       51 CALL                             R3 2 0
       52 NAMECALL                         R3 R0 K13 ["getDefaultBundleDataSharing"]
       54 CALL                             R3 1 0
       55 GETTABLEKS                       R3 R0 K2 ["props"]
       57 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       59 JUMPIFNOT                        R2 ; [+48]
       60 JUMPIFNOT                        R3 ; [+47]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K14 ["isMarketplaceAsset"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 JUMPIFNOT                        R4 ; [+41]
       67 GETIMPORT                        R4 K18 [Enum.AssetType.Animation]
       69 JUMPIFEQ                         R3 R4 ; [+38]
       71 GETTABLEKS                       R4 R0 K2 ["props"]
       73 GETTABLEKS                       R4 R4 K19 ["dispatchGetFiatProduct"]
       75 GETTABLEKS                       R5 R0 K2 ["props"]
       77 GETTABLEKS                       R5 R5 K11 ["Network"]
       79 GETTABLEKS                       R5 R5 K12 ["networkInterface"]
       81 MOVE                             R6 R2
       82 MOVE                             R7 R3
       83 CALL                             R4 3 0
       84 GETUPVAL                         R4 2
       85 CALL                             R4 0 1
       86 JUMPIFNOT                        R4 ; [+21]
       87 JUMPIFNOT                        R3 ; [+7]
       88 GETUPVAL                         R5 3
       89 GETTABLEKS                       R5 R5 K20 ["MONETIZABLE_ASSET_TYPES"]
       91 GETTABLEKS                       R6 R3 K21 ["Name"]
       93 GETTABLE                         R4 R5 R6
       94 JUMP                             ; [+1]
       95 LOADB                            R4 0
       96 JUMPIFNOT                        R4 ; [+11]
       97 GETTABLEKS                       R5 R0 K2 ["props"]
       99 GETTABLEKS                       R5 R5 K22 ["dispatchGetSellerStatus"]
      101 GETTABLEKS                       R6 R0 K2 ["props"]
      103 GETTABLEKS                       R6 R6 K11 ["Network"]
      105 GETTABLEKS                       R6 R6 K12 ["networkInterface"]
      107 CALL                             R5 1 0
      108 RETURN                           R0 0

PROTO_84:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_86:
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

PROTO_87:
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
      182 GETUPVAL                         R38 1
      183 MOVE                             R40 R25
      184 MOVE                             R41 R24
      185 GETTABLEKS                       R42 R0 K0 ["props"]
      187 GETTABLEKS                       R42 R42 K42 ["isPackageAsset"]
      189 MOVE                             R43 R10
      190 NAMECALL                         R38 R38 K48 ["getAssetconfigContent"]
      192 CALL                             R38 5 1
      193 NAMECALL                         R39 R0 K49 ["isLoading"]
      195 CALL                             R39 1 1
      196 GETUPVAL                         R40 5
      197 GETTABLEKS                       R40 R40 K50 ["checkCanSave"]
      199 MOVE                             R41 R26
      200 MOVE                             R42 R8
      201 MOVE                             R43 R9
      202 MOVE                             R44 R6
      203 MOVE                             R45 R25
      204 MOVE                             R46 R24
      205 MOVE                             R47 R23
      206 GETTABLEKS                       R48 R0 K51 ["isValidCatalogAsset"]
      208 CALL                             R48 0 1
      209 GETTABLEKS                       R49 R0 K52 ["validVersionDescriptions"]
      211 CALL                             R49 0 -1
      212 CALL                             R40 -1 1
      213 JUMPIFNOT                        R40 ; [+1]
      214 NOT                              R40 R39
      215 GETUPVAL                         R42 6
      216 CALL                             R42 0 1
      217 JUMPIFNOT                        R42 ; [+3]
      218 GETTABLEKS                       R41 R2 K53 ["canUploadWithUgcRestrictions"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R41
      222 GETUPVAL                         R43 6
      223 CALL                             R43 0 1
      224 JUMPIFNOT                        R43 ; [+3]
      225 GETTABLEKS                       R42 R2 K54 ["canUploadWithUgcRestrictionsDenyReason"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R42
      229 GETUPVAL                         R43 6
      230 CALL                             R43 0 1
      231 JUMPIFNOT                        R43 ; [+7]
      232 GETTABLEKS                       R43 R2 K55 ["categoryType"]
      234 JUMPIFNOTEQKS                    R43 K56 ["AvatarItem"] ; [+4]
      236 JUMPIFEQKNIL                     R41 ; [+2]
      238 AND                              R40 R40 R41
      239 GETUPVAL                         R43 2
      240 CALL                             R43 0 1
      241 JUMPIFNOT                        R43 ; [+7]
      242 MOVE                             R43 R40
      243 JUMPIFNOT                        R43 ; [+3]
      244 GETTABLEKS                       R44 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      246 NOT                              R43 R44
      247 MOVE                             R40 R43
      248 JUMP                             ; [+6]
      249 MOVE                             R43 R40
      250 JUMPIFNOT                        R43 ; [+3]
      251 GETTABLEKS                       R44 R2 K25 ["isShowRobuxSpendMessageBox"]
      253 NOT                              R43 R44
      254 MOVE                             R40 R43
      255 GETUPVAL                         R43 7
      256 CALL                             R43 0 1
      257 JUMPIFNOT                        R43 ; [+11]
      258 GETUPVAL                         R43 3
      259 GETTABLEKS                       R43 R43 K58 ["isMakeupAsset"]
      261 MOVE                             R44 R24
      262 CALL                             R43 1 1
      263 JUMPIFNOT                        R43 ; [+5]
      264 GETTABLEKS                       R43 R2 K59 ["selectedColor"]
      266 JUMPIFNOTEQKNIL                  R43 ; [+2]
      268 LOADB                            R40 0
      269 GETUPVAL                         R43 8
      270 CALL                             R43 0 1
      271 JUMPIFNOT                        R43 ; [+9]
      272 GETIMPORT                        R43 K63 [Enum.AssetType.Animation]
      274 JUMPIFNOTEQ                      R24 R43 ; [+6]
      276 GETTABLEKS                       R43 R1 K64 ["animationSectionValid"]
      278 JUMPIFNOTEQKB                    R43 FALSE ; [+2]
      280 LOADB                            R40 0
      281 GETUPVAL                         R44 9
      282 GETTABLEKS                       R44 R44 K66 ["SCROLLBAR_PADDING"]
      284 SUBRK                            R43 R65 K44 ["SHOW_COMMENT"]
      285 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      287 GETIMPORT                        R46 K68 [Enum.AssetType.Audio]
      289 JUMPIFEQ                         R45 R46 ; [+2]
      291 LOADB                            R44 0 +1
      292 LOADB                            R44 1
      293 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      295 GETIMPORT                        R47 K70 [Enum.AssetType.Video]
      297 JUMPIFEQ                         R46 R47 ; [+2]
      299 LOADB                            R45 0 +1
      300 LOADB                            R45 1
      301 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      303 GETIMPORT                        R48 K72 [Enum.AssetType.Model]
      305 JUMPIFEQ                         R47 R48 ; [+2]
      307 LOADB                            R46 0 +1
      308 LOADB                            R46 1
      309 GETTABLEKS                       R48 R1 K28 ["assetTypeEnum"]
      311 GETIMPORT                        R49 K74 [Enum.AssetType.Plugin]
      313 JUMPIFEQ                         R48 R49 ; [+2]
      315 LOADB                            R47 0 +1
      316 LOADB                            R47 1
      317 LOADNIL                          R48
      318 LOADB                            R49 0
      319 GETTABLEKS                       R50 R1 K75 ["Localization"]
      321 LOADK                            R53 K76 ["General"]
      322 LOADK                            R54 K77 ["Proceed"]
      323 NAMECALL                         R51 R50 K78 ["getText"]
      325 CALL                             R51 3 1
      326 LOADK                            R54 K76 ["General"]
      327 LOADK                            R55 K79 ["GoBack"]
      328 NAMECALL                         R52 R50 K78 ["getText"]
      330 CALL                             R52 3 1
      331 LOADK                            R55 K80 ["AssetConfigSharing"]
      332 LOADK                            R56 K81 ["PublicConfirmationHeading"]
      333 NAMECALL                         R53 R50 K78 ["getText"]
      335 CALL                             R53 3 1
      336 LOADK                            R56 K80 ["AssetConfigSharing"]
      337 LOADK                            R57 K82 ["PublicConfirmationMessage"]
      338 NAMECALL                         R54 R50 K78 ["getText"]
      340 CALL                             R54 3 1
      341 LOADK                            R57 K80 ["AssetConfigSharing"]
      342 LOADK                            R58 K83 ["PublicConfirmationTitle"]
      343 NAMECALL                         R55 R50 K78 ["getText"]
      345 CALL                             R55 3 1
      346 GETTABLEKS                       R56 R2 K84 ["isConfirmationDialogEnabled"]
      348 GETTABLEKS                       R57 R2 K85 ["confirmationDialogKey"]
      350 LOADK                            R60 K86 ["AssetConfig"]
      351 LOADK                            R61 K87 ["PublishAssetDialogPublish"]
      352 NAMECALL                         R58 R50 K78 ["getText"]
      354 CALL                             R58 3 1
      355 LOADK                            R61 K76 ["General"]
      356 LOADK                            R62 K88 ["Cancel"]
      357 NAMECALL                         R59 R50 K78 ["getText"]
      359 CALL                             R59 3 1
      360 LOADK                            R62 K86 ["AssetConfig"]
      361 LOADK                            R63 K89 ["PublishAssetDialogDescription"]
      362 NAMECALL                         R60 R50 K78 ["getText"]
      364 CALL                             R60 3 1
      365 LOADK                            R63 K86 ["AssetConfig"]
      366 LOADK                            R64 K90 ["PublishAssetDialogHeading"]
      367 NAMECALL                         R61 R50 K78 ["getText"]
      369 CALL                             R61 3 1
      370 LOADK                            R64 K76 ["General"]
      371 LOADK                            R65 K91 ["RobloxStudio"]
      372 NAMECALL                         R62 R50 K78 ["getText"]
      374 CALL                             R62 3 1
      375 GETUPVAL                         R64 2
      376 CALL                             R64 0 1
      377 JUMPIFNOT                        R64 ; [+2]
      378 LOADNIL                          R63
      379 JUMP                             ; [+5]
      380 LOADK                            R65 K76 ["General"]
      381 LOADK                            R66 K91 ["RobloxStudio"]
      382 NAMECALL                         R63 R50 K78 ["getText"]
      384 CALL                             R63 3 1
      385 GETUPVAL                         R65 2
      386 CALL                             R65 0 1
      387 JUMPIFNOT                        R65 ; [+2]
      388 LOADNIL                          R64
      389 JUMP                             ; [+8]
      390 LOADK                            R66 K86 ["AssetConfig"]
      391 LOADK                            R67 K92 ["PayAndConfirmHeading"]
      392 DUPTABLE                         R68 K93 [{"name"}]
      393 SETTABLEKS                       R8 R68 K8 ["name"]
      395 NAMECALL                         R64 R50 K78 ["getText"]
      397 CALL                             R64 4 1
      398 GETTABLEKS                       R66 R1 K94 ["uploadFee"]
      400 JUMPIFNOT                        R66 ; [+3]
      401 GETTABLEKS                       R65 R1 K94 ["uploadFee"]
      403 JUMP                             ; [+1]
      404 LOADK                            R65 K7 [""]
      405 GETUPVAL                         R67 2
      406 CALL                             R67 0 1
      407 JUMPIFNOT                        R67 ; [+2]
      408 LOADNIL                          R66
      409 JUMP                             ; [+11]
      410 LOADK                            R68 K86 ["AssetConfig"]
      411 LOADK                            R69 K95 ["PayAndConfirmDescription"]
      412 DUPTABLE                         R70 K97 [{"amount"}]
      413 GETUPVAL                         R72 10
      414 MOVE                             R73 R65
      415 CONCAT                           R71 R72 R73
      416 SETTABLEKS                       R71 R70 K96 ["amount"]
      418 NAMECALL                         R66 R50 K78 ["getText"]
      420 CALL                             R66 4 1
      421 GETUPVAL                         R68 2
      422 CALL                             R68 0 1
      423 JUMPIFNOT                        R68 ; [+2]
      424 LOADNIL                          R67
      425 JUMP                             ; [+5]
      426 LOADK                            R69 K76 ["General"]
      427 LOADK                            R70 K98 ["PayAndSubmit"]
      428 NAMECALL                         R67 R50 K78 ["getText"]
      430 CALL                             R67 3 1
      431 GETTABLEKS                       R68 R2 K99 ["isPublishAssetsDialogEnabled"]
      433 JUMPIF                           R44 ; [+3]
      434 GETUPVAL                         R69 11
      435 JUMPIFNOT                        R69 ; [+3]
      436 JUMPIFNOT                        R45 ; [+2]
      437 NOT                              R48 R5
      438 JUMP                             ; [+2]
      439 JUMPIFNOT                        R46 ; [+1]
      440 LOADB                            R48 1
      441 JUMPIF                           R44 ; [+3]
      442 GETUPVAL                         R69 11
      443 JUMPIFNOT                        R69 ; [+2]
      444 JUMPIFNOT                        R45 ; [+1]
      445 LOADB                            R49 1
      446 JUMPIF                           R44 ; [+3]
      447 GETUPVAL                         R69 11
      448 JUMPIFNOT                        R69 ; [+2]
      449 JUMPIFNOT                        R45 ; [+1]
      450 MOVE                             R11 R17
      451 GETUPVAL                         R69 3
      452 GETTABLEKS                       R69 R69 K58 ["isMakeupAsset"]
      454 MOVE                             R70 R24
      455 CALL                             R69 1 1
      456 GETUPVAL                         R70 7
      457 CALL                             R70 0 1
      458 JUMPIFNOT                        R70 ; [+8]
      459 MOVE                             R70 R69
      460 JUMPIFNOT                        R70 ; [+6]
      461 GETTABLEKS                       R71 R2 K59 ["selectedColor"]
      463 JUMPIFEQKNIL                     R71 ; [+2]
      465 LOADB                            R70 0 +1
      466 LOADB                            R70 1
      467 GETUPVAL                         R71 12
      468 GETTABLEKS                       R71 R71 K100 ["createElement"]
      470 LOADK                            R72 K101 ["Frame"]
      471 DUPTABLE                         R73 K105 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      472 SETTABLEKS                       R4 R73 K3 ["Size"]
      474 LOADN                            R74 0
      475 SETTABLEKS                       R74 R73 K102 ["BackgroundTransparency"]
      477 GETTABLEKS                       R74 R3 K106 ["assetConfig"]
      479 GETTABLEKS                       R74 R74 K107 ["backgroundColor"]
      481 SETTABLEKS                       R74 R73 K103 ["BackgroundColor3"]
      483 LOADN                            R74 0
      484 SETTABLEKS                       R74 R73 K104 ["BorderSizePixel"]
      486 DUPTABLE                         R74 K115 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      487 GETUPVAL                         R75 12
      488 GETTABLEKS                       R75 R75 K100 ["createElement"]
      490 LOADK                            R76 K108 ["UIListLayout"]
      491 DUPTABLE                         R77 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      492 GETIMPORT                        R78 K123 [Enum.FillDirection.Vertical]
      494 SETTABLEKS                       R78 R77 K116 ["FillDirection"]
      496 GETIMPORT                        R78 K125 [Enum.HorizontalAlignment.Left]
      498 SETTABLEKS                       R78 R77 K117 ["HorizontalAlignment"]
      500 GETIMPORT                        R78 K127 [Enum.VerticalAlignment.Bottom]
      502 SETTABLEKS                       R78 R77 K118 ["VerticalAlignment"]
      504 GETIMPORT                        R78 K129 [Enum.SortOrder.LayoutOrder]
      506 SETTABLEKS                       R78 R77 K119 ["SortOrder"]
      508 GETIMPORT                        R78 K132 [UDim.new]
      510 LOADN                            R79 0
      511 LOADN                            R80 0
      512 CALL                             R78 2 1
      513 SETTABLEKS                       R78 R77 K120 ["Padding"]
      515 CALL                             R75 2 1
      516 SETTABLEKS                       R75 R74 K108 ["UIListLayout"]
      518 MOVE                             R75 R20
      519 JUMPIFNOT                        R75 ; [+9]
      520 GETUPVAL                         R75 12
      521 GETTABLEKS                       R75 R75 K100 ["createElement"]
      523 GETUPVAL                         R76 13
      524 GETTABLEKS                       R77 R0 K133 ["getMessageBoxProps"]
      526 MOVE                             R78 R19
      527 CALL                             R77 1 -1
      528 CALL                             R75 -1 1
      529 SETTABLEKS                       R75 R74 K109 ["AssetConfigMessageBox"]
      531 GETUPVAL                         R76 2
      532 CALL                             R76 0 1
      533 JUMPIFNOT                        R76 ; [+2]
      534 LOADNIL                          R75
      535 JUMP                             ; [+28]
      536 MOVE                             R75 R21
      537 JUMPIFNOT                        R75 ; [+26]
      538 GETUPVAL                         R75 12
      539 GETTABLEKS                       R75 R75 K100 ["createElement"]
      541 GETUPVAL                         R76 14
      542 DUPTABLE                         R77 K142 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      543 SETTABLEKS                       R67 R77 K134 ["AcceptText"]
      545 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      547 SETTABLEKS                       R66 R77 K136 ["Description"]
      549 SETTABLEKS                       R21 R77 K137 ["Enabled"]
      551 SETTABLEKS                       R64 R77 K138 ["Heading"]
      553 GETTABLEKS                       R78 R0 K143 ["onAssetPublishPayAndConfirmAccepted"]
      555 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      557 GETTABLEKS                       R78 R0 K144 ["onAssetPublishPayAndConfirmCanceled"]
      559 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      561 SETTABLEKS                       R63 R77 K141 ["Title"]
      563 CALL                             R75 2 1
      564 SETTABLEKS                       R75 R74 K110 ["RobuxSpendConfirmationMessageBox"]
      566 GETUPVAL                         R76 2
      567 CALL                             R76 0 1
      568 JUMPIFNOT                        R76 ; [+24]
      569 GETTABLEKS                       R75 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      571 JUMPIFNOT                        R75 ; [+22]
      572 GETUPVAL                         R75 12
      573 GETTABLEKS                       R75 R75 K100 ["createElement"]
      575 GETUPVAL                         R76 15
      576 DUPTABLE                         R77 K148 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      577 NEWCLOSURE                       R78 P0
      578 CAPTURE                          VAL R0
      579 SETTABLEKS                       R78 R77 K145 ["OnUploadConfirmed"]
      581 GETTABLEKS                       R79 R1 K94 ["uploadFee"]
      583 ORK                              R78 R79 K7 [""]
      584 SETTABLEKS                       R78 R77 K146 ["UploadFee"]
      586 GETTABLEKS                       R79 R2 K8 ["name"]
      588 ORK                              R78 R79 K7 [""]
      589 SETTABLEKS                       R78 R77 K147 ["ItemName"]
      591 CALL                             R75 2 1
      592 JUMP                             ; [+1]
      593 LOADNIL                          R75
      594 SETTABLEKS                       R75 R74 K111 ["AvatarItemMessageBox"]
      596 JUMPIFNOT                        R68 ; [+30]
      597 GETUPVAL                         R75 12
      598 GETTABLEKS                       R75 R75 K100 ["createElement"]
      600 GETUPVAL                         R76 16
      601 DUPTABLE                         R77 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      602 SETTABLEKS                       R58 R77 K134 ["AcceptText"]
      604 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      606 LOADNIL                          R78
      607 SETTABLEKS                       R78 R77 K149 ["ConfirmationKey"]
      609 SETTABLEKS                       R60 R77 K136 ["Description"]
      611 SETTABLEKS                       R68 R77 K137 ["Enabled"]
      613 SETTABLEKS                       R61 R77 K138 ["Heading"]
      615 GETTABLEKS                       R78 R0 K151 ["onAssetPublishDialogAccepted"]
      617 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      619 GETTABLEKS                       R78 R0 K152 ["onAssetPublishDialogCanceled"]
      621 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      623 SETTABLEKS                       R62 R77 K141 ["Title"]
      625 CALL                             R75 2 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R75
      628 SETTABLEKS                       R75 R74 K112 ["AssetConfigMakeAssetPublicMessageBox"]
      630 GETUPVAL                         R75 12
      631 GETTABLEKS                       R75 R75 K100 ["createElement"]
      633 LOADK                            R76 K101 ["Frame"]
      634 DUPTABLE                         R77 K153 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      635 GETIMPORT                        R78 K155 [UDim2.new]
      637 LOADN                            R79 1
      638 LOADN                            R80 0
      639 LOADN                            R81 1
      640 LOADN                            R82 194
      641 CALL                             R78 4 1
      642 SETTABLEKS                       R78 R77 K3 ["Size"]
      644 LOADN                            R78 1
      645 SETTABLEKS                       R78 R77 K102 ["BackgroundTransparency"]
      647 LOADN                            R78 1
      648 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
      650 DUPTABLE                         R78 K165 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      651 GETUPVAL                         R79 12
      652 GETTABLEKS                       R79 R79 K100 ["createElement"]
      654 LOADK                            R80 K108 ["UIListLayout"]
      655 DUPTABLE                         R81 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      656 GETIMPORT                        R82 K167 [Enum.FillDirection.Horizontal]
      658 SETTABLEKS                       R82 R81 K116 ["FillDirection"]
      660 GETIMPORT                        R82 K125 [Enum.HorizontalAlignment.Left]
      662 SETTABLEKS                       R82 R81 K117 ["HorizontalAlignment"]
      664 GETIMPORT                        R82 K169 [Enum.VerticalAlignment.Top]
      666 SETTABLEKS                       R82 R81 K118 ["VerticalAlignment"]
      668 GETIMPORT                        R82 K129 [Enum.SortOrder.LayoutOrder]
      670 SETTABLEKS                       R82 R81 K119 ["SortOrder"]
      672 GETIMPORT                        R82 K132 [UDim.new]
      674 LOADN                            R83 0
      675 LOADN                            R84 0
      676 CALL                             R82 2 1
      677 SETTABLEKS                       R82 R81 K120 ["Padding"]
      679 CALL                             R79 2 1
      680 SETTABLEKS                       R79 R78 K108 ["UIListLayout"]
      682 GETUPVAL                         R79 12
      683 GETTABLEKS                       R79 R79 K100 ["createElement"]
      685 GETUPVAL                         R80 16
      686 DUPTABLE                         R81 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      687 SETTABLEKS                       R51 R81 K134 ["AcceptText"]
      689 SETTABLEKS                       R52 R81 K135 ["CancelText"]
      691 SETTABLEKS                       R57 R81 K149 ["ConfirmationKey"]
      693 SETTABLEKS                       R54 R81 K136 ["Description"]
      695 SETTABLEKS                       R56 R81 K137 ["Enabled"]
      697 SETTABLEKS                       R53 R81 K138 ["Heading"]
      699 GETTABLEKS                       R82 R0 K170 ["onDialogAccepted"]
      701 SETTABLEKS                       R82 R81 K139 ["OnAccepted"]
      703 GETTABLEKS                       R82 R0 K171 ["onDialogCanceled"]
      705 SETTABLEKS                       R82 R81 K140 ["OnCanceled"]
      707 SETTABLEKS                       R55 R81 K141 ["Title"]
      709 CALL                             R79 2 1
      710 SETTABLEKS                       R79 R78 K156 ["SharingConfirmationDialog"]
      712 GETUPVAL                         R79 12
      713 GETTABLEKS                       R79 R79 K100 ["createElement"]
      715 GETUPVAL                         R80 17
      716 DUPTABLE                         R81 K184 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor"}]
      717 LOADN                            R82 240
      718 SETTABLEKS                       R82 R81 K172 ["TotalWidth"]
      720 SETTABLEKS                       R38 R81 K173 ["TabItems"]
      722 SETTABLEKS                       R6 R81 K174 ["CurrentTab"]
      724 SETTABLEKS                       R37 R81 K175 ["PreviewType"]
      726 SETTABLEKS                       R25 R81 K176 ["ScreenFlowType"]
      728 SETTABLEKS                       R16 R81 K177 ["AssetStatus"]
      730 SETTABLEKS                       R7 R81 K178 ["AssetId"]
      732 SETTABLEKS                       R22 R81 K179 ["IconFile"]
      734 SETTABLEKS                       R24 R81 K180 ["AssetTypeEnum"]
      736 SETTABLEKS                       R29 R81 K181 ["AllowedBundleTypeSettings"]
      738 GETTABLEKS                       R82 R0 K185 ["onTabSelect"]
      740 SETTABLEKS                       R82 R81 K182 ["OnTabSelect"]
      742 GETTABLEKS                       R82 R0 K186 ["chooseThumbnail"]
      744 SETTABLEKS                       R82 R81 K183 ["ChooseThumbnail"]
      746 LOADN                            R82 1
      747 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      749 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      751 GETUPVAL                         R83 7
      752 CALL                             R83 0 1
      753 JUMPIFNOT                        R83 ; [+4]
      754 JUMPIFNOT                        R69 ; [+3]
      755 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
      757 JUMP                             ; [+1]
      758 LOADNIL                          R82
      759 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
      761 CALL                             R79 2 1
      762 SETTABLEKS                       R79 R78 K157 ["Preview"]
      764 GETUPVAL                         R79 12
      765 GETTABLEKS                       R79 R79 K100 ["createElement"]
      767 LOADK                            R80 K101 ["Frame"]
      768 DUPTABLE                         R81 K187 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      769 GETIMPORT                        R82 K155 [UDim2.new]
      771 LOADN                            R83 0
      772 LOADN                            R84 2
      773 LOADN                            R85 1
      774 LOADN                            R86 0
      775 CALL                             R82 4 1
      776 SETTABLEKS                       R82 R81 K3 ["Size"]
      778 LOADN                            R82 0
      779 SETTABLEKS                       R82 R81 K102 ["BackgroundTransparency"]
      781 GETTABLEKS                       R82 R3 K188 ["divider"]
      783 GETTABLEKS                       R82 R82 K189 ["verticalLineColor"]
      785 SETTABLEKS                       R82 R81 K103 ["BackgroundColor3"]
      787 LOADN                            R82 0
      788 SETTABLEKS                       R82 R81 K104 ["BorderSizePixel"]
      790 LOADN                            R82 2
      791 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      793 CALL                             R79 2 1
      794 SETTABLEKS                       R79 R78 K158 ["VerticalLine"]
      796 MOVE                             R79 R39
      797 JUMPIFNOT                        R79 ; [+50]
      798 GETUPVAL                         R79 12
      799 GETTABLEKS                       R79 R79 K100 ["createElement"]
      801 GETUPVAL                         R80 18
      802 DUPTABLE                         R81 K190 [{"LayoutOrder", "Size"}]
      803 LOADN                            R82 3
      804 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      806 GETIMPORT                        R82 K155 [UDim2.new]
      808 LOADN                            R83 1
      809 LOADN                            R84 16
      810 LOADN                            R85 1
      811 LOADN                            R86 0
      812 CALL                             R82 4 1
      813 SETTABLEKS                       R82 R81 K3 ["Size"]
      815 DUPTABLE                         R82 K192 [{"LoadingIndicator"}]
      816 GETUPVAL                         R83 12
      817 GETTABLEKS                       R83 R83 K100 ["createElement"]
      819 GETUPVAL                         R84 19
      820 DUPTABLE                         R85 K195 [{"Size", "AnchorPoint", "Position"}]
      821 GETIMPORT                        R86 K155 [UDim2.new]
      823 LOADN                            R87 0
      824 LOADN                            R88 100
      825 LOADN                            R89 0
      826 LOADN                            R90 100
      827 CALL                             R86 4 1
      828 SETTABLEKS                       R86 R85 K3 ["Size"]
      830 GETIMPORT                        R86 K197 [Vector2.new]
      832 LOADK                            R87 K198 [0.5]
      833 LOADK                            R88 K198 [0.5]
      834 CALL                             R86 2 1
      835 SETTABLEKS                       R86 R85 K193 ["AnchorPoint"]
      837 GETIMPORT                        R86 K200 [UDim2.fromScale]
      839 LOADK                            R87 K198 [0.5]
      840 LOADK                            R88 K198 [0.5]
      841 CALL                             R86 2 1
      842 SETTABLEKS                       R86 R85 K194 ["Position"]
      844 CALL                             R83 2 1
      845 SETTABLEKS                       R83 R82 K191 ["LoadingIndicator"]
      847 CALL                             R79 3 1
      848 SETTABLEKS                       R79 R78 K159 ["LoadingIndicatorWrapper"]
      850 NOT                              R79 R39
      851 JUMPIFNOT                        R79 ; [+266]
      852 GETUPVAL                         R79 1
      853 MOVE                             R81 R6
      854 NAMECALL                         R79 R79 K201 ["isGeneral"]
      856 CALL                             R79 2 1
      857 JUMPIFNOT                        R79 ; [+260]
      858 GETUPVAL                         R79 12
      859 GETTABLEKS                       R79 R79 K100 ["createElement"]
      861 GETUPVAL                         R80 20
      862 NEWTABLE                         R81 64 0
      864 GETIMPORT                        R82 K155 [UDim2.new]
      866 LOADN                            R83 1
      867 LOADN                            R84 16
      868 LOADN                            R85 1
      869 LOADN                            R86 0
      870 CALL                             R82 4 1
      871 SETTABLEKS                       R82 R81 K3 ["Size"]
      873 SETTABLEKS                       R48 R81 K202 ["allowSelectPrivate"]
      875 SETTABLEKS                       R7 R81 K6 ["assetId"]
      877 SETTABLEKS                       R8 R81 K8 ["name"]
      879 SETTABLEKS                       R9 R81 K9 ["description"]
      881 SETTABLEKS                       R10 R81 K13 ["owner"]
      883 GETUPVAL                         R83 6
      884 CALL                             R83 0 1
      885 JUMPIFNOT                        R83 ; [+2]
      886 MOVE                             R82 R41
      887 JUMP                             ; [+1]
      888 LOADNIL                          R82
      889 SETTABLEKS                       R82 R81 K53 ["canUploadWithUgcRestrictions"]
      891 GETUPVAL                         R83 6
      892 CALL                             R83 0 1
      893 JUMPIFNOT                        R83 ; [+2]
      894 MOVE                             R82 R42
      895 JUMP                             ; [+1]
      896 LOADNIL                          R82
      897 SETTABLEKS                       R82 R81 K54 ["canUploadWithUgcRestrictionsDenyReason"]
      899 SETTABLEKS                       R11 R81 K14 ["allowCopy"]
      901 SETTABLEKS                       R12 R81 K15 ["copyOn"]
      903 SETTABLEKS                       R13 R81 K16 ["allowComment"]
      905 SETTABLEKS                       R14 R81 K17 ["commentOn"]
      907 SETTABLEKS                       R15 R81 K18 ["deleteLocal"]
      909 SETTABLEKS                       R17 R81 K20 ["isAssetPublic"]
      911 SETTABLEKS                       R18 R81 K21 ["publishingRestriction"]
      913 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      915 GETTABLEKS                       R82 R0 K203 ["onNameChange"]
      917 SETTABLEKS                       R82 R81 K203 ["onNameChange"]
      919 GETTABLEKS                       R82 R0 K204 ["onDescChange"]
      921 SETTABLEKS                       R82 R81 K204 ["onDescChange"]
      923 GETUPVAL                         R83 6
      924 CALL                             R83 0 1
      925 JUMPIFNOT                        R83 ; [+3]
      926 GETTABLEKS                       R82 R0 K205 ["onCategoryChange"]
      928 JUMP                             ; [+1]
      929 LOADNIL                          R82
      930 SETTABLEKS                       R82 R81 K205 ["onCategoryChange"]
      932 GETTABLEKS                       R82 R1 K206 ["groupId"]
      934 SETTABLEKS                       R82 R81 K207 ["preselectedGroupId"]
      936 GETTABLEKS                       R82 R0 K208 ["onAccessChange"]
      938 SETTABLEKS                       R82 R81 K209 ["onOwnerSelected"]
      940 GETTABLEKS                       R82 R0 K210 ["onSharingChanged"]
      942 SETTABLEKS                       R82 R81 K210 ["onSharingChanged"]
      944 GETTABLEKS                       R82 R0 K211 ["onAdditionalImagesChanged"]
      946 SETTABLEKS                       R82 R81 K211 ["onAdditionalImagesChanged"]
      948 GETTABLEKS                       R82 R0 K212 ["toggleCopy"]
      950 SETTABLEKS                       R82 R81 K212 ["toggleCopy"]
      952 GETTABLEKS                       R82 R0 K213 ["toggleComment"]
      954 SETTABLEKS                       R82 R81 K213 ["toggleComment"]
      956 GETTABLEKS                       R82 R0 K214 ["toggleDeleteLocal"]
      958 SETTABLEKS                       R82 R81 K214 ["toggleDeleteLocal"]
      960 GETUPVAL                         R83 8
      961 CALL                             R83 0 1
      962 JUMPIFNOT                        R83 ; [+3]
      963 GETTABLEKS                       R82 R0 K215 ["onAnimationSelectionChanged"]
      965 JUMP                             ; [+1]
      966 LOADNIL                          R82
      967 SETTABLEKS                       R82 R81 K215 ["onAnimationSelectionChanged"]
      969 GETUPVAL                         R83 8
      970 CALL                             R83 0 1
      971 JUMPIFNOT                        R83 ; [+3]
      972 GETTABLEKS                       R82 R0 K216 ["onanimationSectionValidityChanged"]
      974 JUMP                             ; [+1]
      975 LOADNIL                          R82
      976 SETTABLEKS                       R82 R81 K216 ["onanimationSectionValidityChanged"]
      978 GETTABLEKS                       R82 R2 K217 ["dataSharingEnabled"]
      980 SETTABLEKS                       R82 R81 K217 ["dataSharingEnabled"]
      982 GETTABLEKS                       R82 R2 K218 ["dataSharingToggled"]
      984 SETTABLEKS                       R82 R81 K218 ["dataSharingToggled"]
      986 GETTABLEKS                       R82 R0 K219 ["onDataConsentToggleClick"]
      988 SETTABLEKS                       R82 R81 K219 ["onDataConsentToggleClick"]
      990 SETTABLEKS                       R32 R81 K220 ["displayOwnership"]
      992 SETTABLEKS                       R33 R81 K221 ["displayCopy"]
      994 SETTABLEKS                       R35 R81 K222 ["displayComment"]
      996 SETTABLEKS                       R36 R81 K223 ["displayAssetType"]
      998 SETTABLEKS                       R49 R81 K224 ["displaySharing"]
     1000 SETTABLEKS                       R34 R81 K225 ["displayAssetTypeSelection"]
     1002 JUMPIFNOT                        R47 ; [+2]
     1003 MOVE                             R82 R27
     1004 JUMP                             ; [+1]
     1005 LOADNIL                          R82
     1006 SETTABLEKS                       R82 R81 K30 ["allowedAssetTypesForRelease"]
     1008 SETTABLEKS                       R28 R81 K31 ["allowedAssetTypesForFree"]
     1010 JUMPIFNOT                        R47 ; [+2]
     1011 MOVE                             R82 R16
     1012 JUMP                             ; [+1]
     1013 LOADNIL                          R82
     1014 SETTABLEKS                       R82 R81 K226 ["newAssetStatus"]
     1016 JUMPIFNOT                        R47 ; [+2]
     1017 MOVE                             R82 R30
     1018 JUMP                             ; [+1]
     1019 LOADNIL                          R82
     1020 SETTABLEKS                       R82 R81 K227 ["currentAssetStatus"]
     1022 JUMPIFNOT                        R47 ; [+3]
     1023 GETTABLEKS                       R82 R0 K228 ["onStatusChange"]
     1025 JUMP                             ; [+1]
     1026 LOADNIL                          R82
     1027 SETTABLEKS                       R82 R81 K228 ["onStatusChange"]
     1029 JUMPIFNOT                        R47 ; [+3]
     1030 GETTABLEKS                       R82 R0 K229 ["onPriceChange"]
     1032 JUMP                             ; [+1]
     1033 LOADNIL                          R82
     1034 SETTABLEKS                       R82 R81 K229 ["onPriceChange"]
     1036 JUMPIFNOT                        R47 ; [+2]
     1037 MOVE                             R82 R31
     1038 JUMP                             ; [+1]
     1039 LOADNIL                          R82
     1040 SETTABLEKS                       R82 R81 K35 ["price"]
     1042 LOADNIL                          R82
     1043 SETTABLEKS                       R82 R81 K230 ["minPrice"]
     1045 LOADNIL                          R82
     1046 SETTABLEKS                       R82 R81 K231 ["maxPrice"]
     1048 LOADNIL                          R82
     1049 SETTABLEKS                       R82 R81 K232 ["feeRate"]
     1051 LOADNIL                          R82
     1052 SETTABLEKS                       R82 R81 K233 ["isPriceValid"]
     1054 LOADN                            R82 3
     1055 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1057 GETTABLEKS                       R82 R1 K47 ["instances"]
     1059 SETTABLEKS                       R82 R81 K47 ["instances"]
     1061 GETUPVAL                         R83 7
     1062 CALL                             R83 0 1
     1063 JUMPIFNOT                        R83 ; [+2]
     1064 MOVE                             R82 R69
     1065 JUMP                             ; [+1]
     1066 LOADNIL                          R82
     1067 SETTABLEKS                       R82 R81 K234 ["showColorPicker"]
     1069 GETUPVAL                         R83 7
     1070 CALL                             R83 0 1
     1071 JUMPIFNOT                        R83 ; [+4]
     1072 JUMPIFNOT                        R69 ; [+3]
     1073 GETTABLEKS                       R82 R2 K235 ["showColorPickerRequiredError"]
     1075 JUMP                             ; [+1]
     1076 LOADNIL                          R82
     1077 SETTABLEKS                       R82 R81 K235 ["showColorPickerRequiredError"]
     1079 GETUPVAL                         R83 21
     1080 CALL                             R83 0 1
     1081 JUMPIFNOT                        R83 ; [+3]
     1082 GETTABLEKS                       R82 R2 K236 ["showNameRequiredError"]
     1084 JUMP                             ; [+1]
     1085 LOADNIL                          R82
     1086 SETTABLEKS                       R82 R81 K236 ["showNameRequiredError"]
     1088 GETUPVAL                         R83 21
     1089 CALL                             R83 0 1
     1090 JUMPIFNOT                        R83 ; [+3]
     1091 GETTABLEKS                       R82 R2 K237 ["showDescriptionRequiredError"]
     1093 JUMP                             ; [+1]
     1094 LOADNIL                          R82
     1095 SETTABLEKS                       R82 R81 K237 ["showDescriptionRequiredError"]
     1097 GETUPVAL                         R83 7
     1098 CALL                             R83 0 1
     1099 JUMPIFNOT                        R83 ; [+4]
     1100 JUMPIFNOT                        R69 ; [+3]
     1101 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
     1103 JUMP                             ; [+1]
     1104 LOADNIL                          R82
     1105 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
     1107 GETUPVAL                         R83 7
     1108 CALL                             R83 0 1
     1109 JUMPIFNOT                        R83 ; [+4]
     1110 JUMPIFNOT                        R69 ; [+3]
     1111 GETTABLEKS                       R82 R0 K238 ["onSelectedColorChange"]
     1113 JUMP                             ; [+1]
     1114 LOADNIL                          R82
     1115 SETTABLEKS                       R82 R81 K239 ["setSelectedColor"]
     1117 CALL                             R79 2 1
     1118 SETTABLEKS                       R79 R78 K160 ["PublishAsset"]
     1120 GETUPVAL                         R79 1
     1121 MOVE                             R81 R6
     1122 NAMECALL                         R79 R79 K240 ["isVersions"]
     1124 CALL                             R79 2 1
     1125 JUMPIFNOT                        R79 ; [+78]
     1126 GETUPVAL                         R79 12
     1127 GETTABLEKS                       R79 R79 K100 ["createElement"]
     1129 GETUPVAL                         R80 22
     1130 DUPTABLE                         R81 K254 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1131 GETIMPORT                        R82 K155 [UDim2.new]
     1133 LOADN                            R83 1
     1134 LOADN                            R84 16
     1135 LOADN                            R85 1
     1136 LOADN                            R86 236
     1137 CALL                             R82 4 1
     1138 SETTABLEKS                       R82 R81 K3 ["Size"]
     1140 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1142 LOADN                            R82 3
     1143 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1145 GETTABLEKS                       R82 R2 K255 ["versionsCurrentItem"]
     1147 SETTABLEKS                       R82 R81 K241 ["currentItem"]
     1149 GETTABLEKS                       R82 R2 K256 ["versionsRootItems"]
     1151 SETTABLEKS                       R82 R81 K242 ["rootItems"]
     1153 GETTABLEKS                       R82 R2 K257 ["versionsOpenInputKey"]
     1155 SETTABLEKS                       R82 R81 K243 ["openInputKey"]
     1157 GETTABLEKS                       R82 R2 K258 ["versionsPreviousInput"]
     1159 SETTABLEKS                       R82 R81 K244 ["previousInput"]
     1161 GETTABLEKS                       R82 R2 K259 ["versionsPageIndex"]
     1163 SETTABLEKS                       R82 R81 K245 ["pageIndex"]
     1165 GETTABLEKS                       R82 R2 K260 ["versionsPageRootItems"]
     1167 SETTABLEKS                       R82 R81 K246 ["pageRootItems"]
     1169 GETUPVAL                         R83 23
     1170 CALL                             R83 0 1
     1171 JUMPIFNOT                        R83 ; [+3]
     1172 GETTABLEKS                       R82 R1 K261 ["versionHistoryWithDescriptions"]
     1174 JUMP                             ; [+2]
     1175 GETTABLEKS                       R82 R1 K247 ["versionHistory"]
     1177 SETTABLEKS                       R82 R81 K247 ["versionHistory"]
     1179 GETTABLEKS                       R82 R0 K262 ["versionsOnDescClicked"]
     1181 SETTABLEKS                       R82 R81 K248 ["onDescClicked"]
     1183 GETTABLEKS                       R82 R0 K263 ["versionsCloseInput"]
     1185 SETTABLEKS                       R82 R81 K249 ["closeInput"]
     1187 GETTABLEKS                       R82 R0 K250 ["setVersionError"]
     1189 SETTABLEKS                       R82 R81 K250 ["setVersionError"]
     1191 GETTABLEKS                       R82 R0 K264 ["versionsSetPreviousInput"]
     1193 SETTABLEKS                       R82 R81 K251 ["setPreviousInput"]
     1195 GETTABLEKS                       R82 R0 K265 ["versionsOnPageChange"]
     1197 SETTABLEKS                       R82 R81 K252 ["onPageChange"]
     1199 GETTABLEKS                       R82 R0 K266 ["versionsSetStates"]
     1201 SETTABLEKS                       R82 R81 K253 ["setStates"]
     1203 CALL                             R79 2 1
     1204 SETTABLEKS                       R79 R78 K161 ["Versions"]
     1206 GETUPVAL                         R80 1
     1207 MOVE                             R82 R6
     1208 NAMECALL                         R80 R80 K267 ["isSales"]
     1210 CALL                             R80 2 1
     1211 JUMPIFNOT                        R80 ; [+21]
     1212 GETUPVAL                         R79 12
     1213 GETTABLEKS                       R79 R79 K100 ["createElement"]
     1215 GETUPVAL                         R80 24
     1216 DUPTABLE                         R81 K270 [{"size", "assetId", "layoutOrder"}]
     1217 GETIMPORT                        R82 K155 [UDim2.new]
     1219 LOADN                            R83 1
     1220 LOADN                            R84 16
     1221 LOADN                            R85 1
     1222 LOADN                            R86 0
     1223 CALL                             R82 4 1
     1224 SETTABLEKS                       R82 R81 K268 ["size"]
     1226 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1228 LOADN                            R82 3
     1229 SETTABLEKS                       R82 R81 K269 ["layoutOrder"]
     1231 CALL                             R79 2 1
     1232 JUMP                             ; [+1]
     1233 LOADNIL                          R79
     1234 SETTABLEKS                       R79 R78 K162 ["Sales"]
     1236 GETUPVAL                         R79 1
     1237 MOVE                             R81 R6
     1238 NAMECALL                         R79 R79 K271 ["isOverride"]
     1240 CALL                             R79 2 1
     1241 JUMPIFNOT                        R79 ; [+28]
     1242 GETUPVAL                         R79 12
     1243 GETTABLEKS                       R79 R79 K100 ["createElement"]
     1245 GETUPVAL                         R80 25
     1246 DUPTABLE                         R81 K273 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1247 GETIMPORT                        R82 K155 [UDim2.new]
     1249 LOADN                            R83 1
     1250 LOADN                            R84 16
     1251 LOADN                            R85 1
     1252 LOADN                            R86 0
     1253 CALL                             R82 4 1
     1254 SETTABLEKS                       R82 R81 K3 ["Size"]
     1256 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1258 GETTABLEKS                       R82 R1 K47 ["instances"]
     1260 SETTABLEKS                       R82 R81 K47 ["instances"]
     1262 GETTABLEKS                       R82 R0 K272 ["onOverrideAssetSelected"]
     1264 SETTABLEKS                       R82 R81 K272 ["onOverrideAssetSelected"]
     1266 LOADN                            R82 3
     1267 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1269 CALL                             R79 2 1
     1270 SETTABLEKS                       R79 R78 K163 ["OverrideAsset"]
     1272 GETUPVAL                         R79 1
     1273 MOVE                             R81 R6
     1274 NAMECALL                         R79 R79 K274 ["isPermissions"]
     1276 CALL                             R79 2 1
     1277 JUMPIFNOT                        R79 ; [+33]
     1278 GETUPVAL                         R79 12
     1279 GETTABLEKS                       R79 R79 K100 ["createElement"]
     1281 GETUPVAL                         R80 26
     1282 GETTABLEKS                       R80 R80 K275 ["AsyncCache"]
     1284 NEWTABLE                         R81 0 0
     1286 NEWTABLE                         R82 0 1
     1288 GETUPVAL                         R83 12
     1289 GETTABLEKS                       R83 R83 K100 ["createElement"]
     1291 GETUPVAL                         R84 27
     1292 DUPTABLE                         R85 K276 [{"Size", "AssetId", "LayoutOrder"}]
     1293 GETIMPORT                        R86 K155 [UDim2.new]
     1295 LOADN                            R87 1
     1296 MOVE                             R88 R43
     1297 LOADN                            R89 1
     1298 LOADN                            R90 0
     1299 CALL                             R86 4 1
     1300 SETTABLEKS                       R86 R85 K3 ["Size"]
     1302 SETTABLEKS                       R7 R85 K178 ["AssetId"]
     1304 LOADN                            R86 3
     1305 SETTABLEKS                       R86 R85 K128 ["LayoutOrder"]
     1307 CALL                             R83 2 -1
     1308 SETLIST                          R82 R83 -1 [1]
     1310 CALL                             R79 3 1
     1311 SETTABLEKS                       R79 R78 K164 ["PackagePermissions"]
     1313 CALL                             R75 3 1
     1314 SETTABLEKS                       R75 R74 K113 ["MainPage"]
     1316 GETUPVAL                         R75 12
     1317 GETTABLEKS                       R75 R75 K100 ["createElement"]
     1319 GETUPVAL                         R76 28
     1320 DUPTABLE                         R77 K281 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1321 GETTABLEKS                       R78 R2 K282 ["overrideAssetId"]
     1323 SETTABLEKS                       R78 R77 K178 ["AssetId"]
     1325 SETTABLEKS                       R40 R77 K277 ["CanSave"]
     1327 LOADN                            R78 2
     1328 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
     1330 GETIMPORT                        R78 K155 [UDim2.new]
     1332 LOADN                            R79 1
     1333 LOADN                            R80 0
     1334 LOADN                            R81 0
     1335 LOADN                            R82 62
     1336 CALL                             R78 4 1
     1337 SETTABLEKS                       R78 R77 K3 ["Size"]
     1339 GETTABLEKS                       R78 R0 K283 ["tryCancelWithYield"]
     1341 SETTABLEKS                       R78 R77 K278 ["TryCancel"]
     1343 GETTABLEKS                       R78 R0 K284 ["tryPublishWithConfirmDialog"]
     1345 SETTABLEKS                       R78 R77 K279 ["TryPublish"]
     1347 GETUPVAL                         R79 7
     1348 CALL                             R79 0 1
     1349 JUMPIFNOT                        R79 ; [+10]
     1350 JUMPIF                           R40 ; [+9]
     1351 NEWCLOSURE                       R78 P1
     1352 CAPTURE                          VAL R0
     1353 CAPTURE                          VAL R70
     1354 CAPTURE                          UPVAL U21
     1355 CAPTURE                          VAL R8
     1356 CAPTURE                          VAL R9
     1357 CAPTURE                          UPVAL U3
     1358 CAPTURE                          VAL R24
     1359 JUMP                             ; [+1]
     1360 LOADNIL                          R78
     1361 SETTABLEKS                       R78 R77 K280 ["OnPublishButtonHover"]
     1363 CALL                             R75 2 1
     1364 SETTABLEKS                       R75 R74 K114 ["Footer"]
     1366 CALL                             R71 3 -1
     1367 RETURN                           R71 -1

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_94:
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

PROTO_95:
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

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_97:
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

PROTO_98:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_100:
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

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_104:
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

PROTO_105:
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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       28 NEWCLOSURE                       R2 P5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U6
       31 SETTABLEKS                       R2 R1 K5 ["uploadCatalogItem"]
       33 NEWCLOSURE                       R2 P6
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R2 R1 K6 ["configureCatalogItem"]
       38 NEWCLOSURE                       R2 P7
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 SETTABLEKS                       R2 R1 K7 ["configureMarketplaceItem"]
       43 NEWCLOSURE                       R2 P8
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 SETTABLEKS                       R2 R1 K8 ["uploadMarketplaceItem"]
       49 NEWCLOSURE                       R2 P9
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U11
       52 SETTABLEKS                       R2 R1 K9 ["postRevertVersion"]
       54 NEWCLOSURE                       R2 P10
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U12
       57 SETTABLEKS                       R2 R1 K10 ["postVersionDescription"]
       59 NEWCLOSURE                       R2 P11
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U13
       62 CAPTURE                          UPVAL U14
       63 CAPTURE                          UPVAL U15
       64 SETTABLEKS                       R2 R1 K11 ["setTab"]
       66 NEWCLOSURE                       R2 P12
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U16
       69 CAPTURE                          UPVAL U10
       70 SETTABLEKS                       R2 R1 K12 ["overrideAsset"]
       72 NEWCLOSURE                       R2 P13
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U17
       75 SETTABLEKS                       R2 R1 K13 ["getIsVerifiedCreator"]
       77 NEWCLOSURE                       R2 P14
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U18
       80 SETTABLEKS                       R2 R1 K14 ["getItemUploadFee"]
       82 NEWCLOSURE                       R2 P15
       83 CAPTURE                          UPVAL U19
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U20
       86 SETTABLEKS                       R2 R1 K15 ["uploadCatalogItemWithFee"]
       88 NEWCLOSURE                       R2 P16
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U21
       91 SETTABLEKS                       R2 R1 K16 ["uploadUGCBundleWithFee"]
       93 NEWCLOSURE                       R2 P17
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U22
       96 SETTABLEKS                       R2 R1 K17 ["dispatchPostPackageMetadataRequest"]
       98 NEWCLOSURE                       R2 P18
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U23
      101 SETTABLEKS                       R2 R1 K18 ["updateStore"]
      103 NEWCLOSURE                       R2 P19
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U24
      106 SETTABLEKS                       R2 R1 K19 ["dispatchGetPackageCollaboratorsRequest"]
      108 NEWCLOSURE                       R2 P20
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U25
      111 SETTABLEKS                       R2 R1 K20 ["dispatchPutPackagePermissionsRequest"]
      113 NEWCLOSURE                       R2 P21
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U26
      116 SETTABLEKS                       R2 R1 K21 ["dispatchPostAssetCheckPermissions"]
      118 NEWCLOSURE                       R2 P22
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U27
      121 SETTABLEKS                       R2 R1 K22 ["dispatchGetGroupMetadata"]
      123 NEWCLOSURE                       R2 P23
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U28
      126 SETTABLEKS                       R2 R1 K23 ["dispatchGetGroupRoleInfo"]
      128 NEWCLOSURE                       R2 P24
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U29
      131 SETTABLEKS                       R2 R1 K24 ["dispatchGetUsername"]
      133 NEWCLOSURE                       R2 P25
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U30
      136 SETTABLEKS                       R2 R1 K25 ["dispatchPatchMakeAssetPublicRequest"]
      138 NEWCLOSURE                       R2 P26
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U31
      141 SETTABLEKS                       R2 R1 K26 ["dispatchGetAssetPermissionsRequest"]
      143 NEWCLOSURE                       R2 P27
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U32
      146 SETTABLEKS                       R2 R1 K27 ["dispatchSetDescendantPermissions"]
      148 NEWCLOSURE                       R2 P28
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U33
      151 SETTABLEKS                       R2 R1 K28 ["dispatchGetPublishingRequirements"]
      153 NEWCLOSURE                       R2 P29
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U34
      156 SETTABLEKS                       R2 R1 K29 ["dispatchGetAssetMediaMetadataArray"]
      158 NEWCLOSURE                       R2 P30
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U35
      161 SETTABLEKS                       R2 R1 K30 ["dispatchGetFiatProduct"]
      163 GETUPVAL                         R3 36
      164 CALL                             R3 0 1
      165 JUMPIFNOT                        R3 ; [+4]
      166 NEWCLOSURE                       R2 P31
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U37
      169 JUMP                             ; [+1]
      170 LOADNIL                          R2
      171 SETTABLEKS                       R2 R1 K31 ["dispatchGetSellerStatus"]
      173 NEWCLOSURE                       R2 P32
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U38
      176 SETTABLEKS                       R2 R1 K32 ["dispatchValidateAnimationResult"]
      178 GETUPVAL                         R3 39
      179 CALL                             R3 0 1
      180 JUMPIFNOT                        R3 ; [+4]
      181 NEWCLOSURE                       R2 P33
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U40
      184 JUMP                             ; [+1]
      185 LOADNIL                          R2
      186 SETTABLEKS                       R2 R1 K33 ["dispatchCheckAvatarAssetPrivacy"]
      188 NEWCLOSURE                       R2 P34
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U41
      191 SETTABLEKS                       R2 R1 K34 ["uploadAnimationAsset"]
      193 NEWCLOSURE                       R2 P35
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U42
      196 SETTABLEKS                       R2 R1 K35 ["overrideAnimationAsset"]
      198 RETURN                           R1 1

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
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagEnableUGCForAllChecks"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K15 [require]
       58 GETTABLEKS                       R9 R1 K7 ["Src"]
       60 GETTABLEKS                       R9 R9 K8 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       64 GETTABLEKS                       R9 R9 K18 ["getFFlagToolboxTranslateUploadError"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K15 [require]
       69 GETTABLEKS                       R10 R1 K7 ["Src"]
       71 GETTABLEKS                       R10 R10 K8 ["Util"]
       73 GETTABLEKS                       R10 R10 K16 ["SharedFlags"]
       75 GETTABLEKS                       R10 R10 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K1 [game]
       80 LOADK                            R12 K20 ["ToolboxSendPackageVersionNoteTelemetry"]
       81 NAMECALL                         R10 R10 K10 ["GetFastFlag"]
       83 CALL                             R10 2 1
       84 GETIMPORT                        R11 K15 [require]
       86 GETTABLEKS                       R12 R1 K7 ["Src"]
       88 GETTABLEKS                       R12 R12 K21 ["Flags"]
       90 GETTABLEKS                       R12 R12 K22 ["getFFlagCheckAvatarAssetPrivacy"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K1 [game]
       95 LOADK                            R14 K23 ["StudioService"]
       96 NAMECALL                         R12 R12 K3 ["GetService"]
       98 CALL                             R12 2 1
       99 GETIMPORT                        R13 K15 [require]
      101 GETTABLEKS                       R14 R1 K7 ["Src"]
      103 GETTABLEKS                       R14 R14 K8 ["Util"]
      105 GETTABLEKS                       R14 R14 K24 ["getUserId"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R1 K25 ["Packages"]
      110 GETIMPORT                        R15 K15 [require]
      112 GETTABLEKS                       R16 R14 K26 ["Roact"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K15 [require]
      117 GETTABLEKS                       R17 R14 K27 ["RoactRodux"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K15 [require]
      122 GETTABLEKS                       R18 R14 K28 ["Cryo"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K15 [require]
      127 GETTABLEKS                       R19 R2 K29 ["Analytics"]
      129 GETTABLEKS                       R19 R19 K29 ["Analytics"]
      131 CALL                             R18 1 1
      132 GETTABLEKS                       R19 R1 K7 ["Src"]
      134 GETTABLEKS                       R19 R19 K30 ["Components"]
      136 GETTABLEKS                       R20 R19 K31 ["AssetConfiguration"]
      138 GETIMPORT                        R21 K15 [require]
      140 GETTABLEKS                       R22 R20 K32 ["PreviewArea"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K15 [require]
      145 GETTABLEKS                       R23 R20 K33 ["PublishAsset"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K15 [require]
      150 GETTABLEKS                       R24 R20 K34 ["AssetConfigFooter"]
      152 CALL                             R23 1 1
      153 GETIMPORT                        R24 K15 [require]
      155 GETTABLEKS                       R25 R20 K35 ["Versions"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K15 [require]
      160 GETTABLEKS                       R26 R20 K36 ["DataSharing"]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K15 [require]
      165 GETTABLEKS                       R27 R20 K37 ["CreatorDashboardLinkContent"]
      167 CALL                             R26 1 1
      168 GETIMPORT                        R27 K15 [require]
      170 GETTABLEKS                       R28 R20 K38 ["Permissions"]
      172 GETTABLEKS                       R28 R28 K39 ["PermissionsPage"]
      174 CALL                             R27 1 1
      175 GETIMPORT                        R28 K15 [require]
      177 GETTABLEKS                       R29 R20 K38 ["Permissions"]
      179 GETTABLEKS                       R29 R29 K40 ["CollaboratorInfo"]
      181 CALL                             R28 1 1
      182 GETIMPORT                        R29 K15 [require]
      184 GETTABLEKS                       R30 R20 K41 ["WarningDialog"]
      186 CALL                             R29 1 1
      187 GETIMPORT                        R30 K15 [require]
      189 GETTABLEKS                       R31 R20 K42 ["StyledConfirmDialog"]
      191 CALL                             R30 1 1
      192 GETIMPORT                        R31 K15 [require]
      194 GETTABLEKS                       R32 R20 K43 ["AvatarItemDialogContainer"]
      196 CALL                             R31 1 1
      197 GETIMPORT                        R32 K15 [require]
      199 GETTABLEKS                       R33 R20 K44 ["OverrideAsset"]
      201 CALL                             R32 1 1
      202 GETIMPORT                        R33 K15 [require]
      204 GETTABLEKS                       R34 R19 K45 ["MessageBox"]
      206 GETTABLEKS                       R34 R34 K45 ["MessageBox"]
      208 CALL                             R33 1 1
      209 GETIMPORT                        R34 K15 [require]
      211 GETTABLEKS                       R35 R2 K46 ["AssetPermissionUtil"]
      213 CALL                             R34 1 1
      214 GETIMPORT                        R35 K15 [require]
      216 GETTABLEKS                       R36 R2 K47 ["Images"]
      218 CALL                             R35 1 1
      219 GETIMPORT                        R36 K15 [require]
      221 GETTABLEKS                       R37 R2 K48 ["AssetConfigConstants"]
      223 CALL                             R36 1 1
      224 GETIMPORT                        R37 K15 [require]
      226 GETTABLEKS                       R38 R2 K49 ["Constants"]
      228 CALL                             R37 1 1
      229 GETIMPORT                        R38 K15 [require]
      231 GETTABLEKS                       R39 R2 K50 ["ScreenSetup"]
      233 CALL                             R38 1 1
      234 GETIMPORT                        R39 K15 [require]
      236 GETTABLEKS                       R40 R2 K51 ["AssetConfigUtil"]
      238 CALL                             R39 1 1
      239 GETIMPORT                        R40 K15 [require]
      241 GETTABLEKS                       R41 R2 K52 ["fixUpPreValidation"]
      243 CALL                             R40 1 1
      244 GETIMPORT                        R41 K15 [require]
      246 GETTABLEKS                       R42 R2 K53 ["PublishUtil"]
      248 CALL                             R41 1 1
      249 GETIMPORT                        R42 K15 [require]
      251 GETTABLEKS                       R43 R2 K54 ["getAllowedAssetTypeEnums"]
      253 CALL                             R42 1 1
      254 GETIMPORT                        R43 K15 [require]
      256 GETTABLEKS                       R44 R2 K55 ["FiatUtil"]
      258 CALL                             R43 1 1
      259 LOADNIL                          R44
      260 JUMPIFNOT                        R5 ; [+6]
      261 GETIMPORT                        R45 K15 [require]
      263 GETTABLEKS                       R46 R2 K56 ["getIsIXPVariableEnabled"]
      265 CALL                             R45 1 1
      266 MOVE                             R44 R45
      267 GETIMPORT                        R45 K15 [require]
      269 GETTABLEKS                       R46 R14 K57 ["Framework"]
      271 CALL                             R45 1 1
      272 GETTABLEKS                       R46 R45 K8 ["Util"]
      274 GETTABLEKS                       R46 R46 K58 ["deepCopy"]
      276 GETTABLEKS                       R47 R45 K8 ["Util"]
      278 GETTABLEKS                       R47 R47 K59 ["deepEqual"]
      280 GETTABLEKS                       R48 R45 K60 ["Dash"]
      282 GETTABLEKS                       R49 R48 K61 ["slice"]
      284 GETIMPORT                        R50 K15 [require]
      286 GETTABLEKS                       R51 R1 K7 ["Src"]
      288 GETTABLEKS                       R51 R51 K62 ["Networking"]
      290 GETTABLEKS                       R51 R51 K63 ["Requests"]
      292 GETTABLEKS                       R51 R51 K64 ["MakeChangeRequest"]
      294 CALL                             R50 1 1
      295 GETTABLEKS                       R51 R1 K7 ["Src"]
      297 GETTABLEKS                       R51 R51 K65 ["Types"]
      299 GETIMPORT                        R52 K15 [require]
      301 GETTABLEKS                       R53 R51 K66 ["AssetMediaTypes"]
      303 CALL                             R52 1 1
      304 GETIMPORT                        R53 K15 [require]
      306 GETTABLEKS                       R54 R51 K67 ["AssetSubTypes"]
      308 CALL                             R53 1 1
      309 GETIMPORT                        R54 K15 [require]
      311 GETTABLEKS                       R55 R51 K68 ["ConfigTypes"]
      313 CALL                             R54 1 1
      314 GETTABLEKS                       R55 R1 K7 ["Src"]
      316 GETTABLEKS                       R55 R55 K62 ["Networking"]
      318 GETTABLEKS                       R55 R55 K63 ["Requests"]
      320 GETIMPORT                        R56 K15 [require]
      322 GETTABLEKS                       R57 R55 K69 ["GetUploadPermissionStatusRequest"]
      324 CALL                             R56 1 1
      325 GETIMPORT                        R57 K15 [require]
      327 GETTABLEKS                       R58 R55 K70 ["UploadCatalogItemRequest"]
      329 CALL                             R57 1 1
      330 GETIMPORT                        R58 K15 [require]
      332 GETTABLEKS                       R59 R55 K71 ["ConfigureCatalogItemRequest"]
      334 CALL                             R58 1 1
      335 GETIMPORT                        R59 K15 [require]
      337 GETTABLEKS                       R60 R55 K72 ["GetAssetDetailsRequest"]
      339 CALL                             R59 1 1
      340 GETIMPORT                        R60 K15 [require]
      342 GETTABLEKS                       R61 R55 K73 ["PostRevertVersionRequest"]
      344 CALL                             R60 1 1
      345 GETIMPORT                        R61 K15 [require]
      347 GETTABLEKS                       R62 R55 K74 ["PostVersionDescriptionRequest"]
      349 CALL                             R61 1 1
      350 GETIMPORT                        R62 K15 [require]
      352 GETTABLEKS                       R63 R55 K75 ["PatchAssetRequest"]
      354 CALL                             R62 1 1
      355 GETIMPORT                        R63 K15 [require]
      357 GETTABLEKS                       R64 R55 K76 ["PostUploadAssetRequest"]
      359 CALL                             R63 1 1
      360 GETIMPORT                        R64 K15 [require]
      362 GETTABLEKS                       R65 R55 K77 ["PostOverrideAssetRequest"]
      364 CALL                             R64 1 1
      365 GETIMPORT                        R65 K15 [require]
      367 GETTABLEKS                       R66 R55 K78 ["PostUploadAnimationRequest"]
      369 CALL                             R65 1 1
      370 GETIMPORT                        R66 K15 [require]
      372 GETTABLEKS                       R67 R55 K79 ["PostOverrideAnimationRequest"]
      374 CALL                             R66 1 1
      375 GETIMPORT                        R67 K15 [require]
      377 GETTABLEKS                       R68 R55 K80 ["GetIsVerifiedCreatorRequest"]
      379 CALL                             R67 1 1
      380 GETIMPORT                        R68 K15 [require]
      382 GETTABLEKS                       R69 R55 K81 ["PostPackageMetadataRequest"]
      384 CALL                             R68 1 1
      385 GETIMPORT                        R69 K15 [require]
      387 GETTABLEKS                       R70 R55 K82 ["GetPackageCollaboratorsRequest"]
      389 CALL                             R69 1 1
      390 GETIMPORT                        R70 K15 [require]
      392 GETTABLEKS                       R71 R55 K83 ["PutPackagePermissionsRequest"]
      394 CALL                             R70 1 1
      395 GETIMPORT                        R71 K15 [require]
      397 GETTABLEKS                       R72 R55 K84 ["PostAssetCheckPermissions"]
      399 CALL                             R71 1 1
      400 GETIMPORT                        R72 K15 [require]
      402 GETTABLEKS                       R73 R55 K85 ["GetMarketplaceInfoRequest"]
      404 CALL                             R72 1 1
      405 GETIMPORT                        R73 K15 [require]
      407 GETTABLEKS                       R74 R55 K86 ["GetItemUploadFeeRequest"]
      409 CALL                             R73 1 1
      410 GETIMPORT                        R74 K15 [require]
      412 GETTABLEKS                       R75 R55 K87 ["UGCBundleUploadRequest"]
      414 CALL                             R74 1 1
      415 GETIMPORT                        R75 K15 [require]
      417 GETTABLEKS                       R76 R55 K88 ["PatchMakeAssetPublicRequest"]
      419 CALL                             R75 1 1
      420 GETIMPORT                        R76 K15 [require]
      422 GETTABLEKS                       R77 R55 K89 ["GetAssetPermissionsRequest"]
      424 CALL                             R76 1 1
      425 GETIMPORT                        R77 K15 [require]
      427 GETTABLEKS                       R78 R55 K90 ["GetPublishingRequirementsRequest"]
      429 CALL                             R77 1 1
      430 GETIMPORT                        R78 K15 [require]
      432 GETTABLEKS                       R79 R55 K91 ["GetAssetMediaMetadataArrayRequest"]
      434 CALL                             R78 1 1
      435 GETIMPORT                        R79 K15 [require]
      437 GETTABLEKS                       R80 R55 K92 ["UGCAccessoryUploadRequest"]
      439 CALL                             R79 1 1
      440 GETIMPORT                        R80 K15 [require]
      442 GETTABLEKS                       R81 R55 K93 ["GetVersionHistoryRequest"]
      444 CALL                             R80 1 1
      445 GETIMPORT                        R81 K15 [require]
      447 GETTABLEKS                       R82 R55 K94 ["GetFiatProductRequest"]
      449 CALL                             R81 1 1
      450 GETIMPORT                        R82 K15 [require]
      452 GETTABLEKS                       R83 R55 K95 ["GetSellerStatusRequest"]
      454 CALL                             R82 1 1
      455 GETIMPORT                        R83 K15 [require]
      457 GETTABLEKS                       R84 R55 K96 ["GetDefaultBundleDataSharingRequest"]
      459 CALL                             R83 1 1
      460 GETIMPORT                        R84 K15 [require]
      462 GETTABLEKS                       R85 R1 K7 ["Src"]
      464 GETTABLEKS                       R85 R85 K97 ["Actions"]
      466 GETTABLEKS                       R85 R85 K98 ["ClearChange"]
      468 CALL                             R84 1 1
      469 GETIMPORT                        R85 K15 [require]
      471 GETTABLEKS                       R86 R1 K7 ["Src"]
      473 GETTABLEKS                       R86 R86 K97 ["Actions"]
      475 GETTABLEKS                       R86 R86 K99 ["SetAssetConfigTab"]
      477 CALL                             R85 1 1
      478 GETIMPORT                        R86 K15 [require]
      480 GETTABLEKS                       R87 R1 K7 ["Src"]
      482 GETTABLEKS                       R87 R87 K97 ["Actions"]
      484 GETTABLEKS                       R87 R87 K100 ["UpdateAssetConfigStore"]
      486 CALL                             R86 1 1
      487 GETIMPORT                        R87 K15 [require]
      489 GETTABLEKS                       R88 R1 K7 ["Src"]
      491 GETTABLEKS                       R88 R88 K97 ["Actions"]
      493 GETTABLEKS                       R88 R88 K101 ["SetDescendantPermissions"]
      495 CALL                             R87 1 1
      496 GETIMPORT                        R88 K15 [require]
      498 GETTABLEKS                       R89 R1 K7 ["Src"]
      500 GETTABLEKS                       R89 R89 K97 ["Actions"]
      502 GETTABLEKS                       R89 R89 K102 ["UploadResult"]
      504 CALL                             R88 1 1
      505 GETIMPORT                        R89 K15 [require]
      507 GETTABLEKS                       R90 R1 K7 ["Src"]
      509 GETTABLEKS                       R90 R90 K97 ["Actions"]
      511 GETTABLEKS                       R90 R90 K103 ["ValidateAnimationResult"]
      513 CALL                             R89 1 1
      514 GETIMPORT                        R90 K15 [require]
      516 GETTABLEKS                       R91 R1 K7 ["Src"]
      518 GETTABLEKS                       R91 R91 K104 ["Thunks"]
      520 GETTABLEKS                       R91 R91 K105 ["GetGroupMetadata"]
      522 CALL                             R90 1 1
      523 GETIMPORT                        R91 K15 [require]
      525 GETTABLEKS                       R92 R1 K7 ["Src"]
      527 GETTABLEKS                       R92 R92 K104 ["Thunks"]
      529 GETTABLEKS                       R92 R92 K106 ["GetGroupRoleInfo"]
      531 CALL                             R91 1 1
      532 GETIMPORT                        R92 K15 [require]
      534 GETTABLEKS                       R93 R1 K7 ["Src"]
      536 GETTABLEKS                       R93 R93 K104 ["Thunks"]
      538 GETTABLEKS                       R93 R93 K107 ["GetUsername"]
      540 CALL                             R92 1 1
      541 GETIMPORT                        R93 K15 [require]
      543 GETTABLEKS                       R94 R1 K7 ["Src"]
      545 GETTABLEKS                       R94 R94 K104 ["Thunks"]
      547 GETTABLEKS                       R94 R94 K108 ["CheckAvatarAssetPrivacy"]
      549 CALL                             R93 1 1
      550 GETIMPORT                        R94 K15 [require]
      552 GETTABLEKS                       R95 R1 K7 ["Src"]
      554 GETTABLEKS                       R95 R95 K109 ["ContextServices"]
      556 GETTABLEKS                       R95 R95 K110 ["IXPContext"]
      558 CALL                             R94 1 1
      559 GETIMPORT                        R95 K15 [require]
      561 GETTABLEKS                       R96 R1 K7 ["Src"]
      563 GETTABLEKS                       R96 R96 K109 ["ContextServices"]
      565 GETTABLEKS                       R96 R96 K111 ["NetworkContext"]
      567 CALL                             R95 1 1
      568 GETIMPORT                        R96 K15 [require]
      570 GETTABLEKS                       R97 R1 K7 ["Src"]
      572 GETTABLEKS                       R97 R97 K109 ["ContextServices"]
      574 GETTABLEKS                       R97 R97 K112 ["PublishServiceContext"]
      576 CALL                             R96 1 1
      577 GETIMPORT                        R97 K15 [require]
      579 GETTABLEKS                       R98 R1 K7 ["Src"]
      581 GETTABLEKS                       R98 R98 K109 ["ContextServices"]
      583 GETTABLEKS                       R98 R98 K113 ["PluginGuiServiceContext"]
      585 CALL                             R97 1 1
      586 GETIMPORT                        R98 K15 [require]
      588 GETTABLEKS                       R99 R1 K7 ["Src"]
      590 GETTABLEKS                       R99 R99 K109 ["ContextServices"]
      592 GETTABLEKS                       R99 R99 K114 ["ContentProviderContext"]
      594 CALL                             R98 1 1
      595 GETIMPORT                        R99 K15 [require]
      597 GETTABLEKS                       R100 R14 K57 ["Framework"]
      599 CALL                             R99 1 1
      600 GETTABLEKS                       R100 R99 K109 ["ContextServices"]
      602 GETTABLEKS                       R101 R100 K115 ["withContext"]
      604 GETTABLEKS                       R102 R99 K116 ["UI"]
      606 GETTABLEKS                       R102 R102 K117 ["LoadingIndicator"]
      608 GETTABLEKS                       R103 R99 K116 ["UI"]
      610 GETTABLEKS                       R103 R103 K118 ["Container"]
      612 GETTABLEKS                       R104 R15 K119 ["PureComponent"]
      614 LOADK                            R106 K120 ["AssetConfig"]
      615 NAMECALL                         R104 R104 K121 ["extend"]
      617 CALL                             R104 2 1
      618 GETIMPORT                        R105 K124 [utf8.char]
      620 LOADK                            R106 K125 [57346]
      621 CALL                             R105 1 1
      622 GETIMPORT                        R106 K15 [require]
      624 GETTABLEKS                       R107 R1 K7 ["Src"]
      626 GETTABLEKS                       R107 R107 K21 ["Flags"]
      628 GETTABLEKS                       R107 R107 K126 ["getFFlagEnableUploadingMakeup"]
      630 CALL                             R106 1 1
      631 GETIMPORT                        R107 K15 [require]
      633 GETTABLEKS                       R108 R1 K7 ["Src"]
      635 GETTABLEKS                       R108 R108 K21 ["Flags"]
      637 GETTABLEKS                       R108 R108 K127 ["getFFlagEnableUploadingAvatarAnimations"]
      639 CALL                             R107 1 1
      640 GETIMPORT                        R108 K15 [require]
      642 GETTABLEKS                       R109 R1 K7 ["Src"]
      644 GETTABLEKS                       R109 R109 K21 ["Flags"]
      646 GETTABLEKS                       R109 R109 K128 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      648 CALL                             R108 1 1
      649 GETIMPORT                        R109 K15 [require]
      651 GETTABLEKS                       R110 R1 K7 ["Src"]
      653 GETTABLEKS                       R110 R110 K21 ["Flags"]
      655 GETTABLEKS                       R110 R110 K129 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      657 CALL                             R109 1 1
      658 NEWCLOSURE                       R110 P0
      659 CAPTURE                          VAL R11
      660 CAPTURE                          VAL R37
      661 CAPTURE                          VAL R106
      662 CAPTURE                          VAL R39
      663 CAPTURE                          VAL R36
      664 CAPTURE                          VAL R6
      665 CAPTURE                          VAL R34
      666 CAPTURE                          VAL R17
      667 CAPTURE                          VAL R4
      668 CAPTURE                          VAL R5
      669 CAPTURE                          REF R44
      670 CAPTURE                          VAL R12
      671 CAPTURE                          VAL R54
      672 CAPTURE                          VAL R13
      673 CAPTURE                          VAL R25
      674 CAPTURE                          VAL R8
      675 CAPTURE                          VAL R10
      676 CAPTURE                          VAL R18
      677 CAPTURE                          VAL R108
      678 CAPTURE                          VAL R7
      679 CAPTURE                          VAL R56
      680 CAPTURE                          VAL R107
      681 CAPTURE                          VAL R46
      682 CAPTURE                          VAL R47
      683 CAPTURE                          VAL R53
      684 CAPTURE                          VAL R35
      685 SETTABLEKS                       R110 R104 K130 ["init"]
      687 DUPCLOSURE                       R110 K131 [PROTO_67]
      688 SETTABLEKS                       R110 R104 K132 ["attachXButtonCallback"]
      690 DUPCLOSURE                       R110 K133 [PROTO_68]
      691 SETTABLEKS                       R110 R104 K134 ["detachXButtonCallback"]
      693 DUPCLOSURE                       R110 K135 [PROTO_69]
      694 CAPTURE                          VAL R36
      695 SETTABLEKS                       R110 R104 K136 ["isLoading"]
      697 DUPCLOSURE                       R110 K137 [PROTO_70]
      698 CAPTURE                          VAL R17
      699 DUPCLOSURE                       R111 K138 [PROTO_71]
      700 CAPTURE                          VAL R36
      701 CAPTURE                          VAL R54
      702 CAPTURE                          VAL R34
      703 CAPTURE                          VAL R39
      704 CAPTURE                          VAL R3
      705 CAPTURE                          VAL R41
      706 CAPTURE                          VAL R109
      707 CAPTURE                          VAL R110
      708 CAPTURE                          VAL R37
      709 SETTABLEKS                       R111 R104 K139 ["didUpdate"]
      711 DUPCLOSURE                       R111 K140 [PROTO_72]
      712 CAPTURE                          VAL R49
      713 SETTABLEKS                       R111 R104 K141 ["versionsGetPageRootItems"]
      715 DUPCLOSURE                       R111 K142 [PROTO_75]
      716 CAPTURE                          VAL R83
      717 SETTABLEKS                       R111 R104 K143 ["getDefaultBundleDataSharing"]
      719 DUPCLOSURE                       R111 K144 [PROTO_81]
      720 CAPTURE                          VAL R36
      721 CAPTURE                          VAL R39
      722 SETTABLEKS                       R111 R104 K145 ["getAssetInformation"]
      724 DUPCLOSURE                       R111 K146 [PROTO_83]
      725 CAPTURE                          VAL R39
      726 CAPTURE                          VAL R7
      727 CAPTURE                          VAL R9
      728 CAPTURE                          VAL R43
      729 SETTABLEKS                       R111 R104 K147 ["didMount"]
      731 DUPCLOSURE                       R111 K148 [PROTO_84]
      732 SETTABLEKS                       R111 R104 K149 ["willUnmount"]
      734 DUPCLOSURE                       R111 K150 [PROTO_87]
      735 CAPTURE                          VAL R36
      736 CAPTURE                          VAL R54
      737 CAPTURE                          VAL R11
      738 CAPTURE                          VAL R39
      739 CAPTURE                          VAL R38
      740 CAPTURE                          VAL R41
      741 CAPTURE                          VAL R7
      742 CAPTURE                          VAL R106
      743 CAPTURE                          VAL R107
      744 CAPTURE                          VAL R37
      745 CAPTURE                          VAL R105
      746 CAPTURE                          VAL R6
      747 CAPTURE                          VAL R15
      748 CAPTURE                          VAL R33
      749 CAPTURE                          VAL R30
      750 CAPTURE                          VAL R31
      751 CAPTURE                          VAL R29
      752 CAPTURE                          VAL R21
      753 CAPTURE                          VAL R103
      754 CAPTURE                          VAL R102
      755 CAPTURE                          VAL R22
      756 CAPTURE                          VAL R108
      757 CAPTURE                          VAL R24
      758 CAPTURE                          VAL R109
      759 CAPTURE                          VAL R26
      760 CAPTURE                          VAL R32
      761 CAPTURE                          VAL R28
      762 CAPTURE                          VAL R27
      763 CAPTURE                          VAL R23
      764 SETTABLEKS                       R111 R104 K151 ["render"]
      766 MOVE                             R111 R101
      767 DUPTABLE                         R112 K161 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      768 GETTABLEKS                       R113 R100 K152 ["Focus"]
      770 SETTABLEKS                       R113 R112 K152 ["Focus"]
      772 JUMPIFNOT                        R5 ; [+2]
      773 MOVE                             R113 R94
      774 JUMP                             ; [+1]
      775 LOADNIL                          R113
      776 SETTABLEKS                       R113 R112 K153 ["IXP"]
      778 GETTABLEKS                       R113 R100 K154 ["Localization"]
      780 SETTABLEKS                       R113 R112 K154 ["Localization"]
      782 GETTABLEKS                       R113 R100 K155 ["Stylizer"]
      784 SETTABLEKS                       R113 R112 K155 ["Stylizer"]
      786 MOVE                             R114 R106
      787 CALL                             R114 0 1
      788 JUMPIFNOT                        R114 ; [+3]
      789 GETTABLEKS                       R113 R100 K156 ["Plugin"]
      791 JUMP                             ; [+1]
      792 LOADNIL                          R113
      793 SETTABLEKS                       R113 R112 K156 ["Plugin"]
      795 SETTABLEKS                       R95 R112 K157 ["Network"]
      797 SETTABLEKS                       R96 R112 K158 ["PublishService"]
      799 MOVE                             R114 R11
      800 CALL                             R114 0 1
      801 JUMPIFNOT                        R114 ; [+2]
      802 MOVE                             R113 R97
      803 JUMP                             ; [+1]
      804 LOADNIL                          R113
      805 SETTABLEKS                       R113 R112 K159 ["PluginGuiService"]
      807 MOVE                             R114 R11
      808 CALL                             R114 0 1
      809 JUMPIFNOT                        R114 ; [+2]
      810 MOVE                             R113 R98
      811 JUMP                             ; [+1]
      812 LOADNIL                          R113
      813 SETTABLEKS                       R113 R112 K160 ["ContentProvider"]
      815 CALL                             R111 1 1
      816 MOVE                             R112 R104
      817 CALL                             R111 1 1
      818 MOVE                             R104 R111
      819 DUPCLOSURE                       R111 K162 [PROTO_88]
      820 CAPTURE                          VAL R53
      821 CAPTURE                          VAL R109
      822 CAPTURE                          VAL R4
      823 CAPTURE                          VAL R5
      824 CAPTURE                          VAL R3
      825 CAPTURE                          VAL R43
      826 CAPTURE                          VAL R107
      827 CAPTURE                          VAL R11
      828 DUPCLOSURE                       R112 K163 [PROTO_125]
      829 CAPTURE                          VAL R59
      830 CAPTURE                          VAL R72
      831 CAPTURE                          VAL R80
      832 CAPTURE                          VAL R50
      833 CAPTURE                          VAL R88
      834 CAPTURE                          VAL R17
      835 CAPTURE                          VAL R57
      836 CAPTURE                          VAL R58
      837 CAPTURE                          VAL R62
      838 CAPTURE                          VAL R63
      839 CAPTURE                          VAL R8
      840 CAPTURE                          VAL R60
      841 CAPTURE                          VAL R61
      842 CAPTURE                          VAL R85
      843 CAPTURE                          VAL R84
      844 CAPTURE                          VAL R36
      845 CAPTURE                          VAL R64
      846 CAPTURE                          VAL R67
      847 CAPTURE                          VAL R73
      848 CAPTURE                          VAL R40
      849 CAPTURE                          VAL R79
      850 CAPTURE                          VAL R74
      851 CAPTURE                          VAL R68
      852 CAPTURE                          VAL R86
      853 CAPTURE                          VAL R69
      854 CAPTURE                          VAL R70
      855 CAPTURE                          VAL R71
      856 CAPTURE                          VAL R90
      857 CAPTURE                          VAL R91
      858 CAPTURE                          VAL R92
      859 CAPTURE                          VAL R75
      860 CAPTURE                          VAL R76
      861 CAPTURE                          VAL R87
      862 CAPTURE                          VAL R77
      863 CAPTURE                          VAL R78
      864 CAPTURE                          VAL R81
      865 CAPTURE                          VAL R9
      866 CAPTURE                          VAL R82
      867 CAPTURE                          VAL R89
      868 CAPTURE                          VAL R11
      869 CAPTURE                          VAL R93
      870 CAPTURE                          VAL R65
      871 CAPTURE                          VAL R66
      872 GETTABLEKS                       R113 R16 K164 ["connect"]
      874 MOVE                             R114 R111
      875 MOVE                             R115 R112
      876 CALL                             R113 2 1
      877 MOVE                             R114 R104
      878 CALL                             R113 1 -1
      879 CLOSEUPVALS                      R44
      880 RETURN                           R113 -1
