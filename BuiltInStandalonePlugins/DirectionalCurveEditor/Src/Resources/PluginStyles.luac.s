MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R2 R0 K9 ["Packages"]
       20 GETTABLEKS                       R2 R2 K10 ["Framework"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K11 ["Styling"]
       25 GETTABLEKS                       R2 R2 K12 ["createStyleRule"]
       27 GETTABLEKS                       R3 R1 K11 ["Styling"]
       29 GETTABLEKS                       R3 R3 K13 ["createStyleSheet"]
       31 GETIMPORT                        R4 K15 [game]
       33 LOADK                            R6 K16 ["ImprovedCursors"]
       34 NAMECALL                         R4 R4 K17 ["GetFastFlag"]
       36 CALL                             R4 2 1
       37 DUPTABLE                         R5 K27 [{"ColorCurve", "ColorCurveEnd", "ColorKeypoint", "ColorKeypointSelected", "ColorControlPoint", "ColorControlPointSelected", "ColorControlPointHovered", "ColorControlPointPressed", "CursorOpenedHand"}]
       38 GETIMPORT                        R6 K30 [Color3.fromRGB]
       40 LOADN                            R7 255
       41 LOADN                            R8 100
       42 LOADN                            R9 100
       43 CALL                             R6 3 1
       44 SETTABLEKS                       R6 R5 K18 ["ColorCurve"]
       46 GETIMPORT                        R6 K30 [Color3.fromRGB]
       48 LOADN                            R7 150
       49 LOADN                            R8 150
       50 LOADN                            R9 150
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K19 ["ColorCurveEnd"]
       54 GETIMPORT                        R6 K30 [Color3.fromRGB]
       56 LOADN                            R7 252
       57 LOADN                            R8 116
       58 LOADN                            R9 116
       59 CALL                             R6 3 1
       60 SETTABLEKS                       R6 R5 K20 ["ColorKeypoint"]
       62 GETIMPORT                        R6 K30 [Color3.fromRGB]
       64 LOADN                            R7 255
       65 LOADN                            R8 0
       66 LOADN                            R9 0
       67 CALL                             R6 3 1
       68 SETTABLEKS                       R6 R5 K21 ["ColorKeypointSelected"]
       70 GETIMPORT                        R6 K30 [Color3.fromRGB]
       72 LOADN                            R7 225
       73 LOADN                            R8 100
       74 LOADN                            R9 100
       75 CALL                             R6 3 1
       76 SETTABLEKS                       R6 R5 K22 ["ColorControlPoint"]
       78 GETIMPORT                        R6 K30 [Color3.fromRGB]
       80 LOADN                            R7 255
       81 LOADN                            R8 200
       82 LOADN                            R9 150
       83 CALL                             R6 3 1
       84 SETTABLEKS                       R6 R5 K23 ["ColorControlPointSelected"]
       86 GETIMPORT                        R6 K30 [Color3.fromRGB]
       88 LOADN                            R7 255
       89 LOADN                            R8 150
       90 LOADN                            R9 150
       91 CALL                             R6 3 1
       92 SETTABLEKS                       R6 R5 K24 ["ColorControlPointHovered"]
       94 GETIMPORT                        R6 K30 [Color3.fromRGB]
       96 LOADN                            R7 150
       97 LOADN                            R8 50
       98 LOADN                            R9 50
       99 CALL                             R6 3 1
      100 SETTABLEKS                       R6 R5 K25 ["ColorControlPointPressed"]
      102 JUMPIFNOT                        R4 ; [+2]
      103 LOADK                            R6 K31 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
      104 JUMP                             ; [+1]
      105 LOADK                            R6 K32 ["rbxasset://textures/advCursor-openedHand.png"]
      106 SETTABLEKS                       R6 R5 K26 ["CursorOpenedHand"]
      108 NEWTABLE                         R6 0 8
      110 MOVE                             R7 R2
      111 LOADK                            R8 K33 [".GridLine"]
      112 DUPTABLE                         R9 K37 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
      113 LOADN                            R10 0
      114 SETTABLEKS                       R10 R9 K34 ["BorderSizePixel"]
      116 LOADN                            R10 2
      117 SETTABLEKS                       R10 R9 K35 ["ZIndex"]
      119 LOADK                            R10 K38 ["$ColorGridLine"]
      120 SETTABLEKS                       R10 R9 K36 ["BackgroundColor3"]
      122 CALL                             R7 2 1
      123 MOVE                             R8 R2
      124 LOADK                            R9 K39 [".GridLinePath2D"]
      125 DUPTABLE                         R10 K41 [{"ZIndex", "Thickness", "Color3"}]
      126 LOADN                            R11 255
      127 SETTABLEKS                       R11 R10 K35 ["ZIndex"]
      129 LOADN                            R11 1
      130 SETTABLEKS                       R11 R10 K40 ["Thickness"]
      132 LOADK                            R11 K42 ["$ColorGridLinePath"]
      133 SETTABLEKS                       R11 R10 K28 ["Color3"]
      135 CALL                             R8 2 1
      136 MOVE                             R9 R2
      137 LOADK                            R10 K43 [".GridLabel"]
      138 DUPTABLE                         R11 K46 [{"BackgroundTransparency", "TextColor3"}]
      139 LOADN                            R12 1
      140 SETTABLEKS                       R12 R11 K44 ["BackgroundTransparency"]
      142 LOADK                            R12 K38 ["$ColorGridLine"]
      143 SETTABLEKS                       R12 R11 K45 ["TextColor3"]
      145 CALL                             R9 2 1
      146 MOVE                             R10 R2
      147 LOADK                            R11 K47 [".CurveLinePath2D"]
      148 DUPTABLE                         R12 K41 [{"ZIndex", "Thickness", "Color3"}]
      149 LOADN                            R13 4
      150 SETTABLEKS                       R13 R12 K35 ["ZIndex"]
      152 LOADN                            R13 2
      153 SETTABLEKS                       R13 R12 K40 ["Thickness"]
      155 LOADK                            R13 K48 ["$ColorCurve"]
      156 SETTABLEKS                       R13 R12 K28 ["Color3"]
      158 CALL                             R10 2 1
      159 MOVE                             R11 R2
      160 LOADK                            R12 K49 [".EndLinePath2D"]
      161 DUPTABLE                         R13 K41 [{"ZIndex", "Thickness", "Color3"}]
      162 LOADN                            R14 4
      163 SETTABLEKS                       R14 R13 K35 ["ZIndex"]
      165 LOADN                            R14 1
      166 SETTABLEKS                       R14 R13 K40 ["Thickness"]
      168 LOADK                            R14 K50 ["$ColorCurveEnd"]
      169 SETTABLEKS                       R14 R13 K28 ["Color3"]
      171 CALL                             R11 2 1
      172 MOVE                             R12 R2
      173 LOADK                            R13 K51 ["TextLabel, TextButton, TextBox"]
      174 DUPTABLE                         R14 K54 [{"Font", "TextSize"}]
      175 GETIMPORT                        R15 K57 [Enum.Font.SourceSans]
      177 SETTABLEKS                       R15 R14 K52 ["Font"]
      179 LOADN                            R15 15
      180 SETTABLEKS                       R15 R14 K53 ["TextSize"]
      182 CALL                             R12 2 1
      183 MOVE                             R13 R2
      184 LOADK                            R14 K58 [".CurvePointOuter"]
      185 DUPTABLE                         R15 K62 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Size", "ZIndex"}]
      186 GETIMPORT                        R16 K65 [Vector2.new]
      188 LOADK                            R17 K66 [0.5]
      189 LOADK                            R18 K66 [0.5]
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K59 ["AnchorPoint"]
      193 LOADN                            R16 1
      194 SETTABLEKS                       R16 R15 K44 ["BackgroundTransparency"]
      196 GETIMPORT                        R16 K67 [Color3.new]
      198 LOADN                            R17 0
      199 LOADN                            R18 0
      200 LOADN                            R19 0
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K60 ["ImageColor3"]
      204 GETIMPORT                        R16 K70 [UDim2.fromOffset]
      206 LOADN                            R17 14
      207 LOADN                            R18 14
      208 CALL                             R16 2 1
      209 SETTABLEKS                       R16 R15 K61 ["Size"]
      211 LOADN                            R16 4
      212 SETTABLEKS                       R16 R15 K35 ["ZIndex"]
      214 NEWTABLE                         R16 0 1
      216 MOVE                             R17 R2
      217 LOADK                            R18 K71 [".Selected, .Hovered, .Pressed"]
      218 DUPTABLE                         R19 K73 [{"Image", "ImageColor3"}]
      219 LOADK                            R20 K74 ["rbxasset://textures/smallWhiteCircle.png"]
      220 SETTABLEKS                       R20 R19 K72 ["Image"]
      222 LOADK                            R20 K75 ["$ColorControlPointHighlight"]
      223 SETTABLEKS                       R20 R19 K60 ["ImageColor3"]
      225 CALL                             R17 2 -1
      226 SETLIST                          R16 R17 -1 [1]
      228 CALL                             R13 3 1
      229 MOVE                             R14 R2
      230 LOADK                            R15 K76 [".CurvePoint"]
      231 DUPTABLE                         R16 K78 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Position", "Size", "ZIndex"}]
      232 GETIMPORT                        R17 K65 [Vector2.new]
      234 LOADK                            R18 K66 [0.5]
      235 LOADK                            R19 K66 [0.5]
      236 CALL                             R17 2 1
      237 SETTABLEKS                       R17 R16 K59 ["AnchorPoint"]
      239 LOADN                            R17 1
      240 SETTABLEKS                       R17 R16 K44 ["BackgroundTransparency"]
      242 LOADK                            R17 K74 ["rbxasset://textures/smallWhiteCircle.png"]
      243 SETTABLEKS                       R17 R16 K72 ["Image"]
      245 LOADK                            R17 K79 ["$ColorControlPoint"]
      246 SETTABLEKS                       R17 R16 K60 ["ImageColor3"]
      248 GETIMPORT                        R17 K81 [UDim2.fromScale]
      250 LOADK                            R18 K66 [0.5]
      251 LOADK                            R19 K66 [0.5]
      252 CALL                             R17 2 1
      253 SETTABLEKS                       R17 R16 K77 ["Position"]
      255 GETIMPORT                        R17 K70 [UDim2.fromOffset]
      257 LOADN                            R18 10
      258 LOADN                            R19 10
      259 CALL                             R17 2 1
      260 SETTABLEKS                       R17 R16 K61 ["Size"]
      262 LOADN                            R17 5
      263 SETTABLEKS                       R17 R16 K35 ["ZIndex"]
      265 NEWTABLE                         R17 0 2
      267 MOVE                             R18 R2
      268 LOADK                            R19 K82 [".Pressed"]
      269 DUPTABLE                         R20 K83 [{"ImageColor3"}]
      270 LOADK                            R21 K84 ["$ColorControlPointPressed"]
      271 SETTABLEKS                       R21 R20 K60 ["ImageColor3"]
      273 CALL                             R18 2 1
      274 MOVE                             R19 R2
      275 LOADK                            R20 K85 [".Hovered"]
      276 DUPTABLE                         R21 K83 [{"ImageColor3"}]
      277 LOADK                            R22 K86 ["$ColorControlPointHovered"]
      278 SETTABLEKS                       R22 R21 K60 ["ImageColor3"]
      280 CALL                             R19 2 -1
      281 SETLIST                          R17 R18 -1 [1]
      283 CALL                             R14 3 -1
      284 SETLIST                          R6 R7 -1 [1]
      286 MOVE                             R7 R3
      287 LOADK                            R8 K2 ["DirectionalCurveEditor"]
      288 MOVE                             R9 R6
      289 MOVE                             R10 R5
      290 CALL                             R7 3 -1
      291 RETURN                           R7 -1
