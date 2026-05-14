MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R2 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 GETIMPORT                        R5 K15 [game]
       33 LOADK                            R7 K16 ["ImprovedCursors"]
       34 NAMECALL                         R5 R5 K17 ["GetFastFlag"]
       36 CALL                             R5 2 1
       37 DUPTABLE                         R6 K25 [{"ColorCurve", "ColorCurveEnd", "ColorKeypoint", "ColorKeypointSelected", "ColorKeypointHovered", "ColorKeypointPressed", "CursorOpenedHand"}]
       38 GETIMPORT                        R7 K28 [Color3.fromRGB]
       40 LOADN                            R8 225
       41 LOADN                            R9 100
       42 LOADN                            R10 100
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K18 ["ColorCurve"]
       46 GETIMPORT                        R7 K28 [Color3.fromRGB]
       48 LOADN                            R8 150
       49 LOADN                            R9 150
       50 LOADN                            R10 150
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K19 ["ColorCurveEnd"]
       54 GETIMPORT                        R7 K28 [Color3.fromRGB]
       56 LOADN                            R8 225
       57 LOADN                            R9 100
       58 LOADN                            R10 100
       59 CALL                             R7 3 1
       60 SETTABLEKS                       R7 R6 K20 ["ColorKeypoint"]
       62 GETIMPORT                        R7 K28 [Color3.fromRGB]
       64 LOADN                            R8 255
       65 LOADN                            R9 200
       66 LOADN                            R10 150
       67 CALL                             R7 3 1
       68 SETTABLEKS                       R7 R6 K21 ["ColorKeypointSelected"]
       70 GETIMPORT                        R7 K28 [Color3.fromRGB]
       72 LOADN                            R8 255
       73 LOADN                            R9 150
       74 LOADN                            R10 150
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K22 ["ColorKeypointHovered"]
       78 GETIMPORT                        R7 K28 [Color3.fromRGB]
       80 LOADN                            R8 150
       81 LOADN                            R9 50
       82 LOADN                            R10 50
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K23 ["ColorKeypointPressed"]
       86 JUMPIFNOT                        R5 ; [+2]
       87 LOADK                            R7 K29 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
       88 JUMP                             ; [+1]
       89 LOADK                            R7 K30 ["rbxasset://textures/advCursor-openedHand.png"]
       90 SETTABLEKS                       R7 R6 K24 ["CursorOpenedHand"]
       92 NEWTABLE                         R7 0 10
       94 MOVE                             R8 R3
       95 LOADK                            R9 K31 [".GridLine"]
       96 DUPTABLE                         R10 K35 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
       97 LOADN                            R11 0
       98 SETTABLEKS                       R11 R10 K32 ["BorderSizePixel"]
      100 LOADN                            R11 2
      101 SETTABLEKS                       R11 R10 K33 ["ZIndex"]
      103 LOADK                            R11 K36 ["$ColorGridLine"]
      104 SETTABLEKS                       R11 R10 K34 ["BackgroundColor3"]
      106 CALL                             R8 2 1
      107 MOVE                             R9 R3
      108 LOADK                            R10 K37 [".GridLabel"]
      109 DUPTABLE                         R11 K40 [{"BackgroundTransparency", "TextColor3"}]
      110 LOADN                            R12 1
      111 SETTABLEKS                       R12 R11 K38 ["BackgroundTransparency"]
      113 LOADK                            R12 K36 ["$ColorGridLine"]
      114 SETTABLEKS                       R12 R11 K39 ["TextColor3"]
      116 CALL                             R9 2 1
      117 MOVE                             R10 R3
      118 LOADK                            R11 K41 [".CurvePointOuter"]
      119 DUPTABLE                         R12 K45 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Size", "ZIndex"}]
      120 GETIMPORT                        R13 K48 [Vector2.new]
      122 LOADK                            R14 K49 [0.5]
      123 LOADK                            R15 K49 [0.5]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K42 ["AnchorPoint"]
      127 LOADN                            R13 1
      128 SETTABLEKS                       R13 R12 K38 ["BackgroundTransparency"]
      130 GETIMPORT                        R13 K50 [Color3.new]
      132 LOADN                            R14 0
      133 LOADN                            R15 0
      134 LOADN                            R16 0
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K43 ["ImageColor3"]
      138 GETIMPORT                        R13 K53 [UDim2.fromOffset]
      140 LOADN                            R14 14
      141 LOADN                            R15 14
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K44 ["Size"]
      145 LOADN                            R13 4
      146 SETTABLEKS                       R13 R12 K33 ["ZIndex"]
      148 NEWTABLE                         R13 0 1
      150 MOVE                             R14 R3
      151 LOADK                            R15 K54 [".Selected, .Hovered, .Pressed"]
      152 DUPTABLE                         R16 K56 [{"Image", "ImageColor3"}]
      153 LOADK                            R17 K57 ["rbxasset://textures/smallWhiteCircle.png"]
      154 SETTABLEKS                       R17 R16 K55 ["Image"]
      156 LOADK                            R17 K58 ["$ColorKeypointHighlight"]
      157 SETTABLEKS                       R17 R16 K43 ["ImageColor3"]
      159 CALL                             R14 2 -1
      160 SETLIST                          R13 R14 -1 [1]
      162 CALL                             R10 3 1
      163 MOVE                             R11 R3
      164 LOADK                            R12 K59 [".CurvePoint"]
      165 DUPTABLE                         R13 K61 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
      166 GETIMPORT                        R14 K48 [Vector2.new]
      168 LOADK                            R15 K49 [0.5]
      169 LOADK                            R16 K49 [0.5]
      170 CALL                             R14 2 1
      171 SETTABLEKS                       R14 R13 K42 ["AnchorPoint"]
      173 LOADN                            R14 1
      174 SETTABLEKS                       R14 R13 K38 ["BackgroundTransparency"]
      176 LOADK                            R14 K57 ["rbxasset://textures/smallWhiteCircle.png"]
      177 SETTABLEKS                       R14 R13 K55 ["Image"]
      179 LOADK                            R14 K62 ["$ColorKeypoint"]
      180 SETTABLEKS                       R14 R13 K43 ["ImageColor3"]
      182 GETIMPORT                        R14 K64 [UDim2.fromScale]
      184 LOADK                            R15 K49 [0.5]
      185 LOADK                            R16 K49 [0.5]
      186 CALL                             R14 2 1
      187 SETTABLEKS                       R14 R13 K60 ["Position"]
      189 GETIMPORT                        R14 K53 [UDim2.fromOffset]
      191 LOADN                            R15 10
      192 LOADN                            R16 10
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K44 ["Size"]
      196 LOADN                            R14 5
      197 SETTABLEKS                       R14 R13 K33 ["ZIndex"]
      199 NEWTABLE                         R14 0 2
      201 MOVE                             R15 R3
      202 LOADK                            R16 K65 [".Pressed"]
      203 DUPTABLE                         R17 K66 [{"ImageColor3"}]
      204 LOADK                            R18 K67 ["$ColorKeypointPressed"]
      205 SETTABLEKS                       R18 R17 K43 ["ImageColor3"]
      207 CALL                             R15 2 1
      208 MOVE                             R16 R3
      209 LOADK                            R17 K68 [".Hovered"]
      210 DUPTABLE                         R18 K66 [{"ImageColor3"}]
      211 LOADK                            R19 K69 ["$ColorKeypointHovered"]
      212 SETTABLEKS                       R19 R18 K43 ["ImageColor3"]
      214 CALL                             R16 2 -1
      215 SETLIST                          R14 R15 -1 [1]
      217 CALL                             R11 3 1
      218 MOVE                             R12 R3
      219 LOADK                            R13 K70 [".GhostPoint"]
      220 DUPTABLE                         R14 K72 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "Size", "ZIndex"}]
      221 GETIMPORT                        R15 K48 [Vector2.new]
      223 LOADK                            R16 K49 [0.5]
      224 LOADK                            R17 K49 [0.5]
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K42 ["AnchorPoint"]
      228 LOADN                            R15 1
      229 SETTABLEKS                       R15 R14 K38 ["BackgroundTransparency"]
      231 LOADK                            R15 K57 ["rbxasset://textures/smallWhiteCircle.png"]
      232 SETTABLEKS                       R15 R14 K55 ["Image"]
      234 LOADK                            R15 K36 ["$ColorGridLine"]
      235 SETTABLEKS                       R15 R14 K43 ["ImageColor3"]
      237 LOADK                            R15 K49 [0.5]
      238 SETTABLEKS                       R15 R14 K71 ["ImageTransparency"]
      240 GETIMPORT                        R15 K53 [UDim2.fromOffset]
      242 LOADN                            R16 6
      243 LOADN                            R17 6
      244 CALL                             R15 2 1
      245 SETTABLEKS                       R15 R14 K44 ["Size"]
      247 LOADN                            R15 4
      248 SETTABLEKS                       R15 R14 K33 ["ZIndex"]
      250 CALL                             R12 2 1
      251 MOVE                             R13 R3
      252 LOADK                            R14 K73 [".CurveLinePath2D"]
      253 DUPTABLE                         R15 K75 [{"ZIndex", "Thickness", "Color3"}]
      254 LOADN                            R16 4
      255 SETTABLEKS                       R16 R15 K33 ["ZIndex"]
      257 LOADN                            R16 2
      258 SETTABLEKS                       R16 R15 K74 ["Thickness"]
      260 LOADK                            R16 K76 ["$ColorCurve"]
      261 SETTABLEKS                       R16 R15 K26 ["Color3"]
      263 CALL                             R13 2 1
      264 MOVE                             R14 R3
      265 LOADK                            R15 K77 [".GhostLinePath2D"]
      266 DUPTABLE                         R16 K75 [{"ZIndex", "Thickness", "Color3"}]
      267 LOADN                            R17 4
      268 SETTABLEKS                       R17 R16 K33 ["ZIndex"]
      270 LOADN                            R17 1
      271 SETTABLEKS                       R17 R16 K74 ["Thickness"]
      273 LOADK                            R17 K78 ["$ColorCurveEnd"]
      274 SETTABLEKS                       R17 R16 K26 ["Color3"]
      276 CALL                             R14 2 1
      277 MOVE                             R15 R3
      278 LOADK                            R16 K79 [".ScrollbarFrame"]
      279 DUPTABLE                         R17 K80 [{"BackgroundTransparency", "BackgroundColor3"}]
      280 LOADK                            R18 K81 [0.6]
      281 SETTABLEKS                       R18 R17 K38 ["BackgroundTransparency"]
      283 GETIMPORT                        R18 K28 [Color3.fromRGB]
      285 LOADN                            R19 0
      286 LOADN                            R20 0
      287 LOADN                            R21 0
      288 CALL                             R18 3 1
      289 SETTABLEKS                       R18 R17 K34 ["BackgroundColor3"]
      291 CALL                             R15 2 1
      292 MOVE                             R16 R3
      293 LOADK                            R17 K82 [".ScrollbarButton"]
      294 DUPTABLE                         R18 K84 [{"BackgroundColor3", "BorderColor3", "TextColor3"}]
      295 LOADK                            R19 K85 ["$ColorScrollbarButton"]
      296 SETTABLEKS                       R19 R18 K34 ["BackgroundColor3"]
      298 LOADK                            R19 K86 ["$ColorScrollbarButtonBorder"]
      299 SETTABLEKS                       R19 R18 K83 ["BorderColor3"]
      301 LOADK                            R19 K87 ["$ColorScrollbarButtonText"]
      302 SETTABLEKS                       R19 R18 K39 ["TextColor3"]
      304 NEWTABLE                         R19 0 2
      306 MOVE                             R20 R3
      307 LOADK                            R21 K68 [".Hovered"]
      308 DUPTABLE                         R22 K88 [{"BackgroundColor3"}]
      309 LOADK                            R23 K89 ["$ColorScrollbarButtonHovered"]
      310 SETTABLEKS                       R23 R22 K34 ["BackgroundColor3"]
      312 CALL                             R20 2 1
      313 MOVE                             R21 R3
      314 LOADK                            R22 K65 [".Pressed"]
      315 DUPTABLE                         R23 K88 [{"BackgroundColor3"}]
      316 LOADK                            R24 K90 ["$ColorScrollbarButtonPressed"]
      317 SETTABLEKS                       R24 R23 K34 ["BackgroundColor3"]
      319 CALL                             R21 2 -1
      320 SETLIST                          R19 R20 -1 [1]
      322 CALL                             R16 3 1
      323 MOVE                             R17 R3
      324 LOADK                            R18 K91 ["TextLabel, TextButton, TextBox"]
      325 DUPTABLE                         R19 K94 [{"Font", "TextSize"}]
      326 GETIMPORT                        R20 K97 [Enum.Font.SourceSans]
      328 SETTABLEKS                       R20 R19 K92 ["Font"]
      330 LOADN                            R20 15
      331 SETTABLEKS                       R20 R19 K93 ["TextSize"]
      333 CALL                             R17 2 -1
      334 SETLIST                          R7 R8 -1 [1]
      336 MOVE                             R8 R4
      337 LOADK                            R9 K2 ["AttenuationCurveEditor"]
      338 MOVE                             R10 R7
      339 MOVE                             R11 R6
      340 CALL                             R8 3 -1
      341 RETURN                           R8 -1
