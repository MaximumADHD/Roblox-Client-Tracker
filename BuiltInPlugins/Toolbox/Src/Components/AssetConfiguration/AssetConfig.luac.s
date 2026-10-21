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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R2 K0 ["setState"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
        0 DUPTABLE                         R0 K1 [{"status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["ASSET_STATUS"]
        4 GETTABLEKS                       R1 R1 K3 ["OffSale"]
        6 SETTABLEKS                       R1 R0 K0 ["status"]
        8 RETURN                           R0 1

PROTO_74:
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 RETURN                           R0 1

PROTO_75:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigName"]
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 RETURN                           R0 1

PROTO_76:
        0 DUPTABLE                         R0 K1 [{"name"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K0 ["name"]
        7 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K1 [{"description"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["AssetConfigDesc"]
        4 SETTABLEKS                       R1 R0 K0 ["description"]
        6 RETURN                           R0 1

PROTO_78:
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
      146 DUPCLOSURE                       R8 K24 [PROTO_73]
      147 CAPTURE                          UPVAL U0
      148 NAMECALL                         R6 R0 K25 ["setState"]
      150 CALL                             R6 2 0
      151 JUMP                             ; [+4]
      152 DUPCLOSURE                       R8 K26 [PROTO_74]
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

PROTO_79:
        0 DUPTABLE                         R0 K1 [{"isAssetTypeSelectionAllowed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isAssetTypeSelectionAllowed"]
        4 RETURN                           R0 1

PROTO_80:
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

PROTO_81:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryPublish"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_83:
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

PROTO_84:
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
       65 GETTABLEKS                       R21 R2 K25 ["iconFile"]
       67 GETTABLEKS                       R22 R2 K26 ["assetMediaUpdateData"]
       69 GETTABLEKS                       R23 R1 K27 ["assetTypeEnum"]
       71 GETTABLEKS                       R24 R1 K10 ["screenFlowType"]
       73 GETTABLEKS                       R25 R1 K28 ["changeTable"]
       75 JUMPIF                           R25 ; [+2]
       76 NEWTABLE                         R25 0 0
       78 GETTABLEKS                       R26 R1 K29 ["allowedAssetTypesForRelease"]
       80 GETTABLEKS                       R27 R1 K30 ["allowedAssetTypesForFree"]
       82 GETTABLEKS                       R28 R1 K31 ["allowedBundleTypeSettings"]
       84 MOVE                             R29 R16
       85 JUMPIF                           R29 ; [+5]
       86 GETUPVAL                         R29 0
       87 GETTABLEKS                       R29 R29 K32 ["ASSET_STATUS"]
       89 GETTABLEKS                       R29 R29 K33 ["Unknown"]
       91 GETTABLEKS                       R30 R2 K34 ["price"]
       93 GETUPVAL                         R32 2
       94 GETTABLEKS                       R32 R32 K35 ["isUGCBundleType"]
       96 MOVE                             R33 R23
       97 CALL                             R32 1 1
       98 JUMPIFNOT                        R32 ; [+3]
       99 GETTABLEKS                       R31 R1 K36 ["groupBundlesUploadEnabledForUser"]
      101 JUMP                             ; [+11]
      102 GETUPVAL                         R31 3
      103 GETTABLEKS                       R31 R31 K37 ["queryParam"]
      105 MOVE                             R32 R24
      106 MOVE                             R33 R23
      107 GETUPVAL                         R34 3
      108 GETTABLEKS                       R34 R34 K38 ["keys"]
      110 GETTABLEKS                       R34 R34 K39 ["SHOW_OWNERSHIP"]
      112 CALL                             R31 3 1
      113 GETUPVAL                         R32 3
      114 GETTABLEKS                       R32 R32 K37 ["queryParam"]
      116 MOVE                             R33 R24
      117 MOVE                             R34 R23
      118 GETUPVAL                         R35 3
      119 GETTABLEKS                       R35 R35 K38 ["keys"]
      121 GETTABLEKS                       R35 R35 K40 ["SHOW_COPY"]
      123 CALL                             R32 3 1
      124 GETTABLEKS                       R33 R1 K41 ["isPackageAsset"]
      126 JUMPIFNOT                        R33 ; [+1]
      127 LOADB                            R32 0
      128 GETTABLEKS                       R33 R0 K1 ["state"]
      130 GETTABLEKS                       R33 R33 K42 ["isAssetTypeSelectionAllowed"]
      132 JUMPIFNOT                        R33 ; [+13]
      133 GETTABLEKS                       R34 R0 K0 ["props"]
      135 GETTABLEKS                       R34 R34 K10 ["screenFlowType"]
      137 GETUPVAL                         R35 0
      138 GETTABLEKS                       R35 R35 K11 ["FLOW_TYPE"]
      140 GETTABLEKS                       R35 R35 K12 ["UPLOAD_FLOW"]
      142 JUMPIFEQ                         R34 R35 ; [+2]
      144 LOADB                            R33 0 +1
      145 LOADB                            R33 1
      146 GETUPVAL                         R34 3
      147 GETTABLEKS                       R34 R34 K37 ["queryParam"]
      149 MOVE                             R35 R24
      150 MOVE                             R36 R23
      151 GETUPVAL                         R37 3
      152 GETTABLEKS                       R37 R37 K38 ["keys"]
      154 GETTABLEKS                       R37 R37 K43 ["SHOW_COMMENT"]
      156 CALL                             R34 3 1
      157 GETUPVAL                         R35 3
      158 GETTABLEKS                       R35 R35 K37 ["queryParam"]
      160 MOVE                             R36 R24
      161 MOVE                             R37 R23
      162 GETUPVAL                         R38 3
      163 GETTABLEKS                       R38 R38 K38 ["keys"]
      165 GETTABLEKS                       R38 R38 K44 ["SHOW_ASSET_TYPE"]
      167 CALL                             R35 3 1
      168 GETUPVAL                         R36 2
      169 GETTABLEKS                       R36 R36 K45 ["getPreviewType"]
      171 MOVE                             R37 R23
      172 GETTABLEKS                       R38 R1 K46 ["instances"]
      174 CALL                             R36 2 1
      175 GETTABLEKS                       R38 R1 K47 ["animationPackType"]
      177 JUMPIFEQKNIL                     R38 ; [+8]
      179 GETUPVAL                         R37 4
      180 GETTABLEKS                       R37 R37 K48 ["getAvatarAnimationPartThumbnailUri"]
      182 GETTABLEKS                       R38 R1 K47 ["animationPackType"]
      184 CALL                             R37 1 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R37
      187 GETUPVAL                         R38 1
      188 MOVE                             R40 R24
      189 MOVE                             R41 R23
      190 GETTABLEKS                       R42 R0 K0 ["props"]
      192 GETTABLEKS                       R42 R42 K41 ["isPackageAsset"]
      194 MOVE                             R43 R10
      195 NAMECALL                         R38 R38 K49 ["getAssetconfigContent"]
      197 CALL                             R38 5 1
      198 NAMECALL                         R39 R0 K50 ["isLoading"]
      200 CALL                             R39 1 1
      201 GETUPVAL                         R40 5
      202 GETTABLEKS                       R40 R40 K51 ["checkCanSave"]
      204 MOVE                             R41 R25
      205 MOVE                             R42 R8
      206 MOVE                             R43 R9
      207 MOVE                             R44 R6
      208 MOVE                             R45 R24
      209 MOVE                             R46 R23
      210 MOVE                             R47 R22
      211 GETTABLEKS                       R48 R0 K52 ["isValidCatalogAsset"]
      213 CALL                             R48 0 1
      214 GETTABLEKS                       R49 R0 K53 ["validVersionDescriptions"]
      216 CALL                             R49 0 -1
      217 CALL                             R40 -1 1
      218 JUMPIFNOT                        R40 ; [+1]
      219 NOT                              R40 R39
      220 MOVE                             R41 R40
      221 JUMPIFNOT                        R41 ; [+3]
      222 GETTABLEKS                       R42 R1 K54 ["isAvatarItemDialogFlowEnabled"]
      224 NOT                              R41 R42
      225 MOVE                             R40 R41
      226 GETUPVAL                         R41 2
      227 GETTABLEKS                       R41 R41 K55 ["isMakeupAsset"]
      229 MOVE                             R42 R23
      230 CALL                             R41 1 1
      231 JUMPIFNOT                        R41 ; [+5]
      232 GETTABLEKS                       R41 R2 K56 ["selectedColor"]
      234 JUMPIFNOTEQKNIL                  R41 ; [+2]
      236 LOADB                            R40 0
      237 GETIMPORT                        R41 K60 [Enum.AssetType.Animation]
      239 JUMPIFNOTEQ                      R23 R41 ; [+6]
      241 GETTABLEKS                       R41 R1 K61 ["animationSectionValid"]
      243 JUMPIFNOTEQKB                    R41 FALSE ; [+2]
      245 LOADB                            R40 0
      246 GETUPVAL                         R42 6
      247 GETTABLEKS                       R42 R42 K63 ["SCROLLBAR_PADDING"]
      249 SUBRK                            R41 K62 [-240] R42
      250 GETTABLEKS                       R43 R1 K27 ["assetTypeEnum"]
      252 GETIMPORT                        R44 K65 [Enum.AssetType.Audio]
      254 JUMPIFEQ                         R43 R44 ; [+2]
      256 LOADB                            R42 0 +1
      257 LOADB                            R42 1
      258 GETTABLEKS                       R44 R1 K27 ["assetTypeEnum"]
      260 GETIMPORT                        R45 K67 [Enum.AssetType.Video]
      262 JUMPIFEQ                         R44 R45 ; [+2]
      264 LOADB                            R43 0 +1
      265 LOADB                            R43 1
      266 GETTABLEKS                       R45 R1 K27 ["assetTypeEnum"]
      268 GETIMPORT                        R46 K69 [Enum.AssetType.Model]
      270 JUMPIFEQ                         R45 R46 ; [+2]
      272 LOADB                            R44 0 +1
      273 LOADB                            R44 1
      274 GETTABLEKS                       R46 R1 K27 ["assetTypeEnum"]
      276 GETIMPORT                        R47 K71 [Enum.AssetType.Plugin]
      278 JUMPIFEQ                         R46 R47 ; [+2]
      280 LOADB                            R45 0 +1
      281 LOADB                            R45 1
      282 LOADNIL                          R46
      283 LOADB                            R47 0
      284 GETTABLEKS                       R48 R1 K72 ["Localization"]
      286 LOADK                            R51 K73 ["General"]
      287 LOADK                            R52 K74 ["Proceed"]
      288 NAMECALL                         R49 R48 K75 ["getText"]
      290 CALL                             R49 3 1
      291 LOADK                            R52 K73 ["General"]
      292 LOADK                            R53 K76 ["GoBack"]
      293 NAMECALL                         R50 R48 K75 ["getText"]
      295 CALL                             R50 3 1
      296 LOADK                            R53 K77 ["AssetConfigSharing"]
      297 LOADK                            R54 K78 ["PublicConfirmationHeading"]
      298 NAMECALL                         R51 R48 K75 ["getText"]
      300 CALL                             R51 3 1
      301 LOADK                            R54 K77 ["AssetConfigSharing"]
      302 LOADK                            R55 K79 ["PublicConfirmationMessage"]
      303 NAMECALL                         R52 R48 K75 ["getText"]
      305 CALL                             R52 3 1
      306 LOADK                            R55 K77 ["AssetConfigSharing"]
      307 LOADK                            R56 K80 ["PublicConfirmationTitle"]
      308 NAMECALL                         R53 R48 K75 ["getText"]
      310 CALL                             R53 3 1
      311 GETTABLEKS                       R54 R2 K81 ["isConfirmationDialogEnabled"]
      313 GETTABLEKS                       R55 R2 K82 ["confirmationDialogKey"]
      315 LOADK                            R58 K83 ["AssetConfig"]
      316 LOADK                            R59 K84 ["PublishAssetDialogPublish"]
      317 NAMECALL                         R56 R48 K75 ["getText"]
      319 CALL                             R56 3 1
      320 LOADK                            R59 K73 ["General"]
      321 LOADK                            R60 K85 ["Cancel"]
      322 NAMECALL                         R57 R48 K75 ["getText"]
      324 CALL                             R57 3 1
      325 LOADK                            R60 K83 ["AssetConfig"]
      326 LOADK                            R61 K86 ["PublishAssetDialogDescription"]
      327 NAMECALL                         R58 R48 K75 ["getText"]
      329 CALL                             R58 3 1
      330 LOADK                            R61 K83 ["AssetConfig"]
      331 LOADK                            R62 K87 ["PublishAssetDialogHeading"]
      332 NAMECALL                         R59 R48 K75 ["getText"]
      334 CALL                             R59 3 1
      335 LOADK                            R62 K73 ["General"]
      336 LOADK                            R63 K88 ["RobloxStudio"]
      337 NAMECALL                         R60 R48 K75 ["getText"]
      339 CALL                             R60 3 1
      340 GETUPVAL                         R62 7
      341 CALL                             R62 0 1
      342 JUMPIFNOT                        R62 ; [+8]
      343 GETUPVAL                         R61 2
      344 GETTABLEKS                       R61 R61 K89 ["getPublishOnApprovalFee"]
      346 GETTABLEKS                       R62 R0 K90 ["getPublishInfo"]
      348 CALL                             R62 0 -1
      349 CALL                             R61 -1 1
      350 JUMP                             ; [+1]
      351 LOADN                            R61 0
      352 GETTABLEKS                       R62 R2 K91 ["isPublishAssetsDialogEnabled"]
      354 JUMPIF                           R42 ; [+3]
      355 GETUPVAL                         R63 8
      356 JUMPIFNOT                        R63 ; [+3]
      357 JUMPIFNOT                        R43 ; [+2]
      358 NOT                              R46 R5
      359 JUMP                             ; [+2]
      360 JUMPIFNOT                        R44 ; [+1]
      361 LOADB                            R46 1
      362 JUMPIF                           R42 ; [+3]
      363 GETUPVAL                         R63 8
      364 JUMPIFNOT                        R63 ; [+2]
      365 JUMPIFNOT                        R43 ; [+1]
      366 LOADB                            R47 1
      367 JUMPIF                           R42 ; [+3]
      368 GETUPVAL                         R63 8
      369 JUMPIFNOT                        R63 ; [+2]
      370 JUMPIFNOT                        R43 ; [+1]
      371 MOVE                             R11 R17
      372 GETUPVAL                         R63 2
      373 GETTABLEKS                       R63 R63 K55 ["isMakeupAsset"]
      375 MOVE                             R64 R23
      376 CALL                             R63 1 1
      377 MOVE                             R64 R63
      378 JUMPIFNOT                        R64 ; [+6]
      379 GETTABLEKS                       R65 R2 K56 ["selectedColor"]
      381 JUMPIFEQKNIL                     R65 ; [+2]
      383 LOADB                            R64 0 +1
      384 LOADB                            R64 1
      385 GETUPVAL                         R65 9
      386 GETTABLEKS                       R65 R65 K92 ["createElement"]
      388 LOADK                            R66 K93 ["Frame"]
      389 DUPTABLE                         R67 K98 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      390 SETTABLEKS                       R4 R67 K3 ["Size"]
      392 GETTABLEKS                       R68 R3 K99 ["assetConfig"]
      394 GETTABLEKS                       R68 R68 K100 ["backgroundColor"]
      396 SETTABLEKS                       R68 R67 K96 ["BackgroundColor3"]
      398 DUPTABLE                         R68 K107 [{"UIListLayout", "AssetConfigMessageBox", "AvatarItemMessageBox", "AssetConfigMakeAssetPublicMessageBox", "MainPage", "Footer"}]
      399 GETUPVAL                         R69 9
      400 GETTABLEKS                       R69 R69 K92 ["createElement"]
      402 LOADK                            R70 K101 ["UIListLayout"]
      403 DUPTABLE                         R71 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      404 GETIMPORT                        R72 K115 [Enum.FillDirection.Vertical]
      406 SETTABLEKS                       R72 R71 K108 ["FillDirection"]
      408 GETIMPORT                        R72 K117 [Enum.HorizontalAlignment.Left]
      410 SETTABLEKS                       R72 R71 K109 ["HorizontalAlignment"]
      412 GETIMPORT                        R72 K119 [Enum.VerticalAlignment.Bottom]
      414 SETTABLEKS                       R72 R71 K110 ["VerticalAlignment"]
      416 GETIMPORT                        R72 K121 [Enum.SortOrder.LayoutOrder]
      418 SETTABLEKS                       R72 R71 K111 ["SortOrder"]
      420 GETIMPORT                        R72 K124 [UDim.new]
      422 LOADN                            R73 0
      423 LOADN                            R74 0
      424 CALL                             R72 2 1
      425 SETTABLEKS                       R72 R71 K112 ["Padding"]
      427 CALL                             R69 2 1
      428 SETTABLEKS                       R69 R68 K101 ["UIListLayout"]
      430 MOVE                             R69 R20
      431 JUMPIFNOT                        R69 ; [+9]
      432 GETUPVAL                         R69 9
      433 GETTABLEKS                       R69 R69 K92 ["createElement"]
      435 GETUPVAL                         R70 10
      436 GETTABLEKS                       R71 R0 K125 ["getMessageBoxProps"]
      438 MOVE                             R72 R19
      439 CALL                             R71 1 -1
      440 CALL                             R69 -1 1
      441 SETTABLEKS                       R69 R68 K102 ["AssetConfigMessageBox"]
      443 GETTABLEKS                       R69 R1 K54 ["isAvatarItemDialogFlowEnabled"]
      445 JUMPIFNOT                        R69 ; [+28]
      446 GETUPVAL                         R69 9
      447 GETTABLEKS                       R69 R69 K92 ["createElement"]
      449 GETUPVAL                         R70 11
      450 DUPTABLE                         R71 K130 [{"OnUploadConfirmed", "UploadFee", "ItemName", "PublishingFee"}]
      451 NEWCLOSURE                       R72 P0
      452 CAPTURE                          VAL R0
      453 SETTABLEKS                       R72 R71 K126 ["OnUploadConfirmed"]
      455 GETTABLEKS                       R73 R1 K131 ["uploadFee"]
      457 ORK                              R72 R73 K7 [""]
      458 SETTABLEKS                       R72 R71 K127 ["UploadFee"]
      460 GETTABLEKS                       R73 R2 K8 ["name"]
      462 ORK                              R72 R73 K7 [""]
      463 SETTABLEKS                       R72 R71 K128 ["ItemName"]
      465 GETUPVAL                         R73 7
      466 CALL                             R73 0 1
      467 JUMPIFNOT                        R73 ; [+2]
      468 MOVE                             R72 R61
      469 JUMP                             ; [+1]
      470 LOADNIL                          R72
      471 SETTABLEKS                       R72 R71 K129 ["PublishingFee"]
      473 CALL                             R69 2 1
      474 SETTABLEKS                       R69 R68 K103 ["AvatarItemMessageBox"]
      476 JUMPIFNOT                        R62 ; [+27]
      477 GETUPVAL                         R69 9
      478 GETTABLEKS                       R69 R69 K92 ["createElement"]
      480 GETUPVAL                         R70 12
      481 DUPTABLE                         R71 K142 [{["AcceptText"], ["CancelText"], ["ConfirmationKey"] = , ["Description"], ["Enabled"], ["Heading"], ["OnAccepted"], ["OnCanceled"], ["Title"]}]
      482 SETTABLEKS                       R56 R71 K132 ["AcceptText"]
      484 SETTABLEKS                       R57 R71 K133 ["CancelText"]
      486 SETTABLEKS                       R58 R71 K136 ["Description"]
      488 SETTABLEKS                       R62 R71 K137 ["Enabled"]
      490 SETTABLEKS                       R59 R71 K138 ["Heading"]
      492 GETTABLEKS                       R72 R0 K143 ["onAssetPublishDialogAccepted"]
      494 SETTABLEKS                       R72 R71 K139 ["OnAccepted"]
      496 GETTABLEKS                       R72 R0 K144 ["onAssetPublishDialogCanceled"]
      498 SETTABLEKS                       R72 R71 K140 ["OnCanceled"]
      500 SETTABLEKS                       R60 R71 K141 ["Title"]
      502 CALL                             R69 2 1
      503 JUMP                             ; [+1]
      504 LOADNIL                          R69
      505 SETTABLEKS                       R69 R68 K104 ["AssetConfigMakeAssetPublicMessageBox"]
      507 GETUPVAL                         R69 9
      508 GETTABLEKS                       R69 R69 K92 ["createElement"]
      510 LOADK                            R70 K93 ["Frame"]
      511 DUPTABLE                         R71 K146 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      512 GETIMPORT                        R72 K148 [UDim2.new]
      514 LOADN                            R73 1
      515 LOADN                            R74 0
      516 LOADN                            R75 1
      517 LOADN                            R76 -62
      518 CALL                             R72 4 1
      519 SETTABLEKS                       R72 R71 K3 ["Size"]
      521 DUPTABLE                         R72 K158 [{"UIListLayout", "SharingConfirmationDialog", "Preview", "VerticalLine", "LoadingIndicatorWrapper", "PublishAsset", "Versions", "Sales", "OverrideAsset", "PackagePermissions"}]
      522 GETUPVAL                         R73 9
      523 GETTABLEKS                       R73 R73 K92 ["createElement"]
      525 LOADK                            R74 K101 ["UIListLayout"]
      526 DUPTABLE                         R75 K113 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      527 GETIMPORT                        R76 K160 [Enum.FillDirection.Horizontal]
      529 SETTABLEKS                       R76 R75 K108 ["FillDirection"]
      531 GETIMPORT                        R76 K117 [Enum.HorizontalAlignment.Left]
      533 SETTABLEKS                       R76 R75 K109 ["HorizontalAlignment"]
      535 GETIMPORT                        R76 K162 [Enum.VerticalAlignment.Top]
      537 SETTABLEKS                       R76 R75 K110 ["VerticalAlignment"]
      539 GETIMPORT                        R76 K121 [Enum.SortOrder.LayoutOrder]
      541 SETTABLEKS                       R76 R75 K111 ["SortOrder"]
      543 GETIMPORT                        R76 K124 [UDim.new]
      545 LOADN                            R77 0
      546 LOADN                            R78 0
      547 CALL                             R76 2 1
      548 SETTABLEKS                       R76 R75 K112 ["Padding"]
      550 CALL                             R73 2 1
      551 SETTABLEKS                       R73 R72 K101 ["UIListLayout"]
      553 GETUPVAL                         R73 9
      554 GETTABLEKS                       R73 R73 K92 ["createElement"]
      556 GETUPVAL                         R74 12
      557 DUPTABLE                         R75 K163 [{"AcceptText", "CancelText", "ConfirmationKey", "Description", "Enabled", "Heading", "OnAccepted", "OnCanceled", "Title"}]
      558 SETTABLEKS                       R49 R75 K132 ["AcceptText"]
      560 SETTABLEKS                       R50 R75 K133 ["CancelText"]
      562 SETTABLEKS                       R55 R75 K134 ["ConfirmationKey"]
      564 SETTABLEKS                       R52 R75 K136 ["Description"]
      566 SETTABLEKS                       R54 R75 K137 ["Enabled"]
      568 SETTABLEKS                       R51 R75 K138 ["Heading"]
      570 GETTABLEKS                       R76 R0 K164 ["onDialogAccepted"]
      572 SETTABLEKS                       R76 R75 K139 ["OnAccepted"]
      574 GETTABLEKS                       R76 R0 K165 ["onDialogCanceled"]
      576 SETTABLEKS                       R76 R75 K140 ["OnCanceled"]
      578 SETTABLEKS                       R53 R75 K141 ["Title"]
      580 CALL                             R73 2 1
      581 SETTABLEKS                       R73 R72 K149 ["SharingConfirmationDialog"]
      583 GETUPVAL                         R73 9
      584 GETTABLEKS                       R73 R73 K92 ["createElement"]
      586 GETUPVAL                         R74 13
      587 DUPTABLE                         R75 K180 [{["TotalWidth"] = 240, ["TabItems"], ["CurrentTab"], ["PreviewType"], ["ScreenFlowType"], ["AssetStatus"], ["AssetId"], ["IconFile"], ["AssetTypeEnum"], ["AllowedBundleTypeSettings"], ["OnTabSelect"], ["ChooseThumbnail"], ["LayoutOrder"] = 1, ["assetTypeEnum"], ["selectedColor"], ["animationTypeThumbnailUri"]}]
      588 SETTABLEKS                       R38 R75 K168 ["TabItems"]
      590 SETTABLEKS                       R6 R75 K169 ["CurrentTab"]
      592 SETTABLEKS                       R36 R75 K170 ["PreviewType"]
      594 SETTABLEKS                       R24 R75 K171 ["ScreenFlowType"]
      596 SETTABLEKS                       R16 R75 K172 ["AssetStatus"]
      598 SETTABLEKS                       R7 R75 K173 ["AssetId"]
      600 SETTABLEKS                       R21 R75 K174 ["IconFile"]
      602 SETTABLEKS                       R23 R75 K175 ["AssetTypeEnum"]
      604 SETTABLEKS                       R28 R75 K176 ["AllowedBundleTypeSettings"]
      606 GETTABLEKS                       R76 R0 K181 ["onTabSelect"]
      608 SETTABLEKS                       R76 R75 K177 ["OnTabSelect"]
      610 GETTABLEKS                       R76 R0 K182 ["chooseThumbnail"]
      612 SETTABLEKS                       R76 R75 K178 ["ChooseThumbnail"]
      614 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
      616 JUMPIFNOT                        R63 ; [+3]
      617 GETTABLEKS                       R76 R2 K56 ["selectedColor"]
      619 JUMP                             ; [+1]
      620 LOADNIL                          R76
      621 SETTABLEKS                       R76 R75 K56 ["selectedColor"]
      623 SETTABLEKS                       R37 R75 K179 ["animationTypeThumbnailUri"]
      625 CALL                             R73 2 1
      626 SETTABLEKS                       R73 R72 K150 ["Preview"]
      628 GETUPVAL                         R73 14
      629 GETTABLEKS                       R73 R73 K92 ["createElement"]
      631 GETUPVAL                         R74 15
      632 GETTABLEKS                       R74 R74 K183 ["Divider"]
      634 DUPTABLE                         R75 K186 [{["orientation"], ["LayoutOrder"] = 2}]
      635 GETUPVAL                         R76 15
      636 GETTABLEKS                       R76 R76 K187 ["Enums"]
      638 GETTABLEKS                       R76 R76 K188 ["DividerOrientation"]
      640 GETTABLEKS                       R76 R76 K114 ["Vertical"]
      642 SETTABLEKS                       R76 R75 K184 ["orientation"]
      644 CALL                             R73 2 1
      645 SETTABLEKS                       R73 R72 K151 ["VerticalLine"]
      647 MOVE                             R73 R39
      648 JUMPIFNOT                        R73 ; [+47]
      649 GETUPVAL                         R73 9
      650 GETTABLEKS                       R73 R73 K92 ["createElement"]
      652 GETUPVAL                         R74 16
      653 DUPTABLE                         R75 K190 [{["LayoutOrder"] = 3, ["Size"]}]
      654 GETIMPORT                        R76 K148 [UDim2.new]
      656 LOADN                            R77 1
      657 LOADN                            R78 -240
      658 LOADN                            R79 1
      659 LOADN                            R80 0
      660 CALL                             R76 4 1
      661 SETTABLEKS                       R76 R75 K3 ["Size"]
      663 DUPTABLE                         R76 K192 [{"LoadingIndicator"}]
      664 GETUPVAL                         R77 9
      665 GETTABLEKS                       R77 R77 K92 ["createElement"]
      667 GETUPVAL                         R78 17
      668 DUPTABLE                         R79 K195 [{"Size", "AnchorPoint", "Position"}]
      669 GETIMPORT                        R80 K148 [UDim2.new]
      671 LOADN                            R81 0
      672 LOADN                            R82 100
      673 LOADN                            R83 0
      674 LOADN                            R84 100
      675 CALL                             R80 4 1
      676 SETTABLEKS                       R80 R79 K3 ["Size"]
      678 GETIMPORT                        R80 K197 [Vector2.new]
      680 LOADK                            R81 K198 [0.5]
      681 LOADK                            R82 K198 [0.5]
      682 CALL                             R80 2 1
      683 SETTABLEKS                       R80 R79 K193 ["AnchorPoint"]
      685 GETIMPORT                        R80 K200 [UDim2.fromScale]
      687 LOADK                            R81 K198 [0.5]
      688 LOADK                            R82 K198 [0.5]
      689 CALL                             R80 2 1
      690 SETTABLEKS                       R80 R79 K194 ["Position"]
      692 CALL                             R77 2 1
      693 SETTABLEKS                       R77 R76 K191 ["LoadingIndicator"]
      695 CALL                             R73 3 1
      696 SETTABLEKS                       R73 R72 K152 ["LoadingIndicatorWrapper"]
      698 NOT                              R73 R39
      699 JUMPIFNOT                        R73 ; [+249]
      700 GETUPVAL                         R73 1
      701 MOVE                             R75 R6
      702 NAMECALL                         R73 R73 K201 ["isGeneral"]
      704 CALL                             R73 2 1
      705 JUMPIFNOT                        R73 ; [+243]
      706 GETUPVAL                         R73 9
      707 GETTABLEKS                       R73 R73 K92 ["createElement"]
      709 GETUPVAL                         R74 18
      710 NEWTABLE                         R75 64 0
      712 GETIMPORT                        R76 K148 [UDim2.new]
      714 LOADN                            R77 1
      715 LOADN                            R78 -240
      716 LOADN                            R79 1
      717 LOADN                            R80 0
      718 CALL                             R76 4 1
      719 SETTABLEKS                       R76 R75 K3 ["Size"]
      721 SETTABLEKS                       R46 R75 K202 ["allowSelectPrivate"]
      723 SETTABLEKS                       R7 R75 K6 ["assetId"]
      725 SETTABLEKS                       R8 R75 K8 ["name"]
      727 SETTABLEKS                       R9 R75 K9 ["description"]
      729 SETTABLEKS                       R10 R75 K13 ["owner"]
      731 SETTABLEKS                       R11 R75 K14 ["allowCopy"]
      733 SETTABLEKS                       R12 R75 K15 ["copyOn"]
      735 SETTABLEKS                       R13 R75 K16 ["allowComment"]
      737 SETTABLEKS                       R14 R75 K17 ["commentOn"]
      739 SETTABLEKS                       R15 R75 K18 ["deleteLocal"]
      741 SETTABLEKS                       R17 R75 K20 ["isAssetPublic"]
      743 SETTABLEKS                       R18 R75 K21 ["publishingRestriction"]
      745 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
      747 GETTABLEKS                       R76 R0 K203 ["onNameChange"]
      749 SETTABLEKS                       R76 R75 K203 ["onNameChange"]
      751 GETTABLEKS                       R76 R0 K204 ["onDescChange"]
      753 SETTABLEKS                       R76 R75 K204 ["onDescChange"]
      755 GETTABLEKS                       R76 R1 K205 ["groupId"]
      757 SETTABLEKS                       R76 R75 K206 ["preselectedGroupId"]
      759 GETTABLEKS                       R76 R0 K207 ["onAccessChange"]
      761 SETTABLEKS                       R76 R75 K208 ["onOwnerSelected"]
      763 GETTABLEKS                       R76 R0 K209 ["onSharingChanged"]
      765 SETTABLEKS                       R76 R75 K209 ["onSharingChanged"]
      767 GETTABLEKS                       R76 R0 K210 ["onAdditionalImagesChanged"]
      769 SETTABLEKS                       R76 R75 K210 ["onAdditionalImagesChanged"]
      771 GETTABLEKS                       R76 R0 K211 ["toggleCopy"]
      773 SETTABLEKS                       R76 R75 K211 ["toggleCopy"]
      775 GETTABLEKS                       R76 R0 K212 ["toggleComment"]
      777 SETTABLEKS                       R76 R75 K212 ["toggleComment"]
      779 GETTABLEKS                       R76 R0 K213 ["toggleDeleteLocal"]
      781 SETTABLEKS                       R76 R75 K213 ["toggleDeleteLocal"]
      783 GETTABLEKS                       R76 R0 K214 ["onAnimationSelectionChanged"]
      785 SETTABLEKS                       R76 R75 K214 ["onAnimationSelectionChanged"]
      787 GETTABLEKS                       R76 R0 K215 ["onanimationSectionValidityChanged"]
      789 SETTABLEKS                       R76 R75 K215 ["onanimationSectionValidityChanged"]
      791 GETTABLEKS                       R76 R2 K216 ["dataSharingEnabled"]
      793 SETTABLEKS                       R76 R75 K216 ["dataSharingEnabled"]
      795 GETTABLEKS                       R76 R2 K217 ["dataSharingToggled"]
      797 SETTABLEKS                       R76 R75 K217 ["dataSharingToggled"]
      799 GETTABLEKS                       R76 R0 K218 ["onDataConsentToggleClick"]
      801 SETTABLEKS                       R76 R75 K218 ["onDataConsentToggleClick"]
      803 GETTABLEKS                       R76 R0 K219 ["canOfferPublishOnApproval"]
      805 CALL                             R76 0 1
      806 SETTABLEKS                       R76 R75 K220 ["publishOnApprovalEnabled"]
      808 GETTABLEKS                       R76 R1 K221 ["hasPublishingPreferences"]
      810 SETTABLEKS                       R76 R75 K221 ["hasPublishingPreferences"]
      812 GETTABLEKS                       R76 R1 K222 ["hasPublishingFeePreview"]
      814 SETTABLEKS                       R76 R75 K222 ["hasPublishingFeePreview"]
      816 GETTABLEKS                       R76 R1 K223 ["publishingFeePreview"]
      818 SETTABLEKS                       R76 R75 K223 ["publishingFeePreview"]
      820 GETTABLEKS                       R76 R2 K224 ["publishOnApprovalToggled"]
      822 SETTABLEKS                       R76 R75 K224 ["publishOnApprovalToggled"]
      824 GETTABLEKS                       R76 R0 K225 ["onPublishToMarketplaceToggleClick"]
      826 SETTABLEKS                       R76 R75 K225 ["onPublishToMarketplaceToggleClick"]
      828 GETUPVAL                         R77 19
      829 CALL                             R77 0 1
      830 JUMPIFNOT                        R77 ; [+3]
      831 GETTABLEKS                       R76 R1 K226 ["specialAttributes"]
      833 JUMP                             ; [+1]
      834 LOADNIL                          R76
      835 SETTABLEKS                       R76 R75 K226 ["specialAttributes"]
      837 GETUPVAL                         R77 19
      838 CALL                             R77 0 1
      839 JUMPIFNOT                        R77 ; [+3]
      840 GETTABLEKS                       R76 R1 K227 ["hasMetadataPermission"]
      842 JUMP                             ; [+1]
      843 LOADNIL                          R76
      844 SETTABLEKS                       R76 R75 K227 ["hasMetadataPermission"]
      846 SETTABLEKS                       R31 R75 K228 ["displayOwnership"]
      848 SETTABLEKS                       R32 R75 K229 ["displayCopy"]
      850 SETTABLEKS                       R34 R75 K230 ["displayComment"]
      852 SETTABLEKS                       R35 R75 K231 ["displayAssetType"]
      854 SETTABLEKS                       R47 R75 K232 ["displaySharing"]
      856 SETTABLEKS                       R33 R75 K233 ["displayAssetTypeSelection"]
      858 JUMPIFNOT                        R45 ; [+2]
      859 MOVE                             R76 R26
      860 JUMP                             ; [+1]
      861 LOADNIL                          R76
      862 SETTABLEKS                       R76 R75 K29 ["allowedAssetTypesForRelease"]
      864 SETTABLEKS                       R27 R75 K30 ["allowedAssetTypesForFree"]
      866 JUMPIFNOT                        R45 ; [+2]
      867 MOVE                             R76 R16
      868 JUMP                             ; [+1]
      869 LOADNIL                          R76
      870 SETTABLEKS                       R76 R75 K234 ["newAssetStatus"]
      872 JUMPIFNOT                        R45 ; [+2]
      873 MOVE                             R76 R29
      874 JUMP                             ; [+1]
      875 LOADNIL                          R76
      876 SETTABLEKS                       R76 R75 K235 ["currentAssetStatus"]
      878 JUMPIFNOT                        R45 ; [+3]
      879 GETTABLEKS                       R76 R0 K236 ["onStatusChange"]
      881 JUMP                             ; [+1]
      882 LOADNIL                          R76
      883 SETTABLEKS                       R76 R75 K236 ["onStatusChange"]
      885 JUMPIFNOT                        R45 ; [+3]
      886 GETTABLEKS                       R76 R0 K237 ["onPriceChange"]
      888 JUMP                             ; [+1]
      889 LOADNIL                          R76
      890 SETTABLEKS                       R76 R75 K237 ["onPriceChange"]
      892 JUMPIFNOT                        R45 ; [+2]
      893 MOVE                             R76 R30
      894 JUMP                             ; [+1]
      895 LOADNIL                          R76
      896 SETTABLEKS                       R76 R75 K34 ["price"]
      898 LOADNIL                          R76
      899 SETTABLEKS                       R76 R75 K238 ["minPrice"]
      901 LOADNIL                          R76
      902 SETTABLEKS                       R76 R75 K239 ["maxPrice"]
      904 LOADNIL                          R76
      905 SETTABLEKS                       R76 R75 K240 ["feeRate"]
      907 LOADNIL                          R76
      908 SETTABLEKS                       R76 R75 K241 ["isPriceValid"]
      910 LOADN                            R76 3
      911 SETTABLEKS                       R76 R75 K120 ["LayoutOrder"]
      913 GETTABLEKS                       R76 R1 K46 ["instances"]
      915 SETTABLEKS                       R76 R75 K46 ["instances"]
      917 SETTABLEKS                       R63 R75 K242 ["showColorPicker"]
      919 JUMPIFNOT                        R63 ; [+3]
      920 GETTABLEKS                       R76 R2 K243 ["showColorPickerRequiredError"]
      922 JUMP                             ; [+1]
      923 LOADNIL                          R76
      924 SETTABLEKS                       R76 R75 K243 ["showColorPickerRequiredError"]
      926 GETTABLEKS                       R76 R2 K244 ["showNameRequiredError"]
      928 SETTABLEKS                       R76 R75 K244 ["showNameRequiredError"]
      930 GETTABLEKS                       R76 R2 K245 ["showDescriptionRequiredError"]
      932 SETTABLEKS                       R76 R75 K245 ["showDescriptionRequiredError"]
      934 JUMPIFNOT                        R63 ; [+3]
      935 GETTABLEKS                       R76 R2 K56 ["selectedColor"]
      937 JUMP                             ; [+1]
      938 LOADNIL                          R76
      939 SETTABLEKS                       R76 R75 K56 ["selectedColor"]
      941 JUMPIFNOT                        R63 ; [+3]
      942 GETTABLEKS                       R76 R0 K246 ["onSelectedColorChange"]
      944 JUMP                             ; [+1]
      945 LOADNIL                          R76
      946 SETTABLEKS                       R76 R75 K247 ["setSelectedColor"]
      948 CALL                             R73 2 1
      949 SETTABLEKS                       R73 R72 K153 ["PublishAsset"]
      951 GETUPVAL                         R73 1
      952 MOVE                             R75 R6
      953 NAMECALL                         R73 R73 K248 ["isVersions"]
      955 CALL                             R73 2 1
      956 JUMPIFNOT                        R73 ; [+75]
      957 GETUPVAL                         R73 9
      958 GETTABLEKS                       R73 R73 K92 ["createElement"]
      960 GETUPVAL                         R74 20
      961 DUPTABLE                         R75 K262 [{["Size"], ["assetId"], ["LayoutOrder"] = 3, ["currentItem"], ["rootItems"], ["openInputKey"], ["previousInput"], ["pageIndex"], ["pageRootItems"], ["versionHistory"], ["onDescClicked"], ["closeInput"], ["setVersionError"], ["setPreviousInput"], ["onPageChange"], ["setStates"]}]
      962 GETIMPORT                        R76 K148 [UDim2.new]
      964 LOADN                            R77 1
      965 LOADN                            R78 -240
      966 LOADN                            R79 1
      967 LOADN                            R80 -20
      968 CALL                             R76 4 1
      969 SETTABLEKS                       R76 R75 K3 ["Size"]
      971 SETTABLEKS                       R7 R75 K6 ["assetId"]
      973 GETTABLEKS                       R76 R2 K263 ["versionsCurrentItem"]
      975 SETTABLEKS                       R76 R75 K249 ["currentItem"]
      977 GETTABLEKS                       R76 R2 K264 ["versionsRootItems"]
      979 SETTABLEKS                       R76 R75 K250 ["rootItems"]
      981 GETTABLEKS                       R76 R2 K265 ["versionsOpenInputKey"]
      983 SETTABLEKS                       R76 R75 K251 ["openInputKey"]
      985 GETTABLEKS                       R76 R2 K266 ["versionsPreviousInput"]
      987 SETTABLEKS                       R76 R75 K252 ["previousInput"]
      989 GETTABLEKS                       R76 R2 K267 ["versionsPageIndex"]
      991 SETTABLEKS                       R76 R75 K253 ["pageIndex"]
      993 GETTABLEKS                       R76 R2 K268 ["versionsPageRootItems"]
      995 SETTABLEKS                       R76 R75 K254 ["pageRootItems"]
      997 GETUPVAL                         R77 21
      998 CALL                             R77 0 1
      999 JUMPIFNOT                        R77 ; [+3]
     1000 GETTABLEKS                       R76 R1 K269 ["versionHistoryWithDescriptions"]
     1002 JUMP                             ; [+2]
     1003 GETTABLEKS                       R76 R1 K255 ["versionHistory"]
     1005 SETTABLEKS                       R76 R75 K255 ["versionHistory"]
     1007 GETTABLEKS                       R76 R0 K270 ["versionsOnDescClicked"]
     1009 SETTABLEKS                       R76 R75 K256 ["onDescClicked"]
     1011 GETTABLEKS                       R76 R0 K271 ["versionsCloseInput"]
     1013 SETTABLEKS                       R76 R75 K257 ["closeInput"]
     1015 GETTABLEKS                       R76 R0 K258 ["setVersionError"]
     1017 SETTABLEKS                       R76 R75 K258 ["setVersionError"]
     1019 GETTABLEKS                       R76 R0 K272 ["versionsSetPreviousInput"]
     1021 SETTABLEKS                       R76 R75 K259 ["setPreviousInput"]
     1023 GETTABLEKS                       R76 R0 K273 ["versionsOnPageChange"]
     1025 SETTABLEKS                       R76 R75 K260 ["onPageChange"]
     1027 GETTABLEKS                       R76 R0 K274 ["versionsSetStates"]
     1029 SETTABLEKS                       R76 R75 K261 ["setStates"]
     1031 CALL                             R73 2 1
     1032 SETTABLEKS                       R73 R72 K154 ["Versions"]
     1034 GETUPVAL                         R74 1
     1035 MOVE                             R76 R6
     1036 NAMECALL                         R74 R74 K275 ["isSales"]
     1038 CALL                             R74 2 1
     1039 JUMPIFNOT                        R74 ; [+18]
     1040 GETUPVAL                         R73 9
     1041 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1043 GETUPVAL                         R74 22
     1044 DUPTABLE                         R75 K278 [{["size"], ["assetId"], ["layoutOrder"] = 3}]
     1045 GETIMPORT                        R76 K148 [UDim2.new]
     1047 LOADN                            R77 1
     1048 LOADN                            R78 -240
     1049 LOADN                            R79 1
     1050 LOADN                            R80 0
     1051 CALL                             R76 4 1
     1052 SETTABLEKS                       R76 R75 K276 ["size"]
     1054 SETTABLEKS                       R7 R75 K6 ["assetId"]
     1056 CALL                             R73 2 1
     1057 JUMP                             ; [+1]
     1058 LOADNIL                          R73
     1059 SETTABLEKS                       R73 R72 K155 ["Sales"]
     1061 GETUPVAL                         R73 1
     1062 MOVE                             R75 R6
     1063 NAMECALL                         R73 R73 K279 ["isOverride"]
     1065 CALL                             R73 2 1
     1066 JUMPIFNOT                        R73 ; [+56]
     1067 GETUPVAL                         R74 23
     1068 CALL                             R74 0 1
     1069 JUMPIFNOT                        R74 ; [+28]
     1070 GETUPVAL                         R74 2
     1071 GETTABLEKS                       R74 R74 K280 ["isAvatarItemUpdateSupported"]
     1073 MOVE                             R75 R23
     1074 CALL                             R74 1 1
     1075 JUMPIFNOT                        R74 ; [+22]
     1076 GETUPVAL                         R73 14
     1077 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1079 GETUPVAL                         R74 24
     1080 DUPTABLE                         R75 K282 [{["Size"], ["assetTypeEnum"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1081 GETIMPORT                        R76 K148 [UDim2.new]
     1083 LOADN                            R77 1
     1084 LOADN                            R78 -240
     1085 LOADN                            R79 1
     1086 LOADN                            R80 0
     1087 CALL                             R76 4 1
     1088 SETTABLEKS                       R76 R75 K3 ["Size"]
     1090 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
     1092 GETTABLEKS                       R76 R0 K281 ["onOverrideAssetSelected"]
     1094 SETTABLEKS                       R76 R75 K281 ["onOverrideAssetSelected"]
     1096 CALL                             R73 2 1
     1097 JUMP                             ; [+25]
     1098 GETUPVAL                         R73 9
     1099 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1101 GETUPVAL                         R74 25
     1102 DUPTABLE                         R75 K283 [{["Size"], ["assetTypeEnum"], ["instances"], ["onOverrideAssetSelected"], ["LayoutOrder"] = 3}]
     1103 GETIMPORT                        R76 K148 [UDim2.new]
     1105 LOADN                            R77 1
     1106 LOADN                            R78 -240
     1107 LOADN                            R79 1
     1108 LOADN                            R80 0
     1109 CALL                             R76 4 1
     1110 SETTABLEKS                       R76 R75 K3 ["Size"]
     1112 SETTABLEKS                       R23 R75 K27 ["assetTypeEnum"]
     1114 GETTABLEKS                       R76 R1 K46 ["instances"]
     1116 SETTABLEKS                       R76 R75 K46 ["instances"]
     1118 GETTABLEKS                       R76 R0 K281 ["onOverrideAssetSelected"]
     1120 SETTABLEKS                       R76 R75 K281 ["onOverrideAssetSelected"]
     1122 CALL                             R73 2 1
     1123 SETTABLEKS                       R73 R72 K156 ["OverrideAsset"]
     1125 GETUPVAL                         R73 1
     1126 MOVE                             R75 R6
     1127 NAMECALL                         R73 R73 K284 ["isPermissions"]
     1129 CALL                             R73 2 1
     1130 JUMPIFNOT                        R73 ; [+30]
     1131 GETUPVAL                         R73 9
     1132 GETTABLEKS                       R73 R73 K92 ["createElement"]
     1134 GETUPVAL                         R74 26
     1135 GETTABLEKS                       R74 R74 K285 ["AsyncCache"]
     1137 NEWTABLE                         R75 0 0
     1139 NEWTABLE                         R76 0 1
     1141 GETUPVAL                         R77 9
     1142 GETTABLEKS                       R77 R77 K92 ["createElement"]
     1144 GETUPVAL                         R78 27
     1145 DUPTABLE                         R79 K286 [{["Size"], ["AssetId"], ["LayoutOrder"] = 3}]
     1146 GETIMPORT                        R80 K148 [UDim2.new]
     1148 LOADN                            R81 1
     1149 MOVE                             R82 R41
     1150 LOADN                            R83 1
     1151 LOADN                            R84 0
     1152 CALL                             R80 4 1
     1153 SETTABLEKS                       R80 R79 K3 ["Size"]
     1155 SETTABLEKS                       R7 R79 K173 ["AssetId"]
     1157 CALL                             R77 2 -1
     1158 SETLIST                          R76 R77 -1 [1]
     1160 CALL                             R73 3 1
     1161 SETTABLEKS                       R73 R72 K157 ["PackagePermissions"]
     1163 CALL                             R69 3 1
     1164 SETTABLEKS                       R69 R68 K105 ["MainPage"]
     1166 GETUPVAL                         R69 9
     1167 GETTABLEKS                       R69 R69 K92 ["createElement"]
     1169 GETUPVAL                         R70 28
     1170 DUPTABLE                         R71 K292 [{["AssetId"], ["CanSave"], ["publishOnApprovalFee"], ["LayoutOrder"] = 2, ["Size"], ["TryCancel"], ["TryPublish"], ["OnPublishButtonHover"]}]
     1171 GETTABLEKS                       R72 R2 K293 ["overrideAssetId"]
     1173 SETTABLEKS                       R72 R71 K173 ["AssetId"]
     1175 SETTABLEKS                       R40 R71 K287 ["CanSave"]
     1177 GETUPVAL                         R73 7
     1178 CALL                             R73 0 1
     1179 JUMPIFNOT                        R73 ; [+2]
     1180 MOVE                             R72 R61
     1181 JUMP                             ; [+1]
     1182 LOADNIL                          R72
     1183 SETTABLEKS                       R72 R71 K288 ["publishOnApprovalFee"]
     1185 GETIMPORT                        R72 K148 [UDim2.new]
     1187 LOADN                            R73 1
     1188 LOADN                            R74 0
     1189 LOADN                            R75 0
     1190 LOADN                            R76 62
     1191 CALL                             R72 4 1
     1192 SETTABLEKS                       R72 R71 K3 ["Size"]
     1194 GETTABLEKS                       R72 R0 K294 ["tryCancelWithYield"]
     1196 SETTABLEKS                       R72 R71 K289 ["TryCancel"]
     1198 GETTABLEKS                       R72 R0 K295 ["tryPublishWithConfirmDialog"]
     1200 SETTABLEKS                       R72 R71 K290 ["TryPublish"]
     1202 JUMPIF                           R40 ; [+8]
     1203 NEWCLOSURE                       R72 P1
     1204 CAPTURE                          VAL R0
     1205 CAPTURE                          VAL R64
     1206 CAPTURE                          VAL R8
     1207 CAPTURE                          VAL R9
     1208 CAPTURE                          UPVAL U2
     1209 CAPTURE                          VAL R23
     1210 JUMP                             ; [+1]
     1211 LOADNIL                          R72
     1212 SETTABLEKS                       R72 R71 K291 ["OnPublishButtonHover"]
     1214 CALL                             R69 2 1
     1215 SETTABLEKS                       R69 R68 K106 ["Footer"]
     1217 CALL                             R65 3 -1
     1218 RETURN                           R65 -1

PROTO_85:
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

PROTO_86:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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

PROTO_94:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 LOADNIL                          R8
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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 -1
        8 RETURN                           R4 -1

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
      148 SETTABLEKS                       R2 R1 K23 ["dispatchPatchMakeAssetPublicRequest"]
      150 NEWCLOSURE                       R2 P24
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U29
      153 SETTABLEKS                       R2 R1 K24 ["dispatchGetAssetPermissionsRequest"]
      155 NEWCLOSURE                       R2 P25
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U30
      158 SETTABLEKS                       R2 R1 K25 ["dispatchSetDescendantPermissions"]
      160 NEWCLOSURE                       R2 P26
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U31
      163 SETTABLEKS                       R2 R1 K26 ["dispatchGetPublishingRequirements"]
      165 NEWCLOSURE                       R2 P27
      166 CAPTURE                          VAL R0
      167 CAPTURE                          UPVAL U32
      168 SETTABLEKS                       R2 R1 K27 ["dispatchGetAssetMediaMetadataArray"]
      170 NEWCLOSURE                       R2 P28
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U33
      173 SETTABLEKS                       R2 R1 K28 ["dispatchGetFiatProduct"]
      175 GETUPVAL                         R3 34
      176 CALL                             R3 0 1
      177 JUMPIFNOT                        R3 ; [+4]
      178 NEWCLOSURE                       R2 P29
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U35
      181 JUMP                             ; [+1]
      182 LOADNIL                          R2
      183 SETTABLEKS                       R2 R1 K29 ["dispatchGetSellerStatus"]
      185 NEWCLOSURE                       R2 P30
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U36
      188 SETTABLEKS                       R2 R1 K30 ["dispatchValidateAnimationResult"]
      190 NEWCLOSURE                       R2 P31
      191 CAPTURE                          VAL R0
      192 CAPTURE                          UPVAL U37
      193 SETTABLEKS                       R2 R1 K31 ["dispatchCheckAvatarAssetPrivacy"]
      195 NEWCLOSURE                       R2 P32
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U38
      198 SETTABLEKS                       R2 R1 K32 ["dispatchDownloadFlow"]
      200 NEWCLOSURE                       R2 P33
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U39
      203 SETTABLEKS                       R2 R1 K33 ["dispatchEditFlow"]
      205 NEWCLOSURE                       R2 P34
      206 CAPTURE                          VAL R0
      207 CAPTURE                          UPVAL U40
      208 SETTABLEKS                       R2 R1 K34 ["dispatchUploadFlow"]
      210 RETURN                           R1 1

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
      484 GETTABLEKS                       R85 R85 K94 ["Thunks"]
      486 GETTABLEKS                       R85 R85 K98 ["CheckAvatarAssetPrivacy"]
      488 CALL                             R84 1 1
      489 GETIMPORT                        R85 K15 [require]
      491 GETTABLEKS                       R86 R1 K7 ["Src"]
      493 GETTABLEKS                       R86 R86 K94 ["Thunks"]
      495 GETTABLEKS                       R86 R86 K27 ["AssetConfiguration"]
      497 GETTABLEKS                       R86 R86 K99 ["DownloadFlowRequest"]
      499 CALL                             R85 1 1
      500 GETIMPORT                        R86 K15 [require]
      502 GETTABLEKS                       R87 R1 K7 ["Src"]
      504 GETTABLEKS                       R87 R87 K94 ["Thunks"]
      506 GETTABLEKS                       R87 R87 K27 ["AssetConfiguration"]
      508 GETTABLEKS                       R87 R87 K100 ["EditFlowRequest"]
      510 CALL                             R86 1 1
      511 GETIMPORT                        R87 K15 [require]
      513 GETTABLEKS                       R88 R1 K7 ["Src"]
      515 GETTABLEKS                       R88 R88 K94 ["Thunks"]
      517 GETTABLEKS                       R88 R88 K27 ["AssetConfiguration"]
      519 GETTABLEKS                       R88 R88 K101 ["UploadFlowRequest"]
      521 CALL                             R87 1 1
      522 GETIMPORT                        R88 K15 [require]
      524 GETTABLEKS                       R89 R1 K7 ["Src"]
      526 GETTABLEKS                       R89 R89 K94 ["Thunks"]
      528 GETTABLEKS                       R89 R89 K27 ["AssetConfiguration"]
      530 GETTABLEKS                       R89 R89 K102 ["FetchUploadFeeWithMetadataRequest"]
      532 CALL                             R88 1 1
      533 GETIMPORT                        R89 K15 [require]
      535 GETTABLEKS                       R90 R1 K7 ["Src"]
      537 GETTABLEKS                       R90 R90 K103 ["ContextServices"]
      539 GETTABLEKS                       R90 R90 K104 ["IXPContext"]
      541 CALL                             R89 1 1
      542 GETIMPORT                        R90 K15 [require]
      544 GETTABLEKS                       R91 R1 K7 ["Src"]
      546 GETTABLEKS                       R91 R91 K103 ["ContextServices"]
      548 GETTABLEKS                       R91 R91 K105 ["NetworkContext"]
      550 CALL                             R90 1 1
      551 GETIMPORT                        R91 K15 [require]
      553 GETTABLEKS                       R92 R1 K7 ["Src"]
      555 GETTABLEKS                       R92 R92 K103 ["ContextServices"]
      557 GETTABLEKS                       R92 R92 K106 ["PublishServiceContext"]
      559 CALL                             R91 1 1
      560 GETIMPORT                        R92 K15 [require]
      562 GETTABLEKS                       R93 R1 K7 ["Src"]
      564 GETTABLEKS                       R93 R93 K103 ["ContextServices"]
      566 GETTABLEKS                       R93 R93 K107 ["PluginGuiServiceContext"]
      568 CALL                             R92 1 1
      569 GETIMPORT                        R93 K15 [require]
      571 GETTABLEKS                       R94 R1 K7 ["Src"]
      573 GETTABLEKS                       R94 R94 K103 ["ContextServices"]
      575 GETTABLEKS                       R94 R94 K108 ["ContentProviderContext"]
      577 CALL                             R93 1 1
      578 GETIMPORT                        R94 K15 [require]
      580 GETTABLEKS                       R95 R9 K53 ["Framework"]
      582 CALL                             R94 1 1
      583 GETTABLEKS                       R95 R94 K103 ["ContextServices"]
      585 GETTABLEKS                       R96 R95 K109 ["withContext"]
      587 GETTABLEKS                       R97 R94 K110 ["UI"]
      589 GETTABLEKS                       R97 R97 K111 ["LoadingIndicator"]
      591 GETTABLEKS                       R98 R94 K110 ["UI"]
      593 GETTABLEKS                       R98 R98 K112 ["Container"]
      595 GETTABLEKS                       R99 R11 K113 ["PureComponent"]
      597 LOADK                            R101 K114 ["AssetConfig"]
      598 NAMECALL                         R99 R99 K115 ["extend"]
      600 CALL                             R99 2 1
      601 GETIMPORT                        R100 K15 [require]
      603 GETTABLEKS                       R101 R1 K7 ["Src"]
      605 GETTABLEKS                       R101 R101 K116 ["Flags"]
      607 GETTABLEKS                       R101 R101 K117 ["getFFlagEnableUpdateAvatarItem"]
      609 CALL                             R100 1 1
      610 GETIMPORT                        R101 K15 [require]
      612 GETTABLEKS                       R102 R1 K7 ["Src"]
      614 GETTABLEKS                       R102 R102 K116 ["Flags"]
      616 GETTABLEKS                       R102 R102 K118 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      618 CALL                             R101 1 1
      619 GETIMPORT                        R102 K15 [require]
      621 GETTABLEKS                       R103 R1 K7 ["Src"]
      623 GETTABLEKS                       R103 R103 K116 ["Flags"]
      625 GETTABLEKS                       R103 R103 K119 ["getFFlagToolboxDynamicUploadFee"]
      627 CALL                             R102 1 1
      628 GETIMPORT                        R103 K15 [require]
      630 GETTABLEKS                       R104 R1 K7 ["Src"]
      632 GETTABLEKS                       R104 R104 K116 ["Flags"]
      634 GETTABLEKS                       R104 R104 K120 ["getFFlagToolboxPublishOnApproval"]
      636 CALL                             R103 1 1
      637 DUPCLOSURE                       R104 K121 [PROTO_63]
      638 CAPTURE                          VAL R35
      639 CAPTURE                          VAL R37
      640 CAPTURE                          VAL R34
      641 CAPTURE                          VAL R6
      642 CAPTURE                          VAL R31
      643 CAPTURE                          VAL R103
      644 CAPTURE                          VAL R22
      645 CAPTURE                          VAL R14
      646 CAPTURE                          VAL R8
      647 CAPTURE                          VAL R15
      648 CAPTURE                          VAL R41
      649 CAPTURE                          VAL R43
      650 CAPTURE                          VAL R44
      651 CAPTURE                          VAL R50
      652 CAPTURE                          VAL R33
      653 SETTABLEKS                       R104 R99 K122 ["init"]
      655 DUPCLOSURE                       R104 K123 [PROTO_64]
      656 SETTABLEKS                       R104 R99 K124 ["attachXButtonCallback"]
      658 DUPCLOSURE                       R104 K125 [PROTO_65]
      659 SETTABLEKS                       R104 R99 K126 ["detachXButtonCallback"]
      661 DUPCLOSURE                       R104 K127 [PROTO_66]
      662 CAPTURE                          VAL R34
      663 SETTABLEKS                       R104 R99 K128 ["isLoading"]
      665 DUPCLOSURE                       R104 K129 [PROTO_67]
      666 CAPTURE                          VAL R14
      667 DUPCLOSURE                       R105 K130 [PROTO_68]
      668 CAPTURE                          VAL R34
      669 CAPTURE                          VAL R51
      670 CAPTURE                          VAL R31
      671 CAPTURE                          VAL R37
      672 CAPTURE                          VAL R3
      673 CAPTURE                          VAL R38
      674 CAPTURE                          VAL R41
      675 CAPTURE                          VAL R14
      676 CAPTURE                          VAL R101
      677 CAPTURE                          VAL R104
      678 CAPTURE                          VAL R35
      679 SETTABLEKS                       R105 R99 K131 ["didUpdate"]
      681 DUPCLOSURE                       R105 K132 [PROTO_69]
      682 CAPTURE                          VAL R46
      683 SETTABLEKS                       R105 R99 K133 ["versionsGetPageRootItems"]
      685 DUPCLOSURE                       R105 K134 [PROTO_72]
      686 CAPTURE                          VAL R72
      687 SETTABLEKS                       R105 R99 K135 ["getDefaultBundleDataSharing"]
      689 DUPCLOSURE                       R105 K136 [PROTO_78]
      690 CAPTURE                          VAL R34
      691 CAPTURE                          VAL R37
      692 CAPTURE                          VAL R14
      693 CAPTURE                          VAL R102
      694 SETTABLEKS                       R105 R99 K137 ["getAssetInformation"]
      696 DUPCLOSURE                       R105 K138 [PROTO_80]
      697 CAPTURE                          VAL R37
      698 CAPTURE                          VAL R7
      699 CAPTURE                          VAL R40
      700 SETTABLEKS                       R105 R99 K139 ["didMount"]
      702 DUPCLOSURE                       R105 K140 [PROTO_81]
      703 SETTABLEKS                       R105 R99 K141 ["willUnmount"]
      705 DUPCLOSURE                       R105 K142 [PROTO_84]
      706 CAPTURE                          VAL R34
      707 CAPTURE                          VAL R51
      708 CAPTURE                          VAL R37
      709 CAPTURE                          VAL R36
      710 CAPTURE                          VAL R32
      711 CAPTURE                          VAL R38
      712 CAPTURE                          VAL R35
      713 CAPTURE                          VAL R103
      714 CAPTURE                          VAL R6
      715 CAPTURE                          VAL R11
      716 CAPTURE                          VAL R30
      717 CAPTURE                          VAL R27
      718 CAPTURE                          VAL R26
      719 CAPTURE                          VAL R18
      720 CAPTURE                          VAL R10
      721 CAPTURE                          VAL R13
      722 CAPTURE                          VAL R98
      723 CAPTURE                          VAL R97
      724 CAPTURE                          VAL R19
      725 CAPTURE                          VAL R102
      726 CAPTURE                          VAL R21
      727 CAPTURE                          VAL R101
      728 CAPTURE                          VAL R23
      729 CAPTURE                          VAL R100
      730 CAPTURE                          VAL R29
      731 CAPTURE                          VAL R28
      732 CAPTURE                          VAL R25
      733 CAPTURE                          VAL R24
      734 CAPTURE                          VAL R20
      735 SETTABLEKS                       R105 R99 K143 ["render"]
      737 MOVE                             R105 R96
      738 DUPTABLE                         R106 K153 [{"Focus", "IXP", "Localization", "Stylizer", "Plugin", "Network", "PublishService", "PluginGuiService", "ContentProvider"}]
      739 GETTABLEKS                       R107 R95 K144 ["Focus"]
      741 SETTABLEKS                       R107 R106 K144 ["Focus"]
      743 JUMPIFNOT                        R5 ; [+2]
      744 MOVE                             R107 R89
      745 JUMP                             ; [+1]
      746 LOADNIL                          R107
      747 SETTABLEKS                       R107 R106 K145 ["IXP"]
      749 GETTABLEKS                       R107 R95 K146 ["Localization"]
      751 SETTABLEKS                       R107 R106 K146 ["Localization"]
      753 GETTABLEKS                       R107 R95 K147 ["Stylizer"]
      755 SETTABLEKS                       R107 R106 K147 ["Stylizer"]
      757 GETTABLEKS                       R107 R95 K148 ["Plugin"]
      759 SETTABLEKS                       R107 R106 K148 ["Plugin"]
      761 SETTABLEKS                       R90 R106 K149 ["Network"]
      763 SETTABLEKS                       R91 R106 K150 ["PublishService"]
      765 SETTABLEKS                       R92 R106 K151 ["PluginGuiService"]
      767 SETTABLEKS                       R93 R106 K152 ["ContentProvider"]
      769 CALL                             R105 1 1
      770 MOVE                             R106 R99
      771 CALL                             R105 1 1
      772 MOVE                             R99 R105
      773 DUPCLOSURE                       R105 K154 [PROTO_85]
      774 CAPTURE                          VAL R50
      775 CAPTURE                          VAL R101
      776 CAPTURE                          VAL R4
      777 CAPTURE                          VAL R5
      778 CAPTURE                          VAL R3
      779 CAPTURE                          VAL R103
      780 CAPTURE                          VAL R102
      781 CAPTURE                          VAL R40
      782 DUPCLOSURE                       R106 K155 [PROTO_121]
      783 CAPTURE                          VAL R53
      784 CAPTURE                          VAL R61
      785 CAPTURE                          VAL R69
      786 CAPTURE                          VAL R47
      787 CAPTURE                          VAL R79
      788 CAPTURE                          VAL R14
      789 CAPTURE                          VAL R54
      790 CAPTURE                          VAL R55
      791 CAPTURE                          VAL R74
      792 CAPTURE                          VAL R73
      793 CAPTURE                          VAL R34
      794 CAPTURE                          VAL R56
      795 CAPTURE                          VAL R62
      796 CAPTURE                          VAL R103
      797 CAPTURE                          VAL R63
      798 CAPTURE                          VAL R76
      799 CAPTURE                          VAL R64
      800 CAPTURE                          VAL R77
      801 CAPTURE                          VAL R102
      802 CAPTURE                          VAL R88
      803 CAPTURE                          VAL R57
      804 CAPTURE                          VAL R75
      805 CAPTURE                          VAL R58
      806 CAPTURE                          VAL R59
      807 CAPTURE                          VAL R60
      808 CAPTURE                          VAL R81
      809 CAPTURE                          VAL R82
      810 CAPTURE                          VAL R83
      811 CAPTURE                          VAL R65
      812 CAPTURE                          VAL R66
      813 CAPTURE                          VAL R78
      814 CAPTURE                          VAL R67
      815 CAPTURE                          VAL R68
      816 CAPTURE                          VAL R70
      817 CAPTURE                          VAL R7
      818 CAPTURE                          VAL R71
      819 CAPTURE                          VAL R80
      820 CAPTURE                          VAL R84
      821 CAPTURE                          VAL R85
      822 CAPTURE                          VAL R86
      823 CAPTURE                          VAL R87
      824 GETTABLEKS                       R107 R12 K156 ["connect"]
      826 MOVE                             R108 R105
      827 MOVE                             R109 R106
      828 CALL                             R107 2 1
      829 MOVE                             R108 R99
      830 CALL                             R107 1 -1
      831 RETURN                           R107 -1
