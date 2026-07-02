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
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K15 ["Bin"]
       32 GETTABLEKS                       R6 R6 K16 ["Common"]
       34 GETTABLEKS                       R6 R6 K17 ["defineLuaFlags"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R5 R5 K18 ["getFFlagAudioCompressorEditorFontFix"]
       39 CALL                             R5 0 1
       40 DUPTABLE                         R6 K37 [{["ColorControlPoint"], ["ColorControlPointHovered"], ["ColorControlPointPressed"], ["ColorControlLine"], ["ColorAnalyzerCurveIn"], ["ColorAnalyzerCurveOut"], ["ColorAnalyzerCurveGain"], ["ColorAnalyzerCurveSidechain"], ["ColorCurve"], ["ColorCurveDisabled"], ["ColorGridLine"], ["ColorKnobArc"], ["ColorKnobTick"], ["CursorOpenedHand"], ["CursorHorizontal"] = "SizeEW", ["CursorVertical"] = "SizeNS"}]
       41 GETIMPORT                        R7 K40 [Color3.fromRGB]
       43 LOADN                            R8 255
       44 LOADN                            R9 100
       45 LOADN                            R10 100
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K19 ["ColorControlPoint"]
       49 GETIMPORT                        R7 K40 [Color3.fromRGB]
       51 LOADN                            R8 175
       52 LOADN                            R9 70
       53 LOADN                            R10 75
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K20 ["ColorControlPointHovered"]
       57 GETIMPORT                        R7 K40 [Color3.fromRGB]
       59 LOADN                            R8 100
       60 LOADN                            R9 30
       61 LOADN                            R10 50
       62 CALL                             R7 3 1
       63 SETTABLEKS                       R7 R6 K21 ["ColorControlPointPressed"]
       65 GETIMPORT                        R7 K40 [Color3.fromRGB]
       67 LOADN                            R8 100
       68 LOADN                            R9 200
       69 LOADN                            R10 100
       70 CALL                             R7 3 1
       71 SETTABLEKS                       R7 R6 K22 ["ColorControlLine"]
       73 GETIMPORT                        R7 K40 [Color3.fromRGB]
       75 LOADN                            R8 150
       76 LOADN                            R9 100
       77 LOADN                            R10 50
       78 CALL                             R7 3 1
       79 SETTABLEKS                       R7 R6 K23 ["ColorAnalyzerCurveIn"]
       81 GETIMPORT                        R7 K40 [Color3.fromRGB]
       83 LOADN                            R8 200
       84 LOADN                            R9 150
       85 LOADN                            R10 75
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K24 ["ColorAnalyzerCurveOut"]
       89 GETIMPORT                        R7 K40 [Color3.fromRGB]
       91 LOADN                            R8 150
       92 LOADN                            R9 200
       93 LOADN                            R10 75
       94 CALL                             R7 3 1
       95 SETTABLEKS                       R7 R6 K25 ["ColorAnalyzerCurveGain"]
       97 GETIMPORT                        R7 K40 [Color3.fromRGB]
       99 LOADN                            R8 150
      100 LOADN                            R9 75
      101 LOADN                            R10 225
      102 CALL                             R7 3 1
      103 SETTABLEKS                       R7 R6 K26 ["ColorAnalyzerCurveSidechain"]
      105 GETIMPORT                        R7 K40 [Color3.fromRGB]
      107 LOADN                            R8 255
      108 LOADN                            R9 100
      109 LOADN                            R10 100
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K27 ["ColorCurve"]
      113 GETIMPORT                        R7 K40 [Color3.fromRGB]
      115 LOADN                            R8 155
      116 LOADN                            R9 100
      117 LOADN                            R10 100
      118 CALL                             R7 3 1
      119 SETTABLEKS                       R7 R6 K28 ["ColorCurveDisabled"]
      121 GETIMPORT                        R7 K40 [Color3.fromRGB]
      123 LOADN                            R8 155
      124 LOADN                            R9 155
      125 LOADN                            R10 155
      126 CALL                             R7 3 1
      127 SETTABLEKS                       R7 R6 K29 ["ColorGridLine"]
      129 GETIMPORT                        R7 K40 [Color3.fromRGB]
      131 LOADN                            R8 0
      132 LOADN                            R9 155
      133 LOADN                            R10 255
      134 CALL                             R7 3 1
      135 SETTABLEKS                       R7 R6 K30 ["ColorKnobArc"]
      137 GETIMPORT                        R7 K40 [Color3.fromRGB]
      139 LOADN                            R8 0
      140 LOADN                            R9 155
      141 LOADN                            R10 255
      142 CALL                             R7 3 1
      143 SETTABLEKS                       R7 R6 K31 ["ColorKnobTick"]
      145 JUMPIFNOT                        R4 ; [+2]
      146 LOADK                            R7 K41 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      147 JUMP                             ; [+1]
      148 LOADK                            R7 K42 ["rbxasset://textures/advCursor-openedHand.png"]
      149 SETTABLEKS                       R7 R6 K32 ["CursorOpenedHand"]
      151 NEWTABLE                         R7 0 20
      153 MOVE                             R8 R2
      154 LOADK                            R9 K43 ["TextLabel, TextButton, TextBox"]
      155 DUPTABLE                         R10 K46 [{"FontFace", "Font"}]
      156 JUMPIFNOT                        R5 ; [+2]
      157 LOADNIL                          R11
      158 JUMP                             ; [+2]
      159 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
      161 SETTABLEKS                       R11 R10 K44 ["FontFace"]
      163 JUMPIFNOT                        R5 ; [+3]
      164 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R11
      168 SETTABLEKS                       R11 R10 K45 ["Font"]
      170 CALL                             R8 2 1
      171 MOVE                             R9 R2
      172 LOADK                            R10 K50 [".Input"]
      173 DUPTABLE                         R11 K53 [{["BackgroundColor3"] = "$ColorInputBox"}]
      174 CALL                             R9 2 1
      175 MOVE                             R10 R2
      176 LOADK                            R11 K54 [".GridLine"]
      177 DUPTABLE                         R12 K60 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundColor3"] = "$ColorGridLine"}]
      178 CALL                             R10 2 1
      179 MOVE                             R11 R2
      180 LOADK                            R12 K61 [".GridLabel"]
      181 DUPTABLE                         R13 K66 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorGridLine", ["TextSize"]}]
      182 JUMPIFNOT                        R5 ; [+2]
      183 LOADN                            R14 18
      184 JUMP                             ; [+1]
      185 LOADN                            R14 10
      186 SETTABLEKS                       R14 R13 K65 ["TextSize"]
      188 NEWTABLE                         R14 0 1
      190 MOVE                             R15 R2
      191 LOADK                            R16 K67 [".ControlLabel"]
      192 DUPTABLE                         R17 K69 [{["TextColor3"] = "$ColorControlLine"}]
      193 CALL                             R15 2 -1
      194 SETLIST                          R14 R15 -1 [1]
      196 CALL                             R11 3 1
      197 MOVE                             R12 R2
      198 LOADK                            R13 K70 [".AnalyzerCurveSidechain"]
      199 DUPTABLE                         R14 K74 [{["ZIndex"] = 4, ["Color3"] = "$ColorAnalyzerCurveSidechain", ["Thickness"] = 1}]
      200 CALL                             R12 2 1
      201 MOVE                             R13 R2
      202 LOADK                            R14 K75 [".AnalyzerCurveIn"]
      203 DUPTABLE                         R15 K78 [{["ZIndex"] = 5, ["Color3"] = "$ColorAnalyzerCurveIn", ["Thickness"] = 1}]
      204 CALL                             R13 2 1
      205 MOVE                             R14 R2
      206 LOADK                            R15 K79 [".AnalyzerCurveOut"]
      207 DUPTABLE                         R16 K82 [{["ZIndex"] = 6, ["Color3"] = "$ColorAnalyzerCurveOut", ["Thickness"] = 1}]
      208 CALL                             R14 2 1
      209 MOVE                             R15 R2
      210 LOADK                            R16 K83 [".AnalyzerCurveGain"]
      211 DUPTABLE                         R17 K86 [{["ZIndex"] = 7, ["Color3"] = "$ColorAnalyzerCurveGain", ["Thickness"] = 1}]
      212 CALL                             R15 2 1
      213 MOVE                             R16 R2
      214 LOADK                            R17 K87 [".Curve"]
      215 DUPTABLE                         R18 K90 [{["ZIndex"] = 10, ["Color3"] = "$ColorCurve", ["Thickness"] = 2}]
      216 CALL                             R16 2 1
      217 MOVE                             R17 R2
      218 LOADK                            R18 K91 [".CurveDisabled"]
      219 DUPTABLE                         R19 K93 [{["ZIndex"] = 10, ["Color3"] = "$ColorCurveDisabled", ["Thickness"] = 2}]
      220 CALL                             R17 2 1
      221 MOVE                             R18 R2
      222 LOADK                            R19 K94 [".ControlPoint"]
      223 DUPTABLE                         R20 K102 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorControlPoint", ["Size"], ["ZIndex"] = 20}]
      224 GETIMPORT                        R21 K105 [Vector2.new]
      226 LOADK                            R22 K106 [0.5]
      227 LOADK                            R23 K106 [0.5]
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K95 ["AnchorPoint"]
      231 GETIMPORT                        R21 K109 [UDim2.fromOffset]
      233 LOADN                            R22 12
      234 LOADN                            R23 12
      235 CALL                             R21 2 1
      236 SETTABLEKS                       R21 R20 K100 ["Size"]
      238 CALL                             R18 2 1
      239 MOVE                             R19 R2
      240 LOADK                            R20 K110 [".ControlLine"]
      241 DUPTABLE                         R21 K111 [{["BorderSizePixel"] = 0, ["ZIndex"] = 20, ["BackgroundColor3"] = "$ColorControlLine"}]
      242 CALL                             R19 2 1
      243 MOVE                             R20 R2
      244 LOADK                            R21 K112 [".GridCurve"]
      245 DUPTABLE                         R22 K113 [{["Color3"] = "$ColorGridLine", ["Thickness"] = 2}]
      246 CALL                             R20 2 1
      247 MOVE                             R21 R2
      248 LOADK                            R22 K114 [".GuideCurve"]
      249 DUPTABLE                         R23 K115 [{["Color3"] = "$ColorControlLine", ["Thickness"] = 1}]
      250 CALL                             R21 2 1
      251 MOVE                             R22 R2
      252 LOADK                            R23 K116 [".Knob"]
      253 DUPTABLE                         R24 K118 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorKnob"}]
      254 CALL                             R22 2 1
      255 MOVE                             R23 R2
      256 LOADK                            R24 K119 [".KnobBackArc"]
      257 DUPTABLE                         R25 K122 [{["Color3"] = "$ColorKnobBackArc", ["Thickness"] = 3}]
      258 CALL                             R23 2 1
      259 SETLIST                          R7 R8 16 [1]
      261 MOVE                             R8 R2
      262 LOADK                            R9 K123 [".KnobArc"]
      263 DUPTABLE                         R10 K125 [{["Color3"] = "$ColorKnobArc", ["Thickness"] = 3}]
      264 CALL                             R8 2 1
      265 MOVE                             R9 R2
      266 LOADK                            R10 K126 [".KnobTick"]
      267 DUPTABLE                         R11 K128 [{["Color3"] = "$ColorKnobTick", ["Thickness"] = 3}]
      268 CALL                             R9 2 1
      269 MOVE                             R10 R2
      270 LOADK                            R11 K129 [".TopButton"]
      271 DUPTABLE                         R12 K131 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ColorTopButton"}]
      272 CALL                             R10 2 1
      273 MOVE                             R11 R2
      274 LOADK                            R12 K132 [".DoubleArrowButton"]
      275 NEWTABLE                         R13 0 0
      277 CALL                             R11 2 -1
      278 SETLIST                          R7 R8 -1 [17]
      280 MOVE                             R8 R3
      281 LOADK                            R9 K2 ["AudioCompressorEditor"]
      282 MOVE                             R10 R7
      283 MOVE                             R11 R6
      284 CALL                             R8 3 -1
      285 RETURN                           R8 -1
