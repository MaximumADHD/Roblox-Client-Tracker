PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["ImportTree"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["ImportTree"]
        5 GETTABLEKS                       R1 R1 K1 ["ImportName"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETTABLEKS                       R3 R0 K2 ["HasInvalidPackageId"]
       11 NOT                              R2 R3
       12 JUMPIFNOT                        R2 ; [+12]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R3 R0 K3 ["ImportDataCheckedCount"]
       16 JUMPIFEQKN                       R3 K4 [0] ; [+8]
       18 GETTABLEKS                       R3 R0 K5 ["ErrorNodeChecked"]
       20 NOT                              R2 R3
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 0
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ClosePreview"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["SessionQueue"]
        5 GETTABLEKS                       R3 R0 K2 ["Filename"]
        7 GETTABLE                         R1 R2 R3
        8 GETTABLEKS                       R2 R0 K3 ["ClosePreview"]
       10 CALL                             R2 0 0
       11 GETTABLEKS                       R2 R0 K4 ["UploadController"]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 NAMECALL                         R2 R2 K5 ["uploadItems"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["Close"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Import"] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["onImport"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{[1] = ""}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K4 ["_importNameChangedConnection"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K5 ["onClose"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["onImport"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["onButtonPressed"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R5 R1 K2 ["ImportTree"]
        6 JUMPIFNOT                        R5 ; [+5]
        7 GETTABLEKS                       R4 R1 K2 ["ImportTree"]
        9 GETTABLEKS                       R4 R4 K3 ["ImportName"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 GETTABLEKS                       R5 R1 K4 ["HasInvalidPackageId"]
       15 NOT                              R3 R5
       16 JUMPIFNOT                        R3 ; [+13]
       17 LOADB                            R3 0
       18 GETTABLEKS                       R5 R1 K5 ["ImportDataCheckedCount"]
       20 JUMPIFEQKN                       R5 K6 [0] ; [+9]
       22 GETTABLEKS                       R5 R1 K7 ["ErrorNodeChecked"]
       24 NOT                              R3 R5
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETUPVAL                         R5 0
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 MOVE                             R3 R5
       30 NEWTABLE                         R4 0 2
       32 DUPTABLE                         R5 K11 [{["Key"] = "Close", ["Text"]}]
       33 LOADK                            R8 K12 ["Plugin"]
       34 LOADK                            R9 K9 ["Close"]
       35 NAMECALL                         R6 R2 K13 ["getText"]
       37 CALL                             R6 3 1
       38 SETTABLEKS                       R6 R5 K10 ["Text"]
       40 DUPTABLE                         R6 K18 [{["Key"] = "Import", ["Text"], ["Style"] = "RoundPrimary", ["StyleModifier"]}]
       41 LOADK                            R9 K12 ["Plugin"]
       42 LOADK                            R10 K14 ["Import"]
       43 NAMECALL                         R7 R2 K13 ["getText"]
       45 CALL                             R7 3 1
       46 SETTABLEKS                       R7 R6 K10 ["Text"]
       48 JUMPIF                           R3 ; [+4]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K19 ["Disabled"]
       52 JUMPIF                           R7 ; [+1]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K17 ["StyleModifier"]
       56 SETLIST                          R4 R5 2 [1]
       58 GETTABLEKS                       R5 R0 K20 ["onClose"]
       60 GETTABLEKS                       R6 R1 K21 ["PreviewLoading"]
       62 GETUPVAL                         R8 2
       63 CALL                             R8 0 1
       64 AND                              R7 R8 R6
       65 MOVE                             R8 R7
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R9 R1 K22 ["ShowPreview"]
       69 NOT                              R8 R9
       70 DUPTABLE                         R9 K24 [{"Content"}]
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R10 R10 K25 ["createElement"]
       74 GETUPVAL                         R11 4
       75 GETTABLEKS                       R11 R11 K26 ["View"]
       77 DUPTABLE                         R12 K29 [{["tag"] = "col align-x-center align-y-center gap-medium size-full padding-medium"}]
       78 DUPTABLE                         R13 K32 [{"Spinner", "MainText"}]
       79 GETUPVAL                         R14 3
       80 GETTABLEKS                       R14 R14 K25 ["createElement"]
       82 GETUPVAL                         R15 4
       83 GETTABLEKS                       R15 R15 K33 ["Loading"]
       85 DUPTABLE                         R16 K39 [{["size"], ["LayoutOrder"] = 1, ["testId"] = "loadingSymbol"}]
       86 GETUPVAL                         R17 5
       87 GETTABLEKS                       R17 R17 K40 ["Medium"]
       89 SETTABLEKS                       R17 R16 K34 ["size"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K30 ["Spinner"]
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R14 R14 K25 ["createElement"]
       97 GETUPVAL                         R15 4
       98 GETTABLEKS                       R15 R15 K10 ["Text"]
      100 DUPTABLE                         R16 K44 [{["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"], ["LayoutOrder"] = 2, ["testId"] = "loadingText"}]
      101 LOADK                            R19 K45 ["SingleImport"]
      102 LOADK                            R20 K46 ["Parsing"]
      103 NAMECALL                         R17 R2 K13 ["getText"]
      105 CALL                             R17 3 1
      106 SETTABLEKS                       R17 R16 K10 ["Text"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K31 ["MainText"]
      111 CALL                             R10 3 1
      112 SETTABLEKS                       R10 R9 K23 ["Content"]
      114 DUPTABLE                         R10 K50 [{"Layout", "AssetImporterUI", "Separator"}]
      115 GETUPVAL                         R11 3
      116 GETTABLEKS                       R11 R11 K25 ["createElement"]
      118 LOADK                            R12 K51 ["UIListLayout"]
      119 DUPTABLE                         R13 K53 [{"FillDirection"}]
      120 GETIMPORT                        R14 K56 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R14 R13 K52 ["FillDirection"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K47 ["Layout"]
      127 GETTABLEKS                       R12 R1 K22 ["ShowPreview"]
      129 JUMPIFNOT                        R12 ; [+7]
      130 GETUPVAL                         R11 3
      131 GETTABLEKS                       R11 R11 K25 ["createElement"]
      133 GETUPVAL                         R12 6
      134 DUPTABLE                         R13 K57 [{["LayoutOrder"] = 1}]
      135 CALL                             R11 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K48 ["AssetImporterUI"]
      140 GETUPVAL                         R11 3
      141 GETTABLEKS                       R11 R11 K25 ["createElement"]
      143 GETUPVAL                         R12 7
      144 DUPTABLE                         R13 K59 [{["DominantAxis"], ["LayoutOrder"] = 2}]
      145 GETIMPORT                        R14 K61 [Enum.DominantAxis.Width]
      147 SETTABLEKS                       R14 R13 K58 ["DominantAxis"]
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K49 ["Separator"]
      152 LOADNIL                          R11
      153 JUMPIF                           R8 ; [+3]
      154 GETUPVAL                         R12 8
      155 CALL                             R12 0 1
      156 JUMPIFNOT                        R12 ; [+24]
      157 JUMPIFNOT                        R8 ; [+6]
      158 DUPTABLE                         R12 K63 [{"theme"}]
      159 GETUPVAL                         R13 9
      160 CALL                             R13 0 1
      161 SETTABLEKS                       R13 R12 K62 ["theme"]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R12
      165 JUMPIFNOT                        R8 ; [+2]
      166 MOVE                             R13 R9
      167 JUMP                             ; [+1]
      168 MOVE                             R13 R10
      169 DUPTABLE                         R14 K65 [{"Root"}]
      170 GETUPVAL                         R15 3
      171 GETTABLEKS                       R15 R15 K25 ["createElement"]
      173 GETUPVAL                         R16 10
      174 MOVE                             R17 R12
      175 MOVE                             R18 R13
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K64 ["Root"]
      179 MOVE                             R11 R14
      180 JUMP                             ; [+1]
      181 MOVE                             R11 R10
      182 GETUPVAL                         R12 3
      183 GETTABLEKS                       R12 R12 K25 ["createElement"]
      185 GETUPVAL                         R13 11
      186 DUPTABLE                         R14 K76 [{["Enabled"], ["MinContentSize"], ["Modal"], ["Resizable"] = True, ["Title"], ["Buttons"], ["OnClose"], ["OnButtonPressed"], ["Style"] = "FullBleed"}]
      187 GETTABLEKS                       R16 R1 K22 ["ShowPreview"]
      189 OR                               R15 R16 R7
      190 SETTABLEKS                       R15 R14 K66 ["Enabled"]
      192 GETIMPORT                        R15 K79 [Vector2.new]
      194 LOADN                            R16 800
      195 LOADN                            R17 650
      196 CALL                             R15 2 1
      197 SETTABLEKS                       R15 R14 K67 ["MinContentSize"]
      199 GETUPVAL                         R16 12
      200 CALL                             R16 0 1
      201 NOT                              R15 R16
      202 SETTABLEKS                       R15 R14 K68 ["Modal"]
      204 GETTABLEKS                       R15 R1 K71 ["Title"]
      206 SETTABLEKS                       R15 R14 K71 ["Title"]
      208 SETTABLEKS                       R4 R14 K72 ["Buttons"]
      210 SETTABLEKS                       R5 R14 K73 ["OnClose"]
      212 GETTABLEKS                       R15 R0 K80 ["onButtonPressed"]
      214 SETTABLEKS                       R15 R14 K74 ["OnButtonPressed"]
      216 MOVE                             R15 R11
      217 CALL                             R12 3 -1
      218 RETURN                           R12 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["_connect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["ImportName"] ; [+11]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R3 K2 [{"assetName"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["ImportName"]
        7 SETTABLEKS                       R4 R3 K1 ["assetName"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["ImportTree"]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETTABLEKS                       R2 R1 K2 ["Changed"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["Connect"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K4 ["_importNameChangedConnection"]
       16 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["_disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["ImportTree"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["ImportTree"]
        6 JUMPIFEQ                         R3 R4 ; [+7]
        8 NAMECALL                         R3 R0 K2 ["_disconnect"]
       10 CALL                             R3 1 0
       11 NAMECALL                         R3 R0 K3 ["_connect"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"assetName"}]
        1 GETTABLEKS                       R4 R0 K2 ["ImportTree"]
        3 JUMPIFNOT                        R4 ; [+5]
        4 GETTABLEKS                       R3 R0 K2 ["ImportTree"]
        6 GETTABLEKS                       R3 R3 K3 ["ImportName"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K0 ["assetName"]
       12 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R1 K9 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId", "ShowPreview", "PreviewLoading", "SessionQueue", "Filename"}]
        1 GETTABLEKS                       R2 R0 K10 ["Preview"]
        3 GETTABLEKS                       R2 R2 K11 ["importTree"]
        5 SETTABLEKS                       R2 R1 K0 ["ImportTree"]
        7 GETTABLEKS                       R2 R0 K10 ["Preview"]
        9 GETTABLEKS                       R2 R2 K12 ["assetImportSession"]
       11 SETTABLEKS                       R2 R1 K1 ["AssetImportSession"]
       13 GETTABLEKS                       R2 R0 K10 ["Preview"]
       15 GETTABLEKS                       R2 R2 K13 ["importDataCheckedCount"]
       17 SETTABLEKS                       R2 R1 K2 ["ImportDataCheckedCount"]
       19 GETTABLEKS                       R2 R0 K10 ["Preview"]
       21 GETTABLEKS                       R2 R2 K14 ["errorNodeChecked"]
       23 SETTABLEKS                       R2 R1 K3 ["ErrorNodeChecked"]
       25 GETTABLEKS                       R2 R0 K10 ["Preview"]
       27 GETTABLEKS                       R2 R2 K15 ["hasInvalidPackageId"]
       29 SETTABLEKS                       R2 R1 K4 ["HasInvalidPackageId"]
       31 GETTABLEKS                       R2 R0 K16 ["Dialogs"]
       33 GETTABLEKS                       R2 R2 K17 ["showPreview"]
       35 SETTABLEKS                       R2 R1 K5 ["ShowPreview"]
       37 GETTABLEKS                       R2 R0 K16 ["Dialogs"]
       39 GETTABLEKS                       R2 R2 K18 ["previewLoading"]
       41 SETTABLEKS                       R2 R1 K6 ["PreviewLoading"]
       43 GETTABLEKS                       R2 R0 K19 ["Sessions"]
       45 GETTABLEKS                       R2 R2 K20 ["sessionQueue"]
       47 SETTABLEKS                       R2 R1 K7 ["SessionQueue"]
       49 GETTABLEKS                       R2 R0 K10 ["Preview"]
       51 GETTABLEKS                       R2 R2 K21 ["filename"]
       53 SETTABLEKS                       R2 R1 K8 ["Filename"]
       55 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K1 [{"ClosePreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ClosePreview"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["Enums"]
       44 GETTABLEKS                       R6 R6 K13 ["IconSize"]
       46 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K15 ["withContext"]
       50 GETTABLEKS                       R9 R7 K16 ["Localization"]
       52 GETTABLEKS                       R10 R3 K17 ["Style"]
       54 GETTABLEKS                       R10 R10 K18 ["Stylizer"]
       56 GETTABLEKS                       R11 R5 K19 ["Components"]
       58 GETTABLEKS                       R11 R11 K20 ["FoundationProviderAdapter"]
       60 GETTABLEKS                       R12 R3 K21 ["Util"]
       62 GETTABLEKS                       R13 R12 K22 ["StyleModifier"]
       64 GETTABLEKS                       R14 R3 K23 ["UI"]
       66 GETTABLEKS                       R15 R14 K24 ["Separator"]
       68 GETTABLEKS                       R16 R14 K25 ["StyledDialog"]
       70 GETIMPORT                        R17 K5 [require]
       72 GETTABLEKS                       R18 R0 K26 ["Src"]
       74 GETTABLEKS                       R18 R18 K19 ["Components"]
       76 GETTABLEKS                       R18 R18 K27 ["AssetImporterUI"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K5 [require]
       81 GETTABLEKS                       R19 R0 K26 ["Src"]
       83 GETTABLEKS                       R19 R19 K28 ["Controllers"]
       85 GETTABLEKS                       R19 R19 K29 ["FileController"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K5 [require]
       90 GETTABLEKS                       R20 R0 K26 ["Src"]
       92 GETTABLEKS                       R20 R20 K28 ["Controllers"]
       94 GETTABLEKS                       R20 R20 K30 ["UploadController"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K5 [require]
       99 GETTABLEKS                       R21 R0 K26 ["Src"]
      101 GETTABLEKS                       R21 R21 K31 ["Thunks"]
      103 GETTABLEKS                       R21 R21 K32 ["ClosePreview"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R0 K26 ["Src"]
      110 GETTABLEKS                       R22 R22 K33 ["Utility"]
      112 GETTABLEKS                       R22 R22 K34 ["getStudioTheme"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R23 R0 K26 ["Src"]
      119 GETTABLEKS                       R23 R23 K33 ["Utility"]
      121 GETTABLEKS                       R23 R23 K35 ["isAssetNameValid"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R0 K26 ["Src"]
      128 GETTABLEKS                       R24 R24 K36 ["Flags"]
      130 GETTABLEKS                       R24 R24 K37 ["getFFlagAssetImporterShowPreviewLoading"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K5 [require]
      135 GETTABLEKS                       R25 R0 K26 ["Src"]
      137 GETTABLEKS                       R25 R25 K36 ["Flags"]
      139 GETTABLEKS                       R25 R25 K38 ["getFFlagDebugAssetImportPlugin"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K5 [require]
      144 GETTABLEKS                       R26 R0 K26 ["Src"]
      146 GETTABLEKS                       R26 R26 K36 ["Flags"]
      148 GETTABLEKS                       R26 R26 K39 ["getFFlagShowNewReimportCallout"]
      150 CALL                             R25 1 1
      151 GETTABLEKS                       R26 R1 K40 ["PureComponent"]
      153 LOADK                            R28 K41 ["MeshImportDialog"]
      154 NAMECALL                         R26 R26 K42 ["extend"]
      156 CALL                             R26 2 1
      157 DUPCLOSURE                       R27 K43 [PROTO_0]
      158 CAPTURE                          VAL R22
      159 DUPCLOSURE                       R28 K44 [PROTO_4]
      160 SETTABLEKS                       R28 R26 K45 ["init"]
      162 DUPCLOSURE                       R28 K46 [PROTO_5]
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R24
      176 SETTABLEKS                       R28 R26 K47 ["render"]
      178 DUPCLOSURE                       R28 K48 [PROTO_6]
      179 SETTABLEKS                       R28 R26 K49 ["didMount"]
      181 DUPCLOSURE                       R28 K50 [PROTO_8]
      182 SETTABLEKS                       R28 R26 K51 ["_connect"]
      184 DUPCLOSURE                       R28 K52 [PROTO_9]
      185 SETTABLEKS                       R28 R26 K53 ["willUnmount"]
      187 DUPCLOSURE                       R28 K54 [PROTO_10]
      188 SETTABLEKS                       R28 R26 K55 ["_disconnect"]
      190 DUPCLOSURE                       R28 K56 [PROTO_11]
      191 SETTABLEKS                       R28 R26 K57 ["didUpdate"]
      193 DUPCLOSURE                       R28 K58 [PROTO_12]
      194 SETTABLEKS                       R28 R26 K59 ["getDerivedStateFromProps"]
      196 MOVE                             R28 R8
      197 DUPTABLE                         R29 K61 [{"FileController", "UploadController", "Localization", "Stylizer", "Plugin"}]
      198 SETTABLEKS                       R18 R29 K29 ["FileController"]
      200 SETTABLEKS                       R19 R29 K30 ["UploadController"]
      202 SETTABLEKS                       R9 R29 K16 ["Localization"]
      204 SETTABLEKS                       R10 R29 K18 ["Stylizer"]
      206 GETTABLEKS                       R30 R7 K60 ["Plugin"]
      208 SETTABLEKS                       R30 R29 K60 ["Plugin"]
      210 CALL                             R28 1 1
      211 MOVE                             R29 R26
      212 CALL                             R28 1 1
      213 MOVE                             R26 R28
      214 DUPCLOSURE                       R28 K62 [PROTO_13]
      215 DUPCLOSURE                       R29 K63 [PROTO_15]
      216 CAPTURE                          VAL R20
      217 GETTABLEKS                       R30 R2 K64 ["connect"]
      219 MOVE                             R31 R28
      220 MOVE                             R32 R29
      221 CALL                             R30 2 1
      222 MOVE                             R31 R26
      223 CALL                             R30 1 -1
      224 RETURN                           R30 -1
