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

PROTO_9:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_10:
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
      103 DUPCLOSURE                       R11 K29 [PROTO_9]
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
      148 JUMPIFNOT                        R6 ; [+31]
      149 JUMPIFNOT                        R8 ; [+30]
      150 GETTABLEKS                       R9 R1 K35 ["dispatchCheckAvatarAssetPrivacy"]
      152 GETTABLEKS                       R10 R1 K36 ["Network"]
      154 GETTABLEKS                       R10 R10 K37 ["networkInterface"]
      156 GETTABLEKS                       R12 R1 K38 ["instances"]
      158 GETTABLEN                        R11 R12 1
      159 DUPTABLE                         R12 K42 [{"publishService", "pluginGuiService", "contentProvider"}]
      160 GETTABLEKS                       R13 R1 K43 ["PublishService"]
      162 GETTABLEKS                       R13 R13 K39 ["publishService"]
      164 SETTABLEKS                       R13 R12 K39 ["publishService"]
      166 GETTABLEKS                       R13 R1 K44 ["PluginGuiService"]
      168 GETTABLEKS                       R13 R13 K40 ["pluginGuiService"]
      170 SETTABLEKS                       R13 R12 K40 ["pluginGuiService"]
      172 GETTABLEKS                       R13 R1 K45 ["ContentProvider"]
      174 GETTABLEKS                       R13 R13 K41 ["contentProvider"]
      176 SETTABLEKS                       R13 R12 K41 ["contentProvider"]
      178 CALL                             R9 3 0
      179 RETURN                           R0 0
      180 GETUPVAL                         R9 0
      181 GETTABLEKS                       R9 R9 K31 ["tryPublish"]
      183 GETUPVAL                         R10 4
      184 CALL                             R9 1 0
      185 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K0 ["props"]
       63 GETTABLEKS                       R6 R6 K17 ["assetTypeEnum"]
       65 GETUPVAL                         R7 2
       66 CALL                             R7 0 1
       67 JUMPIFNOT                        R7 ; [+9]
       68 GETIMPORT                        R7 K21 [Enum.AssetType.Model]
       70 JUMPIFEQ                         R6 R7 ; [+6]
       72 GETIMPORT                        R7 K23 [Enum.AssetType.Package]
       74 JUMPIFEQ                         R6 R7 ; [+2]
       76 RETURN                           R0 0
       77 GETIMPORT                        R7 K25 [pairs]
       79 MOVE                             R8 R4
       80 CALL                             R7 1 3
       81 FORGPREP_NEXT                    R7
       82 JUMPIFNOT                        R11 ; [+10]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K0 ["props"]
       86 GETTABLEKS                       R12 R12 K26 ["postVersionDescription"]
       88 MOVE                             R13 R5
       89 MOVE                             R14 R2
       90 MOVE                             R15 R10
       91 MOVE                             R16 R11
       92 CALL                             R12 4 0
       93 FORGLOOP                         R7 2 ; [-12]
       95 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["changeTable"]
       11 MOVE                             R4 R3
       12 JUMPIFNOT                        R4 ; [+8]
       13 GETIMPORT                        R5 K3 [next]
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["props"]
       24 GETTABLEKS                       R5 R5 K4 ["resetUploadResult"]
       26 CALL                             R5 0 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["state"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
       33 GETTABLEKS                       R6 R6 K7 ["DOWNLOAD_FLOW"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K0 ["props"]
       38 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
       40 JUMPIFNOTEQ                      R6 R7 ; [+16]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K0 ["props"]
       45 GETTABLEKS                       R6 R6 K9 ["dispatchDownloadFlow"]
       47 MOVE                             R7 R0
       48 GETTABLEKS                       R8 R5 K10 ["overrideAssetId"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K0 ["props"]
       53 GETTABLEKS                       R9 R9 K11 ["onClose"]
       55 CALL                             R6 3 0
       56 JUMP                             ; [+256]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
       60 GETTABLEKS                       R6 R6 K12 ["EDIT_FLOW"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K0 ["props"]
       65 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
       67 JUMPIFNOTEQ                      R6 R7 ; [+76]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K0 ["props"]
       72 GETTABLEKS                       R6 R6 K13 ["dispatchEditFlow"]
       74 DUPTABLE                         R7 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K0 ["props"]
       78 GETTABLEKS                       R8 R8 K29 ["Network"]
       80 GETTABLEKS                       R8 R8 K14 ["networkInterface"]
       82 SETTABLEKS                       R8 R7 K14 ["networkInterface"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K0 ["props"]
       87 GETTABLEKS                       R8 R8 K30 ["IXP"]
       89 SETTABLEKS                       R8 R7 K15 ["ixp"]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K0 ["props"]
       94 GETTABLEKS                       R8 R8 K16 ["assetId"]
       96 SETTABLEKS                       R8 R7 K16 ["assetId"]
       98 GETTABLEKS                       R8 R5 K16 ["assetId"]
      100 SETTABLEKS                       R8 R7 K17 ["stateAssetId"]
      102 GETTABLEKS                       R8 R5 K18 ["name"]
      104 SETTABLEKS                       R8 R7 K18 ["name"]
      106 GETTABLEKS                       R8 R5 K19 ["description"]
      108 SETTABLEKS                       R8 R7 K19 ["description"]
      110 GETTABLEKS                       R8 R5 K20 ["price"]
      112 SETTABLEKS                       R8 R7 K20 ["price"]
      114 GETTABLEKS                       R8 R5 K21 ["status"]
      116 SETTABLEKS                       R8 R7 K21 ["status"]
      118 GETTABLEKS                       R8 R5 K22 ["copyOn"]
      120 SETTABLEKS                       R8 R7 K22 ["copyOn"]
      122 GETTABLEKS                       R8 R5 K23 ["copyChanged"]
      124 SETTABLEKS                       R8 R7 K23 ["copyChanged"]
      126 GETTABLEKS                       R8 R5 K24 ["commentOn"]
      128 SETTABLEKS                       R8 R7 K24 ["commentOn"]
      130 GETTABLEKS                       R8 R5 K25 ["isAssetPublic"]
      132 SETTABLEKS                       R8 R7 K25 ["isAssetPublic"]
      134 GETTABLEKS                       R8 R5 K26 ["iconFile"]
      136 SETTABLEKS                       R8 R7 K26 ["iconFile"]
      138 GETTABLEKS                       R8 R5 K27 ["assetMediaUpdateData"]
      140 SETTABLEKS                       R8 R7 K27 ["assetMediaUpdateData"]
      142 CALL                             R6 1 0
      143 JUMP                             ; [+169]
      144 GETUPVAL                         R6 3
      145 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
      147 GETTABLEKS                       R6 R6 K31 ["UPLOAD_FLOW"]
      149 GETUPVAL                         R7 0
      150 GETTABLEKS                       R7 R7 K0 ["props"]
      152 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
      154 JUMPIFNOTEQ                      R6 R7 ; [+158]
      156 GETUPVAL                         R6 4
      157 GETUPVAL                         R8 0
      158 GETTABLEKS                       R8 R8 K0 ["props"]
      160 GETTABLEKS                       R8 R8 K32 ["assetTypeEnum"]
      162 GETTABLEKS                       R9 R5 K33 ["dataSharingEnabled"]
      164 GETTABLEKS                       R10 R5 K34 ["dataSharingToggled"]
      166 NAMECALL                         R6 R6 K35 ["getDataSharingLicenseTypes"]
      168 CALL                             R6 4 1
      169 GETUPVAL                         R7 0
      170 GETTABLEKS                       R7 R7 K0 ["props"]
      172 GETTABLEKS                       R7 R7 K36 ["dispatchUploadFlow"]
      174 DUPTABLE                         R8 K43 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled", "publishOnApprovalCreationContext"}]
      175 GETUPVAL                         R9 0
      176 GETTABLEKS                       R9 R9 K0 ["props"]
      178 GETTABLEKS                       R9 R9 K29 ["Network"]
      180 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      182 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      184 GETUPVAL                         R9 0
      185 GETTABLEKS                       R9 R9 K0 ["props"]
      187 GETTABLEKS                       R9 R9 K44 ["Localization"]
      189 SETTABLEKS                       R9 R8 K37 ["localization"]
      191 GETUPVAL                         R9 0
      192 GETTABLEKS                       R9 R9 K0 ["props"]
      194 GETTABLEKS                       R9 R9 K45 ["PublishService"]
      196 GETTABLEKS                       R9 R9 K38 ["publishService"]
      198 SETTABLEKS                       R9 R8 K38 ["publishService"]
      200 GETUPVAL                         R9 0
      201 GETTABLEKS                       R9 R9 K0 ["props"]
      203 GETTABLEKS                       R9 R9 K30 ["IXP"]
      205 SETTABLEKS                       R9 R8 K15 ["ixp"]
      207 GETUPVAL                         R9 0
      208 GETTABLEKS                       R9 R9 K0 ["props"]
      210 GETTABLEKS                       R9 R9 K16 ["assetId"]
      212 SETTABLEKS                       R9 R8 K16 ["assetId"]
      214 GETUPVAL                         R10 0
      215 GETTABLEKS                       R10 R10 K0 ["props"]
      217 GETTABLEKS                       R10 R10 K39 ["groupId"]
      219 JUMPIFNOT                        R10 ; [+16]
      220 GETUPVAL                         R10 0
      221 GETTABLEKS                       R10 R10 K0 ["props"]
      223 GETTABLEKS                       R10 R10 K39 ["groupId"]
      225 GETUPVAL                         R11 5
      226 GETTABLEKS                       R11 R11 K46 ["None"]
      228 JUMPIFEQ                         R10 R11 ; [+7]
      230 GETUPVAL                         R9 0
      231 GETTABLEKS                       R9 R9 K0 ["props"]
      233 GETTABLEKS                       R9 R9 K39 ["groupId"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R9
      237 SETTABLEKS                       R9 R8 K39 ["groupId"]
      239 GETTABLEKS                       R9 R5 K18 ["name"]
      241 SETTABLEKS                       R9 R8 K18 ["name"]
      243 GETTABLEKS                       R9 R5 K19 ["description"]
      245 SETTABLEKS                       R9 R8 K19 ["description"]
      247 GETTABLEKS                       R9 R5 K10 ["overrideAssetId"]
      249 SETTABLEKS                       R9 R8 K10 ["overrideAssetId"]
      251 GETTABLEKS                       R9 R5 K22 ["copyOn"]
      253 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      255 GETTABLEKS                       R9 R5 K24 ["commentOn"]
      257 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      259 GETTABLEKS                       R9 R5 K21 ["status"]
      261 SETTABLEKS                       R9 R8 K21 ["status"]
      263 GETTABLEKS                       R9 R5 K20 ["price"]
      265 SETTABLEKS                       R9 R8 K20 ["price"]
      267 GETTABLEKS                       R9 R5 K26 ["iconFile"]
      269 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      271 GETTABLEKS                       R9 R5 K40 ["selectedColor"]
      273 SETTABLEKS                       R9 R8 K40 ["selectedColor"]
      275 GETTABLEKS                       R9 R5 K27 ["assetMediaUpdateData"]
      277 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      279 SETTABLEKS                       R6 R8 K41 ["dataSharingLicenseTypes"]
      281 GETTABLEKS                       R9 R5 K33 ["dataSharingEnabled"]
      283 SETTABLEKS                       R9 R8 K33 ["dataSharingEnabled"]
      285 GETTABLEKS                       R9 R5 K34 ["dataSharingToggled"]
      287 SETTABLEKS                       R9 R8 K34 ["dataSharingToggled"]
      289 GETUPVAL                         R9 6
      290 GETTABLEKS                       R9 R9 K47 ["getPublishOnApprovalCreationContext"]
      292 GETTABLEKS                       R10 R5 K48 ["publishOnApprovalToggled"]
      294 GETUPVAL                         R11 0
      295 GETTABLEKS                       R11 R11 K0 ["props"]
      297 GETTABLEKS                       R11 R11 K49 ["hasPublishingPreferences"]
      299 GETUPVAL                         R12 0
      300 GETTABLEKS                       R12 R12 K0 ["props"]
      302 GETTABLEKS                       R12 R12 K50 ["hasPublishingFeePreview"]
      304 GETUPVAL                         R13 0
      305 GETTABLEKS                       R13 R13 K0 ["props"]
      307 GETTABLEKS                       R13 R13 K51 ["publishingFeePreview"]
      309 CALL                             R9 4 1
      310 SETTABLEKS                       R9 R8 K42 ["publishOnApprovalCreationContext"]
      312 CALL                             R7 1 0
      313 JUMPIFNOT                        R4 ; [+43]
      314 MOVE                             R6 R1
      315 MOVE                             R7 R3
      316 CALL                             R6 1 0
      317 GETUPVAL                         R6 0
      318 GETTABLEKS                       R6 R6 K0 ["props"]
      320 GETTABLEKS                       R6 R6 K52 ["isPackageAsset"]
      322 JUMPIFNOT                        R6 ; [+34]
      323 GETUPVAL                         R6 0
      324 GETTABLEKS                       R6 R6 K0 ["props"]
      326 GETTABLEKS                       R6 R6 K53 ["assetConfigData"]
      328 GETTABLEKS                       R7 R6 K54 ["Id"]
      330 GETTABLEKS                       R8 R3 K55 ["VersionItemSelect"]
      332 JUMPIFNOT                        R8 ; [+3]
      333 GETTABLEKS                       R9 R3 K55 ["VersionItemSelect"]
      335 GETTABLEN                        R8 R9 1
      336 JUMPIFNOT                        R7 ; [+20]
      337 GETUPVAL                         R9 0
      338 GETTABLEKS                       R9 R9 K0 ["props"]
      340 GETTABLEKS                       R9 R9 K56 ["dispatchPutPackagePermissionsRequest"]
      342 GETUPVAL                         R10 0
      343 GETTABLEKS                       R10 R10 K0 ["props"]
      345 GETTABLEKS                       R10 R10 K29 ["Network"]
      347 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      349 MOVE                             R11 R7
      350 MOVE                             R12 R8
      351 GETUPVAL                         R13 0
      352 GETTABLEKS                       R13 R13 K0 ["props"]
      354 GETTABLEKS                       R13 R13 K44 ["Localization"]
      356 CALL                             R9 4 0
      357 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R2 K2 [{[1] = False}]
        6 NAMECALL                         R0 R0 K3 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["publishingPreferencesGeneration"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["assetTypeEnum"]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchCheckAvatarItemDependencies"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Network"]
        6 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["instances"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R0 K1 ["instances"]
        8 GETTABLEN                        R1 R2 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 DUPTABLE                         R2 K6 [{"publishService", "pluginGuiService", "contentProvider", "assetAccessController"}]
       12 GETTABLEKS                       R3 R0 K7 ["PublishService"]
       14 GETTABLEKS                       R3 R3 K2 ["publishService"]
       16 SETTABLEKS                       R3 R2 K2 ["publishService"]
       18 GETTABLEKS                       R3 R0 K8 ["PluginGuiService"]
       20 GETTABLEKS                       R3 R3 K3 ["pluginGuiService"]
       22 SETTABLEKS                       R3 R2 K3 ["pluginGuiService"]
       24 GETTABLEKS                       R3 R0 K9 ["ContentProvider"]
       26 GETTABLEKS                       R3 R3 K4 ["contentProvider"]
       28 SETTABLEKS                       R3 R2 K4 ["contentProvider"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R4 R0 K10 ["Plugin"]
       33 NAMECALL                         R4 R4 K11 ["get"]
       35 CALL                             R4 1 -1
       36 CALL                             R3 -1 1
       37 SETTABLEKS                       R3 R2 K5 ["assetAccessController"]
       39 GETIMPORT                        R3 K14 [task.spawn]
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_36]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_38:
        0 DUPTABLE                         R1 K1 [{"publishOnApprovalToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["publishOnApprovalToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["publishOnApprovalToggled"]
        6 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPCLOSURE                       R2 K0 [PROTO_38]
        6 NAMECALL                         R0 R0 K1 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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
       56 NEWTABLE                         R3 0 0
       58 SETTABLEKS                       R3 R2 K18 ["descendantIds"]
       60 LOADNIL                          R3
       61 SETTABLEKS                       R3 R2 K19 ["overrideAssetId"]
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K20 ["groupId"]
       66 LOADNIL                          R3
       67 SETTABLEKS                       R3 R2 K21 ["iconFile"]
       69 LOADB                            R3 0
       70 SETTABLEKS                       R3 R2 K22 ["dispatchGetFunction"]
       72 LOADB                            R3 0
       73 SETTABLEKS                       R3 R2 K23 ["isConfirmationDialogEnabled"]
       75 LOADB                            R3 0
       76 SETTABLEKS                       R3 R2 K24 ["confirmationDialogKey"]
       78 NEWTABLE                         R3 0 0
       80 SETTABLEKS                       R3 R2 K25 ["versionsCurrentItem"]
       82 NEWTABLE                         R3 0 0
       84 SETTABLEKS                       R3 R2 K26 ["versionsRootItems"]
       86 LOADN                            R3 -1
       87 SETTABLEKS                       R3 R2 K27 ["versionsOpenInputKey"]
       89 LOADK                            R3 K28 [""]
       90 SETTABLEKS                       R3 R2 K29 ["versionsPreviousInput"]
       92 LOADN                            R3 1
       93 SETTABLEKS                       R3 R2 K30 ["versionsPageIndex"]
       95 LOADN                            R5 1
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K31 ["VERSIONS_ROWS_PER_PAGE"]
       99 NAMECALL                         R3 R0 K32 ["versionsGetPageRootItems"]
      101 CALL                             R3 3 1
      102 SETTABLEKS                       R3 R2 K33 ["versionsPageRootItems"]
      104 NEWTABLE                         R3 0 0
      106 SETTABLEKS                       R3 R2 K34 ["versionDescriptionErrors"]
      108 LOADB                            R3 0
      109 SETTABLEKS                       R3 R2 K35 ["dataSharingEnabled"]
      111 LOADB                            R3 0
      112 SETTABLEKS                       R3 R2 K36 ["dataSharingToggled"]
      114 LOADB                            R3 0
      115 SETTABLEKS                       R3 R2 K37 ["publishOnApprovalToggled"]
      117 GETUPVAL                         R3 1
      118 GETTABLEKS                       R3 R3 K38 ["getThumbnailSkinColor"]
      120 GETTABLEKS                       R4 R0 K39 ["props"]
      122 GETTABLEKS                       R4 R4 K40 ["Plugin"]
      124 NAMECALL                         R4 R4 K41 ["get"]
      126 CALL                             R4 1 -1
      127 CALL                             R3 -1 1
      128 SETTABLEKS                       R3 R2 K42 ["selectedColor"]
      130 LOADB                            R3 0
      131 SETTABLEKS                       R3 R2 K43 ["showColorPickerRequiredError"]
      133 LOADB                            R3 0
      134 SETTABLEKS                       R3 R2 K44 ["showNameRequiredError"]
      136 LOADB                            R3 0
      137 SETTABLEKS                       R3 R2 K45 ["showDescriptionRequiredError"]
      139 SETTABLEKS                       R2 R0 K46 ["state"]
      141 GETTABLEKS                       R2 R0 K46 ["state"]
      143 GETUPVAL                         R3 1
      144 GETTABLEKS                       R3 R3 K47 ["hasAllowedAssetTypesForRelease"]
      146 GETTABLEKS                       R4 R0 K39 ["props"]
      148 GETTABLEKS                       R4 R4 K48 ["allowedAssetTypesForRelease"]
      150 CALL                             R3 1 1
      151 JUMPIFNOT                        R3 ; [+9]
      152 GETUPVAL                         R4 1
      153 GETTABLEKS                       R4 R4 K49 ["isBuyableMarketplaceAsset"]
      155 GETTABLEKS                       R5 R0 K39 ["props"]
      157 GETTABLEKS                       R5 R5 K50 ["assetTypeEnum"]
      159 CALL                             R4 1 1
      160 NOT                              R3 R4
      161 SETTABLEKS                       R3 R2 K17 ["isAssetTypeSelectionAllowed"]
      163 GETUPVAL                         R2 1
      164 GETTABLEKS                       R2 R2 K51 ["isMarketplaceAsset"]
      166 GETTABLEKS                       R3 R1 K50 ["assetTypeEnum"]
      168 CALL                             R2 1 1
      169 JUMPIFNOT                        R2 ; [+9]
      170 GETTABLEKS                       R2 R0 K46 ["state"]
      172 GETUPVAL                         R3 2
      173 GETTABLEKS                       R3 R3 K52 ["ASSET_STATUS"]
      175 GETTABLEKS                       R3 R3 K53 ["OffSale"]
      177 SETTABLEKS                       R3 R2 K12 ["status"]
      179 LOADNIL                          R2
      180 SETTABLEKS                       R2 R0 K54 ["nameString"]
      182 LOADNIL                          R2
      183 SETTABLEKS                       R2 R0 K55 ["descriptionString"]
      185 LOADB                            R2 0
      186 SETTABLEKS                       R2 R0 K56 ["init"]
      188 NEWCLOSURE                       R2 P0
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R2 R0 K57 ["onDialogAccepted"]
      192 NEWCLOSURE                       R2 P1
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R2 R0 K58 ["onDialogCanceled"]
      196 NEWCLOSURE                       R2 P2
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R2 R0 K59 ["onAssetPublishDialogAccepted"]
      200 NEWCLOSURE                       R2 P3
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R2 R0 K60 ["onAssetPublishDialogCanceled"]
      204 NEWCLOSURE                       R2 P4
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R2 R0 K61 ["tryMakeAssetsPublic"]
      208 NEWCLOSURE                       R2 P5
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U1
      211 CAPTURE                          UPVAL U3
      212 CAPTURE                          UPVAL U2
      213 CAPTURE                          UPVAL U4
      214 CAPTURE                          UPVAL U5
      215 SETTABLEKS                       R2 R0 K62 ["tryPublishWithConfirmDialog"]
      217 NEWCLOSURE                       R2 P6
      218 CAPTURE                          VAL R0
      219 CAPTURE                          VAL R1
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          UPVAL U7
      223 CAPTURE                          UPVAL U8
      224 CAPTURE                          UPVAL U1
      225 SETTABLEKS                       R2 R0 K63 ["tryPublish"]
      227 NEWCLOSURE                       R2 P7
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R1
      230 CAPTURE                          UPVAL U2
      231 SETTABLEKS                       R2 R0 K64 ["tryCancel"]
      233 NEWCLOSURE                       R2 P8
      234 CAPTURE                          VAL R0
      235 SETTABLEKS                       R2 R0 K65 ["tryCancelNoYield"]
      237 NEWCLOSURE                       R2 P9
      238 CAPTURE                          VAL R0
      239 SETTABLEKS                       R2 R0 K66 ["tryCancelWithYield"]
      241 NEWCLOSURE                       R2 P10
      242 CAPTURE                          VAL R0
      243 SETTABLEKS                       R2 R0 K67 ["onMessageBoxClosed"]
      245 NEWCLOSURE                       R2 P11
      246 CAPTURE                          UPVAL U9
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U10
      249 SETTABLEKS                       R2 R0 K68 ["tryCloseAssetConfig"]
      251 NEWCLOSURE                       R2 P12
      252 CAPTURE                          VAL R0
      253 NEWCLOSURE                       R3 P13
      254 CAPTURE                          VAL R0
      255 SETTABLEKS                       R3 R0 K69 ["onNameChange"]
      257 NEWCLOSURE                       R3 P14
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R3 R0 K70 ["onDescChange"]
      261 NEWCLOSURE                       R3 P15
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R3 R0 K71 ["onStatusChange"]
      265 NEWCLOSURE                       R3 P16
      266 CAPTURE                          VAL R0
      267 SETTABLEKS                       R3 R0 K72 ["onPriceChange"]
      269 LOADN                            R3 0
      270 SETTABLEKS                       R3 R0 K73 ["publishingPreferencesGeneration"]
      272 NEWCLOSURE                       R3 P17
      273 CAPTURE                          UPVAL U5
      274 CAPTURE                          VAL R0
      275 SETTABLEKS                       R3 R0 K74 ["clearPublishOnApprovalOptIn"]
      277 NEWCLOSURE                       R3 P18
      278 CAPTURE                          UPVAL U5
      279 CAPTURE                          UPVAL U2
      280 CAPTURE                          VAL R0
      281 CAPTURE                          UPVAL U1
      282 CAPTURE                          UPVAL U11
      283 SETTABLEKS                       R3 R0 K75 ["canOfferPublishOnApproval"]
      285 NEWCLOSURE                       R3 P19
      286 CAPTURE                          UPVAL U5
      287 CAPTURE                          VAL R0
      288 SETTABLEKS                       R3 R0 K76 ["getPublishInfo"]
      290 NEWCLOSURE                       R3 P20
      291 CAPTURE                          UPVAL U5
      292 CAPTURE                          VAL R0
      293 SETTABLEKS                       R3 R0 K77 ["fetchPublishingPreferences"]
      295 NEWCLOSURE                       R3 P21
      296 CAPTURE                          UPVAL U5
      297 CAPTURE                          VAL R0
      298 SETTABLEKS                       R3 R0 K78 ["fetchPublishingFeePreview"]
      300 NEWCLOSURE                       R3 P22
      301 CAPTURE                          VAL R0
      302 CAPTURE                          UPVAL U8
      303 SETTABLEKS                       R3 R0 K79 ["onAccessChange"]
      305 NEWCLOSURE                       R3 P23
      306 CAPTURE                          VAL R0
      307 CAPTURE                          UPVAL U12
      308 SETTABLEKS                       R3 R0 K80 ["checkAvatarItemDependencies"]
      310 NEWCLOSURE                       R3 P24
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R3 R0 K81 ["onDataConsentToggleClick"]
      314 NEWCLOSURE                       R3 P25
      315 CAPTURE                          UPVAL U5
      316 CAPTURE                          VAL R0
      317 SETTABLEKS                       R3 R0 K82 ["onPublishToMarketplaceToggleClick"]
      319 NEWCLOSURE                       R3 P26
      320 CAPTURE                          VAL R0
      321 SETTABLEKS                       R3 R0 K83 ["toggleCopy"]
      323 NEWCLOSURE                       R3 P27
      324 CAPTURE                          VAL R0
      325 SETTABLEKS                       R3 R0 K84 ["toggleComment"]
      327 NEWCLOSURE                       R3 P28
      328 CAPTURE                          VAL R0
      329 SETTABLEKS                       R3 R0 K85 ["toggleDeleteLocal"]
      331 NEWCLOSURE                       R3 P29
      332 CAPTURE                          VAL R0
      333 CAPTURE                          UPVAL U8
      334 SETTABLEKS                       R3 R0 K86 ["onAnimationSelectionChanged"]
      336 NEWCLOSURE                       R3 P30
      337 CAPTURE                          VAL R0
      338 SETTABLEKS                       R3 R0 K87 ["onanimationSectionValidityChanged"]
      340 NEWCLOSURE                       R3 P31
      341 CAPTURE                          VAL R0
      342 CAPTURE                          UPVAL U1
      343 SETTABLEKS                       R3 R0 K88 ["onSelectedColorChange"]
      345 NEWCLOSURE                       R3 P32
      346 CAPTURE                          VAL R0
      347 CAPTURE                          UPVAL U9
      348 CAPTURE                          UPVAL U10
      349 SETTABLEKS                       R3 R0 K89 ["versionsOnDescClicked"]
      351 NEWCLOSURE                       R3 P33
      352 CAPTURE                          VAL R0
      353 CAPTURE                          UPVAL U13
      354 CAPTURE                          UPVAL U14
      355 SETTABLEKS                       R3 R0 K90 ["versionsSaveInput"]
      357 NEWCLOSURE                       R3 P34
      358 CAPTURE                          VAL R0
      359 CAPTURE                          UPVAL U0
      360 SETTABLEKS                       R3 R0 K91 ["versionsSetStates"]
      362 NEWCLOSURE                       R3 P35
      363 CAPTURE                          VAL R0
      364 SETTABLEKS                       R3 R0 K92 ["versionsCloseInput"]
      366 NEWCLOSURE                       R3 P36
      367 CAPTURE                          VAL R0
      368 SETTABLEKS                       R3 R0 K93 ["setVersionError"]
      370 NEWCLOSURE                       R3 P37
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R3 R0 K94 ["versionsSetPreviousInput"]
      374 NEWCLOSURE                       R3 P38
      375 CAPTURE                          VAL R0
      376 SETTABLEKS                       R3 R0 K95 ["versionsOnPageChange"]
      378 NEWCLOSURE                       R3 P39
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R1
      381 SETTABLEKS                       R3 R0 K96 ["onTabSelect"]
      383 NEWCLOSURE                       R3 P40
      384 CAPTURE                          VAL R0
      385 SETTABLEKS                       R3 R0 K97 ["onOverrideAssetSelected"]
      387 NEWCLOSURE                       R3 P41
      388 CAPTURE                          UPVAL U1
      389 CAPTURE                          VAL R0
      390 SETTABLEKS                       R3 R0 K98 ["chooseThumbnail"]
      392 NEWCLOSURE                       R3 P42
      393 CAPTURE                          VAL R0
      394 SETTABLEKS                       R3 R0 K99 ["onSharingChanged"]
      396 NEWCLOSURE                       R3 P43
      397 CAPTURE                          VAL R0
      398 SETTABLEKS                       R3 R0 K100 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      400 NEWCLOSURE                       R3 P44
      401 CAPTURE                          VAL R0
      402 CAPTURE                          UPVAL U15
      403 SETTABLEKS                       R3 R0 K101 ["getPublishingRequirements"]
      405 NEWCLOSURE                       R3 P45
      406 CAPTURE                          VAL R0
      407 SETTABLEKS                       R3 R0 K102 ["onAdditionalImagesChanged"]
      409 NEWCLOSURE                       R3 P46
      410 CAPTURE                          UPVAL U1
      411 CAPTURE                          VAL R0
      412 SETTABLEKS                       R3 R0 K103 ["isValidCatalogAsset"]
      414 NEWCLOSURE                       R3 P47
      415 CAPTURE                          VAL R0
      416 SETTABLEKS                       R3 R0 K104 ["validVersionDescriptions"]
      418 NEWCLOSURE                       R3 P48
      419 CAPTURE                          VAL R0
      420 CAPTURE                          UPVAL U0
      421 CAPTURE                          UPVAL U16
      422 SETTABLEKS                       R3 R0 K105 ["getMessageBoxProps"]
      424 RETURN                           R0 0

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+19]
        3 GETTABLEKS                       R3 R0 K0 ["props"]
        5 GETTABLEKS                       R3 R3 K1 ["networkErrorAction"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       10 JUMPIFNOTEQ                      R3 R4 ; [+11]
       12 GETTABLEKS                       R3 R0 K3 ["state"]
       14 GETTABLEKS                       R3 R3 K4 ["showGetAssetFailed"]
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R3 K7 [task.defer]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R1 K8 ["isPackageAsset"]
       24 JUMPIFEQKNIL                     R3 ; [+12]
       26 GETTABLEKS                       R3 R1 K8 ["isPackageAsset"]
       28 GETTABLEKS                       R4 R0 K0 ["props"]
       30 GETTABLEKS                       R4 R4 K8 ["isPackageAsset"]
       32 JUMPIFEQ                         R3 R4 ; [+4]
       34 GETTABLEKS                       R3 R0 K9 ["getPublishingRequirements"]
       36 CALL                             R3 0 0
       37 GETTABLEKS                       R3 R0 K0 ["props"]
       39 GETTABLEKS                       R3 R3 K10 ["screenFlowType"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K11 ["FLOW_TYPE"]
       44 GETTABLEKS                       R4 R4 K12 ["EDIT_FLOW"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+247]
       48 GETTABLEKS                       R3 R0 K0 ["props"]
       50 GETTABLEKS                       R3 R3 K13 ["assetConfigData"]
       52 GETIMPORT                        R4 K15 [next]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 1
       56 JUMPIF                           R4 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R4 R0 K3 ["state"]
       60 GETTABLEKS                       R4 R4 K16 ["dispatchGetFunction"]
       62 JUMPIF                           R4 ; [+111]
       63 GETTABLEKS                       R4 R3 K17 ["Creator"]
       65 JUMPIF                           R4 ; [+2]
       66 NEWTABLE                         R4 0 0
       68 GETTABLEKS                       R6 R0 K3 ["state"]
       70 GETTABLEKS                       R6 R6 K18 ["groupMetadata"]
       72 NOT                              R5 R6
       73 JUMPIF                           R5 ; [+11]
       74 GETIMPORT                        R6 K15 [next]
       76 GETTABLEKS                       R7 R0 K3 ["state"]
       78 GETTABLEKS                       R7 R7 K18 ["groupMetadata"]
       80 CALL                             R6 1 1
       81 JUMPIFEQKNIL                     R6 ; [+2]
       83 LOADB                            R5 0 +1
       84 LOADB                            R5 1
       85 GETTABLEKS                       R6 R4 K19 ["typeId"]
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K20 ["OWNER_TYPES"]
       90 GETTABLEKS                       R7 R7 K21 ["User"]
       92 JUMPIFNOTEQ                      R6 R7 ; [+16]
       94 GETTABLEKS                       R6 R4 K22 ["username"]
       96 JUMPIF                           R6 ; [+12]
       97 GETTABLEKS                       R6 R0 K0 ["props"]
       99 GETTABLEKS                       R6 R6 K23 ["dispatchGetUsername"]
      101 GETTABLEKS                       R7 R4 K24 ["targetId"]
      103 CALL                             R6 1 0
      104 DUPTABLE                         R8 K26 [{["dispatchGetFunction"] = True}]
      105 NAMECALL                         R6 R0 K27 ["setState"]
      107 CALL                             R6 2 0
      108 JUMP                             ; [+65]
      109 GETTABLEKS                       R6 R4 K19 ["typeId"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K20 ["OWNER_TYPES"]
      114 GETTABLEKS                       R7 R7 K28 ["Group"]
      116 JUMPIFNOTEQ                      R6 R7 ; [+27]
      118 JUMPIFNOT                        R5 ; [+25]
      119 GETTABLEKS                       R6 R0 K0 ["props"]
      121 GETTABLEKS                       R6 R6 K29 ["dispatchGetGroupMetadata"]
      123 GETTABLEKS                       R7 R4 K24 ["targetId"]
      125 CALL                             R6 1 0
      126 GETTABLEKS                       R6 R0 K0 ["props"]
      128 GETTABLEKS                       R6 R6 K30 ["dispatchGetGroupRoleInfo"]
      130 GETTABLEKS                       R7 R0 K0 ["props"]
      132 GETTABLEKS                       R7 R7 K31 ["Network"]
      134 GETTABLEKS                       R7 R7 K32 ["networkInterface"]
      136 GETTABLEKS                       R8 R4 K24 ["targetId"]
      138 CALL                             R6 2 0
      139 DUPTABLE                         R8 K26 [{["dispatchGetFunction"] = True}]
      140 NAMECALL                         R6 R0 K27 ["setState"]
      142 CALL                             R6 2 0
      143 JUMP                             ; [+30]
      144 GETUPVAL                         R6 3
      145 CALL                             R6 0 1
      146 JUMPIFNOT                        R6 ; [+27]
      147 GETTABLEKS                       R6 R4 K19 ["typeId"]
      149 GETUPVAL                         R7 1
      150 GETTABLEKS                       R7 R7 K33 ["EXPERIENCE_OWNER_TYPE_ID"]
      152 JUMPIFNOTEQ                      R6 R7 ; [+21]
      154 GETTABLEKS                       R6 R4 K34 ["name"]
      156 JUMPIF                           R6 ; [+17]
      157 GETTABLEKS                       R6 R0 K0 ["props"]
      159 GETTABLEKS                       R6 R6 K35 ["dispatchGetExperienceName"]
      161 GETTABLEKS                       R7 R0 K0 ["props"]
      163 GETTABLEKS                       R7 R7 K31 ["Network"]
      165 GETTABLEKS                       R7 R7 K32 ["networkInterface"]
      167 GETTABLEKS                       R8 R4 K24 ["targetId"]
      169 CALL                             R6 2 0
      170 DUPTABLE                         R8 K26 [{["dispatchGetFunction"] = True}]
      171 NAMECALL                         R6 R0 K27 ["setState"]
      173 CALL                             R6 2 0
      174 GETTABLEKS                       R4 R0 K36 ["init"]
      176 JUMPIF                           R4 ; [+242]
      177 LOADNIL                          R4
      178 GETTABLEKS                       R5 R3 K37 ["AssetPermissions"]
      180 JUMPIFNOT                        R5 ; [+7]
      181 GETUPVAL                         R5 4
      182 GETTABLEKS                       R5 R5 K38 ["isAssetPublic"]
      184 GETTABLEKS                       R6 R3 K37 ["AssetPermissions"]
      186 CALL                             R5 1 1
      187 MOVE                             R4 R5
      188 GETTABLEKS                       R5 R3 K39 ["Status"]
      190 GETTABLEKS                       R6 R3 K40 ["IsCopyingAllowed"]
      192 JUMPIF                           R6 ; [+5]
      193 GETUPVAL                         R6 5
      194 GETTABLEKS                       R6 R6 K41 ["isOnSale"]
      196 MOVE                             R7 R5
      197 CALL                             R6 1 1
      198 GETTABLEKS                       R7 R0 K0 ["props"]
      200 GETTABLEKS                       R7 R7 K42 ["fiatProduct"]
      202 JUMPIFNOT                        R7 ; [+6]
      203 GETTABLEKS                       R7 R0 K0 ["props"]
      205 GETTABLEKS                       R7 R7 K42 ["fiatProduct"]
      207 GETTABLEKS                       R6 R7 K43 ["purchasable"]
      209 LOADNIL                          R7
      210 GETUPVAL                         R8 6
      211 JUMPIFNOT                        R8 ; [+14]
      212 GETTABLEKS                       R8 R0 K0 ["props"]
      214 GETTABLEKS                       R7 R8 K44 ["isPublishingAllowed"]
      216 GETTABLEKS                       R8 R0 K0 ["props"]
      218 GETTABLEKS                       R8 R8 K8 ["isPackageAsset"]
      220 JUMPIFNOT                        R8 ; [+5]
      221 GETTABLEKS                       R8 R0 K0 ["props"]
      223 GETTABLEKS                       R8 R8 K46 ["isPackageMarketplacePublishAllowed"]
      225 ORK                              R7 R8 K45 [False]
      226 GETUPVAL                         R8 7
      227 GETTABLEKS                       R8 R8 K47 ["getRestrictionThatAppliesToAsset"]
      229 GETTABLEKS                       R9 R0 K0 ["props"]
      231 GETTABLEKS                       R9 R9 K48 ["publishingRestrictions"]
      233 CALL                             R8 1 1
      234 DUPTABLE                         R11 K61 [{["assetId"], ["name"], ["description"], ["owner"], ["allowCopy"], ["copyOn"], ["copyOnOriginalValue"], ["commentOn"], ["price"] = , ["status"], ["isAssetPublic"], ["isAssetPublicOriginalValue"], ["publishingRestriction"]}]
      235 GETUPVAL                         R13 5
      236 GETTABLEKS                       R13 R13 K62 ["isMarketplaceAsset"]
      238 GETTABLEKS                       R14 R0 K0 ["props"]
      240 GETTABLEKS                       R14 R14 K63 ["assetTypeEnum"]
      242 CALL                             R13 1 1
      243 JUMPIFNOT                        R13 ; [+3]
      244 GETTABLEKS                       R12 R3 K64 ["Id"]
      246 JUMPIF                           R12 ; [+2]
      247 GETTABLEKS                       R12 R3 K65 ["AssetId"]
      249 SETTABLEKS                       R12 R11 K49 ["assetId"]
      251 GETTABLEKS                       R12 R3 K66 ["Name"]
      253 SETTABLEKS                       R12 R11 K34 ["name"]
      255 GETTABLEKS                       R12 R3 K67 ["Description"]
      257 SETTABLEKS                       R12 R11 K50 ["description"]
      259 GETTABLEKS                       R12 R3 K17 ["Creator"]
      261 SETTABLEKS                       R12 R11 K51 ["owner"]
      263 GETUPVAL                         R13 6
      264 JUMPIFNOT                        R13 ; [+2]
      265 OR                               R12 R6 R7
      266 JUMP                             ; [+2]
      267 GETTABLEKS                       R12 R3 K68 ["IsPublicDomainEnabled"]
      269 SETTABLEKS                       R12 R11 K52 ["allowCopy"]
      271 SETTABLEKS                       R6 R11 K53 ["copyOn"]
      273 SETTABLEKS                       R6 R11 K54 ["copyOnOriginalValue"]
      275 GETTABLEKS                       R12 R3 K69 ["EnableComments"]
      277 SETTABLEKS                       R12 R11 K55 ["commentOn"]
      279 SETTABLEKS                       R5 R11 K58 ["status"]
      281 SETTABLEKS                       R4 R11 K38 ["isAssetPublic"]
      283 SETTABLEKS                       R4 R11 K59 ["isAssetPublicOriginalValue"]
      285 SETTABLEKS                       R8 R11 K60 ["publishingRestriction"]
      287 NAMECALL                         R9 R0 K27 ["setState"]
      289 CALL                             R9 2 0
      290 LOADB                            R9 1
      291 SETTABLEKS                       R9 R0 K36 ["init"]
      293 JUMP                             ; [+125]
      294 GETTABLEKS                       R3 R0 K0 ["props"]
      296 GETTABLEKS                       R3 R3 K70 ["isVerifiedCreator"]
      298 JUMPIFEQKNIL                     R3 ; [+21]
      300 GETTABLEKS                       R3 R0 K3 ["state"]
      302 GETTABLEKS                       R3 R3 K52 ["allowCopy"]
      304 GETTABLEKS                       R4 R0 K0 ["props"]
      306 GETTABLEKS                       R4 R4 K70 ["isVerifiedCreator"]
      308 JUMPIFEQ                         R3 R4 ; [+11]
      310 DUPTABLE                         R5 K71 [{"allowCopy"}]
      311 GETTABLEKS                       R6 R0 K0 ["props"]
      313 GETTABLEKS                       R6 R6 K70 ["isVerifiedCreator"]
      315 SETTABLEKS                       R6 R5 K52 ["allowCopy"]
      317 NAMECALL                         R3 R0 K27 ["setState"]
      319 CALL                             R3 2 0
      320 GETUPVAL                         R3 8
      321 GETTABLEKS                       R3 R3 K72 ["isEmissiveFromAttributes"]
      323 GETTABLEKS                       R4 R0 K0 ["props"]
      325 GETTABLEKS                       R4 R4 K73 ["specialAttributes"]
      327 CALL                             R3 1 1
      328 JUMPIFNOTEQKB                    R3 TRUE ; [+12]
      330 GETUPVAL                         R3 8
      331 GETTABLEKS                       R3 R3 K72 ["isEmissiveFromAttributes"]
      333 GETTABLEKS                       R4 R1 K73 ["specialAttributes"]
      335 CALL                             R3 1 1
      336 JUMPIFEQKB                       R3 TRUE ; [+4]
      338 GETTABLEKS                       R3 R0 K74 ["clearPublishOnApprovalOptIn"]
      340 CALL                             R3 0 0
      341 GETTABLEKS                       R3 R0 K0 ["props"]
      343 GETTABLEKS                       R3 R3 K10 ["screenFlowType"]
      345 GETUPVAL                         R4 2
      346 GETTABLEKS                       R4 R4 K11 ["FLOW_TYPE"]
      348 GETTABLEKS                       R4 R4 K75 ["UPLOAD_FLOW"]
      350 JUMPIFNOTEQ                      R3 R4 ; [+43]
      352 GETTABLEKS                       R3 R1 K76 ["isUploadFeeEnabled"]
      354 GETTABLEKS                       R4 R0 K0 ["props"]
      356 GETTABLEKS                       R4 R4 K76 ["isUploadFeeEnabled"]
      358 JUMPIFEQ                         R3 R4 ; [+35]
      360 GETTABLEKS                       R3 R0 K77 ["canOfferPublishOnApproval"]
      362 CALL                             R3 0 1
      363 JUMPIFNOT                        R3 ; [+30]
      364 GETTABLEKS                       R3 R0 K78 ["fetchPublishingPreferences"]
      366 GETTABLEKS                       R5 R0 K0 ["props"]
      368 GETTABLEKS                       R5 R5 K79 ["groupId"]
      370 JUMPIFNOT                        R5 ; [+14]
      371 GETTABLEKS                       R5 R0 K0 ["props"]
      373 GETTABLEKS                       R5 R5 K79 ["groupId"]
      375 GETUPVAL                         R6 9
      376 GETTABLEKS                       R6 R6 K80 ["None"]
      378 JUMPIFEQ                         R5 R6 ; [+6]
      380 GETTABLEKS                       R4 R0 K0 ["props"]
      382 GETTABLEKS                       R4 R4 K79 ["groupId"]
      384 JUMP                             ; [+1]
      385 LOADNIL                          R4
      386 CALL                             R3 1 0
      387 GETTABLEKS                       R3 R0 K81 ["fetchPublishingFeePreview"]
      389 GETTABLEKS                       R4 R0 K0 ["props"]
      391 GETTABLEKS                       R4 R4 K63 ["assetTypeEnum"]
      393 CALL                             R3 1 0
      394 GETTABLEKS                       R3 R0 K0 ["props"]
      396 GETTABLEKS                       R3 R3 K10 ["screenFlowType"]
      398 GETUPVAL                         R4 2
      399 GETTABLEKS                       R4 R4 K11 ["FLOW_TYPE"]
      401 GETTABLEKS                       R4 R4 K75 ["UPLOAD_FLOW"]
      403 JUMPIFNOTEQ                      R3 R4 ; [+15]
      405 GETTABLEKS                       R3 R1 K63 ["assetTypeEnum"]
      407 GETTABLEKS                       R4 R0 K0 ["props"]
      409 GETTABLEKS                       R4 R4 K63 ["assetTypeEnum"]
      411 JUMPIFEQ                         R3 R4 ; [+7]
      413 GETTABLEKS                       R3 R0 K74 ["clearPublishOnApprovalOptIn"]
      415 CALL                             R3 0 0
      416 NAMECALL                         R3 R0 K82 ["getAssetInformation"]
      418 CALL                             R3 1 0
      419 GETTABLEKS                       R3 R2 K83 ["versionsCurrentItem"]
      421 GETUPVAL                         R5 10
      422 CALL                             R5 0 1
      423 JUMPIFNOT                        R5 ; [+5]
      424 GETTABLEKS                       R4 R0 K0 ["props"]
      426 GETTABLEKS                       R4 R4 K84 ["versionHistoryWithDescriptions"]
      428 JUMP                             ; [+4]
      429 GETTABLEKS                       R4 R0 K0 ["props"]
      431 GETTABLEKS                       R4 R4 K85 ["versionHistory"]
      433 GETUPVAL                         R6 10
      434 CALL                             R6 0 1
      435 JUMPIFNOT                        R6 ; [+3]
      436 GETTABLEKS                       R5 R1 K84 ["versionHistoryWithDescriptions"]
      438 JUMP                             ; [+2]
      439 GETTABLEKS                       R5 R1 K85 ["versionHistory"]
      441 GETUPVAL                         R6 11
      442 CALL                             R6 0 1
      443 JUMPIFNOT                        R6 ; [+14]
      444 LOADB                            R6 0
      445 GETIMPORT                        R7 K15 [next]
      447 MOVE                             R8 R3
      448 CALL                             R7 1 1
      449 JUMPIFEQKNIL                     R7 ; [+8]
      451 LOADB                            R6 0
      452 JUMPIFEQKNIL                     R4 ; [+5]
      454 JUMPIFNOTEQ                      R4 R5 ; [+2]
      456 LOADB                            R6 0 +1
      457 LOADB                            R6 1
      458 GETIMPORT                        R7 K15 [next]
      460 MOVE                             R8 R3
      461 CALL                             R7 1 1
      462 JUMPIF                           R7 ; [+1]
      463 JUMPIF                           R4 ; [+1]
      464 JUMPIFNOT                        R6 ; [+92]
      465 NEWTABLE                         R7 0 0
      467 GETIMPORT                        R8 K87 [ipairs]
      469 MOVE                             R9 R4
      470 CALL                             R8 1 3
      471 FORGPREP_INEXT                   R8
      472 GETUPVAL                         R14 10
      473 CALL                             R14 0 1
      474 JUMPIFNOT                        R14 ; [+4]
      475 GETTABLEKS                       R14 R12 K89 ["versionDescription"]
      477 ORK                              R13 R14 K88 [""]
      478 JUMP                             ; [+2]
      479 GETTABLEKS                       R13 R12 K89 ["versionDescription"]
      481 GETTABLEKS                       R14 R12 K90 ["creatorTargetId"]
      483 GETTABLEKS                       R15 R12 K91 ["creatorType"]
      485 GETTABLEKS                       R16 R12 K92 ["assetVersionNumber"]
      487 DUPTABLE                         R17 K96 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      488 GETTABLEKS                       R18 R12 K92 ["assetVersionNumber"]
      490 SETTABLEKS                       R18 R17 K93 ["versionColumn"]
      492 DUPTABLE                         R18 K100 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType", "moderationState"}]
      493 SETTABLEKS                       R13 R18 K89 ["versionDescription"]
      495 GETTABLEKS                       R19 R12 K97 ["created"]
      497 SETTABLEKS                       R19 R18 K97 ["created"]
      499 GETTABLEKS                       R19 R12 K92 ["assetVersionNumber"]
      501 SETTABLEKS                       R19 R18 K92 ["assetVersionNumber"]
      503 SETTABLEKS                       R14 R18 K98 ["creatorId"]
      505 SETTABLEKS                       R15 R18 K91 ["creatorType"]
      507 GETUPVAL                         R20 11
      508 CALL                             R20 0 1
      509 JUMPIFNOT                        R20 ; [+3]
      510 GETTABLEKS                       R19 R12 K99 ["moderationState"]
      512 JUMP                             ; [+1]
      513 LOADNIL                          R19
      514 SETTABLEKS                       R19 R18 K99 ["moderationState"]
      516 SETTABLEKS                       R18 R17 K94 ["descriptionColumn"]
      518 GETTABLEKS                       R18 R12 K92 ["assetVersionNumber"]
      520 SETTABLEKS                       R18 R17 K95 ["restoreColumn"]
      522 SETTABLE                         R17 R7 R16
      523 FORGLOOP                         R8 2 [inext] ; [-52]
      525 DUPTABLE                         R10 K104 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems", "versionsPageIndex"}]
      526 GETUPVAL                         R11 12
      527 MOVE                             R12 R4
      528 CALL                             R11 1 1
      529 SETTABLEKS                       R11 R10 K83 ["versionsCurrentItem"]
      531 SETTABLEKS                       R7 R10 K101 ["versionsRootItems"]
      533 LOADN                            R13 1
      534 GETUPVAL                         R14 13
      535 GETTABLEKS                       R14 R14 K105 ["VERSIONS_ROWS_PER_PAGE"]
      537 GETUPVAL                         R16 11
      538 CALL                             R16 0 1
      539 JUMPIFNOT                        R16 ; [+2]
      540 MOVE                             R15 R7
      541 JUMP                             ; [+1]
      542 LOADNIL                          R15
      543 NAMECALL                         R11 R0 K106 ["versionsGetPageRootItems"]
      545 CALL                             R11 4 1
      546 SETTABLEKS                       R11 R10 K102 ["versionsPageRootItems"]
      548 JUMPIFNOT                        R6 ; [+2]
      549 LOADN                            R11 1
      550 JUMP                             ; [+1]
      551 LOADNIL                          R11
      552 SETTABLEKS                       R11 R10 K103 ["versionsPageIndex"]
      554 NAMECALL                         R8 R0 K27 ["setState"]
      556 CALL                             R8 2 0
      557 RETURN                           R0 0

PROTO_72:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+4]
        2 GETTABLEKS                       R4 R0 K0 ["state"]
        4 GETTABLEKS                       R4 R4 K1 ["versionsRootItems"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 NEWTABLE                         R7 0 0
       10 JUMPIFNOT                        R4 ; [+17]
       11 SUBK                             R9 R1 K2 [1]
       12 MUL                              R8 R9 R2
       13 ADDK                             R5 R8 K2 [1]
       14 ADD                              R8 R5 R2
       15 SUBK                             R6 R8 K2 [1]
       16 LENGTH                           R10 R4
       17 LOADN                            R8 1
       18 LOADN                            R9 -1
       19 FORNPREP                         R8
       20 GETTABLE                         R13 R4 R10
       21 FASTCALL2                        TABLE_INSERT R7 R13 ; [+4]
       23 MOVE                             R12 R7
       24 GETIMPORT                        R11 K5 [table.insert]
       26 CALL                             R11 2 0
       27 FORNLOOP                         R8
       28 MOVE                             R8 R4
       29 JUMPIFNOT                        R8 ; [+5]
       30 GETUPVAL                         R8 0
       31 MOVE                             R9 R7
       32 MOVE                             R10 R5
       33 MOVE                             R11 R6
       34 CALL                             R8 3 1
       35 JUMPIFNOT                        R4 ; [+2]
       36 MOVE                             R9 R8
       37 RETURN                           R9 1
       38 NEWTABLE                         R9 0 0
       40 RETURN                           R9 1

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
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

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

PROTO_82:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_83:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+7]
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K4 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K5 ["table"] ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R4 R2 K6 ["Source"]
       19 JUMPIFNOTEQKS                    R4 K7 ["Import"] ; [+4]
       21 GETTABLEKS                       R3 R2 K8 ["AssetIds"]
       23 JUMP                             ; [+1]
       24 MOVE                             R3 R2
       25 FASTCALL1                        TYPE R3 ; [+3]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K4 [type]
       29 CALL                             R4 1 1
       30 JUMPIFEQKS                       R4 K5 ["table"] ; [+2]
       32 RETURN                           R0 0
       33 MOVE                             R4 R3
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 FASTCALL1                        TONUMBER R8 ; [+3]
       38 MOVE                             R10 R8
       39 GETIMPORT                        R9 K10 [tonumber]
       41 CALL                             R9 1 1
       42 GETUPVAL                         R11 1
       43 FASTCALL1                        TONUMBER R11 ; [+2]
       44 GETIMPORT                        R10 K10 [tonumber]
       46 CALL                             R10 1 1
       47 JUMPIFNOTEQ                      R9 R10 ; [+16]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K11 ["props"]
       52 GETTABLEKS                       R9 R9 K12 ["getVersionHistory"]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K11 ["props"]
       57 GETTABLEKS                       R10 R10 K13 ["Network"]
       59 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
       61 GETUPVAL                         R11 1
       62 CALL                             R9 2 0
       63 RETURN                           R0 0
       64 FORGLOOP                         R4 2 ; [-28]
       66 RETURN                           R0 0

PROTO_84:
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
       46 GETUPVAL                         R3 1
       47 CALL                             R3 0 1
       48 JUMPIFNOT                        R3 ; [+12]
       49 JUMPIFNOT                        R2 ; [+11]
       50 GETUPVAL                         R3 2
       51 LOADK                            R5 K12 ["AssetsUploaded"]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R3 R3 K13 ["Bind"]
       58 CALL                             R3 3 1
       59 SETTABLEKS                       R3 R0 K14 ["assetsUploadedConnection"]
       61 NAMECALL                         R3 R0 K15 ["getDefaultBundleDataSharing"]
       63 CALL                             R3 1 0
       64 GETTABLEKS                       R3 R0 K2 ["props"]
       66 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       68 JUMPIFNOT                        R2 ; [+59]
       69 JUMPIFNOT                        R3 ; [+58]
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K16 ["isMarketplaceAsset"]
       73 MOVE                             R5 R3
       74 CALL                             R4 1 1
       75 JUMPIFNOT                        R4 ; [+52]
       76 GETIMPORT                        R4 K20 [Enum.AssetType.Animation]
       78 JUMPIFEQ                         R3 R4 ; [+49]
       80 GETUPVAL                         R4 1
       81 CALL                             R4 0 1
       82 JUMPIFNOT                        R4 ; [+8]
       83 GETIMPORT                        R4 K22 [Enum.AssetType.Image]
       85 JUMPIFEQ                         R3 R4 ; [+42]
       87 GETIMPORT                        R4 K24 [Enum.AssetType.Mesh]
       89 JUMPIFEQ                         R3 R4 ; [+38]
       91 GETTABLEKS                       R4 R0 K2 ["props"]
       93 GETTABLEKS                       R4 R4 K25 ["dispatchGetFiatProduct"]
       95 GETTABLEKS                       R5 R0 K2 ["props"]
       97 GETTABLEKS                       R5 R5 K10 ["Network"]
       99 GETTABLEKS                       R5 R5 K11 ["networkInterface"]
      101 MOVE                             R6 R2
      102 MOVE                             R7 R3
      103 CALL                             R4 3 0
      104 GETUPVAL                         R4 4
      105 CALL                             R4 0 1
      106 JUMPIFNOT                        R4 ; [+21]
      107 JUMPIFNOT                        R3 ; [+7]
      108 GETUPVAL                         R5 5
      109 GETTABLEKS                       R5 R5 K26 ["MONETIZABLE_ASSET_TYPES"]
      111 GETTABLEKS                       R6 R3 K27 ["Name"]
      113 GETTABLE                         R4 R5 R6
      114 JUMP                             ; [+1]
      115 LOADB                            R4 0
      116 JUMPIFNOT                        R4 ; [+11]
      117 GETTABLEKS                       R5 R0 K2 ["props"]
      119 GETTABLEKS                       R5 R5 K28 ["dispatchGetSellerStatus"]
      121 GETTABLEKS                       R6 R0 K2 ["props"]
      123 GETTABLEKS                       R6 R6 K10 ["Network"]
      125 GETTABLEKS                       R6 R6 K11 ["networkInterface"]
      127 CALL                             R5 1 0
      128 RETURN                           R0 0

PROTO_85:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["assetsUploadedConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["assetsUploadedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["assetsUploadedConnection"]
       14 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_87:
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

PROTO_88:
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
       53 GETUPVAL                         R20 1
       54 CALL                             R20 0 1
       55 JUMPIFNOT                        R20 ; [+3]
       56 GETTABLEKS                       R19 R2 K22 ["showGetAssetFailed"]
       58 JUMP                             ; [+9]
       59 GETTABLEKS                       R20 R1 K23 ["networkErrorAction"]
       61 GETUPVAL                         R21 2
       62 GETTABLEKS                       R21 R21 K24 ["GET_ASSET_DETAIL_FAILURE_ACTION"]
       64 JUMPIFEQ                         R20 R21 ; [+2]
       66 LOADB                            R19 0 +1
       67 LOADB                            R19 1
       68 GETTABLEKS                       R21 R2 K25 ["isShowChangeDiscardMessageBox"]
       70 OR                               R20 R21 R19
       71 GETTABLEKS                       R21 R2 K26 ["iconFile"]
       73 GETTABLEKS                       R22 R2 K27 ["assetMediaUpdateData"]
       75 GETTABLEKS                       R23 R1 K28 ["assetTypeEnum"]
       77 GETTABLEKS                       R24 R1 K10 ["screenFlowType"]
       79 GETTABLEKS                       R25 R1 K29 ["changeTable"]
       81 JUMPIF                           R25 ; [+2]
       82 NEWTABLE                         R25 0 0
       84 GETTABLEKS                       R26 R1 K30 ["allowedAssetTypesForRelease"]
       86 GETTABLEKS                       R27 R1 K31 ["allowedAssetTypesForFree"]
       88 GETTABLEKS                       R28 R1 K32 ["allowedBundleTypeSettings"]
       90 MOVE                             R29 R16
       91 JUMPIF                           R29 ; [+5]
       92 GETUPVAL                         R29 0
       93 GETTABLEKS                       R29 R29 K33 ["ASSET_STATUS"]
       95 GETTABLEKS                       R29 R29 K34 ["Unknown"]
       97 GETTABLEKS                       R30 R2 K35 ["price"]
       99 GETUPVAL                         R32 3
      100 GETTABLEKS                       R32 R32 K36 ["isUGCBundleType"]
      102 MOVE                             R33 R23
      103 CALL                             R32 1 1
      104 JUMPIFNOT                        R32 ; [+3]
      105 GETTABLEKS                       R31 R1 K37 ["groupBundlesUploadEnabledForUser"]
      107 JUMP                             ; [+11]
      108 GETUPVAL                         R31 4
      109 GETTABLEKS                       R31 R31 K38 ["queryParam"]
      111 MOVE                             R32 R24
      112 MOVE                             R33 R23
      113 GETUPVAL                         R34 4
      114 GETTABLEKS                       R34 R34 K39 ["keys"]
      116 GETTABLEKS                       R34 R34 K40 ["SHOW_OWNERSHIP"]
      118 CALL                             R31 3 1
      119 GETUPVAL                         R32 4
      120 GETTABLEKS                       R32 R32 K38 ["queryParam"]
      122 MOVE                             R33 R24
      123 MOVE                             R34 R23
      124 GETUPVAL                         R35 4
      125 GETTABLEKS                       R35 R35 K39 ["keys"]
      127 GETTABLEKS                       R35 R35 K41 ["SHOW_COPY"]
      129 CALL                             R32 3 1
      130 GETTABLEKS                       R33 R1 K42 ["isPackageAsset"]
      132 JUMPIFNOT                        R33 ; [+1]
      133 LOADB                            R32 0
      134 GETTABLEKS                       R33 R0 K1 ["state"]
      136 GETTABLEKS                       R33 R33 K43 ["isAssetTypeSelectionAllowed"]
      138 JUMPIFNOT                        R33 ; [+13]
      139 GETTABLEKS                       R34 R0 K0 ["props"]
      141 GETTABLEKS                       R34 R34 K10 ["screenFlowType"]
      143 GETUPVAL                         R35 0
      144 GETTABLEKS                       R35 R35 K11 ["FLOW_TYPE"]
      146 GETTABLEKS                       R35 R35 K12 ["UPLOAD_FLOW"]
      148 JUMPIFEQ                         R34 R35 ; [+2]
      150 LOADB                            R33 0 +1
      151 LOADB                            R33 1
      152 GETUPVAL                         R34 4
      153 GETTABLEKS                       R34 R34 K38 ["queryParam"]
      155 MOVE                             R35 R24
      156 MOVE                             R36 R23
      157 GETUPVAL                         R37 4
      158 GETTABLEKS                       R37 R37 K39 ["keys"]
      160 GETTABLEKS                       R37 R37 K44 ["SHOW_COMMENT"]
      162 CALL                             R34 3 1
      163 GETUPVAL                         R35 4
      164 GETTABLEKS                       R35 R35 K38 ["queryParam"]
      166 MOVE                             R36 R24
      167 MOVE                             R37 R23
      168 GETUPVAL                         R38 4
      169 GETTABLEKS                       R38 R38 K39 ["keys"]
      171 GETTABLEKS                       R38 R38 K45 ["SHOW_ASSET_TYPE"]
      173 CALL                             R35 3 1
      174 GETUPVAL                         R36 3
      175 GETTABLEKS                       R36 R36 K46 ["getPreviewType"]
      177 MOVE                             R37 R23
      178 GETTABLEKS                       R38 R1 K47 ["instances"]
      180 CALL                             R36 2 1
      181 GETTABLEKS                       R38 R1 K48 ["animationPackType"]
      183 JUMPIFEQKNIL                     R38 ; [+8]
      185 GETUPVAL                         R37 5
      186 GETTABLEKS                       R37 R37 K49 ["getAvatarAnimationPartThumbnailUri"]
      188 GETTABLEKS                       R38 R1 K48 ["animationPackType"]
      190 CALL                             R37 1 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R37
      193 GETUPVAL                         R38 2
      194 MOVE                             R40 R24
      195 MOVE                             R41 R23
      196 GETTABLEKS                       R42 R0 K0 ["props"]
      198 GETTABLEKS                       R42 R42 K42 ["isPackageAsset"]
      200 MOVE                             R43 R10
      201 NAMECALL                         R38 R38 K50 ["getAssetconfigContent"]
      203 CALL                             R38 5 1
      204 LOADNIL                          R39
      205 GETUPVAL                         R40 6
      206 CALL                             R40 0 1
      207 JUMPIFNOT                        R40 ; [+52]
      208 GETUPVAL                         R41 0
      209 GETTABLEKS                       R41 R41 K11 ["FLOW_TYPE"]
      211 GETTABLEKS                       R41 R41 K51 ["EDIT_FLOW"]
      213 JUMPIFEQ                         R24 R41 ; [+2]
      215 LOADB                            R40 0 +1
      216 LOADB                            R40 1
      217 JUMPIFNOT                        R40 ; [+25]
      218 GETUPVAL                         R41 2
      219 GETTABLEKS                       R43 R1 K52 ["assetConfigData"]
      221 GETTABLEKS                       R43 R43 K53 ["Creator"]
      223 NAMECALL                         R41 R41 K54 ["isUnsupportedOwner"]
      225 CALL                             R41 2 1
      226 JUMPIFNOT                        R41 ; [+16]
      227 NEWTABLE                         R41 0 1
      229 GETUPVAL                         R42 2
      230 NAMECALL                         R42 R42 K55 ["getGeneralTab"]
      232 CALL                             R42 1 -1
      233 SETLIST                          R41 R42 -1 [1]
      235 MOVE                             R38 R41
      236 GETUPVAL                         R41 2
      237 NAMECALL                         R41 R41 K55 ["getGeneralTab"]
      239 CALL                             R41 1 1
      240 MOVE                             R6 R41
      241 LOADB                            R39 1
      242 JUMP                             ; [+17]
      243 JUMPIFNOT                        R40 ; [+16]
      244 GETIMPORT                        R41 K57 [next]
      246 GETTABLEKS                       R42 R1 K52 ["assetConfigData"]
      248 CALL                             R41 1 1
      249 JUMPIFNOTEQKNIL                  R41 ; [+10]
      251 NEWTABLE                         R41 0 1
      253 GETUPVAL                         R42 2
      254 NAMECALL                         R42 R42 K55 ["getGeneralTab"]
      256 CALL                             R42 1 -1
      257 SETLIST                          R41 R42 -1 [1]
      259 MOVE                             R38 R41
      260 NAMECALL                         R40 R0 K58 ["isLoading"]
      262 CALL                             R40 1 1
      263 GETUPVAL                         R41 7
      264 GETTABLEKS                       R41 R41 K59 ["checkCanSave"]
      266 MOVE                             R42 R25
      267 MOVE                             R43 R8
      268 MOVE                             R44 R9
      269 MOVE                             R45 R6
      270 MOVE                             R46 R24
      271 MOVE                             R47 R23
      272 MOVE                             R48 R22
      273 GETTABLEKS                       R49 R0 K60 ["isValidCatalogAsset"]
      275 CALL                             R49 0 1
      276 GETTABLEKS                       R50 R0 K61 ["validVersionDescriptions"]
      278 CALL                             R50 0 -1
      279 CALL                             R41 -1 1
      280 JUMPIFNOT                        R41 ; [+1]
      281 NOT                              R41 R40
      282 MOVE                             R42 R41
      283 JUMPIFNOT                        R42 ; [+3]
      284 GETTABLEKS                       R43 R1 K62 ["isAvatarItemDialogFlowEnabled"]
      286 NOT                              R42 R43
      287 MOVE                             R41 R42
      288 GETUPVAL                         R42 3
      289 GETTABLEKS                       R42 R42 K63 ["isMakeupAsset"]
      291 MOVE                             R43 R23
      292 CALL                             R42 1 1
      293 JUMPIFNOT                        R42 ; [+5]
      294 GETTABLEKS                       R42 R2 K64 ["selectedColor"]
      296 JUMPIFNOTEQKNIL                  R42 ; [+2]
      298 LOADB                            R41 0
      299 GETIMPORT                        R42 K68 [Enum.AssetType.Animation]
      301 JUMPIFNOTEQ                      R23 R42 ; [+6]
      303 GETTABLEKS                       R42 R1 K69 ["animationSectionValid"]
      305 JUMPIFNOTEQKB                    R42 FALSE ; [+2]
      307 LOADB                            R41 0
      308 GETUPVAL                         R43 8
      309 GETTABLEKS                       R43 R43 K71 ["SCROLLBAR_PADDING"]
      311 SUBRK                            R42 K70 [-240] R43
      312 GETTABLEKS                       R44 R1 K28 ["assetTypeEnum"]
      314 GETIMPORT                        R45 K73 [Enum.AssetType.Audio]
      316 JUMPIFEQ                         R44 R45 ; [+2]
      318 LOADB                            R43 0 +1
      319 LOADB                            R43 1
      320 GETTABLEKS                       R45 R1 K28 ["assetTypeEnum"]
      322 GETIMPORT                        R46 K75 [Enum.AssetType.Video]
      324 JUMPIFEQ                         R45 R46 ; [+2]
      326 LOADB                            R44 0 +1
      327 LOADB                            R44 1
      328 GETTABLEKS                       R46 R1 K28 ["assetTypeEnum"]
      330 GETIMPORT                        R47 K77 [Enum.AssetType.Model]
      332 JUMPIFEQ                         R46 R47 ; [+2]
      334 LOADB                            R45 0 +1
      335 LOADB                            R45 1
      336 GETTABLEKS                       R47 R1 K28 ["assetTypeEnum"]
      338 GETIMPORT                        R48 K79 [Enum.AssetType.Plugin]
      340 JUMPIFEQ                         R47 R48 ; [+2]
      342 LOADB                            R46 0 +1
      343 LOADB                            R46 1
      344 LOADNIL                          R47
      345 LOADB                            R48 0
      346 GETTABLEKS                       R49 R1 K80 ["Localization"]
      348 LOADK                            R52 K81 ["General"]
      349 LOADK                            R53 K82 ["Proceed"]
      350 NAMECALL                         R50 R49 K83 ["getText"]
      352 CALL                             R50 3 1
      353 LOADK                            R53 K81 ["General"]
      354 LOADK                            R54 K84 ["GoBack"]
      355 NAMECALL                         R51 R49 K83 ["getText"]
      357 CALL                             R51 3 1
      358 LOADK                            R54 K85 ["AssetConfigSharing"]
      359 LOADK                            R55 K86 ["PublicConfirmationHeading"]
      360 NAMECALL                         R52 R49 K83 ["getText"]
      362 CALL                             R52 3 1
      363 LOADK                            R55 K85 ["AssetConfigSharing"]
      364 LOADK                            R56 K87 ["PublicConfirmationMessage"]
      365 NAMECALL                         R53 R49 K83 ["getText"]
      367 CALL                             R53 3 1
      368 LOADK                            R56 K85 ["AssetConfigSharing"]
      369 LOADK                            R57 K88 ["PublicConfirmationTitle"]
      370 NAMECALL                         R54 R49 K83 ["getText"]
      372 CALL                             R54 3 1
      373 GETTABLEKS                       R55 R2 K89 ["isConfirmationDialogEnabled"]
      375 GETTABLEKS                       R56 R2 K90 ["confirmationDialogKey"]
      377 LOADK                            R59 K91 ["AssetConfig"]
      378 LOADK                            R60 K92 ["PublishAssetDialogPublish"]
      379 NAMECALL                         R57 R49 K83 ["getText"]
      381 CALL                             R57 3 1
      382 LOADK                            R60 K81 ["General"]
      383 LOADK                            R61 K93 ["Cancel"]
      384 NAMECALL                         R58 R49 K83 ["getText"]
      386 CALL                             R58 3 1
      387 LOADK                            R61 K91 ["AssetConfig"]
      388 LOADK                            R62 K94 ["PublishAssetDialogDescription"]
      389 NAMECALL                         R59 R49 K83 ["getText"]
      391 CALL                             R59 3 1
      392 LOADK                            R62 K91 ["AssetConfig"]
      393 LOADK                            R63 K95 ["PublishAssetDialogHeading"]
      394 NAMECALL                         R60 R49 K83 ["getText"]
      396 CALL                             R60 3 1
      397 LOADK                            R63 K81 ["General"]
      398 LOADK                            R64 K96 ["RobloxStudio"]
      399 NAMECALL                         R61 R49 K83 ["getText"]
      401 CALL                             R61 3 1
      402 GETUPVAL                         R63 9
      403 CALL                             R63 0 1
      404 JUMPIFNOT                        R63 ; [+8]
      405 GETUPVAL                         R62 3
      406 GETTABLEKS                       R62 R62 K97 ["getPublishOnApprovalFee"]
      408 GETTABLEKS                       R63 R0 K98 ["getPublishInfo"]
      410 CALL                             R63 0 -1
      411 CALL                             R62 -1 1
      412 JUMP                             ; [+1]
      413 LOADN                            R62 0
      414 GETTABLEKS                       R63 R2 K99 ["isPublishAssetsDialogEnabled"]
      416 JUMPIF                           R43 ; [+3]
      417 GETUPVAL                         R64 10
      418 JUMPIFNOT                        R64 ; [+3]
      419 JUMPIFNOT                        R44 ; [+2]
      420 NOT                              R47 R5
      421 JUMP                             ; [+2]
      422 JUMPIFNOT                        R45 ; [+1]
      423 LOADB                            R47 1
      424 JUMPIF                           R43 ; [+3]
      425 GETUPVAL                         R64 10
      426 JUMPIFNOT                        R64 ; [+2]
      427 JUMPIFNOT                        R44 ; [+1]
      428 LOADB                            R48 1
      429 JUMPIF                           R43 ; [+3]
      430 GETUPVAL                         R64 10
      431 JUMPIFNOT                        R64 ; [+2]
      432 JUMPIFNOT                        R44 ; [+1]
      433 MOVE                             R11 R17
      434 GETUPVAL                         R64 3
      435 GETTABLEKS                       R64 R64 K63 ["isMakeupAsset"]
      437 MOVE                             R65 R23
      438 CALL                             R64 1 1
      439 MOVE                             R65 R64
      440 JUMPIFNOT                        R65 ; [+6]
      441 GETTABLEKS                       R66 R2 K64 ["selectedColor"]
      443 JUMPIFEQKNIL                     R66 ; [+2]
      445 LOADB                            R65 0 +1
      446 LOADB                            R65 1
      447 GETUPVAL                         R66 11
      448 GETTABLEKS                       R66 R66 K100 ["createElement"]
      450 LOADK                            R67 K101 ["Frame"]
      451 DUPTABLE                         R68 K106 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      452 SETTABLEKS                       R4 R68 K3 ["Size"]
      454 GETTABLEKS                       R69 R3 K107 ["assetConfig"]
      456 GETTABLEKS                       R69 R69 K108 ["backgroundColor"]
      458 SETTABLEKS                       R69 R68 K104 ["BackgroundColor3"]
      460 DUPTABLE                         R69 K115 [{"UIListLayout", "AssetConfigMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      461 GETUPVAL                         R70 11
      462 GETTABLEKS                       R70 R70 K100 ["createElement"]
      464 LOADK                            R71 K109 ["UIListLayout"]
      465 DUPTABLE                         R72 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      466 GETIMPORT                        R73 K123 [Enum.FillDirection.Vertical]
      468 SETTABLEKS                       R73 R72 K116 ["FillDirection"]
      470 GETIMPORT                        R73 K125 [Enum.HorizontalAlignment.Left]
      472 SETTABLEKS                       R73 R72 K117 ["HorizontalAlignment"]
      474 GETIMPORT                        R73 K127 [Enum.VerticalAlignment.Bottom]
      476 SETTABLEKS                       R73 R72 K118 ["VerticalAlignment"]
      478 GETIMPORT                        R73 K129 [Enum.SortOrder.LayoutOrder]
      480 SETTABLEKS                       R73 R72 K119 ["SortOrder"]
      482 GETIMPORT                        R73 K132 [UDim.new]
      484 LOADN                            R74 0
      485 LOADN                            R75 0
      486 CALL                             R73 2 1
      487 SETTABLEKS                       R73 R72 K120 ["Padding"]
      489 CALL                             R70 2 1
      490 SETTABLEKS                       R70 R69 K109 ["UIListLayout"]
      492 MOVE                             R70 R20
      493 JUMPIFNOT                        R70 ; [+9]
      494 GETUPVAL                         R70 11
      495 GETTABLEKS                       R70 R70 K100 ["createElement"]
      497 GETUPVAL                         R71 12
      498 GETTABLEKS                       R72 R0 K133 ["getMessageBoxProps"]
      500 MOVE                             R73 R19
      501 CALL                             R72 1 -1
      502 CALL                             R70 -1 1
      503 SETTABLEKS                       R70 R69 K110 ["AssetConfigMessageBox"]
      505 GETTABLEKS                       R70 R1 K62 ["isAvatarItemDialogFlowEnabled"]
      507 JUMPIFNOT                        R70 ; [+33]
      508 GETUPVAL                         R70 11
      509 GETTABLEKS                       R70 R70 K100 ["createElement"]
      511 GETUPVAL                         R72 13
      512 CALL                             R72 0 1
      513 JUMPIFNOT                        R72 ; [+2]
      514 GETUPVAL                         R71 14
      515 JUMP                             ; [+1]
      516 GETUPVAL                         R71 15
      517 DUPTABLE                         R72 K138 [{"OnUploadConfirmed", "UploadFee", "ItemName", "PublishingFee"}]
      518 NEWCLOSURE                       R73 P0
      519 CAPTURE                          VAL R0
      520 SETTABLEKS                       R73 R72 K134 ["OnUploadConfirmed"]
      522 GETTABLEKS                       R74 R1 K139 ["uploadFee"]
      524 ORK                              R73 R74 K7 [""]
      525 SETTABLEKS                       R73 R72 K135 ["UploadFee"]
      527 GETTABLEKS                       R74 R2 K8 ["name"]
      529 ORK                              R73 R74 K7 [""]
      530 SETTABLEKS                       R73 R72 K136 ["ItemName"]
      532 GETUPVAL                         R74 9
      533 CALL                             R74 0 1
      534 JUMPIFNOT                        R74 ; [+2]
      535 MOVE                             R73 R62
      536 JUMP                             ; [+1]
      537 LOADNIL                          R73
      538 SETTABLEKS                       R73 R72 K137 ["PublishingFee"]
      540 CALL                             R70 2 1
      541 SETTABLEKS                       R70 R69 K111 ["AvatarItemMessageBox"]
      543 JUMPIFNOT                        R63 ; [+27]
      544 GETUPVAL                         R70 11
      545 GETTABLEKS                       R70 R70 K100 ["createElement"]
      547 GETUPVAL                         R71 16
      548 DUPTABLE                         R72 K150 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      549 SETTABLEKS                       R57 R72 K140 ["AcceptText"]
      551 SETTABLEKS                       R58 R72 K141 ["CancelText"]
      553 SETTABLEKS                       R59 R72 K144 ["Description"]
      555 SETTABLEKS                       R63 R72 K145 ["Enabled"]
      557 SETTABLEKS                       R60 R72 K146 ["Heading"]
      559 GETTABLEKS                       R73 R0 K151 ["onAssetPublishDialogAccepted"]
      561 SETTABLEKS                       R73 R72 K147 ["OnAccepted"]
      563 GETTABLEKS                       R73 R0 K152 ["onAssetPublishDialogCanceled"]
      565 SETTABLEKS                       R73 R72 K148 ["OnCanceled"]
      567 SETTABLEKS                       R61 R72 K149 ["Title"]
      569 CALL                             R70 2 1
      570 JUMP                             ; [+1]
      571 LOADNIL                          R70
      572 SETTABLEKS                       R70 R69 K112 ["AssetConfigMakeAssetPublicMessageBox"]
      574 GETUPVAL                         R70 11
      575 GETTABLEKS                       R70 R70 K100 ["createElement"]
      577 LOADK                            R71 K101 ["Frame"]
      578 DUPTABLE                         R72 K154 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      579 GETIMPORT                        R73 K156 [UDim2.new]
      581 LOADN                            R74 1
      582 LOADN                            R75 0
      583 LOADN                            R76 1
      584 LOADN                            R77 -62
      585 CALL                             R73 4 1
      586 SETTABLEKS                       R73 R72 K3 ["Size"]
      588 DUPTABLE                         R73 K166 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      589 GETUPVAL                         R74 11
      590 GETTABLEKS                       R74 R74 K100 ["createElement"]
      592 LOADK                            R75 K109 ["UIListLayout"]
      593 DUPTABLE                         R76 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      594 GETIMPORT                        R77 K168 [Enum.FillDirection.Horizontal]
      596 SETTABLEKS                       R77 R76 K116 ["FillDirection"]
      598 GETIMPORT                        R77 K125 [Enum.HorizontalAlignment.Left]
      600 SETTABLEKS                       R77 R76 K117 ["HorizontalAlignment"]
      602 GETIMPORT                        R77 K170 [Enum.VerticalAlignment.Top]
      604 SETTABLEKS                       R77 R76 K118 ["VerticalAlignment"]
      606 GETIMPORT                        R77 K129 [Enum.SortOrder.LayoutOrder]
      608 SETTABLEKS                       R77 R76 K119 ["SortOrder"]
      610 GETIMPORT                        R77 K132 [UDim.new]
      612 LOADN                            R78 0
      613 LOADN                            R79 0
      614 CALL                             R77 2 1
      615 SETTABLEKS                       R77 R76 K120 ["Padding"]
      617 CALL                             R74 2 1
      618 SETTABLEKS                       R74 R73 K109 ["UIListLayout"]
      620 GETUPVAL                         R74 11
      621 GETTABLEKS                       R74 R74 K100 ["createElement"]
      623 GETUPVAL                         R75 16
      624 DUPTABLE                         R76 K171 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      625 SETTABLEKS                       R50 R76 K140 ["AcceptText"]
      627 SETTABLEKS                       R51 R76 K141 ["CancelText"]
      629 SETTABLEKS                       R56 R76 K142 ["ConfirmationKey"]
      631 SETTABLEKS                       R53 R76 K144 ["Description"]
      633 SETTABLEKS                       R55 R76 K145 ["Enabled"]
      635 SETTABLEKS                       R52 R76 K146 ["Heading"]
      637 GETTABLEKS                       R77 R0 K172 ["onDialogAccepted"]
      639 SETTABLEKS                       R77 R76 K147 ["OnAccepted"]
      641 GETTABLEKS                       R77 R0 K173 ["onDialogCanceled"]
      643 SETTABLEKS                       R77 R76 K148 ["OnCanceled"]
      645 SETTABLEKS                       R54 R76 K149 ["Title"]
      647 CALL                             R74 2 1
      648 SETTABLEKS                       R74 R73 K157 ["SharingConfirmationDialog"]
      650 GETUPVAL                         R74 11
      651 GETTABLEKS                       R74 R74 K100 ["createElement"]
      653 GETUPVAL                         R75 17
      654 DUPTABLE                         R76 K188 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      655 SETTABLEKS                       R38 R76 K176 ["TabItems"]
      657 SETTABLEKS                       R6 R76 K177 ["CurrentTab"]
      659 SETTABLEKS                       R36 R76 K178 ["PreviewType"]
      661 SETTABLEKS                       R24 R76 K179 ["ScreenFlowType"]
      663 SETTABLEKS                       R16 R76 K180 ["AssetStatus"]
      665 SETTABLEKS                       R7 R76 K181 ["AssetId"]
      667 SETTABLEKS                       R21 R76 K182 ["IconFile"]
      669 SETTABLEKS                       R23 R76 K183 ["AssetTypeEnum"]
      671 SETTABLEKS                       R28 R76 K184 ["AllowedBundleTypeSettings"]
      673 GETTABLEKS                       R77 R0 K189 ["onTabSelect"]
      675 SETTABLEKS                       R77 R76 K185 ["OnTabSelect"]
      677 GETTABLEKS                       R77 R0 K190 ["chooseThumbnail"]
      679 SETTABLEKS                       R77 R76 K186 ["ChooseThumbnail"]
      681 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
      683 JUMPIFNOT                        R64 ; [+3]
      684 GETTABLEKS                       R77 R2 K64 ["selectedColor"]
      686 JUMP                             ; [+1]
      687 LOADNIL                          R77
      688 SETTABLEKS                       R77 R76 K64 ["selectedColor"]
      690 SETTABLEKS                       R37 R76 K187 ["animationTypeThumbnailUri"]
      692 CALL                             R74 2 1
      693 SETTABLEKS                       R74 R73 K158 ["Preview"]
      695 GETUPVAL                         R74 18
      696 GETTABLEKS                       R74 R74 K100 ["createElement"]
      698 GETUPVAL                         R75 19
      699 GETTABLEKS                       R75 R75 K191 ["Divider"]
      701 DUPTABLE                         R76 K194 [{["orientation"], ["LayoutOrder"] = 2}]
      702 GETUPVAL                         R77 19
      703 GETTABLEKS                       R77 R77 K195 ["Enums"]
      705 GETTABLEKS                       R77 R77 K196 ["DividerOrientation"]
      707 GETTABLEKS                       R77 R77 K122 ["Vertical"]
      709 SETTABLEKS                       R77 R76 K192 ["orientation"]
      711 CALL                             R74 2 1
      712 SETTABLEKS                       R74 R73 K159 ["VerticalLine"]
      714 MOVE                             R74 R40
      715 JUMPIFNOT                        R74 ; [+47]
      716 GETUPVAL                         R74 11
      717 GETTABLEKS                       R74 R74 K100 ["createElement"]
      719 GETUPVAL                         R75 20
      720 DUPTABLE                         R76 K198 [{["LayoutOrder"] = 3, ["Size"]}]
      721 GETIMPORT                        R77 K156 [UDim2.new]
      723 LOADN                            R78 1
      724 LOADN                            R79 -240
      725 LOADN                            R80 1
      726 LOADN                            R81 0
      727 CALL                             R77 4 1
      728 SETTABLEKS                       R77 R76 K3 ["Size"]
      730 DUPTABLE                         R77 K200 [{"LoadingIndicator"}]
      731 GETUPVAL                         R78 11
      732 GETTABLEKS                       R78 R78 K100 ["createElement"]
      734 GETUPVAL                         R79 21
      735 DUPTABLE                         R80 K203 [{"Size", "AnchorPoint", "Position"}]
      736 GETIMPORT                        R81 K156 [UDim2.new]
      738 LOADN                            R82 0
      739 LOADN                            R83 100
      740 LOADN                            R84 0
      741 LOADN                            R85 100
      742 CALL                             R81 4 1
      743 SETTABLEKS                       R81 R80 K3 ["Size"]
      745 GETIMPORT                        R81 K205 [Vector2.new]
      747 LOADK                            R82 K206 [0.5]
      748 LOADK                            R83 K206 [0.5]
      749 CALL                             R81 2 1
      750 SETTABLEKS                       R81 R80 K201 ["AnchorPoint"]
      752 GETIMPORT                        R81 K208 [UDim2.fromScale]
      754 LOADK                            R82 K206 [0.5]
      755 LOADK                            R83 K206 [0.5]
      756 CALL                             R81 2 1
      757 SETTABLEKS                       R81 R80 K202 ["Position"]
      759 CALL                             R78 2 1
      760 SETTABLEKS                       R78 R77 K199 ["LoadingIndicator"]
      762 CALL                             R74 3 1
      763 SETTABLEKS                       R74 R73 K160 ["LoadingIndicatorWrapper"]
      765 NOT                              R74 R40
      766 JUMPIFNOT                        R74 ; [+260]
      767 GETUPVAL                         R74 2
      768 MOVE                             R76 R6
      769 NAMECALL                         R74 R74 K209 ["isGeneral"]
      771 CALL                             R74 2 1
      772 JUMPIFNOT                        R74 ; [+254]
      773 GETUPVAL                         R74 11
      774 GETTABLEKS                       R74 R74 K100 ["createElement"]
      776 GETUPVAL                         R75 22
      777 NEWTABLE                         R76 64 0
      779 GETIMPORT                        R77 K156 [UDim2.new]
      781 LOADN                            R78 1
      782 LOADN                            R79 -240
      783 LOADN                            R80 1
      784 LOADN                            R81 0
      785 CALL                             R77 4 1
      786 SETTABLEKS                       R77 R76 K3 ["Size"]
      788 SETTABLEKS                       R47 R76 K210 ["allowSelectPrivate"]
      790 SETTABLEKS                       R7 R76 K6 ["assetId"]
      792 SETTABLEKS                       R8 R76 K8 ["name"]
      794 SETTABLEKS                       R9 R76 K9 ["description"]
      796 SETTABLEKS                       R10 R76 K13 ["owner"]
      798 SETTABLEKS                       R11 R76 K14 ["allowCopy"]
      800 SETTABLEKS                       R12 R76 K15 ["copyOn"]
      802 SETTABLEKS                       R13 R76 K16 ["allowComment"]
      804 SETTABLEKS                       R14 R76 K17 ["commentOn"]
      806 SETTABLEKS                       R15 R76 K18 ["deleteLocal"]
      808 SETTABLEKS                       R17 R76 K20 ["isAssetPublic"]
      810 SETTABLEKS                       R18 R76 K21 ["publishingRestriction"]
      812 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
      814 GETTABLEKS                       R77 R0 K211 ["onNameChange"]
      816 SETTABLEKS                       R77 R76 K211 ["onNameChange"]
      818 GETTABLEKS                       R77 R0 K212 ["onDescChange"]
      820 SETTABLEKS                       R77 R76 K212 ["onDescChange"]
      822 GETTABLEKS                       R77 R1 K213 ["groupId"]
      824 SETTABLEKS                       R77 R76 K214 ["preselectedGroupId"]
      826 GETTABLEKS                       R77 R0 K215 ["onAccessChange"]
      828 SETTABLEKS                       R77 R76 K216 ["onOwnerSelected"]
      830 GETTABLEKS                       R77 R0 K217 ["onSharingChanged"]
      832 SETTABLEKS                       R77 R76 K217 ["onSharingChanged"]
      834 GETTABLEKS                       R77 R0 K218 ["onAdditionalImagesChanged"]
      836 SETTABLEKS                       R77 R76 K218 ["onAdditionalImagesChanged"]
      838 GETTABLEKS                       R77 R0 K219 ["toggleCopy"]
      840 SETTABLEKS                       R77 R76 K219 ["toggleCopy"]
      842 GETTABLEKS                       R77 R0 K220 ["toggleComment"]
      844 SETTABLEKS                       R77 R76 K220 ["toggleComment"]
      846 GETTABLEKS                       R77 R0 K221 ["toggleDeleteLocal"]
      848 SETTABLEKS                       R77 R76 K221 ["toggleDeleteLocal"]
      850 GETTABLEKS                       R77 R0 K222 ["onAnimationSelectionChanged"]
      852 SETTABLEKS                       R77 R76 K222 ["onAnimationSelectionChanged"]
      854 GETTABLEKS                       R77 R0 K223 ["onanimationSectionValidityChanged"]
      856 SETTABLEKS                       R77 R76 K223 ["onanimationSectionValidityChanged"]
      858 GETTABLEKS                       R77 R2 K224 ["dataSharingEnabled"]
      860 SETTABLEKS                       R77 R76 K224 ["dataSharingEnabled"]
      862 GETTABLEKS                       R77 R2 K225 ["dataSharingToggled"]
      864 SETTABLEKS                       R77 R76 K225 ["dataSharingToggled"]
      866 GETTABLEKS                       R77 R0 K226 ["onDataConsentToggleClick"]
      868 SETTABLEKS                       R77 R76 K226 ["onDataConsentToggleClick"]
      870 GETUPVAL                         R78 13
      871 CALL                             R78 0 1
      872 JUMPIFNOT                        R78 ; [+3]
      873 GETTABLEKS                       R77 R0 K227 ["checkAvatarItemDependencies"]
      875 JUMP                             ; [+1]
      876 LOADNIL                          R77
      877 SETTABLEKS                       R77 R76 K228 ["onAvatarItemCategorySelected"]
      879 GETTABLEKS                       R77 R0 K229 ["canOfferPublishOnApproval"]
      881 CALL                             R77 0 1
      882 SETTABLEKS                       R77 R76 K230 ["publishOnApprovalEnabled"]
      884 GETTABLEKS                       R77 R1 K231 ["hasPublishingPreferences"]
      886 SETTABLEKS                       R77 R76 K231 ["hasPublishingPreferences"]
      888 GETTABLEKS                       R77 R1 K232 ["hasPublishingFeePreview"]
      890 SETTABLEKS                       R77 R76 K232 ["hasPublishingFeePreview"]
      892 GETTABLEKS                       R77 R1 K233 ["publishingFeePreview"]
      894 SETTABLEKS                       R77 R76 K233 ["publishingFeePreview"]
      896 GETTABLEKS                       R77 R2 K234 ["publishOnApprovalToggled"]
      898 SETTABLEKS                       R77 R76 K234 ["publishOnApprovalToggled"]
      900 GETTABLEKS                       R77 R0 K235 ["onPublishToMarketplaceToggleClick"]
      902 SETTABLEKS                       R77 R76 K235 ["onPublishToMarketplaceToggleClick"]
      904 GETUPVAL                         R78 23
      905 CALL                             R78 0 1
      906 JUMPIFNOT                        R78 ; [+3]
      907 GETTABLEKS                       R77 R1 K236 ["specialAttributes"]
      909 JUMP                             ; [+1]
      910 LOADNIL                          R77
      911 SETTABLEKS                       R77 R76 K236 ["specialAttributes"]
      913 GETUPVAL                         R78 23
      914 CALL                             R78 0 1
      915 JUMPIFNOT                        R78 ; [+3]
      916 GETTABLEKS                       R77 R1 K237 ["hasMetadataPermission"]
      918 JUMP                             ; [+1]
      919 LOADNIL                          R77
      920 SETTABLEKS                       R77 R76 K237 ["hasMetadataPermission"]
      922 SETTABLEKS                       R31 R76 K238 ["displayOwnership"]
      924 SETTABLEKS                       R32 R76 K239 ["displayCopy"]
      926 SETTABLEKS                       R34 R76 K240 ["displayComment"]
      928 SETTABLEKS                       R35 R76 K241 ["displayAssetType"]
      930 SETTABLEKS                       R48 R76 K242 ["displaySharing"]
      932 SETTABLEKS                       R33 R76 K243 ["displayAssetTypeSelection"]
      934 SETTABLEKS                       R39 R76 K244 ["hideCreatorStoreConfiguration"]
      936 JUMPIFNOT                        R46 ; [+2]
      937 MOVE                             R77 R26
      938 JUMP                             ; [+1]
      939 LOADNIL                          R77
      940 SETTABLEKS                       R77 R76 K30 ["allowedAssetTypesForRelease"]
      942 SETTABLEKS                       R27 R76 K31 ["allowedAssetTypesForFree"]
      944 JUMPIFNOT                        R46 ; [+2]
      945 MOVE                             R77 R16
      946 JUMP                             ; [+1]
      947 LOADNIL                          R77
      948 SETTABLEKS                       R77 R76 K245 ["newAssetStatus"]
      950 JUMPIFNOT                        R46 ; [+2]
      951 MOVE                             R77 R29
      952 JUMP                             ; [+1]
      953 LOADNIL                          R77
      954 SETTABLEKS                       R77 R76 K246 ["currentAssetStatus"]
      956 JUMPIFNOT                        R46 ; [+3]
      957 GETTABLEKS                       R77 R0 K247 ["onStatusChange"]
      959 JUMP                             ; [+1]
      960 LOADNIL                          R77
      961 SETTABLEKS                       R77 R76 K247 ["onStatusChange"]
      963 JUMPIFNOT                        R46 ; [+3]
      964 GETTABLEKS                       R77 R0 K248 ["onPriceChange"]
      966 JUMP                             ; [+1]
      967 LOADNIL                          R77
      968 SETTABLEKS                       R77 R76 K248 ["onPriceChange"]
      970 JUMPIFNOT                        R46 ; [+2]
      971 MOVE                             R77 R30
      972 JUMP                             ; [+1]
      973 LOADNIL                          R77
      974 SETTABLEKS                       R77 R76 K35 ["price"]
      976 LOADNIL                          R77
      977 SETTABLEKS                       R77 R76 K249 ["minPrice"]
      979 LOADNIL                          R77
      980 SETTABLEKS                       R77 R76 K250 ["maxPrice"]
      982 LOADNIL                          R77
      983 SETTABLEKS                       R77 R76 K251 ["feeRate"]
      985 LOADNIL                          R77
      986 SETTABLEKS                       R77 R76 K252 ["isPriceValid"]
      988 LOADN                            R77 3
      989 SETTABLEKS                       R77 R76 K128 ["LayoutOrder"]
      991 GETTABLEKS                       R77 R1 K47 ["instances"]
      993 SETTABLEKS                       R77 R76 K47 ["instances"]
      995 SETTABLEKS                       R64 R76 K253 ["showColorPicker"]
      997 JUMPIFNOT                        R64 ; [+3]
      998 GETTABLEKS                       R77 R2 K254 ["showColorPickerRequiredError"]
     1000 JUMP                             ; [+1]
     1001 LOADNIL                          R77
     1002 SETTABLEKS                       R77 R76 K254 ["showColorPickerRequiredError"]
     1004 GETTABLEKS                       R77 R2 K255 ["showNameRequiredError"]
     1006 SETTABLEKS                       R77 R76 K255 ["showNameRequiredError"]
     1008 GETTABLEKS                       R77 R2 K256 ["showDescriptionRequiredError"]
     1010 SETTABLEKS                       R77 R76 K256 ["showDescriptionRequiredError"]
     1012 JUMPIFNOT                        R64 ; [+3]
     1013 GETTABLEKS                       R77 R2 K64 ["selectedColor"]
     1015 JUMP                             ; [+1]
     1016 LOADNIL                          R77
     1017 SETTABLEKS                       R77 R76 K64 ["selectedColor"]
     1019 JUMPIFNOT                        R64 ; [+3]
     1020 GETTABLEKS                       R77 R0 K257 ["onSelectedColorChange"]
     1022 JUMP                             ; [+1]
     1023 LOADNIL                          R77
     1024 SETTABLEKS                       R77 R76 K258 ["setSelectedColor"]
     1026 CALL                             R74 2 1
     1027 SETTABLEKS                       R74 R73 K161 ["PublishAsset"]
     1029 GETUPVAL                         R74 2
     1030 MOVE                             R76 R6
     1031 NAMECALL                         R74 R74 K259 ["isVersions"]
     1033 CALL                             R74 2 1
     1034 JUMPIFNOT                        R74 ; [+77]
     1035 GETUPVAL                         R74 11
     1036 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1038 GETUPVAL                         R75 24
     1039 DUPTABLE                         R76 K273 [{["Size"], ["assetId"], ["assetTypeEnum"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
     1040 GETIMPORT                        R77 K156 [UDim2.new]
     1042 LOADN                            R78 1
     1043 LOADN                            R79 -240
     1044 LOADN                            R80 1
     1045 LOADN                            R81 -20
     1046 CALL                             R77 4 1
     1047 SETTABLEKS                       R77 R76 K3 ["Size"]
     1049 SETTABLEKS                       R7 R76 K6 ["assetId"]
     1051 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
     1053 GETTABLEKS                       R77 R2 K274 ["versionsCurrentItem"]
     1055 SETTABLEKS                       R77 R76 K260 ["currentItem"]
     1057 GETTABLEKS                       R77 R2 K275 ["versionsRootItems"]
     1059 SETTABLEKS                       R77 R76 K261 ["rootItems"]
     1061 GETTABLEKS                       R77 R2 K276 ["versionsOpenInputKey"]
     1063 SETTABLEKS                       R77 R76 K262 ["openInputKey"]
     1065 GETTABLEKS                       R77 R2 K277 ["versionsPreviousInput"]
     1067 SETTABLEKS                       R77 R76 K263 ["previousInput"]
     1069 GETTABLEKS                       R77 R2 K278 ["versionsPageIndex"]
     1071 SETTABLEKS                       R77 R76 K264 ["pageIndex"]
     1073 GETTABLEKS                       R77 R2 K279 ["versionsPageRootItems"]
     1075 SETTABLEKS                       R77 R76 K265 ["pageRootItems"]
     1077 GETUPVAL                         R78 25
     1078 CALL                             R78 0 1
     1079 JUMPIFNOT                        R78 ; [+3]
     1080 GETTABLEKS                       R77 R1 K280 ["versionHistoryWithDescriptions"]
     1082 JUMP                             ; [+2]
     1083 GETTABLEKS                       R77 R1 K266 ["versionHistory"]
     1085 SETTABLEKS                       R77 R76 K266 ["versionHistory"]
     1087 GETTABLEKS                       R77 R0 K281 ["versionsOnDescClicked"]
     1089 SETTABLEKS                       R77 R76 K267 ["onDescClicked"]
     1091 GETTABLEKS                       R77 R0 K282 ["versionsCloseInput"]
     1093 SETTABLEKS                       R77 R76 K268 ["closeInput"]
     1095 GETTABLEKS                       R77 R0 K269 ["setVersionError"]
     1097 SETTABLEKS                       R77 R76 K269 ["setVersionError"]
     1099 GETTABLEKS                       R77 R0 K283 ["versionsSetPreviousInput"]
     1101 SETTABLEKS                       R77 R76 K270 ["setPreviousInput"]
     1103 GETTABLEKS                       R77 R0 K284 ["versionsOnPageChange"]
     1105 SETTABLEKS                       R77 R76 K271 ["onPageChange"]
     1107 GETTABLEKS                       R77 R0 K285 ["versionsSetStates"]
     1109 SETTABLEKS                       R77 R76 K272 ["setStates"]
     1111 CALL                             R74 2 1
     1112 SETTABLEKS                       R74 R73 K162 ["Versions"]
     1114 GETUPVAL                         R75 2
     1115 MOVE                             R77 R6
     1116 NAMECALL                         R75 R75 K286 ["isSales"]
     1118 CALL                             R75 2 1
     1119 JUMPIFNOT                        R75 ; [+18]
     1120 GETUPVAL                         R74 11
     1121 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1123 GETUPVAL                         R75 26
     1124 DUPTABLE                         R76 K289 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1125 GETIMPORT                        R77 K156 [UDim2.new]
     1127 LOADN                            R78 1
     1128 LOADN                            R79 -240
     1129 LOADN                            R80 1
     1130 LOADN                            R81 0
     1131 CALL                             R77 4 1
     1132 SETTABLEKS                       R77 R76 K287 ["size"]
     1134 SETTABLEKS                       R7 R76 K6 ["assetId"]
     1136 CALL                             R74 2 1
     1137 JUMP                             ; [+1]
     1138 LOADNIL                          R74
     1139 SETTABLEKS                       R74 R73 K163 ["Sales"]
     1141 GETUPVAL                         R74 2
     1142 MOVE                             R76 R6
     1143 NAMECALL                         R74 R74 K290 ["isOverride"]
     1145 CALL                             R74 2 1
     1146 JUMPIFNOT                        R74 ; [+56]
     1147 GETUPVAL                         R75 27
     1148 CALL                             R75 0 1
     1149 JUMPIFNOT                        R75 ; [+28]
     1150 GETUPVAL                         R75 3
     1151 GETTABLEKS                       R75 R75 K291 ["isAvatarItemUpdateSupported"]
     1153 MOVE                             R76 R23
     1154 CALL                             R75 1 1
     1155 JUMPIFNOT                        R75 ; [+22]
     1156 GETUPVAL                         R74 18
     1157 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1159 GETUPVAL                         R75 28
     1160 DUPTABLE                         R76 K293 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1161 GETIMPORT                        R77 K156 [UDim2.new]
     1163 LOADN                            R78 1
     1164 LOADN                            R79 -240
     1165 LOADN                            R80 1
     1166 LOADN                            R81 0
     1167 CALL                             R77 4 1
     1168 SETTABLEKS                       R77 R76 K3 ["Size"]
     1170 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
     1172 GETTABLEKS                       R77 R0 K292 ["onOverrideAssetSelected"]
     1174 SETTABLEKS                       R77 R76 K292 ["onOverrideAssetSelected"]
     1176 CALL                             R74 2 1
     1177 JUMP                             ; [+25]
     1178 GETUPVAL                         R74 11
     1179 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1181 GETUPVAL                         R75 29
     1182 DUPTABLE                         R76 K294 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1183 GETIMPORT                        R77 K156 [UDim2.new]
     1185 LOADN                            R78 1
     1186 LOADN                            R79 -240
     1187 LOADN                            R80 1
     1188 LOADN                            R81 0
     1189 CALL                             R77 4 1
     1190 SETTABLEKS                       R77 R76 K3 ["Size"]
     1192 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
     1194 GETTABLEKS                       R77 R1 K47 ["instances"]
     1196 SETTABLEKS                       R77 R76 K47 ["instances"]
     1198 GETTABLEKS                       R77 R0 K292 ["onOverrideAssetSelected"]
     1200 SETTABLEKS                       R77 R76 K292 ["onOverrideAssetSelected"]
     1202 CALL                             R74 2 1
     1203 SETTABLEKS                       R74 R73 K164 ["OverrideAsset"]
     1205 GETUPVAL                         R74 2
     1206 MOVE                             R76 R6
     1207 NAMECALL                         R74 R74 K295 ["isPermissions"]
     1209 CALL                             R74 2 1
     1210 JUMPIFNOT                        R74 ; [+30]
     1211 GETUPVAL                         R74 11
     1212 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1214 GETUPVAL                         R75 30
     1215 GETTABLEKS                       R75 R75 K296 ["AsyncCache"]
     1217 NEWTABLE                         R76 0 0
     1219 NEWTABLE                         R77 0 1
     1221 GETUPVAL                         R78 11
     1222 GETTABLEKS                       R78 R78 K100 ["createElement"]
     1224 GETUPVAL                         R79 31
     1225 DUPTABLE                         R80 K297 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1226 GETIMPORT                        R81 K156 [UDim2.new]
     1228 LOADN                            R82 1
     1229 MOVE                             R83 R42
     1230 LOADN                            R84 1
     1231 LOADN                            R85 0
     1232 CALL                             R81 4 1
     1233 SETTABLEKS                       R81 R80 K3 ["Size"]
     1235 SETTABLEKS                       R7 R80 K181 ["AssetId"]
     1237 CALL                             R78 2 -1
     1238 SETLIST                          R77 R78 -1 [1]
     1240 CALL                             R74 3 1
     1241 SETTABLEKS                       R74 R73 K165 ["PackagePermissions"]
     1243 CALL                             R70 3 1
     1244 SETTABLEKS                       R70 R69 K113 ["MainPage"]
     1246 GETUPVAL                         R70 11
     1247 GETTABLEKS                       R70 R70 K100 ["createElement"]
     1249 GETUPVAL                         R71 32
     1250 DUPTABLE                         R72 K303 [{["AssetId"], ["CanSave"], ["publishOnApprovalFee"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1251 GETTABLEKS                       R73 R2 K304 ["overrideAssetId"]
     1253 SETTABLEKS                       R73 R72 K181 ["AssetId"]
     1255 SETTABLEKS                       R41 R72 K298 ["CanSave"]
     1257 GETUPVAL                         R74 9
     1258 CALL                             R74 0 1
     1259 JUMPIFNOT                        R74 ; [+2]
     1260 MOVE                             R73 R62
     1261 JUMP                             ; [+1]
     1262 LOADNIL                          R73
     1263 SETTABLEKS                       R73 R72 K299 ["publishOnApprovalFee"]
     1265 GETIMPORT                        R73 K156 [UDim2.new]
     1267 LOADN                            R74 1
     1268 LOADN                            R75 0
     1269 LOADN                            R76 0
     1270 LOADN                            R77 62
     1271 CALL                             R73 4 1
     1272 SETTABLEKS                       R73 R72 K3 ["Size"]
     1274 GETTABLEKS                       R73 R0 K305 ["tryCancelWithYield"]
     1276 SETTABLEKS                       R73 R72 K300 ["TryCancel"]
     1278 GETTABLEKS                       R73 R0 K306 ["tryPublishWithConfirmDialog"]
     1280 SETTABLEKS                       R73 R72 K301 ["TryPublish"]
     1282 JUMPIF                           R41 ; [+8]
     1283 NEWCLOSURE                       R73 P1
     1284 CAPTURE                          VAL R0
     1285 CAPTURE                          VAL R65
     1286 CAPTURE                          VAL R8
     1287 CAPTURE                          VAL R9
     1288 CAPTURE                          UPVAL U3
     1289 CAPTURE                          VAL R23
     1290 JUMP                             ; [+1]
     1291 LOADNIL                          R73
     1292 SETTABLEKS                       R73 R72 K302 ["OnPublishButtonHover"]
     1294 CALL                             R70 2 1
     1295 SETTABLEKS                       R70 R69 K114 ["Footer"]
     1297 CALL                             R66 3 -1
     1298 RETURN                           R66 -1

PROTO_89:
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
      272 GETTABLEKS                       R16 R0 K55 ["isAvatarItemDialogFlowEnabled"]
      274 SETTABLEKS                       R16 R15 K55 ["isAvatarItemDialogFlowEnabled"]
      276 RETURN                           R15 1

PROTO_90:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 CALL                             R4 3 -1
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 3
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 MOVE                             R7 R2
       16 CALL                             R4 3 -1
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_127:
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
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U7
       32 CAPTURE                          UPVAL U8
       33 SETTABLEKS                       R2 R1 K5 ["postRevertVersion"]
       35 NEWCLOSURE                       R2 P6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U9
       38 SETTABLEKS                       R2 R1 K6 ["postVersionDescription"]
       40 NEWCLOSURE                       R2 P7
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          UPVAL U12
       45 SETTABLEKS                       R2 R1 K7 ["setTab"]
       47 NEWCLOSURE                       R2 P8
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U13
       50 SETTABLEKS                       R2 R1 K8 ["getIsVerifiedCreator"]
       52 NEWCLOSURE                       R2 P9
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U14
       55 SETTABLEKS                       R2 R1 K9 ["getItemUploadFee"]
       57 GETUPVAL                         R3 15
       58 CALL                             R3 0 1
       59 JUMPIFNOT                        R3 ; [+4]
       60 NEWCLOSURE                       R2 P10
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U16
       63 JUMP                             ; [+1]
       64 LOADNIL                          R2
       65 SETTABLEKS                       R2 R1 K10 ["getPublishingPreferences"]
       67 GETUPVAL                         R3 15
       68 CALL                             R3 0 1
       69 JUMPIFNOT                        R3 ; [+4]
       70 NEWCLOSURE                       R2 P11
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U17
       73 JUMP                             ; [+1]
       74 LOADNIL                          R2
       75 SETTABLEKS                       R2 R1 K11 ["clearPublishingPreferences"]
       77 GETUPVAL                         R3 15
       78 CALL                             R3 0 1
       79 JUMPIFNOT                        R3 ; [+4]
       80 NEWCLOSURE                       R2 P12
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U18
       83 JUMP                             ; [+1]
       84 LOADNIL                          R2
       85 SETTABLEKS                       R2 R1 K12 ["getPublishingFeePreview"]
       87 GETUPVAL                         R3 15
       88 CALL                             R3 0 1
       89 JUMPIFNOT                        R3 ; [+4]
       90 NEWCLOSURE                       R2 P13
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U19
       93 JUMP                             ; [+1]
       94 LOADNIL                          R2
       95 SETTABLEKS                       R2 R1 K13 ["clearPublishingFeePreview"]
       97 GETUPVAL                         R3 20
       98 CALL                             R3 0 1
       99 JUMPIFNOT                        R3 ; [+4]
      100 NEWCLOSURE                       R2 P14
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U21
      103 JUMP                             ; [+1]
      104 LOADNIL                          R2
      105 SETTABLEKS                       R2 R1 K14 ["dispatchFetchUploadFeeWithMetadata"]
      107 NEWCLOSURE                       R2 P15
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U22
      110 SETTABLEKS                       R2 R1 K15 ["dispatchPostPackageMetadataRequest"]
      112 NEWCLOSURE                       R2 P16
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U23
      115 SETTABLEKS                       R2 R1 K16 ["updateStore"]
      117 NEWCLOSURE                       R2 P17
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U24
      120 SETTABLEKS                       R2 R1 K17 ["dispatchGetPackageCollaboratorsRequest"]
      122 NEWCLOSURE                       R2 P18
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U25
      125 SETTABLEKS                       R2 R1 K18 ["dispatchPutPackagePermissionsRequest"]
      127 NEWCLOSURE                       R2 P19
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U26
      130 SETTABLEKS                       R2 R1 K19 ["dispatchPostAssetCheckPermissions"]
      132 NEWCLOSURE                       R2 P20
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U27
      135 SETTABLEKS                       R2 R1 K20 ["dispatchGetGroupMetadata"]
      137 NEWCLOSURE                       R2 P21
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U28
      140 SETTABLEKS                       R2 R1 K21 ["dispatchGetGroupRoleInfo"]
      142 NEWCLOSURE                       R2 P22
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U29
      145 SETTABLEKS                       R2 R1 K22 ["dispatchGetUsername"]
      147 NEWCLOSURE                       R2 P23
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U30
      150 SETTABLEKS                       R2 R1 K23 ["dispatchGetExperienceName"]
      152 NEWCLOSURE                       R2 P24
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U31
      155 SETTABLEKS                       R2 R1 K24 ["dispatchPatchMakeAssetPublicRequest"]
      157 NEWCLOSURE                       R2 P25
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U32
      160 SETTABLEKS                       R2 R1 K25 ["dispatchGetAssetPermissionsRequest"]
      162 NEWCLOSURE                       R2 P26
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U33
      165 SETTABLEKS                       R2 R1 K26 ["dispatchSetDescendantPermissions"]
      167 NEWCLOSURE                       R2 P27
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U34
      170 SETTABLEKS                       R2 R1 K27 ["dispatchGetPublishingRequirements"]
      172 NEWCLOSURE                       R2 P28
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U35
      175 SETTABLEKS                       R2 R1 K28 ["dispatchGetAssetMediaMetadataArray"]
      177 NEWCLOSURE                       R2 P29
      178 CAPTURE                          VAL R0
      179 CAPTURE                          UPVAL U36
      180 SETTABLEKS                       R2 R1 K29 ["dispatchGetFiatProduct"]
      182 GETUPVAL                         R3 37
      183 CALL                             R3 0 1
      184 JUMPIFNOT                        R3 ; [+4]
      185 NEWCLOSURE                       R2 P30
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U38
      188 JUMP                             ; [+1]
      189 LOADNIL                          R2
      190 SETTABLEKS                       R2 R1 K30 ["dispatchGetSellerStatus"]
      192 NEWCLOSURE                       R2 P31
      193 CAPTURE                          VAL R0
      194 CAPTURE                          UPVAL U39
      195 SETTABLEKS                       R2 R1 K31 ["dispatchValidateAnimationResult"]
      197 NEWCLOSURE                       R2 P32
      198 CAPTURE                          VAL R0
      199 CAPTURE                          UPVAL U40
      200 SETTABLEKS                       R2 R1 K32 ["dispatchCheckAvatarAssetPrivacy"]
      202 GETUPVAL                         R3 41
      203 CALL                             R3 0 1
      204 JUMPIFNOT                        R3 ; [+4]
      205 NEWCLOSURE                       R2 P33
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U42
      208 JUMP                             ; [+1]
      209 LOADNIL                          R2
      210 SETTABLEKS                       R2 R1 K33 ["dispatchCheckAvatarItemDependencies"]
      212 NEWCLOSURE                       R2 P34
      213 CAPTURE                          VAL R0
      214 CAPTURE                          UPVAL U43
      215 SETTABLEKS                       R2 R1 K34 ["dispatchDownloadFlow"]
      217 NEWCLOSURE                       R2 P35
      218 CAPTURE                          VAL R0
      219 CAPTURE                          UPVAL U44
      220 SETTABLEKS                       R2 R1 K35 ["dispatchEditFlow"]
      222 NEWCLOSURE                       R2 P36
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U45
      225 SETTABLEKS                       R2 R1 K36 ["dispatchUploadFlow"]
      227 RETURN                           R1 1

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
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagToolboxAssetConfigOnboardingLink"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K1 [game]
       58 LOADK                            R10 K18 ["ToolboxSendPackageVersionNoteTelemetry"]
       59 NAMECALL                         R8 R8 K10 ["GetFastFlag"]
       61 CALL                             R8 2 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K19 ["HttpService"]
       65 NAMECALL                         R9 R9 K3 ["GetService"]
       67 CALL                             R9 2 1
       68 GETIMPORT                        R10 K1 [game]
       70 LOADK                            R12 K20 ["MemStorageService"]
       71 NAMECALL                         R10 R10 K3 ["GetService"]
       73 CALL                             R10 2 1
       74 GETTABLEKS                       R11 R1 K21 ["Packages"]
       76 GETIMPORT                        R12 K15 [require]
       78 GETTABLEKS                       R13 R11 K22 ["React"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K15 [require]
       83 GETTABLEKS                       R14 R11 K23 ["Roact"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K15 [require]
       88 GETTABLEKS                       R15 R11 K24 ["RoactRodux"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K15 [require]
       93 GETTABLEKS                       R16 R11 K25 ["Foundation"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K15 [require]
       98 GETTABLEKS                       R17 R11 K26 ["Cryo"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K15 [require]
      103 GETTABLEKS                       R18 R2 K27 ["Analytics"]
      105 GETTABLEKS                       R18 R18 K27 ["Analytics"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R18 R1 K7 ["Src"]
      110 GETTABLEKS                       R18 R18 K28 ["Components"]
      112 GETTABLEKS                       R19 R18 K29 ["AssetConfiguration"]
      114 GETIMPORT                        R20 K15 [require]
      116 GETTABLEKS                       R21 R19 K30 ["PreviewArea"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K15 [require]
      121 GETTABLEKS                       R22 R19 K31 ["PublishAsset"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K15 [require]
      126 GETTABLEKS                       R23 R19 K32 ["AssetConfigFooter"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K15 [require]
      131 GETTABLEKS                       R24 R19 K33 ["Versions"]
      133 CALL                             R23 1 1
      134 GETIMPORT                        R24 K15 [require]
      136 GETTABLEKS                       R25 R19 K34 ["DataSharing"]
      138 CALL                             R24 1 1
      139 GETIMPORT                        R25 K15 [require]
      141 GETTABLEKS                       R26 R19 K35 ["CreatorDashboardLinkContent"]
      143 CALL                             R25 1 1
      144 GETIMPORT                        R26 K15 [require]
      146 GETTABLEKS                       R27 R19 K36 ["Permissions"]
      148 GETTABLEKS                       R27 R27 K37 ["PermissionsPage"]
      150 CALL                             R26 1 1
      151 GETIMPORT                        R27 K15 [require]
      153 GETTABLEKS                       R28 R19 K36 ["Permissions"]
      155 GETTABLEKS                       R28 R28 K38 ["CollaboratorInfo"]
      157 CALL                             R27 1 1
      158 GETIMPORT                        R28 K15 [require]
      160 GETTABLEKS                       R29 R19 K39 ["WarningDialog"]
      162 CALL                             R28 1 1
      163 GETIMPORT                        R29 K15 [require]
      165 GETTABLEKS                       R30 R19 K40 ["AvatarItemDialogContainer"]
      167 CALL                             R29 1 1
      168 GETIMPORT                        R30 K15 [require]
      170 GETTABLEKS                       R31 R19 K41 ["AvatarItemDependencyDialogContainer"]
      172 CALL                             R30 1 1
      173 GETIMPORT                        R31 K15 [require]
      175 GETTABLEKS                       R32 R19 K42 ["OverrideAsset"]
      177 CALL                             R31 1 1
      178 GETIMPORT                        R32 K15 [require]
      180 GETTABLEKS                       R33 R19 K43 ["AvatarItemOverride"]
      182 CALL                             R32 1 1
      183 GETIMPORT                        R33 K15 [require]
      185 GETTABLEKS                       R34 R18 K44 ["MessageBox"]
      187 GETTABLEKS                       R34 R34 K44 ["MessageBox"]
      189 CALL                             R33 1 1
      190 GETIMPORT                        R34 K15 [require]
      192 GETTABLEKS                       R35 R2 K45 ["AssetPermissionUtil"]
      194 CALL                             R34 1 1
      195 GETIMPORT                        R35 K15 [require]
      197 GETTABLEKS                       R36 R2 K46 ["AvatarAnimationStudioToolboxTextures"]
      199 CALL                             R35 1 1
      200 GETIMPORT                        R36 K15 [require]
      202 GETTABLEKS                       R37 R2 K47 ["Images"]
      204 CALL                             R36 1 1
      205 GETIMPORT                        R37 K15 [require]
      207 GETTABLEKS                       R38 R2 K48 ["AssetConfigConstants"]
      209 CALL                             R37 1 1
      210 GETIMPORT                        R38 K15 [require]
      212 GETTABLEKS                       R39 R2 K49 ["Constants"]
      214 CALL                             R38 1 1
      215 GETIMPORT                        R39 K15 [require]
      217 GETTABLEKS                       R40 R2 K50 ["ScreenSetup"]
      219 CALL                             R39 1 1
      220 GETIMPORT                        R40 K15 [require]
      222 GETTABLEKS                       R41 R2 K51 ["AssetConfigUtil"]
      224 CALL                             R40 1 1
      225 GETIMPORT                        R41 K15 [require]
      227 GETTABLEKS                       R42 R2 K52 ["PublishUtil"]
      229 CALL                             R41 1 1
      230 GETIMPORT                        R42 K15 [require]
      232 GETTABLEKS                       R43 R2 K53 ["getAllowedAssetTypeEnums"]
      234 CALL                             R42 1 1
      235 GETIMPORT                        R43 K15 [require]
      237 GETTABLEKS                       R44 R2 K54 ["FiatUtil"]
      239 CALL                             R43 1 1
      240 GETIMPORT                        R44 K15 [require]
      242 GETTABLEKS                       R45 R2 K55 ["MetadataType"]
      244 CALL                             R44 1 1
      245 GETIMPORT                        R45 K15 [require]
      247 GETTABLEKS                       R46 R11 K56 ["Framework"]
      249 CALL                             R45 1 1
      250 GETTABLEKS                       R46 R45 K8 ["Util"]
      252 GETTABLEKS                       R46 R46 K57 ["deepCopy"]
      254 GETTABLEKS                       R47 R45 K8 ["Util"]
      256 GETTABLEKS                       R47 R47 K58 ["deepEqual"]
      258 GETTABLEKS                       R48 R45 K59 ["Dash"]
      260 GETTABLEKS                       R49 R48 K60 ["slice"]
      262 GETIMPORT                        R50 K15 [require]
      264 GETTABLEKS                       R51 R1 K7 ["Src"]
      266 GETTABLEKS                       R51 R51 K61 ["Networking"]
      268 GETTABLEKS                       R51 R51 K62 ["Requests"]
      270 GETTABLEKS                       R51 R51 K63 ["MakeChangeRequest"]
      272 CALL                             R50 1 1
      273 GETTABLEKS                       R51 R1 K7 ["Src"]
      275 GETTABLEKS                       R51 R51 K64 ["Types"]
      277 GETIMPORT                        R52 K15 [require]
      279 GETTABLEKS                       R53 R51 K65 ["AssetMediaTypes"]
      281 CALL                             R52 1 1
      282 GETIMPORT                        R53 K15 [require]
      284 GETTABLEKS                       R54 R51 K66 ["AssetSubTypes"]
      286 CALL                             R53 1 1
      287 GETIMPORT                        R54 K15 [require]
      289 GETTABLEKS                       R55 R51 K67 ["ConfigTypes"]
      291 CALL                             R54 1 1
      292 GETTABLEKS                       R55 R1 K7 ["Src"]
      294 GETTABLEKS                       R55 R55 K61 ["Networking"]
      296 GETTABLEKS                       R55 R55 K62 ["Requests"]
      298 GETIMPORT                        R56 K15 [require]
      300 GETTABLEKS                       R57 R55 K68 ["GetAssetDetailsRequest"]
      302 CALL                             R56 1 1
      303 GETIMPORT                        R57 K15 [require]
      305 GETTABLEKS                       R58 R55 K69 ["PostRevertVersionRequest"]
      307 CALL                             R57 1 1
      308 GETIMPORT                        R58 K15 [require]
      310 GETTABLEKS                       R59 R55 K70 ["PostRollbackVersionOpenCloudRequest"]
      312 CALL                             R58 1 1
      313 GETIMPORT                        R59 K15 [require]
      315 GETTABLEKS                       R60 R55 K71 ["PostVersionDescriptionRequest"]
      317 CALL                             R59 1 1
      318 GETIMPORT                        R60 K15 [require]
      320 GETTABLEKS                       R61 R55 K72 ["GetIsVerifiedCreatorRequest"]
      322 CALL                             R60 1 1
      323 GETIMPORT                        R61 K15 [require]
      325 GETTABLEKS                       R62 R55 K73 ["PostPackageMetadataRequest"]
      327 CALL                             R61 1 1
      328 GETIMPORT                        R62 K15 [require]
      330 GETTABLEKS                       R63 R55 K74 ["GetPackageCollaboratorsRequest"]
      332 CALL                             R62 1 1
      333 GETIMPORT                        R63 K15 [require]
      335 GETTABLEKS                       R64 R55 K75 ["PutPackagePermissionsRequest"]
      337 CALL                             R63 1 1
      338 GETIMPORT                        R64 K15 [require]
      340 GETTABLEKS                       R65 R55 K76 ["PostAssetCheckPermissions"]
      342 CALL                             R64 1 1
      343 GETIMPORT                        R65 K15 [require]
      345 GETTABLEKS                       R66 R55 K77 ["GetMarketplaceInfoRequest"]
      347 CALL                             R65 1 1
      348 GETIMPORT                        R66 K15 [require]
      350 GETTABLEKS                       R67 R55 K78 ["GetItemUploadFeeRequest"]
      352 CALL                             R66 1 1
      353 GETIMPORT                        R67 K15 [require]
      355 GETTABLEKS                       R68 R55 K79 ["GetPublishingPreferencesRequest"]
      357 CALL                             R67 1 1
      358 GETIMPORT                        R68 K15 [require]
      360 GETTABLEKS                       R69 R55 K80 ["GetPublishingFeePreviewRequest"]
      362 CALL                             R68 1 1
      363 GETIMPORT                        R69 K15 [require]
      365 GETTABLEKS                       R70 R55 K81 ["PatchMakeAssetPublicRequest"]
      367 CALL                             R69 1 1
      368 GETIMPORT                        R70 K15 [require]
      370 GETTABLEKS                       R71 R55 K82 ["GetAssetPermissionsRequest"]
      372 CALL                             R70 1 1
      373 GETIMPORT                        R71 K15 [require]
      375 GETTABLEKS                       R72 R55 K83 ["GetPublishingRequirementsRequest"]
      377 CALL                             R71 1 1
      378 GETIMPORT                        R72 K15 [require]
      380 GETTABLEKS                       R73 R55 K84 ["GetAssetMediaMetadataArrayRequest"]
      382 CALL                             R72 1 1
      383 GETIMPORT                        R73 K15 [require]
      385 GETTABLEKS                       R74 R55 K85 ["GetVersionHistoryRequest"]
      387 CALL                             R73 1 1
      388 GETIMPORT                        R74 K15 [require]
      390 GETTABLEKS                       R75 R55 K86 ["GetFiatProductRequest"]
      392 CALL                             R74 1 1
      393 GETIMPORT                        R75 K15 [require]
      395 GETTABLEKS                       R76 R55 K87 ["GetSellerStatusRequest"]
      397 CALL                             R75 1 1
      398 GETIMPORT                        R76 K15 [require]
      400 GETTABLEKS                       R77 R55 K88 ["GetDefaultBundleDataSharingRequest"]
      402 CALL                             R76 1 1
      403 GETIMPORT                        R77 K15 [require]
      405 GETTABLEKS                       R78 R1 K7 ["Src"]
      407 GETTABLEKS                       R78 R78 K89 ["Actions"]
      409 GETTABLEKS                       R78 R78 K90 ["ClearChange"]
      411 CALL                             R77 1 1
      412 GETIMPORT                        R78 K15 [require]
      414 GETTABLEKS                       R79 R1 K7 ["Src"]
      416 GETTABLEKS                       R79 R79 K89 ["Actions"]
      418 GETTABLEKS                       R79 R79 K91 ["SetAssetConfigTab"]
      420 CALL                             R78 1 1
      421 GETIMPORT                        R79 K15 [require]
      423 GETTABLEKS                       R80 R1 K7 ["Src"]
      425 GETTABLEKS                       R80 R80 K89 ["Actions"]
      427 GETTABLEKS                       R80 R80 K92 ["UpdateAssetConfigStore"]
      429 CALL                             R79 1 1
      430 GETIMPORT                        R80 K15 [require]
      432 GETTABLEKS                       R81 R1 K7 ["Src"]
      434 GETTABLEKS                       R81 R81 K89 ["Actions"]
      436 GETTABLEKS                       R81 R81 K93 ["PublishingPreferencesReceived"]
      438 CALL                             R80 1 1
      439 GETIMPORT                        R81 K15 [require]
      441 GETTABLEKS                       R82 R1 K7 ["Src"]
      443 GETTABLEKS                       R82 R82 K89 ["Actions"]
      445 GETTABLEKS                       R82 R82 K94 ["PublishingFeePreviewReceived"]
      447 CALL                             R81 1 1
      448 GETIMPORT                        R82 K15 [require]
      450 GETTABLEKS                       R83 R1 K7 ["Src"]
      452 GETTABLEKS                       R83 R83 K89 ["Actions"]
      454 GETTABLEKS                       R83 R83 K95 ["SetDescendantPermissions"]
      456 CALL                             R82 1 1
      457 GETIMPORT                        R83 K15 [require]
      459 GETTABLEKS                       R84 R1 K7 ["Src"]
      461 GETTABLEKS                       R84 R84 K89 ["Actions"]
      463 GETTABLEKS                       R84 R84 K96 ["UploadResult"]
      465 CALL                             R83 1 1
      466 GETIMPORT                        R84 K15 [require]
      468 GETTABLEKS                       R85 R1 K7 ["Src"]
      470 GETTABLEKS                       R85 R85 K89 ["Actions"]
      472 GETTABLEKS                       R85 R85 K97 ["ValidateAnimationResult"]
      474 CALL                             R84 1 1
      475 GETIMPORT                        R85 K15 [require]
      477 GETTABLEKS                       R86 R1 K7 ["Src"]
      479 GETTABLEKS                       R86 R86 K98 ["Thunks"]
      481 GETTABLEKS                       R86 R86 K99 ["GetGroupMetadata"]
      483 CALL                             R85 1 1
      484 GETIMPORT                        R86 K15 [require]
      486 GETTABLEKS                       R87 R1 K7 ["Src"]
      488 GETTABLEKS                       R87 R87 K98 ["Thunks"]
      490 GETTABLEKS                       R87 R87 K100 ["GetGroupRoleInfo"]
      492 CALL                             R86 1 1
      493 GETIMPORT                        R87 K15 [require]
      495 GETTABLEKS                       R88 R1 K7 ["Src"]
      497 GETTABLEKS                       R88 R88 K98 ["Thunks"]
      499 GETTABLEKS                       R88 R88 K101 ["GetUsername"]
      501 CALL                             R87 1 1
      502 GETIMPORT                        R88 K15 [require]
      504 GETTABLEKS                       R89 R1 K7 ["Src"]
      506 GETTABLEKS                       R89 R89 K61 ["Networking"]
      508 GETTABLEKS                       R89 R89 K62 ["Requests"]
      510 GETTABLEKS                       R89 R89 K102 ["GetExperienceNameRequest"]
      512 CALL                             R88 1 1
      513 GETIMPORT                        R89 K15 [require]
      515 GETTABLEKS                       R90 R1 K7 ["Src"]
      517 GETTABLEKS                       R90 R90 K98 ["Thunks"]
      519 GETTABLEKS                       R90 R90 K103 ["CheckAvatarAssetPrivacy"]
      521 CALL                             R89 1 1
      522 GETIMPORT                        R90 K15 [require]
      524 GETTABLEKS                       R91 R1 K7 ["Src"]
      526 GETTABLEKS                       R91 R91 K98 ["Thunks"]
      528 GETTABLEKS                       R91 R91 K104 ["CheckAvatarItemDependencies"]
      530 CALL                             R90 1 1
      531 GETIMPORT                        R91 K15 [require]
      533 GETTABLEKS                       R92 R1 K7 ["Src"]
      535 GETTABLEKS                       R92 R92 K8 ["Util"]
      537 GETTABLEKS                       R92 R92 K105 ["Publishing"]
      539 GETTABLEKS                       R92 R92 K106 ["getAssetAccessController"]
      541 CALL                             R91 1 1
      542 GETIMPORT                        R92 K15 [require]
      544 GETTABLEKS                       R93 R1 K7 ["Src"]
      546 GETTABLEKS                       R93 R93 K98 ["Thunks"]
      548 GETTABLEKS                       R93 R93 K29 ["AssetConfiguration"]
      550 GETTABLEKS                       R93 R93 K107 ["DownloadFlowRequest"]
      552 CALL                             R92 1 1
      553 GETIMPORT                        R93 K15 [require]
      555 GETTABLEKS                       R94 R1 K7 ["Src"]
      557 GETTABLEKS                       R94 R94 K98 ["Thunks"]
      559 GETTABLEKS                       R94 R94 K29 ["AssetConfiguration"]
      561 GETTABLEKS                       R94 R94 K108 ["EditFlowRequest"]
      563 CALL                             R93 1 1
      564 GETIMPORT                        R94 K15 [require]
      566 GETTABLEKS                       R95 R1 K7 ["Src"]
      568 GETTABLEKS                       R95 R95 K98 ["Thunks"]
      570 GETTABLEKS                       R95 R95 K29 ["AssetConfiguration"]
      572 GETTABLEKS                       R95 R95 K109 ["UploadFlowRequest"]
      574 CALL                             R94 1 1
      575 GETIMPORT                        R95 K15 [require]
      577 GETTABLEKS                       R96 R1 K7 ["Src"]
      579 GETTABLEKS                       R96 R96 K98 ["Thunks"]
      581 GETTABLEKS                       R96 R96 K29 ["AssetConfiguration"]
      583 GETTABLEKS                       R96 R96 K110 ["FetchUploadFeeWithMetadataRequest"]
      585 CALL                             R95 1 1
      586 GETIMPORT                        R96 K15 [require]
      588 GETTABLEKS                       R97 R1 K7 ["Src"]
      590 GETTABLEKS                       R97 R97 K111 ["ContextServices"]
      592 GETTABLEKS                       R97 R97 K112 ["IXPContext"]
      594 CALL                             R96 1 1
      595 GETIMPORT                        R97 K15 [require]
      597 GETTABLEKS                       R98 R1 K7 ["Src"]
      599 GETTABLEKS                       R98 R98 K111 ["ContextServices"]
      601 GETTABLEKS                       R98 R98 K113 ["NetworkContext"]
      603 CALL                             R97 1 1
      604 GETIMPORT                        R98 K15 [require]
      606 GETTABLEKS                       R99 R1 K7 ["Src"]
      608 GETTABLEKS                       R99 R99 K111 ["ContextServices"]
      610 GETTABLEKS                       R99 R99 K114 ["PublishServiceContext"]
      612 CALL                             R98 1 1
      613 GETIMPORT                        R99 K15 [require]
      615 GETTABLEKS                       R100 R1 K7 ["Src"]
      617 GETTABLEKS                       R100 R100 K111 ["ContextServices"]
      619 GETTABLEKS                       R100 R100 K115 ["PluginGuiServiceContext"]
      621 CALL                             R99 1 1
      622 GETIMPORT                        R100 K15 [require]
      624 GETTABLEKS                       R101 R1 K7 ["Src"]
      626 GETTABLEKS                       R101 R101 K111 ["ContextServices"]
      628 GETTABLEKS                       R101 R101 K116 ["ContentProviderContext"]
      630 CALL                             R100 1 1
      631 GETIMPORT                        R101 K15 [require]
      633 GETTABLEKS                       R102 R11 K56 ["Framework"]
      635 CALL                             R101 1 1
      636 GETTABLEKS                       R102 R101 K111 ["ContextServices"]
      638 GETTABLEKS                       R103 R102 K117 ["withContext"]
      640 GETTABLEKS                       R104 R101 K118 ["UI"]
      642 GETTABLEKS                       R104 R104 K119 ["LoadingIndicator"]
      644 GETTABLEKS                       R105 R101 K118 ["UI"]
      646 GETTABLEKS                       R105 R105 K120 ["Container"]
      648 GETTABLEKS                       R106 R13 K121 ["PureComponent"]
      650 LOADK                            R108 K122 ["AssetConfig"]
      651 NAMECALL                         R106 R106 K123 ["extend"]
      653 CALL                             R106 2 1
      654 GETIMPORT                        R107 K15 [require]
      656 GETTABLEKS                       R108 R1 K7 ["Src"]
      658 GETTABLEKS                       R108 R108 K124 ["Flags"]
      660 GETTABLEKS                       R108 R108 K125 ["getFFlagEnableUpdateAvatarItem"]
      662 CALL                             R107 1 1
      663 GETIMPORT                        R108 K15 [require]
      665 GETTABLEKS                       R109 R1 K7 ["Src"]
      667 GETTABLEKS                       R109 R109 K124 ["Flags"]
      669 GETTABLEKS                       R109 R109 K126 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      671 CALL                             R108 1 1
      672 GETIMPORT                        R109 K15 [require]
      674 GETTABLEKS                       R110 R1 K7 ["Src"]
      676 GETTABLEKS                       R110 R110 K124 ["Flags"]
      678 GETTABLEKS                       R110 R110 K127 ["getFFlagToolboxAssetConfigDeferFailureDialog"]
      680 CALL                             R109 1 1
      681 GETIMPORT                        R110 K15 [require]
      683 GETTABLEKS                       R111 R1 K7 ["Src"]
      685 GETTABLEKS                       R111 R111 K124 ["Flags"]
      687 GETTABLEKS                       R111 R111 K128 ["getFFlagToolboxDynamicUploadFee"]
      689 CALL                             R110 1 1
      690 GETIMPORT                        R111 K15 [require]
      692 GETTABLEKS                       R112 R1 K7 ["Src"]
      694 GETTABLEKS                       R112 R112 K124 ["Flags"]
      696 GETTABLEKS                       R112 R112 K129 ["getFFlagToolboxExperienceCreatorTypeMarketplaceAssetConfig"]
      698 CALL                             R111 1 1
      699 GETIMPORT                        R112 K15 [require]
      701 GETTABLEKS                       R113 R1 K7 ["Src"]
      703 GETTABLEKS                       R113 R113 K124 ["Flags"]
      705 GETTABLEKS                       R113 R113 K130 ["getFFlagToolboxPublishOnApproval"]
      707 CALL                             R112 1 1
      708 GETIMPORT                        R113 K15 [require]
      710 GETTABLEKS                       R114 R1 K7 ["Src"]
      712 GETTABLEKS                       R114 R114 K124 ["Flags"]
      714 GETTABLEKS                       R114 R114 K131 ["getFFlagToolboxAvatarItemPublishDraftDependencies"]
      716 CALL                             R113 1 1
      717 GETIMPORT                        R114 K15 [require]
      719 GETTABLEKS                       R115 R1 K7 ["Src"]
      721 GETTABLEKS                       R115 R115 K124 ["Flags"]
      723 GETTABLEKS                       R115 R115 K132 ["getFFlagToolboxEnableExtendedVersioning"]
      725 CALL                             R114 1 1
      726 DUPCLOSURE                       R115 K133 [PROTO_65]
      727 CAPTURE                          VAL R38
      728 CAPTURE                          VAL R40
      729 CAPTURE                          VAL R37
      730 CAPTURE                          VAL R6
      731 CAPTURE                          VAL R34
      732 CAPTURE                          VAL R112
      733 CAPTURE                          VAL R114
      734 CAPTURE                          VAL R24
      735 CAPTURE                          VAL R16
      736 CAPTURE                          VAL R8
      737 CAPTURE                          VAL R17
      738 CAPTURE                          VAL R44
      739 CAPTURE                          VAL R91
      740 CAPTURE                          VAL R46
      741 CAPTURE                          VAL R47
      742 CAPTURE                          VAL R53
      743 CAPTURE                          VAL R36
      744 SETTABLEKS                       R115 R106 K134 ["init"]
      746 DUPCLOSURE                       R115 K135 [PROTO_66]
      747 SETTABLEKS                       R115 R106 K136 ["attachXButtonCallback"]
      749 DUPCLOSURE                       R115 K137 [PROTO_67]
      750 SETTABLEKS                       R115 R106 K138 ["detachXButtonCallback"]
      752 DUPCLOSURE                       R115 K139 [PROTO_68]
      753 CAPTURE                          VAL R37
      754 SETTABLEKS                       R115 R106 K140 ["isLoading"]
      756 DUPCLOSURE                       R115 K141 [PROTO_69]
      757 CAPTURE                          VAL R16
      758 DUPCLOSURE                       R116 K142 [PROTO_71]
      759 CAPTURE                          VAL R109
      760 CAPTURE                          VAL R54
      761 CAPTURE                          VAL R37
      762 CAPTURE                          VAL R111
      763 CAPTURE                          VAL R34
      764 CAPTURE                          VAL R40
      765 CAPTURE                          VAL R3
      766 CAPTURE                          VAL R41
      767 CAPTURE                          VAL R44
      768 CAPTURE                          VAL R16
      769 CAPTURE                          VAL R108
      770 CAPTURE                          VAL R114
      771 CAPTURE                          VAL R115
      772 CAPTURE                          VAL R38
      773 SETTABLEKS                       R116 R106 K143 ["didUpdate"]
      775 DUPCLOSURE                       R116 K144 [PROTO_72]
      776 CAPTURE                          VAL R49
      777 SETTABLEKS                       R116 R106 K145 ["versionsGetPageRootItems"]
      779 DUPCLOSURE                       R116 K146 [PROTO_75]
      780 CAPTURE                          VAL R76
      781 SETTABLEKS                       R116 R106 K147 ["getDefaultBundleDataSharing"]
      783 DUPCLOSURE                       R116 K148 [PROTO_81]
      784 CAPTURE                          VAL R37
      785 CAPTURE                          VAL R40
      786 CAPTURE                          VAL R16
      787 CAPTURE                          VAL R110
      788 SETTABLEKS                       R116 R106 K149 ["getAssetInformation"]
      790 DUPCLOSURE                       R116 K150 [PROTO_84]
      791 CAPTURE                          VAL R40
      792 CAPTURE                          VAL R114
      793 CAPTURE                          VAL R10
      794 CAPTURE                          VAL R9
      795 CAPTURE                          VAL R7
      796 CAPTURE                          VAL R43
      797 SETTABLEKS                       R116 R106 K151 ["didMount"]
      799 DUPCLOSURE                       R116 K152 [PROTO_85]
      800 SETTABLEKS                       R116 R106 K153 ["willUnmount"]
      802 DUPCLOSURE                       R116 K154 [PROTO_88]
      803 CAPTURE                          VAL R37
      804 CAPTURE                          VAL R109
      805 CAPTURE                          VAL R54
      806 CAPTURE                          VAL R40
      807 CAPTURE                          VAL R39
      808 CAPTURE                          VAL R35
      809 CAPTURE                          VAL R111
      810 CAPTURE                          VAL R41
      811 CAPTURE                          VAL R38
      812 CAPTURE                          VAL R112
      813 CAPTURE                          VAL R6
      814 CAPTURE                          VAL R13
      815 CAPTURE                          VAL R33
      816 CAPTURE                          VAL R113
      817 CAPTURE                          VAL R30
      818 CAPTURE                          VAL R29
      819 CAPTURE                          VAL R28
      820 CAPTURE                          VAL R20
      821 CAPTURE                          VAL R12
      822 CAPTURE                          VAL R15
      823 CAPTURE                          VAL R105
      824 CAPTURE                          VAL R104
      825 CAPTURE                          VAL R21
      826 CAPTURE                          VAL R110
      827 CAPTURE                          VAL R23
      828 CAPTURE                          VAL R108
      829 CAPTURE                          VAL R25
      830 CAPTURE                          VAL R107
      831 CAPTURE                          VAL R32
      832 CAPTURE                          VAL R31
      833 CAPTURE                          VAL R27
      834 CAPTURE                          VAL R26
      835 CAPTURE                          VAL R22
      836 SETTABLEKS                       R116 R106 K155 ["render"]
      838 MOVE                             R116 R103
      839 DUPTABLE                         R117 K165 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      840 GETTABLEKS                       R118 R102 K156 ["Focus"]
      842 SETTABLEKS                       R118 R117 K156 ["Focus"]
      844 JUMPIFNOT                        R5 ; [+2]
      845 MOVE                             R118 R96
      846 JUMP                             ; [+1]
      847 LOADNIL                          R118
      848 SETTABLEKS                       R118 R117 K157 ["IXP"]
      850 GETTABLEKS                       R118 R102 K158 ["Localization"]
      852 SETTABLEKS                       R118 R117 K158 ["Localization"]
      854 GETTABLEKS                       R118 R102 K159 ["Stylizer"]
      856 SETTABLEKS                       R118 R117 K159 ["Stylizer"]
      858 GETTABLEKS                       R118 R102 K160 ["Plugin"]
      860 SETTABLEKS                       R118 R117 K160 ["Plugin"]
      862 SETTABLEKS                       R97 R117 K161 ["Network"]
      864 SETTABLEKS                       R98 R117 K162 ["PublishService"]
      866 SETTABLEKS                       R99 R117 K163 ["PluginGuiService"]
      868 SETTABLEKS                       R100 R117 K164 ["ContentProvider"]
      870 CALL                             R116 1 1
      871 MOVE                             R117 R106
      872 CALL                             R116 1 1
      873 MOVE                             R106 R116
      874 DUPCLOSURE                       R116 K166 [PROTO_89]
      875 CAPTURE                          VAL R53
      876 CAPTURE                          VAL R108
      877 CAPTURE                          VAL R4
      878 CAPTURE                          VAL R5
      879 CAPTURE                          VAL R3
      880 CAPTURE                          VAL R112
      881 CAPTURE                          VAL R110
      882 CAPTURE                          VAL R43
      883 DUPCLOSURE                       R117 K167 [PROTO_127]
      884 CAPTURE                          VAL R56
      885 CAPTURE                          VAL R65
      886 CAPTURE                          VAL R73
      887 CAPTURE                          VAL R50
      888 CAPTURE                          VAL R83
      889 CAPTURE                          VAL R16
      890 CAPTURE                          VAL R114
      891 CAPTURE                          VAL R58
      892 CAPTURE                          VAL R57
      893 CAPTURE                          VAL R59
      894 CAPTURE                          VAL R78
      895 CAPTURE                          VAL R77
      896 CAPTURE                          VAL R37
      897 CAPTURE                          VAL R60
      898 CAPTURE                          VAL R66
      899 CAPTURE                          VAL R112
      900 CAPTURE                          VAL R67
      901 CAPTURE                          VAL R80
      902 CAPTURE                          VAL R68
      903 CAPTURE                          VAL R81
      904 CAPTURE                          VAL R110
      905 CAPTURE                          VAL R95
      906 CAPTURE                          VAL R61
      907 CAPTURE                          VAL R79
      908 CAPTURE                          VAL R62
      909 CAPTURE                          VAL R63
      910 CAPTURE                          VAL R64
      911 CAPTURE                          VAL R85
      912 CAPTURE                          VAL R86
      913 CAPTURE                          VAL R87
      914 CAPTURE                          VAL R88
      915 CAPTURE                          VAL R69
      916 CAPTURE                          VAL R70
      917 CAPTURE                          VAL R82
      918 CAPTURE                          VAL R71
      919 CAPTURE                          VAL R72
      920 CAPTURE                          VAL R74
      921 CAPTURE                          VAL R7
      922 CAPTURE                          VAL R75
      923 CAPTURE                          VAL R84
      924 CAPTURE                          VAL R89
      925 CAPTURE                          VAL R113
      926 CAPTURE                          VAL R90
      927 CAPTURE                          VAL R92
      928 CAPTURE                          VAL R93
      929 CAPTURE                          VAL R94
      930 GETTABLEKS                       R118 R14 K168 ["connect"]
      932 MOVE                             R119 R116
      933 MOVE                             R120 R117
      934 CALL                             R118 2 1
      935 MOVE                             R119 R106
      936 CALL                             R118 1 -1
      937 RETURN                           R118 -1
