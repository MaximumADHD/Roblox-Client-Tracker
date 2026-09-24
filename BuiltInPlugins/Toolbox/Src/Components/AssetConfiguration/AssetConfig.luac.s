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
      114 LOADNIL                          R8
      115 GETUPVAL                         R9 6
      116 CALL                             R9 0 1
      117 JUMPIFNOT                        R9 ; [+20]
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R9 R9 K32 ["getPublishOnApprovalFee"]
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K33 ["getPublishInfo"]
      124 CALL                             R10 0 -1
      125 CALL                             R9 -1 1
      126 GETUPVAL                         R10 1
      127 GETTABLEKS                       R10 R10 K34 ["getSubmitTotal"]
      129 MOVE                             R11 R7
      130 MOVE                             R12 R9
      131 CALL                             R10 2 1
      132 LOADN                            R11 0
      133 JUMPIFLT                         R11 R10 ; [+2]
      135 LOADB                            R8 0 +1
      136 LOADB                            R8 1
      137 JUMP                             ; [+9]
      138 LOADB                            R9 0
      139 JUMPIFEQKNIL                     R7 ; [+6]
      141 LOADN                            R10 0
      142 JUMPIFLT                         R10 R7 ; [+2]
      144 LOADB                            R9 0 +1
      145 LOADB                            R9 1
      146 MOVE                             R8 R9
      147 JUMPIF                           R5 ; [+1]
      148 JUMPIFNOT                        R6 ; [+40]
      149 JUMPIFNOT                        R8 ; [+39]
      150 GETUPVAL                         R9 7
      151 CALL                             R9 0 1
      152 JUMPIFNOT                        R9 ; [+30]
      153 GETTABLEKS                       R9 R1 K35 ["dispatchCheckAvatarAssetPrivacy"]
      155 GETTABLEKS                       R10 R1 K36 ["Network"]
      157 GETTABLEKS                       R10 R10 K37 ["networkInterface"]
      159 GETTABLEKS                       R12 R1 K38 ["instances"]
      161 GETTABLEN                        R11 R12 1
      162 DUPTABLE                         R12 K42 [{"publishService", "pluginGuiService", "contentProvider"}]
      163 GETTABLEKS                       R13 R1 K43 ["PublishService"]
      165 GETTABLEKS                       R13 R13 K39 ["publishService"]
      167 SETTABLEKS                       R13 R12 K39 ["publishService"]
      169 GETTABLEKS                       R13 R1 K44 ["PluginGuiService"]
      171 GETTABLEKS                       R13 R13 K40 ["pluginGuiService"]
      173 SETTABLEKS                       R13 R12 K40 ["pluginGuiService"]
      175 GETTABLEKS                       R13 R1 K45 ["ContentProvider"]
      177 GETTABLEKS                       R13 R13 K41 ["contentProvider"]
      179 SETTABLEKS                       R13 R12 K41 ["contentProvider"]
      181 CALL                             R9 3 0
      182 RETURN                           R0 0
      183 GETUPVAL                         R9 0
      184 DUPCLOSURE                       R11 K46 [PROTO_14]
      185 NAMECALL                         R9 R9 K30 ["setState"]
      187 CALL                             R9 2 0
      188 RETURN                           R0 0
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R9 R9 K31 ["tryPublish"]
      192 GETUPVAL                         R10 4
      193 CALL                             R9 1 0
      194 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U6
       10 NAMECALL                         R1 R1 K0 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

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
      123 JUMPIFNOT                        R5 ; [+530]
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
      210 JUMPIFNOTEQ                      R5 R6 ; [+443]
      212 GETUPVAL                         R5 9
      213 GETTABLEKS                       R5 R5 K48 ["isMakeupAsset"]
      215 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      217 CALL                             R5 1 1
      218 JUMPIFNOT                        R5 ; [+19]
      219 GETTABLEKS                       R5 R2 K49 ["selectedColor"]
      221 JUMPIFNOT                        R5 ; [+16]
      222 GETTABLEKS                       R5 R1 K50 ["instances"]
      224 JUMPIFNOT                        R5 ; [+13]
      225 GETTABLEKS                       R6 R1 K50 ["instances"]
      227 GETTABLEN                        R5 R6 1
      228 JUMPIFNOT                        R5 ; [+9]
      229 GETUPVAL                         R5 9
      230 GETTABLEKS                       R5 R5 K51 ["addMakeupThumbnailConfiguration"]
      232 GETTABLEKS                       R7 R1 K50 ["instances"]
      234 GETTABLEN                        R6 R7 1
      235 GETTABLEKS                       R7 R2 K49 ["selectedColor"]
      237 CALL                             R5 2 0
      238 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      240 GETIMPORT                        R6 K55 [Enum.AssetType.Animation]
      242 JUMPIFEQ                         R5 R6 ; [+7]
      244 GETTABLEKS                       R5 R1 K17 ["assetTypeEnum"]
      246 GETIMPORT                        R6 K57 [Enum.AssetType.EmoteAnimation]
      248 JUMPIFNOTEQ                      R5 R6 ; [+64]
      250 GETUPVAL                         R5 10
      251 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      253 NAMECALL                         R5 R5 K59 ["isOverride"]
      255 CALL                             R5 2 1
      256 JUMPIFNOT                        R5 ; [+12]
      257 GETTABLEKS                       R5 R1 K60 ["overrideAnimationAsset"]
      259 GETTABLEKS                       R6 R1 K21 ["Network"]
      261 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      263 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      265 GETTABLEKS                       R8 R1 K50 ["instances"]
      267 CALL                             R5 3 0
      268 RETURN                           R0 0
      269 GETTABLEKS                       R5 R1 K62 ["uploadAnimationAsset"]
      271 DUPTABLE                         R6 K68 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      272 GETTABLEKS                       R7 R1 K21 ["Network"]
      274 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      276 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      278 GETTABLEKS                       R7 R2 K24 ["name"]
      280 SETTABLEKS                       R7 R6 K24 ["name"]
      282 GETTABLEKS                       R8 R2 K26 ["description"]
      284 ORK                              R7 R8 K25 [""]
      285 SETTABLEKS                       R7 R6 K26 ["description"]
      287 GETUPVAL                         R7 11
      288 CALL                             R7 0 1
      289 SETTABLEKS                       R7 R6 K64 ["userId"]
      291 SETTABLEKS                       R3 R6 K3 ["groupId"]
      293 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      295 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      297 GETTABLEKS                       R7 R1 K69 ["uploadFee"]
      299 SETTABLEKS                       R7 R6 K65 ["expectedPrice"]
      301 GETTABLEKS                       R7 R1 K50 ["instances"]
      303 SETTABLEKS                       R7 R6 K66 ["instance"]
      305 GETTABLEKS                       R7 R1 K70 ["PublishService"]
      307 GETTABLEKS                       R7 R7 K67 ["publishService"]
      309 SETTABLEKS                       R7 R6 K67 ["publishService"]
      311 CALL                             R5 1 0
      312 RETURN                           R0 0
      313 GETUPVAL                         R5 9
      314 GETTABLEKS                       R5 R5 K16 ["isCatalogAsset"]
      316 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      318 CALL                             R5 1 1
      319 JUMPIFNOT                        R5 ; [+146]
      320 GETUPVAL                         R5 12
      321 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      323 GETTABLEKS                       R8 R2 K71 ["dataSharingEnabled"]
      325 GETTABLEKS                       R9 R2 K72 ["dataSharingToggled"]
      327 NAMECALL                         R5 R5 K73 ["getDataSharingLicenseTypes"]
      329 CALL                             R5 4 1
      330 GETTABLEKS                       R6 R1 K74 ["isUploadFeeEnabled"]
      332 JUMPIFNOT                        R6 ; [+74]
      333 GETTABLEKS                       R6 R1 K75 ["uploadCatalogItemWithFee"]
      335 GETTABLEKS                       R7 R1 K21 ["Network"]
      337 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      339 GETUPVAL                         R8 1
      340 GETTABLEKS                       R8 R8 K2 ["state"]
      342 GETTABLEKS                       R8 R8 K24 ["name"]
      344 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      346 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      348 MOVE                             R12 R10
      349 JUMPIFNOT                        R12 ; [+5]
      350 MOVE                             R12 R11
      351 JUMPIFNOT                        R12 ; [+3]
      352 GETTABLEKS                       R13 R11 K77 ["Name"]
      354 GETTABLE                         R12 R10 R13
      355 MOVE                             R13 R12
      356 JUMPIFNOT                        R13 ; [+2]
      357 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      359 MOVE                             R14 R13
      360 JUMPIFNOT                        R14 ; [+6]
      361 LOADB                            R14 0
      362 LENGTH                           R15 R13
      363 LOADN                            R16 0
      364 JUMPIFNOTLT                      R16 R15 ; [+2]
      366 GETTABLEN                        R14 R13 1
      367 JUMPIFNOT                        R14 ; [+8]
      368 GETIMPORT                        R15 K81 [string.gsub]
      370 MOVE                             R16 R14
      371 LOADK                            R17 K82 ["^%."]
      372 LOADK                            R18 K25 [""]
      373 CALL                             R15 3 1
      374 MOVE                             R9 R15
      375 JUMPIF                           R9 ; [+1]
      376 LOADK                            R9 K83 ["rbxm"]
      377 GETUPVAL                         R11 1
      378 GETTABLEKS                       R11 R11 K2 ["state"]
      380 GETTABLEKS                       R11 R11 K26 ["description"]
      382 ORK                              R10 R11 K25 [""]
      383 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      385 GETTABLEKS                       R12 R1 K50 ["instances"]
      387 MOVE                             R13 R3
      388 MOVE                             R14 R5
      389 GETTABLEKS                       R15 R1 K84 ["Localization"]
      391 GETTABLEKS                       R16 R1 K69 ["uploadFee"]
      393 GETUPVAL                         R17 9
      394 GETTABLEKS                       R17 R17 K85 ["getPublishOnApprovalCreationContext"]
      396 GETTABLEKS                       R18 R2 K86 ["publishOnApprovalToggled"]
      398 GETTABLEKS                       R19 R1 K87 ["hasPublishingPreferences"]
      400 GETTABLEKS                       R20 R1 K88 ["hasPublishingFeePreview"]
      402 GETTABLEKS                       R21 R1 K89 ["publishingFeePreview"]
      404 CALL                             R17 4 -1
      405 CALL                             R6 -1 0
      406 RETURN                           R0 0
      407 GETTABLEKS                       R6 R1 K90 ["uploadCatalogItem"]
      409 GETTABLEKS                       R7 R1 K21 ["Network"]
      411 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      413 GETUPVAL                         R8 1
      414 GETTABLEKS                       R8 R8 K2 ["state"]
      416 GETTABLEKS                       R8 R8 K24 ["name"]
      418 GETTABLEKS                       R10 R1 K76 ["allowedAssetTypesForUpload"]
      420 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      422 MOVE                             R12 R10
      423 JUMPIFNOT                        R12 ; [+5]
      424 MOVE                             R12 R11
      425 JUMPIFNOT                        R12 ; [+3]
      426 GETTABLEKS                       R13 R11 K77 ["Name"]
      428 GETTABLE                         R12 R10 R13
      429 MOVE                             R13 R12
      430 JUMPIFNOT                        R13 ; [+2]
      431 GETTABLEKS                       R13 R12 K78 ["allowedFileExtensions"]
      433 MOVE                             R14 R13
      434 JUMPIFNOT                        R14 ; [+6]
      435 LOADB                            R14 0
      436 LENGTH                           R15 R13
      437 LOADN                            R16 0
      438 JUMPIFNOTLT                      R16 R15 ; [+2]
      440 GETTABLEN                        R14 R13 1
      441 JUMPIFNOT                        R14 ; [+8]
      442 GETIMPORT                        R15 K81 [string.gsub]
      444 MOVE                             R16 R14
      445 LOADK                            R17 K82 ["^%."]
      446 LOADK                            R18 K25 [""]
      447 CALL                             R15 3 1
      448 MOVE                             R9 R15
      449 JUMPIF                           R9 ; [+1]
      450 LOADK                            R9 K83 ["rbxm"]
      451 GETUPVAL                         R11 1
      452 GETTABLEKS                       R11 R11 K2 ["state"]
      454 GETTABLEKS                       R11 R11 K26 ["description"]
      456 ORK                              R10 R11 K25 [""]
      457 GETTABLEKS                       R11 R1 K17 ["assetTypeEnum"]
      459 GETTABLEKS                       R12 R1 K50 ["instances"]
      461 MOVE                             R13 R5
      462 GETTABLEKS                       R14 R1 K84 ["Localization"]
      464 CALL                             R6 8 0
      465 RETURN                           R0 0
      466 GETUPVAL                         R5 9
      467 GETTABLEKS                       R5 R5 K91 ["isUGCBundleType"]
      469 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      471 CALL                             R5 1 1
      472 JUMPIFNOT                        R5 ; [+67]
      473 LOADNIL                          R5
      474 GETTABLEKS                       R6 R2 K71 ["dataSharingEnabled"]
      476 JUMPIFNOT                        R6 ; [+16]
      477 GETTABLEKS                       R6 R2 K72 ["dataSharingToggled"]
      479 JUMPIFNOT                        R6 ; [+11]
      480 NEWTABLE                         R6 0 1
      482 GETUPVAL                         R7 13
      483 GETTABLEKS                       R7 R7 K92 ["DataSharingLicenseTypes"]
      485 GETTABLEKS                       R7 R7 K93 ["RobloxGlobal"]
      487 SETLIST                          R6 R7 1 [1]
      489 MOVE                             R5 R6
      490 JUMP                             ; [+2]
      491 NEWTABLE                         R5 0 0
      493 GETUPVAL                         R7 14
      494 CALL                             R7 0 1
      495 JUMPIFNOT                        R7 ; [+7]
      496 GETUPVAL                         R6 15
      497 GETTABLEKS                       R6 R6 K94 ["isEmissiveFromAttributes"]
      499 GETTABLEKS                       R7 R1 K95 ["specialAttributes"]
      501 CALL                             R6 1 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R6
      504 GETTABLEKS                       R7 R1 K96 ["uploadUGCBundleWithFee"]
      506 GETTABLEKS                       R8 R1 K21 ["Network"]
      508 GETTABLEKS                       R8 R8 K22 ["networkInterface"]
      510 GETTABLEKS                       R10 R1 K50 ["instances"]
      512 GETTABLEN                        R9 R10 1
      513 GETTABLEKS                       R10 R1 K17 ["assetTypeEnum"]
      515 GETTABLEKS                       R11 R2 K24 ["name"]
      517 GETTABLEKS                       R13 R2 K26 ["description"]
      519 ORK                              R12 R13 K25 [""]
      520 GETTABLEKS                       R13 R1 K97 ["allowedBundleTypeSettings"]
      522 GETTABLEKS                       R14 R1 K84 ["Localization"]
      524 GETTABLEKS                       R15 R1 K69 ["uploadFee"]
      526 MOVE                             R16 R5
      527 GETTABLEKS                       R17 R1 K70 ["PublishService"]
      529 GETTABLEKS                       R17 R17 K67 ["publishService"]
      531 GETTABLEKS                       R19 R1 K98 ["groupBundlesUploadEnabledForUser"]
      533 JUMPIFNOT                        R19 ; [+2]
      534 MOVE                             R18 R3
      535 JUMP                             ; [+1]
      536 LOADNIL                          R18
      537 MOVE                             R19 R6
      538 CALL                             R7 12 0
      539 RETURN                           R0 0
      540 GETUPVAL                         R5 9
      541 GETTABLEKS                       R5 R5 K33 ["isMarketplaceAsset"]
      543 GETTABLEKS                       R6 R1 K17 ["assetTypeEnum"]
      545 CALL                             R5 1 1
      546 JUMPIFNOT                        R5 ; [+30]
      547 GETUPVAL                         R5 10
      548 GETTABLEKS                       R7 R1 K58 ["currentTab"]
      550 NAMECALL                         R5 R5 K59 ["isOverride"]
      552 CALL                             R5 2 1
      553 JUMPIFNOT                        R5 ; [+23]
      554 GETTABLEKS                       R5 R1 K99 ["overrideAsset"]
      556 GETTABLEKS                       R6 R1 K21 ["Network"]
      558 GETTABLEKS                       R6 R6 K22 ["networkInterface"]
      560 GETTABLEKS                       R7 R2 K61 ["overrideAssetId"]
      562 GETTABLEKS                       R8 R1 K17 ["assetTypeEnum"]
      564 GETTABLEKS                       R8 R8 K77 ["Name"]
      566 GETTABLEKS                       R9 R1 K50 ["instances"]
      568 GETUPVAL                         R11 16
      569 CALL                             R11 0 1
      570 JUMPIFNOT                        R11 ; [+3]
      571 GETTABLEKS                       R10 R1 K84 ["Localization"]
      573 JUMP                             ; [+1]
      574 LOADNIL                          R10
      575 CALL                             R5 5 0
      576 RETURN                           R0 0
      577 GETTABLEKS                       R5 R1 K100 ["uploadMarketplaceItem"]
      579 DUPTABLE                         R6 K102 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      580 GETTABLEKS                       R7 R1 K21 ["Network"]
      582 GETTABLEKS                       R7 R7 K22 ["networkInterface"]
      584 SETTABLEKS                       R7 R6 K22 ["networkInterface"]
      586 GETTABLEKS                       R7 R1 K17 ["assetTypeEnum"]
      588 SETTABLEKS                       R7 R6 K17 ["assetTypeEnum"]
      590 GETTABLEKS                       R7 R2 K24 ["name"]
      592 SETTABLEKS                       R7 R6 K24 ["name"]
      594 GETTABLEKS                       R8 R2 K26 ["description"]
      596 ORK                              R7 R8 K25 [""]
      597 SETTABLEKS                       R7 R6 K26 ["description"]
      599 GETTABLEKS                       R7 R2 K34 ["copyOn"]
      601 SETTABLEKS                       R7 R6 K34 ["copyOn"]
      603 GETTABLEKS                       R7 R2 K38 ["commentOn"]
      605 SETTABLEKS                       R7 R6 K38 ["commentOn"]
      607 SETTABLEKS                       R3 R6 K3 ["groupId"]
      609 GETTABLEKS                       R7 R1 K50 ["instances"]
      611 SETTABLEKS                       R7 R6 K50 ["instances"]
      613 JUMPIFNOT                        R4 ; [+2]
      614 LOADB                            R7 1
      615 JUMP                             ; [+1]
      616 LOADNIL                          R7
      617 SETTABLEKS                       R7 R6 K101 ["isMarketplaceModelsAsPackagesEnabled"]
      619 GETTABLEKS                       R7 R2 K27 ["status"]
      621 SETTABLEKS                       R7 R6 K39 ["saleStatus"]
      623 GETTABLEKS                       R7 R2 K29 ["price"]
      625 SETTABLEKS                       R7 R6 K29 ["price"]
      627 GETTABLEKS                       R7 R2 K41 ["iconFile"]
      629 SETTABLEKS                       R7 R6 K41 ["iconFile"]
      631 GETTABLEKS                       R7 R2 K37 ["assetMediaUpdateData"]
      633 SETTABLEKS                       R7 R6 K37 ["assetMediaUpdateData"]
      635 GETTABLEKS                       R8 R1 K46 ["fiatProduct"]
      637 JUMPIFNOT                        R8 ; [+5]
      638 GETTABLEKS                       R7 R1 K46 ["fiatProduct"]
      640 GETTABLEKS                       R7 R7 K44 ["basePrice"]
      642 JUMP                             ; [+1]
      643 LOADNIL                          R7
      644 SETTABLEKS                       R7 R6 K44 ["basePrice"]
      646 GETUPVAL                         R8 16
      647 CALL                             R8 0 1
      648 JUMPIFNOT                        R8 ; [+3]
      649 GETTABLEKS                       R7 R1 K84 ["Localization"]
      651 JUMP                             ; [+1]
      652 LOADNIL                          R7
      653 CALL                             R5 2 0
      654 RETURN                           R0 0

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
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U16
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          UPVAL U1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K1 ["changeTable"]
       28 MOVE                             R5 R4
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETIMPORT                        R6 K3 [next]
       32 MOVE                             R7 R4
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKNIL                  R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K0 ["props"]
       41 GETTABLEKS                       R6 R6 K4 ["resetUploadResult"]
       43 CALL                             R6 0 0
       44 GETUPVAL                         R6 0
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+287]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K5 ["state"]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       53 GETTABLEKS                       R7 R7 K7 ["DOWNLOAD_FLOW"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K0 ["props"]
       58 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       60 JUMPIFNOTEQ                      R7 R8 ; [+16]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K0 ["props"]
       65 GETTABLEKS                       R7 R7 K9 ["dispatchDownloadFlow"]
       67 MOVE                             R8 R0
       68 GETTABLEKS                       R9 R6 K10 ["overrideAssetId"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K0 ["props"]
       73 GETTABLEKS                       R10 R10 K11 ["onClose"]
       75 CALL                             R7 3 0
       76 JUMP                             ; [+259]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
       80 GETTABLEKS                       R7 R7 K12 ["EDIT_FLOW"]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K0 ["props"]
       85 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
       87 JUMPIFNOTEQ                      R7 R8 ; [+76]
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K0 ["props"]
       92 GETTABLEKS                       R7 R7 K13 ["dispatchEditFlow"]
       94 DUPTABLE                         R8 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R9 R9 K0 ["props"]
       98 GETTABLEKS                       R9 R9 K29 ["Network"]
      100 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      102 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R9 R9 K0 ["props"]
      107 GETTABLEKS                       R9 R9 K30 ["IXP"]
      109 SETTABLEKS                       R9 R8 K15 ["ixp"]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R9 R9 K0 ["props"]
      114 GETTABLEKS                       R9 R9 K16 ["assetId"]
      116 SETTABLEKS                       R9 R8 K16 ["assetId"]
      118 GETTABLEKS                       R9 R6 K16 ["assetId"]
      120 SETTABLEKS                       R9 R8 K17 ["stateAssetId"]
      122 GETTABLEKS                       R9 R6 K18 ["name"]
      124 SETTABLEKS                       R9 R8 K18 ["name"]
      126 GETTABLEKS                       R9 R6 K19 ["description"]
      128 SETTABLEKS                       R9 R8 K19 ["description"]
      130 GETTABLEKS                       R9 R6 K20 ["price"]
      132 SETTABLEKS                       R9 R8 K20 ["price"]
      134 GETTABLEKS                       R9 R6 K21 ["status"]
      136 SETTABLEKS                       R9 R8 K21 ["status"]
      138 GETTABLEKS                       R9 R6 K22 ["copyOn"]
      140 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      142 GETTABLEKS                       R9 R6 K23 ["copyChanged"]
      144 SETTABLEKS                       R9 R8 K23 ["copyChanged"]
      146 GETTABLEKS                       R9 R6 K24 ["commentOn"]
      148 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      150 GETTABLEKS                       R9 R6 K25 ["isAssetPublic"]
      152 SETTABLEKS                       R9 R8 K25 ["isAssetPublic"]
      154 GETTABLEKS                       R9 R6 K26 ["iconFile"]
      156 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      158 GETTABLEKS                       R9 R6 K27 ["assetMediaUpdateData"]
      160 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      162 CALL                             R7 1 0
      163 JUMP                             ; [+172]
      164 GETUPVAL                         R7 6
      165 GETTABLEKS                       R7 R7 K6 ["FLOW_TYPE"]
      167 GETTABLEKS                       R7 R7 K31 ["UPLOAD_FLOW"]
      169 GETUPVAL                         R8 1
      170 GETTABLEKS                       R8 R8 K0 ["props"]
      172 GETTABLEKS                       R8 R8 K8 ["screenFlowType"]
      174 JUMPIFNOTEQ                      R7 R8 ; [+161]
      176 GETUPVAL                         R7 11
      177 GETUPVAL                         R9 1
      178 GETTABLEKS                       R9 R9 K0 ["props"]
      180 GETTABLEKS                       R9 R9 K32 ["assetTypeEnum"]
      182 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      184 GETTABLEKS                       R11 R6 K34 ["dataSharingToggled"]
      186 NAMECALL                         R7 R7 K35 ["getDataSharingLicenseTypes"]
      188 CALL                             R7 4 1
      189 GETUPVAL                         R8 1
      190 GETTABLEKS                       R8 R8 K0 ["props"]
      192 GETTABLEKS                       R8 R8 K36 ["dispatchUploadFlow"]
      194 DUPTABLE                         R9 K43 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled", "publishOnApprovalCreationContext"}]
      195 GETUPVAL                         R10 1
      196 GETTABLEKS                       R10 R10 K0 ["props"]
      198 GETTABLEKS                       R10 R10 K29 ["Network"]
      200 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      202 SETTABLEKS                       R10 R9 K14 ["networkInterface"]
      204 GETUPVAL                         R10 1
      205 GETTABLEKS                       R10 R10 K0 ["props"]
      207 GETTABLEKS                       R10 R10 K44 ["Localization"]
      209 SETTABLEKS                       R10 R9 K37 ["localization"]
      211 GETUPVAL                         R10 1
      212 GETTABLEKS                       R10 R10 K0 ["props"]
      214 GETTABLEKS                       R10 R10 K45 ["PublishService"]
      216 GETTABLEKS                       R10 R10 K38 ["publishService"]
      218 SETTABLEKS                       R10 R9 K38 ["publishService"]
      220 GETUPVAL                         R10 1
      221 GETTABLEKS                       R10 R10 K0 ["props"]
      223 GETTABLEKS                       R10 R10 K30 ["IXP"]
      225 SETTABLEKS                       R10 R9 K15 ["ixp"]
      227 GETUPVAL                         R10 1
      228 GETTABLEKS                       R10 R10 K0 ["props"]
      230 GETTABLEKS                       R10 R10 K16 ["assetId"]
      232 SETTABLEKS                       R10 R9 K16 ["assetId"]
      234 GETUPVAL                         R11 1
      235 GETTABLEKS                       R11 R11 K0 ["props"]
      237 GETTABLEKS                       R11 R11 K39 ["groupId"]
      239 JUMPIFNOT                        R11 ; [+16]
      240 GETUPVAL                         R11 1
      241 GETTABLEKS                       R11 R11 K0 ["props"]
      243 GETTABLEKS                       R11 R11 K39 ["groupId"]
      245 GETUPVAL                         R12 2
      246 GETTABLEKS                       R12 R12 K46 ["None"]
      248 JUMPIFEQ                         R11 R12 ; [+7]
      250 GETUPVAL                         R10 1
      251 GETTABLEKS                       R10 R10 K0 ["props"]
      253 GETTABLEKS                       R10 R10 K39 ["groupId"]
      255 JUMP                             ; [+1]
      256 LOADNIL                          R10
      257 SETTABLEKS                       R10 R9 K39 ["groupId"]
      259 GETTABLEKS                       R10 R6 K18 ["name"]
      261 SETTABLEKS                       R10 R9 K18 ["name"]
      263 GETTABLEKS                       R10 R6 K19 ["description"]
      265 SETTABLEKS                       R10 R9 K19 ["description"]
      267 GETTABLEKS                       R10 R6 K10 ["overrideAssetId"]
      269 SETTABLEKS                       R10 R9 K10 ["overrideAssetId"]
      271 GETTABLEKS                       R10 R6 K22 ["copyOn"]
      273 SETTABLEKS                       R10 R9 K22 ["copyOn"]
      275 GETTABLEKS                       R10 R6 K24 ["commentOn"]
      277 SETTABLEKS                       R10 R9 K24 ["commentOn"]
      279 GETTABLEKS                       R10 R6 K21 ["status"]
      281 SETTABLEKS                       R10 R9 K21 ["status"]
      283 GETTABLEKS                       R10 R6 K20 ["price"]
      285 SETTABLEKS                       R10 R9 K20 ["price"]
      287 GETTABLEKS                       R10 R6 K26 ["iconFile"]
      289 SETTABLEKS                       R10 R9 K26 ["iconFile"]
      291 GETTABLEKS                       R10 R6 K40 ["selectedColor"]
      293 SETTABLEKS                       R10 R9 K40 ["selectedColor"]
      295 GETTABLEKS                       R10 R6 K27 ["assetMediaUpdateData"]
      297 SETTABLEKS                       R10 R9 K27 ["assetMediaUpdateData"]
      299 SETTABLEKS                       R7 R9 K41 ["dataSharingLicenseTypes"]
      301 GETTABLEKS                       R10 R6 K33 ["dataSharingEnabled"]
      303 SETTABLEKS                       R10 R9 K33 ["dataSharingEnabled"]
      305 GETTABLEKS                       R10 R6 K34 ["dataSharingToggled"]
      307 SETTABLEKS                       R10 R9 K34 ["dataSharingToggled"]
      309 GETUPVAL                         R10 8
      310 GETTABLEKS                       R10 R10 K47 ["getPublishOnApprovalCreationContext"]
      312 GETTABLEKS                       R11 R6 K48 ["publishOnApprovalToggled"]
      314 GETUPVAL                         R12 1
      315 GETTABLEKS                       R12 R12 K0 ["props"]
      317 GETTABLEKS                       R12 R12 K49 ["hasPublishingPreferences"]
      319 GETUPVAL                         R13 1
      320 GETTABLEKS                       R13 R13 K0 ["props"]
      322 GETTABLEKS                       R13 R13 K50 ["hasPublishingFeePreview"]
      324 GETUPVAL                         R14 1
      325 GETTABLEKS                       R14 R14 K0 ["props"]
      327 GETTABLEKS                       R14 R14 K51 ["publishingFeePreview"]
      329 CALL                             R10 4 1
      330 SETTABLEKS                       R10 R9 K42 ["publishOnApprovalCreationContext"]
      332 CALL                             R8 1 0
      333 JUMP                             ; [+2]
      334 MOVE                             R6 R1
      335 CALL                             R6 0 0
      336 JUMPIFNOT                        R5 ; [+43]
      337 MOVE                             R6 R2
      338 MOVE                             R7 R4
      339 CALL                             R6 1 0
      340 GETUPVAL                         R6 1
      341 GETTABLEKS                       R6 R6 K0 ["props"]
      343 GETTABLEKS                       R6 R6 K52 ["isPackageAsset"]
      345 JUMPIFNOT                        R6 ; [+34]
      346 GETUPVAL                         R6 1
      347 GETTABLEKS                       R6 R6 K0 ["props"]
      349 GETTABLEKS                       R6 R6 K53 ["assetConfigData"]
      351 GETTABLEKS                       R7 R6 K54 ["Id"]
      353 GETTABLEKS                       R8 R4 K55 ["VersionItemSelect"]
      355 JUMPIFNOT                        R8 ; [+3]
      356 GETTABLEKS                       R9 R4 K55 ["VersionItemSelect"]
      358 GETTABLEN                        R8 R9 1
      359 JUMPIFNOT                        R7 ; [+20]
      360 GETUPVAL                         R9 1
      361 GETTABLEKS                       R9 R9 K0 ["props"]
      363 GETTABLEKS                       R9 R9 K56 ["dispatchPutPackagePermissionsRequest"]
      365 GETUPVAL                         R10 1
      366 GETTABLEKS                       R10 R10 K0 ["props"]
      368 GETTABLEKS                       R10 R10 K29 ["Network"]
      370 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      372 MOVE                             R11 R7
      373 MOVE                             R12 R8
      374 GETUPVAL                         R13 1
      375 GETTABLEKS                       R13 R13 K0 ["props"]
      377 GETTABLEKS                       R13 R13 K44 ["Localization"]
      379 CALL                             R9 4 0
      380 RETURN                           R0 0

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
       24 DUPTABLE                         R3 K9 [{["name"], ["showNameRequiredError"] = False}]
       25 SETTABLEKS                       R0 R3 K6 ["name"]
       27 NAMECALL                         R1 R1 K10 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

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
       24 DUPTABLE                         R3 K9 [{["description"], ["showDescriptionRequiredError"] = False}]
       25 SETTABLEKS                       R0 R3 K6 ["description"]
       27 NAMECALL                         R1 R1 K10 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 DUPTABLE                         R0 K5 [{"publishOnApprovalEnabled", "publishOnApprovalToggled", "hasPublishingPreferences", "hasPublishingFeePreview", "publishingFeePreview"}]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K6 ["canOfferPublishOnApproval"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K0 ["publishOnApprovalEnabled"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K7 ["state"]
       15 GETTABLEKS                       R1 R1 K1 ["publishOnApprovalToggled"]
       17 SETTABLEKS                       R1 R0 K1 ["publishOnApprovalToggled"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K8 ["props"]
       22 GETTABLEKS                       R1 R1 K2 ["hasPublishingPreferences"]
       24 SETTABLEKS                       R1 R0 K2 ["hasPublishingPreferences"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K8 ["props"]
       29 GETTABLEKS                       R1 R1 K3 ["hasPublishingFeePreview"]
       31 SETTABLEKS                       R1 R0 K3 ["hasPublishingFeePreview"]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K8 ["props"]
       36 GETTABLEKS                       R1 R1 K4 ["publishingFeePreview"]
       38 SETTABLEKS                       R1 R0 K4 ["publishingFeePreview"]
       40 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["publishingPreferencesGeneration"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetTypeEnum"]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_42]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_44:
        0 DUPTABLE                         R1 K1 [{"publishOnApprovalToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["publishOnApprovalToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["publishOnApprovalToggled"]
        6 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPCLOSURE                       R2 K0 [PROTO_44]
        6 NAMECALL                         R0 R0 K1 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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
      125 GETUPVAL                         R3 2
      126 GETTABLEKS                       R3 R3 K39 ["getThumbnailSkinColor"]
      128 GETTABLEKS                       R4 R0 K40 ["props"]
      130 GETTABLEKS                       R4 R4 K41 ["Plugin"]
      132 NAMECALL                         R4 R4 K42 ["get"]
      134 CALL                             R4 1 -1
      135 CALL                             R3 -1 1
      136 SETTABLEKS                       R3 R2 K43 ["selectedColor"]
      138 LOADB                            R3 0
      139 SETTABLEKS                       R3 R2 K44 ["showColorPickerRequiredError"]
      141 LOADB                            R3 0
      142 SETTABLEKS                       R3 R2 K45 ["showNameRequiredError"]
      144 LOADB                            R3 0
      145 SETTABLEKS                       R3 R2 K46 ["showDescriptionRequiredError"]
      147 SETTABLEKS                       R2 R0 K47 ["state"]
      149 GETTABLEKS                       R2 R0 K47 ["state"]
      151 GETUPVAL                         R3 2
      152 GETTABLEKS                       R3 R3 K48 ["hasAllowedAssetTypesForRelease"]
      154 GETTABLEKS                       R4 R0 K40 ["props"]
      156 GETTABLEKS                       R4 R4 K49 ["allowedAssetTypesForRelease"]
      158 CALL                             R3 1 1
      159 JUMPIFNOT                        R3 ; [+9]
      160 GETUPVAL                         R4 2
      161 GETTABLEKS                       R4 R4 K50 ["isBuyableMarketplaceAsset"]
      163 GETTABLEKS                       R5 R0 K40 ["props"]
      165 GETTABLEKS                       R5 R5 K51 ["assetTypeEnum"]
      167 CALL                             R4 1 1
      168 NOT                              R3 R4
      169 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
      171 GETUPVAL                         R2 2
      172 GETTABLEKS                       R2 R2 K52 ["isMarketplaceAsset"]
      174 GETTABLEKS                       R3 R1 K51 ["assetTypeEnum"]
      176 CALL                             R2 1 1
      177 JUMPIFNOT                        R2 ; [+9]
      178 GETTABLEKS                       R2 R0 K47 ["state"]
      180 GETUPVAL                         R3 3
      181 GETTABLEKS                       R3 R3 K53 ["ASSET_STATUS"]
      183 GETTABLEKS                       R3 R3 K54 ["OffSale"]
      185 SETTABLEKS                       R3 R2 K12 ["status"]
      187 LOADNIL                          R2
      188 SETTABLEKS                       R2 R0 K55 ["nameString"]
      190 LOADNIL                          R2
      191 SETTABLEKS                       R2 R0 K56 ["descriptionString"]
      193 LOADB                            R2 0
      194 SETTABLEKS                       R2 R0 K57 ["init"]
      196 NEWCLOSURE                       R2 P0
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R2 R0 K58 ["onDialogAccepted"]
      200 NEWCLOSURE                       R2 P1
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R2 R0 K59 ["onDialogCanceled"]
      204 NEWCLOSURE                       R2 P2
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R2 R0 K60 ["onAssetPublishDialogAccepted"]
      208 NEWCLOSURE                       R2 P3
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R2 R0 K61 ["onAssetPublishDialogCanceled"]
      212 GETUPVAL                         R3 0
      213 CALL                             R3 0 1
      214 JUMPIFNOT                        R3 ; [+2]
      215 LOADNIL                          R2
      216 JUMP                             ; [+2]
      217 NEWCLOSURE                       R2 P4
      218 CAPTURE                          VAL R0
      219 SETTABLEKS                       R2 R0 K62 ["onAssetPublishPayAndConfirmAccepted"]
      221 GETUPVAL                         R3 0
      222 CALL                             R3 0 1
      223 JUMPIFNOT                        R3 ; [+2]
      224 LOADNIL                          R2
      225 JUMP                             ; [+2]
      226 NEWCLOSURE                       R2 P5
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R2 R0 K63 ["onAssetPublishPayAndConfirmCanceled"]
      230 NEWCLOSURE                       R2 P6
      231 CAPTURE                          VAL R0
      232 SETTABLEKS                       R2 R0 K64 ["tryMakeAssetsPublic"]
      234 NEWCLOSURE                       R2 P7
      235 CAPTURE                          VAL R0
      236 CAPTURE                          UPVAL U2
      237 CAPTURE                          UPVAL U4
      238 CAPTURE                          UPVAL U3
      239 CAPTURE                          UPVAL U5
      240 CAPTURE                          UPVAL U6
      241 CAPTURE                          UPVAL U0
      242 SETTABLEKS                       R2 R0 K65 ["tryPublishWithConfirmDialog"]
      244 NEWCLOSURE                       R2 P8
      245 CAPTURE                          UPVAL U7
      246 CAPTURE                          VAL R0
      247 CAPTURE                          UPVAL U8
      248 CAPTURE                          UPVAL U9
      249 CAPTURE                          UPVAL U10
      250 CAPTURE                          UPVAL U11
      251 CAPTURE                          UPVAL U3
      252 CAPTURE                          UPVAL U12
      253 CAPTURE                          UPVAL U2
      254 CAPTURE                          UPVAL U13
      255 CAPTURE                          UPVAL U14
      256 CAPTURE                          UPVAL U15
      257 CAPTURE                          UPVAL U1
      258 CAPTURE                          UPVAL U16
      259 CAPTURE                          UPVAL U17
      260 CAPTURE                          UPVAL U18
      261 CAPTURE                          VAL R1
      262 SETTABLEKS                       R2 R0 K66 ["tryPublish"]
      264 NEWCLOSURE                       R2 P9
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R1
      267 CAPTURE                          UPVAL U3
      268 SETTABLEKS                       R2 R0 K67 ["tryCancel"]
      270 NEWCLOSURE                       R2 P10
      271 CAPTURE                          VAL R0
      272 SETTABLEKS                       R2 R0 K68 ["tryCancelNoYield"]
      274 NEWCLOSURE                       R2 P11
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R2 R0 K69 ["tryCancelWithYield"]
      278 NEWCLOSURE                       R2 P12
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R2 R0 K70 ["onMessageBoxClosed"]
      282 NEWCLOSURE                       R2 P13
      283 CAPTURE                          UPVAL U19
      284 CAPTURE                          VAL R0
      285 CAPTURE                          UPVAL U20
      286 SETTABLEKS                       R2 R0 K71 ["tryCloseAssetConfig"]
      288 NEWCLOSURE                       R2 P14
      289 CAPTURE                          VAL R0
      290 NEWCLOSURE                       R3 P15
      291 CAPTURE                          VAL R0
      292 SETTABLEKS                       R3 R0 K72 ["onNameChange"]
      294 NEWCLOSURE                       R3 P16
      295 CAPTURE                          VAL R0
      296 SETTABLEKS                       R3 R0 K73 ["onDescChange"]
      298 NEWCLOSURE                       R3 P17
      299 CAPTURE                          VAL R0
      300 SETTABLEKS                       R3 R0 K74 ["onStatusChange"]
      302 NEWCLOSURE                       R3 P18
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R3 R0 K75 ["onPriceChange"]
      306 LOADN                            R3 0
      307 SETTABLEKS                       R3 R0 K76 ["publishingPreferencesGeneration"]
      309 NEWCLOSURE                       R3 P19
      310 CAPTURE                          UPVAL U6
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R3 R0 K77 ["clearPublishOnApprovalOptIn"]
      314 NEWCLOSURE                       R3 P20
      315 CAPTURE                          UPVAL U6
      316 CAPTURE                          UPVAL U3
      317 CAPTURE                          VAL R0
      318 CAPTURE                          UPVAL U2
      319 CAPTURE                          UPVAL U17
      320 SETTABLEKS                       R3 R0 K78 ["canOfferPublishOnApproval"]
      322 NEWCLOSURE                       R3 P21
      323 CAPTURE                          UPVAL U6
      324 CAPTURE                          VAL R0
      325 SETTABLEKS                       R3 R0 K79 ["getPublishInfo"]
      327 NEWCLOSURE                       R3 P22
      328 CAPTURE                          UPVAL U6
      329 CAPTURE                          VAL R0
      330 SETTABLEKS                       R3 R0 K80 ["fetchPublishingPreferences"]
      332 NEWCLOSURE                       R3 P23
      333 CAPTURE                          UPVAL U6
      334 CAPTURE                          VAL R0
      335 SETTABLEKS                       R3 R0 K81 ["fetchPublishingFeePreview"]
      337 NEWCLOSURE                       R3 P24
      338 CAPTURE                          VAL R0
      339 CAPTURE                          UPVAL U8
      340 SETTABLEKS                       R3 R0 K82 ["onAccessChange"]
      342 NEWCLOSURE                       R3 P25
      343 CAPTURE                          VAL R0
      344 SETTABLEKS                       R3 R0 K83 ["onDataConsentToggleClick"]
      346 NEWCLOSURE                       R3 P26
      347 CAPTURE                          UPVAL U6
      348 CAPTURE                          VAL R0
      349 SETTABLEKS                       R3 R0 K84 ["onPublishToMarketplaceToggleClick"]
      351 NEWCLOSURE                       R3 P27
      352 CAPTURE                          VAL R0
      353 SETTABLEKS                       R3 R0 K85 ["toggleCopy"]
      355 NEWCLOSURE                       R3 P28
      356 CAPTURE                          VAL R0
      357 SETTABLEKS                       R3 R0 K86 ["toggleComment"]
      359 NEWCLOSURE                       R3 P29
      360 CAPTURE                          VAL R0
      361 SETTABLEKS                       R3 R0 K87 ["toggleDeleteLocal"]
      363 NEWCLOSURE                       R3 P30
      364 CAPTURE                          VAL R0
      365 CAPTURE                          UPVAL U8
      366 SETTABLEKS                       R3 R0 K88 ["onAnimationSelectionChanged"]
      368 NEWCLOSURE                       R3 P31
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R3 R0 K89 ["onanimationSectionValidityChanged"]
      372 NEWCLOSURE                       R3 P32
      373 CAPTURE                          VAL R0
      374 CAPTURE                          UPVAL U2
      375 SETTABLEKS                       R3 R0 K90 ["onSelectedColorChange"]
      377 NEWCLOSURE                       R3 P33
      378 CAPTURE                          VAL R0
      379 CAPTURE                          UPVAL U19
      380 CAPTURE                          UPVAL U20
      381 SETTABLEKS                       R3 R0 K91 ["versionsOnDescClicked"]
      383 NEWCLOSURE                       R3 P34
      384 CAPTURE                          VAL R0
      385 CAPTURE                          UPVAL U21
      386 CAPTURE                          UPVAL U22
      387 SETTABLEKS                       R3 R0 K92 ["versionsSaveInput"]
      389 NEWCLOSURE                       R3 P35
      390 CAPTURE                          VAL R0
      391 CAPTURE                          UPVAL U1
      392 SETTABLEKS                       R3 R0 K93 ["versionsSetStates"]
      394 NEWCLOSURE                       R3 P36
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R3 R0 K94 ["versionsCloseInput"]
      398 NEWCLOSURE                       R3 P37
      399 CAPTURE                          VAL R0
      400 SETTABLEKS                       R3 R0 K95 ["setVersionError"]
      402 NEWCLOSURE                       R3 P38
      403 CAPTURE                          VAL R0
      404 SETTABLEKS                       R3 R0 K96 ["versionsSetPreviousInput"]
      406 NEWCLOSURE                       R3 P39
      407 CAPTURE                          VAL R0
      408 SETTABLEKS                       R3 R0 K97 ["versionsOnPageChange"]
      410 NEWCLOSURE                       R3 P40
      411 CAPTURE                          VAL R0
      412 CAPTURE                          VAL R1
      413 SETTABLEKS                       R3 R0 K98 ["onTabSelect"]
      415 NEWCLOSURE                       R3 P41
      416 CAPTURE                          VAL R0
      417 SETTABLEKS                       R3 R0 K99 ["onOverrideAssetSelected"]
      419 NEWCLOSURE                       R3 P42
      420 CAPTURE                          UPVAL U2
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R3 R0 K100 ["chooseThumbnail"]
      424 NEWCLOSURE                       R3 P43
      425 CAPTURE                          VAL R0
      426 SETTABLEKS                       R3 R0 K101 ["onSharingChanged"]
      428 NEWCLOSURE                       R3 P44
      429 CAPTURE                          VAL R0
      430 SETTABLEKS                       R3 R0 K102 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      432 NEWCLOSURE                       R3 P45
      433 CAPTURE                          VAL R0
      434 CAPTURE                          UPVAL U23
      435 SETTABLEKS                       R3 R0 K103 ["getPublishingRequirements"]
      437 NEWCLOSURE                       R3 P46
      438 CAPTURE                          VAL R0
      439 SETTABLEKS                       R3 R0 K104 ["onAdditionalImagesChanged"]
      441 NEWCLOSURE                       R3 P47
      442 CAPTURE                          UPVAL U2
      443 CAPTURE                          VAL R0
      444 SETTABLEKS                       R3 R0 K105 ["isValidCatalogAsset"]
      446 NEWCLOSURE                       R3 P48
      447 CAPTURE                          VAL R0
      448 SETTABLEKS                       R3 R0 K106 ["validVersionDescriptions"]
      450 NEWCLOSURE                       R3 P49
      451 CAPTURE                          VAL R0
      452 CAPTURE                          UPVAL U1
      453 CAPTURE                          UPVAL U24
      454 SETTABLEKS                       R3 R0 K107 ["getMessageBoxProps"]
      456 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_80:
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

PROTO_81:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_82:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_83:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_84:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_85:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_86:
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
      146 DUPCLOSURE                       R8 K24 [PROTO_81]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_82]
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

PROTO_87:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_88:
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

PROTO_89:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"showColorPickerRequiredError", "showNameRequiredError", "showDescriptionRequiredError"}]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+2]
        4 MOVE                             R4 R0
        5 JUMP                             ; [+1]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K0 ["showColorPickerRequiredError"]
        9 MOVE                             R4 R0
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETUPVAL                         R7 2
       12 ORK                              R6 R7 K4 [""]
       13 FASTCALL1                        TOSTRING R6 ; [+2]
       14 GETIMPORT                        R5 K6 [tostring]
       16 CALL                             R5 1 1
       17 JUMPIFEQKS                       R5 K4 [""] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K1 ["showNameRequiredError"]
       23 MOVE                             R4 R0
       24 JUMPIFNOT                        R4 ; [+20]
       25 LOADB                            R4 0
       26 GETUPVAL                         R7 3
       27 ORK                              R6 R7 K4 [""]
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K6 [tostring]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K4 [""] ; [+12]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K7 ["isCatalogAsset"]
       37 GETUPVAL                         R5 5
       38 CALL                             R4 1 1
       39 JUMPIF                           R4 ; [+5]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["isUGCBundleType"]
       43 GETUPVAL                         R5 5
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K2 ["showDescriptionRequiredError"]
       47 NAMECALL                         R1 R1 K9 ["setState"]
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

PROTO_92:
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
      182 GETTABLEKS                       R39 R1 K48 ["animationPackType"]
      184 JUMPIFEQKNIL                     R39 ; [+8]
      186 GETUPVAL                         R38 5
      187 GETTABLEKS                       R38 R38 K49 ["getAvatarAnimationPartThumbnailUri"]
      189 GETTABLEKS                       R39 R1 K48 ["animationPackType"]
      191 CALL                             R38 1 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R38
      194 GETUPVAL                         R39 1
      195 MOVE                             R41 R25
      196 MOVE                             R42 R24
      197 GETTABLEKS                       R43 R0 K0 ["props"]
      199 GETTABLEKS                       R43 R43 K42 ["isPackageAsset"]
      201 MOVE                             R44 R10
      202 NAMECALL                         R39 R39 K50 ["getAssetconfigContent"]
      204 CALL                             R39 5 1
      205 NAMECALL                         R40 R0 K51 ["isLoading"]
      207 CALL                             R40 1 1
      208 GETUPVAL                         R41 6
      209 GETTABLEKS                       R41 R41 K52 ["checkCanSave"]
      211 MOVE                             R42 R26
      212 MOVE                             R43 R8
      213 MOVE                             R44 R9
      214 MOVE                             R45 R6
      215 MOVE                             R46 R25
      216 MOVE                             R47 R24
      217 MOVE                             R48 R23
      218 GETTABLEKS                       R49 R0 K53 ["isValidCatalogAsset"]
      220 CALL                             R49 0 1
      221 GETTABLEKS                       R50 R0 K54 ["validVersionDescriptions"]
      223 CALL                             R50 0 -1
      224 CALL                             R41 -1 1
      225 JUMPIFNOT                        R41 ; [+1]
      226 NOT                              R41 R40
      227 GETUPVAL                         R42 2
      228 CALL                             R42 0 1
      229 JUMPIFNOT                        R42 ; [+7]
      230 MOVE                             R42 R41
      231 JUMPIFNOT                        R42 ; [+3]
      232 GETTABLEKS                       R43 R1 K55 ["isAvatarItemDialogFlowEnabled"]
      234 NOT                              R42 R43
      235 MOVE                             R41 R42
      236 JUMP                             ; [+6]
      237 MOVE                             R42 R41
      238 JUMPIFNOT                        R42 ; [+3]
      239 GETTABLEKS                       R43 R2 K25 ["isShowRobuxSpendMessageBox"]
      241 NOT                              R42 R43
      242 MOVE                             R41 R42
      243 GETUPVAL                         R42 3
      244 GETTABLEKS                       R42 R42 K56 ["isMakeupAsset"]
      246 MOVE                             R43 R24
      247 CALL                             R42 1 1
      248 JUMPIFNOT                        R42 ; [+5]
      249 GETTABLEKS                       R42 R2 K57 ["selectedColor"]
      251 JUMPIFNOTEQKNIL                  R42 ; [+2]
      253 LOADB                            R41 0
      254 GETIMPORT                        R42 K61 [Enum.AssetType.Animation]
      256 JUMPIFNOTEQ                      R24 R42 ; [+6]
      258 GETTABLEKS                       R42 R1 K62 ["animationSectionValid"]
      260 JUMPIFNOTEQKB                    R42 FALSE ; [+2]
      262 LOADB                            R41 0
      263 GETUPVAL                         R43 7
      264 GETTABLEKS                       R43 R43 K64 ["SCROLLBAR_PADDING"]
      266 SUBRK                            R42 K63 [-240] R43
      267 GETTABLEKS                       R44 R1 K28 ["assetTypeEnum"]
      269 GETIMPORT                        R45 K66 [Enum.AssetType.Audio]
      271 JUMPIFEQ                         R44 R45 ; [+2]
      273 LOADB                            R43 0 +1
      274 LOADB                            R43 1
      275 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      277 GETIMPORT                        R46 K68 [Enum.AssetType.Video]
      279 JUMPIFEQ                         R45 R46 ; [+2]
      281 LOADB                            R44 0 +1
      282 LOADB                            R44 1
      283 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      285 GETIMPORT                        R47 K70 [Enum.AssetType.Model]
      287 JUMPIFEQ                         R46 R47 ; [+2]
      289 LOADB                            R45 0 +1
      290 LOADB                            R45 1
      291 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      293 GETIMPORT                        R48 K72 [Enum.AssetType.Plugin]
      295 JUMPIFEQ                         R47 R48 ; [+2]
      297 LOADB                            R46 0 +1
      298 LOADB                            R46 1
      299 LOADNIL                          R47
      300 LOADB                            R48 0
      301 GETTABLEKS                       R49 R1 K73 ["Localization"]
      303 LOADK                            R52 K74 ["General"]
      304 LOADK                            R53 K75 ["Proceed"]
      305 NAMECALL                         R50 R49 K76 ["getText"]
      307 CALL                             R50 3 1
      308 LOADK                            R53 K74 ["General"]
      309 LOADK                            R54 K77 ["GoBack"]
      310 NAMECALL                         R51 R49 K76 ["getText"]
      312 CALL                             R51 3 1
      313 LOADK                            R54 K78 ["AssetConfigSharing"]
      314 LOADK                            R55 K79 ["PublicConfirmationHeading"]
      315 NAMECALL                         R52 R49 K76 ["getText"]
      317 CALL                             R52 3 1
      318 LOADK                            R55 K78 ["AssetConfigSharing"]
      319 LOADK                            R56 K80 ["PublicConfirmationMessage"]
      320 NAMECALL                         R53 R49 K76 ["getText"]
      322 CALL                             R53 3 1
      323 LOADK                            R56 K78 ["AssetConfigSharing"]
      324 LOADK                            R57 K81 ["PublicConfirmationTitle"]
      325 NAMECALL                         R54 R49 K76 ["getText"]
      327 CALL                             R54 3 1
      328 GETTABLEKS                       R55 R2 K82 ["isConfirmationDialogEnabled"]
      330 GETTABLEKS                       R56 R2 K83 ["confirmationDialogKey"]
      332 LOADK                            R59 K84 ["AssetConfig"]
      333 LOADK                            R60 K85 ["PublishAssetDialogPublish"]
      334 NAMECALL                         R57 R49 K76 ["getText"]
      336 CALL                             R57 3 1
      337 LOADK                            R60 K74 ["General"]
      338 LOADK                            R61 K86 ["Cancel"]
      339 NAMECALL                         R58 R49 K76 ["getText"]
      341 CALL                             R58 3 1
      342 LOADK                            R61 K84 ["AssetConfig"]
      343 LOADK                            R62 K87 ["PublishAssetDialogDescription"]
      344 NAMECALL                         R59 R49 K76 ["getText"]
      346 CALL                             R59 3 1
      347 LOADK                            R62 K84 ["AssetConfig"]
      348 LOADK                            R63 K88 ["PublishAssetDialogHeading"]
      349 NAMECALL                         R60 R49 K76 ["getText"]
      351 CALL                             R60 3 1
      352 LOADK                            R63 K74 ["General"]
      353 LOADK                            R64 K89 ["RobloxStudio"]
      354 NAMECALL                         R61 R49 K76 ["getText"]
      356 CALL                             R61 3 1
      357 GETUPVAL                         R63 2
      358 CALL                             R63 0 1
      359 JUMPIFNOT                        R63 ; [+2]
      360 LOADNIL                          R62
      361 JUMP                             ; [+5]
      362 LOADK                            R64 K74 ["General"]
      363 LOADK                            R65 K89 ["RobloxStudio"]
      364 NAMECALL                         R62 R49 K76 ["getText"]
      366 CALL                             R62 3 1
      367 GETUPVAL                         R64 2
      368 CALL                             R64 0 1
      369 JUMPIFNOT                        R64 ; [+2]
      370 LOADNIL                          R63
      371 JUMP                             ; [+8]
      372 LOADK                            R65 K84 ["AssetConfig"]
      373 LOADK                            R66 K90 ["PayAndConfirmHeading"]
      374 DUPTABLE                         R67 K91 [{"name"}]
      375 SETTABLEKS                       R8 R67 K8 ["name"]
      377 NAMECALL                         R63 R49 K76 ["getText"]
      379 CALL                             R63 4 1
      380 GETTABLEKS                       R65 R1 K92 ["uploadFee"]
      382 JUMPIFNOT                        R65 ; [+3]
      383 GETTABLEKS                       R64 R1 K92 ["uploadFee"]
      385 JUMP                             ; [+1]
      386 LOADK                            R64 K7 [""]
      387 GETUPVAL                         R66 8
      388 CALL                             R66 0 1
      389 JUMPIFNOT                        R66 ; [+8]
      390 GETUPVAL                         R65 3
      391 GETTABLEKS                       R65 R65 K93 ["getPublishOnApprovalFee"]
      393 GETTABLEKS                       R66 R0 K94 ["getPublishInfo"]
      395 CALL                             R66 0 -1
      396 CALL                             R65 -1 1
      397 JUMP                             ; [+1]
      398 LOADN                            R65 0
      399 GETUPVAL                         R67 2
      400 CALL                             R67 0 1
      401 JUMPIFNOT                        R67 ; [+2]
      402 LOADNIL                          R66
      403 JUMP                             ; [+24]
      404 LOADN                            R67 0
      405 JUMPIFNOTLT                      R67 R65 ; [+11]
      407 GETUPVAL                         R66 3
      408 GETTABLEKS                       R66 R66 K95 ["getItemizedFeeDescription"]
      410 MOVE                             R67 R49
      411 GETTABLEKS                       R69 R1 K92 ["uploadFee"]
      413 ORK                              R68 R69 K96 [0]
      414 MOVE                             R69 R65
      415 CALL                             R66 3 1
      416 JUMP                             ; [+11]
      417 LOADK                            R68 K84 ["AssetConfig"]
      418 LOADK                            R69 K97 ["PayAndConfirmDescription"]
      419 DUPTABLE                         R70 K99 [{"amount"}]
      420 GETUPVAL                         R72 9
      421 MOVE                             R73 R64
      422 CONCAT                           R71 R72 R73
      423 SETTABLEKS                       R71 R70 K98 ["amount"]
      425 NAMECALL                         R66 R49 K76 ["getText"]
      427 CALL                             R66 4 1
      428 GETUPVAL                         R68 2
      429 CALL                             R68 0 1
      430 JUMPIFNOT                        R68 ; [+2]
      431 LOADNIL                          R67
      432 JUMP                             ; [+5]
      433 LOADK                            R69 K74 ["General"]
      434 LOADK                            R70 K100 ["PayAndSubmit"]
      435 NAMECALL                         R67 R49 K76 ["getText"]
      437 CALL                             R67 3 1
      438 GETTABLEKS                       R68 R2 K101 ["isPublishAssetsDialogEnabled"]
      440 JUMPIF                           R43 ; [+3]
      441 GETUPVAL                         R69 10
      442 JUMPIFNOT                        R69 ; [+3]
      443 JUMPIFNOT                        R44 ; [+2]
      444 NOT                              R47 R5
      445 JUMP                             ; [+2]
      446 JUMPIFNOT                        R45 ; [+1]
      447 LOADB                            R47 1
      448 JUMPIF                           R43 ; [+3]
      449 GETUPVAL                         R69 10
      450 JUMPIFNOT                        R69 ; [+2]
      451 JUMPIFNOT                        R44 ; [+1]
      452 LOADB                            R48 1
      453 JUMPIF                           R43 ; [+3]
      454 GETUPVAL                         R69 10
      455 JUMPIFNOT                        R69 ; [+2]
      456 JUMPIFNOT                        R44 ; [+1]
      457 MOVE                             R11 R17
      458 GETUPVAL                         R69 3
      459 GETTABLEKS                       R69 R69 K56 ["isMakeupAsset"]
      461 MOVE                             R70 R24
      462 CALL                             R69 1 1
      463 MOVE                             R70 R69
      464 JUMPIFNOT                        R70 ; [+6]
      465 GETTABLEKS                       R71 R2 K57 ["selectedColor"]
      467 JUMPIFEQKNIL                     R71 ; [+2]
      469 LOADB                            R70 0 +1
      470 LOADB                            R70 1
      471 GETUPVAL                         R71 11
      472 GETTABLEKS                       R71 R71 K102 ["createElement"]
      474 LOADK                            R72 K103 ["Frame"]
      475 DUPTABLE                         R73 K107 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      476 SETTABLEKS                       R4 R73 K3 ["Size"]
      478 GETTABLEKS                       R74 R3 K108 ["assetConfig"]
      480 GETTABLEKS                       R74 R74 K109 ["backgroundColor"]
      482 SETTABLEKS                       R74 R73 K105 ["BackgroundColor3"]
      484 DUPTABLE                         R74 K117 [{"UIListLayout", "AssetConfigMessageBox", "RobuxSpendConfirmationMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      485 GETUPVAL                         R75 11
      486 GETTABLEKS                       R75 R75 K102 ["createElement"]
      488 LOADK                            R76 K110 ["UIListLayout"]
      489 DUPTABLE                         R77 K123 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      490 GETIMPORT                        R78 K125 [Enum.FillDirection.Vertical]
      492 SETTABLEKS                       R78 R77 K118 ["FillDirection"]
      494 GETIMPORT                        R78 K127 [Enum.HorizontalAlignment.Left]
      496 SETTABLEKS                       R78 R77 K119 ["HorizontalAlignment"]
      498 GETIMPORT                        R78 K129 [Enum.VerticalAlignment.Bottom]
      500 SETTABLEKS                       R78 R77 K120 ["VerticalAlignment"]
      502 GETIMPORT                        R78 K131 [Enum.SortOrder.LayoutOrder]
      504 SETTABLEKS                       R78 R77 K121 ["SortOrder"]
      506 GETIMPORT                        R78 K134 [UDim.new]
      508 LOADN                            R79 0
      509 LOADN                            R80 0
      510 CALL                             R78 2 1
      511 SETTABLEKS                       R78 R77 K122 ["Padding"]
      513 CALL                             R75 2 1
      514 SETTABLEKS                       R75 R74 K110 ["UIListLayout"]
      516 MOVE                             R75 R20
      517 JUMPIFNOT                        R75 ; [+9]
      518 GETUPVAL                         R75 11
      519 GETTABLEKS                       R75 R75 K102 ["createElement"]
      521 GETUPVAL                         R76 12
      522 GETTABLEKS                       R77 R0 K135 ["getMessageBoxProps"]
      524 MOVE                             R78 R19
      525 CALL                             R77 1 -1
      526 CALL                             R75 -1 1
      527 SETTABLEKS                       R75 R74 K111 ["AssetConfigMessageBox"]
      529 GETUPVAL                         R76 2
      530 CALL                             R76 0 1
      531 JUMPIFNOT                        R76 ; [+2]
      532 LOADNIL                          R75
      533 JUMP                             ; [+28]
      534 MOVE                             R75 R21
      535 JUMPIFNOT                        R75 ; [+26]
      536 GETUPVAL                         R75 11
      537 GETTABLEKS                       R75 R75 K102 ["createElement"]
      539 GETUPVAL                         R76 13
      540 DUPTABLE                         R77 K144 [{"AcceptText", "CancelText", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      541 SETTABLEKS                       R67 R77 K136 ["AcceptText"]
      543 SETTABLEKS                       R58 R77 K137 ["CancelText"]
      545 SETTABLEKS                       R66 R77 K138 ["Description"]
      547 SETTABLEKS                       R21 R77 K139 ["Enabled"]
      549 SETTABLEKS                       R63 R77 K140 ["Heading"]
      551 GETTABLEKS                       R78 R0 K145 ["onAssetPublishPayAndConfirmAccepted"]
      553 SETTABLEKS                       R78 R77 K141 ["OnAccepted"]
      555 GETTABLEKS                       R78 R0 K146 ["onAssetPublishPayAndConfirmCanceled"]
      557 SETTABLEKS                       R78 R77 K142 ["OnCanceled"]
      559 SETTABLEKS                       R62 R77 K143 ["Title"]
      561 CALL                             R75 2 1
      562 SETTABLEKS                       R75 R74 K112 ["RobuxSpendConfirmationMessageBox"]
      564 GETUPVAL                         R76 2
      565 CALL                             R76 0 1
      566 JUMPIFNOT                        R76 ; [+32]
      567 GETTABLEKS                       R75 R1 K55 ["isAvatarItemDialogFlowEnabled"]
      569 JUMPIFNOT                        R75 ; [+30]
      570 GETUPVAL                         R75 11
      571 GETTABLEKS                       R75 R75 K102 ["createElement"]
      573 GETUPVAL                         R76 14
      574 DUPTABLE                         R77 K151 [{"OnUploadConfirmed", "UploadFee", "ItemName", "PublishingFee"}]
      575 NEWCLOSURE                       R78 P0
      576 CAPTURE                          VAL R0
      577 SETTABLEKS                       R78 R77 K147 ["OnUploadConfirmed"]
      579 GETTABLEKS                       R79 R1 K92 ["uploadFee"]
      581 ORK                              R78 R79 K7 [""]
      582 SETTABLEKS                       R78 R77 K148 ["UploadFee"]
      584 GETTABLEKS                       R79 R2 K8 ["name"]
      586 ORK                              R78 R79 K7 [""]
      587 SETTABLEKS                       R78 R77 K149 ["ItemName"]
      589 GETUPVAL                         R79 8
      590 CALL                             R79 0 1
      591 JUMPIFNOT                        R79 ; [+2]
      592 MOVE                             R78 R65
      593 JUMP                             ; [+1]
      594 LOADNIL                          R78
      595 SETTABLEKS                       R78 R77 K150 ["PublishingFee"]
      597 CALL                             R75 2 1
      598 JUMP                             ; [+1]
      599 LOADNIL                          R75
      600 SETTABLEKS                       R75 R74 K113 ["AvatarItemMessageBox"]
      602 JUMPIFNOT                        R68 ; [+27]
      603 GETUPVAL                         R75 11
      604 GETTABLEKS                       R75 R75 K102 ["createElement"]
      606 GETUPVAL                         R76 15
      607 DUPTABLE                         R77 K154 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      608 SETTABLEKS                       R57 R77 K136 ["AcceptText"]
      610 SETTABLEKS                       R58 R77 K137 ["CancelText"]
      612 SETTABLEKS                       R59 R77 K138 ["Description"]
      614 SETTABLEKS                       R68 R77 K139 ["Enabled"]
      616 SETTABLEKS                       R60 R77 K140 ["Heading"]
      618 GETTABLEKS                       R78 R0 K155 ["onAssetPublishDialogAccepted"]
      620 SETTABLEKS                       R78 R77 K141 ["OnAccepted"]
      622 GETTABLEKS                       R78 R0 K156 ["onAssetPublishDialogCanceled"]
      624 SETTABLEKS                       R78 R77 K142 ["OnCanceled"]
      626 SETTABLEKS                       R61 R77 K143 ["Title"]
      628 CALL                             R75 2 1
      629 JUMP                             ; [+1]
      630 LOADNIL                          R75
      631 SETTABLEKS                       R75 R74 K114 ["AssetConfigMakeAssetPublicMessageBox"]
      633 GETUPVAL                         R75 11
      634 GETTABLEKS                       R75 R75 K102 ["createElement"]
      636 LOADK                            R76 K103 ["Frame"]
      637 DUPTABLE                         R77 K158 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      638 GETIMPORT                        R78 K160 [UDim2.new]
      640 LOADN                            R79 1
      641 LOADN                            R80 0
      642 LOADN                            R81 1
      643 LOADN                            R82 -62
      644 CALL                             R78 4 1
      645 SETTABLEKS                       R78 R77 K3 ["Size"]
      647 DUPTABLE                         R78 K170 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      648 GETUPVAL                         R79 11
      649 GETTABLEKS                       R79 R79 K102 ["createElement"]
      651 LOADK                            R80 K110 ["UIListLayout"]
      652 DUPTABLE                         R81 K123 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      653 GETIMPORT                        R82 K172 [Enum.FillDirection.Horizontal]
      655 SETTABLEKS                       R82 R81 K118 ["FillDirection"]
      657 GETIMPORT                        R82 K127 [Enum.HorizontalAlignment.Left]
      659 SETTABLEKS                       R82 R81 K119 ["HorizontalAlignment"]
      661 GETIMPORT                        R82 K174 [Enum.VerticalAlignment.Top]
      663 SETTABLEKS                       R82 R81 K120 ["VerticalAlignment"]
      665 GETIMPORT                        R82 K131 [Enum.SortOrder.LayoutOrder]
      667 SETTABLEKS                       R82 R81 K121 ["SortOrder"]
      669 GETIMPORT                        R82 K134 [UDim.new]
      671 LOADN                            R83 0
      672 LOADN                            R84 0
      673 CALL                             R82 2 1
      674 SETTABLEKS                       R82 R81 K122 ["Padding"]
      676 CALL                             R79 2 1
      677 SETTABLEKS                       R79 R78 K110 ["UIListLayout"]
      679 GETUPVAL                         R79 11
      680 GETTABLEKS                       R79 R79 K102 ["createElement"]
      682 GETUPVAL                         R80 15
      683 DUPTABLE                         R81 K175 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      684 SETTABLEKS                       R50 R81 K136 ["AcceptText"]
      686 SETTABLEKS                       R51 R81 K137 ["CancelText"]
      688 SETTABLEKS                       R56 R81 K152 ["ConfirmationKey"]
      690 SETTABLEKS                       R53 R81 K138 ["Description"]
      692 SETTABLEKS                       R55 R81 K139 ["Enabled"]
      694 SETTABLEKS                       R52 R81 K140 ["Heading"]
      696 GETTABLEKS                       R82 R0 K176 ["onDialogAccepted"]
      698 SETTABLEKS                       R82 R81 K141 ["OnAccepted"]
      700 GETTABLEKS                       R82 R0 K177 ["onDialogCanceled"]
      702 SETTABLEKS                       R82 R81 K142 ["OnCanceled"]
      704 SETTABLEKS                       R54 R81 K143 ["Title"]
      706 CALL                             R79 2 1
      707 SETTABLEKS                       R79 R78 K161 ["SharingConfirmationDialog"]
      709 GETUPVAL                         R79 11
      710 GETTABLEKS                       R79 R79 K102 ["createElement"]
      712 GETUPVAL                         R80 16
      713 DUPTABLE                         R81 K192 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      714 SETTABLEKS                       R39 R81 K180 ["TabItems"]
      716 SETTABLEKS                       R6 R81 K181 ["CurrentTab"]
      718 SETTABLEKS                       R37 R81 K182 ["PreviewType"]
      720 SETTABLEKS                       R25 R81 K183 ["ScreenFlowType"]
      722 SETTABLEKS                       R16 R81 K184 ["AssetStatus"]
      724 SETTABLEKS                       R7 R81 K185 ["AssetId"]
      726 SETTABLEKS                       R22 R81 K186 ["IconFile"]
      728 SETTABLEKS                       R24 R81 K187 ["AssetTypeEnum"]
      730 SETTABLEKS                       R29 R81 K188 ["AllowedBundleTypeSettings"]
      732 GETTABLEKS                       R82 R0 K193 ["onTabSelect"]
      734 SETTABLEKS                       R82 R81 K189 ["OnTabSelect"]
      736 GETTABLEKS                       R82 R0 K194 ["chooseThumbnail"]
      738 SETTABLEKS                       R82 R81 K190 ["ChooseThumbnail"]
      740 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      742 JUMPIFNOT                        R69 ; [+3]
      743 GETTABLEKS                       R82 R2 K57 ["selectedColor"]
      745 JUMP                             ; [+1]
      746 LOADNIL                          R82
      747 SETTABLEKS                       R82 R81 K57 ["selectedColor"]
      749 SETTABLEKS                       R38 R81 K191 ["animationTypeThumbnailUri"]
      751 CALL                             R79 2 1
      752 SETTABLEKS                       R79 R78 K162 ["Preview"]
      754 GETUPVAL                         R79 17
      755 GETTABLEKS                       R79 R79 K102 ["createElement"]
      757 GETUPVAL                         R80 18
      758 GETTABLEKS                       R80 R80 K195 ["Divider"]
      760 DUPTABLE                         R81 K198 [{["orientation"], ["LayoutOrder"] = 2}]
      761 GETUPVAL                         R82 18
      762 GETTABLEKS                       R82 R82 K199 ["Enums"]
      764 GETTABLEKS                       R82 R82 K200 ["DividerOrientation"]
      766 GETTABLEKS                       R82 R82 K124 ["Vertical"]
      768 SETTABLEKS                       R82 R81 K196 ["orientation"]
      770 CALL                             R79 2 1
      771 SETTABLEKS                       R79 R78 K163 ["VerticalLine"]
      773 MOVE                             R79 R40
      774 JUMPIFNOT                        R79 ; [+47]
      775 GETUPVAL                         R79 11
      776 GETTABLEKS                       R79 R79 K102 ["createElement"]
      778 GETUPVAL                         R80 19
      779 DUPTABLE                         R81 K202 [{["LayoutOrder"] = 3, ["Size"]}]
      780 GETIMPORT                        R82 K160 [UDim2.new]
      782 LOADN                            R83 1
      783 LOADN                            R84 -240
      784 LOADN                            R85 1
      785 LOADN                            R86 0
      786 CALL                             R82 4 1
      787 SETTABLEKS                       R82 R81 K3 ["Size"]
      789 DUPTABLE                         R82 K204 [{"LoadingIndicator"}]
      790 GETUPVAL                         R83 11
      791 GETTABLEKS                       R83 R83 K102 ["createElement"]
      793 GETUPVAL                         R84 20
      794 DUPTABLE                         R85 K207 [{"Size", "AnchorPoint", "Position"}]
      795 GETIMPORT                        R86 K160 [UDim2.new]
      797 LOADN                            R87 0
      798 LOADN                            R88 100
      799 LOADN                            R89 0
      800 LOADN                            R90 100
      801 CALL                             R86 4 1
      802 SETTABLEKS                       R86 R85 K3 ["Size"]
      804 GETIMPORT                        R86 K209 [Vector2.new]
      806 LOADK                            R87 K210 [0.5]
      807 LOADK                            R88 K210 [0.5]
      808 CALL                             R86 2 1
      809 SETTABLEKS                       R86 R85 K205 ["AnchorPoint"]
      811 GETIMPORT                        R86 K212 [UDim2.fromScale]
      813 LOADK                            R87 K210 [0.5]
      814 LOADK                            R88 K210 [0.5]
      815 CALL                             R86 2 1
      816 SETTABLEKS                       R86 R85 K206 ["Position"]
      818 CALL                             R83 2 1
      819 SETTABLEKS                       R83 R82 K203 ["LoadingIndicator"]
      821 CALL                             R79 3 1
      822 SETTABLEKS                       R79 R78 K164 ["LoadingIndicatorWrapper"]
      824 NOT                              R79 R40
      825 JUMPIFNOT                        R79 ; [+249]
      826 GETUPVAL                         R79 1
      827 MOVE                             R81 R6
      828 NAMECALL                         R79 R79 K213 ["isGeneral"]
      830 CALL                             R79 2 1
      831 JUMPIFNOT                        R79 ; [+243]
      832 GETUPVAL                         R79 11
      833 GETTABLEKS                       R79 R79 K102 ["createElement"]
      835 GETUPVAL                         R80 21
      836 NEWTABLE                         R81 64 0
      838 GETIMPORT                        R82 K160 [UDim2.new]
      840 LOADN                            R83 1
      841 LOADN                            R84 -240
      842 LOADN                            R85 1
      843 LOADN                            R86 0
      844 CALL                             R82 4 1
      845 SETTABLEKS                       R82 R81 K3 ["Size"]
      847 SETTABLEKS                       R47 R81 K214 ["allowSelectPrivate"]
      849 SETTABLEKS                       R7 R81 K6 ["assetId"]
      851 SETTABLEKS                       R8 R81 K8 ["name"]
      853 SETTABLEKS                       R9 R81 K9 ["description"]
      855 SETTABLEKS                       R10 R81 K13 ["owner"]
      857 SETTABLEKS                       R11 R81 K14 ["allowCopy"]
      859 SETTABLEKS                       R12 R81 K15 ["copyOn"]
      861 SETTABLEKS                       R13 R81 K16 ["allowComment"]
      863 SETTABLEKS                       R14 R81 K17 ["commentOn"]
      865 SETTABLEKS                       R15 R81 K18 ["deleteLocal"]
      867 SETTABLEKS                       R17 R81 K20 ["isAssetPublic"]
      869 SETTABLEKS                       R18 R81 K21 ["publishingRestriction"]
      871 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
      873 GETTABLEKS                       R82 R0 K215 ["onNameChange"]
      875 SETTABLEKS                       R82 R81 K215 ["onNameChange"]
      877 GETTABLEKS                       R82 R0 K216 ["onDescChange"]
      879 SETTABLEKS                       R82 R81 K216 ["onDescChange"]
      881 GETTABLEKS                       R82 R1 K217 ["groupId"]
      883 SETTABLEKS                       R82 R81 K218 ["preselectedGroupId"]
      885 GETTABLEKS                       R82 R0 K219 ["onAccessChange"]
      887 SETTABLEKS                       R82 R81 K220 ["onOwnerSelected"]
      889 GETTABLEKS                       R82 R0 K221 ["onSharingChanged"]
      891 SETTABLEKS                       R82 R81 K221 ["onSharingChanged"]
      893 GETTABLEKS                       R82 R0 K222 ["onAdditionalImagesChanged"]
      895 SETTABLEKS                       R82 R81 K222 ["onAdditionalImagesChanged"]
      897 GETTABLEKS                       R82 R0 K223 ["toggleCopy"]
      899 SETTABLEKS                       R82 R81 K223 ["toggleCopy"]
      901 GETTABLEKS                       R82 R0 K224 ["toggleComment"]
      903 SETTABLEKS                       R82 R81 K224 ["toggleComment"]
      905 GETTABLEKS                       R82 R0 K225 ["toggleDeleteLocal"]
      907 SETTABLEKS                       R82 R81 K225 ["toggleDeleteLocal"]
      909 GETTABLEKS                       R82 R0 K226 ["onAnimationSelectionChanged"]
      911 SETTABLEKS                       R82 R81 K226 ["onAnimationSelectionChanged"]
      913 GETTABLEKS                       R82 R0 K227 ["onanimationSectionValidityChanged"]
      915 SETTABLEKS                       R82 R81 K227 ["onanimationSectionValidityChanged"]
      917 GETTABLEKS                       R82 R2 K228 ["dataSharingEnabled"]
      919 SETTABLEKS                       R82 R81 K228 ["dataSharingEnabled"]
      921 GETTABLEKS                       R82 R2 K229 ["dataSharingToggled"]
      923 SETTABLEKS                       R82 R81 K229 ["dataSharingToggled"]
      925 GETTABLEKS                       R82 R0 K230 ["onDataConsentToggleClick"]
      927 SETTABLEKS                       R82 R81 K230 ["onDataConsentToggleClick"]
      929 GETTABLEKS                       R82 R0 K231 ["canOfferPublishOnApproval"]
      931 CALL                             R82 0 1
      932 SETTABLEKS                       R82 R81 K232 ["publishOnApprovalEnabled"]
      934 GETTABLEKS                       R82 R1 K233 ["hasPublishingPreferences"]
      936 SETTABLEKS                       R82 R81 K233 ["hasPublishingPreferences"]
      938 GETTABLEKS                       R82 R1 K234 ["hasPublishingFeePreview"]
      940 SETTABLEKS                       R82 R81 K234 ["hasPublishingFeePreview"]
      942 GETTABLEKS                       R82 R1 K235 ["publishingFeePreview"]
      944 SETTABLEKS                       R82 R81 K235 ["publishingFeePreview"]
      946 GETTABLEKS                       R82 R2 K236 ["publishOnApprovalToggled"]
      948 SETTABLEKS                       R82 R81 K236 ["publishOnApprovalToggled"]
      950 GETTABLEKS                       R82 R0 K237 ["onPublishToMarketplaceToggleClick"]
      952 SETTABLEKS                       R82 R81 K237 ["onPublishToMarketplaceToggleClick"]
      954 GETUPVAL                         R83 22
      955 CALL                             R83 0 1
      956 JUMPIFNOT                        R83 ; [+3]
      957 GETTABLEKS                       R82 R1 K238 ["specialAttributes"]
      959 JUMP                             ; [+1]
      960 LOADNIL                          R82
      961 SETTABLEKS                       R82 R81 K238 ["specialAttributes"]
      963 GETUPVAL                         R83 22
      964 CALL                             R83 0 1
      965 JUMPIFNOT                        R83 ; [+3]
      966 GETTABLEKS                       R82 R1 K239 ["hasMetadataPermission"]
      968 JUMP                             ; [+1]
      969 LOADNIL                          R82
      970 SETTABLEKS                       R82 R81 K239 ["hasMetadataPermission"]
      972 SETTABLEKS                       R32 R81 K240 ["displayOwnership"]
      974 SETTABLEKS                       R33 R81 K241 ["displayCopy"]
      976 SETTABLEKS                       R35 R81 K242 ["displayComment"]
      978 SETTABLEKS                       R36 R81 K243 ["displayAssetType"]
      980 SETTABLEKS                       R48 R81 K244 ["displaySharing"]
      982 SETTABLEKS                       R34 R81 K245 ["displayAssetTypeSelection"]
      984 JUMPIFNOT                        R46 ; [+2]
      985 MOVE                             R82 R27
      986 JUMP                             ; [+1]
      987 LOADNIL                          R82
      988 SETTABLEKS                       R82 R81 K30 ["allowedAssetTypesForRelease"]
      990 SETTABLEKS                       R28 R81 K31 ["allowedAssetTypesForFree"]
      992 JUMPIFNOT                        R46 ; [+2]
      993 MOVE                             R82 R16
      994 JUMP                             ; [+1]
      995 LOADNIL                          R82
      996 SETTABLEKS                       R82 R81 K246 ["newAssetStatus"]
      998 JUMPIFNOT                        R46 ; [+2]
      999 MOVE                             R82 R30
     1000 JUMP                             ; [+1]
     1001 LOADNIL                          R82
     1002 SETTABLEKS                       R82 R81 K247 ["currentAssetStatus"]
     1004 JUMPIFNOT                        R46 ; [+3]
     1005 GETTABLEKS                       R82 R0 K248 ["onStatusChange"]
     1007 JUMP                             ; [+1]
     1008 LOADNIL                          R82
     1009 SETTABLEKS                       R82 R81 K248 ["onStatusChange"]
     1011 JUMPIFNOT                        R46 ; [+3]
     1012 GETTABLEKS                       R82 R0 K249 ["onPriceChange"]
     1014 JUMP                             ; [+1]
     1015 LOADNIL                          R82
     1016 SETTABLEKS                       R82 R81 K249 ["onPriceChange"]
     1018 JUMPIFNOT                        R46 ; [+2]
     1019 MOVE                             R82 R31
     1020 JUMP                             ; [+1]
     1021 LOADNIL                          R82
     1022 SETTABLEKS                       R82 R81 K35 ["price"]
     1024 LOADNIL                          R82
     1025 SETTABLEKS                       R82 R81 K250 ["minPrice"]
     1027 LOADNIL                          R82
     1028 SETTABLEKS                       R82 R81 K251 ["maxPrice"]
     1030 LOADNIL                          R82
     1031 SETTABLEKS                       R82 R81 K252 ["feeRate"]
     1033 LOADNIL                          R82
     1034 SETTABLEKS                       R82 R81 K253 ["isPriceValid"]
     1036 LOADN                            R82 3
     1037 SETTABLEKS                       R82 R81 K130 ["LayoutOrder"]
     1039 GETTABLEKS                       R82 R1 K47 ["instances"]
     1041 SETTABLEKS                       R82 R81 K47 ["instances"]
     1043 SETTABLEKS                       R69 R81 K254 ["showColorPicker"]
     1045 JUMPIFNOT                        R69 ; [+3]
     1046 GETTABLEKS                       R82 R2 K255 ["showColorPickerRequiredError"]
     1048 JUMP                             ; [+1]
     1049 LOADNIL                          R82
     1050 SETTABLEKS                       R82 R81 K255 ["showColorPickerRequiredError"]
     1052 GETTABLEKS                       R82 R2 K256 ["showNameRequiredError"]
     1054 SETTABLEKS                       R82 R81 K256 ["showNameRequiredError"]
     1056 GETTABLEKS                       R82 R2 K257 ["showDescriptionRequiredError"]
     1058 SETTABLEKS                       R82 R81 K257 ["showDescriptionRequiredError"]
     1060 JUMPIFNOT                        R69 ; [+3]
     1061 GETTABLEKS                       R82 R2 K57 ["selectedColor"]
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R82
     1065 SETTABLEKS                       R82 R81 K57 ["selectedColor"]
     1067 JUMPIFNOT                        R69 ; [+3]
     1068 GETTABLEKS                       R82 R0 K258 ["onSelectedColorChange"]
     1070 JUMP                             ; [+1]
     1071 LOADNIL                          R82
     1072 SETTABLEKS                       R82 R81 K259 ["setSelectedColor"]
     1074 CALL                             R79 2 1
     1075 SETTABLEKS                       R79 R78 K165 ["PublishAsset"]
     1077 GETUPVAL                         R79 1
     1078 MOVE                             R81 R6
     1079 NAMECALL                         R79 R79 K260 ["isVersions"]
     1081 CALL                             R79 2 1
     1082 JUMPIFNOT                        R79 ; [+75]
     1083 GETUPVAL                         R79 11
     1084 GETTABLEKS                       R79 R79 K102 ["createElement"]
     1086 GETUPVAL                         R80 23
     1087 DUPTABLE                         R81 K274 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
     1088 GETIMPORT                        R82 K160 [UDim2.new]
     1090 LOADN                            R83 1
     1091 LOADN                            R84 -240
     1092 LOADN                            R85 1
     1093 LOADN                            R86 -20
     1094 CALL                             R82 4 1
     1095 SETTABLEKS                       R82 R81 K3 ["Size"]
     1097 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1099 GETTABLEKS                       R82 R2 K275 ["versionsCurrentItem"]
     1101 SETTABLEKS                       R82 R81 K261 ["currentItem"]
     1103 GETTABLEKS                       R82 R2 K276 ["versionsRootItems"]
     1105 SETTABLEKS                       R82 R81 K262 ["rootItems"]
     1107 GETTABLEKS                       R82 R2 K277 ["versionsOpenInputKey"]
     1109 SETTABLEKS                       R82 R81 K263 ["openInputKey"]
     1111 GETTABLEKS                       R82 R2 K278 ["versionsPreviousInput"]
     1113 SETTABLEKS                       R82 R81 K264 ["previousInput"]
     1115 GETTABLEKS                       R82 R2 K279 ["versionsPageIndex"]
     1117 SETTABLEKS                       R82 R81 K265 ["pageIndex"]
     1119 GETTABLEKS                       R82 R2 K280 ["versionsPageRootItems"]
     1121 SETTABLEKS                       R82 R81 K266 ["pageRootItems"]
     1123 GETUPVAL                         R83 24
     1124 CALL                             R83 0 1
     1125 JUMPIFNOT                        R83 ; [+3]
     1126 GETTABLEKS                       R82 R1 K281 ["versionHistoryWithDescriptions"]
     1128 JUMP                             ; [+2]
     1129 GETTABLEKS                       R82 R1 K267 ["versionHistory"]
     1131 SETTABLEKS                       R82 R81 K267 ["versionHistory"]
     1133 GETTABLEKS                       R82 R0 K282 ["versionsOnDescClicked"]
     1135 SETTABLEKS                       R82 R81 K268 ["onDescClicked"]
     1137 GETTABLEKS                       R82 R0 K283 ["versionsCloseInput"]
     1139 SETTABLEKS                       R82 R81 K269 ["closeInput"]
     1141 GETTABLEKS                       R82 R0 K270 ["setVersionError"]
     1143 SETTABLEKS                       R82 R81 K270 ["setVersionError"]
     1145 GETTABLEKS                       R82 R0 K284 ["versionsSetPreviousInput"]
     1147 SETTABLEKS                       R82 R81 K271 ["setPreviousInput"]
     1149 GETTABLEKS                       R82 R0 K285 ["versionsOnPageChange"]
     1151 SETTABLEKS                       R82 R81 K272 ["onPageChange"]
     1153 GETTABLEKS                       R82 R0 K286 ["versionsSetStates"]
     1155 SETTABLEKS                       R82 R81 K273 ["setStates"]
     1157 CALL                             R79 2 1
     1158 SETTABLEKS                       R79 R78 K166 ["Versions"]
     1160 GETUPVAL                         R80 1
     1161 MOVE                             R82 R6
     1162 NAMECALL                         R80 R80 K287 ["isSales"]
     1164 CALL                             R80 2 1
     1165 JUMPIFNOT                        R80 ; [+18]
     1166 GETUPVAL                         R79 11
     1167 GETTABLEKS                       R79 R79 K102 ["createElement"]
     1169 GETUPVAL                         R80 25
     1170 DUPTABLE                         R81 K290 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1171 GETIMPORT                        R82 K160 [UDim2.new]
     1173 LOADN                            R83 1
     1174 LOADN                            R84 -240
     1175 LOADN                            R85 1
     1176 LOADN                            R86 0
     1177 CALL                             R82 4 1
     1178 SETTABLEKS                       R82 R81 K288 ["size"]
     1180 SETTABLEKS                       R7 R81 K6 ["assetId"]
     1182 CALL                             R79 2 1
     1183 JUMP                             ; [+1]
     1184 LOADNIL                          R79
     1185 SETTABLEKS                       R79 R78 K167 ["Sales"]
     1187 GETUPVAL                         R79 1
     1188 MOVE                             R81 R6
     1189 NAMECALL                         R79 R79 K291 ["isOverride"]
     1191 CALL                             R79 2 1
     1192 JUMPIFNOT                        R79 ; [+56]
     1193 GETUPVAL                         R80 26
     1194 CALL                             R80 0 1
     1195 JUMPIFNOT                        R80 ; [+28]
     1196 GETUPVAL                         R80 3
     1197 GETTABLEKS                       R80 R80 K292 ["isAvatarItemUpdateSupported"]
     1199 MOVE                             R81 R24
     1200 CALL                             R80 1 1
     1201 JUMPIFNOT                        R80 ; [+22]
     1202 GETUPVAL                         R79 17
     1203 GETTABLEKS                       R79 R79 K102 ["createElement"]
     1205 GETUPVAL                         R80 27
     1206 DUPTABLE                         R81 K294 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1207 GETIMPORT                        R82 K160 [UDim2.new]
     1209 LOADN                            R83 1
     1210 LOADN                            R84 -240
     1211 LOADN                            R85 1
     1212 LOADN                            R86 0
     1213 CALL                             R82 4 1
     1214 SETTABLEKS                       R82 R81 K3 ["Size"]
     1216 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1218 GETTABLEKS                       R82 R0 K293 ["onOverrideAssetSelected"]
     1220 SETTABLEKS                       R82 R81 K293 ["onOverrideAssetSelected"]
     1222 CALL                             R79 2 1
     1223 JUMP                             ; [+25]
     1224 GETUPVAL                         R79 11
     1225 GETTABLEKS                       R79 R79 K102 ["createElement"]
     1227 GETUPVAL                         R80 28
     1228 DUPTABLE                         R81 K295 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1229 GETIMPORT                        R82 K160 [UDim2.new]
     1231 LOADN                            R83 1
     1232 LOADN                            R84 -240
     1233 LOADN                            R85 1
     1234 LOADN                            R86 0
     1235 CALL                             R82 4 1
     1236 SETTABLEKS                       R82 R81 K3 ["Size"]
     1238 SETTABLEKS                       R24 R81 K28 ["assetTypeEnum"]
     1240 GETTABLEKS                       R82 R1 K47 ["instances"]
     1242 SETTABLEKS                       R82 R81 K47 ["instances"]
     1244 GETTABLEKS                       R82 R0 K293 ["onOverrideAssetSelected"]
     1246 SETTABLEKS                       R82 R81 K293 ["onOverrideAssetSelected"]
     1248 CALL                             R79 2 1
     1249 SETTABLEKS                       R79 R78 K168 ["OverrideAsset"]
     1251 GETUPVAL                         R79 1
     1252 MOVE                             R81 R6
     1253 NAMECALL                         R79 R79 K296 ["isPermissions"]
     1255 CALL                             R79 2 1
     1256 JUMPIFNOT                        R79 ; [+30]
     1257 GETUPVAL                         R79 11
     1258 GETTABLEKS                       R79 R79 K102 ["createElement"]
     1260 GETUPVAL                         R80 29
     1261 GETTABLEKS                       R80 R80 K297 ["AsyncCache"]
     1263 NEWTABLE                         R81 0 0
     1265 NEWTABLE                         R82 0 1
     1267 GETUPVAL                         R83 11
     1268 GETTABLEKS                       R83 R83 K102 ["createElement"]
     1270 GETUPVAL                         R84 30
     1271 DUPTABLE                         R85 K298 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1272 GETIMPORT                        R86 K160 [UDim2.new]
     1274 LOADN                            R87 1
     1275 MOVE                             R88 R42
     1276 LOADN                            R89 1
     1277 LOADN                            R90 0
     1278 CALL                             R86 4 1
     1279 SETTABLEKS                       R86 R85 K3 ["Size"]
     1281 SETTABLEKS                       R7 R85 K185 ["AssetId"]
     1283 CALL                             R83 2 -1
     1284 SETLIST                          R82 R83 -1 [1]
     1286 CALL                             R79 3 1
     1287 SETTABLEKS                       R79 R78 K169 ["PackagePermissions"]
     1289 CALL                             R75 3 1
     1290 SETTABLEKS                       R75 R74 K115 ["MainPage"]
     1292 GETUPVAL                         R75 11
     1293 GETTABLEKS                       R75 R75 K102 ["createElement"]
     1295 GETUPVAL                         R76 31
     1296 DUPTABLE                         R77 K304 [{["AssetId"], ["CanSave"], ["publishOnApprovalFee"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1297 GETTABLEKS                       R78 R2 K305 ["overrideAssetId"]
     1299 SETTABLEKS                       R78 R77 K185 ["AssetId"]
     1301 SETTABLEKS                       R41 R77 K299 ["CanSave"]
     1303 GETUPVAL                         R79 8
     1304 CALL                             R79 0 1
     1305 JUMPIFNOT                        R79 ; [+2]
     1306 MOVE                             R78 R65
     1307 JUMP                             ; [+1]
     1308 LOADNIL                          R78
     1309 SETTABLEKS                       R78 R77 K300 ["publishOnApprovalFee"]
     1311 GETIMPORT                        R78 K160 [UDim2.new]
     1313 LOADN                            R79 1
     1314 LOADN                            R80 0
     1315 LOADN                            R81 0
     1316 LOADN                            R82 62
     1317 CALL                             R78 4 1
     1318 SETTABLEKS                       R78 R77 K3 ["Size"]
     1320 GETTABLEKS                       R78 R0 K306 ["tryCancelWithYield"]
     1322 SETTABLEKS                       R78 R77 K301 ["TryCancel"]
     1324 GETTABLEKS                       R78 R0 K307 ["tryPublishWithConfirmDialog"]
     1326 SETTABLEKS                       R78 R77 K302 ["TryPublish"]
     1328 JUMPIF                           R41 ; [+8]
     1329 NEWCLOSURE                       R78 P1
     1330 CAPTURE                          VAL R0
     1331 CAPTURE                          VAL R70
     1332 CAPTURE                          VAL R8
     1333 CAPTURE                          VAL R9
     1334 CAPTURE                          UPVAL U3
     1335 CAPTURE                          VAL R24
     1336 JUMP                             ; [+1]
     1337 LOADNIL                          R78
     1338 SETTABLEKS                       R78 R77 K303 ["OnPublishButtonHover"]
     1340 CALL                             R75 2 1
     1341 SETTABLEKS                       R75 R74 K116 ["Footer"]
     1343 CALL                             R71 3 -1
     1344 RETURN                           R71 -1

PROTO_93:
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
      252 GETTABLEKS                       R16 R0 K50 ["animationPackType"]
      254 SETTABLEKS                       R16 R15 K50 ["animationPackType"]
      256 GETTABLEKS                       R16 R0 K51 ["animationPackSubName"]
      258 SETTABLEKS                       R16 R15 K51 ["animationPackSubName"]
      260 GETTABLEKS                       R16 R0 K52 ["animationPackWeight"]
      262 SETTABLEKS                       R16 R15 K52 ["animationPackWeight"]
      264 GETTABLEKS                       R16 R0 K53 ["animationPackParentModelName"]
      266 SETTABLEKS                       R16 R15 K53 ["animationPackParentModelName"]
      268 GETTABLEKS                       R16 R0 K54 ["animationSectionValid"]
      270 SETTABLEKS                       R16 R15 K54 ["animationSectionValid"]
      272 GETUPVAL                         R17 8
      273 CALL                             R17 0 1
      274 JUMPIFNOT                        R17 ; [+3]
      275 GETTABLEKS                       R16 R0 K55 ["isAvatarItemDialogFlowEnabled"]
      277 JUMP                             ; [+1]
      278 LOADNIL                          R16
      279 SETTABLEKS                       R16 R15 K55 ["isAvatarItemDialogFlowEnabled"]
      281 RETURN                           R15 1

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

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

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_102:
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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_105:
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

PROTO_106:
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

PROTO_107:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_114:
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

PROTO_115:
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

PROTO_116:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_128:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_138:
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
      718 GETTABLEKS                       R119 R119 K138 ["getFFlagEnableUpdateAvatarItem"]
      720 CALL                             R118 1 1
      721 GETIMPORT                        R119 K15 [require]
      723 GETTABLEKS                       R120 R1 K7 ["Src"]
      725 GETTABLEKS                       R120 R120 K20 ["Flags"]
      727 GETTABLEKS                       R120 R120 K139 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      729 CALL                             R119 1 1
      730 GETIMPORT                        R120 K15 [require]
      732 GETTABLEKS                       R121 R1 K7 ["Src"]
      734 GETTABLEKS                       R121 R121 K20 ["Flags"]
      736 GETTABLEKS                       R121 R121 K140 ["getFFlagToolboxDynamicUploadFee"]
      738 CALL                             R120 1 1
      739 GETIMPORT                        R121 K15 [require]
      741 GETTABLEKS                       R122 R1 K7 ["Src"]
      743 GETTABLEKS                       R122 R122 K20 ["Flags"]
      745 GETTABLEKS                       R122 R122 K141 ["getFFlagToolboxPublishOnApproval"]
      747 CALL                             R121 1 1
      748 NEWCLOSURE                       R122 P0
      749 CAPTURE                          VAL R10
      750 CAPTURE                          VAL R40
      751 CAPTURE                          VAL R42
      752 CAPTURE                          VAL R39
      753 CAPTURE                          VAL R6
      754 CAPTURE                          VAL R36
      755 CAPTURE                          VAL R121
      756 CAPTURE                          VAL R117
      757 CAPTURE                          VAL R18
      758 CAPTURE                          VAL R4
      759 CAPTURE                          VAL R5
      760 CAPTURE                          REF R48
      761 CAPTURE                          VAL R11
      762 CAPTURE                          VAL R58
      763 CAPTURE                          VAL R12
      764 CAPTURE                          VAL R26
      765 CAPTURE                          VAL R120
      766 CAPTURE                          VAL R47
      767 CAPTURE                          VAL R7
      768 CAPTURE                          VAL R9
      769 CAPTURE                          VAL R19
      770 CAPTURE                          VAL R50
      771 CAPTURE                          VAL R51
      772 CAPTURE                          VAL R57
      773 CAPTURE                          VAL R38
      774 SETTABLEKS                       R122 R115 K142 ["init"]
      776 DUPCLOSURE                       R122 K143 [PROTO_72]
      777 SETTABLEKS                       R122 R115 K144 ["attachXButtonCallback"]
      779 DUPCLOSURE                       R122 K145 [PROTO_73]
      780 SETTABLEKS                       R122 R115 K146 ["detachXButtonCallback"]
      782 DUPCLOSURE                       R122 K147 [PROTO_74]
      783 CAPTURE                          VAL R39
      784 SETTABLEKS                       R122 R115 K148 ["isLoading"]
      786 DUPCLOSURE                       R122 K149 [PROTO_75]
      787 CAPTURE                          VAL R18
      788 DUPCLOSURE                       R123 K150 [PROTO_76]
      789 CAPTURE                          VAL R39
      790 CAPTURE                          VAL R58
      791 CAPTURE                          VAL R36
      792 CAPTURE                          VAL R42
      793 CAPTURE                          VAL R3
      794 CAPTURE                          VAL R44
      795 CAPTURE                          VAL R47
      796 CAPTURE                          VAL R18
      797 CAPTURE                          VAL R119
      798 CAPTURE                          VAL R122
      799 CAPTURE                          VAL R40
      800 SETTABLEKS                       R123 R115 K151 ["didUpdate"]
      802 DUPCLOSURE                       R123 K152 [PROTO_77]
      803 CAPTURE                          VAL R53
      804 SETTABLEKS                       R123 R115 K153 ["versionsGetPageRootItems"]
      806 DUPCLOSURE                       R123 K154 [PROTO_80]
      807 CAPTURE                          VAL R88
      808 SETTABLEKS                       R123 R115 K155 ["getDefaultBundleDataSharing"]
      810 DUPCLOSURE                       R123 K156 [PROTO_86]
      811 CAPTURE                          VAL R39
      812 CAPTURE                          VAL R42
      813 CAPTURE                          VAL R18
      814 CAPTURE                          VAL R120
      815 SETTABLEKS                       R123 R115 K157 ["getAssetInformation"]
      817 DUPCLOSURE                       R123 K158 [PROTO_88]
      818 CAPTURE                          VAL R42
      819 CAPTURE                          VAL R8
      820 CAPTURE                          VAL R46
      821 SETTABLEKS                       R123 R115 K159 ["didMount"]
      823 DUPCLOSURE                       R123 K160 [PROTO_89]
      824 SETTABLEKS                       R123 R115 K161 ["willUnmount"]
      826 DUPCLOSURE                       R123 K162 [PROTO_92]
      827 CAPTURE                          VAL R39
      828 CAPTURE                          VAL R58
      829 CAPTURE                          VAL R10
      830 CAPTURE                          VAL R42
      831 CAPTURE                          VAL R41
      832 CAPTURE                          VAL R37
      833 CAPTURE                          VAL R44
      834 CAPTURE                          VAL R40
      835 CAPTURE                          VAL R121
      836 CAPTURE                          VAL R116
      837 CAPTURE                          VAL R6
      838 CAPTURE                          VAL R15
      839 CAPTURE                          VAL R35
      840 CAPTURE                          VAL R31
      841 CAPTURE                          VAL R32
      842 CAPTURE                          VAL R30
      843 CAPTURE                          VAL R22
      844 CAPTURE                          VAL R14
      845 CAPTURE                          VAL R17
      846 CAPTURE                          VAL R114
      847 CAPTURE                          VAL R113
      848 CAPTURE                          VAL R23
      849 CAPTURE                          VAL R120
      850 CAPTURE                          VAL R25
      851 CAPTURE                          VAL R119
      852 CAPTURE                          VAL R27
      853 CAPTURE                          VAL R118
      854 CAPTURE                          VAL R34
      855 CAPTURE                          VAL R33
      856 CAPTURE                          VAL R29
      857 CAPTURE                          VAL R28
      858 CAPTURE                          VAL R24
      859 SETTABLEKS                       R123 R115 K163 ["render"]
      861 MOVE                             R123 R112
      862 DUPTABLE                         R124 K173 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      863 GETTABLEKS                       R125 R111 K164 ["Focus"]
      865 SETTABLEKS                       R125 R124 K164 ["Focus"]
      867 JUMPIFNOT                        R5 ; [+2]
      868 MOVE                             R125 R105
      869 JUMP                             ; [+1]
      870 LOADNIL                          R125
      871 SETTABLEKS                       R125 R124 K165 ["IXP"]
      873 GETTABLEKS                       R125 R111 K166 ["Localization"]
      875 SETTABLEKS                       R125 R124 K166 ["Localization"]
      877 GETTABLEKS                       R125 R111 K167 ["Stylizer"]
      879 SETTABLEKS                       R125 R124 K167 ["Stylizer"]
      881 GETTABLEKS                       R125 R111 K168 ["Plugin"]
      883 SETTABLEKS                       R125 R124 K168 ["Plugin"]
      885 SETTABLEKS                       R106 R124 K169 ["Network"]
      887 SETTABLEKS                       R107 R124 K170 ["PublishService"]
      889 MOVE                             R126 R10
      890 CALL                             R126 0 1
      891 JUMPIFNOT                        R126 ; [+2]
      892 MOVE                             R125 R108
      893 JUMP                             ; [+1]
      894 LOADNIL                          R125
      895 SETTABLEKS                       R125 R124 K171 ["PluginGuiService"]
      897 MOVE                             R126 R10
      898 CALL                             R126 0 1
      899 JUMPIFNOT                        R126 ; [+2]
      900 MOVE                             R125 R109
      901 JUMP                             ; [+1]
      902 LOADNIL                          R125
      903 SETTABLEKS                       R125 R124 K172 ["ContentProvider"]
      905 CALL                             R123 1 1
      906 MOVE                             R124 R115
      907 CALL                             R123 1 1
      908 MOVE                             R115 R123
      909 DUPCLOSURE                       R123 K174 [PROTO_93]
      910 CAPTURE                          VAL R57
      911 CAPTURE                          VAL R119
      912 CAPTURE                          VAL R4
      913 CAPTURE                          VAL R5
      914 CAPTURE                          VAL R3
      915 CAPTURE                          VAL R121
      916 CAPTURE                          VAL R120
      917 CAPTURE                          VAL R46
      918 CAPTURE                          VAL R10
      919 DUPCLOSURE                       R124 K175 [PROTO_138]
      920 CAPTURE                          VAL R62
      921 CAPTURE                          VAL R75
      922 CAPTURE                          VAL R85
      923 CAPTURE                          VAL R54
      924 CAPTURE                          VAL R95
      925 CAPTURE                          VAL R18
      926 CAPTURE                          VAL R117
      927 CAPTURE                          VAL R60
      928 CAPTURE                          VAL R61
      929 CAPTURE                          VAL R65
      930 CAPTURE                          VAL R66
      931 CAPTURE                          VAL R7
      932 CAPTURE                          VAL R63
      933 CAPTURE                          VAL R64
      934 CAPTURE                          VAL R90
      935 CAPTURE                          VAL R89
      936 CAPTURE                          VAL R39
      937 CAPTURE                          VAL R67
      938 CAPTURE                          VAL R70
      939 CAPTURE                          VAL R76
      940 CAPTURE                          VAL R121
      941 CAPTURE                          VAL R77
      942 CAPTURE                          VAL R92
      943 CAPTURE                          VAL R78
      944 CAPTURE                          VAL R93
      945 CAPTURE                          VAL R120
      946 CAPTURE                          VAL R104
      947 CAPTURE                          VAL R43
      948 CAPTURE                          VAL R84
      949 CAPTURE                          VAL R79
      950 CAPTURE                          VAL R71
      951 CAPTURE                          VAL R91
      952 CAPTURE                          VAL R72
      953 CAPTURE                          VAL R73
      954 CAPTURE                          VAL R74
      955 CAPTURE                          VAL R97
      956 CAPTURE                          VAL R98
      957 CAPTURE                          VAL R99
      958 CAPTURE                          VAL R80
      959 CAPTURE                          VAL R81
      960 CAPTURE                          VAL R94
      961 CAPTURE                          VAL R82
      962 CAPTURE                          VAL R83
      963 CAPTURE                          VAL R86
      964 CAPTURE                          VAL R8
      965 CAPTURE                          VAL R87
      966 CAPTURE                          VAL R96
      967 CAPTURE                          VAL R10
      968 CAPTURE                          VAL R100
      969 CAPTURE                          VAL R68
      970 CAPTURE                          VAL R69
      971 CAPTURE                          VAL R101
      972 CAPTURE                          VAL R102
      973 CAPTURE                          VAL R103
      974 GETTABLEKS                       R125 R16 K176 ["connect"]
      976 MOVE                             R126 R123
      977 MOVE                             R127 R124
      978 CALL                             R125 2 1
      979 MOVE                             R126 R115
      980 CALL                             R125 1 -1
      981 CLOSEUPVALS                      R48
      982 RETURN                           R125 -1
