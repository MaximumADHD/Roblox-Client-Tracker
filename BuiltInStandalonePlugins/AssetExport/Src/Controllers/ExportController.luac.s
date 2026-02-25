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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+33]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_cagesInProgress"]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["isExportReady"]
       10 CALL                             R0 1 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["_settings"]
       17 NAMECALL                         R0 R0 K3 ["formatSettings"]
       19 CALL                             R0 2 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K4 ["_plugin"]
       23 LOADK                            R3 K5 ["OnShouldStartExport"]
       24 GETUPVAL                         R4 1
       25 NAMECALL                         R4 R4 K6 ["getOnlySelection"]
       27 CALL                             R4 1 1
       28 MOVE                             R5 R0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K7 ["_fileName"]
       32 NAMECALL                         R1 R1 K8 ["Invoke"]
       34 CALL                             R1 5 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 2
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K2 ["_settings"]
       40 NAMECALL                         R0 R0 K3 ["formatSettings"]
       42 CALL                             R0 2 1
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R1 R2 K4 ["_plugin"]
       46 LOADK                            R3 K5 ["OnShouldStartExport"]
       47 GETUPVAL                         R4 1
       48 NAMECALL                         R4 R4 K6 ["getOnlySelection"]
       50 CALL                             R4 1 1
       51 MOVE                             R5 R0
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R6 R7 K7 ["_fileName"]
       55 NAMECALL                         R1 R1 K8 ["Invoke"]
       57 CALL                             R1 5 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_attachmentsInProgress"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["isExportReady"]
        7 CALL                             R0 1 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["_settings"]
       14 NAMECALL                         R0 R0 K3 ["formatSettings"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K4 ["_plugin"]
       20 LOADK                            R3 K5 ["OnShouldStartExport"]
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K6 ["getOnlySelection"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R0
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K7 ["_fileName"]
       29 NAMECALL                         R1 R1 K8 ["Invoke"]
       31 CALL                             R1 5 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["export"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_cagesDeletionInProgress"]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["checkCleanupStatus"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K2 ["_canceled"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 1
       17 NAMECALL                         R0 R0 K3 ["endExport"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 1
       22 NAMECALL                         R0 R0 K4 ["showFinishedPage"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_attachmentsDeletionInProgress"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["checkCleanupStatus"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_exportSuccess"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["cleanupExport"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["_plugin"]
       21 LOADK                            R2 K5 ["OnDestroyCageParts"]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K6 ["getOnlySelection"]
       25 CALL                             R3 1 -1
       26 NAMECALL                         R0 R0 K7 ["Invoke"]
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 0
       31 NAMECALL                         R0 R0 K8 ["showFinishedPage"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_exportSuccess"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["cleanupExport"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["_plugin"]
       21 LOADK                            R2 K5 ["OnDestroyCageParts"]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K6 ["getOnlySelection"]
       25 CALL                             R3 1 -1
       26 NAMECALL                         R0 R0 K7 ["Invoke"]
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 0
       31 NAMECALL                         R0 R0 K8 ["showFinishedPage"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_canceled"]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["cleanupExport"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K4 ["_plugin"]
       21 LOADK                            R2 K5 ["OnDestroyCageParts"]
       22 GETUPVAL                         R3 0
       23 NAMECALL                         R3 R3 K6 ["getOnlySelection"]
       25 CALL                             R3 1 -1
       26 NAMECALL                         R0 R0 K7 ["Invoke"]
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 0
       31 NAMECALL                         R0 R0 K8 ["endExport"]
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["endExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R2 K23 [{"_viewState", "_exportEnabled", "_exportProcessing", "_settings", "_settingEvents", "_onlySelection", "_plugin", "_permissionFailures", "_fileName", "_connections", "_permissionsReady", "_canceled", "_exportSuccess", "_cagesInProgress", "_attachmentsInProgress", "_cagesDeletionInProgress", "_attachmentsDeletionInProgress", "onViewStateChanged", "onPermissionLoadingChanged", "onPermissionFailuresChanged", "onExportEnabledChanged", "onExportProcessingChanged", "onPermissionsReadyChanged"}]
        1 LOADK                            R3 K24 ["Main"]
        2 SETTABLEKS                       R3 R2 K0 ["_viewState"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["_exportEnabled"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["_exportProcessing"]
       10 DUPTABLE                         R3 K29 [{"skinning", "textures", "attachments", "cages"}]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K25 ["skinning"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K26 ["textures"]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K27 ["attachments"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K28 ["cages"]
       23 SETTABLEKS                       R3 R2 K3 ["_settings"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K4 ["_settingEvents"]
       29 LOADB                            R3 0
       30 SETTABLEKS                       R3 R2 K5 ["_onlySelection"]
       32 SETTABLEKS                       R0 R2 K6 ["_plugin"]
       34 NEWTABLE                         R3 0 0
       36 SETTABLEKS                       R3 R2 K7 ["_permissionFailures"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K8 ["_fileName"]
       41 NEWTABLE                         R3 0 0
       43 SETTABLEKS                       R3 R2 K9 ["_connections"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K10 ["_permissionsReady"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K11 ["_canceled"]
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R2 K12 ["_exportSuccess"]
       54 LOADB                            R3 0
       55 SETTABLEKS                       R3 R2 K13 ["_cagesInProgress"]
       57 LOADB                            R3 0
       58 SETTABLEKS                       R3 R2 K14 ["_attachmentsInProgress"]
       60 LOADB                            R3 0
       61 SETTABLEKS                       R3 R2 K15 ["_cagesDeletionInProgress"]
       63 LOADB                            R3 0
       64 SETTABLEKS                       R3 R2 K16 ["_attachmentsDeletionInProgress"]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R3 R4 K30 ["new"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K17 ["onViewStateChanged"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K30 ["new"]
       75 CALL                             R3 0 1
       76 SETTABLEKS                       R3 R2 K18 ["onPermissionLoadingChanged"]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R3 R4 K30 ["new"]
       81 CALL                             R3 0 1
       82 SETTABLEKS                       R3 R2 K19 ["onPermissionFailuresChanged"]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R3 R4 K30 ["new"]
       87 CALL                             R3 0 1
       88 SETTABLEKS                       R3 R2 K20 ["onExportEnabledChanged"]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R3 R4 K30 ["new"]
       93 CALL                             R3 0 1
       94 SETTABLEKS                       R3 R2 K21 ["onExportProcessingChanged"]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R3 R4 K30 ["new"]
       99 CALL                             R3 0 1
      100 SETTABLEKS                       R3 R2 K22 ["onPermissionsReadyChanged"]
      102 GETTABLEKS                       R3 R2 K3 ["_settings"]
      104 LOADNIL                          R4
      105 LOADNIL                          R5
      106 FORGPREP                         R3
      107 GETTABLEKS                       R8 R2 K4 ["_settingEvents"]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R9 R10 K30 ["new"]
      112 CALL                             R9 0 1
      113 SETTABLE                         R9 R8 R6
      114 FORGLOOP                         R3 2 ; [-8]
      116 GETUPVAL                         R5 1
      117 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      119 MOVE                             R4 R2
      120 GETIMPORT                        R3 K32 [setmetatable]
      122 CALL                             R3 2 0
      123 GETTABLEKS                       R4 R2 K9 ["_connections"]
      125 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      127 LOADK                            R7 K33 ["OnExportSelectionActionActivated"]
      128 NEWCLOSURE                       R8 P0
      129 CAPTURE                          VAL R2
      130 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      132 CALL                             R5 3 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R3 K37 [table.insert]
      136 CALL                             R3 -1 0
      137 GETTABLEKS                       R4 R2 K9 ["_connections"]
      139 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      141 LOADK                            R7 K38 ["OnExportPlaceActionActivated"]
      142 NEWCLOSURE                       R8 P1
      143 CAPTURE                          VAL R2
      144 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      146 CALL                             R5 3 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R3 K37 [table.insert]
      150 CALL                             R3 -1 0
      151 GETTABLEKS                       R4 R2 K9 ["_connections"]
      153 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      155 LOADK                            R7 K39 ["OnCreateCagesSucceeded"]
      156 NEWCLOSURE                       R8 P2
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          VAL R2
      159 CAPTURE                          UPVAL U1
      160 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      162 CALL                             R5 3 -1
      163 FASTCALL                         TABLE_INSERT ; [+2]
      164 GETIMPORT                        R3 K37 [table.insert]
      166 CALL                             R3 -1 0
      167 GETUPVAL                         R3 2
      168 CALL                             R3 0 1
      169 JUMPIFNOT                        R3 ; [+15]
      170 GETTABLEKS                       R4 R2 K9 ["_connections"]
      172 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      174 LOADK                            R7 K40 ["OnCreateAttachmentsSucceeded"]
      175 NEWCLOSURE                       R8 P3
      176 CAPTURE                          VAL R2
      177 CAPTURE                          UPVAL U1
      178 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      180 CALL                             R5 3 -1
      181 FASTCALL                         TABLE_INSERT ; [+2]
      182 GETIMPORT                        R3 K37 [table.insert]
      184 CALL                             R3 -1 0
      185 GETTABLEKS                       R4 R2 K9 ["_connections"]
      187 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      189 LOADK                            R7 K41 ["OnExportFileNameInputted"]
      190 NEWCLOSURE                       R8 P4
      191 CAPTURE                          VAL R2
      192 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      194 CALL                             R5 3 -1
      195 FASTCALL                         TABLE_INSERT ; [+2]
      196 GETIMPORT                        R3 K37 [table.insert]
      198 CALL                             R3 -1 0
      199 GETTABLEKS                       R4 R2 K9 ["_connections"]
      201 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      203 LOADK                            R7 K42 ["OnDestroyCagesSucceeded"]
      204 NEWCLOSURE                       R8 P5
      205 CAPTURE                          UPVAL U2
      206 CAPTURE                          VAL R2
      207 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      209 CALL                             R5 3 -1
      210 FASTCALL                         TABLE_INSERT ; [+2]
      211 GETIMPORT                        R3 K37 [table.insert]
      213 CALL                             R3 -1 0
      214 GETUPVAL                         R3 2
      215 CALL                             R3 0 1
      216 JUMPIFNOT                        R3 ; [+14]
      217 GETTABLEKS                       R4 R2 K9 ["_connections"]
      219 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      221 LOADK                            R7 K43 ["OnDestroyAttachmentsSucceeded"]
      222 NEWCLOSURE                       R8 P6
      223 CAPTURE                          VAL R2
      224 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      226 CALL                             R5 3 -1
      227 FASTCALL                         TABLE_INSERT ; [+2]
      228 GETIMPORT                        R3 K37 [table.insert]
      230 CALL                             R3 -1 0
      231 GETTABLEKS                       R4 R2 K9 ["_connections"]
      233 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      235 LOADK                            R7 K44 ["OnExportCompleteSuccess"]
      236 NEWCLOSURE                       R8 P7
      237 CAPTURE                          VAL R2
      238 CAPTURE                          UPVAL U2
      239 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      241 CALL                             R5 3 -1
      242 FASTCALL                         TABLE_INSERT ; [+2]
      243 GETIMPORT                        R3 K37 [table.insert]
      245 CALL                             R3 -1 0
      246 GETTABLEKS                       R4 R2 K9 ["_connections"]
      248 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      250 LOADK                            R7 K45 ["OnExportErrored"]
      251 NEWCLOSURE                       R8 P8
      252 CAPTURE                          VAL R2
      253 CAPTURE                          UPVAL U2
      254 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      256 CALL                             R5 3 -1
      257 FASTCALL                         TABLE_INSERT ; [+2]
      258 GETIMPORT                        R3 K37 [table.insert]
      260 CALL                             R3 -1 0
      261 GETTABLEKS                       R4 R2 K9 ["_connections"]
      263 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      265 LOADK                            R7 K46 ["OnFileSelectCanceled"]
      266 NEWCLOSURE                       R8 P9
      267 CAPTURE                          VAL R2
      268 CAPTURE                          UPVAL U2
      269 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      271 CALL                             R5 3 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R3 K37 [table.insert]
      275 CALL                             R3 -1 0
      276 GETTABLEKS                       R4 R2 K9 ["_connections"]
      278 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      280 LOADK                            R7 K47 ["OnPermissionCheckComplete"]
      281 NEWCLOSURE                       R8 P10
      282 CAPTURE                          VAL R2
      283 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      285 CALL                             R5 3 -1
      286 FASTCALL                         TABLE_INSERT ; [+2]
      287 GETIMPORT                        R3 K37 [table.insert]
      289 CALL                             R3 -1 0
      290 GETTABLEKS                       R4 R2 K9 ["_connections"]
      292 GETTABLEKS                       R5 R2 K6 ["_plugin"]
      294 LOADK                            R7 K48 ["OnPermissionCheckFailed"]
      295 NEWCLOSURE                       R8 P11
      296 CAPTURE                          VAL R2
      297 NAMECALL                         R5 R5 K34 ["OnInvoke"]
      299 CALL                             R5 3 -1
      300 FASTCALL                         TABLE_INSERT ; [+2]
      301 GETIMPORT                        R3 K37 [table.insert]
      303 CALL                             R3 -1 0
      304 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_14:
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

PROTO_15:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K1 ["_settings"]
        3 GETTABLEKS                       R2 R3 K0 ["cages"]
        5 JUMPIFNOT                        R2 ; [+13]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R0 K2 ["_cagesDeletionInProgress"]
        9 GETTABLEKS                       R2 R0 K3 ["_plugin"]
       11 LOADK                            R4 K4 ["OnDestroyCageParts"]
       12 NAMECALL                         R5 R0 K5 ["getOnlySelection"]
       14 CALL                             R5 1 -1
       15 NAMECALL                         R2 R2 K6 ["Invoke"]
       17 CALL                             R2 -1 0
       18 LOADB                            R1 1
       19 GETTABLEKS                       R3 R0 K1 ["_settings"]
       21 GETTABLEKS                       R2 R3 K7 ["attachments"]
       23 JUMPIFNOT                        R2 ; [+13]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R0 K8 ["_attachmentsDeletionInProgress"]
       27 GETTABLEKS                       R2 R0 K3 ["_plugin"]
       29 LOADK                            R4 K9 ["OnDestroyAttachmentParts"]
       30 NAMECALL                         R5 R0 K5 ["getOnlySelection"]
       32 CALL                             R5 1 -1
       33 NAMECALL                         R2 R2 K6 ["Invoke"]
       35 CALL                             R2 -1 0
       36 LOADB                            R1 1
       37 JUMPIF                           R1 ; [+10]
       38 GETTABLEKS                       R2 R0 K10 ["_canceled"]
       40 JUMPIFNOT                        R2 ; [+4]
       41 NAMECALL                         R2 R0 K11 ["endExport"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0
       45 NAMECALL                         R2 R0 K12 ["showFinishedPage"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_settings"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_settingEvents"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_cagesDeletionInProgress"]
        2 JUMPIF                           R1 ; [+13]
        3 GETTABLEKS                       R1 R0 K1 ["_attachmentsDeletionInProgress"]
        5 JUMPIF                           R1 ; [+10]
        6 GETTABLEKS                       R1 R0 K2 ["_canceled"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 NAMECALL                         R1 R0 K3 ["endExport"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 NAMECALL                         R1 R0 K4 ["showFinishedPage"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_attachmentsInProgress"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R0 K1 ["_cagesInProgress"]
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_canceled"]
        3 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        5 LOADK                            R3 K2 ["OnShouldCancelExport"]
        6 NAMECALL                         R1 R1 K3 ["Invoke"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 NAMECALL                         R1 R0 K4 ["cleanupExport"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K6 ["_settings"]
       18 GETTABLEKS                       R1 R2 K5 ["cages"]
       20 JUMPIFNOT                        R1 ; [+10]
       21 GETTABLEKS                       R1 R0 K1 ["_plugin"]
       23 LOADK                            R3 K7 ["OnDestroyCageParts"]
       24 NAMECALL                         R4 R0 K8 ["getOnlySelection"]
       26 CALL                             R4 1 -1
       27 NAMECALL                         R1 R1 K3 ["Invoke"]
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0
       31 NAMECALL                         R1 R0 K9 ["endExport"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 SETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        6 GETTABLEKS                       R2 R0 K1 ["onPermissionsReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_viewState"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_exportEnabled"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportEnabledChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProcessing"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProcessingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_viewState"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_viewState"]
        6 GETTABLEKS                       R2 R0 K1 ["onViewStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_32:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_33:
        0 LOADK                            R3 K0 ["Permissions"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R1 1

PROTO_35:
        0 SETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["OnViewInExplorer"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["Invoke"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["OpenBrowserWindow"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 NAMECALL                         R1 R0 K0 ["_containsReleventPermissionFailure"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 NAMECALL                         R1 R0 K1 ["triggerFilePathSelection"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R1 R0 K2 ["openPermissions"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_41:
        0 LOADK                            R3 K0 ["SelectFilename"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R1 R0 K2 ["_plugin"]
        6 LOADK                            R3 K3 ["OnShouldSelectFilename"]
        7 NAMECALL                         R1 R1 K4 ["Invoke"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_42:
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
       15 GETUPVAL                         R3 0
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+51]
       18 GETTABLEKS                       R4 R0 K0 ["_settings"]
       20 GETTABLEKS                       R3 R4 K6 ["cages"]
       22 JUMPIF                           R3 ; [+5]
       23 GETTABLEKS                       R4 R0 K0 ["_settings"]
       25 GETTABLEKS                       R3 R4 K7 ["attachments"]
       27 JUMPIFNOT                        R3 ; [+41]
       28 GETTABLEKS                       R4 R0 K0 ["_settings"]
       30 GETTABLEKS                       R3 R4 K6 ["cages"]
       32 SETTABLEKS                       R3 R0 K8 ["_cagesInProgress"]
       34 GETTABLEKS                       R4 R0 K0 ["_settings"]
       36 GETTABLEKS                       R3 R4 K7 ["attachments"]
       38 SETTABLEKS                       R3 R0 K9 ["_attachmentsInProgress"]
       40 GETTABLEKS                       R4 R0 K0 ["_settings"]
       42 GETTABLEKS                       R3 R4 K6 ["cages"]
       44 JUMPIFNOT                        R3 ; [+9]
       45 GETTABLEKS                       R3 R0 K10 ["_plugin"]
       47 LOADK                            R5 K11 ["OnCreateCageParts"]
       48 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
       50 CALL                             R6 1 -1
       51 NAMECALL                         R3 R3 K13 ["Invoke"]
       53 CALL                             R3 -1 0
       54 GETTABLEKS                       R4 R0 K0 ["_settings"]
       56 GETTABLEKS                       R3 R4 K7 ["attachments"]
       58 JUMPIFNOT                        R3 ; [+40]
       59 GETTABLEKS                       R3 R0 K10 ["_plugin"]
       61 LOADK                            R5 K14 ["OnCreateAttachmentParts"]
       62 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
       64 CALL                             R6 1 -1
       65 NAMECALL                         R3 R3 K13 ["Invoke"]
       67 CALL                             R3 -1 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R3 0
       70 CALL                             R3 0 1
       71 JUMPIF                           R3 ; [+15]
       72 GETTABLEKS                       R4 R0 K0 ["_settings"]
       74 GETTABLEKS                       R3 R4 K6 ["cages"]
       76 JUMPIFNOT                        R3 ; [+10]
       77 GETTABLEKS                       R3 R0 K10 ["_plugin"]
       79 LOADK                            R5 K11 ["OnCreateCageParts"]
       80 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
       82 CALL                             R6 1 -1
       83 NAMECALL                         R3 R3 K13 ["Invoke"]
       85 CALL                             R3 -1 0
       86 RETURN                           R0 0
       87 GETTABLEKS                       R3 R0 K10 ["_plugin"]
       89 LOADK                            R5 K15 ["OnShouldStartExport"]
       90 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
       92 CALL                             R6 1 1
       93 MOVE                             R7 R2
       94 GETTABLEKS                       R8 R0 K5 ["_fileName"]
       96 NAMECALL                         R3 R3 K13 ["Invoke"]
       98 CALL                             R3 5 0
       99 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 NAMECALL                         R1 R0 K0 ["endExport"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
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
       31 GETTABLEKS                       R7 R8 K11 ["Flags"]
       33 GETTABLEKS                       R6 R7 K13 ["getFFlagCreateAttachmentsOnAssetDm"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R9 R0 K10 ["Src"]
       40 GETTABLEKS                       R8 R9 K14 ["Util"]
       42 GETTABLEKS                       R7 R8 K15 ["createAssetUrl"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K14 ["Util"]
       47 GETTABLEKS                       R8 R7 K16 ["Signal"]
       49 GETIMPORT                        R9 K18 [game]
       51 LOADK                            R11 K19 ["BrowserService"]
       52 NAMECALL                         R9 R9 K20 ["GetService"]
       54 CALL                             R9 2 1
       55 LOADK                            R12 K21 ["ExportController"]
       56 NAMECALL                         R10 R3 K22 ["extend"]
       58 CALL                             R10 2 1
       59 DUPCLOSURE                       R11 K23 [PROTO_12]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R11 R10 K24 ["new"]
       65 DUPCLOSURE                       R11 K25 [PROTO_13]
       66 CAPTURE                          VAL R10
       67 SETTABLEKS                       R11 R10 K26 ["mock"]
       69 DUPCLOSURE                       R11 K27 [PROTO_14]
       70 SETTABLEKS                       R11 R10 K28 ["formatSettings"]
       72 DUPCLOSURE                       R11 K29 [PROTO_15]
       73 SETTABLEKS                       R11 R10 K30 ["cleanupExport"]
       75 DUPCLOSURE                       R11 K31 [PROTO_16]
       76 SETTABLEKS                       R11 R10 K32 ["getSettingValue"]
       78 DUPCLOSURE                       R11 K33 [PROTO_17]
       79 SETTABLEKS                       R11 R10 K34 ["getSettingEvent"]
       81 DUPCLOSURE                       R11 K35 [PROTO_18]
       82 SETTABLEKS                       R11 R10 K36 ["checkCleanupStatus"]
       84 DUPCLOSURE                       R11 K37 [PROTO_19]
       85 SETTABLEKS                       R11 R10 K38 ["isExportReady"]
       87 DUPCLOSURE                       R11 K39 [PROTO_20]
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R11 R10 K40 ["cancelExport"]
       91 DUPCLOSURE                       R11 K41 [PROTO_21]
       92 SETTABLEKS                       R11 R10 K42 ["toggleSetting"]
       94 DUPCLOSURE                       R11 K43 [PROTO_22]
       95 SETTABLEKS                       R11 R10 K44 ["setOnlySelection"]
       97 DUPCLOSURE                       R11 K45 [PROTO_23]
       98 SETTABLEKS                       R11 R10 K46 ["getOnlySelection"]
      100 DUPCLOSURE                       R11 K47 [PROTO_24]
      101 SETTABLEKS                       R11 R10 K48 ["setPermissionsReady"]
      103 DUPCLOSURE                       R11 K49 [PROTO_25]
      104 SETTABLEKS                       R11 R10 K50 ["getPermissionsReady"]
      106 DUPCLOSURE                       R11 K51 [PROTO_26]
      107 SETTABLEKS                       R11 R10 K52 ["getViewState"]
      109 DUPCLOSURE                       R11 K53 [PROTO_27]
      110 SETTABLEKS                       R11 R10 K54 ["getExportEnabled"]
      112 DUPCLOSURE                       R11 K55 [PROTO_28]
      113 SETTABLEKS                       R11 R10 K56 ["setExportEnabled"]
      115 DUPCLOSURE                       R11 K57 [PROTO_29]
      116 SETTABLEKS                       R11 R10 K58 ["getExportProcessing"]
      118 DUPCLOSURE                       R11 K59 [PROTO_30]
      119 SETTABLEKS                       R11 R10 K60 ["setExportProcessing"]
      121 DUPCLOSURE                       R11 K61 [PROTO_31]
      122 SETTABLEKS                       R11 R10 K62 ["_changeViewState"]
      124 DUPCLOSURE                       R11 K63 [PROTO_32]
      125 SETTABLEKS                       R11 R10 K64 ["openMain"]
      127 DUPCLOSURE                       R11 K65 [PROTO_33]
      128 SETTABLEKS                       R11 R10 K66 ["openPermissions"]
      130 DUPCLOSURE                       R11 K67 [PROTO_34]
      131 SETTABLEKS                       R11 R10 K68 ["getPermissionFailures"]
      133 DUPCLOSURE                       R11 K69 [PROTO_35]
      134 SETTABLEKS                       R11 R10 K70 ["setPermissionFailures"]
      136 DUPCLOSURE                       R11 K71 [PROTO_36]
      137 SETTABLEKS                       R11 R10 K72 ["viewInExplorer"]
      139 DUPCLOSURE                       R11 K73 [PROTO_37]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R11 R10 K74 ["openInBrowser"]
      144 DUPCLOSURE                       R11 K75 [PROTO_38]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R4
      147 SETTABLEKS                       R11 R10 K76 ["openLearnPage"]
      149 DUPCLOSURE                       R11 K77 [PROTO_39]
      150 SETTABLEKS                       R11 R10 K78 ["_containsReleventPermissionFailure"]
      152 DUPCLOSURE                       R11 K79 [PROTO_40]
      153 SETTABLEKS                       R11 R10 K80 ["exportRequested"]
      155 DUPCLOSURE                       R11 K81 [PROTO_41]
      156 SETTABLEKS                       R11 R10 K82 ["triggerFilePathSelection"]
      158 DUPCLOSURE                       R11 K83 [PROTO_42]
      159 CAPTURE                          VAL R5
      160 SETTABLEKS                       R11 R10 K84 ["export"]
      162 DUPCLOSURE                       R11 K85 [PROTO_43]
      163 SETTABLEKS                       R11 R10 K86 ["showFinishedPage"]
      165 DUPCLOSURE                       R11 K87 [PROTO_44]
      166 SETTABLEKS                       R11 R10 K88 ["closeExport"]
      168 DUPCLOSURE                       R11 K89 [PROTO_45]
      169 SETTABLEKS                       R11 R10 K90 ["endExport"]
      171 DUPCLOSURE                       R11 K91 [PROTO_46]
      172 SETTABLEKS                       R11 R10 K92 ["destroy"]
      174 RETURN                           R10 1
