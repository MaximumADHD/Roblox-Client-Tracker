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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnPermissionCheckFailed"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetExportController"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["StartPermissionCheckAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 2
        7 LOADK                            R5 K0 ["AssetExportController"]
        8 NAMECALL                         R3 R3 K1 ["GetPluginComponent"]
       10 CALL                             R3 2 1
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 MOVE                             R7 R2
       14 NAMECALL                         R3 R3 K2 ["StartExportAsync"]
       16 CALL                             R3 4 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetExportController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K2 ["SelectExportFileNameAsync"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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
       53 MOVE                             R7 R2
       54 LOADK                            R10 K7 ["AssetExportController"]
       55 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       57 CALL                             R8 2 1
       58 GETTABLEKS                       R8 R8 K9 ["OnExportCompleteSuccess"]
       60 NEWCLOSURE                       R10 P3
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          REF R5
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R8 R8 K3 ["Connect"]
       66 CALL                             R8 2 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R6 K6 [table.insert]
       70 CALL                             R6 -1 0
       71 MOVE                             R7 R2
       72 LOADK                            R10 K7 ["AssetExportController"]
       73 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       75 CALL                             R8 2 1
       76 GETTABLEKS                       R8 R8 K10 ["OnExportErrored"]
       78 NEWCLOSURE                       R10 P4
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          REF R5
       81 CAPTURE                          VAL R0
       82 NAMECALL                         R8 R8 K3 ["Connect"]
       84 CALL                             R8 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R6 K6 [table.insert]
       88 CALL                             R6 -1 0
       89 MOVE                             R7 R2
       90 LOADK                            R10 K7 ["AssetExportController"]
       91 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
       93 CALL                             R8 2 1
       94 GETTABLEKS                       R8 R8 K11 ["OnFileSelectCanceled"]
       96 NEWCLOSURE                       R10 P5
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          REF R3
       99 CAPTURE                          REF R4
      100 CAPTURE                          REF R5
      101 CAPTURE                          VAL R0
      102 NAMECALL                         R8 R8 K3 ["Connect"]
      104 CALL                             R8 2 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R6 K6 [table.insert]
      108 CALL                             R6 -1 0
      109 MOVE                             R7 R2
      110 LOADK                            R10 K7 ["AssetExportController"]
      111 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      113 CALL                             R8 2 1
      114 GETTABLEKS                       R8 R8 K12 ["OnPermissionCheckComplete"]
      116 NEWCLOSURE                       R10 P6
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
      130 GETTABLEKS                       R8 R8 K13 ["OnPermissionCheckFailed"]
      132 NEWCLOSURE                       R10 P7
      133 CAPTURE                          VAL R0
      134 NAMECALL                         R8 R8 K3 ["Connect"]
      136 CALL                             R8 2 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R6 K6 [table.insert]
      140 CALL                             R6 -1 0
      141 MOVE                             R7 R2
      142 LOADK                            R10 K14 ["OnShouldStartPermissions"]
      143 NEWCLOSURE                       R11 P8
      144 CAPTURE                          VAL R0
      145 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      147 CALL                             R8 3 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R6 K6 [table.insert]
      151 CALL                             R6 -1 0
      152 GETUPVAL                         R6 2
      153 CALL                             R6 0 1
      154 JUMPIFNOT                        R6 ; [+32]
      155 MOVE                             R7 R2
      156 LOADK                            R10 K7 ["AssetExportController"]
      157 NAMECALL                         R8 R0 K1 ["GetPluginComponent"]
      159 CALL                             R8 2 1
      160 GETTABLEKS                       R8 R8 K16 ["OnAnimationExportRequested"]
      162 NEWCLOSURE                       R10 P9
      163 CAPTURE                          REF R3
      164 CAPTURE                          REF R4
      165 CAPTURE                          REF R5
      166 CAPTURE                          VAL R0
      167 NAMECALL                         R8 R8 K3 ["Connect"]
      169 CALL                             R8 2 -1
      170 FASTCALL                         TABLE_INSERT ; [+2]
      171 GETIMPORT                        R6 K6 [table.insert]
      173 CALL                             R6 -1 0
      174 MOVE                             R7 R2
      175 LOADK                            R10 K17 ["OnShouldStartAnimationExport"]
      176 NEWCLOSURE                       R11 P10
      177 CAPTURE                          REF R3
      178 CAPTURE                          REF R4
      179 CAPTURE                          VAL R0
      180 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      182 CALL                             R8 3 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R6 K6 [table.insert]
      186 CALL                             R6 -1 0
      187 MOVE                             R7 R2
      188 LOADK                            R10 K18 ["OnShouldStartExport"]
      189 NEWCLOSURE                       R11 P11
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          REF R5
      192 CAPTURE                          VAL R0
      193 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      195 CALL                             R8 3 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R6 K6 [table.insert]
      199 CALL                             R6 -1 0
      200 MOVE                             R7 R2
      201 LOADK                            R10 K19 ["OnShouldSelectFilename"]
      202 NEWCLOSURE                       R11 P12
      203 CAPTURE                          VAL R0
      204 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      206 CALL                             R8 3 -1
      207 FASTCALL                         TABLE_INSERT ; [+2]
      208 GETIMPORT                        R6 K6 [table.insert]
      210 CALL                             R6 -1 0
      211 MOVE                             R7 R2
      212 LOADK                            R10 K20 ["OnShouldCancelExport"]
      213 NEWCLOSURE                       R11 P13
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          REF R3
      216 CAPTURE                          REF R4
      217 CAPTURE                          VAL R0
      218 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      220 CALL                             R8 3 -1
      221 FASTCALL                         TABLE_INSERT ; [+2]
      222 GETIMPORT                        R6 K6 [table.insert]
      224 CALL                             R6 -1 0
      225 MOVE                             R7 R2
      226 LOADK                            R10 K21 ["OnViewInExplorer"]
      227 DUPCLOSURE                       R11 K22 [PROTO_14]
      228 CAPTURE                          UPVAL U3
      229 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      231 CALL                             R8 3 -1
      232 FASTCALL                         TABLE_INSERT ; [+2]
      233 GETIMPORT                        R6 K6 [table.insert]
      235 CALL                             R6 -1 0
      236 GETUPVAL                         R6 4
      237 CALL                             R6 0 1
      238 JUMPIFNOT                        R6 ; [+24]
      239 MOVE                             R7 R2
      240 LOADK                            R10 K23 ["OnCreateCageParts"]
      241 NEWCLOSURE                       R11 P15
      242 CAPTURE                          UPVAL U5
      243 CAPTURE                          VAL R0
      244 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      246 CALL                             R8 3 -1
      247 FASTCALL                         TABLE_INSERT ; [+2]
      248 GETIMPORT                        R6 K6 [table.insert]
      250 CALL                             R6 -1 0
      251 MOVE                             R7 R2
      252 LOADK                            R10 K24 ["OnDestroyCageParts"]
      253 NEWCLOSURE                       R11 P16
      254 CAPTURE                          UPVAL U6
      255 CAPTURE                          VAL R0
      256 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      258 CALL                             R8 3 -1
      259 FASTCALL                         TABLE_INSERT ; [+2]
      260 GETIMPORT                        R6 K6 [table.insert]
      262 CALL                             R6 -1 0
      263 GETUPVAL                         R6 7
      264 CALL                             R6 0 1
      265 JUMPIFNOT                        R6 ; [+24]
      266 MOVE                             R7 R2
      267 LOADK                            R10 K25 ["OnCreateAttachmentParts"]
      268 NEWCLOSURE                       R11 P17
      269 CAPTURE                          UPVAL U8
      270 CAPTURE                          VAL R0
      271 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      273 CALL                             R8 3 -1
      274 FASTCALL                         TABLE_INSERT ; [+2]
      275 GETIMPORT                        R6 K6 [table.insert]
      277 CALL                             R6 -1 0
      278 MOVE                             R7 R2
      279 LOADK                            R10 K26 ["OnDestroyAttachmentParts"]
      280 NEWCLOSURE                       R11 P18
      281 CAPTURE                          UPVAL U9
      282 CAPTURE                          VAL R0
      283 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      285 CALL                             R8 3 -1
      286 FASTCALL                         TABLE_INSERT ; [+2]
      287 GETIMPORT                        R6 K6 [table.insert]
      289 CALL                             R6 -1 0
      290 CLOSEUPVALS                      R3
      291 RETURN                           R2 1

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
       58 GETTABLEKS                       R7 R7 K14 ["getFFlagCreateCagesOnAssetDm"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K13 ["Flags"]
       67 GETTABLEKS                       R8 R8 K15 ["getFFlagCreateAttachmentsOnAssetDm"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K13 ["Flags"]
       76 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimationExportSupport"]
       78 CALL                             R8 1 1
       79 DUPTABLE                         R9 K22 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       80 LOADK                            R10 K23 ["Standalone"]
       81 SETTABLEKS                       R10 R9 K17 ["DataModel"]
       83 LOADK                            R10 K24 ["Unknown"]
       84 SETTABLEKS                       R10 R9 K18 ["PluginType"]
       86 LOADK                            R10 K25 ["Export"]
       87 SETTABLEKS                       R10 R9 K19 ["PluginId"]
       89 LOADK                            R10 K26 ["Actions"]
       90 SETTABLEKS                       R10 R9 K20 ["Category"]
       92 LOADK                            R10 K27 ["ExportAsGltf"]
       93 SETTABLEKS                       R10 R9 K21 ["ItemId"]
       95 DUPTABLE                         R10 K22 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       96 LOADK                            R11 K23 ["Standalone"]
       97 SETTABLEKS                       R11 R10 K17 ["DataModel"]
       99 LOADK                            R11 K24 ["Unknown"]
      100 SETTABLEKS                       R11 R10 K18 ["PluginType"]
      102 LOADK                            R11 K25 ["Export"]
      103 SETTABLEKS                       R11 R10 K19 ["PluginId"]
      105 LOADK                            R11 K26 ["Actions"]
      106 SETTABLEKS                       R11 R10 K20 ["Category"]
      108 LOADK                            R11 K28 ["ExportPlaceAsGltf"]
      109 SETTABLEKS                       R11 R10 K21 ["ItemId"]
      111 DUPCLOSURE                       R11 K29 [PROTO_19]
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 RETURN                           R11 1
