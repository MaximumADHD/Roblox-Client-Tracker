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
      230 GETUPVAL                         R43 8
      231 CALL                             R43 0 1
      232 JUMPIFNOT                        R43 ; [+3]
      233 GETTABLEKS                       R42 R2 K55 ["canUploadWithUgcRestrictions"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R42
      237 GETUPVAL                         R44 8
      238 CALL                             R44 0 1
      239 JUMPIFNOT                        R44 ; [+3]
      240 GETTABLEKS                       R43 R2 K56 ["canUploadWithUgcRestrictionsDenyReason"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R43
      244 GETUPVAL                         R44 8
      245 CALL                             R44 0 1
      246 JUMPIFNOT                        R44 ; [+7]
      247 GETTABLEKS                       R44 R2 K57 ["categoryType"]
      249 JUMPIFNOTEQKS                    R44 K58 ["AvatarItem"] ; [+4]
      251 JUMPIFEQKNIL                     R42 ; [+2]
      253 AND                              R41 R41 R42
      254 GETUPVAL                         R44 2
      255 CALL                             R44 0 1
      256 JUMPIFNOT                        R44 ; [+7]
      257 MOVE                             R44 R41
      258 JUMPIFNOT                        R44 ; [+3]
      259 GETTABLEKS                       R45 R1 K59 ["isAvatarItemDialogFlowEnabled"]
      261 NOT                              R44 R45
      262 MOVE                             R41 R44
      263 JUMP                             ; [+6]
      264 MOVE                             R44 R41
      265 JUMPIFNOT                        R44 ; [+3]
      266 GETTABLEKS                       R45 R2 K25 ["isShowRobuxSpendMessageBox"]
      268 NOT                              R44 R45
      269 MOVE                             R41 R44
      270 GETUPVAL                         R44 9
      271 CALL                             R44 0 1
      272 JUMPIFNOT                        R44 ; [+11]
      273 GETUPVAL                         R44 3
      274 GETTABLEKS                       R44 R44 K60 ["isMakeupAsset"]
      276 MOVE                             R45 R24
      277 CALL                             R44 1 1
      278 JUMPIFNOT                        R44 ; [+5]
      279 GETTABLEKS                       R44 R2 K61 ["selectedColor"]
      281 JUMPIFNOTEQKNIL                  R44 ; [+2]
      283 LOADB                            R41 0
      284 GETUPVAL                         R44 5
      285 CALL                             R44 0 1
      286 JUMPIFNOT                        R44 ; [+9]
      287 GETIMPORT                        R44 K65 [Enum.AssetType.Animation]
      289 JUMPIFNOTEQ                      R24 R44 ; [+6]
      291 GETTABLEKS                       R44 R1 K66 ["animationSectionValid"]
      293 JUMPIFNOTEQKB                    R44 FALSE ; [+2]
      295 LOADB                            R41 0
      296 GETUPVAL                         R45 10
      297 GETTABLEKS                       R45 R45 K68 ["SCROLLBAR_PADDING"]
      299 SUBRK                            R44 R67 K45 ["SHOW_ASSET_TYPE"]
      300 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      302 GETIMPORT                        R47 K70 [Enum.AssetType.Audio]
      304 JUMPIFEQ                         R46 R47 ; [+2]
      306 LOADB                            R45 0 +1
      307 LOADB                            R45 1
      308 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      310 GETIMPORT                        R48 K72 [Enum.AssetType.Video]
      312 JUMPIFEQ                         R47 R48 ; [+2]
      314 LOADB                            R46 0 +1
      315 LOADB                            R46 1
      316 GETTABLEKS                       R48 R1 K28 ["assetTypeEnum"]
      318 GETIMPORT                        R49 K74 [Enum.AssetType.Model]
      320 JUMPIFEQ                         R48 R49 ; [+2]
      322 LOADB                            R47 0 +1
      323 LOADB                            R47 1
      324 GETTABLEKS                       R49 R1 K28 ["assetTypeEnum"]
      326 GETIMPORT                        R50 K76 [Enum.AssetType.Plugin]
      328 JUMPIFEQ                         R49 R50 ; [+2]
      330 LOADB                            R48 0 +1
      331 LOADB                            R48 1
      332 LOADNIL                          R49
      333 LOADB                            R50 0
      334 GETTABLEKS                       R51 R1 K77 ["Localization"]
      336 LOADK                            R54 K78 ["General"]
      337 LOADK                            R55 K79 ["Proceed"]
      338 NAMECALL                         R52 R51 K80 ["getText"]
      340 CALL                             R52 3 1
      341 LOADK                            R55 K78 ["General"]
      342 LOADK                            R56 K81 ["GoBack"]
      343 NAMECALL                         R53 R51 K80 ["getText"]
      345 CALL                             R53 3 1
      346 LOADK                            R56 K82 ["AssetConfigSharing"]
      347 LOADK                            R57 K83 ["PublicConfirmationHeading"]
      348 NAMECALL                         R54 R51 K80 ["getText"]
      350 CALL                             R54 3 1
      351 LOADK                            R57 K82 ["AssetConfigSharing"]
      352 LOADK                            R58 K84 ["PublicConfirmationMessage"]
      353 NAMECALL                         R55 R51 K80 ["getText"]
      355 CALL                             R55 3 1
      356 LOADK                            R58 K82 ["AssetConfigSharing"]
      357 LOADK                            R59 K85 ["PublicConfirmationTitle"]
      358 NAMECALL                         R56 R51 K80 ["getText"]
      360 CALL                             R56 3 1
      361 GETTABLEKS                       R57 R2 K86 ["isConfirmationDialogEnabled"]
      363 GETTABLEKS                       R58 R2 K87 ["confirmationDialogKey"]
      365 LOADK                            R61 K88 ["AssetConfig"]
      366 LOADK                            R62 K89 ["PublishAssetDialogPublish"]
      367 NAMECALL                         R59 R51 K80 ["getText"]
      369 CALL                             R59 3 1
      370 LOADK                            R62 K78 ["General"]
      371 LOADK                            R63 K90 ["Cancel"]
      372 NAMECALL                         R60 R51 K80 ["getText"]
      374 CALL                             R60 3 1
      375 LOADK                            R63 K88 ["AssetConfig"]
      376 LOADK                            R64 K91 ["PublishAssetDialogDescription"]
      377 NAMECALL                         R61 R51 K80 ["getText"]
      379 CALL                             R61 3 1
      380 LOADK                            R64 K88 ["AssetConfig"]
      381 LOADK                            R65 K92 ["PublishAssetDialogHeading"]
      382 NAMECALL                         R62 R51 K80 ["getText"]
      384 CALL                             R62 3 1
      385 LOADK                            R65 K78 ["General"]
      386 LOADK                            R66 K93 ["RobloxStudio"]
      387 NAMECALL                         R63 R51 K80 ["getText"]
      389 CALL                             R63 3 1
      390 GETUPVAL                         R65 2
      391 CALL                             R65 0 1
      392 JUMPIFNOT                        R65 ; [+2]
      393 LOADNIL                          R64
      394 JUMP                             ; [+5]
      395 LOADK                            R66 K78 ["General"]
      396 LOADK                            R67 K93 ["RobloxStudio"]
      397 NAMECALL                         R64 R51 K80 ["getText"]
      399 CALL                             R64 3 1
      400 GETUPVAL                         R66 2
      401 CALL                             R66 0 1
      402 JUMPIFNOT                        R66 ; [+2]
      403 LOADNIL                          R65
      404 JUMP                             ; [+8]
      405 LOADK                            R67 K88 ["AssetConfig"]
      406 LOADK                            R68 K94 ["PayAndConfirmHeading"]
      407 DUPTABLE                         R69 K95 [{"name"}]
      408 SETTABLEKS                       R8 R69 K8 ["name"]
      410 NAMECALL                         R65 R51 K80 ["getText"]
      412 CALL                             R65 4 1
      413 GETTABLEKS                       R67 R1 K96 ["uploadFee"]
      415 JUMPIFNOT                        R67 ; [+3]
      416 GETTABLEKS                       R66 R1 K96 ["uploadFee"]
      418 JUMP                             ; [+1]
      419 LOADK                            R66 K7 [""]
      420 GETUPVAL                         R68 2
      421 CALL                             R68 0 1
      422 JUMPIFNOT                        R68 ; [+2]
      423 LOADNIL                          R67
      424 JUMP                             ; [+11]
      425 LOADK                            R69 K88 ["AssetConfig"]
      426 LOADK                            R70 K97 ["PayAndConfirmDescription"]
      427 DUPTABLE                         R71 K99 [{"amount"}]
      428 GETUPVAL                         R73 11
      429 MOVE                             R74 R66
      430 CONCAT                           R72 R73 R74
      431 SETTABLEKS                       R72 R71 K98 ["amount"]
      433 NAMECALL                         R67 R51 K80 ["getText"]
      435 CALL                             R67 4 1
      436 GETUPVAL                         R69 2
      437 CALL                             R69 0 1
      438 JUMPIFNOT                        R69 ; [+2]
      439 LOADNIL                          R68
      440 JUMP                             ; [+5]
      441 LOADK                            R70 K78 ["General"]
      442 LOADK                            R71 K100 ["PayAndSubmit"]
      443 NAMECALL                         R68 R51 K80 ["getText"]
      445 CALL                             R68 3 1
      446 GETTABLEKS                       R69 R2 K101 ["isPublishAssetsDialogEnabled"]
      448 JUMPIF                           R45 ; [+3]
      449 GETUPVAL                         R70 12
      450 JUMPIFNOT                        R70 ; [+3]
      451 JUMPIFNOT                        R46 ; [+2]
      452 NOT                              R49 R5
      453 JUMP                             ; [+2]
      454 JUMPIFNOT                        R47 ; [+1]
      455 LOADB                            R49 1
      456 JUMPIF                           R45 ; [+3]
      457 GETUPVAL                         R70 12
      458 JUMPIFNOT                        R70 ; [+2]
      459 JUMPIFNOT                        R46 ; [+1]
      460 LOADB                            R50 1
      461 JUMPIF                           R45 ; [+3]
      462 GETUPVAL                         R70 12
      463 JUMPIFNOT                        R70 ; [+2]
      464 JUMPIFNOT                        R46 ; [+1]
      465 MOVE                             R11 R17
      466 GETUPVAL                         R70 3
      467 GETTABLEKS                       R70 R70 K60 ["isMakeupAsset"]
      469 MOVE                             R71 R24
      470 CALL                             R70 1 1
      471 GETUPVAL                         R71 9
      472 CALL                             R71 0 1
      473 JUMPIFNOT                        R71 ; [+8]
      474 MOVE                             R71 R70
      475 JUMPIFNOT                        R71 ; [+6]
      476 GETTABLEKS                       R72 R2 K61 ["selectedColor"]
      478 JUMPIFEQKNIL                     R72 ; [+2]
      480 LOADB                            R71 0 +1
      481 LOADB                            R71 1
      482 GETUPVAL                         R72 13
      483 GETTABLEKS                       R72 R72 K102 ["createElement"]
      485 LOADK                            R73 K103 ["Frame"]
      486 DUPTABLE                         R74 K107 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      487 SETTABLEKS                       R4 R74 K3 ["Size"]
      489 LOADN                            R75 0
      490 SETTABLEKS                       R75 R74 K104 ["BackgroundTransparency"]
      492 GETTABLEKS                       R75 R3 K108 ["assetConfig"]
      494 GETTABLEKS                       R75 R75 K109 ["backgroundColor"]
      496 SETTABLEKS                       R75 R74 K105 ["BackgroundColor3"]
      498 LOADN                            R75 0
      499 SETTABLEKS                       R75 R74 K106 ["BorderSizePixel"]
      501 DUPTABLE                         R75 K117 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      502 GETUPVAL                         R76 13
      503 GETTABLEKS                       R76 R76 K102 ["createElement"]
      505 LOADK                            R77 K110 ["UIListLayout"]
      506 DUPTABLE                         R78 K123 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      507 GETIMPORT                        R79 K125 [Enum.FillDirection.Vertical]
      509 SETTABLEKS                       R79 R78 K118 ["FillDirection"]
      511 GETIMPORT                        R79 K127 [Enum.HorizontalAlignment.Left]
      513 SETTABLEKS                       R79 R78 K119 ["HorizontalAlignment"]
      515 GETIMPORT                        R79 K129 [Enum.VerticalAlignment.Bottom]
      517 SETTABLEKS                       R79 R78 K120 ["VerticalAlignment"]
      519 GETIMPORT                        R79 K131 [Enum.SortOrder.LayoutOrder]
      521 SETTABLEKS                       R79 R78 K121 ["SortOrder"]
      523 GETIMPORT                        R79 K134 [UDim.new]
      525 LOADN                            R80 0
      526 LOADN                            R81 0
      527 CALL                             R79 2 1
      528 SETTABLEKS                       R79 R78 K122 ["Padding"]
      530 CALL                             R76 2 1
      531 SETTABLEKS                       R76 R75 K110 ["UIListLayout"]
      533 MOVE                             R76 R20
      534 JUMPIFNOT                        R76 ; [+9]
      535 GETUPVAL                         R76 13
      536 GETTABLEKS                       R76 R76 K102 ["createElement"]
      538 GETUPVAL                         R77 14
      539 GETTABLEKS                       R78 R0 K135 ["getMessageBoxProps"]
      541 MOVE                             R79 R19
      542 CALL                             R78 1 -1
      543 CALL                             R76 -1 1
      544 SETTABLEKS                       R76 R75 K111 ["AssetConfigMessageBox"]
      546 GETUPVAL                         R77 2
      547 CALL                             R77 0 1
      548 JUMPIFNOT                        R77 ; [+2]
      549 LOADNIL                          R76
      550 JUMP                             ; [+28]
      551 MOVE                             R76 R21
      552 JUMPIFNOT                        R76 ; [+26]
      553 GETUPVAL                         R76 13
      554 GETTABLEKS                       R76 R76 K102 ["createElement"]
      556 GETUPVAL                         R77 15
      557 DUPTABLE                         R78 K144 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      558 SETTABLEKS                       R68 R78 K136 ["AcceptText"]
      560 SETTABLEKS                       R60 R78 K137 ["CancelText"]
      562 SETTABLEKS                       R67 R78 K138 ["Description"]
      564 SETTABLEKS                       R21 R78 K139 ["Enabled"]
      566 SETTABLEKS                       R65 R78 K140 ["Heading"]
      568 GETTABLEKS                       R79 R0 K145 ["onAssetPublishPayAndConfirmAccepted"]
      570 SETTABLEKS                       R79 R78 K141 ["OnAccepted"]
      572 GETTABLEKS                       R79 R0 K146 ["onAssetPublishPayAndConfirmCanceled"]
      574 SETTABLEKS                       R79 R78 K142 ["OnCanceled"]
      576 SETTABLEKS                       R64 R78 K143 ["Title"]
      578 CALL                             R76 2 1
      579 SETTABLEKS                       R76 R75 K112 ["RobuxSpendConfirmationMessageBox"]
      581 GETUPVAL                         R77 2
      582 CALL                             R77 0 1
      583 JUMPIFNOT                        R77 ; [+24]
      584 GETTABLEKS                       R76 R1 K59 ["isAvatarItemDialogFlowEnabled"]
      586 JUMPIFNOT                        R76 ; [+22]
      587 GETUPVAL                         R76 13
      588 GETTABLEKS                       R76 R76 K102 ["createElement"]
      590 GETUPVAL                         R77 16
      591 DUPTABLE                         R78 K150 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      592 NEWCLOSURE                       R79 P0
      593 CAPTURE                          VAL R0
      594 SETTABLEKS                       R79 R78 K147 ["OnUploadConfirmed"]
      596 GETTABLEKS                       R80 R1 K96 ["uploadFee"]
      598 ORK                              R79 R80 K7 [""]
      599 SETTABLEKS                       R79 R78 K148 ["UploadFee"]
      601 GETTABLEKS                       R80 R2 K8 ["name"]
      603 ORK                              R79 R80 K7 [""]
      604 SETTABLEKS                       R79 R78 K149 ["ItemName"]
      606 CALL                             R76 2 1
      607 JUMP                             ; [+1]
      608 LOADNIL                          R76
      609 SETTABLEKS                       R76 R75 K113 ["AvatarItemMessageBox"]
      611 JUMPIFNOT                        R69 ; [+30]
      612 GETUPVAL                         R76 13
      613 GETTABLEKS                       R76 R76 K102 ["createElement"]
      615 GETUPVAL                         R77 17
      616 DUPTABLE                         R78 K152 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      617 SETTABLEKS                       R59 R78 K136 ["AcceptText"]
      619 SETTABLEKS                       R60 R78 K137 ["CancelText"]
      621 LOADNIL                          R79
      622 SETTABLEKS                       R79 R78 K151 ["ConfirmationKey"]
      624 SETTABLEKS                       R61 R78 K138 ["Description"]
      626 SETTABLEKS                       R69 R78 K139 ["Enabled"]
      628 SETTABLEKS                       R62 R78 K140 ["Heading"]
      630 GETTABLEKS                       R79 R0 K153 ["onAssetPublishDialogAccepted"]
      632 SETTABLEKS                       R79 R78 K141 ["OnAccepted"]
      634 GETTABLEKS                       R79 R0 K154 ["onAssetPublishDialogCanceled"]
      636 SETTABLEKS                       R79 R78 K142 ["OnCanceled"]
      638 SETTABLEKS                       R63 R78 K143 ["Title"]
      640 CALL                             R76 2 1
      641 JUMP                             ; [+1]
      642 LOADNIL                          R76
      643 SETTABLEKS                       R76 R75 K114 ["AssetConfigMakeAssetPublicMessageBox"]
      645 GETUPVAL                         R76 13
      646 GETTABLEKS                       R76 R76 K102 ["createElement"]
      648 LOADK                            R77 K103 ["Frame"]
      649 DUPTABLE                         R78 K155 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      650 GETIMPORT                        R79 K157 [UDim2.new]
      652 LOADN                            R80 1
      653 LOADN                            R81 0
      654 LOADN                            R82 1
      655 LOADN                            R83 194
      656 CALL                             R79 4 1
      657 SETTABLEKS                       R79 R78 K3 ["Size"]
      659 LOADN                            R79 1
      660 SETTABLEKS                       R79 R78 K104 ["BackgroundTransparency"]
      662 LOADN                            R79 1
      663 SETTABLEKS                       R79 R78 K130 ["LayoutOrder"]
      665 DUPTABLE                         R79 K167 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      666 GETUPVAL                         R80 13
      667 GETTABLEKS                       R80 R80 K102 ["createElement"]
      669 LOADK                            R81 K110 ["UIListLayout"]
      670 DUPTABLE                         R82 K123 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      671 GETIMPORT                        R83 K169 [Enum.FillDirection.Horizontal]
      673 SETTABLEKS                       R83 R82 K118 ["FillDirection"]
      675 GETIMPORT                        R83 K127 [Enum.HorizontalAlignment.Left]
      677 SETTABLEKS                       R83 R82 K119 ["HorizontalAlignment"]
      679 GETIMPORT                        R83 K171 [Enum.VerticalAlignment.Top]
      681 SETTABLEKS                       R83 R82 K120 ["VerticalAlignment"]
      683 GETIMPORT                        R83 K131 [Enum.SortOrder.LayoutOrder]
      685 SETTABLEKS                       R83 R82 K121 ["SortOrder"]
      687 GETIMPORT                        R83 K134 [UDim.new]
      689 LOADN                            R84 0
      690 LOADN                            R85 0
      691 CALL                             R83 2 1
      692 SETTABLEKS                       R83 R82 K122 ["Padding"]
      694 CALL                             R80 2 1
      695 SETTABLEKS                       R80 R79 K110 ["UIListLayout"]
      697 GETUPVAL                         R80 13
      698 GETTABLEKS                       R80 R80 K102 ["createElement"]
      700 GETUPVAL                         R81 17
      701 DUPTABLE                         R82 K152 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      702 SETTABLEKS                       R52 R82 K136 ["AcceptText"]
      704 SETTABLEKS                       R53 R82 K137 ["CancelText"]
      706 SETTABLEKS                       R58 R82 K151 ["ConfirmationKey"]
      708 SETTABLEKS                       R55 R82 K138 ["Description"]
      710 SETTABLEKS                       R57 R82 K139 ["Enabled"]
      712 SETTABLEKS                       R54 R82 K140 ["Heading"]
      714 GETTABLEKS                       R83 R0 K172 ["onDialogAccepted"]
      716 SETTABLEKS                       R83 R82 K141 ["OnAccepted"]
      718 GETTABLEKS                       R83 R0 K173 ["onDialogCanceled"]
      720 SETTABLEKS                       R83 R82 K142 ["OnCanceled"]
      722 SETTABLEKS                       R56 R82 K143 ["Title"]
      724 CALL                             R80 2 1
      725 SETTABLEKS                       R80 R79 K158 ["SharingConfirmationDialog"]
      727 GETUPVAL                         R80 13
      728 GETTABLEKS                       R80 R80 K102 ["createElement"]
      730 GETUPVAL                         R81 18
      731 DUPTABLE                         R82 K187 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor", "animationTypeThumbnailUri"}]
      732 LOADN                            R83 240
      733 SETTABLEKS                       R83 R82 K174 ["TotalWidth"]
      735 SETTABLEKS                       R39 R82 K175 ["TabItems"]
      737 SETTABLEKS                       R6 R82 K176 ["CurrentTab"]
      739 SETTABLEKS                       R37 R82 K177 ["PreviewType"]
      741 SETTABLEKS                       R25 R82 K178 ["ScreenFlowType"]
      743 SETTABLEKS                       R16 R82 K179 ["AssetStatus"]
      745 SETTABLEKS                       R7 R82 K180 ["AssetId"]
      747 SETTABLEKS                       R22 R82 K181 ["IconFile"]
      749 SETTABLEKS                       R24 R82 K182 ["AssetTypeEnum"]
      751 SETTABLEKS                       R29 R82 K183 ["AllowedBundleTypeSettings"]
      753 GETTABLEKS                       R83 R0 K188 ["onTabSelect"]
      755 SETTABLEKS                       R83 R82 K184 ["OnTabSelect"]
      757 GETTABLEKS                       R83 R0 K189 ["chooseThumbnail"]
      759 SETTABLEKS                       R83 R82 K185 ["ChooseThumbnail"]
      761 LOADN                            R83 1
      762 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
      764 SETTABLEKS                       R24 R82 K28 ["assetTypeEnum"]
      766 GETUPVAL                         R84 9
      767 CALL                             R84 0 1
      768 JUMPIFNOT                        R84 ; [+4]
      769 JUMPIFNOT                        R70 ; [+3]
      770 GETTABLEKS                       R83 R2 K61 ["selectedColor"]
      772 JUMP                             ; [+1]
      773 LOADNIL                          R83
      774 SETTABLEKS                       R83 R82 K61 ["selectedColor"]
      776 GETUPVAL                         R84 5
      777 CALL                             R84 0 1
      778 JUMPIFNOT                        R84 ; [+2]
      779 MOVE                             R83 R38
      780 JUMP                             ; [+1]
      781 LOADNIL                          R83
      782 SETTABLEKS                       R83 R82 K186 ["animationTypeThumbnailUri"]
      784 CALL                             R80 2 1
      785 SETTABLEKS                       R80 R79 K159 ["Preview"]
      787 GETUPVAL                         R80 13
      788 GETTABLEKS                       R80 R80 K102 ["createElement"]
      790 LOADK                            R81 K103 ["Frame"]
      791 DUPTABLE                         R82 K190 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      792 GETIMPORT                        R83 K157 [UDim2.new]
      794 LOADN                            R84 0
      795 LOADN                            R85 2
      796 LOADN                            R86 1
      797 LOADN                            R87 0
      798 CALL                             R83 4 1
      799 SETTABLEKS                       R83 R82 K3 ["Size"]
      801 LOADN                            R83 0
      802 SETTABLEKS                       R83 R82 K104 ["BackgroundTransparency"]
      804 GETTABLEKS                       R83 R3 K191 ["divider"]
      806 GETTABLEKS                       R83 R83 K192 ["verticalLineColor"]
      808 SETTABLEKS                       R83 R82 K105 ["BackgroundColor3"]
      810 LOADN                            R83 0
      811 SETTABLEKS                       R83 R82 K106 ["BorderSizePixel"]
      813 LOADN                            R83 2
      814 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
      816 CALL                             R80 2 1
      817 SETTABLEKS                       R80 R79 K160 ["VerticalLine"]
      819 MOVE                             R80 R40
      820 JUMPIFNOT                        R80 ; [+50]
      821 GETUPVAL                         R80 13
      822 GETTABLEKS                       R80 R80 K102 ["createElement"]
      824 GETUPVAL                         R81 19
      825 DUPTABLE                         R82 K193 [{"LayoutOrder", "Size"}]
      826 LOADN                            R83 3
      827 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
      829 GETIMPORT                        R83 K157 [UDim2.new]
      831 LOADN                            R84 1
      832 LOADN                            R85 16
      833 LOADN                            R86 1
      834 LOADN                            R87 0
      835 CALL                             R83 4 1
      836 SETTABLEKS                       R83 R82 K3 ["Size"]
      838 DUPTABLE                         R83 K195 [{"LoadingIndicator"}]
      839 GETUPVAL                         R84 13
      840 GETTABLEKS                       R84 R84 K102 ["createElement"]
      842 GETUPVAL                         R85 20
      843 DUPTABLE                         R86 K198 [{"Size", "AnchorPoint", "Position"}]
      844 GETIMPORT                        R87 K157 [UDim2.new]
      846 LOADN                            R88 0
      847 LOADN                            R89 100
      848 LOADN                            R90 0
      849 LOADN                            R91 100
      850 CALL                             R87 4 1
      851 SETTABLEKS                       R87 R86 K3 ["Size"]
      853 GETIMPORT                        R87 K200 [Vector2.new]
      855 LOADK                            R88 K201 [0.5]
      856 LOADK                            R89 K201 [0.5]
      857 CALL                             R87 2 1
      858 SETTABLEKS                       R87 R86 K196 ["AnchorPoint"]
      860 GETIMPORT                        R87 K203 [UDim2.fromScale]
      862 LOADK                            R88 K201 [0.5]
      863 LOADK                            R89 K201 [0.5]
      864 CALL                             R87 2 1
      865 SETTABLEKS                       R87 R86 K197 ["Position"]
      867 CALL                             R84 2 1
      868 SETTABLEKS                       R84 R83 K194 ["LoadingIndicator"]
      870 CALL                             R80 3 1
      871 SETTABLEKS                       R80 R79 K161 ["LoadingIndicatorWrapper"]
      873 NOT                              R80 R40
      874 JUMPIFNOT                        R80 ; [+266]
      875 GETUPVAL                         R80 1
      876 MOVE                             R82 R6
      877 NAMECALL                         R80 R80 K204 ["isGeneral"]
      879 CALL                             R80 2 1
      880 JUMPIFNOT                        R80 ; [+260]
      881 GETUPVAL                         R80 13
      882 GETTABLEKS                       R80 R80 K102 ["createElement"]
      884 GETUPVAL                         R81 21
      885 NEWTABLE                         R82 64 0
      887 GETIMPORT                        R83 K157 [UDim2.new]
      889 LOADN                            R84 1
      890 LOADN                            R85 16
      891 LOADN                            R86 1
      892 LOADN                            R87 0
      893 CALL                             R83 4 1
      894 SETTABLEKS                       R83 R82 K3 ["Size"]
      896 SETTABLEKS                       R49 R82 K205 ["allowSelectPrivate"]
      898 SETTABLEKS                       R7 R82 K6 ["assetId"]
      900 SETTABLEKS                       R8 R82 K8 ["name"]
      902 SETTABLEKS                       R9 R82 K9 ["description"]
      904 SETTABLEKS                       R10 R82 K13 ["owner"]
      906 GETUPVAL                         R84 8
      907 CALL                             R84 0 1
      908 JUMPIFNOT                        R84 ; [+2]
      909 MOVE                             R83 R42
      910 JUMP                             ; [+1]
      911 LOADNIL                          R83
      912 SETTABLEKS                       R83 R82 K55 ["canUploadWithUgcRestrictions"]
      914 GETUPVAL                         R84 8
      915 CALL                             R84 0 1
      916 JUMPIFNOT                        R84 ; [+2]
      917 MOVE                             R83 R43
      918 JUMP                             ; [+1]
      919 LOADNIL                          R83
      920 SETTABLEKS                       R83 R82 K56 ["canUploadWithUgcRestrictionsDenyReason"]
      922 SETTABLEKS                       R11 R82 K14 ["allowCopy"]
      924 SETTABLEKS                       R12 R82 K15 ["copyOn"]
      926 SETTABLEKS                       R13 R82 K16 ["allowComment"]
      928 SETTABLEKS                       R14 R82 K17 ["commentOn"]
      930 SETTABLEKS                       R15 R82 K18 ["deleteLocal"]
      932 SETTABLEKS                       R17 R82 K20 ["isAssetPublic"]
      934 SETTABLEKS                       R18 R82 K21 ["publishingRestriction"]
      936 SETTABLEKS                       R24 R82 K28 ["assetTypeEnum"]
      938 GETTABLEKS                       R83 R0 K206 ["onNameChange"]
      940 SETTABLEKS                       R83 R82 K206 ["onNameChange"]
      942 GETTABLEKS                       R83 R0 K207 ["onDescChange"]
      944 SETTABLEKS                       R83 R82 K207 ["onDescChange"]
      946 GETUPVAL                         R84 8
      947 CALL                             R84 0 1
      948 JUMPIFNOT                        R84 ; [+3]
      949 GETTABLEKS                       R83 R0 K208 ["onCategoryChange"]
      951 JUMP                             ; [+1]
      952 LOADNIL                          R83
      953 SETTABLEKS                       R83 R82 K208 ["onCategoryChange"]
      955 GETTABLEKS                       R83 R1 K209 ["groupId"]
      957 SETTABLEKS                       R83 R82 K210 ["preselectedGroupId"]
      959 GETTABLEKS                       R83 R0 K211 ["onAccessChange"]
      961 SETTABLEKS                       R83 R82 K212 ["onOwnerSelected"]
      963 GETTABLEKS                       R83 R0 K213 ["onSharingChanged"]
      965 SETTABLEKS                       R83 R82 K213 ["onSharingChanged"]
      967 GETTABLEKS                       R83 R0 K214 ["onAdditionalImagesChanged"]
      969 SETTABLEKS                       R83 R82 K214 ["onAdditionalImagesChanged"]
      971 GETTABLEKS                       R83 R0 K215 ["toggleCopy"]
      973 SETTABLEKS                       R83 R82 K215 ["toggleCopy"]
      975 GETTABLEKS                       R83 R0 K216 ["toggleComment"]
      977 SETTABLEKS                       R83 R82 K216 ["toggleComment"]
      979 GETTABLEKS                       R83 R0 K217 ["toggleDeleteLocal"]
      981 SETTABLEKS                       R83 R82 K217 ["toggleDeleteLocal"]
      983 GETUPVAL                         R84 5
      984 CALL                             R84 0 1
      985 JUMPIFNOT                        R84 ; [+3]
      986 GETTABLEKS                       R83 R0 K218 ["onAnimationSelectionChanged"]
      988 JUMP                             ; [+1]
      989 LOADNIL                          R83
      990 SETTABLEKS                       R83 R82 K218 ["onAnimationSelectionChanged"]
      992 GETUPVAL                         R84 5
      993 CALL                             R84 0 1
      994 JUMPIFNOT                        R84 ; [+3]
      995 GETTABLEKS                       R83 R0 K219 ["onanimationSectionValidityChanged"]
      997 JUMP                             ; [+1]
      998 LOADNIL                          R83
      999 SETTABLEKS                       R83 R82 K219 ["onanimationSectionValidityChanged"]
     1001 GETTABLEKS                       R83 R2 K220 ["dataSharingEnabled"]
     1003 SETTABLEKS                       R83 R82 K220 ["dataSharingEnabled"]
     1005 GETTABLEKS                       R83 R2 K221 ["dataSharingToggled"]
     1007 SETTABLEKS                       R83 R82 K221 ["dataSharingToggled"]
     1009 GETTABLEKS                       R83 R0 K222 ["onDataConsentToggleClick"]
     1011 SETTABLEKS                       R83 R82 K222 ["onDataConsentToggleClick"]
     1013 SETTABLEKS                       R32 R82 K223 ["displayOwnership"]
     1015 SETTABLEKS                       R33 R82 K224 ["displayCopy"]
     1017 SETTABLEKS                       R35 R82 K225 ["displayComment"]
     1019 SETTABLEKS                       R36 R82 K226 ["displayAssetType"]
     1021 SETTABLEKS                       R50 R82 K227 ["displaySharing"]
     1023 SETTABLEKS                       R34 R82 K228 ["displayAssetTypeSelection"]
     1025 JUMPIFNOT                        R48 ; [+2]
     1026 MOVE                             R83 R27
     1027 JUMP                             ; [+1]
     1028 LOADNIL                          R83
     1029 SETTABLEKS                       R83 R82 K30 ["allowedAssetTypesForRelease"]
     1031 SETTABLEKS                       R28 R82 K31 ["allowedAssetTypesForFree"]
     1033 JUMPIFNOT                        R48 ; [+2]
     1034 MOVE                             R83 R16
     1035 JUMP                             ; [+1]
     1036 LOADNIL                          R83
     1037 SETTABLEKS                       R83 R82 K229 ["newAssetStatus"]
     1039 JUMPIFNOT                        R48 ; [+2]
     1040 MOVE                             R83 R30
     1041 JUMP                             ; [+1]
     1042 LOADNIL                          R83
     1043 SETTABLEKS                       R83 R82 K230 ["currentAssetStatus"]
     1045 JUMPIFNOT                        R48 ; [+3]
     1046 GETTABLEKS                       R83 R0 K231 ["onStatusChange"]
     1048 JUMP                             ; [+1]
     1049 LOADNIL                          R83
     1050 SETTABLEKS                       R83 R82 K231 ["onStatusChange"]
     1052 JUMPIFNOT                        R48 ; [+3]
     1053 GETTABLEKS                       R83 R0 K232 ["onPriceChange"]
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R83
     1057 SETTABLEKS                       R83 R82 K232 ["onPriceChange"]
     1059 JUMPIFNOT                        R48 ; [+2]
     1060 MOVE                             R83 R31
     1061 JUMP                             ; [+1]
     1062 LOADNIL                          R83
     1063 SETTABLEKS                       R83 R82 K35 ["price"]
     1065 LOADNIL                          R83
     1066 SETTABLEKS                       R83 R82 K233 ["minPrice"]
     1068 LOADNIL                          R83
     1069 SETTABLEKS                       R83 R82 K234 ["maxPrice"]
     1071 LOADNIL                          R83
     1072 SETTABLEKS                       R83 R82 K235 ["feeRate"]
     1074 LOADNIL                          R83
     1075 SETTABLEKS                       R83 R82 K236 ["isPriceValid"]
     1077 LOADN                            R83 3
     1078 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
     1080 GETTABLEKS                       R83 R1 K47 ["instances"]
     1082 SETTABLEKS                       R83 R82 K47 ["instances"]
     1084 GETUPVAL                         R84 9
     1085 CALL                             R84 0 1
     1086 JUMPIFNOT                        R84 ; [+2]
     1087 MOVE                             R83 R70
     1088 JUMP                             ; [+1]
     1089 LOADNIL                          R83
     1090 SETTABLEKS                       R83 R82 K237 ["showColorPicker"]
     1092 GETUPVAL                         R84 9
     1093 CALL                             R84 0 1
     1094 JUMPIFNOT                        R84 ; [+4]
     1095 JUMPIFNOT                        R70 ; [+3]
     1096 GETTABLEKS                       R83 R2 K238 ["showColorPickerRequiredError"]
     1098 JUMP                             ; [+1]
     1099 LOADNIL                          R83
     1100 SETTABLEKS                       R83 R82 K238 ["showColorPickerRequiredError"]
     1102 GETUPVAL                         R84 22
     1103 CALL                             R84 0 1
     1104 JUMPIFNOT                        R84 ; [+3]
     1105 GETTABLEKS                       R83 R2 K239 ["showNameRequiredError"]
     1107 JUMP                             ; [+1]
     1108 LOADNIL                          R83
     1109 SETTABLEKS                       R83 R82 K239 ["showNameRequiredError"]
     1111 GETUPVAL                         R84 22
     1112 CALL                             R84 0 1
     1113 JUMPIFNOT                        R84 ; [+3]
     1114 GETTABLEKS                       R83 R2 K240 ["showDescriptionRequiredError"]
     1116 JUMP                             ; [+1]
     1117 LOADNIL                          R83
     1118 SETTABLEKS                       R83 R82 K240 ["showDescriptionRequiredError"]
     1120 GETUPVAL                         R84 9
     1121 CALL                             R84 0 1
     1122 JUMPIFNOT                        R84 ; [+4]
     1123 JUMPIFNOT                        R70 ; [+3]
     1124 GETTABLEKS                       R83 R2 K61 ["selectedColor"]
     1126 JUMP                             ; [+1]
     1127 LOADNIL                          R83
     1128 SETTABLEKS                       R83 R82 K61 ["selectedColor"]
     1130 GETUPVAL                         R84 9
     1131 CALL                             R84 0 1
     1132 JUMPIFNOT                        R84 ; [+4]
     1133 JUMPIFNOT                        R70 ; [+3]
     1134 GETTABLEKS                       R83 R0 K241 ["onSelectedColorChange"]
     1136 JUMP                             ; [+1]
     1137 LOADNIL                          R83
     1138 SETTABLEKS                       R83 R82 K242 ["setSelectedColor"]
     1140 CALL                             R80 2 1
     1141 SETTABLEKS                       R80 R79 K162 ["PublishAsset"]
     1143 GETUPVAL                         R80 1
     1144 MOVE                             R82 R6
     1145 NAMECALL                         R80 R80 K243 ["isVersions"]
     1147 CALL                             R80 2 1
     1148 JUMPIFNOT                        R80 ; [+78]
     1149 GETUPVAL                         R80 13
     1150 GETTABLEKS                       R80 R80 K102 ["createElement"]
     1152 GETUPVAL                         R81 23
     1153 DUPTABLE                         R82 K257 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1154 GETIMPORT                        R83 K157 [UDim2.new]
     1156 LOADN                            R84 1
     1157 LOADN                            R85 16
     1158 LOADN                            R86 1
     1159 LOADN                            R87 236
     1160 CALL                             R83 4 1
     1161 SETTABLEKS                       R83 R82 K3 ["Size"]
     1163 SETTABLEKS                       R7 R82 K6 ["assetId"]
     1165 LOADN                            R83 3
     1166 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
     1168 GETTABLEKS                       R83 R2 K258 ["versionsCurrentItem"]
     1170 SETTABLEKS                       R83 R82 K244 ["currentItem"]
     1172 GETTABLEKS                       R83 R2 K259 ["versionsRootItems"]
     1174 SETTABLEKS                       R83 R82 K245 ["rootItems"]
     1176 GETTABLEKS                       R83 R2 K260 ["versionsOpenInputKey"]
     1178 SETTABLEKS                       R83 R82 K246 ["openInputKey"]
     1180 GETTABLEKS                       R83 R2 K261 ["versionsPreviousInput"]
     1182 SETTABLEKS                       R83 R82 K247 ["previousInput"]
     1184 GETTABLEKS                       R83 R2 K262 ["versionsPageIndex"]
     1186 SETTABLEKS                       R83 R82 K248 ["pageIndex"]
     1188 GETTABLEKS                       R83 R2 K263 ["versionsPageRootItems"]
     1190 SETTABLEKS                       R83 R82 K249 ["pageRootItems"]
     1192 GETUPVAL                         R84 24
     1193 CALL                             R84 0 1
     1194 JUMPIFNOT                        R84 ; [+3]
     1195 GETTABLEKS                       R83 R1 K264 ["versionHistoryWithDescriptions"]
     1197 JUMP                             ; [+2]
     1198 GETTABLEKS                       R83 R1 K250 ["versionHistory"]
     1200 SETTABLEKS                       R83 R82 K250 ["versionHistory"]
     1202 GETTABLEKS                       R83 R0 K265 ["versionsOnDescClicked"]
     1204 SETTABLEKS                       R83 R82 K251 ["onDescClicked"]
     1206 GETTABLEKS                       R83 R0 K266 ["versionsCloseInput"]
     1208 SETTABLEKS                       R83 R82 K252 ["closeInput"]
     1210 GETTABLEKS                       R83 R0 K253 ["setVersionError"]
     1212 SETTABLEKS                       R83 R82 K253 ["setVersionError"]
     1214 GETTABLEKS                       R83 R0 K267 ["versionsSetPreviousInput"]
     1216 SETTABLEKS                       R83 R82 K254 ["setPreviousInput"]
     1218 GETTABLEKS                       R83 R0 K268 ["versionsOnPageChange"]
     1220 SETTABLEKS                       R83 R82 K255 ["onPageChange"]
     1222 GETTABLEKS                       R83 R0 K269 ["versionsSetStates"]
     1224 SETTABLEKS                       R83 R82 K256 ["setStates"]
     1226 CALL                             R80 2 1
     1227 SETTABLEKS                       R80 R79 K163 ["Versions"]
     1229 GETUPVAL                         R81 1
     1230 MOVE                             R83 R6
     1231 NAMECALL                         R81 R81 K270 ["isSales"]
     1233 CALL                             R81 2 1
     1234 JUMPIFNOT                        R81 ; [+21]
     1235 GETUPVAL                         R80 13
     1236 GETTABLEKS                       R80 R80 K102 ["createElement"]
     1238 GETUPVAL                         R81 25
     1239 DUPTABLE                         R82 K273 [{"size", "assetId", "layoutOrder"}]
     1240 GETIMPORT                        R83 K157 [UDim2.new]
     1242 LOADN                            R84 1
     1243 LOADN                            R85 16
     1244 LOADN                            R86 1
     1245 LOADN                            R87 0
     1246 CALL                             R83 4 1
     1247 SETTABLEKS                       R83 R82 K271 ["size"]
     1249 SETTABLEKS                       R7 R82 K6 ["assetId"]
     1251 LOADN                            R83 3
     1252 SETTABLEKS                       R83 R82 K272 ["layoutOrder"]
     1254 CALL                             R80 2 1
     1255 JUMP                             ; [+1]
     1256 LOADNIL                          R80
     1257 SETTABLEKS                       R80 R79 K164 ["Sales"]
     1259 GETUPVAL                         R80 1
     1260 MOVE                             R82 R6
     1261 NAMECALL                         R80 R80 K274 ["isOverride"]
     1263 CALL                             R80 2 1
     1264 JUMPIFNOT                        R80 ; [+28]
     1265 GETUPVAL                         R80 13
     1266 GETTABLEKS                       R80 R80 K102 ["createElement"]
     1268 GETUPVAL                         R81 26
     1269 DUPTABLE                         R82 K276 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1270 GETIMPORT                        R83 K157 [UDim2.new]
     1272 LOADN                            R84 1
     1273 LOADN                            R85 16
     1274 LOADN                            R86 1
     1275 LOADN                            R87 0
     1276 CALL                             R83 4 1
     1277 SETTABLEKS                       R83 R82 K3 ["Size"]
     1279 SETTABLEKS                       R24 R82 K28 ["assetTypeEnum"]
     1281 GETTABLEKS                       R83 R1 K47 ["instances"]
     1283 SETTABLEKS                       R83 R82 K47 ["instances"]
     1285 GETTABLEKS                       R83 R0 K275 ["onOverrideAssetSelected"]
     1287 SETTABLEKS                       R83 R82 K275 ["onOverrideAssetSelected"]
     1289 LOADN                            R83 3
     1290 SETTABLEKS                       R83 R82 K130 ["LayoutOrder"]
     1292 CALL                             R80 2 1
     1293 SETTABLEKS                       R80 R79 K165 ["OverrideAsset"]
     1295 GETUPVAL                         R80 1
     1296 MOVE                             R82 R6
     1297 NAMECALL                         R80 R80 K277 ["isPermissions"]
     1299 CALL                             R80 2 1
     1300 JUMPIFNOT                        R80 ; [+33]
     1301 GETUPVAL                         R80 13
     1302 GETTABLEKS                       R80 R80 K102 ["createElement"]
     1304 GETUPVAL                         R81 27
     1305 GETTABLEKS                       R81 R81 K278 ["AsyncCache"]
     1307 NEWTABLE                         R82 0 0
     1309 NEWTABLE                         R83 0 1
     1311 GETUPVAL                         R84 13
     1312 GETTABLEKS                       R84 R84 K102 ["createElement"]
     1314 GETUPVAL                         R85 28
     1315 DUPTABLE                         R86 K279 [{"Size", "AssetId", "LayoutOrder"}]
     1316 GETIMPORT                        R87 K157 [UDim2.new]
     1318 LOADN                            R88 1
     1319 MOVE                             R89 R44
     1320 LOADN                            R90 1
     1321 LOADN                            R91 0
     1322 CALL                             R87 4 1
     1323 SETTABLEKS                       R87 R86 K3 ["Size"]
     1325 SETTABLEKS                       R7 R86 K180 ["AssetId"]
     1327 LOADN                            R87 3
     1328 SETTABLEKS                       R87 R86 K130 ["LayoutOrder"]
     1330 CALL                             R84 2 -1
     1331 SETLIST                          R83 R84 -1 [1]
     1333 CALL                             R80 3 1
     1334 SETTABLEKS                       R80 R79 K166 ["PackagePermissions"]
     1336 CALL                             R76 3 1
     1337 SETTABLEKS                       R76 R75 K115 ["MainPage"]
     1339 GETUPVAL                         R76 13
     1340 GETTABLEKS                       R76 R76 K102 ["createElement"]
     1342 GETUPVAL                         R77 29
     1343 DUPTABLE                         R78 K284 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1344 GETTABLEKS                       R79 R2 K285 ["overrideAssetId"]
     1346 SETTABLEKS                       R79 R78 K180 ["AssetId"]
     1348 SETTABLEKS                       R41 R78 K280 ["CanSave"]
     1350 LOADN                            R79 2
     1351 SETTABLEKS                       R79 R78 K130 ["LayoutOrder"]
     1353 GETIMPORT                        R79 K157 [UDim2.new]
     1355 LOADN                            R80 1
     1356 LOADN                            R81 0
     1357 LOADN                            R82 0
     1358 LOADN                            R83 62
     1359 CALL                             R79 4 1
     1360 SETTABLEKS                       R79 R78 K3 ["Size"]
     1362 GETTABLEKS                       R79 R0 K286 ["tryCancelWithYield"]
     1364 SETTABLEKS                       R79 R78 K281 ["TryCancel"]
     1366 GETTABLEKS                       R79 R0 K287 ["tryPublishWithConfirmDialog"]
     1368 SETTABLEKS                       R79 R78 K282 ["TryPublish"]
     1370 GETUPVAL                         R80 9
     1371 CALL                             R80 0 1
     1372 JUMPIFNOT                        R80 ; [+10]
     1373 JUMPIF                           R41 ; [+9]
     1374 NEWCLOSURE                       R79 P1
     1375 CAPTURE                          VAL R0
     1376 CAPTURE                          VAL R71
     1377 CAPTURE                          UPVAL U22
     1378 CAPTURE                          VAL R8
     1379 CAPTURE                          VAL R9
     1380 CAPTURE                          UPVAL U3
     1381 CAPTURE                          VAL R24
     1382 JUMP                             ; [+1]
     1383 LOADNIL                          R79
     1384 SETTABLEKS                       R79 R78 K283 ["OnPublishButtonHover"]
     1386 CALL                             R76 2 1
     1387 SETTABLEKS                       R76 R75 K116 ["Footer"]
     1389 CALL                             R72 3 -1
     1390 RETURN                           R72 -1

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
      216 GETTABLEKS                       R36 R2 K47 ["AvatarAnimationStudioToolboxTextures"]
      218 CALL                             R35 1 1
      219 GETIMPORT                        R36 K15 [require]
      221 GETTABLEKS                       R37 R2 K48 ["Images"]
      223 CALL                             R36 1 1
      224 GETIMPORT                        R37 K15 [require]
      226 GETTABLEKS                       R38 R2 K49 ["AssetConfigConstants"]
      228 CALL                             R37 1 1
      229 GETIMPORT                        R38 K15 [require]
      231 GETTABLEKS                       R39 R2 K50 ["Constants"]
      233 CALL                             R38 1 1
      234 GETIMPORT                        R39 K15 [require]
      236 GETTABLEKS                       R40 R2 K51 ["ScreenSetup"]
      238 CALL                             R39 1 1
      239 GETIMPORT                        R40 K15 [require]
      241 GETTABLEKS                       R41 R2 K52 ["AssetConfigUtil"]
      243 CALL                             R40 1 1
      244 GETIMPORT                        R41 K15 [require]
      246 GETTABLEKS                       R42 R2 K53 ["fixUpPreValidation"]
      248 CALL                             R41 1 1
      249 GETIMPORT                        R42 K15 [require]
      251 GETTABLEKS                       R43 R2 K54 ["PublishUtil"]
      253 CALL                             R42 1 1
      254 GETIMPORT                        R43 K15 [require]
      256 GETTABLEKS                       R44 R2 K55 ["getAllowedAssetTypeEnums"]
      258 CALL                             R43 1 1
      259 GETIMPORT                        R44 K15 [require]
      261 GETTABLEKS                       R45 R2 K56 ["FiatUtil"]
      263 CALL                             R44 1 1
      264 LOADNIL                          R45
      265 JUMPIFNOT                        R5 ; [+6]
      266 GETIMPORT                        R46 K15 [require]
      268 GETTABLEKS                       R47 R2 K57 ["getIsIXPVariableEnabled"]
      270 CALL                             R46 1 1
      271 MOVE                             R45 R46
      272 GETIMPORT                        R46 K15 [require]
      274 GETTABLEKS                       R47 R14 K58 ["Framework"]
      276 CALL                             R46 1 1
      277 GETTABLEKS                       R47 R46 K8 ["Util"]
      279 GETTABLEKS                       R47 R47 K59 ["deepCopy"]
      281 GETTABLEKS                       R48 R46 K8 ["Util"]
      283 GETTABLEKS                       R48 R48 K60 ["deepEqual"]
      285 GETTABLEKS                       R49 R46 K61 ["Dash"]
      287 GETTABLEKS                       R50 R49 K62 ["slice"]
      289 GETIMPORT                        R51 K15 [require]
      291 GETTABLEKS                       R52 R1 K7 ["Src"]
      293 GETTABLEKS                       R52 R52 K63 ["Networking"]
      295 GETTABLEKS                       R52 R52 K64 ["Requests"]
      297 GETTABLEKS                       R52 R52 K65 ["MakeChangeRequest"]
      299 CALL                             R51 1 1
      300 GETTABLEKS                       R52 R1 K7 ["Src"]
      302 GETTABLEKS                       R52 R52 K66 ["Types"]
      304 GETIMPORT                        R53 K15 [require]
      306 GETTABLEKS                       R54 R52 K67 ["AssetMediaTypes"]
      308 CALL                             R53 1 1
      309 GETIMPORT                        R54 K15 [require]
      311 GETTABLEKS                       R55 R52 K68 ["AssetSubTypes"]
      313 CALL                             R54 1 1
      314 GETIMPORT                        R55 K15 [require]
      316 GETTABLEKS                       R56 R52 K69 ["ConfigTypes"]
      318 CALL                             R55 1 1
      319 GETTABLEKS                       R56 R1 K7 ["Src"]
      321 GETTABLEKS                       R56 R56 K63 ["Networking"]
      323 GETTABLEKS                       R56 R56 K64 ["Requests"]
      325 GETIMPORT                        R57 K15 [require]
      327 GETTABLEKS                       R58 R56 K70 ["GetUploadPermissionStatusRequest"]
      329 CALL                             R57 1 1
      330 GETIMPORT                        R58 K15 [require]
      332 GETTABLEKS                       R59 R56 K71 ["UploadCatalogItemRequest"]
      334 CALL                             R58 1 1
      335 GETIMPORT                        R59 K15 [require]
      337 GETTABLEKS                       R60 R56 K72 ["ConfigureCatalogItemRequest"]
      339 CALL                             R59 1 1
      340 GETIMPORT                        R60 K15 [require]
      342 GETTABLEKS                       R61 R56 K73 ["GetAssetDetailsRequest"]
      344 CALL                             R60 1 1
      345 GETIMPORT                        R61 K15 [require]
      347 GETTABLEKS                       R62 R56 K74 ["PostRevertVersionRequest"]
      349 CALL                             R61 1 1
      350 GETIMPORT                        R62 K15 [require]
      352 GETTABLEKS                       R63 R56 K75 ["PostVersionDescriptionRequest"]
      354 CALL                             R62 1 1
      355 GETIMPORT                        R63 K15 [require]
      357 GETTABLEKS                       R64 R56 K76 ["PatchAssetRequest"]
      359 CALL                             R63 1 1
      360 GETIMPORT                        R64 K15 [require]
      362 GETTABLEKS                       R65 R56 K77 ["PostUploadAssetRequest"]
      364 CALL                             R64 1 1
      365 GETIMPORT                        R65 K15 [require]
      367 GETTABLEKS                       R66 R56 K78 ["PostOverrideAssetRequest"]
      369 CALL                             R65 1 1
      370 GETIMPORT                        R66 K15 [require]
      372 GETTABLEKS                       R67 R56 K79 ["PostUploadAnimationRequest"]
      374 CALL                             R66 1 1
      375 GETIMPORT                        R67 K15 [require]
      377 GETTABLEKS                       R68 R56 K80 ["PostOverrideAnimationRequest"]
      379 CALL                             R67 1 1
      380 GETIMPORT                        R68 K15 [require]
      382 GETTABLEKS                       R69 R56 K81 ["GetIsVerifiedCreatorRequest"]
      384 CALL                             R68 1 1
      385 GETIMPORT                        R69 K15 [require]
      387 GETTABLEKS                       R70 R56 K82 ["PostPackageMetadataRequest"]
      389 CALL                             R69 1 1
      390 GETIMPORT                        R70 K15 [require]
      392 GETTABLEKS                       R71 R56 K83 ["GetPackageCollaboratorsRequest"]
      394 CALL                             R70 1 1
      395 GETIMPORT                        R71 K15 [require]
      397 GETTABLEKS                       R72 R56 K84 ["PutPackagePermissionsRequest"]
      399 CALL                             R71 1 1
      400 GETIMPORT                        R72 K15 [require]
      402 GETTABLEKS                       R73 R56 K85 ["PostAssetCheckPermissions"]
      404 CALL                             R72 1 1
      405 GETIMPORT                        R73 K15 [require]
      407 GETTABLEKS                       R74 R56 K86 ["GetMarketplaceInfoRequest"]
      409 CALL                             R73 1 1
      410 GETIMPORT                        R74 K15 [require]
      412 GETTABLEKS                       R75 R56 K87 ["GetItemUploadFeeRequest"]
      414 CALL                             R74 1 1
      415 GETIMPORT                        R75 K15 [require]
      417 GETTABLEKS                       R76 R56 K88 ["UGCBundleUploadRequest"]
      419 CALL                             R75 1 1
      420 GETIMPORT                        R76 K15 [require]
      422 GETTABLEKS                       R77 R56 K89 ["PatchMakeAssetPublicRequest"]
      424 CALL                             R76 1 1
      425 GETIMPORT                        R77 K15 [require]
      427 GETTABLEKS                       R78 R56 K90 ["GetAssetPermissionsRequest"]
      429 CALL                             R77 1 1
      430 GETIMPORT                        R78 K15 [require]
      432 GETTABLEKS                       R79 R56 K91 ["GetPublishingRequirementsRequest"]
      434 CALL                             R78 1 1
      435 GETIMPORT                        R79 K15 [require]
      437 GETTABLEKS                       R80 R56 K92 ["GetAssetMediaMetadataArrayRequest"]
      439 CALL                             R79 1 1
      440 GETIMPORT                        R80 K15 [require]
      442 GETTABLEKS                       R81 R56 K93 ["UGCAccessoryUploadRequest"]
      444 CALL                             R80 1 1
      445 GETIMPORT                        R81 K15 [require]
      447 GETTABLEKS                       R82 R56 K94 ["GetVersionHistoryRequest"]
      449 CALL                             R81 1 1
      450 GETIMPORT                        R82 K15 [require]
      452 GETTABLEKS                       R83 R56 K95 ["GetFiatProductRequest"]
      454 CALL                             R82 1 1
      455 GETIMPORT                        R83 K15 [require]
      457 GETTABLEKS                       R84 R56 K96 ["GetSellerStatusRequest"]
      459 CALL                             R83 1 1
      460 GETIMPORT                        R84 K15 [require]
      462 GETTABLEKS                       R85 R56 K97 ["GetDefaultBundleDataSharingRequest"]
      464 CALL                             R84 1 1
      465 GETIMPORT                        R85 K15 [require]
      467 GETTABLEKS                       R86 R1 K7 ["Src"]
      469 GETTABLEKS                       R86 R86 K98 ["Actions"]
      471 GETTABLEKS                       R86 R86 K99 ["ClearChange"]
      473 CALL                             R85 1 1
      474 GETIMPORT                        R86 K15 [require]
      476 GETTABLEKS                       R87 R1 K7 ["Src"]
      478 GETTABLEKS                       R87 R87 K98 ["Actions"]
      480 GETTABLEKS                       R87 R87 K100 ["SetAssetConfigTab"]
      482 CALL                             R86 1 1
      483 GETIMPORT                        R87 K15 [require]
      485 GETTABLEKS                       R88 R1 K7 ["Src"]
      487 GETTABLEKS                       R88 R88 K98 ["Actions"]
      489 GETTABLEKS                       R88 R88 K101 ["UpdateAssetConfigStore"]
      491 CALL                             R87 1 1
      492 GETIMPORT                        R88 K15 [require]
      494 GETTABLEKS                       R89 R1 K7 ["Src"]
      496 GETTABLEKS                       R89 R89 K98 ["Actions"]
      498 GETTABLEKS                       R89 R89 K102 ["SetDescendantPermissions"]
      500 CALL                             R88 1 1
      501 GETIMPORT                        R89 K15 [require]
      503 GETTABLEKS                       R90 R1 K7 ["Src"]
      505 GETTABLEKS                       R90 R90 K98 ["Actions"]
      507 GETTABLEKS                       R90 R90 K103 ["UploadResult"]
      509 CALL                             R89 1 1
      510 GETIMPORT                        R90 K15 [require]
      512 GETTABLEKS                       R91 R1 K7 ["Src"]
      514 GETTABLEKS                       R91 R91 K98 ["Actions"]
      516 GETTABLEKS                       R91 R91 K104 ["ValidateAnimationResult"]
      518 CALL                             R90 1 1
      519 GETIMPORT                        R91 K15 [require]
      521 GETTABLEKS                       R92 R1 K7 ["Src"]
      523 GETTABLEKS                       R92 R92 K105 ["Thunks"]
      525 GETTABLEKS                       R92 R92 K106 ["GetGroupMetadata"]
      527 CALL                             R91 1 1
      528 GETIMPORT                        R92 K15 [require]
      530 GETTABLEKS                       R93 R1 K7 ["Src"]
      532 GETTABLEKS                       R93 R93 K105 ["Thunks"]
      534 GETTABLEKS                       R93 R93 K107 ["GetGroupRoleInfo"]
      536 CALL                             R92 1 1
      537 GETIMPORT                        R93 K15 [require]
      539 GETTABLEKS                       R94 R1 K7 ["Src"]
      541 GETTABLEKS                       R94 R94 K105 ["Thunks"]
      543 GETTABLEKS                       R94 R94 K108 ["GetUsername"]
      545 CALL                             R93 1 1
      546 GETIMPORT                        R94 K15 [require]
      548 GETTABLEKS                       R95 R1 K7 ["Src"]
      550 GETTABLEKS                       R95 R95 K105 ["Thunks"]
      552 GETTABLEKS                       R95 R95 K109 ["CheckAvatarAssetPrivacy"]
      554 CALL                             R94 1 1
      555 GETIMPORT                        R95 K15 [require]
      557 GETTABLEKS                       R96 R1 K7 ["Src"]
      559 GETTABLEKS                       R96 R96 K110 ["ContextServices"]
      561 GETTABLEKS                       R96 R96 K111 ["IXPContext"]
      563 CALL                             R95 1 1
      564 GETIMPORT                        R96 K15 [require]
      566 GETTABLEKS                       R97 R1 K7 ["Src"]
      568 GETTABLEKS                       R97 R97 K110 ["ContextServices"]
      570 GETTABLEKS                       R97 R97 K112 ["NetworkContext"]
      572 CALL                             R96 1 1
      573 GETIMPORT                        R97 K15 [require]
      575 GETTABLEKS                       R98 R1 K7 ["Src"]
      577 GETTABLEKS                       R98 R98 K110 ["ContextServices"]
      579 GETTABLEKS                       R98 R98 K113 ["PublishServiceContext"]
      581 CALL                             R97 1 1
      582 GETIMPORT                        R98 K15 [require]
      584 GETTABLEKS                       R99 R1 K7 ["Src"]
      586 GETTABLEKS                       R99 R99 K110 ["ContextServices"]
      588 GETTABLEKS                       R99 R99 K114 ["PluginGuiServiceContext"]
      590 CALL                             R98 1 1
      591 GETIMPORT                        R99 K15 [require]
      593 GETTABLEKS                       R100 R1 K7 ["Src"]
      595 GETTABLEKS                       R100 R100 K110 ["ContextServices"]
      597 GETTABLEKS                       R100 R100 K115 ["ContentProviderContext"]
      599 CALL                             R99 1 1
      600 GETIMPORT                        R100 K15 [require]
      602 GETTABLEKS                       R101 R14 K58 ["Framework"]
      604 CALL                             R100 1 1
      605 GETTABLEKS                       R101 R100 K110 ["ContextServices"]
      607 GETTABLEKS                       R102 R101 K116 ["withContext"]
      609 GETTABLEKS                       R103 R100 K117 ["UI"]
      611 GETTABLEKS                       R103 R103 K118 ["LoadingIndicator"]
      613 GETTABLEKS                       R104 R100 K117 ["UI"]
      615 GETTABLEKS                       R104 R104 K119 ["Container"]
      617 GETTABLEKS                       R105 R15 K120 ["PureComponent"]
      619 LOADK                            R107 K121 ["AssetConfig"]
      620 NAMECALL                         R105 R105 K122 ["extend"]
      622 CALL                             R105 2 1
      623 GETIMPORT                        R106 K125 [utf8.char]
      625 LOADK                            R107 K126 [57346]
      626 CALL                             R106 1 1
      627 GETIMPORT                        R107 K15 [require]
      629 GETTABLEKS                       R108 R1 K7 ["Src"]
      631 GETTABLEKS                       R108 R108 K21 ["Flags"]
      633 GETTABLEKS                       R108 R108 K127 ["getFFlagEnableUploadingMakeup"]
      635 CALL                             R107 1 1
      636 GETIMPORT                        R108 K15 [require]
      638 GETTABLEKS                       R109 R1 K7 ["Src"]
      640 GETTABLEKS                       R109 R109 K21 ["Flags"]
      642 GETTABLEKS                       R109 R109 K128 ["getFFlagEnableUploadingAvatarAnimations"]
      644 CALL                             R108 1 1
      645 GETIMPORT                        R109 K15 [require]
      647 GETTABLEKS                       R110 R1 K7 ["Src"]
      649 GETTABLEKS                       R110 R110 K21 ["Flags"]
      651 GETTABLEKS                       R110 R110 K129 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      653 CALL                             R109 1 1
      654 GETIMPORT                        R110 K15 [require]
      656 GETTABLEKS                       R111 R1 K7 ["Src"]
      658 GETTABLEKS                       R111 R111 K21 ["Flags"]
      660 GETTABLEKS                       R111 R111 K130 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      662 CALL                             R110 1 1
      663 NEWCLOSURE                       R111 P0
      664 CAPTURE                          VAL R11
      665 CAPTURE                          VAL R38
      666 CAPTURE                          VAL R107
      667 CAPTURE                          VAL R40
      668 CAPTURE                          VAL R37
      669 CAPTURE                          VAL R6
      670 CAPTURE                          VAL R34
      671 CAPTURE                          VAL R17
      672 CAPTURE                          VAL R4
      673 CAPTURE                          VAL R5
      674 CAPTURE                          REF R45
      675 CAPTURE                          VAL R12
      676 CAPTURE                          VAL R55
      677 CAPTURE                          VAL R13
      678 CAPTURE                          VAL R25
      679 CAPTURE                          VAL R8
      680 CAPTURE                          VAL R10
      681 CAPTURE                          VAL R18
      682 CAPTURE                          VAL R109
      683 CAPTURE                          VAL R7
      684 CAPTURE                          VAL R57
      685 CAPTURE                          VAL R108
      686 CAPTURE                          VAL R47
      687 CAPTURE                          VAL R48
      688 CAPTURE                          VAL R54
      689 CAPTURE                          VAL R36
      690 SETTABLEKS                       R111 R105 K131 ["init"]
      692 DUPCLOSURE                       R111 K132 [PROTO_67]
      693 SETTABLEKS                       R111 R105 K133 ["attachXButtonCallback"]
      695 DUPCLOSURE                       R111 K134 [PROTO_68]
      696 SETTABLEKS                       R111 R105 K135 ["detachXButtonCallback"]
      698 DUPCLOSURE                       R111 K136 [PROTO_69]
      699 CAPTURE                          VAL R37
      700 SETTABLEKS                       R111 R105 K137 ["isLoading"]
      702 DUPCLOSURE                       R111 K138 [PROTO_70]
      703 CAPTURE                          VAL R17
      704 DUPCLOSURE                       R112 K139 [PROTO_71]
      705 CAPTURE                          VAL R37
      706 CAPTURE                          VAL R55
      707 CAPTURE                          VAL R34
      708 CAPTURE                          VAL R40
      709 CAPTURE                          VAL R3
      710 CAPTURE                          VAL R42
      711 CAPTURE                          VAL R110
      712 CAPTURE                          VAL R111
      713 CAPTURE                          VAL R38
      714 SETTABLEKS                       R112 R105 K140 ["didUpdate"]
      716 DUPCLOSURE                       R112 K141 [PROTO_72]
      717 CAPTURE                          VAL R50
      718 SETTABLEKS                       R112 R105 K142 ["versionsGetPageRootItems"]
      720 DUPCLOSURE                       R112 K143 [PROTO_75]
      721 CAPTURE                          VAL R84
      722 SETTABLEKS                       R112 R105 K144 ["getDefaultBundleDataSharing"]
      724 DUPCLOSURE                       R112 K145 [PROTO_81]
      725 CAPTURE                          VAL R37
      726 CAPTURE                          VAL R40
      727 SETTABLEKS                       R112 R105 K146 ["getAssetInformation"]
      729 DUPCLOSURE                       R112 K147 [PROTO_83]
      730 CAPTURE                          VAL R40
      731 CAPTURE                          VAL R7
      732 CAPTURE                          VAL R9
      733 CAPTURE                          VAL R44
      734 SETTABLEKS                       R112 R105 K148 ["didMount"]
      736 DUPCLOSURE                       R112 K149 [PROTO_84]
      737 SETTABLEKS                       R112 R105 K150 ["willUnmount"]
      739 DUPCLOSURE                       R112 K151 [PROTO_87]
      740 CAPTURE                          VAL R37
      741 CAPTURE                          VAL R55
      742 CAPTURE                          VAL R11
      743 CAPTURE                          VAL R40
      744 CAPTURE                          VAL R39
      745 CAPTURE                          VAL R108
      746 CAPTURE                          VAL R35
      747 CAPTURE                          VAL R42
      748 CAPTURE                          VAL R7
      749 CAPTURE                          VAL R107
      750 CAPTURE                          VAL R38
      751 CAPTURE                          VAL R106
      752 CAPTURE                          VAL R6
      753 CAPTURE                          VAL R15
      754 CAPTURE                          VAL R33
      755 CAPTURE                          VAL R30
      756 CAPTURE                          VAL R31
      757 CAPTURE                          VAL R29
      758 CAPTURE                          VAL R21
      759 CAPTURE                          VAL R104
      760 CAPTURE                          VAL R103
      761 CAPTURE                          VAL R22
      762 CAPTURE                          VAL R109
      763 CAPTURE                          VAL R24
      764 CAPTURE                          VAL R110
      765 CAPTURE                          VAL R26
      766 CAPTURE                          VAL R32
      767 CAPTURE                          VAL R28
      768 CAPTURE                          VAL R27
      769 CAPTURE                          VAL R23
      770 SETTABLEKS                       R112 R105 K152 ["render"]
      772 MOVE                             R112 R102
      773 DUPTABLE                         R113 K162 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      774 GETTABLEKS                       R114 R101 K153 ["Focus"]
      776 SETTABLEKS                       R114 R113 K153 ["Focus"]
      778 JUMPIFNOT                        R5 ; [+2]
      779 MOVE                             R114 R95
      780 JUMP                             ; [+1]
      781 LOADNIL                          R114
      782 SETTABLEKS                       R114 R113 K154 ["IXP"]
      784 GETTABLEKS                       R114 R101 K155 ["Localization"]
      786 SETTABLEKS                       R114 R113 K155 ["Localization"]
      788 GETTABLEKS                       R114 R101 K156 ["Stylizer"]
      790 SETTABLEKS                       R114 R113 K156 ["Stylizer"]
      792 MOVE                             R115 R107
      793 CALL                             R115 0 1
      794 JUMPIFNOT                        R115 ; [+3]
      795 GETTABLEKS                       R114 R101 K157 ["Plugin"]
      797 JUMP                             ; [+1]
      798 LOADNIL                          R114
      799 SETTABLEKS                       R114 R113 K157 ["Plugin"]
      801 SETTABLEKS                       R96 R113 K158 ["Network"]
      803 SETTABLEKS                       R97 R113 K159 ["PublishService"]
      805 MOVE                             R115 R11
      806 CALL                             R115 0 1
      807 JUMPIFNOT                        R115 ; [+2]
      808 MOVE                             R114 R98
      809 JUMP                             ; [+1]
      810 LOADNIL                          R114
      811 SETTABLEKS                       R114 R113 K160 ["PluginGuiService"]
      813 MOVE                             R115 R11
      814 CALL                             R115 0 1
      815 JUMPIFNOT                        R115 ; [+2]
      816 MOVE                             R114 R99
      817 JUMP                             ; [+1]
      818 LOADNIL                          R114
      819 SETTABLEKS                       R114 R113 K161 ["ContentProvider"]
      821 CALL                             R112 1 1
      822 MOVE                             R113 R105
      823 CALL                             R112 1 1
      824 MOVE                             R105 R112
      825 DUPCLOSURE                       R112 K163 [PROTO_88]
      826 CAPTURE                          VAL R54
      827 CAPTURE                          VAL R110
      828 CAPTURE                          VAL R4
      829 CAPTURE                          VAL R5
      830 CAPTURE                          VAL R3
      831 CAPTURE                          VAL R44
      832 CAPTURE                          VAL R108
      833 CAPTURE                          VAL R11
      834 DUPCLOSURE                       R113 K164 [PROTO_125]
      835 CAPTURE                          VAL R60
      836 CAPTURE                          VAL R73
      837 CAPTURE                          VAL R81
      838 CAPTURE                          VAL R51
      839 CAPTURE                          VAL R89
      840 CAPTURE                          VAL R17
      841 CAPTURE                          VAL R58
      842 CAPTURE                          VAL R59
      843 CAPTURE                          VAL R63
      844 CAPTURE                          VAL R64
      845 CAPTURE                          VAL R8
      846 CAPTURE                          VAL R61
      847 CAPTURE                          VAL R62
      848 CAPTURE                          VAL R86
      849 CAPTURE                          VAL R85
      850 CAPTURE                          VAL R37
      851 CAPTURE                          VAL R65
      852 CAPTURE                          VAL R68
      853 CAPTURE                          VAL R74
      854 CAPTURE                          VAL R41
      855 CAPTURE                          VAL R80
      856 CAPTURE                          VAL R75
      857 CAPTURE                          VAL R69
      858 CAPTURE                          VAL R87
      859 CAPTURE                          VAL R70
      860 CAPTURE                          VAL R71
      861 CAPTURE                          VAL R72
      862 CAPTURE                          VAL R91
      863 CAPTURE                          VAL R92
      864 CAPTURE                          VAL R93
      865 CAPTURE                          VAL R76
      866 CAPTURE                          VAL R77
      867 CAPTURE                          VAL R88
      868 CAPTURE                          VAL R78
      869 CAPTURE                          VAL R79
      870 CAPTURE                          VAL R82
      871 CAPTURE                          VAL R9
      872 CAPTURE                          VAL R83
      873 CAPTURE                          VAL R90
      874 CAPTURE                          VAL R11
      875 CAPTURE                          VAL R94
      876 CAPTURE                          VAL R66
      877 CAPTURE                          VAL R67
      878 GETTABLEKS                       R114 R16 K165 ["connect"]
      880 MOVE                             R115 R112
      881 MOVE                             R116 R113
      882 CALL                             R114 2 1
      883 MOVE                             R115 R105
      884 CALL                             R114 1 -1
      885 CLOSEUPVALS                      R45
      886 RETURN                           R114 -1
