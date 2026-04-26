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
      119 JUMPIFNOT                        R5 ; [+517]
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
      206 JUMPIFNOTEQ                      R5 R6 ; [+430]
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
      258 GETTABLEKS                       R7 R1 K21 ["Network"]
      260 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      262 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      264 GETTABLEKS                       R8 R1 K50 ["instances"]
      266 CALL                             R5 3 0
      267 RETURN                           R0 0
      268 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      270 DUPTABLE                         R6 K66 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      271 GETTABLEKS                       R8 R1 K21 ["Network"]
      273 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
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
      309 GETUPVAL                         R6 8
      310 GETTABLEKS                       R5 R6 K16 ["isCatalogAsset"]
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
      331 GETTABLEKS                       R8 R1 K21 ["Network"]
      333 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      335 GETUPVAL                         R10 0
      336 GETTABLEKS                       R9 R10 K2 ["state"]
      338 GETTABLEKS                       R8 R9 K24 ["name"]
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
      373 GETUPVAL                         R13 0
      374 GETTABLEKS                       R12 R13 K2 ["state"]
      376 GETTABLEKS                       R11 R12 K26 ["description"]
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
      393 GETTABLEKS                       R8 R1 K21 ["Network"]
      395 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      397 GETUPVAL                         R10 0
      398 GETTABLEKS                       R9 R10 K2 ["state"]
      400 GETTABLEKS                       R8 R9 K24 ["name"]
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
      435 GETUPVAL                         R13 0
      436 GETTABLEKS                       R12 R13 K2 ["state"]
      438 GETTABLEKS                       R11 R12 K26 ["description"]
      440 ORK                              R10 R11 K25 [""]
      441 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      443 GETTABLEKS                       R12 R1 K50 ["instances"]
      445 MOVE                             R13 R5
      446 GETTABLEKS                       R14 R1 K81 ["Localization"]
      448 CALL                             R6 8 0
      449 RETURN                           R0 0
      450 GETUPVAL                         R6 8
      451 GETTABLEKS                       R5 R6 K83 ["isUGCBundleType"]
      453 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      455 CALL                             R5 1 1
      456 JUMPIFNOT                        R5 ; [+63]
      457 LOADNIL                          R5
      458 GETTABLEKS                       R6 R2 K68 ["dataSharingEnabled"]
      460 JUMPIFNOT                        R6 ; [+16]
      461 GETTABLEKS                       R6 R2 K69 ["dataSharingToggled"]
      463 JUMPIFNOT                        R6 ; [+11]
      464 NEWTABLE                         R6 0 1
      466 GETUPVAL                         R9 13
      467 GETTABLEKS                       R8 R9 K84 ["DataSharingLicenseTypes"]
      469 GETTABLEKS                       R7 R8 K85 ["RobloxGlobal"]
      471 SETLIST                          R6 R7 1 [1]
      473 MOVE                             R5 R6
      474 JUMP                             ; [+2]
      475 NEWTABLE                         R5 0 0
      477 GETTABLEKS                       R6 R1 K86 ["uploadUGCBundleWithFee"]
      479 GETTABLEKS                       R8 R1 K21 ["Network"]
      481 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
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
      500 GETUPVAL                         R17 14
      501 CALL                             R17 0 1
      502 JUMPIFNOT                        R17 ; [+5]
      503 GETTABLEKS                       R17 R1 K88 ["PublishService"]
      505 GETTABLEKS                       R16 R17 K89 ["publishService"]
      507 JUMP                             ; [+1]
      508 LOADNIL                          R16
      509 GETUPVAL                         R18 14
      510 CALL                             R18 0 1
      511 JUMPIFNOT                        R18 ; [+5]
      512 GETTABLEKS                       R18 R1 K90 ["groupBundlesUploadEnabledForUser"]
      514 JUMPIFNOT                        R18 ; [+2]
      515 MOVE                             R17 R3
      516 JUMP                             ; [+1]
      517 LOADNIL                          R17
      518 CALL                             R6 11 0
      519 RETURN                           R0 0
      520 GETUPVAL                         R6 8
      521 GETTABLEKS                       R5 R6 K33 ["isMarketplaceAsset"]
      523 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      525 CALL                             R5 1 1
      526 JUMPIFNOT                        R5 ; [+30]
      527 GETUPVAL                         R5 10
      528 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      530 NAMECALL                         R5 R5 K59 ["isOverride"]
      532 CALL                             R5 2 1
      533 JUMPIFNOT                        R5 ; [+23]
      534 GETTABLEKS                       R5 R1 K91 ["overrideAsset"]
      536 GETTABLEKS                       R7 R1 K21 ["Network"]
      538 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      540 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      542 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      544 GETTABLEKS                       R8 R9 K74 ["Name"]
      546 GETTABLEKS                       R9 R1 K50 ["instances"]
      548 GETUPVAL                         R11 15
      549 CALL                             R11 0 1
      550 JUMPIFNOT                        R11 ; [+3]
      551 GETTABLEKS                       R10 R1 K81 ["Localization"]
      553 JUMP                             ; [+1]
      554 LOADNIL                          R10
      555 CALL                             R5 5 0
      556 RETURN                           R0 0
      557 GETTABLEKS                       R5 R1 K92 ["uploadMarketplaceItem"]
      559 DUPTABLE                         R6 K94 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      560 GETTABLEKS                       R8 R1 K21 ["Network"]
      562 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      564 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      566 LOADN                            R7 0
      567 SETTABLEKS                       R7 R6 K23 ["assetId"]
      569 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      571 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      573 GETTABLEKS                       R7 R2 K24 ["name"]
      575 SETTABLEKS                       R7 R6 K24 ["name"]
      577 GETTABLEKS                       R8 R2 K26 ["description"]
      579 ORK                              R7 R8 K25 [""]
      580 SETTABLEKS                       R7 R6 K26 ["description"]
      582 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      584 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      586 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      588 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      590 SETTABLEKS                       R3 R6 K3 ["groupId"]
      592 GETTABLEKS                       R7 R1 K50 ["instances"]
      594 SETTABLEKS                       R7 R6 K50 ["instances"]
      596 JUMPIFNOT                        R4 ; [+2]
      597 LOADB                            R7 1
      598 JUMP                             ; [+1]
      599 LOADNIL                          R7
      600 SETTABLEKS                       R7 R6 K93 ["isMarketplaceModelsAsPackagesEnabled"]
      602 GETTABLEKS                       R7 R2 K27 ["status"]
      604 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      606 GETTABLEKS                       R7 R2 K29 ["price"]
      608 SETTABLEKS                       R7 R6 K29 ["price"]
      610 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      612 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      614 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      616 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      618 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      620 JUMPIFNOT                        R8 ; [+5]
      621 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      623 GETTABLEKS                       R7 R8 K44 ["basePrice"]
      625 JUMP                             ; [+1]
      626 LOADNIL                          R7
      627 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      629 GETUPVAL                         R8 15
      630 CALL                             R8 0 1
      631 JUMPIFNOT                        R8 ; [+3]
      632 GETTABLEKS                       R7 R1 K81 ["Localization"]
      634 JUMP                             ; [+1]
      635 LOADNIL                          R7
      636 CALL                             R5 2 0
      637 RETURN                           R0 0

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
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U15
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U16
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K0 ["props"]
       26 GETTABLEKS                       R4 R5 K1 ["changeTable"]
       28 MOVE                             R5 R4
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETIMPORT                        R6 K3 [next]
       32 MOVE                             R7 R4
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKNIL                  R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K0 ["props"]
       41 GETTABLEKS                       R6 R7 K4 ["resetUploadResult"]
       43 CALL                             R6 0 0
       44 MOVE                             R6 R1
       45 CALL                             R6 0 0
       46 JUMPIFNOT                        R5 ; [+48]
       47 MOVE                             R6 R2
       48 MOVE                             R7 R4
       49 CALL                             R6 1 0
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K0 ["props"]
       53 GETTABLEKS                       R6 R7 K5 ["isPackageAsset"]
       55 JUMPIFNOT                        R6 ; [+39]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K0 ["props"]
       59 GETTABLEKS                       R6 R7 K6 ["assetConfigData"]
       61 GETTABLEKS                       R7 R6 K7 ["Id"]
       63 GETTABLEKS                       R8 R4 K8 ["VersionItemSelect"]
       65 JUMPIFNOT                        R8 ; [+3]
       66 GETTABLEKS                       R9 R4 K8 ["VersionItemSelect"]
       68 GETTABLEN                        R8 R9 1
       69 JUMPIFNOT                        R7 ; [+25]
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R10 R11 K0 ["props"]
       73 GETTABLEKS                       R9 R10 K9 ["dispatchPutPackagePermissionsRequest"]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R12 R13 K0 ["props"]
       78 GETTABLEKS                       R11 R12 K10 ["Network"]
       80 GETTABLEKS                       R10 R11 K11 ["networkInterface"]
       82 MOVE                             R11 R7
       83 MOVE                             R12 R8
       84 GETUPVAL                         R14 16
       85 CALL                             R14 0 1
       86 JUMPIFNOT                        R14 ; [+6]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R14 R15 K0 ["props"]
       90 GETTABLEKS                       R13 R14 K12 ["Localization"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R13
       94 CALL                             R9 4 0
       95 RETURN                           R0 0

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
      267 CAPTURE                          UPVAL U1
      268 CAPTURE                          UPVAL U15
      269 CAPTURE                          UPVAL U16
      270 CAPTURE                          VAL R1
      271 CAPTURE                          UPVAL U17
      272 SETTABLEKS                       R2 R0 K68 ["tryPublish"]
      274 NEWCLOSURE                       R2 P9
      275 CAPTURE                          VAL R0
      276 CAPTURE                          VAL R1
      277 CAPTURE                          UPVAL U4
      278 SETTABLEKS                       R2 R0 K69 ["tryCancel"]
      280 NEWCLOSURE                       R2 P10
      281 CAPTURE                          VAL R0
      282 SETTABLEKS                       R2 R0 K70 ["tryCancelNoYield"]
      284 NEWCLOSURE                       R2 P11
      285 CAPTURE                          VAL R0
      286 SETTABLEKS                       R2 R0 K71 ["tryCancelWithYield"]
      288 NEWCLOSURE                       R2 P12
      289 CAPTURE                          VAL R0
      290 SETTABLEKS                       R2 R0 K72 ["onMessageBoxClosed"]
      292 NEWCLOSURE                       R2 P13
      293 CAPTURE                          UPVAL U18
      294 CAPTURE                          VAL R0
      295 CAPTURE                          UPVAL U19
      296 SETTABLEKS                       R2 R0 K73 ["tryCloseAssetConfig"]
      298 NEWCLOSURE                       R2 P14
      299 CAPTURE                          VAL R0
      300 NEWCLOSURE                       R3 P15
      301 CAPTURE                          VAL R0
      302 CAPTURE                          UPVAL U20
      303 SETTABLEKS                       R3 R0 K74 ["onNameChange"]
      305 NEWCLOSURE                       R3 P16
      306 CAPTURE                          VAL R0
      307 CAPTURE                          UPVAL U20
      308 SETTABLEKS                       R3 R0 K75 ["onDescChange"]
      310 NEWCLOSURE                       R3 P17
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R3 R0 K76 ["onStatusChange"]
      314 NEWCLOSURE                       R3 P18
      315 CAPTURE                          VAL R0
      316 SETTABLEKS                       R3 R0 K77 ["onPriceChange"]
      318 GETUPVAL                         R3 21
      319 CALL                             R3 0 1
      320 JUMPIFNOT                        R3 ; [+10]
      321 NEWCLOSURE                       R3 P19
      322 CAPTURE                          VAL R0
      323 SETTABLEKS                       R3 R0 K78 ["onCategoryChange"]
      325 NEWCLOSURE                       R3 P20
      326 CAPTURE                          UPVAL U3
      327 CAPTURE                          VAL R0
      328 CAPTURE                          UPVAL U22
      329 SETTABLEKS                       R3 R0 K79 ["getUploadPermissionStatus"]
      331 NEWCLOSURE                       R3 P21
      332 CAPTURE                          VAL R0
      333 CAPTURE                          UPVAL U23
      334 CAPTURE                          UPVAL U7
      335 CAPTURE                          UPVAL U21
      336 SETTABLEKS                       R3 R0 K80 ["onAccessChange"]
      338 NEWCLOSURE                       R3 P22
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R3 R0 K81 ["onDataConsentToggleClick"]
      342 NEWCLOSURE                       R3 P23
      343 CAPTURE                          VAL R0
      344 SETTABLEKS                       R3 R0 K82 ["toggleCopy"]
      346 NEWCLOSURE                       R3 P24
      347 CAPTURE                          VAL R0
      348 SETTABLEKS                       R3 R0 K83 ["toggleComment"]
      350 NEWCLOSURE                       R3 P25
      351 CAPTURE                          VAL R0
      352 SETTABLEKS                       R3 R0 K84 ["toggleDeleteLocal"]
      354 GETUPVAL                         R4 2
      355 CALL                             R4 0 1
      356 JUMPIFNOT                        R4 ; [+4]
      357 NEWCLOSURE                       R3 P26
      358 CAPTURE                          VAL R0
      359 CAPTURE                          UPVAL U3
      360 JUMP                             ; [+1]
      361 LOADNIL                          R3
      362 SETTABLEKS                       R3 R0 K85 ["onSelectedColorChange"]
      364 NEWCLOSURE                       R3 P27
      365 CAPTURE                          VAL R0
      366 CAPTURE                          UPVAL U18
      367 CAPTURE                          UPVAL U19
      368 SETTABLEKS                       R3 R0 K86 ["versionsOnDescClicked"]
      370 NEWCLOSURE                       R3 P28
      371 CAPTURE                          VAL R0
      372 CAPTURE                          UPVAL U24
      373 CAPTURE                          UPVAL U25
      374 SETTABLEKS                       R3 R0 K87 ["versionsSaveInput"]
      376 NEWCLOSURE                       R3 P29
      377 CAPTURE                          VAL R0
      378 CAPTURE                          UPVAL U1
      379 SETTABLEKS                       R3 R0 K88 ["versionsSetStates"]
      381 NEWCLOSURE                       R3 P30
      382 CAPTURE                          VAL R0
      383 SETTABLEKS                       R3 R0 K89 ["versionsCloseInput"]
      385 NEWCLOSURE                       R3 P31
      386 CAPTURE                          VAL R0
      387 SETTABLEKS                       R3 R0 K90 ["setVersionError"]
      389 NEWCLOSURE                       R3 P32
      390 CAPTURE                          VAL R0
      391 SETTABLEKS                       R3 R0 K91 ["versionsSetPreviousInput"]
      393 NEWCLOSURE                       R3 P33
      394 CAPTURE                          VAL R0
      395 SETTABLEKS                       R3 R0 K92 ["versionsOnPageChange"]
      397 NEWCLOSURE                       R3 P34
      398 CAPTURE                          VAL R0
      399 CAPTURE                          VAL R1
      400 SETTABLEKS                       R3 R0 K93 ["onTabSelect"]
      402 NEWCLOSURE                       R3 P35
      403 CAPTURE                          VAL R0
      404 SETTABLEKS                       R3 R0 K94 ["onOverrideAssetSelected"]
      406 NEWCLOSURE                       R3 P36
      407 CAPTURE                          UPVAL U3
      408 CAPTURE                          VAL R0
      409 SETTABLEKS                       R3 R0 K95 ["chooseThumbnail"]
      411 NEWCLOSURE                       R3 P37
      412 CAPTURE                          VAL R0
      413 SETTABLEKS                       R3 R0 K96 ["onSharingChanged"]
      415 NEWCLOSURE                       R3 P38
      416 CAPTURE                          VAL R0
      417 SETTABLEKS                       R3 R0 K97 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      419 NEWCLOSURE                       R3 P39
      420 CAPTURE                          VAL R0
      421 CAPTURE                          UPVAL U26
      422 SETTABLEKS                       R3 R0 K98 ["getPublishingRequirements"]
      424 NEWCLOSURE                       R3 P40
      425 CAPTURE                          VAL R0
      426 SETTABLEKS                       R3 R0 K99 ["onAdditionalImagesChanged"]
      428 NEWCLOSURE                       R3 P41
      429 CAPTURE                          UPVAL U3
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R3 R0 K100 ["isValidCatalogAsset"]
      433 NEWCLOSURE                       R3 P42
      434 CAPTURE                          VAL R0
      435 SETTABLEKS                       R3 R0 K101 ["validVersionDescriptions"]
      437 NEWCLOSURE                       R3 P43
      438 CAPTURE                          VAL R0
      439 CAPTURE                          UPVAL U1
      440 CAPTURE                          UPVAL U27
      441 SETTABLEKS                       R3 R0 K102 ["getMessageBoxProps"]
      443 RETURN                           R0 0

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
      251 JUMP                             ; [+6]
      252 MOVE                             R43 R40
      253 JUMPIFNOT                        R43 ; [+3]
      254 GETTABLEKS                       R44 R2 K25 ["isShowRobuxSpendMessageBox"]
      256 NOT                              R43 R44
      257 MOVE                             R40 R43
      258 GETUPVAL                         R43 8
      259 CALL                             R43 0 1
      260 JUMPIFNOT                        R43 ; [+11]
      261 GETUPVAL                         R44 4
      262 GETTABLEKS                       R43 R44 K58 ["isMakeupAsset"]
      264 MOVE                             R44 R24
      265 CALL                             R43 1 1
      266 JUMPIFNOT                        R43 ; [+5]
      267 GETTABLEKS                       R43 R2 K59 ["selectedColor"]
      269 JUMPIFNOTEQKNIL                  R43 ; [+2]
      271 LOADB                            R40 0
      272 GETUPVAL                         R43 9
      273 CALL                             R43 0 1
      274 JUMPIFNOT                        R43 ; [+26]
      275 GETUPVAL                         R43 1
      276 MOVE                             R45 R6
      277 NAMECALL                         R43 R43 K60 ["isOverride"]
      279 CALL                             R43 2 1
      280 JUMPIF                           R43 ; [+20]
      281 MOVE                             R43 R40
      282 JUMPIFNOT                        R43 ; [+17]
      283 LOADB                            R43 0
      284 ORK                              R45 R8 K7 [""]
      285 FASTCALL1                        TOSTRING R45 ; [+2]
      286 GETIMPORT                        R44 K62 [tostring]
      288 CALL                             R44 1 1
      289 JUMPIFEQKS                       R44 K7 [""] ; [+10]
      291 ORK                              R45 R9 K7 [""]
      292 FASTCALL1                        TOSTRING R45 ; [+2]
      293 GETIMPORT                        R44 K62 [tostring]
      295 CALL                             R44 1 1
      296 JUMPIFNOTEQKS                    R44 K7 [""] ; [+2]
      298 LOADB                            R43 0 +1
      299 LOADB                            R43 1
      300 MOVE                             R40 R43
      301 GETUPVAL                         R45 10
      302 GETTABLEKS                       R44 R45 K64 ["SCROLLBAR_PADDING"]
      304 SUBRK                            R43 R63 K44 ["SHOW_COMMENT"]
      305 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      307 GETIMPORT                        R46 K68 [Enum.AssetType.Audio]
      309 JUMPIFEQ                         R45 R46 ; [+2]
      311 LOADB                            R44 0 +1
      312 LOADB                            R44 1
      313 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      315 GETIMPORT                        R47 K70 [Enum.AssetType.Video]
      317 JUMPIFEQ                         R46 R47 ; [+2]
      319 LOADB                            R45 0 +1
      320 LOADB                            R45 1
      321 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      323 GETIMPORT                        R48 K72 [Enum.AssetType.Model]
      325 JUMPIFEQ                         R47 R48 ; [+2]
      327 LOADB                            R46 0 +1
      328 LOADB                            R46 1
      329 GETTABLEKS                       R48 R1 K28 ["assetTypeEnum"]
      331 GETIMPORT                        R49 K74 [Enum.AssetType.Plugin]
      333 JUMPIFEQ                         R48 R49 ; [+2]
      335 LOADB                            R47 0 +1
      336 LOADB                            R47 1
      337 LOADNIL                          R48
      338 LOADB                            R49 0
      339 GETTABLEKS                       R50 R1 K75 ["Localization"]
      341 LOADK                            R53 K76 ["General"]
      342 LOADK                            R54 K77 ["Proceed"]
      343 NAMECALL                         R51 R50 K78 ["getText"]
      345 CALL                             R51 3 1
      346 LOADK                            R54 K76 ["General"]
      347 LOADK                            R55 K79 ["GoBack"]
      348 NAMECALL                         R52 R50 K78 ["getText"]
      350 CALL                             R52 3 1
      351 LOADK                            R55 K80 ["AssetConfigSharing"]
      352 LOADK                            R56 K81 ["PublicConfirmationHeading"]
      353 NAMECALL                         R53 R50 K78 ["getText"]
      355 CALL                             R53 3 1
      356 LOADK                            R56 K80 ["AssetConfigSharing"]
      357 LOADK                            R57 K82 ["PublicConfirmationMessage"]
      358 NAMECALL                         R54 R50 K78 ["getText"]
      360 CALL                             R54 3 1
      361 LOADK                            R57 K80 ["AssetConfigSharing"]
      362 LOADK                            R58 K83 ["PublicConfirmationTitle"]
      363 NAMECALL                         R55 R50 K78 ["getText"]
      365 CALL                             R55 3 1
      366 GETTABLEKS                       R56 R2 K84 ["isConfirmationDialogEnabled"]
      368 GETTABLEKS                       R57 R2 K85 ["confirmationDialogKey"]
      370 LOADK                            R60 K86 ["AssetConfig"]
      371 LOADK                            R61 K87 ["PublishAssetDialogPublish"]
      372 NAMECALL                         R58 R50 K78 ["getText"]
      374 CALL                             R58 3 1
      375 LOADK                            R61 K76 ["General"]
      376 LOADK                            R62 K88 ["Cancel"]
      377 NAMECALL                         R59 R50 K78 ["getText"]
      379 CALL                             R59 3 1
      380 LOADK                            R62 K86 ["AssetConfig"]
      381 LOADK                            R63 K89 ["PublishAssetDialogDescription"]
      382 NAMECALL                         R60 R50 K78 ["getText"]
      384 CALL                             R60 3 1
      385 LOADK                            R63 K86 ["AssetConfig"]
      386 LOADK                            R64 K90 ["PublishAssetDialogHeading"]
      387 NAMECALL                         R61 R50 K78 ["getText"]
      389 CALL                             R61 3 1
      390 LOADK                            R64 K76 ["General"]
      391 LOADK                            R65 K91 ["RobloxStudio"]
      392 NAMECALL                         R62 R50 K78 ["getText"]
      394 CALL                             R62 3 1
      395 GETUPVAL                         R64 2
      396 CALL                             R64 0 1
      397 JUMPIFNOT                        R64 ; [+2]
      398 LOADNIL                          R63
      399 JUMP                             ; [+5]
      400 LOADK                            R65 K76 ["General"]
      401 LOADK                            R66 K91 ["RobloxStudio"]
      402 NAMECALL                         R63 R50 K78 ["getText"]
      404 CALL                             R63 3 1
      405 GETUPVAL                         R65 2
      406 CALL                             R65 0 1
      407 JUMPIFNOT                        R65 ; [+2]
      408 LOADNIL                          R64
      409 JUMP                             ; [+8]
      410 LOADK                            R66 K86 ["AssetConfig"]
      411 LOADK                            R67 K92 ["PayAndConfirmHeading"]
      412 DUPTABLE                         R68 K93 [{"name"}]
      413 SETTABLEKS                       R8 R68 K8 ["name"]
      415 NAMECALL                         R64 R50 K78 ["getText"]
      417 CALL                             R64 4 1
      418 GETTABLEKS                       R66 R1 K94 ["uploadFee"]
      420 JUMPIFNOT                        R66 ; [+3]
      421 GETTABLEKS                       R65 R1 K94 ["uploadFee"]
      423 JUMP                             ; [+1]
      424 LOADK                            R65 K7 [""]
      425 GETUPVAL                         R67 2
      426 CALL                             R67 0 1
      427 JUMPIFNOT                        R67 ; [+2]
      428 LOADNIL                          R66
      429 JUMP                             ; [+11]
      430 LOADK                            R68 K86 ["AssetConfig"]
      431 LOADK                            R69 K95 ["PayAndConfirmDescription"]
      432 DUPTABLE                         R70 K97 [{"amount"}]
      433 GETUPVAL                         R72 11
      434 MOVE                             R73 R65
      435 CONCAT                           R71 R72 R73
      436 SETTABLEKS                       R71 R70 K96 ["amount"]
      438 NAMECALL                         R66 R50 K78 ["getText"]
      440 CALL                             R66 4 1
      441 GETUPVAL                         R68 2
      442 CALL                             R68 0 1
      443 JUMPIFNOT                        R68 ; [+2]
      444 LOADNIL                          R67
      445 JUMP                             ; [+5]
      446 LOADK                            R69 K76 ["General"]
      447 LOADK                            R70 K98 ["PayAndSubmit"]
      448 NAMECALL                         R67 R50 K78 ["getText"]
      450 CALL                             R67 3 1
      451 GETTABLEKS                       R68 R2 K99 ["isPublishAssetsDialogEnabled"]
      453 JUMPIF                           R44 ; [+3]
      454 GETUPVAL                         R69 12
      455 JUMPIFNOT                        R69 ; [+3]
      456 JUMPIFNOT                        R45 ; [+2]
      457 NOT                              R48 R5
      458 JUMP                             ; [+2]
      459 JUMPIFNOT                        R46 ; [+1]
      460 LOADB                            R48 1
      461 JUMPIF                           R44 ; [+3]
      462 GETUPVAL                         R69 12
      463 JUMPIFNOT                        R69 ; [+2]
      464 JUMPIFNOT                        R45 ; [+1]
      465 LOADB                            R49 1
      466 JUMPIF                           R44 ; [+3]
      467 GETUPVAL                         R69 12
      468 JUMPIFNOT                        R69 ; [+2]
      469 JUMPIFNOT                        R45 ; [+1]
      470 MOVE                             R11 R17
      471 GETUPVAL                         R70 4
      472 GETTABLEKS                       R69 R70 K58 ["isMakeupAsset"]
      474 MOVE                             R70 R24
      475 CALL                             R69 1 1
      476 GETUPVAL                         R70 8
      477 CALL                             R70 0 1
      478 JUMPIFNOT                        R70 ; [+8]
      479 MOVE                             R70 R69
      480 JUMPIFNOT                        R70 ; [+6]
      481 GETTABLEKS                       R71 R2 K59 ["selectedColor"]
      483 JUMPIFEQKNIL                     R71 ; [+2]
      485 LOADB                            R70 0 +1
      486 LOADB                            R70 1
      487 GETUPVAL                         R72 13
      488 GETTABLEKS                       R71 R72 K100 ["createElement"]
      490 LOADK                            R72 K101 ["Frame"]
      491 DUPTABLE                         R73 K105 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      492 SETTABLEKS                       R4 R73 K3 ["Size"]
      494 LOADN                            R74 0
      495 SETTABLEKS                       R74 R73 K102 ["BackgroundTransparency"]
      497 GETTABLEKS                       R75 R3 K106 ["assetConfig"]
      499 GETTABLEKS                       R74 R75 K107 ["backgroundColor"]
      501 SETTABLEKS                       R74 R73 K103 ["BackgroundColor3"]
      503 LOADN                            R74 0
      504 SETTABLEKS                       R74 R73 K104 ["BorderSizePixel"]
      506 DUPTABLE                         R74 K115 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      507 GETUPVAL                         R76 13
      508 GETTABLEKS                       R75 R76 K100 ["createElement"]
      510 LOADK                            R76 K108 ["UIListLayout"]
      511 DUPTABLE                         R77 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      512 GETIMPORT                        R78 K123 [Enum.FillDirection.Vertical]
      514 SETTABLEKS                       R78 R77 K116 ["FillDirection"]
      516 GETIMPORT                        R78 K125 [Enum.HorizontalAlignment.Left]
      518 SETTABLEKS                       R78 R77 K117 ["HorizontalAlignment"]
      520 GETIMPORT                        R78 K127 [Enum.VerticalAlignment.Bottom]
      522 SETTABLEKS                       R78 R77 K118 ["VerticalAlignment"]
      524 GETIMPORT                        R78 K129 [Enum.SortOrder.LayoutOrder]
      526 SETTABLEKS                       R78 R77 K119 ["SortOrder"]
      528 GETIMPORT                        R78 K132 [UDim.new]
      530 LOADN                            R79 0
      531 LOADN                            R80 0
      532 CALL                             R78 2 1
      533 SETTABLEKS                       R78 R77 K120 ["Padding"]
      535 CALL                             R75 2 1
      536 SETTABLEKS                       R75 R74 K108 ["UIListLayout"]
      538 MOVE                             R75 R20
      539 JUMPIFNOT                        R75 ; [+9]
      540 GETUPVAL                         R76 13
      541 GETTABLEKS                       R75 R76 K100 ["createElement"]
      543 GETUPVAL                         R76 14
      544 GETTABLEKS                       R77 R0 K133 ["getMessageBoxProps"]
      546 MOVE                             R78 R19
      547 CALL                             R77 1 -1
      548 CALL                             R75 -1 1
      549 SETTABLEKS                       R75 R74 K109 ["AssetConfigMessageBox"]
      551 GETUPVAL                         R76 2
      552 CALL                             R76 0 1
      553 JUMPIFNOT                        R76 ; [+2]
      554 LOADNIL                          R75
      555 JUMP                             ; [+28]
      556 MOVE                             R75 R21
      557 JUMPIFNOT                        R75 ; [+26]
      558 GETUPVAL                         R76 13
      559 GETTABLEKS                       R75 R76 K100 ["createElement"]
      561 GETUPVAL                         R76 15
      562 DUPTABLE                         R77 K142 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      563 SETTABLEKS                       R67 R77 K134 ["AcceptText"]
      565 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      567 SETTABLEKS                       R66 R77 K136 ["Description"]
      569 SETTABLEKS                       R21 R77 K137 ["Enabled"]
      571 SETTABLEKS                       R64 R77 K138 ["Heading"]
      573 GETTABLEKS                       R78 R0 K143 ["onAssetPublishPayAndConfirmAccepted"]
      575 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      577 GETTABLEKS                       R78 R0 K144 ["onAssetPublishPayAndConfirmCanceled"]
      579 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      581 SETTABLEKS                       R63 R77 K141 ["Title"]
      583 CALL                             R75 2 1
      584 SETTABLEKS                       R75 R74 K110 ["RobuxSpendConfirmationMessageBox"]
      586 GETUPVAL                         R76 2
      587 CALL                             R76 0 1
      588 JUMPIFNOT                        R76 ; [+24]
      589 GETTABLEKS                       R75 R1 K57 ["isAvatarItemDialogFlowEnabled"]
      591 JUMPIFNOT                        R75 ; [+22]
      592 GETUPVAL                         R76 13
      593 GETTABLEKS                       R75 R76 K100 ["createElement"]
      595 GETUPVAL                         R76 16
      596 DUPTABLE                         R77 K148 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      597 NEWCLOSURE                       R78 P0
      598 CAPTURE                          VAL R0
      599 SETTABLEKS                       R78 R77 K145 ["OnUploadConfirmed"]
      601 GETTABLEKS                       R79 R1 K94 ["uploadFee"]
      603 ORK                              R78 R79 K7 [""]
      604 SETTABLEKS                       R78 R77 K146 ["UploadFee"]
      606 GETTABLEKS                       R79 R2 K8 ["name"]
      608 ORK                              R78 R79 K7 [""]
      609 SETTABLEKS                       R78 R77 K147 ["ItemName"]
      611 CALL                             R75 2 1
      612 JUMP                             ; [+1]
      613 LOADNIL                          R75
      614 SETTABLEKS                       R75 R74 K111 ["AvatarItemMessageBox"]
      616 JUMPIFNOT                        R68 ; [+30]
      617 GETUPVAL                         R76 13
      618 GETTABLEKS                       R75 R76 K100 ["createElement"]
      620 GETUPVAL                         R76 17
      621 DUPTABLE                         R77 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      622 SETTABLEKS                       R58 R77 K134 ["AcceptText"]
      624 SETTABLEKS                       R59 R77 K135 ["CancelText"]
      626 LOADNIL                          R78
      627 SETTABLEKS                       R78 R77 K149 ["ConfirmationKey"]
      629 SETTABLEKS                       R60 R77 K136 ["Description"]
      631 SETTABLEKS                       R68 R77 K137 ["Enabled"]
      633 SETTABLEKS                       R61 R77 K138 ["Heading"]
      635 GETTABLEKS                       R78 R0 K151 ["onAssetPublishDialogAccepted"]
      637 SETTABLEKS                       R78 R77 K139 ["OnAccepted"]
      639 GETTABLEKS                       R78 R0 K152 ["onAssetPublishDialogCanceled"]
      641 SETTABLEKS                       R78 R77 K140 ["OnCanceled"]
      643 SETTABLEKS                       R62 R77 K141 ["Title"]
      645 CALL                             R75 2 1
      646 JUMP                             ; [+1]
      647 LOADNIL                          R75
      648 SETTABLEKS                       R75 R74 K112 ["AssetConfigMakeAssetPublicMessageBox"]
      650 GETUPVAL                         R76 13
      651 GETTABLEKS                       R75 R76 K100 ["createElement"]
      653 LOADK                            R76 K101 ["Frame"]
      654 DUPTABLE                         R77 K153 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      655 GETIMPORT                        R78 K155 [UDim2.new]
      657 LOADN                            R79 1
      658 LOADN                            R80 0
      659 LOADN                            R81 1
      660 LOADN                            R82 194
      661 CALL                             R78 4 1
      662 SETTABLEKS                       R78 R77 K3 ["Size"]
      664 LOADN                            R78 1
      665 SETTABLEKS                       R78 R77 K102 ["BackgroundTransparency"]
      667 LOADN                            R78 1
      668 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
      670 DUPTABLE                         R78 K165 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      671 GETUPVAL                         R80 13
      672 GETTABLEKS                       R79 R80 K100 ["createElement"]
      674 LOADK                            R80 K108 ["UIListLayout"]
      675 DUPTABLE                         R81 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      676 GETIMPORT                        R82 K167 [Enum.FillDirection.Horizontal]
      678 SETTABLEKS                       R82 R81 K116 ["FillDirection"]
      680 GETIMPORT                        R82 K125 [Enum.HorizontalAlignment.Left]
      682 SETTABLEKS                       R82 R81 K117 ["HorizontalAlignment"]
      684 GETIMPORT                        R82 K169 [Enum.VerticalAlignment.Top]
      686 SETTABLEKS                       R82 R81 K118 ["VerticalAlignment"]
      688 GETIMPORT                        R82 K129 [Enum.SortOrder.LayoutOrder]
      690 SETTABLEKS                       R82 R81 K119 ["SortOrder"]
      692 GETIMPORT                        R82 K132 [UDim.new]
      694 LOADN                            R83 0
      695 LOADN                            R84 0
      696 CALL                             R82 2 1
      697 SETTABLEKS                       R82 R81 K120 ["Padding"]
      699 CALL                             R79 2 1
      700 SETTABLEKS                       R79 R78 K108 ["UIListLayout"]
      702 GETUPVAL                         R80 13
      703 GETTABLEKS                       R79 R80 K100 ["createElement"]
      705 GETUPVAL                         R80 17
      706 DUPTABLE                         R81 K150 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      707 SETTABLEKS                       R51 R81 K134 ["AcceptText"]
      709 SETTABLEKS                       R52 R81 K135 ["CancelText"]
      711 SETTABLEKS                       R57 R81 K149 ["ConfirmationKey"]
      713 SETTABLEKS                       R54 R81 K136 ["Description"]
      715 SETTABLEKS                       R56 R81 K137 ["Enabled"]
      717 SETTABLEKS                       R53 R81 K138 ["Heading"]
      719 GETTABLEKS                       R82 R0 K170 ["onDialogAccepted"]
      721 SETTABLEKS                       R82 R81 K139 ["OnAccepted"]
      723 GETTABLEKS                       R82 R0 K171 ["onDialogCanceled"]
      725 SETTABLEKS                       R82 R81 K140 ["OnCanceled"]
      727 SETTABLEKS                       R55 R81 K141 ["Title"]
      729 CALL                             R79 2 1
      730 SETTABLEKS                       R79 R78 K156 ["SharingConfirmationDialog"]
      732 GETUPVAL                         R80 13
      733 GETTABLEKS                       R79 R80 K100 ["createElement"]
      735 GETUPVAL                         R80 18
      736 DUPTABLE                         R81 K184 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor"}]
      737 LOADN                            R82 240
      738 SETTABLEKS                       R82 R81 K172 ["TotalWidth"]
      740 SETTABLEKS                       R38 R81 K173 ["TabItems"]
      742 SETTABLEKS                       R6 R81 K174 ["CurrentTab"]
      744 SETTABLEKS                       R37 R81 K175 ["PreviewType"]
      746 SETTABLEKS                       R25 R81 K176 ["ScreenFlowType"]
      748 SETTABLEKS                       R16 R81 K177 ["AssetStatus"]
      750 SETTABLEKS                       R7 R81 K178 ["AssetId"]
      752 SETTABLEKS                       R22 R81 K179 ["IconFile"]
      754 SETTABLEKS                       R24 R81 K180 ["AssetTypeEnum"]
      756 SETTABLEKS                       R29 R81 K181 ["AllowedBundleTypeSettings"]
      758 GETTABLEKS                       R82 R0 K185 ["onTabSelect"]
      760 SETTABLEKS                       R82 R81 K182 ["OnTabSelect"]
      762 GETTABLEKS                       R82 R0 K186 ["chooseThumbnail"]
      764 SETTABLEKS                       R82 R81 K183 ["ChooseThumbnail"]
      766 LOADN                            R82 1
      767 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      769 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      771 GETUPVAL                         R83 8
      772 CALL                             R83 0 1
      773 JUMPIFNOT                        R83 ; [+4]
      774 JUMPIFNOT                        R69 ; [+3]
      775 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
      777 JUMP                             ; [+1]
      778 LOADNIL                          R82
      779 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
      781 CALL                             R79 2 1
      782 SETTABLEKS                       R79 R78 K157 ["Preview"]
      784 GETUPVAL                         R80 13
      785 GETTABLEKS                       R79 R80 K100 ["createElement"]
      787 LOADK                            R80 K101 ["Frame"]
      788 DUPTABLE                         R81 K187 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      789 GETIMPORT                        R82 K155 [UDim2.new]
      791 LOADN                            R83 0
      792 LOADN                            R84 2
      793 LOADN                            R85 1
      794 LOADN                            R86 0
      795 CALL                             R82 4 1
      796 SETTABLEKS                       R82 R81 K3 ["Size"]
      798 LOADN                            R82 0
      799 SETTABLEKS                       R82 R81 K102 ["BackgroundTransparency"]
      801 GETTABLEKS                       R83 R3 K188 ["divider"]
      803 GETTABLEKS                       R82 R83 K189 ["verticalLineColor"]
      805 SETTABLEKS                       R82 R81 K103 ["BackgroundColor3"]
      807 LOADN                            R82 0
      808 SETTABLEKS                       R82 R81 K104 ["BorderSizePixel"]
      810 LOADN                            R82 2
      811 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      813 CALL                             R79 2 1
      814 SETTABLEKS                       R79 R78 K158 ["VerticalLine"]
      816 MOVE                             R79 R39
      817 JUMPIFNOT                        R79 ; [+50]
      818 GETUPVAL                         R80 13
      819 GETTABLEKS                       R79 R80 K100 ["createElement"]
      821 GETUPVAL                         R80 19
      822 DUPTABLE                         R81 K190 [{"LayoutOrder", "Size"}]
      823 LOADN                            R82 3
      824 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
      826 GETIMPORT                        R82 K155 [UDim2.new]
      828 LOADN                            R83 1
      829 LOADN                            R84 16
      830 LOADN                            R85 1
      831 LOADN                            R86 0
      832 CALL                             R82 4 1
      833 SETTABLEKS                       R82 R81 K3 ["Size"]
      835 DUPTABLE                         R82 K192 [{"LoadingIndicator"}]
      836 GETUPVAL                         R84 13
      837 GETTABLEKS                       R83 R84 K100 ["createElement"]
      839 GETUPVAL                         R84 20
      840 DUPTABLE                         R85 K195 [{"Size", "AnchorPoint", "Position"}]
      841 GETIMPORT                        R86 K155 [UDim2.new]
      843 LOADN                            R87 0
      844 LOADN                            R88 100
      845 LOADN                            R89 0
      846 LOADN                            R90 100
      847 CALL                             R86 4 1
      848 SETTABLEKS                       R86 R85 K3 ["Size"]
      850 GETIMPORT                        R86 K197 [Vector2.new]
      852 LOADK                            R87 K198 [0.5]
      853 LOADK                            R88 K198 [0.5]
      854 CALL                             R86 2 1
      855 SETTABLEKS                       R86 R85 K193 ["AnchorPoint"]
      857 GETIMPORT                        R86 K200 [UDim2.fromScale]
      859 LOADK                            R87 K198 [0.5]
      860 LOADK                            R88 K198 [0.5]
      861 CALL                             R86 2 1
      862 SETTABLEKS                       R86 R85 K194 ["Position"]
      864 CALL                             R83 2 1
      865 SETTABLEKS                       R83 R82 K191 ["LoadingIndicator"]
      867 CALL                             R79 3 1
      868 SETTABLEKS                       R79 R78 K159 ["LoadingIndicatorWrapper"]
      870 NOT                              R79 R39
      871 JUMPIFNOT                        R79 ; [+248]
      872 GETUPVAL                         R79 1
      873 MOVE                             R81 R6
      874 NAMECALL                         R79 R79 K201 ["isGeneral"]
      876 CALL                             R79 2 1
      877 JUMPIFNOT                        R79 ; [+242]
      878 GETUPVAL                         R80 13
      879 GETTABLEKS                       R79 R80 K100 ["createElement"]
      881 GETUPVAL                         R80 21
      882 NEWTABLE                         R81 64 0
      884 GETIMPORT                        R82 K155 [UDim2.new]
      886 LOADN                            R83 1
      887 LOADN                            R84 16
      888 LOADN                            R85 1
      889 LOADN                            R86 0
      890 CALL                             R82 4 1
      891 SETTABLEKS                       R82 R81 K3 ["Size"]
      893 SETTABLEKS                       R48 R81 K202 ["allowSelectPrivate"]
      895 SETTABLEKS                       R7 R81 K6 ["assetId"]
      897 SETTABLEKS                       R8 R81 K8 ["name"]
      899 SETTABLEKS                       R9 R81 K9 ["description"]
      901 SETTABLEKS                       R10 R81 K13 ["owner"]
      903 GETUPVAL                         R83 7
      904 CALL                             R83 0 1
      905 JUMPIFNOT                        R83 ; [+2]
      906 MOVE                             R82 R41
      907 JUMP                             ; [+1]
      908 LOADNIL                          R82
      909 SETTABLEKS                       R82 R81 K53 ["canUploadWithUgcRestrictions"]
      911 GETUPVAL                         R83 7
      912 CALL                             R83 0 1
      913 JUMPIFNOT                        R83 ; [+2]
      914 MOVE                             R82 R42
      915 JUMP                             ; [+1]
      916 LOADNIL                          R82
      917 SETTABLEKS                       R82 R81 K54 ["canUploadWithUgcRestrictionsDenyReason"]
      919 SETTABLEKS                       R11 R81 K14 ["allowCopy"]
      921 SETTABLEKS                       R12 R81 K15 ["copyOn"]
      923 SETTABLEKS                       R13 R81 K16 ["allowComment"]
      925 SETTABLEKS                       R14 R81 K17 ["commentOn"]
      927 SETTABLEKS                       R15 R81 K18 ["deleteLocal"]
      929 SETTABLEKS                       R17 R81 K20 ["isAssetPublic"]
      931 SETTABLEKS                       R18 R81 K21 ["publishingRestriction"]
      933 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      935 GETTABLEKS                       R82 R0 K203 ["onNameChange"]
      937 SETTABLEKS                       R82 R81 K203 ["onNameChange"]
      939 GETTABLEKS                       R82 R0 K204 ["onDescChange"]
      941 SETTABLEKS                       R82 R81 K204 ["onDescChange"]
      943 GETUPVAL                         R83 7
      944 CALL                             R83 0 1
      945 JUMPIFNOT                        R83 ; [+3]
      946 GETTABLEKS                       R82 R0 K205 ["onCategoryChange"]
      948 JUMP                             ; [+1]
      949 LOADNIL                          R82
      950 SETTABLEKS                       R82 R81 K205 ["onCategoryChange"]
      952 GETTABLEKS                       R82 R1 K206 ["groupId"]
      954 SETTABLEKS                       R82 R81 K207 ["preselectedGroupId"]
      956 GETTABLEKS                       R82 R0 K208 ["onAccessChange"]
      958 SETTABLEKS                       R82 R81 K209 ["onOwnerSelected"]
      960 GETTABLEKS                       R82 R0 K210 ["onSharingChanged"]
      962 SETTABLEKS                       R82 R81 K210 ["onSharingChanged"]
      964 GETTABLEKS                       R82 R0 K211 ["onAdditionalImagesChanged"]
      966 SETTABLEKS                       R82 R81 K211 ["onAdditionalImagesChanged"]
      968 GETTABLEKS                       R82 R0 K212 ["toggleCopy"]
      970 SETTABLEKS                       R82 R81 K212 ["toggleCopy"]
      972 GETTABLEKS                       R82 R0 K213 ["toggleComment"]
      974 SETTABLEKS                       R82 R81 K213 ["toggleComment"]
      976 GETTABLEKS                       R82 R0 K214 ["toggleDeleteLocal"]
      978 SETTABLEKS                       R82 R81 K214 ["toggleDeleteLocal"]
      980 GETTABLEKS                       R82 R2 K215 ["dataSharingEnabled"]
      982 SETTABLEKS                       R82 R81 K215 ["dataSharingEnabled"]
      984 GETTABLEKS                       R82 R2 K216 ["dataSharingToggled"]
      986 SETTABLEKS                       R82 R81 K216 ["dataSharingToggled"]
      988 GETTABLEKS                       R82 R0 K217 ["onDataConsentToggleClick"]
      990 SETTABLEKS                       R82 R81 K217 ["onDataConsentToggleClick"]
      992 SETTABLEKS                       R32 R81 K218 ["displayOwnership"]
      994 SETTABLEKS                       R33 R81 K219 ["displayCopy"]
      996 SETTABLEKS                       R35 R81 K220 ["displayComment"]
      998 SETTABLEKS                       R36 R81 K221 ["displayAssetType"]
     1000 SETTABLEKS                       R49 R81 K222 ["displaySharing"]
     1002 SETTABLEKS                       R34 R81 K223 ["displayAssetTypeSelection"]
     1004 JUMPIFNOT                        R47 ; [+2]
     1005 MOVE                             R82 R27
     1006 JUMP                             ; [+1]
     1007 LOADNIL                          R82
     1008 SETTABLEKS                       R82 R81 K30 ["allowedAssetTypesForRelease"]
     1010 SETTABLEKS                       R28 R81 K31 ["allowedAssetTypesForFree"]
     1012 JUMPIFNOT                        R47 ; [+2]
     1013 MOVE                             R82 R16
     1014 JUMP                             ; [+1]
     1015 LOADNIL                          R82
     1016 SETTABLEKS                       R82 R81 K224 ["newAssetStatus"]
     1018 JUMPIFNOT                        R47 ; [+2]
     1019 MOVE                             R82 R30
     1020 JUMP                             ; [+1]
     1021 LOADNIL                          R82
     1022 SETTABLEKS                       R82 R81 K225 ["currentAssetStatus"]
     1024 JUMPIFNOT                        R47 ; [+3]
     1025 GETTABLEKS                       R82 R0 K226 ["onStatusChange"]
     1027 JUMP                             ; [+1]
     1028 LOADNIL                          R82
     1029 SETTABLEKS                       R82 R81 K226 ["onStatusChange"]
     1031 JUMPIFNOT                        R47 ; [+3]
     1032 GETTABLEKS                       R82 R0 K227 ["onPriceChange"]
     1034 JUMP                             ; [+1]
     1035 LOADNIL                          R82
     1036 SETTABLEKS                       R82 R81 K227 ["onPriceChange"]
     1038 JUMPIFNOT                        R47 ; [+2]
     1039 MOVE                             R82 R31
     1040 JUMP                             ; [+1]
     1041 LOADNIL                          R82
     1042 SETTABLEKS                       R82 R81 K35 ["price"]
     1044 LOADNIL                          R82
     1045 SETTABLEKS                       R82 R81 K228 ["minPrice"]
     1047 LOADNIL                          R82
     1048 SETTABLEKS                       R82 R81 K229 ["maxPrice"]
     1050 LOADNIL                          R82
     1051 SETTABLEKS                       R82 R81 K230 ["feeRate"]
     1053 LOADNIL                          R82
     1054 SETTABLEKS                       R82 R81 K231 ["isPriceValid"]
     1056 LOADN                            R82 3
     1057 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1059 GETTABLEKS                       R82 R1 K47 ["instances"]
     1061 SETTABLEKS                       R82 R81 K47 ["instances"]
     1063 GETUPVAL                         R83 8
     1064 CALL                             R83 0 1
     1065 JUMPIFNOT                        R83 ; [+2]
     1066 MOVE                             R82 R69
     1067 JUMP                             ; [+1]
     1068 LOADNIL                          R82
     1069 SETTABLEKS                       R82 R81 K232 ["showColorPicker"]
     1071 GETUPVAL                         R83 8
     1072 CALL                             R83 0 1
     1073 JUMPIFNOT                        R83 ; [+4]
     1074 JUMPIFNOT                        R69 ; [+3]
     1075 GETTABLEKS                       R82 R2 K233 ["showColorPickerRequiredError"]
     1077 JUMP                             ; [+1]
     1078 LOADNIL                          R82
     1079 SETTABLEKS                       R82 R81 K233 ["showColorPickerRequiredError"]
     1081 GETUPVAL                         R83 9
     1082 CALL                             R83 0 1
     1083 JUMPIFNOT                        R83 ; [+3]
     1084 GETTABLEKS                       R82 R2 K234 ["showNameRequiredError"]
     1086 JUMP                             ; [+1]
     1087 LOADNIL                          R82
     1088 SETTABLEKS                       R82 R81 K234 ["showNameRequiredError"]
     1090 GETUPVAL                         R83 9
     1091 CALL                             R83 0 1
     1092 JUMPIFNOT                        R83 ; [+3]
     1093 GETTABLEKS                       R82 R2 K235 ["showDescriptionRequiredError"]
     1095 JUMP                             ; [+1]
     1096 LOADNIL                          R82
     1097 SETTABLEKS                       R82 R81 K235 ["showDescriptionRequiredError"]
     1099 GETUPVAL                         R83 8
     1100 CALL                             R83 0 1
     1101 JUMPIFNOT                        R83 ; [+4]
     1102 JUMPIFNOT                        R69 ; [+3]
     1103 GETTABLEKS                       R82 R2 K59 ["selectedColor"]
     1105 JUMP                             ; [+1]
     1106 LOADNIL                          R82
     1107 SETTABLEKS                       R82 R81 K59 ["selectedColor"]
     1109 GETUPVAL                         R83 8
     1110 CALL                             R83 0 1
     1111 JUMPIFNOT                        R83 ; [+4]
     1112 JUMPIFNOT                        R69 ; [+3]
     1113 GETTABLEKS                       R82 R0 K236 ["onSelectedColorChange"]
     1115 JUMP                             ; [+1]
     1116 LOADNIL                          R82
     1117 SETTABLEKS                       R82 R81 K237 ["setSelectedColor"]
     1119 CALL                             R79 2 1
     1120 SETTABLEKS                       R79 R78 K160 ["PublishAsset"]
     1122 GETUPVAL                         R79 1
     1123 MOVE                             R81 R6
     1124 NAMECALL                         R79 R79 K238 ["isVersions"]
     1126 CALL                             R79 2 1
     1127 JUMPIFNOT                        R79 ; [+72]
     1128 GETUPVAL                         R80 13
     1129 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1131 GETUPVAL                         R80 22
     1132 DUPTABLE                         R81 K252 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1133 GETIMPORT                        R82 K155 [UDim2.new]
     1135 LOADN                            R83 1
     1136 LOADN                            R84 16
     1137 LOADN                            R85 1
     1138 LOADN                            R86 236
     1139 CALL                             R82 4 1
     1140 SETTABLEKS                       R82 R81 K3 ["Size"]
     1142 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1144 LOADN                            R82 3
     1145 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1147 GETTABLEKS                       R82 R2 K253 ["versionsCurrentItem"]
     1149 SETTABLEKS                       R82 R81 K239 ["currentItem"]
     1151 GETTABLEKS                       R82 R2 K254 ["versionsRootItems"]
     1153 SETTABLEKS                       R82 R81 K240 ["rootItems"]
     1155 GETTABLEKS                       R82 R2 K255 ["versionsOpenInputKey"]
     1157 SETTABLEKS                       R82 R81 K241 ["openInputKey"]
     1159 GETTABLEKS                       R82 R2 K256 ["versionsPreviousInput"]
     1161 SETTABLEKS                       R82 R81 K242 ["previousInput"]
     1163 GETTABLEKS                       R82 R2 K257 ["versionsPageIndex"]
     1165 SETTABLEKS                       R82 R81 K243 ["pageIndex"]
     1167 GETTABLEKS                       R82 R2 K258 ["versionsPageRootItems"]
     1169 SETTABLEKS                       R82 R81 K244 ["pageRootItems"]
     1171 GETTABLEKS                       R82 R1 K245 ["versionHistory"]
     1173 SETTABLEKS                       R82 R81 K245 ["versionHistory"]
     1175 GETTABLEKS                       R82 R0 K259 ["versionsOnDescClicked"]
     1177 SETTABLEKS                       R82 R81 K246 ["onDescClicked"]
     1179 GETTABLEKS                       R82 R0 K260 ["versionsCloseInput"]
     1181 SETTABLEKS                       R82 R81 K247 ["closeInput"]
     1183 GETTABLEKS                       R82 R0 K248 ["setVersionError"]
     1185 SETTABLEKS                       R82 R81 K248 ["setVersionError"]
     1187 GETTABLEKS                       R82 R0 K261 ["versionsSetPreviousInput"]
     1189 SETTABLEKS                       R82 R81 K249 ["setPreviousInput"]
     1191 GETTABLEKS                       R82 R0 K262 ["versionsOnPageChange"]
     1193 SETTABLEKS                       R82 R81 K250 ["onPageChange"]
     1195 GETTABLEKS                       R82 R0 K263 ["versionsSetStates"]
     1197 SETTABLEKS                       R82 R81 K251 ["setStates"]
     1199 CALL                             R79 2 1
     1200 SETTABLEKS                       R79 R78 K161 ["Versions"]
     1202 GETUPVAL                         R80 1
     1203 MOVE                             R82 R6
     1204 NAMECALL                         R80 R80 K264 ["isSales"]
     1206 CALL                             R80 2 1
     1207 JUMPIFNOT                        R80 ; [+21]
     1208 GETUPVAL                         R80 13
     1209 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1211 GETUPVAL                         R80 23
     1212 DUPTABLE                         R81 K267 [{"size", "assetId", "layoutOrder"}]
     1213 GETIMPORT                        R82 K155 [UDim2.new]
     1215 LOADN                            R83 1
     1216 LOADN                            R84 16
     1217 LOADN                            R85 1
     1218 LOADN                            R86 0
     1219 CALL                             R82 4 1
     1220 SETTABLEKS                       R82 R81 K265 ["size"]
     1222 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1224 LOADN                            R82 3
     1225 SETTABLEKS                       R82 R81 K266 ["layoutOrder"]
     1227 CALL                             R79 2 1
     1228 JUMP                             ; [+1]
     1229 LOADNIL                          R79
     1230 SETTABLEKS                       R79 R78 K162 ["Sales"]
     1232 GETUPVAL                         R79 1
     1233 MOVE                             R81 R6
     1234 NAMECALL                         R79 R79 K60 ["isOverride"]
     1236 CALL                             R79 2 1
     1237 JUMPIFNOT                        R79 ; [+28]
     1238 GETUPVAL                         R80 13
     1239 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1241 GETUPVAL                         R80 24
     1242 DUPTABLE                         R81 K269 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1243 GETIMPORT                        R82 K155 [UDim2.new]
     1245 LOADN                            R83 1
     1246 LOADN                            R84 16
     1247 LOADN                            R85 1
     1248 LOADN                            R86 0
     1249 CALL                             R82 4 1
     1250 SETTABLEKS                       R82 R81 K3 ["Size"]
     1252 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1254 GETTABLEKS                       R82 R1 K47 ["instances"]
     1256 SETTABLEKS                       R82 R81 K47 ["instances"]
     1258 GETTABLEKS                       R82 R0 K268 ["onOverrideAssetSelected"]
     1260 SETTABLEKS                       R82 R81 K268 ["onOverrideAssetSelected"]
     1262 LOADN                            R82 3
     1263 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1265 CALL                             R79 2 1
     1266 SETTABLEKS                       R79 R78 K163 ["OverrideAsset"]
     1268 GETUPVAL                         R79 1
     1269 MOVE                             R81 R6
     1270 NAMECALL                         R79 R79 K270 ["isPermissions"]
     1272 CALL                             R79 2 1
     1273 JUMPIFNOT                        R79 ; [+59]
     1274 GETUPVAL                         R80 25
     1275 CALL                             R80 0 1
     1276 JUMPIFNOT                        R80 ; [+34]
     1277 GETUPVAL                         R80 13
     1278 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1280 GETUPVAL                         R81 26
     1281 GETTABLEKS                       R80 R81 K271 ["AsyncCache"]
     1283 NEWTABLE                         R81 0 0
     1285 NEWTABLE                         R82 0 1
     1287 GETUPVAL                         R84 13
     1288 GETTABLEKS                       R83 R84 K100 ["createElement"]
     1290 GETUPVAL                         R84 27
     1291 DUPTABLE                         R85 K272 [{"Size", "AssetId", "LayoutOrder"}]
     1292 GETIMPORT                        R86 K155 [UDim2.new]
     1294 LOADN                            R87 1
     1295 MOVE                             R88 R43
     1296 LOADN                            R89 1
     1297 LOADN                            R90 0
     1298 CALL                             R86 4 1
     1299 SETTABLEKS                       R86 R85 K3 ["Size"]
     1301 SETTABLEKS                       R7 R85 K178 ["AssetId"]
     1303 LOADN                            R86 3
     1304 SETTABLEKS                       R86 R85 K128 ["LayoutOrder"]
     1306 CALL                             R83 2 -1
     1307 SETLIST                          R82 R83 -1 [1]
     1309 CALL                             R79 3 1
     1310 JUMP                             ; [+22]
     1311 GETUPVAL                         R80 13
     1312 GETTABLEKS                       R79 R80 K100 ["createElement"]
     1314 GETUPVAL                         R80 28
     1315 DUPTABLE                         R81 K274 [{"Size", "Owner", "AssetId", "LayoutOrder"}]
     1316 GETIMPORT                        R82 K155 [UDim2.new]
     1318 LOADN                            R83 1
     1319 MOVE                             R84 R43
     1320 LOADN                            R85 1
     1321 LOADN                            R86 0
     1322 CALL                             R82 4 1
     1323 SETTABLEKS                       R82 R81 K3 ["Size"]
     1325 SETTABLEKS                       R10 R81 K273 ["Owner"]
     1327 SETTABLEKS                       R7 R81 K178 ["AssetId"]
     1329 LOADN                            R82 3
     1330 SETTABLEKS                       R82 R81 K128 ["LayoutOrder"]
     1332 CALL                             R79 2 1
     1333 SETTABLEKS                       R79 R78 K164 ["PackagePermissions"]
     1335 CALL                             R75 3 1
     1336 SETTABLEKS                       R75 R74 K113 ["MainPage"]
     1338 GETUPVAL                         R76 13
     1339 GETTABLEKS                       R75 R76 K100 ["createElement"]
     1341 GETUPVAL                         R76 29
     1342 DUPTABLE                         R77 K279 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1343 GETTABLEKS                       R78 R2 K280 ["overrideAssetId"]
     1345 SETTABLEKS                       R78 R77 K178 ["AssetId"]
     1347 SETTABLEKS                       R40 R77 K275 ["CanSave"]
     1349 LOADN                            R78 2
     1350 SETTABLEKS                       R78 R77 K128 ["LayoutOrder"]
     1352 GETIMPORT                        R78 K155 [UDim2.new]
     1354 LOADN                            R79 1
     1355 LOADN                            R80 0
     1356 LOADN                            R81 0
     1357 LOADN                            R82 62
     1358 CALL                             R78 4 1
     1359 SETTABLEKS                       R78 R77 K3 ["Size"]
     1361 GETTABLEKS                       R78 R0 K281 ["tryCancelWithYield"]
     1363 SETTABLEKS                       R78 R77 K276 ["TryCancel"]
     1365 GETTABLEKS                       R78 R0 K282 ["tryPublishWithConfirmDialog"]
     1367 SETTABLEKS                       R78 R77 K277 ["TryPublish"]
     1369 GETUPVAL                         R79 8
     1370 CALL                             R79 0 1
     1371 JUMPIFNOT                        R79 ; [+8]
     1372 JUMPIF                           R40 ; [+7]
     1373 NEWCLOSURE                       R78 P1
     1374 CAPTURE                          VAL R0
     1375 CAPTURE                          VAL R70
     1376 CAPTURE                          UPVAL U9
     1377 CAPTURE                          VAL R8
     1378 CAPTURE                          VAL R9
     1379 JUMP                             ; [+1]
     1380 LOADNIL                          R78
     1381 SETTABLEKS                       R78 R77 K278 ["OnPublishButtonHover"]
     1383 CALL                             R75 2 1
     1384 SETTABLEKS                       R75 R74 K114 ["Footer"]
     1386 CALL                             R71 3 -1
     1387 RETURN                           R71 -1

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
      110 GETTABLEKS                       R14 R15 K24 ["getFFlagCheckAvatarAssetPrivacy"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K1 [game]
      115 LOADK                            R16 K25 ["StudioService"]
      116 NAMECALL                         R14 R14 K3 ["GetService"]
      118 CALL                             R14 2 1
      119 GETIMPORT                        R15 K15 [require]
      121 GETTABLEKS                       R18 R1 K7 ["Src"]
      123 GETTABLEKS                       R17 R18 K8 ["Util"]
      125 GETTABLEKS                       R16 R17 K26 ["getUserId"]
      127 CALL                             R15 1 1
      128 GETTABLEKS                       R16 R1 K27 ["Packages"]
      130 GETIMPORT                        R17 K15 [require]
      132 GETTABLEKS                       R18 R16 K28 ["Roact"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K15 [require]
      137 GETTABLEKS                       R19 R16 K29 ["RoactRodux"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K15 [require]
      142 GETTABLEKS                       R20 R16 K30 ["Cryo"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K15 [require]
      147 GETTABLEKS                       R22 R2 K31 ["Analytics"]
      149 GETTABLEKS                       R21 R22 K31 ["Analytics"]
      151 CALL                             R20 1 1
      152 GETTABLEKS                       R22 R1 K7 ["Src"]
      154 GETTABLEKS                       R21 R22 K32 ["Components"]
      156 GETTABLEKS                       R22 R21 K33 ["AssetConfiguration"]
      158 GETIMPORT                        R23 K15 [require]
      160 GETTABLEKS                       R24 R22 K34 ["PreviewArea"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K15 [require]
      165 GETTABLEKS                       R25 R22 K35 ["PublishAsset"]
      167 CALL                             R24 1 1
      168 GETIMPORT                        R25 K15 [require]
      170 GETTABLEKS                       R26 R22 K36 ["AssetConfigFooter"]
      172 CALL                             R25 1 1
      173 GETIMPORT                        R26 K15 [require]
      175 GETTABLEKS                       R27 R22 K37 ["Versions"]
      177 CALL                             R26 1 1
      178 GETIMPORT                        R27 K15 [require]
      180 GETTABLEKS                       R28 R22 K38 ["DataSharing"]
      182 CALL                             R27 1 1
      183 GETIMPORT                        R28 K15 [require]
      185 GETTABLEKS                       R29 R22 K39 ["CreatorDashboardLinkContent"]
      187 CALL                             R28 1 1
      188 LOADNIL                          R29
      189 LOADNIL                          R30
      190 LOADNIL                          R31
      191 MOVE                             R32 R12
      192 CALL                             R32 0 1
      193 JUMPIFNOT                        R32 ; [+17]
      194 GETIMPORT                        R32 K15 [require]
      196 GETTABLEKS                       R34 R22 K40 ["Permissions"]
      198 GETTABLEKS                       R33 R34 K41 ["PermissionsPage"]
      200 CALL                             R32 1 1
      201 MOVE                             R30 R32
      202 GETIMPORT                        R32 K15 [require]
      204 GETTABLEKS                       R34 R22 K40 ["Permissions"]
      206 GETTABLEKS                       R33 R34 K42 ["CollaboratorInfo"]
      208 CALL                             R32 1 1
      209 MOVE                             R31 R32
      210 JUMP                             ; [+8]
      211 GETIMPORT                        R32 K15 [require]
      213 GETTABLEKS                       R34 R22 K40 ["Permissions"]
      215 GETTABLEKS                       R33 R34 K43 ["DEPRECATED_Permissions"]
      217 CALL                             R32 1 1
      218 MOVE                             R29 R32
      219 GETIMPORT                        R32 K15 [require]
      221 GETTABLEKS                       R33 R22 K44 ["WarningDialog"]
      223 CALL                             R32 1 1
      224 GETIMPORT                        R33 K15 [require]
      226 GETTABLEKS                       R34 R22 K45 ["StyledConfirmDialog"]
      228 CALL                             R33 1 1
      229 GETIMPORT                        R34 K15 [require]
      231 GETTABLEKS                       R35 R22 K46 ["AvatarItemDialogContainer"]
      233 CALL                             R34 1 1
      234 GETIMPORT                        R35 K15 [require]
      236 GETTABLEKS                       R36 R22 K47 ["OverrideAsset"]
      238 CALL                             R35 1 1
      239 GETIMPORT                        R36 K15 [require]
      241 GETTABLEKS                       R38 R21 K48 ["MessageBox"]
      243 GETTABLEKS                       R37 R38 K48 ["MessageBox"]
      245 CALL                             R36 1 1
      246 GETIMPORT                        R37 K15 [require]
      248 GETTABLEKS                       R38 R2 K49 ["AssetPermissionUtil"]
      250 CALL                             R37 1 1
      251 GETIMPORT                        R38 K15 [require]
      253 GETTABLEKS                       R39 R2 K50 ["Images"]
      255 CALL                             R38 1 1
      256 GETIMPORT                        R39 K15 [require]
      258 GETTABLEKS                       R40 R2 K51 ["AssetConfigConstants"]
      260 CALL                             R39 1 1
      261 GETIMPORT                        R40 K15 [require]
      263 GETTABLEKS                       R41 R2 K52 ["Constants"]
      265 CALL                             R40 1 1
      266 GETIMPORT                        R41 K15 [require]
      268 GETTABLEKS                       R42 R2 K53 ["ScreenSetup"]
      270 CALL                             R41 1 1
      271 GETIMPORT                        R42 K15 [require]
      273 GETTABLEKS                       R43 R2 K54 ["AssetConfigUtil"]
      275 CALL                             R42 1 1
      276 GETIMPORT                        R43 K15 [require]
      278 GETTABLEKS                       R44 R2 K55 ["fixUpPreValidation"]
      280 CALL                             R43 1 1
      281 GETIMPORT                        R44 K15 [require]
      283 GETTABLEKS                       R45 R2 K56 ["PublishUtil"]
      285 CALL                             R44 1 1
      286 GETIMPORT                        R45 K15 [require]
      288 GETTABLEKS                       R46 R2 K57 ["getAllowedAssetTypeEnums"]
      290 CALL                             R45 1 1
      291 GETIMPORT                        R46 K15 [require]
      293 GETTABLEKS                       R47 R2 K58 ["FiatUtil"]
      295 CALL                             R46 1 1
      296 LOADNIL                          R47
      297 JUMPIFNOT                        R5 ; [+6]
      298 GETIMPORT                        R48 K15 [require]
      300 GETTABLEKS                       R49 R2 K59 ["getIsIXPVariableEnabled"]
      302 CALL                             R48 1 1
      303 MOVE                             R47 R48
      304 GETIMPORT                        R48 K15 [require]
      306 GETTABLEKS                       R49 R16 K60 ["Framework"]
      308 CALL                             R48 1 1
      309 GETTABLEKS                       R50 R48 K8 ["Util"]
      311 GETTABLEKS                       R49 R50 K61 ["deepCopy"]
      313 GETTABLEKS                       R51 R48 K8 ["Util"]
      315 GETTABLEKS                       R50 R51 K62 ["deepEqual"]
      317 GETTABLEKS                       R51 R48 K63 ["Dash"]
      319 GETTABLEKS                       R52 R51 K64 ["slice"]
      321 GETIMPORT                        R53 K15 [require]
      323 GETTABLEKS                       R57 R1 K7 ["Src"]
      325 GETTABLEKS                       R56 R57 K65 ["Networking"]
      327 GETTABLEKS                       R55 R56 K66 ["Requests"]
      329 GETTABLEKS                       R54 R55 K67 ["MakeChangeRequest"]
      331 CALL                             R53 1 1
      332 GETTABLEKS                       R55 R1 K7 ["Src"]
      334 GETTABLEKS                       R54 R55 K68 ["Types"]
      336 GETIMPORT                        R55 K15 [require]
      338 GETTABLEKS                       R56 R54 K69 ["AssetMediaTypes"]
      340 CALL                             R55 1 1
      341 GETIMPORT                        R56 K15 [require]
      343 GETTABLEKS                       R57 R54 K70 ["AssetSubTypes"]
      345 CALL                             R56 1 1
      346 GETIMPORT                        R57 K15 [require]
      348 GETTABLEKS                       R58 R54 K71 ["ConfigTypes"]
      350 CALL                             R57 1 1
      351 GETTABLEKS                       R60 R1 K7 ["Src"]
      353 GETTABLEKS                       R59 R60 K65 ["Networking"]
      355 GETTABLEKS                       R58 R59 K66 ["Requests"]
      357 GETIMPORT                        R59 K15 [require]
      359 GETTABLEKS                       R60 R58 K72 ["GetUploadPermissionStatusRequest"]
      361 CALL                             R59 1 1
      362 GETIMPORT                        R60 K15 [require]
      364 GETTABLEKS                       R61 R58 K73 ["UploadCatalogItemRequest"]
      366 CALL                             R60 1 1
      367 GETIMPORT                        R61 K15 [require]
      369 GETTABLEKS                       R62 R58 K74 ["ConfigureCatalogItemRequest"]
      371 CALL                             R61 1 1
      372 GETIMPORT                        R62 K15 [require]
      374 GETTABLEKS                       R63 R58 K75 ["GetAssetDetailsRequest"]
      376 CALL                             R62 1 1
      377 GETIMPORT                        R63 K15 [require]
      379 GETTABLEKS                       R64 R58 K76 ["PostRevertVersionRequest"]
      381 CALL                             R63 1 1
      382 GETIMPORT                        R64 K15 [require]
      384 GETTABLEKS                       R65 R58 K77 ["PostVersionDescriptionRequest"]
      386 CALL                             R64 1 1
      387 GETIMPORT                        R65 K15 [require]
      389 GETTABLEKS                       R66 R58 K78 ["PatchAssetRequest"]
      391 CALL                             R65 1 1
      392 GETIMPORT                        R66 K15 [require]
      394 GETTABLEKS                       R67 R58 K79 ["PostUploadAssetRequest"]
      396 CALL                             R66 1 1
      397 GETIMPORT                        R67 K15 [require]
      399 GETTABLEKS                       R68 R58 K80 ["PostOverrideAssetRequest"]
      401 CALL                             R67 1 1
      402 GETIMPORT                        R68 K15 [require]
      404 GETTABLEKS                       R69 R58 K81 ["PostUploadAnimationRequest"]
      406 CALL                             R68 1 1
      407 GETIMPORT                        R69 K15 [require]
      409 GETTABLEKS                       R70 R58 K82 ["PostOverrideAnimationRequest"]
      411 CALL                             R69 1 1
      412 GETIMPORT                        R70 K15 [require]
      414 GETTABLEKS                       R71 R58 K83 ["GetIsVerifiedCreatorRequest"]
      416 CALL                             R70 1 1
      417 GETIMPORT                        R71 K15 [require]
      419 GETTABLEKS                       R72 R58 K84 ["PostPackageMetadataRequest"]
      421 CALL                             R71 1 1
      422 GETIMPORT                        R72 K15 [require]
      424 GETTABLEKS                       R73 R58 K85 ["GetPackageCollaboratorsRequest"]
      426 CALL                             R72 1 1
      427 GETIMPORT                        R73 K15 [require]
      429 GETTABLEKS                       R74 R58 K86 ["PutPackagePermissionsRequest"]
      431 CALL                             R73 1 1
      432 GETIMPORT                        R74 K15 [require]
      434 GETTABLEKS                       R75 R58 K87 ["PostAssetCheckPermissions"]
      436 CALL                             R74 1 1
      437 GETIMPORT                        R75 K15 [require]
      439 GETTABLEKS                       R76 R58 K88 ["GetMarketplaceInfoRequest"]
      441 CALL                             R75 1 1
      442 GETIMPORT                        R76 K15 [require]
      444 GETTABLEKS                       R77 R58 K89 ["GetItemUploadFeeRequest"]
      446 CALL                             R76 1 1
      447 GETIMPORT                        R77 K15 [require]
      449 GETTABLEKS                       R78 R58 K90 ["UGCBundleUploadRequest"]
      451 CALL                             R77 1 1
      452 GETIMPORT                        R78 K15 [require]
      454 GETTABLEKS                       R79 R58 K91 ["PatchMakeAssetPublicRequest"]
      456 CALL                             R78 1 1
      457 GETIMPORT                        R79 K15 [require]
      459 GETTABLEKS                       R80 R58 K92 ["GetAssetPermissionsRequest"]
      461 CALL                             R79 1 1
      462 GETIMPORT                        R80 K15 [require]
      464 GETTABLEKS                       R81 R58 K93 ["GetPublishingRequirementsRequest"]
      466 CALL                             R80 1 1
      467 GETIMPORT                        R81 K15 [require]
      469 GETTABLEKS                       R82 R58 K94 ["GetAssetMediaMetadataArrayRequest"]
      471 CALL                             R81 1 1
      472 GETIMPORT                        R82 K15 [require]
      474 GETTABLEKS                       R83 R58 K95 ["UGCAccessoryUploadRequest"]
      476 CALL                             R82 1 1
      477 GETIMPORT                        R83 K15 [require]
      479 GETTABLEKS                       R84 R58 K96 ["GetVersionsHistoryRequest"]
      481 CALL                             R83 1 1
      482 GETIMPORT                        R84 K15 [require]
      484 GETTABLEKS                       R85 R58 K97 ["GetFiatProductRequest"]
      486 CALL                             R84 1 1
      487 GETIMPORT                        R85 K15 [require]
      489 GETTABLEKS                       R86 R58 K98 ["GetSellerStatusRequest"]
      491 CALL                             R85 1 1
      492 GETIMPORT                        R86 K15 [require]
      494 GETTABLEKS                       R87 R58 K99 ["GetDefaultBundleDataSharingRequest"]
      496 CALL                             R86 1 1
      497 GETIMPORT                        R87 K15 [require]
      499 GETTABLEKS                       R90 R1 K7 ["Src"]
      501 GETTABLEKS                       R89 R90 K100 ["Actions"]
      503 GETTABLEKS                       R88 R89 K101 ["ClearChange"]
      505 CALL                             R87 1 1
      506 GETIMPORT                        R88 K15 [require]
      508 GETTABLEKS                       R91 R1 K7 ["Src"]
      510 GETTABLEKS                       R90 R91 K100 ["Actions"]
      512 GETTABLEKS                       R89 R90 K102 ["SetAssetConfigTab"]
      514 CALL                             R88 1 1
      515 GETIMPORT                        R89 K15 [require]
      517 GETTABLEKS                       R92 R1 K7 ["Src"]
      519 GETTABLEKS                       R91 R92 K100 ["Actions"]
      521 GETTABLEKS                       R90 R91 K103 ["UpdateAssetConfigStore"]
      523 CALL                             R89 1 1
      524 GETIMPORT                        R90 K15 [require]
      526 GETTABLEKS                       R93 R1 K7 ["Src"]
      528 GETTABLEKS                       R92 R93 K100 ["Actions"]
      530 GETTABLEKS                       R91 R92 K104 ["SetDescendantPermissions"]
      532 CALL                             R90 1 1
      533 GETIMPORT                        R91 K15 [require]
      535 GETTABLEKS                       R94 R1 K7 ["Src"]
      537 GETTABLEKS                       R93 R94 K100 ["Actions"]
      539 GETTABLEKS                       R92 R93 K105 ["UploadResult"]
      541 CALL                             R91 1 1
      542 GETIMPORT                        R92 K15 [require]
      544 GETTABLEKS                       R95 R1 K7 ["Src"]
      546 GETTABLEKS                       R94 R95 K100 ["Actions"]
      548 GETTABLEKS                       R93 R94 K106 ["ValidateAnimationResult"]
      550 CALL                             R92 1 1
      551 GETIMPORT                        R93 K15 [require]
      553 GETTABLEKS                       R96 R1 K7 ["Src"]
      555 GETTABLEKS                       R95 R96 K107 ["Thunks"]
      557 GETTABLEKS                       R94 R95 K108 ["GetGroupMetadata"]
      559 CALL                             R93 1 1
      560 GETIMPORT                        R94 K15 [require]
      562 GETTABLEKS                       R97 R1 K7 ["Src"]
      564 GETTABLEKS                       R96 R97 K107 ["Thunks"]
      566 GETTABLEKS                       R95 R96 K109 ["GetGroupRoleInfo"]
      568 CALL                             R94 1 1
      569 GETIMPORT                        R95 K15 [require]
      571 GETTABLEKS                       R98 R1 K7 ["Src"]
      573 GETTABLEKS                       R97 R98 K107 ["Thunks"]
      575 GETTABLEKS                       R96 R97 K110 ["GetUsername"]
      577 CALL                             R95 1 1
      578 GETIMPORT                        R96 K15 [require]
      580 GETTABLEKS                       R99 R1 K7 ["Src"]
      582 GETTABLEKS                       R98 R99 K107 ["Thunks"]
      584 GETTABLEKS                       R97 R98 K111 ["CheckAvatarAssetPrivacy"]
      586 CALL                             R96 1 1
      587 GETIMPORT                        R97 K15 [require]
      589 GETTABLEKS                       R100 R1 K7 ["Src"]
      591 GETTABLEKS                       R99 R100 K112 ["ContextServices"]
      593 GETTABLEKS                       R98 R99 K113 ["IXPContext"]
      595 CALL                             R97 1 1
      596 GETIMPORT                        R98 K15 [require]
      598 GETTABLEKS                       R101 R1 K7 ["Src"]
      600 GETTABLEKS                       R100 R101 K112 ["ContextServices"]
      602 GETTABLEKS                       R99 R100 K114 ["NetworkContext"]
      604 CALL                             R98 1 1
      605 GETIMPORT                        R99 K15 [require]
      607 GETTABLEKS                       R102 R1 K7 ["Src"]
      609 GETTABLEKS                       R101 R102 K112 ["ContextServices"]
      611 GETTABLEKS                       R100 R101 K115 ["PublishServiceContext"]
      613 CALL                             R99 1 1
      614 GETIMPORT                        R100 K15 [require]
      616 GETTABLEKS                       R103 R1 K7 ["Src"]
      618 GETTABLEKS                       R102 R103 K112 ["ContextServices"]
      620 GETTABLEKS                       R101 R102 K116 ["PluginGuiServiceContext"]
      622 CALL                             R100 1 1
      623 GETIMPORT                        R101 K15 [require]
      625 GETTABLEKS                       R104 R1 K7 ["Src"]
      627 GETTABLEKS                       R103 R104 K112 ["ContextServices"]
      629 GETTABLEKS                       R102 R103 K117 ["ContentProviderContext"]
      631 CALL                             R101 1 1
      632 GETIMPORT                        R102 K15 [require]
      634 GETTABLEKS                       R103 R16 K60 ["Framework"]
      636 CALL                             R102 1 1
      637 GETTABLEKS                       R103 R102 K112 ["ContextServices"]
      639 GETTABLEKS                       R104 R103 K118 ["withContext"]
      641 GETTABLEKS                       R106 R102 K119 ["UI"]
      643 GETTABLEKS                       R105 R106 K120 ["LoadingIndicator"]
      645 GETTABLEKS                       R107 R102 K119 ["UI"]
      647 GETTABLEKS                       R106 R107 K121 ["Container"]
      649 GETTABLEKS                       R107 R17 K122 ["PureComponent"]
      651 LOADK                            R109 K123 ["AssetConfig"]
      652 NAMECALL                         R107 R107 K124 ["extend"]
      654 CALL                             R107 2 1
      655 GETIMPORT                        R108 K127 [utf8.char]
      657 LOADK                            R109 K128 [57346]
      658 CALL                             R108 1 1
      659 GETIMPORT                        R109 K15 [require]
      661 GETTABLEKS                       R112 R1 K7 ["Src"]
      663 GETTABLEKS                       R111 R112 K22 ["Flags"]
      665 GETTABLEKS                       R110 R111 K129 ["getFFlagFixCreatorGroupIdNotChanging"]
      667 CALL                             R109 1 1
      668 GETIMPORT                        R110 K15 [require]
      670 GETTABLEKS                       R113 R1 K7 ["Src"]
      672 GETTABLEKS                       R112 R113 K22 ["Flags"]
      674 GETTABLEKS                       R111 R112 K130 ["getFFlagEnableUploadingGroupBundles"]
      676 CALL                             R110 1 1
      677 GETIMPORT                        R111 K15 [require]
      679 GETTABLEKS                       R114 R1 K7 ["Src"]
      681 GETTABLEKS                       R113 R114 K22 ["Flags"]
      683 GETTABLEKS                       R112 R113 K131 ["getFFlagAssetConfigPermissionFailure"]
      685 CALL                             R111 1 1
      686 GETIMPORT                        R112 K15 [require]
      688 GETTABLEKS                       R115 R1 K7 ["Src"]
      690 GETTABLEKS                       R114 R115 K22 ["Flags"]
      692 GETTABLEKS                       R113 R114 K132 ["getFFlagEnableUploadingMakeup"]
      694 CALL                             R112 1 1
      695 GETIMPORT                        R113 K15 [require]
      697 GETTABLEKS                       R116 R1 K7 ["Src"]
      699 GETTABLEKS                       R115 R116 K22 ["Flags"]
      701 GETTABLEKS                       R114 R115 K133 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      703 CALL                             R113 1 1
      704 NEWCLOSURE                       R114 P0
      705 CAPTURE                          VAL R13
      706 CAPTURE                          VAL R40
      707 CAPTURE                          VAL R112
      708 CAPTURE                          VAL R42
      709 CAPTURE                          VAL R39
      710 CAPTURE                          VAL R6
      711 CAPTURE                          VAL R37
      712 CAPTURE                          VAL R19
      713 CAPTURE                          VAL R4
      714 CAPTURE                          VAL R5
      715 CAPTURE                          REF R47
      716 CAPTURE                          VAL R14
      717 CAPTURE                          VAL R57
      718 CAPTURE                          VAL R15
      719 CAPTURE                          VAL R27
      720 CAPTURE                          VAL R110
      721 CAPTURE                          VAL R8
      722 CAPTURE                          VAL R111
      723 CAPTURE                          VAL R11
      724 CAPTURE                          VAL R20
      725 CAPTURE                          VAL R113
      726 CAPTURE                          VAL R7
      727 CAPTURE                          VAL R59
      728 CAPTURE                          VAL R109
      729 CAPTURE                          VAL R49
      730 CAPTURE                          VAL R50
      731 CAPTURE                          VAL R56
      732 CAPTURE                          VAL R38
      733 SETTABLEKS                       R114 R107 K134 ["init"]
      735 DUPCLOSURE                       R114 K135 [PROTO_65]
      736 SETTABLEKS                       R114 R107 K136 ["attachXButtonCallback"]
      738 DUPCLOSURE                       R114 K137 [PROTO_66]
      739 SETTABLEKS                       R114 R107 K138 ["detachXButtonCallback"]
      741 DUPCLOSURE                       R114 K139 [PROTO_67]
      742 CAPTURE                          VAL R39
      743 SETTABLEKS                       R114 R107 K140 ["isLoading"]
      745 DUPCLOSURE                       R114 K141 [PROTO_68]
      746 CAPTURE                          VAL R19
      747 DUPCLOSURE                       R115 K142 [PROTO_69]
      748 CAPTURE                          VAL R39
      749 CAPTURE                          VAL R57
      750 CAPTURE                          VAL R37
      751 CAPTURE                          VAL R42
      752 CAPTURE                          VAL R3
      753 CAPTURE                          VAL R44
      754 CAPTURE                          VAL R114
      755 CAPTURE                          VAL R40
      756 SETTABLEKS                       R115 R107 K143 ["didUpdate"]
      758 DUPCLOSURE                       R115 K144 [PROTO_70]
      759 CAPTURE                          VAL R52
      760 SETTABLEKS                       R115 R107 K145 ["versionsGetPageRootItems"]
      762 DUPCLOSURE                       R115 K146 [PROTO_73]
      763 CAPTURE                          VAL R86
      764 SETTABLEKS                       R115 R107 K147 ["getDefaultBundleDataSharing"]
      766 DUPCLOSURE                       R115 K148 [PROTO_79]
      767 CAPTURE                          VAL R39
      768 CAPTURE                          VAL R42
      769 SETTABLEKS                       R115 R107 K149 ["getAssetInformation"]
      771 DUPCLOSURE                       R115 K150 [PROTO_81]
      772 CAPTURE                          VAL R42
      773 CAPTURE                          VAL R7
      774 CAPTURE                          VAL R10
      775 CAPTURE                          VAL R46
      776 SETTABLEKS                       R115 R107 K151 ["didMount"]
      778 DUPCLOSURE                       R115 K152 [PROTO_82]
      779 SETTABLEKS                       R115 R107 K153 ["willUnmount"]
      781 NEWCLOSURE                       R115 P11
      782 CAPTURE                          VAL R39
      783 CAPTURE                          VAL R57
      784 CAPTURE                          VAL R13
      785 CAPTURE                          VAL R110
      786 CAPTURE                          VAL R42
      787 CAPTURE                          VAL R41
      788 CAPTURE                          VAL R44
      789 CAPTURE                          VAL R7
      790 CAPTURE                          VAL R112
      791 CAPTURE                          VAL R113
      792 CAPTURE                          VAL R40
      793 CAPTURE                          VAL R108
      794 CAPTURE                          VAL R6
      795 CAPTURE                          VAL R17
      796 CAPTURE                          VAL R36
      797 CAPTURE                          VAL R33
      798 CAPTURE                          VAL R34
      799 CAPTURE                          VAL R32
      800 CAPTURE                          VAL R23
      801 CAPTURE                          VAL R106
      802 CAPTURE                          VAL R105
      803 CAPTURE                          VAL R24
      804 CAPTURE                          VAL R26
      805 CAPTURE                          VAL R28
      806 CAPTURE                          VAL R35
      807 CAPTURE                          VAL R12
      808 CAPTURE                          REF R31
      809 CAPTURE                          REF R30
      810 CAPTURE                          REF R29
      811 CAPTURE                          VAL R25
      812 SETTABLEKS                       R115 R107 K154 ["render"]
      814 MOVE                             R115 R104
      815 DUPTABLE                         R116 K164 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      816 GETTABLEKS                       R117 R103 K155 ["Focus"]
      818 SETTABLEKS                       R117 R116 K155 ["Focus"]
      820 JUMPIFNOT                        R5 ; [+2]
      821 MOVE                             R117 R97
      822 JUMP                             ; [+1]
      823 LOADNIL                          R117
      824 SETTABLEKS                       R117 R116 K156 ["IXP"]
      826 GETTABLEKS                       R117 R103 K157 ["Localization"]
      828 SETTABLEKS                       R117 R116 K157 ["Localization"]
      830 GETTABLEKS                       R117 R103 K158 ["Stylizer"]
      832 SETTABLEKS                       R117 R116 K158 ["Stylizer"]
      834 MOVE                             R118 R112
      835 CALL                             R118 0 1
      836 JUMPIFNOT                        R118 ; [+3]
      837 GETTABLEKS                       R117 R103 K159 ["Plugin"]
      839 JUMP                             ; [+1]
      840 LOADNIL                          R117
      841 SETTABLEKS                       R117 R116 K159 ["Plugin"]
      843 SETTABLEKS                       R98 R116 K160 ["Network"]
      845 SETTABLEKS                       R99 R116 K161 ["PublishService"]
      847 MOVE                             R118 R13
      848 CALL                             R118 0 1
      849 JUMPIFNOT                        R118 ; [+2]
      850 MOVE                             R117 R100
      851 JUMP                             ; [+1]
      852 LOADNIL                          R117
      853 SETTABLEKS                       R117 R116 K162 ["PluginGuiService"]
      855 MOVE                             R118 R13
      856 CALL                             R118 0 1
      857 JUMPIFNOT                        R118 ; [+2]
      858 MOVE                             R117 R101
      859 JUMP                             ; [+1]
      860 LOADNIL                          R117
      861 SETTABLEKS                       R117 R116 K163 ["ContentProvider"]
      863 CALL                             R115 1 1
      864 MOVE                             R116 R107
      865 CALL                             R115 1 1
      866 MOVE                             R107 R115
      867 DUPCLOSURE                       R115 K165 [PROTO_86]
      868 CAPTURE                          VAL R56
      869 CAPTURE                          VAL R4
      870 CAPTURE                          VAL R5
      871 CAPTURE                          VAL R3
      872 CAPTURE                          VAL R46
      873 CAPTURE                          VAL R110
      874 CAPTURE                          VAL R13
      875 DUPCLOSURE                       R116 K166 [PROTO_123]
      876 CAPTURE                          VAL R62
      877 CAPTURE                          VAL R75
      878 CAPTURE                          VAL R83
      879 CAPTURE                          VAL R53
      880 CAPTURE                          VAL R91
      881 CAPTURE                          VAL R19
      882 CAPTURE                          VAL R60
      883 CAPTURE                          VAL R61
      884 CAPTURE                          VAL R65
      885 CAPTURE                          VAL R66
      886 CAPTURE                          VAL R8
      887 CAPTURE                          VAL R63
      888 CAPTURE                          VAL R64
      889 CAPTURE                          VAL R88
      890 CAPTURE                          VAL R87
      891 CAPTURE                          VAL R39
      892 CAPTURE                          VAL R67
      893 CAPTURE                          VAL R70
      894 CAPTURE                          VAL R76
      895 CAPTURE                          VAL R43
      896 CAPTURE                          VAL R82
      897 CAPTURE                          VAL R77
      898 CAPTURE                          VAL R71
      899 CAPTURE                          VAL R89
      900 CAPTURE                          VAL R72
      901 CAPTURE                          VAL R73
      902 CAPTURE                          VAL R74
      903 CAPTURE                          VAL R93
      904 CAPTURE                          VAL R94
      905 CAPTURE                          VAL R95
      906 CAPTURE                          VAL R78
      907 CAPTURE                          VAL R79
      908 CAPTURE                          VAL R90
      909 CAPTURE                          VAL R80
      910 CAPTURE                          VAL R81
      911 CAPTURE                          VAL R84
      912 CAPTURE                          VAL R10
      913 CAPTURE                          VAL R85
      914 CAPTURE                          VAL R92
      915 CAPTURE                          VAL R13
      916 CAPTURE                          VAL R96
      917 CAPTURE                          VAL R68
      918 CAPTURE                          VAL R69
      919 GETTABLEKS                       R117 R18 K167 ["connect"]
      921 MOVE                             R118 R115
      922 MOVE                             R119 R116
      923 CALL                             R117 2 1
      924 MOVE                             R118 R107
      925 CALL                             R117 1 -1
      926 CLOSEUPVALS                      R29
      927 RETURN                           R117 -1
