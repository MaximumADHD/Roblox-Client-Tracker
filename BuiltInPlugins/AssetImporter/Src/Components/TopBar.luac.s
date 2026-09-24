PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ClosePreview"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["FileController"]
        8 GETTABLEKS                       R3 R0 K3 ["FileName"]
       10 NAMECALL                         R1 R1 K4 ["requestFileSwap"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K2 ["FileController"]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K5 ["requestPreview"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onBrowse"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TopBar"]
        8 GETTABLEKS                       R4 R3 K4 ["MenuButtonSize"]
       10 GETTABLEKS                       R8 R3 K5 ["ButtonSize"]
       12 GETTABLEKS                       R8 R8 K6 ["X"]
       14 GETTABLEKS                       R8 R8 K7 ["Offset"]
       16 GETTABLEKS                       R9 R4 K6 ["X"]
       18 GETTABLEKS                       R9 R9 K7 ["Offset"]
       20 ADD                              R7 R8 R9
       21 GETTABLEKS                       R8 R3 K8 ["TemplateDropDown"]
       23 GETTABLEKS                       R8 R8 K6 ["X"]
       25 GETTABLEKS                       R8 R8 K7 ["Offset"]
       27 ADD                              R6 R7 R8
       28 GETTABLEKS                       R8 R3 K10 ["Spacing"]
       30 MULK                             R7 R8 K9 [3]
       31 ADD                              R5 R6 R7
       32 GETUPVAL                         R6 0
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+2]
       35 GETTABLEKS                       R6 R1 K11 ["SingleAnimationSelection"]
       37 MOVE                             R7 R6
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETUPVAL                         R8 1
       40 CALL                             R8 0 1
       41 NOT                              R7 R8
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K12 ["createElement"]
       45 GETUPVAL                         R9 3
       46 DUPTABLE                         R10 K17 [{"HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
       47 GETIMPORT                        R11 K20 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R11 R10 K13 ["HorizontalAlignment"]
       51 GETIMPORT                        R11 K23 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R11 R10 K14 ["Layout"]
       55 GETTABLEKS                       R11 R3 K15 ["Padding"]
       57 SETTABLEKS                       R11 R10 K15 ["Padding"]
       59 GETTABLEKS                       R11 R1 K16 ["Size"]
       61 SETTABLEKS                       R11 R10 K16 ["Size"]
       63 GETTABLEKS                       R11 R3 K10 ["Spacing"]
       65 SETTABLEKS                       R11 R10 K10 ["Spacing"]
       67 DUPTABLE                         R11 K28 [{"BrowseButton", "TextInput", "PresetDropdown", "PresetMenu"}]
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R12 R12 K12 ["createElement"]
       71 GETUPVAL                         R13 4
       72 DUPTABLE                         R14 K36 [{["LayoutOrder"] = 1, ["Size"], ["Style"] = "Round", ["Text"], ["OnClick"], ["StyleModifier"]}]
       73 GETTABLEKS                       R15 R3 K5 ["ButtonSize"]
       75 SETTABLEKS                       R15 R14 K16 ["Size"]
       77 LOADK                            R17 K37 ["Plugin"]
       78 LOADK                            R18 K38 ["Browse"]
       79 NAMECALL                         R15 R2 K39 ["getText"]
       81 CALL                             R15 3 1
       82 SETTABLEKS                       R15 R14 K33 ["Text"]
       84 GETTABLEKS                       R15 R0 K40 ["onBrowse"]
       86 SETTABLEKS                       R15 R14 K34 ["OnClick"]
       88 JUMPIFNOT                        R6 ; [+4]
       89 GETUPVAL                         R15 5
       90 GETTABLEKS                       R15 R15 K41 ["Disabled"]
       92 JUMPIF                           R15 ; [+1]
       93 LOADNIL                          R15
       94 SETTABLEKS                       R15 R14 K35 ["StyleModifier"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K24 ["BrowseButton"]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K12 ["createElement"]
      102 GETUPVAL                         R13 3
      103 DUPTABLE                         R14 K43 [{["Size"], ["LayoutOrder"] = 2}]
      104 GETIMPORT                        R15 K46 [UDim2.new]
      106 LOADN                            R16 1
      107 MINUS                            R17 R5
      108 LOADN                            R18 1
      109 LOADN                            R19 0
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K16 ["Size"]
      113 DUPTABLE                         R15 K48 [{"FilePath"}]
      114 GETUPVAL                         R16 2
      115 GETTABLEKS                       R16 R16 K12 ["createElement"]
      117 GETUPVAL                         R17 6
      118 DUPTABLE                         R18 K51 [{["AutomaticSize"], ["Disabled"] = True, ["Size"], ["Text"]}]
      119 GETIMPORT                        R19 K53 [Enum.AutomaticSize.None]
      121 SETTABLEKS                       R19 R18 K49 ["AutomaticSize"]
      123 GETIMPORT                        R19 K46 [UDim2.new]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 LOADN                            R22 1
      128 LOADN                            R23 0
      129 CALL                             R19 4 1
      130 SETTABLEKS                       R19 R18 K16 ["Size"]
      132 GETTABLEKS                       R19 R1 K54 ["FileName"]
      134 SETTABLEKS                       R19 R18 K33 ["Text"]
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K47 ["FilePath"]
      139 CALL                             R12 3 1
      140 SETTABLEKS                       R12 R11 K25 ["TextInput"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R12 R12 K12 ["createElement"]
      145 GETUPVAL                         R13 7
      146 DUPTABLE                         R14 K57 [{["LayoutOrder"] = 3, ["QueueItem"], ["Size"], ["Enabled"]}]
      147 GETTABLEKS                       R15 R1 K58 ["ActiveQueueItem"]
      149 SETTABLEKS                       R15 R14 K55 ["QueueItem"]
      151 GETTABLEKS                       R15 R3 K8 ["TemplateDropDown"]
      153 SETTABLEKS                       R15 R14 K16 ["Size"]
      155 NOT                              R15 R7
      156 SETTABLEKS                       R15 R14 K56 ["Enabled"]
      158 CALL                             R12 2 1
      159 SETTABLEKS                       R12 R11 K26 ["PresetDropdown"]
      161 GETUPVAL                         R12 2
      162 GETTABLEKS                       R12 R12 K12 ["createElement"]
      164 GETUPVAL                         R13 8
      165 DUPTABLE                         R14 K60 [{["LayoutOrder"] = 4, ["Disabled"]}]
      166 SETTABLEKS                       R7 R14 K41 ["Disabled"]
      168 CALL                             R12 2 1
      169 SETTABLEKS                       R12 R11 K27 ["PresetMenu"]
      171 CALL                             R8 3 -1
      172 RETURN                           R8 -1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"ActiveQueueItem", "AssetImportSession", "SelectedImportItem", "Checked", "SingleAnimationSelection"}]
        1 GETTABLEKS                       R2 R0 K6 ["Preview"]
        3 GETTABLEKS                       R2 R2 K7 ["activeQueueItem"]
        5 SETTABLEKS                       R2 R1 K0 ["ActiveQueueItem"]
        7 GETTABLEKS                       R2 R0 K6 ["Preview"]
        9 GETTABLEKS                       R2 R2 K8 ["assetImportSession"]
       11 SETTABLEKS                       R2 R1 K1 ["AssetImportSession"]
       13 GETTABLEKS                       R2 R0 K6 ["Preview"]
       15 GETTABLEKS                       R2 R2 K9 ["selectedImportItem"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
       19 GETTABLEKS                       R2 R0 K6 ["Preview"]
       21 GETTABLEKS                       R2 R2 K10 ["importDataChecked"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Checked"]
       28 GETTABLEKS                       R2 R0 K6 ["Preview"]
       30 GETTABLEKS                       R2 R2 K11 ["singleAnimationSelection"]
       32 SETTABLEKS                       R2 R1 K4 ["SingleAnimationSelection"]
       34 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"UpdateChecked", "UpdatePreviewInstance", "ClosePreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdateChecked"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["UpdatePreviewInstance"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ClosePreview"]
       16 RETURN                           R1 1

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
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R3 K13 ["Style"]
       36 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       38 GETTABLEKS                       R8 R3 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["Button"]
       42 GETTABLEKS                       R10 R8 K17 ["Pane"]
       44 GETTABLEKS                       R11 R8 K18 ["TextInput"]
       46 GETTABLEKS                       R12 R3 K19 ["Util"]
       48 GETTABLEKS                       R12 R12 K20 ["StyleModifier"]
       50 GETIMPORT                        R13 K5 [require]
       52 GETTABLEKS                       R14 R0 K21 ["Src"]
       54 GETTABLEKS                       R14 R14 K22 ["Components"]
       56 GETTABLEKS                       R14 R14 K23 ["Presets"]
       58 GETTABLEKS                       R14 R14 K24 ["PresetMenu"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K5 [require]
       63 GETTABLEKS                       R15 R0 K21 ["Src"]
       65 GETTABLEKS                       R15 R15 K22 ["Components"]
       67 GETTABLEKS                       R15 R15 K23 ["Presets"]
       69 GETTABLEKS                       R15 R15 K25 ["PresetSelector"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R16 R0 K21 ["Src"]
       76 GETTABLEKS                       R16 R16 K26 ["Controllers"]
       78 GETTABLEKS                       R16 R16 K27 ["PresetController"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R17 R0 K21 ["Src"]
       85 GETTABLEKS                       R17 R17 K26 ["Controllers"]
       87 GETTABLEKS                       R17 R17 K28 ["FileController"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R0 K21 ["Src"]
       94 GETTABLEKS                       R18 R18 K29 ["Thunks"]
       96 GETTABLEKS                       R18 R18 K30 ["ClosePreview"]
       98 CALL                             R17 1 1
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R19 R0 K21 ["Src"]
      103 GETTABLEKS                       R19 R19 K29 ["Thunks"]
      105 GETTABLEKS                       R19 R19 K31 ["UpdateChecked"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K5 [require]
      110 GETTABLEKS                       R20 R0 K21 ["Src"]
      112 GETTABLEKS                       R20 R20 K29 ["Thunks"]
      114 GETTABLEKS                       R20 R20 K32 ["UpdatePreviewInstance"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K5 [require]
      119 GETTABLEKS                       R21 R0 K21 ["Src"]
      121 GETTABLEKS                       R21 R21 K33 ["Flags"]
      123 GETTABLEKS                       R21 R21 K34 ["getFFlagAssetImporterVersionedAnimationUx"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R0 K21 ["Src"]
      130 GETTABLEKS                       R22 R22 K33 ["Flags"]
      132 GETTABLEKS                       R22 R22 K35 ["getFFlagPresetsForAnimationVersioning"]
      134 CALL                             R21 1 1
      135 GETTABLEKS                       R22 R1 K36 ["PureComponent"]
      137 LOADK                            R24 K37 ["TopBar"]
      138 NAMECALL                         R22 R22 K38 ["extend"]
      140 CALL                             R22 2 1
      141 DUPCLOSURE                       R23 K39 [PROTO_1]
      142 SETTABLEKS                       R23 R22 K40 ["init"]
      144 DUPCLOSURE                       R23 K41 [PROTO_2]
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R13
      154 SETTABLEKS                       R23 R22 K42 ["render"]
      156 MOVE                             R23 R5
      157 DUPTABLE                         R24 K43 [{"Localization", "Stylizer", "PresetController", "FileController"}]
      158 SETTABLEKS                       R6 R24 K12 ["Localization"]
      160 SETTABLEKS                       R7 R24 K14 ["Stylizer"]
      162 SETTABLEKS                       R15 R24 K27 ["PresetController"]
      164 SETTABLEKS                       R16 R24 K28 ["FileController"]
      166 CALL                             R23 1 1
      167 MOVE                             R24 R22
      168 CALL                             R23 1 1
      169 MOVE                             R22 R23
      170 DUPCLOSURE                       R23 K44 [PROTO_3]
      171 DUPCLOSURE                       R24 K45 [PROTO_7]
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R17
      175 GETTABLEKS                       R25 R2 K46 ["connect"]
      177 MOVE                             R26 R23
      178 MOVE                             R27 R24
      179 CALL                             R25 2 1
      180 MOVE                             R26 R22
      181 CALL                             R25 1 -1
      182 RETURN                           R25 -1
