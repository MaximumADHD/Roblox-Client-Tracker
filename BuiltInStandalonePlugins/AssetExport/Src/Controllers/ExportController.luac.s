PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 1
        2 NAMECALL                         R1 R1 K0 ["setOnlySelection"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["setFormat"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 LOADB                            R3 1
       16 NAMECALL                         R1 R1 K2 ["setExportEnabled"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 CALL                             R1 0 1
       21 JUMPIF                           R1 ; [+8]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K3 ["_plugin"]
       25 LOADK                            R3 K4 ["OnShouldStartPermissions"]
       26 LOADB                            R4 1
       27 NAMECALL                         R1 R1 K5 ["Invoke"]
       29 CALL                             R1 3 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["setOnlySelection"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K1 ["setFormat"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 LOADB                            R3 1
       16 NAMECALL                         R1 R1 K2 ["setExportEnabled"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 CALL                             R1 0 1
       21 JUMPIF                           R1 ; [+8]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K3 ["_plugin"]
       25 LOADK                            R3 K4 ["OnShouldStartPermissions"]
       26 LOADB                            R4 0
       27 NAMECALL                         R1 R1 K5 ["Invoke"]
       29 CALL                             R1 3 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+51]
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
       15 JUMPIF                           R0 ; [+3]
       16 GETUPVAL                         R0 3
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+12]
       19 GETUPVAL                         R0 1
       20 GETUPVAL                         R2 4
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K2 ["_settings"]
       24 NAMECALL                         R2 R2 K3 ["formatSettings"]
       26 CALL                             R2 2 -1
       27 NAMECALL                         R0 R0 K4 ["_dispatchExport"]
       29 CALL                             R0 -1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R0 4
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K2 ["_settings"]
       35 NAMECALL                         R0 R0 K3 ["formatSettings"]
       37 CALL                             R0 2 1
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       41 LOADK                            R3 K6 ["OnShouldStartExport"]
       42 GETUPVAL                         R4 1
       43 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       45 CALL                             R4 1 1
       46 MOVE                             R5 R0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       50 NAMECALL                         R1 R1 K9 ["Invoke"]
       52 CALL                             R1 5 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R0 4
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K2 ["_settings"]
       58 NAMECALL                         R0 R0 K3 ["formatSettings"]
       60 CALL                             R0 2 1
       61 GETUPVAL                         R1 1
       62 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       64 LOADK                            R3 K6 ["OnShouldStartExport"]
       65 GETUPVAL                         R4 1
       66 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       68 CALL                             R4 1 1
       69 MOVE                             R5 R0
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       73 NAMECALL                         R1 R1 K9 ["Invoke"]
       75 CALL                             R1 5 0
       76 RETURN                           R0 0

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
       12 JUMPIF                           R0 ; [+3]
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+12]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["_settings"]
       21 NAMECALL                         R2 R2 K3 ["formatSettings"]
       23 CALL                             R2 2 -1
       24 NAMECALL                         R0 R0 K4 ["_dispatchExport"]
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K2 ["_settings"]
       32 NAMECALL                         R0 R0 K3 ["formatSettings"]
       34 CALL                             R0 2 1
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K5 ["_plugin"]
       38 LOADK                            R3 K6 ["OnShouldStartExport"]
       39 GETUPVAL                         R4 0
       40 NAMECALL                         R4 R4 K7 ["getOnlySelection"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R0
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K8 ["_fileName"]
       47 NAMECALL                         R1 R1 K9 ["Invoke"]
       49 CALL                             R1 5 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["export"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setExportProgress"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_attachmentsDeletionInProgress"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["checkCleanupStatus"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["endExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["setAnimationExportPending"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R2 K33 [{[1] = "Main", ["_exportEnabled"] = False, ["_exportProcessing"] = False, ["_format"] = , ["_settings"], ["_settingEvents"], ["_onlySelection"] = False, ["_plugin"], ["_permissionFailures"], ["_fileName"] = , ["_connections"], ["_permissionsReady"] = False, ["_canceled"] = False, ["_exportSuccess"] = False, ["_cagesInProgress"] = False, ["_attachmentsInProgress"] = False, ["_cagesDeletionInProgress"] = False, ["_attachmentsDeletionInProgress"] = False, ["_isAnimationExportPending"] = False, ["_exportProgress"] = 0, ["onViewStateChanged"], ["onFormatChanged"], ["onPermissionLoadingChanged"], ["onPermissionFailuresChanged"], ["onExportEnabledChanged"], ["onExportProcessingChanged"], ["onPermissionsReadyChanged"], ["onExportProgressChanged"], ["onAnimationExportPendingChanged"]}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+3]
        4 NEWTABLE                         R3 0 0
        6 JUMP                             ; [+1]
        7 DUPTABLE                         R3 K39 [{["skinning"] = True, ["textures"] = True, ["attachments"] = True, ["cages"] = False}]
        8 SETTABLEKS                       R3 R2 K7 ["_settings"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K8 ["_settingEvents"]
       14 SETTABLEKS                       R0 R2 K10 ["_plugin"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K11 ["_permissionFailures"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K13 ["_connections"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K40 ["new"]
       27 CALL                             R3 0 1
       28 SETTABLEKS                       R3 R2 K24 ["onViewStateChanged"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K40 ["new"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K25 ["onFormatChanged"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K40 ["new"]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K26 ["onPermissionLoadingChanged"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K40 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K27 ["onPermissionFailuresChanged"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K40 ["new"]
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K28 ["onExportEnabledChanged"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K40 ["new"]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K29 ["onExportProcessingChanged"]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K40 ["new"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K30 ["onPermissionsReadyChanged"]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K40 ["new"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K31 ["onExportProgressChanged"]
       72 GETUPVAL                         R3 1
       73 GETTABLEKS                       R3 R3 K40 ["new"]
       75 CALL                             R3 0 1
       76 SETTABLEKS                       R3 R2 K32 ["onAnimationExportPendingChanged"]
       78 GETUPVAL                         R3 0
       79 CALL                             R3 0 1
       80 JUMPIF                           R3 ; [+14]
       81 GETTABLEKS                       R3 R2 K7 ["_settings"]
       83 LOADNIL                          R4
       84 LOADNIL                          R5
       85 FORGPREP                         R3
       86 GETTABLEKS                       R8 R2 K8 ["_settingEvents"]
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K40 ["new"]
       91 CALL                             R9 0 1
       92 SETTABLE                         R9 R8 R6
       93 FORGLOOP                         R3 2 ; [-8]
       95 GETUPVAL                         R5 2
       96 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       98 MOVE                             R4 R2
       99 GETIMPORT                        R3 K42 [setmetatable]
      101 CALL                             R3 2 0
      102 GETTABLEKS                       R4 R2 K13 ["_connections"]
      104 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      106 LOADK                            R7 K43 ["OnExportSelectionActionActivated"]
      107 NEWCLOSURE                       R8 P0
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U0
      110 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      112 CALL                             R5 3 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R3 K47 [table.insert]
      116 CALL                             R3 -1 0
      117 GETTABLEKS                       R4 R2 K13 ["_connections"]
      119 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      121 LOADK                            R7 K48 ["OnExportPlaceActionActivated"]
      122 NEWCLOSURE                       R8 P1
      123 CAPTURE                          VAL R2
      124 CAPTURE                          UPVAL U0
      125 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      127 CALL                             R5 3 -1
      128 FASTCALL                         TABLE_INSERT ; [+2]
      129 GETIMPORT                        R3 K47 [table.insert]
      131 CALL                             R3 -1 0
      132 GETTABLEKS                       R4 R2 K13 ["_connections"]
      134 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      136 LOADK                            R7 K49 ["OnCreateCagesSucceeded"]
      137 NEWCLOSURE                       R8 P2
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U0
      142 CAPTURE                          UPVAL U2
      143 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      145 CALL                             R5 3 -1
      146 FASTCALL                         TABLE_INSERT ; [+2]
      147 GETIMPORT                        R3 K47 [table.insert]
      149 CALL                             R3 -1 0
      150 GETUPVAL                         R3 3
      151 CALL                             R3 0 1
      152 JUMPIFNOT                        R3 ; [+17]
      153 GETTABLEKS                       R4 R2 K13 ["_connections"]
      155 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      157 LOADK                            R7 K50 ["OnCreateAttachmentsSucceeded"]
      158 NEWCLOSURE                       R8 P3
      159 CAPTURE                          VAL R2
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          UPVAL U0
      162 CAPTURE                          UPVAL U2
      163 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      165 CALL                             R5 3 -1
      166 FASTCALL                         TABLE_INSERT ; [+2]
      167 GETIMPORT                        R3 K47 [table.insert]
      169 CALL                             R3 -1 0
      170 GETTABLEKS                       R4 R2 K13 ["_connections"]
      172 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      174 LOADK                            R7 K51 ["OnExportFileNameInputted"]
      175 NEWCLOSURE                       R8 P4
      176 CAPTURE                          VAL R2
      177 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      179 CALL                             R5 3 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R3 K47 [table.insert]
      183 CALL                             R3 -1 0
      184 GETUPVAL                         R3 5
      185 CALL                             R3 0 1
      186 JUMPIFNOT                        R3 ; [+14]
      187 GETTABLEKS                       R4 R2 K13 ["_connections"]
      189 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      191 LOADK                            R7 K52 ["OnExportProgress"]
      192 NEWCLOSURE                       R8 P5
      193 CAPTURE                          VAL R2
      194 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      196 CALL                             R5 3 -1
      197 FASTCALL                         TABLE_INSERT ; [+2]
      198 GETIMPORT                        R3 K47 [table.insert]
      200 CALL                             R3 -1 0
      201 GETTABLEKS                       R4 R2 K13 ["_connections"]
      203 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      205 LOADK                            R7 K53 ["OnDestroyCagesSucceeded"]
      206 NEWCLOSURE                       R8 P6
      207 CAPTURE                          UPVAL U3
      208 CAPTURE                          VAL R2
      209 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      211 CALL                             R5 3 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R3 K47 [table.insert]
      215 CALL                             R3 -1 0
      216 GETUPVAL                         R3 3
      217 CALL                             R3 0 1
      218 JUMPIFNOT                        R3 ; [+14]
      219 GETTABLEKS                       R4 R2 K13 ["_connections"]
      221 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      223 LOADK                            R7 K54 ["OnDestroyAttachmentsSucceeded"]
      224 NEWCLOSURE                       R8 P7
      225 CAPTURE                          VAL R2
      226 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      228 CALL                             R5 3 -1
      229 FASTCALL                         TABLE_INSERT ; [+2]
      230 GETIMPORT                        R3 K47 [table.insert]
      232 CALL                             R3 -1 0
      233 GETTABLEKS                       R4 R2 K13 ["_connections"]
      235 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      237 LOADK                            R7 K55 ["OnExportCompleteSuccess"]
      238 NEWCLOSURE                       R8 P8
      239 CAPTURE                          VAL R2
      240 CAPTURE                          UPVAL U3
      241 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      243 CALL                             R5 3 -1
      244 FASTCALL                         TABLE_INSERT ; [+2]
      245 GETIMPORT                        R3 K47 [table.insert]
      247 CALL                             R3 -1 0
      248 GETTABLEKS                       R4 R2 K13 ["_connections"]
      250 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      252 LOADK                            R7 K56 ["OnExportErrored"]
      253 NEWCLOSURE                       R8 P9
      254 CAPTURE                          VAL R2
      255 CAPTURE                          UPVAL U3
      256 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      258 CALL                             R5 3 -1
      259 FASTCALL                         TABLE_INSERT ; [+2]
      260 GETIMPORT                        R3 K47 [table.insert]
      262 CALL                             R3 -1 0
      263 GETTABLEKS                       R4 R2 K13 ["_connections"]
      265 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      267 LOADK                            R7 K57 ["OnFileSelectCanceled"]
      268 NEWCLOSURE                       R8 P10
      269 CAPTURE                          VAL R2
      270 CAPTURE                          UPVAL U3
      271 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      273 CALL                             R5 3 -1
      274 FASTCALL                         TABLE_INSERT ; [+2]
      275 GETIMPORT                        R3 K47 [table.insert]
      277 CALL                             R3 -1 0
      278 GETTABLEKS                       R4 R2 K13 ["_connections"]
      280 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      282 LOADK                            R7 K58 ["OnPermissionCheckComplete"]
      283 NEWCLOSURE                       R8 P11
      284 CAPTURE                          VAL R2
      285 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      287 CALL                             R5 3 -1
      288 FASTCALL                         TABLE_INSERT ; [+2]
      289 GETIMPORT                        R3 K47 [table.insert]
      291 CALL                             R3 -1 0
      292 GETTABLEKS                       R4 R2 K13 ["_connections"]
      294 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      296 LOADK                            R7 K59 ["OnPermissionCheckFailed"]
      297 NEWCLOSURE                       R8 P12
      298 CAPTURE                          VAL R2
      299 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      301 CALL                             R5 3 -1
      302 FASTCALL                         TABLE_INSERT ; [+2]
      303 GETIMPORT                        R3 K47 [table.insert]
      305 CALL                             R3 -1 0
      306 GETUPVAL                         R3 6
      307 CALL                             R3 0 1
      308 JUMPIFNOT                        R3 ; [+14]
      309 GETTABLEKS                       R4 R2 K13 ["_connections"]
      311 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      313 LOADK                            R7 K60 ["OnAnimationExportPending"]
      314 NEWCLOSURE                       R8 P13
      315 CAPTURE                          VAL R2
      316 NAMECALL                         R5 R5 K44 ["OnInvoke"]
      318 CALL                             R5 3 -1
      319 FASTCALL                         TABLE_INSERT ; [+2]
      320 GETIMPORT                        R3 K47 [table.insert]
      322 CALL                             R3 -1 0
      323 GETUPVAL                         R3 7
      324 CALL                             R3 0 1
      325 JUMPIFNOT                        R3 ; [+85]
      326 GETUPVAL                         R3 8
      327 CALL                             R3 0 1
      328 JUMPIFNOT                        R3 ; [+82]
      329 GETTABLEKS                       R3 R2 K10 ["_plugin"]
      331 NAMECALL                         R3 R3 K61 ["GetPreinitPayload"]
      333 CALL                             R3 1 1
      334 FASTCALL1                        TYPE R3 ; [+3]
      335 MOVE                             R6 R3
      336 GETIMPORT                        R5 K63 [type]
      338 CALL                             R5 1 1
      339 JUMPIFNOTEQKS                    R5 K45 ["table"] ; [+4]
      341 GETTABLEKS                       R4 R3 K64 ["pendingTrigger"]
      343 JUMP                             ; [+1]
      344 LOADNIL                          R4
      345 LOADB                            R5 1
      346 JUMPIFEQKS                       R4 K65 ["placeGltf"] ; [+5]
      348 JUMPIFEQKS                       R4 K66 ["placeObj"] ; [+2]
      350 LOADB                            R5 0 +1
      351 LOADB                            R5 1
      352 LOADNIL                          R6
      353 JUMPIFEQKS                       R4 K67 ["selectionGltf"] ; [+5]
      355 JUMPIFEQKS                       R4 K65 ["placeGltf"] ; [+3]
      357 JUMPIFNOTEQKS                    R4 K68 ["animation"] ; [+5]
      359 GETUPVAL                         R7 9
      360 GETTABLEKS                       R6 R7 K69 ["Gltf"]
      362 JUMP                             ; [+10]
      363 GETUPVAL                         R7 0
      364 CALL                             R7 0 1
      365 JUMPIFNOT                        R7 ; [+7]
      366 JUMPIFEQKS                       R4 K70 ["selectionObj"] ; [+3]
      368 JUMPIFNOTEQKS                    R4 K66 ["placeObj"] ; [+4]
      370 GETUPVAL                         R7 9
      371 GETTABLEKS                       R6 R7 K71 ["Obj"]
      373 JUMPIFEQKNIL                     R6 ; [+27]
      375 JUMPIFNOTEQKS                    R4 K68 ["animation"] ; [+8]
      377 GETUPVAL                         R7 6
      378 CALL                             R7 0 1
      379 JUMPIFNOT                        R7 ; [+4]
      380 LOADB                            R9 1
      381 NAMECALL                         R7 R2 K72 ["setAnimationExportPending"]
      383 CALL                             R7 2 0
      384 NOT                              R9 R5
      385 NAMECALL                         R7 R2 K73 ["setOnlySelection"]
      387 CALL                             R7 2 0
      388 GETUPVAL                         R7 0
      389 CALL                             R7 0 1
      390 JUMPIFNOT                        R7 ; [+6]
      391 JUMPIFEQKNIL                     R6 ; [+5]
      393 MOVE                             R9 R6
      394 NAMECALL                         R7 R2 K74 ["setFormat"]
      396 CALL                             R7 2 0
      397 LOADB                            R9 1
      398 NAMECALL                         R7 R2 K75 ["setExportEnabled"]
      400 CALL                             R7 2 0
      401 GETUPVAL                         R7 10
      402 GETTABLEKS                       R7 R7 K76 ["fire"]
      404 GETTABLEKS                       R8 R2 K10 ["_plugin"]
      406 GETUPVAL                         R9 11
      407 GETTABLEKS                       R9 R9 K77 ["STANDALONE_LOADED"]
      409 MOVE                             R10 R4
      410 CALL                             R7 3 0
      411 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+29]
        5 GETTABLEKS                       R3 R0 K0 ["_format"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["Obj"]
       10 JUMPIFNOTEQ                      R3 R4 ; [+6]
       12 GETTABLEKS                       R3 R1 K2 ["textures"]
       14 SETTABLEKS                       R3 R2 K3 ["ExportTextures"]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R3 R1 K4 ["skinning"]
       19 SETTABLEKS                       R3 R2 K5 ["ExportSkinning"]
       21 GETTABLEKS                       R3 R1 K4 ["skinning"]
       23 SETTABLEKS                       R3 R2 K6 ["ExportFACS"]
       25 GETTABLEKS                       R3 R1 K2 ["textures"]
       27 SETTABLEKS                       R3 R2 K3 ["ExportTextures"]
       29 GETTABLEKS                       R3 R1 K2 ["textures"]
       31 SETTABLEKS                       R3 R2 K7 ["ExportPBRs"]
       33 RETURN                           R2 1
       34 GETIMPORT                        R3 K9 [pairs]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 3
       38 FORGPREP_NEXT                    R3
       39 JUMPIFNOTEQKS                    R6 K4 ["skinning"] ; [+6]
       41 SETTABLEKS                       R7 R2 K5 ["ExportSkinning"]
       43 SETTABLEKS                       R7 R2 K6 ["ExportFACS"]
       45 JUMP                             ; [+6]
       46 JUMPIFNOTEQKS                    R6 K2 ["textures"] ; [+5]
       48 SETTABLEKS                       R7 R2 K3 ["ExportTextures"]
       50 SETTABLEKS                       R7 R2 K7 ["ExportPBRs"]
       52 FORGLOOP                         R3 2 ; [-14]
       54 RETURN                           R2 1

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["_settings"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["_settingEvents"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_attachmentsInProgress"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R2 R0 K1 ["_cagesInProgress"]
        6 NOT                              R1 R2
        7 RETURN                           R1 1

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_canceled"]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["_format"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["_settings"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["_settingEvents"]
       17 GETTABLEKS                       R1 R0 K4 ["onFormatChanged"]
       19 LOADNIL                          R3
       20 NAMECALL                         R1 R1 K5 ["Fire"]
       22 CALL                             R1 2 0
       23 GETTABLEKS                       R1 R0 K6 ["_plugin"]
       25 LOADK                            R3 K7 ["OnShouldCancelExport"]
       26 NAMECALL                         R1 R1 K8 ["Invoke"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 1
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+4]
       32 NAMECALL                         R1 R0 K9 ["cleanupExport"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R2 R0 K2 ["_settings"]
       38 GETTABLEKS                       R1 R2 K10 ["cages"]
       40 JUMPIFNOT                        R1 ; [+10]
       41 GETTABLEKS                       R1 R0 K6 ["_plugin"]
       43 LOADK                            R3 K11 ["OnDestroyCageParts"]
       44 NAMECALL                         R4 R0 K12 ["getOnlySelection"]
       46 CALL                             R4 1 -1
       47 NAMECALL                         R1 R1 K8 ["Invoke"]
       49 CALL                             R1 -1 0
       50 RETURN                           R0 0
       51 NAMECALL                         R1 R0 K13 ["endExport"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R4 R0 K0 ["_settings"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFEQKNIL                     R3 ; [+20]
        5 GETTABLEKS                       R4 R0 K0 ["_settings"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFEQ                         R3 R2 ; [+15]
       10 GETTABLEKS                       R3 R0 K0 ["_settings"]
       12 SETTABLE                         R2 R3 R1
       13 GETTABLEKS                       R4 R0 K1 ["_settingEvents"]
       15 GETTABLE                         R3 R4 R1
       16 JUMPIFNOT                        R3 ; [+7]
       17 GETTABLEKS                       R4 R0 K1 ["_settingEvents"]
       19 GETTABLE                         R3 R4 R1
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K2 ["Fire"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_format"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_format"]
        7 GETTABLEKS                       R2 R0 K1 ["onFormatChanged"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R0 K3 ["_settingEvents"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["Obj"]
       20 JUMPIFNOTEQ                      R1 R2 ; [+5]
       22 DUPTABLE                         R2 K7 [{["textures"] = True}]
       23 SETTABLEKS                       R2 R0 K8 ["_settings"]
       25 JUMP                             ; [+8]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K9 ["Gltf"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+4]
       31 DUPTABLE                         R2 K14 [{["skinning"] = True, ["textures"] = True, ["attachments"] = True, ["cages"] = False}]
       32 SETTABLEKS                       R2 R0 K8 ["_settings"]
       34 GETTABLEKS                       R2 R0 K8 ["_settings"]
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETTABLEKS                       R7 R0 K3 ["_settingEvents"]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K15 ["new"]
       44 CALL                             R8 0 1
       45 SETTABLE                         R8 R7 R5
       46 FORGLOOP                         R2 2 ; [-8]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K9 ["Gltf"]
       51 JUMPIFNOTEQ                      R1 R2 ; [+14]
       53 LOADB                            R4 0
       54 NAMECALL                         R2 R0 K16 ["setPermissionsReady"]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R0 K17 ["_plugin"]
       59 LOADK                            R4 K18 ["OnShouldStartPermissions"]
       60 NAMECALL                         R5 R0 K19 ["getOnlySelection"]
       62 CALL                             R5 1 -1
       63 NAMECALL                         R2 R2 K20 ["Invoke"]
       65 CALL                             R2 -1 0
       66 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_format"]
        2 RETURN                           R1 1

PROTO_27:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_settings"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETIMPORT                        R2 K5 [table.sort]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R1 1

PROTO_28:
        0 SETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        6 GETTABLEKS                       R2 R0 K1 ["onPermissionsReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_isAnimationExportPending"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_isAnimationExportPending"]
        6 GETTABLEKS                       R2 R0 K1 ["onAnimationExportPendingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_isAnimationExportPending"]
        2 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_viewState"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        2 RETURN                           R1 1

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_exportEnabled"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportEnabledChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        2 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProcessing"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProcessingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["_viewState"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_viewState"]
        6 GETTABLEKS                       R2 R0 K1 ["onViewStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_40:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_41:
        0 LOADK                            R3 K0 ["Permissions"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R1 1

PROTO_43:
        0 SETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["OnViewInExplorer"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["Invoke"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["OpenBrowserWindow"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProgress"]
        2 RETURN                           R1 1

PROTO_48:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProgress"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProgress"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProgressChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETTABLEKS                       R1 R0 K0 ["_format"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Obj"]
        8 JUMPIFEQ                         R1 R2 ; [+5]
       10 NAMECALL                         R1 R0 K2 ["_containsReleventPermissionFailure"]
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+4]
       14 NAMECALL                         R1 R0 K3 ["triggerFilePathSelection"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 NAMECALL                         R1 R0 K4 ["openPermissions"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 NAMECALL                         R1 R0 K2 ["_containsReleventPermissionFailure"]
       24 CALL                             R1 1 1
       25 JUMPIF                           R1 ; [+4]
       26 NAMECALL                         R1 R0 K3 ["triggerFilePathSelection"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 NAMECALL                         R1 R0 K4 ["openPermissions"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_51:
        0 LOADK                            R3 K0 ["SelectFilename"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETTABLEKS                       R1 R0 K2 ["_plugin"]
        9 LOADK                            R3 K3 ["OnShouldSelectFilename"]
       10 GETTABLEKS                       R4 R0 K4 ["_format"]
       12 NAMECALL                         R1 R1 K5 ["Invoke"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R1 R0 K2 ["_plugin"]
       18 LOADK                            R3 K3 ["OnShouldSelectFilename"]
       19 NAMECALL                         R1 R1 K5 ["Invoke"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+17]
        3 GETTABLEKS                       R2 R0 K0 ["_isAnimationExportPending"]
        5 JUMPIFNOT                        R2 ; [+14]
        6 LOADB                            R4 0
        7 NAMECALL                         R2 R0 K1 ["setAnimationExportPending"]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K2 ["_plugin"]
       12 LOADK                            R4 K3 ["OnShouldStartAnimationExport"]
       13 MOVE                             R5 R1
       14 GETTABLEKS                       R6 R0 K4 ["_fileName"]
       16 NAMECALL                         R2 R2 K5 ["Invoke"]
       18 CALL                             R2 4 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+15]
       23 GETTABLEKS                       R2 R0 K2 ["_plugin"]
       25 LOADK                            R4 K6 ["OnShouldStartExport"]
       26 NAMECALL                         R5 R0 K7 ["getOnlySelection"]
       28 CALL                             R5 1 1
       29 MOVE                             R6 R1
       30 GETTABLEKS                       R7 R0 K4 ["_fileName"]
       32 GETTABLEKS                       R8 R0 K8 ["_format"]
       34 NAMECALL                         R2 R2 K5 ["Invoke"]
       36 CALL                             R2 6 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R2 R0 K2 ["_plugin"]
       40 LOADK                            R4 K6 ["OnShouldStartExport"]
       41 NAMECALL                         R5 R0 K7 ["getOnlySelection"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R1
       45 GETTABLEKS                       R7 R0 K4 ["_fileName"]
       47 NAMECALL                         R2 R2 K5 ["Invoke"]
       49 CALL                             R2 5 0
       50 RETURN                           R0 0

PROTO_53:
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
       58 JUMPIFNOT                        R3 ; [+51]
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
       89 JUMPIF                           R3 ; [+3]
       90 GETUPVAL                         R3 2
       91 CALL                             R3 0 1
       92 JUMPIFNOT                        R3 ; [+5]
       93 MOVE                             R5 R2
       94 NAMECALL                         R3 R0 K15 ["_dispatchExport"]
       96 CALL                             R3 2 0
       97 RETURN                           R0 0
       98 GETTABLEKS                       R3 R0 K10 ["_plugin"]
      100 LOADK                            R5 K16 ["OnShouldStartExport"]
      101 NAMECALL                         R6 R0 K12 ["getOnlySelection"]
      103 CALL                             R6 1 1
      104 MOVE                             R7 R2
      105 GETTABLEKS                       R8 R0 K5 ["_fileName"]
      107 NAMECALL                         R3 R3 K13 ["Invoke"]
      109 CALL                             R3 5 0
      110 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 NAMECALL                         R1 R0 K0 ["endExport"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_56:
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
       26 LOADB                            R3 0
       27 NAMECALL                         R1 R0 K8 ["setAnimationExportPending"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 0
       31 CALL                             R1 0 1
       32 JUMPIFNOT                        R1 ; [+4]
       33 LOADN                            R3 0
       34 NAMECALL                         R1 R0 K9 ["setExportProgress"]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R1 1
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+11]
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K10 ["_format"]
       43 NEWTABLE                         R1 0 0
       45 SETTABLEKS                       R1 R0 K11 ["_settings"]
       47 NEWTABLE                         R1 0 0
       49 SETTABLEKS                       R1 R0 K12 ["_settingEvents"]
       51 RETURN                           R0 0

PROTO_57:
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
       58 GETTABLEKS                       R9 R9 K11 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAsyncObjExport"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K10 ["Src"]
       67 GETTABLEKS                       R10 R10 K11 ["Flags"]
       69 GETTABLEKS                       R10 R10 K17 ["getFFlagGltfExportProgress"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R11 K11 ["Flags"]
       78 GETTABLEKS                       R11 R11 K18 ["getEngineFeatureStudioPreinitPayloadHandoff"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K10 ["Src"]
       85 GETTABLEKS                       R12 R12 K11 ["Flags"]
       87 GETTABLEKS                       R12 R12 K19 ["getFFlagAssetExportStandaloneLazyLoad"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K10 ["Src"]
       94 GETTABLEKS                       R13 R13 K20 ["Util"]
       96 GETTABLEKS                       R13 R13 K21 ["createAssetUrl"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K10 ["Src"]
      103 GETTABLEKS                       R14 R14 K20 ["Util"]
      105 GETTABLEKS                       R14 R14 K22 ["CrossDmSignals"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K10 ["Src"]
      112 GETTABLEKS                       R15 R15 K20 ["Util"]
      114 GETTABLEKS                       R15 R15 K23 ["ExportFormat"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K6 ["Packages"]
      121 GETTABLEKS                       R16 R16 K24 ["PluginLoader"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R15 R15 K25 ["QueuedOneShotCrossDMPluginInvoke"]
      126 GETTABLEKS                       R16 R1 K20 ["Util"]
      128 GETTABLEKS                       R17 R16 K26 ["Signal"]
      130 GETIMPORT                        R18 K28 [game]
      132 LOADK                            R20 K29 ["BrowserService"]
      133 NAMECALL                         R18 R18 K30 ["GetService"]
      135 CALL                             R18 2 1
      136 LOADK                            R21 K31 ["ExportController"]
      137 NAMECALL                         R19 R3 K32 ["extend"]
      139 CALL                             R19 2 1
      140 DUPCLOSURE                       R20 K33 [PROTO_14]
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R13
      153 SETTABLEKS                       R20 R19 K34 ["new"]
      155 DUPCLOSURE                       R20 K35 [PROTO_15]
      156 CAPTURE                          VAL R19
      157 SETTABLEKS                       R20 R19 K36 ["mock"]
      159 DUPCLOSURE                       R20 K37 [PROTO_16]
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R14
      162 SETTABLEKS                       R20 R19 K38 ["formatSettings"]
      164 DUPCLOSURE                       R20 K39 [PROTO_17]
      165 SETTABLEKS                       R20 R19 K40 ["cleanupExport"]
      167 DUPCLOSURE                       R20 K41 [PROTO_18]
      168 SETTABLEKS                       R20 R19 K42 ["getSettingValue"]
      170 DUPCLOSURE                       R20 K43 [PROTO_19]
      171 SETTABLEKS                       R20 R19 K44 ["getSettingEvent"]
      173 DUPCLOSURE                       R20 K45 [PROTO_20]
      174 SETTABLEKS                       R20 R19 K46 ["checkCleanupStatus"]
      176 DUPCLOSURE                       R20 K47 [PROTO_21]
      177 SETTABLEKS                       R20 R19 K48 ["isExportReady"]
      179 DUPCLOSURE                       R20 K49 [PROTO_22]
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R20 R19 K50 ["cancelExport"]
      184 DUPCLOSURE                       R20 K51 [PROTO_23]
      185 SETTABLEKS                       R20 R19 K52 ["toggleSetting"]
      187 MOVE                             R20 R8
      188 CALL                             R20 0 1
      189 JUMPIFNOT                        R20 ; [+14]
      190 DUPCLOSURE                       R20 K53 [PROTO_24]
      191 SETTABLEKS                       R20 R19 K54 ["setSettingValue"]
      193 DUPCLOSURE                       R20 K55 [PROTO_25]
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R17
      196 SETTABLEKS                       R20 R19 K56 ["setFormat"]
      198 DUPCLOSURE                       R20 K57 [PROTO_26]
      199 SETTABLEKS                       R20 R19 K58 ["getFormat"]
      201 DUPCLOSURE                       R20 K59 [PROTO_27]
      202 SETTABLEKS                       R20 R19 K60 ["getSettingNames"]
      204 DUPCLOSURE                       R20 K61 [PROTO_28]
      205 SETTABLEKS                       R20 R19 K62 ["setOnlySelection"]
      207 DUPCLOSURE                       R20 K63 [PROTO_29]
      208 SETTABLEKS                       R20 R19 K64 ["getOnlySelection"]
      210 DUPCLOSURE                       R20 K65 [PROTO_30]
      211 SETTABLEKS                       R20 R19 K66 ["setPermissionsReady"]
      213 DUPCLOSURE                       R20 K67 [PROTO_31]
      214 SETTABLEKS                       R20 R19 K68 ["getPermissionsReady"]
      216 DUPCLOSURE                       R20 K69 [PROTO_32]
      217 SETTABLEKS                       R20 R19 K70 ["setAnimationExportPending"]
      219 DUPCLOSURE                       R20 K71 [PROTO_33]
      220 SETTABLEKS                       R20 R19 K72 ["getAnimationExportPending"]
      222 DUPCLOSURE                       R20 K73 [PROTO_34]
      223 SETTABLEKS                       R20 R19 K74 ["getViewState"]
      225 DUPCLOSURE                       R20 K75 [PROTO_35]
      226 SETTABLEKS                       R20 R19 K76 ["getExportEnabled"]
      228 DUPCLOSURE                       R20 K77 [PROTO_36]
      229 SETTABLEKS                       R20 R19 K78 ["setExportEnabled"]
      231 DUPCLOSURE                       R20 K79 [PROTO_37]
      232 SETTABLEKS                       R20 R19 K80 ["getExportProcessing"]
      234 DUPCLOSURE                       R20 K81 [PROTO_38]
      235 SETTABLEKS                       R20 R19 K82 ["setExportProcessing"]
      237 DUPCLOSURE                       R20 K83 [PROTO_39]
      238 SETTABLEKS                       R20 R19 K84 ["_changeViewState"]
      240 DUPCLOSURE                       R20 K85 [PROTO_40]
      241 SETTABLEKS                       R20 R19 K86 ["openMain"]
      243 DUPCLOSURE                       R20 K87 [PROTO_41]
      244 SETTABLEKS                       R20 R19 K88 ["openPermissions"]
      246 DUPCLOSURE                       R20 K89 [PROTO_42]
      247 SETTABLEKS                       R20 R19 K90 ["getPermissionFailures"]
      249 DUPCLOSURE                       R20 K91 [PROTO_43]
      250 SETTABLEKS                       R20 R19 K92 ["setPermissionFailures"]
      252 DUPCLOSURE                       R20 K93 [PROTO_44]
      253 SETTABLEKS                       R20 R19 K94 ["viewInExplorer"]
      255 DUPCLOSURE                       R20 K95 [PROTO_45]
      256 CAPTURE                          VAL R18
      257 CAPTURE                          VAL R12
      258 SETTABLEKS                       R20 R19 K96 ["openInBrowser"]
      260 DUPCLOSURE                       R20 K97 [PROTO_46]
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R4
      263 SETTABLEKS                       R20 R19 K98 ["openLearnPage"]
      265 DUPCLOSURE                       R20 K99 [PROTO_47]
      266 SETTABLEKS                       R20 R19 K100 ["getExportProgress"]
      268 DUPCLOSURE                       R20 K101 [PROTO_48]
      269 SETTABLEKS                       R20 R19 K102 ["setExportProgress"]
      271 DUPCLOSURE                       R20 K103 [PROTO_49]
      272 SETTABLEKS                       R20 R19 K104 ["_containsReleventPermissionFailure"]
      274 DUPCLOSURE                       R20 K105 [PROTO_50]
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R14
      277 SETTABLEKS                       R20 R19 K106 ["exportRequested"]
      279 DUPCLOSURE                       R20 K107 [PROTO_51]
      280 CAPTURE                          VAL R8
      281 SETTABLEKS                       R20 R19 K108 ["triggerFilePathSelection"]
      283 DUPCLOSURE                       R20 K109 [PROTO_52]
      284 CAPTURE                          VAL R6
      285 CAPTURE                          VAL R8
      286 SETTABLEKS                       R20 R19 K110 ["_dispatchExport"]
      288 DUPCLOSURE                       R20 K111 [PROTO_53]
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R6
      291 CAPTURE                          VAL R8
      292 SETTABLEKS                       R20 R19 K112 ["export"]
      294 DUPCLOSURE                       R20 K113 [PROTO_54]
      295 SETTABLEKS                       R20 R19 K114 ["showFinishedPage"]
      297 DUPCLOSURE                       R20 K115 [PROTO_55]
      298 SETTABLEKS                       R20 R19 K116 ["closeExport"]
      300 DUPCLOSURE                       R20 K117 [PROTO_56]
      301 CAPTURE                          VAL R9
      302 CAPTURE                          VAL R8
      303 SETTABLEKS                       R20 R19 K118 ["endExport"]
      305 DUPCLOSURE                       R20 K119 [PROTO_57]
      306 SETTABLEKS                       R20 R19 K120 ["destroy"]
      308 RETURN                           R19 1
