PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["Material"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEKS                       R4 R2 K1 ["Material"]
        8 GETTABLEKS                       R3 R4 K1 ["Material"]
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
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["MaterialOverrides"]
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
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K18 ["createElement"]
       44 GETUPVAL                         R9 1
       45 CALL                             R8 1 -1
       46 RETURN                           R8 -1
       47 LOADNIL                          R8
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R11 R4 K4 ["Material"]
       51 GETTABLE                         R9 R10 R11
       52 JUMPIFNOT                        R9 ; [+171]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K18 ["createElement"]
       56 GETUPVAL                         R10 1
       57 DUPTABLE                         R11 K24 [{"AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing"}]
       58 GETIMPORT                        R12 K26 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
       62 GETIMPORT                        R12 K29 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R12 R11 K20 ["Layout"]
       66 LOADN                            R12 2
       67 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
       69 GETIMPORT                        R12 K31 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R12 R11 K22 ["HorizontalAlignment"]
       73 GETTABLEKS                       R12 R2 K23 ["Spacing"]
       75 SETTABLEKS                       R12 R11 K23 ["Spacing"]
       77 DUPTABLE                         R12 K34 [{"Label", "SelectInputWrapper"}]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K18 ["createElement"]
       81 GETUPVAL                         R14 1
       82 DUPTABLE                         R15 K37 [{"LayoutOrder", "Layout", "Size", "Spacing", "VerticalAlignment", "HorizontalAlignment"}]
       83 LOADN                            R16 1
       84 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       86 GETIMPORT                        R16 K29 [Enum.FillDirection.Horizontal]
       88 SETTABLEKS                       R16 R15 K20 ["Layout"]
       90 GETTABLEKS                       R16 R2 K38 ["OverrideSize"]
       92 SETTABLEKS                       R16 R15 K35 ["Size"]
       94 LOADN                            R16 3
       95 SETTABLEKS                       R16 R15 K23 ["Spacing"]
       97 GETIMPORT                        R16 K40 [Enum.VerticalAlignment.Center]
       99 SETTABLEKS                       R16 R15 K36 ["VerticalAlignment"]
      101 GETIMPORT                        R16 K31 [Enum.HorizontalAlignment.Left]
      103 SETTABLEKS                       R16 R15 K22 ["HorizontalAlignment"]
      105 DUPTABLE                         R16 K42 [{"Status", "Label"}]
      106 MOVE                             R17 R6
      107 JUMPIFNOT                        R17 ; [+17]
      108 GETUPVAL                         R18 0
      109 GETTABLEKS                       R17 R18 K18 ["createElement"]
      111 GETUPVAL                         R18 3
      112 DUPTABLE                         R19 K44 [{"LayoutOrder", "Size", "StatusText", "Status"}]
      113 LOADN                            R20 1
      114 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      116 GETTABLEKS                       R20 R2 K45 ["ImageSize"]
      118 SETTABLEKS                       R20 R19 K35 ["Size"]
      120 SETTABLEKS                       R7 R19 K43 ["StatusText"]
      122 SETTABLEKS                       R5 R19 K41 ["Status"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K41 ["Status"]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R17 R18 K18 ["createElement"]
      130 GETUPVAL                         R18 4
      131 DUPTABLE                         R19 K48 [{"AutomaticSize", "LayoutOrder", "Text", "TextTruncate"}]
      132 GETIMPORT                        R20 K50 [Enum.AutomaticSize.XY]
      134 SETTABLEKS                       R20 R19 K19 ["AutomaticSize"]
      136 LOADN                            R20 2
      137 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      139 LOADK                            R22 K2 ["MaterialOverrides"]
      140 LOADK                            R23 K51 ["MaterialOverride"]
      141 NAMECALL                         R20 R3 K14 ["getText"]
      143 CALL                             R20 3 1
      144 SETTABLEKS                       R20 R19 K46 ["Text"]
      146 JUMPIFNOT                        R6 ; [+3]
      147 GETIMPORT                        R20 K53 [Enum.TextTruncate.AtEnd]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R20
      151 SETTABLEKS                       R20 R19 K47 ["TextTruncate"]
      153 CALL                             R17 2 1
      154 SETTABLEKS                       R17 R16 K32 ["Label"]
      156 CALL                             R13 3 1
      157 SETTABLEKS                       R13 R12 K32 ["Label"]
      159 GETUPVAL                         R14 0
      160 GETTABLEKS                       R13 R14 K18 ["createElement"]
      162 GETUPVAL                         R14 1
      163 DUPTABLE                         R15 K54 [{"AutomaticSize", "LayoutOrder", "Size", "VerticalAlignment"}]
      164 GETIMPORT                        R16 K50 [Enum.AutomaticSize.XY]
      166 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      168 LOADN                            R16 2
      169 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      171 GETTABLEKS                       R16 R2 K38 ["OverrideSize"]
      173 SETTABLEKS                       R16 R15 K35 ["Size"]
      175 GETIMPORT                        R16 K40 [Enum.VerticalAlignment.Center]
      177 SETTABLEKS                       R16 R15 K36 ["VerticalAlignment"]
      179 DUPTABLE                         R16 K56 [{"SelectInput"}]
      180 GETUPVAL                         R18 0
      181 GETTABLEKS                       R17 R18 K18 ["createElement"]
      183 GETUPVAL                         R18 5
      184 DUPTABLE                         R19 K62 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Width"}]
      185 GETTABLEKS                       R20 R1 K2 ["MaterialOverrides"]
      187 SETTABLEKS                       R20 R19 K57 ["Items"]
      189 GETTABLEKS                       R20 R0 K63 ["onMaterialItemActivated"]
      191 SETTABLEKS                       R20 R19 K58 ["OnItemActivated"]
      193 GETTABLEKS                       R21 R1 K2 ["MaterialOverrides"]
      195 GETTABLEKS                       R22 R1 K51 ["MaterialOverride"]
      197 GETTABLE                         R20 R21 R22
      198 SETTABLEKS                       R20 R19 K59 ["PlaceholderText"]
      200 GETTABLEKS                       R20 R1 K51 ["MaterialOverride"]
      202 SETTABLEKS                       R20 R19 K60 ["SelectedIndex"]
      204 GETTABLEKS                       R23 R2 K38 ["OverrideSize"]
      206 GETTABLEKS                       R22 R23 K64 ["X"]
      208 GETTABLEKS                       R21 R22 K65 ["Offset"]
      210 GETTABLEKS                       R22 R2 K66 ["Padding"]
      212 SUB                              R20 R21 R22
      213 SETTABLEKS                       R20 R19 K61 ["Width"]
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K55 ["SelectInput"]
      218 CALL                             R13 3 1
      219 SETTABLEKS                       R13 R12 K33 ["SelectInputWrapper"]
      221 CALL                             R9 3 1
      222 MOVE                             R8 R9
      223 JUMP                             ; [+46]
      224 GETUPVAL                         R10 0
      225 GETTABLEKS                       R9 R10 K18 ["createElement"]
      227 GETUPVAL                         R10 1
      228 DUPTABLE                         R11 K67 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder"}]
      229 GETIMPORT                        R12 K50 [Enum.AutomaticSize.XY]
      231 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
      233 GETIMPORT                        R12 K31 [Enum.HorizontalAlignment.Left]
      235 SETTABLEKS                       R12 R11 K22 ["HorizontalAlignment"]
      237 LOADN                            R12 2
      238 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      240 DUPTABLE                         R12 K69 [{"TextLabel"}]
      241 GETUPVAL                         R14 0
      242 GETTABLEKS                       R13 R14 K18 ["createElement"]
      244 GETUPVAL                         R14 4
      245 DUPTABLE                         R15 K71 [{"AutomaticSize", "Size", "Text", "TextXAlignment"}]
      246 GETIMPORT                        R16 K26 [Enum.AutomaticSize.Y]
      248 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      250 GETTABLEKS                       R16 R2 K38 ["OverrideSize"]
      252 SETTABLEKS                       R16 R15 K35 ["Size"]
      254 LOADK                            R18 K2 ["MaterialOverrides"]
      255 LOADK                            R19 K72 ["OverrideUnavailable"]
      256 NAMECALL                         R16 R3 K14 ["getText"]
      258 CALL                             R16 3 1
      259 SETTABLEKS                       R16 R15 K46 ["Text"]
      261 GETIMPORT                        R16 K73 [Enum.TextXAlignment.Left]
      263 SETTABLEKS                       R16 R15 K70 ["TextXAlignment"]
      265 CALL                             R13 2 1
      266 SETTABLEKS                       R13 R12 K68 ["TextLabel"]
      268 CALL                             R9 3 1
      269 MOVE                             R8 R9
      270 GETUPVAL                         R10 0
      271 GETTABLEKS                       R9 R10 K18 ["createElement"]
      273 GETUPVAL                         R10 1
      274 DUPTABLE                         R11 K74 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Padding"}]
      275 GETIMPORT                        R12 K26 [Enum.AutomaticSize.Y]
      277 SETTABLEKS                       R12 R11 K19 ["AutomaticSize"]
      279 GETIMPORT                        R12 K31 [Enum.HorizontalAlignment.Left]
      281 SETTABLEKS                       R12 R11 K22 ["HorizontalAlignment"]
      283 GETIMPORT                        R12 K76 [Enum.FillDirection.Vertical]
      285 SETTABLEKS                       R12 R11 K20 ["Layout"]
      287 GETTABLEKS                       R12 R1 K21 ["LayoutOrder"]
      289 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      291 GETTABLEKS                       R12 R2 K66 ["Padding"]
      293 SETTABLEKS                       R12 R11 K23 ["Spacing"]
      295 GETTABLEKS                       R12 R2 K66 ["Padding"]
      297 SETTABLEKS                       R12 R11 K66 ["Padding"]
      299 DUPTABLE                         R12 K79 [{"Name", "OverridesPanel"}]
      300 GETUPVAL                         R14 0
      301 GETTABLEKS                       R13 R14 K18 ["createElement"]
      303 GETUPVAL                         R14 6
      304 DUPTABLE                         R15 K82 [{"LayoutOrder", "Font", "Size", "Text", "TextSize", "TextXAlignment"}]
      305 LOADN                            R16 1
      306 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      308 GETTABLEKS                       R16 R2 K83 ["HeaderFont"]
      310 SETTABLEKS                       R16 R15 K80 ["Font"]
      312 GETTABLEKS                       R16 R2 K84 ["LabelRowSize"]
      314 SETTABLEKS                       R16 R15 K35 ["Size"]
      316 LOADK                            R18 K2 ["MaterialOverrides"]
      317 LOADK                            R19 K2 ["MaterialOverrides"]
      318 NAMECALL                         R16 R3 K14 ["getText"]
      320 CALL                             R16 3 1
      321 SETTABLEKS                       R16 R15 K46 ["Text"]
      323 GETTABLEKS                       R16 R2 K85 ["SectionHeaderTextSize"]
      325 SETTABLEKS                       R16 R15 K81 ["TextSize"]
      327 GETIMPORT                        R16 K73 [Enum.TextXAlignment.Left]
      329 SETTABLEKS                       R16 R15 K70 ["TextXAlignment"]
      331 CALL                             R13 2 1
      332 SETTABLEKS                       R13 R12 K77 ["Name"]
      334 SETTABLEKS                       R8 R12 K78 ["OverridesPanel"]
      336 CALL                             R9 3 -1
      337 RETURN                           R9 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["MockMaterial"]
        2 JUMPIFNOT                        R2 ; [+46]
        3 DUPTABLE                         R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
        4 GETTABLEKS                       R3 R1 K0 ["MockMaterial"]
        6 SETTABLEKS                       R3 R2 K1 ["Material"]
        8 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       10 GETTABLEKS                       R4 R5 K2 ["MaterialOverrides"]
       12 GETTABLEKS                       R6 R1 K0 ["MockMaterial"]
       14 GETTABLEKS                       R5 R6 K1 ["Material"]
       16 GETTABLE                         R3 R4 R5
       17 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       19 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       21 GETTABLEKS                       R4 R5 K3 ["MaterialOverride"]
       23 GETTABLEKS                       R6 R1 K0 ["MockMaterial"]
       25 GETTABLEKS                       R5 R6 K1 ["Material"]
       27 GETTABLE                         R3 R4 R5
       28 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
       30 GETTABLEKS                       R5 R1 K0 ["MockMaterial"]
       32 GETTABLEKS                       R4 R5 K7 ["MaterialVariant"]
       34 JUMPIF                           R4 ; [+10]
       35 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       37 GETTABLEKS                       R4 R5 K4 ["MaterialStatus"]
       39 GETTABLEKS                       R6 R1 K0 ["MockMaterial"]
       41 GETTABLEKS                       R5 R6 K1 ["Material"]
       43 GETTABLE                         R3 R4 R5
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K4 ["MaterialStatus"]
       48 RETURN                           R2 1
       49 GETTABLEKS                       R3 R0 K6 ["MaterialBrowserReducer"]
       51 GETTABLEKS                       R2 R3 K1 ["Material"]
       53 JUMPIFNOT                        R2 ; [+9]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R6 R0 K6 ["MaterialBrowserReducer"]
       57 GETTABLEKS                       R5 R6 K1 ["Material"]
       59 GETTABLEKS                       R4 R5 K1 ["Material"]
       61 GETTABLE                         R2 R3 R4
       62 JUMPIF                           R2 ; [+8]
       63 DUPTABLE                         R2 K8 [{"Material"}]
       64 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       66 GETTABLEKS                       R3 R4 K1 ["Material"]
       68 SETTABLEKS                       R3 R2 K1 ["Material"]
       70 RETURN                           R2 1
       71 DUPTABLE                         R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
       72 GETTABLEKS                       R4 R0 K6 ["MaterialBrowserReducer"]
       74 GETTABLEKS                       R3 R4 K1 ["Material"]
       76 SETTABLEKS                       R3 R2 K1 ["Material"]
       78 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       80 GETTABLEKS                       R4 R5 K2 ["MaterialOverrides"]
       82 GETTABLEKS                       R7 R0 K6 ["MaterialBrowserReducer"]
       84 GETTABLEKS                       R6 R7 K1 ["Material"]
       86 GETTABLEKS                       R5 R6 K1 ["Material"]
       88 GETTABLE                         R3 R4 R5
       89 SETTABLEKS                       R3 R2 K2 ["MaterialOverrides"]
       91 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
       93 GETTABLEKS                       R4 R5 K3 ["MaterialOverride"]
       95 GETTABLEKS                       R7 R0 K6 ["MaterialBrowserReducer"]
       97 GETTABLEKS                       R6 R7 K1 ["Material"]
       99 GETTABLEKS                       R5 R6 K1 ["Material"]
      101 GETTABLE                         R3 R4 R5
      102 SETTABLEKS                       R3 R2 K3 ["MaterialOverride"]
      104 GETTABLEKS                       R6 R0 K6 ["MaterialBrowserReducer"]
      106 GETTABLEKS                       R5 R6 K1 ["Material"]
      108 GETTABLEKS                       R4 R5 K7 ["MaterialVariant"]
      110 JUMPIF                           R4 ; [+12]
      111 GETTABLEKS                       R5 R0 K6 ["MaterialBrowserReducer"]
      113 GETTABLEKS                       R4 R5 K4 ["MaterialStatus"]
      115 GETTABLEKS                       R7 R0 K6 ["MaterialBrowserReducer"]
      117 GETTABLEKS                       R6 R7 K1 ["Material"]
      119 GETTABLEKS                       R5 R6 K1 ["Material"]
      121 GETTABLE                         R3 R4 R5
      122 JUMP                             ; [+1]
      123 LOADNIL                          R3
      124 SETTABLEKS                       R3 R2 K4 ["MaterialStatus"]
      126 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R3 K6 ["Flags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R4 K7 ["Types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Packages"]
       31 GETTABLEKS                       R4 R5 K9 ["Roact"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R6 K10 ["RoactRodux"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Packages"]
       45 GETTABLEKS                       R6 R7 K11 ["Framework"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R7 R5 K12 ["Style"]
       50 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
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
       72 GETTABLEKS                       R19 R0 K5 ["Src"]
       74 GETTABLEKS                       R18 R19 K23 ["Controllers"]
       76 GETTABLEKS                       R17 R18 K24 ["MaterialServiceController"]
       78 CALL                             R16 1 1
       79 GETIMPORT                        R17 K4 [require]
       81 GETTABLEKS                       R21 R0 K5 ["Src"]
       83 GETTABLEKS                       R20 R21 K25 ["Resources"]
       85 GETTABLEKS                       R19 R20 K26 ["Constants"]
       87 GETTABLEKS                       R18 R19 K27 ["getSupportedMaterials"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R21 R0 K5 ["Src"]
       94 GETTABLEKS                       R20 R21 K28 ["Components"]
       96 GETTABLEKS                       R19 R20 K29 ["StatusIcon"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K4 [require]
      101 GETTABLEKS                       R22 R0 K5 ["Src"]
      103 GETTABLEKS                       R21 R22 K30 ["Reducers"]
      105 GETTABLEKS                       R20 R21 K31 ["MainReducer"]
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
