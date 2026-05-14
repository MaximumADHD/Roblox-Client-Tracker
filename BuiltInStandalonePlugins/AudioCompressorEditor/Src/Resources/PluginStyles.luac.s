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
       40 DUPTABLE                         R6 K35 [{"ColorControlPoint", "ColorControlPointHovered", "ColorControlPointPressed", "ColorControlLine", "ColorAnalyzerCurveIn", "ColorAnalyzerCurveOut", "ColorAnalyzerCurveGain", "ColorAnalyzerCurveSidechain", "ColorCurve", "ColorCurveDisabled", "ColorGridLine", "ColorKnobArc", "ColorKnobTick", "CursorOpenedHand", "CursorHorizontal", "CursorVertical"}]
       41 GETIMPORT                        R7 K38 [Color3.fromRGB]
       43 LOADN                            R8 255
       44 LOADN                            R9 100
       45 LOADN                            R10 100
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K19 ["ColorControlPoint"]
       49 GETIMPORT                        R7 K38 [Color3.fromRGB]
       51 LOADN                            R8 175
       52 LOADN                            R9 70
       53 LOADN                            R10 75
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K20 ["ColorControlPointHovered"]
       57 GETIMPORT                        R7 K38 [Color3.fromRGB]
       59 LOADN                            R8 100
       60 LOADN                            R9 30
       61 LOADN                            R10 50
       62 CALL                             R7 3 1
       63 SETTABLEKS                       R7 R6 K21 ["ColorControlPointPressed"]
       65 GETIMPORT                        R7 K38 [Color3.fromRGB]
       67 LOADN                            R8 100
       68 LOADN                            R9 200
       69 LOADN                            R10 100
       70 CALL                             R7 3 1
       71 SETTABLEKS                       R7 R6 K22 ["ColorControlLine"]
       73 GETIMPORT                        R7 K38 [Color3.fromRGB]
       75 LOADN                            R8 150
       76 LOADN                            R9 100
       77 LOADN                            R10 50
       78 CALL                             R7 3 1
       79 SETTABLEKS                       R7 R6 K23 ["ColorAnalyzerCurveIn"]
       81 GETIMPORT                        R7 K38 [Color3.fromRGB]
       83 LOADN                            R8 200
       84 LOADN                            R9 150
       85 LOADN                            R10 75
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K24 ["ColorAnalyzerCurveOut"]
       89 GETIMPORT                        R7 K38 [Color3.fromRGB]
       91 LOADN                            R8 150
       92 LOADN                            R9 200
       93 LOADN                            R10 75
       94 CALL                             R7 3 1
       95 SETTABLEKS                       R7 R6 K25 ["ColorAnalyzerCurveGain"]
       97 GETIMPORT                        R7 K38 [Color3.fromRGB]
       99 LOADN                            R8 150
      100 LOADN                            R9 75
      101 LOADN                            R10 225
      102 CALL                             R7 3 1
      103 SETTABLEKS                       R7 R6 K26 ["ColorAnalyzerCurveSidechain"]
      105 GETIMPORT                        R7 K38 [Color3.fromRGB]
      107 LOADN                            R8 255
      108 LOADN                            R9 100
      109 LOADN                            R10 100
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K27 ["ColorCurve"]
      113 GETIMPORT                        R7 K38 [Color3.fromRGB]
      115 LOADN                            R8 155
      116 LOADN                            R9 100
      117 LOADN                            R10 100
      118 CALL                             R7 3 1
      119 SETTABLEKS                       R7 R6 K28 ["ColorCurveDisabled"]
      121 GETIMPORT                        R7 K38 [Color3.fromRGB]
      123 LOADN                            R8 155
      124 LOADN                            R9 155
      125 LOADN                            R10 155
      126 CALL                             R7 3 1
      127 SETTABLEKS                       R7 R6 K29 ["ColorGridLine"]
      129 GETIMPORT                        R7 K38 [Color3.fromRGB]
      131 LOADN                            R8 0
      132 LOADN                            R9 155
      133 LOADN                            R10 255
      134 CALL                             R7 3 1
      135 SETTABLEKS                       R7 R6 K30 ["ColorKnobArc"]
      137 GETIMPORT                        R7 K38 [Color3.fromRGB]
      139 LOADN                            R8 0
      140 LOADN                            R9 155
      141 LOADN                            R10 255
      142 CALL                             R7 3 1
      143 SETTABLEKS                       R7 R6 K31 ["ColorKnobTick"]
      145 JUMPIFNOT                        R4 ; [+2]
      146 LOADK                            R7 K39 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      147 JUMP                             ; [+1]
      148 LOADK                            R7 K40 ["rbxasset://textures/advCursor-openedHand.png"]
      149 SETTABLEKS                       R7 R6 K32 ["CursorOpenedHand"]
      151 LOADK                            R7 K41 ["SizeEW"]
      152 SETTABLEKS                       R7 R6 K33 ["CursorHorizontal"]
      154 LOADK                            R7 K42 ["SizeNS"]
      155 SETTABLEKS                       R7 R6 K34 ["CursorVertical"]
      157 NEWTABLE                         R7 0 20
      159 MOVE                             R8 R2
      160 LOADK                            R9 K43 ["TextLabel, TextButton, TextBox"]
      161 DUPTABLE                         R10 K46 [{"FontFace", "Font"}]
      162 JUMPIFNOT                        R5 ; [+2]
      163 LOADNIL                          R11
      164 JUMP                             ; [+2]
      165 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
      167 SETTABLEKS                       R11 R10 K44 ["FontFace"]
      169 JUMPIFNOT                        R5 ; [+3]
      170 GETIMPORT                        R11 K49 [Enum.Font.SourceSans]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R11
      174 SETTABLEKS                       R11 R10 K45 ["Font"]
      176 CALL                             R8 2 1
      177 MOVE                             R9 R2
      178 LOADK                            R10 K50 [".Input"]
      179 DUPTABLE                         R11 K52 [{"BackgroundColor3"}]
      180 LOADK                            R12 K53 ["$ColorInputBox"]
      181 SETTABLEKS                       R12 R11 K51 ["BackgroundColor3"]
      183 CALL                             R9 2 1
      184 MOVE                             R10 R2
      185 LOADK                            R11 K54 [".GridLine"]
      186 DUPTABLE                         R12 K57 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
      187 LOADN                            R13 0
      188 SETTABLEKS                       R13 R12 K55 ["BorderSizePixel"]
      190 LOADN                            R13 2
      191 SETTABLEKS                       R13 R12 K56 ["ZIndex"]
      193 LOADK                            R13 K58 ["$ColorGridLine"]
      194 SETTABLEKS                       R13 R12 K51 ["BackgroundColor3"]
      196 CALL                             R10 2 1
      197 MOVE                             R11 R2
      198 LOADK                            R12 K59 [".GridLabel"]
      199 DUPTABLE                         R13 K63 [{"BackgroundTransparency", "TextColor3", "TextSize"}]
      200 LOADN                            R14 1
      201 SETTABLEKS                       R14 R13 K60 ["BackgroundTransparency"]
      203 LOADK                            R14 K58 ["$ColorGridLine"]
      204 SETTABLEKS                       R14 R13 K61 ["TextColor3"]
      206 JUMPIFNOT                        R5 ; [+2]
      207 LOADN                            R14 18
      208 JUMP                             ; [+1]
      209 LOADN                            R14 10
      210 SETTABLEKS                       R14 R13 K62 ["TextSize"]
      212 NEWTABLE                         R14 0 1
      214 MOVE                             R15 R2
      215 LOADK                            R16 K64 [".ControlLabel"]
      216 DUPTABLE                         R17 K65 [{"TextColor3"}]
      217 LOADK                            R18 K66 ["$ColorControlLine"]
      218 SETTABLEKS                       R18 R17 K61 ["TextColor3"]
      220 CALL                             R15 2 -1
      221 SETLIST                          R14 R15 -1 [1]
      223 CALL                             R11 3 1
      224 MOVE                             R12 R2
      225 LOADK                            R13 K67 [".AnalyzerCurveSidechain"]
      226 DUPTABLE                         R14 K69 [{"ZIndex", "Color3", "Thickness"}]
      227 LOADN                            R15 4
      228 SETTABLEKS                       R15 R14 K56 ["ZIndex"]
      230 LOADK                            R15 K70 ["$ColorAnalyzerCurveSidechain"]
      231 SETTABLEKS                       R15 R14 K36 ["Color3"]
      233 LOADN                            R15 1
      234 SETTABLEKS                       R15 R14 K68 ["Thickness"]
      236 CALL                             R12 2 1
      237 MOVE                             R13 R2
      238 LOADK                            R14 K71 [".AnalyzerCurveIn"]
      239 DUPTABLE                         R15 K69 [{"ZIndex", "Color3", "Thickness"}]
      240 LOADN                            R16 5
      241 SETTABLEKS                       R16 R15 K56 ["ZIndex"]
      243 LOADK                            R16 K72 ["$ColorAnalyzerCurveIn"]
      244 SETTABLEKS                       R16 R15 K36 ["Color3"]
      246 LOADN                            R16 1
      247 SETTABLEKS                       R16 R15 K68 ["Thickness"]
      249 CALL                             R13 2 1
      250 MOVE                             R14 R2
      251 LOADK                            R15 K73 [".AnalyzerCurveOut"]
      252 DUPTABLE                         R16 K69 [{"ZIndex", "Color3", "Thickness"}]
      253 LOADN                            R17 6
      254 SETTABLEKS                       R17 R16 K56 ["ZIndex"]
      256 LOADK                            R17 K74 ["$ColorAnalyzerCurveOut"]
      257 SETTABLEKS                       R17 R16 K36 ["Color3"]
      259 LOADN                            R17 1
      260 SETTABLEKS                       R17 R16 K68 ["Thickness"]
      262 CALL                             R14 2 1
      263 MOVE                             R15 R2
      264 LOADK                            R16 K75 [".AnalyzerCurveGain"]
      265 DUPTABLE                         R17 K69 [{"ZIndex", "Color3", "Thickness"}]
      266 LOADN                            R18 7
      267 SETTABLEKS                       R18 R17 K56 ["ZIndex"]
      269 LOADK                            R18 K76 ["$ColorAnalyzerCurveGain"]
      270 SETTABLEKS                       R18 R17 K36 ["Color3"]
      272 LOADN                            R18 1
      273 SETTABLEKS                       R18 R17 K68 ["Thickness"]
      275 CALL                             R15 2 1
      276 MOVE                             R16 R2
      277 LOADK                            R17 K77 [".Curve"]
      278 DUPTABLE                         R18 K69 [{"ZIndex", "Color3", "Thickness"}]
      279 LOADN                            R19 10
      280 SETTABLEKS                       R19 R18 K56 ["ZIndex"]
      282 LOADK                            R19 K78 ["$ColorCurve"]
      283 SETTABLEKS                       R19 R18 K36 ["Color3"]
      285 LOADN                            R19 2
      286 SETTABLEKS                       R19 R18 K68 ["Thickness"]
      288 CALL                             R16 2 1
      289 MOVE                             R17 R2
      290 LOADK                            R18 K79 [".CurveDisabled"]
      291 DUPTABLE                         R19 K69 [{"ZIndex", "Color3", "Thickness"}]
      292 LOADN                            R20 10
      293 SETTABLEKS                       R20 R19 K56 ["ZIndex"]
      295 LOADK                            R20 K80 ["$ColorCurveDisabled"]
      296 SETTABLEKS                       R20 R19 K36 ["Color3"]
      298 LOADN                            R20 2
      299 SETTABLEKS                       R20 R19 K68 ["Thickness"]
      301 CALL                             R17 2 1
      302 MOVE                             R18 R2
      303 LOADK                            R19 K81 [".ControlPoint"]
      304 DUPTABLE                         R20 K86 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
      305 GETIMPORT                        R21 K89 [Vector2.new]
      307 LOADK                            R22 K90 [0.5]
      308 LOADK                            R23 K90 [0.5]
      309 CALL                             R21 2 1
      310 SETTABLEKS                       R21 R20 K82 ["AnchorPoint"]
      312 LOADN                            R21 1
      313 SETTABLEKS                       R21 R20 K60 ["BackgroundTransparency"]
      315 LOADK                            R21 K91 ["rbxasset://textures/smallWhiteCircle.png"]
      316 SETTABLEKS                       R21 R20 K83 ["Image"]
      318 LOADK                            R21 K92 ["$ColorControlPoint"]
      319 SETTABLEKS                       R21 R20 K84 ["ImageColor3"]
      321 GETIMPORT                        R21 K95 [UDim2.fromOffset]
      323 LOADN                            R22 12
      324 LOADN                            R23 12
      325 CALL                             R21 2 1
      326 SETTABLEKS                       R21 R20 K85 ["Size"]
      328 LOADN                            R21 20
      329 SETTABLEKS                       R21 R20 K56 ["ZIndex"]
      331 CALL                             R18 2 1
      332 MOVE                             R19 R2
      333 LOADK                            R20 K96 [".ControlLine"]
      334 DUPTABLE                         R21 K57 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
      335 LOADN                            R22 0
      336 SETTABLEKS                       R22 R21 K55 ["BorderSizePixel"]
      338 LOADN                            R22 20
      339 SETTABLEKS                       R22 R21 K56 ["ZIndex"]
      341 LOADK                            R22 K66 ["$ColorControlLine"]
      342 SETTABLEKS                       R22 R21 K51 ["BackgroundColor3"]
      344 CALL                             R19 2 1
      345 MOVE                             R20 R2
      346 LOADK                            R21 K97 [".GridCurve"]
      347 DUPTABLE                         R22 K98 [{"Color3", "Thickness"}]
      348 LOADK                            R23 K58 ["$ColorGridLine"]
      349 SETTABLEKS                       R23 R22 K36 ["Color3"]
      351 LOADN                            R23 2
      352 SETTABLEKS                       R23 R22 K68 ["Thickness"]
      354 CALL                             R20 2 1
      355 MOVE                             R21 R2
      356 LOADK                            R22 K99 [".GuideCurve"]
      357 DUPTABLE                         R23 K98 [{"Color3", "Thickness"}]
      358 LOADK                            R24 K66 ["$ColorControlLine"]
      359 SETTABLEKS                       R24 R23 K36 ["Color3"]
      361 LOADN                            R24 1
      362 SETTABLEKS                       R24 R23 K68 ["Thickness"]
      364 CALL                             R21 2 1
      365 MOVE                             R22 R2
      366 LOADK                            R23 K100 [".Knob"]
      367 DUPTABLE                         R24 K101 [{"BackgroundTransparency", "Image", "ImageColor3"}]
      368 LOADN                            R25 1
      369 SETTABLEKS                       R25 R24 K60 ["BackgroundTransparency"]
      371 LOADK                            R25 K91 ["rbxasset://textures/smallWhiteCircle.png"]
      372 SETTABLEKS                       R25 R24 K83 ["Image"]
      374 LOADK                            R25 K102 ["$ColorKnob"]
      375 SETTABLEKS                       R25 R24 K84 ["ImageColor3"]
      377 CALL                             R22 2 1
      378 MOVE                             R23 R2
      379 LOADK                            R24 K103 [".KnobBackArc"]
      380 DUPTABLE                         R25 K98 [{"Color3", "Thickness"}]
      381 LOADK                            R26 K104 ["$ColorKnobBackArc"]
      382 SETTABLEKS                       R26 R25 K36 ["Color3"]
      384 LOADN                            R26 3
      385 SETTABLEKS                       R26 R25 K68 ["Thickness"]
      387 CALL                             R23 2 1
      388 SETLIST                          R7 R8 16 [1]
      390 MOVE                             R8 R2
      391 LOADK                            R9 K105 [".KnobArc"]
      392 DUPTABLE                         R10 K98 [{"Color3", "Thickness"}]
      393 LOADK                            R11 K106 ["$ColorKnobArc"]
      394 SETTABLEKS                       R11 R10 K36 ["Color3"]
      396 LOADN                            R11 3
      397 SETTABLEKS                       R11 R10 K68 ["Thickness"]
      399 CALL                             R8 2 1
      400 MOVE                             R9 R2
      401 LOADK                            R10 K107 [".KnobTick"]
      402 DUPTABLE                         R11 K98 [{"Color3", "Thickness"}]
      403 LOADK                            R12 K108 ["$ColorKnobTick"]
      404 SETTABLEKS                       R12 R11 K36 ["Color3"]
      406 LOADN                            R12 3
      407 SETTABLEKS                       R12 R11 K68 ["Thickness"]
      409 CALL                             R9 2 1
      410 MOVE                             R10 R2
      411 LOADK                            R11 K109 [".TopButton"]
      412 DUPTABLE                         R12 K110 [{"BackgroundTransparency", "BackgroundColor3"}]
      413 LOADN                            R13 0
      414 SETTABLEKS                       R13 R12 K60 ["BackgroundTransparency"]
      416 LOADK                            R13 K111 ["$ColorTopButton"]
      417 SETTABLEKS                       R13 R12 K51 ["BackgroundColor3"]
      419 CALL                             R10 2 1
      420 MOVE                             R11 R2
      421 LOADK                            R12 K112 [".DoubleArrowButton"]
      422 NEWTABLE                         R13 0 0
      424 CALL                             R11 2 -1
      425 SETLIST                          R7 R8 -1 [17]
      427 MOVE                             R8 R3
      428 LOADK                            R9 K2 ["AudioCompressorEditor"]
      429 MOVE                             R10 R7
      430 MOVE                             R11 R6
      431 CALL                             R8 3 -1
      432 RETURN                           R8 -1
