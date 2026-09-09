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
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K12 ["createElement"]
       40 GETUPVAL                         R8 2
       41 DUPTABLE                         R9 K17 [{"HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
       42 GETIMPORT                        R10 K20 [Enum.HorizontalAlignment.Left]
       44 SETTABLEKS                       R10 R9 K13 ["HorizontalAlignment"]
       46 GETIMPORT                        R10 K23 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R10 R9 K14 ["Layout"]
       50 GETTABLEKS                       R10 R3 K15 ["Padding"]
       52 SETTABLEKS                       R10 R9 K15 ["Padding"]
       54 GETTABLEKS                       R10 R1 K16 ["Size"]
       56 SETTABLEKS                       R10 R9 K16 ["Size"]
       58 GETTABLEKS                       R10 R3 K10 ["Spacing"]
       60 SETTABLEKS                       R10 R9 K10 ["Spacing"]
       62 DUPTABLE                         R10 K28 [{"BrowseButton", "TextInput", "PresetDropdown", "PresetMenu"}]
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K12 ["createElement"]
       66 GETUPVAL                         R12 3
       67 DUPTABLE                         R13 K36 [{["LayoutOrder"] = 1, ["Size"], ["Style"] = "Round", ["Text"], ["OnClick"], ["StyleModifier"]}]
       68 GETTABLEKS                       R14 R3 K5 ["ButtonSize"]
       70 SETTABLEKS                       R14 R13 K16 ["Size"]
       72 LOADK                            R16 K37 ["Plugin"]
       73 LOADK                            R17 K38 ["Browse"]
       74 NAMECALL                         R14 R2 K39 ["getText"]
       76 CALL                             R14 3 1
       77 SETTABLEKS                       R14 R13 K33 ["Text"]
       79 GETTABLEKS                       R14 R0 K40 ["onBrowse"]
       81 SETTABLEKS                       R14 R13 K34 ["OnClick"]
       83 JUMPIFNOT                        R6 ; [+4]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K41 ["Disabled"]
       87 JUMPIF                           R14 ; [+1]
       88 LOADNIL                          R14
       89 SETTABLEKS                       R14 R13 K35 ["StyleModifier"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K24 ["BrowseButton"]
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R11 R11 K12 ["createElement"]
       97 GETUPVAL                         R12 2
       98 DUPTABLE                         R13 K43 [{["Size"], ["LayoutOrder"] = 2}]
       99 GETIMPORT                        R14 K46 [UDim2.new]
      101 LOADN                            R15 1
      102 MINUS                            R16 R5
      103 LOADN                            R17 1
      104 LOADN                            R18 0
      105 CALL                             R14 4 1
      106 SETTABLEKS                       R14 R13 K16 ["Size"]
      108 DUPTABLE                         R14 K48 [{"FilePath"}]
      109 GETUPVAL                         R15 1
      110 GETTABLEKS                       R15 R15 K12 ["createElement"]
      112 GETUPVAL                         R16 5
      113 DUPTABLE                         R17 K51 [{["AutomaticSize"], ["Disabled"] = True, ["Size"], ["Text"]}]
      114 GETIMPORT                        R18 K53 [Enum.AutomaticSize.None]
      116 SETTABLEKS                       R18 R17 K49 ["AutomaticSize"]
      118 GETIMPORT                        R18 K46 [UDim2.new]
      120 LOADN                            R19 1
      121 LOADN                            R20 0
      122 LOADN                            R21 1
      123 LOADN                            R22 0
      124 CALL                             R18 4 1
      125 SETTABLEKS                       R18 R17 K16 ["Size"]
      127 GETTABLEKS                       R18 R1 K54 ["FileName"]
      129 SETTABLEKS                       R18 R17 K33 ["Text"]
      131 CALL                             R15 2 1
      132 SETTABLEKS                       R15 R14 K47 ["FilePath"]
      134 CALL                             R11 3 1
      135 SETTABLEKS                       R11 R10 K25 ["TextInput"]
      137 GETUPVAL                         R11 1
      138 GETTABLEKS                       R11 R11 K12 ["createElement"]
      140 GETUPVAL                         R12 6
      141 DUPTABLE                         R13 K57 [{["LayoutOrder"] = 3, ["QueueItem"], ["Size"], ["Enabled"]}]
      142 GETTABLEKS                       R14 R1 K58 ["ActiveQueueItem"]
      144 SETTABLEKS                       R14 R13 K55 ["QueueItem"]
      146 GETTABLEKS                       R14 R3 K8 ["TemplateDropDown"]
      148 SETTABLEKS                       R14 R13 K16 ["Size"]
      150 NOT                              R14 R6
      151 SETTABLEKS                       R14 R13 K56 ["Enabled"]
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R10 K26 ["PresetDropdown"]
      156 GETUPVAL                         R11 1
      157 GETTABLEKS                       R11 R11 K12 ["createElement"]
      159 GETUPVAL                         R12 7
      160 DUPTABLE                         R13 K60 [{["LayoutOrder"] = 4, ["Disabled"]}]
      161 SETTABLEKS                       R6 R13 K41 ["Disabled"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K27 ["PresetMenu"]
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1

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
      126 GETTABLEKS                       R21 R1 K35 ["PureComponent"]
      128 LOADK                            R23 K36 ["TopBar"]
      129 NAMECALL                         R21 R21 K37 ["extend"]
      131 CALL                             R21 2 1
      132 DUPCLOSURE                       R22 K38 [PROTO_1]
      133 SETTABLEKS                       R22 R21 K39 ["init"]
      135 DUPCLOSURE                       R22 K40 [PROTO_2]
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R13
      144 SETTABLEKS                       R22 R21 K41 ["render"]
      146 MOVE                             R22 R5
      147 DUPTABLE                         R23 K42 [{"Localization", "Stylizer", "PresetController", "FileController"}]
      148 SETTABLEKS                       R6 R23 K12 ["Localization"]
      150 SETTABLEKS                       R7 R23 K14 ["Stylizer"]
      152 SETTABLEKS                       R15 R23 K27 ["PresetController"]
      154 SETTABLEKS                       R16 R23 K28 ["FileController"]
      156 CALL                             R22 1 1
      157 MOVE                             R23 R21
      158 CALL                             R22 1 1
      159 MOVE                             R21 R22
      160 DUPCLOSURE                       R22 K43 [PROTO_3]
      161 DUPCLOSURE                       R23 K44 [PROTO_7]
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R17
      165 GETTABLEKS                       R24 R2 K45 ["connect"]
      167 MOVE                             R25 R22
      168 MOVE                             R26 R23
      169 CALL                             R24 2 1
      170 MOVE                             R25 R21
      171 CALL                             R24 1 -1
      172 RETURN                           R24 -1
