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
        1 LOADK                            R2 K0 ["OnExportCompleteSuccess"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnExportErrored"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OnFileSelectCanceled"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["AssetExportController"]
        2 NAMECALL                         R3 R3 K1 ["GetPluginComponent"]
        4 CALL                             R3 2 1
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 NAMECALL                         R3 R3 K2 ["StartExportAsync"]
       10 CALL                             R3 4 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetExportController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K2 ["SelectExportFileNameAsync"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetExportController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K2 ["CancelExportInstigatedAsync"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R4 R2
        7 GETUPVAL                         R7 0
        8 NAMECALL                         R5 R1 K2 ["BindToActivatedAsync"]
       10 CALL                             R5 2 1
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R5 R5 K3 ["Connect"]
       15 CALL                             R5 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R3 K6 [table.insert]
       19 CALL                             R3 -1 0
       20 MOVE                             R4 R2
       21 GETUPVAL                         R7 1
       22 NAMECALL                         R5 R1 K2 ["BindToActivatedAsync"]
       24 CALL                             R5 2 1
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R5 R5 K3 ["Connect"]
       29 CALL                             R5 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R3 K6 [table.insert]
       33 CALL                             R3 -1 0
       34 MOVE                             R4 R2
       35 LOADK                            R8 K7 ["AssetExportController"]
       36 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
       38 CALL                             R6 2 1
       39 GETTABLEKS                       R5 R6 K8 ["OnExportFileNameInputted"]
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R5 R5 K3 ["Connect"]
       45 CALL                             R5 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R3 K6 [table.insert]
       49 CALL                             R3 -1 0
       50 MOVE                             R4 R2
       51 LOADK                            R8 K7 ["AssetExportController"]
       52 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
       54 CALL                             R6 2 1
       55 GETTABLEKS                       R5 R6 K9 ["OnExportCompleteSuccess"]
       57 NEWCLOSURE                       R7 P3
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R5 R5 K3 ["Connect"]
       61 CALL                             R5 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R3 K6 [table.insert]
       65 CALL                             R3 -1 0
       66 MOVE                             R4 R2
       67 LOADK                            R8 K7 ["AssetExportController"]
       68 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
       70 CALL                             R6 2 1
       71 GETTABLEKS                       R5 R6 K10 ["OnExportErrored"]
       73 NEWCLOSURE                       R7 P4
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R5 R5 K3 ["Connect"]
       77 CALL                             R5 2 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 -1 0
       82 MOVE                             R4 R2
       83 LOADK                            R8 K7 ["AssetExportController"]
       84 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
       86 CALL                             R6 2 1
       87 GETTABLEKS                       R5 R6 K11 ["OnFileSelectCanceled"]
       89 NEWCLOSURE                       R7 P5
       90 CAPTURE                          VAL R0
       91 NAMECALL                         R5 R5 K3 ["Connect"]
       93 CALL                             R5 2 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R3 K6 [table.insert]
       97 CALL                             R3 -1 0
       98 MOVE                             R4 R2
       99 LOADK                            R8 K7 ["AssetExportController"]
      100 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
      102 CALL                             R6 2 1
      103 GETTABLEKS                       R5 R6 K12 ["OnPermissionCheckComplete"]
      105 NEWCLOSURE                       R7 P6
      106 CAPTURE                          VAL R0
      107 NAMECALL                         R5 R5 K3 ["Connect"]
      109 CALL                             R5 2 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R3 K6 [table.insert]
      113 CALL                             R3 -1 0
      114 MOVE                             R4 R2
      115 LOADK                            R8 K7 ["AssetExportController"]
      116 NAMECALL                         R6 R0 K1 ["GetPluginComponent"]
      118 CALL                             R6 2 1
      119 GETTABLEKS                       R5 R6 K13 ["OnPermissionCheckFailed"]
      121 NEWCLOSURE                       R7 P7
      122 CAPTURE                          VAL R0
      123 NAMECALL                         R5 R5 K3 ["Connect"]
      125 CALL                             R5 2 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R3 K6 [table.insert]
      129 CALL                             R3 -1 0
      130 MOVE                             R4 R2
      131 LOADK                            R7 K14 ["OnShouldStartPermissions"]
      132 NEWCLOSURE                       R8 P8
      133 CAPTURE                          VAL R0
      134 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      136 CALL                             R5 3 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R3 K6 [table.insert]
      140 CALL                             R3 -1 0
      141 MOVE                             R4 R2
      142 LOADK                            R7 K16 ["OnShouldStartExport"]
      143 NEWCLOSURE                       R8 P9
      144 CAPTURE                          VAL R0
      145 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      147 CALL                             R5 3 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R3 K6 [table.insert]
      151 CALL                             R3 -1 0
      152 MOVE                             R4 R2
      153 LOADK                            R7 K17 ["OnShouldSelectFilename"]
      154 NEWCLOSURE                       R8 P10
      155 CAPTURE                          VAL R0
      156 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      158 CALL                             R5 3 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R3 K6 [table.insert]
      162 CALL                             R3 -1 0
      163 MOVE                             R4 R2
      164 LOADK                            R7 K18 ["OnShouldCancelExport"]
      165 NEWCLOSURE                       R8 P11
      166 CAPTURE                          VAL R0
      167 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      169 CALL                             R5 3 -1
      170 FASTCALL                         TABLE_INSERT ; [+2]
      171 GETIMPORT                        R3 K6 [table.insert]
      173 CALL                             R3 -1 0
      174 MOVE                             R4 R2
      175 LOADK                            R7 K19 ["OnViewInExplorer"]
      176 DUPCLOSURE                       R8 K20 [PROTO_12]
      177 CAPTURE                          UPVAL U2
      178 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      180 CALL                             R5 3 -1
      181 FASTCALL                         TABLE_INSERT ; [+2]
      182 GETIMPORT                        R3 K6 [table.insert]
      184 CALL                             R3 -1 0
      185 GETUPVAL                         R3 3
      186 CALL                             R3 0 1
      187 JUMPIFNOT                        R3 ; [+24]
      188 MOVE                             R4 R2
      189 LOADK                            R7 K21 ["OnCreateCageParts"]
      190 NEWCLOSURE                       R8 P13
      191 CAPTURE                          UPVAL U4
      192 CAPTURE                          VAL R0
      193 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      195 CALL                             R5 3 -1
      196 FASTCALL                         TABLE_INSERT ; [+2]
      197 GETIMPORT                        R3 K6 [table.insert]
      199 CALL                             R3 -1 0
      200 MOVE                             R4 R2
      201 LOADK                            R7 K22 ["OnDestroyCageParts"]
      202 NEWCLOSURE                       R8 P14
      203 CAPTURE                          UPVAL U5
      204 CAPTURE                          VAL R0
      205 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      207 CALL                             R5 3 -1
      208 FASTCALL                         TABLE_INSERT ; [+2]
      209 GETIMPORT                        R3 K6 [table.insert]
      211 CALL                             R3 -1 0
      212 GETUPVAL                         R3 6
      213 CALL                             R3 0 1
      214 JUMPIFNOT                        R3 ; [+24]
      215 MOVE                             R4 R2
      216 LOADK                            R7 K23 ["OnCreateAttachmentParts"]
      217 NEWCLOSURE                       R8 P15
      218 CAPTURE                          UPVAL U7
      219 CAPTURE                          VAL R0
      220 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      222 CALL                             R5 3 -1
      223 FASTCALL                         TABLE_INSERT ; [+2]
      224 GETIMPORT                        R3 K6 [table.insert]
      226 CALL                             R3 -1 0
      227 MOVE                             R4 R2
      228 LOADK                            R7 K24 ["OnDestroyAttachmentParts"]
      229 NEWCLOSURE                       R8 P16
      230 CAPTURE                          UPVAL U8
      231 CAPTURE                          VAL R0
      232 NAMECALL                         R5 R0 K15 ["OnInvoke"]
      234 CALL                             R5 3 -1
      235 FASTCALL                         TABLE_INSERT ; [+2]
      236 GETIMPORT                        R3 K6 [table.insert]
      238 CALL                             R3 -1 0
      239 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["selectAssetsWithId"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["createCages"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["destroyCages"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["createAttachments"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Util"]
       49 GETTABLEKS                       R6 R7 K12 ["destroyAttachments"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R9 K13 ["Flags"]
       58 GETTABLEKS                       R7 R8 K14 ["getFFlagCreateCagesOnAssetDm"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R10 K13 ["Flags"]
       67 GETTABLEKS                       R8 R9 K15 ["getFFlagCreateAttachmentsOnAssetDm"]
       69 CALL                             R7 1 1
       70 DUPTABLE                         R8 K21 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       71 LOADK                            R9 K22 ["Standalone"]
       72 SETTABLEKS                       R9 R8 K16 ["DataModel"]
       74 LOADK                            R9 K23 ["Unknown"]
       75 SETTABLEKS                       R9 R8 K17 ["PluginType"]
       77 LOADK                            R9 K24 ["Export"]
       78 SETTABLEKS                       R9 R8 K18 ["PluginId"]
       80 LOADK                            R9 K25 ["Actions"]
       81 SETTABLEKS                       R9 R8 K19 ["Category"]
       83 LOADK                            R9 K26 ["ExportAsGltf"]
       84 SETTABLEKS                       R9 R8 K20 ["ItemId"]
       86 DUPTABLE                         R9 K21 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       87 LOADK                            R10 K22 ["Standalone"]
       88 SETTABLEKS                       R10 R9 K16 ["DataModel"]
       90 LOADK                            R10 K23 ["Unknown"]
       91 SETTABLEKS                       R10 R9 K17 ["PluginType"]
       93 LOADK                            R10 K24 ["Export"]
       94 SETTABLEKS                       R10 R9 K18 ["PluginId"]
       96 LOADK                            R10 K25 ["Actions"]
       97 SETTABLEKS                       R10 R9 K19 ["Category"]
       99 LOADK                            R10 K27 ["ExportPlaceAsGltf"]
      100 SETTABLEKS                       R10 R9 K20 ["ItemId"]
      102 DUPCLOSURE                       R10 K28 [PROTO_17]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 RETURN                           R10 1
