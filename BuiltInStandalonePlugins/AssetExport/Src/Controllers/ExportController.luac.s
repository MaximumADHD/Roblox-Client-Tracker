PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["setOnlySelection"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K1 ["setExportEnabled"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["_plugin"]
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
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["_plugin"]
       13 LOADK                            R2 K3 ["OnShouldStartPermissions"]
       14 LOADB                            R3 0
       15 NAMECALL                         R0 R0 K4 ["Invoke"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+48]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_cagesInProgress"]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["isExportReady"]
       10 CALL                             R0 1 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+12]
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K2 ["_settings"]
       21 NAMECALL                         R2 R2 K3 ["formatSettings"]
       23 CALL                             R2 2 -1
       24 NAMECALL                         R0 R0 K4 ["_dispatchExport"]
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K2 ["_settings"]
       32 NAMECALL                         R0 R0 K3 ["formatSettings"]
       34 CALL                             R0 2 1
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       38 LOADK                            R3 K6 ["OnShouldStartExport"]
       39 GETUPVAL                         R4 1
       40 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R0
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       47 NAMECALL                         R1 R1 K9 ["Invoke"]
       49 CALL                             R1 5 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R0 3
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K2 ["_settings"]
       55 NAMECALL                         R0 R0 K3 ["formatSettings"]
       57 CALL                             R0 2 1
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       61 LOADK                            R3 K6 ["OnShouldStartExport"]
       62 GETUPVAL                         R4 1
       63 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       65 CALL                             R4 1 1
       66 MOVE                             R5 R0
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       70 NAMECALL                         R1 R1 K9 ["Invoke"]
       72 CALL                             R1 5 0
       73 RETURN                           R0 0

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
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+12]
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["_settings"]
       18 NAMECALL                         R2 R2 K3 ["formatSettings"]
       20 CALL                             R2 2 -1
       21 NAMECALL                         R0 R0 K4 ["_dispatchExport"]
       23 CALL                             R0 -1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K2 ["_settings"]
       29 NAMECALL                         R0 R0 K3 ["formatSettings"]
       31 CALL                             R0 2 1
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       35 LOADK                            R3 K6 ["OnShouldStartExport"]
       36 GETUPVAL                         R4 0
       37 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       39 CALL                             R4 1 1
       40 MOVE                             R5 R0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       44 NAMECALL                         R1 R1 K9 ["Invoke"]
       46 CALL                             R1 5 0
       47 RETURN                           R0 0

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
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["_canceled"]
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
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["_plugin"]
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
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["_plugin"]
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
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["_settings"]
       15 GETTABLEKS                       R0 R1 K2 ["cages"]
       17 JUMPIFNOT                        R0 ; [+12]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["_plugin"]
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
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onPermissionFailuresChanged"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["_permissionFailures"]
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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_isAnimationExportPending"]
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R2 K27 [{[1] = "Main", ["_exportEnabled"] = False, ["_exportProcessing"] = False, ["_settings"], ["_settingEvents"], ["_onlySelection"] = False, ["_plugin"], ["_permissionFailures"], ["_fileName"] = , ["_connections"], ["_permissionsReady"] = False, ["_canceled"] = False, ["_exportSuccess"] = False, ["_cagesInProgress"] = False, ["_attachmentsInProgress"] = False, ["_cagesDeletionInProgress"] = False, ["_attachmentsDeletionInProgress"] = False, ["_isAnimationExportPending"] = False, ["onViewStateChanged"], ["onPermissionLoadingChanged"], ["onPermissionFailuresChanged"], ["onExportEnabledChanged"], ["onExportProcessingChanged"], ["onPermissionsReadyChanged"]}]
        1 DUPTABLE                         R3 K33 [{["skinning"] = True, ["textures"] = True, ["attachments"] = True, ["cages"] = False}]
        2 SETTABLEKS                       R3 R2 K5 ["_settings"]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K6 ["_settingEvents"]
        8 SETTABLEKS                       R0 R2 K8 ["_plugin"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K9 ["_permissionFailures"]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K12 ["_connections"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K34 ["new"]
       21 CALL                             R3 0 1
       22 SETTABLEKS                       R3 R2 K21 ["onViewStateChanged"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K34 ["new"]
       27 CALL                             R3 0 1
       28 SETTABLEKS                       R3 R2 K22 ["onPermissionLoadingChanged"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K34 ["new"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K23 ["onPermissionFailuresChanged"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K34 ["new"]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K24 ["onExportEnabledChanged"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K34 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K25 ["onExportProcessingChanged"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K34 ["new"]
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K26 ["onPermissionsReadyChanged"]
       54 GETTABLEKS                       R3 R2 K5 ["_settings"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 GETTABLEKS                       R8 R2 K6 ["_settingEvents"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K34 ["new"]
       64 CALL                             R9 0 1
       65 SETTABLE                         R9 R8 R6
       66 FORGLOOP                         R3 2 ; [-8]
       68 GETUPVAL                         R5 1
       69 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       71 MOVE                             R4 R2
       72 GETIMPORT                        R3 K36 [setmetatable]
       74 CALL                             R3 2 0
       75 GETTABLEKS                       R4 R2 K12 ["_connections"]
       77 GETTABLEKS                       R5 R2 K8 ["_plugin"]
       79 LOADK                            R7 K37 ["OnExportSelectionActionActivated"]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R2
       82 NAMECALL                         R5 R5 K38 ["OnInvoke"]
       84 CALL                             R5 3 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R3 K41 [table.insert]
       88 CALL                             R3 -1 0
       89 GETTABLEKS                       R4 R2 K12 ["_connections"]
       91 GETTABLEKS                       R5 R2 K8 ["_plugin"]
       93 LOADK                            R7 K42 ["OnExportPlaceActionActivated"]
       94 NEWCLOSURE                       R8 P1
       95 CAPTURE                          VAL R2
       96 NAMECALL                         R5 R5 K38 ["OnInvoke"]
       98 CALL                             R5 3 -1
       99 FASTCALL                         TABLE_INSERT ; [+2]
      100 GETIMPORT                        R3 K41 [table.insert]
      102 CALL                             R3 -1 0
      103 GETTABLEKS                       R4 R2 K12 ["_connections"]
      105 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      107 LOADK                            R7 K43 ["OnCreateCagesSucceeded"]
      108 NEWCLOSURE                       R8 P2
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          VAL R2
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U1
      113 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      115 CALL                             R5 3 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R3 K41 [table.insert]
      119 CALL                             R3 -1 0
      120 GETUPVAL                         R3 2
      121 CALL                             R3 0 1
      122 JUMPIFNOT                        R3 ; [+16]
      123 GETTABLEKS                       R4 R2 K12 ["_connections"]
      125 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      127 LOADK                            R7 K44 ["OnCreateAttachmentsSucceeded"]
      128 NEWCLOSURE                       R8 P3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          UPVAL U3
      131 CAPTURE                          UPVAL U1
      132 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      134 CALL                             R5 3 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R3 K41 [table.insert]
      138 CALL                             R3 -1 0
      139 GETTABLEKS                       R4 R2 K12 ["_connections"]
      141 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      143 LOADK                            R7 K45 ["OnExportFileNameInputted"]
      144 NEWCLOSURE                       R8 P4
      145 CAPTURE                          VAL R2
      146 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      148 CALL                             R5 3 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R3 K41 [table.insert]
      152 CALL                             R3 -1 0
      153 GETTABLEKS                       R4 R2 K12 ["_connections"]
      155 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      157 LOADK                            R7 K46 ["OnDestroyCagesSucceeded"]
      158 NEWCLOSURE                       R8 P5
      159 CAPTURE                          UPVAL U2
      160 CAPTURE                          VAL R2
      161 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      163 CALL                             R5 3 -1
      164 FASTCALL                         TABLE_INSERT ; [+2]
      165 GETIMPORT                        R3 K41 [table.insert]
      167 CALL                             R3 -1 0
      168 GETUPVAL                         R3 2
      169 CALL                             R3 0 1
      170 JUMPIFNOT                        R3 ; [+14]
      171 GETTABLEKS                       R4 R2 K12 ["_connections"]
      173 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      175 LOADK                            R7 K47 ["OnDestroyAttachmentsSucceeded"]
      176 NEWCLOSURE                       R8 P6
      177 CAPTURE                          VAL R2
      178 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      180 CALL                             R5 3 -1
      181 FASTCALL                         TABLE_INSERT ; [+2]
      182 GETIMPORT                        R3 K41 [table.insert]
      184 CALL                             R3 -1 0
      185 GETTABLEKS                       R4 R2 K12 ["_connections"]
      187 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      189 LOADK                            R7 K48 ["OnExportCompleteSuccess"]
      190 NEWCLOSURE                       R8 P7
      191 CAPTURE                          VAL R2
      192 CAPTURE                          UPVAL U2
      193 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      195 CALL                             R5 3 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R3 K41 [table.insert]
      199 CALL                             R3 -1 0
      200 GETTABLEKS                       R4 R2 K12 ["_connections"]
      202 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      204 LOADK                            R7 K49 ["OnExportErrored"]
      205 NEWCLOSURE                       R8 P8
      206 CAPTURE                          VAL R2
      207 CAPTURE                          UPVAL U2
      208 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      210 CALL                             R5 3 -1
      211 FASTCALL                         TABLE_INSERT ; [+2]
      212 GETIMPORT                        R3 K41 [table.insert]
      214 CALL                             R3 -1 0
      215 GETTABLEKS                       R4 R2 K12 ["_connections"]
      217 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      219 LOADK                            R7 K50 ["OnFileSelectCanceled"]
      220 NEWCLOSURE                       R8 P9
      221 CAPTURE                          VAL R2
      222 CAPTURE                          UPVAL U2
      223 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      225 CALL                             R5 3 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R3 K41 [table.insert]
      229 CALL                             R3 -1 0
      230 GETTABLEKS                       R4 R2 K12 ["_connections"]
      232 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      234 LOADK                            R7 K51 ["OnPermissionCheckComplete"]
      235 NEWCLOSURE                       R8 P10
      236 CAPTURE                          VAL R2
      237 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      239 CALL                             R5 3 -1
      240 FASTCALL                         TABLE_INSERT ; [+2]
      241 GETIMPORT                        R3 K41 [table.insert]
      243 CALL                             R3 -1 0
      244 GETTABLEKS                       R4 R2 K12 ["_connections"]
      246 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      248 LOADK                            R7 K52 ["OnPermissionCheckFailed"]
      249 NEWCLOSURE                       R8 P11
      250 CAPTURE                          VAL R2
      251 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      253 CALL                             R5 3 -1
      254 FASTCALL                         TABLE_INSERT ; [+2]
      255 GETIMPORT                        R3 K41 [table.insert]
      257 CALL                             R3 -1 0
      258 GETUPVAL                         R3 4
      259 CALL                             R3 0 1
      260 JUMPIFNOT                        R3 ; [+14]
      261 GETTABLEKS                       R4 R2 K12 ["_connections"]
      263 GETTABLEKS                       R5 R2 K8 ["_plugin"]
      265 LOADK                            R7 K53 ["OnAnimationExportPending"]
      266 NEWCLOSURE                       R8 P12
      267 CAPTURE                          VAL R2
      268 NAMECALL                         R5 R5 K38 ["OnInvoke"]
      270 CALL                             R5 3 -1
      271 FASTCALL                         TABLE_INSERT ; [+2]
      272 GETIMPORT                        R3 K41 [table.insert]
      274 CALL                             R3 -1 0
      275 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_settings"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_settingEvents"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_attachmentsInProgress"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R0 K1 ["_cagesInProgress"]
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 SETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        6 GETTABLEKS                       R2 R0 K1 ["onPermissionsReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_viewState"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        2 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["_exportEnabled"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportEnabledChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        2 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProcessing"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProcessingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_viewState"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_viewState"]
        6 GETTABLEKS                       R2 R0 K1 ["onViewStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_33:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_34:
        0 LOADK                            R3 K0 ["Permissions"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R1 1

PROTO_36:
        0 SETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["OnViewInExplorer"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["Invoke"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["OpenBrowserWindow"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["assetType"]
        7 JUMPIFEQKS                       R6 K2 ["Mesh"] ; [+7]
        9 GETTABLEKS                       R6 R0 K3 ["_settings"]
       11 GETTABLEKS                       R6 R6 K4 ["textures"]
       13 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-13]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_41:
        0 NAMECALL                         R1 R0 K0 ["_containsReleventPermissionFailure"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 NAMECALL                         R1 R0 K1 ["triggerFilePathSelection"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 NAMECALL                         R1 R0 K2 ["openPermissions"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_42:
        0 LOADK                            R3 K0 ["SelectFilename"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R1 R0 K2 ["_plugin"]
        6 LOADK                            R3 K3 ["OnShouldSelectFilename"]
        7 NAMECALL                         R1 R1 K4 ["Invoke"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+16]
        3 GETTABLEKS                       R2 R0 K0 ["_isAnimationExportPending"]
        5 JUMPIFNOT                        R2 ; [+13]
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R0 K0 ["_isAnimationExportPending"]
        9 GETTABLEKS                       R2 R0 K1 ["_plugin"]
       11 LOADK                            R4 K2 ["OnShouldStartAnimationExport"]
       12 MOVE                             R5 R1
       13 GETTABLEKS                       R6 R0 K3 ["_fileName"]
       15 NAMECALL                         R2 R2 K4 ["Invoke"]
       17 CALL                             R2 4 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R0 K1 ["_plugin"]
       21 LOADK                            R4 K5 ["OnShouldStartExport"]
       22 NAMECALL                         R5 R0 K6 ["getOnlySelection"]
       24 CALL                             R5 1 1
       25 MOVE                             R6 R1
       26 GETTABLEKS                       R7 R0 K3 ["_fileName"]
       28 NAMECALL                         R2 R2 K4 ["Invoke"]
       30 CALL                             R2 5 0
       31 RETURN                           R0 0

PROTO_44:
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
       58 JUMPIFNOT                        R3 ; [+48]
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
       87 GETUPVAL                         R3 1
       88 CALL                             R3 0 1
       89 JUMPIFNOT                        R3 ; [+5]
       90 MOVE                             R5 R2
       91 NAMECALL                         R3 R0 K15 ["_dispatchExport"]
       93 CALL                             R3 2 0
       94 RETURN                           R0 0
       95 GETTABLEKS                       R3 R0 K10 ["_plugin"]
       97 LOADK                            R5 K16 ["OnShouldStartExport"]
       98 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
      100 CALL                             R6 1 1
      101 MOVE                             R7 R2
      102 GETTABLEKS                       R8 R0 K5 ["_fileName"]
      104 NAMECALL                         R3 R3 K13 ["Invoke"]
      106 CALL                             R3 5 0
      107 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
        0 NAMECALL                         R1 R0 K0 ["endExport"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_47:
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
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K8 ["_isAnimationExportPending"]
       29 RETURN                           R0 0

PROTO_48:
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Flags"]
       24 GETTABLEKS                       R5 R5 K12 ["getFStringPermissionsPage"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Flags"]
       33 GETTABLEKS                       R6 R6 K13 ["getFFlagCreateAttachmentsOnAssetDm"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K11 ["Flags"]
       42 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimationExportSupport"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K10 ["Src"]
       49 GETTABLEKS                       R8 R8 K11 ["Flags"]
       51 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimationExportUI"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K10 ["Src"]
       58 GETTABLEKS                       R9 R9 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["createAssetUrl"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K16 ["Util"]
       65 GETTABLEKS                       R10 R9 K18 ["Signal"]
       67 GETIMPORT                        R11 K20 [game]
       69 LOADK                            R13 K21 ["BrowserService"]
       70 NAMECALL                         R11 R11 K22 ["GetService"]
       72 CALL                             R11 2 1
       73 LOADK                            R14 K23 ["ExportController"]
       74 NAMECALL                         R12 R3 K24 ["extend"]
       76 CALL                             R12 2 1
       77 DUPCLOSURE                       R13 K25 [PROTO_13]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R13 R12 K26 ["new"]
       85 DUPCLOSURE                       R13 K27 [PROTO_14]
       86 CAPTURE                          VAL R12
       87 SETTABLEKS                       R13 R12 K28 ["mock"]
       89 DUPCLOSURE                       R13 K29 [PROTO_15]
       90 SETTABLEKS                       R13 R12 K30 ["formatSettings"]
       92 DUPCLOSURE                       R13 K31 [PROTO_16]
       93 SETTABLEKS                       R13 R12 K32 ["cleanupExport"]
       95 DUPCLOSURE                       R13 K33 [PROTO_17]
       96 SETTABLEKS                       R13 R12 K34 ["getSettingValue"]
       98 DUPCLOSURE                       R13 K35 [PROTO_18]
       99 SETTABLEKS                       R13 R12 K36 ["getSettingEvent"]
      101 DUPCLOSURE                       R13 K37 [PROTO_19]
      102 SETTABLEKS                       R13 R12 K38 ["checkCleanupStatus"]
      104 DUPCLOSURE                       R13 K39 [PROTO_20]
      105 SETTABLEKS                       R13 R12 K40 ["isExportReady"]
      107 DUPCLOSURE                       R13 K41 [PROTO_21]
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R13 R12 K42 ["cancelExport"]
      111 DUPCLOSURE                       R13 K43 [PROTO_22]
      112 SETTABLEKS                       R13 R12 K44 ["toggleSetting"]
      114 DUPCLOSURE                       R13 K45 [PROTO_23]
      115 SETTABLEKS                       R13 R12 K46 ["setOnlySelection"]
      117 DUPCLOSURE                       R13 K47 [PROTO_24]
      118 SETTABLEKS                       R13 R12 K48 ["getOnlySelection"]
      120 DUPCLOSURE                       R13 K49 [PROTO_25]
      121 SETTABLEKS                       R13 R12 K50 ["setPermissionsReady"]
      123 DUPCLOSURE                       R13 K51 [PROTO_26]
      124 SETTABLEKS                       R13 R12 K52 ["getPermissionsReady"]
      126 DUPCLOSURE                       R13 K53 [PROTO_27]
      127 SETTABLEKS                       R13 R12 K54 ["getViewState"]
      129 DUPCLOSURE                       R13 K55 [PROTO_28]
      130 SETTABLEKS                       R13 R12 K56 ["getExportEnabled"]
      132 DUPCLOSURE                       R13 K57 [PROTO_29]
      133 SETTABLEKS                       R13 R12 K58 ["setExportEnabled"]
      135 DUPCLOSURE                       R13 K59 [PROTO_30]
      136 SETTABLEKS                       R13 R12 K60 ["getExportProcessing"]
      138 DUPCLOSURE                       R13 K61 [PROTO_31]
      139 SETTABLEKS                       R13 R12 K62 ["setExportProcessing"]
      141 DUPCLOSURE                       R13 K63 [PROTO_32]
      142 SETTABLEKS                       R13 R12 K64 ["_changeViewState"]
      144 DUPCLOSURE                       R13 K65 [PROTO_33]
      145 SETTABLEKS                       R13 R12 K66 ["openMain"]
      147 DUPCLOSURE                       R13 K67 [PROTO_34]
      148 SETTABLEKS                       R13 R12 K68 ["openPermissions"]
      150 DUPCLOSURE                       R13 K69 [PROTO_35]
      151 SETTABLEKS                       R13 R12 K70 ["getPermissionFailures"]
      153 DUPCLOSURE                       R13 K71 [PROTO_36]
      154 SETTABLEKS                       R13 R12 K72 ["setPermissionFailures"]
      156 DUPCLOSURE                       R13 K73 [PROTO_37]
      157 SETTABLEKS                       R13 R12 K74 ["viewInExplorer"]
      159 DUPCLOSURE                       R13 K75 [PROTO_38]
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R13 R12 K76 ["openInBrowser"]
      164 DUPCLOSURE                       R13 K77 [PROTO_39]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R4
      167 SETTABLEKS                       R13 R12 K78 ["openLearnPage"]
      169 DUPCLOSURE                       R13 K79 [PROTO_40]
      170 SETTABLEKS                       R13 R12 K80 ["_containsReleventPermissionFailure"]
      172 DUPCLOSURE                       R13 K81 [PROTO_41]
      173 SETTABLEKS                       R13 R12 K82 ["exportRequested"]
      175 DUPCLOSURE                       R13 K83 [PROTO_42]
      176 SETTABLEKS                       R13 R12 K84 ["triggerFilePathSelection"]
      178 DUPCLOSURE                       R13 K85 [PROTO_43]
      179 CAPTURE                          VAL R6
      180 SETTABLEKS                       R13 R12 K86 ["_dispatchExport"]
      182 DUPCLOSURE                       R13 K87 [PROTO_44]
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R6
      185 SETTABLEKS                       R13 R12 K88 ["export"]
      187 DUPCLOSURE                       R13 K89 [PROTO_45]
      188 SETTABLEKS                       R13 R12 K90 ["showFinishedPage"]
      190 DUPCLOSURE                       R13 K91 [PROTO_46]
      191 SETTABLEKS                       R13 R12 K92 ["closeExport"]
      193 DUPCLOSURE                       R13 K93 [PROTO_47]
      194 SETTABLEKS                       R13 R12 K94 ["endExport"]
      196 DUPCLOSURE                       R13 K95 [PROTO_48]
      197 SETTABLEKS                       R13 R12 K96 ["destroy"]
      199 RETURN                           R12 1
