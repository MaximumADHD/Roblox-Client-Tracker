PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["setOnlySelection"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K1 ["setExportEnabled"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 JUMPIF                           R0 ; [+8]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K2 ["_plugin"]
       16 LOADK                            R2 K3 ["OnShouldStartPermissions"]
       17 LOADB                            R3 1
       18 NAMECALL                         R0 R0 K4 ["Invoke"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["setOnlySelection"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K1 ["setExportEnabled"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 JUMPIF                           R0 ; [+8]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K2 ["_plugin"]
       16 LOADK                            R2 K3 ["OnShouldStartPermissions"]
       17 LOADB                            R3 0
       18 NAMECALL                         R0 R0 K4 ["Invoke"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K29 [{[1] = "Main", ["_exportEnabled"] = False, ["_exportProcessing"] = False, ["_format"] = , ["_settings"], ["_settingEvents"], ["_onlySelection"] = False, ["_plugin"], ["_permissionFailures"], ["_fileName"] = , ["_connections"], ["_permissionsReady"] = False, ["_canceled"] = False, ["_exportSuccess"] = False, ["_cagesInProgress"] = False, ["_attachmentsInProgress"] = False, ["_cagesDeletionInProgress"] = False, ["_attachmentsDeletionInProgress"] = False, ["_isAnimationExportPending"] = False, ["onViewStateChanged"], ["onFormatChanged"], ["onPermissionLoadingChanged"], ["onPermissionFailuresChanged"], ["onExportEnabledChanged"], ["onExportProcessingChanged"], ["onPermissionsReadyChanged"]}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+3]
        4 NEWTABLE                         R3 0 0
        6 JUMP                             ; [+1]
        7 DUPTABLE                         R3 K35 [{["skinning"] = True, ["textures"] = True, ["attachments"] = True, ["cages"] = False}]
        8 SETTABLEKS                       R3 R2 K7 ["_settings"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K8 ["_settingEvents"]
       14 SETTABLEKS                       R0 R2 K10 ["_plugin"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K11 ["_permissionFailures"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K13 ["_connections"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K36 ["new"]
       27 CALL                             R3 0 1
       28 SETTABLEKS                       R3 R2 K22 ["onViewStateChanged"]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K36 ["new"]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K23 ["onFormatChanged"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K36 ["new"]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K24 ["onPermissionLoadingChanged"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K36 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K25 ["onPermissionFailuresChanged"]
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K36 ["new"]
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K26 ["onExportEnabledChanged"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K36 ["new"]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K27 ["onExportProcessingChanged"]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K36 ["new"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K28 ["onPermissionsReadyChanged"]
       66 GETUPVAL                         R3 0
       67 CALL                             R3 0 1
       68 JUMPIF                           R3 ; [+14]
       69 GETTABLEKS                       R3 R2 K7 ["_settings"]
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 GETTABLEKS                       R8 R2 K8 ["_settingEvents"]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K36 ["new"]
       79 CALL                             R9 0 1
       80 SETTABLE                         R9 R8 R6
       81 FORGLOOP                         R3 2 ; [-8]
       83 GETUPVAL                         R5 2
       84 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       86 MOVE                             R4 R2
       87 GETIMPORT                        R3 K38 [setmetatable]
       89 CALL                             R3 2 0
       90 GETTABLEKS                       R4 R2 K13 ["_connections"]
       92 GETTABLEKS                       R5 R2 K10 ["_plugin"]
       94 LOADK                            R7 K39 ["OnExportSelectionActionActivated"]
       95 NEWCLOSURE                       R8 P0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          UPVAL U0
       98 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      100 CALL                             R5 3 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R3 K43 [table.insert]
      104 CALL                             R3 -1 0
      105 GETTABLEKS                       R4 R2 K13 ["_connections"]
      107 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      109 LOADK                            R7 K44 ["OnExportPlaceActionActivated"]
      110 NEWCLOSURE                       R8 P1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          UPVAL U0
      113 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      115 CALL                             R5 3 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R3 K43 [table.insert]
      119 CALL                             R3 -1 0
      120 GETTABLEKS                       R4 R2 K13 ["_connections"]
      122 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      124 LOADK                            R7 K45 ["OnCreateCagesSucceeded"]
      125 NEWCLOSURE                       R8 P2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          UPVAL U2
      131 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      133 CALL                             R5 3 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R3 K43 [table.insert]
      137 CALL                             R3 -1 0
      138 GETUPVAL                         R3 3
      139 CALL                             R3 0 1
      140 JUMPIFNOT                        R3 ; [+17]
      141 GETTABLEKS                       R4 R2 K13 ["_connections"]
      143 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      145 LOADK                            R7 K46 ["OnCreateAttachmentsSucceeded"]
      146 NEWCLOSURE                       R8 P3
      147 CAPTURE                          VAL R2
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U0
      150 CAPTURE                          UPVAL U2
      151 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      153 CALL                             R5 3 -1
      154 FASTCALL                         TABLE_INSERT ; [+2]
      155 GETIMPORT                        R3 K43 [table.insert]
      157 CALL                             R3 -1 0
      158 GETTABLEKS                       R4 R2 K13 ["_connections"]
      160 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      162 LOADK                            R7 K47 ["OnExportFileNameInputted"]
      163 NEWCLOSURE                       R8 P4
      164 CAPTURE                          VAL R2
      165 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      167 CALL                             R5 3 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R3 K43 [table.insert]
      171 CALL                             R3 -1 0
      172 GETTABLEKS                       R4 R2 K13 ["_connections"]
      174 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      176 LOADK                            R7 K48 ["OnDestroyCagesSucceeded"]
      177 NEWCLOSURE                       R8 P5
      178 CAPTURE                          UPVAL U3
      179 CAPTURE                          VAL R2
      180 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      182 CALL                             R5 3 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R3 K43 [table.insert]
      186 CALL                             R3 -1 0
      187 GETUPVAL                         R3 3
      188 CALL                             R3 0 1
      189 JUMPIFNOT                        R3 ; [+14]
      190 GETTABLEKS                       R4 R2 K13 ["_connections"]
      192 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      194 LOADK                            R7 K49 ["OnDestroyAttachmentsSucceeded"]
      195 NEWCLOSURE                       R8 P6
      196 CAPTURE                          VAL R2
      197 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      199 CALL                             R5 3 -1
      200 FASTCALL                         TABLE_INSERT ; [+2]
      201 GETIMPORT                        R3 K43 [table.insert]
      203 CALL                             R3 -1 0
      204 GETTABLEKS                       R4 R2 K13 ["_connections"]
      206 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      208 LOADK                            R7 K50 ["OnExportCompleteSuccess"]
      209 NEWCLOSURE                       R8 P7
      210 CAPTURE                          VAL R2
      211 CAPTURE                          UPVAL U3
      212 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      214 CALL                             R5 3 -1
      215 FASTCALL                         TABLE_INSERT ; [+2]
      216 GETIMPORT                        R3 K43 [table.insert]
      218 CALL                             R3 -1 0
      219 GETTABLEKS                       R4 R2 K13 ["_connections"]
      221 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      223 LOADK                            R7 K51 ["OnExportErrored"]
      224 NEWCLOSURE                       R8 P8
      225 CAPTURE                          VAL R2
      226 CAPTURE                          UPVAL U3
      227 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      229 CALL                             R5 3 -1
      230 FASTCALL                         TABLE_INSERT ; [+2]
      231 GETIMPORT                        R3 K43 [table.insert]
      233 CALL                             R3 -1 0
      234 GETTABLEKS                       R4 R2 K13 ["_connections"]
      236 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      238 LOADK                            R7 K52 ["OnFileSelectCanceled"]
      239 NEWCLOSURE                       R8 P9
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U3
      242 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      244 CALL                             R5 3 -1
      245 FASTCALL                         TABLE_INSERT ; [+2]
      246 GETIMPORT                        R3 K43 [table.insert]
      248 CALL                             R3 -1 0
      249 GETTABLEKS                       R4 R2 K13 ["_connections"]
      251 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      253 LOADK                            R7 K53 ["OnPermissionCheckComplete"]
      254 NEWCLOSURE                       R8 P10
      255 CAPTURE                          VAL R2
      256 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      258 CALL                             R5 3 -1
      259 FASTCALL                         TABLE_INSERT ; [+2]
      260 GETIMPORT                        R3 K43 [table.insert]
      262 CALL                             R3 -1 0
      263 GETTABLEKS                       R4 R2 K13 ["_connections"]
      265 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      267 LOADK                            R7 K54 ["OnPermissionCheckFailed"]
      268 NEWCLOSURE                       R8 P11
      269 CAPTURE                          VAL R2
      270 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      272 CALL                             R5 3 -1
      273 FASTCALL                         TABLE_INSERT ; [+2]
      274 GETIMPORT                        R3 K43 [table.insert]
      276 CALL                             R3 -1 0
      277 GETUPVAL                         R3 5
      278 CALL                             R3 0 1
      279 JUMPIFNOT                        R3 ; [+14]
      280 GETTABLEKS                       R4 R2 K13 ["_connections"]
      282 GETTABLEKS                       R5 R2 K10 ["_plugin"]
      284 LOADK                            R7 K55 ["OnAnimationExportPending"]
      285 NEWCLOSURE                       R8 P12
      286 CAPTURE                          VAL R2
      287 NAMECALL                         R5 R5 K40 ["OnInvoke"]
      289 CALL                             R5 3 -1
      290 FASTCALL                         TABLE_INSERT ; [+2]
      291 GETIMPORT                        R3 K43 [table.insert]
      293 CALL                             R3 -1 0
      294 RETURN                           R2 1

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

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_format"]
        2 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 SETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_onlySelection"]
        2 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        6 GETTABLEKS                       R2 R0 K1 ["onPermissionsReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionsReady"]
        2 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_viewState"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        2 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["_exportEnabled"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportEnabled"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportEnabledChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["_exportProcessing"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_exportProcessing"]
        6 GETTABLEKS                       R2 R0 K1 ["onExportProcessingChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_viewState"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_viewState"]
        6 GETTABLEKS                       R2 R0 K1 ["onViewStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_37:
        0 LOADK                            R3 K0 ["Main"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_38:
        0 LOADK                            R3 K0 ["Permissions"]
        1 NAMECALL                         R1 R0 K1 ["_changeViewState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R1 1

PROTO_40:
        0 SETTABLEKS                       R1 R0 K0 ["_permissionFailures"]
        2 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["OnViewInExplorer"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["Invoke"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R2 K0 ["OpenBrowserWindow"]
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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
       19 GETUPVAL                         R2 1
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+15]
       22 GETTABLEKS                       R2 R0 K1 ["_plugin"]
       24 LOADK                            R4 K5 ["OnShouldStartExport"]
       25 NAMECALL                         R5 R0 K6 ["getOnlySelection"]
       27 CALL                             R5 1 1
       28 MOVE                             R6 R1
       29 GETTABLEKS                       R7 R0 K3 ["_fileName"]
       31 GETTABLEKS                       R8 R0 K7 ["_format"]
       33 NAMECALL                         R2 R2 K4 ["Invoke"]
       35 CALL                             R2 6 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R0 K1 ["_plugin"]
       39 LOADK                            R4 K5 ["OnShouldStartExport"]
       40 NAMECALL                         R5 R0 K6 ["getOnlySelection"]
       42 CALL                             R5 1 1
       43 MOVE                             R6 R1
       44 GETTABLEKS                       R7 R0 K3 ["_fileName"]
       46 NAMECALL                         R2 R2 K4 ["Invoke"]
       48 CALL                             R2 5 0
       49 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 NAMECALL                         R1 R0 K0 ["endExport"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_51:
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
       29 GETUPVAL                         R1 0
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+11]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K9 ["_format"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K10 ["_settings"]
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K11 ["_settingEvents"]
       43 RETURN                           R0 0

PROTO_52:
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
       67 GETTABLEKS                       R10 R10 K17 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["createAssetUrl"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R11 K17 ["Util"]
       78 GETTABLEKS                       R11 R11 K19 ["ExportFormat"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R1 K17 ["Util"]
       83 GETTABLEKS                       R12 R11 K20 ["Signal"]
       85 GETIMPORT                        R13 K22 [game]
       87 LOADK                            R15 K23 ["BrowserService"]
       88 NAMECALL                         R13 R13 K24 ["GetService"]
       90 CALL                             R13 2 1
       91 LOADK                            R16 K25 ["ExportController"]
       92 NAMECALL                         R14 R3 K26 ["extend"]
       94 CALL                             R14 2 1
       95 DUPCLOSURE                       R15 K27 [PROTO_13]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R7
      102 SETTABLEKS                       R15 R14 K28 ["new"]
      104 DUPCLOSURE                       R15 K29 [PROTO_14]
      105 CAPTURE                          VAL R14
      106 SETTABLEKS                       R15 R14 K30 ["mock"]
      108 DUPCLOSURE                       R15 K31 [PROTO_15]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R15 R14 K32 ["formatSettings"]
      113 DUPCLOSURE                       R15 K33 [PROTO_16]
      114 SETTABLEKS                       R15 R14 K34 ["cleanupExport"]
      116 DUPCLOSURE                       R15 K35 [PROTO_17]
      117 SETTABLEKS                       R15 R14 K36 ["getSettingValue"]
      119 DUPCLOSURE                       R15 K37 [PROTO_18]
      120 SETTABLEKS                       R15 R14 K38 ["getSettingEvent"]
      122 DUPCLOSURE                       R15 K39 [PROTO_19]
      123 SETTABLEKS                       R15 R14 K40 ["checkCleanupStatus"]
      125 DUPCLOSURE                       R15 K41 [PROTO_20]
      126 SETTABLEKS                       R15 R14 K42 ["isExportReady"]
      128 DUPCLOSURE                       R15 K43 [PROTO_21]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R15 R14 K44 ["cancelExport"]
      133 DUPCLOSURE                       R15 K45 [PROTO_22]
      134 SETTABLEKS                       R15 R14 K46 ["toggleSetting"]
      136 MOVE                             R15 R8
      137 CALL                             R15 0 1
      138 JUMPIFNOT                        R15 ; [+14]
      139 DUPCLOSURE                       R15 K47 [PROTO_23]
      140 SETTABLEKS                       R15 R14 K48 ["setSettingValue"]
      142 DUPCLOSURE                       R15 K49 [PROTO_24]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R12
      145 SETTABLEKS                       R15 R14 K50 ["setFormat"]
      147 DUPCLOSURE                       R15 K51 [PROTO_25]
      148 SETTABLEKS                       R15 R14 K52 ["getFormat"]
      150 DUPCLOSURE                       R15 K53 [PROTO_26]
      151 SETTABLEKS                       R15 R14 K54 ["getSettingNames"]
      153 DUPCLOSURE                       R15 K55 [PROTO_27]
      154 SETTABLEKS                       R15 R14 K56 ["setOnlySelection"]
      156 DUPCLOSURE                       R15 K57 [PROTO_28]
      157 SETTABLEKS                       R15 R14 K58 ["getOnlySelection"]
      159 DUPCLOSURE                       R15 K59 [PROTO_29]
      160 SETTABLEKS                       R15 R14 K60 ["setPermissionsReady"]
      162 DUPCLOSURE                       R15 K61 [PROTO_30]
      163 SETTABLEKS                       R15 R14 K62 ["getPermissionsReady"]
      165 DUPCLOSURE                       R15 K63 [PROTO_31]
      166 SETTABLEKS                       R15 R14 K64 ["getViewState"]
      168 DUPCLOSURE                       R15 K65 [PROTO_32]
      169 SETTABLEKS                       R15 R14 K66 ["getExportEnabled"]
      171 DUPCLOSURE                       R15 K67 [PROTO_33]
      172 SETTABLEKS                       R15 R14 K68 ["setExportEnabled"]
      174 DUPCLOSURE                       R15 K69 [PROTO_34]
      175 SETTABLEKS                       R15 R14 K70 ["getExportProcessing"]
      177 DUPCLOSURE                       R15 K71 [PROTO_35]
      178 SETTABLEKS                       R15 R14 K72 ["setExportProcessing"]
      180 DUPCLOSURE                       R15 K73 [PROTO_36]
      181 SETTABLEKS                       R15 R14 K74 ["_changeViewState"]
      183 DUPCLOSURE                       R15 K75 [PROTO_37]
      184 SETTABLEKS                       R15 R14 K76 ["openMain"]
      186 DUPCLOSURE                       R15 K77 [PROTO_38]
      187 SETTABLEKS                       R15 R14 K78 ["openPermissions"]
      189 DUPCLOSURE                       R15 K79 [PROTO_39]
      190 SETTABLEKS                       R15 R14 K80 ["getPermissionFailures"]
      192 DUPCLOSURE                       R15 K81 [PROTO_40]
      193 SETTABLEKS                       R15 R14 K82 ["setPermissionFailures"]
      195 DUPCLOSURE                       R15 K83 [PROTO_41]
      196 SETTABLEKS                       R15 R14 K84 ["viewInExplorer"]
      198 DUPCLOSURE                       R15 K85 [PROTO_42]
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R15 R14 K86 ["openInBrowser"]
      203 DUPCLOSURE                       R15 K87 [PROTO_43]
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R4
      206 SETTABLEKS                       R15 R14 K88 ["openLearnPage"]
      208 DUPCLOSURE                       R15 K89 [PROTO_44]
      209 SETTABLEKS                       R15 R14 K90 ["_containsReleventPermissionFailure"]
      211 DUPCLOSURE                       R15 K91 [PROTO_45]
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R10
      214 SETTABLEKS                       R15 R14 K92 ["exportRequested"]
      216 DUPCLOSURE                       R15 K93 [PROTO_46]
      217 CAPTURE                          VAL R8
      218 SETTABLEKS                       R15 R14 K94 ["triggerFilePathSelection"]
      220 DUPCLOSURE                       R15 K95 [PROTO_47]
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R8
      223 SETTABLEKS                       R15 R14 K96 ["_dispatchExport"]
      225 DUPCLOSURE                       R15 K97 [PROTO_48]
      226 CAPTURE                          VAL R5
      227 CAPTURE                          VAL R6
      228 CAPTURE                          VAL R8
      229 SETTABLEKS                       R15 R14 K98 ["export"]
      231 DUPCLOSURE                       R15 K99 [PROTO_49]
      232 SETTABLEKS                       R15 R14 K100 ["showFinishedPage"]
      234 DUPCLOSURE                       R15 K101 [PROTO_50]
      235 SETTABLEKS                       R15 R14 K102 ["closeExport"]
      237 DUPCLOSURE                       R15 K103 [PROTO_51]
      238 CAPTURE                          VAL R8
      239 SETTABLEKS                       R15 R14 K104 ["endExport"]
      241 DUPCLOSURE                       R15 K105 [PROTO_52]
      242 SETTABLEKS                       R15 R14 K106 ["destroy"]
      244 RETURN                           R14 1
