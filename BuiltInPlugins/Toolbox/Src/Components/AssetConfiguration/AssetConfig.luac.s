PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryPublish"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["confirmationDialogKey"]
        6 CALL                             R0 1 0
        7 DUPTABLE                         R0 K3 [{"confirmationDialogKey", "isConfirmationDialogEnabled"}]
        8 LOADK                            R1 K4 [""]
        9 SETTABLEKS                       R1 R0 K1 ["confirmationDialogKey"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["isConfirmationDialogEnabled"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["state"]
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
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["tryMakeAssetsPublic"]
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
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["tryPublish"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETIMPORT                        R2 K3 [pairs]
        8 GETTABLEKS                       R3 R1 K4 ["descendantIds"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R0 K5 ["dispatchPatchMakeAssetPublicRequest"]
       14 GETTABLEKS                       R9 R0 K6 ["Network"]
       16 GETTABLEKS                       R8 R9 K7 ["networkInterface"]
       18 MOVE                             R9 R6
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-9]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K8 ["tryPublish"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K10 ["isCatalogAsset"]
       30 GETTABLEKS                       R6 R1 K1 ["assetTypeEnum"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K11 ["isUGCBundleType"]
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
       52 GETUPVAL                         R11 3
       53 GETTABLEKS                       R10 R11 K16 ["SHARING_KEYS"]
       55 GETTABLEKS                       R9 R10 K17 ["Public"]
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
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R10 R11 K16 ["SHARING_KEYS"]
       74 GETTABLEKS                       R9 R10 K17 ["Public"]
       76 JUMPIFNOTEQ                      R8 R9 ; [+40]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R9 R10 K22 ["FLOW_TYPE"]
       81 GETTABLEKS                       R8 R9 K23 ["UPLOAD_FLOW"]
       83 GETTABLEKS                       R9 R1 K24 ["screenFlowType"]
       85 JUMPIFNOTEQ                      R8 R9 ; [+31]
       87 LOADB                            R8 0
       88 GETIMPORT                        R9 K26 [pairs]
       90 GETTABLEKS                       R10 R1 K27 ["descendantPermissions"]
       92 CALL                             R9 1 3
       93 FORGPREP_NEXT                    R9
       94 GETUPVAL                         R15 5
       95 GETTABLEKS                       R14 R15 K15 ["isAssetPublic"]
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
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R9 R10 K30 ["tryPublish"]
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
      129 GETTABLEKS                       R10 R1 K32 ["Network"]
      131 GETTABLEKS                       R9 R10 K33 ["networkInterface"]
      133 GETTABLEKS                       R11 R1 K34 ["instances"]
      135 GETTABLEN                        R10 R11 1
      136 DUPTABLE                         R11 K38 [{"publishService", "pluginGuiService", "contentProvider"}]
      137 GETTABLEKS                       R13 R1 K39 ["PublishService"]
      139 GETTABLEKS                       R12 R13 K35 ["publishService"]
      141 SETTABLEKS                       R12 R11 K35 ["publishService"]
      143 GETTABLEKS                       R13 R1 K40 ["PluginGuiService"]
      145 GETTABLEKS                       R12 R13 K36 ["pluginGuiService"]
      147 SETTABLEKS                       R12 R11 K36 ["pluginGuiService"]
      149 GETTABLEKS                       R13 R1 K41 ["ContentProvider"]
      151 GETTABLEKS                       R12 R13 K37 ["contentProvider"]
      153 SETTABLEKS                       R12 R11 K37 ["contentProvider"]
      155 CALL                             R8 3 0
      156 RETURN                           R0 0
      157 GETUPVAL                         R8 0
      158 DUPCLOSURE                       R10 K42 [PROTO_14]
      159 NAMECALL                         R8 R8 K29 ["setState"]
      161 CALL                             R8 2 0
      162 RETURN                           R0 0
      163 GETUPVAL                         R9 0
      164 GETTABLEKS                       R8 R9 K30 ["tryPublish"]
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
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["overrideAssetId"]
        9 NAMECALL                         R0 R0 K2 ["AnimationIdSelected"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 DUPCLOSURE                       R0 K0 [PROTO_17]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K1 ["props"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["state"]
        7 GETTABLEKS                       R4 R1 K3 ["groupId"]
        9 JUMPIFNOT                        R4 ; [+10]
       10 GETTABLEKS                       R4 R1 K3 ["groupId"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["None"]
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
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K8 ["FLOW_TYPE"]
       34 GETTABLEKS                       R5 R6 K9 ["DOWNLOAD_FLOW"]
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
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R6 R7 K8 ["FLOW_TYPE"]
       60 GETTABLEKS                       R5 R6 K15 ["EDIT_FLOW"]
       62 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
       64 JUMPIFNOTEQ                      R5 R6 ; [+134]
       66 GETUPVAL                         R6 8
       67 GETTABLEKS                       R5 R6 K16 ["isCatalogAsset"]
       69 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
       71 CALL                             R5 1 1
       72 JUMPIFNOT                        R5 ; [+40]
       73 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       75 JUMPIFNOT                        R5 ; [+32]
       76 GETTABLEKS                       R6 R1 K18 ["assetConfigData"]
       78 GETTABLEKS                       R5 R6 K19 ["Status"]
       80 JUMPIFNOT                        R5 ; [+27]
       81 GETTABLEKS                       R5 R1 K20 ["configureCatalogItem"]
       83 GETTABLEKS                       R7 R1 K21 ["Network"]
       85 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
       87 GETTABLEKS                       R7 R1 K23 ["assetId"]
       89 GETTABLEKS                       R8 R2 K24 ["name"]
       91 GETTABLEKS                       R10 R2 K26 ["description"]
       93 ORK                              R9 R10 K25 [""]
       94 GETTABLEKS                       R11 R1 K18 ["assetConfigData"]
       96 GETTABLEKS                       R10 R11 K19 ["Status"]
       98 GETTABLEKS                       R11 R2 K27 ["status"]
      100 GETTABLEKS                       R13 R1 K18 ["assetConfigData"]
      102 GETTABLEKS                       R12 R13 K28 ["Price"]
      104 GETTABLEKS                       R13 R2 K29 ["price"]
      106 CALL                             R5 8 0
      107 RETURN                           R0 0
      108 GETIMPORT                        R5 K31 [warn]
      110 LOADK                            R6 K32 ["Could not configure sales, missing Asset Status!"]
      111 CALL                             R5 1 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R6 8
      114 GETTABLEKS                       R5 R6 K33 ["isMarketplaceAsset"]
      116 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      118 CALL                             R5 1 1
      119 JUMPIFNOT                        R5 ; [+530]
      120 GETTABLEKS                       R5 R2 K34 ["copyOn"]
      122 GETTABLEKS                       R6 R2 K35 ["copyChanged"]
      124 JUMPIF                           R6 ; [+1]
      125 LOADNIL                          R5
      126 GETTABLEKS                       R6 R1 K36 ["configureMarketplaceItem"]
      128 DUPTABLE                         R7 K45 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      129 GETTABLEKS                       R9 R1 K21 ["Network"]
      131 GETTABLEKS                       R8 R9 K22 ["networkInterface"]
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
      166 GETTABLEKS                       R9 R1 K18 ["assetConfigData"]
      168 GETTABLEKS                       R8 R9 K28 ["Price"]
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
      189 GETTABLEKS                       R9 R1 K46 ["fiatProduct"]
      191 GETTABLEKS                       R8 R9 K44 ["basePrice"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R8
      195 SETTABLEKS                       R8 R7 K44 ["basePrice"]
      197 CALL                             R6 1 0
      198 RETURN                           R0 0
      199 GETUPVAL                         R7 5
      200 GETTABLEKS                       R6 R7 K8 ["FLOW_TYPE"]
      202 GETTABLEKS                       R5 R6 K47 ["UPLOAD_FLOW"]
      204 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
      206 JUMPIFNOTEQ                      R5 R6 ; [+443]
      208 GETUPVAL                         R5 9
      209 CALL                             R5 0 1
      210 JUMPIFNOT                        R5 ; [+26]
      211 GETUPVAL                         R6 8
      212 GETTABLEKS                       R5 R6 K48 ["isMakeupAsset"]
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
      228 GETUPVAL                         R6 8
      229 GETTABLEKS                       R5 R6 K51 ["addMakeupThumbnailConfiguration"]
      231 GETTABLEKS                       R7 R1 K50 ["instances"]
      233 GETTABLEN                        R6 R7 1
      234 GETTABLEKS                       R7 R2 K49 ["selectedColor"]
      236 CALL                             R5 2 0
      237 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      239 GETIMPORT                        R6 K55 [Enum.AssetType.Animation]
      241 JUMPIFEQ                         R5 R6 ; [+10]
      243 GETUPVAL                         R5 10
      244 CALL                             R5 0 1
      245 JUMPIFNOT                        R5 ; [+76]
      246 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      248 GETIMPORT                        R6 K57 [Enum.AssetType.EmoteAnimation]
      250 JUMPIFNOTEQ                      R5 R6 ; [+71]
      252 GETUPVAL                         R5 11
      253 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      255 NAMECALL                         R5 R5 K59 ["isOverride"]
      257 CALL                             R5 2 1
      258 JUMPIFNOT                        R5 ; [+12]
      259 GETTABLEKS                       R5 R1 K60 ["overrideAnimationAsset"]
      261 GETTABLEKS                       R7 R1 K21 ["Network"]
      263 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      265 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      267 GETTABLEKS                       R8 R1 K50 ["instances"]
      269 CALL                             R5 3 0
      270 RETURN                           R0 0
      271 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      273 DUPTABLE                         R6 K66 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      274 GETTABLEKS                       R8 R1 K21 ["Network"]
      276 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      278 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      280 LOADN                            R7 0
      281 SETTABLEKS                       R7 R6 K23 ["assetId"]
      283 GETTABLEKS                       R7 R2 K24 ["name"]
      285 SETTABLEKS                       R7 R6 K24 ["name"]
      287 GETTABLEKS                       R8 R2 K26 ["description"]
      289 ORK                              R7 R8 K25 [""]
      290 SETTABLEKS                       R7 R6 K26 ["description"]
      292 GETUPVAL                         R7 12
      293 CALL                             R7 0 1
      294 SETTABLEKS                       R7 R6 K63 ["userId"]
      296 SETTABLEKS                       R3 R6 K3 ["groupId"]
      298 GETUPVAL                         R8 10
      299 CALL                             R8 0 1
      300 JUMPIFNOT                        R8 ; [+3]
      301 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      303 JUMP                             ; [+1]
      304 LOADNIL                          R7
      305 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      307 GETUPVAL                         R8 10
      308 CALL                             R8 0 1
      309 JUMPIFNOT                        R8 ; [+3]
      310 GETTABLEKS                       R7 R1 K67 ["uploadFee"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R7
      314 SETTABLEKS                       R7 R6 K64 ["expectedPrice"]
      316 GETTABLEKS                       R7 R1 K50 ["instances"]
      318 SETTABLEKS                       R7 R6 K65 ["instance"]
      320 CALL                             R5 1 0
      321 RETURN                           R0 0
      322 GETUPVAL                         R6 8
      323 GETTABLEKS                       R5 R6 K16 ["isCatalogAsset"]
      325 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      327 CALL                             R5 1 1
      328 JUMPIFNOT                        R5 ; [+134]
      329 GETUPVAL                         R5 13
      330 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      332 GETTABLEKS                       R8 R2 K68 ["dataSharingEnabled"]
      334 GETTABLEKS                       R9 R2 K69 ["dataSharingToggled"]
      336 NAMECALL                         R5 R5 K70 ["getDataSharingLicenseTypes"]
      338 CALL                             R5 4 1
      339 GETTABLEKS                       R6 R1 K71 ["isUploadFeeEnabled"]
      341 JUMPIFNOT                        R6 ; [+62]
      342 GETTABLEKS                       R6 R1 K72 ["uploadCatalogItemWithFee"]
      344 GETTABLEKS                       R8 R1 K21 ["Network"]
      346 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      348 GETUPVAL                         R10 0
      349 GETTABLEKS                       R9 R10 K2 ["state"]
      351 GETTABLEKS                       R8 R9 K24 ["name"]
      353 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      355 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      357 MOVE                             R12 R10
      358 JUMPIFNOT                        R12 ; [+5]
      359 MOVE                             R12 R11
      360 JUMPIFNOT                        R12 ; [+3]
      361 GETTABLEKS                       R13 R11 K74 ["Name"]
      363 GETTABLE                         R12 R10 R13
      364 MOVE                             R13 R12
      365 JUMPIFNOT                        R13 ; [+2]
      366 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      368 MOVE                             R14 R13
      369 JUMPIFNOT                        R14 ; [+6]
      370 LOADB                            R14 0
      371 LENGTH                           R15 R13
      372 LOADN                            R16 0
      373 JUMPIFNOTLT                      R16 R15 ; [+2]
      375 GETTABLEN                        R14 R13 1
      376 JUMPIFNOT                        R14 ; [+8]
      377 GETIMPORT                        R15 K78 [string.gsub]
      379 MOVE                             R16 R14
      380 LOADK                            R17 K79 ["^%."]
      381 LOADK                            R18 K25 [""]
      382 CALL                             R15 3 1
      383 MOVE                             R9 R15
      384 JUMPIF                           R9 ; [+1]
      385 LOADK                            R9 K80 ["rbxm"]
      386 GETUPVAL                         R13 0
      387 GETTABLEKS                       R12 R13 K2 ["state"]
      389 GETTABLEKS                       R11 R12 K26 ["description"]
      391 ORK                              R10 R11 K25 [""]
      392 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      394 GETTABLEKS                       R12 R1 K50 ["instances"]
      396 MOVE                             R13 R3
      397 MOVE                             R14 R5
      398 GETTABLEKS                       R15 R1 K81 ["Localization"]
      400 GETTABLEKS                       R16 R1 K67 ["uploadFee"]
      402 CALL                             R6 10 0
      403 RETURN                           R0 0
      404 GETTABLEKS                       R6 R1 K82 ["uploadCatalogItem"]
      406 GETTABLEKS                       R8 R1 K21 ["Network"]
      408 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      410 GETUPVAL                         R10 0
      411 GETTABLEKS                       R9 R10 K2 ["state"]
      413 GETTABLEKS                       R8 R9 K24 ["name"]
      415 GETTABLEKS                       R10 R1 K73 ["allowedAssetTypesForUpload"]
      417 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      419 MOVE                             R12 R10
      420 JUMPIFNOT                        R12 ; [+5]
      421 MOVE                             R12 R11
      422 JUMPIFNOT                        R12 ; [+3]
      423 GETTABLEKS                       R13 R11 K74 ["Name"]
      425 GETTABLE                         R12 R10 R13
      426 MOVE                             R13 R12
      427 JUMPIFNOT                        R13 ; [+2]
      428 GETTABLEKS                       R13 R12 K75 ["allowedFileExtensions"]
      430 MOVE                             R14 R13
      431 JUMPIFNOT                        R14 ; [+6]
      432 LOADB                            R14 0
      433 LENGTH                           R15 R13
      434 LOADN                            R16 0
      435 JUMPIFNOTLT                      R16 R15 ; [+2]
      437 GETTABLEN                        R14 R13 1
      438 JUMPIFNOT                        R14 ; [+8]
      439 GETIMPORT                        R15 K78 [string.gsub]
      441 MOVE                             R16 R14
      442 LOADK                            R17 K79 ["^%."]
      443 LOADK                            R18 K25 [""]
      444 CALL                             R15 3 1
      445 MOVE                             R9 R15
      446 JUMPIF                           R9 ; [+1]
      447 LOADK                            R9 K80 ["rbxm"]
      448 GETUPVAL                         R13 0
      449 GETTABLEKS                       R12 R13 K2 ["state"]
      451 GETTABLEKS                       R11 R12 K26 ["description"]
      453 ORK                              R10 R11 K25 [""]
      454 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      456 GETTABLEKS                       R12 R1 K50 ["instances"]
      458 MOVE                             R13 R5
      459 GETTABLEKS                       R14 R1 K81 ["Localization"]
      461 CALL                             R6 8 0
      462 RETURN                           R0 0
      463 GETUPVAL                         R6 8
      464 GETTABLEKS                       R5 R6 K83 ["isUGCBundleType"]
      466 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      468 CALL                             R5 1 1
      469 JUMPIFNOT                        R5 ; [+63]
      470 LOADNIL                          R5
      471 GETTABLEKS                       R6 R2 K68 ["dataSharingEnabled"]
      473 JUMPIFNOT                        R6 ; [+16]
      474 GETTABLEKS                       R6 R2 K69 ["dataSharingToggled"]
      476 JUMPIFNOT                        R6 ; [+11]
      477 NEWTABLE                         R6 0 1
      479 GETUPVAL                         R9 14
      480 GETTABLEKS                       R8 R9 K84 ["DataSharingLicenseTypes"]
      482 GETTABLEKS                       R7 R8 K85 ["RobloxGlobal"]
      484 SETLIST                          R6 R7 1 [1]
      486 MOVE                             R5 R6
      487 JUMP                             ; [+2]
      488 NEWTABLE                         R5 0 0
      490 GETTABLEKS                       R6 R1 K86 ["uploadUGCBundleWithFee"]
      492 GETTABLEKS                       R8 R1 K21 ["Network"]
      494 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      496 GETTABLEKS                       R9 R1 K50 ["instances"]
      498 GETTABLEN                        R8 R9 1
      499 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      501 GETTABLEKS                       R10 R2 K24 ["name"]
      503 GETTABLEKS                       R12 R2 K26 ["description"]
      505 ORK                              R11 R12 K25 [""]
      506 GETTABLEKS                       R12 R1 K87 ["allowedBundleTypeSettings"]
      508 GETTABLEKS                       R13 R1 K81 ["Localization"]
      510 GETTABLEKS                       R14 R1 K67 ["uploadFee"]
      512 MOVE                             R15 R5
      513 GETUPVAL                         R17 15
      514 CALL                             R17 0 1
      515 JUMPIFNOT                        R17 ; [+5]
      516 GETTABLEKS                       R17 R1 K88 ["PublishService"]
      518 GETTABLEKS                       R16 R17 K89 ["publishService"]
      520 JUMP                             ; [+1]
      521 LOADNIL                          R16
      522 GETUPVAL                         R18 15
      523 CALL                             R18 0 1
      524 JUMPIFNOT                        R18 ; [+5]
      525 GETTABLEKS                       R18 R1 K90 ["groupBundlesUploadEnabledForUser"]
      527 JUMPIFNOT                        R18 ; [+2]
      528 MOVE                             R17 R3
      529 JUMP                             ; [+1]
      530 LOADNIL                          R17
      531 CALL                             R6 11 0
      532 RETURN                           R0 0
      533 GETUPVAL                         R6 8
      534 GETTABLEKS                       R5 R6 K33 ["isMarketplaceAsset"]
      536 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      538 CALL                             R5 1 1
      539 JUMPIFNOT                        R5 ; [+30]
      540 GETUPVAL                         R5 11
      541 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      543 NAMECALL                         R5 R5 K59 ["isOverride"]
      545 CALL                             R5 2 1
      546 JUMPIFNOT                        R5 ; [+23]
      547 GETTABLEKS                       R5 R1 K91 ["overrideAsset"]
      549 GETTABLEKS                       R7 R1 K21 ["Network"]
      551 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      553 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      555 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      557 GETTABLEKS                       R8 R9 K74 ["Name"]
      559 GETTABLEKS                       R9 R1 K50 ["instances"]
      561 GETUPVAL                         R11 16
      562 CALL                             R11 0 1
      563 JUMPIFNOT                        R11 ; [+3]
      564 GETTABLEKS                       R10 R1 K81 ["Localization"]
      566 JUMP                             ; [+1]
      567 LOADNIL                          R10
      568 CALL                             R5 5 0
      569 RETURN                           R0 0
      570 GETTABLEKS                       R5 R1 K92 ["uploadMarketplaceItem"]
      572 DUPTABLE                         R6 K94 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      573 GETTABLEKS                       R8 R1 K21 ["Network"]
      575 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      577 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      579 LOADN                            R7 0
      580 SETTABLEKS                       R7 R6 K23 ["assetId"]
      582 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      584 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      586 GETTABLEKS                       R7 R2 K24 ["name"]
      588 SETTABLEKS                       R7 R6 K24 ["name"]
      590 GETTABLEKS                       R8 R2 K26 ["description"]
      592 ORK                              R7 R8 K25 [""]
      593 SETTABLEKS                       R7 R6 K26 ["description"]
      595 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      597 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      599 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      601 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      603 SETTABLEKS                       R3 R6 K3 ["groupId"]
      605 GETTABLEKS                       R7 R1 K50 ["instances"]
      607 SETTABLEKS                       R7 R6 K50 ["instances"]
      609 JUMPIFNOT                        R4 ; [+2]
      610 LOADB                            R7 1
      611 JUMP                             ; [+1]
      612 LOADNIL                          R7
      613 SETTABLEKS                       R7 R6 K93 ["isMarketplaceModelsAsPackagesEnabled"]
      615 GETTABLEKS                       R7 R2 K27 ["status"]
      617 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      619 GETTABLEKS                       R7 R2 K29 ["price"]
      621 SETTABLEKS                       R7 R6 K29 ["price"]
      623 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      625 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      627 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      629 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      631 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      633 JUMPIFNOT                        R8 ; [+5]
      634 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      636 GETTABLEKS                       R7 R8 K44 ["basePrice"]
      638 JUMP                             ; [+1]
      639 LOADNIL                          R7
      640 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      642 GETUPVAL                         R8 16
      643 CALL                             R8 0 1
      644 JUMPIFNOT                        R8 ; [+3]
      645 GETTABLEKS                       R7 R1 K81 ["Localization"]
      647 JUMP                             ; [+1]
      648 LOADNIL                          R7
      649 CALL                             R5 2 0
      650 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["assetConfigData"]
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
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K5 ["Network"]
       26 GETTABLEKS                       R5 R6 K6 ["networkInterface"]
       28 JUMPIFNOT                        R2 ; [+31]
       29 JUMPIFNOT                        R3 ; [+30]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K0 ["props"]
       33 GETTABLEKS                       R6 R7 K7 ["postRevertVersion"]
       35 MOVE                             R7 R5
       36 MOVE                             R8 R2
       37 MOVE                             R9 R3
       38 CALL                             R6 3 0
       39 GETTABLEKS                       R8 R0 K3 ["VersionItemSelect"]
       41 GETTABLEN                        R7 R8 2
       42 ADDK                             R6 R7 K8 [1]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R7 R8 K9 ["Localization"]
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
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K0 ["props"]
       69 GETTABLEKS                       R11 R12 K19 ["postVersionDescription"]
       71 MOVE                             R12 R5
       72 MOVE                             R13 R2
       73 MOVE                             R14 R9
       74 MOVE                             R15 R10
       75 CALL                             R11 4 0
       76 FORGLOOP                         R6 2 ; [-12]
       78 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R1 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["VersionItemSelect"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R0 K3 ["VersionItemSelect"]
       12 GETTABLEN                        R3 R4 1
       13 JUMPIFNOT                        R2 ; [+25]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["props"]
       17 GETTABLEKS                       R4 R5 K4 ["dispatchPutPackagePermissionsRequest"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K0 ["props"]
       22 GETTABLEKS                       R6 R7 K5 ["Network"]
       24 GETTABLEKS                       R5 R6 K6 ["networkInterface"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 GETUPVAL                         R9 1
       29 CALL                             R9 0 1
       30 JUMPIFNOT                        R9 ; [+6]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R9 R10 K0 ["props"]
       34 GETTABLEKS                       R8 R9 K7 ["Localization"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 CALL                             R4 4 0
       39 RETURN                           R0 0

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
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U16
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U17
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["props"]
       27 GETTABLEKS                       R4 R5 K1 ["changeTable"]
       29 MOVE                             R5 R4
       30 JUMPIFNOT                        R5 ; [+8]
       31 GETIMPORT                        R6 K3 [next]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKNIL                  R6 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K0 ["props"]
       42 GETTABLEKS                       R6 R7 K4 ["resetUploadResult"]
       44 CALL                             R6 0 0
       45 MOVE                             R6 R1
       46 CALL                             R6 0 0
       47 JUMPIFNOT                        R5 ; [+48]
       48 MOVE                             R6 R2
       49 MOVE                             R7 R4
       50 CALL                             R6 1 0
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K0 ["props"]
       54 GETTABLEKS                       R6 R7 K5 ["isPackageAsset"]
       56 JUMPIFNOT                        R6 ; [+39]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K0 ["props"]
       60 GETTABLEKS                       R6 R7 K6 ["assetConfigData"]
       62 GETTABLEKS                       R7 R6 K7 ["Id"]
       64 GETTABLEKS                       R8 R4 K8 ["VersionItemSelect"]
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R9 R4 K8 ["VersionItemSelect"]
       69 GETTABLEN                        R8 R9 1
       70 JUMPIFNOT                        R7 ; [+25]
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R10 R11 K0 ["props"]
       74 GETTABLEKS                       R9 R10 K9 ["dispatchPutPackagePermissionsRequest"]
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R12 R13 K0 ["props"]
       79 GETTABLEKS                       R11 R12 K10 ["Network"]
       81 GETTABLEKS                       R10 R11 K11 ["networkInterface"]
       83 MOVE                             R11 R7
       84 MOVE                             R12 R8
       85 GETUPVAL                         R14 17
       86 CALL                             R14 0 1
       87 JUMPIFNOT                        R14 ; [+6]
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R14 R15 K0 ["props"]
       91 GETTABLEKS                       R13 R14 K12 ["Localization"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R13
       95 CALL                             R9 4 0
       96 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowChangeDiscardMessageBox"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isShowChangeDiscardMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["changeTable"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R3 K3 [next]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LOADB                            R3 0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K4 ["assetTypeEnum"]
       20 GETIMPORT                        R5 K8 [Enum.AssetType.Animation]
       22 JUMPIFNOTEQ                      R4 R5 ; [+15]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["props"]
       27 GETTABLEKS                       R4 R5 K9 ["screenFlowType"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K10 ["FLOW_TYPE"]
       32 GETTABLEKS                       R5 R6 K11 ["DOWNLOAD_FLOW"]
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
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R6 R7 K0 ["props"]
       62 GETTABLEKS                       R5 R6 K17 ["onClose"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryCancel"]
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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["props"]
        7 GETTABLEKS                       R2 R3 K2 ["changeTable"]
        9 JUMPIFNOT                        R2 ; [+17]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K1 ["props"]
       13 GETTABLEKS                       R3 R4 K2 ["changeTable"]
       15 GETTABLEKS                       R2 R3 K3 ["VersionDescriptionSave"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K4 ["onPackageNoteCanceled"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K1 ["props"]
       24 GETTABLEKS                       R3 R4 K5 ["assetId"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K1 ["props"]
       30 GETTABLEKS                       R2 R3 K6 ["Focus"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["assetConfigData"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K1 ["assetConfigData"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigName"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigDesc"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigStatus"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigPrice"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["type"]
        4 JUMPIFEQKS                       R2 K4 ["allowed"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["canUploadWithUgcRestrictions"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["type"]
       13 JUMPIFNOTEQKS                    R2 K5 ["error"] ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["message"]
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K7 ["denyReason"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isUGCBundleType"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["assetTypeEnum"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADN                            R0 1
       11 JUMP                             ; [+1]
       12 LOADN                            R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K1 ["props"]
       16 GETTABLEKS                       R1 R2 K3 ["groupId"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K1 ["props"]
       22 GETTABLEKS                       R4 R5 K4 ["Network"]
       24 GETTABLEKS                       R3 R4 K5 ["networkInterface"]
       26 MOVE                             R4 R1
       27 MOVE                             R5 R0
       28 CALL                             R2 3 1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          UPVAL U1
       31 NAMECALL                         R2 R2 K6 ["andThen"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["assetConfigData"]
        5 GETTABLEKS                       R2 R3 K2 ["Creator"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["props"]
       13 GETTABLEKS                       R3 R4 K3 ["makeChangeRequest"]
       15 LOADK                            R4 K4 ["AssetConfigOwner"]
       16 GETTABLEKS                       R6 R2 K6 ["type"]
       18 ORK                              R5 R6 K5 [1]
       19 MOVE                             R6 R0
       20 CALL                             R3 3 0
       21 GETUPVAL                         R4 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K7 ["None"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 LOADB                            R4 0
       29 GETTABLEKS                       R5 R1 K8 ["creatorType"]
       31 JUMPIFNOTEQKS                    R5 K9 ["Group"] ; [+4]
       33 GETTABLEKS                       R3 R1 K10 ["creatorId"]
       35 LOADB                            R4 1
       36 GETUPVAL                         R5 3
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+4]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K11 ["getUploadPermissionStatus"]
       42 CALL                             R5 0 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K12 ["Dictionary"]
       46 GETTABLEKS                       R5 R6 K13 ["join"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K14 ["state"]
       51 GETTABLEKS                       R6 R7 K15 ["owner"]
       53 JUMPIF                           R6 ; [+2]
       54 NEWTABLE                         R6 0 0
       56 DUPTABLE                         R7 K17 [{"typeId"}]
       57 SETTABLEKS                       R0 R7 K16 ["typeId"]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K0 ["props"]
       63 GETTABLEKS                       R6 R7 K18 ["setOwner"]
       65 MOVE                             R7 R5
       66 MOVE                             R8 R3
       67 CALL                             R6 2 0
       68 RETURN                           R0 0

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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["state"]
        6 GETTABLEKS                       R2 R3 K1 ["status"]
        8 GETUPVAL                         R3 0
        9 DUPTABLE                         R5 K4 [{"copyChanged", "copyOn", "status"}]
       10 SETTABLEKS                       R1 R5 K2 ["copyChanged"]
       12 SETTABLEKS                       R0 R5 K3 ["copyOn"]
       14 SETTABLEKS                       R2 R5 K1 ["status"]
       16 NAMECALL                         R3 R3 K5 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["props"]
       22 GETTABLEKS                       R5 R6 K8 ["assetConfigData"]
       24 GETTABLEKS                       R4 R5 K9 ["IsCopyingAllowed"]
       26 ORK                              R3 R4 K6 [False]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K7 ["props"]
       30 GETTABLEKS                       R4 R5 K10 ["fiatProduct"]
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K7 ["props"]
       36 GETTABLEKS                       R4 R5 K10 ["fiatProduct"]
       38 GETTABLEKS                       R3 R4 K11 ["purchasable"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K7 ["props"]
       43 GETTABLEKS                       R4 R5 K12 ["makeChangeRequest"]
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
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["AssetConfigComment"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K3 ["props"]
       16 GETTABLEKS                       R5 R6 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R5 K8 ["EnableComments"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"selectedColor", "showColorPickerRequiredError"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedColor"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["showColorPickerRequiredError"]
        7 NAMECALL                         R1 R1 K3 ["setState"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K4 ["setThumbnailSkinColor"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K5 ["props"]
       16 GETTABLEKS                       R2 R3 K6 ["Plugin"]
       18 NAMECALL                         R2 R2 K7 ["get"]
       20 CALL                             R2 1 1
       21 MOVE                             R3 R0
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["versionsOpenInputKey"]
        5 LOADNIL                          R4
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 JUMPIFNOTEQ                      R3 R0 ; [+3]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 1
       14 JUMPIFNOT                        R5 ; [+46]
       15 JUMPIFNOT                        R2 ; [+45]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K0 ["state"]
       19 GETTABLEKS                       R5 R6 K2 ["versionsRootItems"]
       21 JUMPIFNOT                        R5 ; [+39]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K0 ["state"]
       25 GETTABLEKS                       R6 R7 K2 ["versionsRootItems"]
       27 GETTABLE                         R5 R6 R3
       28 JUMPIFNOT                        R5 ; [+32]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K0 ["state"]
       32 GETTABLEKS                       R7 R8 K2 ["versionsRootItems"]
       34 GETTABLE                         R6 R7 R3
       35 GETTABLEKS                       R5 R6 K3 ["descriptionColumn"]
       37 JUMPIFNOT                        R5 ; [+23]
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K0 ["state"]
       41 GETTABLEKS                       R8 R9 K2 ["versionsRootItems"]
       43 GETTABLE                         R7 R8 R3
       44 GETTABLEKS                       R6 R7 K3 ["descriptionColumn"]
       46 GETTABLEKS                       R5 R6 K4 ["versionDescription"]
       48 JUMPIFEQ                         R1 R5 ; [+12]
       50 GETUPVAL                         R6 2
       51 GETTABLEKS                       R5 R6 K5 ["onPackageNoteDiscarded"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K6 ["props"]
       56 GETTABLEKS                       R6 R7 K7 ["assetId"]
       58 MOVE                             R7 R3
       59 MOVE                             R8 R1
       60 CALL                             R5 3 0
       61 JUMPIF                           R2 ; [+27]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K0 ["state"]
       65 GETTABLEKS                       R6 R7 K2 ["versionsRootItems"]
       67 GETTABLE                         R5 R6 R3
       68 JUMPIFNOT                        R5 ; [+20]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R9 R10 K0 ["state"]
       72 GETTABLEKS                       R8 R9 K2 ["versionsRootItems"]
       74 GETTABLE                         R7 R8 R3
       75 GETTABLEKS                       R6 R7 K3 ["descriptionColumn"]
       77 GETTABLEKS                       R5 R6 K4 ["versionDescription"]
       79 JUMPIFEQ                         R1 R5 ; [+9]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R5 R6 K8 ["versionsSaveInput"]
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

PROTO_46:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["state"]
        3 GETTABLEKS                       R5 R6 K1 ["versionsRootItems"]
        5 GETTABLE                         R6 R5 R1
        6 JUMPIFNOT                        R6 ; [+37]
        7 GETUPVAL                         R10 0
        8 GETTABLEKS                       R9 R10 K2 ["props"]
       10 GETTABLEKS                       R8 R9 K3 ["changeTable"]
       12 GETTABLEKS                       R7 R8 K4 ["VersionDescriptionSave"]
       14 JUMPIFNOT                        R7 ; [+8]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K2 ["props"]
       18 GETTABLEKS                       R7 R8 K3 ["changeTable"]
       20 GETTABLEKS                       R6 R7 K4 ["VersionDescriptionSave"]
       22 JUMP                             ; [+2]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 SETTABLE                         R0 R7 R1
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K2 ["props"]
       32 GETTABLEKS                       R8 R9 K5 ["makeChangeRequest"]
       34 LOADK                            R9 K4 ["VersionDescriptionSave"]
       35 MOVE                             R10 R6
       36 MOVE                             R11 R7
       37 GETUPVAL                         R12 2
       38 CALL                             R8 4 0
       39 GETTABLE                         R9 R5 R1
       40 GETTABLEKS                       R8 R9 K6 ["descriptionColumn"]
       42 SETTABLEKS                       R0 R8 K7 ["versionDescription"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K8 ["versionsSetStates"]
       47 MOVE                             R7 R5
       48 MOVE                             R8 R2
       49 MOVE                             R9 R3
       50 MOVE                             R10 R4
       51 CALL                             R6 4 0
       52 RETURN                           R0 0

PROTO_47:
        0 DUPTABLE                         R4 K2 [{"versionsPageRootItems", "versionsRootItems"}]
        1 GETUPVAL                         R5 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 MOVE                             R7 R2
        4 JUMP                             ; [+5]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R8 R9 K3 ["state"]
        8 GETTABLEKS                       R7 R8 K4 ["versionsPageIndex"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R8 R3
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R8 R9 K5 ["VERSIONS_ROWS_PER_PAGE"]
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

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R1 K2 [-1] ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["versionsOnDescClicked"]
       10 LOADN                            R2 255
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["state"]
       14 GETTABLEKS                       R3 R4 K4 ["versionsPreviousInput"]
       16 MOVE                             R4 R0
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["versionDescriptionErrors"]
        5 SETTABLE                         R1 R2 R0
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R5 K2 [{"versionDescriptionErrors"}]
        8 SETTABLEKS                       R2 R5 K1 ["versionDescriptionErrors"]
       10 NAMECALL                         R3 R3 K3 ["setState"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["versionsSaveInput"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["state"]
        6 GETTABLEKS                       R3 R4 K2 ["versionsPreviousInput"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K1 ["state"]
       11 GETTABLEKS                       R4 R5 K3 ["versionsOpenInputKey"]
       13 LOADN                            R5 255
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 CALL                             R2 5 0
       17 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["versionsOpenInputKey"]
        5 JUMPIFEQKN                       R2 K2 [1] ; [+12]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["versionsOnDescClicked"]
       10 LOADN                            R3 255
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K0 ["state"]
       14 GETTABLEKS                       R4 R5 K4 ["versionsPreviousInput"]
       16 LOADB                            R5 0
       17 CALL                             R2 3 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["setTab"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_55:
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
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K5 ["props"]
       19 GETTABLEKS                       R3 R4 K6 ["makeChangeRequest"]
       21 LOADK                            R4 K7 ["AssetConfigIconSelect"]
       22 LOADK                            R5 K8 [""]
       23 GETTABLEKS                       R6 R0 K9 ["Name"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K5 ["props"]
       29 GETTABLEKS                       R3 R4 K10 ["updateStore"]
       31 DUPTABLE                         R4 K3 [{"iconFile"}]
       32 SETTABLEKS                       R0 R4 K2 ["iconFile"]
       34 CALL                             R3 1 0
       35 CLOSEUPVALS                      R0
       36 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isAssetPublic"}]
        2 SETTABLEKS                       R0 R3 K0 ["isAssetPublic"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["SharingEnabled"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K3 ["props"]
       16 GETTABLEKS                       R5 R6 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R5 K5 ["SharingEnabled"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 JUMPIF                           R0 ; [+17]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K8 ["state"]
       27 GETTABLEKS                       R3 R1 K9 ["copyOnOriginalValue"]
       29 GETTABLEKS                       R4 R1 K10 ["copyOn"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K11 ["toggleCopy"]
       38 LOADB                            R4 0
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 MOVE                             R2 R0
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["verification"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETTABLEKS                       R3 R0 K1 ["verification"]
       10 GETTABLEKS                       R2 R3 K2 ["isVerified"]
       12 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
       14 GETIMPORT                        R5 K7 [Enum.AssetType.Plugin]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 AND                              R4 R2 R3
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETTABLEKS                       R5 R1 K8 ["dispatchGetAssetMediaMetadataArray"]
       24 GETTABLEKS                       R7 R1 K9 ["Network"]
       26 GETTABLEKS                       R6 R7 K10 ["networkInterface"]
       28 GETTABLEKS                       R7 R1 K11 ["assetId"]
       30 CALL                             R5 2 0
       31 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["assetId"]
        9 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       11 GETTABLEKS                       R4 R0 K5 ["isPackageAsset"]
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+8]
       20 NEWTABLE                         R6 0 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K6 ["Package"]
       25 SETLIST                          R6 R7 1 [1]
       27 MOVE                             R5 R6
       28 GETTABLEKS                       R6 R0 K7 ["dispatchGetPublishingRequirements"]
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 MOVE                             R9 R3
       33 MOVE                             R10 R5
       34 CALL                             R6 4 -1
       35 RETURN                           R6 -1

PROTO_60:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
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

PROTO_61:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isCatalogAsset"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["assetTypeEnum"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+10]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["isUGCBundleType"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K1 ["props"]
       16 GETTABLEKS                       R1 R2 K2 ["assetTypeEnum"]
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+5]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K1 ["props"]
       23 GETTABLEKS                       R0 R1 K4 ["assetTypeValidationSucceeded"]
       25 RETURN                           R0 1

PROTO_62:
        0 GETIMPORT                        R0 K1 [pairs]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["state"]
        5 GETTABLEKS                       R1 R3 K3 ["versionDescriptionErrors"]
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADB                            R5 0
       11 RETURN                           R5 1
       12 FORGLOOP                         R0 2 ; [-4]
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_63:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 DUPTABLE                         R2 K6 [{"TextSize", "Font", "Icon", "onButtonClicked", "onClose"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K7 ["FONT_SIZE_MEDIUM"]
        7 SETTABLEKS                       R3 R2 K1 ["TextSize"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K8 ["FONT"]
       12 SETTABLEKS                       R3 R2 K2 ["Font"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K9 ["INFO_ICON"]
       17 SETTABLEKS                       R3 R2 K3 ["Icon"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K10 ["tryCloseAssetConfig"]
       22 SETTABLEKS                       R3 R2 K4 ["onButtonClicked"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K11 ["onMessageBoxClosed"]
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
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K8 ["FONT"]
       63 SETTABLEKS                       R5 R4 K2 ["Font"]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R5 R6 K7 ["FONT_SIZE_MEDIUM"]
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
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R5 R6 K8 ["FONT"]
      111 SETTABLEKS                       R5 R4 K2 ["Font"]
      113 GETUPVAL                         R6 1
      114 GETTABLEKS                       R5 R6 K7 ["FONT_SIZE_MEDIUM"]
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
      131 GETUPVAL                         R7 1
      132 GETTABLEKS                       R6 R7 K8 ["FONT"]
      134 SETTABLEKS                       R6 R5 K2 ["Font"]
      136 GETUPVAL                         R7 1
      137 GETTABLEKS                       R6 R7 K7 ["FONT_SIZE_MEDIUM"]
      139 SETTABLEKS                       R6 R5 K1 ["TextSize"]
      141 LOADK                            R6 K23 ["yes"]
      142 SETTABLEKS                       R6 R5 K19 ["action"]
      144 SETLIST                          R3 R4 2 [1]
      146 SETTABLEKS                       R3 R2 K24 ["buttons"]
      148 RETURN                           R2 1

PROTO_64:
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
      113 GETUPVAL                         R7 1
      114 GETTABLEKS                       R6 R7 K35 ["VERSIONS_ROWS_PER_PAGE"]
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
      134 GETUPVAL                         R4 3
      135 GETTABLEKS                       R3 R4 K41 ["getThumbnailSkinColor"]
      137 GETTABLEKS                       R5 R0 K42 ["props"]
      139 GETTABLEKS                       R4 R5 K43 ["Plugin"]
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
      162 GETUPVAL                         R4 3
      163 GETTABLEKS                       R3 R4 K50 ["hasAllowedAssetTypesForRelease"]
      165 GETTABLEKS                       R5 R0 K42 ["props"]
      167 GETTABLEKS                       R4 R5 K51 ["allowedAssetTypesForRelease"]
      169 CALL                             R3 1 1
      170 JUMPIFNOT                        R3 ; [+9]
      171 GETUPVAL                         R5 3
      172 GETTABLEKS                       R4 R5 K52 ["isBuyableMarketplaceAsset"]
      174 GETTABLEKS                       R6 R0 K42 ["props"]
      176 GETTABLEKS                       R5 R6 K53 ["assetTypeEnum"]
      178 CALL                             R4 1 1
      179 NOT                              R3 R4
      180 SETTABLEKS                       R3 R2 K20 ["isAssetTypeSelectionAllowed"]
      182 GETUPVAL                         R3 3
      183 GETTABLEKS                       R2 R3 K54 ["isMarketplaceAsset"]
      185 GETTABLEKS                       R3 R1 K53 ["assetTypeEnum"]
      187 CALL                             R2 1 1
      188 JUMPIFNOT                        R2 ; [+9]
      189 GETTABLEKS                       R2 R0 K49 ["state"]
      191 GETUPVAL                         R5 4
      192 GETTABLEKS                       R4 R5 K55 ["ASSET_STATUS"]
      194 GETTABLEKS                       R3 R4 K56 ["OffSale"]
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
      267 CAPTURE                          UPVAL U15
      268 CAPTURE                          UPVAL U1
      269 CAPTURE                          UPVAL U16
      270 CAPTURE                          UPVAL U17
      271 CAPTURE                          VAL R1
      272 CAPTURE                          UPVAL U18
      273 SETTABLEKS                       R2 R0 K68 ["tryPublish"]
      275 NEWCLOSURE                       R2 P9
      276 CAPTURE                          VAL R0
      277 CAPTURE                          VAL R1
      278 CAPTURE                          UPVAL U4
      279 SETTABLEKS                       R2 R0 K69 ["tryCancel"]
      281 NEWCLOSURE                       R2 P10
      282 CAPTURE                          VAL R0
      283 SETTABLEKS                       R2 R0 K70 ["tryCancelNoYield"]
      285 NEWCLOSURE                       R2 P11
      286 CAPTURE                          VAL R0
      287 SETTABLEKS                       R2 R0 K71 ["tryCancelWithYield"]
      289 NEWCLOSURE                       R2 P12
      290 CAPTURE                          VAL R0
      291 SETTABLEKS                       R2 R0 K72 ["onMessageBoxClosed"]
      293 NEWCLOSURE                       R2 P13
      294 CAPTURE                          UPVAL U19
      295 CAPTURE                          VAL R0
      296 CAPTURE                          UPVAL U20
      297 SETTABLEKS                       R2 R0 K73 ["tryCloseAssetConfig"]
      299 NEWCLOSURE                       R2 P14
      300 CAPTURE                          VAL R0
      301 NEWCLOSURE                       R3 P15
      302 CAPTURE                          VAL R0
      303 CAPTURE                          UPVAL U21
      304 SETTABLEKS                       R3 R0 K74 ["onNameChange"]
      306 NEWCLOSURE                       R3 P16
      307 CAPTURE                          VAL R0
      308 CAPTURE                          UPVAL U21
      309 SETTABLEKS                       R3 R0 K75 ["onDescChange"]
      311 NEWCLOSURE                       R3 P17
      312 CAPTURE                          VAL R0
      313 SETTABLEKS                       R3 R0 K76 ["onStatusChange"]
      315 NEWCLOSURE                       R3 P18
      316 CAPTURE                          VAL R0
      317 SETTABLEKS                       R3 R0 K77 ["onPriceChange"]
      319 GETUPVAL                         R3 22
      320 CALL                             R3 0 1
      321 JUMPIFNOT                        R3 ; [+10]
      322 NEWCLOSURE                       R3 P19
      323 CAPTURE                          VAL R0
      324 SETTABLEKS                       R3 R0 K78 ["onCategoryChange"]
      326 NEWCLOSURE                       R3 P20
      327 CAPTURE                          UPVAL U3
      328 CAPTURE                          VAL R0
      329 CAPTURE                          UPVAL U23
      330 SETTABLEKS                       R3 R0 K79 ["getUploadPermissionStatus"]
      332 NEWCLOSURE                       R3 P21
      333 CAPTURE                          VAL R0
      334 CAPTURE                          UPVAL U24
      335 CAPTURE                          UPVAL U7
      336 CAPTURE                          UPVAL U22
      337 SETTABLEKS                       R3 R0 K80 ["onAccessChange"]
      339 NEWCLOSURE                       R3 P22
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R3 R0 K81 ["onDataConsentToggleClick"]
      343 NEWCLOSURE                       R3 P23
      344 CAPTURE                          VAL R0
      345 SETTABLEKS                       R3 R0 K82 ["toggleCopy"]
      347 NEWCLOSURE                       R3 P24
      348 CAPTURE                          VAL R0
      349 SETTABLEKS                       R3 R0 K83 ["toggleComment"]
      351 NEWCLOSURE                       R3 P25
      352 CAPTURE                          VAL R0
      353 SETTABLEKS                       R3 R0 K84 ["toggleDeleteLocal"]
      355 GETUPVAL                         R4 2
      356 CALL                             R4 0 1
      357 JUMPIFNOT                        R4 ; [+4]
      358 NEWCLOSURE                       R3 P26
      359 CAPTURE                          VAL R0
      360 CAPTURE                          UPVAL U3
      361 JUMP                             ; [+1]
      362 LOADNIL                          R3
      363 SETTABLEKS                       R3 R0 K85 ["onSelectedColorChange"]
      365 NEWCLOSURE                       R3 P27
      366 CAPTURE                          VAL R0
      367 CAPTURE                          UPVAL U19
      368 CAPTURE                          UPVAL U20
      369 SETTABLEKS                       R3 R0 K86 ["versionsOnDescClicked"]
      371 NEWCLOSURE                       R3 P28
      372 CAPTURE                          VAL R0
      373 CAPTURE                          UPVAL U25
      374 CAPTURE                          UPVAL U26
      375 SETTABLEKS                       R3 R0 K87 ["versionsSaveInput"]
      377 NEWCLOSURE                       R3 P29
      378 CAPTURE                          VAL R0
      379 CAPTURE                          UPVAL U1
      380 SETTABLEKS                       R3 R0 K88 ["versionsSetStates"]
      382 NEWCLOSURE                       R3 P30
      383 CAPTURE                          VAL R0
      384 SETTABLEKS                       R3 R0 K89 ["versionsCloseInput"]
      386 NEWCLOSURE                       R3 P31
      387 CAPTURE                          VAL R0
      388 SETTABLEKS                       R3 R0 K90 ["setVersionError"]
      390 NEWCLOSURE                       R3 P32
      391 CAPTURE                          VAL R0
      392 SETTABLEKS                       R3 R0 K91 ["versionsSetPreviousInput"]
      394 NEWCLOSURE                       R3 P33
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R3 R0 K92 ["versionsOnPageChange"]
      398 NEWCLOSURE                       R3 P34
      399 CAPTURE                          VAL R0
      400 CAPTURE                          VAL R1
      401 SETTABLEKS                       R3 R0 K93 ["onTabSelect"]
      403 NEWCLOSURE                       R3 P35
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R3 R0 K94 ["onOverrideAssetSelected"]
      407 NEWCLOSURE                       R3 P36
      408 CAPTURE                          UPVAL U3
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R3 R0 K95 ["chooseThumbnail"]
      412 NEWCLOSURE                       R3 P37
      413 CAPTURE                          VAL R0
      414 SETTABLEKS                       R3 R0 K96 ["onSharingChanged"]
      416 NEWCLOSURE                       R3 P38
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R3 R0 K97 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      420 NEWCLOSURE                       R3 P39
      421 CAPTURE                          VAL R0
      422 CAPTURE                          UPVAL U27
      423 SETTABLEKS                       R3 R0 K98 ["getPublishingRequirements"]
      425 NEWCLOSURE                       R3 P40
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R3 R0 K99 ["onAdditionalImagesChanged"]
      429 NEWCLOSURE                       R3 P41
      430 CAPTURE                          UPVAL U3
      431 CAPTURE                          VAL R0
      432 SETTABLEKS                       R3 R0 K100 ["isValidCatalogAsset"]
      434 NEWCLOSURE                       R3 P42
      435 CAPTURE                          VAL R0
      436 SETTABLEKS                       R3 R0 K101 ["validVersionDescriptions"]
      438 NEWCLOSURE                       R3 P43
      439 CAPTURE                          VAL R0
      440 CAPTURE                          UPVAL U1
      441 CAPTURE                          UPVAL U28
      442 SETTABLEKS                       R3 R0 K102 ["getMessageBoxProps"]
      444 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_66:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_67:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["screenFlowType"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["FLOW_TYPE"]
        8 GETTABLEKS                       R3 R4 K3 ["EDIT_FLOW"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+6]
       12 GETTABLEKS                       R3 R0 K4 ["state"]
       14 GETTABLEKS                       R2 R3 K5 ["assetId"]
       16 NOT                              R1 R2
       17 RETURN                           R1 1

PROTO_68:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K1 ["join"]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_69:
        0 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        2 JUMPIFEQKNIL                     R3 ; [+12]
        4 GETTABLEKS                       R3 R1 K0 ["isPackageAsset"]
        6 GETTABLEKS                       R5 R0 K1 ["props"]
        8 GETTABLEKS                       R4 R5 K0 ["isPackageAsset"]
       10 JUMPIFEQ                         R3 R4 ; [+4]
       12 GETTABLEKS                       R3 R0 K2 ["getPublishingRequirements"]
       14 CALL                             R3 0 0
       15 GETTABLEKS                       R4 R0 K1 ["props"]
       17 GETTABLEKS                       R3 R4 K3 ["screenFlowType"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["FLOW_TYPE"]
       22 GETTABLEKS                       R4 R5 K5 ["EDIT_FLOW"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+225]
       26 GETTABLEKS                       R4 R0 K1 ["props"]
       28 GETTABLEKS                       R3 R4 K6 ["assetConfigData"]
       30 GETIMPORT                        R4 K8 [next]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R5 R0 K9 ["state"]
       38 GETTABLEKS                       R4 R5 K10 ["dispatchGetFunction"]
       40 JUMPIF                           R4 ; [+86]
       41 GETTABLEKS                       R4 R3 K11 ["Creator"]
       43 JUMPIF                           R4 ; [+2]
       44 NEWTABLE                         R4 0 0
       46 GETTABLEKS                       R7 R0 K9 ["state"]
       48 GETTABLEKS                       R6 R7 K12 ["groupMetadata"]
       50 NOT                              R5 R6
       51 JUMPIF                           R5 ; [+11]
       52 GETIMPORT                        R6 K8 [next]
       54 GETTABLEKS                       R8 R0 K9 ["state"]
       56 GETTABLEKS                       R7 R8 K12 ["groupMetadata"]
       58 CALL                             R6 1 1
       59 JUMPIFEQKNIL                     R6 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 GETTABLEKS                       R6 R4 K13 ["typeId"]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R8 R9 K14 ["OWNER_TYPES"]
       68 GETTABLEKS                       R7 R8 K15 ["User"]
       70 JUMPIFNOTEQ                      R6 R7 ; [+19]
       72 GETTABLEKS                       R6 R4 K16 ["username"]
       74 JUMPIF                           R6 ; [+15]
       75 GETTABLEKS                       R7 R0 K1 ["props"]
       77 GETTABLEKS                       R6 R7 K17 ["dispatchGetUsername"]
       79 GETTABLEKS                       R7 R4 K18 ["targetId"]
       81 CALL                             R6 1 0
       82 DUPTABLE                         R8 K19 [{"dispatchGetFunction"}]
       83 LOADB                            R9 1
       84 SETTABLEKS                       R9 R8 K10 ["dispatchGetFunction"]
       86 NAMECALL                         R6 R0 K20 ["setState"]
       88 CALL                             R6 2 0
       89 JUMP                             ; [+37]
       90 GETTABLEKS                       R6 R4 K13 ["typeId"]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R8 R9 K14 ["OWNER_TYPES"]
       95 GETTABLEKS                       R7 R8 K21 ["Group"]
       97 JUMPIFNOTEQ                      R6 R7 ; [+29]
       99 JUMPIFNOT                        R5 ; [+27]
      100 GETTABLEKS                       R7 R0 K1 ["props"]
      102 GETTABLEKS                       R6 R7 K22 ["dispatchGetGroupMetadata"]
      104 GETTABLEKS                       R7 R4 K18 ["targetId"]
      106 CALL                             R6 1 0
      107 GETTABLEKS                       R7 R0 K1 ["props"]
      109 GETTABLEKS                       R6 R7 K23 ["dispatchGetGroupRoleInfo"]
      111 GETTABLEKS                       R9 R0 K1 ["props"]
      113 GETTABLEKS                       R8 R9 K24 ["Network"]
      115 GETTABLEKS                       R7 R8 K25 ["networkInterface"]
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
      134 GETUPVAL                         R6 2
      135 GETTABLEKS                       R5 R6 K28 ["isAssetPublic"]
      137 GETTABLEKS                       R6 R3 K27 ["AssetPermissions"]
      139 CALL                             R5 1 1
      140 MOVE                             R4 R5
      141 GETTABLEKS                       R5 R3 K29 ["Status"]
      143 GETTABLEKS                       R6 R3 K30 ["IsCopyingAllowed"]
      145 JUMPIF                           R6 ; [+5]
      146 GETUPVAL                         R7 3
      147 GETTABLEKS                       R6 R7 K31 ["isOnSale"]
      149 MOVE                             R7 R5
      150 CALL                             R6 1 1
      151 GETTABLEKS                       R8 R0 K1 ["props"]
      153 GETTABLEKS                       R7 R8 K32 ["fiatProduct"]
      155 JUMPIFNOT                        R7 ; [+6]
      156 GETTABLEKS                       R8 R0 K1 ["props"]
      158 GETTABLEKS                       R7 R8 K32 ["fiatProduct"]
      160 GETTABLEKS                       R6 R7 K33 ["purchasable"]
      162 LOADNIL                          R7
      163 GETUPVAL                         R8 4
      164 JUMPIFNOT                        R8 ; [+14]
      165 GETTABLEKS                       R8 R0 K1 ["props"]
      167 GETTABLEKS                       R7 R8 K34 ["isPublishingAllowed"]
      169 GETTABLEKS                       R9 R0 K1 ["props"]
      171 GETTABLEKS                       R8 R9 K0 ["isPackageAsset"]
      173 JUMPIFNOT                        R8 ; [+5]
      174 GETTABLEKS                       R9 R0 K1 ["props"]
      176 GETTABLEKS                       R8 R9 K36 ["isPackageMarketplacePublishAllowed"]
      178 ORK                              R7 R8 K35 [False]
      179 GETUPVAL                         R9 5
      180 GETTABLEKS                       R8 R9 K37 ["getRestrictionThatAppliesToAsset"]
      182 GETTABLEKS                       R10 R0 K1 ["props"]
      184 GETTABLEKS                       R9 R10 K38 ["publishingRestrictions"]
      186 CALL                             R8 1 1
      187 DUPTABLE                         R11 K51 [{"assetId", "name", "description", "owner", "allowCopy", "copyOn", "copyOnOriginalValue", "commentOn", "price", "status", "isAssetPublic", "isAssetPublicOriginalValue", "publishingRestriction"}]
      188 GETUPVAL                         R14 3
      189 GETTABLEKS                       R13 R14 K52 ["isMarketplaceAsset"]
      191 GETTABLEKS                       R15 R0 K1 ["props"]
      193 GETTABLEKS                       R14 R15 K53 ["assetTypeEnum"]
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
      250 GETTABLEKS                       R4 R0 K1 ["props"]
      252 GETTABLEKS                       R3 R4 K60 ["isVerifiedCreator"]
      254 JUMPIFEQKNIL                     R3 ; [+21]
      256 GETTABLEKS                       R4 R0 K9 ["state"]
      258 GETTABLEKS                       R3 R4 K43 ["allowCopy"]
      260 GETTABLEKS                       R5 R0 K1 ["props"]
      262 GETTABLEKS                       R4 R5 K60 ["isVerifiedCreator"]
      264 JUMPIFEQ                         R3 R4 ; [+11]
      266 DUPTABLE                         R5 K61 [{"allowCopy"}]
      267 GETTABLEKS                       R7 R0 K1 ["props"]
      269 GETTABLEKS                       R6 R7 K60 ["isVerifiedCreator"]
      271 SETTABLEKS                       R6 R5 K43 ["allowCopy"]
      273 NAMECALL                         R3 R0 K20 ["setState"]
      275 CALL                             R3 2 0
      276 GETTABLEKS                       R4 R0 K1 ["props"]
      278 GETTABLEKS                       R3 R4 K3 ["screenFlowType"]
      280 GETUPVAL                         R6 0
      281 GETTABLEKS                       R5 R6 K4 ["FLOW_TYPE"]
      283 GETTABLEKS                       R4 R5 K62 ["UPLOAD_FLOW"]
      285 JUMPIFNOTEQ                      R3 R4 ; [+12]
      287 GETTABLEKS                       R3 R1 K53 ["assetTypeEnum"]
      289 GETTABLEKS                       R5 R0 K1 ["props"]
      291 GETTABLEKS                       R4 R5 K53 ["assetTypeEnum"]
      293 JUMPIFEQ                         R3 R4 ; [+4]
      295 NAMECALL                         R3 R0 K63 ["getAssetInformation"]
      297 CALL                             R3 1 0
      298 GETTABLEKS                       R3 R2 K64 ["versionsCurrentItem"]
      300 GETTABLEKS                       R5 R0 K1 ["props"]
      302 GETTABLEKS                       R4 R5 K65 ["versionHistory"]
      304 GETIMPORT                        R5 K8 [next]
      306 MOVE                             R6 R3
      307 CALL                             R5 1 1
      308 JUMPIF                           R5 ; [+65]
      309 JUMPIFNOT                        R4 ; [+64]
      310 NEWTABLE                         R5 0 0
      312 GETIMPORT                        R6 K67 [ipairs]
      314 MOVE                             R7 R4
      315 CALL                             R6 1 3
      316 FORGPREP_INEXT                   R6
      317 GETTABLEKS                       R11 R10 K68 ["assetVersionNumber"]
      319 DUPTABLE                         R12 K72 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      320 GETTABLEKS                       R13 R10 K68 ["assetVersionNumber"]
      322 SETTABLEKS                       R13 R12 K69 ["versionColumn"]
      324 DUPTABLE                         R13 K77 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      325 GETTABLEKS                       R14 R10 K73 ["versionDescription"]
      327 SETTABLEKS                       R14 R13 K73 ["versionDescription"]
      329 GETTABLEKS                       R14 R10 K74 ["created"]
      331 SETTABLEKS                       R14 R13 K74 ["created"]
      333 GETTABLEKS                       R14 R10 K68 ["assetVersionNumber"]
      335 SETTABLEKS                       R14 R13 K68 ["assetVersionNumber"]
      337 GETTABLEKS                       R14 R10 K78 ["creatorTargetId"]
      339 SETTABLEKS                       R14 R13 K75 ["creatorId"]
      341 GETTABLEKS                       R14 R10 K76 ["creatorType"]
      343 SETTABLEKS                       R14 R13 K76 ["creatorType"]
      345 SETTABLEKS                       R13 R12 K70 ["descriptionColumn"]
      347 GETTABLEKS                       R13 R10 K68 ["assetVersionNumber"]
      349 SETTABLEKS                       R13 R12 K71 ["restoreColumn"]
      351 SETTABLE                         R12 R5 R11
      352 FORGLOOP                         R6 2 [inext] ; [-36]
      354 DUPTABLE                         R8 K81 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      355 GETUPVAL                         R9 6
      356 MOVE                             R10 R4
      357 CALL                             R9 1 1
      358 SETTABLEKS                       R9 R8 K64 ["versionsCurrentItem"]
      360 SETTABLEKS                       R5 R8 K79 ["versionsRootItems"]
      362 LOADN                            R11 1
      363 GETUPVAL                         R13 7
      364 GETTABLEKS                       R12 R13 K82 ["VERSIONS_ROWS_PER_PAGE"]
      366 NAMECALL                         R9 R0 K83 ["versionsGetPageRootItems"]
      368 CALL                             R9 3 1
      369 SETTABLEKS                       R9 R8 K80 ["versionsPageRootItems"]
      371 NAMECALL                         R6 R0 K20 ["setState"]
      373 CALL                             R6 2 0
      374 RETURN                           R0 0

PROTO_70:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWTABLE                         R5 0 0
        4 GETTABLEKS                       R7 R0 K0 ["state"]
        6 GETTABLEKS                       R6 R7 K1 ["versionsRootItems"]
        8 JUMPIFNOT                        R6 ; [+25]
        9 SUBK                             R7 R1 K2 [1]
       10 MUL                              R6 R7 R2
       11 ADDK                             R3 R6 K2 [1]
       12 ADD                              R6 R3 R2
       13 SUBK                             R4 R6 K2 [1]
       14 GETTABLEKS                       R10 R0 K0 ["state"]
       16 GETTABLEKS                       R9 R10 K1 ["versionsRootItems"]
       18 LENGTH                           R8 R9
       19 LOADN                            R6 1
       20 LOADN                            R7 255
       21 FORNPREP                         R6
       22 GETTABLEKS                       R13 R0 K0 ["state"]
       24 GETTABLEKS                       R12 R13 K1 ["versionsRootItems"]
       26 GETTABLE                         R11 R12 R8
       27 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       29 MOVE                             R10 R5
       30 GETIMPORT                        R9 K5 [table.insert]
       32 CALL                             R9 2 0
       33 FORNLOOP                         R6
       34 GETTABLEKS                       R7 R0 K0 ["state"]
       36 GETTABLEKS                       R6 R7 K1 ["versionsRootItems"]
       38 JUMPIFNOT                        R6 ; [+5]
       39 GETUPVAL                         R6 0
       40 MOVE                             R7 R5
       41 MOVE                             R8 R3
       42 MOVE                             R9 R4
       43 CALL                             R6 3 1
       44 GETTABLEKS                       R9 R0 K0 ["state"]
       46 GETTABLEKS                       R8 R9 K1 ["versionsRootItems"]
       48 JUMPIFNOT                        R8 ; [+2]
       49 MOVE                             R7 R6
       50 RETURN                           R7 1
       51 NEWTABLE                         R7 0 0
       53 RETURN                           R7 1

PROTO_71:
        0 DUPTABLE                         R0 K2 [{"dataSharingEnabled", "dataSharingToggled"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["isEligible"]
        4 SETTABLEKS                       R1 R0 K0 ["dataSharingEnabled"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["isEligible"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["configurations"]
       13 GETTABLEN                        R3 R4 1
       14 GETTABLEKS                       R2 R3 K5 ["isOptOut"]
       16 NOT                              R1 R2
       17 SETTABLEKS                       R1 R0 K1 ["dataSharingToggled"]
       19 RETURN                           R0 1

PROTO_72:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 CALL                             R1 1 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["andThen"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_74:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R2 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_75:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["status"]
        4 RETURN                           R0 1

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEN                        R2 R3 1
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_78:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_79:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["assetId"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["instances"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R4 R5 K4 ["changeTable"]
       14 MOVE                             R5 R4
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETIMPORT                        R6 K6 [next]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K7 ["FLOW_TYPE"]
       27 GETTABLEKS                       R6 R7 K8 ["EDIT_FLOW"]
       29 GETTABLEKS                       R8 R0 K0 ["props"]
       31 GETTABLEKS                       R7 R8 K9 ["screenFlowType"]
       33 JUMPIFNOTEQ                      R6 R7 ; [+92]
       35 JUMPIFNOT                        R1 ; [+299]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K10 ["isCatalogAsset"]
       39 GETTABLEKS                       R8 R0 K0 ["props"]
       41 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+14]
       45 GETTABLEKS                       R7 R0 K0 ["props"]
       47 GETTABLEKS                       R6 R7 K12 ["getAssetDetails"]
       49 GETTABLEKS                       R9 R0 K0 ["props"]
       51 GETTABLEKS                       R8 R9 K13 ["Network"]
       53 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
       55 MOVE                             R8 R1
       56 LOADB                            R9 0
       57 CALL                             R6 3 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R6 R0 K15 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
       61 CALL                             R6 0 0
       62 GETTABLEKS                       R7 R0 K0 ["props"]
       64 GETTABLEKS                       R6 R7 K16 ["dispatchGetMarketplaceInfo"]
       66 GETTABLEKS                       R9 R0 K0 ["props"]
       68 GETTABLEKS                       R8 R9 K13 ["Network"]
       70 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
       72 MOVE                             R8 R1
       73 CALL                             R6 2 0
       74 GETTABLEKS                       R7 R0 K0 ["props"]
       76 GETTABLEKS                       R6 R7 K17 ["isPackageAsset"]
       78 JUMPIFNOTEQKNIL                  R6 ; [+13]
       80 GETTABLEKS                       R7 R0 K0 ["props"]
       82 GETTABLEKS                       R6 R7 K18 ["dispatchPostPackageMetadataRequest"]
       84 GETTABLEKS                       R9 R0 K0 ["props"]
       86 GETTABLEKS                       R8 R9 K13 ["Network"]
       88 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
       90 MOVE                             R8 R1
       91 CALL                             R6 2 0
       92 GETTABLEKS                       R7 R0 K0 ["props"]
       94 GETTABLEKS                       R6 R7 K19 ["dispatchGetPackageCollaboratorsRequest"]
       96 GETTABLEKS                       R9 R0 K0 ["props"]
       98 GETTABLEKS                       R8 R9 K13 ["Network"]
      100 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
      102 MOVE                             R8 R1
      103 CALL                             R6 2 0
      104 GETTABLEKS                       R7 R0 K0 ["props"]
      106 GETTABLEKS                       R6 R7 K20 ["hasPackagePermission"]
      108 JUMPIF                           R6 ; [+226]
      109 GETTABLEKS                       R7 R0 K0 ["props"]
      111 GETTABLEKS                       R6 R7 K21 ["dispatchPostAssetCheckPermissions"]
      113 GETTABLEKS                       R9 R0 K0 ["props"]
      115 GETTABLEKS                       R8 R9 K13 ["Network"]
      117 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
      119 NEWTABLE                         R8 0 1
      121 MOVE                             R9 R1
      122 SETLIST                          R8 R9 1 [1]
      124 CALL                             R6 2 0
      125 RETURN                           R0 0
      126 GETTABLEKS                       R7 R0 K0 ["props"]
      128 GETTABLEKS                       R6 R7 K9 ["screenFlowType"]
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R8 R9 K7 ["FLOW_TYPE"]
      133 GETTABLEKS                       R7 R8 K22 ["UPLOAD_FLOW"]
      135 JUMPIFNOTEQ                      R6 R7 ; [+20]
      137 GETUPVAL                         R7 1
      138 GETTABLEKS                       R6 R7 K23 ["isMarketplaceAsset"]
      140 GETTABLEKS                       R8 R0 K0 ["props"]
      142 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
      144 CALL                             R6 1 1
      145 JUMPIFNOT                        R6 ; [+6]
      146 DUPCLOSURE                       R8 K24 [PROTO_74]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_75]
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
      201 GETTABLEKS                       R7 R0 K0 ["props"]
      203 GETTABLEKS                       R6 R7 K32 ["getIsVerifiedCreator"]
      205 GETTABLEKS                       R9 R0 K0 ["props"]
      207 GETTABLEKS                       R8 R9 K13 ["Network"]
      209 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
      211 CALL                             R6 1 0
      212 GETUPVAL                         R7 1
      213 GETTABLEKS                       R6 R7 K10 ["isCatalogAsset"]
      215 GETTABLEKS                       R8 R0 K0 ["props"]
      217 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
      219 CALL                             R6 1 1
      220 JUMPIFNOT                        R6 ; [+17]
      221 GETTABLEKS                       R7 R0 K0 ["props"]
      223 GETTABLEKS                       R6 R7 K33 ["getItemUploadFee"]
      225 GETTABLEKS                       R9 R0 K0 ["props"]
      227 GETTABLEKS                       R8 R9 K13 ["Network"]
      229 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
      231 GETTABLEKS                       R9 R0 K0 ["props"]
      233 GETTABLEKS                       R8 R9 K11 ["assetTypeEnum"]
      235 LOADB                            R9 0
      236 CALL                             R6 3 0
      237 JUMP                             ; [+29]
      238 GETUPVAL                         R7 1
      239 GETTABLEKS                       R6 R7 K34 ["isUGCBundleType"]
      241 GETTABLEKS                       R8 R0 K0 ["props"]
      243 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
      245 CALL                             R6 1 1
      246 JUMPIFNOT                        R6 ; [+17]
      247 GETTABLEKS                       R7 R0 K0 ["props"]
      249 GETTABLEKS                       R6 R7 K33 ["getItemUploadFee"]
      251 GETTABLEKS                       R9 R0 K0 ["props"]
      253 GETTABLEKS                       R8 R9 K13 ["Network"]
      255 GETTABLEKS                       R7 R8 K14 ["networkInterface"]
      257 GETTABLEKS                       R9 R0 K0 ["props"]
      259 GETTABLEKS                       R8 R9 K11 ["assetTypeEnum"]
      261 LOADB                            R9 1
      262 CALL                             R6 3 0
      263 JUMP                             ; [+3]
      264 GETTABLEKS                       R6 R0 K35 ["getPublishingRequirements"]
      266 CALL                             R6 0 0
      267 GETTABLEKS                       R7 R0 K0 ["props"]
      269 GETTABLEKS                       R6 R7 K36 ["dispatchSetDescendantPermissions"]
      271 NEWTABLE                         R7 0 0
      273 CALL                             R6 1 0
      274 DUPTABLE                         R8 K38 [{"descendantIds"}]
      275 NEWTABLE                         R9 0 0
      277 SETTABLEKS                       R9 R8 K37 ["descendantIds"]
      279 NAMECALL                         R6 R0 K25 ["setState"]
      281 CALL                             R6 2 0
      282 NEWTABLE                         R6 0 0
      284 JUMPIFNOT                        R2 ; [+50]
      285 GETTABLEKS                       R8 R0 K0 ["props"]
      287 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
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

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_81:
        0 NAMECALL                         R1 R0 K0 ["attachXButtonCallback"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["hasAllowedAssetTypesForRelease"]
        6 GETTABLEKS                       R3 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["allowedAssetTypesForRelease"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+9]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K4 ["isBuyableMarketplaceAsset"]
       15 GETTABLEKS                       R4 R0 K2 ["props"]
       17 GETTABLEKS                       R3 R4 K5 ["assetTypeEnum"]
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
       35 GETTABLEKS                       R3 R0 K2 ["props"]
       37 GETTABLEKS                       R2 R3 K9 ["assetId"]
       39 JUMPIFNOT                        R2 ; [+12]
       40 GETTABLEKS                       R4 R0 K2 ["props"]
       42 GETTABLEKS                       R3 R4 K10 ["getVersionsHistory"]
       44 GETTABLEKS                       R6 R0 K2 ["props"]
       46 GETTABLEKS                       R5 R6 K11 ["Network"]
       48 GETTABLEKS                       R4 R5 K12 ["networkInterface"]
       50 MOVE                             R5 R2
       51 CALL                             R3 2 0
       52 NAMECALL                         R3 R0 K13 ["getDefaultBundleDataSharing"]
       54 CALL                             R3 1 0
       55 GETTABLEKS                       R4 R0 K2 ["props"]
       57 GETTABLEKS                       R3 R4 K5 ["assetTypeEnum"]
       59 JUMPIFNOT                        R2 ; [+48]
       60 JUMPIFNOT                        R3 ; [+47]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R4 R5 K14 ["isMarketplaceAsset"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 JUMPIFNOT                        R4 ; [+41]
       67 GETIMPORT                        R4 K18 [Enum.AssetType.Animation]
       69 JUMPIFEQ                         R3 R4 ; [+38]
       71 GETTABLEKS                       R5 R0 K2 ["props"]
       73 GETTABLEKS                       R4 R5 K19 ["dispatchGetFiatProduct"]
       75 GETTABLEKS                       R7 R0 K2 ["props"]
       77 GETTABLEKS                       R6 R7 K11 ["Network"]
       79 GETTABLEKS                       R5 R6 K12 ["networkInterface"]
       81 MOVE                             R6 R2
       82 MOVE                             R7 R3
       83 CALL                             R4 3 0
       84 GETUPVAL                         R4 2
       85 CALL                             R4 0 1
       86 JUMPIFNOT                        R4 ; [+21]
       87 JUMPIFNOT                        R3 ; [+7]
       88 GETUPVAL                         R6 3
       89 GETTABLEKS                       R5 R6 K20 ["MONETIZABLE_ASSET_TYPES"]
       91 GETTABLEKS                       R6 R3 K21 ["Name"]
       93 GETTABLE                         R4 R5 R6
       94 JUMP                             ; [+1]
       95 LOADB                            R4 0
       96 JUMPIFNOT                        R4 ; [+11]
       97 GETTABLEKS                       R6 R0 K2 ["props"]
       99 GETTABLEKS                       R5 R6 K22 ["dispatchGetSellerStatus"]
      101 GETTABLEKS                       R8 R0 K2 ["props"]
      103 GETTABLEKS                       R7 R8 K11 ["Network"]
      105 GETTABLEKS                       R6 R7 K12 ["networkInterface"]
      107 CALL                             R5 1 0
      108 RETURN                           R0 0

PROTO_82:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_84:
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
       30 JUMPIFNOT                        R5 ; [+13]
       31 MOVE                             R4 R0
       32 JUMPIFNOT                        R4 ; [+12]
       33 GETUPVAL                         R7 4
       34 ORK                              R6 R7 K4 [""]
       35 FASTCALL1                        TOSTRING R6 ; [+2]
       36 GETIMPORT                        R5 K6 [tostring]
       38 CALL                             R5 1 1
       39 JUMPIFEQKS                       R5 K4 [""] ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 JUMP                             ; [+1]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K2 ["showDescriptionRequiredError"]
       47 NAMECALL                         R1 R1 K7 ["setState"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_85:
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
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R13 R14 K11 ["FLOW_TYPE"]
       28 GETTABLEKS                       R12 R13 K12 ["UPLOAD_FLOW"]
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
       55 GETUPVAL                         R22 1
       56 GETTABLEKS                       R21 R22 K23 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
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
       93 GETUPVAL                         R32 0
       94 GETTABLEKS                       R31 R32 K33 ["ASSET_STATUS"]
       96 GETTABLEKS                       R30 R31 K34 ["Unknown"]
       98 GETTABLEKS                       R31 R2 K35 ["price"]
      100 GETUPVAL                         R33 3
      101 CALL                             R33 0 1
      102 JUMPIFNOT                        R33 ; [+9]
      103 GETUPVAL                         R34 4
      104 GETTABLEKS                       R33 R34 K36 ["isUGCBundleType"]
      106 MOVE                             R34 R24
      107 CALL                             R33 1 1
      108 JUMPIFNOT                        R33 ; [+3]
      109 GETTABLEKS                       R32 R1 K37 ["groupBundlesUploadEnabledForUser"]
      111 JUMP                             ; [+11]
      112 GETUPVAL                         R33 5
      113 GETTABLEKS                       R32 R33 K38 ["queryParam"]
      115 MOVE                             R33 R25
      116 MOVE                             R34 R24
      117 GETUPVAL                         R37 5
      118 GETTABLEKS                       R36 R37 K39 ["keys"]
      120 GETTABLEKS                       R35 R36 K40 ["SHOW_OWNERSHIP"]
      122 CALL                             R32 3 1
      123 GETUPVAL                         R34 5
      124 GETTABLEKS                       R33 R34 K38 ["queryParam"]
      126 MOVE                             R34 R25
      127 MOVE                             R35 R24
      128 GETUPVAL                         R38 5
      129 GETTABLEKS                       R37 R38 K39 ["keys"]
      131 GETTABLEKS                       R36 R37 K41 ["SHOW_COPY"]
      133 CALL                             R33 3 1
      134 GETTABLEKS                       R34 R1 K42 ["isPackageAsset"]
      136 JUMPIFNOT                        R34 ; [+1]
      137 LOADB                            R33 0
      138 GETTABLEKS                       R35 R0 K1 ["state"]
      140 GETTABLEKS                       R34 R35 K43 ["isAssetTypeSelectionAllowed"]
      142 JUMPIFNOT                        R34 ; [+13]
      143 GETTABLEKS                       R36 R0 K0 ["props"]
      145 GETTABLEKS                       R35 R36 K10 ["screenFlowType"]
      147 GETUPVAL                         R38 0
      148 GETTABLEKS                       R37 R38 K11 ["FLOW_TYPE"]
      150 GETTABLEKS                       R36 R37 K12 ["UPLOAD_FLOW"]
      152 JUMPIFEQ                         R35 R36 ; [+2]
      154 LOADB                            R34 0 +1
      155 LOADB                            R34 1
      156 GETUPVAL                         R36 5
      157 GETTABLEKS                       R35 R36 K38 ["queryParam"]
      159 MOVE                             R36 R25
      160 MOVE                             R37 R24
      161 GETUPVAL                         R40 5
      162 GETTABLEKS                       R39 R40 K39 ["keys"]
      164 GETTABLEKS                       R38 R39 K44 ["SHOW_COMMENT"]
      166 CALL                             R35 3 1
      167 GETUPVAL                         R37 5
      168 GETTABLEKS                       R36 R37 K38 ["queryParam"]
      170 MOVE                             R37 R25
      171 MOVE                             R38 R24
      172 GETUPVAL                         R41 5
      173 GETTABLEKS                       R40 R41 K39 ["keys"]
      175 GETTABLEKS                       R39 R40 K45 ["SHOW_ASSET_TYPE"]
      177 CALL                             R36 3 1
      178 GETUPVAL                         R38 4
      179 GETTABLEKS                       R37 R38 K46 ["getPreviewType"]
      181 MOVE                             R38 R24
      182 GETTABLEKS                       R39 R1 K47 ["instances"]
      184 CALL                             R37 2 1
      185 GETUPVAL                         R38 1
      186 MOVE                             R40 R25
      187 MOVE                             R41 R24
      188 GETTABLEKS                       R43 R0 K0 ["props"]
      190 GETTABLEKS                       R42 R43 K42 ["isPackageAsset"]
      192 MOVE                             R43 R10
      193 NAMECALL                         R38 R38 K48 ["getAssetconfigContent"]
      195 CALL                             R38 5 1
      196 NAMECALL                         R39 R0 K49 ["isLoading"]
      198 CALL                             R39 1 1
      199 GETUPVAL                         R41 6
      200 GETTABLEKS                       R40 R41 K50 ["checkCanSave"]
      202 MOVE                             R41 R26
      203 MOVE                             R42 R8
      204 MOVE                             R43 R9
      205 MOVE                             R44 R6
      206 MOVE                             R45 R25
      207 MOVE                             R46 R24
      208 MOVE                             R47 R23
      209 GETTABLEKS                       R48 R0 K51 ["isValidCatalogAsset"]
      211 CALL                             R48 0 1
      212 GETTABLEKS                       R49 R0 K52 ["validVersionDescriptions"]
      214 CALL                             R49 0 -1
      215 CALL                             R40 -1 1
      216 JUMPIFNOT                        R40 ; [+1]
      217 NOT                              R40 R39
      218 GETUPVAL                         R42 7
      219 CALL                             R42 0 1
      220 JUMPIFNOT                        R42 ; [+3]
      221 GETTABLEKS                       R41 R2 K53 ["canUploadWithUgcRestrictions"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R41
      225 GETUPVAL                         R43 7
      226 CALL                             R43 0 1
      227 JUMPIFNOT                        R43 ; [+3]
      228 GETTABLEKS                       R42 R2 K54 ["canUploadWithUgcRestrictionsDenyReason"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R42
      232 GETUPVAL                         R43 7
      233 CALL                             R43 0 1
      234 JUMPIFNOT                        R43 ; [+7]
      235 GETTABLEKS                       R43 R2 K55 ["categoryType"]
      237 JUMPIFNOTEQKS                    R43 K56 ["AvatarItem"] ; [+4]
      239 JUMPIFEQKNIL                     R41 ; [+2]
      241 AND                              R40 R40 R41
      242 GETUPVAL                         R43 2
      243 CALL                             R43 0 1
      244 JUMPIFNOT                        R43 ; [+7]
      245 MOVE                             R43 R40
      246 JUMPIFNOT                        R43 ; [+3]
      247 GETTABLEKS                       R44 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      249 NOT                              R43 R44
      250 MOVE                             R40 R43
      251 JUMP                             ; [+9]
      252 GETUPVAL                         R43 8
      253 CALL                             R43 0 1
      254 JUMPIFNOT                        R43 ; [+6]
      255 MOVE                             R43 R40
      256 JUMPIFNOT                        R43 ; [+3]
      257 GETTABLEKS                       R44 R2 K25 ["isShowRobuxSpendMessageBox"]
      259 NOT                              R43 R44
      260 MOVE                             R40 R43
      261 GETUPVAL                         R43 9
      262 CALL                             R43 0 1
      263 JUMPIFNOT                        R43 ; [+11]
      264 GETUPVAL                         R44 4
      265 GETTABLEKS                       R43 R44 K58 ["isMakeupAsset"]
      267 MOVE                             R44 R24
      268 CALL                             R43 1 1
      269 JUMPIFNOT                        R43 ; [+5]
      270 GETTABLEKS                       R43 R2 K59 ["selectedColor"]
      272 JUMPIFNOTEQKNIL                  R43 ; [+2]
      274 LOADB                            R40 0
      275 GETUPVAL                         R43 10
      276 CALL                             R43 0 1
      277 JUMPIFNOT                        R43 ; [+26]
      278 GETUPVAL                         R43 1
      279 MOVE                             R45 R6
      280 NAMECALL                         R43 R43 K60 ["isOverride"]
      282 CALL                             R43 2 1
      283 JUMPIF                           R43 ; [+20]
      284 MOVE                             R43 R40
      285 JUMPIFNOT                        R43 ; [+17]
      286 LOADB                            R43 0
      287 ORK                              R45 R8 K7 [""]
      288 FASTCALL1                        TOSTRING R45 ; [+2]
      289 GETIMPORT                        R44 K62 [tostring]
      291 CALL                             R44 1 1
      292 JUMPIFEQKS                       R44 K7 [""] ; [+10]
      294 ORK                              R45 R9 K7 [""]
      295 FASTCALL1                        TOSTRING R45 ; [+2]
      296 GETIMPORT                        R44 K62 [tostring]
      298 CALL                             R44 1 1
      299 JUMPIFNOTEQKS                    R44 K7 [""] ; [+2]
      301 LOADB                            R43 0 +1
      302 LOADB                            R43 1
      303 MOVE                             R40 R43
      304 GETUPVAL                         R45 11
      305 GETTABLEKS                       R44 R45 K64 ["SCROLLBAR_PADDING"]
      307 SUBRK                            R43 R63 K44 ["SHOW_COMMENT"]
      308 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      310 GETIMPORT                        R46 K68 [Enum.AssetType.Audio]
      312 JUMPIFEQ                         R45 R46 ; [+2]
      314 LOADB                            R44 0 +1
      315 LOADB                            R44 1
      316 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      318 GETIMPORT                        R47 K70 [Enum.AssetType.Video]
      320 JUMPIFEQ                         R46 R47 ; [+2]
      322 LOADB                            R45 0 +1
      323 LOADB                            R45 1
      324 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      326 GETIMPORT                        R48 K72 [Enum.AssetType.Model]
      328 JUMPIFEQ                         R47 R48 ; [+2]
      330 LOADB                            R46 0 +1
      331 LOADB                            R46 1
      332 GETTABLEKS                       R48 R1 K28 ["assetTypeEnum"]
      334 GETIMPORT                        R49 K74 [Enum.AssetType.Plugin]
      336 JUMPIFEQ                         R48 R49 ; [+2]
      338 LOADB                            R47 0 +1
      339 LOADB                            R47 1
      340 LOADNIL                          R48
      341 LOADB                            R49 0
      342 GETTABLEKS                       R50 R1 K75 ["Localization"]
      344 LOADK                            R53 K76 ["General"]
      345 LOADK                            R54 K77 ["Proceed"]
      346 NAMECALL                         R51 R50 K78 ["getText"]
      348 CALL                             R51 3 1
      349 LOADK                            R54 K76 ["General"]
      350 LOADK                            R55 K79 ["GoBack"]
      351 NAMECALL                         R52 R50 K78 ["getText"]
      353 CALL                             R52 3 1
      354 LOADK                            R55 K80 ["AssetConfigSharing"]
      355 LOADK                            R56 K81 ["PublicConfirmationHeading"]
      356 NAMECALL                         R53 R50 K78 ["getText"]
      358 CALL                             R53 3 1
      359 LOADK                            R56 K80 ["AssetConfigSharing"]
      360 LOADK                            R57 K82 ["PublicConfirmationMessage"]
      361 NAMECALL                         R54 R50 K78 ["getText"]
      363 CALL                             R54 3 1
      364 LOADK                            R57 K80 ["AssetConfigSharing"]
      365 LOADK                            R58 K83 ["PublicConfirmationTitle"]
      366 NAMECALL                         R55 R50 K78 ["getText"]
      368 CALL                             R55 3 1
      369 GETTABLEKS                       R56 R2 K84 ["isConfirmationDialogEnabled"]
      371 GETTABLEKS                       R57 R2 K85 ["confirmationDialogKey"]
      373 LOADK                            R60 K86 ["AssetConfig"]
      374 LOADK                            R61 K87 ["PublishAssetDialogPublish"]
      375 NAMECALL                         R58 R50 K78 ["getText"]
      377 CALL                             R58 3 1
      378 LOADK                            R61 K76 ["General"]
      379 LOADK                            R62 K88 ["Cancel"]
      380 NAMECALL                         R59 R50 K78 ["getText"]
      382 CALL                             R59 3 1
      383 LOADK                            R62 K86 ["AssetConfig"]
      384 LOADK                            R63 K89 ["PublishAssetDialogDescription"]
      385 NAMECALL                         R60 R50 K78 ["getText"]
      387 CALL                             R60 3 1
      388 LOADK                            R63 K86 ["AssetConfig"]
      389 LOADK                            R64 K90 ["PublishAssetDialogHeading"]
      390 NAMECALL                         R61 R50 K78 ["getText"]
      392 CALL                             R61 3 1
      393 LOADK                            R64 K76 ["General"]
      394 LOADK                            R65 K91 ["RobloxStudio"]
      395 NAMECALL                         R62 R50 K78 ["getText"]
      397 CALL                             R62 3 1
      398 GETUPVAL                         R64 2
      399 CALL                             R64 0 1
      400 JUMPIFNOT                        R64 ; [+2]
      401 LOADNIL                          R63
      402 JUMP                             ; [+5]
      403 LOADK                            R65 K76 ["General"]
      404 LOADK                            R66 K91 ["RobloxStudio"]
      405 NAMECALL                         R63 R50 K78 ["getText"]
      407 CALL                             R63 3 1
      408 GETUPVAL                         R65 2
      409 CALL                             R65 0 1
      410 JUMPIFNOT                        R65 ; [+2]
      411 LOADNIL                          R64
      412 JUMP                             ; [+8]
      413 LOADK                            R66 K86 ["AssetConfig"]
      414 LOADK                            R67 K92 ["PayAndConfirmHeading"]
      415 DUPTABLE                         R68 K93 [{"name"}]
      416 SETTABLEKS                       R8 R68 K8 ["name"]
      418 NAMECALL                         R64 R50 K78 ["getText"]
      420 CALL                             R64 4 1
      421 GETTABLEKS                       R66 R1 K94 ["uploadFee"]
      423 JUMPIFNOT                        R66 ; [+3]
      424 GETTABLEKS                       R65 R1 K94 ["uploadFee"]
      426 JUMP                             ; [+1]
      427 LOADK                            R65 K7 [""]
      428 GETUPVAL                         R67 2
      429 CALL                             R67 0 1
      430 JUMPIFNOT                        R67 ; [+2]
      431 LOADNIL                          R66
      432 JUMP                             ; [+11]
      433 LOADK                            R68 K86 ["AssetConfig"]
      434 LOADK                            R69 K95 ["PayAndConfirmDescription"]
      435 DUPTABLE                         R70 K97 [{"amount"}]
      436 GETUPVAL                         R72 12
      437 MOVE                             R73 R65
      438 CONCAT                           R71 R72 R73
      439 SETTABLEKS                       R71 R70 K96 ["amount"]
      441 NAMECALL                         R66 R50 K78 ["getText"]
      443 CALL                             R66 4 1
      444 GETUPVAL                         R68 2
      445 CALL                             R68 0 1
      446 JUMPIFNOT                        R68 ; [+2]
      447 LOADNIL                          R67
      448 JUMP                             ; [+5]
      449 LOADK                            R69 K76 ["General"]
      450 LOADK                            R70 K98 ["PayAndSubmit"]
      451 NAMECALL                         R67 R50 K78 ["getText"]
      453 CALL                             R67 3 1
      454 GETTABLEKS                       R68 R2 K99 ["isPublishAssetsDialogEnabled"]
      456 JUMPIF                           R44 ; [+3]
      457 GETUPVAL                         R69 13
      458 JUMPIFNOT                        R69 ; [+3]
      459 JUMPIFNOT                        R45 ; [+2]
      460 NOT                              R48 R5
      461 JUMP                             ; [+2]
      462 JUMPIFNOT                        R46 ; [+1]
      463 LOADB                            R48 1
      464 JUMPIF                           R44 ; [+3]
      465 GETUPVAL                         R69 13
      466 JUMPIFNOT                        R69 ; [+2]
      467 JUMPIFNOT                        R45 ; [+1]
      468 LOADB                            R49 1
      469 JUMPIF                           R44 ; [+3]
      470 GETUPVAL                         R69 13
      471 JUMPIFNOT                        R69 ; [+2]
      472 JUMPIFNOT                        R45 ; [+1]
      473 MOVE                             R11 R17
      474 GETUPVAL                         R70 4
      475 GETTABLEKS                       R69 R70 K58 ["isMakeupAsset"]
      477 MOVE                             R70 R24
      478 CALL                             R69 1 1
      479 GETUPVAL                         R70 9
      480 CALL                             R70 0 1
      481 JUMPIFNOT                        R70 ; [+8]
      482 MOVE                             R70 R69
      483 JUMPIFNOT                        R70 ; [+6]
      484 GETTABLEKS                       R71 R2 K59 ["selectedColor"]
      486 JUMPIFEQKNIL                     R71 ; [+2]
      488 LOADB                            R70 0 +1
      489 LOADB                            R70 1
      490 GETUPVAL                         R72 14
      491 GETTABLEKS                       R71 R72 K100 ["createElement"]
      493 LOADK                            R72 K101 ["Frame"]
      494 DUPTABLE                         R73 K105 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      495 SETTABLEKS                       R4 R73 K3 ["Size"]
      497 LOADN                            R74 0
      498 SETTABLEKS                       R74 R73 K102 ["BackgroundTransparency"]
      500 GETTABLEKS                       R75 R3 K106 ["assetConfig"]
      502 GETTABLEKS                       R74 R75 K107 ["backgroundColor"]
      504 SETTABLEKS                       R74 R73 K103 ["BackgroundColor3"]
      506 LOADN                            R74 0
      507 SETTABLEKS                       R74 R73 K104 ["BorderSizePixel"]
      509 DUPTABLE                         R74 K115 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      510 GETUPVAL                         R76 14
      511 GETTABLEKS                       R75 R76 K100 ["createElement"]
      513 LOADK                            R76 K108 ["UIListLayout"]
      514 DUPTABLE                         R77 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      515 GETIMPORT                        R78 K123 [Enum.FillDirection.Vertical]
      517 SETTABLEKS                       R78 R77 K116 ["FillDirection"]
      519 GETIMPORT                        R78 K125 [Enum.HorizontalAlignment.Left]
      521 SETTABLEKS                       R78 R77 K117 ["HorizontalAlignment"]
      523 GETIMPORT                        R78 K127 [Enum.VerticalAlignment.Bottom]
      525 SETTABLEKS                       R78 R77 K118 ["VerticalAlignment"]
      527 GETIMPORT                        R78 K129 [Enum.SortOrder.LayoutOrder]
      529 SETTABLEKS                       R78 R77 K119 ["SortOrder"]
      531 GETIMPORT                        R78 K132 [UDim.new]
      533 LOADN                            R79 0
      534 LOADN                            R80 0
      535 CALL                             R78 2 1
      536 SETTABLEKS                       R78 R77 K120 ["Padding"]
      538 CALL                             R75 2 1
      539 SETTABLEKS                       R75 R74 K108 ["UIListLayout"]
      541 MOVE                             R75 R20
      542 JUMPIFNOT                        R75 ; [+9]
      543 GETUPVAL                         R76 14
      544 GETTABLEKS                       R75 R76 K100 ["createElement"]
      546 GETUPVAL                         R76 15
      547 GETTABLEKS                       R77 R0 K133 ["getMessageBoxProps"]
      549 MOVE                             R78 R19
      550 CALL                             R77 1 -1
      551 CALL                             R75 -1 1
      552 SETTABLEKS                       R75 R74 K109 ["AssetConfigMessageBox"]
      554 GETUPVAL                         R76 2
      555 CALL                             R76 0 1
      556 JUMPIFNOT                        R76 ; [+2]
      557 LOADNIL                          R75
      558 JUMP                             ; [+28]
      559 MOVE                             R75 R21
      560 JUMPIFNOT                        R75 ; [+26]
      561 GETUPVAL                         R76 14
      562 GETTABLEKS                       R75 R76 K100 ["createElement"]
      564 GETUPVAL                         R76 16
      565 DUPTABLE                         R77 K142 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      566 SETTABLEKS                       R67 R77 K134 ["AcceptText"]
      568 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      570 SETTABLEKS                       R66 R77 K136 ["Description"]
      572 SETTABLEKS                       R21 R77 K137 ["Enabled"]
      574 SETTABLEKS                       R64 R77 K138 ["Heading"]
      576 GETTABLEKS                       R78 R0 K143 ["onAssetPublishPayAndConfirmAccepted"]
      578 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      580 GETTABLEKS                       R78 R0 K144 ["onAssetPublishPayAndConfirmCanceled"]
      582 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      584 SETTABLEKS                       R63 R77 K141 ["Title"]
      586 CALL                             R75 2 1
      587 SETTABLEKS                       R75 R74 K110 ["RobuxSpendConfirmationMessageBox"]
      589 GETUPVAL                         R76 2
      590 CALL                             R76 0 1
      591 JUMPIFNOT                        R76 ; [+24]
      592 GETTABLEKS                       R75 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      594 JUMPIFNOT                        R75 ; [+22]
      595 GETUPVAL                         R76 14
      596 GETTABLEKS                       R75 R76 K100 ["createElement"]
      598 GETUPVAL                         R76 17
      599 DUPTABLE                         R77 K148 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      600 NEWCLOSURE                       R78 P0
      601 CAPTURE                          VAL R0
      602 SETTABLEKS                       R78 R77 K145 ["OnUploadConfirmed"]
      604 GETTABLEKS                       R79 R1 K94 ["uploadFee"]
      606 ORK                              R78 R79 K7 [""]
      607 SETTABLEKS                       R78 R77 K146 ["UploadFee"]
      609 GETTABLEKS                       R79 R2 K8 ["name"]
      611 ORK                              R78 R79 K7 [""]
      612 SETTABLEKS                       R78 R77 K147 ["ItemName"]
      614 CALL                             R75 2 1
      615 JUMP                             ; [+1]
      616 LOADNIL                          R75
      617 SETTABLEKS                       R75 R74 K111 ["AvatarItemMessageBox"]
      619 JUMPIFNOT                        R68 ; [+30]
      620 GETUPVAL                         R76 14
      621 GETTABLEKS                       R75 R76 K100 ["createElement"]
      623 GETUPVAL                         R76 18
      624 DUPTABLE                         R77 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      625 SETTABLEKS                       R58 R77 K134 ["AcceptText"]
      627 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      629 LOADNIL                          R78
      630 SETTABLEKS                       R78 R77 K149 ["ConfirmationKey"]
      632 SETTABLEKS                       R60 R77 K136 ["Description"]
      634 SETTABLEKS                       R68 R77 K137 ["Enabled"]
      636 SETTABLEKS                       R61 R77 K138 ["Heading"]
      638 GETTABLEKS                       R78 R0 K151 ["onAssetPublishDialogAccepted"]
      640 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      642 GETTABLEKS                       R78 R0 K152 ["onAssetPublishDialogCanceled"]
      644 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      646 SETTABLEKS                       R62 R77 K141 ["Title"]
      648 CALL                             R75 2 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R75
      651 SETTABLEKS                       R75 R74 K112 ["AssetConfigMakeAssetPublicMessageBox"]
      653 GETUPVAL                         R76 14
      654 GETTABLEKS                       R75 R76 K100 ["createElement"]
      656 LOADK                            R76 K101 ["Frame"]
      657 DUPTABLE                         R77 K153 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      658 GETIMPORT                        R78 K155 [UDim2.new]
      660 LOADN                            R79 1
      661 LOADN                            R80 0
      662 LOADN                            R81 1
      663 LOADN                            R82 194
      664 CALL                             R78 4 1
      665 SETTABLEKS                       R78 R77 K3 ["Size"]
      667 LOADN                            R78 1
      668 SETTABLEKS                       R78 R77 K102 ["BackgroundTransparency"]
      670 LOADN                            R78 1
      671 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
      673 DUPTABLE                         R78 K165 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      674 GETUPVAL                         R80 14
      675 GETTABLEKS                       R79 R80 K100 ["createElement"]
      677 LOADK                            R80 K108 ["UIListLayout"]
      678 DUPTABLE                         R81 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      679 GETIMPORT                        R82 K167 [Enum.FillDirection.Horizontal]
      681 SETTABLEKS                       R82 R81 K116 ["FillDirection"]
      683 GETIMPORT                        R82 K125 [Enum.HorizontalAlignment.Left]
      685 SETTABLEKS                       R82 R81 K117 ["HorizontalAlignment"]
      687 GETIMPORT                        R82 K169 [Enum.VerticalAlignment.Top]
      689 SETTABLEKS                       R82 R81 K118 ["VerticalAlignment"]
      691 GETIMPORT                        R82 K129 [Enum.SortOrder.LayoutOrder]
      693 SETTABLEKS                       R82 R81 K119 ["SortOrder"]
      695 GETIMPORT                        R82 K132 [UDim.new]
      697 LOADN                            R83 0
      698 LOADN                            R84 0
      699 CALL                             R82 2 1
      700 SETTABLEKS                       R82 R81 K120 ["Padding"]
      702 CALL                             R79 2 1
      703 SETTABLEKS                       R79 R78 K108 ["UIListLayout"]
      705 GETUPVAL                         R80 14
      706 GETTABLEKS                       R79 R80 K100 ["createElement"]
      708 GETUPVAL                         R80 18
      709 DUPTABLE                         R81 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      710 SETTABLEKS                       R51 R81 K134 ["AcceptText"]
      712 SETTABLEKS                       R52 R81 K135 ["CancelText"]
      714 SETTABLEKS                       R57 R81 K149 ["ConfirmationKey"]
      716 SETTABLEKS                       R54 R81 K136 ["Description"]
      718 SETTABLEKS                       R56 R81 K137 ["Enabled"]
      720 SETTABLEKS                       R53 R81 K138 ["Heading"]
      722 GETTABLEKS                       R82 R0 K170 ["onDialogAccepted"]
      724 SETTABLEKS                       R82 R81 K139 ["OnAccepted"]
      726 GETTABLEKS                       R82 R0 K171 ["onDialogCanceled"]
      728 SETTABLEKS                       R82 R81 K140 ["OnCanceled"]
      730 SETTABLEKS                       R55 R81 K141 ["Title"]
      732 CALL                             R79 2 1
      733 SETTABLEKS                       R79 R78 K156 ["SharingConfirmationDialog"]
      735 GETUPVAL                         R80 14
      736 GETTABLEKS                       R79 R80 K100 ["createElement"]
      738 GETUPVAL                         R80 19
      739 DUPTABLE                         R81 K184 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor"}]
      740 LOADN                            R82 240
      741 SETTABLEKS                       R82 R81 K172 ["TotalWidth"]
      743 SETTABLEKS                       R38 R81 K173 ["TabItems"]
      745 SETTABLEKS                       R6 R81 K174 ["CurrentTab"]
      747 SETTABLEKS                       R37 R81 K175 ["PreviewType"]
      749 SETTABLEKS                       R25 R81 K176 ["ScreenFlowType"]
      751 SETTABLEKS                       R16 R81 K177 ["AssetStatus"]
      753 SETTABLEKS                       R7 R81 K178 ["AssetId"]
      755 SETTABLEKS                       R22 R81 K179 ["IconFile"]
      757 SETTABLEKS                       R24 R81 K180 ["AssetTypeEnum"]
      759 SETTABLEKS                       R29 R81 K181 ["AllowedBundleTypeSettings"]
      761 GETTABLEKS                       R82 R0 K185 ["onTabSelect"]
      763 SETTABLEKS                       R82 R81 K182 ["OnTabSelect"]
      765 GETTABLEKS                       R82 R0 K186 ["chooseThumbnail"]
      767 SETTABLEKS                       R82 R81 K183 ["ChooseThumbnail"]
      769 LOADN                            R82 1
      770 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      772 GETUPVAL                         R83 20
      773 CALL                             R83 0 1
      774 JUMPIFNOT                        R83 ; [+2]
      775 MOVE                             R82 R24
      776 JUMP                             ; [+1]
      777 LOADNIL                          R82
      778 SETTABLEKS                       R82 R81 K28 ["assetTypeEnum"]
      780 GETUPVAL                         R83 9
      781 CALL                             R83 0 1
      782 JUMPIFNOT                        R83 ; [+4]
      783 JUMPIFNOT                        R69 ; [+3]
      784 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
      786 JUMP                             ; [+1]
      787 LOADNIL                          R82
      788 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
      790 CALL                             R79 2 1
      791 SETTABLEKS                       R79 R78 K157 ["Preview"]
      793 GETUPVAL                         R80 14
      794 GETTABLEKS                       R79 R80 K100 ["createElement"]
      796 LOADK                            R80 K101 ["Frame"]
      797 DUPTABLE                         R81 K187 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      798 GETIMPORT                        R82 K155 [UDim2.new]
      800 LOADN                            R83 0
      801 LOADN                            R84 2
      802 LOADN                            R85 1
      803 LOADN                            R86 0
      804 CALL                             R82 4 1
      805 SETTABLEKS                       R82 R81 K3 ["Size"]
      807 LOADN                            R82 0
      808 SETTABLEKS                       R82 R81 K102 ["BackgroundTransparency"]
      810 GETTABLEKS                       R83 R3 K188 ["divider"]
      812 GETTABLEKS                       R82 R83 K189 ["verticalLineColor"]
      814 SETTABLEKS                       R82 R81 K103 ["BackgroundColor3"]
      816 LOADN                            R82 0
      817 SETTABLEKS                       R82 R81 K104 ["BorderSizePixel"]
      819 LOADN                            R82 2
      820 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      822 CALL                             R79 2 1
      823 SETTABLEKS                       R79 R78 K158 ["VerticalLine"]
      825 MOVE                             R79 R39
      826 JUMPIFNOT                        R79 ; [+50]
      827 GETUPVAL                         R80 14
      828 GETTABLEKS                       R79 R80 K100 ["createElement"]
      830 GETUPVAL                         R80 21
      831 DUPTABLE                         R81 K190 [{"LayoutOrder", "Size"}]
      832 LOADN                            R82 3
      833 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      835 GETIMPORT                        R82 K155 [UDim2.new]
      837 LOADN                            R83 1
      838 LOADN                            R84 16
      839 LOADN                            R85 1
      840 LOADN                            R86 0
      841 CALL                             R82 4 1
      842 SETTABLEKS                       R82 R81 K3 ["Size"]
      844 DUPTABLE                         R82 K192 [{"LoadingIndicator"}]
      845 GETUPVAL                         R84 14
      846 GETTABLEKS                       R83 R84 K100 ["createElement"]
      848 GETUPVAL                         R84 22
      849 DUPTABLE                         R85 K195 [{"Size", "AnchorPoint", "Position"}]
      850 GETIMPORT                        R86 K155 [UDim2.new]
      852 LOADN                            R87 0
      853 LOADN                            R88 100
      854 LOADN                            R89 0
      855 LOADN                            R90 100
      856 CALL                             R86 4 1
      857 SETTABLEKS                       R86 R85 K3 ["Size"]
      859 GETIMPORT                        R86 K197 [Vector2.new]
      861 LOADK                            R87 K198 [0.5]
      862 LOADK                            R88 K198 [0.5]
      863 CALL                             R86 2 1
      864 SETTABLEKS                       R86 R85 K193 ["AnchorPoint"]
      866 GETIMPORT                        R86 K200 [UDim2.fromScale]
      868 LOADK                            R87 K198 [0.5]
      869 LOADK                            R88 K198 [0.5]
      870 CALL                             R86 2 1
      871 SETTABLEKS                       R86 R85 K194 ["Position"]
      873 CALL                             R83 2 1
      874 SETTABLEKS                       R83 R82 K191 ["LoadingIndicator"]
      876 CALL                             R79 3 1
      877 SETTABLEKS                       R79 R78 K159 ["LoadingIndicatorWrapper"]
      879 NOT                              R79 R39
      880 JUMPIFNOT                        R79 ; [+248]
      881 GETUPVAL                         R79 1
      882 MOVE                             R81 R6
      883 NAMECALL                         R79 R79 K201 ["isGeneral"]
      885 CALL                             R79 2 1
      886 JUMPIFNOT                        R79 ; [+242]
      887 GETUPVAL                         R80 14
      888 GETTABLEKS                       R79 R80 K100 ["createElement"]
      890 GETUPVAL                         R80 23
      891 NEWTABLE                         R81 64 0
      893 GETIMPORT                        R82 K155 [UDim2.new]
      895 LOADN                            R83 1
      896 LOADN                            R84 16
      897 LOADN                            R85 1
      898 LOADN                            R86 0
      899 CALL                             R82 4 1
      900 SETTABLEKS                       R82 R81 K3 ["Size"]
      902 SETTABLEKS                       R48 R81 K202 ["allowSelectPrivate"]
      904 SETTABLEKS                       R7 R81 K6 ["assetId"]
      906 SETTABLEKS                       R8 R81 K8 ["name"]
      908 SETTABLEKS                       R9 R81 K9 ["description"]
      910 SETTABLEKS                       R10 R81 K13 ["owner"]
      912 GETUPVAL                         R83 7
      913 CALL                             R83 0 1
      914 JUMPIFNOT                        R83 ; [+2]
      915 MOVE                             R82 R41
      916 JUMP                             ; [+1]
      917 LOADNIL                          R82
      918 SETTABLEKS                       R82 R81 K53 ["canUploadWithUgcRestrictions"]
      920 GETUPVAL                         R83 7
      921 CALL                             R83 0 1
      922 JUMPIFNOT                        R83 ; [+2]
      923 MOVE                             R82 R42
      924 JUMP                             ; [+1]
      925 LOADNIL                          R82
      926 SETTABLEKS                       R82 R81 K54 ["canUploadWithUgcRestrictionsDenyReason"]
      928 SETTABLEKS                       R11 R81 K14 ["allowCopy"]
      930 SETTABLEKS                       R12 R81 K15 ["copyOn"]
      932 SETTABLEKS                       R13 R81 K16 ["allowComment"]
      934 SETTABLEKS                       R14 R81 K17 ["commentOn"]
      936 SETTABLEKS                       R15 R81 K18 ["deleteLocal"]
      938 SETTABLEKS                       R17 R81 K20 ["isAssetPublic"]
      940 SETTABLEKS                       R18 R81 K21 ["publishingRestriction"]
      942 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      944 GETTABLEKS                       R82 R0 K203 ["onNameChange"]
      946 SETTABLEKS                       R82 R81 K203 ["onNameChange"]
      948 GETTABLEKS                       R82 R0 K204 ["onDescChange"]
      950 SETTABLEKS                       R82 R81 K204 ["onDescChange"]
      952 GETUPVAL                         R83 7
      953 CALL                             R83 0 1
      954 JUMPIFNOT                        R83 ; [+3]
      955 GETTABLEKS                       R82 R0 K205 ["onCategoryChange"]
      957 JUMP                             ; [+1]
      958 LOADNIL                          R82
      959 SETTABLEKS                       R82 R81 K205 ["onCategoryChange"]
      961 GETTABLEKS                       R82 R1 K206 ["groupId"]
      963 SETTABLEKS                       R82 R81 K207 ["preselectedGroupId"]
      965 GETTABLEKS                       R82 R0 K208 ["onAccessChange"]
      967 SETTABLEKS                       R82 R81 K209 ["onOwnerSelected"]
      969 GETTABLEKS                       R82 R0 K210 ["onSharingChanged"]
      971 SETTABLEKS                       R82 R81 K210 ["onSharingChanged"]
      973 GETTABLEKS                       R82 R0 K211 ["onAdditionalImagesChanged"]
      975 SETTABLEKS                       R82 R81 K211 ["onAdditionalImagesChanged"]
      977 GETTABLEKS                       R82 R0 K212 ["toggleCopy"]
      979 SETTABLEKS                       R82 R81 K212 ["toggleCopy"]
      981 GETTABLEKS                       R82 R0 K213 ["toggleComment"]
      983 SETTABLEKS                       R82 R81 K213 ["toggleComment"]
      985 GETTABLEKS                       R82 R0 K214 ["toggleDeleteLocal"]
      987 SETTABLEKS                       R82 R81 K214 ["toggleDeleteLocal"]
      989 GETTABLEKS                       R82 R2 K215 ["dataSharingEnabled"]
      991 SETTABLEKS                       R82 R81 K215 ["dataSharingEnabled"]
      993 GETTABLEKS                       R82 R2 K216 ["dataSharingToggled"]
      995 SETTABLEKS                       R82 R81 K216 ["dataSharingToggled"]
      997 GETTABLEKS                       R82 R0 K217 ["onDataConsentToggleClick"]
      999 SETTABLEKS                       R82 R81 K217 ["onDataConsentToggleClick"]
     1001 SETTABLEKS                       R32 R81 K218 ["displayOwnership"]
     1003 SETTABLEKS                       R33 R81 K219 ["displayCopy"]
     1005 SETTABLEKS                       R35 R81 K220 ["displayComment"]
     1007 SETTABLEKS                       R36 R81 K221 ["displayAssetType"]
     1009 SETTABLEKS                       R49 R81 K222 ["displaySharing"]
     1011 SETTABLEKS                       R34 R81 K223 ["displayAssetTypeSelection"]
     1013 JUMPIFNOT                        R47 ; [+2]
     1014 MOVE                             R82 R27
     1015 JUMP                             ; [+1]
     1016 LOADNIL                          R82
     1017 SETTABLEKS                       R82 R81 K30 ["allowedAssetTypesForRelease"]
     1019 SETTABLEKS                       R28 R81 K31 ["allowedAssetTypesForFree"]
     1021 JUMPIFNOT                        R47 ; [+2]
     1022 MOVE                             R82 R16
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R82
     1025 SETTABLEKS                       R82 R81 K224 ["newAssetStatus"]
     1027 JUMPIFNOT                        R47 ; [+2]
     1028 MOVE                             R82 R30
     1029 JUMP                             ; [+1]
     1030 LOADNIL                          R82
     1031 SETTABLEKS                       R82 R81 K225 ["currentAssetStatus"]
     1033 JUMPIFNOT                        R47 ; [+3]
     1034 GETTABLEKS                       R82 R0 K226 ["onStatusChange"]
     1036 JUMP                             ; [+1]
     1037 LOADNIL                          R82
     1038 SETTABLEKS                       R82 R81 K226 ["onStatusChange"]
     1040 JUMPIFNOT                        R47 ; [+3]
     1041 GETTABLEKS                       R82 R0 K227 ["onPriceChange"]
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R82
     1045 SETTABLEKS                       R82 R81 K227 ["onPriceChange"]
     1047 JUMPIFNOT                        R47 ; [+2]
     1048 MOVE                             R82 R31
     1049 JUMP                             ; [+1]
     1050 LOADNIL                          R82
     1051 SETTABLEKS                       R82 R81 K35 ["price"]
     1053 LOADNIL                          R82
     1054 SETTABLEKS                       R82 R81 K228 ["minPrice"]
     1056 LOADNIL                          R82
     1057 SETTABLEKS                       R82 R81 K229 ["maxPrice"]
     1059 LOADNIL                          R82
     1060 SETTABLEKS                       R82 R81 K230 ["feeRate"]
     1062 LOADNIL                          R82
     1063 SETTABLEKS                       R82 R81 K231 ["isPriceValid"]
     1065 LOADN                            R82 3
     1066 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1068 GETTABLEKS                       R82 R1 K47 ["instances"]
     1070 SETTABLEKS                       R82 R81 K47 ["instances"]
     1072 GETUPVAL                         R83 9
     1073 CALL                             R83 0 1
     1074 JUMPIFNOT                        R83 ; [+2]
     1075 MOVE                             R82 R69
     1076 JUMP                             ; [+1]
     1077 LOADNIL                          R82
     1078 SETTABLEKS                       R82 R81 K232 ["showColorPicker"]
     1080 GETUPVAL                         R83 9
     1081 CALL                             R83 0 1
     1082 JUMPIFNOT                        R83 ; [+4]
     1083 JUMPIFNOT                        R69 ; [+3]
     1084 GETTABLEKS                       R82 R2 K233 ["showColorPickerRequiredError"]
     1086 JUMP                             ; [+1]
     1087 LOADNIL                          R82
     1088 SETTABLEKS                       R82 R81 K233 ["showColorPickerRequiredError"]
     1090 GETUPVAL                         R83 10
     1091 CALL                             R83 0 1
     1092 JUMPIFNOT                        R83 ; [+3]
     1093 GETTABLEKS                       R82 R2 K234 ["showNameRequiredError"]
     1095 JUMP                             ; [+1]
     1096 LOADNIL                          R82
     1097 SETTABLEKS                       R82 R81 K234 ["showNameRequiredError"]
     1099 GETUPVAL                         R83 10
     1100 CALL                             R83 0 1
     1101 JUMPIFNOT                        R83 ; [+3]
     1102 GETTABLEKS                       R82 R2 K235 ["showDescriptionRequiredError"]
     1104 JUMP                             ; [+1]
     1105 LOADNIL                          R82
     1106 SETTABLEKS                       R82 R81 K235 ["showDescriptionRequiredError"]
     1108 GETUPVAL                         R83 9
     1109 CALL                             R83 0 1
     1110 JUMPIFNOT                        R83 ; [+4]
     1111 JUMPIFNOT                        R69 ; [+3]
     1112 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
     1114 JUMP                             ; [+1]
     1115 LOADNIL                          R82
     1116 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
     1118 GETUPVAL                         R83 9
     1119 CALL                             R83 0 1
     1120 JUMPIFNOT                        R83 ; [+4]
     1121 JUMPIFNOT                        R69 ; [+3]
     1122 GETTABLEKS                       R82 R0 K236 ["onSelectedColorChange"]
     1124 JUMP                             ; [+1]
     1125 LOADNIL                          R82
     1126 SETTABLEKS                       R82 R81 K237 ["setSelectedColor"]
     1128 CALL                             R79 2 1
     1129 SETTABLEKS                       R79 R78 K160 ["PublishAsset"]
     1131 GETUPVAL                         R79 1
     1132 MOVE                             R81 R6
     1133 NAMECALL                         R79 R79 K238 ["isVersions"]
     1135 CALL                             R79 2 1
     1136 JUMPIFNOT                        R79 ; [+72]
     1137 GETUPVAL                         R80 14
     1138 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1140 GETUPVAL                         R80 24
     1141 DUPTABLE                         R81 K252 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1142 GETIMPORT                        R82 K155 [UDim2.new]
     1144 LOADN                            R83 1
     1145 LOADN                            R84 16
     1146 LOADN                            R85 1
     1147 LOADN                            R86 236
     1148 CALL                             R82 4 1
     1149 SETTABLEKS                       R82 R81 K3 ["Size"]
     1151 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1153 LOADN                            R82 3
     1154 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1156 GETTABLEKS                       R82 R2 K253 ["versionsCurrentItem"]
     1158 SETTABLEKS                       R82 R81 K239 ["currentItem"]
     1160 GETTABLEKS                       R82 R2 K254 ["versionsRootItems"]
     1162 SETTABLEKS                       R82 R81 K240 ["rootItems"]
     1164 GETTABLEKS                       R82 R2 K255 ["versionsOpenInputKey"]
     1166 SETTABLEKS                       R82 R81 K241 ["openInputKey"]
     1168 GETTABLEKS                       R82 R2 K256 ["versionsPreviousInput"]
     1170 SETTABLEKS                       R82 R81 K242 ["previousInput"]
     1172 GETTABLEKS                       R82 R2 K257 ["versionsPageIndex"]
     1174 SETTABLEKS                       R82 R81 K243 ["pageIndex"]
     1176 GETTABLEKS                       R82 R2 K258 ["versionsPageRootItems"]
     1178 SETTABLEKS                       R82 R81 K244 ["pageRootItems"]
     1180 GETTABLEKS                       R82 R1 K245 ["versionHistory"]
     1182 SETTABLEKS                       R82 R81 K245 ["versionHistory"]
     1184 GETTABLEKS                       R82 R0 K259 ["versionsOnDescClicked"]
     1186 SETTABLEKS                       R82 R81 K246 ["onDescClicked"]
     1188 GETTABLEKS                       R82 R0 K260 ["versionsCloseInput"]
     1190 SETTABLEKS                       R82 R81 K247 ["closeInput"]
     1192 GETTABLEKS                       R82 R0 K248 ["setVersionError"]
     1194 SETTABLEKS                       R82 R81 K248 ["setVersionError"]
     1196 GETTABLEKS                       R82 R0 K261 ["versionsSetPreviousInput"]
     1198 SETTABLEKS                       R82 R81 K249 ["setPreviousInput"]
     1200 GETTABLEKS                       R82 R0 K262 ["versionsOnPageChange"]
     1202 SETTABLEKS                       R82 R81 K250 ["onPageChange"]
     1204 GETTABLEKS                       R82 R0 K263 ["versionsSetStates"]
     1206 SETTABLEKS                       R82 R81 K251 ["setStates"]
     1208 CALL                             R79 2 1
     1209 SETTABLEKS                       R79 R78 K161 ["Versions"]
     1211 GETUPVAL                         R80 1
     1212 MOVE                             R82 R6
     1213 NAMECALL                         R80 R80 K264 ["isSales"]
     1215 CALL                             R80 2 1
     1216 JUMPIFNOT                        R80 ; [+21]
     1217 GETUPVAL                         R80 14
     1218 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1220 GETUPVAL                         R80 25
     1221 DUPTABLE                         R81 K267 [{"size", "assetId", "layoutOrder"}]
     1222 GETIMPORT                        R82 K155 [UDim2.new]
     1224 LOADN                            R83 1
     1225 LOADN                            R84 16
     1226 LOADN                            R85 1
     1227 LOADN                            R86 0
     1228 CALL                             R82 4 1
     1229 SETTABLEKS                       R82 R81 K265 ["size"]
     1231 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1233 LOADN                            R82 3
     1234 SETTABLEKS                       R82 R81 K266 ["layoutOrder"]
     1236 CALL                             R79 2 1
     1237 JUMP                             ; [+1]
     1238 LOADNIL                          R79
     1239 SETTABLEKS                       R79 R78 K162 ["Sales"]
     1241 GETUPVAL                         R79 1
     1242 MOVE                             R81 R6
     1243 NAMECALL                         R79 R79 K60 ["isOverride"]
     1245 CALL                             R79 2 1
     1246 JUMPIFNOT                        R79 ; [+28]
     1247 GETUPVAL                         R80 14
     1248 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1250 GETUPVAL                         R80 26
     1251 DUPTABLE                         R81 K269 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1252 GETIMPORT                        R82 K155 [UDim2.new]
     1254 LOADN                            R83 1
     1255 LOADN                            R84 16
     1256 LOADN                            R85 1
     1257 LOADN                            R86 0
     1258 CALL                             R82 4 1
     1259 SETTABLEKS                       R82 R81 K3 ["Size"]
     1261 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1263 GETTABLEKS                       R82 R1 K47 ["instances"]
     1265 SETTABLEKS                       R82 R81 K47 ["instances"]
     1267 GETTABLEKS                       R82 R0 K268 ["onOverrideAssetSelected"]
     1269 SETTABLEKS                       R82 R81 K268 ["onOverrideAssetSelected"]
     1271 LOADN                            R82 3
     1272 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1274 CALL                             R79 2 1
     1275 SETTABLEKS                       R79 R78 K163 ["OverrideAsset"]
     1277 GETUPVAL                         R79 1
     1278 MOVE                             R81 R6
     1279 NAMECALL                         R79 R79 K270 ["isPermissions"]
     1281 CALL                             R79 2 1
     1282 JUMPIFNOT                        R79 ; [+59]
     1283 GETUPVAL                         R80 27
     1284 CALL                             R80 0 1
     1285 JUMPIFNOT                        R80 ; [+34]
     1286 GETUPVAL                         R80 14
     1287 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1289 GETUPVAL                         R81 28
     1290 GETTABLEKS                       R80 R81 K271 ["AsyncCache"]
     1292 NEWTABLE                         R81 0 0
     1294 NEWTABLE                         R82 0 1
     1296 GETUPVAL                         R84 14
     1297 GETTABLEKS                       R83 R84 K100 ["createElement"]
     1299 GETUPVAL                         R84 29
     1300 DUPTABLE                         R85 K272 [{"Size", "AssetId", "LayoutOrder"}]
     1301 GETIMPORT                        R86 K155 [UDim2.new]
     1303 LOADN                            R87 1
     1304 MOVE                             R88 R43
     1305 LOADN                            R89 1
     1306 LOADN                            R90 0
     1307 CALL                             R86 4 1
     1308 SETTABLEKS                       R86 R85 K3 ["Size"]
     1310 SETTABLEKS                       R7 R85 K178 ["AssetId"]
     1312 LOADN                            R86 3
     1313 SETTABLEKS                       R86 R85 K128 ["LayoutOrder"]
     1315 CALL                             R83 2 -1
     1316 SETLIST                          R82 R83 -1 [1]
     1318 CALL                             R79 3 1
     1319 JUMP                             ; [+22]
     1320 GETUPVAL                         R80 14
     1321 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1323 GETUPVAL                         R80 30
     1324 DUPTABLE                         R81 K274 [{"Size", "Owner", "AssetId", "LayoutOrder"}]
     1325 GETIMPORT                        R82 K155 [UDim2.new]
     1327 LOADN                            R83 1
     1328 MOVE                             R84 R43
     1329 LOADN                            R85 1
     1330 LOADN                            R86 0
     1331 CALL                             R82 4 1
     1332 SETTABLEKS                       R82 R81 K3 ["Size"]
     1334 SETTABLEKS                       R10 R81 K273 ["Owner"]
     1336 SETTABLEKS                       R7 R81 K178 ["AssetId"]
     1338 LOADN                            R82 3
     1339 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1341 CALL                             R79 2 1
     1342 SETTABLEKS                       R79 R78 K164 ["PackagePermissions"]
     1344 CALL                             R75 3 1
     1345 SETTABLEKS                       R75 R74 K113 ["MainPage"]
     1347 GETUPVAL                         R76 14
     1348 GETTABLEKS                       R75 R76 K100 ["createElement"]
     1350 GETUPVAL                         R76 31
     1351 DUPTABLE                         R77 K279 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1352 GETTABLEKS                       R78 R2 K280 ["overrideAssetId"]
     1354 SETTABLEKS                       R78 R77 K178 ["AssetId"]
     1356 SETTABLEKS                       R40 R77 K275 ["CanSave"]
     1358 LOADN                            R78 2
     1359 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
     1361 GETIMPORT                        R78 K155 [UDim2.new]
     1363 LOADN                            R79 1
     1364 LOADN                            R80 0
     1365 LOADN                            R81 0
     1366 LOADN                            R82 62
     1367 CALL                             R78 4 1
     1368 SETTABLEKS                       R78 R77 K3 ["Size"]
     1370 GETTABLEKS                       R78 R0 K281 ["tryCancelWithYield"]
     1372 SETTABLEKS                       R78 R77 K276 ["TryCancel"]
     1374 GETTABLEKS                       R78 R0 K282 ["tryPublishWithConfirmDialog"]
     1376 SETTABLEKS                       R78 R77 K277 ["TryPublish"]
     1378 GETUPVAL                         R79 9
     1379 CALL                             R79 0 1
     1380 JUMPIFNOT                        R79 ; [+8]
     1381 JUMPIF                           R40 ; [+7]
     1382 NEWCLOSURE                       R78 P1
     1383 CAPTURE                          VAL R0
     1384 CAPTURE                          VAL R70
     1385 CAPTURE                          UPVAL U10
     1386 CAPTURE                          VAL R8
     1387 CAPTURE                          VAL R9
     1388 JUMP                             ; [+1]
     1389 LOADNIL                          R78
     1390 SETTABLEKS                       R78 R77 K278 ["OnPublishButtonHover"]
     1392 CALL                             R75 2 1
     1393 SETTABLEKS                       R75 R74 K114 ["Footer"]
     1395 CALL                             R71 3 -1
     1396 RETURN                           R71 -1

PROTO_86:
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
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R10 R11 K7 ["contains"]
       42 MOVE                             R11 R9
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R12 R13 K8 ["Package"]
       46 CALL                             R10 2 1
       47 GETTABLEKS                       R11 R0 K9 ["isVerifiedCreator"]
       49 GETTABLEKS                       R12 R0 K10 ["versionHistory"]
       51 GETTABLEKS                       R13 R0 K11 ["collaborators"]
       53 JUMPIF                           R13 ; [+2]
       54 NEWTABLE                         R13 0 0
       56 DUPTABLE                         R14 K40 [{"assetConfigData", "assetTypeEnum", "assetTypeValidationSucceeded", "categoryType", "currentScreen", "changeTable", "screenFlowType", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "currentTab", "isVerifiedCreator", "isPublishingAllowed", "isPackageMarketplacePublishAllowed", "networkError", "networkErrorAction", "isPackageAsset", "hasPackagePermission", "isUploadFeeEnabled", "descendantPermissions", "uploadFee", "deleteLocal", "versionHistory", "permissions", "publishingRestrictions", "fiatProduct", "groupBundlesUploadEnabledForUser", "isAvatarItemDialogFlowEnabled"}]
       57 SETTABLEKS                       R3 R14 K1 ["assetConfigData"]
       59 GETTABLEKS                       R15 R0 K12 ["assetTypeEnum"]
       61 SETTABLEKS                       R15 R14 K12 ["assetTypeEnum"]
       63 GETTABLEKS                       R15 R0 K13 ["assetTypeValidationSucceeded"]
       65 SETTABLEKS                       R15 R14 K13 ["assetTypeValidationSucceeded"]
       67 GETTABLEKS                       R15 R0 K14 ["categoryType"]
       69 SETTABLEKS                       R15 R14 K14 ["categoryType"]
       71 GETTABLEKS                       R15 R0 K15 ["currentScreen"]
       73 SETTABLEKS                       R15 R14 K15 ["currentScreen"]
       75 SETTABLEKS                       R4 R14 K16 ["changeTable"]
       77 GETTABLEKS                       R15 R0 K17 ["screenFlowType"]
       79 SETTABLEKS                       R15 R14 K17 ["screenFlowType"]
       81 GETTABLEKS                       R15 R0 K18 ["instances"]
       83 SETTABLEKS                       R15 R14 K18 ["instances"]
       85 GETUPVAL                         R16 1
       86 JUMPIF                           R16 ; [+2]
       87 GETUPVAL                         R16 2
       88 JUMPIFNOT                        R16 ; [+3]
       89 GETTABLEKS                       R15 R0 K19 ["sourceInstances"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R15
       93 SETTABLEKS                       R15 R14 K19 ["sourceInstances"]
       95 GETTABLEKS                       R15 R0 K20 ["allowedAssetTypesForRelease"]
       97 SETTABLEKS                       R15 R14 K20 ["allowedAssetTypesForRelease"]
       99 GETTABLEKS                       R15 R0 K21 ["allowedAssetTypesForUpload"]
      101 SETTABLEKS                       R15 R14 K21 ["allowedAssetTypesForUpload"]
      103 GETTABLEKS                       R15 R0 K22 ["allowedAssetTypesForFree"]
      105 SETTABLEKS                       R15 R14 K22 ["allowedAssetTypesForFree"]
      107 GETTABLEKS                       R15 R0 K23 ["allowedBundleTypeSettings"]
      109 SETTABLEKS                       R15 R14 K23 ["allowedBundleTypeSettings"]
      111 GETTABLEKS                       R15 R0 K24 ["currentTab"]
      113 SETTABLEKS                       R15 R14 K24 ["currentTab"]
      115 SETTABLEKS                       R11 R14 K9 ["isVerifiedCreator"]
      117 GETUPVAL                         R16 3
      118 JUMPIFNOT                        R16 ; [+4]
      119 GETTABLEKS                       R16 R7 K42 ["isAllowed"]
      121 ORK                              R15 R16 K41 [False]
      122 JUMP                             ; [+1]
      123 LOADB                            R15 0
      124 SETTABLEKS                       R15 R14 K25 ["isPublishingAllowed"]
      126 SETTABLEKS                       R10 R14 K26 ["isPackageMarketplacePublishAllowed"]
      128 GETTABLEKS                       R15 R0 K27 ["networkError"]
      130 SETTABLEKS                       R15 R14 K27 ["networkError"]
      132 GETTABLEKS                       R15 R0 K28 ["networkErrorAction"]
      134 JUMPIF                           R15 ; [+2]
      135 NEWTABLE                         R15 0 0
      137 SETTABLEKS                       R15 R14 K28 ["networkErrorAction"]
      139 GETTABLEKS                       R15 R0 K29 ["isPackageAsset"]
      141 SETTABLEKS                       R15 R14 K29 ["isPackageAsset"]
      143 GETTABLEKS                       R15 R1 K43 ["assetId"]
      145 JUMPIFNOT                        R15 ; [+9]
      146 GETTABLEKS                       R17 R0 K44 ["packagePermissions"]
      148 GETTABLEKS                       R18 R1 K43 ["assetId"]
      150 GETTABLE                         R16 R17 R18
      151 JUMPIFNOTEQKNIL                  R16 ; [+2]
      153 LOADB                            R15 0 +1
      154 LOADB                            R15 1
      155 SETTABLEKS                       R15 R14 K30 ["hasPackagePermission"]
      157 GETTABLEKS                       R15 R0 K31 ["isUploadFeeEnabled"]
      159 SETTABLEKS                       R15 R14 K31 ["isUploadFeeEnabled"]
      161 GETTABLEKS                       R15 R0 K32 ["descendantPermissions"]
      163 SETTABLEKS                       R15 R14 K32 ["descendantPermissions"]
      165 GETTABLEKS                       R15 R0 K33 ["uploadFee"]
      167 SETTABLEKS                       R15 R14 K33 ["uploadFee"]
      169 GETTABLEKS                       R15 R0 K34 ["deleteLocal"]
      171 SETTABLEKS                       R15 R14 K34 ["deleteLocal"]
      173 SETTABLEKS                       R12 R14 K10 ["versionHistory"]
      175 SETTABLEKS                       R13 R14 K35 ["permissions"]
      177 SETTABLEKS                       R8 R14 K36 ["publishingRestrictions"]
      179 GETTABLEKS                       R17 R1 K43 ["assetId"]
      181 GETTABLE                         R16 R2 R17
      182 JUMPIFNOT                        R16 ; [+4]
      183 GETTABLEKS                       R16 R1 K43 ["assetId"]
      185 GETTABLE                         R15 R2 R16
      186 JUMP                             ; [+4]
      187 GETUPVAL                         R16 4
      188 GETTABLEKS                       R15 R16 K45 ["getDefaultFiatProduct"]
      190 CALL                             R15 0 1
      191 SETTABLEKS                       R15 R14 K37 ["fiatProduct"]
      193 GETUPVAL                         R16 5
      194 CALL                             R16 0 1
      195 JUMPIFNOT                        R16 ; [+3]
      196 GETTABLEKS                       R15 R0 K38 ["groupBundlesUploadEnabledForUser"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R15
      200 SETTABLEKS                       R15 R14 K38 ["groupBundlesUploadEnabledForUser"]
      202 GETUPVAL                         R16 6
      203 CALL                             R16 0 1
      204 JUMPIFNOT                        R16 ; [+3]
      205 GETTABLEKS                       R15 R0 K39 ["isAvatarItemDialogFlowEnabled"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R15
      209 SETTABLEKS                       R15 R14 K39 ["isAvatarItemDialogFlowEnabled"]
      211 RETURN                           R14 1

PROTO_87:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_92:
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

PROTO_93:
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

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_95:
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

PROTO_96:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["OVERRIDE_ASSET_ID"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_99:
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

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_102:
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

PROTO_103:
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

PROTO_104:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_116:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
       15 SETTABLEKS                       R2 R1 K2 ["getVersionsHistory"]
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
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETTABLEKS                       R3 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R3 K8 ["Util"]
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
       47 GETTABLEKS                       R11 R1 K7 ["Src"]
       49 GETTABLEKS                       R10 R11 K8 ["Util"]
       51 GETTABLEKS                       R9 R10 K16 ["SharedFlags"]
       53 GETTABLEKS                       R8 R9 K17 ["getFFlagEnableUGCForAllChecks"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K15 [require]
       58 GETTABLEKS                       R12 R1 K7 ["Src"]
       60 GETTABLEKS                       R11 R12 K8 ["Util"]
       62 GETTABLEKS                       R10 R11 K16 ["SharedFlags"]
       64 GETTABLEKS                       R9 R10 K18 ["getFFlagToolboxTranslateUploadError"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K15 [require]
       69 GETTABLEKS                       R13 R1 K7 ["Src"]
       71 GETTABLEKS                       R12 R13 K8 ["Util"]
       73 GETTABLEKS                       R11 R12 K16 ["SharedFlags"]
       75 GETTABLEKS                       R10 R11 K19 ["getFFlagEnableGroupStateChangeCheck"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K15 [require]
       80 GETTABLEKS                       R14 R1 K7 ["Src"]
       82 GETTABLEKS                       R13 R14 K8 ["Util"]
       84 GETTABLEKS                       R12 R13 K16 ["SharedFlags"]
       86 GETTABLEKS                       R11 R12 K20 ["getFFlagToolboxAssetConfigOnboardingLink"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K1 [game]
       91 LOADK                            R13 K21 ["ToolboxSendPackageVersionNoteTelemetry"]
       92 NAMECALL                         R11 R11 K10 ["GetFastFlag"]
       94 CALL                             R11 2 1
       95 GETIMPORT                        R12 K15 [require]
       97 GETTABLEKS                       R15 R1 K7 ["Src"]
       99 GETTABLEKS                       R14 R15 K22 ["Flags"]
      101 GETTABLEKS                       R13 R14 K23 ["getFFlagAACPermissionsPage"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K15 [require]
      106 GETTABLEKS                       R16 R1 K7 ["Src"]
      108 GETTABLEKS                       R15 R16 K22 ["Flags"]
      110 GETTABLEKS                       R14 R15 K24 ["getFFlagEnableUploadingShoes"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K15 [require]
      115 GETTABLEKS                       R17 R1 K7 ["Src"]
      117 GETTABLEKS                       R16 R17 K22 ["Flags"]
      119 GETTABLEKS                       R15 R16 K25 ["getFFlagCheckAvatarAssetPrivacy"]
      121 CALL                             R14 1 1
      122 GETIMPORT                        R15 K1 [game]
      124 LOADK                            R17 K26 ["StudioService"]
      125 NAMECALL                         R15 R15 K3 ["GetService"]
      127 CALL                             R15 2 1
      128 GETIMPORT                        R16 K15 [require]
      130 GETTABLEKS                       R19 R1 K7 ["Src"]
      132 GETTABLEKS                       R18 R19 K8 ["Util"]
      134 GETTABLEKS                       R17 R18 K27 ["getUserId"]
      136 CALL                             R16 1 1
      137 GETTABLEKS                       R17 R1 K28 ["Packages"]
      139 GETIMPORT                        R18 K15 [require]
      141 GETTABLEKS                       R19 R17 K29 ["Roact"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K15 [require]
      146 GETTABLEKS                       R20 R17 K30 ["RoactRodux"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K15 [require]
      151 GETTABLEKS                       R21 R17 K31 ["Cryo"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K15 [require]
      156 GETTABLEKS                       R23 R2 K32 ["Analytics"]
      158 GETTABLEKS                       R22 R23 K32 ["Analytics"]
      160 CALL                             R21 1 1
      161 GETTABLEKS                       R23 R1 K7 ["Src"]
      163 GETTABLEKS                       R22 R23 K33 ["Components"]
      165 GETTABLEKS                       R23 R22 K34 ["AssetConfiguration"]
      167 GETIMPORT                        R24 K15 [require]
      169 GETTABLEKS                       R25 R23 K35 ["PreviewArea"]
      171 CALL                             R24 1 1
      172 GETIMPORT                        R25 K15 [require]
      174 GETTABLEKS                       R26 R23 K36 ["PublishAsset"]
      176 CALL                             R25 1 1
      177 GETIMPORT                        R26 K15 [require]
      179 GETTABLEKS                       R27 R23 K37 ["AssetConfigFooter"]
      181 CALL                             R26 1 1
      182 GETIMPORT                        R27 K15 [require]
      184 GETTABLEKS                       R28 R23 K38 ["Versions"]
      186 CALL                             R27 1 1
      187 GETIMPORT                        R28 K15 [require]
      189 GETTABLEKS                       R29 R23 K39 ["DataSharing"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K15 [require]
      194 GETTABLEKS                       R30 R23 K40 ["CreatorDashboardLinkContent"]
      196 CALL                             R29 1 1
      197 LOADNIL                          R30
      198 LOADNIL                          R31
      199 LOADNIL                          R32
      200 MOVE                             R33 R12
      201 CALL                             R33 0 1
      202 JUMPIFNOT                        R33 ; [+17]
      203 GETIMPORT                        R33 K15 [require]
      205 GETTABLEKS                       R35 R23 K41 ["Permissions"]
      207 GETTABLEKS                       R34 R35 K42 ["PermissionsPage"]
      209 CALL                             R33 1 1
      210 MOVE                             R31 R33
      211 GETIMPORT                        R33 K15 [require]
      213 GETTABLEKS                       R35 R23 K41 ["Permissions"]
      215 GETTABLEKS                       R34 R35 K43 ["CollaboratorInfo"]
      217 CALL                             R33 1 1
      218 MOVE                             R32 R33
      219 JUMP                             ; [+8]
      220 GETIMPORT                        R33 K15 [require]
      222 GETTABLEKS                       R35 R23 K41 ["Permissions"]
      224 GETTABLEKS                       R34 R35 K44 ["DEPRECATED_Permissions"]
      226 CALL                             R33 1 1
      227 MOVE                             R30 R33
      228 GETIMPORT                        R33 K15 [require]
      230 GETTABLEKS                       R34 R23 K45 ["WarningDialog"]
      232 CALL                             R33 1 1
      233 GETIMPORT                        R34 K15 [require]
      235 GETTABLEKS                       R35 R23 K46 ["StyledConfirmDialog"]
      237 CALL                             R34 1 1
      238 GETIMPORT                        R35 K15 [require]
      240 GETTABLEKS                       R36 R23 K47 ["AvatarItemDialogContainer"]
      242 CALL                             R35 1 1
      243 GETIMPORT                        R36 K15 [require]
      245 GETTABLEKS                       R37 R23 K48 ["OverrideAsset"]
      247 CALL                             R36 1 1
      248 GETIMPORT                        R37 K15 [require]
      250 GETTABLEKS                       R39 R22 K49 ["MessageBox"]
      252 GETTABLEKS                       R38 R39 K49 ["MessageBox"]
      254 CALL                             R37 1 1
      255 GETIMPORT                        R38 K15 [require]
      257 GETTABLEKS                       R39 R2 K50 ["AssetPermissionUtil"]
      259 CALL                             R38 1 1
      260 GETIMPORT                        R39 K15 [require]
      262 GETTABLEKS                       R40 R2 K51 ["Images"]
      264 CALL                             R39 1 1
      265 GETIMPORT                        R40 K15 [require]
      267 GETTABLEKS                       R41 R2 K52 ["AssetConfigConstants"]
      269 CALL                             R40 1 1
      270 GETIMPORT                        R41 K15 [require]
      272 GETTABLEKS                       R42 R2 K53 ["Constants"]
      274 CALL                             R41 1 1
      275 GETIMPORT                        R42 K15 [require]
      277 GETTABLEKS                       R43 R2 K54 ["ScreenSetup"]
      279 CALL                             R42 1 1
      280 GETIMPORT                        R43 K15 [require]
      282 GETTABLEKS                       R44 R2 K55 ["AssetConfigUtil"]
      284 CALL                             R43 1 1
      285 GETIMPORT                        R44 K15 [require]
      287 GETTABLEKS                       R45 R2 K56 ["fixUpPreValidation"]
      289 CALL                             R44 1 1
      290 GETIMPORT                        R45 K15 [require]
      292 GETTABLEKS                       R46 R2 K57 ["PublishUtil"]
      294 CALL                             R45 1 1
      295 GETIMPORT                        R46 K15 [require]
      297 GETTABLEKS                       R47 R2 K58 ["getAllowedAssetTypeEnums"]
      299 CALL                             R46 1 1
      300 GETIMPORT                        R47 K15 [require]
      302 GETTABLEKS                       R48 R2 K59 ["FiatUtil"]
      304 CALL                             R47 1 1
      305 LOADNIL                          R48
      306 JUMPIFNOT                        R5 ; [+6]
      307 GETIMPORT                        R49 K15 [require]
      309 GETTABLEKS                       R50 R2 K60 ["getIsIXPVariableEnabled"]
      311 CALL                             R49 1 1
      312 MOVE                             R48 R49
      313 GETIMPORT                        R49 K15 [require]
      315 GETTABLEKS                       R50 R17 K61 ["Framework"]
      317 CALL                             R49 1 1
      318 GETTABLEKS                       R51 R49 K8 ["Util"]
      320 GETTABLEKS                       R50 R51 K62 ["deepCopy"]
      322 GETTABLEKS                       R52 R49 K8 ["Util"]
      324 GETTABLEKS                       R51 R52 K63 ["deepEqual"]
      326 GETTABLEKS                       R52 R49 K64 ["Dash"]
      328 GETTABLEKS                       R53 R52 K65 ["slice"]
      330 GETIMPORT                        R54 K15 [require]
      332 GETTABLEKS                       R58 R1 K7 ["Src"]
      334 GETTABLEKS                       R57 R58 K66 ["Networking"]
      336 GETTABLEKS                       R56 R57 K67 ["Requests"]
      338 GETTABLEKS                       R55 R56 K68 ["MakeChangeRequest"]
      340 CALL                             R54 1 1
      341 GETTABLEKS                       R56 R1 K7 ["Src"]
      343 GETTABLEKS                       R55 R56 K69 ["Types"]
      345 GETIMPORT                        R56 K15 [require]
      347 GETTABLEKS                       R57 R55 K70 ["AssetMediaTypes"]
      349 CALL                             R56 1 1
      350 GETIMPORT                        R57 K15 [require]
      352 GETTABLEKS                       R58 R55 K71 ["AssetSubTypes"]
      354 CALL                             R57 1 1
      355 GETIMPORT                        R58 K15 [require]
      357 GETTABLEKS                       R59 R55 K72 ["ConfigTypes"]
      359 CALL                             R58 1 1
      360 GETTABLEKS                       R61 R1 K7 ["Src"]
      362 GETTABLEKS                       R60 R61 K66 ["Networking"]
      364 GETTABLEKS                       R59 R60 K67 ["Requests"]
      366 GETIMPORT                        R60 K15 [require]
      368 GETTABLEKS                       R61 R59 K73 ["GetUploadPermissionStatusRequest"]
      370 CALL                             R60 1 1
      371 GETIMPORT                        R61 K15 [require]
      373 GETTABLEKS                       R62 R59 K74 ["UploadCatalogItemRequest"]
      375 CALL                             R61 1 1
      376 GETIMPORT                        R62 K15 [require]
      378 GETTABLEKS                       R63 R59 K75 ["ConfigureCatalogItemRequest"]
      380 CALL                             R62 1 1
      381 GETIMPORT                        R63 K15 [require]
      383 GETTABLEKS                       R64 R59 K76 ["GetAssetDetailsRequest"]
      385 CALL                             R63 1 1
      386 GETIMPORT                        R64 K15 [require]
      388 GETTABLEKS                       R65 R59 K77 ["PostRevertVersionRequest"]
      390 CALL                             R64 1 1
      391 GETIMPORT                        R65 K15 [require]
      393 GETTABLEKS                       R66 R59 K78 ["PostVersionDescriptionRequest"]
      395 CALL                             R65 1 1
      396 GETIMPORT                        R66 K15 [require]
      398 GETTABLEKS                       R67 R59 K79 ["PatchAssetRequest"]
      400 CALL                             R66 1 1
      401 GETIMPORT                        R67 K15 [require]
      403 GETTABLEKS                       R68 R59 K80 ["PostUploadAssetRequest"]
      405 CALL                             R67 1 1
      406 GETIMPORT                        R68 K15 [require]
      408 GETTABLEKS                       R69 R59 K81 ["PostOverrideAssetRequest"]
      410 CALL                             R68 1 1
      411 GETIMPORT                        R69 K15 [require]
      413 GETTABLEKS                       R70 R59 K82 ["PostUploadAnimationRequest"]
      415 CALL                             R69 1 1
      416 GETIMPORT                        R70 K15 [require]
      418 GETTABLEKS                       R71 R59 K83 ["PostOverrideAnimationRequest"]
      420 CALL                             R70 1 1
      421 GETIMPORT                        R71 K15 [require]
      423 GETTABLEKS                       R72 R59 K84 ["GetIsVerifiedCreatorRequest"]
      425 CALL                             R71 1 1
      426 GETIMPORT                        R72 K15 [require]
      428 GETTABLEKS                       R73 R59 K85 ["PostPackageMetadataRequest"]
      430 CALL                             R72 1 1
      431 GETIMPORT                        R73 K15 [require]
      433 GETTABLEKS                       R74 R59 K86 ["GetPackageCollaboratorsRequest"]
      435 CALL                             R73 1 1
      436 GETIMPORT                        R74 K15 [require]
      438 GETTABLEKS                       R75 R59 K87 ["PutPackagePermissionsRequest"]
      440 CALL                             R74 1 1
      441 GETIMPORT                        R75 K15 [require]
      443 GETTABLEKS                       R76 R59 K88 ["PostAssetCheckPermissions"]
      445 CALL                             R75 1 1
      446 GETIMPORT                        R76 K15 [require]
      448 GETTABLEKS                       R77 R59 K89 ["GetMarketplaceInfoRequest"]
      450 CALL                             R76 1 1
      451 GETIMPORT                        R77 K15 [require]
      453 GETTABLEKS                       R78 R59 K90 ["GetItemUploadFeeRequest"]
      455 CALL                             R77 1 1
      456 GETIMPORT                        R78 K15 [require]
      458 GETTABLEKS                       R79 R59 K91 ["UGCBundleUploadRequest"]
      460 CALL                             R78 1 1
      461 GETIMPORT                        R79 K15 [require]
      463 GETTABLEKS                       R80 R59 K92 ["PatchMakeAssetPublicRequest"]
      465 CALL                             R79 1 1
      466 GETIMPORT                        R80 K15 [require]
      468 GETTABLEKS                       R81 R59 K93 ["GetAssetPermissionsRequest"]
      470 CALL                             R80 1 1
      471 GETIMPORT                        R81 K15 [require]
      473 GETTABLEKS                       R82 R59 K94 ["GetPublishingRequirementsRequest"]
      475 CALL                             R81 1 1
      476 GETIMPORT                        R82 K15 [require]
      478 GETTABLEKS                       R83 R59 K95 ["GetAssetMediaMetadataArrayRequest"]
      480 CALL                             R82 1 1
      481 GETIMPORT                        R83 K15 [require]
      483 GETTABLEKS                       R84 R59 K96 ["UGCAccessoryUploadRequest"]
      485 CALL                             R83 1 1
      486 GETIMPORT                        R84 K15 [require]
      488 GETTABLEKS                       R85 R59 K97 ["GetVersionsHistoryRequest"]
      490 CALL                             R84 1 1
      491 GETIMPORT                        R85 K15 [require]
      493 GETTABLEKS                       R86 R59 K98 ["GetFiatProductRequest"]
      495 CALL                             R85 1 1
      496 GETIMPORT                        R86 K15 [require]
      498 GETTABLEKS                       R87 R59 K99 ["GetSellerStatusRequest"]
      500 CALL                             R86 1 1
      501 GETIMPORT                        R87 K15 [require]
      503 GETTABLEKS                       R88 R59 K100 ["GetDefaultBundleDataSharingRequest"]
      505 CALL                             R87 1 1
      506 GETIMPORT                        R88 K15 [require]
      508 GETTABLEKS                       R91 R1 K7 ["Src"]
      510 GETTABLEKS                       R90 R91 K101 ["Actions"]
      512 GETTABLEKS                       R89 R90 K102 ["ClearChange"]
      514 CALL                             R88 1 1
      515 GETIMPORT                        R89 K15 [require]
      517 GETTABLEKS                       R92 R1 K7 ["Src"]
      519 GETTABLEKS                       R91 R92 K101 ["Actions"]
      521 GETTABLEKS                       R90 R91 K103 ["SetAssetConfigTab"]
      523 CALL                             R89 1 1
      524 GETIMPORT                        R90 K15 [require]
      526 GETTABLEKS                       R93 R1 K7 ["Src"]
      528 GETTABLEKS                       R92 R93 K101 ["Actions"]
      530 GETTABLEKS                       R91 R92 K104 ["UpdateAssetConfigStore"]
      532 CALL                             R90 1 1
      533 GETIMPORT                        R91 K15 [require]
      535 GETTABLEKS                       R94 R1 K7 ["Src"]
      537 GETTABLEKS                       R93 R94 K101 ["Actions"]
      539 GETTABLEKS                       R92 R93 K105 ["SetDescendantPermissions"]
      541 CALL                             R91 1 1
      542 GETIMPORT                        R92 K15 [require]
      544 GETTABLEKS                       R95 R1 K7 ["Src"]
      546 GETTABLEKS                       R94 R95 K101 ["Actions"]
      548 GETTABLEKS                       R93 R94 K106 ["UploadResult"]
      550 CALL                             R92 1 1
      551 GETIMPORT                        R93 K15 [require]
      553 GETTABLEKS                       R96 R1 K7 ["Src"]
      555 GETTABLEKS                       R95 R96 K101 ["Actions"]
      557 GETTABLEKS                       R94 R95 K107 ["ValidateAnimationResult"]
      559 CALL                             R93 1 1
      560 GETIMPORT                        R94 K15 [require]
      562 GETTABLEKS                       R97 R1 K7 ["Src"]
      564 GETTABLEKS                       R96 R97 K108 ["Thunks"]
      566 GETTABLEKS                       R95 R96 K109 ["GetGroupMetadata"]
      568 CALL                             R94 1 1
      569 GETIMPORT                        R95 K15 [require]
      571 GETTABLEKS                       R98 R1 K7 ["Src"]
      573 GETTABLEKS                       R97 R98 K108 ["Thunks"]
      575 GETTABLEKS                       R96 R97 K110 ["GetGroupRoleInfo"]
      577 CALL                             R95 1 1
      578 GETIMPORT                        R96 K15 [require]
      580 GETTABLEKS                       R99 R1 K7 ["Src"]
      582 GETTABLEKS                       R98 R99 K108 ["Thunks"]
      584 GETTABLEKS                       R97 R98 K111 ["GetUsername"]
      586 CALL                             R96 1 1
      587 GETIMPORT                        R97 K15 [require]
      589 GETTABLEKS                       R100 R1 K7 ["Src"]
      591 GETTABLEKS                       R99 R100 K108 ["Thunks"]
      593 GETTABLEKS                       R98 R99 K112 ["CheckAvatarAssetPrivacy"]
      595 CALL                             R97 1 1
      596 GETIMPORT                        R98 K15 [require]
      598 GETTABLEKS                       R101 R1 K7 ["Src"]
      600 GETTABLEKS                       R100 R101 K113 ["ContextServices"]
      602 GETTABLEKS                       R99 R100 K114 ["IXPContext"]
      604 CALL                             R98 1 1
      605 GETIMPORT                        R99 K15 [require]
      607 GETTABLEKS                       R102 R1 K7 ["Src"]
      609 GETTABLEKS                       R101 R102 K113 ["ContextServices"]
      611 GETTABLEKS                       R100 R101 K115 ["NetworkContext"]
      613 CALL                             R99 1 1
      614 GETIMPORT                        R100 K15 [require]
      616 GETTABLEKS                       R103 R1 K7 ["Src"]
      618 GETTABLEKS                       R102 R103 K113 ["ContextServices"]
      620 GETTABLEKS                       R101 R102 K116 ["PublishServiceContext"]
      622 CALL                             R100 1 1
      623 GETIMPORT                        R101 K15 [require]
      625 GETTABLEKS                       R104 R1 K7 ["Src"]
      627 GETTABLEKS                       R103 R104 K113 ["ContextServices"]
      629 GETTABLEKS                       R102 R103 K117 ["PluginGuiServiceContext"]
      631 CALL                             R101 1 1
      632 GETIMPORT                        R102 K15 [require]
      634 GETTABLEKS                       R105 R1 K7 ["Src"]
      636 GETTABLEKS                       R104 R105 K113 ["ContextServices"]
      638 GETTABLEKS                       R103 R104 K118 ["ContentProviderContext"]
      640 CALL                             R102 1 1
      641 GETIMPORT                        R103 K15 [require]
      643 GETTABLEKS                       R104 R17 K61 ["Framework"]
      645 CALL                             R103 1 1
      646 GETTABLEKS                       R104 R103 K113 ["ContextServices"]
      648 GETTABLEKS                       R105 R104 K119 ["withContext"]
      650 GETTABLEKS                       R107 R103 K120 ["UI"]
      652 GETTABLEKS                       R106 R107 K121 ["LoadingIndicator"]
      654 GETTABLEKS                       R108 R103 K120 ["UI"]
      656 GETTABLEKS                       R107 R108 K122 ["Container"]
      658 GETTABLEKS                       R108 R18 K123 ["PureComponent"]
      660 LOADK                            R110 K124 ["AssetConfig"]
      661 NAMECALL                         R108 R108 K125 ["extend"]
      663 CALL                             R108 2 1
      664 GETIMPORT                        R109 K128 [utf8.char]
      666 LOADK                            R110 K129 [57346]
      667 CALL                             R109 1 1
      668 GETIMPORT                        R110 K15 [require]
      670 GETTABLEKS                       R113 R1 K7 ["Src"]
      672 GETTABLEKS                       R112 R113 K22 ["Flags"]
      674 GETTABLEKS                       R111 R112 K130 ["getFFlagFixCreatorGroupIdNotChanging"]
      676 CALL                             R110 1 1
      677 GETIMPORT                        R111 K15 [require]
      679 GETTABLEKS                       R114 R1 K7 ["Src"]
      681 GETTABLEKS                       R113 R114 K22 ["Flags"]
      683 GETTABLEKS                       R112 R113 K131 ["getFFlagEnableUploadingGroupBundles"]
      685 CALL                             R111 1 1
      686 GETIMPORT                        R112 K15 [require]
      688 GETTABLEKS                       R115 R1 K7 ["Src"]
      690 GETTABLEKS                       R114 R115 K22 ["Flags"]
      692 GETTABLEKS                       R113 R114 K132 ["getFFlagAssetConfigPermissionFailure"]
      694 CALL                             R112 1 1
      695 GETIMPORT                        R113 K15 [require]
      697 GETTABLEKS                       R116 R1 K7 ["Src"]
      699 GETTABLEKS                       R115 R116 K22 ["Flags"]
      701 GETTABLEKS                       R114 R115 K133 ["getFFlagToolboxFixPublishDisabled"]
      703 CALL                             R113 1 1
      704 GETIMPORT                        R114 K15 [require]
      706 GETTABLEKS                       R117 R1 K7 ["Src"]
      708 GETTABLEKS                       R116 R117 K22 ["Flags"]
      710 GETTABLEKS                       R115 R116 K134 ["getFFlagEnableUploadingEmote"]
      712 CALL                             R114 1 1
      713 GETIMPORT                        R115 K15 [require]
      715 GETTABLEKS                       R118 R1 K7 ["Src"]
      717 GETTABLEKS                       R117 R118 K22 ["Flags"]
      719 GETTABLEKS                       R116 R117 K135 ["getFFlagEnableUploadingMakeup"]
      721 CALL                             R115 1 1
      722 GETIMPORT                        R116 K15 [require]
      724 GETTABLEKS                       R119 R1 K7 ["Src"]
      726 GETTABLEKS                       R118 R119 K22 ["Flags"]
      728 GETTABLEKS                       R117 R118 K136 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      730 CALL                             R116 1 1
      731 NEWCLOSURE                       R117 P0
      732 CAPTURE                          VAL R14
      733 CAPTURE                          VAL R41
      734 CAPTURE                          VAL R115
      735 CAPTURE                          VAL R43
      736 CAPTURE                          VAL R40
      737 CAPTURE                          VAL R6
      738 CAPTURE                          VAL R38
      739 CAPTURE                          VAL R20
      740 CAPTURE                          VAL R4
      741 CAPTURE                          VAL R5
      742 CAPTURE                          REF R48
      743 CAPTURE                          VAL R15
      744 CAPTURE                          VAL R114
      745 CAPTURE                          VAL R58
      746 CAPTURE                          VAL R16
      747 CAPTURE                          VAL R28
      748 CAPTURE                          VAL R111
      749 CAPTURE                          VAL R8
      750 CAPTURE                          VAL R112
      751 CAPTURE                          VAL R11
      752 CAPTURE                          VAL R21
      753 CAPTURE                          VAL R116
      754 CAPTURE                          VAL R7
      755 CAPTURE                          VAL R60
      756 CAPTURE                          VAL R110
      757 CAPTURE                          VAL R50
      758 CAPTURE                          VAL R51
      759 CAPTURE                          VAL R57
      760 CAPTURE                          VAL R39
      761 SETTABLEKS                       R117 R108 K137 ["init"]
      763 DUPCLOSURE                       R117 K138 [PROTO_65]
      764 SETTABLEKS                       R117 R108 K139 ["attachXButtonCallback"]
      766 DUPCLOSURE                       R117 K140 [PROTO_66]
      767 SETTABLEKS                       R117 R108 K141 ["detachXButtonCallback"]
      769 DUPCLOSURE                       R117 K142 [PROTO_67]
      770 CAPTURE                          VAL R40
      771 SETTABLEKS                       R117 R108 K143 ["isLoading"]
      773 DUPCLOSURE                       R117 K144 [PROTO_68]
      774 CAPTURE                          VAL R20
      775 DUPCLOSURE                       R118 K145 [PROTO_69]
      776 CAPTURE                          VAL R40
      777 CAPTURE                          VAL R58
      778 CAPTURE                          VAL R38
      779 CAPTURE                          VAL R43
      780 CAPTURE                          VAL R3
      781 CAPTURE                          VAL R45
      782 CAPTURE                          VAL R117
      783 CAPTURE                          VAL R41
      784 SETTABLEKS                       R118 R108 K146 ["didUpdate"]
      786 DUPCLOSURE                       R118 K147 [PROTO_70]
      787 CAPTURE                          VAL R53
      788 SETTABLEKS                       R118 R108 K148 ["versionsGetPageRootItems"]
      790 DUPCLOSURE                       R118 K149 [PROTO_73]
      791 CAPTURE                          VAL R87
      792 SETTABLEKS                       R118 R108 K150 ["getDefaultBundleDataSharing"]
      794 DUPCLOSURE                       R118 K151 [PROTO_79]
      795 CAPTURE                          VAL R40
      796 CAPTURE                          VAL R43
      797 SETTABLEKS                       R118 R108 K152 ["getAssetInformation"]
      799 DUPCLOSURE                       R118 K153 [PROTO_81]
      800 CAPTURE                          VAL R43
      801 CAPTURE                          VAL R7
      802 CAPTURE                          VAL R10
      803 CAPTURE                          VAL R47
      804 SETTABLEKS                       R118 R108 K154 ["didMount"]
      806 DUPCLOSURE                       R118 K155 [PROTO_82]
      807 SETTABLEKS                       R118 R108 K156 ["willUnmount"]
      809 NEWCLOSURE                       R118 P11
      810 CAPTURE                          VAL R40
      811 CAPTURE                          VAL R58
      812 CAPTURE                          VAL R14
      813 CAPTURE                          VAL R111
      814 CAPTURE                          VAL R43
      815 CAPTURE                          VAL R42
      816 CAPTURE                          VAL R45
      817 CAPTURE                          VAL R7
      818 CAPTURE                          VAL R113
      819 CAPTURE                          VAL R115
      820 CAPTURE                          VAL R116
      821 CAPTURE                          VAL R41
      822 CAPTURE                          VAL R109
      823 CAPTURE                          VAL R6
      824 CAPTURE                          VAL R18
      825 CAPTURE                          VAL R37
      826 CAPTURE                          VAL R34
      827 CAPTURE                          VAL R35
      828 CAPTURE                          VAL R33
      829 CAPTURE                          VAL R24
      830 CAPTURE                          VAL R114
      831 CAPTURE                          VAL R107
      832 CAPTURE                          VAL R106
      833 CAPTURE                          VAL R25
      834 CAPTURE                          VAL R27
      835 CAPTURE                          VAL R29
      836 CAPTURE                          VAL R36
      837 CAPTURE                          VAL R12
      838 CAPTURE                          REF R32
      839 CAPTURE                          REF R31
      840 CAPTURE                          REF R30
      841 CAPTURE                          VAL R26
      842 SETTABLEKS                       R118 R108 K157 ["render"]
      844 MOVE                             R118 R105
      845 DUPTABLE                         R119 K167 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      846 GETTABLEKS                       R120 R104 K158 ["Focus"]
      848 SETTABLEKS                       R120 R119 K158 ["Focus"]
      850 JUMPIFNOT                        R5 ; [+2]
      851 MOVE                             R120 R98
      852 JUMP                             ; [+1]
      853 LOADNIL                          R120
      854 SETTABLEKS                       R120 R119 K159 ["IXP"]
      856 GETTABLEKS                       R120 R104 K160 ["Localization"]
      858 SETTABLEKS                       R120 R119 K160 ["Localization"]
      860 GETTABLEKS                       R120 R104 K161 ["Stylizer"]
      862 SETTABLEKS                       R120 R119 K161 ["Stylizer"]
      864 MOVE                             R121 R115
      865 CALL                             R121 0 1
      866 JUMPIFNOT                        R121 ; [+3]
      867 GETTABLEKS                       R120 R104 K162 ["Plugin"]
      869 JUMP                             ; [+1]
      870 LOADNIL                          R120
      871 SETTABLEKS                       R120 R119 K162 ["Plugin"]
      873 SETTABLEKS                       R99 R119 K163 ["Network"]
      875 SETTABLEKS                       R100 R119 K164 ["PublishService"]
      877 MOVE                             R121 R14
      878 CALL                             R121 0 1
      879 JUMPIFNOT                        R121 ; [+2]
      880 MOVE                             R120 R101
      881 JUMP                             ; [+1]
      882 LOADNIL                          R120
      883 SETTABLEKS                       R120 R119 K165 ["PluginGuiService"]
      885 MOVE                             R121 R14
      886 CALL                             R121 0 1
      887 JUMPIFNOT                        R121 ; [+2]
      888 MOVE                             R120 R102
      889 JUMP                             ; [+1]
      890 LOADNIL                          R120
      891 SETTABLEKS                       R120 R119 K166 ["ContentProvider"]
      893 CALL                             R118 1 1
      894 MOVE                             R119 R108
      895 CALL                             R118 1 1
      896 MOVE                             R108 R118
      897 DUPCLOSURE                       R118 K168 [PROTO_86]
      898 CAPTURE                          VAL R57
      899 CAPTURE                          VAL R4
      900 CAPTURE                          VAL R5
      901 CAPTURE                          VAL R3
      902 CAPTURE                          VAL R47
      903 CAPTURE                          VAL R111
      904 CAPTURE                          VAL R14
      905 DUPCLOSURE                       R119 K169 [PROTO_123]
      906 CAPTURE                          VAL R63
      907 CAPTURE                          VAL R76
      908 CAPTURE                          VAL R84
      909 CAPTURE                          VAL R54
      910 CAPTURE                          VAL R92
      911 CAPTURE                          VAL R20
      912 CAPTURE                          VAL R61
      913 CAPTURE                          VAL R62
      914 CAPTURE                          VAL R66
      915 CAPTURE                          VAL R67
      916 CAPTURE                          VAL R8
      917 CAPTURE                          VAL R64
      918 CAPTURE                          VAL R65
      919 CAPTURE                          VAL R89
      920 CAPTURE                          VAL R88
      921 CAPTURE                          VAL R40
      922 CAPTURE                          VAL R68
      923 CAPTURE                          VAL R71
      924 CAPTURE                          VAL R77
      925 CAPTURE                          VAL R44
      926 CAPTURE                          VAL R83
      927 CAPTURE                          VAL R78
      928 CAPTURE                          VAL R72
      929 CAPTURE                          VAL R90
      930 CAPTURE                          VAL R73
      931 CAPTURE                          VAL R74
      932 CAPTURE                          VAL R75
      933 CAPTURE                          VAL R94
      934 CAPTURE                          VAL R95
      935 CAPTURE                          VAL R96
      936 CAPTURE                          VAL R79
      937 CAPTURE                          VAL R80
      938 CAPTURE                          VAL R91
      939 CAPTURE                          VAL R81
      940 CAPTURE                          VAL R82
      941 CAPTURE                          VAL R85
      942 CAPTURE                          VAL R10
      943 CAPTURE                          VAL R86
      944 CAPTURE                          VAL R93
      945 CAPTURE                          VAL R14
      946 CAPTURE                          VAL R97
      947 CAPTURE                          VAL R69
      948 CAPTURE                          VAL R70
      949 GETTABLEKS                       R120 R19 K170 ["connect"]
      951 MOVE                             R121 R118
      952 MOVE                             R122 R119
      953 CALL                             R120 2 1
      954 MOVE                             R121 R108
      955 CALL                             R120 1 -1
      956 CLOSEUPVALS                      R30
      957 RETURN                           R120 -1
