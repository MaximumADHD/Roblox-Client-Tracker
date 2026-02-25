PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetShowUploadWidget"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["UploadWidgetItem"]
        5 GETTABLEKS                       R1 R2 K2 ["uploadResults"]
        7 LOADNIL                          R2
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETTABLEKS                       R3 R1 K3 ["Succeeded"]
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETTABLEKS                       R5 R0 K1 ["UploadWidgetItem"]
       14 GETTABLEKS                       R4 R5 K4 ["session"]
       16 NAMECALL                         R4 R4 K5 ["GetImportTree"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K6 ["Id"]
       21 GETTABLEKS                       R4 R1 K7 ["AssetIds"]
       23 GETTABLE                         R2 R4 R3
       24 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["UploadWidgetItem"]
        5 GETTABLEKS                       R1 R2 K2 ["uploadResults"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["Succeeded"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K4 ["Instance"]
       14 NEWTABLE                         R3 0 0
       16 LOADK                            R6 K5 ["MeshPart"]
       17 NAMECALL                         R4 R2 K6 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+8]
       21 GETTABLEKS                       R6 R2 K7 ["MeshId"]
       23 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K10 [table.insert]
       28 CALL                             R4 2 0
       29 NAMECALL                         R4 R2 K11 ["GetDescendants"]
       31 CALL                             R4 1 3
       32 FORGPREP                         R4
       33 LOADK                            R11 K5 ["MeshPart"]
       34 NAMECALL                         R9 R8 K6 ["IsA"]
       36 CALL                             R9 2 1
       37 JUMPIFNOT                        R9 ; [+8]
       38 GETTABLEKS                       R11 R8 K7 ["MeshId"]
       40 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       42 MOVE                             R10 R3
       43 GETIMPORT                        R9 K10 [table.insert]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R4 2 ; [-14]
       48 LOADK                            R5 K12 ["["]
       49 GETIMPORT                        R8 K14 [table.concat]
       51 MOVE                             R9 R3
       52 LOADK                            R10 K15 [", "]
       53 CALL                             R8 2 1
       54 MOVE                             R6 R8
       55 LOADK                            R7 K16 ["]"]
       56 CONCAT                           R4 R5 R7
       57 GETUPVAL                         R5 1
       58 FASTCALL1                        TOSTRING R4 ; [+3]
       59 MOVE                             R8 R4
       60 GETIMPORT                        R7 K18 [tostring]
       62 CALL                             R7 1 1
       63 NAMECALL                         R5 R5 K19 ["CopyToClipboard"]
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["FileController"]
        5 GETTABLEKS                       R4 R0 K2 ["UploadWidgetItem"]
        7 GETTABLEKS                       R3 R4 K3 ["filepath"]
        9 NAMECALL                         R1 R1 K4 ["requestPreview"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["Close"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["onClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["CopyMeshID"] ; [+6]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["copyMeshIds"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R0 K4 ["Retry"] ; [+9]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K1 ["onClose"]
       19 CALL                             R1 0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K5 ["returnToPreview"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"uploadResults"}]
        2 SETTABLEKS                       R0 R3 K0 ["uploadResults"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["SetUploading"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [pairs]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 3
        7 FORGPREP_NEXT                    R1
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-4]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["ShowUploadWidget"]
        5 JUMPIFNOT                        R2 ; [+97]
        6 GETTABLEKS                       R3 R1 K2 ["Uploading"]
        8 JUMPIFNOT                        R3 ; [+29]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+91]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["createElement"]
       15 GETUPVAL                         R4 3
       16 DUPTABLE                         R5 K6 [{"UploadStatus", "UploadText"}]
       17 SETTABLEKS                       R0 R5 K4 ["UploadStatus"]
       19 GETTABLEKS                       R6 R1 K7 ["Localization"]
       21 LOADK                            R8 K8 ["Upload"]
       22 LOADK                            R9 K9 ["ProgressDescription"]
       23 DUPTABLE                         R10 K11 [{"assetName"}]
       24 GETTABLEKS                       R12 R1 K12 ["UploadWidgetItem"]
       26 GETTABLEKS                       R11 R12 K10 ["assetName"]
       28 SETTABLEKS                       R11 R10 K10 ["assetName"]
       30 NAMECALL                         R6 R6 K13 ["getText"]
       32 CALL                             R6 4 1
       33 SETTABLEKS                       R6 R5 K5 ["UploadText"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1
       37 JUMP                             ; [+65]
       38 JUMPIFNOT                        R0 ; [+27]
       39 GETTABLEKS                       R3 R0 K14 ["Succeeded"]
       41 JUMPIFNOT                        R3 ; [+24]
       42 GETTABLEKS                       R4 R1 K12 ["UploadWidgetItem"]
       44 GETTABLEKS                       R3 R4 K15 ["session"]
       46 NAMECALL                         R3 R3 K16 ["GetImportTree"]
       48 CALL                             R3 1 1
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K3 ["createElement"]
       52 GETUPVAL                         R5 4
       53 DUPTABLE                         R6 K19 [{"AddedToInventory", "AssetId"}]
       54 GETTABLEKS                       R7 R3 K20 ["AddModelToInventory"]
       56 SETTABLEKS                       R7 R6 K17 ["AddedToInventory"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K21 ["getRootAssetId"]
       61 CALL                             R7 0 1
       62 SETTABLEKS                       R7 R6 K18 ["AssetId"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1
       66 JUMPIFNOT                        R0 ; [+36]
       67 GETTABLEKS                       R3 R0 K14 ["Succeeded"]
       69 JUMPIFEQKNIL                     R3 ; [+33]
       71 GETTABLEKS                       R3 R0 K14 ["Succeeded"]
       73 JUMPIF                           R3 ; [+29]
       74 GETTABLEKS                       R4 R1 K12 ["UploadWidgetItem"]
       76 GETTABLEKS                       R3 R4 K15 ["session"]
       78 NAMECALL                         R3 R3 K16 ["GetImportTree"]
       80 CALL                             R3 1 1
       81 GETUPVAL                         R5 2
       82 GETTABLEKS                       R4 R5 K3 ["createElement"]
       84 GETUPVAL                         R5 5
       85 DUPTABLE                         R6 K25 [{"LayoutOrder", "ErrorMap", "ExistingPackageId", "UploadWidgetItem"}]
       86 LOADN                            R7 1
       87 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       89 GETTABLEKS                       R7 R0 K26 ["ErrorMessages"]
       91 SETTABLEKS                       R7 R6 K23 ["ErrorMap"]
       93 GETTABLEKS                       R7 R3 K24 ["ExistingPackageId"]
       95 SETTABLEKS                       R7 R6 K24 ["ExistingPackageId"]
       97 GETTABLEKS                       R7 R1 K12 ["UploadWidgetItem"]
       99 SETTABLEKS                       R7 R6 K12 ["UploadWidgetItem"]
      101 CALL                             R4 2 -1
      102 RETURN                           R4 -1
      103 LOADNIL                          R3
      104 RETURN                           R3 1

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"uploadResults", "progressValue", "errorMap"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["uploadResults"]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["progressValue"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["errorMap"]
       12 SETTABLEKS                       R1 R0 K4 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onClose"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["getRootAssetId"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R1 R0 K7 ["copyMeshIds"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K8 ["returnToPreview"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K9 ["onButtonPressed"]
       35 NEWCLOSURE                       R1 P5
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K10 ["onImportCompleted"]
       39 DUPCLOSURE                       R1 K11 [PROTO_6]
       40 SETTABLEKS                       R1 R0 K12 ["isErrorsExpanded"]
       42 NEWCLOSURE                       R1 P7
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 SETTABLEKS                       R1 R0 K13 ["getWidgetContent"]
       51 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["UploadWidget"]
        8 GETTABLEKS                       R6 R1 K4 ["UploadWidgetItem"]
       10 GETTABLEKS                       R5 R6 K5 ["uploadResults"]
       12 DUPTABLE                         R6 K9 [{"Key", "Text", "Style"}]
       13 LOADK                            R7 K10 ["Close"]
       14 SETTABLEKS                       R7 R6 K6 ["Key"]
       16 LOADK                            R9 K11 ["Plugin"]
       17 LOADK                            R10 K10 ["Close"]
       18 NAMECALL                         R7 R2 K12 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K7 ["Text"]
       23 LOADK                            R7 K13 ["RoundPrimary"]
       24 SETTABLEKS                       R7 R6 K8 ["Style"]
       26 DUPTABLE                         R7 K15 [{"Key", "Text", "Style", "Tooltip"}]
       27 LOADK                            R8 K16 ["CopyMeshID"]
       28 SETTABLEKS                       R8 R7 K6 ["Key"]
       30 LOADK                            R10 K17 ["Upload"]
       31 LOADK                            R11 K18 ["CopyMeshId"]
       32 NAMECALL                         R8 R2 K12 ["getText"]
       34 CALL                             R8 3 1
       35 SETTABLEKS                       R8 R7 K7 ["Text"]
       37 LOADK                            R8 K16 ["CopyMeshID"]
       38 SETTABLEKS                       R8 R7 K8 ["Style"]
       40 LOADK                            R10 K17 ["Upload"]
       41 LOADK                            R11 K19 ["CopyMeshIdTooltip"]
       42 NAMECALL                         R8 R2 K12 ["getText"]
       44 CALL                             R8 3 1
       45 SETTABLEKS                       R8 R7 K14 ["Tooltip"]
       47 DUPTABLE                         R8 K20 [{"Key", "Text"}]
       48 LOADK                            R9 K21 ["Retry"]
       49 SETTABLEKS                       R9 R8 K6 ["Key"]
       51 LOADK                            R11 K17 ["Upload"]
       52 LOADK                            R12 K21 ["Retry"]
       53 NAMECALL                         R9 R2 K12 ["getText"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K7 ["Text"]
       58 NEWTABLE                         R9 0 0
       60 GETTABLEKS                       R10 R1 K22 ["Uploading"]
       62 JUMPIFNOT                        R10 ; [+26]
       63 GETUPVAL                         R10 0
       64 CALL                             R10 0 1
       65 JUMPIFNOT                        R10 ; [+20]
       66 GETTABLEKS                       R11 R1 K4 ["UploadWidgetItem"]
       68 GETTABLEKS                       R10 R11 K23 ["session"]
       70 JUMPIFNOT                        R10 ; [+15]
       71 NEWTABLE                         R10 0 1
       73 MOVE                             R11 R6
       74 SETLIST                          R10 R11 1 [1]
       76 MOVE                             R9 R10
       77 GETTABLEKS                       R11 R1 K4 ["UploadWidgetItem"]
       79 GETTABLEKS                       R10 R11 K23 ["session"]
       81 NAMECALL                         R10 R10 K24 ["GetUploadStatus"]
       83 CALL                             R10 1 1
       84 MOVE                             R5 R10
       85 JUMP                             ; [+30]
       86 NEWTABLE                         R9 0 0
       88 JUMP                             ; [+27]
       89 JUMPIFNOT                        R5 ; [+11]
       90 GETTABLEKS                       R10 R5 K25 ["Succeeded"]
       92 JUMPIFNOT                        R10 ; [+8]
       93 NEWTABLE                         R10 0 2
       95 MOVE                             R11 R7
       96 MOVE                             R12 R6
       97 SETLIST                          R10 R11 2 [1]
       99 MOVE                             R9 R10
      100 JUMP                             ; [+15]
      101 JUMPIFNOT                        R5 ; [+14]
      102 GETTABLEKS                       R10 R5 K25 ["Succeeded"]
      104 JUMPIFEQKNIL                     R10 ; [+11]
      106 GETTABLEKS                       R10 R5 K25 ["Succeeded"]
      108 JUMPIF                           R10 ; [+7]
      109 NEWTABLE                         R10 0 2
      111 MOVE                             R11 R8
      112 MOVE                             R12 R6
      113 SETLIST                          R10 R11 2 [1]
      115 MOVE                             R9 R10
      116 GETIMPORT                        R10 K28 [Vector2.new]
      118 GETTABLEKS                       R11 R4 K29 ["ExpandedWidth"]
      120 GETTABLEKS                       R12 R4 K30 ["ExpandedHeight"]
      122 CALL                             R10 2 1
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R11 R12 K31 ["createElement"]
      126 GETUPVAL                         R12 2
      127 DUPTABLE                         R13 K41 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "ButtonHorizontalAlignment", "OnClose", "OnButtonPressed", "Style"}]
      128 GETTABLEKS                       R14 R1 K42 ["ShowUploadWidget"]
      130 SETTABLEKS                       R14 R13 K32 ["Enabled"]
      132 SETTABLEKS                       R10 R13 K33 ["MinContentSize"]
      134 GETUPVAL                         R15 3
      135 CALL                             R15 0 1
      136 NOT                              R14 R15
      137 SETTABLEKS                       R14 R13 K34 ["Modal"]
      139 LOADB                            R14 1
      140 SETTABLEKS                       R14 R13 K35 ["Resizable"]
      142 GETTABLEKS                       R14 R1 K36 ["Title"]
      144 SETTABLEKS                       R14 R13 K36 ["Title"]
      146 SETTABLEKS                       R9 R13 K37 ["Buttons"]
      148 GETIMPORT                        R14 K46 [Enum.HorizontalAlignment.Right]
      150 SETTABLEKS                       R14 R13 K38 ["ButtonHorizontalAlignment"]
      152 GETTABLEKS                       R14 R0 K47 ["onClose"]
      154 SETTABLEKS                       R14 R13 K39 ["OnClose"]
      156 GETTABLEKS                       R14 R0 K48 ["onButtonPressed"]
      158 SETTABLEKS                       R14 R13 K40 ["OnButtonPressed"]
      160 LOADK                            R14 K49 ["ImportDialog"]
      161 SETTABLEKS                       R14 R13 K8 ["Style"]
      163 DUPTABLE                         R14 K53 [{"Layout", "ContentInfo", "Separator"}]
      164 GETUPVAL                         R16 1
      165 GETTABLEKS                       R15 R16 K31 ["createElement"]
      167 LOADK                            R16 K54 ["UIListLayout"]
      168 DUPTABLE                         R17 K56 [{"FillDirection"}]
      169 GETIMPORT                        R18 K58 [Enum.FillDirection.Vertical]
      171 SETTABLEKS                       R18 R17 K55 ["FillDirection"]
      173 CALL                             R15 2 1
      174 SETTABLEKS                       R15 R14 K50 ["Layout"]
      176 GETTABLEKS                       R15 R0 K59 ["getWidgetContent"]
      178 MOVE                             R16 R5
      179 CALL                             R15 1 1
      180 SETTABLEKS                       R15 R14 K51 ["ContentInfo"]
      182 GETTABLEKS                       R16 R1 K22 ["Uploading"]
      184 JUMPIF                           R16 ; [+14]
      185 GETUPVAL                         R16 1
      186 GETTABLEKS                       R15 R16 K31 ["createElement"]
      188 GETUPVAL                         R16 4
      189 DUPTABLE                         R17 K62 [{"DominantAxis", "LayoutOrder"}]
      190 GETIMPORT                        R18 K64 [Enum.DominantAxis.Width]
      192 SETTABLEKS                       R18 R17 K60 ["DominantAxis"]
      194 LOADN                            R18 2
      195 SETTABLEKS                       R18 R17 K61 ["LayoutOrder"]
      197 CALL                             R15 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R15
      200 SETTABLEKS                       R15 R14 K52 ["Separator"]
      202 CALL                             R11 3 -1
      203 RETURN                           R11 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K3 [{"SetUploading", "SetShowUploadWidget", "ShowImportPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetUploading"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetShowUploadWidget"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ShowImportPreview"]
       16 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R1 K3 [{"ShowUploadWidget", "UploadWidgetItem", "Uploading"}]
        1 GETTABLEKS                       R3 R0 K4 ["Dialogs"]
        3 GETTABLEKS                       R2 R3 K5 ["showUploadWidget"]
        5 SETTABLEKS                       R2 R1 K0 ["ShowUploadWidget"]
        7 GETTABLEKS                       R3 R0 K4 ["Dialogs"]
        9 GETTABLEKS                       R2 R3 K6 ["uploadWidgetItem"]
       11 SETTABLEKS                       R2 R1 K1 ["UploadWidgetItem"]
       13 GETTABLEKS                       R3 R0 K7 ["Sessions"]
       15 GETTABLEKS                       R2 R3 K8 ["uploading"]
       17 SETTABLEKS                       R2 R1 K2 ["Uploading"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["RoactCompat"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["withContext"]
       45 GETTABLEKS                       R8 R6 K17 ["Localization"]
       47 GETTABLEKS                       R10 R5 K18 ["Style"]
       49 GETTABLEKS                       R9 R10 K19 ["Stylizer"]
       51 GETTABLEKS                       R10 R5 K20 ["UI"]
       53 GETTABLEKS                       R11 R10 K21 ["Separator"]
       55 GETTABLEKS                       R12 R10 K22 ["StyledDialog"]
       57 GETTABLEKS                       R16 R0 K6 ["Src"]
       59 GETTABLEKS                       R15 R16 K23 ["Components"]
       61 GETTABLEKS                       R14 R15 K24 ["Dialogs"]
       63 GETTABLEKS                       R13 R14 K25 ["UploadWidgets"]
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R15 R13 K26 ["SuccessWidget"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K5 [require]
       72 GETTABLEKS                       R16 R13 K27 ["FailureWidget"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K5 [require]
       77 GETTABLEKS                       R17 R13 K28 ["ProgressWidget"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K5 [require]
       82 GETTABLEKS                       R20 R0 K6 ["Src"]
       84 GETTABLEKS                       R19 R20 K29 ["Controllers"]
       86 GETTABLEKS                       R18 R19 K30 ["FileController"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R21 R0 K6 ["Src"]
       93 GETTABLEKS                       R20 R21 K31 ["Actions"]
       95 GETTABLEKS                       R19 R20 K32 ["SetShowUploadWidget"]
       97 CALL                             R18 1 1
       98 GETIMPORT                        R19 K5 [require]
      100 GETTABLEKS                       R22 R0 K6 ["Src"]
      102 GETTABLEKS                       R21 R22 K31 ["Actions"]
      104 GETTABLEKS                       R20 R21 K33 ["SetUploading"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R23 R0 K6 ["Src"]
      111 GETTABLEKS                       R22 R23 K34 ["Thunks"]
      113 GETTABLEKS                       R21 R22 K35 ["ShowImportPreview"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R24 R0 K6 ["Src"]
      120 GETTABLEKS                       R23 R24 K36 ["Flags"]
      122 GETTABLEKS                       R22 R23 K37 ["getFFlagDebugAssetImportPlugin"]
      124 CALL                             R21 1 1
      125 GETIMPORT                        R22 K5 [require]
      127 GETTABLEKS                       R25 R0 K6 ["Src"]
      129 GETTABLEKS                       R24 R25 K36 ["Flags"]
      131 GETTABLEKS                       R23 R24 K38 ["getFFlagCinAssetUploadStatusWidget"]
      133 CALL                             R22 1 1
      134 GETTABLEKS                       R23 R3 K39 ["PureComponent"]
      136 LOADK                            R25 K40 ["UploadWidget"]
      137 NAMECALL                         R23 R23 K41 ["extend"]
      139 CALL                             R23 2 1
      140 DUPCLOSURE                       R24 K42 [PROTO_8]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R15
      147 SETTABLEKS                       R24 R23 K43 ["init"]
      149 DUPCLOSURE                       R24 K44 [PROTO_9]
      150 CAPTURE                          VAL R22
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R11
      155 SETTABLEKS                       R24 R23 K45 ["render"]
      157 MOVE                             R24 R7
      158 DUPTABLE                         R25 K46 [{"Localization", "Stylizer", "FileController"}]
      159 SETTABLEKS                       R8 R25 K17 ["Localization"]
      161 SETTABLEKS                       R9 R25 K19 ["Stylizer"]
      163 SETTABLEKS                       R17 R25 K30 ["FileController"]
      165 CALL                             R24 1 1
      166 MOVE                             R25 R23
      167 CALL                             R24 1 1
      168 MOVE                             R23 R24
      169 DUPCLOSURE                       R24 K47 [PROTO_13]
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R20
      173 DUPCLOSURE                       R25 K48 [PROTO_14]
      174 GETTABLEKS                       R26 R4 K49 ["connect"]
      176 MOVE                             R27 R25
      177 MOVE                             R28 R24
      178 CALL                             R26 2 1
      179 MOVE                             R27 R23
      180 CALL                             R26 1 -1
      181 RETURN                           R26 -1
