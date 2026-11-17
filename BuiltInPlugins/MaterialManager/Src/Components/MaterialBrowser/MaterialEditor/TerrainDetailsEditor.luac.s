PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"name"}]
        2 SETTABLEKS                       R0 R3 K0 ["name"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R1 R1 K2 ["name"]
        8 JUMPIFNOT                        R1 ; [+20]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["state"]
       12 GETTABLEKS                       R1 R1 K2 ["name"]
       14 JUMPIFEQKS                       R1 K3 [""] ; [+14]
       16 GETTABLEKS                       R1 R0 K4 ["GeneralServiceController"]
       18 GETTABLEKS                       R3 R0 K5 ["TerrainDetail"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["state"]
       23 GETTABLEKS                       R4 R4 K2 ["name"]
       25 NAMECALL                         R1 R1 K6 ["setTerrainDetailName"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 0
       30 DUPTABLE                         R3 K7 [{"name"}]
       31 GETTABLEKS                       R4 R0 K5 ["TerrainDetail"]
       33 GETTABLEKS                       R4 R4 K8 ["Name"]
       35 SETTABLEKS                       R4 R3 K2 ["name"]
       37 NAMECALL                         R1 R1 K9 ["setState"]
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetExpandedPane"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["TerrainDetailsEditor"]
        8 GETTABLEKS                       R4 R0 K3 ["TerrainFace"]
       10 GETTABLE                         R2 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["ExpandedPane"]
       13 NOT                              R3 R4
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 GETTABLEKS                       R1 R1 K2 ["TerrainDetailsEditor"]
        7 GETTABLEKS                       R2 R0 K3 ["Localization"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K5 ["createElement"]
       16 GETUPVAL                         R5 3
       17 DUPTABLE                         R6 K13 [{["LabelColumnWidth"], ["LayoutOrder"] = 1, ["Padding"] = 0, ["Text"], ["VerticalAlignment"]}]
       18 GETTABLEKS                       R7 R1 K6 ["LabelColumnWidth"]
       20 SETTABLEKS                       R7 R6 K6 ["LabelColumnWidth"]
       22 LOADK                            R9 K14 ["TerrainDetails"]
       23 GETTABLEKS                       R10 R0 K15 ["TerrainFace"]
       25 NAMECALL                         R7 R2 K16 ["getText"]
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K11 ["Text"]
       30 GETIMPORT                        R7 K19 [Enum.VerticalAlignment.Center]
       32 SETTABLEKS                       R7 R6 K12 ["VerticalAlignment"]
       34 NEWTABLE                         R7 0 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K5 ["createElement"]
       39 GETUPVAL                         R9 4
       40 DUPTABLE                         R10 K23 [{"Layout", "Size", "HorizontalAlignment", "VerticalAlignment"}]
       41 GETIMPORT                        R11 K26 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R11 R10 K20 ["Layout"]
       45 GETIMPORT                        R11 K29 [UDim2.fromScale]
       47 LOADN                            R12 1
       48 LOADN                            R13 1
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K21 ["Size"]
       52 GETIMPORT                        R11 K31 [Enum.HorizontalAlignment.Right]
       54 SETTABLEKS                       R11 R10 K22 ["HorizontalAlignment"]
       56 GETIMPORT                        R11 K19 [Enum.VerticalAlignment.Center]
       58 SETTABLEKS                       R11 R10 K12 ["VerticalAlignment"]
       60 DUPTABLE                         R11 K34 [{"Name", "Delete"}]
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K5 ["createElement"]
       64 GETUPVAL                         R13 5
       65 DUPTABLE                         R14 K38 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
       66 NAMECALL                         R15 R3 K39 ["getNextOrder"]
       68 CALL                             R15 1 1
       69 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       71 GETTABLEKS                       R15 R1 K40 ["NameLabelSize"]
       73 SETTABLEKS                       R15 R14 K21 ["Size"]
       75 GETUPVAL                         R15 0
       76 GETTABLEKS                       R15 R15 K41 ["state"]
       78 GETTABLEKS                       R15 R15 K42 ["name"]
       80 SETTABLEKS                       R15 R14 K11 ["Text"]
       82 GETIMPORT                        R15 K44 [Enum.TextTruncate.AtEnd]
       84 SETTABLEKS                       R15 R14 K35 ["TextTruncate"]
       86 GETIMPORT                        R15 K46 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R15 R14 K36 ["TextXAlignment"]
       90 GETIMPORT                        R15 K47 [Enum.TextYAlignment.Center]
       92 SETTABLEKS                       R15 R14 K37 ["TextYAlignment"]
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K32 ["Name"]
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K5 ["createElement"]
      100 GETUPVAL                         R13 6
      101 DUPTABLE                         R14 K50 [{"LayoutOrder", "OnClick", "Size", "Style"}]
      102 NAMECALL                         R15 R3 K39 ["getNextOrder"]
      104 CALL                             R15 1 1
      105 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      107 GETTABLEKS                       R15 R0 K51 ["OnDelete"]
      109 SETTABLEKS                       R15 R14 K48 ["OnClick"]
      111 GETTABLEKS                       R15 R1 K52 ["ButtonSize"]
      113 SETTABLEKS                       R15 R14 K21 ["Size"]
      115 GETTABLEKS                       R15 R1 K53 ["ButtonStyle"]
      117 SETTABLEKS                       R15 R14 K49 ["Style"]
      119 DUPTABLE                         R15 K56 [{"Image", "Tooltip"}]
      120 GETUPVAL                         R16 2
      121 GETTABLEKS                       R16 R16 K5 ["createElement"]
      123 GETUPVAL                         R17 7
      124 DUPTABLE                         R18 K58 [{"Style", "Size", "Position"}]
      125 GETTABLEKS                       R19 R1 K33 ["Delete"]
      127 SETTABLEKS                       R19 R18 K49 ["Style"]
      129 GETTABLEKS                       R19 R1 K59 ["ImageSize"]
      131 SETTABLEKS                       R19 R18 K21 ["Size"]
      133 GETTABLEKS                       R19 R1 K60 ["ImagePosition"]
      135 SETTABLEKS                       R19 R18 K57 ["Position"]
      137 CALL                             R16 2 1
      138 SETTABLEKS                       R16 R15 K54 ["Image"]
      140 GETUPVAL                         R16 2
      141 GETTABLEKS                       R16 R16 K5 ["createElement"]
      143 GETUPVAL                         R17 8
      144 DUPTABLE                         R18 K61 [{"Text"}]
      145 LOADK                            R21 K14 ["TerrainDetails"]
      146 LOADK                            R22 K33 ["Delete"]
      147 NAMECALL                         R19 R2 K16 ["getText"]
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K11 ["Text"]
      152 CALL                             R16 2 1
      153 SETTABLEKS                       R16 R15 K55 ["Tooltip"]
      155 CALL                             R12 3 1
      156 SETTABLEKS                       R12 R11 K33 ["Delete"]
      158 CALL                             R8 3 -1
      159 SETLIST                          R7 R8 -1 [1]
      161 CALL                             R4 3 -1
      162 RETURN                           R4 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"name"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["TerrainDetail"]
        5 GETTABLEKS                       R2 R2 K4 ["Name"]
        7 SETTABLEKS                       R2 R1 K0 ["name"]
        9 SETTABLEKS                       R1 R0 K5 ["state"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onNameChanged"]
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["onFocusLost"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R1 R0 K8 ["onExpandedChanged"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 SETTABLEKS                       R1 R0 K9 ["headerComponent"]
       36 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R0 K2 ["props"]
        6 GETTABLEKS                       R4 R4 K3 ["TerrainDetail"]
        8 GETTABLEKS                       R4 R4 K4 ["Name"]
       10 JUMPIFEQ                         R3 R4 ; [+21]
       12 GETTABLEKS                       R3 R2 K1 ["name"]
       14 GETTABLEKS                       R4 R0 K0 ["state"]
       16 GETTABLEKS                       R4 R4 K1 ["name"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+13]
       20 DUPTABLE                         R5 K5 [{"name"}]
       21 GETTABLEKS                       R6 R0 K2 ["props"]
       23 GETTABLEKS                       R6 R6 K3 ["TerrainDetail"]
       25 GETTABLEKS                       R6 R6 K4 ["Name"]
       27 SETTABLEKS                       R6 R5 K1 ["name"]
       29 NAMECALL                         R3 R0 K6 ["setState"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TerrainDetailsEditor"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K13 [{["ContentPadding"] = 5, ["ContentSpacing"] = 5, ["LayoutOrder"], ["HeaderComponent"], ["Expanded"], ["OnExpandedChanged"]}]
       17 GETTABLEKS                       R8 R1 K9 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       21 GETTABLEKS                       R8 R0 K14 ["headerComponent"]
       23 SETTABLEKS                       R8 R7 K10 ["HeaderComponent"]
       25 GETTABLEKS                       R8 R1 K15 ["ExpandedPane"]
       27 SETTABLEKS                       R8 R7 K11 ["Expanded"]
       29 GETTABLEKS                       R8 R0 K16 ["onExpandedChanged"]
       31 SETTABLEKS                       R8 R7 K12 ["OnExpandedChanged"]
       33 DUPTABLE                         R8 K21 [{"Name", "TextureSettings", "TilingSettings", "Separator"}]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K5 ["createElement"]
       37 GETUPVAL                         R10 3
       38 DUPTABLE                         R11 K24 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
       39 GETTABLEKS                       R12 R2 K22 ["LabelColumnWidth"]
       41 SETTABLEKS                       R12 R11 K22 ["LabelColumnWidth"]
       43 NAMECALL                         R12 R4 K25 ["getNextOrder"]
       45 CALL                             R12 1 1
       46 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       48 LOADK                            R14 K26 ["CreateDialog"]
       49 LOADK                            R15 K27 ["NameVariant"]
       50 NAMECALL                         R12 R3 K28 ["getText"]
       52 CALL                             R12 3 1
       53 SETTABLEKS                       R12 R11 K23 ["Text"]
       55 NEWTABLE                         R12 0 1
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K5 ["createElement"]
       60 GETUPVAL                         R14 4
       61 DUPTABLE                         R15 K34 [{["Style"] = "FilledRoundedBorder", ["Size"], ["Text"], ["OnTextChanged"], ["OnFocusLost"]}]
       62 GETTABLEKS                       R16 R2 K35 ["DialogColumnSize"]
       64 SETTABLEKS                       R16 R15 K31 ["Size"]
       66 GETTABLEKS                       R16 R0 K36 ["state"]
       68 GETTABLEKS                       R16 R16 K37 ["name"]
       70 SETTABLEKS                       R16 R15 K23 ["Text"]
       72 GETTABLEKS                       R16 R0 K38 ["onNameChanged"]
       74 SETTABLEKS                       R16 R15 K32 ["OnTextChanged"]
       76 GETTABLEKS                       R16 R0 K39 ["onFocusLost"]
       78 SETTABLEKS                       R16 R15 K33 ["OnFocusLost"]
       80 CALL                             R13 2 -1
       81 SETLIST                          R12 R13 -1 [1]
       83 CALL                             R9 3 1
       84 SETTABLEKS                       R9 R8 K17 ["Name"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K5 ["createElement"]
       89 GETUPVAL                         R10 5
       90 DUPTABLE                         R11 K43 [{["LayoutOrder"], ["PBRMaterial"], ["Expandable"] = False}]
       91 NAMECALL                         R12 R4 K25 ["getNextOrder"]
       93 CALL                             R12 1 1
       94 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       96 GETTABLEKS                       R12 R1 K44 ["TerrainDetail"]
       98 SETTABLEKS                       R12 R11 K40 ["PBRMaterial"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K18 ["TextureSettings"]
      103 GETUPVAL                         R9 1
      104 GETTABLEKS                       R9 R9 K5 ["createElement"]
      106 GETUPVAL                         R10 6
      107 DUPTABLE                         R11 K43 [{["LayoutOrder"], ["PBRMaterial"], ["Expandable"] = False}]
      108 NAMECALL                         R12 R4 K25 ["getNextOrder"]
      110 CALL                             R12 1 1
      111 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      113 GETTABLEKS                       R12 R1 K44 ["TerrainDetail"]
      115 SETTABLEKS                       R12 R11 K40 ["PBRMaterial"]
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R8 K19 ["TilingSettings"]
      120 GETTABLEKS                       R10 R1 K45 ["TerrainFace"]
      122 JUMPIFEQKS                       R10 K46 ["Bottom"] ; [+17]
      124 GETUPVAL                         R9 1
      125 GETTABLEKS                       R9 R9 K5 ["createElement"]
      127 GETUPVAL                         R10 7
      128 DUPTABLE                         R11 K48 [{"LayoutOrder", "DominantAxis"}]
      129 NAMECALL                         R12 R4 K25 ["getNextOrder"]
      131 CALL                             R12 1 1
      132 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      134 GETIMPORT                        R12 K51 [Enum.DominantAxis.Width]
      136 SETTABLEKS                       R12 R11 K47 ["DominantAxis"]
      138 CALL                             R9 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R9
      141 SETTABLEKS                       R9 R8 K20 ["Separator"]
      143 CALL                             R5 3 -1
      144 RETURN                           R5 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"ExpandedPane"}]
        1 GETTABLEKS                       R4 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R4 R4 K0 ["ExpandedPane"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K3 ["TerrainDetailsEditor"]
        8 GETTABLEKS                       R7 R1 K4 ["TerrainFace"]
       10 GETTABLE                         R5 R6 R7
       11 GETTABLE                         R3 R4 R5
       12 SETTABLEKS                       R3 R2 K0 ["ExpandedPane"]
       14 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"dispatchSetExpandedPane"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetExpandedPane"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["Util"]
       43 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R6 R4 K13 ["Style"]
       47 GETTABLEKS                       R6 R6 K14 ["Stylizer"]
       49 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       51 GETTABLEKS                       R8 R7 K16 ["withContext"]
       53 GETTABLEKS                       R9 R7 K17 ["Analytics"]
       55 GETTABLEKS                       R10 R7 K18 ["Localization"]
       57 GETTABLEKS                       R11 R4 K19 ["UI"]
       59 GETTABLEKS                       R12 R11 K20 ["Button"]
       61 GETTABLEKS                       R13 R11 K21 ["DEPRECATED_TextInput"]
       63 GETTABLEKS                       R14 R11 K22 ["ExpandablePane"]
       65 GETTABLEKS                       R15 R11 K23 ["Pane"]
       67 GETTABLEKS                       R16 R11 K24 ["Image"]
       69 GETTABLEKS                       R17 R11 K25 ["Separator"]
       71 GETTABLEKS                       R18 R11 K26 ["Tooltip"]
       73 GETTABLEKS                       R19 R11 K27 ["TruncatedTextLabel"]
       75 GETTABLEKS                       R20 R0 K5 ["Src"]
       77 GETTABLEKS                       R20 R20 K28 ["Actions"]
       79 GETIMPORT                        R21 K4 [require]
       81 GETTABLEKS                       R22 R20 K29 ["SetExpandedPane"]
       83 CALL                             R21 1 1
       84 GETIMPORT                        R22 K4 [require]
       86 GETTABLEKS                       R23 R0 K5 ["Src"]
       88 GETTABLEKS                       R23 R23 K30 ["Reducers"]
       90 GETTABLEKS                       R23 R23 K31 ["MainReducer"]
       92 CALL                             R22 1 1
       93 GETTABLEKS                       R23 R0 K5 ["Src"]
       95 GETTABLEKS                       R23 R23 K32 ["Controllers"]
       97 GETIMPORT                        R24 K4 [require]
       99 GETTABLEKS                       R25 R23 K33 ["GeneralServiceController"]
      101 CALL                             R24 1 1
      102 GETTABLEKS                       R25 R0 K5 ["Src"]
      104 GETTABLEKS                       R25 R25 K34 ["Components"]
      106 GETTABLEKS                       R25 R25 K35 ["MaterialBrowser"]
      108 GETTABLEKS                       R25 R25 K36 ["MaterialEditor"]
      110 GETIMPORT                        R26 K4 [require]
      112 GETTABLEKS                       R27 R25 K37 ["LabeledElement"]
      114 CALL                             R26 1 1
      115 GETIMPORT                        R27 K4 [require]
      117 GETTABLEKS                       R28 R25 K38 ["TextureSettings"]
      119 CALL                             R27 1 1
      120 GETIMPORT                        R28 K4 [require]
      122 GETTABLEKS                       R29 R25 K39 ["TilingSettings"]
      124 CALL                             R28 1 1
      125 GETTABLEKS                       R29 R0 K5 ["Src"]
      127 GETTABLEKS                       R29 R29 K40 ["Resources"]
      129 GETTABLEKS                       R29 R29 K41 ["Constants"]
      131 GETIMPORT                        R30 K4 [require]
      133 GETTABLEKS                       R31 R29 K42 ["getSettingsNames"]
      135 CALL                             R30 1 1
      136 MOVE                             R31 R30
      137 CALL                             R31 0 1
      138 GETTABLEKS                       R32 R2 K43 ["PureComponent"]
      140 LOADK                            R34 K44 ["TerrainDetailsEditor"]
      141 NAMECALL                         R32 R32 K45 ["extend"]
      143 CALL                             R32 2 1
      144 DUPCLOSURE                       R33 K46 [PROTO_4]
      145 CAPTURE                          VAL R31
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R26
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R18
      154 SETTABLEKS                       R33 R32 K47 ["init"]
      156 DUPCLOSURE                       R33 K48 [PROTO_5]
      157 SETTABLEKS                       R33 R32 K49 ["didUpdate"]
      159 DUPCLOSURE                       R33 K50 [PROTO_6]
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R26
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R28
      167 CAPTURE                          VAL R17
      168 SETTABLEKS                       R33 R32 K51 ["render"]
      170 MOVE                             R33 R8
      171 DUPTABLE                         R34 K52 [{"Analytics", "GeneralServiceController", "Localization", "Stylizer"}]
      172 SETTABLEKS                       R9 R34 K17 ["Analytics"]
      174 SETTABLEKS                       R24 R34 K33 ["GeneralServiceController"]
      176 SETTABLEKS                       R10 R34 K18 ["Localization"]
      178 SETTABLEKS                       R6 R34 K14 ["Stylizer"]
      180 CALL                             R33 1 1
      181 MOVE                             R34 R32
      182 CALL                             R33 1 1
      183 MOVE                             R32 R33
      184 GETTABLEKS                       R33 R3 K53 ["connect"]
      186 DUPCLOSURE                       R34 K54 [PROTO_7]
      187 CAPTURE                          VAL R31
      188 DUPCLOSURE                       R35 K55 [PROTO_9]
      189 CAPTURE                          VAL R21
      190 CALL                             R33 2 1
      191 MOVE                             R34 R32
      192 CALL                             R33 1 -1
      193 RETURN                           R33 -1
