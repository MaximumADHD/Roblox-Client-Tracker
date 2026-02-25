PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getThemeName"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 ["Dark"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["Default"] ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["FILE_PICKER_DARK"]
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K4 ["FILE_PICKER_LIGHT"]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["FileController"]
        5 GETTABLEKS                       R3 R0 K2 ["Instance"]
        7 GETTABLEKS                       R4 R0 K3 ["Name"]
        9 NAMECALL                         R1 R1 K4 ["pickTextureFileWithPrompt"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onTextureFilePickerButtonClicked"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Value"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R3 K3 ["PropertyView"]
        8 GETTABLEKS                       R4 R5 K4 ["FilePickerSize"]
       10 GETTABLEKS                       R6 R3 K3 ["PropertyView"]
       12 GETTABLEKS                       R5 R6 K5 ["IconSpacing"]
       14 ADD                              R6 R4 R5
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K6 ["createElement"]
       18 GETUPVAL                         R8 1
       19 DUPTABLE                         R9 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
       20 GETTABLEKS                       R10 R1 K7 ["Size"]
       22 SETTABLEKS                       R10 R9 K7 ["Size"]
       24 GETTABLEKS                       R10 R1 K8 ["LayoutOrder"]
       26 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       28 GETIMPORT                        R10 K16 [Enum.FillDirection.Horizontal]
       30 SETTABLEKS                       R10 R9 K9 ["Layout"]
       32 GETIMPORT                        R10 K18 [Enum.HorizontalAlignment.Left]
       34 SETTABLEKS                       R10 R9 K10 ["HorizontalAlignment"]
       36 SETTABLEKS                       R5 R9 K11 ["Spacing"]
       38 DUPTABLE                         R10 K21 [{"PathField", "TextureFilePickerButton"}]
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R11 R12 K6 ["createElement"]
       42 GETUPVAL                         R12 2
       43 DUPTABLE                         R13 K24 [{"Editable", "Size", "Value", "LayoutOrder", "OnSetItem"}]
       44 GETTABLEKS                       R14 R1 K22 ["Editable"]
       46 SETTABLEKS                       R14 R13 K22 ["Editable"]
       48 GETIMPORT                        R14 K27 [UDim2.new]
       50 LOADN                            R15 1
       51 MINUS                            R16 R6
       52 LOADN                            R17 1
       53 LOADN                            R18 0
       54 CALL                             R14 4 1
       55 SETTABLEKS                       R14 R13 K7 ["Size"]
       57 JUMPIFEQKS                       R2 K28 [""] ; [+3]
       59 MOVE                             R14 R2
       60 JUMP                             ; [+7]
       61 GETTABLEKS                       R14 R1 K29 ["Localization"]
       63 LOADK                            R16 K30 ["Properties"]
       64 LOADK                            R17 K31 ["NoFilePath"]
       65 NAMECALL                         R14 R14 K32 ["getText"]
       67 CALL                             R14 3 1
       68 SETTABLEKS                       R14 R13 K1 ["Value"]
       70 LOADN                            R14 1
       71 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       73 GETTABLEKS                       R14 R1 K23 ["OnSetItem"]
       75 SETTABLEKS                       R14 R13 K23 ["OnSetItem"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K19 ["PathField"]
       80 GETTABLEKS                       R12 R1 K33 ["AllowPickFile"]
       82 JUMPIFNOT                        R12 ; [+57]
       83 JUMPIFEQKS                       R2 K28 [""] ; [+56]
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R11 R12 K6 ["createElement"]
       88 GETUPVAL                         R12 3
       89 DUPTABLE                         R13 K35 [{"OnClick", "LayoutOrder", "Size"}]
       90 GETTABLEKS                       R14 R0 K36 ["onTextureFilePickerButtonClicked"]
       92 SETTABLEKS                       R14 R13 K34 ["OnClick"]
       94 LOADN                            R14 2
       95 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       97 GETIMPORT                        R14 K38 [UDim2.fromOffset]
       99 MOVE                             R15 R4
      100 MOVE                             R16 R4
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K7 ["Size"]
      104 DUPTABLE                         R14 K40 [{"Icon"}]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R15 R16 K6 ["createElement"]
      108 GETUPVAL                         R16 4
      109 DUPTABLE                         R17 K42 [{"Size", "Image"}]
      110 GETIMPORT                        R18 K38 [UDim2.fromOffset]
      112 MOVE                             R19 R4
      113 MOVE                             R20 R4
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K7 ["Size"]
      117 GETUPVAL                         R20 5
      118 GETTABLEKS                       R19 R20 K43 ["getThemeName"]
      120 CALL                             R19 0 1
      121 JUMPIFEQKS                       R19 K44 ["Dark"] ; [+3]
      123 JUMPIFNOTEQKS                    R19 K45 ["Default"] ; [+5]
      125 GETUPVAL                         R20 6
      126 GETTABLEKS                       R18 R20 K46 ["FILE_PICKER_DARK"]
      128 JUMP                             ; [+4]
      129 GETUPVAL                         R20 6
      130 GETTABLEKS                       R18 R20 K47 ["FILE_PICKER_LIGHT"]
      132 JUMP                             ; [0]
      133 SETTABLEKS                       R18 R17 K41 ["Image"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K39 ["Icon"]
      138 CALL                             R11 3 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R11
      141 SETTABLEKS                       R11 R10 K20 ["TextureFilePickerButton"]
      143 CALL                             R7 3 -1
      144 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Images"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R4 K14 ["Stylizer"]
       36 GETTABLEKS                       R7 R1 K15 ["UI"]
       38 GETTABLEKS                       R9 R1 K16 ["Style"]
       40 GETTABLEKS                       R8 R9 K17 ["ThemeSwitcher"]
       42 GETTABLEKS                       R9 R7 K18 ["Button"]
       44 GETTABLEKS                       R10 R7 K19 ["Pane"]
       46 GETTABLEKS                       R11 R7 K20 ["Image"]
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R15 R0 K9 ["Src"]
       52 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       54 GETTABLEKS                       R13 R14 K22 ["FileController"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R18 R0 K9 ["Src"]
       61 GETTABLEKS                       R17 R18 K23 ["Components"]
       63 GETTABLEKS                       R16 R17 K24 ["Properties"]
       65 GETTABLEKS                       R15 R16 K25 ["Types"]
       67 GETTABLEKS                       R14 R15 K26 ["StringProperty"]
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R14 R2 K27 ["PureComponent"]
       72 LOADK                            R16 K28 ["PathProperty"]
       73 NAMECALL                         R14 R14 K29 ["extend"]
       75 CALL                             R14 2 1
       76 DUPCLOSURE                       R15 K30 [PROTO_0]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R3
       79 DUPCLOSURE                       R16 K31 [PROTO_2]
       80 SETTABLEKS                       R16 R14 K32 ["init"]
       82 DUPCLOSURE                       R16 K33 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R16 R14 K34 ["render"]
       92 MOVE                             R16 R5
       93 DUPTABLE                         R17 K35 [{"FileController", "Stylizer"}]
       94 SETTABLEKS                       R12 R17 K22 ["FileController"]
       96 SETTABLEKS                       R6 R17 K14 ["Stylizer"]
       98 CALL                             R16 1 1
       99 MOVE                             R17 R14
      100 CALL                             R16 1 1
      101 MOVE                             R14 R16
      102 RETURN                           R14 1
