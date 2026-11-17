PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["TextureSettings"]
        6 GETTABLEKS                       R2 R0 K2 ["dispatchSetExpandedPane"]
        8 MOVE                             R3 R1
        9 GETTABLEKS                       R5 R0 K3 ["ExpandedPane"]
       11 NOT                              R4 R5
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onExpandedChanged"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TextureSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["PBRMaterial"]
       10 JUMPIF                           R4 ; [+6]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["createElement"]
       14 GETUPVAL                         R5 1
       15 CALL                             R4 1 -1
       16 RETURN                           R4 -1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K6 ["new"]
       20 CALL                             R4 0 1
       21 DUPTABLE                         R5 K12 [{"ImportColorMap", "ImportMetalnessMap", "ImportNormalMap", "ImportRoughnessMap", "ImportEmissiveMask"}]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["createElement"]
       25 GETUPVAL                         R7 3
       26 DUPTABLE                         R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
       27 NAMECALL                         R9 R4 K21 ["getNextOrder"]
       29 CALL                             R9 1 1
       30 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       32 GETTABLEKS                       R9 R2 K14 ["LabelColumnWidth"]
       34 SETTABLEKS                       R9 R8 K14 ["LabelColumnWidth"]
       36 GETTABLEKS                       R9 R2 K15 ["LabelWidth"]
       38 SETTABLEKS                       R9 R8 K15 ["LabelWidth"]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K22 ["ColorMap"]
       43 SETTABLEKS                       R9 R8 K16 ["MapType"]
       45 LOADK                            R11 K23 ["Import"]
       46 LOADK                            R12 K24 ["ColorMapPreview"]
       47 NAMECALL                         R9 R3 K25 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K17 ["PreviewTitle"]
       52 LOADK                            R11 K26 ["CreateDialog"]
       53 LOADK                            R12 K7 ["ImportColorMap"]
       54 NAMECALL                         R9 R3 K25 ["getText"]
       56 CALL                             R9 3 1
       57 SETTABLEKS                       R9 R8 K18 ["Text"]
       59 GETTABLEKS                       R9 R1 K4 ["PBRMaterial"]
       61 SETTABLEKS                       R9 R8 K4 ["PBRMaterial"]
       63 GETTABLEKS                       R9 R2 K19 ["ColumnWidth"]
       65 SETTABLEKS                       R9 R8 K19 ["ColumnWidth"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K7 ["ImportColorMap"]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K5 ["createElement"]
       73 GETUPVAL                         R7 3
       74 DUPTABLE                         R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
       75 NAMECALL                         R9 R4 K21 ["getNextOrder"]
       77 CALL                             R9 1 1
       78 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       80 GETTABLEKS                       R9 R2 K14 ["LabelColumnWidth"]
       82 SETTABLEKS                       R9 R8 K14 ["LabelColumnWidth"]
       84 GETTABLEKS                       R9 R2 K15 ["LabelWidth"]
       86 SETTABLEKS                       R9 R8 K15 ["LabelWidth"]
       88 GETUPVAL                         R9 4
       89 GETTABLEKS                       R9 R9 K27 ["MetalnessMap"]
       91 SETTABLEKS                       R9 R8 K16 ["MapType"]
       93 LOADK                            R11 K23 ["Import"]
       94 LOADK                            R12 K28 ["MetalnessMapPreview"]
       95 NAMECALL                         R9 R3 K25 ["getText"]
       97 CALL                             R9 3 1
       98 SETTABLEKS                       R9 R8 K17 ["PreviewTitle"]
      100 LOADK                            R11 K26 ["CreateDialog"]
      101 LOADK                            R12 K8 ["ImportMetalnessMap"]
      102 NAMECALL                         R9 R3 K25 ["getText"]
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K18 ["Text"]
      107 GETTABLEKS                       R9 R1 K4 ["PBRMaterial"]
      109 SETTABLEKS                       R9 R8 K4 ["PBRMaterial"]
      111 GETTABLEKS                       R9 R2 K19 ["ColumnWidth"]
      113 SETTABLEKS                       R9 R8 K19 ["ColumnWidth"]
      115 CALL                             R6 2 1
      116 SETTABLEKS                       R6 R5 K8 ["ImportMetalnessMap"]
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K5 ["createElement"]
      121 GETUPVAL                         R7 3
      122 DUPTABLE                         R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
      123 NAMECALL                         R9 R4 K21 ["getNextOrder"]
      125 CALL                             R9 1 1
      126 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      128 GETTABLEKS                       R9 R2 K14 ["LabelColumnWidth"]
      130 SETTABLEKS                       R9 R8 K14 ["LabelColumnWidth"]
      132 GETTABLEKS                       R9 R2 K15 ["LabelWidth"]
      134 SETTABLEKS                       R9 R8 K15 ["LabelWidth"]
      136 GETUPVAL                         R9 4
      137 GETTABLEKS                       R9 R9 K29 ["NormalMap"]
      139 SETTABLEKS                       R9 R8 K16 ["MapType"]
      141 LOADK                            R11 K23 ["Import"]
      142 LOADK                            R12 K30 ["NormalMapPreview"]
      143 NAMECALL                         R9 R3 K25 ["getText"]
      145 CALL                             R9 3 1
      146 SETTABLEKS                       R9 R8 K17 ["PreviewTitle"]
      148 LOADK                            R11 K26 ["CreateDialog"]
      149 LOADK                            R12 K9 ["ImportNormalMap"]
      150 NAMECALL                         R9 R3 K25 ["getText"]
      152 CALL                             R9 3 1
      153 SETTABLEKS                       R9 R8 K18 ["Text"]
      155 GETTABLEKS                       R9 R1 K4 ["PBRMaterial"]
      157 SETTABLEKS                       R9 R8 K4 ["PBRMaterial"]
      159 GETTABLEKS                       R9 R2 K19 ["ColumnWidth"]
      161 SETTABLEKS                       R9 R8 K19 ["ColumnWidth"]
      163 CALL                             R6 2 1
      164 SETTABLEKS                       R6 R5 K9 ["ImportNormalMap"]
      166 GETUPVAL                         R6 0
      167 GETTABLEKS                       R6 R6 K5 ["createElement"]
      169 GETUPVAL                         R7 3
      170 DUPTABLE                         R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
      171 NAMECALL                         R9 R4 K21 ["getNextOrder"]
      173 CALL                             R9 1 1
      174 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      176 GETTABLEKS                       R9 R2 K14 ["LabelColumnWidth"]
      178 SETTABLEKS                       R9 R8 K14 ["LabelColumnWidth"]
      180 GETTABLEKS                       R9 R2 K15 ["LabelWidth"]
      182 SETTABLEKS                       R9 R8 K15 ["LabelWidth"]
      184 GETUPVAL                         R9 4
      185 GETTABLEKS                       R9 R9 K31 ["RoughnessMap"]
      187 SETTABLEKS                       R9 R8 K16 ["MapType"]
      189 LOADK                            R11 K23 ["Import"]
      190 LOADK                            R12 K32 ["RoughnessMapPreview"]
      191 NAMECALL                         R9 R3 K25 ["getText"]
      193 CALL                             R9 3 1
      194 SETTABLEKS                       R9 R8 K17 ["PreviewTitle"]
      196 LOADK                            R11 K26 ["CreateDialog"]
      197 LOADK                            R12 K10 ["ImportRoughnessMap"]
      198 NAMECALL                         R9 R3 K25 ["getText"]
      200 CALL                             R9 3 1
      201 SETTABLEKS                       R9 R8 K18 ["Text"]
      203 GETTABLEKS                       R9 R1 K4 ["PBRMaterial"]
      205 SETTABLEKS                       R9 R8 K4 ["PBRMaterial"]
      207 GETTABLEKS                       R9 R2 K19 ["ColumnWidth"]
      209 SETTABLEKS                       R9 R8 K19 ["ColumnWidth"]
      211 CALL                             R6 2 1
      212 SETTABLEKS                       R6 R5 K10 ["ImportRoughnessMap"]
      214 GETUPVAL                         R7 5
      215 CALL                             R7 0 1
      216 JUMPIFNOT                        R7 ; [+47]
      217 GETUPVAL                         R6 0
      218 GETTABLEKS                       R6 R6 K5 ["createElement"]
      220 GETUPVAL                         R7 3
      221 DUPTABLE                         R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
      222 NAMECALL                         R9 R4 K21 ["getNextOrder"]
      224 CALL                             R9 1 1
      225 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      227 GETTABLEKS                       R9 R2 K14 ["LabelColumnWidth"]
      229 SETTABLEKS                       R9 R8 K14 ["LabelColumnWidth"]
      231 GETTABLEKS                       R9 R2 K15 ["LabelWidth"]
      233 SETTABLEKS                       R9 R8 K15 ["LabelWidth"]
      235 GETUPVAL                         R9 4
      236 GETTABLEKS                       R9 R9 K33 ["EmissiveMaskContent"]
      238 SETTABLEKS                       R9 R8 K16 ["MapType"]
      240 LOADK                            R11 K23 ["Import"]
      241 LOADK                            R12 K34 ["EmissiveMaskPreview"]
      242 NAMECALL                         R9 R3 K25 ["getText"]
      244 CALL                             R9 3 1
      245 SETTABLEKS                       R9 R8 K17 ["PreviewTitle"]
      247 LOADK                            R11 K26 ["CreateDialog"]
      248 LOADK                            R12 K11 ["ImportEmissiveMask"]
      249 NAMECALL                         R9 R3 K25 ["getText"]
      251 CALL                             R9 3 1
      252 SETTABLEKS                       R9 R8 K18 ["Text"]
      254 GETTABLEKS                       R9 R1 K4 ["PBRMaterial"]
      256 SETTABLEKS                       R9 R8 K4 ["PBRMaterial"]
      258 GETTABLEKS                       R9 R2 K19 ["ColumnWidth"]
      260 SETTABLEKS                       R9 R8 K19 ["ColumnWidth"]
      262 CALL                             R6 2 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R6
      265 SETTABLEKS                       R6 R5 K11 ["ImportEmissiveMask"]
      267 GETTABLEKS                       R6 R1 K35 ["Expandable"]
      269 JUMPIFNOT                        R6 ; [+39]
      270 GETUPVAL                         R6 0
      271 GETTABLEKS                       R6 R6 K5 ["createElement"]
      273 GETUPVAL                         R7 6
      274 DUPTABLE                         R8 K41 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
      275 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
      277 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      279 GETTABLEKS                       R9 R2 K36 ["ContentPadding"]
      281 SETTABLEKS                       R9 R8 K36 ["ContentPadding"]
      283 GETTABLEKS                       R9 R2 K42 ["ItemSpacing"]
      285 SETTABLEKS                       R9 R8 K37 ["ContentSpacing"]
      287 LOADK                            R11 K43 ["MaterialTextures"]
      288 LOADK                            R12 K44 ["TextureMaps"]
      289 NAMECALL                         R9 R3 K25 ["getText"]
      291 CALL                             R9 3 1
      292 SETTABLEKS                       R9 R8 K18 ["Text"]
      294 GETTABLEKS                       R9 R2 K45 ["CustomExpandablePane"]
      296 SETTABLEKS                       R9 R8 K38 ["Style"]
      298 GETTABLEKS                       R9 R1 K46 ["ExpandedPane"]
      300 SETTABLEKS                       R9 R8 K39 ["Expanded"]
      302 GETTABLEKS                       R9 R0 K47 ["onExpandedChanged"]
      304 SETTABLEKS                       R9 R8 K40 ["OnExpandedChanged"]
      306 MOVE                             R9 R5
      307 CALL                             R6 3 -1
      308 RETURN                           R6 -1
      309 GETUPVAL                         R6 0
      310 GETTABLEKS                       R6 R6 K5 ["createElement"]
      312 GETUPVAL                         R7 1
      313 DUPTABLE                         R8 K52 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "HorizontalAlignment"}]
      314 GETIMPORT                        R9 K55 [Enum.AutomaticSize.Y]
      316 SETTABLEKS                       R9 R8 K48 ["AutomaticSize"]
      318 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
      320 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
      322 GETIMPORT                        R9 K58 [Enum.FillDirection.Vertical]
      324 SETTABLEKS                       R9 R8 K49 ["Layout"]
      326 GETTABLEKS                       R9 R2 K42 ["ItemSpacing"]
      328 SETTABLEKS                       R9 R8 K50 ["Spacing"]
      330 GETIMPORT                        R9 K60 [Enum.HorizontalAlignment.Left]
      332 SETTABLEKS                       R9 R8 K51 ["HorizontalAlignment"]
      334 MOVE                             R9 R5
      335 CALL                             R6 3 -1
      336 RETURN                           R6 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"ExpandedPane"}]
        1 GETTABLEKS                       R3 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["ExpandedPane"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["TextureSettings"]
        8 GETTABLE                         R2 R3 R4
        9 SETTABLEKS                       R2 R1 K0 ["ExpandedPane"]
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_5:
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
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["Roact"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Packages"]
       31 GETTABLEKS                       R4 R4 K8 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Flags"]
       40 GETTABLEKS                       R5 R5 K11 ["getEFEnableEmissiveMask"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R3 K12 ["Util"]
       45 GETTABLEKS                       R5 R5 K13 ["LayoutOrderIterator"]
       47 GETTABLEKS                       R6 R3 K14 ["Style"]
       49 GETTABLEKS                       R6 R6 K15 ["Stylizer"]
       51 GETTABLEKS                       R7 R3 K16 ["ContextServices"]
       53 GETTABLEKS                       R8 R7 K17 ["withContext"]
       55 GETTABLEKS                       R9 R7 K18 ["Analytics"]
       57 GETTABLEKS                       R10 R7 K19 ["Localization"]
       59 GETTABLEKS                       R11 R3 K20 ["UI"]
       61 GETTABLEKS                       R12 R11 K21 ["Pane"]
       63 GETTABLEKS                       R13 R11 K22 ["ExpandablePane"]
       65 GETTABLEKS                       R14 R0 K9 ["Src"]
       67 GETTABLEKS                       R14 R14 K23 ["Actions"]
       69 GETIMPORT                        R15 K4 [require]
       71 GETTABLEKS                       R16 R14 K24 ["SetExpandedPane"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K4 [require]
       76 GETTABLEKS                       R17 R0 K9 ["Src"]
       78 GETTABLEKS                       R17 R17 K25 ["Reducers"]
       80 GETTABLEKS                       R17 R17 K26 ["MainReducer"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K4 [require]
       85 GETTABLEKS                       R18 R0 K9 ["Src"]
       87 GETTABLEKS                       R18 R18 K27 ["Components"]
       89 GETTABLEKS                       R18 R18 K28 ["MaterialBrowser"]
       91 GETTABLEKS                       R18 R18 K29 ["MaterialEditor"]
       93 GETTABLEKS                       R18 R18 K30 ["TextureMapSelector"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R18 R0 K9 ["Src"]
       98 GETTABLEKS                       R18 R18 K31 ["Resources"]
      100 GETTABLEKS                       R18 R18 K32 ["Constants"]
      102 GETIMPORT                        R19 K4 [require]
      104 GETTABLEKS                       R20 R18 K33 ["getSettingsNames"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K4 [require]
      109 GETTABLEKS                       R21 R18 K34 ["getTextureMapNames"]
      111 CALL                             R20 1 1
      112 MOVE                             R21 R20
      113 CALL                             R21 0 1
      114 MOVE                             R22 R19
      115 CALL                             R22 0 1
      116 GETTABLEKS                       R23 R1 K35 ["PureComponent"]
      118 LOADK                            R25 K36 ["TextureSettings"]
      119 NAMECALL                         R23 R23 K37 ["extend"]
      121 CALL                             R23 2 1
      122 DUPCLOSURE                       R24 K38 [PROTO_1]
      123 CAPTURE                          VAL R22
      124 SETTABLEKS                       R24 R23 K39 ["init"]
      126 DUPCLOSURE                       R24 K40 [PROTO_2]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R13
      134 SETTABLEKS                       R24 R23 K41 ["render"]
      136 MOVE                             R24 R8
      137 DUPTABLE                         R25 K42 [{"Analytics", "Localization", "Stylizer"}]
      138 SETTABLEKS                       R9 R25 K18 ["Analytics"]
      140 SETTABLEKS                       R10 R25 K19 ["Localization"]
      142 SETTABLEKS                       R6 R25 K15 ["Stylizer"]
      144 CALL                             R24 1 1
      145 MOVE                             R25 R23
      146 CALL                             R24 1 1
      147 MOVE                             R23 R24
      148 GETTABLEKS                       R24 R2 K43 ["connect"]
      150 DUPCLOSURE                       R25 K44 [PROTO_3]
      151 CAPTURE                          VAL R22
      152 DUPCLOSURE                       R26 K45 [PROTO_5]
      153 CAPTURE                          VAL R15
      154 CALL                             R24 2 1
      155 MOVE                             R25 R23
      156 CALL                             R24 1 -1
      157 RETURN                           R24 -1
