PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportSelectionActionActivated"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Gltf"]
        5 NAMECALL                         R1 R1 K2 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportPlaceActionActivated"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Gltf"]
        5 NAMECALL                         R1 R1 K2 ["Invoke"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnExportSelectionActionActivated"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Obj"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnExportPlaceActionActivated"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Obj"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportFileNameInputted"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OnExportProgress"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["Invoke"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnPermissionCheckFailed"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetExportController"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["StartPermissionCheckAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_12:
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
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K3 ["Gltf"]
       14 NAMECALL                         R2 R2 K1 ["Invoke"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R8 R8 K3 ["Connect"]
       19 CALL                             R8 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R6 K6 [table.insert]
       23 CALL                             R6 -1 0
       24 MOVE                             R7 R2
       25 GETUPVAL                         R10 2
       26 NAMECALL                         R8 R1 K2 ["BindToActivatedAsync"]
       28 CALL                             R8 2 1
       29 NEWCLOSURE                       R10 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R8 R8 K3 ["Connect"]
       34 CALL                             R8 2 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R6 K6 [table.insert]
       38 CALL                             R6 -1 0
       39 GETUPVAL                         R6 3
       40 CALL                             R6 0 1
       41 JUMPIFNOT                        R6 ; [+30]
       42 MOVE                             R7 R2
       43 GETUPVAL                         R10 4
       44 NAMECALL                         R8 R1 K2 ["BindToActivatedAsync"]
       46 CALL                             R8 2 1
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 NAMECALL                         R8 R8 K3 ["Connect"]
       52 CALL                             R8 2 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R6 K6 [table.insert]
       56 CALL                             R6 -1 0
       57 MOVE                             R7 R2
       58 GETUPVAL                         R10 5
       59 NAMECALL                         R8 R1 K2 ["BindToActivatedAsync"]
       61 CALL                             R8 2 1
       62 NEWCLOSURE                       R10 P3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U1
       65 NAMECALL                         R8 R8 K3 ["Connect"]
       67 CALL                             R8 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R6 K6 [table.insert]
       71 CALL                             R6 -1 0
       72 MOVE                             R7 R2
       73 LOADK                            R10 K7 ["AssetExportController"]
       74 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       76 CALL                             R8 2 1
       77 GETTABLEKS                       R8 R8 K8 ["OnExportFileNameInputted"]
       79 NEWCLOSURE                       R10 P4
       80 CAPTURE                          VAL R0
       81 NAMECALL                         R8 R8 K3 ["Connect"]
       83 CALL                             R8 2 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R6 K6 [table.insert]
       87 CALL                             R6 -1 0
       88 GETUPVAL                         R6 6
       89 CALL                             R6 0 1
       90 JUMPIFNOT                        R6 ; [+16]
       91 MOVE                             R7 R2
       92 LOADK                            R10 K7 ["AssetExportController"]
       93 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       95 CALL                             R8 2 1
       96 GETTABLEKS                       R8 R8 K9 ["OnExportProgress"]
       98 NEWCLOSURE                       R10 P5
       99 CAPTURE                          VAL R0
      100 NAMECALL                         R8 R8 K3 ["Connect"]
      102 CALL                             R8 2 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R6 K6 [table.insert]
      106 CALL                             R6 -1 0
      107 MOVE                             R7 R2
      108 LOADK                            R10 K7 ["AssetExportController"]
      109 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      111 CALL                             R8 2 1
      112 GETTABLEKS                       R8 R8 K10 ["OnExportCompleteSuccess"]
      114 NEWCLOSURE                       R10 P6
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          REF R5
      117 CAPTURE                          VAL R0
      118 NAMECALL                         R8 R8 K3 ["Connect"]
      120 CALL                             R8 2 -1
      121 FASTCALL                         TABLE_INSERT ; [+2]
      122 GETIMPORT                        R6 K6 [table.insert]
      124 CALL                             R6 -1 0
      125 MOVE                             R7 R2
      126 LOADK                            R10 K7 ["AssetExportController"]
      127 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      129 CALL                             R8 2 1
      130 GETTABLEKS                       R8 R8 K11 ["OnExportErrored"]
      132 NEWCLOSURE                       R10 P7
      133 CAPTURE                          UPVAL U7
      134 CAPTURE                          REF R5
      135 CAPTURE                          VAL R0
      136 NAMECALL                         R8 R8 K3 ["Connect"]
      138 CALL                             R8 2 -1
      139 FASTCALL                         TABLE_INSERT ; [+2]
      140 GETIMPORT                        R6 K6 [table.insert]
      142 CALL                             R6 -1 0
      143 MOVE                             R7 R2
      144 LOADK                            R10 K7 ["AssetExportController"]
      145 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      147 CALL                             R8 2 1
      148 GETTABLEKS                       R8 R8 K12 ["OnFileSelectCanceled"]
      150 NEWCLOSURE                       R10 P8
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          REF R3
      153 CAPTURE                          REF R4
      154 CAPTURE                          REF R5
      155 CAPTURE                          VAL R0
      156 NAMECALL                         R8 R8 K3 ["Connect"]
      158 CALL                             R8 2 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R6 K6 [table.insert]
      162 CALL                             R6 -1 0
      163 MOVE                             R7 R2
      164 LOADK                            R10 K7 ["AssetExportController"]
      165 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      167 CALL                             R8 2 1
      168 GETTABLEKS                       R8 R8 K13 ["OnPermissionCheckComplete"]
      170 NEWCLOSURE                       R10 P9
      171 CAPTURE                          VAL R0
      172 NAMECALL                         R8 R8 K3 ["Connect"]
      174 CALL                             R8 2 -1
      175 FASTCALL                         TABLE_INSERT ; [+2]
      176 GETIMPORT                        R6 K6 [table.insert]
      178 CALL                             R6 -1 0
      179 MOVE                             R7 R2
      180 LOADK                            R10 K7 ["AssetExportController"]
      181 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      183 CALL                             R8 2 1
      184 GETTABLEKS                       R8 R8 K14 ["OnPermissionCheckFailed"]
      186 NEWCLOSURE                       R10 P10
      187 CAPTURE                          VAL R0
      188 NAMECALL                         R8 R8 K3 ["Connect"]
      190 CALL                             R8 2 -1
      191 FASTCALL                         TABLE_INSERT ; [+2]
      192 GETIMPORT                        R6 K6 [table.insert]
      194 CALL                             R6 -1 0
      195 MOVE                             R7 R2
      196 LOADK                            R10 K15 ["OnShouldStartPermissions"]
      197 NEWCLOSURE                       R11 P11
      198 CAPTURE                          VAL R0
      199 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      201 CALL                             R8 3 -1
      202 FASTCALL                         TABLE_INSERT ; [+2]
      203 GETIMPORT                        R6 K6 [table.insert]
      205 CALL                             R6 -1 0
      206 GETUPVAL                         R6 7
      207 CALL                             R6 0 1
      208 JUMPIFNOT                        R6 ; [+33]
      209 MOVE                             R7 R2
      210 LOADK                            R10 K7 ["AssetExportController"]
      211 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      213 CALL                             R8 2 1
      214 GETTABLEKS                       R8 R8 K17 ["OnAnimationExportRequested"]
      216 NEWCLOSURE                       R10 P12
      217 CAPTURE                          REF R3
      218 CAPTURE                          REF R4
      219 CAPTURE                          REF R5
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U1
      222 NAMECALL                         R8 R8 K3 ["Connect"]
      224 CALL                             R8 2 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R6 K6 [table.insert]
      228 CALL                             R6 -1 0
      229 MOVE                             R7 R2
      230 LOADK                            R10 K18 ["OnShouldStartAnimationExport"]
      231 NEWCLOSURE                       R11 P13
      232 CAPTURE                          REF R3
      233 CAPTURE                          REF R4
      234 CAPTURE                          VAL R0
      235 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      237 CALL                             R8 3 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R6 K6 [table.insert]
      241 CALL                             R6 -1 0
      242 MOVE                             R7 R2
      243 LOADK                            R10 K19 ["OnShouldStartExport"]
      244 NEWCLOSURE                       R11 P14
      245 CAPTURE                          UPVAL U7
      246 CAPTURE                          REF R5
      247 CAPTURE                          UPVAL U3
      248 CAPTURE                          VAL R0
      249 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      251 CALL                             R8 3 -1
      252 FASTCALL                         TABLE_INSERT ; [+2]
      253 GETIMPORT                        R6 K6 [table.insert]
      255 CALL                             R6 -1 0
      256 MOVE                             R7 R2
      257 LOADK                            R10 K20 ["OnShouldSelectFilename"]
      258 NEWCLOSURE                       R11 P15
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          VAL R0
      261 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      263 CALL                             R8 3 -1
      264 FASTCALL                         TABLE_INSERT ; [+2]
      265 GETIMPORT                        R6 K6 [table.insert]
      267 CALL                             R6 -1 0
      268 MOVE                             R7 R2
      269 LOADK                            R10 K21 ["OnShouldCancelExport"]
      270 NEWCLOSURE                       R11 P16
      271 CAPTURE                          UPVAL U7
      272 CAPTURE                          REF R3
      273 CAPTURE                          REF R4
      274 CAPTURE                          VAL R0
      275 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      277 CALL                             R8 3 -1
      278 FASTCALL                         TABLE_INSERT ; [+2]
      279 GETIMPORT                        R6 K6 [table.insert]
      281 CALL                             R6 -1 0
      282 MOVE                             R7 R2
      283 LOADK                            R10 K22 ["OnViewInExplorer"]
      284 DUPCLOSURE                       R11 K23 [PROTO_17]
      285 CAPTURE                          UPVAL U8
      286 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      288 CALL                             R8 3 -1
      289 FASTCALL                         TABLE_INSERT ; [+2]
      290 GETIMPORT                        R6 K6 [table.insert]
      292 CALL                             R6 -1 0
      293 MOVE                             R7 R2
      294 LOADK                            R10 K24 ["OnCreateCageParts"]
      295 NEWCLOSURE                       R11 P18
      296 CAPTURE                          UPVAL U9
      297 CAPTURE                          VAL R0
      298 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      300 CALL                             R8 3 -1
      301 FASTCALL                         TABLE_INSERT ; [+2]
      302 GETIMPORT                        R6 K6 [table.insert]
      304 CALL                             R6 -1 0
      305 MOVE                             R7 R2
      306 LOADK                            R10 K25 ["OnDestroyCageParts"]
      307 NEWCLOSURE                       R11 P19
      308 CAPTURE                          UPVAL U10
      309 CAPTURE                          VAL R0
      310 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      312 CALL                             R8 3 -1
      313 FASTCALL                         TABLE_INSERT ; [+2]
      314 GETIMPORT                        R6 K6 [table.insert]
      316 CALL                             R6 -1 0
      317 GETUPVAL                         R6 11
      318 CALL                             R6 0 1
      319 JUMPIFNOT                        R6 ; [+24]
      320 MOVE                             R7 R2
      321 LOADK                            R10 K26 ["OnCreateAttachmentParts"]
      322 NEWCLOSURE                       R11 P20
      323 CAPTURE                          UPVAL U12
      324 CAPTURE                          VAL R0
      325 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      327 CALL                             R8 3 -1
      328 FASTCALL                         TABLE_INSERT ; [+2]
      329 GETIMPORT                        R6 K6 [table.insert]
      331 CALL                             R6 -1 0
      332 MOVE                             R7 R2
      333 LOADK                            R10 K27 ["OnDestroyAttachmentParts"]
      334 NEWCLOSURE                       R11 P21
      335 CAPTURE                          UPVAL U13
      336 CAPTURE                          VAL R0
      337 NAMECALL                         R8 R0 K16 ["OnInvoke"]
      339 CALL                             R8 3 -1
      340 FASTCALL                         TABLE_INSERT ; [+2]
      341 GETIMPORT                        R6 K6 [table.insert]
      343 CALL                             R6 -1 0
      344 CLOSEUPVALS                      R3
      345 RETURN                           R2 1

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
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Src"]
       92 GETTABLEKS                       R11 R11 K7 ["Util"]
       94 GETTABLEKS                       R11 R11 K18 ["ExportFormat"]
       96 CALL                             R10 1 1
       97 DUPTABLE                         R11 K29 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportAsGltf"}]
       98 DUPTABLE                         R12 K31 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportPlaceAsGltf"}]
       99 DUPTABLE                         R13 K33 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportSelection"}]
      100 DUPTABLE                         R14 K36 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "PlaceManagement", ["Category"] = "Actions", ["ItemId"] = "ExportAsObjFile"}]
      101 DUPCLOSURE                       R15 K37 [PROTO_22]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 RETURN                           R15 1
