MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K12 [game]
       24 LOADK                            R6 K13 ["ImprovedCursors"]
       25 NAMECALL                         R4 R4 K14 ["GetFastFlag"]
       27 CALL                             R4 2 1
       28 DUPTABLE                         R5 K33 [{["ColorControlPoint"], ["ColorControlPointHovered"], ["ColorControlPointPressed"], ["ColorControlLine"], ["ColorAnalyzerCurveIn"], ["ColorAnalyzerCurveOut"], ["ColorAnalyzerCurveGain"], ["ColorAnalyzerCurveSidechain"], ["ColorCurve"], ["ColorCurveDisabled"], ["ColorGridLine"], ["ColorKnobArc"], ["ColorKnobTick"], ["CursorOpenedHand"], ["CursorHorizontal"] = "SizeEW", ["CursorVertical"] = "SizeNS"}]
       29 GETIMPORT                        R6 K36 [Color3.fromRGB]
       31 LOADN                            R7 255
       32 LOADN                            R8 100
       33 LOADN                            R9 100
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K15 ["ColorControlPoint"]
       37 GETIMPORT                        R6 K36 [Color3.fromRGB]
       39 LOADN                            R7 175
       40 LOADN                            R8 70
       41 LOADN                            R9 75
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K16 ["ColorControlPointHovered"]
       45 GETIMPORT                        R6 K36 [Color3.fromRGB]
       47 LOADN                            R7 100
       48 LOADN                            R8 30
       49 LOADN                            R9 50
       50 CALL                             R6 3 1
       51 SETTABLEKS                       R6 R5 K17 ["ColorControlPointPressed"]
       53 GETIMPORT                        R6 K36 [Color3.fromRGB]
       55 LOADN                            R7 100
       56 LOADN                            R8 200
       57 LOADN                            R9 100
       58 CALL                             R6 3 1
       59 SETTABLEKS                       R6 R5 K18 ["ColorControlLine"]
       61 GETIMPORT                        R6 K36 [Color3.fromRGB]
       63 LOADN                            R7 150
       64 LOADN                            R8 100
       65 LOADN                            R9 50
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K19 ["ColorAnalyzerCurveIn"]
       69 GETIMPORT                        R6 K36 [Color3.fromRGB]
       71 LOADN                            R7 200
       72 LOADN                            R8 150
       73 LOADN                            R9 75
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K20 ["ColorAnalyzerCurveOut"]
       77 GETIMPORT                        R6 K36 [Color3.fromRGB]
       79 LOADN                            R7 150
       80 LOADN                            R8 200
       81 LOADN                            R9 75
       82 CALL                             R6 3 1
       83 SETTABLEKS                       R6 R5 K21 ["ColorAnalyzerCurveGain"]
       85 GETIMPORT                        R6 K36 [Color3.fromRGB]
       87 LOADN                            R7 150
       88 LOADN                            R8 75
       89 LOADN                            R9 225
       90 CALL                             R6 3 1
       91 SETTABLEKS                       R6 R5 K22 ["ColorAnalyzerCurveSidechain"]
       93 GETIMPORT                        R6 K36 [Color3.fromRGB]
       95 LOADN                            R7 255
       96 LOADN                            R8 100
       97 LOADN                            R9 100
       98 CALL                             R6 3 1
       99 SETTABLEKS                       R6 R5 K23 ["ColorCurve"]
      101 GETIMPORT                        R6 K36 [Color3.fromRGB]
      103 LOADN                            R7 155
      104 LOADN                            R8 100
      105 LOADN                            R9 100
      106 CALL                             R6 3 1
      107 SETTABLEKS                       R6 R5 K24 ["ColorCurveDisabled"]
      109 GETIMPORT                        R6 K36 [Color3.fromRGB]
      111 LOADN                            R7 155
      112 LOADN                            R8 155
      113 LOADN                            R9 155
      114 CALL                             R6 3 1
      115 SETTABLEKS                       R6 R5 K25 ["ColorGridLine"]
      117 GETIMPORT                        R6 K36 [Color3.fromRGB]
      119 LOADN                            R7 0
      120 LOADN                            R8 155
      121 LOADN                            R9 255
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K26 ["ColorKnobArc"]
      125 GETIMPORT                        R6 K36 [Color3.fromRGB]
      127 LOADN                            R7 0
      128 LOADN                            R8 155
      129 LOADN                            R9 255
      130 CALL                             R6 3 1
      131 SETTABLEKS                       R6 R5 K27 ["ColorKnobTick"]
      133 JUMPIFNOT                        R4 ; [+2]
      134 LOADK                            R6 K37 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      135 JUMP                             ; [+1]
      136 LOADK                            R6 K38 ["rbxasset://textures/advCursor-openedHand.png"]
      137 SETTABLEKS                       R6 R5 K28 ["CursorOpenedHand"]
      139 NEWTABLE                         R6 0 20
      141 MOVE                             R7 R2
      142 LOADK                            R8 K39 ["TextLabel, TextButton, TextBox"]
      143 DUPTABLE                         R9 K41 [{"Font"}]
      144 GETIMPORT                        R10 K44 [Enum.Font.SourceSans]
      146 SETTABLEKS                       R10 R9 K40 ["Font"]
      148 CALL                             R7 2 1
      149 MOVE                             R8 R2
      150 LOADK                            R9 K45 [".Input"]
      151 DUPTABLE                         R10 K48 [{["BackgroundColor3"] = "$ColorInputBox"}]
      152 CALL                             R8 2 1
      153 MOVE                             R9 R2
      154 LOADK                            R10 K49 [".GridLine"]
      155 DUPTABLE                         R11 K55 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundColor3"] = "$ColorGridLine"}]
      156 CALL                             R9 2 1
      157 MOVE                             R10 R2
      158 LOADK                            R11 K56 [".GridLabel"]
      159 DUPTABLE                         R12 K62 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorGridLine", ["TextSize"] = 18}]
      160 NEWTABLE                         R13 0 1
      162 MOVE                             R14 R2
      163 LOADK                            R15 K63 [".ControlLabel"]
      164 DUPTABLE                         R16 K65 [{["TextColor3"] = "$ColorControlLine"}]
      165 CALL                             R14 2 -1
      166 SETLIST                          R13 R14 -1 [1]
      168 CALL                             R10 3 1
      169 MOVE                             R11 R2
      170 LOADK                            R12 K66 [".AnalyzerCurveSidechain"]
      171 DUPTABLE                         R13 K70 [{["ZIndex"] = 4, ["Color3"] = "$ColorAnalyzerCurveSidechain", ["Thickness"] = 1}]
      172 CALL                             R11 2 1
      173 MOVE                             R12 R2
      174 LOADK                            R13 K71 [".AnalyzerCurveIn"]
      175 DUPTABLE                         R14 K74 [{["ZIndex"] = 5, ["Color3"] = "$ColorAnalyzerCurveIn", ["Thickness"] = 1}]
      176 CALL                             R12 2 1
      177 MOVE                             R13 R2
      178 LOADK                            R14 K75 [".AnalyzerCurveOut"]
      179 DUPTABLE                         R15 K78 [{["ZIndex"] = 6, ["Color3"] = "$ColorAnalyzerCurveOut", ["Thickness"] = 1}]
      180 CALL                             R13 2 1
      181 MOVE                             R14 R2
      182 LOADK                            R15 K79 [".AnalyzerCurveGain"]
      183 DUPTABLE                         R16 K82 [{["ZIndex"] = 7, ["Color3"] = "$ColorAnalyzerCurveGain", ["Thickness"] = 1}]
      184 CALL                             R14 2 1
      185 MOVE                             R15 R2
      186 LOADK                            R16 K83 [".Curve"]
      187 DUPTABLE                         R17 K86 [{["ZIndex"] = 10, ["Color3"] = "$ColorCurve", ["Thickness"] = 2}]
      188 CALL                             R15 2 1
      189 MOVE                             R16 R2
      190 LOADK                            R17 K87 [".CurveDisabled"]
      191 DUPTABLE                         R18 K89 [{["ZIndex"] = 10, ["Color3"] = "$ColorCurveDisabled", ["Thickness"] = 2}]
      192 CALL                             R16 2 1
      193 MOVE                             R17 R2
      194 LOADK                            R18 K90 [".ControlPoint"]
      195 DUPTABLE                         R19 K98 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorControlPoint", ["Size"], ["ZIndex"] = 20}]
      196 GETIMPORT                        R20 K101 [Vector2.new]
      198 LOADK                            R21 K102 [0.5]
      199 LOADK                            R22 K102 [0.5]
      200 CALL                             R20 2 1
      201 SETTABLEKS                       R20 R19 K91 ["AnchorPoint"]
      203 GETIMPORT                        R20 K105 [UDim2.fromOffset]
      205 LOADN                            R21 12
      206 LOADN                            R22 12
      207 CALL                             R20 2 1
      208 SETTABLEKS                       R20 R19 K96 ["Size"]
      210 CALL                             R17 2 1
      211 MOVE                             R18 R2
      212 LOADK                            R19 K106 [".ControlLine"]
      213 DUPTABLE                         R20 K107 [{["BorderSizePixel"] = 0, ["ZIndex"] = 20, ["BackgroundColor3"] = "$ColorControlLine"}]
      214 CALL                             R18 2 1
      215 MOVE                             R19 R2
      216 LOADK                            R20 K108 [".GridCurve"]
      217 DUPTABLE                         R21 K109 [{["Color3"] = "$ColorGridLine", ["Thickness"] = 2}]
      218 CALL                             R19 2 1
      219 MOVE                             R20 R2
      220 LOADK                            R21 K110 [".GuideCurve"]
      221 DUPTABLE                         R22 K111 [{["Color3"] = "$ColorControlLine", ["Thickness"] = 1}]
      222 CALL                             R20 2 1
      223 MOVE                             R21 R2
      224 LOADK                            R22 K112 [".Knob"]
      225 DUPTABLE                         R23 K114 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorKnob"}]
      226 CALL                             R21 2 1
      227 MOVE                             R22 R2
      228 LOADK                            R23 K115 [".KnobBackArc"]
      229 DUPTABLE                         R24 K118 [{["Color3"] = "$ColorKnobBackArc", ["Thickness"] = 3}]
      230 CALL                             R22 2 1
      231 SETLIST                          R6 R7 16 [1]
      233 MOVE                             R7 R2
      234 LOADK                            R8 K119 [".KnobArc"]
      235 DUPTABLE                         R9 K121 [{["Color3"] = "$ColorKnobArc", ["Thickness"] = 3}]
      236 CALL                             R7 2 1
      237 MOVE                             R8 R2
      238 LOADK                            R9 K122 [".KnobTick"]
      239 DUPTABLE                         R10 K124 [{["Color3"] = "$ColorKnobTick", ["Thickness"] = 3}]
      240 CALL                             R8 2 1
      241 MOVE                             R9 R2
      242 LOADK                            R10 K125 [".TopButton"]
      243 DUPTABLE                         R11 K127 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ColorTopButton"}]
      244 CALL                             R9 2 1
      245 MOVE                             R10 R2
      246 LOADK                            R11 K128 [".DoubleArrowButton"]
      247 NEWTABLE                         R12 0 0
      249 CALL                             R10 2 -1
      250 SETLIST                          R6 R7 -1 [17]
      252 MOVE                             R7 R3
      253 LOADK                            R8 K2 ["AudioCompressorEditor"]
      254 MOVE                             R9 R6
      255 MOVE                             R10 R5
      256 CALL                             R7 3 -1
      257 RETURN                           R7 -1
