PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["Material"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["Material"]
        8 GETTABLEKS                       R3 R3 K1 ["Material"]
       10 JUMP                             ; [+2]
       11 GETIMPORT                        R3 K4 [Enum.Material.Plastic]
       13 JUMPIFNOTEQKN                    R1 K5 [1] ; [+8]
       15 GETTABLEKS                       R4 R2 K6 ["MaterialServiceController"]
       17 MOVE                             R6 R3
       18 NAMECALL                         R4 R4 K7 ["setMaterialOverride"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R4 R2 K6 ["MaterialServiceController"]
       24 MOVE                             R6 R3
       25 GETTABLEKS                       R8 R2 K8 ["MaterialOverrides"]
       27 GETTABLE                         R7 R8 R1
       28 NAMECALL                         R4 R4 K7 ["setMaterialOverride"]
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onMaterialItemActivated"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MaterialOverrides"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETTABLEKS                       R4 R1 K4 ["Material"]
       10 GETTABLEKS                       R5 R1 K5 ["MaterialStatus"]
       12 GETIMPORT                        R7 K9 [Enum.PropertyStatus.Ok]
       14 JUMPIFNOTEQ                      R5 R7 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 LOADK                            R7 K10 [""]
       19 GETIMPORT                        R8 K12 [Enum.PropertyStatus.Error]
       21 JUMPIFNOTEQ                      R5 R8 ; [+8]
       23 LOADK                            R10 K5 ["MaterialStatus"]
       24 LOADK                            R11 K13 ["MissingMaterial"]
       25 NAMECALL                         R8 R3 K14 ["getText"]
       27 CALL                             R8 3 1
       28 MOVE                             R7 R8
       29 JUMP                             ; [+10]
       30 GETIMPORT                        R8 K16 [Enum.PropertyStatus.Warning]
       32 JUMPIFNOTEQ                      R5 R8 ; [+7]
       34 LOADK                            R10 K5 ["MaterialStatus"]
       35 LOADK                            R11 K17 ["DuplicateMaterial"]
       36 NAMECALL                         R8 R3 K14 ["getText"]
       38 CALL                             R8 3 1
       39 MOVE                             R7 R8
       40 JUMPIF                           R4 ; [+6]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K18 ["createElement"]
       44 GETUPVAL                         R9 1
       45 CALL                             R8 1 -1
       46 RETURN                           R8 -1
       47 LOADNIL                          R8
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R11 R4 K4 ["Material"]
       51 GETTABLE                         R9 R10 R11
       52 JUMPIFNOT                        R9 ; [+153]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K18 ["createElement"]
       56 GETUPVAL                         R10 1
       57 DUPTABLE                         R11 K25 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 2, ["HorizontalAlignment"], ["Spacing"]}]
       58 GETIMPORT                        R12 K27 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
       62 GETIMPORT                        R12 K30 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R12 R11 K20 ["Layout"]
       66 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Left]
       68 SETTABLEKS                       R12 R11 K23 ["HorizontalAlignment"]
       70 GETTABLEKS                       R12 R2 K24 ["Spacing"]
       72 SETTABLEKS                       R12 R11 K24 ["Spacing"]
       74 DUPTABLE                         R12 K35 [{"Label", "SelectInputWrapper"}]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R13 R13 K18 ["createElement"]
       78 GETUPVAL                         R14 1
       79 DUPTABLE                         R15 K40 [{["LayoutOrder"] = 1, ["Layout"], ["Size"], ["Spacing"] = 3, ["VerticalAlignment"], ["HorizontalAlignment"]}]
       80 GETIMPORT                        R16 K30 [Enum.FillDirection.Horizontal]
       82 SETTABLEKS                       R16 R15 K20 ["Layout"]
       84 GETTABLEKS                       R16 R2 K41 ["OverrideSize"]
       86 SETTABLEKS                       R16 R15 K37 ["Size"]
       88 GETIMPORT                        R16 K43 [Enum.VerticalAlignment.Center]
       90 SETTABLEKS                       R16 R15 K39 ["VerticalAlignment"]
       92 GETIMPORT                        R16 K32 [Enum.HorizontalAlignment.Left]
       94 SETTABLEKS                       R16 R15 K23 ["HorizontalAlignment"]
       96 DUPTABLE                         R16 K45 [{"Status", "Label"}]
       97 MOVE                             R17 R6
       98 JUMPIFNOT                        R17 ; [+14]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K18 ["createElement"]
      102 GETUPVAL                         R18 3
      103 DUPTABLE                         R19 K47 [{["LayoutOrder"] = 1, ["Size"], ["StatusText"], ["Status"]}]
      104 GETTABLEKS                       R20 R2 K48 ["ImageSize"]
      106 SETTABLEKS                       R20 R19 K37 ["Size"]
      108 SETTABLEKS                       R7 R19 K46 ["StatusText"]
      110 SETTABLEKS                       R5 R19 K44 ["Status"]
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K44 ["Status"]
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K18 ["createElement"]
      118 GETUPVAL                         R18 4
      119 DUPTABLE                         R19 K51 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Text"], ["TextTruncate"]}]
      120 GETIMPORT                        R20 K53 [Enum.AutomaticSize.XY]
      122 SETTABLEKS                       R20 R19 K19 ["AutomaticSize"]
      124 LOADK                            R22 K2 ["MaterialOverrides"]
      125 LOADK                            R23 K54 ["MaterialOverride"]
      126 NAMECALL                         R20 R3 K14 ["getText"]
      128 CALL                             R20 3 1
      129 SETTABLEKS                       R20 R19 K49 ["Text"]
      131 JUMPIFNOT                        R6 ; [+3]
      132 GETIMPORT                        R20 K56 [Enum.TextTruncate.AtEnd]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R20
      136 SETTABLEKS                       R20 R19 K50 ["TextTruncate"]
      138 CALL                             R17 2 1
      139 SETTABLEKS                       R17 R16 K33 ["Label"]
      141 CALL                             R13 3 1
      142 SETTABLEKS                       R13 R12 K33 ["Label"]
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K18 ["createElement"]
      147 GETUPVAL                         R14 1
      148 DUPTABLE                         R15 K57 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"], ["VerticalAlignment"]}]
      149 GETIMPORT                        R16 K53 [Enum.AutomaticSize.XY]
      151 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      153 GETTABLEKS                       R16 R2 K41 ["OverrideSize"]
      155 SETTABLEKS                       R16 R15 K37 ["Size"]
      157 GETIMPORT                        R16 K43 [Enum.VerticalAlignment.Center]
      159 SETTABLEKS                       R16 R15 K39 ["VerticalAlignment"]
      161 DUPTABLE                         R16 K59 [{"SelectInput"}]
      162 GETUPVAL                         R17 0
      163 GETTABLEKS                       R17 R17 K18 ["createElement"]
      165 GETUPVAL                         R18 5
      166 DUPTABLE                         R19 K65 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Width"}]
      167 GETTABLEKS                       R20 R1 K2 ["MaterialOverrides"]
      169 SETTABLEKS                       R20 R19 K60 ["Items"]
      171 GETTABLEKS                       R20 R0 K66 ["onMaterialItemActivated"]
      173 SETTABLEKS                       R20 R19 K61 ["OnItemActivated"]
      175 GETTABLEKS                       R21 R1 K2 ["MaterialOverrides"]
      177 GETTABLEKS                       R22 R1 K54 ["MaterialOverride"]
      179 GETTABLE                         R20 R21 R22
      180 SETTABLEKS                       R20 R19 K62 ["PlaceholderText"]
      182 GETTABLEKS                       R20 R1 K54 ["MaterialOverride"]
      184 SETTABLEKS                       R20 R19 K63 ["SelectedIndex"]
      186 GETTABLEKS                       R21 R2 K41 ["OverrideSize"]
      188 GETTABLEKS                       R21 R21 K67 ["X"]
      190 GETTABLEKS                       R21 R21 K68 ["Offset"]
      192 GETTABLEKS                       R22 R2 K69 ["Padding"]
      194 SUB                              R20 R21 R22
      195 SETTABLEKS                       R20 R19 K64 ["Width"]
      197 CALL                             R17 2 1
      198 SETTABLEKS                       R17 R16 K58 ["SelectInput"]
      200 CALL                             R13 3 1
      201 SETTABLEKS                       R13 R12 K34 ["SelectInputWrapper"]
      203 CALL                             R9 3 1
      204 MOVE                             R8 R9
      205 JUMP                             ; [+43]
      206 GETUPVAL                         R9 0
      207 GETTABLEKS                       R9 R9 K18 ["createElement"]
      209 GETUPVAL                         R10 1
      210 DUPTABLE                         R11 K70 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"] = 2}]
      211 GETIMPORT                        R12 K53 [Enum.AutomaticSize.XY]
      213 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
      215 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Left]
      217 SETTABLEKS                       R12 R11 K23 ["HorizontalAlignment"]
      219 DUPTABLE                         R12 K72 [{"TextLabel"}]
      220 GETUPVAL                         R13 0
      221 GETTABLEKS                       R13 R13 K18 ["createElement"]
      223 GETUPVAL                         R14 4
      224 DUPTABLE                         R15 K74 [{"AutomaticSize", "Size", "Text", "TextXAlignment"}]
      225 GETIMPORT                        R16 K27 [Enum.AutomaticSize.Y]
      227 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      229 GETTABLEKS                       R16 R2 K41 ["OverrideSize"]
      231 SETTABLEKS                       R16 R15 K37 ["Size"]
      233 LOADK                            R18 K2 ["MaterialOverrides"]
      234 LOADK                            R19 K75 ["OverrideUnavailable"]
      235 NAMECALL                         R16 R3 K14 ["getText"]
      237 CALL                             R16 3 1
      238 SETTABLEKS                       R16 R15 K49 ["Text"]
      240 GETIMPORT                        R16 K76 [Enum.TextXAlignment.Left]
      242 SETTABLEKS                       R16 R15 K73 ["TextXAlignment"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R12 K71 ["TextLabel"]
      247 CALL                             R9 3 1
      248 MOVE                             R8 R9
      249 GETUPVAL                         R9 0
      250 GETTABLEKS                       R9 R9 K18 ["createElement"]
      252 GETUPVAL                         R10 1
      253 DUPTABLE                         R11 K77 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Padding"}]
      254 GETIMPORT                        R12 K27 [Enum.AutomaticSize.Y]
      256 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
      258 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Left]
      260 SETTABLEKS                       R12 R11 K23 ["HorizontalAlignment"]
      262 GETIMPORT                        R12 K79 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R12 R11 K20 ["Layout"]
      266 GETTABLEKS                       R12 R1 K21 ["LayoutOrder"]
      268 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      270 GETTABLEKS                       R12 R2 K69 ["Padding"]
      272 SETTABLEKS                       R12 R11 K24 ["Spacing"]
      274 GETTABLEKS                       R12 R2 K69 ["Padding"]
      276 SETTABLEKS                       R12 R11 K69 ["Padding"]
      278 DUPTABLE                         R12 K82 [{"Name", "OverridesPanel"}]
      279 GETUPVAL                         R13 0
      280 GETTABLEKS                       R13 R13 K18 ["createElement"]
      282 GETUPVAL                         R14 6
      283 DUPTABLE                         R15 K85 [{["LayoutOrder"] = 1, ["Font"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"]}]
      284 GETTABLEKS                       R16 R2 K86 ["HeaderFont"]
      286 SETTABLEKS                       R16 R15 K83 ["Font"]
      288 GETTABLEKS                       R16 R2 K87 ["LabelRowSize"]
      290 SETTABLEKS                       R16 R15 K37 ["Size"]
      292 LOADK                            R18 K2 ["MaterialOverrides"]
      293 LOADK                            R19 K2 ["MaterialOverrides"]
      294 NAMECALL                         R16 R3 K14 ["getText"]
      296 CALL                             R16 3 1
      297 SETTABLEKS                       R16 R15 K49 ["Text"]
      299 GETTABLEKS                       R16 R2 K88 ["SectionHeaderTextSize"]
      301 SETTABLEKS                       R16 R15 K84 ["TextSize"]
      303 GETIMPORT                        R16 K76 [Enum.TextXAlignment.Left]
      305 SETTABLEKS                       R16 R15 K73 ["TextXAlignment"]
      307 CALL                             R13 2 1
      308 SETTABLEKS                       R13 R12 K80 ["Name"]
      310 SETTABLEKS                       R8 R12 K81 ["OverridesPanel"]
      312 CALL                             R9 3 -1
      313 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["MockMaterial"]
        2 JUMPIFNOT                        R2 ; [+46]
        3 DUPTABLE                         R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
        4 GETTABLEKS                       R3 R1 K0 ["MockMaterial"]
        6 SETTABLEKS                       R3 R2 K1 ["Material"]
        8 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       10 GETTABLEKS                       R4 R4 K2 ["MaterialOverrides"]
       12 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       14 GETTABLEKS                       R5 R5 K1 ["Material"]
       16 GETTABLE                         R3 R4 R5
       17 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       19 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       21 GETTABLEKS                       R4 R4 K3 ["MaterialOverride"]
       23 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       25 GETTABLEKS                       R5 R5 K1 ["Material"]
       27 GETTABLE                         R3 R4 R5
       28 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
       30 GETTABLEKS                       R4 R1 K0 ["MockMaterial"]
       32 GETTABLEKS                       R4 R4 K7 ["MaterialVariant"]
       34 JUMPIF                           R4 ; [+10]
       35 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       37 GETTABLEKS                       R4 R4 K4 ["MaterialStatus"]
       39 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       41 GETTABLEKS                       R5 R5 K1 ["Material"]
       43 GETTABLE                         R3 R4 R5
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K4 ["MaterialStatus"]
       48 RETURN                           R2 1
       49 GETTABLEKS                       R2 R0 K6 ["MaterialBrowserReducer"]
       51 GETTABLEKS                       R2 R2 K1 ["Material"]
       53 JUMPIFNOT                        R2 ; [+9]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       57 GETTABLEKS                       R4 R4 K1 ["Material"]
       59 GETTABLEKS                       R4 R4 K1 ["Material"]
       61 GETTABLE                         R2 R3 R4
       62 JUMPIF                           R2 ; [+8]
       63 DUPTABLE                         R2 K8 [{"Material"}]
       64 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       66 GETTABLEKS                       R3 R3 K1 ["Material"]
       68 SETTABLEKS                       R3 R2 K1 ["Material"]
       70 RETURN                           R2 1
       71 DUPTABLE                         R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
       72 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       74 GETTABLEKS                       R3 R3 K1 ["Material"]
       76 SETTABLEKS                       R3 R2 K1 ["Material"]
       78 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       80 GETTABLEKS                       R4 R4 K2 ["MaterialOverrides"]
       82 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       84 GETTABLEKS                       R5 R5 K1 ["Material"]
       86 GETTABLEKS                       R5 R5 K1 ["Material"]
       88 GETTABLE                         R3 R4 R5
       89 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       91 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       93 GETTABLEKS                       R4 R4 K3 ["MaterialOverride"]
       95 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       97 GETTABLEKS                       R5 R5 K1 ["Material"]
       99 GETTABLEKS                       R5 R5 K1 ["Material"]
      101 GETTABLE                         R3 R4 R5
      102 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
      104 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
      106 GETTABLEKS                       R4 R4 K1 ["Material"]
      108 GETTABLEKS                       R4 R4 K7 ["MaterialVariant"]
      110 JUMPIF                           R4 ; [+12]
      111 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
      113 GETTABLEKS                       R4 R4 K4 ["MaterialStatus"]
      115 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
      117 GETTABLEKS                       R5 R5 K1 ["Material"]
      119 GETTABLEKS                       R5 R5 K1 ["Material"]
      121 GETTABLE                         R3 R4 R5
      122 JUMP                             ; [+1]
      123 LOADNIL                          R3
      124 SETTABLEKS                       R3 R2 K4 ["MaterialStatus"]
      126 RETURN                           R2 1

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
       17 GETTABLEKS                       R2 R2 K6 ["Flags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K8 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["Roact"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Packages"]
       45 GETTABLEKS                       R6 R6 K11 ["Framework"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K12 ["Style"]
       50 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       52 GETTABLEKS                       R7 R5 K14 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K15 ["withContext"]
       56 GETTABLEKS                       R9 R7 K16 ["Analytics"]
       58 GETTABLEKS                       R10 R7 K17 ["Localization"]
       60 GETTABLEKS                       R11 R5 K18 ["UI"]
       62 GETTABLEKS                       R12 R11 K19 ["Pane"]
       64 GETTABLEKS                       R13 R11 K20 ["SelectInput"]
       66 GETTABLEKS                       R14 R11 K21 ["TextLabel"]
       68 GETTABLEKS                       R15 R11 K22 ["TruncatedTextLabel"]
       70 GETIMPORT                        R16 K4 [require]
       72 GETTABLEKS                       R17 R0 K5 ["Src"]
       74 GETTABLEKS                       R17 R17 K23 ["Controllers"]
       76 GETTABLEKS                       R17 R17 K24 ["MaterialServiceController"]
       78 CALL                             R16 1 1
       79 GETIMPORT                        R17 K4 [require]
       81 GETTABLEKS                       R18 R0 K5 ["Src"]
       83 GETTABLEKS                       R18 R18 K25 ["Resources"]
       85 GETTABLEKS                       R18 R18 K26 ["Constants"]
       87 GETTABLEKS                       R18 R18 K27 ["getSupportedMaterials"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R19 R0 K5 ["Src"]
       94 GETTABLEKS                       R19 R19 K28 ["Components"]
       96 GETTABLEKS                       R19 R19 K29 ["StatusIcon"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K4 [require]
      101 GETTABLEKS                       R20 R0 K5 ["Src"]
      103 GETTABLEKS                       R20 R20 K30 ["Reducers"]
      105 GETTABLEKS                       R20 R20 K31 ["MainReducer"]
      107 CALL                             R19 1 1
      108 MOVE                             R20 R17
      109 CALL                             R20 0 1
      110 GETTABLEKS                       R21 R3 K32 ["PureComponent"]
      112 LOADK                            R23 K33 ["MaterialOverrides"]
      113 NAMECALL                         R21 R21 K34 ["extend"]
      115 CALL                             R21 2 1
      116 DUPCLOSURE                       R22 K35 [PROTO_1]
      117 SETTABLEKS                       R22 R21 K36 ["init"]
      119 DUPCLOSURE                       R22 K37 [PROTO_2]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R15
      127 SETTABLEKS                       R22 R21 K38 ["render"]
      129 MOVE                             R22 R8
      130 DUPTABLE                         R23 K39 [{"Analytics", "Localization", "MaterialServiceController", "Stylizer"}]
      131 SETTABLEKS                       R9 R23 K16 ["Analytics"]
      133 SETTABLEKS                       R10 R23 K17 ["Localization"]
      135 SETTABLEKS                       R16 R23 K24 ["MaterialServiceController"]
      137 SETTABLEKS                       R6 R23 K13 ["Stylizer"]
      139 CALL                             R22 1 1
      140 MOVE                             R23 R21
      141 CALL                             R22 1 1
      142 MOVE                             R21 R22
      143 GETTABLEKS                       R22 R4 K40 ["connect"]
      145 DUPCLOSURE                       R23 K41 [PROTO_3]
      146 CAPTURE                          VAL R20
      147 CALL                             R22 1 1
      148 MOVE                             R23 R21
      149 CALL                             R22 1 -1
      150 RETURN                           R22 -1
