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

PROTO_12:
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
      192 CAPTURE                          UPVAL U3
      193 CAPTURE                          VAL R0
      194 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      196 CALL                             R8 3 -1
      197 FASTCALL                         TABLE_INSERT ; [+2]
      198 GETIMPORT                        R6 K6 [table.insert]
      200 CALL                             R6 -1 0
      201 MOVE                             R7 R2
      202 LOADK                            R10 K19 ["OnShouldSelectFilename"]
      203 NEWCLOSURE                       R11 P12
      204 CAPTURE                          UPVAL U3
      205 CAPTURE                          VAL R0
      206 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      208 CALL                             R8 3 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R6 K6 [table.insert]
      212 CALL                             R6 -1 0
      213 MOVE                             R7 R2
      214 LOADK                            R10 K20 ["OnShouldCancelExport"]
      215 NEWCLOSURE                       R11 P13
      216 CAPTURE                          UPVAL U2
      217 CAPTURE                          REF R3
      218 CAPTURE                          REF R4
      219 CAPTURE                          VAL R0
      220 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      222 CALL                             R8 3 -1
      223 FASTCALL                         TABLE_INSERT ; [+2]
      224 GETIMPORT                        R6 K6 [table.insert]
      226 CALL                             R6 -1 0
      227 MOVE                             R7 R2
      228 LOADK                            R10 K21 ["OnViewInExplorer"]
      229 DUPCLOSURE                       R11 K22 [PROTO_14]
      230 CAPTURE                          UPVAL U4
      231 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      233 CALL                             R8 3 -1
      234 FASTCALL                         TABLE_INSERT ; [+2]
      235 GETIMPORT                        R6 K6 [table.insert]
      237 CALL                             R6 -1 0
      238 MOVE                             R7 R2
      239 LOADK                            R10 K23 ["OnCreateCageParts"]
      240 NEWCLOSURE                       R11 P15
      241 CAPTURE                          UPVAL U5
      242 CAPTURE                          VAL R0
      243 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      245 CALL                             R8 3 -1
      246 FASTCALL                         TABLE_INSERT ; [+2]
      247 GETIMPORT                        R6 K6 [table.insert]
      249 CALL                             R6 -1 0
      250 MOVE                             R7 R2
      251 LOADK                            R10 K24 ["OnDestroyCageParts"]
      252 NEWCLOSURE                       R11 P16
      253 CAPTURE                          UPVAL U6
      254 CAPTURE                          VAL R0
      255 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      257 CALL                             R8 3 -1
      258 FASTCALL                         TABLE_INSERT ; [+2]
      259 GETIMPORT                        R6 K6 [table.insert]
      261 CALL                             R6 -1 0
      262 GETUPVAL                         R6 7
      263 CALL                             R6 0 1
      264 JUMPIFNOT                        R6 ; [+24]
      265 MOVE                             R7 R2
      266 LOADK                            R10 K25 ["OnCreateAttachmentParts"]
      267 NEWCLOSURE                       R11 P17
      268 CAPTURE                          UPVAL U8
      269 CAPTURE                          VAL R0
      270 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      272 CALL                             R8 3 -1
      273 FASTCALL                         TABLE_INSERT ; [+2]
      274 GETIMPORT                        R6 K6 [table.insert]
      276 CALL                             R6 -1 0
      277 MOVE                             R7 R2
      278 LOADK                            R10 K26 ["OnDestroyAttachmentParts"]
      279 NEWCLOSURE                       R11 P18
      280 CAPTURE                          UPVAL U9
      281 CAPTURE                          VAL R0
      282 NAMECALL                         R8 R0 K15 ["OnInvoke"]
      284 CALL                             R8 3 -1
      285 FASTCALL                         TABLE_INSERT ; [+2]
      286 GETIMPORT                        R6 K6 [table.insert]
      288 CALL                             R6 -1 0
      289 CLOSEUPVALS                      R3
      290 RETURN                           R2 1

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
       79 DUPTABLE                         R9 K27 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportAsGltf"}]
       80 DUPTABLE                         R10 K29 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "Export", ["Category"] = "Actions", ["ItemId"] = "ExportPlaceAsGltf"}]
       81 DUPCLOSURE                       R11 K30 [PROTO_19]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 RETURN                           R11 1
