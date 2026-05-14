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
       33 GETTABLEKS                       R6 R6 K11 ["createElement"]
       35 GETUPVAL                         R7 1
       36 DUPTABLE                         R8 K16 [{"HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
       37 GETIMPORT                        R9 K19 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R9 R8 K12 ["HorizontalAlignment"]
       41 GETIMPORT                        R9 K22 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R9 R8 K13 ["Layout"]
       45 GETTABLEKS                       R9 R3 K14 ["Padding"]
       47 SETTABLEKS                       R9 R8 K14 ["Padding"]
       49 GETTABLEKS                       R9 R1 K15 ["Size"]
       51 SETTABLEKS                       R9 R8 K15 ["Size"]
       53 GETTABLEKS                       R9 R3 K10 ["Spacing"]
       55 SETTABLEKS                       R9 R8 K10 ["Spacing"]
       57 DUPTABLE                         R9 K27 [{"BrowseButton", "TextInput", "PresetDropdown", "PresetMenu"}]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K11 ["createElement"]
       61 GETUPVAL                         R11 2
       62 DUPTABLE                         R12 K32 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
       63 LOADN                            R13 1
       64 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
       66 GETTABLEKS                       R13 R3 K5 ["ButtonSize"]
       68 SETTABLEKS                       R13 R12 K15 ["Size"]
       70 LOADK                            R13 K33 ["Round"]
       71 SETTABLEKS                       R13 R12 K29 ["Style"]
       73 LOADK                            R15 K34 ["Plugin"]
       74 LOADK                            R16 K35 ["Browse"]
       75 NAMECALL                         R13 R2 K36 ["getText"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K30 ["Text"]
       80 GETTABLEKS                       R13 R0 K37 ["onBrowse"]
       82 SETTABLEKS                       R13 R12 K31 ["OnClick"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K23 ["BrowseButton"]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K11 ["createElement"]
       90 GETUPVAL                         R11 1
       91 DUPTABLE                         R12 K38 [{"Size", "LayoutOrder"}]
       92 GETIMPORT                        R13 K41 [UDim2.new]
       94 LOADN                            R14 1
       95 MINUS                            R15 R5
       96 LOADN                            R16 1
       97 LOADN                            R17 0
       98 CALL                             R13 4 1
       99 SETTABLEKS                       R13 R12 K15 ["Size"]
      101 LOADN                            R13 2
      102 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
      104 DUPTABLE                         R13 K43 [{"FilePath"}]
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K11 ["createElement"]
      108 GETUPVAL                         R15 3
      109 DUPTABLE                         R16 K46 [{"AutomaticSize", "Disabled", "Size", "Text"}]
      110 GETIMPORT                        R17 K48 [Enum.AutomaticSize.None]
      112 SETTABLEKS                       R17 R16 K44 ["AutomaticSize"]
      114 LOADB                            R17 1
      115 SETTABLEKS                       R17 R16 K45 ["Disabled"]
      117 GETIMPORT                        R17 K41 [UDim2.new]
      119 LOADN                            R18 1
      120 LOADN                            R19 0
      121 LOADN                            R20 1
      122 LOADN                            R21 0
      123 CALL                             R17 4 1
      124 SETTABLEKS                       R17 R16 K15 ["Size"]
      126 GETTABLEKS                       R17 R1 K49 ["FileName"]
      128 SETTABLEKS                       R17 R16 K30 ["Text"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K42 ["FilePath"]
      133 CALL                             R10 3 1
      134 SETTABLEKS                       R10 R9 K24 ["TextInput"]
      136 GETUPVAL                         R10 0
      137 GETTABLEKS                       R10 R10 K11 ["createElement"]
      139 GETUPVAL                         R11 4
      140 DUPTABLE                         R12 K51 [{"LayoutOrder", "QueueItem", "Size"}]
      141 LOADN                            R13 3
      142 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
      144 GETTABLEKS                       R13 R1 K52 ["ActiveQueueItem"]
      146 SETTABLEKS                       R13 R12 K50 ["QueueItem"]
      148 GETTABLEKS                       R13 R3 K8 ["TemplateDropDown"]
      150 SETTABLEKS                       R13 R12 K15 ["Size"]
      152 CALL                             R10 2 1
      153 SETTABLEKS                       R10 R9 K25 ["PresetDropdown"]
      155 GETUPVAL                         R10 0
      156 GETTABLEKS                       R10 R10 K11 ["createElement"]
      158 GETUPVAL                         R11 5
      159 DUPTABLE                         R12 K53 [{"LayoutOrder"}]
      160 LOADN                            R13 4
      161 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
      163 CALL                             R10 2 1
      164 SETTABLEKS                       R10 R9 K26 ["PresetMenu"]
      166 CALL                             R6 3 -1
      167 RETURN                           R6 -1

PROTO_3:
        0 DUPTABLE                         R1 K4 [{"ActiveQueueItem", "AssetImportSession", "SelectedImportItem", "Checked"}]
        1 GETTABLEKS                       R2 R0 K5 ["Preview"]
        3 GETTABLEKS                       R2 R2 K6 ["activeQueueItem"]
        5 SETTABLEKS                       R2 R1 K0 ["ActiveQueueItem"]
        7 GETTABLEKS                       R2 R0 K5 ["Preview"]
        9 GETTABLEKS                       R2 R2 K7 ["assetImportSession"]
       11 SETTABLEKS                       R2 R1 K1 ["AssetImportSession"]
       13 GETTABLEKS                       R2 R0 K5 ["Preview"]
       15 GETTABLEKS                       R2 R2 K8 ["selectedImportItem"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
       19 GETTABLEKS                       R2 R0 K5 ["Preview"]
       21 GETTABLEKS                       R2 R2 K9 ["importDataChecked"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Checked"]
       28 RETURN                           R1 1

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
       46 GETIMPORT                        R12 K5 [require]
       48 GETTABLEKS                       R13 R0 K19 ["Src"]
       50 GETTABLEKS                       R13 R13 K20 ["Components"]
       52 GETTABLEKS                       R13 R13 K21 ["Presets"]
       54 GETTABLEKS                       R13 R13 K22 ["PresetMenu"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K19 ["Src"]
       61 GETTABLEKS                       R14 R14 K20 ["Components"]
       63 GETTABLEKS                       R14 R14 K21 ["Presets"]
       65 GETTABLEKS                       R14 R14 K23 ["PresetSelector"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K5 [require]
       70 GETTABLEKS                       R15 R0 K19 ["Src"]
       72 GETTABLEKS                       R15 R15 K24 ["Controllers"]
       74 GETTABLEKS                       R15 R15 K25 ["PresetController"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R0 K19 ["Src"]
       81 GETTABLEKS                       R16 R16 K24 ["Controllers"]
       83 GETTABLEKS                       R16 R16 K26 ["FileController"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R0 K19 ["Src"]
       90 GETTABLEKS                       R17 R17 K27 ["Thunks"]
       92 GETTABLEKS                       R17 R17 K28 ["ClosePreview"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R18 R0 K19 ["Src"]
       99 GETTABLEKS                       R18 R18 K27 ["Thunks"]
      101 GETTABLEKS                       R18 R18 K29 ["UpdateChecked"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K5 [require]
      106 GETTABLEKS                       R19 R0 K19 ["Src"]
      108 GETTABLEKS                       R19 R19 K27 ["Thunks"]
      110 GETTABLEKS                       R19 R19 K30 ["UpdatePreviewInstance"]
      112 CALL                             R18 1 1
      113 GETTABLEKS                       R19 R1 K31 ["PureComponent"]
      115 LOADK                            R21 K32 ["TopBar"]
      116 NAMECALL                         R19 R19 K33 ["extend"]
      118 CALL                             R19 2 1
      119 DUPCLOSURE                       R20 K34 [PROTO_1]
      120 SETTABLEKS                       R20 R19 K35 ["init"]
      122 DUPCLOSURE                       R20 K36 [PROTO_2]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 SETTABLEKS                       R20 R19 K37 ["render"]
      131 MOVE                             R20 R5
      132 DUPTABLE                         R21 K38 [{"Localization", "Stylizer", "PresetController", "FileController"}]
      133 SETTABLEKS                       R6 R21 K12 ["Localization"]
      135 SETTABLEKS                       R7 R21 K14 ["Stylizer"]
      137 SETTABLEKS                       R14 R21 K25 ["PresetController"]
      139 SETTABLEKS                       R15 R21 K26 ["FileController"]
      141 CALL                             R20 1 1
      142 MOVE                             R21 R19
      143 CALL                             R20 1 1
      144 MOVE                             R19 R20
      145 DUPCLOSURE                       R20 K39 [PROTO_3]
      146 DUPCLOSURE                       R21 K40 [PROTO_7]
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R16
      150 GETTABLEKS                       R22 R2 K41 ["connect"]
      152 MOVE                             R23 R20
      153 MOVE                             R24 R21
      154 CALL                             R22 2 1
      155 MOVE                             R23 R19
      156 CALL                             R22 1 -1
      157 RETURN                           R22 -1
