MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K19 [{"Size", "Padding", "Spacing", "BodySize", "BodySpacing", "PickerSize", "ColorPropertiesPanel", "ColorPickerTopControls", "ColorValueSlider", "HueSaturationPicker"}]
       17 GETIMPORT                        R3 K22 [UDim2.fromScale]
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K9 ["Size"]
       24 LOADN                            R3 10
       25 SETTABLEKS                       R3 R2 K10 ["Padding"]
       27 LOADN                            R3 16
       28 SETTABLEKS                       R3 R2 K11 ["Spacing"]
       30 GETIMPORT                        R3 K24 [UDim2.new]
       32 LOADN                            R4 1
       33 LOADN                            R5 0
       34 LOADN                            R6 1
       35 LOADN                            R7 224
       36 CALL                             R3 4 1
       37 SETTABLEKS                       R3 R2 K12 ["BodySize"]
       39 LOADN                            R3 8
       40 SETTABLEKS                       R3 R2 K13 ["BodySpacing"]
       42 GETIMPORT                        R3 K24 [UDim2.new]
       44 LOADK                            R4 K25 [0.5]
       45 LOADN                            R5 0
       46 LOADN                            R6 1
       47 LOADN                            R7 0
       48 CALL                             R3 4 1
       49 SETTABLEKS                       R3 R2 K14 ["PickerSize"]
       51 DUPTABLE                         R3 K31 [{"Size", "Spacing", "TextInputSize", "ColorPreviewSize", "TextSize", "TextColor", "ColorPreviewPaneStyle"}]
       52 GETIMPORT                        R4 K24 [UDim2.new]
       54 LOADN                            R5 0
       55 LOADN                            R6 104
       56 LOADN                            R7 0
       57 LOADN                            R8 96
       58 CALL                             R4 4 1
       59 SETTABLEKS                       R4 R3 K9 ["Size"]
       61 LOADN                            R4 7
       62 SETTABLEKS                       R4 R3 K11 ["Spacing"]
       64 GETIMPORT                        R4 K24 [UDim2.new]
       66 LOADN                            R5 1
       67 LOADN                            R6 0
       68 LOADN                            R7 0
       69 LOADN                            R8 24
       70 CALL                             R4 4 1
       71 SETTABLEKS                       R4 R3 K26 ["TextInputSize"]
       73 GETIMPORT                        R4 K24 [UDim2.new]
       75 LOADN                            R5 1
       76 LOADN                            R6 0
       77 LOADN                            R7 0
       78 LOADN                            R8 46
       79 CALL                             R4 4 1
       80 SETTABLEKS                       R4 R3 K27 ["ColorPreviewSize"]
       82 LOADN                            R4 18
       83 SETTABLEKS                       R4 R3 K28 ["TextSize"]
       85 GETTABLEKS                       R4 R1 K32 ["DimmedText"]
       87 SETTABLEKS                       R4 R3 K29 ["TextColor"]
       89 DUPTABLE                         R4 K37 [{"Background", "Image", "SliceCenter", "Border"}]
       90 GETTABLEKS                       R5 R1 K38 ["MainBackground"]
       92 SETTABLEKS                       R5 R4 K33 ["Background"]
       94 LOADK                            R5 K39 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       95 SETTABLEKS                       R5 R4 K34 ["Image"]
       97 GETIMPORT                        R5 K41 [Rect.new]
       99 LOADN                            R6 3
      100 LOADN                            R7 3
      101 LOADN                            R8 13
      102 LOADN                            R9 13
      103 CALL                             R5 4 1
      104 SETTABLEKS                       R5 R4 K35 ["SliceCenter"]
      106 DUPTABLE                         R5 K42 [{"Background", "Image", "SliceCenter"}]
      107 GETTABLEKS                       R6 R1 K43 ["InputFieldBorder"]
      109 SETTABLEKS                       R6 R5 K33 ["Background"]
      111 LOADK                            R6 K44 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
      112 SETTABLEKS                       R6 R5 K34 ["Image"]
      114 GETIMPORT                        R6 K41 [Rect.new]
      116 LOADN                            R7 3
      117 LOADN                            R8 3
      118 LOADN                            R9 13
      119 LOADN                            R10 13
      120 CALL                             R6 4 1
      121 SETTABLEKS                       R6 R5 K35 ["SliceCenter"]
      123 SETTABLEKS                       R5 R4 K36 ["Border"]
      125 SETTABLEKS                       R4 R3 K30 ["ColorPreviewPaneStyle"]
      127 SETTABLEKS                       R3 R2 K15 ["ColorPropertiesPanel"]
      129 DUPTABLE                         R3 K50 [{"Size", "Spacing", "TitleTextSize", "ColorPaneSize", "ColorPaneSpacing", "ColorPanePadding", "ColorPreviewSize", "PreviewTitleSize"}]
      130 GETIMPORT                        R4 K24 [UDim2.new]
      132 LOADN                            R5 1
      133 LOADN                            R6 0
      134 LOADN                            R7 0
      135 LOADN                            R8 24
      136 CALL                             R4 4 1
      137 SETTABLEKS                       R4 R3 K9 ["Size"]
      139 LOADN                            R4 5
      140 SETTABLEKS                       R4 R3 K11 ["Spacing"]
      142 GETIMPORT                        R4 K24 [UDim2.new]
      144 LOADN                            R5 1
      145 LOADN                            R6 208
      146 LOADN                            R7 0
      147 LOADN                            R8 24
      148 CALL                             R4 4 1
      149 SETTABLEKS                       R4 R3 K45 ["TitleTextSize"]
      151 GETIMPORT                        R4 K24 [UDim2.new]
      153 LOADN                            R5 1
      154 LOADN                            R6 0
      155 LOADN                            R7 0
      156 LOADN                            R8 26
      157 CALL                             R4 4 1
      158 SETTABLEKS                       R4 R3 K46 ["ColorPaneSize"]
      160 LOADN                            R4 10
      161 SETTABLEKS                       R4 R3 K47 ["ColorPaneSpacing"]
      163 LOADN                            R4 2
      164 SETTABLEKS                       R4 R3 K48 ["ColorPanePadding"]
      166 GETIMPORT                        R4 K24 [UDim2.new]
      168 LOADK                            R5 K25 [0.5]
      169 LOADN                            R6 2
      170 LOADN                            R7 0
      171 LOADN                            R8 24
      172 CALL                             R4 4 1
      173 SETTABLEKS                       R4 R3 K27 ["ColorPreviewSize"]
      175 GETIMPORT                        R4 K24 [UDim2.new]
      177 LOADN                            R5 0
      178 LOADN                            R6 104
      179 LOADN                            R7 0
      180 LOADN                            R8 24
      181 CALL                             R4 4 1
      182 SETTABLEKS                       R4 R3 K49 ["PreviewTitleSize"]
      184 SETTABLEKS                       R3 R2 K16 ["ColorPickerTopControls"]
      186 DUPTABLE                         R3 K57 [{"Size", "Black", "White", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
      187 GETIMPORT                        R4 K24 [UDim2.new]
      189 LOADN                            R5 1
      190 LOADN                            R6 252
      191 LOADN                            R7 0
      192 LOADN                            R8 25
      193 CALL                             R4 4 1
      194 SETTABLEKS                       R4 R3 K9 ["Size"]
      196 GETIMPORT                        R4 K60 [Color3.fromRGB]
      198 LOADN                            R5 0
      199 LOADN                            R6 0
      200 LOADN                            R7 0
      201 CALL                             R4 3 1
      202 SETTABLEKS                       R4 R3 K51 ["Black"]
      204 GETIMPORT                        R4 K60 [Color3.fromRGB]
      206 LOADN                            R5 1
      207 LOADN                            R6 1
      208 LOADN                            R7 1
      209 CALL                             R4 3 1
      210 SETTABLEKS                       R4 R3 K52 ["White"]
      212 LOADK                            R4 K61 ["rbxasset://textures/TagEditor/lineargradient.png"]
      213 SETTABLEKS                       R4 R3 K53 ["GradientImage"]
      215 GETIMPORT                        R4 K24 [UDim2.new]
      217 LOADN                            R5 0
      218 LOADN                            R6 8
      219 LOADN                            R7 0
      220 LOADN                            R8 5
      221 CALL                             R4 4 1
      222 SETTABLEKS                       R4 R3 K54 ["PositionIndicatorSize"]
      224 GETIMPORT                        R4 K63 [Vector2.new]
      226 LOADK                            R5 K25 [0.5]
      227 LOADN                            R6 0
      228 CALL                             R4 2 1
      229 SETTABLEKS                       R4 R3 K55 ["PositionIndicatorAnchor"]
      231 LOADK                            R4 K64 ["rbxasset://textures/TagEditor/trianglesmall.png"]
      232 SETTABLEKS                       R4 R3 K56 ["PositionIndicatorImage"]
      234 SETTABLEKS                       R3 R2 K17 ["ColorValueSlider"]
      236 DUPTABLE                         R3 K65 [{"Size", "Black", "GradientImage", "PositionIndicatorSize", "PositionIndicatorAnchor", "PositionIndicatorImage"}]
      237 GETIMPORT                        R4 K24 [UDim2.new]
      239 LOADN                            R5 1
      240 LOADN                            R6 252
      241 LOADN                            R7 1
      242 LOADN                            R8 206
      243 CALL                             R4 4 1
      244 SETTABLEKS                       R4 R3 K9 ["Size"]
      246 GETIMPORT                        R4 K60 [Color3.fromRGB]
      248 LOADN                            R5 1
      249 LOADN                            R6 1
      250 LOADN                            R7 1
      251 CALL                             R4 3 1
      252 SETTABLEKS                       R4 R3 K51 ["Black"]
      254 LOADK                            R4 K66 ["rbxasset://textures/TagEditor/huesatgradient.png"]
      255 SETTABLEKS                       R4 R3 K53 ["GradientImage"]
      257 GETIMPORT                        R4 K24 [UDim2.new]
      259 LOADN                            R5 0
      260 LOADN                            R6 8
      261 LOADN                            R7 0
      262 LOADN                            R8 5
      263 CALL                             R4 4 1
      264 SETTABLEKS                       R4 R3 K54 ["PositionIndicatorSize"]
      266 GETIMPORT                        R4 K63 [Vector2.new]
      268 LOADK                            R5 K25 [0.5]
      269 LOADN                            R6 1
      270 CALL                             R4 2 1
      271 SETTABLEKS                       R4 R3 K55 ["PositionIndicatorAnchor"]
      273 LOADK                            R4 K64 ["rbxasset://textures/TagEditor/trianglesmall.png"]
      274 SETTABLEKS                       R4 R3 K56 ["PositionIndicatorImage"]
      276 SETTABLEKS                       R3 R2 K18 ["HueSaturationPicker"]
      278 RETURN                           R2 1
