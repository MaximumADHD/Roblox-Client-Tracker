PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["setOnlySelection"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K1 ["setExportEnabled"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["_plugin"]
       13 LOADK                            R2 K3 ["OnShouldStartPermissions"]
       14 LOADB                            R3 1
       15 NAMECALL                         R0 R0 K4 ["Invoke"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["setOnlySelection"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K1 ["setExportEnabled"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["_plugin"]
       13 LOADK                            R2 K3 ["OnShouldStartPermissions"]
       14 LOADB                            R3 0
       15 NAMECALL                         R0 R0 K4 ["Invoke"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["_settings"]
        4 NAMECALL                         R0 R0 K1 ["formatSettings"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["_plugin"]
       10 LOADK                            R3 K3 ["OnShouldStartExport"]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K4 ["getOnlySelection"]
       14 CALL                             R4 1 1
       15 MOVE                             R5 R0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K5 ["_fileName"]
       19 NAMECALL                         R1 R1 K6 ["Invoke"]
       21 CALL                             R1 5 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["export"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_canceled"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["endExport"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 NAMECALL                         R0 R0 K2 ["showFinishedPage"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_exportSuccess"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["_settings"]
        7 GETTABLEKS                       R0 R1 K1 ["cages"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["_plugin"]
       13 LOADK                            R2 K4 ["OnDestroyCageParts"]
       14 GETUPVAL                         R3 0
       15 NAMECALL                         R3 R3 K5 ["getOnlySelection"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 NAMECALL                         R0 R0 K7 ["showFinishedPage"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_exportSuccess"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["_settings"]
        7 GETTABLEKS                       R0 R1 K1 ["cages"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["_plugin"]
       13 LOADK                            R2 K4 ["OnDestroyCageParts"]
       14 GETUPVAL                         R3 0
       15 NAMECALL                         R3 R3 K5 ["getOnlySelection"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 NAMECALL                         R0 R0 K7 ["showFinishedPage"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_canceled"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K2 ["_settings"]
        7 GETTABLEKS                       R0 R1 K1 ["cages"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K3 ["_plugin"]
       13 LOADK                            R2 K4 ["OnDestroyCageParts"]
       14 GETUPVAL                         R3 0
       15 NAMECALL                         R3 R3 K5 ["getOnlySelection"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 NAMECALL                         R0 R0 K7 ["endExport"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setPermissionFailures"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["onPermissionFailuresChanged"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["_permissionFailures"]
       11 NAMECALL                         R1 R1 K3 ["Fire"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 LOADB                            R3 1
       16 NAMECALL                         R1 R1 K4 ["setPermissionsReady"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["endExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R2 K19 [{"_viewState", "_exportEnabled", "_exportProcessing", "_settings", "_settingEvents", "_onlySelection", "_plugin", "_permissionFailures", "_fileName", "_connections", "_permissionsReady", "_canceled", "_exportSuccess", "onViewStateChanged", "onPermissionLoadingChanged", "onPermissionFailuresChanged", "onExportEnabledChanged", "onExportProcessingChanged", "onPermissionsReadyChanged"}]
        1 LOADK                            R3 K20 ["Main"]
        2 SETTABLEKS                       R3 R2 K0 ["_viewState"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["_exportEnabled"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["_exportProcessing"]
       10 DUPTABLE                         R3 K24 [{"skinning", "textures", "cages"}]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K21 ["skinning"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K22 ["textures"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K23 ["cages"]
       20 SETTABLEKS                       R3 R2 K3 ["_settings"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K4 ["_settingEvents"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K5 ["_onlySelection"]
       29 SETTABLEKS                       R0 R2 K6 ["_plugin"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K7 ["_permissionFailures"]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K8 ["_fileName"]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K9 ["_connections"]
       42 LOADB                            R3 0
       43 SETTABLEKS                       R3 R2 K10 ["_permissionsReady"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K11 ["_canceled"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K12 ["_exportSuccess"]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K25 ["new"]
       54 CALL                             R3 0 1
       55 SETTABLEKS                       R3 R2 K13 ["onViewStateChanged"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R3 R4 K25 ["new"]
       60 CALL                             R3 0 1
       61 SETTABLEKS                       R3 R2 K14 ["onPermissionLoadingChanged"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R3 R4 K25 ["new"]
       66 CALL                             R3 0 1
       67 SETTABLEKS                       R3 R2 K15 ["onPermissionFailuresChanged"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K25 ["new"]
       72 CALL                             R3 0 1
       73 SETTABLEKS                       R3 R2 K16 ["onExportEnabledChanged"]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R3 R4 K25 ["new"]
       78 CALL                             R3 0 1
       79 SETTABLEKS                       R3 R2 K17 ["onExportProcessingChanged"]
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R3 R4 K25 ["new"]
       84 CALL                             R3 0 1
       85 SETTABLEKS                       R3 R2 K18 ["onPermissionsReadyChanged"]
       87 GETTABLEKS                       R3 R2 K3 ["_settings"]
       89 LOADNIL                          R4
       90 LOADNIL                          R5
       91 FORGPREP                         R3
       92 GETTABLEKS                       R8 R2 K4 ["_settingEvents"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R9 R10 K25 ["new"]
       97 CALL                             R9 0 1
       98 SETTABLE                         R9 R8 R6
       99 FORGLOOP                         R3 2 ; [-8]
      101 GETUPVAL                         R5 1
      102 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      104 MOVE                             R4 R2
      105 GETIMPORT                        R3 K27 [setmetatable]
      107 CALL                             R3 2 0
      108 GETTABLEKS                       R4 R2 K9 ["_connections"]
      110 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      112 LOADK                            R7 K28 ["OnExportSelectionActionActivated"]
      113 NEWCLOSURE                       R8 P0
      114 CAPTURE                          VAL R2
      115 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      117 CALL                             R5 3 -1
      118 FASTCALL                         TABLE_INSERT ; [+2]
      119 GETIMPORT                        R3 K32 [table.insert]
      121 CALL                             R3 -1 0
      122 GETTABLEKS                       R4 R2 K9 ["_connections"]
      124 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      126 LOADK                            R7 K33 ["OnExportPlaceActionActivated"]
      127 NEWCLOSURE                       R8 P1
      128 CAPTURE                          VAL R2
      129 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      131 CALL                             R5 3 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R3 K32 [table.insert]
      135 CALL                             R3 -1 0
      136 GETTABLEKS                       R4 R2 K9 ["_connections"]
      138 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      140 LOADK                            R7 K34 ["OnCreateCagesSucceeded"]
      141 NEWCLOSURE                       R8 P2
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          VAL R2
      144 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      146 CALL                             R5 3 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R3 K32 [table.insert]
      150 CALL                             R3 -1 0
      151 GETTABLEKS                       R4 R2 K9 ["_connections"]
      153 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      155 LOADK                            R7 K35 ["OnExportFileNameInputted"]
      156 NEWCLOSURE                       R8 P3
      157 CAPTURE                          VAL R2
      158 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      160 CALL                             R5 3 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R3 K32 [table.insert]
      164 CALL                             R3 -1 0
      165 GETTABLEKS                       R4 R2 K9 ["_connections"]
      167 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      169 LOADK                            R7 K36 ["OnDestroyCagesSucceeded"]
      170 NEWCLOSURE                       R8 P4
      171 CAPTURE                          VAL R2
      172 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      174 CALL                             R5 3 -1
      175 FASTCALL                         TABLE_INSERT ; [+2]
      176 GETIMPORT                        R3 K32 [table.insert]
      178 CALL                             R3 -1 0
      179 GETTABLEKS                       R4 R2 K9 ["_connections"]
      181 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      183 LOADK                            R7 K37 ["OnExportCompleteSuccess"]
      184 NEWCLOSURE                       R8 P5
      185 CAPTURE                          VAL R2
      186 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      188 CALL                             R5 3 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R3 K32 [table.insert]
      192 CALL                             R3 -1 0
      193 GETTABLEKS                       R4 R2 K9 ["_connections"]
      195 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      197 LOADK                            R7 K38 ["OnExportErrored"]
      198 NEWCLOSURE                       R8 P6
      199 CAPTURE                          VAL R2
      200 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      202 CALL                             R5 3 -1
      203 FASTCALL                         TABLE_INSERT ; [+2]
      204 GETIMPORT                        R3 K32 [table.insert]
      206 CALL                             R3 -1 0
      207 GETTABLEKS                       R4 R2 K9 ["_connections"]
      209 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      211 LOADK                            R7 K39 ["OnFileSelectCanceled"]
      212 NEWCLOSURE                       R8 P7
      213 CAPTURE                          VAL R2
      214 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      216 CALL                             R5 3 -1
      217 FASTCALL                         TABLE_INSERT ; [+2]
      218 GETIMPORT                        R3 K32 [table.insert]
      220 CALL                             R3 -1 0
      221 GETTABLEKS                       R4 R2 K9 ["_connections"]
      223 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      225 LOADK                            R7 K40 ["OnPermissionCheckComplete"]
      226 NEWCLOSURE                       R8 P8
      227 CAPTURE                          VAL R2
      228 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      230 CALL                             R5 3 -1
      231 FASTCALL                         TABLE_INSERT ; [+2]
      232 GETIMPORT                        R3 K32 [table.insert]
      234 CALL                             R3 -1 0
      235 GETTABLEKS                       R4 R2 K9 ["_connections"]
      237 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      239 LOADK                            R7 K41 ["OnPermissionCheckFailed"]
      240 NEWCLOSURE                       R8 P9
      241 CAPTURE                          VAL R2
      242 NAMECALL                         R5 R5 K29 ["OnInvoke"]
      244 CALL                             R5 3 -1
      245 FASTCALL                         TABLE_INSERT ; [+2]
      246 GETIMPORT                        R3 K32 [table.insert]
      248 CALL                             R3 -1 0
      249 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 JUMPIFNOTEQKS                    R6 K2 ["skinning"] ; [+6]
        9 SETTABLEKS                       R7 R2 K3 ["ExportSkinning"]
       11 SETTABLEKS                       R7 R2 K4 ["ExportFACS"]
       13 JUMP                             ; [+6]
       14 JUMPIFNOTEQKS                    R6 K5 ["textures"] ; [+5]
       16 SETTABLEKS                       R7 R2 K6 ["ExportTextures"]
       18 SETTABLEKS                       R7 R2 K7 ["ExportPBRs"]
       20 FORGLOOP                         R3 2 ; [-14]
       22 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_settings"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_settingEvents"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_15:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_canceled"]
        3 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        5 LOADK                            R3 K2 ["OnShouldCancelExport"]
        6 NAMECALL                         R1 R1 K3 ["Invoke"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K5 ["_settings"]
       11 GETTABLEKS                       R1 R2 K4 ["cages"]
       13 JUMPIFNOT                        R1 ; [+10]
       14 GETTABLEKS                       R1 R0 K1 ["_plugin"]
       16 LOADK                            R3 K6 ["OnDestroyCageParts"]
       17 NAMECALL                         R4 R0 K7 ["getOnlySelection"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R1 R1 K3 ["Invoke"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0
       24 NAMECALL                         R1 R0 K8 ["endExport"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_settings"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETTABLEKS                       R3 R0 K0 ["_settings"]
        7 NOT                              R4 R2
        8 SETTABLE                         R4 R3 R1
        9 GETTABLEKS                       R4 R0 K1 ["_settingEvents"]
       11 GETTABLE                         R3 R4 R1
       12 NOT                              R5 R2
       13 NAMECALL                         R3 R3 K2 ["Fire"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        6 GETTABLEKS                       R2 R0 K1 ["onPermissionsReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_viewState"]
        2 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_exportEnabled"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportEnabledChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProcessing"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProcessingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_viewState"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_viewState"]
        6 GETTABLEKS                       R2 R0 K1 ["onViewStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_27:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_28:
        0 LOADK                            R3 K0 ["Permissions"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R1 1

PROTO_30:
        0 SETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["OnViewInExplorer"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["Invoke"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["OpenBrowserWindow"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["assetType"]
        7 JUMPIFEQKS                       R6 K2 ["Mesh"] ; [+7]
        9 GETTABLEKS                       R7 R0 K3 ["_settings"]
       11 GETTABLEKS                       R6 R7 K4 ["textures"]
       13 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-13]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_35:
        0 NAMECALL                         R1 R0 K0 ["_containsReleventPermissionFailure"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 NAMECALL                         R1 R0 K1 ["triggerFilePathSelection"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R1 R0 K2 ["openPermissions"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_36:
        0 LOADK                            R3 K0 ["SelectFilename"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R1 R0 K2 ["_plugin"]
        6 LOADK                            R3 K3 ["OnShouldSelectFilename"]
        7 NAMECALL                         R1 R1 K4 ["Invoke"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R4 R0 K0 ["_settings"]
        2 NAMECALL                         R2 R0 K1 ["formatSettings"]
        4 CALL                             R2 2 1
        5 LOADB                            R5 1
        6 NAMECALL                         R3 R0 K2 ["setExportProcessing"]
        8 CALL                             R3 2 0
        9 LOADK                            R5 K3 ["Export"]
       10 NAMECALL                         R3 R0 K4 ["_changeViewState"]
       12 CALL                             R3 2 0
       13 SETTABLEKS                       R1 R0 K5 ["_fileName"]
       15 GETTABLEKS                       R4 R0 K0 ["_settings"]
       17 GETTABLEKS                       R3 R4 K6 ["cages"]
       19 JUMPIFNOT                        R3 ; [+10]
       20 GETTABLEKS                       R3 R0 K7 ["_plugin"]
       22 LOADK                            R5 K8 ["OnCreateCageParts"]
       23 NAMECALL                         R6 R0 K9 ["getOnlySelection"]
       25 CALL                             R6 1 -1
       26 NAMECALL                         R3 R3 K10 ["Invoke"]
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R3 R0 K7 ["_plugin"]
       32 LOADK                            R5 K11 ["OnShouldStartExport"]
       33 NAMECALL                         R6 R0 K9 ["getOnlySelection"]
       35 CALL                             R6 1 1
       36 MOVE                             R7 R2
       37 GETTABLEKS                       R8 R0 K5 ["_fileName"]
       39 NAMECALL                         R3 R3 K10 ["Invoke"]
       41 CALL                             R3 5 0
       42 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_exportSuccess"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 LOADK                            R3 K1 ["Success"]
        4 NAMECALL                         R1 R0 K2 ["_changeViewState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0
        8 LOADK                            R3 K3 ["Failure"]
        9 NAMECALL                         R1 R0 K2 ["_changeViewState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["endExport"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_40:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 LOADB                            R3 0
        5 NAMECALL                         R1 R0 K2 ["setExportEnabled"]
        7 CALL                             R1 2 0
        8 LOADB                            R3 0
        9 NAMECALL                         R1 R0 K3 ["setExportProcessing"]
       11 CALL                             R1 2 0
       12 LOADB                            R3 0
       13 NAMECALL                         R1 R0 K4 ["setPermissionsReady"]
       15 CALL                             R1 2 0
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K5 ["_permissionFailures"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K6 ["_canceled"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K7 ["_exportSuccess"]
       26 RETURN                           R0 0

PROTO_41:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_settingEvents"]
        4 GETTABLEKS                       R1 R0 K1 ["_connections"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K2 ["Disconnect"]
       11 JUMPIFNOT                        R6 ; [+3]
       12 NAMECALL                         R6 R5 K2 ["Disconnect"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-7]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K1 ["_connections"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Flags"]
       24 GETTABLEKS                       R5 R6 K12 ["getFStringPermissionsPage"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["createAssetUrl"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K13 ["Util"]
       38 GETTABLEKS                       R7 R6 K15 ["Signal"]
       40 GETIMPORT                        R8 K17 [game]
       42 LOADK                            R10 K18 ["BrowserService"]
       43 NAMECALL                         R8 R8 K19 ["GetService"]
       45 CALL                             R8 2 1
       46 LOADK                            R11 K20 ["ExportController"]
       47 NAMECALL                         R9 R3 K21 ["extend"]
       49 CALL                             R9 2 1
       50 DUPCLOSURE                       R10 K22 [PROTO_10]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R10 R9 K23 ["new"]
       55 DUPCLOSURE                       R10 K24 [PROTO_11]
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R10 R9 K25 ["mock"]
       59 DUPCLOSURE                       R10 K26 [PROTO_12]
       60 SETTABLEKS                       R10 R9 K27 ["formatSettings"]
       62 DUPCLOSURE                       R10 K28 [PROTO_13]
       63 SETTABLEKS                       R10 R9 K29 ["getSettingValue"]
       65 DUPCLOSURE                       R10 K30 [PROTO_14]
       66 SETTABLEKS                       R10 R9 K31 ["getSettingEvent"]
       68 DUPCLOSURE                       R10 K32 [PROTO_15]
       69 SETTABLEKS                       R10 R9 K33 ["cancelExport"]
       71 DUPCLOSURE                       R10 K34 [PROTO_16]
       72 SETTABLEKS                       R10 R9 K35 ["toggleSetting"]
       74 DUPCLOSURE                       R10 K36 [PROTO_17]
       75 SETTABLEKS                       R10 R9 K37 ["setOnlySelection"]
       77 DUPCLOSURE                       R10 K38 [PROTO_18]
       78 SETTABLEKS                       R10 R9 K39 ["getOnlySelection"]
       80 DUPCLOSURE                       R10 K40 [PROTO_19]
       81 SETTABLEKS                       R10 R9 K41 ["setPermissionsReady"]
       83 DUPCLOSURE                       R10 K42 [PROTO_20]
       84 SETTABLEKS                       R10 R9 K43 ["getPermissionsReady"]
       86 DUPCLOSURE                       R10 K44 [PROTO_21]
       87 SETTABLEKS                       R10 R9 K45 ["getViewState"]
       89 DUPCLOSURE                       R10 K46 [PROTO_22]
       90 SETTABLEKS                       R10 R9 K47 ["getExportEnabled"]
       92 DUPCLOSURE                       R10 K48 [PROTO_23]
       93 SETTABLEKS                       R10 R9 K49 ["setExportEnabled"]
       95 DUPCLOSURE                       R10 K50 [PROTO_24]
       96 SETTABLEKS                       R10 R9 K51 ["getExportProcessing"]
       98 DUPCLOSURE                       R10 K52 [PROTO_25]
       99 SETTABLEKS                       R10 R9 K53 ["setExportProcessing"]
      101 DUPCLOSURE                       R10 K54 [PROTO_26]
      102 SETTABLEKS                       R10 R9 K55 ["_changeViewState"]
      104 DUPCLOSURE                       R10 K56 [PROTO_27]
      105 SETTABLEKS                       R10 R9 K57 ["openMain"]
      107 DUPCLOSURE                       R10 K58 [PROTO_28]
      108 SETTABLEKS                       R10 R9 K59 ["openPermissions"]
      110 DUPCLOSURE                       R10 K60 [PROTO_29]
      111 SETTABLEKS                       R10 R9 K61 ["getPermissionFailures"]
      113 DUPCLOSURE                       R10 K62 [PROTO_30]
      114 SETTABLEKS                       R10 R9 K63 ["setPermissionFailures"]
      116 DUPCLOSURE                       R10 K64 [PROTO_31]
      117 SETTABLEKS                       R10 R9 K65 ["viewInExplorer"]
      119 DUPCLOSURE                       R10 K66 [PROTO_32]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R10 R9 K67 ["openInBrowser"]
      124 DUPCLOSURE                       R10 K68 [PROTO_33]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R10 R9 K69 ["openLearnPage"]
      129 DUPCLOSURE                       R10 K70 [PROTO_34]
      130 SETTABLEKS                       R10 R9 K71 ["_containsReleventPermissionFailure"]
      132 DUPCLOSURE                       R10 K72 [PROTO_35]
      133 SETTABLEKS                       R10 R9 K73 ["exportRequested"]
      135 DUPCLOSURE                       R10 K74 [PROTO_36]
      136 SETTABLEKS                       R10 R9 K75 ["triggerFilePathSelection"]
      138 DUPCLOSURE                       R10 K76 [PROTO_37]
      139 SETTABLEKS                       R10 R9 K77 ["export"]
      141 DUPCLOSURE                       R10 K78 [PROTO_38]
      142 SETTABLEKS                       R10 R9 K79 ["showFinishedPage"]
      144 DUPCLOSURE                       R10 K80 [PROTO_39]
      145 SETTABLEKS                       R10 R9 K81 ["closeExport"]
      147 DUPCLOSURE                       R10 K82 [PROTO_40]
      148 SETTABLEKS                       R10 R9 K83 ["endExport"]
      150 DUPCLOSURE                       R10 K84 [PROTO_41]
      151 SETTABLEKS                       R10 R9 K85 ["destroy"]
      153 RETURN                           R9 1
