PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETTABLEKS                       R2 R1 K1 ["MaterialServiceController"]
        6 GETTABLEKS                       R4 R1 K2 ["MaterialVariant"]
        8 GETTABLEKS                       R4 R4 K3 ["BaseMaterial"]
       10 NAMECALL                         R2 R2 K4 ["setMaterialOverride"]
       12 CALL                             R2 2 0
       13 JUMP                             ; [+21]
       14 GETIMPORT                        R2 K7 [table.find]
       16 GETTABLEKS                       R3 R1 K8 ["MaterialOverrides"]
       18 GETTABLEKS                       R4 R1 K2 ["MaterialVariant"]
       20 GETTABLEKS                       R4 R4 K9 ["Name"]
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R3 R1 K1 ["MaterialServiceController"]
       25 GETTABLEKS                       R5 R1 K2 ["MaterialVariant"]
       27 GETTABLEKS                       R5 R5 K3 ["BaseMaterial"]
       29 GETTABLEKS                       R7 R1 K8 ["MaterialOverrides"]
       31 GETTABLE                         R6 R7 R2
       32 NAMECALL                         R3 R3 K4 ["setMaterialOverride"]
       34 CALL                             R3 3 0
       35 GETTABLEKS                       R2 R1 K10 ["Analytics"]
       37 LOADK                            R4 K11 ["setOverrideToggled"]
       38 NAMECALL                         R2 R2 K12 ["report"]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetExpandedPane"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["OverrideSettings"]
        8 GETTABLEKS                       R4 R0 K3 ["ExpandedPane"]
       10 NOT                              R3 R4
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onOverrideToggled"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["onExpandedChanged"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOverrideToggled"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["OverrideSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["MaterialVariant"]
       10 LOADB                            R5 0
       11 GETTABLEKS                       R6 R1 K5 ["MaterialOverride"]
       13 LOADN                            R7 1
       14 JUMPIFNOTLT                      R7 R6 ; [+12]
       16 GETTABLEKS                       R7 R1 K6 ["MaterialOverrides"]
       18 GETTABLEKS                       R8 R1 K5 ["MaterialOverride"]
       20 GETTABLE                         R6 R7 R8
       21 GETTABLEKS                       R7 R4 K7 ["Name"]
       23 JUMPIFEQ                         R6 R7 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K8 ["createElement"]
       30 GETUPVAL                         R7 1
       31 DUPTABLE                         R8 K16 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
       32 GETTABLEKS                       R9 R1 K9 ["LayoutOrder"]
       34 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       36 GETTABLEKS                       R9 R2 K10 ["ContentPadding"]
       38 SETTABLEKS                       R9 R8 K10 ["ContentPadding"]
       40 GETTABLEKS                       R9 R2 K17 ["ItemSpacing"]
       42 SETTABLEKS                       R9 R8 K11 ["ContentSpacing"]
       44 LOADK                            R11 K2 ["OverrideSettings"]
       45 LOADK                            R12 K18 ["Overrides"]
       46 NAMECALL                         R9 R3 K19 ["getText"]
       48 CALL                             R9 3 1
       49 SETTABLEKS                       R9 R8 K12 ["Text"]
       51 GETTABLEKS                       R9 R2 K20 ["CustomExpandablePane"]
       53 SETTABLEKS                       R9 R8 K13 ["Style"]
       55 GETTABLEKS                       R9 R1 K21 ["ExpandedPane"]
       57 SETTABLEKS                       R9 R8 K14 ["Expanded"]
       59 GETTABLEKS                       R9 R0 K22 ["onExpandedChanged"]
       61 SETTABLEKS                       R9 R8 K15 ["OnExpandedChanged"]
       63 DUPTABLE                         R9 K24 [{"OverridesNew"}]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K8 ["createElement"]
       67 GETUPVAL                         R11 2
       68 DUPTABLE                         R12 K26 [{"LabelColumnWidth", "Text"}]
       69 GETTABLEKS                       R13 R2 K25 ["LabelColumnWidth"]
       71 SETTABLEKS                       R13 R12 K25 ["LabelColumnWidth"]
       73 LOADK                            R15 K2 ["OverrideSettings"]
       74 LOADK                            R16 K27 ["SetOverride"]
       75 NAMECALL                         R13 R3 K19 ["getText"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K12 ["Text"]
       80 DUPTABLE                         R13 K29 [{"Button"}]
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R14 R14 K8 ["createElement"]
       84 GETUPVAL                         R15 3
       85 DUPTABLE                         R16 K35 [{["AutomaticSize"], ["VerticalAlignment"], ["Size"], ["Padding"] = 5}]
       86 GETIMPORT                        R17 K38 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R17 R16 K30 ["AutomaticSize"]
       90 GETIMPORT                        R17 K40 [Enum.VerticalAlignment.Center]
       92 SETTABLEKS                       R17 R16 K31 ["VerticalAlignment"]
       94 GETIMPORT                        R17 K43 [UDim2.new]
       96 LOADN                            R18 0
       97 LOADN                            R19 195
       98 LOADN                            R20 0
       99 LOADN                            R21 20
      100 CALL                             R17 4 1
      101 SETTABLEKS                       R17 R16 K32 ["Size"]
      103 DUPTABLE                         R17 K45 [{"ToggleButton"}]
      104 GETUPVAL                         R18 0
      105 GETTABLEKS                       R18 R18 K8 ["createElement"]
      107 GETUPVAL                         R19 4
      108 DUPTABLE                         R20 K48 [{"OnClick", "Selected", "Size"}]
      109 NEWCLOSURE                       R21 P0
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R21 R20 K46 ["OnClick"]
      114 SETTABLEKS                       R5 R20 K47 ["Selected"]
      116 GETIMPORT                        R21 K50 [UDim2.fromOffset]
      118 LOADN                            R22 30
      119 LOADN                            R23 18
      120 CALL                             R21 2 1
      121 SETTABLEKS                       R21 R20 K32 ["Size"]
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K44 ["ToggleButton"]
      126 CALL                             R14 3 1
      127 SETTABLEKS                       R14 R13 K28 ["Button"]
      129 CALL                             R10 3 1
      130 SETTABLEKS                       R10 R9 K23 ["OverridesNew"]
      132 CALL                             R6 3 -1
      133 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["MockMaterial"]
        2 JUMPIFNOT                        R2 ; [+34]
        3 DUPTABLE                         R2 K4 [{"ExpandedPane", "MaterialOverrides", "MaterialOverride"}]
        4 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R4 R4 K1 ["ExpandedPane"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K6 ["OverrideSettings"]
       11 GETTABLE                         R3 R4 R5
       12 SETTABLEKS                       R3 R2 K1 ["ExpandedPane"]
       14 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       16 GETTABLEKS                       R4 R4 K2 ["MaterialOverrides"]
       18 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       20 GETTABLEKS                       R5 R5 K7 ["Material"]
       22 GETTABLE                         R3 R4 R5
       23 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       25 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       27 GETTABLEKS                       R4 R4 K3 ["MaterialOverride"]
       29 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       31 GETTABLEKS                       R5 R5 K7 ["Material"]
       33 GETTABLE                         R3 R4 R5
       34 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R0 K5 ["MaterialBrowserReducer"]
       39 GETTABLEKS                       R2 R2 K7 ["Material"]
       41 JUMPIFNOT                        R2 ; [+9]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       45 GETTABLEKS                       R4 R4 K7 ["Material"]
       47 GETTABLEKS                       R4 R4 K7 ["Material"]
       49 GETTABLE                         R2 R3 R4
       50 JUMPIF                           R2 ; [+3]
       51 NEWTABLE                         R2 0 0
       53 RETURN                           R2 1
       54 DUPTABLE                         R2 K4 [{"ExpandedPane", "MaterialOverrides", "MaterialOverride"}]
       55 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       57 GETTABLEKS                       R4 R4 K1 ["ExpandedPane"]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K6 ["OverrideSettings"]
       62 GETTABLE                         R3 R4 R5
       63 SETTABLEKS                       R3 R2 K1 ["ExpandedPane"]
       65 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       67 GETTABLEKS                       R4 R4 K2 ["MaterialOverrides"]
       69 GETTABLEKS                       R5 R0 K5 ["MaterialBrowserReducer"]
       71 GETTABLEKS                       R5 R5 K7 ["Material"]
       73 GETTABLEKS                       R5 R5 K7 ["Material"]
       75 GETTABLE                         R3 R4 R5
       76 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       78 GETTABLEKS                       R4 R0 K5 ["MaterialBrowserReducer"]
       80 GETTABLEKS                       R4 R4 K3 ["MaterialOverride"]
       82 GETTABLEKS                       R5 R0 K5 ["MaterialBrowserReducer"]
       84 GETTABLEKS                       R5 R5 K7 ["Material"]
       86 GETTABLEKS                       R5 R5 K7 ["Material"]
       88 GETTABLE                         R3 R4 R5
       89 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
       91 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_7:
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
       41 GETTABLEKS                       R5 R4 K11 ["Style"]
       43 GETTABLEKS                       R5 R5 K12 ["Stylizer"]
       45 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       47 GETTABLEKS                       R7 R6 K14 ["withContext"]
       49 GETTABLEKS                       R8 R6 K15 ["Analytics"]
       51 GETTABLEKS                       R9 R6 K16 ["Localization"]
       53 GETTABLEKS                       R10 R4 K17 ["UI"]
       55 GETTABLEKS                       R11 R10 K18 ["Pane"]
       57 GETTABLEKS                       R12 R10 K19 ["ExpandablePane"]
       59 GETTABLEKS                       R13 R10 K20 ["ToggleButton"]
       61 GETTABLEKS                       R14 R0 K5 ["Src"]
       63 GETTABLEKS                       R14 R14 K21 ["Actions"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R14 K22 ["SetExpandedPane"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K4 [require]
       72 GETTABLEKS                       R17 R0 K5 ["Src"]
       74 GETTABLEKS                       R17 R17 K23 ["Reducers"]
       76 GETTABLEKS                       R17 R17 K24 ["MainReducer"]
       78 CALL                             R16 1 1
       79 GETIMPORT                        R17 K4 [require]
       81 GETTABLEKS                       R18 R0 K5 ["Src"]
       83 GETTABLEKS                       R18 R18 K25 ["Controllers"]
       85 GETTABLEKS                       R18 R18 K26 ["MaterialServiceController"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K4 [require]
       90 GETTABLEKS                       R19 R0 K5 ["Src"]
       92 GETTABLEKS                       R19 R19 K27 ["Components"]
       94 GETTABLEKS                       R19 R19 K28 ["MaterialBrowser"]
       96 GETTABLEKS                       R19 R19 K29 ["MaterialEditor"]
       98 GETTABLEKS                       R19 R19 K30 ["LabeledElement"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R0 K5 ["Src"]
      103 GETTABLEKS                       R19 R19 K31 ["Resources"]
      105 GETTABLEKS                       R19 R19 K32 ["Constants"]
      107 GETIMPORT                        R20 K4 [require]
      109 GETTABLEKS                       R21 R19 K33 ["getSettingsNames"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K4 [require]
      114 GETTABLEKS                       R22 R19 K34 ["getSupportedMaterials"]
      116 CALL                             R21 1 1
      117 MOVE                             R22 R21
      118 CALL                             R22 0 1
      119 MOVE                             R23 R20
      120 CALL                             R23 0 1
      121 GETTABLEKS                       R24 R2 K35 ["PureComponent"]
      123 LOADK                            R26 K36 ["OverrideSettings"]
      124 NAMECALL                         R24 R24 K37 ["extend"]
      126 CALL                             R24 2 1
      127 DUPCLOSURE                       R25 K38 [PROTO_2]
      128 CAPTURE                          VAL R23
      129 SETTABLEKS                       R25 R24 K39 ["init"]
      131 DUPCLOSURE                       R25 K40 [PROTO_4]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R13
      137 SETTABLEKS                       R25 R24 K41 ["render"]
      139 MOVE                             R25 R7
      140 DUPTABLE                         R26 K42 [{"Analytics", "Localization", "MaterialServiceController", "Stylizer"}]
      141 SETTABLEKS                       R8 R26 K15 ["Analytics"]
      143 SETTABLEKS                       R9 R26 K16 ["Localization"]
      145 SETTABLEKS                       R17 R26 K26 ["MaterialServiceController"]
      147 SETTABLEKS                       R5 R26 K12 ["Stylizer"]
      149 CALL                             R25 1 1
      150 MOVE                             R26 R24
      151 CALL                             R25 1 1
      152 MOVE                             R24 R25
      153 GETTABLEKS                       R25 R3 K43 ["connect"]
      155 DUPCLOSURE                       R26 K44 [PROTO_5]
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R22
      158 DUPCLOSURE                       R27 K45 [PROTO_7]
      159 CAPTURE                          VAL R15
      160 CALL                             R25 2 1
      161 MOVE                             R26 R24
      162 CALL                             R25 1 -1
      163 RETURN                           R25 -1
