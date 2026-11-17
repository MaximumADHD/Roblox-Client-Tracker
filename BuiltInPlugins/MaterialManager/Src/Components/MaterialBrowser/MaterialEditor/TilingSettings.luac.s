PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"studsPerTile"}]
        2 SETTABLEKS                       R0 R3 K0 ["studsPerTile"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"studsPerTileMessage", "status"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K3 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["studsPerTileMessage"]
        9 JUMPIFNOT                        R0 ; [+3]
       10 GETIMPORT                        R4 K7 [Enum.PropertyStatus.Warning]
       12 JUMP                             ; [+2]
       13 GETIMPORT                        R4 K9 [Enum.PropertyStatus.Ok]
       15 SETTABLEKS                       R4 R3 K1 ["status"]
       17 NAMECALL                         R1 R1 K10 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["state"]
        9 GETTABLEKS                       R3 R3 K3 ["studsPerTile"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+14]
       13 GETTABLEKS                       R3 R0 K4 ["GeneralServiceController"]
       15 GETTABLEKS                       R5 R0 K5 ["PBRMaterial"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R3 K6 ["setStudsPerTile"]
       20 CALL                             R3 3 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["setStudsPerTileStatus"]
       24 LOADNIL                          R4
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 0
       28 DUPTABLE                         R5 K8 [{"studsPerTile"}]
       29 GETUPVAL                         R6 2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["props"]
       33 GETTABLEKS                       R7 R7 K5 ["PBRMaterial"]
       35 GETTABLEKS                       R7 R7 K9 ["StudsPerTile"]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K3 ["studsPerTile"]
       40 NAMECALL                         R3 R3 K10 ["setState"]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K7 ["setStudsPerTileStatus"]
       46 LOADK                            R6 K11 ["CreateDialog"]
       47 LOADK                            R7 K12 ["ErrorStudsPerTile"]
       48 NAMECALL                         R4 R1 K13 ["getText"]
       50 CALL                             R4 3 -1
       51 CALL                             R3 -1 0
       52 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETTABLEKS                       R3 R2 K1 ["GeneralServiceController"]
        6 GETTABLEKS                       R5 R2 K2 ["PBRMaterial"]
        8 GETUPVAL                         R7 1
        9 GETTABLE                         R6 R7 R1
       10 NAMECALL                         R3 R3 K3 ["setMaterialPattern"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["TilingSettings"]
        6 GETTABLEKS                       R2 R0 K2 ["dispatchSetExpandedPane"]
        8 MOVE                             R3 R1
        9 GETTABLEKS                       R5 R0 K3 ["ExpandedPane"]
       11 NOT                              R4 R5
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"studsPerTile", "materialPatterns"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K3 ["props"]
        4 GETTABLEKS                       R3 R3 K4 ["PBRMaterial"]
        6 GETTABLEKS                       R3 R3 K5 ["StudsPerTile"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K0 ["studsPerTile"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R1 K1 ["materialPatterns"]
       15 SETTABLEKS                       R1 R0 K6 ["state"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K7 ["onStudsPerTileChanged"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K8 ["setStudsPerTileStatus"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R1 R0 K9 ["onFocusLost"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 SETTABLEKS                       R1 R0 K10 ["onMaterialPatternSelected"]
       37 NEWCLOSURE                       R1 P4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U4
       40 SETTABLEKS                       R1 R0 K11 ["onExpandedChanged"]
       42 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [ipairs]
        8 GETUPVAL                         R5 0
        9 CALL                             R4 1 3
       10 FORGPREP_INEXT                   R4
       11 MOVE                             R10 R3
       12 LOADK                            R13 K4 ["MaterialPatterns"]
       13 GETUPVAL                         R14 1
       14 MOVE                             R15 R8
       15 CALL                             R14 1 -1
       16 NAMECALL                         R11 R2 K5 ["getText"]
       18 CALL                             R11 -1 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R9 K8 [table.insert]
       22 CALL                             R9 -1 0
       23 FORGLOOP                         R4 2 [inext] ; [-13]
       25 DUPTABLE                         R6 K10 [{"materialPatterns"}]
       26 SETTABLEKS                       R3 R6 K9 ["materialPatterns"]
       28 NAMECALL                         R4 R0 K11 ["setState"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["studsPerTile"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R0 K2 ["props"]
        7 GETTABLEKS                       R5 R5 K3 ["PBRMaterial"]
        9 GETTABLEKS                       R5 R5 K4 ["StudsPerTile"]
       11 CALL                             R4 1 1
       12 JUMPIFEQ                         R3 R4 ; [+32]
       14 GETTABLEKS                       R3 R2 K1 ["studsPerTile"]
       16 GETTABLEKS                       R4 R0 K0 ["state"]
       18 GETTABLEKS                       R4 R4 K1 ["studsPerTile"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+24]
       22 DUPTABLE                         R5 K7 [{"studsPerTile", "studsPerTileMessage", "status"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R7 R0 K2 ["props"]
       26 GETTABLEKS                       R7 R7 K3 ["PBRMaterial"]
       28 GETTABLEKS                       R7 R7 K4 ["StudsPerTile"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K1 ["studsPerTile"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K8 ["None"]
       36 SETTABLEKS                       R6 R5 K5 ["studsPerTileMessage"]
       38 GETIMPORT                        R6 K12 [Enum.PropertyStatus.Ok]
       40 SETTABLEKS                       R6 R5 K6 ["status"]
       42 NAMECALL                         R3 R0 K13 ["setState"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TilingSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 LOADN                            R5 1
       13 GETIMPORT                        R6 K6 [ipairs]
       15 GETUPVAL                         R7 1
       16 CALL                             R6 1 3
       17 FORGPREP_INEXT                   R6
       18 GETTABLEKS                       R11 R1 K7 ["PBRMaterial"]
       20 GETTABLEKS                       R11 R11 K8 ["MaterialPattern"]
       22 JUMPIFNOTEQ                      R10 R11 ; [+2]
       24 MOVE                             R5 R9
       25 FORGLOOP                         R6 2 [inext] ; [-8]
       27 DUPTABLE                         R6 K10 [{"StudsPerTile", "MaterialPattern"}]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K11 ["createElement"]
       31 GETUPVAL                         R8 3
       32 DUPTABLE                         R9 K17 [{"LabelColumnWidth", "LayoutOrder", "Text", "StatusText", "Status"}]
       33 GETTABLEKS                       R10 R1 K18 ["LabelWidth"]
       35 JUMPIF                           R10 ; [+2]
       36 GETTABLEKS                       R10 R2 K12 ["LabelColumnWidth"]
       38 SETTABLEKS                       R10 R9 K12 ["LabelColumnWidth"]
       40 NAMECALL                         R10 R4 K19 ["getNextOrder"]
       42 CALL                             R10 1 1
       43 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       45 LOADK                            R12 K20 ["MaterialTiling"]
       46 LOADK                            R13 K9 ["StudsPerTile"]
       47 NAMECALL                         R10 R3 K21 ["getText"]
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K14 ["Text"]
       52 GETTABLEKS                       R10 R0 K22 ["state"]
       54 GETTABLEKS                       R10 R10 K23 ["studsPerTileMessage"]
       56 SETTABLEKS                       R10 R9 K15 ["StatusText"]
       58 GETTABLEKS                       R10 R0 K22 ["state"]
       60 GETTABLEKS                       R10 R10 K24 ["status"]
       62 SETTABLEKS                       R10 R9 K16 ["Status"]
       64 NEWTABLE                         R10 0 1
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K11 ["createElement"]
       69 GETUPVAL                         R12 4
       70 DUPTABLE                         R13 K30 [{["Style"] = "FilledRoundedBorder", ["Size"], ["Text"], ["OnTextChanged"], ["OnFocusLost"]}]
       71 GETTABLEKS                       R14 R2 K31 ["DialogColumnSize"]
       73 SETTABLEKS                       R14 R13 K27 ["Size"]
       75 GETTABLEKS                       R14 R0 K22 ["state"]
       77 GETTABLEKS                       R14 R14 K32 ["studsPerTile"]
       79 SETTABLEKS                       R14 R13 K14 ["Text"]
       81 GETTABLEKS                       R14 R0 K33 ["onStudsPerTileChanged"]
       83 SETTABLEKS                       R14 R13 K28 ["OnTextChanged"]
       85 GETTABLEKS                       R14 R0 K34 ["onFocusLost"]
       87 SETTABLEKS                       R14 R13 K29 ["OnFocusLost"]
       89 CALL                             R11 2 -1
       90 SETLIST                          R10 R11 -1 [1]
       92 CALL                             R7 3 1
       93 SETTABLEKS                       R7 R6 K9 ["StudsPerTile"]
       95 GETUPVAL                         R7 2
       96 GETTABLEKS                       R7 R7 K11 ["createElement"]
       98 GETUPVAL                         R8 3
       99 DUPTABLE                         R9 K35 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      100 GETTABLEKS                       R10 R1 K18 ["LabelWidth"]
      102 JUMPIF                           R10 ; [+2]
      103 GETTABLEKS                       R10 R2 K12 ["LabelColumnWidth"]
      105 SETTABLEKS                       R10 R9 K12 ["LabelColumnWidth"]
      107 NAMECALL                         R10 R4 K19 ["getNextOrder"]
      109 CALL                             R10 1 1
      110 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      112 LOADK                            R12 K20 ["MaterialTiling"]
      113 LOADK                            R13 K36 ["Pattern"]
      114 NAMECALL                         R10 R3 K21 ["getText"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K14 ["Text"]
      119 NEWTABLE                         R10 0 1
      121 GETUPVAL                         R11 2
      122 GETTABLEKS                       R11 R11 K11 ["createElement"]
      124 GETUPVAL                         R12 5
      125 DUPTABLE                         R13 K40 [{"Style", "Items", "Size", "OnItemActivated", "SelectedIndex"}]
      126 GETTABLEKS                       R14 R2 K41 ["CustomSelectInput"]
      128 SETTABLEKS                       R14 R13 K25 ["Style"]
      130 GETTABLEKS                       R14 R0 K22 ["state"]
      132 GETTABLEKS                       R14 R14 K42 ["materialPatterns"]
      134 SETTABLEKS                       R14 R13 K37 ["Items"]
      136 GETTABLEKS                       R14 R2 K31 ["DialogColumnSize"]
      138 SETTABLEKS                       R14 R13 K27 ["Size"]
      140 GETTABLEKS                       R14 R0 K43 ["onMaterialPatternSelected"]
      142 SETTABLEKS                       R14 R13 K38 ["OnItemActivated"]
      144 SETTABLEKS                       R5 R13 K39 ["SelectedIndex"]
      146 CALL                             R11 2 -1
      147 SETLIST                          R10 R11 -1 [1]
      149 CALL                             R7 3 1
      150 SETTABLEKS                       R7 R6 K8 ["MaterialPattern"]
      152 GETTABLEKS                       R7 R1 K44 ["Expandable"]
      154 JUMPIFNOT                        R7 ; [+39]
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K11 ["createElement"]
      158 GETUPVAL                         R8 6
      159 DUPTABLE                         R9 K49 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
      160 GETTABLEKS                       R10 R1 K13 ["LayoutOrder"]
      162 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      164 GETTABLEKS                       R10 R2 K45 ["ContentPadding"]
      166 SETTABLEKS                       R10 R9 K45 ["ContentPadding"]
      168 GETTABLEKS                       R10 R2 K50 ["ItemSpacing"]
      170 SETTABLEKS                       R10 R9 K46 ["ContentSpacing"]
      172 LOADK                            R12 K20 ["MaterialTiling"]
      173 LOADK                            R13 K51 ["Tiling"]
      174 NAMECALL                         R10 R3 K21 ["getText"]
      176 CALL                             R10 3 1
      177 SETTABLEKS                       R10 R9 K14 ["Text"]
      179 GETTABLEKS                       R10 R2 K52 ["CustomExpandablePane"]
      181 SETTABLEKS                       R10 R9 K25 ["Style"]
      183 GETTABLEKS                       R10 R1 K53 ["ExpandedPane"]
      185 SETTABLEKS                       R10 R9 K47 ["Expanded"]
      187 GETTABLEKS                       R10 R0 K54 ["onExpandedChanged"]
      189 SETTABLEKS                       R10 R9 K48 ["OnExpandedChanged"]
      191 MOVE                             R10 R6
      192 CALL                             R7 3 -1
      193 RETURN                           R7 -1
      194 GETUPVAL                         R7 2
      195 GETTABLEKS                       R7 R7 K11 ["createElement"]
      197 GETUPVAL                         R8 7
      198 DUPTABLE                         R9 K59 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "HorizontalAlignment"}]
      199 GETIMPORT                        R10 K62 [Enum.AutomaticSize.Y]
      201 SETTABLEKS                       R10 R9 K55 ["AutomaticSize"]
      203 GETTABLEKS                       R10 R1 K13 ["LayoutOrder"]
      205 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      207 GETIMPORT                        R10 K65 [Enum.FillDirection.Vertical]
      209 SETTABLEKS                       R10 R9 K56 ["Layout"]
      211 GETTABLEKS                       R10 R2 K50 ["ItemSpacing"]
      213 SETTABLEKS                       R10 R9 K57 ["Spacing"]
      215 GETIMPORT                        R10 K67 [Enum.HorizontalAlignment.Left]
      217 SETTABLEKS                       R10 R9 K58 ["HorizontalAlignment"]
      219 MOVE                             R10 R6
      220 CALL                             R7 3 -1
      221 RETURN                           R7 -1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"ExpandedPane", "Material"}]
        1 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["ExpandedPane"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["TilingSettings"]
        8 GETTABLE                         R2 R3 R4
        9 SETTABLEKS                       R2 R1 K0 ["ExpandedPane"]
       11 GETTABLEKS                       R2 R0 K3 ["MaterialBrowserReducer"]
       13 GETTABLEKS                       R2 R2 K1 ["Material"]
       15 SETTABLEKS                       R2 R1 K1 ["Material"]
       17 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
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
       31 GETTABLEKS                       R4 R4 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R3 K11 ["Util"]
       43 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R6 R3 K13 ["Style"]
       47 GETTABLEKS                       R6 R6 K14 ["Stylizer"]
       49 GETTABLEKS                       R7 R3 K15 ["ContextServices"]
       51 GETTABLEKS                       R8 R7 K16 ["withContext"]
       53 GETTABLEKS                       R9 R7 K17 ["Analytics"]
       55 GETTABLEKS                       R10 R7 K18 ["Localization"]
       57 GETTABLEKS                       R11 R3 K19 ["UI"]
       59 GETTABLEKS                       R12 R11 K20 ["Pane"]
       61 GETTABLEKS                       R13 R11 K21 ["ExpandablePane"]
       63 GETTABLEKS                       R14 R11 K22 ["DEPRECATED_TextInput"]
       65 GETTABLEKS                       R15 R11 K23 ["SelectInput"]
       67 GETTABLEKS                       R16 R0 K5 ["Src"]
       69 GETTABLEKS                       R16 R16 K24 ["Actions"]
       71 GETIMPORT                        R17 K4 [require]
       73 GETTABLEKS                       R18 R16 K25 ["SetExpandedPane"]
       75 CALL                             R17 1 1
       76 GETIMPORT                        R18 K4 [require]
       78 GETTABLEKS                       R19 R0 K5 ["Src"]
       80 GETTABLEKS                       R19 R19 K26 ["Reducers"]
       82 GETTABLEKS                       R19 R19 K27 ["MainReducer"]
       84 CALL                             R18 1 1
       85 GETTABLEKS                       R19 R0 K5 ["Src"]
       87 GETTABLEKS                       R19 R19 K28 ["Controllers"]
       89 GETIMPORT                        R20 K4 [require]
       91 GETTABLEKS                       R21 R19 K29 ["GeneralServiceController"]
       93 CALL                             R20 1 1
       94 GETIMPORT                        R21 K4 [require]
       96 GETTABLEKS                       R22 R0 K5 ["Src"]
       98 GETTABLEKS                       R22 R22 K30 ["Components"]
      100 GETTABLEKS                       R22 R22 K31 ["MaterialBrowser"]
      102 GETTABLEKS                       R22 R22 K32 ["MaterialEditor"]
      104 GETTABLEKS                       R22 R22 K33 ["LabeledElement"]
      106 CALL                             R21 1 1
      107 GETTABLEKS                       R22 R0 K5 ["Src"]
      109 GETTABLEKS                       R22 R22 K34 ["Resources"]
      111 GETTABLEKS                       R22 R22 K35 ["Constants"]
      113 GETIMPORT                        R23 K4 [require]
      115 GETTABLEKS                       R24 R22 K36 ["getMaterialPatterns"]
      117 CALL                             R23 1 1
      118 GETIMPORT                        R24 K4 [require]
      120 GETTABLEKS                       R25 R22 K37 ["getMaterialPatternName"]
      122 CALL                             R24 1 1
      123 GETIMPORT                        R25 K4 [require]
      125 GETTABLEKS                       R26 R22 K38 ["getSettingsNames"]
      127 CALL                             R25 1 1
      128 GETTABLEKS                       R26 R0 K5 ["Src"]
      130 GETTABLEKS                       R26 R26 K11 ["Util"]
      132 GETIMPORT                        R27 K4 [require]
      134 GETTABLEKS                       R28 R26 K39 ["getNumberFromText"]
      136 CALL                             R27 1 1
      137 GETIMPORT                        R28 K4 [require]
      139 GETTABLEKS                       R29 R26 K40 ["getTextFromNumber"]
      141 CALL                             R28 1 1
      142 MOVE                             R29 R23
      143 CALL                             R29 0 1
      144 MOVE                             R30 R25
      145 CALL                             R30 0 1
      146 GETTABLEKS                       R31 R2 K41 ["PureComponent"]
      148 LOADK                            R33 K42 ["TilingSettings"]
      149 NAMECALL                         R31 R31 K43 ["extend"]
      151 CALL                             R31 2 1
      152 DUPCLOSURE                       R32 K44 [PROTO_5]
      153 CAPTURE                          VAL R28
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R29
      157 CAPTURE                          VAL R30
      158 SETTABLEKS                       R32 R31 K45 ["init"]
      160 DUPCLOSURE                       R32 K46 [PROTO_6]
      161 CAPTURE                          VAL R29
      162 CAPTURE                          VAL R24
      163 SETTABLEKS                       R32 R31 K47 ["didMount"]
      165 DUPCLOSURE                       R32 K48 [PROTO_7]
      166 CAPTURE                          VAL R28
      167 CAPTURE                          VAL R2
      168 SETTABLEKS                       R32 R31 K49 ["didUpdate"]
      170 DUPCLOSURE                       R32 K50 [PROTO_8]
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R29
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R12
      179 SETTABLEKS                       R32 R31 K51 ["render"]
      181 MOVE                             R32 R8
      182 DUPTABLE                         R33 K52 [{"Analytics", "GeneralServiceController", "Localization", "Stylizer"}]
      183 SETTABLEKS                       R9 R33 K17 ["Analytics"]
      185 SETTABLEKS                       R20 R33 K29 ["GeneralServiceController"]
      187 SETTABLEKS                       R10 R33 K18 ["Localization"]
      189 SETTABLEKS                       R6 R33 K14 ["Stylizer"]
      191 CALL                             R32 1 1
      192 MOVE                             R33 R31
      193 CALL                             R32 1 1
      194 MOVE                             R31 R32
      195 GETTABLEKS                       R32 R4 K53 ["connect"]
      197 DUPCLOSURE                       R33 K54 [PROTO_9]
      198 CAPTURE                          VAL R30
      199 DUPCLOSURE                       R34 K55 [PROTO_11]
      200 CAPTURE                          VAL R17
      201 CALL                             R32 2 1
      202 MOVE                             R33 R31
      203 CALL                             R32 1 -1
      204 RETURN                           R32 -1
