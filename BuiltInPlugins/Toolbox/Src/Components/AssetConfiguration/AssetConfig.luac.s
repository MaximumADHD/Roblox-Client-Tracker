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
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K1 ["changeTable"]
       10 MOVE                             R4 R3
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETIMPORT                        R5 K3 [next]
       14 MOVE                             R6 R3
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKNIL                  R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["props"]
       23 GETTABLEKS                       R5 R5 K4 ["resetUploadResult"]
       25 CALL                             R5 0 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["state"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
       32 GETTABLEKS                       R6 R6 K7 ["DOWNLOAD_FLOW"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K0 ["props"]
       37 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
       39 JUMPIFNOTEQ                      R6 R7 ; [+16]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K0 ["props"]
       44 GETTABLEKS                       R6 R6 K9 ["dispatchDownloadFlow"]
       46 MOVE                             R7 R0
       47 GETTABLEKS                       R8 R5 K10 ["overrideAssetId"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K0 ["props"]
       52 GETTABLEKS                       R9 R9 K11 ["onClose"]
       54 CALL                             R6 3 0
       55 JUMP                             ; [+256]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
       59 GETTABLEKS                       R6 R6 K12 ["EDIT_FLOW"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K0 ["props"]
       64 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
       66 JUMPIFNOTEQ                      R6 R7 ; [+76]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K0 ["props"]
       71 GETTABLEKS                       R6 R6 K13 ["dispatchEditFlow"]
       73 DUPTABLE                         R7 K28 [{"networkInterface", "ixp", "assetId", "stateAssetId", "name", "description", "price", "status", "copyOn", "copyChanged", "commentOn", "isAssetPublic", "iconFile", "assetMediaUpdateData"}]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K0 ["props"]
       77 GETTABLEKS                       R8 R8 K29 ["Network"]
       79 GETTABLEKS                       R8 R8 K14 ["networkInterface"]
       81 SETTABLEKS                       R8 R7 K14 ["networkInterface"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K0 ["props"]
       86 GETTABLEKS                       R8 R8 K30 ["IXP"]
       88 SETTABLEKS                       R8 R7 K15 ["ixp"]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K0 ["props"]
       93 GETTABLEKS                       R8 R8 K16 ["assetId"]
       95 SETTABLEKS                       R8 R7 K16 ["assetId"]
       97 GETTABLEKS                       R8 R5 K16 ["assetId"]
       99 SETTABLEKS                       R8 R7 K17 ["stateAssetId"]
      101 GETTABLEKS                       R8 R5 K18 ["name"]
      103 SETTABLEKS                       R8 R7 K18 ["name"]
      105 GETTABLEKS                       R8 R5 K19 ["description"]
      107 SETTABLEKS                       R8 R7 K19 ["description"]
      109 GETTABLEKS                       R8 R5 K20 ["price"]
      111 SETTABLEKS                       R8 R7 K20 ["price"]
      113 GETTABLEKS                       R8 R5 K21 ["status"]
      115 SETTABLEKS                       R8 R7 K21 ["status"]
      117 GETTABLEKS                       R8 R5 K22 ["copyOn"]
      119 SETTABLEKS                       R8 R7 K22 ["copyOn"]
      121 GETTABLEKS                       R8 R5 K23 ["copyChanged"]
      123 SETTABLEKS                       R8 R7 K23 ["copyChanged"]
      125 GETTABLEKS                       R8 R5 K24 ["commentOn"]
      127 SETTABLEKS                       R8 R7 K24 ["commentOn"]
      129 GETTABLEKS                       R8 R5 K25 ["isAssetPublic"]
      131 SETTABLEKS                       R8 R7 K25 ["isAssetPublic"]
      133 GETTABLEKS                       R8 R5 K26 ["iconFile"]
      135 SETTABLEKS                       R8 R7 K26 ["iconFile"]
      137 GETTABLEKS                       R8 R5 K27 ["assetMediaUpdateData"]
      139 SETTABLEKS                       R8 R7 K27 ["assetMediaUpdateData"]
      141 CALL                             R6 1 0
      142 JUMP                             ; [+169]
      143 GETUPVAL                         R6 2
      144 GETTABLEKS                       R6 R6 K6 ["FLOW_TYPE"]
      146 GETTABLEKS                       R6 R6 K31 ["UPLOAD_FLOW"]
      148 GETUPVAL                         R7 0
      149 GETTABLEKS                       R7 R7 K0 ["props"]
      151 GETTABLEKS                       R7 R7 K8 ["screenFlowType"]
      153 JUMPIFNOTEQ                      R6 R7 ; [+158]
      155 GETUPVAL                         R6 3
      156 GETUPVAL                         R8 0
      157 GETTABLEKS                       R8 R8 K0 ["props"]
      159 GETTABLEKS                       R8 R8 K32 ["assetTypeEnum"]
      161 GETTABLEKS                       R9 R5 K33 ["dataSharingEnabled"]
      163 GETTABLEKS                       R10 R5 K34 ["dataSharingToggled"]
      165 NAMECALL                         R6 R6 K35 ["getDataSharingLicenseTypes"]
      167 CALL                             R6 4 1
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R7 R7 K0 ["props"]
      171 GETTABLEKS                       R7 R7 K36 ["dispatchUploadFlow"]
      173 DUPTABLE                         R8 K43 [{"networkInterface", "localization", "publishService", "ixp", "assetId", "groupId", "name", "description", "overrideAssetId", "copyOn", "commentOn", "status", "price", "iconFile", "selectedColor", "assetMediaUpdateData", "dataSharingLicenseTypes", "dataSharingEnabled", "dataSharingToggled", "publishOnApprovalCreationContext"}]
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R9 R9 K0 ["props"]
      177 GETTABLEKS                       R9 R9 K29 ["Network"]
      179 GETTABLEKS                       R9 R9 K14 ["networkInterface"]
      181 SETTABLEKS                       R9 R8 K14 ["networkInterface"]
      183 GETUPVAL                         R9 0
      184 GETTABLEKS                       R9 R9 K0 ["props"]
      186 GETTABLEKS                       R9 R9 K44 ["Localization"]
      188 SETTABLEKS                       R9 R8 K37 ["localization"]
      190 GETUPVAL                         R9 0
      191 GETTABLEKS                       R9 R9 K0 ["props"]
      193 GETTABLEKS                       R9 R9 K45 ["PublishService"]
      195 GETTABLEKS                       R9 R9 K38 ["publishService"]
      197 SETTABLEKS                       R9 R8 K38 ["publishService"]
      199 GETUPVAL                         R9 0
      200 GETTABLEKS                       R9 R9 K0 ["props"]
      202 GETTABLEKS                       R9 R9 K30 ["IXP"]
      204 SETTABLEKS                       R9 R8 K15 ["ixp"]
      206 GETUPVAL                         R9 0
      207 GETTABLEKS                       R9 R9 K0 ["props"]
      209 GETTABLEKS                       R9 R9 K16 ["assetId"]
      211 SETTABLEKS                       R9 R8 K16 ["assetId"]
      213 GETUPVAL                         R10 0
      214 GETTABLEKS                       R10 R10 K0 ["props"]
      216 GETTABLEKS                       R10 R10 K39 ["groupId"]
      218 JUMPIFNOT                        R10 ; [+16]
      219 GETUPVAL                         R10 0
      220 GETTABLEKS                       R10 R10 K0 ["props"]
      222 GETTABLEKS                       R10 R10 K39 ["groupId"]
      224 GETUPVAL                         R11 4
      225 GETTABLEKS                       R11 R11 K46 ["None"]
      227 JUMPIFEQ                         R10 R11 ; [+7]
      229 GETUPVAL                         R9 0
      230 GETTABLEKS                       R9 R9 K0 ["props"]
      232 GETTABLEKS                       R9 R9 K39 ["groupId"]
      234 JUMP                             ; [+1]
      235 LOADNIL                          R9
      236 SETTABLEKS                       R9 R8 K39 ["groupId"]
      238 GETTABLEKS                       R9 R5 K18 ["name"]
      240 SETTABLEKS                       R9 R8 K18 ["name"]
      242 GETTABLEKS                       R9 R5 K19 ["description"]
      244 SETTABLEKS                       R9 R8 K19 ["description"]
      246 GETTABLEKS                       R9 R5 K10 ["overrideAssetId"]
      248 SETTABLEKS                       R9 R8 K10 ["overrideAssetId"]
      250 GETTABLEKS                       R9 R5 K22 ["copyOn"]
      252 SETTABLEKS                       R9 R8 K22 ["copyOn"]
      254 GETTABLEKS                       R9 R5 K24 ["commentOn"]
      256 SETTABLEKS                       R9 R8 K24 ["commentOn"]
      258 GETTABLEKS                       R9 R5 K21 ["status"]
      260 SETTABLEKS                       R9 R8 K21 ["status"]
      262 GETTABLEKS                       R9 R5 K20 ["price"]
      264 SETTABLEKS                       R9 R8 K20 ["price"]
      266 GETTABLEKS                       R9 R5 K26 ["iconFile"]
      268 SETTABLEKS                       R9 R8 K26 ["iconFile"]
      270 GETTABLEKS                       R9 R5 K40 ["selectedColor"]
      272 SETTABLEKS                       R9 R8 K40 ["selectedColor"]
      274 GETTABLEKS                       R9 R5 K27 ["assetMediaUpdateData"]
      276 SETTABLEKS                       R9 R8 K27 ["assetMediaUpdateData"]
      278 SETTABLEKS                       R6 R8 K41 ["dataSharingLicenseTypes"]
      280 GETTABLEKS                       R9 R5 K33 ["dataSharingEnabled"]
      282 SETTABLEKS                       R9 R8 K33 ["dataSharingEnabled"]
      284 GETTABLEKS                       R9 R5 K34 ["dataSharingToggled"]
      286 SETTABLEKS                       R9 R8 K34 ["dataSharingToggled"]
      288 GETUPVAL                         R9 5
      289 GETTABLEKS                       R9 R9 K47 ["getPublishOnApprovalCreationContext"]
      291 GETTABLEKS                       R10 R5 K48 ["publishOnApprovalToggled"]
      293 GETUPVAL                         R11 0
      294 GETTABLEKS                       R11 R11 K0 ["props"]
      296 GETTABLEKS                       R11 R11 K49 ["hasPublishingPreferences"]
      298 GETUPVAL                         R12 0
      299 GETTABLEKS                       R12 R12 K0 ["props"]
      301 GETTABLEKS                       R12 R12 K50 ["hasPublishingFeePreview"]
      303 GETUPVAL                         R13 0
      304 GETTABLEKS                       R13 R13 K0 ["props"]
      306 GETTABLEKS                       R13 R13 K51 ["publishingFeePreview"]
      308 CALL                             R9 4 1
      309 SETTABLEKS                       R9 R8 K42 ["publishOnApprovalCreationContext"]
      311 CALL                             R7 1 0
      312 JUMPIFNOT                        R4 ; [+43]
      313 MOVE                             R6 R1
      314 MOVE                             R7 R3
      315 CALL                             R6 1 0
      316 GETUPVAL                         R6 0
      317 GETTABLEKS                       R6 R6 K0 ["props"]
      319 GETTABLEKS                       R6 R6 K52 ["isPackageAsset"]
      321 JUMPIFNOT                        R6 ; [+34]
      322 GETUPVAL                         R6 0
      323 GETTABLEKS                       R6 R6 K0 ["props"]
      325 GETTABLEKS                       R6 R6 K53 ["assetConfigData"]
      327 GETTABLEKS                       R7 R6 K54 ["Id"]
      329 GETTABLEKS                       R8 R3 K55 ["VersionItemSelect"]
      331 JUMPIFNOT                        R8 ; [+3]
      332 GETTABLEKS                       R9 R3 K55 ["VersionItemSelect"]
      334 GETTABLEN                        R8 R9 1
      335 JUMPIFNOT                        R7 ; [+20]
      336 GETUPVAL                         R9 0
      337 GETTABLEKS                       R9 R9 K0 ["props"]
      339 GETTABLEKS                       R9 R9 K56 ["dispatchPutPackagePermissionsRequest"]
      341 GETUPVAL                         R10 0
      342 GETTABLEKS                       R10 R10 K0 ["props"]
      344 GETTABLEKS                       R10 R10 K29 ["Network"]
      346 GETTABLEKS                       R10 R10 K14 ["networkInterface"]
      348 MOVE                             R11 R7
      349 MOVE                             R12 R8
      350 GETUPVAL                         R13 0
      351 GETTABLEKS                       R13 R13 K0 ["props"]
      353 GETTABLEKS                       R13 R13 K44 ["Localization"]
      355 CALL                             R9 4 0
      356 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K1 [{"dataSharingToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["dataSharingToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["dataSharingToggled"]
        6 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_34]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K1 [{"publishOnApprovalToggled"}]
        1 GETTABLEKS                       R3 R0 K0 ["publishOnApprovalToggled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["publishOnApprovalToggled"]
        6 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 DUPCLOSURE                       R2 K0 [PROTO_36]
        6 NAMECALL                         R0 R0 K1 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"deleteLocal"}]
        6 SETTABLEKS                       R0 R2 K2 ["deleteLocal"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["updateStore"]
        5 DUPTABLE                         R2 K3 [{"animationSectionValid"}]
        6 SETTABLEKS                       R0 R2 K2 ["animationSectionValid"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"versionsPreviousInput"}]
        2 SETTABLEKS                       R0 R3 K0 ["versionsPreviousInput"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"overrideAssetId"}]
        2 SETTABLEKS                       R0 R3 K0 ["overrideAssetId"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["promptImagePicker"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPublishingRequirements"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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
      220 CAPTURE                          UPVAL U2
      221 CAPTURE                          UPVAL U6
      222 CAPTURE                          UPVAL U7
      223 CAPTURE                          UPVAL U1
      224 SETTABLEKS                       R2 R0 K63 ["tryPublish"]
      226 NEWCLOSURE                       R2 P7
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R1
      229 CAPTURE                          UPVAL U2
      230 SETTABLEKS                       R2 R0 K64 ["tryCancel"]
      232 NEWCLOSURE                       R2 P8
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R2 R0 K65 ["tryCancelNoYield"]
      236 NEWCLOSURE                       R2 P9
      237 CAPTURE                          VAL R0
      238 SETTABLEKS                       R2 R0 K66 ["tryCancelWithYield"]
      240 NEWCLOSURE                       R2 P10
      241 CAPTURE                          VAL R0
      242 SETTABLEKS                       R2 R0 K67 ["onMessageBoxClosed"]
      244 NEWCLOSURE                       R2 P11
      245 CAPTURE                          UPVAL U8
      246 CAPTURE                          VAL R0
      247 CAPTURE                          UPVAL U9
      248 SETTABLEKS                       R2 R0 K68 ["tryCloseAssetConfig"]
      250 NEWCLOSURE                       R2 P12
      251 CAPTURE                          VAL R0
      252 NEWCLOSURE                       R3 P13
      253 CAPTURE                          VAL R0
      254 SETTABLEKS                       R3 R0 K69 ["onNameChange"]
      256 NEWCLOSURE                       R3 P14
      257 CAPTURE                          VAL R0
      258 SETTABLEKS                       R3 R0 K70 ["onDescChange"]
      260 NEWCLOSURE                       R3 P15
      261 CAPTURE                          VAL R0
      262 SETTABLEKS                       R3 R0 K71 ["onStatusChange"]
      264 NEWCLOSURE                       R3 P16
      265 CAPTURE                          VAL R0
      266 SETTABLEKS                       R3 R0 K72 ["onPriceChange"]
      268 LOADN                            R3 0
      269 SETTABLEKS                       R3 R0 K73 ["publishingPreferencesGeneration"]
      271 NEWCLOSURE                       R3 P17
      272 CAPTURE                          UPVAL U5
      273 CAPTURE                          VAL R0
      274 SETTABLEKS                       R3 R0 K74 ["clearPublishOnApprovalOptIn"]
      276 NEWCLOSURE                       R3 P18
      277 CAPTURE                          UPVAL U5
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          VAL R0
      280 CAPTURE                          UPVAL U1
      281 CAPTURE                          UPVAL U10
      282 SETTABLEKS                       R3 R0 K75 ["canOfferPublishOnApproval"]
      284 NEWCLOSURE                       R3 P19
      285 CAPTURE                          UPVAL U5
      286 CAPTURE                          VAL R0
      287 SETTABLEKS                       R3 R0 K76 ["getPublishInfo"]
      289 NEWCLOSURE                       R3 P20
      290 CAPTURE                          UPVAL U5
      291 CAPTURE                          VAL R0
      292 SETTABLEKS                       R3 R0 K77 ["fetchPublishingPreferences"]
      294 NEWCLOSURE                       R3 P21
      295 CAPTURE                          UPVAL U5
      296 CAPTURE                          VAL R0
      297 SETTABLEKS                       R3 R0 K78 ["fetchPublishingFeePreview"]
      299 NEWCLOSURE                       R3 P22
      300 CAPTURE                          VAL R0
      301 CAPTURE                          UPVAL U7
      302 SETTABLEKS                       R3 R0 K79 ["onAccessChange"]
      304 NEWCLOSURE                       R3 P23
      305 CAPTURE                          VAL R0
      306 SETTABLEKS                       R3 R0 K80 ["onDataConsentToggleClick"]
      308 NEWCLOSURE                       R3 P24
      309 CAPTURE                          UPVAL U5
      310 CAPTURE                          VAL R0
      311 SETTABLEKS                       R3 R0 K81 ["onPublishToMarketplaceToggleClick"]
      313 NEWCLOSURE                       R3 P25
      314 CAPTURE                          VAL R0
      315 SETTABLEKS                       R3 R0 K82 ["toggleCopy"]
      317 NEWCLOSURE                       R3 P26
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R3 R0 K83 ["toggleComment"]
      321 NEWCLOSURE                       R3 P27
      322 CAPTURE                          VAL R0
      323 SETTABLEKS                       R3 R0 K84 ["toggleDeleteLocal"]
      325 NEWCLOSURE                       R3 P28
      326 CAPTURE                          VAL R0
      327 CAPTURE                          UPVAL U7
      328 SETTABLEKS                       R3 R0 K85 ["onAnimationSelectionChanged"]
      330 NEWCLOSURE                       R3 P29
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R3 R0 K86 ["onanimationSectionValidityChanged"]
      334 NEWCLOSURE                       R3 P30
      335 CAPTURE                          VAL R0
      336 CAPTURE                          UPVAL U1
      337 SETTABLEKS                       R3 R0 K87 ["onSelectedColorChange"]
      339 NEWCLOSURE                       R3 P31
      340 CAPTURE                          VAL R0
      341 CAPTURE                          UPVAL U8
      342 CAPTURE                          UPVAL U9
      343 SETTABLEKS                       R3 R0 K88 ["versionsOnDescClicked"]
      345 NEWCLOSURE                       R3 P32
      346 CAPTURE                          VAL R0
      347 CAPTURE                          UPVAL U11
      348 CAPTURE                          UPVAL U12
      349 SETTABLEKS                       R3 R0 K89 ["versionsSaveInput"]
      351 NEWCLOSURE                       R3 P33
      352 CAPTURE                          VAL R0
      353 CAPTURE                          UPVAL U0
      354 SETTABLEKS                       R3 R0 K90 ["versionsSetStates"]
      356 NEWCLOSURE                       R3 P34
      357 CAPTURE                          VAL R0
      358 SETTABLEKS                       R3 R0 K91 ["versionsCloseInput"]
      360 NEWCLOSURE                       R3 P35
      361 CAPTURE                          VAL R0
      362 SETTABLEKS                       R3 R0 K92 ["setVersionError"]
      364 NEWCLOSURE                       R3 P36
      365 CAPTURE                          VAL R0
      366 SETTABLEKS                       R3 R0 K93 ["versionsSetPreviousInput"]
      368 NEWCLOSURE                       R3 P37
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R3 R0 K94 ["versionsOnPageChange"]
      372 NEWCLOSURE                       R3 P38
      373 CAPTURE                          VAL R0
      374 CAPTURE                          VAL R1
      375 SETTABLEKS                       R3 R0 K95 ["onTabSelect"]
      377 NEWCLOSURE                       R3 P39
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R3 R0 K96 ["onOverrideAssetSelected"]
      381 NEWCLOSURE                       R3 P40
      382 CAPTURE                          UPVAL U1
      383 CAPTURE                          VAL R0
      384 SETTABLEKS                       R3 R0 K97 ["chooseThumbnail"]
      386 NEWCLOSURE                       R3 P41
      387 CAPTURE                          VAL R0
      388 SETTABLEKS                       R3 R0 K98 ["onSharingChanged"]
      390 NEWCLOSURE                       R3 P42
      391 CAPTURE                          VAL R0
      392 SETTABLEKS                       R3 R0 K99 ["getPublishingRequirementsAndAssetMediaMetadataArray"]
      394 NEWCLOSURE                       R3 P43
      395 CAPTURE                          VAL R0
      396 CAPTURE                          UPVAL U13
      397 SETTABLEKS                       R3 R0 K100 ["getPublishingRequirements"]
      399 NEWCLOSURE                       R3 P44
      400 CAPTURE                          VAL R0
      401 SETTABLEKS                       R3 R0 K101 ["onAdditionalImagesChanged"]
      403 NEWCLOSURE                       R3 P45
      404 CAPTURE                          UPVAL U1
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R3 R0 K102 ["isValidCatalogAsset"]
      408 NEWCLOSURE                       R3 P46
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R3 R0 K103 ["validVersionDescriptions"]
      412 NEWCLOSURE                       R3 P47
      413 CAPTURE                          VAL R0
      414 CAPTURE                          UPVAL U0
      415 CAPTURE                          UPVAL U14
      416 SETTABLEKS                       R3 R0 K104 ["getMessageBoxProps"]
      418 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_69:
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
      433 GETIMPORT                        R5 K15 [next]
      435 MOVE                             R6 R3
      436 CALL                             R5 1 1
      437 JUMPIF                           R5 ; [+72]
      438 JUMPIFNOT                        R4 ; [+71]
      439 NEWTABLE                         R5 0 0
      441 GETIMPORT                        R6 K87 [ipairs]
      443 MOVE                             R7 R4
      444 CALL                             R6 1 3
      445 FORGPREP_INEXT                   R6
      446 GETUPVAL                         R12 10
      447 CALL                             R12 0 1
      448 JUMPIFNOT                        R12 ; [+4]
      449 GETTABLEKS                       R12 R10 K89 ["versionDescription"]
      451 ORK                              R11 R12 K88 [""]
      452 JUMP                             ; [+2]
      453 GETTABLEKS                       R11 R10 K89 ["versionDescription"]
      455 GETTABLEKS                       R12 R10 K90 ["creatorTargetId"]
      457 GETTABLEKS                       R13 R10 K91 ["creatorType"]
      459 GETTABLEKS                       R14 R10 K92 ["assetVersionNumber"]
      461 DUPTABLE                         R15 K96 [{"versionColumn", "descriptionColumn", "restoreColumn"}]
      462 GETTABLEKS                       R16 R10 K92 ["assetVersionNumber"]
      464 SETTABLEKS                       R16 R15 K93 ["versionColumn"]
      466 DUPTABLE                         R16 K99 [{"versionDescription", "created", "assetVersionNumber", "creatorId", "creatorType"}]
      467 SETTABLEKS                       R11 R16 K89 ["versionDescription"]
      469 GETTABLEKS                       R17 R10 K97 ["created"]
      471 SETTABLEKS                       R17 R16 K97 ["created"]
      473 GETTABLEKS                       R17 R10 K92 ["assetVersionNumber"]
      475 SETTABLEKS                       R17 R16 K92 ["assetVersionNumber"]
      477 SETTABLEKS                       R12 R16 K98 ["creatorId"]
      479 SETTABLEKS                       R13 R16 K91 ["creatorType"]
      481 SETTABLEKS                       R16 R15 K94 ["descriptionColumn"]
      483 GETTABLEKS                       R16 R10 K92 ["assetVersionNumber"]
      485 SETTABLEKS                       R16 R15 K95 ["restoreColumn"]
      487 SETTABLE                         R15 R5 R14
      488 FORGLOOP                         R6 2 [inext] ; [-43]
      490 DUPTABLE                         R8 K102 [{"versionsCurrentItem", "versionsRootItems", "versionsPageRootItems"}]
      491 GETUPVAL                         R9 11
      492 MOVE                             R10 R4
      493 CALL                             R9 1 1
      494 SETTABLEKS                       R9 R8 K83 ["versionsCurrentItem"]
      496 SETTABLEKS                       R5 R8 K100 ["versionsRootItems"]
      498 LOADN                            R11 1
      499 GETUPVAL                         R12 12
      500 GETTABLEKS                       R12 R12 K103 ["VERSIONS_ROWS_PER_PAGE"]
      502 NAMECALL                         R9 R0 K104 ["versionsGetPageRootItems"]
      504 CALL                             R9 3 1
      505 SETTABLEKS                       R9 R8 K101 ["versionsPageRootItems"]
      507 NAMECALL                         R6 R0 K27 ["setState"]
      509 CALL                             R6 2 0
      510 RETURN                           R0 0

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_75:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_78:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_79:
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

PROTO_80:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_81:
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

PROTO_82:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
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
      507 JUMPIFNOT                        R70 ; [+28]
      508 GETUPVAL                         R70 11
      509 GETTABLEKS                       R70 R70 K100 ["createElement"]
      511 GETUPVAL                         R71 13
      512 DUPTABLE                         R72 K138 [{"OnUploadConfirmed", "UploadFee", "ItemName", "PublishingFee"}]
      513 NEWCLOSURE                       R73 P0
      514 CAPTURE                          VAL R0
      515 SETTABLEKS                       R73 R72 K134 ["OnUploadConfirmed"]
      517 GETTABLEKS                       R74 R1 K139 ["uploadFee"]
      519 ORK                              R73 R74 K7 [""]
      520 SETTABLEKS                       R73 R72 K135 ["UploadFee"]
      522 GETTABLEKS                       R74 R2 K8 ["name"]
      524 ORK                              R73 R74 K7 [""]
      525 SETTABLEKS                       R73 R72 K136 ["ItemName"]
      527 GETUPVAL                         R74 9
      528 CALL                             R74 0 1
      529 JUMPIFNOT                        R74 ; [+2]
      530 MOVE                             R73 R62
      531 JUMP                             ; [+1]
      532 LOADNIL                          R73
      533 SETTABLEKS                       R73 R72 K137 ["PublishingFee"]
      535 CALL                             R70 2 1
      536 SETTABLEKS                       R70 R69 K111 ["AvatarItemMessageBox"]
      538 JUMPIFNOT                        R63 ; [+27]
      539 GETUPVAL                         R70 11
      540 GETTABLEKS                       R70 R70 K100 ["createElement"]
      542 GETUPVAL                         R71 14
      543 DUPTABLE                         R72 K150 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      544 SETTABLEKS                       R57 R72 K140 ["AcceptText"]
      546 SETTABLEKS                       R58 R72 K141 ["CancelText"]
      548 SETTABLEKS                       R59 R72 K144 ["Description"]
      550 SETTABLEKS                       R63 R72 K145 ["Enabled"]
      552 SETTABLEKS                       R60 R72 K146 ["Heading"]
      554 GETTABLEKS                       R73 R0 K151 ["onAssetPublishDialogAccepted"]
      556 SETTABLEKS                       R73 R72 K147 ["OnAccepted"]
      558 GETTABLEKS                       R73 R0 K152 ["onAssetPublishDialogCanceled"]
      560 SETTABLEKS                       R73 R72 K148 ["OnCanceled"]
      562 SETTABLEKS                       R61 R72 K149 ["Title"]
      564 CALL                             R70 2 1
      565 JUMP                             ; [+1]
      566 LOADNIL                          R70
      567 SETTABLEKS                       R70 R69 K112 ["AssetConfigMakeAssetPublicMessageBox"]
      569 GETUPVAL                         R70 11
      570 GETTABLEKS                       R70 R70 K100 ["createElement"]
      572 LOADK                            R71 K101 ["Frame"]
      573 DUPTABLE                         R72 K154 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      574 GETIMPORT                        R73 K156 [UDim2.new]
      576 LOADN                            R74 1
      577 LOADN                            R75 0
      578 LOADN                            R76 1
      579 LOADN                            R77 -62
      580 CALL                             R73 4 1
      581 SETTABLEKS                       R73 R72 K3 ["Size"]
      583 DUPTABLE                         R73 K166 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      584 GETUPVAL                         R74 11
      585 GETTABLEKS                       R74 R74 K100 ["createElement"]
      587 LOADK                            R75 K109 ["UIListLayout"]
      588 DUPTABLE                         R76 K121 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      589 GETIMPORT                        R77 K168 [Enum.FillDirection.Horizontal]
      591 SETTABLEKS                       R77 R76 K116 ["FillDirection"]
      593 GETIMPORT                        R77 K125 [Enum.HorizontalAlignment.Left]
      595 SETTABLEKS                       R77 R76 K117 ["HorizontalAlignment"]
      597 GETIMPORT                        R77 K170 [Enum.VerticalAlignment.Top]
      599 SETTABLEKS                       R77 R76 K118 ["VerticalAlignment"]
      601 GETIMPORT                        R77 K129 [Enum.SortOrder.LayoutOrder]
      603 SETTABLEKS                       R77 R76 K119 ["SortOrder"]
      605 GETIMPORT                        R77 K132 [UDim.new]
      607 LOADN                            R78 0
      608 LOADN                            R79 0
      609 CALL                             R77 2 1
      610 SETTABLEKS                       R77 R76 K120 ["Padding"]
      612 CALL                             R74 2 1
      613 SETTABLEKS                       R74 R73 K109 ["UIListLayout"]
      615 GETUPVAL                         R74 11
      616 GETTABLEKS                       R74 R74 K100 ["createElement"]
      618 GETUPVAL                         R75 14
      619 DUPTABLE                         R76 K171 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      620 SETTABLEKS                       R50 R76 K140 ["AcceptText"]
      622 SETTABLEKS                       R51 R76 K141 ["CancelText"]
      624 SETTABLEKS                       R56 R76 K142 ["ConfirmationKey"]
      626 SETTABLEKS                       R53 R76 K144 ["Description"]
      628 SETTABLEKS                       R55 R76 K145 ["Enabled"]
      630 SETTABLEKS                       R52 R76 K146 ["Heading"]
      632 GETTABLEKS                       R77 R0 K172 ["onDialogAccepted"]
      634 SETTABLEKS                       R77 R76 K147 ["OnAccepted"]
      636 GETTABLEKS                       R77 R0 K173 ["onDialogCanceled"]
      638 SETTABLEKS                       R77 R76 K148 ["OnCanceled"]
      640 SETTABLEKS                       R54 R76 K149 ["Title"]
      642 CALL                             R74 2 1
      643 SETTABLEKS                       R74 R73 K157 ["SharingConfirmationDialog"]
      645 GETUPVAL                         R74 11
      646 GETTABLEKS                       R74 R74 K100 ["createElement"]
      648 GETUPVAL                         R75 15
      649 DUPTABLE                         R76 K188 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      650 SETTABLEKS                       R38 R76 K176 ["TabItems"]
      652 SETTABLEKS                       R6 R76 K177 ["CurrentTab"]
      654 SETTABLEKS                       R36 R76 K178 ["PreviewType"]
      656 SETTABLEKS                       R24 R76 K179 ["ScreenFlowType"]
      658 SETTABLEKS                       R16 R76 K180 ["AssetStatus"]
      660 SETTABLEKS                       R7 R76 K181 ["AssetId"]
      662 SETTABLEKS                       R21 R76 K182 ["IconFile"]
      664 SETTABLEKS                       R23 R76 K183 ["AssetTypeEnum"]
      666 SETTABLEKS                       R28 R76 K184 ["AllowedBundleTypeSettings"]
      668 GETTABLEKS                       R77 R0 K189 ["onTabSelect"]
      670 SETTABLEKS                       R77 R76 K185 ["OnTabSelect"]
      672 GETTABLEKS                       R77 R0 K190 ["chooseThumbnail"]
      674 SETTABLEKS                       R77 R76 K186 ["ChooseThumbnail"]
      676 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
      678 JUMPIFNOT                        R64 ; [+3]
      679 GETTABLEKS                       R77 R2 K64 ["selectedColor"]
      681 JUMP                             ; [+1]
      682 LOADNIL                          R77
      683 SETTABLEKS                       R77 R76 K64 ["selectedColor"]
      685 SETTABLEKS                       R37 R76 K187 ["animationTypeThumbnailUri"]
      687 CALL                             R74 2 1
      688 SETTABLEKS                       R74 R73 K158 ["Preview"]
      690 GETUPVAL                         R74 16
      691 GETTABLEKS                       R74 R74 K100 ["createElement"]
      693 GETUPVAL                         R75 17
      694 GETTABLEKS                       R75 R75 K191 ["Divider"]
      696 DUPTABLE                         R76 K194 [{["orientation"], ["LayoutOrder"] = 2}]
      697 GETUPVAL                         R77 17
      698 GETTABLEKS                       R77 R77 K195 ["Enums"]
      700 GETTABLEKS                       R77 R77 K196 ["DividerOrientation"]
      702 GETTABLEKS                       R77 R77 K122 ["Vertical"]
      704 SETTABLEKS                       R77 R76 K192 ["orientation"]
      706 CALL                             R74 2 1
      707 SETTABLEKS                       R74 R73 K159 ["VerticalLine"]
      709 MOVE                             R74 R40
      710 JUMPIFNOT                        R74 ; [+47]
      711 GETUPVAL                         R74 11
      712 GETTABLEKS                       R74 R74 K100 ["createElement"]
      714 GETUPVAL                         R75 18
      715 DUPTABLE                         R76 K198 [{["LayoutOrder"] = 3, ["Size"]}]
      716 GETIMPORT                        R77 K156 [UDim2.new]
      718 LOADN                            R78 1
      719 LOADN                            R79 -240
      720 LOADN                            R80 1
      721 LOADN                            R81 0
      722 CALL                             R77 4 1
      723 SETTABLEKS                       R77 R76 K3 ["Size"]
      725 DUPTABLE                         R77 K200 [{"LoadingIndicator"}]
      726 GETUPVAL                         R78 11
      727 GETTABLEKS                       R78 R78 K100 ["createElement"]
      729 GETUPVAL                         R79 19
      730 DUPTABLE                         R80 K203 [{"Size", "AnchorPoint", "Position"}]
      731 GETIMPORT                        R81 K156 [UDim2.new]
      733 LOADN                            R82 0
      734 LOADN                            R83 100
      735 LOADN                            R84 0
      736 LOADN                            R85 100
      737 CALL                             R81 4 1
      738 SETTABLEKS                       R81 R80 K3 ["Size"]
      740 GETIMPORT                        R81 K205 [Vector2.new]
      742 LOADK                            R82 K206 [0.5]
      743 LOADK                            R83 K206 [0.5]
      744 CALL                             R81 2 1
      745 SETTABLEKS                       R81 R80 K201 ["AnchorPoint"]
      747 GETIMPORT                        R81 K208 [UDim2.fromScale]
      749 LOADK                            R82 K206 [0.5]
      750 LOADK                            R83 K206 [0.5]
      751 CALL                             R81 2 1
      752 SETTABLEKS                       R81 R80 K202 ["Position"]
      754 CALL                             R78 2 1
      755 SETTABLEKS                       R78 R77 K199 ["LoadingIndicator"]
      757 CALL                             R74 3 1
      758 SETTABLEKS                       R74 R73 K160 ["LoadingIndicatorWrapper"]
      760 NOT                              R74 R40
      761 JUMPIFNOT                        R74 ; [+251]
      762 GETUPVAL                         R74 2
      763 MOVE                             R76 R6
      764 NAMECALL                         R74 R74 K209 ["isGeneral"]
      766 CALL                             R74 2 1
      767 JUMPIFNOT                        R74 ; [+245]
      768 GETUPVAL                         R74 11
      769 GETTABLEKS                       R74 R74 K100 ["createElement"]
      771 GETUPVAL                         R75 20
      772 NEWTABLE                         R76 64 0
      774 GETIMPORT                        R77 K156 [UDim2.new]
      776 LOADN                            R78 1
      777 LOADN                            R79 -240
      778 LOADN                            R80 1
      779 LOADN                            R81 0
      780 CALL                             R77 4 1
      781 SETTABLEKS                       R77 R76 K3 ["Size"]
      783 SETTABLEKS                       R47 R76 K210 ["allowSelectPrivate"]
      785 SETTABLEKS                       R7 R76 K6 ["assetId"]
      787 SETTABLEKS                       R8 R76 K8 ["name"]
      789 SETTABLEKS                       R9 R76 K9 ["description"]
      791 SETTABLEKS                       R10 R76 K13 ["owner"]
      793 SETTABLEKS                       R11 R76 K14 ["allowCopy"]
      795 SETTABLEKS                       R12 R76 K15 ["copyOn"]
      797 SETTABLEKS                       R13 R76 K16 ["allowComment"]
      799 SETTABLEKS                       R14 R76 K17 ["commentOn"]
      801 SETTABLEKS                       R15 R76 K18 ["deleteLocal"]
      803 SETTABLEKS                       R17 R76 K20 ["isAssetPublic"]
      805 SETTABLEKS                       R18 R76 K21 ["publishingRestriction"]
      807 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
      809 GETTABLEKS                       R77 R0 K211 ["onNameChange"]
      811 SETTABLEKS                       R77 R76 K211 ["onNameChange"]
      813 GETTABLEKS                       R77 R0 K212 ["onDescChange"]
      815 SETTABLEKS                       R77 R76 K212 ["onDescChange"]
      817 GETTABLEKS                       R77 R1 K213 ["groupId"]
      819 SETTABLEKS                       R77 R76 K214 ["preselectedGroupId"]
      821 GETTABLEKS                       R77 R0 K215 ["onAccessChange"]
      823 SETTABLEKS                       R77 R76 K216 ["onOwnerSelected"]
      825 GETTABLEKS                       R77 R0 K217 ["onSharingChanged"]
      827 SETTABLEKS                       R77 R76 K217 ["onSharingChanged"]
      829 GETTABLEKS                       R77 R0 K218 ["onAdditionalImagesChanged"]
      831 SETTABLEKS                       R77 R76 K218 ["onAdditionalImagesChanged"]
      833 GETTABLEKS                       R77 R0 K219 ["toggleCopy"]
      835 SETTABLEKS                       R77 R76 K219 ["toggleCopy"]
      837 GETTABLEKS                       R77 R0 K220 ["toggleComment"]
      839 SETTABLEKS                       R77 R76 K220 ["toggleComment"]
      841 GETTABLEKS                       R77 R0 K221 ["toggleDeleteLocal"]
      843 SETTABLEKS                       R77 R76 K221 ["toggleDeleteLocal"]
      845 GETTABLEKS                       R77 R0 K222 ["onAnimationSelectionChanged"]
      847 SETTABLEKS                       R77 R76 K222 ["onAnimationSelectionChanged"]
      849 GETTABLEKS                       R77 R0 K223 ["onanimationSectionValidityChanged"]
      851 SETTABLEKS                       R77 R76 K223 ["onanimationSectionValidityChanged"]
      853 GETTABLEKS                       R77 R2 K224 ["dataSharingEnabled"]
      855 SETTABLEKS                       R77 R76 K224 ["dataSharingEnabled"]
      857 GETTABLEKS                       R77 R2 K225 ["dataSharingToggled"]
      859 SETTABLEKS                       R77 R76 K225 ["dataSharingToggled"]
      861 GETTABLEKS                       R77 R0 K226 ["onDataConsentToggleClick"]
      863 SETTABLEKS                       R77 R76 K226 ["onDataConsentToggleClick"]
      865 GETTABLEKS                       R77 R0 K227 ["canOfferPublishOnApproval"]
      867 CALL                             R77 0 1
      868 SETTABLEKS                       R77 R76 K228 ["publishOnApprovalEnabled"]
      870 GETTABLEKS                       R77 R1 K229 ["hasPublishingPreferences"]
      872 SETTABLEKS                       R77 R76 K229 ["hasPublishingPreferences"]
      874 GETTABLEKS                       R77 R1 K230 ["hasPublishingFeePreview"]
      876 SETTABLEKS                       R77 R76 K230 ["hasPublishingFeePreview"]
      878 GETTABLEKS                       R77 R1 K231 ["publishingFeePreview"]
      880 SETTABLEKS                       R77 R76 K231 ["publishingFeePreview"]
      882 GETTABLEKS                       R77 R2 K232 ["publishOnApprovalToggled"]
      884 SETTABLEKS                       R77 R76 K232 ["publishOnApprovalToggled"]
      886 GETTABLEKS                       R77 R0 K233 ["onPublishToMarketplaceToggleClick"]
      888 SETTABLEKS                       R77 R76 K233 ["onPublishToMarketplaceToggleClick"]
      890 GETUPVAL                         R78 21
      891 CALL                             R78 0 1
      892 JUMPIFNOT                        R78 ; [+3]
      893 GETTABLEKS                       R77 R1 K234 ["specialAttributes"]
      895 JUMP                             ; [+1]
      896 LOADNIL                          R77
      897 SETTABLEKS                       R77 R76 K234 ["specialAttributes"]
      899 GETUPVAL                         R78 21
      900 CALL                             R78 0 1
      901 JUMPIFNOT                        R78 ; [+3]
      902 GETTABLEKS                       R77 R1 K235 ["hasMetadataPermission"]
      904 JUMP                             ; [+1]
      905 LOADNIL                          R77
      906 SETTABLEKS                       R77 R76 K235 ["hasMetadataPermission"]
      908 SETTABLEKS                       R31 R76 K236 ["displayOwnership"]
      910 SETTABLEKS                       R32 R76 K237 ["displayCopy"]
      912 SETTABLEKS                       R34 R76 K238 ["displayComment"]
      914 SETTABLEKS                       R35 R76 K239 ["displayAssetType"]
      916 SETTABLEKS                       R48 R76 K240 ["displaySharing"]
      918 SETTABLEKS                       R33 R76 K241 ["displayAssetTypeSelection"]
      920 SETTABLEKS                       R39 R76 K242 ["hideCreatorStoreConfiguration"]
      922 JUMPIFNOT                        R46 ; [+2]
      923 MOVE                             R77 R26
      924 JUMP                             ; [+1]
      925 LOADNIL                          R77
      926 SETTABLEKS                       R77 R76 K30 ["allowedAssetTypesForRelease"]
      928 SETTABLEKS                       R27 R76 K31 ["allowedAssetTypesForFree"]
      930 JUMPIFNOT                        R46 ; [+2]
      931 MOVE                             R77 R16
      932 JUMP                             ; [+1]
      933 LOADNIL                          R77
      934 SETTABLEKS                       R77 R76 K243 ["newAssetStatus"]
      936 JUMPIFNOT                        R46 ; [+2]
      937 MOVE                             R77 R29
      938 JUMP                             ; [+1]
      939 LOADNIL                          R77
      940 SETTABLEKS                       R77 R76 K244 ["currentAssetStatus"]
      942 JUMPIFNOT                        R46 ; [+3]
      943 GETTABLEKS                       R77 R0 K245 ["onStatusChange"]
      945 JUMP                             ; [+1]
      946 LOADNIL                          R77
      947 SETTABLEKS                       R77 R76 K245 ["onStatusChange"]
      949 JUMPIFNOT                        R46 ; [+3]
      950 GETTABLEKS                       R77 R0 K246 ["onPriceChange"]
      952 JUMP                             ; [+1]
      953 LOADNIL                          R77
      954 SETTABLEKS                       R77 R76 K246 ["onPriceChange"]
      956 JUMPIFNOT                        R46 ; [+2]
      957 MOVE                             R77 R30
      958 JUMP                             ; [+1]
      959 LOADNIL                          R77
      960 SETTABLEKS                       R77 R76 K35 ["price"]
      962 LOADNIL                          R77
      963 SETTABLEKS                       R77 R76 K247 ["minPrice"]
      965 LOADNIL                          R77
      966 SETTABLEKS                       R77 R76 K248 ["maxPrice"]
      968 LOADNIL                          R77
      969 SETTABLEKS                       R77 R76 K249 ["feeRate"]
      971 LOADNIL                          R77
      972 SETTABLEKS                       R77 R76 K250 ["isPriceValid"]
      974 LOADN                            R77 3
      975 SETTABLEKS                       R77 R76 K128 ["LayoutOrder"]
      977 GETTABLEKS                       R77 R1 K47 ["instances"]
      979 SETTABLEKS                       R77 R76 K47 ["instances"]
      981 SETTABLEKS                       R64 R76 K251 ["showColorPicker"]
      983 JUMPIFNOT                        R64 ; [+3]
      984 GETTABLEKS                       R77 R2 K252 ["showColorPickerRequiredError"]
      986 JUMP                             ; [+1]
      987 LOADNIL                          R77
      988 SETTABLEKS                       R77 R76 K252 ["showColorPickerRequiredError"]
      990 GETTABLEKS                       R77 R2 K253 ["showNameRequiredError"]
      992 SETTABLEKS                       R77 R76 K253 ["showNameRequiredError"]
      994 GETTABLEKS                       R77 R2 K254 ["showDescriptionRequiredError"]
      996 SETTABLEKS                       R77 R76 K254 ["showDescriptionRequiredError"]
      998 JUMPIFNOT                        R64 ; [+3]
      999 GETTABLEKS                       R77 R2 K64 ["selectedColor"]
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R77
     1003 SETTABLEKS                       R77 R76 K64 ["selectedColor"]
     1005 JUMPIFNOT                        R64 ; [+3]
     1006 GETTABLEKS                       R77 R0 K255 ["onSelectedColorChange"]
     1008 JUMP                             ; [+1]
     1009 LOADNIL                          R77
     1010 SETTABLEKS                       R77 R76 K256 ["setSelectedColor"]
     1012 CALL                             R74 2 1
     1013 SETTABLEKS                       R74 R73 K161 ["PublishAsset"]
     1015 GETUPVAL                         R74 2
     1016 MOVE                             R76 R6
     1017 NAMECALL                         R74 R74 K257 ["isVersions"]
     1019 CALL                             R74 2 1
     1020 JUMPIFNOT                        R74 ; [+75]
     1021 GETUPVAL                         R74 11
     1022 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1024 GETUPVAL                         R75 22
     1025 DUPTABLE                         R76 K271 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
     1026 GETIMPORT                        R77 K156 [UDim2.new]
     1028 LOADN                            R78 1
     1029 LOADN                            R79 -240
     1030 LOADN                            R80 1
     1031 LOADN                            R81 -20
     1032 CALL                             R77 4 1
     1033 SETTABLEKS                       R77 R76 K3 ["Size"]
     1035 SETTABLEKS                       R7 R76 K6 ["assetId"]
     1037 GETTABLEKS                       R77 R2 K272 ["versionsCurrentItem"]
     1039 SETTABLEKS                       R77 R76 K258 ["currentItem"]
     1041 GETTABLEKS                       R77 R2 K273 ["versionsRootItems"]
     1043 SETTABLEKS                       R77 R76 K259 ["rootItems"]
     1045 GETTABLEKS                       R77 R2 K274 ["versionsOpenInputKey"]
     1047 SETTABLEKS                       R77 R76 K260 ["openInputKey"]
     1049 GETTABLEKS                       R77 R2 K275 ["versionsPreviousInput"]
     1051 SETTABLEKS                       R77 R76 K261 ["previousInput"]
     1053 GETTABLEKS                       R77 R2 K276 ["versionsPageIndex"]
     1055 SETTABLEKS                       R77 R76 K262 ["pageIndex"]
     1057 GETTABLEKS                       R77 R2 K277 ["versionsPageRootItems"]
     1059 SETTABLEKS                       R77 R76 K263 ["pageRootItems"]
     1061 GETUPVAL                         R78 23
     1062 CALL                             R78 0 1
     1063 JUMPIFNOT                        R78 ; [+3]
     1064 GETTABLEKS                       R77 R1 K278 ["versionHistoryWithDescriptions"]
     1066 JUMP                             ; [+2]
     1067 GETTABLEKS                       R77 R1 K264 ["versionHistory"]
     1069 SETTABLEKS                       R77 R76 K264 ["versionHistory"]
     1071 GETTABLEKS                       R77 R0 K279 ["versionsOnDescClicked"]
     1073 SETTABLEKS                       R77 R76 K265 ["onDescClicked"]
     1075 GETTABLEKS                       R77 R0 K280 ["versionsCloseInput"]
     1077 SETTABLEKS                       R77 R76 K266 ["closeInput"]
     1079 GETTABLEKS                       R77 R0 K267 ["setVersionError"]
     1081 SETTABLEKS                       R77 R76 K267 ["setVersionError"]
     1083 GETTABLEKS                       R77 R0 K281 ["versionsSetPreviousInput"]
     1085 SETTABLEKS                       R77 R76 K268 ["setPreviousInput"]
     1087 GETTABLEKS                       R77 R0 K282 ["versionsOnPageChange"]
     1089 SETTABLEKS                       R77 R76 K269 ["onPageChange"]
     1091 GETTABLEKS                       R77 R0 K283 ["versionsSetStates"]
     1093 SETTABLEKS                       R77 R76 K270 ["setStates"]
     1095 CALL                             R74 2 1
     1096 SETTABLEKS                       R74 R73 K162 ["Versions"]
     1098 GETUPVAL                         R75 2
     1099 MOVE                             R77 R6
     1100 NAMECALL                         R75 R75 K284 ["isSales"]
     1102 CALL                             R75 2 1
     1103 JUMPIFNOT                        R75 ; [+18]
     1104 GETUPVAL                         R74 11
     1105 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1107 GETUPVAL                         R75 24
     1108 DUPTABLE                         R76 K287 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1109 GETIMPORT                        R77 K156 [UDim2.new]
     1111 LOADN                            R78 1
     1112 LOADN                            R79 -240
     1113 LOADN                            R80 1
     1114 LOADN                            R81 0
     1115 CALL                             R77 4 1
     1116 SETTABLEKS                       R77 R76 K285 ["size"]
     1118 SETTABLEKS                       R7 R76 K6 ["assetId"]
     1120 CALL                             R74 2 1
     1121 JUMP                             ; [+1]
     1122 LOADNIL                          R74
     1123 SETTABLEKS                       R74 R73 K163 ["Sales"]
     1125 GETUPVAL                         R74 2
     1126 MOVE                             R76 R6
     1127 NAMECALL                         R74 R74 K288 ["isOverride"]
     1129 CALL                             R74 2 1
     1130 JUMPIFNOT                        R74 ; [+56]
     1131 GETUPVAL                         R75 25
     1132 CALL                             R75 0 1
     1133 JUMPIFNOT                        R75 ; [+28]
     1134 GETUPVAL                         R75 3
     1135 GETTABLEKS                       R75 R75 K289 ["isAvatarItemUpdateSupported"]
     1137 MOVE                             R76 R23
     1138 CALL                             R75 1 1
     1139 JUMPIFNOT                        R75 ; [+22]
     1140 GETUPVAL                         R74 16
     1141 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1143 GETUPVAL                         R75 26
     1144 DUPTABLE                         R76 K291 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1145 GETIMPORT                        R77 K156 [UDim2.new]
     1147 LOADN                            R78 1
     1148 LOADN                            R79 -240
     1149 LOADN                            R80 1
     1150 LOADN                            R81 0
     1151 CALL                             R77 4 1
     1152 SETTABLEKS                       R77 R76 K3 ["Size"]
     1154 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
     1156 GETTABLEKS                       R77 R0 K290 ["onOverrideAssetSelected"]
     1158 SETTABLEKS                       R77 R76 K290 ["onOverrideAssetSelected"]
     1160 CALL                             R74 2 1
     1161 JUMP                             ; [+25]
     1162 GETUPVAL                         R74 11
     1163 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1165 GETUPVAL                         R75 27
     1166 DUPTABLE                         R76 K292 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1167 GETIMPORT                        R77 K156 [UDim2.new]
     1169 LOADN                            R78 1
     1170 LOADN                            R79 -240
     1171 LOADN                            R80 1
     1172 LOADN                            R81 0
     1173 CALL                             R77 4 1
     1174 SETTABLEKS                       R77 R76 K3 ["Size"]
     1176 SETTABLEKS                       R23 R76 K28 ["assetTypeEnum"]
     1178 GETTABLEKS                       R77 R1 K47 ["instances"]
     1180 SETTABLEKS                       R77 R76 K47 ["instances"]
     1182 GETTABLEKS                       R77 R0 K290 ["onOverrideAssetSelected"]
     1184 SETTABLEKS                       R77 R76 K290 ["onOverrideAssetSelected"]
     1186 CALL                             R74 2 1
     1187 SETTABLEKS                       R74 R73 K164 ["OverrideAsset"]
     1189 GETUPVAL                         R74 2
     1190 MOVE                             R76 R6
     1191 NAMECALL                         R74 R74 K293 ["isPermissions"]
     1193 CALL                             R74 2 1
     1194 JUMPIFNOT                        R74 ; [+30]
     1195 GETUPVAL                         R74 11
     1196 GETTABLEKS                       R74 R74 K100 ["createElement"]
     1198 GETUPVAL                         R75 28
     1199 GETTABLEKS                       R75 R75 K294 ["AsyncCache"]
     1201 NEWTABLE                         R76 0 0
     1203 NEWTABLE                         R77 0 1
     1205 GETUPVAL                         R78 11
     1206 GETTABLEKS                       R78 R78 K100 ["createElement"]
     1208 GETUPVAL                         R79 29
     1209 DUPTABLE                         R80 K295 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1210 GETIMPORT                        R81 K156 [UDim2.new]
     1212 LOADN                            R82 1
     1213 MOVE                             R83 R42
     1214 LOADN                            R84 1
     1215 LOADN                            R85 0
     1216 CALL                             R81 4 1
     1217 SETTABLEKS                       R81 R80 K3 ["Size"]
     1219 SETTABLEKS                       R7 R80 K181 ["AssetId"]
     1221 CALL                             R78 2 -1
     1222 SETLIST                          R77 R78 -1 [1]
     1224 CALL                             R74 3 1
     1225 SETTABLEKS                       R74 R73 K165 ["PackagePermissions"]
     1227 CALL                             R70 3 1
     1228 SETTABLEKS                       R70 R69 K113 ["MainPage"]
     1230 GETUPVAL                         R70 11
     1231 GETTABLEKS                       R70 R70 K100 ["createElement"]
     1233 GETUPVAL                         R71 30
     1234 DUPTABLE                         R72 K301 [{["AssetId"], ["CanSave"], ["publishOnApprovalFee"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1235 GETTABLEKS                       R73 R2 K302 ["overrideAssetId"]
     1237 SETTABLEKS                       R73 R72 K181 ["AssetId"]
     1239 SETTABLEKS                       R41 R72 K296 ["CanSave"]
     1241 GETUPVAL                         R74 9
     1242 CALL                             R74 0 1
     1243 JUMPIFNOT                        R74 ; [+2]
     1244 MOVE                             R73 R62
     1245 JUMP                             ; [+1]
     1246 LOADNIL                          R73
     1247 SETTABLEKS                       R73 R72 K297 ["publishOnApprovalFee"]
     1249 GETIMPORT                        R73 K156 [UDim2.new]
     1251 LOADN                            R74 1
     1252 LOADN                            R75 0
     1253 LOADN                            R76 0
     1254 LOADN                            R77 62
     1255 CALL                             R73 4 1
     1256 SETTABLEKS                       R73 R72 K3 ["Size"]
     1258 GETTABLEKS                       R73 R0 K303 ["tryCancelWithYield"]
     1260 SETTABLEKS                       R73 R72 K298 ["TryCancel"]
     1262 GETTABLEKS                       R73 R0 K304 ["tryPublishWithConfirmDialog"]
     1264 SETTABLEKS                       R73 R72 K299 ["TryPublish"]
     1266 JUMPIF                           R41 ; [+8]
     1267 NEWCLOSURE                       R73 P1
     1268 CAPTURE                          VAL R0
     1269 CAPTURE                          VAL R65
     1270 CAPTURE                          VAL R8
     1271 CAPTURE                          VAL R9
     1272 CAPTURE                          UPVAL U3
     1273 CAPTURE                          VAL R23
     1274 JUMP                             ; [+1]
     1275 LOADNIL                          R73
     1276 SETTABLEKS                       R73 R72 K300 ["OnPublishButtonHover"]
     1278 CALL                             R70 2 1
     1279 SETTABLEKS                       R70 R69 K114 ["Footer"]
     1281 CALL                             R66 3 -1
     1282 RETURN                           R66 -1

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
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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

PROTO_95:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
       31 SETTABLEKS                       R2 R1 K5 ["postRevertVersion"]
       33 NEWCLOSURE                       R2 P6
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R2 R1 K6 ["postVersionDescription"]
       38 NEWCLOSURE                       R2 P7
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U10
       43 SETTABLEKS                       R2 R1 K7 ["setTab"]
       45 NEWCLOSURE                       R2 P8
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U11
       48 SETTABLEKS                       R2 R1 K8 ["getIsVerifiedCreator"]
       50 NEWCLOSURE                       R2 P9
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U12
       53 SETTABLEKS                       R2 R1 K9 ["getItemUploadFee"]
       55 GETUPVAL                         R3 13
       56 CALL                             R3 0 1
       57 JUMPIFNOT                        R3 ; [+4]
       58 NEWCLOSURE                       R2 P10
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U14
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 SETTABLEKS                       R2 R1 K10 ["getPublishingPreferences"]
       65 GETUPVAL                         R3 13
       66 CALL                             R3 0 1
       67 JUMPIFNOT                        R3 ; [+4]
       68 NEWCLOSURE                       R2 P11
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U15
       71 JUMP                             ; [+1]
       72 LOADNIL                          R2
       73 SETTABLEKS                       R2 R1 K11 ["clearPublishingPreferences"]
       75 GETUPVAL                         R3 13
       76 CALL                             R3 0 1
       77 JUMPIFNOT                        R3 ; [+4]
       78 NEWCLOSURE                       R2 P12
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U16
       81 JUMP                             ; [+1]
       82 LOADNIL                          R2
       83 SETTABLEKS                       R2 R1 K12 ["getPublishingFeePreview"]
       85 GETUPVAL                         R3 13
       86 CALL                             R3 0 1
       87 JUMPIFNOT                        R3 ; [+4]
       88 NEWCLOSURE                       R2 P13
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U17
       91 JUMP                             ; [+1]
       92 LOADNIL                          R2
       93 SETTABLEKS                       R2 R1 K13 ["clearPublishingFeePreview"]
       95 GETUPVAL                         R3 18
       96 CALL                             R3 0 1
       97 JUMPIFNOT                        R3 ; [+4]
       98 NEWCLOSURE                       R2 P14
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U19
      101 JUMP                             ; [+1]
      102 LOADNIL                          R2
      103 SETTABLEKS                       R2 R1 K14 ["dispatchFetchUploadFeeWithMetadata"]
      105 NEWCLOSURE                       R2 P15
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U20
      108 SETTABLEKS                       R2 R1 K15 ["dispatchPostPackageMetadataRequest"]
      110 NEWCLOSURE                       R2 P16
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U21
      113 SETTABLEKS                       R2 R1 K16 ["updateStore"]
      115 NEWCLOSURE                       R2 P17
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U22
      118 SETTABLEKS                       R2 R1 K17 ["dispatchGetPackageCollaboratorsRequest"]
      120 NEWCLOSURE                       R2 P18
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U23
      123 SETTABLEKS                       R2 R1 K18 ["dispatchPutPackagePermissionsRequest"]
      125 NEWCLOSURE                       R2 P19
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U24
      128 SETTABLEKS                       R2 R1 K19 ["dispatchPostAssetCheckPermissions"]
      130 NEWCLOSURE                       R2 P20
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U25
      133 SETTABLEKS                       R2 R1 K20 ["dispatchGetGroupMetadata"]
      135 NEWCLOSURE                       R2 P21
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U26
      138 SETTABLEKS                       R2 R1 K21 ["dispatchGetGroupRoleInfo"]
      140 NEWCLOSURE                       R2 P22
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U27
      143 SETTABLEKS                       R2 R1 K22 ["dispatchGetUsername"]
      145 NEWCLOSURE                       R2 P23
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U28
      148 SETTABLEKS                       R2 R1 K23 ["dispatchGetExperienceName"]
      150 NEWCLOSURE                       R2 P24
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U29
      153 SETTABLEKS                       R2 R1 K24 ["dispatchPatchMakeAssetPublicRequest"]
      155 NEWCLOSURE                       R2 P25
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U30
      158 SETTABLEKS                       R2 R1 K25 ["dispatchGetAssetPermissionsRequest"]
      160 NEWCLOSURE                       R2 P26
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U31
      163 SETTABLEKS                       R2 R1 K26 ["dispatchSetDescendantPermissions"]
      165 NEWCLOSURE                       R2 P27
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U32
      168 SETTABLEKS                       R2 R1 K27 ["dispatchGetPublishingRequirements"]
      170 NEWCLOSURE                       R2 P28
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U33
      173 SETTABLEKS                       R2 R1 K28 ["dispatchGetAssetMediaMetadataArray"]
      175 NEWCLOSURE                       R2 P29
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U34
      178 SETTABLEKS                       R2 R1 K29 ["dispatchGetFiatProduct"]
      180 GETUPVAL                         R3 35
      181 CALL                             R3 0 1
      182 JUMPIFNOT                        R3 ; [+4]
      183 NEWCLOSURE                       R2 P30
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U36
      186 JUMP                             ; [+1]
      187 LOADNIL                          R2
      188 SETTABLEKS                       R2 R1 K30 ["dispatchGetSellerStatus"]
      190 NEWCLOSURE                       R2 P31
      191 CAPTURE                          VAL R0
      192 CAPTURE                          UPVAL U37
      193 SETTABLEKS                       R2 R1 K31 ["dispatchValidateAnimationResult"]
      195 NEWCLOSURE                       R2 P32
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U38
      198 SETTABLEKS                       R2 R1 K32 ["dispatchCheckAvatarAssetPrivacy"]
      200 NEWCLOSURE                       R2 P33
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U39
      203 SETTABLEKS                       R2 R1 K33 ["dispatchDownloadFlow"]
      205 NEWCLOSURE                       R2 P34
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U40
      208 SETTABLEKS                       R2 R1 K34 ["dispatchEditFlow"]
      210 NEWCLOSURE                       R2 P35
      211 CAPTURE                          VAL R0
      212 CAPTURE                          UPVAL U41
      213 SETTABLEKS                       R2 R1 K35 ["dispatchUploadFlow"]
      215 RETURN                           R1 1

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
       62 GETTABLEKS                       R9 R1 K19 ["Packages"]
       64 GETIMPORT                        R10 K15 [require]
       66 GETTABLEKS                       R11 R9 K20 ["React"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K15 [require]
       71 GETTABLEKS                       R12 R9 K21 ["Roact"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K15 [require]
       76 GETTABLEKS                       R13 R9 K22 ["RoactRodux"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K15 [require]
       81 GETTABLEKS                       R14 R9 K23 ["Foundation"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K15 [require]
       86 GETTABLEKS                       R15 R9 K24 ["Cryo"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K15 [require]
       91 GETTABLEKS                       R16 R2 K25 ["Analytics"]
       93 GETTABLEKS                       R16 R16 K25 ["Analytics"]
       95 CALL                             R15 1 1
       96 GETTABLEKS                       R16 R1 K7 ["Src"]
       98 GETTABLEKS                       R16 R16 K26 ["Components"]
      100 GETTABLEKS                       R17 R16 K27 ["AssetConfiguration"]
      102 GETIMPORT                        R18 K15 [require]
      104 GETTABLEKS                       R19 R17 K28 ["PreviewArea"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K15 [require]
      109 GETTABLEKS                       R20 R17 K29 ["PublishAsset"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K15 [require]
      114 GETTABLEKS                       R21 R17 K30 ["AssetConfigFooter"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K15 [require]
      119 GETTABLEKS                       R22 R17 K31 ["Versions"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K15 [require]
      124 GETTABLEKS                       R23 R17 K32 ["DataSharing"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K15 [require]
      129 GETTABLEKS                       R24 R17 K33 ["CreatorDashboardLinkContent"]
      131 CALL                             R23 1 1
      132 GETIMPORT                        R24 K15 [require]
      134 GETTABLEKS                       R25 R17 K34 ["Permissions"]
      136 GETTABLEKS                       R25 R25 K35 ["PermissionsPage"]
      138 CALL                             R24 1 1
      139 GETIMPORT                        R25 K15 [require]
      141 GETTABLEKS                       R26 R17 K34 ["Permissions"]
      143 GETTABLEKS                       R26 R26 K36 ["CollaboratorInfo"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K15 [require]
      148 GETTABLEKS                       R27 R17 K37 ["WarningDialog"]
      150 CALL                             R26 1 1
      151 GETIMPORT                        R27 K15 [require]
      153 GETTABLEKS                       R28 R17 K38 ["AvatarItemDialogContainer"]
      155 CALL                             R27 1 1
      156 GETIMPORT                        R28 K15 [require]
      158 GETTABLEKS                       R29 R17 K39 ["OverrideAsset"]
      160 CALL                             R28 1 1
      161 GETIMPORT                        R29 K15 [require]
      163 GETTABLEKS                       R30 R17 K40 ["AvatarItemOverride"]
      165 CALL                             R29 1 1
      166 GETIMPORT                        R30 K15 [require]
      168 GETTABLEKS                       R31 R16 K41 ["MessageBox"]
      170 GETTABLEKS                       R31 R31 K41 ["MessageBox"]
      172 CALL                             R30 1 1
      173 GETIMPORT                        R31 K15 [require]
      175 GETTABLEKS                       R32 R2 K42 ["AssetPermissionUtil"]
      177 CALL                             R31 1 1
      178 GETIMPORT                        R32 K15 [require]
      180 GETTABLEKS                       R33 R2 K43 ["AvatarAnimationStudioToolboxTextures"]
      182 CALL                             R32 1 1
      183 GETIMPORT                        R33 K15 [require]
      185 GETTABLEKS                       R34 R2 K44 ["Images"]
      187 CALL                             R33 1 1
      188 GETIMPORT                        R34 K15 [require]
      190 GETTABLEKS                       R35 R2 K45 ["AssetConfigConstants"]
      192 CALL                             R34 1 1
      193 GETIMPORT                        R35 K15 [require]
      195 GETTABLEKS                       R36 R2 K46 ["Constants"]
      197 CALL                             R35 1 1
      198 GETIMPORT                        R36 K15 [require]
      200 GETTABLEKS                       R37 R2 K47 ["ScreenSetup"]
      202 CALL                             R36 1 1
      203 GETIMPORT                        R37 K15 [require]
      205 GETTABLEKS                       R38 R2 K48 ["AssetConfigUtil"]
      207 CALL                             R37 1 1
      208 GETIMPORT                        R38 K15 [require]
      210 GETTABLEKS                       R39 R2 K49 ["PublishUtil"]
      212 CALL                             R38 1 1
      213 GETIMPORT                        R39 K15 [require]
      215 GETTABLEKS                       R40 R2 K50 ["getAllowedAssetTypeEnums"]
      217 CALL                             R39 1 1
      218 GETIMPORT                        R40 K15 [require]
      220 GETTABLEKS                       R41 R2 K51 ["FiatUtil"]
      222 CALL                             R40 1 1
      223 GETIMPORT                        R41 K15 [require]
      225 GETTABLEKS                       R42 R2 K52 ["MetadataType"]
      227 CALL                             R41 1 1
      228 GETIMPORT                        R42 K15 [require]
      230 GETTABLEKS                       R43 R9 K53 ["Framework"]
      232 CALL                             R42 1 1
      233 GETTABLEKS                       R43 R42 K8 ["Util"]
      235 GETTABLEKS                       R43 R43 K54 ["deepCopy"]
      237 GETTABLEKS                       R44 R42 K8 ["Util"]
      239 GETTABLEKS                       R44 R44 K55 ["deepEqual"]
      241 GETTABLEKS                       R45 R42 K56 ["Dash"]
      243 GETTABLEKS                       R46 R45 K57 ["slice"]
      245 GETIMPORT                        R47 K15 [require]
      247 GETTABLEKS                       R48 R1 K7 ["Src"]
      249 GETTABLEKS                       R48 R48 K58 ["Networking"]
      251 GETTABLEKS                       R48 R48 K59 ["Requests"]
      253 GETTABLEKS                       R48 R48 K60 ["MakeChangeRequest"]
      255 CALL                             R47 1 1
      256 GETTABLEKS                       R48 R1 K7 ["Src"]
      258 GETTABLEKS                       R48 R48 K61 ["Types"]
      260 GETIMPORT                        R49 K15 [require]
      262 GETTABLEKS                       R50 R48 K62 ["AssetMediaTypes"]
      264 CALL                             R49 1 1
      265 GETIMPORT                        R50 K15 [require]
      267 GETTABLEKS                       R51 R48 K63 ["AssetSubTypes"]
      269 CALL                             R50 1 1
      270 GETIMPORT                        R51 K15 [require]
      272 GETTABLEKS                       R52 R48 K64 ["ConfigTypes"]
      274 CALL                             R51 1 1
      275 GETTABLEKS                       R52 R1 K7 ["Src"]
      277 GETTABLEKS                       R52 R52 K58 ["Networking"]
      279 GETTABLEKS                       R52 R52 K59 ["Requests"]
      281 GETIMPORT                        R53 K15 [require]
      283 GETTABLEKS                       R54 R52 K65 ["GetAssetDetailsRequest"]
      285 CALL                             R53 1 1
      286 GETIMPORT                        R54 K15 [require]
      288 GETTABLEKS                       R55 R52 K66 ["PostRevertVersionRequest"]
      290 CALL                             R54 1 1
      291 GETIMPORT                        R55 K15 [require]
      293 GETTABLEKS                       R56 R52 K67 ["PostVersionDescriptionRequest"]
      295 CALL                             R55 1 1
      296 GETIMPORT                        R56 K15 [require]
      298 GETTABLEKS                       R57 R52 K68 ["GetIsVerifiedCreatorRequest"]
      300 CALL                             R56 1 1
      301 GETIMPORT                        R57 K15 [require]
      303 GETTABLEKS                       R58 R52 K69 ["PostPackageMetadataRequest"]
      305 CALL                             R57 1 1
      306 GETIMPORT                        R58 K15 [require]
      308 GETTABLEKS                       R59 R52 K70 ["GetPackageCollaboratorsRequest"]
      310 CALL                             R58 1 1
      311 GETIMPORT                        R59 K15 [require]
      313 GETTABLEKS                       R60 R52 K71 ["PutPackagePermissionsRequest"]
      315 CALL                             R59 1 1
      316 GETIMPORT                        R60 K15 [require]
      318 GETTABLEKS                       R61 R52 K72 ["PostAssetCheckPermissions"]
      320 CALL                             R60 1 1
      321 GETIMPORT                        R61 K15 [require]
      323 GETTABLEKS                       R62 R52 K73 ["GetMarketplaceInfoRequest"]
      325 CALL                             R61 1 1
      326 GETIMPORT                        R62 K15 [require]
      328 GETTABLEKS                       R63 R52 K74 ["GetItemUploadFeeRequest"]
      330 CALL                             R62 1 1
      331 GETIMPORT                        R63 K15 [require]
      333 GETTABLEKS                       R64 R52 K75 ["GetPublishingPreferencesRequest"]
      335 CALL                             R63 1 1
      336 GETIMPORT                        R64 K15 [require]
      338 GETTABLEKS                       R65 R52 K76 ["GetPublishingFeePreviewRequest"]
      340 CALL                             R64 1 1
      341 GETIMPORT                        R65 K15 [require]
      343 GETTABLEKS                       R66 R52 K77 ["PatchMakeAssetPublicRequest"]
      345 CALL                             R65 1 1
      346 GETIMPORT                        R66 K15 [require]
      348 GETTABLEKS                       R67 R52 K78 ["GetAssetPermissionsRequest"]
      350 CALL                             R66 1 1
      351 GETIMPORT                        R67 K15 [require]
      353 GETTABLEKS                       R68 R52 K79 ["GetPublishingRequirementsRequest"]
      355 CALL                             R67 1 1
      356 GETIMPORT                        R68 K15 [require]
      358 GETTABLEKS                       R69 R52 K80 ["GetAssetMediaMetadataArrayRequest"]
      360 CALL                             R68 1 1
      361 GETIMPORT                        R69 K15 [require]
      363 GETTABLEKS                       R70 R52 K81 ["GetVersionHistoryRequest"]
      365 CALL                             R69 1 1
      366 GETIMPORT                        R70 K15 [require]
      368 GETTABLEKS                       R71 R52 K82 ["GetFiatProductRequest"]
      370 CALL                             R70 1 1
      371 GETIMPORT                        R71 K15 [require]
      373 GETTABLEKS                       R72 R52 K83 ["GetSellerStatusRequest"]
      375 CALL                             R71 1 1
      376 GETIMPORT                        R72 K15 [require]
      378 GETTABLEKS                       R73 R52 K84 ["GetDefaultBundleDataSharingRequest"]
      380 CALL                             R72 1 1
      381 GETIMPORT                        R73 K15 [require]
      383 GETTABLEKS                       R74 R1 K7 ["Src"]
      385 GETTABLEKS                       R74 R74 K85 ["Actions"]
      387 GETTABLEKS                       R74 R74 K86 ["ClearChange"]
      389 CALL                             R73 1 1
      390 GETIMPORT                        R74 K15 [require]
      392 GETTABLEKS                       R75 R1 K7 ["Src"]
      394 GETTABLEKS                       R75 R75 K85 ["Actions"]
      396 GETTABLEKS                       R75 R75 K87 ["SetAssetConfigTab"]
      398 CALL                             R74 1 1
      399 GETIMPORT                        R75 K15 [require]
      401 GETTABLEKS                       R76 R1 K7 ["Src"]
      403 GETTABLEKS                       R76 R76 K85 ["Actions"]
      405 GETTABLEKS                       R76 R76 K88 ["UpdateAssetConfigStore"]
      407 CALL                             R75 1 1
      408 GETIMPORT                        R76 K15 [require]
      410 GETTABLEKS                       R77 R1 K7 ["Src"]
      412 GETTABLEKS                       R77 R77 K85 ["Actions"]
      414 GETTABLEKS                       R77 R77 K89 ["PublishingPreferencesReceived"]
      416 CALL                             R76 1 1
      417 GETIMPORT                        R77 K15 [require]
      419 GETTABLEKS                       R78 R1 K7 ["Src"]
      421 GETTABLEKS                       R78 R78 K85 ["Actions"]
      423 GETTABLEKS                       R78 R78 K90 ["PublishingFeePreviewReceived"]
      425 CALL                             R77 1 1
      426 GETIMPORT                        R78 K15 [require]
      428 GETTABLEKS                       R79 R1 K7 ["Src"]
      430 GETTABLEKS                       R79 R79 K85 ["Actions"]
      432 GETTABLEKS                       R79 R79 K91 ["SetDescendantPermissions"]
      434 CALL                             R78 1 1
      435 GETIMPORT                        R79 K15 [require]
      437 GETTABLEKS                       R80 R1 K7 ["Src"]
      439 GETTABLEKS                       R80 R80 K85 ["Actions"]
      441 GETTABLEKS                       R80 R80 K92 ["UploadResult"]
      443 CALL                             R79 1 1
      444 GETIMPORT                        R80 K15 [require]
      446 GETTABLEKS                       R81 R1 K7 ["Src"]
      448 GETTABLEKS                       R81 R81 K85 ["Actions"]
      450 GETTABLEKS                       R81 R81 K93 ["ValidateAnimationResult"]
      452 CALL                             R80 1 1
      453 GETIMPORT                        R81 K15 [require]
      455 GETTABLEKS                       R82 R1 K7 ["Src"]
      457 GETTABLEKS                       R82 R82 K94 ["Thunks"]
      459 GETTABLEKS                       R82 R82 K95 ["GetGroupMetadata"]
      461 CALL                             R81 1 1
      462 GETIMPORT                        R82 K15 [require]
      464 GETTABLEKS                       R83 R1 K7 ["Src"]
      466 GETTABLEKS                       R83 R83 K94 ["Thunks"]
      468 GETTABLEKS                       R83 R83 K96 ["GetGroupRoleInfo"]
      470 CALL                             R82 1 1
      471 GETIMPORT                        R83 K15 [require]
      473 GETTABLEKS                       R84 R1 K7 ["Src"]
      475 GETTABLEKS                       R84 R84 K94 ["Thunks"]
      477 GETTABLEKS                       R84 R84 K97 ["GetUsername"]
      479 CALL                             R83 1 1
      480 GETIMPORT                        R84 K15 [require]
      482 GETTABLEKS                       R85 R1 K7 ["Src"]
      484 GETTABLEKS                       R85 R85 K58 ["Networking"]
      486 GETTABLEKS                       R85 R85 K59 ["Requests"]
      488 GETTABLEKS                       R85 R85 K98 ["GetExperienceNameRequest"]
      490 CALL                             R84 1 1
      491 GETIMPORT                        R85 K15 [require]
      493 GETTABLEKS                       R86 R1 K7 ["Src"]
      495 GETTABLEKS                       R86 R86 K94 ["Thunks"]
      497 GETTABLEKS                       R86 R86 K99 ["CheckAvatarAssetPrivacy"]
      499 CALL                             R85 1 1
      500 GETIMPORT                        R86 K15 [require]
      502 GETTABLEKS                       R87 R1 K7 ["Src"]
      504 GETTABLEKS                       R87 R87 K94 ["Thunks"]
      506 GETTABLEKS                       R87 R87 K27 ["AssetConfiguration"]
      508 GETTABLEKS                       R87 R87 K100 ["DownloadFlowRequest"]
      510 CALL                             R86 1 1
      511 GETIMPORT                        R87 K15 [require]
      513 GETTABLEKS                       R88 R1 K7 ["Src"]
      515 GETTABLEKS                       R88 R88 K94 ["Thunks"]
      517 GETTABLEKS                       R88 R88 K27 ["AssetConfiguration"]
      519 GETTABLEKS                       R88 R88 K101 ["EditFlowRequest"]
      521 CALL                             R87 1 1
      522 GETIMPORT                        R88 K15 [require]
      524 GETTABLEKS                       R89 R1 K7 ["Src"]
      526 GETTABLEKS                       R89 R89 K94 ["Thunks"]
      528 GETTABLEKS                       R89 R89 K27 ["AssetConfiguration"]
      530 GETTABLEKS                       R89 R89 K102 ["UploadFlowRequest"]
      532 CALL                             R88 1 1
      533 GETIMPORT                        R89 K15 [require]
      535 GETTABLEKS                       R90 R1 K7 ["Src"]
      537 GETTABLEKS                       R90 R90 K94 ["Thunks"]
      539 GETTABLEKS                       R90 R90 K27 ["AssetConfiguration"]
      541 GETTABLEKS                       R90 R90 K103 ["FetchUploadFeeWithMetadataRequest"]
      543 CALL                             R89 1 1
      544 GETIMPORT                        R90 K15 [require]
      546 GETTABLEKS                       R91 R1 K7 ["Src"]
      548 GETTABLEKS                       R91 R91 K104 ["ContextServices"]
      550 GETTABLEKS                       R91 R91 K105 ["IXPContext"]
      552 CALL                             R90 1 1
      553 GETIMPORT                        R91 K15 [require]
      555 GETTABLEKS                       R92 R1 K7 ["Src"]
      557 GETTABLEKS                       R92 R92 K104 ["ContextServices"]
      559 GETTABLEKS                       R92 R92 K106 ["NetworkContext"]
      561 CALL                             R91 1 1
      562 GETIMPORT                        R92 K15 [require]
      564 GETTABLEKS                       R93 R1 K7 ["Src"]
      566 GETTABLEKS                       R93 R93 K104 ["ContextServices"]
      568 GETTABLEKS                       R93 R93 K107 ["PublishServiceContext"]
      570 CALL                             R92 1 1
      571 GETIMPORT                        R93 K15 [require]
      573 GETTABLEKS                       R94 R1 K7 ["Src"]
      575 GETTABLEKS                       R94 R94 K104 ["ContextServices"]
      577 GETTABLEKS                       R94 R94 K108 ["PluginGuiServiceContext"]
      579 CALL                             R93 1 1
      580 GETIMPORT                        R94 K15 [require]
      582 GETTABLEKS                       R95 R1 K7 ["Src"]
      584 GETTABLEKS                       R95 R95 K104 ["ContextServices"]
      586 GETTABLEKS                       R95 R95 K109 ["ContentProviderContext"]
      588 CALL                             R94 1 1
      589 GETIMPORT                        R95 K15 [require]
      591 GETTABLEKS                       R96 R9 K53 ["Framework"]
      593 CALL                             R95 1 1
      594 GETTABLEKS                       R96 R95 K104 ["ContextServices"]
      596 GETTABLEKS                       R97 R96 K110 ["withContext"]
      598 GETTABLEKS                       R98 R95 K111 ["UI"]
      600 GETTABLEKS                       R98 R98 K112 ["LoadingIndicator"]
      602 GETTABLEKS                       R99 R95 K111 ["UI"]
      604 GETTABLEKS                       R99 R99 K113 ["Container"]
      606 GETTABLEKS                       R100 R11 K114 ["PureComponent"]
      608 LOADK                            R102 K115 ["AssetConfig"]
      609 NAMECALL                         R100 R100 K116 ["extend"]
      611 CALL                             R100 2 1
      612 GETIMPORT                        R101 K15 [require]
      614 GETTABLEKS                       R102 R1 K7 ["Src"]
      616 GETTABLEKS                       R102 R102 K117 ["Flags"]
      618 GETTABLEKS                       R102 R102 K118 ["getFFlagEnableUpdateAvatarItem"]
      620 CALL                             R101 1 1
      621 GETIMPORT                        R102 K15 [require]
      623 GETTABLEKS                       R103 R1 K7 ["Src"]
      625 GETTABLEKS                       R103 R103 K117 ["Flags"]
      627 GETTABLEKS                       R103 R103 K119 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      629 CALL                             R102 1 1
      630 GETIMPORT                        R103 K15 [require]
      632 GETTABLEKS                       R104 R1 K7 ["Src"]
      634 GETTABLEKS                       R104 R104 K117 ["Flags"]
      636 GETTABLEKS                       R104 R104 K120 ["getFFlagToolboxAssetConfigDeferFailureDialog"]
      638 CALL                             R103 1 1
      639 GETIMPORT                        R104 K15 [require]
      641 GETTABLEKS                       R105 R1 K7 ["Src"]
      643 GETTABLEKS                       R105 R105 K117 ["Flags"]
      645 GETTABLEKS                       R105 R105 K121 ["getFFlagToolboxDynamicUploadFee"]
      647 CALL                             R104 1 1
      648 GETIMPORT                        R105 K15 [require]
      650 GETTABLEKS                       R106 R1 K7 ["Src"]
      652 GETTABLEKS                       R106 R106 K117 ["Flags"]
      654 GETTABLEKS                       R106 R106 K122 ["getFFlagToolboxExperienceCreatorTypeMarketplaceAssetConfig"]
      656 CALL                             R105 1 1
      657 GETIMPORT                        R106 K15 [require]
      659 GETTABLEKS                       R107 R1 K7 ["Src"]
      661 GETTABLEKS                       R107 R107 K117 ["Flags"]
      663 GETTABLEKS                       R107 R107 K123 ["getFFlagToolboxPublishOnApproval"]
      665 CALL                             R106 1 1
      666 DUPCLOSURE                       R107 K124 [PROTO_63]
      667 CAPTURE                          VAL R35
      668 CAPTURE                          VAL R37
      669 CAPTURE                          VAL R34
      670 CAPTURE                          VAL R6
      671 CAPTURE                          VAL R31
      672 CAPTURE                          VAL R106
      673 CAPTURE                          VAL R22
      674 CAPTURE                          VAL R14
      675 CAPTURE                          VAL R8
      676 CAPTURE                          VAL R15
      677 CAPTURE                          VAL R41
      678 CAPTURE                          VAL R43
      679 CAPTURE                          VAL R44
      680 CAPTURE                          VAL R50
      681 CAPTURE                          VAL R33
      682 SETTABLEKS                       R107 R100 K125 ["init"]
      684 DUPCLOSURE                       R107 K126 [PROTO_64]
      685 SETTABLEKS                       R107 R100 K127 ["attachXButtonCallback"]
      687 DUPCLOSURE                       R107 K128 [PROTO_65]
      688 SETTABLEKS                       R107 R100 K129 ["detachXButtonCallback"]
      690 DUPCLOSURE                       R107 K130 [PROTO_66]
      691 CAPTURE                          VAL R34
      692 SETTABLEKS                       R107 R100 K131 ["isLoading"]
      694 DUPCLOSURE                       R107 K132 [PROTO_67]
      695 CAPTURE                          VAL R14
      696 DUPCLOSURE                       R108 K133 [PROTO_69]
      697 CAPTURE                          VAL R103
      698 CAPTURE                          VAL R51
      699 CAPTURE                          VAL R34
      700 CAPTURE                          VAL R105
      701 CAPTURE                          VAL R31
      702 CAPTURE                          VAL R37
      703 CAPTURE                          VAL R3
      704 CAPTURE                          VAL R38
      705 CAPTURE                          VAL R41
      706 CAPTURE                          VAL R14
      707 CAPTURE                          VAL R102
      708 CAPTURE                          VAL R107
      709 CAPTURE                          VAL R35
      710 SETTABLEKS                       R108 R100 K134 ["didUpdate"]
      712 DUPCLOSURE                       R108 K135 [PROTO_70]
      713 CAPTURE                          VAL R46
      714 SETTABLEKS                       R108 R100 K136 ["versionsGetPageRootItems"]
      716 DUPCLOSURE                       R108 K137 [PROTO_73]
      717 CAPTURE                          VAL R72
      718 SETTABLEKS                       R108 R100 K138 ["getDefaultBundleDataSharing"]
      720 DUPCLOSURE                       R108 K139 [PROTO_79]
      721 CAPTURE                          VAL R34
      722 CAPTURE                          VAL R37
      723 CAPTURE                          VAL R14
      724 CAPTURE                          VAL R104
      725 SETTABLEKS                       R108 R100 K140 ["getAssetInformation"]
      727 DUPCLOSURE                       R108 K141 [PROTO_81]
      728 CAPTURE                          VAL R37
      729 CAPTURE                          VAL R7
      730 CAPTURE                          VAL R40
      731 SETTABLEKS                       R108 R100 K142 ["didMount"]
      733 DUPCLOSURE                       R108 K143 [PROTO_82]
      734 SETTABLEKS                       R108 R100 K144 ["willUnmount"]
      736 DUPCLOSURE                       R108 K145 [PROTO_85]
      737 CAPTURE                          VAL R34
      738 CAPTURE                          VAL R103
      739 CAPTURE                          VAL R51
      740 CAPTURE                          VAL R37
      741 CAPTURE                          VAL R36
      742 CAPTURE                          VAL R32
      743 CAPTURE                          VAL R105
      744 CAPTURE                          VAL R38
      745 CAPTURE                          VAL R35
      746 CAPTURE                          VAL R106
      747 CAPTURE                          VAL R6
      748 CAPTURE                          VAL R11
      749 CAPTURE                          VAL R30
      750 CAPTURE                          VAL R27
      751 CAPTURE                          VAL R26
      752 CAPTURE                          VAL R18
      753 CAPTURE                          VAL R10
      754 CAPTURE                          VAL R13
      755 CAPTURE                          VAL R99
      756 CAPTURE                          VAL R98
      757 CAPTURE                          VAL R19
      758 CAPTURE                          VAL R104
      759 CAPTURE                          VAL R21
      760 CAPTURE                          VAL R102
      761 CAPTURE                          VAL R23
      762 CAPTURE                          VAL R101
      763 CAPTURE                          VAL R29
      764 CAPTURE                          VAL R28
      765 CAPTURE                          VAL R25
      766 CAPTURE                          VAL R24
      767 CAPTURE                          VAL R20
      768 SETTABLEKS                       R108 R100 K146 ["render"]
      770 MOVE                             R108 R97
      771 DUPTABLE                         R109 K156 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      772 GETTABLEKS                       R110 R96 K147 ["Focus"]
      774 SETTABLEKS                       R110 R109 K147 ["Focus"]
      776 JUMPIFNOT                        R5 ; [+2]
      777 MOVE                             R110 R90
      778 JUMP                             ; [+1]
      779 LOADNIL                          R110
      780 SETTABLEKS                       R110 R109 K148 ["IXP"]
      782 GETTABLEKS                       R110 R96 K149 ["Localization"]
      784 SETTABLEKS                       R110 R109 K149 ["Localization"]
      786 GETTABLEKS                       R110 R96 K150 ["Stylizer"]
      788 SETTABLEKS                       R110 R109 K150 ["Stylizer"]
      790 GETTABLEKS                       R110 R96 K151 ["Plugin"]
      792 SETTABLEKS                       R110 R109 K151 ["Plugin"]
      794 SETTABLEKS                       R91 R109 K152 ["Network"]
      796 SETTABLEKS                       R92 R109 K153 ["PublishService"]
      798 SETTABLEKS                       R93 R109 K154 ["PluginGuiService"]
      800 SETTABLEKS                       R94 R109 K155 ["ContentProvider"]
      802 CALL                             R108 1 1
      803 MOVE                             R109 R100
      804 CALL                             R108 1 1
      805 MOVE                             R100 R108
      806 DUPCLOSURE                       R108 K157 [PROTO_86]
      807 CAPTURE                          VAL R50
      808 CAPTURE                          VAL R102
      809 CAPTURE                          VAL R4
      810 CAPTURE                          VAL R5
      811 CAPTURE                          VAL R3
      812 CAPTURE                          VAL R106
      813 CAPTURE                          VAL R104
      814 CAPTURE                          VAL R40
      815 DUPCLOSURE                       R109 K158 [PROTO_123]
      816 CAPTURE                          VAL R53
      817 CAPTURE                          VAL R61
      818 CAPTURE                          VAL R69
      819 CAPTURE                          VAL R47
      820 CAPTURE                          VAL R79
      821 CAPTURE                          VAL R14
      822 CAPTURE                          VAL R54
      823 CAPTURE                          VAL R55
      824 CAPTURE                          VAL R74
      825 CAPTURE                          VAL R73
      826 CAPTURE                          VAL R34
      827 CAPTURE                          VAL R56
      828 CAPTURE                          VAL R62
      829 CAPTURE                          VAL R106
      830 CAPTURE                          VAL R63
      831 CAPTURE                          VAL R76
      832 CAPTURE                          VAL R64
      833 CAPTURE                          VAL R77
      834 CAPTURE                          VAL R104
      835 CAPTURE                          VAL R89
      836 CAPTURE                          VAL R57
      837 CAPTURE                          VAL R75
      838 CAPTURE                          VAL R58
      839 CAPTURE                          VAL R59
      840 CAPTURE                          VAL R60
      841 CAPTURE                          VAL R81
      842 CAPTURE                          VAL R82
      843 CAPTURE                          VAL R83
      844 CAPTURE                          VAL R84
      845 CAPTURE                          VAL R65
      846 CAPTURE                          VAL R66
      847 CAPTURE                          VAL R78
      848 CAPTURE                          VAL R67
      849 CAPTURE                          VAL R68
      850 CAPTURE                          VAL R70
      851 CAPTURE                          VAL R7
      852 CAPTURE                          VAL R71
      853 CAPTURE                          VAL R80
      854 CAPTURE                          VAL R85
      855 CAPTURE                          VAL R86
      856 CAPTURE                          VAL R87
      857 CAPTURE                          VAL R88
      858 GETTABLEKS                       R110 R12 K159 ["connect"]
      860 MOVE                             R111 R108
      861 MOVE                             R112 R109
      862 CALL                             R110 2 1
      863 MOVE                             R111 R100
      864 CALL                             R110 1 -1
      865 RETURN                           R110 -1
