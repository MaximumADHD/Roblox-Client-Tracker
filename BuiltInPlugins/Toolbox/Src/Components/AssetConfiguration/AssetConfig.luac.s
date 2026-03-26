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
       24 DUPTABLE                         R3 K7 [{"name"}]
       25 SETTABLEKS                       R0 R3 K6 ["name"]
       27 NAMECALL                         R1 R1 K8 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

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
       24 DUPTABLE                         R3 K7 [{"description"}]
       25 SETTABLEKS                       R0 R3 K6 ["description"]
       27 NAMECALL                         R1 R1 K8 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

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
      152 SETTABLEKS                       R2 R0 K47 ["state"]
      154 GETTABLEKS                       R2 R0 K47 ["state"]
      156 GETUPVAL                         R4 3
      157 GETTABLEKS                       R3 R4 K48 ["hasAllowedAssetTypesForRelease"]
      159 GETTABLEKS                       R5 R0 K42 ["props"]
      161 GETTABLEKS                       R4 R5 K49 ["allowedAssetTypesForRelease"]
      163 CALL                             R3 1 1
      164 JUMPIFNOT                        R3 ; [+9]
      165 GETUPVAL                         R5 3
      166 GETTABLEKS                       R4 R5 K50 ["isBuyableMarketplaceAsset"]
      168 GETTABLEKS                       R6 R0 K42 ["props"]
      170 GETTABLEKS                       R5 R6 K51 ["assetTypeEnum"]
      172 CALL                             R4 1 1
      173 NOT                              R3 R4
      174 SETTABLEKS                       R3 R2 K20 ["isAssetTypeSelectionAllowed"]
      176 GETUPVAL                         R3 3
      177 GETTABLEKS                       R2 R3 K52 ["isMarketplaceAsset"]
      179 GETTABLEKS                       R3 R1 K51 ["assetTypeEnum"]
      181 CALL                             R2 1 1
      182 JUMPIFNOT                        R2 ; [+9]
      183 GETTABLEKS                       R2 R0 K47 ["state"]
      185 GETUPVAL                         R5 4
      186 GETTABLEKS                       R4 R5 K53 ["ASSET_STATUS"]
      188 GETTABLEKS                       R3 R4 K54 ["OffSale"]
      190 SETTABLEKS                       R3 R2 K15 ["status"]
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
      249 CAPTURE                          VAL R0
      250 CAPTURE                          UPVAL U7
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          UPVAL U9
      253 CAPTURE                          UPVAL U10
      254 CAPTURE                          UPVAL U4
      255 CAPTURE                          UPVAL U11
      256 CAPTURE                          UPVAL U3
      257 CAPTURE                          UPVAL U2
      258 CAPTURE                          UPVAL U12
      259 CAPTURE                          UPVAL U13
      260 CAPTURE                          UPVAL U14
      261 CAPTURE                          UPVAL U15
      262 CAPTURE                          UPVAL U1
      263 CAPTURE                          UPVAL U16
      264 CAPTURE                          UPVAL U17
      265 CAPTURE                          VAL R1
      266 CAPTURE                          UPVAL U18
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
      297 SETTABLEKS                       R3 R0 K72 ["onNameChange"]
      299 NEWCLOSURE                       R3 P16
      300 CAPTURE                          VAL R0
      301 SETTABLEKS                       R3 R0 K73 ["onDescChange"]
      303 NEWCLOSURE                       R3 P17
      304 CAPTURE                          VAL R0
      305 SETTABLEKS                       R3 R0 K74 ["onStatusChange"]
      307 NEWCLOSURE                       R3 P18
      308 CAPTURE                          VAL R0
      309 SETTABLEKS                       R3 R0 K75 ["onPriceChange"]
      311 GETUPVAL                         R3 21
      312 CALL                             R3 0 1
      313 JUMPIFNOT                        R3 ; [+10]
      314 NEWCLOSURE                       R3 P19
      315 CAPTURE                          VAL R0
      316 SETTABLEKS                       R3 R0 K76 ["onCategoryChange"]
      318 NEWCLOSURE                       R3 P20
      319 CAPTURE                          UPVAL U3
      320 CAPTURE                          VAL R0
      321 CAPTURE                          UPVAL U22
      322 SETTABLEKS                       R3 R0 K77 ["getUploadPermissionStatus"]
      324 NEWCLOSURE                       R3 P21
      325 CAPTURE                          VAL R0
      326 CAPTURE                          UPVAL U23
      327 CAPTURE                          UPVAL U7
      328 CAPTURE                          UPVAL U21
      329 SETTABLEKS                       R3 R0 K78 ["onAccessChange"]
      331 NEWCLOSURE                       R3 P22
      332 CAPTURE                          VAL R0
      333 SETTABLEKS                       R3 R0 K79 ["onDataConsentToggleClick"]
      335 NEWCLOSURE                       R3 P23
      336 CAPTURE                          VAL R0
      337 SETTABLEKS                       R3 R0 K80 ["toggleCopy"]
      339 NEWCLOSURE                       R3 P24
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R3 R0 K81 ["toggleComment"]
      343 NEWCLOSURE                       R3 P25
      344 CAPTURE                          VAL R0
      345 SETTABLEKS                       R3 R0 K82 ["toggleDeleteLocal"]
      347 GETUPVAL                         R4 2
      348 CALL                             R4 0 1
      349 JUMPIFNOT                        R4 ; [+4]
      350 NEWCLOSURE                       R3 P26
      351 CAPTURE                          VAL R0
      352 CAPTURE                          UPVAL U3
      353 JUMP                             ; [+1]
      354 LOADNIL                          R3
      355 SETTABLEKS                       R3 R0 K83 ["onSelectedColorChange"]
      357 NEWCLOSURE                       R3 P27
      358 CAPTURE                          VAL R0
      359 CAPTURE                          UPVAL U19
      360 CAPTURE                          UPVAL U20
      361 SETTABLEKS                       R3 R0 K84 ["versionsOnDescClicked"]
      363 NEWCLOSURE                       R3 P28
      364 CAPTURE                          VAL R0
      365 CAPTURE                          UPVAL U24
      366 CAPTURE                          UPVAL U25
      367 SETTABLEKS                       R3 R0 K85 ["versionsSaveInput"]
      369 NEWCLOSURE                       R3 P29
      370 CAPTURE                          VAL R0
      371 CAPTURE                          UPVAL U1
      372 SETTABLEKS                       R3 R0 K86 ["versionsSetStates"]
      374 NEWCLOSURE                       R3 P30
      375 CAPTURE                          VAL R0
      376 SETTABLEKS                       R3 R0 K87 ["versionsCloseInput"]
      378 NEWCLOSURE                       R3 P31
      379 CAPTURE                          VAL R0
      380 SETTABLEKS                       R3 R0 K88 ["setVersionError"]
      382 NEWCLOSURE                       R3 P32
      383 CAPTURE                          VAL R0
      384 SETTABLEKS                       R3 R0 K89 ["versionsSetPreviousInput"]
      386 NEWCLOSURE                       R3 P33
      387 CAPTURE                          VAL R0
      388 SETTABLEKS                       R3 R0 K90 ["versionsOnPageChange"]
      390 NEWCLOSURE                       R3 P34
      391 CAPTURE                          VAL R0
      392 CAPTURE                          VAL R1
      393 SETTABLEKS                       R3 R0 K91 ["onTabSelect"]
      395 NEWCLOSURE                       R3 P35
      396 CAPTURE                          VAL R0
      397 SETTABLEKS                       R3 R0 K92 ["onOverrideAssetSelected"]
      399 NEWCLOSURE                       R3 P36
      400 CAPTURE                          UPVAL U3
      401 CAPTURE                          VAL R0
      402 SETTABLEKS                       R3 R0 K93 ["chooseThumbnail"]
      404 NEWCLOSURE                       R3 P37
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R3 R0 K94 ["onSharingChanged"]
      408 NEWCLOSURE                       R3 P38
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R3 R0 K95 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      412 NEWCLOSURE                       R3 P39
      413 CAPTURE                          VAL R0
      414 CAPTURE                          UPVAL U26
      415 SETTABLEKS                       R3 R0 K96 ["getPublishingRequirements"]
      417 NEWCLOSURE                       R3 P40
      418 CAPTURE                          VAL R0
      419 SETTABLEKS                       R3 R0 K97 ["onAdditionalImagesChanged"]
      421 NEWCLOSURE                       R3 P41
      422 CAPTURE                          UPVAL U3
      423 CAPTURE                          VAL R0
      424 SETTABLEKS                       R3 R0 K98 ["isValidCatalogAsset"]
      426 NEWCLOSURE                       R3 P42
      427 CAPTURE                          VAL R0
      428 SETTABLEKS                       R3 R0 K99 ["validVersionDescriptions"]
      430 NEWCLOSURE                       R3 P43
      431 CAPTURE                          VAL R0
      432 CAPTURE                          UPVAL U1
      433 CAPTURE                          UPVAL U27
      434 SETTABLEKS                       R3 R0 K100 ["getMessageBoxProps"]
      436 RETURN                           R0 0

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
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 DUPTABLE                         R3 K1 [{"showColorPickerRequiredError"}]
        4 SETTABLEKS                       R0 R3 K0 ["showColorPickerRequiredError"]
        6 NAMECALL                         R1 R1 K2 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

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
      275 GETUPVAL                         R45 10
      276 GETTABLEKS                       R44 R45 K61 ["SCROLLBAR_PADDING"]
      278 SUBRK                            R43 R60 K44 ["SHOW_COMMENT"]
      279 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      281 GETIMPORT                        R46 K65 [Enum.AssetType.Audio]
      283 JUMPIFEQ                         R45 R46 ; [+2]
      285 LOADB                            R44 0 +1
      286 LOADB                            R44 1
      287 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      289 GETIMPORT                        R47 K67 [Enum.AssetType.Video]
      291 JUMPIFEQ                         R46 R47 ; [+2]
      293 LOADB                            R45 0 +1
      294 LOADB                            R45 1
      295 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      297 GETIMPORT                        R48 K69 [Enum.AssetType.Model]
      299 JUMPIFEQ                         R47 R48 ; [+2]
      301 LOADB                            R46 0 +1
      302 LOADB                            R46 1
      303 GETTABLEKS                       R48 R1 K28 ["assetTypeEnum"]
      305 GETIMPORT                        R49 K71 [Enum.AssetType.Plugin]
      307 JUMPIFEQ                         R48 R49 ; [+2]
      309 LOADB                            R47 0 +1
      310 LOADB                            R47 1
      311 LOADNIL                          R48
      312 LOADB                            R49 0
      313 GETTABLEKS                       R50 R1 K72 ["Localization"]
      315 LOADK                            R53 K73 ["General"]
      316 LOADK                            R54 K74 ["Proceed"]
      317 NAMECALL                         R51 R50 K75 ["getText"]
      319 CALL                             R51 3 1
      320 LOADK                            R54 K73 ["General"]
      321 LOADK                            R55 K76 ["GoBack"]
      322 NAMECALL                         R52 R50 K75 ["getText"]
      324 CALL                             R52 3 1
      325 LOADK                            R55 K77 ["AssetConfigSharing"]
      326 LOADK                            R56 K78 ["PublicConfirmationHeading"]
      327 NAMECALL                         R53 R50 K75 ["getText"]
      329 CALL                             R53 3 1
      330 LOADK                            R56 K77 ["AssetConfigSharing"]
      331 LOADK                            R57 K79 ["PublicConfirmationMessage"]
      332 NAMECALL                         R54 R50 K75 ["getText"]
      334 CALL                             R54 3 1
      335 LOADK                            R57 K77 ["AssetConfigSharing"]
      336 LOADK                            R58 K80 ["PublicConfirmationTitle"]
      337 NAMECALL                         R55 R50 K75 ["getText"]
      339 CALL                             R55 3 1
      340 GETTABLEKS                       R56 R2 K81 ["isConfirmationDialogEnabled"]
      342 GETTABLEKS                       R57 R2 K82 ["confirmationDialogKey"]
      344 LOADK                            R60 K83 ["AssetConfig"]
      345 LOADK                            R61 K84 ["PublishAssetDialogPublish"]
      346 NAMECALL                         R58 R50 K75 ["getText"]
      348 CALL                             R58 3 1
      349 LOADK                            R61 K73 ["General"]
      350 LOADK                            R62 K85 ["Cancel"]
      351 NAMECALL                         R59 R50 K75 ["getText"]
      353 CALL                             R59 3 1
      354 LOADK                            R62 K83 ["AssetConfig"]
      355 LOADK                            R63 K86 ["PublishAssetDialogDescription"]
      356 NAMECALL                         R60 R50 K75 ["getText"]
      358 CALL                             R60 3 1
      359 LOADK                            R63 K83 ["AssetConfig"]
      360 LOADK                            R64 K87 ["PublishAssetDialogHeading"]
      361 NAMECALL                         R61 R50 K75 ["getText"]
      363 CALL                             R61 3 1
      364 LOADK                            R64 K73 ["General"]
      365 LOADK                            R65 K88 ["RobloxStudio"]
      366 NAMECALL                         R62 R50 K75 ["getText"]
      368 CALL                             R62 3 1
      369 GETUPVAL                         R64 2
      370 CALL                             R64 0 1
      371 JUMPIFNOT                        R64 ; [+2]
      372 LOADNIL                          R63
      373 JUMP                             ; [+5]
      374 LOADK                            R65 K73 ["General"]
      375 LOADK                            R66 K88 ["RobloxStudio"]
      376 NAMECALL                         R63 R50 K75 ["getText"]
      378 CALL                             R63 3 1
      379 GETUPVAL                         R65 2
      380 CALL                             R65 0 1
      381 JUMPIFNOT                        R65 ; [+2]
      382 LOADNIL                          R64
      383 JUMP                             ; [+8]
      384 LOADK                            R66 K83 ["AssetConfig"]
      385 LOADK                            R67 K89 ["PayAndConfirmHeading"]
      386 DUPTABLE                         R68 K90 [{"name"}]
      387 SETTABLEKS                       R8 R68 K8 ["name"]
      389 NAMECALL                         R64 R50 K75 ["getText"]
      391 CALL                             R64 4 1
      392 GETTABLEKS                       R66 R1 K91 ["uploadFee"]
      394 JUMPIFNOT                        R66 ; [+3]
      395 GETTABLEKS                       R65 R1 K91 ["uploadFee"]
      397 JUMP                             ; [+1]
      398 LOADK                            R65 K7 [""]
      399 GETUPVAL                         R67 2
      400 CALL                             R67 0 1
      401 JUMPIFNOT                        R67 ; [+2]
      402 LOADNIL                          R66
      403 JUMP                             ; [+11]
      404 LOADK                            R68 K83 ["AssetConfig"]
      405 LOADK                            R69 K92 ["PayAndConfirmDescription"]
      406 DUPTABLE                         R70 K94 [{"amount"}]
      407 GETUPVAL                         R72 11
      408 MOVE                             R73 R65
      409 CONCAT                           R71 R72 R73
      410 SETTABLEKS                       R71 R70 K93 ["amount"]
      412 NAMECALL                         R66 R50 K75 ["getText"]
      414 CALL                             R66 4 1
      415 GETUPVAL                         R68 2
      416 CALL                             R68 0 1
      417 JUMPIFNOT                        R68 ; [+2]
      418 LOADNIL                          R67
      419 JUMP                             ; [+5]
      420 LOADK                            R69 K73 ["General"]
      421 LOADK                            R70 K95 ["PayAndSubmit"]
      422 NAMECALL                         R67 R50 K75 ["getText"]
      424 CALL                             R67 3 1
      425 GETTABLEKS                       R68 R2 K96 ["isPublishAssetsDialogEnabled"]
      427 JUMPIF                           R44 ; [+3]
      428 GETUPVAL                         R69 12
      429 JUMPIFNOT                        R69 ; [+3]
      430 JUMPIFNOT                        R45 ; [+2]
      431 NOT                              R48 R5
      432 JUMP                             ; [+2]
      433 JUMPIFNOT                        R46 ; [+1]
      434 LOADB                            R48 1
      435 JUMPIF                           R44 ; [+3]
      436 GETUPVAL                         R69 12
      437 JUMPIFNOT                        R69 ; [+2]
      438 JUMPIFNOT                        R45 ; [+1]
      439 LOADB                            R49 1
      440 JUMPIF                           R44 ; [+3]
      441 GETUPVAL                         R69 12
      442 JUMPIFNOT                        R69 ; [+2]
      443 JUMPIFNOT                        R45 ; [+1]
      444 MOVE                             R11 R17
      445 GETUPVAL                         R70 4
      446 GETTABLEKS                       R69 R70 K58 ["isMakeupAsset"]
      448 MOVE                             R70 R24
      449 CALL                             R69 1 1
      450 GETUPVAL                         R70 9
      451 CALL                             R70 0 1
      452 JUMPIFNOT                        R70 ; [+8]
      453 MOVE                             R70 R69
      454 JUMPIFNOT                        R70 ; [+6]
      455 GETTABLEKS                       R71 R2 K59 ["selectedColor"]
      457 JUMPIFEQKNIL                     R71 ; [+2]
      459 LOADB                            R70 0 +1
      460 LOADB                            R70 1
      461 GETUPVAL                         R72 13
      462 GETTABLEKS                       R71 R72 K97 ["createElement"]
      464 LOADK                            R72 K98 ["Frame"]
      465 DUPTABLE                         R73 K102 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      466 SETTABLEKS                       R4 R73 K3 ["Size"]
      468 LOADN                            R74 0
      469 SETTABLEKS                       R74 R73 K99 ["BackgroundTransparency"]
      471 GETTABLEKS                       R75 R3 K103 ["assetConfig"]
      473 GETTABLEKS                       R74 R75 K104 ["backgroundColor"]
      475 SETTABLEKS                       R74 R73 K100 ["BackgroundColor3"]
      477 LOADN                            R74 0
      478 SETTABLEKS                       R74 R73 K101 ["BorderSizePixel"]
      480 DUPTABLE                         R74 K112 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      481 GETUPVAL                         R76 13
      482 GETTABLEKS                       R75 R76 K97 ["createElement"]
      484 LOADK                            R76 K105 ["UIListLayout"]
      485 DUPTABLE                         R77 K118 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      486 GETIMPORT                        R78 K120 [Enum.FillDirection.Vertical]
      488 SETTABLEKS                       R78 R77 K113 ["FillDirection"]
      490 GETIMPORT                        R78 K122 [Enum.HorizontalAlignment.Left]
      492 SETTABLEKS                       R78 R77 K114 ["HorizontalAlignment"]
      494 GETIMPORT                        R78 K124 [Enum.VerticalAlignment.Bottom]
      496 SETTABLEKS                       R78 R77 K115 ["VerticalAlignment"]
      498 GETIMPORT                        R78 K126 [Enum.SortOrder.LayoutOrder]
      500 SETTABLEKS                       R78 R77 K116 ["SortOrder"]
      502 GETIMPORT                        R78 K129 [UDim.new]
      504 LOADN                            R79 0
      505 LOADN                            R80 0
      506 CALL                             R78 2 1
      507 SETTABLEKS                       R78 R77 K117 ["Padding"]
      509 CALL                             R75 2 1
      510 SETTABLEKS                       R75 R74 K105 ["UIListLayout"]
      512 MOVE                             R75 R20
      513 JUMPIFNOT                        R75 ; [+9]
      514 GETUPVAL                         R76 13
      515 GETTABLEKS                       R75 R76 K97 ["createElement"]
      517 GETUPVAL                         R76 14
      518 GETTABLEKS                       R77 R0 K130 ["getMessageBoxProps"]
      520 MOVE                             R78 R19
      521 CALL                             R77 1 -1
      522 CALL                             R75 -1 1
      523 SETTABLEKS                       R75 R74 K106 ["AssetConfigMessageBox"]
      525 GETUPVAL                         R76 2
      526 CALL                             R76 0 1
      527 JUMPIFNOT                        R76 ; [+2]
      528 LOADNIL                          R75
      529 JUMP                             ; [+28]
      530 MOVE                             R75 R21
      531 JUMPIFNOT                        R75 ; [+26]
      532 GETUPVAL                         R76 13
      533 GETTABLEKS                       R75 R76 K97 ["createElement"]
      535 GETUPVAL                         R76 15
      536 DUPTABLE                         R77 K139 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      537 SETTABLEKS                       R67 R77 K131 ["AcceptText"]
      539 SETTABLEKS                       R59 R77 K132 ["CancelText"]
      541 SETTABLEKS                       R66 R77 K133 ["Description"]
      543 SETTABLEKS                       R21 R77 K134 ["Enabled"]
      545 SETTABLEKS                       R64 R77 K135 ["Heading"]
      547 GETTABLEKS                       R78 R0 K140 ["onAssetPublishPayAndConfirmAccepted"]
      549 SETTABLEKS                       R78 R77 K136 ["OnAccepted"]
      551 GETTABLEKS                       R78 R0 K141 ["onAssetPublishPayAndConfirmCanceled"]
      553 SETTABLEKS                       R78 R77 K137 ["OnCanceled"]
      555 SETTABLEKS                       R63 R77 K138 ["Title"]
      557 CALL                             R75 2 1
      558 SETTABLEKS                       R75 R74 K107 ["RobuxSpendConfirmationMessageBox"]
      560 GETUPVAL                         R76 2
      561 CALL                             R76 0 1
      562 JUMPIFNOT                        R76 ; [+24]
      563 GETTABLEKS                       R75 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      565 JUMPIFNOT                        R75 ; [+22]
      566 GETUPVAL                         R76 13
      567 GETTABLEKS                       R75 R76 K97 ["createElement"]
      569 GETUPVAL                         R76 16
      570 DUPTABLE                         R77 K145 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      571 NEWCLOSURE                       R78 P0
      572 CAPTURE                          VAL R0
      573 SETTABLEKS                       R78 R77 K142 ["OnUploadConfirmed"]
      575 GETTABLEKS                       R79 R1 K91 ["uploadFee"]
      577 ORK                              R78 R79 K7 [""]
      578 SETTABLEKS                       R78 R77 K143 ["UploadFee"]
      580 GETTABLEKS                       R79 R2 K8 ["name"]
      582 ORK                              R78 R79 K7 [""]
      583 SETTABLEKS                       R78 R77 K144 ["ItemName"]
      585 CALL                             R75 2 1
      586 JUMP                             ; [+1]
      587 LOADNIL                          R75
      588 SETTABLEKS                       R75 R74 K108 ["AvatarItemMessageBox"]
      590 JUMPIFNOT                        R68 ; [+30]
      591 GETUPVAL                         R76 13
      592 GETTABLEKS                       R75 R76 K97 ["createElement"]
      594 GETUPVAL                         R76 17
      595 DUPTABLE                         R77 K147 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      596 SETTABLEKS                       R58 R77 K131 ["AcceptText"]
      598 SETTABLEKS                       R59 R77 K132 ["CancelText"]
      600 LOADNIL                          R78
      601 SETTABLEKS                       R78 R77 K146 ["ConfirmationKey"]
      603 SETTABLEKS                       R60 R77 K133 ["Description"]
      605 SETTABLEKS                       R68 R77 K134 ["Enabled"]
      607 SETTABLEKS                       R61 R77 K135 ["Heading"]
      609 GETTABLEKS                       R78 R0 K148 ["onAssetPublishDialogAccepted"]
      611 SETTABLEKS                       R78 R77 K136 ["OnAccepted"]
      613 GETTABLEKS                       R78 R0 K149 ["onAssetPublishDialogCanceled"]
      615 SETTABLEKS                       R78 R77 K137 ["OnCanceled"]
      617 SETTABLEKS                       R62 R77 K138 ["Title"]
      619 CALL                             R75 2 1
      620 JUMP                             ; [+1]
      621 LOADNIL                          R75
      622 SETTABLEKS                       R75 R74 K109 ["AssetConfigMakeAssetPublicMessageBox"]
      624 GETUPVAL                         R76 13
      625 GETTABLEKS                       R75 R76 K97 ["createElement"]
      627 LOADK                            R76 K98 ["Frame"]
      628 DUPTABLE                         R77 K150 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      629 GETIMPORT                        R78 K152 [UDim2.new]
      631 LOADN                            R79 1
      632 LOADN                            R80 0
      633 LOADN                            R81 1
      634 LOADN                            R82 194
      635 CALL                             R78 4 1
      636 SETTABLEKS                       R78 R77 K3 ["Size"]
      638 LOADN                            R78 1
      639 SETTABLEKS                       R78 R77 K99 ["BackgroundTransparency"]
      641 LOADN                            R78 1
      642 SETTABLEKS                       R78 R77 K125 ["LayoutOrder"]
      644 DUPTABLE                         R78 K162 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      645 GETUPVAL                         R80 13
      646 GETTABLEKS                       R79 R80 K97 ["createElement"]
      648 LOADK                            R80 K105 ["UIListLayout"]
      649 DUPTABLE                         R81 K118 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      650 GETIMPORT                        R82 K164 [Enum.FillDirection.Horizontal]
      652 SETTABLEKS                       R82 R81 K113 ["FillDirection"]
      654 GETIMPORT                        R82 K122 [Enum.HorizontalAlignment.Left]
      656 SETTABLEKS                       R82 R81 K114 ["HorizontalAlignment"]
      658 GETIMPORT                        R82 K166 [Enum.VerticalAlignment.Top]
      660 SETTABLEKS                       R82 R81 K115 ["VerticalAlignment"]
      662 GETIMPORT                        R82 K126 [Enum.SortOrder.LayoutOrder]
      664 SETTABLEKS                       R82 R81 K116 ["SortOrder"]
      666 GETIMPORT                        R82 K129 [UDim.new]
      668 LOADN                            R83 0
      669 LOADN                            R84 0
      670 CALL                             R82 2 1
      671 SETTABLEKS                       R82 R81 K117 ["Padding"]
      673 CALL                             R79 2 1
      674 SETTABLEKS                       R79 R78 K105 ["UIListLayout"]
      676 GETUPVAL                         R80 13
      677 GETTABLEKS                       R79 R80 K97 ["createElement"]
      679 GETUPVAL                         R80 17
      680 DUPTABLE                         R81 K147 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      681 SETTABLEKS                       R51 R81 K131 ["AcceptText"]
      683 SETTABLEKS                       R52 R81 K132 ["CancelText"]
      685 SETTABLEKS                       R57 R81 K146 ["ConfirmationKey"]
      687 SETTABLEKS                       R54 R81 K133 ["Description"]
      689 SETTABLEKS                       R56 R81 K134 ["Enabled"]
      691 SETTABLEKS                       R53 R81 K135 ["Heading"]
      693 GETTABLEKS                       R82 R0 K167 ["onDialogAccepted"]
      695 SETTABLEKS                       R82 R81 K136 ["OnAccepted"]
      697 GETTABLEKS                       R82 R0 K168 ["onDialogCanceled"]
      699 SETTABLEKS                       R82 R81 K137 ["OnCanceled"]
      701 SETTABLEKS                       R55 R81 K138 ["Title"]
      703 CALL                             R79 2 1
      704 SETTABLEKS                       R79 R78 K153 ["SharingConfirmationDialog"]
      706 GETUPVAL                         R80 13
      707 GETTABLEKS                       R79 R80 K97 ["createElement"]
      709 GETUPVAL                         R80 18
      710 DUPTABLE                         R81 K181 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor"}]
      711 LOADN                            R82 240
      712 SETTABLEKS                       R82 R81 K169 ["TotalWidth"]
      714 SETTABLEKS                       R38 R81 K170 ["TabItems"]
      716 SETTABLEKS                       R6 R81 K171 ["CurrentTab"]
      718 SETTABLEKS                       R37 R81 K172 ["PreviewType"]
      720 SETTABLEKS                       R25 R81 K173 ["ScreenFlowType"]
      722 SETTABLEKS                       R16 R81 K174 ["AssetStatus"]
      724 SETTABLEKS                       R7 R81 K175 ["AssetId"]
      726 SETTABLEKS                       R22 R81 K176 ["IconFile"]
      728 SETTABLEKS                       R24 R81 K177 ["AssetTypeEnum"]
      730 SETTABLEKS                       R29 R81 K178 ["AllowedBundleTypeSettings"]
      732 GETTABLEKS                       R82 R0 K182 ["onTabSelect"]
      734 SETTABLEKS                       R82 R81 K179 ["OnTabSelect"]
      736 GETTABLEKS                       R82 R0 K183 ["chooseThumbnail"]
      738 SETTABLEKS                       R82 R81 K180 ["ChooseThumbnail"]
      740 LOADN                            R82 1
      741 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
      743 GETUPVAL                         R83 19
      744 CALL                             R83 0 1
      745 JUMPIFNOT                        R83 ; [+2]
      746 MOVE                             R82 R24
      747 JUMP                             ; [+1]
      748 LOADNIL                          R82
      749 SETTABLEKS                       R82 R81 K28 ["assetTypeEnum"]
      751 GETUPVAL                         R83 9
      752 CALL                             R83 0 1
      753 JUMPIFNOT                        R83 ; [+4]
      754 JUMPIFNOT                        R69 ; [+3]
      755 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
      757 JUMP                             ; [+1]
      758 LOADNIL                          R82
      759 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
      761 CALL                             R79 2 1
      762 SETTABLEKS                       R79 R78 K154 ["Preview"]
      764 GETUPVAL                         R80 13
      765 GETTABLEKS                       R79 R80 K97 ["createElement"]
      767 LOADK                            R80 K98 ["Frame"]
      768 DUPTABLE                         R81 K184 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      769 GETIMPORT                        R82 K152 [UDim2.new]
      771 LOADN                            R83 0
      772 LOADN                            R84 2
      773 LOADN                            R85 1
      774 LOADN                            R86 0
      775 CALL                             R82 4 1
      776 SETTABLEKS                       R82 R81 K3 ["Size"]
      778 LOADN                            R82 0
      779 SETTABLEKS                       R82 R81 K99 ["BackgroundTransparency"]
      781 GETTABLEKS                       R83 R3 K185 ["divider"]
      783 GETTABLEKS                       R82 R83 K186 ["verticalLineColor"]
      785 SETTABLEKS                       R82 R81 K100 ["BackgroundColor3"]
      787 LOADN                            R82 0
      788 SETTABLEKS                       R82 R81 K101 ["BorderSizePixel"]
      790 LOADN                            R82 2
      791 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
      793 CALL                             R79 2 1
      794 SETTABLEKS                       R79 R78 K155 ["VerticalLine"]
      796 MOVE                             R79 R39
      797 JUMPIFNOT                        R79 ; [+50]
      798 GETUPVAL                         R80 13
      799 GETTABLEKS                       R79 R80 K97 ["createElement"]
      801 GETUPVAL                         R80 20
      802 DUPTABLE                         R81 K187 [{"LayoutOrder", "Size"}]
      803 LOADN                            R82 3
      804 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
      806 GETIMPORT                        R82 K152 [UDim2.new]
      808 LOADN                            R83 1
      809 LOADN                            R84 16
      810 LOADN                            R85 1
      811 LOADN                            R86 0
      812 CALL                             R82 4 1
      813 SETTABLEKS                       R82 R81 K3 ["Size"]
      815 DUPTABLE                         R82 K189 [{"LoadingIndicator"}]
      816 GETUPVAL                         R84 13
      817 GETTABLEKS                       R83 R84 K97 ["createElement"]
      819 GETUPVAL                         R84 21
      820 DUPTABLE                         R85 K192 [{"Size", "AnchorPoint", "Position"}]
      821 GETIMPORT                        R86 K152 [UDim2.new]
      823 LOADN                            R87 0
      824 LOADN                            R88 100
      825 LOADN                            R89 0
      826 LOADN                            R90 100
      827 CALL                             R86 4 1
      828 SETTABLEKS                       R86 R85 K3 ["Size"]
      830 GETIMPORT                        R86 K194 [Vector2.new]
      832 LOADK                            R87 K195 [0.5]
      833 LOADK                            R88 K195 [0.5]
      834 CALL                             R86 2 1
      835 SETTABLEKS                       R86 R85 K190 ["AnchorPoint"]
      837 GETIMPORT                        R86 K197 [UDim2.fromScale]
      839 LOADK                            R87 K195 [0.5]
      840 LOADK                            R88 K195 [0.5]
      841 CALL                             R86 2 1
      842 SETTABLEKS                       R86 R85 K191 ["Position"]
      844 CALL                             R83 2 1
      845 SETTABLEKS                       R83 R82 K188 ["LoadingIndicator"]
      847 CALL                             R79 3 1
      848 SETTABLEKS                       R79 R78 K156 ["LoadingIndicatorWrapper"]
      850 NOT                              R79 R39
      851 JUMPIFNOT                        R79 ; [+226]
      852 GETUPVAL                         R79 1
      853 MOVE                             R81 R6
      854 NAMECALL                         R79 R79 K198 ["isGeneral"]
      856 CALL                             R79 2 1
      857 JUMPIFNOT                        R79 ; [+220]
      858 GETUPVAL                         R80 13
      859 GETTABLEKS                       R79 R80 K97 ["createElement"]
      861 GETUPVAL                         R80 22
      862 NEWTABLE                         R81 64 0
      864 GETIMPORT                        R82 K152 [UDim2.new]
      866 LOADN                            R83 1
      867 LOADN                            R84 16
      868 LOADN                            R85 1
      869 LOADN                            R86 0
      870 CALL                             R82 4 1
      871 SETTABLEKS                       R82 R81 K3 ["Size"]
      873 SETTABLEKS                       R48 R81 K199 ["allowSelectPrivate"]
      875 SETTABLEKS                       R7 R81 K6 ["assetId"]
      877 SETTABLEKS                       R8 R81 K8 ["name"]
      879 SETTABLEKS                       R9 R81 K9 ["description"]
      881 SETTABLEKS                       R10 R81 K13 ["owner"]
      883 GETUPVAL                         R83 7
      884 CALL                             R83 0 1
      885 JUMPIFNOT                        R83 ; [+2]
      886 MOVE                             R82 R41
      887 JUMP                             ; [+1]
      888 LOADNIL                          R82
      889 SETTABLEKS                       R82 R81 K53 ["canUploadWithUgcRestrictions"]
      891 GETUPVAL                         R83 7
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
      915 GETTABLEKS                       R82 R0 K200 ["onNameChange"]
      917 SETTABLEKS                       R82 R81 K200 ["onNameChange"]
      919 GETTABLEKS                       R82 R0 K201 ["onDescChange"]
      921 SETTABLEKS                       R82 R81 K201 ["onDescChange"]
      923 GETUPVAL                         R83 7
      924 CALL                             R83 0 1
      925 JUMPIFNOT                        R83 ; [+3]
      926 GETTABLEKS                       R82 R0 K202 ["onCategoryChange"]
      928 JUMP                             ; [+1]
      929 LOADNIL                          R82
      930 SETTABLEKS                       R82 R81 K202 ["onCategoryChange"]
      932 GETTABLEKS                       R82 R0 K203 ["onAccessChange"]
      934 SETTABLEKS                       R82 R81 K204 ["onOwnerSelected"]
      936 GETTABLEKS                       R82 R0 K205 ["onSharingChanged"]
      938 SETTABLEKS                       R82 R81 K205 ["onSharingChanged"]
      940 GETTABLEKS                       R82 R0 K206 ["onAdditionalImagesChanged"]
      942 SETTABLEKS                       R82 R81 K206 ["onAdditionalImagesChanged"]
      944 GETTABLEKS                       R82 R0 K207 ["toggleCopy"]
      946 SETTABLEKS                       R82 R81 K207 ["toggleCopy"]
      948 GETTABLEKS                       R82 R0 K208 ["toggleComment"]
      950 SETTABLEKS                       R82 R81 K208 ["toggleComment"]
      952 GETTABLEKS                       R82 R0 K209 ["toggleDeleteLocal"]
      954 SETTABLEKS                       R82 R81 K209 ["toggleDeleteLocal"]
      956 GETTABLEKS                       R82 R2 K210 ["dataSharingEnabled"]
      958 SETTABLEKS                       R82 R81 K210 ["dataSharingEnabled"]
      960 GETTABLEKS                       R82 R2 K211 ["dataSharingToggled"]
      962 SETTABLEKS                       R82 R81 K211 ["dataSharingToggled"]
      964 GETTABLEKS                       R82 R0 K212 ["onDataConsentToggleClick"]
      966 SETTABLEKS                       R82 R81 K212 ["onDataConsentToggleClick"]
      968 SETTABLEKS                       R32 R81 K213 ["displayOwnership"]
      970 SETTABLEKS                       R33 R81 K214 ["displayCopy"]
      972 SETTABLEKS                       R35 R81 K215 ["displayComment"]
      974 SETTABLEKS                       R36 R81 K216 ["displayAssetType"]
      976 SETTABLEKS                       R49 R81 K217 ["displaySharing"]
      978 SETTABLEKS                       R34 R81 K218 ["displayAssetTypeSelection"]
      980 JUMPIFNOT                        R47 ; [+2]
      981 MOVE                             R82 R27
      982 JUMP                             ; [+1]
      983 LOADNIL                          R82
      984 SETTABLEKS                       R82 R81 K30 ["allowedAssetTypesForRelease"]
      986 SETTABLEKS                       R28 R81 K31 ["allowedAssetTypesForFree"]
      988 JUMPIFNOT                        R47 ; [+2]
      989 MOVE                             R82 R16
      990 JUMP                             ; [+1]
      991 LOADNIL                          R82
      992 SETTABLEKS                       R82 R81 K219 ["newAssetStatus"]
      994 JUMPIFNOT                        R47 ; [+2]
      995 MOVE                             R82 R30
      996 JUMP                             ; [+1]
      997 LOADNIL                          R82
      998 SETTABLEKS                       R82 R81 K220 ["currentAssetStatus"]
     1000 JUMPIFNOT                        R47 ; [+3]
     1001 GETTABLEKS                       R82 R0 K221 ["onStatusChange"]
     1003 JUMP                             ; [+1]
     1004 LOADNIL                          R82
     1005 SETTABLEKS                       R82 R81 K221 ["onStatusChange"]
     1007 JUMPIFNOT                        R47 ; [+3]
     1008 GETTABLEKS                       R82 R0 K222 ["onPriceChange"]
     1010 JUMP                             ; [+1]
     1011 LOADNIL                          R82
     1012 SETTABLEKS                       R82 R81 K222 ["onPriceChange"]
     1014 JUMPIFNOT                        R47 ; [+2]
     1015 MOVE                             R82 R31
     1016 JUMP                             ; [+1]
     1017 LOADNIL                          R82
     1018 SETTABLEKS                       R82 R81 K35 ["price"]
     1020 LOADNIL                          R82
     1021 SETTABLEKS                       R82 R81 K223 ["minPrice"]
     1023 LOADNIL                          R82
     1024 SETTABLEKS                       R82 R81 K224 ["maxPrice"]
     1026 LOADNIL                          R82
     1027 SETTABLEKS                       R82 R81 K225 ["feeRate"]
     1029 LOADNIL                          R82
     1030 SETTABLEKS                       R82 R81 K226 ["isPriceValid"]
     1032 LOADN                            R82 3
     1033 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
     1035 GETTABLEKS                       R82 R1 K47 ["instances"]
     1037 SETTABLEKS                       R82 R81 K47 ["instances"]
     1039 GETUPVAL                         R83 9
     1040 CALL                             R83 0 1
     1041 JUMPIFNOT                        R83 ; [+2]
     1042 MOVE                             R82 R69
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R82
     1045 SETTABLEKS                       R82 R81 K227 ["showColorPicker"]
     1047 GETUPVAL                         R83 9
     1048 CALL                             R83 0 1
     1049 JUMPIFNOT                        R83 ; [+4]
     1050 JUMPIFNOT                        R69 ; [+3]
     1051 GETTABLEKS                       R82 R2 K228 ["showColorPickerRequiredError"]
     1053 JUMP                             ; [+1]
     1054 LOADNIL                          R82
     1055 SETTABLEKS                       R82 R81 K228 ["showColorPickerRequiredError"]
     1057 GETUPVAL                         R83 9
     1058 CALL                             R83 0 1
     1059 JUMPIFNOT                        R83 ; [+4]
     1060 JUMPIFNOT                        R69 ; [+3]
     1061 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R82
     1065 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
     1067 GETUPVAL                         R83 9
     1068 CALL                             R83 0 1
     1069 JUMPIFNOT                        R83 ; [+4]
     1070 JUMPIFNOT                        R69 ; [+3]
     1071 GETTABLEKS                       R82 R0 K229 ["onSelectedColorChange"]
     1073 JUMP                             ; [+1]
     1074 LOADNIL                          R82
     1075 SETTABLEKS                       R82 R81 K230 ["setSelectedColor"]
     1077 CALL                             R79 2 1
     1078 SETTABLEKS                       R79 R78 K157 ["PublishAsset"]
     1080 GETUPVAL                         R79 1
     1081 MOVE                             R81 R6
     1082 NAMECALL                         R79 R79 K231 ["isVersions"]
     1084 CALL                             R79 2 1
     1085 JUMPIFNOT                        R79 ; [+72]
     1086 GETUPVAL                         R80 13
     1087 GETTABLEKS                       R79 R80 K97 ["createElement"]
     1089 GETUPVAL                         R80 23
     1090 DUPTABLE                         R81 K245 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1091 GETIMPORT                        R82 K152 [UDim2.new]
     1093 LOADN                            R83 1
     1094 LOADN                            R84 16
     1095 LOADN                            R85 1
     1096 LOADN                            R86 236
     1097 CALL                             R82 4 1
     1098 SETTABLEKS                       R82 R81 K3 ["Size"]
     1100 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1102 LOADN                            R82 3
     1103 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
     1105 GETTABLEKS                       R82 R2 K246 ["versionsCurrentItem"]
     1107 SETTABLEKS                       R82 R81 K232 ["currentItem"]
     1109 GETTABLEKS                       R82 R2 K247 ["versionsRootItems"]
     1111 SETTABLEKS                       R82 R81 K233 ["rootItems"]
     1113 GETTABLEKS                       R82 R2 K248 ["versionsOpenInputKey"]
     1115 SETTABLEKS                       R82 R81 K234 ["openInputKey"]
     1117 GETTABLEKS                       R82 R2 K249 ["versionsPreviousInput"]
     1119 SETTABLEKS                       R82 R81 K235 ["previousInput"]
     1121 GETTABLEKS                       R82 R2 K250 ["versionsPageIndex"]
     1123 SETTABLEKS                       R82 R81 K236 ["pageIndex"]
     1125 GETTABLEKS                       R82 R2 K251 ["versionsPageRootItems"]
     1127 SETTABLEKS                       R82 R81 K237 ["pageRootItems"]
     1129 GETTABLEKS                       R82 R1 K238 ["versionHistory"]
     1131 SETTABLEKS                       R82 R81 K238 ["versionHistory"]
     1133 GETTABLEKS                       R82 R0 K252 ["versionsOnDescClicked"]
     1135 SETTABLEKS                       R82 R81 K239 ["onDescClicked"]
     1137 GETTABLEKS                       R82 R0 K253 ["versionsCloseInput"]
     1139 SETTABLEKS                       R82 R81 K240 ["closeInput"]
     1141 GETTABLEKS                       R82 R0 K241 ["setVersionError"]
     1143 SETTABLEKS                       R82 R81 K241 ["setVersionError"]
     1145 GETTABLEKS                       R82 R0 K254 ["versionsSetPreviousInput"]
     1147 SETTABLEKS                       R82 R81 K242 ["setPreviousInput"]
     1149 GETTABLEKS                       R82 R0 K255 ["versionsOnPageChange"]
     1151 SETTABLEKS                       R82 R81 K243 ["onPageChange"]
     1153 GETTABLEKS                       R82 R0 K256 ["versionsSetStates"]
     1155 SETTABLEKS                       R82 R81 K244 ["setStates"]
     1157 CALL                             R79 2 1
     1158 SETTABLEKS                       R79 R78 K158 ["Versions"]
     1160 GETUPVAL                         R80 1
     1161 MOVE                             R82 R6
     1162 NAMECALL                         R80 R80 K257 ["isSales"]
     1164 CALL                             R80 2 1
     1165 JUMPIFNOT                        R80 ; [+21]
     1166 GETUPVAL                         R80 13
     1167 GETTABLEKS                       R79 R80 K97 ["createElement"]
     1169 GETUPVAL                         R80 24
     1170 DUPTABLE                         R81 K260 [{"size", "assetId", "layoutOrder"}]
     1171 GETIMPORT                        R82 K152 [UDim2.new]
     1173 LOADN                            R83 1
     1174 LOADN                            R84 16
     1175 LOADN                            R85 1
     1176 LOADN                            R86 0
     1177 CALL                             R82 4 1
     1178 SETTABLEKS                       R82 R81 K258 ["size"]
     1180 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1182 LOADN                            R82 3
     1183 SETTABLEKS                       R82 R81 K259 ["layoutOrder"]
     1185 CALL                             R79 2 1
     1186 JUMP                             ; [+1]
     1187 LOADNIL                          R79
     1188 SETTABLEKS                       R79 R78 K159 ["Sales"]
     1190 GETUPVAL                         R79 1
     1191 MOVE                             R81 R6
     1192 NAMECALL                         R79 R79 K261 ["isOverride"]
     1194 CALL                             R79 2 1
     1195 JUMPIFNOT                        R79 ; [+28]
     1196 GETUPVAL                         R80 13
     1197 GETTABLEKS                       R79 R80 K97 ["createElement"]
     1199 GETUPVAL                         R80 25
     1200 DUPTABLE                         R81 K263 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1201 GETIMPORT                        R82 K152 [UDim2.new]
     1203 LOADN                            R83 1
     1204 LOADN                            R84 16
     1205 LOADN                            R85 1
     1206 LOADN                            R86 0
     1207 CALL                             R82 4 1
     1208 SETTABLEKS                       R82 R81 K3 ["Size"]
     1210 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1212 GETTABLEKS                       R82 R1 K47 ["instances"]
     1214 SETTABLEKS                       R82 R81 K47 ["instances"]
     1216 GETTABLEKS                       R82 R0 K262 ["onOverrideAssetSelected"]
     1218 SETTABLEKS                       R82 R81 K262 ["onOverrideAssetSelected"]
     1220 LOADN                            R82 3
     1221 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
     1223 CALL                             R79 2 1
     1224 SETTABLEKS                       R79 R78 K160 ["OverrideAsset"]
     1226 GETUPVAL                         R79 1
     1227 MOVE                             R81 R6
     1228 NAMECALL                         R79 R79 K264 ["isPermissions"]
     1230 CALL                             R79 2 1
     1231 JUMPIFNOT                        R79 ; [+59]
     1232 GETUPVAL                         R80 26
     1233 CALL                             R80 0 1
     1234 JUMPIFNOT                        R80 ; [+34]
     1235 GETUPVAL                         R80 13
     1236 GETTABLEKS                       R79 R80 K97 ["createElement"]
     1238 GETUPVAL                         R81 27
     1239 GETTABLEKS                       R80 R81 K265 ["AsyncCache"]
     1241 NEWTABLE                         R81 0 0
     1243 NEWTABLE                         R82 0 1
     1245 GETUPVAL                         R84 13
     1246 GETTABLEKS                       R83 R84 K97 ["createElement"]
     1248 GETUPVAL                         R84 28
     1249 DUPTABLE                         R85 K266 [{"Size", "AssetId", "LayoutOrder"}]
     1250 GETIMPORT                        R86 K152 [UDim2.new]
     1252 LOADN                            R87 1
     1253 MOVE                             R88 R43
     1254 LOADN                            R89 1
     1255 LOADN                            R90 0
     1256 CALL                             R86 4 1
     1257 SETTABLEKS                       R86 R85 K3 ["Size"]
     1259 SETTABLEKS                       R7 R85 K175 ["AssetId"]
     1261 LOADN                            R86 3
     1262 SETTABLEKS                       R86 R85 K125 ["LayoutOrder"]
     1264 CALL                             R83 2 -1
     1265 SETLIST                          R82 R83 -1 [1]
     1267 CALL                             R79 3 1
     1268 JUMP                             ; [+22]
     1269 GETUPVAL                         R80 13
     1270 GETTABLEKS                       R79 R80 K97 ["createElement"]
     1272 GETUPVAL                         R80 29
     1273 DUPTABLE                         R81 K268 [{"Size", "Owner", "AssetId", "LayoutOrder"}]
     1274 GETIMPORT                        R82 K152 [UDim2.new]
     1276 LOADN                            R83 1
     1277 MOVE                             R84 R43
     1278 LOADN                            R85 1
     1279 LOADN                            R86 0
     1280 CALL                             R82 4 1
     1281 SETTABLEKS                       R82 R81 K3 ["Size"]
     1283 SETTABLEKS                       R10 R81 K267 ["Owner"]
     1285 SETTABLEKS                       R7 R81 K175 ["AssetId"]
     1287 LOADN                            R82 3
     1288 SETTABLEKS                       R82 R81 K125 ["LayoutOrder"]
     1290 CALL                             R79 2 1
     1291 SETTABLEKS                       R79 R78 K161 ["PackagePermissions"]
     1293 CALL                             R75 3 1
     1294 SETTABLEKS                       R75 R74 K110 ["MainPage"]
     1296 GETUPVAL                         R76 13
     1297 GETTABLEKS                       R75 R76 K97 ["createElement"]
     1299 GETUPVAL                         R76 30
     1300 DUPTABLE                         R77 K273 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1301 GETTABLEKS                       R78 R2 K274 ["overrideAssetId"]
     1303 SETTABLEKS                       R78 R77 K175 ["AssetId"]
     1305 SETTABLEKS                       R40 R77 K269 ["CanSave"]
     1307 LOADN                            R78 2
     1308 SETTABLEKS                       R78 R77 K125 ["LayoutOrder"]
     1310 GETIMPORT                        R78 K152 [UDim2.new]
     1312 LOADN                            R79 1
     1313 LOADN                            R80 0
     1314 LOADN                            R81 0
     1315 LOADN                            R82 62
     1316 CALL                             R78 4 1
     1317 SETTABLEKS                       R78 R77 K3 ["Size"]
     1319 GETTABLEKS                       R78 R0 K275 ["tryCancelWithYield"]
     1321 SETTABLEKS                       R78 R77 K270 ["TryCancel"]
     1323 GETTABLEKS                       R78 R0 K276 ["tryPublishWithConfirmDialog"]
     1325 SETTABLEKS                       R78 R77 K271 ["TryPublish"]
     1327 GETUPVAL                         R79 9
     1328 CALL                             R79 0 1
     1329 JUMPIFNOT                        R79 ; [+5]
     1330 JUMPIF                           R40 ; [+4]
     1331 NEWCLOSURE                       R78 P1
     1332 CAPTURE                          VAL R70
     1333 CAPTURE                          VAL R0
     1334 JUMP                             ; [+1]
     1335 LOADNIL                          R78
     1336 SETTABLEKS                       R78 R77 K272 ["OnPublishButtonHover"]
     1338 CALL                             R75 2 1
     1339 SETTABLEKS                       R75 R74 K111 ["Footer"]
     1341 CALL                             R71 3 -1
     1342 RETURN                           R71 -1

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
      722 NEWCLOSURE                       R116 P0
      723 CAPTURE                          VAL R14
      724 CAPTURE                          VAL R41
      725 CAPTURE                          VAL R115
      726 CAPTURE                          VAL R43
      727 CAPTURE                          VAL R40
      728 CAPTURE                          VAL R6
      729 CAPTURE                          VAL R38
      730 CAPTURE                          VAL R20
      731 CAPTURE                          VAL R4
      732 CAPTURE                          VAL R5
      733 CAPTURE                          REF R48
      734 CAPTURE                          VAL R15
      735 CAPTURE                          VAL R114
      736 CAPTURE                          VAL R58
      737 CAPTURE                          VAL R16
      738 CAPTURE                          VAL R28
      739 CAPTURE                          VAL R111
      740 CAPTURE                          VAL R8
      741 CAPTURE                          VAL R112
      742 CAPTURE                          VAL R11
      743 CAPTURE                          VAL R21
      744 CAPTURE                          VAL R7
      745 CAPTURE                          VAL R60
      746 CAPTURE                          VAL R110
      747 CAPTURE                          VAL R50
      748 CAPTURE                          VAL R51
      749 CAPTURE                          VAL R57
      750 CAPTURE                          VAL R39
      751 SETTABLEKS                       R116 R108 K136 ["init"]
      753 DUPCLOSURE                       R116 K137 [PROTO_65]
      754 SETTABLEKS                       R116 R108 K138 ["attachXButtonCallback"]
      756 DUPCLOSURE                       R116 K139 [PROTO_66]
      757 SETTABLEKS                       R116 R108 K140 ["detachXButtonCallback"]
      759 DUPCLOSURE                       R116 K141 [PROTO_67]
      760 CAPTURE                          VAL R40
      761 SETTABLEKS                       R116 R108 K142 ["isLoading"]
      763 DUPCLOSURE                       R116 K143 [PROTO_68]
      764 CAPTURE                          VAL R20
      765 DUPCLOSURE                       R117 K144 [PROTO_69]
      766 CAPTURE                          VAL R40
      767 CAPTURE                          VAL R58
      768 CAPTURE                          VAL R38
      769 CAPTURE                          VAL R43
      770 CAPTURE                          VAL R3
      771 CAPTURE                          VAL R45
      772 CAPTURE                          VAL R116
      773 CAPTURE                          VAL R41
      774 SETTABLEKS                       R117 R108 K145 ["didUpdate"]
      776 DUPCLOSURE                       R117 K146 [PROTO_70]
      777 CAPTURE                          VAL R53
      778 SETTABLEKS                       R117 R108 K147 ["versionsGetPageRootItems"]
      780 DUPCLOSURE                       R117 K148 [PROTO_73]
      781 CAPTURE                          VAL R87
      782 SETTABLEKS                       R117 R108 K149 ["getDefaultBundleDataSharing"]
      784 DUPCLOSURE                       R117 K150 [PROTO_79]
      785 CAPTURE                          VAL R40
      786 CAPTURE                          VAL R43
      787 SETTABLEKS                       R117 R108 K151 ["getAssetInformation"]
      789 DUPCLOSURE                       R117 K152 [PROTO_81]
      790 CAPTURE                          VAL R43
      791 CAPTURE                          VAL R7
      792 CAPTURE                          VAL R10
      793 CAPTURE                          VAL R47
      794 SETTABLEKS                       R117 R108 K153 ["didMount"]
      796 DUPCLOSURE                       R117 K154 [PROTO_82]
      797 SETTABLEKS                       R117 R108 K155 ["willUnmount"]
      799 NEWCLOSURE                       R117 P11
      800 CAPTURE                          VAL R40
      801 CAPTURE                          VAL R58
      802 CAPTURE                          VAL R14
      803 CAPTURE                          VAL R111
      804 CAPTURE                          VAL R43
      805 CAPTURE                          VAL R42
      806 CAPTURE                          VAL R45
      807 CAPTURE                          VAL R7
      808 CAPTURE                          VAL R113
      809 CAPTURE                          VAL R115
      810 CAPTURE                          VAL R41
      811 CAPTURE                          VAL R109
      812 CAPTURE                          VAL R6
      813 CAPTURE                          VAL R18
      814 CAPTURE                          VAL R37
      815 CAPTURE                          VAL R34
      816 CAPTURE                          VAL R35
      817 CAPTURE                          VAL R33
      818 CAPTURE                          VAL R24
      819 CAPTURE                          VAL R114
      820 CAPTURE                          VAL R107
      821 CAPTURE                          VAL R106
      822 CAPTURE                          VAL R25
      823 CAPTURE                          VAL R27
      824 CAPTURE                          VAL R29
      825 CAPTURE                          VAL R36
      826 CAPTURE                          VAL R12
      827 CAPTURE                          REF R32
      828 CAPTURE                          REF R31
      829 CAPTURE                          REF R30
      830 CAPTURE                          VAL R26
      831 SETTABLEKS                       R117 R108 K156 ["render"]
      833 MOVE                             R117 R105
      834 DUPTABLE                         R118 K166 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      835 GETTABLEKS                       R119 R104 K157 ["Focus"]
      837 SETTABLEKS                       R119 R118 K157 ["Focus"]
      839 JUMPIFNOT                        R5 ; [+2]
      840 MOVE                             R119 R98
      841 JUMP                             ; [+1]
      842 LOADNIL                          R119
      843 SETTABLEKS                       R119 R118 K158 ["IXP"]
      845 GETTABLEKS                       R119 R104 K159 ["Localization"]
      847 SETTABLEKS                       R119 R118 K159 ["Localization"]
      849 GETTABLEKS                       R119 R104 K160 ["Stylizer"]
      851 SETTABLEKS                       R119 R118 K160 ["Stylizer"]
      853 MOVE                             R120 R115
      854 CALL                             R120 0 1
      855 JUMPIFNOT                        R120 ; [+3]
      856 GETTABLEKS                       R119 R104 K161 ["Plugin"]
      858 JUMP                             ; [+1]
      859 LOADNIL                          R119
      860 SETTABLEKS                       R119 R118 K161 ["Plugin"]
      862 SETTABLEKS                       R99 R118 K162 ["Network"]
      864 SETTABLEKS                       R100 R118 K163 ["PublishService"]
      866 MOVE                             R120 R14
      867 CALL                             R120 0 1
      868 JUMPIFNOT                        R120 ; [+2]
      869 MOVE                             R119 R101
      870 JUMP                             ; [+1]
      871 LOADNIL                          R119
      872 SETTABLEKS                       R119 R118 K164 ["PluginGuiService"]
      874 MOVE                             R120 R14
      875 CALL                             R120 0 1
      876 JUMPIFNOT                        R120 ; [+2]
      877 MOVE                             R119 R102
      878 JUMP                             ; [+1]
      879 LOADNIL                          R119
      880 SETTABLEKS                       R119 R118 K165 ["ContentProvider"]
      882 CALL                             R117 1 1
      883 MOVE                             R118 R108
      884 CALL                             R117 1 1
      885 MOVE                             R108 R117
      886 DUPCLOSURE                       R117 K167 [PROTO_86]
      887 CAPTURE                          VAL R57
      888 CAPTURE                          VAL R4
      889 CAPTURE                          VAL R5
      890 CAPTURE                          VAL R3
      891 CAPTURE                          VAL R47
      892 CAPTURE                          VAL R111
      893 CAPTURE                          VAL R14
      894 DUPCLOSURE                       R118 K168 [PROTO_123]
      895 CAPTURE                          VAL R63
      896 CAPTURE                          VAL R76
      897 CAPTURE                          VAL R84
      898 CAPTURE                          VAL R54
      899 CAPTURE                          VAL R92
      900 CAPTURE                          VAL R20
      901 CAPTURE                          VAL R61
      902 CAPTURE                          VAL R62
      903 CAPTURE                          VAL R66
      904 CAPTURE                          VAL R67
      905 CAPTURE                          VAL R8
      906 CAPTURE                          VAL R64
      907 CAPTURE                          VAL R65
      908 CAPTURE                          VAL R89
      909 CAPTURE                          VAL R88
      910 CAPTURE                          VAL R40
      911 CAPTURE                          VAL R68
      912 CAPTURE                          VAL R71
      913 CAPTURE                          VAL R77
      914 CAPTURE                          VAL R44
      915 CAPTURE                          VAL R83
      916 CAPTURE                          VAL R78
      917 CAPTURE                          VAL R72
      918 CAPTURE                          VAL R90
      919 CAPTURE                          VAL R73
      920 CAPTURE                          VAL R74
      921 CAPTURE                          VAL R75
      922 CAPTURE                          VAL R94
      923 CAPTURE                          VAL R95
      924 CAPTURE                          VAL R96
      925 CAPTURE                          VAL R79
      926 CAPTURE                          VAL R80
      927 CAPTURE                          VAL R91
      928 CAPTURE                          VAL R81
      929 CAPTURE                          VAL R82
      930 CAPTURE                          VAL R85
      931 CAPTURE                          VAL R10
      932 CAPTURE                          VAL R86
      933 CAPTURE                          VAL R93
      934 CAPTURE                          VAL R14
      935 CAPTURE                          VAL R97
      936 CAPTURE                          VAL R69
      937 CAPTURE                          VAL R70
      938 GETTABLEKS                       R119 R19 K169 ["connect"]
      940 MOVE                             R120 R117
      941 MOVE                             R121 R118
      942 CALL                             R119 2 1
      943 MOVE                             R120 R108
      944 CALL                             R119 1 -1
      945 CLOSEUPVALS                      R30
      946 RETURN                           R119 -1
