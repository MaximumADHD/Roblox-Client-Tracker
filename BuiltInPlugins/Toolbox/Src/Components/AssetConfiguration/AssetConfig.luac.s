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
       64 JUMPIFNOTEQ                      R5 R6 ; [+153]
       66 GETUPVAL                         R6 8
       67 GETTABLEKS                       R5 R6 K16 ["isCatalogAsset"]
       69 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
       71 CALL                             R5 1 1
       72 JUMPIFNOT                        R5 ; [+59]
       73 GETTABLEKS                       R5 R1 K18 ["assetConfigData"]
       75 JUMPIFNOT                        R5 ; [+51]
       76 GETTABLEKS                       R6 R1 K18 ["assetConfigData"]
       78 GETTABLEKS                       R5 R6 K19 ["Status"]
       80 JUMPIFNOT                        R5 ; [+46]
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
      106 GETUPVAL                         R15 9
      107 CALL                             R15 0 1
      108 JUMPIFNOT                        R15 ; [+2]
      109 LOADNIL                          R14
      110 JUMP                             ; [+7]
      111 GETTABLEKS                       R15 R1 K18 ["assetConfigData"]
      113 GETTABLEKS                       R14 R15 K30 ["ItemTags"]
      115 JUMPIF                           R14 ; [+2]
      116 NEWTABLE                         R14 0 0
      118 GETUPVAL                         R16 9
      119 CALL                             R16 0 1
      120 JUMPIFNOT                        R16 ; [+2]
      121 LOADNIL                          R15
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R15 R2 K31 ["tags"]
      125 CALL                             R5 10 0
      126 RETURN                           R0 0
      127 GETIMPORT                        R5 K33 [warn]
      129 LOADK                            R6 K34 ["Could not configure sales, missing Asset Status!"]
      130 CALL                             R5 1 0
      131 RETURN                           R0 0
      132 GETUPVAL                         R6 8
      133 GETTABLEKS                       R5 R6 K35 ["isMarketplaceAsset"]
      135 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      137 CALL                             R5 1 1
      138 JUMPIFNOT                        R5 ; [+521]
      139 GETTABLEKS                       R5 R2 K36 ["copyOn"]
      141 GETTABLEKS                       R6 R2 K37 ["copyChanged"]
      143 JUMPIF                           R6 ; [+1]
      144 LOADNIL                          R5
      145 GETTABLEKS                       R6 R1 K38 ["configureMarketplaceItem"]
      147 DUPTABLE                         R7 K47 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      148 GETTABLEKS                       R9 R1 K21 ["Network"]
      150 GETTABLEKS                       R8 R9 K22 ["networkInterface"]
      152 SETTABLEKS                       R8 R7 K22 ["networkInterface"]
      154 GETTABLEKS                       R8 R2 K23 ["assetId"]
      156 SETTABLEKS                       R8 R7 K23 ["assetId"]
      158 GETTABLEKS                       R8 R2 K39 ["assetMediaUpdateData"]
      160 SETTABLEKS                       R8 R7 K39 ["assetMediaUpdateData"]
      162 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      164 SETTABLEKS                       R8 R7 K17 ["assetTypeEnum"]
      166 GETTABLEKS                       R8 R2 K24 ["name"]
      168 SETTABLEKS                       R8 R7 K24 ["name"]
      170 GETTABLEKS                       R9 R2 K26 ["description"]
      172 ORK                              R8 R9 K25 [""]
      173 SETTABLEKS                       R8 R7 K26 ["description"]
      175 GETTABLEKS                       R8 R2 K40 ["commentOn"]
      177 SETTABLEKS                       R8 R7 K40 ["commentOn"]
      179 SETTABLEKS                       R5 R7 K36 ["copyOn"]
      181 GETTABLEKS                       R8 R2 K27 ["status"]
      183 SETTABLEKS                       R8 R7 K41 ["saleStatus"]
      185 GETTABLEKS                       R9 R1 K18 ["assetConfigData"]
      187 GETTABLEKS                       R8 R9 K28 ["Price"]
      189 SETTABLEKS                       R8 R7 K42 ["fromPrice"]
      191 GETTABLEKS                       R8 R2 K29 ["price"]
      193 SETTABLEKS                       R8 R7 K29 ["price"]
      195 GETTABLEKS                       R8 R2 K43 ["iconFile"]
      197 SETTABLEKS                       R8 R7 K43 ["iconFile"]
      199 GETTABLEKS                       R8 R2 K44 ["isAssetPublic"]
      201 SETTABLEKS                       R8 R7 K44 ["isAssetPublic"]
      203 SETTABLEKS                       R4 R7 K45 ["isConvertMarketplaceModelsToPackageEnabled"]
      205 GETTABLEKS                       R9 R1 K48 ["fiatProduct"]
      207 JUMPIFNOT                        R9 ; [+5]
      208 GETTABLEKS                       R9 R1 K48 ["fiatProduct"]
      210 GETTABLEKS                       R8 R9 K46 ["basePrice"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R8
      214 SETTABLEKS                       R8 R7 K46 ["basePrice"]
      216 CALL                             R6 1 0
      217 RETURN                           R0 0
      218 GETUPVAL                         R7 5
      219 GETTABLEKS                       R6 R7 K8 ["FLOW_TYPE"]
      221 GETTABLEKS                       R5 R6 K49 ["UPLOAD_FLOW"]
      223 GETTABLEKS                       R6 R1 K10 ["screenFlowType"]
      225 JUMPIFNOTEQ                      R5 R6 ; [+434]
      227 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      229 GETIMPORT                        R6 K53 [Enum.AssetType.Animation]
      231 JUMPIFEQ                         R5 R6 ; [+10]
      233 GETUPVAL                         R5 10
      234 CALL                             R5 0 1
      235 JUMPIFNOT                        R5 ; [+76]
      236 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      238 GETIMPORT                        R6 K55 [Enum.AssetType.EmoteAnimation]
      240 JUMPIFNOTEQ                      R5 R6 ; [+71]
      242 GETUPVAL                         R5 11
      243 GETTABLEKS                       R7 R1 K56 ["currentTab"]
      245 NAMECALL                         R5 R5 K57 ["isOverride"]
      247 CALL                             R5 2 1
      248 JUMPIFNOT                        R5 ; [+12]
      249 GETTABLEKS                       R5 R1 K58 ["overrideAnimationAsset"]
      251 GETTABLEKS                       R7 R1 K21 ["Network"]
      253 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      255 GETTABLEKS                       R7 R2 K59 ["overrideAssetId"]
      257 GETTABLEKS                       R8 R1 K60 ["instances"]
      259 CALL                             R5 3 0
      260 RETURN                           R0 0
      261 GETTABLEKS                       R5 R1 K61 ["uploadAnimationAsset"]
      263 DUPTABLE                         R6 K65 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      264 GETTABLEKS                       R8 R1 K21 ["Network"]
      266 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      268 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      270 LOADN                            R7 0
      271 SETTABLEKS                       R7 R6 K23 ["assetId"]
      273 GETTABLEKS                       R7 R2 K24 ["name"]
      275 SETTABLEKS                       R7 R6 K24 ["name"]
      277 GETTABLEKS                       R8 R2 K26 ["description"]
      279 ORK                              R7 R8 K25 [""]
      280 SETTABLEKS                       R7 R6 K26 ["description"]
      282 GETUPVAL                         R7 12
      283 CALL                             R7 0 1
      284 SETTABLEKS                       R7 R6 K62 ["userId"]
      286 SETTABLEKS                       R3 R6 K3 ["groupId"]
      288 GETUPVAL                         R8 10
      289 CALL                             R8 0 1
      290 JUMPIFNOT                        R8 ; [+3]
      291 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R7
      295 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      297 GETUPVAL                         R8 10
      298 CALL                             R8 0 1
      299 JUMPIFNOT                        R8 ; [+3]
      300 GETTABLEKS                       R7 R1 K66 ["uploadFee"]
      302 JUMP                             ; [+1]
      303 LOADNIL                          R7
      304 SETTABLEKS                       R7 R6 K63 ["expectedPrice"]
      306 GETTABLEKS                       R7 R1 K60 ["instances"]
      308 SETTABLEKS                       R7 R6 K64 ["instance"]
      310 CALL                             R5 1 0
      311 RETURN                           R0 0
      312 GETUPVAL                         R6 8
      313 GETTABLEKS                       R5 R6 K16 ["isCatalogAsset"]
      315 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      317 CALL                             R5 1 1
      318 JUMPIFNOT                        R5 ; [+154]
      319 GETUPVAL                         R5 13
      320 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      322 GETTABLEKS                       R8 R2 K67 ["dataSharingEnabled"]
      324 GETTABLEKS                       R9 R2 K68 ["dataSharingToggled"]
      326 NAMECALL                         R5 R5 K69 ["getDataSharingLicenseTypes"]
      328 CALL                             R5 4 1
      329 GETTABLEKS                       R6 R1 K70 ["isUploadFeeEnabled"]
      331 JUMPIFNOT                        R6 ; [+72]
      332 GETTABLEKS                       R6 R1 K71 ["uploadCatalogItemWithFee"]
      334 GETTABLEKS                       R8 R1 K21 ["Network"]
      336 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      338 GETUPVAL                         R10 0
      339 GETTABLEKS                       R9 R10 K2 ["state"]
      341 GETTABLEKS                       R8 R9 K24 ["name"]
      343 GETTABLEKS                       R10 R1 K72 ["allowedAssetTypesForUpload"]
      345 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      347 MOVE                             R12 R10
      348 JUMPIFNOT                        R12 ; [+5]
      349 MOVE                             R12 R11
      350 JUMPIFNOT                        R12 ; [+3]
      351 GETTABLEKS                       R13 R11 K73 ["Name"]
      353 GETTABLE                         R12 R10 R13
      354 MOVE                             R13 R12
      355 JUMPIFNOT                        R13 ; [+2]
      356 GETTABLEKS                       R13 R12 K74 ["allowedFileExtensions"]
      358 MOVE                             R14 R13
      359 JUMPIFNOT                        R14 ; [+6]
      360 LOADB                            R14 0
      361 LENGTH                           R15 R13
      362 LOADN                            R16 0
      363 JUMPIFNOTLT                      R16 R15 ; [+2]
      365 GETTABLEN                        R14 R13 1
      366 JUMPIFNOT                        R14 ; [+8]
      367 GETIMPORT                        R15 K77 [string.gsub]
      369 MOVE                             R16 R14
      370 LOADK                            R17 K78 ["^%."]
      371 LOADK                            R18 K25 [""]
      372 CALL                             R15 3 1
      373 MOVE                             R9 R15
      374 JUMPIF                           R9 ; [+1]
      375 LOADK                            R9 K79 ["rbxm"]
      376 GETUPVAL                         R13 0
      377 GETTABLEKS                       R12 R13 K2 ["state"]
      379 GETTABLEKS                       R11 R12 K26 ["description"]
      381 ORK                              R10 R11 K25 [""]
      382 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      384 GETTABLEKS                       R12 R1 K60 ["instances"]
      386 GETUPVAL                         R14 9
      387 CALL                             R14 0 1
      388 JUMPIFNOT                        R14 ; [+2]
      389 LOADNIL                          R13
      390 JUMP                             ; [+5]
      391 GETUPVAL                         R15 0
      392 GETTABLEKS                       R14 R15 K2 ["state"]
      394 GETTABLEKS                       R13 R14 K31 ["tags"]
      396 MOVE                             R14 R3
      397 MOVE                             R15 R5
      398 GETTABLEKS                       R16 R1 K80 ["Localization"]
      400 GETTABLEKS                       R17 R1 K66 ["uploadFee"]
      402 CALL                             R6 11 0
      403 RETURN                           R0 0
      404 GETTABLEKS                       R6 R1 K81 ["uploadCatalogItem"]
      406 GETTABLEKS                       R8 R1 K21 ["Network"]
      408 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      410 GETUPVAL                         R10 0
      411 GETTABLEKS                       R9 R10 K2 ["state"]
      413 GETTABLEKS                       R8 R9 K24 ["name"]
      415 GETTABLEKS                       R10 R1 K72 ["allowedAssetTypesForUpload"]
      417 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      419 MOVE                             R12 R10
      420 JUMPIFNOT                        R12 ; [+5]
      421 MOVE                             R12 R11
      422 JUMPIFNOT                        R12 ; [+3]
      423 GETTABLEKS                       R13 R11 K73 ["Name"]
      425 GETTABLE                         R12 R10 R13
      426 MOVE                             R13 R12
      427 JUMPIFNOT                        R13 ; [+2]
      428 GETTABLEKS                       R13 R12 K74 ["allowedFileExtensions"]
      430 MOVE                             R14 R13
      431 JUMPIFNOT                        R14 ; [+6]
      432 LOADB                            R14 0
      433 LENGTH                           R15 R13
      434 LOADN                            R16 0
      435 JUMPIFNOTLT                      R16 R15 ; [+2]
      437 GETTABLEN                        R14 R13 1
      438 JUMPIFNOT                        R14 ; [+8]
      439 GETIMPORT                        R15 K77 [string.gsub]
      441 MOVE                             R16 R14
      442 LOADK                            R17 K78 ["^%."]
      443 LOADK                            R18 K25 [""]
      444 CALL                             R15 3 1
      445 MOVE                             R9 R15
      446 JUMPIF                           R9 ; [+1]
      447 LOADK                            R9 K79 ["rbxm"]
      448 GETUPVAL                         R13 0
      449 GETTABLEKS                       R12 R13 K2 ["state"]
      451 GETTABLEKS                       R11 R12 K26 ["description"]
      453 ORK                              R10 R11 K25 [""]
      454 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      456 GETTABLEKS                       R12 R1 K60 ["instances"]
      458 GETUPVAL                         R14 9
      459 CALL                             R14 0 1
      460 JUMPIFNOT                        R14 ; [+2]
      461 LOADNIL                          R13
      462 JUMP                             ; [+5]
      463 GETUPVAL                         R15 0
      464 GETTABLEKS                       R14 R15 K2 ["state"]
      466 GETTABLEKS                       R13 R14 K31 ["tags"]
      468 MOVE                             R14 R5
      469 GETTABLEKS                       R15 R1 K80 ["Localization"]
      471 CALL                             R6 9 0
      472 RETURN                           R0 0
      473 GETUPVAL                         R6 8
      474 GETTABLEKS                       R5 R6 K82 ["isUGCBundleType"]
      476 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      478 CALL                             R5 1 1
      479 JUMPIFNOT                        R5 ; [+63]
      480 LOADNIL                          R5
      481 GETTABLEKS                       R6 R2 K67 ["dataSharingEnabled"]
      483 JUMPIFNOT                        R6 ; [+16]
      484 GETTABLEKS                       R6 R2 K68 ["dataSharingToggled"]
      486 JUMPIFNOT                        R6 ; [+11]
      487 NEWTABLE                         R6 0 1
      489 GETUPVAL                         R9 14
      490 GETTABLEKS                       R8 R9 K83 ["DataSharingLicenseTypes"]
      492 GETTABLEKS                       R7 R8 K84 ["RobloxGlobal"]
      494 SETLIST                          R6 R7 1 [1]
      496 MOVE                             R5 R6
      497 JUMP                             ; [+2]
      498 NEWTABLE                         R5 0 0
      500 GETTABLEKS                       R6 R1 K85 ["uploadUGCBundleWithFee"]
      502 GETTABLEKS                       R8 R1 K21 ["Network"]
      504 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      506 GETTABLEKS                       R9 R1 K60 ["instances"]
      508 GETTABLEN                        R8 R9 1
      509 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      511 GETTABLEKS                       R10 R2 K24 ["name"]
      513 GETTABLEKS                       R12 R2 K26 ["description"]
      515 ORK                              R11 R12 K25 [""]
      516 GETTABLEKS                       R12 R1 K86 ["allowedBundleTypeSettings"]
      518 GETTABLEKS                       R13 R1 K80 ["Localization"]
      520 GETTABLEKS                       R14 R1 K66 ["uploadFee"]
      522 MOVE                             R15 R5
      523 GETUPVAL                         R17 15
      524 CALL                             R17 0 1
      525 JUMPIFNOT                        R17 ; [+5]
      526 GETTABLEKS                       R17 R1 K87 ["PublishService"]
      528 GETTABLEKS                       R16 R17 K88 ["publishService"]
      530 JUMP                             ; [+1]
      531 LOADNIL                          R16
      532 GETUPVAL                         R18 15
      533 CALL                             R18 0 1
      534 JUMPIFNOT                        R18 ; [+5]
      535 GETTABLEKS                       R18 R1 K89 ["groupBundlesUploadEnabledForUser"]
      537 JUMPIFNOT                        R18 ; [+2]
      538 MOVE                             R17 R3
      539 JUMP                             ; [+1]
      540 LOADNIL                          R17
      541 CALL                             R6 11 0
      542 RETURN                           R0 0
      543 GETUPVAL                         R6 8
      544 GETTABLEKS                       R5 R6 K35 ["isMarketplaceAsset"]
      546 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      548 CALL                             R5 1 1
      549 JUMPIFNOT                        R5 ; [+30]
      550 GETUPVAL                         R5 11
      551 GETTABLEKS                       R7 R1 K56 ["currentTab"]
      553 NAMECALL                         R5 R5 K57 ["isOverride"]
      555 CALL                             R5 2 1
      556 JUMPIFNOT                        R5 ; [+23]
      557 GETTABLEKS                       R5 R1 K90 ["overrideAsset"]
      559 GETTABLEKS                       R7 R1 K21 ["Network"]
      561 GETTABLEKS                       R6 R7 K22 ["networkInterface"]
      563 GETTABLEKS                       R7 R2 K59 ["overrideAssetId"]
      565 GETTABLEKS                       R9 R1 K17 ["assetTypeEnum"]
      567 GETTABLEKS                       R8 R9 K73 ["Name"]
      569 GETTABLEKS                       R9 R1 K60 ["instances"]
      571 GETUPVAL                         R11 16
      572 CALL                             R11 0 1
      573 JUMPIFNOT                        R11 ; [+3]
      574 GETTABLEKS                       R10 R1 K80 ["Localization"]
      576 JUMP                             ; [+1]
      577 LOADNIL                          R10
      578 CALL                             R5 5 0
      579 RETURN                           R0 0
      580 GETTABLEKS                       R5 R1 K91 ["uploadMarketplaceItem"]
      582 DUPTABLE                         R6 K93 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      583 GETTABLEKS                       R8 R1 K21 ["Network"]
      585 GETTABLEKS                       R7 R8 K22 ["networkInterface"]
      587 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      589 LOADN                            R7 0
      590 SETTABLEKS                       R7 R6 K23 ["assetId"]
      592 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      594 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      596 GETTABLEKS                       R7 R2 K24 ["name"]
      598 SETTABLEKS                       R7 R6 K24 ["name"]
      600 GETTABLEKS                       R8 R2 K26 ["description"]
      602 ORK                              R7 R8 K25 [""]
      603 SETTABLEKS                       R7 R6 K26 ["description"]
      605 GETTABLEKS                       R7 R2 K36 ["copyOn"]
      607 SETTABLEKS                       R7 R6 K36 ["copyOn"]
      609 GETTABLEKS                       R7 R2 K40 ["commentOn"]
      611 SETTABLEKS                       R7 R6 K40 ["commentOn"]
      613 SETTABLEKS                       R3 R6 K3 ["groupId"]
      615 GETTABLEKS                       R7 R1 K60 ["instances"]
      617 SETTABLEKS                       R7 R6 K60 ["instances"]
      619 JUMPIFNOT                        R4 ; [+2]
      620 LOADB                            R7 1
      621 JUMP                             ; [+1]
      622 LOADNIL                          R7
      623 SETTABLEKS                       R7 R6 K92 ["isMarketplaceModelsAsPackagesEnabled"]
      625 GETTABLEKS                       R7 R2 K27 ["status"]
      627 SETTABLEKS                       R7 R6 K41 ["saleStatus"]
      629 GETTABLEKS                       R7 R2 K29 ["price"]
      631 SETTABLEKS                       R7 R6 K29 ["price"]
      633 GETTABLEKS                       R7 R2 K43 ["iconFile"]
      635 SETTABLEKS                       R7 R6 K43 ["iconFile"]
      637 GETTABLEKS                       R7 R2 K39 ["assetMediaUpdateData"]
      639 SETTABLEKS                       R7 R6 K39 ["assetMediaUpdateData"]
      641 GETTABLEKS                       R8 R1 K48 ["fiatProduct"]
      643 JUMPIFNOT                        R8 ; [+5]
      644 GETTABLEKS                       R8 R1 K48 ["fiatProduct"]
      646 GETTABLEKS                       R7 R8 K46 ["basePrice"]
      648 JUMP                             ; [+1]
      649 LOADNIL                          R7
      650 SETTABLEKS                       R7 R6 K46 ["basePrice"]
      652 GETUPVAL                         R8 16
      653 CALL                             R8 0 1
      654 JUMPIFNOT                        R8 ; [+3]
      655 GETTABLEKS                       R7 R1 K80 ["Localization"]
      657 JUMP                             ; [+1]
      658 LOADNIL                          R7
      659 CALL                             R5 2 0
      660 RETURN                           R0 0

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
       12 SETTABLEKS                       R3 R2 K3 ["tags"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["owner"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["categoryType"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["canUploadWithUgcRestrictions"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K7 ["canUploadWithUgcRestrictionsDenyReason"]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K8 ["allowCopy"]
       29 LOADB                            R3 0
       30 SETTABLEKS                       R3 R2 K9 ["copyOn"]
       32 LOADB                            R3 0
       33 SETTABLEKS                       R3 R2 K10 ["copyChanged"]
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K11 ["allowComment"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K12 ["commentOn"]
       41 LOADNIL                          R3
       42 SETTABLEKS                       R3 R2 K13 ["canBePackage"]
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R2 K14 ["isPackageAsset"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K15 ["price"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K16 ["status"]
       53 LOADB                            R3 0
       54 SETTABLEKS                       R3 R2 K17 ["isAssetPublic"]
       56 LOADNIL                          R3
       57 SETTABLEKS                       R3 R2 K18 ["assetMediaUpdateData"]
       59 LOADB                            R3 0
       60 SETTABLEKS                       R3 R2 K19 ["isShowChangeDiscardMessageBox"]
       62 LOADB                            R3 0
       63 SETTABLEKS                       R3 R2 K20 ["isPublishAssetsDialogEnabled"]
       65 LOADB                            R3 0
       66 SETTABLEKS                       R3 R2 K21 ["isAssetTypeSelectionAllowed"]
       68 GETUPVAL                         R4 0
       69 CALL                             R4 0 1
       70 JUMPIFNOT                        R4 ; [+2]
       71 LOADNIL                          R3
       72 JUMP                             ; [+1]
       73 LOADB                            R3 0
       74 SETTABLEKS                       R3 R2 K22 ["isShowRobuxSpendMessageBox"]
       76 NEWTABLE                         R3 0 0
       78 SETTABLEKS                       R3 R2 K23 ["descendantIds"]
       80 LOADNIL                          R3
       81 SETTABLEKS                       R3 R2 K24 ["overrideAssetId"]
       83 LOADNIL                          R3
       84 SETTABLEKS                       R3 R2 K25 ["groupId"]
       86 LOADNIL                          R3
       87 SETTABLEKS                       R3 R2 K26 ["iconFile"]
       89 LOADB                            R3 0
       90 SETTABLEKS                       R3 R2 K27 ["dispatchGetFunction"]
       92 LOADB                            R3 0
       93 SETTABLEKS                       R3 R2 K28 ["isConfirmationDialogEnabled"]
       95 LOADB                            R3 0
       96 SETTABLEKS                       R3 R2 K29 ["confirmationDialogKey"]
       98 NEWTABLE                         R3 0 0
      100 SETTABLEKS                       R3 R2 K30 ["versionsCurrentItem"]
      102 NEWTABLE                         R3 0 0
      104 SETTABLEKS                       R3 R2 K31 ["versionsRootItems"]
      106 LOADN                            R3 255
      107 SETTABLEKS                       R3 R2 K32 ["versionsOpenInputKey"]
      109 LOADK                            R3 K33 [""]
      110 SETTABLEKS                       R3 R2 K34 ["versionsPreviousInput"]
      112 LOADN                            R3 1
      113 SETTABLEKS                       R3 R2 K35 ["versionsPageIndex"]
      115 LOADN                            R5 1
      116 GETUPVAL                         R7 1
      117 GETTABLEKS                       R6 R7 K36 ["VERSIONS_ROWS_PER_PAGE"]
      119 NAMECALL                         R3 R0 K37 ["versionsGetPageRootItems"]
      121 CALL                             R3 3 1
      122 SETTABLEKS                       R3 R2 K38 ["versionsPageRootItems"]
      124 NEWTABLE                         R3 0 0
      126 SETTABLEKS                       R3 R2 K39 ["versionDescriptionErrors"]
      128 LOADB                            R3 0
      129 SETTABLEKS                       R3 R2 K40 ["dataSharingEnabled"]
      131 LOADB                            R3 0
      132 SETTABLEKS                       R3 R2 K41 ["dataSharingToggled"]
      134 GETUPVAL                         R4 2
      135 CALL                             R4 0 1
      136 JUMPIFNOT                        R4 ; [+12]
      137 GETUPVAL                         R4 3
      138 GETTABLEKS                       R3 R4 K42 ["getThumbnailSkinColor"]
      140 GETTABLEKS                       R5 R0 K43 ["props"]
      142 GETTABLEKS                       R4 R5 K44 ["Plugin"]
      144 NAMECALL                         R4 R4 K45 ["get"]
      146 CALL                             R4 1 -1
      147 CALL                             R3 -1 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R3
      150 SETTABLEKS                       R3 R2 K46 ["selectedColor"]
      152 LOADB                            R3 0
      153 SETTABLEKS                       R3 R2 K47 ["showColorPickerRequiredError"]
      155 SETTABLEKS                       R2 R0 K48 ["state"]
      157 GETTABLEKS                       R2 R0 K48 ["state"]
      159 GETUPVAL                         R4 3
      160 GETTABLEKS                       R3 R4 K49 ["hasAllowedAssetTypesForRelease"]
      162 GETTABLEKS                       R5 R0 K43 ["props"]
      164 GETTABLEKS                       R4 R5 K50 ["allowedAssetTypesForRelease"]
      166 CALL                             R3 1 1
      167 JUMPIFNOT                        R3 ; [+9]
      168 GETUPVAL                         R5 3
      169 GETTABLEKS                       R4 R5 K51 ["isBuyableMarketplaceAsset"]
      171 GETTABLEKS                       R6 R0 K43 ["props"]
      173 GETTABLEKS                       R5 R6 K52 ["assetTypeEnum"]
      175 CALL                             R4 1 1
      176 NOT                              R3 R4
      177 SETTABLEKS                       R3 R2 K21 ["isAssetTypeSelectionAllowed"]
      179 GETUPVAL                         R3 3
      180 GETTABLEKS                       R2 R3 K53 ["isMarketplaceAsset"]
      182 GETTABLEKS                       R3 R1 K52 ["assetTypeEnum"]
      184 CALL                             R2 1 1
      185 JUMPIFNOT                        R2 ; [+9]
      186 GETTABLEKS                       R2 R0 K48 ["state"]
      188 GETUPVAL                         R5 4
      189 GETTABLEKS                       R4 R5 K54 ["ASSET_STATUS"]
      191 GETTABLEKS                       R3 R4 K55 ["OffSale"]
      193 SETTABLEKS                       R3 R2 K16 ["status"]
      195 LOADNIL                          R2
      196 SETTABLEKS                       R2 R0 K56 ["nameString"]
      198 LOADNIL                          R2
      199 SETTABLEKS                       R2 R0 K57 ["descriptionString"]
      201 LOADB                            R2 0
      202 SETTABLEKS                       R2 R0 K58 ["init"]
      204 NEWCLOSURE                       R2 P0
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R2 R0 K59 ["onDialogAccepted"]
      208 NEWCLOSURE                       R2 P1
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R2 R0 K60 ["onDialogCanceled"]
      212 NEWCLOSURE                       R2 P2
      213 CAPTURE                          VAL R0
      214 SETTABLEKS                       R2 R0 K61 ["onAssetPublishDialogAccepted"]
      216 NEWCLOSURE                       R2 P3
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R2 R0 K62 ["onAssetPublishDialogCanceled"]
      220 GETUPVAL                         R3 0
      221 CALL                             R3 0 1
      222 JUMPIFNOT                        R3 ; [+2]
      223 LOADNIL                          R2
      224 JUMP                             ; [+2]
      225 NEWCLOSURE                       R2 P4
      226 CAPTURE                          VAL R0
      227 SETTABLEKS                       R2 R0 K63 ["onAssetPublishPayAndConfirmAccepted"]
      229 GETUPVAL                         R3 0
      230 CALL                             R3 0 1
      231 JUMPIFNOT                        R3 ; [+2]
      232 LOADNIL                          R2
      233 JUMP                             ; [+2]
      234 NEWCLOSURE                       R2 P5
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R2 R0 K64 ["onAssetPublishPayAndConfirmCanceled"]
      238 NEWCLOSURE                       R2 P6
      239 CAPTURE                          VAL R0
      240 SETTABLEKS                       R2 R0 K65 ["tryMakeAssetsPublic"]
      242 NEWCLOSURE                       R2 P7
      243 CAPTURE                          VAL R0
      244 CAPTURE                          UPVAL U3
      245 CAPTURE                          UPVAL U5
      246 CAPTURE                          UPVAL U4
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          UPVAL U0
      249 SETTABLEKS                       R2 R0 K66 ["tryPublishWithConfirmDialog"]
      251 NEWCLOSURE                       R2 P8
      252 CAPTURE                          VAL R0
      253 CAPTURE                          UPVAL U7
      254 CAPTURE                          UPVAL U8
      255 CAPTURE                          UPVAL U9
      256 CAPTURE                          UPVAL U10
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          UPVAL U11
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          UPVAL U13
      262 CAPTURE                          UPVAL U14
      263 CAPTURE                          UPVAL U15
      264 CAPTURE                          UPVAL U16
      265 CAPTURE                          UPVAL U1
      266 CAPTURE                          UPVAL U17
      267 CAPTURE                          UPVAL U18
      268 CAPTURE                          VAL R1
      269 CAPTURE                          UPVAL U19
      270 SETTABLEKS                       R2 R0 K67 ["tryPublish"]
      272 NEWCLOSURE                       R2 P9
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R1
      275 CAPTURE                          UPVAL U4
      276 SETTABLEKS                       R2 R0 K68 ["tryCancel"]
      278 NEWCLOSURE                       R2 P10
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R2 R0 K69 ["tryCancelNoYield"]
      282 NEWCLOSURE                       R2 P11
      283 CAPTURE                          VAL R0
      284 SETTABLEKS                       R2 R0 K70 ["tryCancelWithYield"]
      286 NEWCLOSURE                       R2 P12
      287 CAPTURE                          VAL R0
      288 SETTABLEKS                       R2 R0 K71 ["onMessageBoxClosed"]
      290 NEWCLOSURE                       R2 P13
      291 CAPTURE                          UPVAL U20
      292 CAPTURE                          VAL R0
      293 CAPTURE                          UPVAL U21
      294 SETTABLEKS                       R2 R0 K72 ["tryCloseAssetConfig"]
      296 NEWCLOSURE                       R2 P14
      297 CAPTURE                          VAL R0
      298 NEWCLOSURE                       R3 P15
      299 CAPTURE                          VAL R0
      300 SETTABLEKS                       R3 R0 K73 ["onNameChange"]
      302 NEWCLOSURE                       R3 P16
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R3 R0 K74 ["onDescChange"]
      306 NEWCLOSURE                       R3 P17
      307 CAPTURE                          VAL R0
      308 SETTABLEKS                       R3 R0 K75 ["onStatusChange"]
      310 NEWCLOSURE                       R3 P18
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R3 R0 K76 ["onPriceChange"]
      314 GETUPVAL                         R3 22
      315 CALL                             R3 0 1
      316 JUMPIFNOT                        R3 ; [+10]
      317 NEWCLOSURE                       R3 P19
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R3 R0 K77 ["onCategoryChange"]
      321 NEWCLOSURE                       R3 P20
      322 CAPTURE                          UPVAL U3
      323 CAPTURE                          VAL R0
      324 CAPTURE                          UPVAL U23
      325 SETTABLEKS                       R3 R0 K78 ["getUploadPermissionStatus"]
      327 NEWCLOSURE                       R3 P21
      328 CAPTURE                          VAL R0
      329 CAPTURE                          UPVAL U24
      330 CAPTURE                          UPVAL U7
      331 CAPTURE                          UPVAL U22
      332 SETTABLEKS                       R3 R0 K79 ["onAccessChange"]
      334 NEWCLOSURE                       R3 P22
      335 CAPTURE                          VAL R0
      336 SETTABLEKS                       R3 R0 K80 ["onDataConsentToggleClick"]
      338 NEWCLOSURE                       R3 P23
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R3 R0 K81 ["toggleCopy"]
      342 NEWCLOSURE                       R3 P24
      343 CAPTURE                          VAL R0
      344 SETTABLEKS                       R3 R0 K82 ["toggleComment"]
      346 NEWCLOSURE                       R3 P25
      347 CAPTURE                          VAL R0
      348 SETTABLEKS                       R3 R0 K83 ["toggleDeleteLocal"]
      350 GETUPVAL                         R4 2
      351 CALL                             R4 0 1
      352 JUMPIFNOT                        R4 ; [+4]
      353 NEWCLOSURE                       R3 P26
      354 CAPTURE                          VAL R0
      355 CAPTURE                          UPVAL U3
      356 JUMP                             ; [+1]
      357 LOADNIL                          R3
      358 SETTABLEKS                       R3 R0 K84 ["onSelectedColorChange"]
      360 NEWCLOSURE                       R3 P27
      361 CAPTURE                          VAL R0
      362 CAPTURE                          UPVAL U20
      363 CAPTURE                          UPVAL U21
      364 SETTABLEKS                       R3 R0 K85 ["versionsOnDescClicked"]
      366 NEWCLOSURE                       R3 P28
      367 CAPTURE                          VAL R0
      368 CAPTURE                          UPVAL U25
      369 CAPTURE                          UPVAL U26
      370 SETTABLEKS                       R3 R0 K86 ["versionsSaveInput"]
      372 NEWCLOSURE                       R3 P29
      373 CAPTURE                          VAL R0
      374 CAPTURE                          UPVAL U1
      375 SETTABLEKS                       R3 R0 K87 ["versionsSetStates"]
      377 NEWCLOSURE                       R3 P30
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R3 R0 K88 ["versionsCloseInput"]
      381 NEWCLOSURE                       R3 P31
      382 CAPTURE                          VAL R0
      383 SETTABLEKS                       R3 R0 K89 ["setVersionError"]
      385 NEWCLOSURE                       R3 P32
      386 CAPTURE                          VAL R0
      387 SETTABLEKS                       R3 R0 K90 ["versionsSetPreviousInput"]
      389 NEWCLOSURE                       R3 P33
      390 CAPTURE                          VAL R0
      391 SETTABLEKS                       R3 R0 K91 ["versionsOnPageChange"]
      393 NEWCLOSURE                       R3 P34
      394 CAPTURE                          VAL R0
      395 CAPTURE                          VAL R1
      396 SETTABLEKS                       R3 R0 K92 ["onTabSelect"]
      398 NEWCLOSURE                       R3 P35
      399 CAPTURE                          VAL R0
      400 SETTABLEKS                       R3 R0 K93 ["onOverrideAssetSelected"]
      402 NEWCLOSURE                       R3 P36
      403 CAPTURE                          UPVAL U3
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R3 R0 K94 ["chooseThumbnail"]
      407 NEWCLOSURE                       R3 P37
      408 CAPTURE                          VAL R0
      409 SETTABLEKS                       R3 R0 K95 ["onSharingChanged"]
      411 NEWCLOSURE                       R3 P38
      412 CAPTURE                          VAL R0
      413 SETTABLEKS                       R3 R0 K96 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      415 NEWCLOSURE                       R3 P39
      416 CAPTURE                          VAL R0
      417 CAPTURE                          UPVAL U27
      418 SETTABLEKS                       R3 R0 K97 ["getPublishingRequirements"]
      420 NEWCLOSURE                       R3 P40
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R3 R0 K98 ["onAdditionalImagesChanged"]
      424 NEWCLOSURE                       R3 P41
      425 CAPTURE                          UPVAL U3
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R3 R0 K99 ["isValidCatalogAsset"]
      429 NEWCLOSURE                       R3 P42
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R3 R0 K100 ["validVersionDescriptions"]
      433 NEWCLOSURE                       R3 P43
      434 CAPTURE                          VAL R0
      435 CAPTURE                          UPVAL U1
      436 CAPTURE                          UPVAL U28
      437 SETTABLEKS                       R3 R0 K101 ["getMessageBoxProps"]
      439 RETURN                           R0 0

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
       35 JUMPIFNOT                        R1 ; [+314]
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
      108 JUMPIF                           R6 ; [+241]
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
      284 JUMPIFNOT                        R2 ; [+65]
      285 GETTABLEKS                       R8 R0 K0 ["props"]
      287 GETTABLEKS                       R7 R8 K11 ["assetTypeEnum"]
      289 GETIMPORT                        R8 K42 [Enum.AssetType.Model]
      291 JUMPIFNOTEQ                      R7 R8 ; [+58]
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
      310 JUMPIFNOT                        R18 ; [+29]
      311 GETIMPORT                        R18 K50 [string.gsub]
      313 GETTABLEKS                       R19 R17 K51 ["SoundId"]
      315 LOADK                            R20 K52 ["rbxassetid://"]
      316 LOADK                            R21 K28 [""]
      317 CALL                             R18 3 1
      318 GETUPVAL                         R19 2
      319 CALL                             R19 0 1
      320 JUMPIF                           R19 ; [+12]
      321 GETTABLEKS                       R20 R0 K0 ["props"]
      323 GETTABLEKS                       R19 R20 K53 ["dispatchGetAssetPermissionsRequest"]
      325 GETTABLEKS                       R22 R0 K0 ["props"]
      327 GETTABLEKS                       R21 R22 K13 ["Network"]
      329 GETTABLEKS                       R20 R21 K14 ["networkInterface"]
      331 MOVE                             R21 R18
      332 CALL                             R19 2 0
      333 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      335 MOVE                             R20 R6
      336 MOVE                             R21 R18
      337 GETIMPORT                        R19 K56 [table.insert]
      339 CALL                             R19 2 0
      340 FORGLOOP                         R13 2 ; [-35]
      342 FORGLOOP                         R7 2 ; [-45]
      344 DUPTABLE                         R9 K38 [{"descendantIds"}]
      345 SETTABLEKS                       R6 R9 K37 ["descendantIds"]
      347 NAMECALL                         R7 R0 K25 ["setState"]
      349 CALL                             R7 2 0
      350 RETURN                           R0 0

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
       23 GETUPVAL                         R11 0
       24 CALL                             R11 0 1
       25 JUMPIFNOT                        R11 ; [+2]
       26 LOADNIL                          R10
       27 JUMP                             ; [+5]
       28 GETTABLEKS                       R10 R2 K10 ["tags"]
       30 JUMPIF                           R10 ; [+2]
       31 NEWTABLE                         R10 0 0
       33 GETTABLEKS                       R12 R1 K11 ["screenFlowType"]
       35 GETUPVAL                         R15 1
       36 GETTABLEKS                       R14 R15 K12 ["FLOW_TYPE"]
       38 GETTABLEKS                       R13 R14 K13 ["UPLOAD_FLOW"]
       40 JUMPIFNOTEQ                      R12 R13 ; [+4]
       42 GETTABLEKS                       R11 R1 K14 ["owner"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R11 R2 K14 ["owner"]
       47 GETTABLEKS                       R12 R2 K15 ["allowCopy"]
       49 GETTABLEKS                       R13 R2 K16 ["copyOn"]
       51 GETTABLEKS                       R14 R2 K17 ["allowComment"]
       53 GETTABLEKS                       R15 R2 K18 ["commentOn"]
       55 GETTABLEKS                       R16 R1 K19 ["deleteLocal"]
       57 GETTABLEKS                       R17 R2 K20 ["status"]
       59 GETTABLEKS                       R18 R2 K21 ["isAssetPublic"]
       61 GETTABLEKS                       R19 R2 K22 ["publishingRestriction"]
       63 GETTABLEKS                       R21 R1 K23 ["networkErrorAction"]
       65 GETUPVAL                         R23 2
       66 GETTABLEKS                       R22 R23 K24 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       68 JUMPIFEQ                         R21 R22 ; [+2]
       70 LOADB                            R20 0 +1
       71 LOADB                            R20 1
       72 GETTABLEKS                       R22 R2 K25 ["isShowChangeDiscardMessageBox"]
       74 OR                               R21 R22 R20
       75 GETUPVAL                         R23 3
       76 CALL                             R23 0 1
       77 JUMPIFNOT                        R23 ; [+2]
       78 LOADNIL                          R22
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R22 R2 K26 ["isShowRobuxSpendMessageBox"]
       82 GETTABLEKS                       R23 R2 K27 ["iconFile"]
       84 GETTABLEKS                       R24 R2 K28 ["assetMediaUpdateData"]
       86 GETTABLEKS                       R25 R1 K29 ["assetTypeEnum"]
       88 GETTABLEKS                       R26 R1 K11 ["screenFlowType"]
       90 GETTABLEKS                       R27 R1 K30 ["changeTable"]
       92 JUMPIF                           R27 ; [+2]
       93 NEWTABLE                         R27 0 0
       95 GETTABLEKS                       R28 R1 K31 ["allowedAssetTypesForRelease"]
       97 GETTABLEKS                       R29 R1 K32 ["allowedAssetTypesForFree"]
       99 GETTABLEKS                       R30 R1 K33 ["allowedBundleTypeSettings"]
      101 MOVE                             R31 R17
      102 JUMPIF                           R31 ; [+5]
      103 GETUPVAL                         R33 1
      104 GETTABLEKS                       R32 R33 K34 ["ASSET_STATUS"]
      106 GETTABLEKS                       R31 R32 K35 ["Unknown"]
      108 GETTABLEKS                       R32 R2 K36 ["price"]
      110 GETUPVAL                         R34 4
      111 CALL                             R34 0 1
      112 JUMPIFNOT                        R34 ; [+9]
      113 GETUPVAL                         R35 5
      114 GETTABLEKS                       R34 R35 K37 ["isUGCBundleType"]
      116 MOVE                             R35 R25
      117 CALL                             R34 1 1
      118 JUMPIFNOT                        R34 ; [+3]
      119 GETTABLEKS                       R33 R1 K38 ["groupBundlesUploadEnabledForUser"]
      121 JUMP                             ; [+11]
      122 GETUPVAL                         R34 6
      123 GETTABLEKS                       R33 R34 K39 ["queryParam"]
      125 MOVE                             R34 R26
      126 MOVE                             R35 R25
      127 GETUPVAL                         R38 6
      128 GETTABLEKS                       R37 R38 K40 ["keys"]
      130 GETTABLEKS                       R36 R37 K41 ["SHOW_OWNERSHIP"]
      132 CALL                             R33 3 1
      133 GETUPVAL                         R35 6
      134 GETTABLEKS                       R34 R35 K39 ["queryParam"]
      136 MOVE                             R35 R26
      137 MOVE                             R36 R25
      138 GETUPVAL                         R39 6
      139 GETTABLEKS                       R38 R39 K40 ["keys"]
      141 GETTABLEKS                       R37 R38 K42 ["SHOW_COPY"]
      143 CALL                             R34 3 1
      144 GETTABLEKS                       R35 R1 K43 ["isPackageAsset"]
      146 JUMPIFNOT                        R35 ; [+1]
      147 LOADB                            R34 0
      148 GETTABLEKS                       R36 R0 K1 ["state"]
      150 GETTABLEKS                       R35 R36 K44 ["isAssetTypeSelectionAllowed"]
      152 JUMPIFNOT                        R35 ; [+13]
      153 GETTABLEKS                       R37 R0 K0 ["props"]
      155 GETTABLEKS                       R36 R37 K11 ["screenFlowType"]
      157 GETUPVAL                         R39 1
      158 GETTABLEKS                       R38 R39 K12 ["FLOW_TYPE"]
      160 GETTABLEKS                       R37 R38 K13 ["UPLOAD_FLOW"]
      162 JUMPIFEQ                         R36 R37 ; [+2]
      164 LOADB                            R35 0 +1
      165 LOADB                            R35 1
      166 GETUPVAL                         R37 6
      167 GETTABLEKS                       R36 R37 K39 ["queryParam"]
      169 MOVE                             R37 R26
      170 MOVE                             R38 R25
      171 GETUPVAL                         R41 6
      172 GETTABLEKS                       R40 R41 K40 ["keys"]
      174 GETTABLEKS                       R39 R40 K45 ["SHOW_COMMENT"]
      176 CALL                             R36 3 1
      177 GETUPVAL                         R38 6
      178 GETTABLEKS                       R37 R38 K39 ["queryParam"]
      180 MOVE                             R38 R26
      181 MOVE                             R39 R25
      182 GETUPVAL                         R42 6
      183 GETTABLEKS                       R41 R42 K40 ["keys"]
      185 GETTABLEKS                       R40 R41 K46 ["SHOW_ASSET_TYPE"]
      187 CALL                             R37 3 1
      188 GETUPVAL                         R39 5
      189 GETTABLEKS                       R38 R39 K47 ["getPreviewType"]
      191 MOVE                             R39 R25
      192 GETTABLEKS                       R40 R1 K48 ["instances"]
      194 CALL                             R38 2 1
      195 GETUPVAL                         R39 2
      196 MOVE                             R41 R26
      197 MOVE                             R42 R25
      198 GETTABLEKS                       R44 R0 K0 ["props"]
      200 GETTABLEKS                       R43 R44 K43 ["isPackageAsset"]
      202 MOVE                             R44 R11
      203 NAMECALL                         R39 R39 K49 ["getAssetconfigContent"]
      205 CALL                             R39 5 1
      206 NAMECALL                         R40 R0 K50 ["isLoading"]
      208 CALL                             R40 1 1
      209 GETUPVAL                         R42 7
      210 GETTABLEKS                       R41 R42 K51 ["checkCanSave"]
      212 MOVE                             R42 R27
      213 MOVE                             R43 R8
      214 MOVE                             R44 R9
      215 MOVE                             R45 R6
      216 MOVE                             R46 R26
      217 MOVE                             R47 R25
      218 MOVE                             R48 R24
      219 GETTABLEKS                       R49 R0 K52 ["isValidCatalogAsset"]
      221 CALL                             R49 0 1
      222 GETTABLEKS                       R50 R0 K53 ["validVersionDescriptions"]
      224 CALL                             R50 0 -1
      225 CALL                             R41 -1 1
      226 JUMPIFNOT                        R41 ; [+1]
      227 NOT                              R41 R40
      228 GETUPVAL                         R43 8
      229 CALL                             R43 0 1
      230 JUMPIFNOT                        R43 ; [+3]
      231 GETTABLEKS                       R42 R2 K54 ["canUploadWithUgcRestrictions"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R42
      235 GETUPVAL                         R44 8
      236 CALL                             R44 0 1
      237 JUMPIFNOT                        R44 ; [+3]
      238 GETTABLEKS                       R43 R2 K55 ["canUploadWithUgcRestrictionsDenyReason"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R43
      242 GETUPVAL                         R44 8
      243 CALL                             R44 0 1
      244 JUMPIFNOT                        R44 ; [+7]
      245 GETTABLEKS                       R44 R2 K56 ["categoryType"]
      247 JUMPIFNOTEQKS                    R44 K57 ["AvatarItem"] ; [+4]
      249 JUMPIFEQKNIL                     R42 ; [+2]
      251 AND                              R41 R41 R42
      252 GETUPVAL                         R44 3
      253 CALL                             R44 0 1
      254 JUMPIFNOT                        R44 ; [+7]
      255 MOVE                             R44 R41
      256 JUMPIFNOT                        R44 ; [+3]
      257 GETTABLEKS                       R45 R1 K58 ["isAvatarItemDialogFlowEnabled"]
      259 NOT                              R44 R45
      260 MOVE                             R41 R44
      261 JUMP                             ; [+9]
      262 GETUPVAL                         R44 9
      263 CALL                             R44 0 1
      264 JUMPIFNOT                        R44 ; [+6]
      265 MOVE                             R44 R41
      266 JUMPIFNOT                        R44 ; [+3]
      267 GETTABLEKS                       R45 R2 K26 ["isShowRobuxSpendMessageBox"]
      269 NOT                              R44 R45
      270 MOVE                             R41 R44
      271 GETUPVAL                         R44 10
      272 CALL                             R44 0 1
      273 JUMPIFNOT                        R44 ; [+11]
      274 GETUPVAL                         R45 5
      275 GETTABLEKS                       R44 R45 K59 ["isMakeupAsset"]
      277 MOVE                             R45 R25
      278 CALL                             R44 1 1
      279 JUMPIFNOT                        R44 ; [+5]
      280 GETTABLEKS                       R44 R2 K60 ["selectedColor"]
      282 JUMPIFNOTEQKNIL                  R44 ; [+2]
      284 LOADB                            R41 0
      285 GETUPVAL                         R46 11
      286 GETTABLEKS                       R45 R46 K62 ["SCROLLBAR_PADDING"]
      288 SUBRK                            R44 R61 K45 ["SHOW_COMMENT"]
      289 GETTABLEKS                       R46 R1 K29 ["assetTypeEnum"]
      291 GETIMPORT                        R47 K66 [Enum.AssetType.Audio]
      293 JUMPIFEQ                         R46 R47 ; [+2]
      295 LOADB                            R45 0 +1
      296 LOADB                            R45 1
      297 GETTABLEKS                       R47 R1 K29 ["assetTypeEnum"]
      299 GETIMPORT                        R48 K68 [Enum.AssetType.Video]
      301 JUMPIFEQ                         R47 R48 ; [+2]
      303 LOADB                            R46 0 +1
      304 LOADB                            R46 1
      305 GETTABLEKS                       R48 R1 K29 ["assetTypeEnum"]
      307 GETIMPORT                        R49 K70 [Enum.AssetType.Model]
      309 JUMPIFEQ                         R48 R49 ; [+2]
      311 LOADB                            R47 0 +1
      312 LOADB                            R47 1
      313 GETTABLEKS                       R49 R1 K29 ["assetTypeEnum"]
      315 GETIMPORT                        R50 K72 [Enum.AssetType.Plugin]
      317 JUMPIFEQ                         R49 R50 ; [+2]
      319 LOADB                            R48 0 +1
      320 LOADB                            R48 1
      321 LOADNIL                          R49
      322 LOADB                            R50 0
      323 GETTABLEKS                       R51 R1 K73 ["Localization"]
      325 LOADK                            R54 K74 ["General"]
      326 LOADK                            R55 K75 ["Proceed"]
      327 NAMECALL                         R52 R51 K76 ["getText"]
      329 CALL                             R52 3 1
      330 LOADK                            R55 K74 ["General"]
      331 LOADK                            R56 K77 ["GoBack"]
      332 NAMECALL                         R53 R51 K76 ["getText"]
      334 CALL                             R53 3 1
      335 LOADK                            R56 K78 ["AssetConfigSharing"]
      336 LOADK                            R57 K79 ["PublicConfirmationHeading"]
      337 NAMECALL                         R54 R51 K76 ["getText"]
      339 CALL                             R54 3 1
      340 LOADK                            R57 K78 ["AssetConfigSharing"]
      341 LOADK                            R58 K80 ["PublicConfirmationMessage"]
      342 NAMECALL                         R55 R51 K76 ["getText"]
      344 CALL                             R55 3 1
      345 LOADK                            R58 K78 ["AssetConfigSharing"]
      346 LOADK                            R59 K81 ["PublicConfirmationTitle"]
      347 NAMECALL                         R56 R51 K76 ["getText"]
      349 CALL                             R56 3 1
      350 GETTABLEKS                       R57 R2 K82 ["isConfirmationDialogEnabled"]
      352 GETTABLEKS                       R58 R2 K83 ["confirmationDialogKey"]
      354 LOADK                            R61 K84 ["AssetConfig"]
      355 LOADK                            R62 K85 ["PublishAssetDialogPublish"]
      356 NAMECALL                         R59 R51 K76 ["getText"]
      358 CALL                             R59 3 1
      359 LOADK                            R62 K74 ["General"]
      360 LOADK                            R63 K86 ["Cancel"]
      361 NAMECALL                         R60 R51 K76 ["getText"]
      363 CALL                             R60 3 1
      364 LOADK                            R63 K84 ["AssetConfig"]
      365 LOADK                            R64 K87 ["PublishAssetDialogDescription"]
      366 NAMECALL                         R61 R51 K76 ["getText"]
      368 CALL                             R61 3 1
      369 LOADK                            R64 K84 ["AssetConfig"]
      370 LOADK                            R65 K88 ["PublishAssetDialogHeading"]
      371 NAMECALL                         R62 R51 K76 ["getText"]
      373 CALL                             R62 3 1
      374 LOADK                            R65 K74 ["General"]
      375 LOADK                            R66 K89 ["RobloxStudio"]
      376 NAMECALL                         R63 R51 K76 ["getText"]
      378 CALL                             R63 3 1
      379 GETUPVAL                         R65 3
      380 CALL                             R65 0 1
      381 JUMPIFNOT                        R65 ; [+2]
      382 LOADNIL                          R64
      383 JUMP                             ; [+5]
      384 LOADK                            R66 K74 ["General"]
      385 LOADK                            R67 K89 ["RobloxStudio"]
      386 NAMECALL                         R64 R51 K76 ["getText"]
      388 CALL                             R64 3 1
      389 GETUPVAL                         R66 3
      390 CALL                             R66 0 1
      391 JUMPIFNOT                        R66 ; [+2]
      392 LOADNIL                          R65
      393 JUMP                             ; [+8]
      394 LOADK                            R67 K84 ["AssetConfig"]
      395 LOADK                            R68 K90 ["PayAndConfirmHeading"]
      396 DUPTABLE                         R69 K91 [{"name"}]
      397 SETTABLEKS                       R8 R69 K8 ["name"]
      399 NAMECALL                         R65 R51 K76 ["getText"]
      401 CALL                             R65 4 1
      402 GETTABLEKS                       R67 R1 K92 ["uploadFee"]
      404 JUMPIFNOT                        R67 ; [+3]
      405 GETTABLEKS                       R66 R1 K92 ["uploadFee"]
      407 JUMP                             ; [+1]
      408 LOADK                            R66 K7 [""]
      409 GETUPVAL                         R68 3
      410 CALL                             R68 0 1
      411 JUMPIFNOT                        R68 ; [+2]
      412 LOADNIL                          R67
      413 JUMP                             ; [+11]
      414 LOADK                            R69 K84 ["AssetConfig"]
      415 LOADK                            R70 K93 ["PayAndConfirmDescription"]
      416 DUPTABLE                         R71 K95 [{"amount"}]
      417 GETUPVAL                         R73 12
      418 MOVE                             R74 R66
      419 CONCAT                           R72 R73 R74
      420 SETTABLEKS                       R72 R71 K94 ["amount"]
      422 NAMECALL                         R67 R51 K76 ["getText"]
      424 CALL                             R67 4 1
      425 GETUPVAL                         R69 3
      426 CALL                             R69 0 1
      427 JUMPIFNOT                        R69 ; [+2]
      428 LOADNIL                          R68
      429 JUMP                             ; [+5]
      430 LOADK                            R70 K74 ["General"]
      431 LOADK                            R71 K96 ["PayAndSubmit"]
      432 NAMECALL                         R68 R51 K76 ["getText"]
      434 CALL                             R68 3 1
      435 GETTABLEKS                       R69 R2 K97 ["isPublishAssetsDialogEnabled"]
      437 JUMPIF                           R45 ; [+3]
      438 GETUPVAL                         R70 13
      439 JUMPIFNOT                        R70 ; [+3]
      440 JUMPIFNOT                        R46 ; [+2]
      441 NOT                              R49 R5
      442 JUMP                             ; [+2]
      443 JUMPIFNOT                        R47 ; [+1]
      444 LOADB                            R49 1
      445 JUMPIF                           R45 ; [+3]
      446 GETUPVAL                         R70 13
      447 JUMPIFNOT                        R70 ; [+2]
      448 JUMPIFNOT                        R46 ; [+1]
      449 LOADB                            R50 1
      450 JUMPIF                           R45 ; [+3]
      451 GETUPVAL                         R70 13
      452 JUMPIFNOT                        R70 ; [+2]
      453 JUMPIFNOT                        R46 ; [+1]
      454 MOVE                             R12 R18
      455 GETUPVAL                         R71 5
      456 GETTABLEKS                       R70 R71 K59 ["isMakeupAsset"]
      458 MOVE                             R71 R25
      459 CALL                             R70 1 1
      460 GETUPVAL                         R71 10
      461 CALL                             R71 0 1
      462 JUMPIFNOT                        R71 ; [+8]
      463 MOVE                             R71 R70
      464 JUMPIFNOT                        R71 ; [+6]
      465 GETTABLEKS                       R72 R2 K60 ["selectedColor"]
      467 JUMPIFEQKNIL                     R72 ; [+2]
      469 LOADB                            R71 0 +1
      470 LOADB                            R71 1
      471 GETUPVAL                         R73 14
      472 GETTABLEKS                       R72 R73 K98 ["createElement"]
      474 LOADK                            R73 K99 ["Frame"]
      475 DUPTABLE                         R74 K103 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      476 SETTABLEKS                       R4 R74 K3 ["Size"]
      478 LOADN                            R75 0
      479 SETTABLEKS                       R75 R74 K100 ["BackgroundTransparency"]
      481 GETTABLEKS                       R76 R3 K104 ["assetConfig"]
      483 GETTABLEKS                       R75 R76 K105 ["backgroundColor"]
      485 SETTABLEKS                       R75 R74 K101 ["BackgroundColor3"]
      487 LOADN                            R75 0
      488 SETTABLEKS                       R75 R74 K102 ["BorderSizePixel"]
      490 DUPTABLE                         R75 K113 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      491 GETUPVAL                         R77 14
      492 GETTABLEKS                       R76 R77 K98 ["createElement"]
      494 LOADK                            R77 K106 ["UIListLayout"]
      495 DUPTABLE                         R78 K119 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      496 GETIMPORT                        R79 K121 [Enum.FillDirection.Vertical]
      498 SETTABLEKS                       R79 R78 K114 ["FillDirection"]
      500 GETIMPORT                        R79 K123 [Enum.HorizontalAlignment.Left]
      502 SETTABLEKS                       R79 R78 K115 ["HorizontalAlignment"]
      504 GETIMPORT                        R79 K125 [Enum.VerticalAlignment.Bottom]
      506 SETTABLEKS                       R79 R78 K116 ["VerticalAlignment"]
      508 GETIMPORT                        R79 K127 [Enum.SortOrder.LayoutOrder]
      510 SETTABLEKS                       R79 R78 K117 ["SortOrder"]
      512 GETIMPORT                        R79 K130 [UDim.new]
      514 LOADN                            R80 0
      515 LOADN                            R81 0
      516 CALL                             R79 2 1
      517 SETTABLEKS                       R79 R78 K118 ["Padding"]
      519 CALL                             R76 2 1
      520 SETTABLEKS                       R76 R75 K106 ["UIListLayout"]
      522 MOVE                             R76 R21
      523 JUMPIFNOT                        R76 ; [+9]
      524 GETUPVAL                         R77 14
      525 GETTABLEKS                       R76 R77 K98 ["createElement"]
      527 GETUPVAL                         R77 15
      528 GETTABLEKS                       R78 R0 K131 ["getMessageBoxProps"]
      530 MOVE                             R79 R20
      531 CALL                             R78 1 -1
      532 CALL                             R76 -1 1
      533 SETTABLEKS                       R76 R75 K107 ["AssetConfigMessageBox"]
      535 GETUPVAL                         R77 3
      536 CALL                             R77 0 1
      537 JUMPIFNOT                        R77 ; [+2]
      538 LOADNIL                          R76
      539 JUMP                             ; [+28]
      540 MOVE                             R76 R22
      541 JUMPIFNOT                        R76 ; [+26]
      542 GETUPVAL                         R77 14
      543 GETTABLEKS                       R76 R77 K98 ["createElement"]
      545 GETUPVAL                         R77 16
      546 DUPTABLE                         R78 K140 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      547 SETTABLEKS                       R68 R78 K132 ["AcceptText"]
      549 SETTABLEKS                       R60 R78 K133 ["CancelText"]
      551 SETTABLEKS                       R67 R78 K134 ["Description"]
      553 SETTABLEKS                       R22 R78 K135 ["Enabled"]
      555 SETTABLEKS                       R65 R78 K136 ["Heading"]
      557 GETTABLEKS                       R79 R0 K141 ["onAssetPublishPayAndConfirmAccepted"]
      559 SETTABLEKS                       R79 R78 K137 ["OnAccepted"]
      561 GETTABLEKS                       R79 R0 K142 ["onAssetPublishPayAndConfirmCanceled"]
      563 SETTABLEKS                       R79 R78 K138 ["OnCanceled"]
      565 SETTABLEKS                       R64 R78 K139 ["Title"]
      567 CALL                             R76 2 1
      568 SETTABLEKS                       R76 R75 K108 ["RobuxSpendConfirmationMessageBox"]
      570 GETUPVAL                         R77 3
      571 CALL                             R77 0 1
      572 JUMPIFNOT                        R77 ; [+24]
      573 GETTABLEKS                       R76 R1 K58 ["isAvatarItemDialogFlowEnabled"]
      575 JUMPIFNOT                        R76 ; [+22]
      576 GETUPVAL                         R77 14
      577 GETTABLEKS                       R76 R77 K98 ["createElement"]
      579 GETUPVAL                         R77 17
      580 DUPTABLE                         R78 K146 [{"OnUploadConfirmed", "UploadFee", "ItemName"}]
      581 NEWCLOSURE                       R79 P0
      582 CAPTURE                          VAL R0
      583 SETTABLEKS                       R79 R78 K143 ["OnUploadConfirmed"]
      585 GETTABLEKS                       R80 R1 K92 ["uploadFee"]
      587 ORK                              R79 R80 K7 [""]
      588 SETTABLEKS                       R79 R78 K144 ["UploadFee"]
      590 GETTABLEKS                       R80 R2 K8 ["name"]
      592 ORK                              R79 R80 K7 [""]
      593 SETTABLEKS                       R79 R78 K145 ["ItemName"]
      595 CALL                             R76 2 1
      596 JUMP                             ; [+1]
      597 LOADNIL                          R76
      598 SETTABLEKS                       R76 R75 K109 ["AvatarItemMessageBox"]
      600 JUMPIFNOT                        R69 ; [+30]
      601 GETUPVAL                         R77 14
      602 GETTABLEKS                       R76 R77 K98 ["createElement"]
      604 GETUPVAL                         R77 18
      605 DUPTABLE                         R78 K148 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      606 SETTABLEKS                       R59 R78 K132 ["AcceptText"]
      608 SETTABLEKS                       R60 R78 K133 ["CancelText"]
      610 LOADNIL                          R79
      611 SETTABLEKS                       R79 R78 K147 ["ConfirmationKey"]
      613 SETTABLEKS                       R61 R78 K134 ["Description"]
      615 SETTABLEKS                       R69 R78 K135 ["Enabled"]
      617 SETTABLEKS                       R62 R78 K136 ["Heading"]
      619 GETTABLEKS                       R79 R0 K149 ["onAssetPublishDialogAccepted"]
      621 SETTABLEKS                       R79 R78 K137 ["OnAccepted"]
      623 GETTABLEKS                       R79 R0 K150 ["onAssetPublishDialogCanceled"]
      625 SETTABLEKS                       R79 R78 K138 ["OnCanceled"]
      627 SETTABLEKS                       R63 R78 K139 ["Title"]
      629 CALL                             R76 2 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R76
      632 SETTABLEKS                       R76 R75 K110 ["AssetConfigMakeAssetPublicMessageBox"]
      634 GETUPVAL                         R77 14
      635 GETTABLEKS                       R76 R77 K98 ["createElement"]
      637 LOADK                            R77 K99 ["Frame"]
      638 DUPTABLE                         R78 K151 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      639 GETIMPORT                        R79 K153 [UDim2.new]
      641 LOADN                            R80 1
      642 LOADN                            R81 0
      643 LOADN                            R82 1
      644 LOADN                            R83 194
      645 CALL                             R79 4 1
      646 SETTABLEKS                       R79 R78 K3 ["Size"]
      648 LOADN                            R79 1
      649 SETTABLEKS                       R79 R78 K100 ["BackgroundTransparency"]
      651 LOADN                            R79 1
      652 SETTABLEKS                       R79 R78 K126 ["LayoutOrder"]
      654 DUPTABLE                         R79 K163 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      655 GETUPVAL                         R81 14
      656 GETTABLEKS                       R80 R81 K98 ["createElement"]
      658 LOADK                            R81 K106 ["UIListLayout"]
      659 DUPTABLE                         R82 K119 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      660 GETIMPORT                        R83 K165 [Enum.FillDirection.Horizontal]
      662 SETTABLEKS                       R83 R82 K114 ["FillDirection"]
      664 GETIMPORT                        R83 K123 [Enum.HorizontalAlignment.Left]
      666 SETTABLEKS                       R83 R82 K115 ["HorizontalAlignment"]
      668 GETIMPORT                        R83 K167 [Enum.VerticalAlignment.Top]
      670 SETTABLEKS                       R83 R82 K116 ["VerticalAlignment"]
      672 GETIMPORT                        R83 K127 [Enum.SortOrder.LayoutOrder]
      674 SETTABLEKS                       R83 R82 K117 ["SortOrder"]
      676 GETIMPORT                        R83 K130 [UDim.new]
      678 LOADN                            R84 0
      679 LOADN                            R85 0
      680 CALL                             R83 2 1
      681 SETTABLEKS                       R83 R82 K118 ["Padding"]
      683 CALL                             R80 2 1
      684 SETTABLEKS                       R80 R79 K106 ["UIListLayout"]
      686 GETUPVAL                         R81 14
      687 GETTABLEKS                       R80 R81 K98 ["createElement"]
      689 GETUPVAL                         R81 18
      690 DUPTABLE                         R82 K148 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      691 SETTABLEKS                       R52 R82 K132 ["AcceptText"]
      693 SETTABLEKS                       R53 R82 K133 ["CancelText"]
      695 SETTABLEKS                       R58 R82 K147 ["ConfirmationKey"]
      697 SETTABLEKS                       R55 R82 K134 ["Description"]
      699 SETTABLEKS                       R57 R82 K135 ["Enabled"]
      701 SETTABLEKS                       R54 R82 K136 ["Heading"]
      703 GETTABLEKS                       R83 R0 K168 ["onDialogAccepted"]
      705 SETTABLEKS                       R83 R82 K137 ["OnAccepted"]
      707 GETTABLEKS                       R83 R0 K169 ["onDialogCanceled"]
      709 SETTABLEKS                       R83 R82 K138 ["OnCanceled"]
      711 SETTABLEKS                       R56 R82 K139 ["Title"]
      713 CALL                             R80 2 1
      714 SETTABLEKS                       R80 R79 K154 ["SharingConfirmationDialog"]
      716 GETUPVAL                         R81 14
      717 GETTABLEKS                       R80 R81 K98 ["createElement"]
      719 GETUPVAL                         R81 19
      720 DUPTABLE                         R82 K182 [{"TotalWidth", "TabItems", "CurrentTab", "PreviewType", "ScreenFlowType", "AssetStatus", "AssetId", "IconFile", "AssetTypeEnum", "AllowedBundleTypeSettings", "OnTabSelect", "ChooseThumbnail", "LayoutOrder", "assetTypeEnum", "selectedColor"}]
      721 LOADN                            R83 240
      722 SETTABLEKS                       R83 R82 K170 ["TotalWidth"]
      724 SETTABLEKS                       R39 R82 K171 ["TabItems"]
      726 SETTABLEKS                       R6 R82 K172 ["CurrentTab"]
      728 SETTABLEKS                       R38 R82 K173 ["PreviewType"]
      730 SETTABLEKS                       R26 R82 K174 ["ScreenFlowType"]
      732 SETTABLEKS                       R17 R82 K175 ["AssetStatus"]
      734 SETTABLEKS                       R7 R82 K176 ["AssetId"]
      736 SETTABLEKS                       R23 R82 K177 ["IconFile"]
      738 SETTABLEKS                       R25 R82 K178 ["AssetTypeEnum"]
      740 SETTABLEKS                       R30 R82 K179 ["AllowedBundleTypeSettings"]
      742 GETTABLEKS                       R83 R0 K183 ["onTabSelect"]
      744 SETTABLEKS                       R83 R82 K180 ["OnTabSelect"]
      746 GETTABLEKS                       R83 R0 K184 ["chooseThumbnail"]
      748 SETTABLEKS                       R83 R82 K181 ["ChooseThumbnail"]
      750 LOADN                            R83 1
      751 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
      753 GETUPVAL                         R84 20
      754 CALL                             R84 0 1
      755 JUMPIFNOT                        R84 ; [+2]
      756 MOVE                             R83 R25
      757 JUMP                             ; [+1]
      758 LOADNIL                          R83
      759 SETTABLEKS                       R83 R82 K29 ["assetTypeEnum"]
      761 GETUPVAL                         R84 10
      762 CALL                             R84 0 1
      763 JUMPIFNOT                        R84 ; [+4]
      764 JUMPIFNOT                        R70 ; [+3]
      765 GETTABLEKS                       R83 R2 K60 ["selectedColor"]
      767 JUMP                             ; [+1]
      768 LOADNIL                          R83
      769 SETTABLEKS                       R83 R82 K60 ["selectedColor"]
      771 CALL                             R80 2 1
      772 SETTABLEKS                       R80 R79 K155 ["Preview"]
      774 GETUPVAL                         R81 14
      775 GETTABLEKS                       R80 R81 K98 ["createElement"]
      777 LOADK                            R81 K99 ["Frame"]
      778 DUPTABLE                         R82 K185 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      779 GETIMPORT                        R83 K153 [UDim2.new]
      781 LOADN                            R84 0
      782 LOADN                            R85 2
      783 LOADN                            R86 1
      784 LOADN                            R87 0
      785 CALL                             R83 4 1
      786 SETTABLEKS                       R83 R82 K3 ["Size"]
      788 LOADN                            R83 0
      789 SETTABLEKS                       R83 R82 K100 ["BackgroundTransparency"]
      791 GETTABLEKS                       R84 R3 K186 ["divider"]
      793 GETTABLEKS                       R83 R84 K187 ["verticalLineColor"]
      795 SETTABLEKS                       R83 R82 K101 ["BackgroundColor3"]
      797 LOADN                            R83 0
      798 SETTABLEKS                       R83 R82 K102 ["BorderSizePixel"]
      800 LOADN                            R83 2
      801 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
      803 CALL                             R80 2 1
      804 SETTABLEKS                       R80 R79 K156 ["VerticalLine"]
      806 MOVE                             R80 R40
      807 JUMPIFNOT                        R80 ; [+50]
      808 GETUPVAL                         R81 14
      809 GETTABLEKS                       R80 R81 K98 ["createElement"]
      811 GETUPVAL                         R81 21
      812 DUPTABLE                         R82 K188 [{"LayoutOrder", "Size"}]
      813 LOADN                            R83 3
      814 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
      816 GETIMPORT                        R83 K153 [UDim2.new]
      818 LOADN                            R84 1
      819 LOADN                            R85 16
      820 LOADN                            R86 1
      821 LOADN                            R87 0
      822 CALL                             R83 4 1
      823 SETTABLEKS                       R83 R82 K3 ["Size"]
      825 DUPTABLE                         R83 K190 [{"LoadingIndicator"}]
      826 GETUPVAL                         R85 14
      827 GETTABLEKS                       R84 R85 K98 ["createElement"]
      829 GETUPVAL                         R85 22
      830 DUPTABLE                         R86 K193 [{"Size", "AnchorPoint", "Position"}]
      831 GETIMPORT                        R87 K153 [UDim2.new]
      833 LOADN                            R88 0
      834 LOADN                            R89 100
      835 LOADN                            R90 0
      836 LOADN                            R91 100
      837 CALL                             R87 4 1
      838 SETTABLEKS                       R87 R86 K3 ["Size"]
      840 GETIMPORT                        R87 K195 [Vector2.new]
      842 LOADK                            R88 K196 [0.5]
      843 LOADK                            R89 K196 [0.5]
      844 CALL                             R87 2 1
      845 SETTABLEKS                       R87 R86 K191 ["AnchorPoint"]
      847 GETIMPORT                        R87 K198 [UDim2.fromScale]
      849 LOADK                            R88 K196 [0.5]
      850 LOADK                            R89 K196 [0.5]
      851 CALL                             R87 2 1
      852 SETTABLEKS                       R87 R86 K192 ["Position"]
      854 CALL                             R84 2 1
      855 SETTABLEKS                       R84 R83 K189 ["LoadingIndicator"]
      857 CALL                             R80 3 1
      858 SETTABLEKS                       R80 R79 K157 ["LoadingIndicatorWrapper"]
      860 NOT                              R80 R40
      861 JUMPIFNOT                        R80 ; [+243]
      862 GETUPVAL                         R80 2
      863 MOVE                             R82 R6
      864 NAMECALL                         R80 R80 K199 ["isGeneral"]
      866 CALL                             R80 2 1
      867 JUMPIFNOT                        R80 ; [+237]
      868 GETUPVAL                         R81 14
      869 GETTABLEKS                       R80 R81 K98 ["createElement"]
      871 GETUPVAL                         R81 23
      872 NEWTABLE                         R82 64 0
      874 GETIMPORT                        R83 K153 [UDim2.new]
      876 LOADN                            R84 1
      877 LOADN                            R85 16
      878 LOADN                            R86 1
      879 LOADN                            R87 0
      880 CALL                             R83 4 1
      881 SETTABLEKS                       R83 R82 K3 ["Size"]
      883 SETTABLEKS                       R49 R82 K200 ["allowSelectPrivate"]
      885 SETTABLEKS                       R7 R82 K6 ["assetId"]
      887 SETTABLEKS                       R8 R82 K8 ["name"]
      889 SETTABLEKS                       R9 R82 K9 ["description"]
      891 GETUPVAL                         R84 0
      892 CALL                             R84 0 1
      893 JUMPIFNOT                        R84 ; [+2]
      894 LOADNIL                          R83
      895 JUMP                             ; [+1]
      896 MOVE                             R83 R10
      897 SETTABLEKS                       R83 R82 K10 ["tags"]
      899 SETTABLEKS                       R11 R82 K14 ["owner"]
      901 GETUPVAL                         R84 8
      902 CALL                             R84 0 1
      903 JUMPIFNOT                        R84 ; [+2]
      904 MOVE                             R83 R42
      905 JUMP                             ; [+1]
      906 LOADNIL                          R83
      907 SETTABLEKS                       R83 R82 K54 ["canUploadWithUgcRestrictions"]
      909 GETUPVAL                         R84 8
      910 CALL                             R84 0 1
      911 JUMPIFNOT                        R84 ; [+2]
      912 MOVE                             R83 R43
      913 JUMP                             ; [+1]
      914 LOADNIL                          R83
      915 SETTABLEKS                       R83 R82 K55 ["canUploadWithUgcRestrictionsDenyReason"]
      917 SETTABLEKS                       R12 R82 K15 ["allowCopy"]
      919 SETTABLEKS                       R13 R82 K16 ["copyOn"]
      921 SETTABLEKS                       R14 R82 K17 ["allowComment"]
      923 SETTABLEKS                       R15 R82 K18 ["commentOn"]
      925 SETTABLEKS                       R16 R82 K19 ["deleteLocal"]
      927 SETTABLEKS                       R18 R82 K21 ["isAssetPublic"]
      929 SETTABLEKS                       R19 R82 K22 ["publishingRestriction"]
      931 SETTABLEKS                       R25 R82 K29 ["assetTypeEnum"]
      933 GETTABLEKS                       R83 R0 K201 ["onNameChange"]
      935 SETTABLEKS                       R83 R82 K201 ["onNameChange"]
      937 GETTABLEKS                       R83 R0 K202 ["onDescChange"]
      939 SETTABLEKS                       R83 R82 K202 ["onDescChange"]
      941 GETUPVAL                         R84 8
      942 CALL                             R84 0 1
      943 JUMPIFNOT                        R84 ; [+3]
      944 GETTABLEKS                       R83 R0 K203 ["onCategoryChange"]
      946 JUMP                             ; [+1]
      947 LOADNIL                          R83
      948 SETTABLEKS                       R83 R82 K203 ["onCategoryChange"]
      950 GETTABLEKS                       R83 R0 K204 ["onAccessChange"]
      952 SETTABLEKS                       R83 R82 K205 ["onOwnerSelected"]
      954 GETTABLEKS                       R83 R0 K206 ["onSharingChanged"]
      956 SETTABLEKS                       R83 R82 K206 ["onSharingChanged"]
      958 GETTABLEKS                       R83 R0 K207 ["onAdditionalImagesChanged"]
      960 SETTABLEKS                       R83 R82 K207 ["onAdditionalImagesChanged"]
      962 GETTABLEKS                       R83 R0 K208 ["toggleCopy"]
      964 SETTABLEKS                       R83 R82 K208 ["toggleCopy"]
      966 GETTABLEKS                       R83 R0 K209 ["toggleComment"]
      968 SETTABLEKS                       R83 R82 K209 ["toggleComment"]
      970 GETTABLEKS                       R83 R0 K210 ["toggleDeleteLocal"]
      972 SETTABLEKS                       R83 R82 K210 ["toggleDeleteLocal"]
      974 GETTABLEKS                       R83 R2 K211 ["dataSharingEnabled"]
      976 SETTABLEKS                       R83 R82 K211 ["dataSharingEnabled"]
      978 GETTABLEKS                       R83 R2 K212 ["dataSharingToggled"]
      980 SETTABLEKS                       R83 R82 K212 ["dataSharingToggled"]
      982 GETTABLEKS                       R83 R0 K213 ["onDataConsentToggleClick"]
      984 SETTABLEKS                       R83 R82 K213 ["onDataConsentToggleClick"]
      986 SETTABLEKS                       R33 R82 K214 ["displayOwnership"]
      988 SETTABLEKS                       R34 R82 K215 ["displayCopy"]
      990 SETTABLEKS                       R36 R82 K216 ["displayComment"]
      992 SETTABLEKS                       R37 R82 K217 ["displayAssetType"]
      994 SETTABLEKS                       R50 R82 K218 ["displaySharing"]
      996 SETTABLEKS                       R35 R82 K219 ["displayAssetTypeSelection"]
      998 GETUPVAL                         R84 0
      999 CALL                             R84 0 1
     1000 JUMPIFNOT                        R84 ; [+2]
     1001 LOADNIL                          R83
     1002 JUMP                             ; [+2]
     1003 GETTABLEKS                       R83 R1 K220 ["maximumItemTagsPerItem"]
     1005 SETTABLEKS                       R83 R82 K220 ["maximumItemTagsPerItem"]
     1007 JUMPIFNOT                        R48 ; [+2]
     1008 MOVE                             R83 R28
     1009 JUMP                             ; [+1]
     1010 LOADNIL                          R83
     1011 SETTABLEKS                       R83 R82 K31 ["allowedAssetTypesForRelease"]
     1013 SETTABLEKS                       R29 R82 K32 ["allowedAssetTypesForFree"]
     1015 JUMPIFNOT                        R48 ; [+2]
     1016 MOVE                             R83 R17
     1017 JUMP                             ; [+1]
     1018 LOADNIL                          R83
     1019 SETTABLEKS                       R83 R82 K221 ["newAssetStatus"]
     1021 JUMPIFNOT                        R48 ; [+2]
     1022 MOVE                             R83 R31
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R83
     1025 SETTABLEKS                       R83 R82 K222 ["currentAssetStatus"]
     1027 JUMPIFNOT                        R48 ; [+3]
     1028 GETTABLEKS                       R83 R0 K223 ["onStatusChange"]
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R83
     1032 SETTABLEKS                       R83 R82 K223 ["onStatusChange"]
     1034 JUMPIFNOT                        R48 ; [+3]
     1035 GETTABLEKS                       R83 R0 K224 ["onPriceChange"]
     1037 JUMP                             ; [+1]
     1038 LOADNIL                          R83
     1039 SETTABLEKS                       R83 R82 K224 ["onPriceChange"]
     1041 JUMPIFNOT                        R48 ; [+2]
     1042 MOVE                             R83 R32
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R83
     1045 SETTABLEKS                       R83 R82 K36 ["price"]
     1047 LOADNIL                          R83
     1048 SETTABLEKS                       R83 R82 K225 ["minPrice"]
     1050 LOADNIL                          R83
     1051 SETTABLEKS                       R83 R82 K226 ["maxPrice"]
     1053 LOADNIL                          R83
     1054 SETTABLEKS                       R83 R82 K227 ["feeRate"]
     1056 LOADNIL                          R83
     1057 SETTABLEKS                       R83 R82 K228 ["isPriceValid"]
     1059 LOADN                            R83 3
     1060 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
     1062 GETTABLEKS                       R83 R1 K48 ["instances"]
     1064 SETTABLEKS                       R83 R82 K48 ["instances"]
     1066 GETUPVAL                         R84 10
     1067 CALL                             R84 0 1
     1068 JUMPIFNOT                        R84 ; [+2]
     1069 MOVE                             R83 R70
     1070 JUMP                             ; [+1]
     1071 LOADNIL                          R83
     1072 SETTABLEKS                       R83 R82 K229 ["showColorPicker"]
     1074 GETUPVAL                         R84 10
     1075 CALL                             R84 0 1
     1076 JUMPIFNOT                        R84 ; [+4]
     1077 JUMPIFNOT                        R70 ; [+3]
     1078 GETTABLEKS                       R83 R2 K230 ["showColorPickerRequiredError"]
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R83
     1082 SETTABLEKS                       R83 R82 K230 ["showColorPickerRequiredError"]
     1084 GETUPVAL                         R84 10
     1085 CALL                             R84 0 1
     1086 JUMPIFNOT                        R84 ; [+4]
     1087 JUMPIFNOT                        R70 ; [+3]
     1088 GETTABLEKS                       R83 R2 K60 ["selectedColor"]
     1090 JUMP                             ; [+1]
     1091 LOADNIL                          R83
     1092 SETTABLEKS                       R83 R82 K60 ["selectedColor"]
     1094 GETUPVAL                         R84 10
     1095 CALL                             R84 0 1
     1096 JUMPIFNOT                        R84 ; [+4]
     1097 JUMPIFNOT                        R70 ; [+3]
     1098 GETTABLEKS                       R83 R0 K231 ["onSelectedColorChange"]
     1100 JUMP                             ; [+1]
     1101 LOADNIL                          R83
     1102 SETTABLEKS                       R83 R82 K232 ["setSelectedColor"]
     1104 CALL                             R80 2 1
     1105 SETTABLEKS                       R80 R79 K158 ["PublishAsset"]
     1107 GETUPVAL                         R80 2
     1108 MOVE                             R82 R6
     1109 NAMECALL                         R80 R80 K233 ["isVersions"]
     1111 CALL                             R80 2 1
     1112 JUMPIFNOT                        R80 ; [+72]
     1113 GETUPVAL                         R81 14
     1114 GETTABLEKS                       R80 R81 K98 ["createElement"]
     1116 GETUPVAL                         R81 24
     1117 DUPTABLE                         R82 K247 [{"Size", "assetId", "LayoutOrder", "currentItem", "rootItems", "openInputKey", "previousInput", "pageIndex", "pageRootItems", "versionHistory", "onDescClicked", "closeInput", "setVersionError", "setPreviousInput", "onPageChange", "setStates"}]
     1118 GETIMPORT                        R83 K153 [UDim2.new]
     1120 LOADN                            R84 1
     1121 LOADN                            R85 16
     1122 LOADN                            R86 1
     1123 LOADN                            R87 236
     1124 CALL                             R83 4 1
     1125 SETTABLEKS                       R83 R82 K3 ["Size"]
     1127 SETTABLEKS                       R7 R82 K6 ["assetId"]
     1129 LOADN                            R83 3
     1130 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
     1132 GETTABLEKS                       R83 R2 K248 ["versionsCurrentItem"]
     1134 SETTABLEKS                       R83 R82 K234 ["currentItem"]
     1136 GETTABLEKS                       R83 R2 K249 ["versionsRootItems"]
     1138 SETTABLEKS                       R83 R82 K235 ["rootItems"]
     1140 GETTABLEKS                       R83 R2 K250 ["versionsOpenInputKey"]
     1142 SETTABLEKS                       R83 R82 K236 ["openInputKey"]
     1144 GETTABLEKS                       R83 R2 K251 ["versionsPreviousInput"]
     1146 SETTABLEKS                       R83 R82 K237 ["previousInput"]
     1148 GETTABLEKS                       R83 R2 K252 ["versionsPageIndex"]
     1150 SETTABLEKS                       R83 R82 K238 ["pageIndex"]
     1152 GETTABLEKS                       R83 R2 K253 ["versionsPageRootItems"]
     1154 SETTABLEKS                       R83 R82 K239 ["pageRootItems"]
     1156 GETTABLEKS                       R83 R1 K240 ["versionHistory"]
     1158 SETTABLEKS                       R83 R82 K240 ["versionHistory"]
     1160 GETTABLEKS                       R83 R0 K254 ["versionsOnDescClicked"]
     1162 SETTABLEKS                       R83 R82 K241 ["onDescClicked"]
     1164 GETTABLEKS                       R83 R0 K255 ["versionsCloseInput"]
     1166 SETTABLEKS                       R83 R82 K242 ["closeInput"]
     1168 GETTABLEKS                       R83 R0 K243 ["setVersionError"]
     1170 SETTABLEKS                       R83 R82 K243 ["setVersionError"]
     1172 GETTABLEKS                       R83 R0 K256 ["versionsSetPreviousInput"]
     1174 SETTABLEKS                       R83 R82 K244 ["setPreviousInput"]
     1176 GETTABLEKS                       R83 R0 K257 ["versionsOnPageChange"]
     1178 SETTABLEKS                       R83 R82 K245 ["onPageChange"]
     1180 GETTABLEKS                       R83 R0 K258 ["versionsSetStates"]
     1182 SETTABLEKS                       R83 R82 K246 ["setStates"]
     1184 CALL                             R80 2 1
     1185 SETTABLEKS                       R80 R79 K159 ["Versions"]
     1187 GETUPVAL                         R81 2
     1188 MOVE                             R83 R6
     1189 NAMECALL                         R81 R81 K259 ["isSales"]
     1191 CALL                             R81 2 1
     1192 JUMPIFNOT                        R81 ; [+21]
     1193 GETUPVAL                         R81 14
     1194 GETTABLEKS                       R80 R81 K98 ["createElement"]
     1196 GETUPVAL                         R81 25
     1197 DUPTABLE                         R82 K262 [{"size", "assetId", "layoutOrder"}]
     1198 GETIMPORT                        R83 K153 [UDim2.new]
     1200 LOADN                            R84 1
     1201 LOADN                            R85 16
     1202 LOADN                            R86 1
     1203 LOADN                            R87 0
     1204 CALL                             R83 4 1
     1205 SETTABLEKS                       R83 R82 K260 ["size"]
     1207 SETTABLEKS                       R7 R82 K6 ["assetId"]
     1209 LOADN                            R83 3
     1210 SETTABLEKS                       R83 R82 K261 ["layoutOrder"]
     1212 CALL                             R80 2 1
     1213 JUMP                             ; [+1]
     1214 LOADNIL                          R80
     1215 SETTABLEKS                       R80 R79 K160 ["Sales"]
     1217 GETUPVAL                         R80 2
     1218 MOVE                             R82 R6
     1219 NAMECALL                         R80 R80 K263 ["isOverride"]
     1221 CALL                             R80 2 1
     1222 JUMPIFNOT                        R80 ; [+28]
     1223 GETUPVAL                         R81 14
     1224 GETTABLEKS                       R80 R81 K98 ["createElement"]
     1226 GETUPVAL                         R81 26
     1227 DUPTABLE                         R82 K265 [{"Size", "assetTypeEnum", "instances", "onOverrideAssetSelected", "LayoutOrder"}]
     1228 GETIMPORT                        R83 K153 [UDim2.new]
     1230 LOADN                            R84 1
     1231 LOADN                            R85 16
     1232 LOADN                            R86 1
     1233 LOADN                            R87 0
     1234 CALL                             R83 4 1
     1235 SETTABLEKS                       R83 R82 K3 ["Size"]
     1237 SETTABLEKS                       R25 R82 K29 ["assetTypeEnum"]
     1239 GETTABLEKS                       R83 R1 K48 ["instances"]
     1241 SETTABLEKS                       R83 R82 K48 ["instances"]
     1243 GETTABLEKS                       R83 R0 K264 ["onOverrideAssetSelected"]
     1245 SETTABLEKS                       R83 R82 K264 ["onOverrideAssetSelected"]
     1247 LOADN                            R83 3
     1248 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
     1250 CALL                             R80 2 1
     1251 SETTABLEKS                       R80 R79 K161 ["OverrideAsset"]
     1253 GETUPVAL                         R80 2
     1254 MOVE                             R82 R6
     1255 NAMECALL                         R80 R80 K266 ["isPermissions"]
     1257 CALL                             R80 2 1
     1258 JUMPIFNOT                        R80 ; [+59]
     1259 GETUPVAL                         R81 27
     1260 CALL                             R81 0 1
     1261 JUMPIFNOT                        R81 ; [+34]
     1262 GETUPVAL                         R81 14
     1263 GETTABLEKS                       R80 R81 K98 ["createElement"]
     1265 GETUPVAL                         R82 28
     1266 GETTABLEKS                       R81 R82 K267 ["AsyncCache"]
     1268 NEWTABLE                         R82 0 0
     1270 NEWTABLE                         R83 0 1
     1272 GETUPVAL                         R85 14
     1273 GETTABLEKS                       R84 R85 K98 ["createElement"]
     1275 GETUPVAL                         R85 29
     1276 DUPTABLE                         R86 K268 [{"Size", "AssetId", "LayoutOrder"}]
     1277 GETIMPORT                        R87 K153 [UDim2.new]
     1279 LOADN                            R88 1
     1280 MOVE                             R89 R44
     1281 LOADN                            R90 1
     1282 LOADN                            R91 0
     1283 CALL                             R87 4 1
     1284 SETTABLEKS                       R87 R86 K3 ["Size"]
     1286 SETTABLEKS                       R7 R86 K176 ["AssetId"]
     1288 LOADN                            R87 3
     1289 SETTABLEKS                       R87 R86 K126 ["LayoutOrder"]
     1291 CALL                             R84 2 -1
     1292 SETLIST                          R83 R84 -1 [1]
     1294 CALL                             R80 3 1
     1295 JUMP                             ; [+22]
     1296 GETUPVAL                         R81 14
     1297 GETTABLEKS                       R80 R81 K98 ["createElement"]
     1299 GETUPVAL                         R81 30
     1300 DUPTABLE                         R82 K270 [{"Size", "Owner", "AssetId", "LayoutOrder"}]
     1301 GETIMPORT                        R83 K153 [UDim2.new]
     1303 LOADN                            R84 1
     1304 MOVE                             R85 R44
     1305 LOADN                            R86 1
     1306 LOADN                            R87 0
     1307 CALL                             R83 4 1
     1308 SETTABLEKS                       R83 R82 K3 ["Size"]
     1310 SETTABLEKS                       R11 R82 K269 ["Owner"]
     1312 SETTABLEKS                       R7 R82 K176 ["AssetId"]
     1314 LOADN                            R83 3
     1315 SETTABLEKS                       R83 R82 K126 ["LayoutOrder"]
     1317 CALL                             R80 2 1
     1318 SETTABLEKS                       R80 R79 K162 ["PackagePermissions"]
     1320 CALL                             R76 3 1
     1321 SETTABLEKS                       R76 R75 K111 ["MainPage"]
     1323 GETUPVAL                         R77 14
     1324 GETTABLEKS                       R76 R77 K98 ["createElement"]
     1326 GETUPVAL                         R77 31
     1327 DUPTABLE                         R78 K275 [{"AssetId", "CanSave", "LayoutOrder", "Size", "TryCancel", "TryPublish", "OnPublishButtonHover"}]
     1328 GETTABLEKS                       R79 R2 K276 ["overrideAssetId"]
     1330 SETTABLEKS                       R79 R78 K176 ["AssetId"]
     1332 SETTABLEKS                       R41 R78 K271 ["CanSave"]
     1334 LOADN                            R79 2
     1335 SETTABLEKS                       R79 R78 K126 ["LayoutOrder"]
     1337 GETIMPORT                        R79 K153 [UDim2.new]
     1339 LOADN                            R80 1
     1340 LOADN                            R81 0
     1341 LOADN                            R82 0
     1342 LOADN                            R83 62
     1343 CALL                             R79 4 1
     1344 SETTABLEKS                       R79 R78 K3 ["Size"]
     1346 GETTABLEKS                       R79 R0 K277 ["tryCancelWithYield"]
     1348 SETTABLEKS                       R79 R78 K272 ["TryCancel"]
     1350 GETTABLEKS                       R79 R0 K278 ["tryPublishWithConfirmDialog"]
     1352 SETTABLEKS                       R79 R78 K273 ["TryPublish"]
     1354 GETUPVAL                         R80 10
     1355 CALL                             R80 0 1
     1356 JUMPIFNOT                        R80 ; [+5]
     1357 JUMPIF                           R41 ; [+4]
     1358 NEWCLOSURE                       R79 P1
     1359 CAPTURE                          VAL R71
     1360 CAPTURE                          VAL R0
     1361 JUMP                             ; [+1]
     1362 LOADNIL                          R79
     1363 SETTABLEKS                       R79 R78 K274 ["OnPublishButtonHover"]
     1365 CALL                             R76 2 1
     1366 SETTABLEKS                       R76 R75 K112 ["Footer"]
     1368 CALL                             R72 3 -1
     1369 RETURN                           R72 -1

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
       56 NEWTABLE                         R14 64 0
       58 SETTABLEKS                       R3 R14 K1 ["assetConfigData"]
       60 GETTABLEKS                       R15 R0 K12 ["assetTypeEnum"]
       62 SETTABLEKS                       R15 R14 K12 ["assetTypeEnum"]
       64 GETTABLEKS                       R15 R0 K13 ["assetTypeValidationSucceeded"]
       66 SETTABLEKS                       R15 R14 K13 ["assetTypeValidationSucceeded"]
       68 GETTABLEKS                       R15 R0 K14 ["categoryType"]
       70 SETTABLEKS                       R15 R14 K14 ["categoryType"]
       72 GETTABLEKS                       R15 R0 K15 ["currentScreen"]
       74 SETTABLEKS                       R15 R14 K15 ["currentScreen"]
       76 SETTABLEKS                       R4 R14 K16 ["changeTable"]
       78 GETTABLEKS                       R15 R0 K17 ["screenFlowType"]
       80 SETTABLEKS                       R15 R14 K17 ["screenFlowType"]
       82 GETTABLEKS                       R15 R0 K18 ["instances"]
       84 SETTABLEKS                       R15 R14 K18 ["instances"]
       86 GETUPVAL                         R16 1
       87 JUMPIF                           R16 ; [+2]
       88 GETUPVAL                         R16 2
       89 JUMPIFNOT                        R16 ; [+3]
       90 GETTABLEKS                       R15 R0 K19 ["sourceInstances"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R15
       94 SETTABLEKS                       R15 R14 K19 ["sourceInstances"]
       96 GETTABLEKS                       R15 R0 K20 ["allowedAssetTypesForRelease"]
       98 SETTABLEKS                       R15 R14 K20 ["allowedAssetTypesForRelease"]
      100 GETTABLEKS                       R15 R0 K21 ["allowedAssetTypesForUpload"]
      102 SETTABLEKS                       R15 R14 K21 ["allowedAssetTypesForUpload"]
      104 GETTABLEKS                       R15 R0 K22 ["allowedAssetTypesForFree"]
      106 SETTABLEKS                       R15 R14 K22 ["allowedAssetTypesForFree"]
      108 GETTABLEKS                       R15 R0 K23 ["allowedBundleTypeSettings"]
      110 SETTABLEKS                       R15 R14 K23 ["allowedBundleTypeSettings"]
      112 GETTABLEKS                       R15 R0 K24 ["currentTab"]
      114 SETTABLEKS                       R15 R14 K24 ["currentTab"]
      116 SETTABLEKS                       R11 R14 K9 ["isVerifiedCreator"]
      118 GETUPVAL                         R16 3
      119 JUMPIFNOT                        R16 ; [+4]
      120 GETTABLEKS                       R16 R7 K26 ["isAllowed"]
      122 ORK                              R15 R16 K25 [False]
      123 JUMP                             ; [+1]
      124 LOADB                            R15 0
      125 SETTABLEKS                       R15 R14 K27 ["isPublishingAllowed"]
      127 SETTABLEKS                       R10 R14 K28 ["isPackageMarketplacePublishAllowed"]
      129 GETTABLEKS                       R15 R0 K29 ["networkError"]
      131 SETTABLEKS                       R15 R14 K29 ["networkError"]
      133 GETTABLEKS                       R15 R0 K30 ["networkErrorAction"]
      135 JUMPIF                           R15 ; [+2]
      136 NEWTABLE                         R15 0 0
      138 SETTABLEKS                       R15 R14 K30 ["networkErrorAction"]
      140 GETTABLEKS                       R15 R0 K31 ["isPackageAsset"]
      142 SETTABLEKS                       R15 R14 K31 ["isPackageAsset"]
      144 GETTABLEKS                       R15 R1 K32 ["assetId"]
      146 JUMPIFNOT                        R15 ; [+9]
      147 GETTABLEKS                       R17 R0 K33 ["packagePermissions"]
      149 GETTABLEKS                       R18 R1 K32 ["assetId"]
      151 GETTABLE                         R16 R17 R18
      152 JUMPIFNOTEQKNIL                  R16 ; [+2]
      154 LOADB                            R15 0 +1
      155 LOADB                            R15 1
      156 SETTABLEKS                       R15 R14 K34 ["hasPackagePermission"]
      158 GETUPVAL                         R16 4
      159 CALL                             R16 0 1
      160 JUMPIFNOT                        R16 ; [+2]
      161 LOADNIL                          R15
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R15 R0 K35 ["isItemTagsFeatureEnabled"]
      165 SETTABLEKS                       R15 R14 K35 ["isItemTagsFeatureEnabled"]
      167 GETUPVAL                         R16 4
      168 CALL                             R16 0 1
      169 JUMPIFNOT                        R16 ; [+2]
      170 LOADNIL                          R15
      171 JUMP                             ; [+2]
      172 GETTABLEKS                       R15 R0 K36 ["enabledAssetTypesForItemTags"]
      174 SETTABLEKS                       R15 R14 K36 ["enabledAssetTypesForItemTags"]
      176 GETUPVAL                         R16 4
      177 CALL                             R16 0 1
      178 JUMPIFNOT                        R16 ; [+2]
      179 LOADNIL                          R15
      180 JUMP                             ; [+2]
      181 GETTABLEKS                       R15 R0 K37 ["maximumItemTagsPerItem"]
      183 SETTABLEKS                       R15 R14 K37 ["maximumItemTagsPerItem"]
      185 GETTABLEKS                       R15 R0 K38 ["isUploadFeeEnabled"]
      187 SETTABLEKS                       R15 R14 K38 ["isUploadFeeEnabled"]
      189 GETTABLEKS                       R15 R0 K39 ["descendantPermissions"]
      191 SETTABLEKS                       R15 R14 K39 ["descendantPermissions"]
      193 GETTABLEKS                       R15 R0 K40 ["uploadFee"]
      195 SETTABLEKS                       R15 R14 K40 ["uploadFee"]
      197 GETTABLEKS                       R15 R0 K41 ["deleteLocal"]
      199 SETTABLEKS                       R15 R14 K41 ["deleteLocal"]
      201 SETTABLEKS                       R12 R14 K10 ["versionHistory"]
      203 SETTABLEKS                       R13 R14 K42 ["permissions"]
      205 SETTABLEKS                       R8 R14 K43 ["publishingRestrictions"]
      207 GETTABLEKS                       R17 R1 K32 ["assetId"]
      209 GETTABLE                         R16 R2 R17
      210 JUMPIFNOT                        R16 ; [+4]
      211 GETTABLEKS                       R16 R1 K32 ["assetId"]
      213 GETTABLE                         R15 R2 R16
      214 JUMP                             ; [+4]
      215 GETUPVAL                         R16 5
      216 GETTABLEKS                       R15 R16 K44 ["getDefaultFiatProduct"]
      218 CALL                             R15 0 1
      219 SETTABLEKS                       R15 R14 K45 ["fiatProduct"]
      221 GETUPVAL                         R16 6
      222 CALL                             R16 0 1
      223 JUMPIFNOT                        R16 ; [+3]
      224 GETTABLEKS                       R15 R0 K46 ["groupBundlesUploadEnabledForUser"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R15
      228 SETTABLEKS                       R15 R14 K46 ["groupBundlesUploadEnabledForUser"]
      230 GETUPVAL                         R16 7
      231 CALL                             R16 0 1
      232 JUMPIFNOT                        R16 ; [+3]
      233 GETTABLEKS                       R15 R0 K47 ["isAvatarItemDialogFlowEnabled"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R15
      237 SETTABLEKS                       R15 R14 K47 ["isAvatarItemDialogFlowEnabled"]
      239 RETURN                           R14 1

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R9 0
        1 GETUPVAL                         R10 1
        2 MOVE                             R11 R0
        3 MOVE                             R12 R1
        4 MOVE                             R13 R2
        5 MOVE                             R14 R3
        6 MOVE                             R15 R4
        7 MOVE                             R16 R5
        8 GETUPVAL                         R18 2
        9 CALL                             R18 0 1
       10 JUMPIFNOT                        R18 ; [+2]
       11 LOADNIL                          R17
       12 JUMP                             ; [+1]
       13 MOVE                             R17 R6
       14 MOVE                             R18 R7
       15 MOVE                             R19 R8
       16 CALL                             R10 9 -1
       17 CALL                             R9 -1 0
       18 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R10 0
        1 GETUPVAL                         R11 1
        2 MOVE                             R12 R0
        3 MOVE                             R13 R1
        4 MOVE                             R14 R2
        5 MOVE                             R15 R3
        6 MOVE                             R16 R4
        7 MOVE                             R17 R5
        8 MOVE                             R18 R6
        9 MOVE                             R19 R7
       10 GETUPVAL                         R21 2
       11 CALL                             R21 0 1
       12 JUMPIFNOT                        R21 ; [+2]
       13 LOADNIL                          R20
       14 JUMP                             ; [+1]
       15 MOVE                             R20 R8
       16 GETUPVAL                         R22 2
       17 CALL                             R22 0 1
       18 JUMPIFNOT                        R22 ; [+2]
       19 LOADNIL                          R21
       20 JUMP                             ; [+1]
       21 MOVE                             R21 R9
       22 CALL                             R11 10 -1
       23 CALL                             R10 -1 0
       24 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_96:
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

PROTO_97:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_99:
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

PROTO_100:
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

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
       25 GETUPVAL                         R20 3
       26 CALL                             R20 0 1
       27 JUMPIFNOT                        R20 ; [+2]
       28 LOADNIL                          R19
       29 JUMP                             ; [+1]
       30 MOVE                             R19 R6
       31 MOVE                             R20 R7
       32 MOVE                             R21 R8
       33 MOVE                             R22 R9
       34 MOVE                             R23 R10
       35 CALL                             R13 10 -1
       36 CALL                             R12 -1 0
       37 RETURN                           R0 0

PROTO_104:
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

PROTO_105:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_117:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADNIL                          R2
       16 JUMP                             ; [+3]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R2 R1 K2 ["getAssetTags"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R2 R1 K3 ["getVersionsHistory"]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 SETTABLEKS                       R2 R1 K4 ["makeChangeRequest"]
       32 NEWCLOSURE                       R2 P5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R2 R1 K5 ["resetUploadResult"]
       38 NEWCLOSURE                       R2 P6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R2 R1 K6 ["uploadCatalogItem"]
       44 NEWCLOSURE                       R2 P7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U2
       48 SETTABLEKS                       R2 R1 K7 ["configureCatalogItem"]
       50 NEWCLOSURE                       R2 P8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U10
       53 SETTABLEKS                       R2 R1 K8 ["configureMarketplaceItem"]
       55 NEWCLOSURE                       R2 P9
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          UPVAL U12
       59 SETTABLEKS                       R2 R1 K9 ["uploadMarketplaceItem"]
       61 NEWCLOSURE                       R2 P10
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U13
       64 SETTABLEKS                       R2 R1 K10 ["postRevertVersion"]
       66 NEWCLOSURE                       R2 P11
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U14
       69 SETTABLEKS                       R2 R1 K11 ["postVersionDescription"]
       71 NEWCLOSURE                       R2 P12
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U15
       74 CAPTURE                          UPVAL U16
       75 CAPTURE                          UPVAL U17
       76 SETTABLEKS                       R2 R1 K12 ["setTab"]
       78 NEWCLOSURE                       R2 P13
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U18
       81 CAPTURE                          UPVAL U12
       82 SETTABLEKS                       R2 R1 K13 ["overrideAsset"]
       84 NEWCLOSURE                       R2 P14
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U19
       87 SETTABLEKS                       R2 R1 K14 ["getIsVerifiedCreator"]
       89 NEWCLOSURE                       R2 P15
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U20
       92 SETTABLEKS                       R2 R1 K15 ["getItemUploadFee"]
       94 NEWCLOSURE                       R2 P16
       95 CAPTURE                          UPVAL U21
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U22
       98 CAPTURE                          UPVAL U2
       99 SETTABLEKS                       R2 R1 K16 ["uploadCatalogItemWithFee"]
      101 NEWCLOSURE                       R2 P17
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U23
      104 SETTABLEKS                       R2 R1 K17 ["uploadUGCBundleWithFee"]
      106 NEWCLOSURE                       R2 P18
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U24
      109 SETTABLEKS                       R2 R1 K18 ["dispatchPostPackageMetadataRequest"]
      111 NEWCLOSURE                       R2 P19
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U25
      114 SETTABLEKS                       R2 R1 K19 ["updateStore"]
      116 NEWCLOSURE                       R2 P20
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U26
      119 SETTABLEKS                       R2 R1 K20 ["dispatchGetPackageCollaboratorsRequest"]
      121 NEWCLOSURE                       R2 P21
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U27
      124 SETTABLEKS                       R2 R1 K21 ["dispatchPutPackagePermissionsRequest"]
      126 NEWCLOSURE                       R2 P22
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U28
      129 SETTABLEKS                       R2 R1 K22 ["dispatchPostAssetCheckPermissions"]
      131 NEWCLOSURE                       R2 P23
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U29
      134 SETTABLEKS                       R2 R1 K23 ["dispatchGetGroupMetadata"]
      136 NEWCLOSURE                       R2 P24
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U30
      139 SETTABLEKS                       R2 R1 K24 ["dispatchGetGroupRoleInfo"]
      141 NEWCLOSURE                       R2 P25
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U31
      144 SETTABLEKS                       R2 R1 K25 ["dispatchGetUsername"]
      146 NEWCLOSURE                       R2 P26
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U32
      149 SETTABLEKS                       R2 R1 K26 ["dispatchPatchMakeAssetPublicRequest"]
      151 NEWCLOSURE                       R2 P27
      152 CAPTURE                          VAL R0
      153 CAPTURE                          UPVAL U33
      154 SETTABLEKS                       R2 R1 K27 ["dispatchGetAssetPermissionsRequest"]
      156 NEWCLOSURE                       R2 P28
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U34
      159 SETTABLEKS                       R2 R1 K28 ["dispatchSetDescendantPermissions"]
      161 NEWCLOSURE                       R2 P29
      162 CAPTURE                          VAL R0
      163 CAPTURE                          UPVAL U35
      164 SETTABLEKS                       R2 R1 K29 ["dispatchGetPublishingRequirements"]
      166 NEWCLOSURE                       R2 P30
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U36
      169 SETTABLEKS                       R2 R1 K30 ["dispatchGetAssetMediaMetadataArray"]
      171 NEWCLOSURE                       R2 P31
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U37
      174 SETTABLEKS                       R2 R1 K31 ["dispatchGetFiatProduct"]
      176 GETUPVAL                         R3 38
      177 CALL                             R3 0 1
      178 JUMPIFNOT                        R3 ; [+4]
      179 NEWCLOSURE                       R2 P32
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U39
      182 JUMP                             ; [+1]
      183 LOADNIL                          R2
      184 SETTABLEKS                       R2 R1 K32 ["dispatchGetSellerStatus"]
      186 NEWCLOSURE                       R2 P33
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U40
      189 SETTABLEKS                       R2 R1 K33 ["dispatchValidateAnimationResult"]
      191 GETUPVAL                         R3 41
      192 CALL                             R3 0 1
      193 JUMPIFNOT                        R3 ; [+4]
      194 NEWCLOSURE                       R2 P34
      195 CAPTURE                          VAL R0
      196 CAPTURE                          UPVAL U42
      197 JUMP                             ; [+1]
      198 LOADNIL                          R2
      199 SETTABLEKS                       R2 R1 K34 ["dispatchCheckAvatarAssetPrivacy"]
      201 NEWCLOSURE                       R2 P35
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U43
      204 SETTABLEKS                       R2 R1 K35 ["uploadAnimationAsset"]
      206 NEWCLOSURE                       R2 P36
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U44
      209 SETTABLEKS                       R2 R1 K36 ["overrideAnimationAsset"]
      211 RETURN                           R1 1

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
       89 GETIMPORT                        R11 K15 [require]
       91 GETTABLEKS                       R15 R1 K7 ["Src"]
       93 GETTABLEKS                       R14 R15 K8 ["Util"]
       95 GETTABLEKS                       R13 R14 K16 ["SharedFlags"]
       97 GETTABLEKS                       R12 R13 K21 ["getFFlagToolboxRemoveAssetConfigAudioPermissionCheck"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K1 [game]
      102 LOADK                            R14 K22 ["ToolboxSendPackageVersionNoteTelemetry"]
      103 NAMECALL                         R12 R12 K10 ["GetFastFlag"]
      105 CALL                             R12 2 1
      106 GETIMPORT                        R13 K15 [require]
      108 GETTABLEKS                       R16 R1 K7 ["Src"]
      110 GETTABLEKS                       R15 R16 K23 ["Flags"]
      112 GETTABLEKS                       R14 R15 K24 ["getFFlagAACPermissionsPage"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K15 [require]
      117 GETTABLEKS                       R17 R1 K7 ["Src"]
      119 GETTABLEKS                       R16 R17 K23 ["Flags"]
      121 GETTABLEKS                       R15 R16 K25 ["getFFlagEnableUploadingShoes"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K15 [require]
      126 GETTABLEKS                       R18 R1 K7 ["Src"]
      128 GETTABLEKS                       R17 R18 K23 ["Flags"]
      130 GETTABLEKS                       R16 R17 K26 ["getFFlagCheckAvatarAssetPrivacy"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K15 [require]
      135 GETTABLEKS                       R19 R1 K7 ["Src"]
      137 GETTABLEKS                       R18 R19 K23 ["Flags"]
      139 GETTABLEKS                       R17 R18 K27 ["getFFlagRemoveItemTags"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K1 [game]
      144 LOADK                            R19 K28 ["StudioService"]
      145 NAMECALL                         R17 R17 K3 ["GetService"]
      147 CALL                             R17 2 1
      148 GETIMPORT                        R18 K15 [require]
      150 GETTABLEKS                       R21 R1 K7 ["Src"]
      152 GETTABLEKS                       R20 R21 K8 ["Util"]
      154 GETTABLEKS                       R19 R20 K29 ["getUserId"]
      156 CALL                             R18 1 1
      157 GETTABLEKS                       R19 R1 K30 ["Packages"]
      159 GETIMPORT                        R20 K15 [require]
      161 GETTABLEKS                       R21 R19 K31 ["Roact"]
      163 CALL                             R20 1 1
      164 GETIMPORT                        R21 K15 [require]
      166 GETTABLEKS                       R22 R19 K32 ["RoactRodux"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K15 [require]
      171 GETTABLEKS                       R23 R19 K33 ["Cryo"]
      173 CALL                             R22 1 1
      174 GETIMPORT                        R23 K15 [require]
      176 GETTABLEKS                       R25 R2 K34 ["Analytics"]
      178 GETTABLEKS                       R24 R25 K34 ["Analytics"]
      180 CALL                             R23 1 1
      181 GETTABLEKS                       R25 R1 K7 ["Src"]
      183 GETTABLEKS                       R24 R25 K35 ["Components"]
      185 GETTABLEKS                       R25 R24 K36 ["AssetConfiguration"]
      187 GETIMPORT                        R26 K15 [require]
      189 GETTABLEKS                       R27 R25 K37 ["PreviewArea"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K15 [require]
      194 GETTABLEKS                       R28 R25 K38 ["PublishAsset"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K15 [require]
      199 GETTABLEKS                       R29 R25 K39 ["AssetConfigFooter"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K15 [require]
      204 GETTABLEKS                       R30 R25 K40 ["Versions"]
      206 CALL                             R29 1 1
      207 GETIMPORT                        R30 K15 [require]
      209 GETTABLEKS                       R31 R25 K41 ["DataSharing"]
      211 CALL                             R30 1 1
      212 GETIMPORT                        R31 K15 [require]
      214 GETTABLEKS                       R32 R25 K42 ["CreatorDashboardLinkContent"]
      216 CALL                             R31 1 1
      217 LOADNIL                          R32
      218 LOADNIL                          R33
      219 LOADNIL                          R34
      220 MOVE                             R35 R13
      221 CALL                             R35 0 1
      222 JUMPIFNOT                        R35 ; [+17]
      223 GETIMPORT                        R35 K15 [require]
      225 GETTABLEKS                       R37 R25 K43 ["Permissions"]
      227 GETTABLEKS                       R36 R37 K44 ["PermissionsPage"]
      229 CALL                             R35 1 1
      230 MOVE                             R33 R35
      231 GETIMPORT                        R35 K15 [require]
      233 GETTABLEKS                       R37 R25 K43 ["Permissions"]
      235 GETTABLEKS                       R36 R37 K45 ["CollaboratorInfo"]
      237 CALL                             R35 1 1
      238 MOVE                             R34 R35
      239 JUMP                             ; [+8]
      240 GETIMPORT                        R35 K15 [require]
      242 GETTABLEKS                       R37 R25 K43 ["Permissions"]
      244 GETTABLEKS                       R36 R37 K46 ["DEPRECATED_Permissions"]
      246 CALL                             R35 1 1
      247 MOVE                             R32 R35
      248 GETIMPORT                        R35 K15 [require]
      250 GETTABLEKS                       R36 R25 K47 ["WarningDialog"]
      252 CALL                             R35 1 1
      253 GETIMPORT                        R36 K15 [require]
      255 GETTABLEKS                       R37 R25 K48 ["StyledConfirmDialog"]
      257 CALL                             R36 1 1
      258 GETIMPORT                        R37 K15 [require]
      260 GETTABLEKS                       R38 R25 K49 ["AvatarItemDialogContainer"]
      262 CALL                             R37 1 1
      263 GETIMPORT                        R38 K15 [require]
      265 GETTABLEKS                       R39 R25 K50 ["OverrideAsset"]
      267 CALL                             R38 1 1
      268 GETIMPORT                        R39 K15 [require]
      270 GETTABLEKS                       R41 R24 K51 ["MessageBox"]
      272 GETTABLEKS                       R40 R41 K51 ["MessageBox"]
      274 CALL                             R39 1 1
      275 GETIMPORT                        R40 K15 [require]
      277 GETTABLEKS                       R41 R2 K52 ["AssetPermissionUtil"]
      279 CALL                             R40 1 1
      280 GETIMPORT                        R41 K15 [require]
      282 GETTABLEKS                       R42 R2 K53 ["Images"]
      284 CALL                             R41 1 1
      285 GETIMPORT                        R42 K15 [require]
      287 GETTABLEKS                       R43 R2 K54 ["AssetConfigConstants"]
      289 CALL                             R42 1 1
      290 GETIMPORT                        R43 K15 [require]
      292 GETTABLEKS                       R44 R2 K55 ["Constants"]
      294 CALL                             R43 1 1
      295 GETIMPORT                        R44 K15 [require]
      297 GETTABLEKS                       R45 R2 K56 ["ScreenSetup"]
      299 CALL                             R44 1 1
      300 GETIMPORT                        R45 K15 [require]
      302 GETTABLEKS                       R46 R2 K57 ["AssetConfigUtil"]
      304 CALL                             R45 1 1
      305 GETIMPORT                        R46 K15 [require]
      307 GETTABLEKS                       R47 R2 K58 ["fixUpPreValidation"]
      309 CALL                             R46 1 1
      310 GETIMPORT                        R47 K15 [require]
      312 GETTABLEKS                       R48 R2 K59 ["PublishUtil"]
      314 CALL                             R47 1 1
      315 MOVE                             R49 R16
      316 CALL                             R49 0 1
      317 JUMPIFNOT                        R49 ; [+2]
      318 LOADNIL                          R48
      319 JUMP                             ; [+5]
      320 GETIMPORT                        R48 K15 [require]
      322 GETTABLEKS                       R49 R2 K60 ["TagsUtil"]
      324 CALL                             R48 1 1
      325 GETIMPORT                        R49 K15 [require]
      327 GETTABLEKS                       R50 R2 K61 ["getAllowedAssetTypeEnums"]
      329 CALL                             R49 1 1
      330 GETIMPORT                        R50 K15 [require]
      332 GETTABLEKS                       R51 R2 K62 ["FiatUtil"]
      334 CALL                             R50 1 1
      335 LOADNIL                          R51
      336 JUMPIFNOT                        R5 ; [+6]
      337 GETIMPORT                        R52 K15 [require]
      339 GETTABLEKS                       R53 R2 K63 ["getIsIXPVariableEnabled"]
      341 CALL                             R52 1 1
      342 MOVE                             R51 R52
      343 GETIMPORT                        R52 K15 [require]
      345 GETTABLEKS                       R53 R19 K64 ["Framework"]
      347 CALL                             R52 1 1
      348 GETTABLEKS                       R54 R52 K8 ["Util"]
      350 GETTABLEKS                       R53 R54 K65 ["deepCopy"]
      352 GETTABLEKS                       R55 R52 K8 ["Util"]
      354 GETTABLEKS                       R54 R55 K66 ["deepEqual"]
      356 GETTABLEKS                       R55 R52 K67 ["Dash"]
      358 GETTABLEKS                       R56 R55 K68 ["slice"]
      360 GETIMPORT                        R57 K15 [require]
      362 GETTABLEKS                       R61 R1 K7 ["Src"]
      364 GETTABLEKS                       R60 R61 K69 ["Networking"]
      366 GETTABLEKS                       R59 R60 K70 ["Requests"]
      368 GETTABLEKS                       R58 R59 K71 ["MakeChangeRequest"]
      370 CALL                             R57 1 1
      371 GETTABLEKS                       R59 R1 K7 ["Src"]
      373 GETTABLEKS                       R58 R59 K72 ["Types"]
      375 GETIMPORT                        R59 K15 [require]
      377 GETTABLEKS                       R60 R58 K73 ["AssetMediaTypes"]
      379 CALL                             R59 1 1
      380 GETIMPORT                        R60 K15 [require]
      382 GETTABLEKS                       R61 R58 K74 ["AssetSubTypes"]
      384 CALL                             R60 1 1
      385 GETIMPORT                        R61 K15 [require]
      387 GETTABLEKS                       R62 R58 K75 ["ConfigTypes"]
      389 CALL                             R61 1 1
      390 GETTABLEKS                       R64 R1 K7 ["Src"]
      392 GETTABLEKS                       R63 R64 K69 ["Networking"]
      394 GETTABLEKS                       R62 R63 K70 ["Requests"]
      396 GETIMPORT                        R63 K15 [require]
      398 GETTABLEKS                       R64 R62 K76 ["GetUploadPermissionStatusRequest"]
      400 CALL                             R63 1 1
      401 GETIMPORT                        R64 K15 [require]
      403 GETTABLEKS                       R65 R62 K77 ["UploadCatalogItemRequest"]
      405 CALL                             R64 1 1
      406 GETIMPORT                        R65 K15 [require]
      408 GETTABLEKS                       R66 R62 K78 ["ConfigureCatalogItemRequest"]
      410 CALL                             R65 1 1
      411 GETIMPORT                        R66 K15 [require]
      413 GETTABLEKS                       R67 R62 K79 ["GetAssetDetailsRequest"]
      415 CALL                             R66 1 1
      416 MOVE                             R68 R16
      417 CALL                             R68 0 1
      418 JUMPIFNOT                        R68 ; [+2]
      419 LOADNIL                          R67
      420 JUMP                             ; [+5]
      421 GETIMPORT                        R67 K15 [require]
      423 GETTABLEKS                       R68 R62 K80 ["GetAssetItemTagsRequest"]
      425 CALL                             R67 1 1
      426 GETIMPORT                        R68 K15 [require]
      428 GETTABLEKS                       R69 R62 K81 ["PostRevertVersionRequest"]
      430 CALL                             R68 1 1
      431 GETIMPORT                        R69 K15 [require]
      433 GETTABLEKS                       R70 R62 K82 ["PostVersionDescriptionRequest"]
      435 CALL                             R69 1 1
      436 GETIMPORT                        R70 K15 [require]
      438 GETTABLEKS                       R71 R62 K83 ["PatchAssetRequest"]
      440 CALL                             R70 1 1
      441 GETIMPORT                        R71 K15 [require]
      443 GETTABLEKS                       R72 R62 K84 ["PostUploadAssetRequest"]
      445 CALL                             R71 1 1
      446 GETIMPORT                        R72 K15 [require]
      448 GETTABLEKS                       R73 R62 K85 ["PostOverrideAssetRequest"]
      450 CALL                             R72 1 1
      451 GETIMPORT                        R73 K15 [require]
      453 GETTABLEKS                       R74 R62 K86 ["PostUploadAnimationRequest"]
      455 CALL                             R73 1 1
      456 GETIMPORT                        R74 K15 [require]
      458 GETTABLEKS                       R75 R62 K87 ["PostOverrideAnimationRequest"]
      460 CALL                             R74 1 1
      461 GETIMPORT                        R75 K15 [require]
      463 GETTABLEKS                       R76 R62 K88 ["GetIsVerifiedCreatorRequest"]
      465 CALL                             R75 1 1
      466 GETIMPORT                        R76 K15 [require]
      468 GETTABLEKS                       R77 R62 K89 ["PostPackageMetadataRequest"]
      470 CALL                             R76 1 1
      471 GETIMPORT                        R77 K15 [require]
      473 GETTABLEKS                       R78 R62 K90 ["GetPackageCollaboratorsRequest"]
      475 CALL                             R77 1 1
      476 GETIMPORT                        R78 K15 [require]
      478 GETTABLEKS                       R79 R62 K91 ["PutPackagePermissionsRequest"]
      480 CALL                             R78 1 1
      481 GETIMPORT                        R79 K15 [require]
      483 GETTABLEKS                       R80 R62 K92 ["PostAssetCheckPermissions"]
      485 CALL                             R79 1 1
      486 GETIMPORT                        R80 K15 [require]
      488 GETTABLEKS                       R81 R62 K93 ["GetMarketplaceInfoRequest"]
      490 CALL                             R80 1 1
      491 GETIMPORT                        R81 K15 [require]
      493 GETTABLEKS                       R82 R62 K94 ["GetItemUploadFeeRequest"]
      495 CALL                             R81 1 1
      496 GETIMPORT                        R82 K15 [require]
      498 GETTABLEKS                       R83 R62 K95 ["UGCBundleUploadRequest"]
      500 CALL                             R82 1 1
      501 GETIMPORT                        R83 K15 [require]
      503 GETTABLEKS                       R84 R62 K96 ["PatchMakeAssetPublicRequest"]
      505 CALL                             R83 1 1
      506 GETIMPORT                        R84 K15 [require]
      508 GETTABLEKS                       R85 R62 K97 ["GetAssetPermissionsRequest"]
      510 CALL                             R84 1 1
      511 GETIMPORT                        R85 K15 [require]
      513 GETTABLEKS                       R86 R62 K98 ["GetPublishingRequirementsRequest"]
      515 CALL                             R85 1 1
      516 GETIMPORT                        R86 K15 [require]
      518 GETTABLEKS                       R87 R62 K99 ["GetAssetMediaMetadataArrayRequest"]
      520 CALL                             R86 1 1
      521 GETIMPORT                        R87 K15 [require]
      523 GETTABLEKS                       R88 R62 K100 ["UGCAccessoryUploadRequest"]
      525 CALL                             R87 1 1
      526 GETIMPORT                        R88 K15 [require]
      528 GETTABLEKS                       R89 R62 K101 ["GetVersionsHistoryRequest"]
      530 CALL                             R88 1 1
      531 GETIMPORT                        R89 K15 [require]
      533 GETTABLEKS                       R90 R62 K102 ["GetFiatProductRequest"]
      535 CALL                             R89 1 1
      536 GETIMPORT                        R90 K15 [require]
      538 GETTABLEKS                       R91 R62 K103 ["GetSellerStatusRequest"]
      540 CALL                             R90 1 1
      541 GETIMPORT                        R91 K15 [require]
      543 GETTABLEKS                       R92 R62 K104 ["GetDefaultBundleDataSharingRequest"]
      545 CALL                             R91 1 1
      546 GETIMPORT                        R92 K15 [require]
      548 GETTABLEKS                       R95 R1 K7 ["Src"]
      550 GETTABLEKS                       R94 R95 K105 ["Actions"]
      552 GETTABLEKS                       R93 R94 K106 ["ClearChange"]
      554 CALL                             R92 1 1
      555 GETIMPORT                        R93 K15 [require]
      557 GETTABLEKS                       R96 R1 K7 ["Src"]
      559 GETTABLEKS                       R95 R96 K105 ["Actions"]
      561 GETTABLEKS                       R94 R95 K107 ["SetAssetConfigTab"]
      563 CALL                             R93 1 1
      564 GETIMPORT                        R94 K15 [require]
      566 GETTABLEKS                       R97 R1 K7 ["Src"]
      568 GETTABLEKS                       R96 R97 K105 ["Actions"]
      570 GETTABLEKS                       R95 R96 K108 ["UpdateAssetConfigStore"]
      572 CALL                             R94 1 1
      573 GETIMPORT                        R95 K15 [require]
      575 GETTABLEKS                       R98 R1 K7 ["Src"]
      577 GETTABLEKS                       R97 R98 K105 ["Actions"]
      579 GETTABLEKS                       R96 R97 K109 ["SetDescendantPermissions"]
      581 CALL                             R95 1 1
      582 GETIMPORT                        R96 K15 [require]
      584 GETTABLEKS                       R99 R1 K7 ["Src"]
      586 GETTABLEKS                       R98 R99 K105 ["Actions"]
      588 GETTABLEKS                       R97 R98 K110 ["UploadResult"]
      590 CALL                             R96 1 1
      591 GETIMPORT                        R97 K15 [require]
      593 GETTABLEKS                       R100 R1 K7 ["Src"]
      595 GETTABLEKS                       R99 R100 K105 ["Actions"]
      597 GETTABLEKS                       R98 R99 K111 ["ValidateAnimationResult"]
      599 CALL                             R97 1 1
      600 GETIMPORT                        R98 K15 [require]
      602 GETTABLEKS                       R101 R1 K7 ["Src"]
      604 GETTABLEKS                       R100 R101 K112 ["Thunks"]
      606 GETTABLEKS                       R99 R100 K113 ["GetGroupMetadata"]
      608 CALL                             R98 1 1
      609 GETIMPORT                        R99 K15 [require]
      611 GETTABLEKS                       R102 R1 K7 ["Src"]
      613 GETTABLEKS                       R101 R102 K112 ["Thunks"]
      615 GETTABLEKS                       R100 R101 K114 ["GetGroupRoleInfo"]
      617 CALL                             R99 1 1
      618 GETIMPORT                        R100 K15 [require]
      620 GETTABLEKS                       R103 R1 K7 ["Src"]
      622 GETTABLEKS                       R102 R103 K112 ["Thunks"]
      624 GETTABLEKS                       R101 R102 K115 ["GetUsername"]
      626 CALL                             R100 1 1
      627 GETIMPORT                        R101 K15 [require]
      629 GETTABLEKS                       R104 R1 K7 ["Src"]
      631 GETTABLEKS                       R103 R104 K112 ["Thunks"]
      633 GETTABLEKS                       R102 R103 K116 ["CheckAvatarAssetPrivacy"]
      635 CALL                             R101 1 1
      636 GETIMPORT                        R102 K15 [require]
      638 GETTABLEKS                       R105 R1 K7 ["Src"]
      640 GETTABLEKS                       R104 R105 K117 ["ContextServices"]
      642 GETTABLEKS                       R103 R104 K118 ["IXPContext"]
      644 CALL                             R102 1 1
      645 GETIMPORT                        R103 K15 [require]
      647 GETTABLEKS                       R106 R1 K7 ["Src"]
      649 GETTABLEKS                       R105 R106 K117 ["ContextServices"]
      651 GETTABLEKS                       R104 R105 K119 ["NetworkContext"]
      653 CALL                             R103 1 1
      654 GETIMPORT                        R104 K15 [require]
      656 GETTABLEKS                       R107 R1 K7 ["Src"]
      658 GETTABLEKS                       R106 R107 K117 ["ContextServices"]
      660 GETTABLEKS                       R105 R106 K120 ["PublishServiceContext"]
      662 CALL                             R104 1 1
      663 GETIMPORT                        R105 K15 [require]
      665 GETTABLEKS                       R108 R1 K7 ["Src"]
      667 GETTABLEKS                       R107 R108 K117 ["ContextServices"]
      669 GETTABLEKS                       R106 R107 K121 ["PluginGuiServiceContext"]
      671 CALL                             R105 1 1
      672 GETIMPORT                        R106 K15 [require]
      674 GETTABLEKS                       R109 R1 K7 ["Src"]
      676 GETTABLEKS                       R108 R109 K117 ["ContextServices"]
      678 GETTABLEKS                       R107 R108 K122 ["ContentProviderContext"]
      680 CALL                             R106 1 1
      681 GETIMPORT                        R107 K15 [require]
      683 GETTABLEKS                       R108 R19 K64 ["Framework"]
      685 CALL                             R107 1 1
      686 GETTABLEKS                       R108 R107 K117 ["ContextServices"]
      688 GETTABLEKS                       R109 R108 K123 ["withContext"]
      690 GETTABLEKS                       R111 R107 K124 ["UI"]
      692 GETTABLEKS                       R110 R111 K125 ["LoadingIndicator"]
      694 GETTABLEKS                       R112 R107 K124 ["UI"]
      696 GETTABLEKS                       R111 R112 K126 ["Container"]
      698 GETTABLEKS                       R112 R20 K127 ["PureComponent"]
      700 LOADK                            R114 K128 ["AssetConfig"]
      701 NAMECALL                         R112 R112 K129 ["extend"]
      703 CALL                             R112 2 1
      704 GETIMPORT                        R113 K132 [utf8.char]
      706 LOADK                            R114 K133 [57346]
      707 CALL                             R113 1 1
      708 GETIMPORT                        R114 K15 [require]
      710 GETTABLEKS                       R117 R1 K7 ["Src"]
      712 GETTABLEKS                       R116 R117 K23 ["Flags"]
      714 GETTABLEKS                       R115 R116 K134 ["getFFlagFixCreatorGroupIdNotChanging"]
      716 CALL                             R114 1 1
      717 GETIMPORT                        R115 K15 [require]
      719 GETTABLEKS                       R118 R1 K7 ["Src"]
      721 GETTABLEKS                       R117 R118 K23 ["Flags"]
      723 GETTABLEKS                       R116 R117 K135 ["getFFlagEnableUploadingGroupBundles"]
      725 CALL                             R115 1 1
      726 GETIMPORT                        R116 K15 [require]
      728 GETTABLEKS                       R119 R1 K7 ["Src"]
      730 GETTABLEKS                       R118 R119 K23 ["Flags"]
      732 GETTABLEKS                       R117 R118 K136 ["getFFlagAssetConfigPermissionFailure"]
      734 CALL                             R116 1 1
      735 GETIMPORT                        R117 K15 [require]
      737 GETTABLEKS                       R120 R1 K7 ["Src"]
      739 GETTABLEKS                       R119 R120 K23 ["Flags"]
      741 GETTABLEKS                       R118 R119 K137 ["getFFlagToolboxFixPublishDisabled"]
      743 CALL                             R117 1 1
      744 GETIMPORT                        R118 K15 [require]
      746 GETTABLEKS                       R121 R1 K7 ["Src"]
      748 GETTABLEKS                       R120 R121 K23 ["Flags"]
      750 GETTABLEKS                       R119 R120 K138 ["getFFlagEnableUploadingEmote"]
      752 CALL                             R118 1 1
      753 GETIMPORT                        R119 K15 [require]
      755 GETTABLEKS                       R122 R1 K7 ["Src"]
      757 GETTABLEKS                       R121 R122 K23 ["Flags"]
      759 GETTABLEKS                       R120 R121 K139 ["getFFlagEnableUploadingMakeup"]
      761 CALL                             R119 1 1
      762 NEWCLOSURE                       R120 P0
      763 CAPTURE                          VAL R15
      764 CAPTURE                          VAL R43
      765 CAPTURE                          VAL R119
      766 CAPTURE                          VAL R45
      767 CAPTURE                          VAL R42
      768 CAPTURE                          VAL R6
      769 CAPTURE                          VAL R40
      770 CAPTURE                          VAL R22
      771 CAPTURE                          VAL R4
      772 CAPTURE                          VAL R5
      773 CAPTURE                          REF R51
      774 CAPTURE                          VAL R17
      775 CAPTURE                          VAL R16
      776 CAPTURE                          VAL R118
      777 CAPTURE                          VAL R61
      778 CAPTURE                          VAL R18
      779 CAPTURE                          VAL R30
      780 CAPTURE                          VAL R115
      781 CAPTURE                          VAL R8
      782 CAPTURE                          VAL R116
      783 CAPTURE                          VAL R12
      784 CAPTURE                          VAL R23
      785 CAPTURE                          VAL R7
      786 CAPTURE                          VAL R63
      787 CAPTURE                          VAL R114
      788 CAPTURE                          VAL R53
      789 CAPTURE                          VAL R54
      790 CAPTURE                          VAL R60
      791 CAPTURE                          VAL R41
      792 SETTABLEKS                       R120 R112 K140 ["init"]
      794 DUPCLOSURE                       R120 K141 [PROTO_65]
      795 SETTABLEKS                       R120 R112 K142 ["attachXButtonCallback"]
      797 DUPCLOSURE                       R120 K143 [PROTO_66]
      798 SETTABLEKS                       R120 R112 K144 ["detachXButtonCallback"]
      800 DUPCLOSURE                       R120 K145 [PROTO_67]
      801 CAPTURE                          VAL R42
      802 SETTABLEKS                       R120 R112 K146 ["isLoading"]
      804 DUPCLOSURE                       R120 K147 [PROTO_68]
      805 CAPTURE                          VAL R22
      806 DUPCLOSURE                       R121 K148 [PROTO_69]
      807 CAPTURE                          VAL R42
      808 CAPTURE                          VAL R61
      809 CAPTURE                          VAL R40
      810 CAPTURE                          VAL R45
      811 CAPTURE                          VAL R3
      812 CAPTURE                          VAL R47
      813 CAPTURE                          VAL R120
      814 CAPTURE                          VAL R43
      815 SETTABLEKS                       R121 R112 K149 ["didUpdate"]
      817 DUPCLOSURE                       R121 K150 [PROTO_70]
      818 CAPTURE                          VAL R56
      819 SETTABLEKS                       R121 R112 K151 ["versionsGetPageRootItems"]
      821 DUPCLOSURE                       R121 K152 [PROTO_73]
      822 CAPTURE                          VAL R91
      823 SETTABLEKS                       R121 R112 K153 ["getDefaultBundleDataSharing"]
      825 DUPCLOSURE                       R121 K154 [PROTO_79]
      826 CAPTURE                          VAL R42
      827 CAPTURE                          VAL R45
      828 CAPTURE                          VAL R11
      829 SETTABLEKS                       R121 R112 K155 ["getAssetInformation"]
      831 DUPCLOSURE                       R121 K156 [PROTO_81]
      832 CAPTURE                          VAL R45
      833 CAPTURE                          VAL R7
      834 CAPTURE                          VAL R10
      835 CAPTURE                          VAL R50
      836 SETTABLEKS                       R121 R112 K157 ["didMount"]
      838 DUPCLOSURE                       R121 K158 [PROTO_82]
      839 SETTABLEKS                       R121 R112 K159 ["willUnmount"]
      841 NEWCLOSURE                       R121 P11
      842 CAPTURE                          VAL R16
      843 CAPTURE                          VAL R42
      844 CAPTURE                          VAL R61
      845 CAPTURE                          VAL R15
      846 CAPTURE                          VAL R115
      847 CAPTURE                          VAL R45
      848 CAPTURE                          VAL R44
      849 CAPTURE                          VAL R47
      850 CAPTURE                          VAL R7
      851 CAPTURE                          VAL R117
      852 CAPTURE                          VAL R119
      853 CAPTURE                          VAL R43
      854 CAPTURE                          VAL R113
      855 CAPTURE                          VAL R6
      856 CAPTURE                          VAL R20
      857 CAPTURE                          VAL R39
      858 CAPTURE                          VAL R36
      859 CAPTURE                          VAL R37
      860 CAPTURE                          VAL R35
      861 CAPTURE                          VAL R26
      862 CAPTURE                          VAL R118
      863 CAPTURE                          VAL R111
      864 CAPTURE                          VAL R110
      865 CAPTURE                          VAL R27
      866 CAPTURE                          VAL R29
      867 CAPTURE                          VAL R31
      868 CAPTURE                          VAL R38
      869 CAPTURE                          VAL R13
      870 CAPTURE                          REF R34
      871 CAPTURE                          REF R33
      872 CAPTURE                          REF R32
      873 CAPTURE                          VAL R28
      874 SETTABLEKS                       R121 R112 K160 ["render"]
      876 MOVE                             R121 R109
      877 DUPTABLE                         R122 K170 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      878 GETTABLEKS                       R123 R108 K161 ["Focus"]
      880 SETTABLEKS                       R123 R122 K161 ["Focus"]
      882 JUMPIFNOT                        R5 ; [+2]
      883 MOVE                             R123 R102
      884 JUMP                             ; [+1]
      885 LOADNIL                          R123
      886 SETTABLEKS                       R123 R122 K162 ["IXP"]
      888 GETTABLEKS                       R123 R108 K163 ["Localization"]
      890 SETTABLEKS                       R123 R122 K163 ["Localization"]
      892 GETTABLEKS                       R123 R108 K164 ["Stylizer"]
      894 SETTABLEKS                       R123 R122 K164 ["Stylizer"]
      896 MOVE                             R124 R119
      897 CALL                             R124 0 1
      898 JUMPIFNOT                        R124 ; [+3]
      899 GETTABLEKS                       R123 R108 K165 ["Plugin"]
      901 JUMP                             ; [+1]
      902 LOADNIL                          R123
      903 SETTABLEKS                       R123 R122 K165 ["Plugin"]
      905 SETTABLEKS                       R103 R122 K166 ["Network"]
      907 SETTABLEKS                       R104 R122 K167 ["PublishService"]
      909 MOVE                             R124 R15
      910 CALL                             R124 0 1
      911 JUMPIFNOT                        R124 ; [+2]
      912 MOVE                             R123 R105
      913 JUMP                             ; [+1]
      914 LOADNIL                          R123
      915 SETTABLEKS                       R123 R122 K168 ["PluginGuiService"]
      917 MOVE                             R124 R15
      918 CALL                             R124 0 1
      919 JUMPIFNOT                        R124 ; [+2]
      920 MOVE                             R123 R106
      921 JUMP                             ; [+1]
      922 LOADNIL                          R123
      923 SETTABLEKS                       R123 R122 K169 ["ContentProvider"]
      925 CALL                             R121 1 1
      926 MOVE                             R122 R112
      927 CALL                             R121 1 1
      928 MOVE                             R112 R121
      929 DUPCLOSURE                       R121 K171 [PROTO_86]
      930 CAPTURE                          VAL R60
      931 CAPTURE                          VAL R4
      932 CAPTURE                          VAL R5
      933 CAPTURE                          VAL R3
      934 CAPTURE                          VAL R16
      935 CAPTURE                          VAL R50
      936 CAPTURE                          VAL R115
      937 CAPTURE                          VAL R15
      938 DUPCLOSURE                       R122 K172 [PROTO_124]
      939 CAPTURE                          VAL R66
      940 CAPTURE                          VAL R80
      941 CAPTURE                          VAL R16
      942 CAPTURE                          VAL R67
      943 CAPTURE                          VAL R88
      944 CAPTURE                          VAL R57
      945 CAPTURE                          VAL R96
      946 CAPTURE                          VAL R22
      947 CAPTURE                          VAL R64
      948 CAPTURE                          VAL R65
      949 CAPTURE                          VAL R70
      950 CAPTURE                          VAL R71
      951 CAPTURE                          VAL R8
      952 CAPTURE                          VAL R68
      953 CAPTURE                          VAL R69
      954 CAPTURE                          VAL R93
      955 CAPTURE                          VAL R92
      956 CAPTURE                          VAL R42
      957 CAPTURE                          VAL R72
      958 CAPTURE                          VAL R75
      959 CAPTURE                          VAL R81
      960 CAPTURE                          VAL R46
      961 CAPTURE                          VAL R87
      962 CAPTURE                          VAL R82
      963 CAPTURE                          VAL R76
      964 CAPTURE                          VAL R94
      965 CAPTURE                          VAL R77
      966 CAPTURE                          VAL R78
      967 CAPTURE                          VAL R79
      968 CAPTURE                          VAL R98
      969 CAPTURE                          VAL R99
      970 CAPTURE                          VAL R100
      971 CAPTURE                          VAL R83
      972 CAPTURE                          VAL R84
      973 CAPTURE                          VAL R95
      974 CAPTURE                          VAL R85
      975 CAPTURE                          VAL R86
      976 CAPTURE                          VAL R89
      977 CAPTURE                          VAL R10
      978 CAPTURE                          VAL R90
      979 CAPTURE                          VAL R97
      980 CAPTURE                          VAL R15
      981 CAPTURE                          VAL R101
      982 CAPTURE                          VAL R73
      983 CAPTURE                          VAL R74
      984 GETTABLEKS                       R123 R21 K173 ["connect"]
      986 MOVE                             R124 R121
      987 MOVE                             R125 R122
      988 CALL                             R123 2 1
      989 MOVE                             R124 R112
      990 CALL                             R123 1 -1
      991 CLOSEUPVALS                      R32
      992 RETURN                           R123 -1
