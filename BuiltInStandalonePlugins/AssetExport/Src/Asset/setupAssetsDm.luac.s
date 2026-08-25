PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportSelectionActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Invoke"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportPlaceActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Invoke"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportFileNameInputted"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportProgress"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K0 ["OnExportCompleteSuccess"]
        7 NAMECALL                         R0 R0 K1 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K0 ["OnExportErrored"]
        7 NAMECALL                         R0 R0 K1 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 2
        7 LOADB                            R0 0
        8 SETUPVAL                         R0 3
        9 GETUPVAL                         R0 4
       10 LOADK                            R2 K0 ["OnFileSelectCanceled"]
       11 NAMECALL                         R0 R0 K1 ["Invoke"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnPermissionCheckComplete"]
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K1 ["AssetExportController"]
        4 NAMECALL                         R3 R3 K2 ["GetPluginComponent"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R3 R3 K3 ["GetPermissionFailuresAsync"]
        9 CALL                             R3 1 -1
       10 NAMECALL                         R0 R0 K4 ["Invoke"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnPermissionCheckFailed"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetExportController"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["StartPermissionCheckAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 SETUPVAL                         R2 2
        4 GETUPVAL                         R2 3
        5 LOADK                            R4 K0 ["OnAnimationExportPending"]
        6 NAMECALL                         R2 R2 K1 ["Invoke"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 3
       10 LOADK                            R4 K2 ["OnExportSelectionActionActivated"]
       11 NAMECALL                         R2 R2 K1 ["Invoke"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADNIL                          R4
        3 SETUPVAL                         R4 0
        4 LOADNIL                          R4
        5 SETUPVAL                         R4 1
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 2
       12 LOADK                            R6 K0 ["AssetExportController"]
       13 NAMECALL                         R4 R4 K1 ["GetPluginComponent"]
       15 CALL                             R4 2 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R3
       18 MOVE                             R8 R0
       19 MOVE                             R9 R1
       20 NAMECALL                         R4 R4 K2 ["ExportModelWithAnimationAsync"]
       22 CALL                             R4 5 0
       23 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+3]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOT                        R4 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+13]
        9 GETUPVAL                         R4 3
       10 LOADK                            R6 K0 ["AssetExportController"]
       11 NAMECALL                         R4 R4 K1 ["GetPluginComponent"]
       13 CALL                             R4 2 1
       14 MOVE                             R6 R0
       15 MOVE                             R7 R3
       16 MOVE                             R8 R1
       17 MOVE                             R9 R2
       18 NAMECALL                         R4 R4 K2 ["StartExportAsync"]
       20 CALL                             R4 5 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 3
       23 LOADK                            R6 K0 ["AssetExportController"]
       24 NAMECALL                         R4 R4 K1 ["GetPluginComponent"]
       26 CALL                             R4 2 1
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 MOVE                             R8 R2
       30 NAMECALL                         R4 R4 K3 ["DEPRECATED_StartExportAsync"]
       32 CALL                             R4 4 0
       33 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AssetExportController"]
        5 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        7 CALL                             R1 2 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["SelectExportFileNameAsync"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K0 ["AssetExportController"]
       15 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
       17 CALL                             R1 2 1
       18 NAMECALL                         R1 R1 K3 ["DEPRECATED_SelectExportFileNameAsync"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 2
        7 GETUPVAL                         R0 3
        8 LOADK                            R2 K0 ["AssetExportController"]
        9 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
       11 CALL                             R0 2 1
       12 NAMECALL                         R0 R0 K2 ["CancelExportInstigatedAsync"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnCreateCagesSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["Failed to create cages"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnDestroyCagesSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnCreateAttachmentsSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["Failed to create attachments"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnDestroyAttachmentsSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADB                            R5 0
        9 MOVE                             R7 R2
       10 GETUPVAL                         R10 0
       11 NAMECALL                         R8 R1 K2 ["BindToActivatedAsync"]
       13 CALL                             R8 2 1
       14 NEWCLOSURE                       R10 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R8 R8 K3 ["Connect"]
       18 CALL                             R8 2 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R6 K6 [table.insert]
       22 CALL                             R6 -1 0
       23 MOVE                             R7 R2
       24 GETUPVAL                         R10 1
       25 NAMECALL                         R8 R1 K2 ["BindToActivatedAsync"]
       27 CALL                             R8 2 1
       28 NEWCLOSURE                       R10 P1
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R8 R8 K3 ["Connect"]
       32 CALL                             R8 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R6 K6 [table.insert]
       36 CALL                             R6 -1 0
       37 MOVE                             R7 R2
       38 LOADK                            R10 K7 ["AssetExportController"]
       39 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       41 CALL                             R8 2 1
       42 GETTABLEKS                       R8 R8 K8 ["OnExportFileNameInputted"]
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          VAL R0
       46 NAMECALL                         R8 R8 K3 ["Connect"]
       48 CALL                             R8 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R6 K6 [table.insert]
       52 CALL                             R6 -1 0
       53 GETUPVAL                         R6 2
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+16]
       56 MOVE                             R7 R2
       57 LOADK                            R10 K7 ["AssetExportController"]
       58 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       60 CALL                             R8 2 1
       61 GETTABLEKS                       R8 R8 K9 ["OnExportProgress"]
       63 NEWCLOSURE                       R10 P3
       64 CAPTURE                          VAL R0
       65 NAMECALL                         R8 R8 K3 ["Connect"]
       67 CALL                             R8 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R6 K6 [table.insert]
       71 CALL                             R6 -1 0
       72 MOVE                             R7 R2
       73 LOADK                            R10 K7 ["AssetExportController"]
       74 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       76 CALL                             R8 2 1
       77 GETTABLEKS                       R8 R8 K10 ["OnExportCompleteSuccess"]
       79 NEWCLOSURE                       R10 P4
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          REF R5
       82 CAPTURE                          VAL R0
       83 NAMECALL                         R8 R8 K3 ["Connect"]
       85 CALL                             R8 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R6 K6 [table.insert]
       89 CALL                             R6 -1 0
       90 MOVE                             R7 R2
       91 LOADK                            R10 K7 ["AssetExportController"]
       92 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       94 CALL                             R8 2 1
       95 GETTABLEKS                       R8 R8 K11 ["OnExportErrored"]
       97 NEWCLOSURE                       R10 P5
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          REF R5
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R8 R8 K3 ["Connect"]
      103 CALL                             R8 2 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R6 K6 [table.insert]
      107 CALL                             R6 -1 0
      108 MOVE                             R7 R2
      109 LOADK                            R10 K7 ["AssetExportController"]
      110 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      112 CALL                             R8 2 1
      113 GETTABLEKS                       R8 R8 K12 ["OnFileSelectCanceled"]
      115 NEWCLOSURE                       R10 P6
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          REF R3
      118 CAPTURE                          REF R4
      119 CAPTURE                          REF R5
      120 CAPTURE                          VAL R0
      121 NAMECALL                         R8 R8 K3 ["Connect"]
      123 CALL                             R8 2 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R6 K6 [table.insert]
      127 CALL                             R6 -1 0
      128 MOVE                             R7 R2
      129 LOADK                            R10 K7 ["AssetExportController"]
      130 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      132 CALL                             R8 2 1
      133 GETTABLEKS                       R8 R8 K13 ["OnPermissionCheckComplete"]
      135 NEWCLOSURE                       R10 P7
      136 CAPTURE                          VAL R0
      137 NAMECALL                         R8 R8 K3 ["Connect"]
      139 CALL                             R8 2 -1
      140 FASTCALL                         TABLE_INSERT ; [+2]
      141 GETIMPORT                        R6 K6 [table.insert]
      143 CALL                             R6 -1 0
      144 MOVE                             R7 R2
      145 LOADK                            R10 K7 ["AssetExportController"]
      146 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      148 CALL                             R8 2 1
      149 GETTABLEKS                       R8 R8 K14 ["OnPermissionCheckFailed"]
      151 NEWCLOSURE                       R10 P8
      152 CAPTURE                          VAL R0
      153 NAMECALL                         R8 R8 K3 ["Connect"]
      155 CALL                             R8 2 -1
      156 FASTCALL                         TABLE_INSERT ; [+2]
      157 GETIMPORT                        R6 K6 [table.insert]
      159 CALL                             R6 -1 0
      160 MOVE                             R7 R2
      161 LOADK                            R10 K15 ["OnShouldStartPermissions"]
      162 NEWCLOSURE                       R11 P9
      163 CAPTURE                          VAL R0
      164 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      166 CALL                             R8 3 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R6 K6 [table.insert]
      170 CALL                             R6 -1 0
      171 GETUPVAL                         R6 3
      172 CALL                             R6 0 1
      173 JUMPIFNOT                        R6 ; [+32]
      174 MOVE                             R7 R2
      175 LOADK                            R10 K7 ["AssetExportController"]
      176 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      178 CALL                             R8 2 1
      179 GETTABLEKS                       R8 R8 K17 ["OnAnimationExportRequested"]
      181 NEWCLOSURE                       R10 P10
      182 CAPTURE                          REF R3
      183 CAPTURE                          REF R4
      184 CAPTURE                          REF R5
      185 CAPTURE                          VAL R0
      186 NAMECALL                         R8 R8 K3 ["Connect"]
      188 CALL                             R8 2 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R6 K6 [table.insert]
      192 CALL                             R6 -1 0
      193 MOVE                             R7 R2
      194 LOADK                            R10 K18 ["OnShouldStartAnimationExport"]
      195 NEWCLOSURE                       R11 P11
      196 CAPTURE                          REF R3
      197 CAPTURE                          REF R4
      198 CAPTURE                          VAL R0
      199 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      201 CALL                             R8 3 -1
      202 FASTCALL                         TABLE_INSERT ; [+2]
      203 GETIMPORT                        R6 K6 [table.insert]
      205 CALL                             R6 -1 0
      206 MOVE                             R7 R2
      207 LOADK                            R10 K19 ["OnShouldStartExport"]
      208 NEWCLOSURE                       R11 P12
      209 CAPTURE                          UPVAL U3
      210 CAPTURE                          REF R5
      211 CAPTURE                          UPVAL U4
      212 CAPTURE                          VAL R0
      213 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      215 CALL                             R8 3 -1
      216 FASTCALL                         TABLE_INSERT ; [+2]
      217 GETIMPORT                        R6 K6 [table.insert]
      219 CALL                             R6 -1 0
      220 MOVE                             R7 R2
      221 LOADK                            R10 K20 ["OnShouldSelectFilename"]
      222 NEWCLOSURE                       R11 P13
      223 CAPTURE                          UPVAL U4
      224 CAPTURE                          VAL R0
      225 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      227 CALL                             R8 3 -1
      228 FASTCALL                         TABLE_INSERT ; [+2]
      229 GETIMPORT                        R6 K6 [table.insert]
      231 CALL                             R6 -1 0
      232 MOVE                             R7 R2
      233 LOADK                            R10 K21 ["OnShouldCancelExport"]
      234 NEWCLOSURE                       R11 P14
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          REF R3
      237 CAPTURE                          REF R4
      238 CAPTURE                          VAL R0
      239 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      241 CALL                             R8 3 -1
      242 FASTCALL                         TABLE_INSERT ; [+2]
      243 GETIMPORT                        R6 K6 [table.insert]
      245 CALL                             R6 -1 0
      246 MOVE                             R7 R2
      247 LOADK                            R10 K22 ["OnViewInExplorer"]
      248 DUPCLOSURE                       R11 K23 [PROTO_15]
      249 CAPTURE                          UPVAL U5
      250 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      252 CALL                             R8 3 -1
      253 FASTCALL                         TABLE_INSERT ; [+2]
      254 GETIMPORT                        R6 K6 [table.insert]
      256 CALL                             R6 -1 0
      257 MOVE                             R7 R2
      258 LOADK                            R10 K24 ["OnCreateCageParts"]
      259 NEWCLOSURE                       R11 P16
      260 CAPTURE                          UPVAL U6
      261 CAPTURE                          VAL R0
      262 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      264 CALL                             R8 3 -1
      265 FASTCALL                         TABLE_INSERT ; [+2]
      266 GETIMPORT                        R6 K6 [table.insert]
      268 CALL                             R6 -1 0
      269 MOVE                             R7 R2
      270 LOADK                            R10 K25 ["OnDestroyCageParts"]
      271 NEWCLOSURE                       R11 P17
      272 CAPTURE                          UPVAL U7
      273 CAPTURE                          VAL R0
      274 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      276 CALL                             R8 3 -1
      277 FASTCALL                         TABLE_INSERT ; [+2]
      278 GETIMPORT                        R6 K6 [table.insert]
      280 CALL                             R6 -1 0
      281 GETUPVAL                         R6 8
      282 CALL                             R6 0 1
      283 JUMPIFNOT                        R6 ; [+24]
      284 MOVE                             R7 R2
      285 LOADK                            R10 K26 ["OnCreateAttachmentParts"]
      286 NEWCLOSURE                       R11 P18
      287 CAPTURE                          UPVAL U9
      288 CAPTURE                          VAL R0
      289 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      291 CALL                             R8 3 -1
      292 FASTCALL                         TABLE_INSERT ; [+2]
      293 GETIMPORT                        R6 K6 [table.insert]
      295 CALL                             R6 -1 0
      296 MOVE                             R7 R2
      297 LOADK                            R10 K27 ["OnDestroyAttachmentParts"]
      298 NEWCLOSURE                       R11 P19
      299 CAPTURE                          UPVAL U10
      300 CAPTURE                          VAL R0
      301 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      303 CALL                             R8 3 -1
      304 FASTCALL                         TABLE_INSERT ; [+2]
      305 GETIMPORT                        R6 K6 [table.insert]
      307 CALL                             R6 -1 0
      308 CLOSEUPVALS                      R3
      309 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["selectAssetsWithId"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["createCages"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["destroyCages"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["createAttachments"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Util"]
       49 GETTABLEKS                       R6 R6 K12 ["destroyAttachments"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K13 ["Flags"]
       58 GETTABLEKS                       R7 R7 K14 ["getFFlagCreateAttachmentsOnAssetDm"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K13 ["Flags"]
       67 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimationExportSupport"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K13 ["Flags"]
       76 GETTABLEKS                       R9 R9 K16 ["getFFlagAsyncObjExport"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R10 K13 ["Flags"]
       85 GETTABLEKS                       R10 R10 K17 ["getFFlagGltfExportProgress"]
       87 CALL                             R9 1 1
       88 DUPTABLE                         R10 K28 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportAsGltf"}]
       89 DUPTABLE                         R11 K30 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportPlaceAsGltf"}]
       90 DUPCLOSURE                       R12 K31 [PROTO_20]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 RETURN                           R12 1
