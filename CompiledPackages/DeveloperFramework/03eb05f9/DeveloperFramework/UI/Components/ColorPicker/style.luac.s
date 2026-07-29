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
       16 DUPTABLE                         R2 K22 [{["Size"], ["Padding"] = 10, ["Spacing"] = 16, ["BodySize"], ["BodySpacing"] = 8, ["PickerSize"], ["ColorPropertiesPanel"], ["ColorPickerTopControls"], ["ColorValueSlider"], ["HueSaturationPicker"]}]
       17 GETIMPORT                        R3 K25 [UDim2.fromScale]
       19 LOADN                            R4 1
       20 LOADN                            R5 1
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K9 ["Size"]
       24 GETIMPORT                        R3 K27 [UDim2.new]
       26 LOADN                            R4 1
       27 LOADN                            R5 0
       28 LOADN                            R6 1
       29 LOADN                            R7 -32
       30 CALL                             R3 4 1
       31 SETTABLEKS                       R3 R2 K14 ["BodySize"]
       33 GETIMPORT                        R3 K27 [UDim2.new]
       35 LOADK                            R4 K28 [0.5]
       36 LOADN                            R5 0
       37 LOADN                            R6 1
       38 LOADN                            R7 0
       39 CALL                             R3 4 1
       40 SETTABLEKS                       R3 R2 K17 ["PickerSize"]
       42 DUPTABLE                         R3 K36 [{["Size"], ["Spacing"] = 7, ["TextInputSize"], ["ColorPreviewSize"], ["TextSize"] = 18, ["TextColor"], ["ColorPreviewPaneStyle"]}]
       43 GETIMPORT                        R4 K27 [UDim2.new]
       45 LOADN                            R5 0
       46 LOADN                            R6 104
       47 LOADN                            R7 0
       48 LOADN                            R8 96
       49 CALL                             R4 4 1
       50 SETTABLEKS                       R4 R3 K9 ["Size"]
       52 GETIMPORT                        R4 K27 [UDim2.new]
       54 LOADN                            R5 1
       55 LOADN                            R6 0
       56 LOADN                            R7 0
       57 LOADN                            R8 24
       58 CALL                             R4 4 1
       59 SETTABLEKS                       R4 R3 K30 ["TextInputSize"]
       61 GETIMPORT                        R4 K27 [UDim2.new]
       63 LOADN                            R5 1
       64 LOADN                            R6 0
       65 LOADN                            R7 0
       66 LOADN                            R8 46
       67 CALL                             R4 4 1
       68 SETTABLEKS                       R4 R3 K31 ["ColorPreviewSize"]
       70 GETTABLEKS                       R4 R1 K37 ["DimmedText"]
       72 SETTABLEKS                       R4 R3 K34 ["TextColor"]
       74 DUPTABLE                         R4 K43 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["SliceCenter"], ["Border"]}]
       75 GETTABLEKS                       R5 R1 K44 ["MainBackground"]
       77 SETTABLEKS                       R5 R4 K38 ["Background"]
       79 GETIMPORT                        R5 K46 [Rect.new]
       81 LOADN                            R6 3
       82 LOADN                            R7 3
       83 LOADN                            R8 13
       84 LOADN                            R9 13
       85 CALL                             R5 4 1
       86 SETTABLEKS                       R5 R4 K41 ["SliceCenter"]
       88 DUPTABLE                         R5 K48 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       89 GETTABLEKS                       R6 R1 K49 ["InputFieldBorder"]
       91 SETTABLEKS                       R6 R5 K38 ["Background"]
       93 GETIMPORT                        R6 K46 [Rect.new]
       95 LOADN                            R7 3
       96 LOADN                            R8 3
       97 LOADN                            R9 13
       98 LOADN                            R10 13
       99 CALL                             R6 4 1
      100 SETTABLEKS                       R6 R5 K41 ["SliceCenter"]
      102 SETTABLEKS                       R5 R4 K42 ["Border"]
      104 SETTABLEKS                       R4 R3 K35 ["ColorPreviewPaneStyle"]
      106 SETTABLEKS                       R3 R2 K18 ["ColorPropertiesPanel"]
      108 DUPTABLE                         R3 K57 [{["Size"], ["Spacing"] = 5, ["TitleTextSize"], ["ColorPaneSize"], ["ColorPaneSpacing"] = 10, ["ColorPanePadding"] = 2, ["ColorPreviewSize"], ["PreviewTitleSize"]}]
      109 GETIMPORT                        R4 K27 [UDim2.new]
      111 LOADN                            R5 1
      112 LOADN                            R6 0
      113 LOADN                            R7 0
      114 LOADN                            R8 24
      115 CALL                             R4 4 1
      116 SETTABLEKS                       R4 R3 K9 ["Size"]
      118 GETIMPORT                        R4 K27 [UDim2.new]
      120 LOADN                            R5 1
      121 LOADN                            R6 -48
      122 LOADN                            R7 0
      123 LOADN                            R8 24
      124 CALL                             R4 4 1
      125 SETTABLEKS                       R4 R3 K51 ["TitleTextSize"]
      127 GETIMPORT                        R4 K27 [UDim2.new]
      129 LOADN                            R5 1
      130 LOADN                            R6 0
      131 LOADN                            R7 0
      132 LOADN                            R8 26
      133 CALL                             R4 4 1
      134 SETTABLEKS                       R4 R3 K52 ["ColorPaneSize"]
      136 GETIMPORT                        R4 K27 [UDim2.new]
      138 LOADK                            R5 K28 [0.5]
      139 LOADN                            R6 2
      140 LOADN                            R7 0
      141 LOADN                            R8 24
      142 CALL                             R4 4 1
      143 SETTABLEKS                       R4 R3 K31 ["ColorPreviewSize"]
      145 GETIMPORT                        R4 K27 [UDim2.new]
      147 LOADN                            R5 0
      148 LOADN                            R6 104
      149 LOADN                            R7 0
      150 LOADN                            R8 24
      151 CALL                             R4 4 1
      152 SETTABLEKS                       R4 R3 K56 ["PreviewTitleSize"]
      154 SETTABLEKS                       R3 R2 K19 ["ColorPickerTopControls"]
      156 DUPTABLE                         R3 K66 [{["Size"], ["Black"], ["White"], ["GradientImage"] = "rbxasset://textures/TagEditor/lineargradient.png", ["PositionIndicatorSize"], ["PositionIndicatorAnchor"], ["PositionIndicatorImage"] = "rbxasset://textures/TagEditor/trianglesmall.png"}]
      157 GETIMPORT                        R4 K27 [UDim2.new]
      159 LOADN                            R5 1
      160 LOADN                            R6 -4
      161 LOADN                            R7 0
      162 LOADN                            R8 25
      163 CALL                             R4 4 1
      164 SETTABLEKS                       R4 R3 K9 ["Size"]
      166 GETIMPORT                        R4 K69 [Color3.fromRGB]
      168 LOADN                            R5 0
      169 LOADN                            R6 0
      170 LOADN                            R7 0
      171 CALL                             R4 3 1
      172 SETTABLEKS                       R4 R3 K58 ["Black"]
      174 GETIMPORT                        R4 K69 [Color3.fromRGB]
      176 LOADN                            R5 1
      177 LOADN                            R6 1
      178 LOADN                            R7 1
      179 CALL                             R4 3 1
      180 SETTABLEKS                       R4 R3 K59 ["White"]
      182 GETIMPORT                        R4 K27 [UDim2.new]
      184 LOADN                            R5 0
      185 LOADN                            R6 8
      186 LOADN                            R7 0
      187 LOADN                            R8 5
      188 CALL                             R4 4 1
      189 SETTABLEKS                       R4 R3 K62 ["PositionIndicatorSize"]
      191 GETIMPORT                        R4 K71 [Vector2.new]
      193 LOADK                            R5 K28 [0.5]
      194 LOADN                            R6 0
      195 CALL                             R4 2 1
      196 SETTABLEKS                       R4 R3 K63 ["PositionIndicatorAnchor"]
      198 SETTABLEKS                       R3 R2 K20 ["ColorValueSlider"]
      200 DUPTABLE                         R3 K73 [{["Size"], ["Black"], ["GradientImage"] = "rbxasset://textures/TagEditor/huesatgradient.png", ["PositionIndicatorSize"], ["PositionIndicatorAnchor"], ["PositionIndicatorImage"] = "rbxasset://textures/TagEditor/trianglesmall.png"}]
      201 GETIMPORT                        R4 K27 [UDim2.new]
      203 LOADN                            R5 1
      204 LOADN                            R6 -4
      205 LOADN                            R7 1
      206 LOADN                            R8 -50
      207 CALL                             R4 4 1
      208 SETTABLEKS                       R4 R3 K9 ["Size"]
      210 GETIMPORT                        R4 K69 [Color3.fromRGB]
      212 LOADN                            R5 1
      213 LOADN                            R6 1
      214 LOADN                            R7 1
      215 CALL                             R4 3 1
      216 SETTABLEKS                       R4 R3 K58 ["Black"]
      218 GETIMPORT                        R4 K27 [UDim2.new]
      220 LOADN                            R5 0
      221 LOADN                            R6 8
      222 LOADN                            R7 0
      223 LOADN                            R8 5
      224 CALL                             R4 4 1
      225 SETTABLEKS                       R4 R3 K62 ["PositionIndicatorSize"]
      227 GETIMPORT                        R4 K71 [Vector2.new]
      229 LOADK                            R5 K28 [0.5]
      230 LOADN                            R6 1
      231 CALL                             R4 2 1
      232 SETTABLEKS                       R4 R3 K63 ["PositionIndicatorAnchor"]
      234 SETTABLEKS                       R3 R2 K21 ["HueSaturationPicker"]
      236 RETURN                           R2 1
