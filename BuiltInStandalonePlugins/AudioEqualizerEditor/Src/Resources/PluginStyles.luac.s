MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
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
       28 DUPTABLE                         R5 K24 [{"ColorControlPoint", "ColorControlPointHovered", "ColorControlPointPressed", "ColorAnalyzerCurve", "ColorFullCurve", "ColorFullCurveDisabled", "ColorCurve", "ColorGridLine", "CursorOpenedHand"}]
       29 GETIMPORT                        R6 K27 [Color3.fromRGB]
       31 LOADN                            R7 255
       32 LOADN                            R8 100
       33 LOADN                            R9 100
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K15 ["ColorControlPoint"]
       37 GETIMPORT                        R6 K27 [Color3.fromRGB]
       39 LOADN                            R7 175
       40 LOADN                            R8 70
       41 LOADN                            R9 75
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K16 ["ColorControlPointHovered"]
       45 GETIMPORT                        R6 K27 [Color3.fromRGB]
       47 LOADN                            R7 100
       48 LOADN                            R8 30
       49 LOADN                            R9 50
       50 CALL                             R6 3 1
       51 SETTABLEKS                       R6 R5 K17 ["ColorControlPointPressed"]
       53 GETIMPORT                        R6 K27 [Color3.fromRGB]
       55 LOADN                            R7 200
       56 LOADN                            R8 150
       57 LOADN                            R9 75
       58 CALL                             R6 3 1
       59 SETTABLEKS                       R6 R5 K18 ["ColorAnalyzerCurve"]
       61 GETIMPORT                        R6 K27 [Color3.fromRGB]
       63 LOADN                            R7 255
       64 LOADN                            R8 100
       65 LOADN                            R9 100
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K19 ["ColorFullCurve"]
       69 GETIMPORT                        R6 K27 [Color3.fromRGB]
       71 LOADN                            R7 155
       72 LOADN                            R8 100
       73 LOADN                            R9 100
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K20 ["ColorFullCurveDisabled"]
       77 GETIMPORT                        R6 K27 [Color3.fromRGB]
       79 LOADN                            R7 155
       80 LOADN                            R8 155
       81 LOADN                            R9 155
       82 CALL                             R6 3 1
       83 SETTABLEKS                       R6 R5 K21 ["ColorCurve"]
       85 GETIMPORT                        R6 K27 [Color3.fromRGB]
       87 LOADN                            R7 155
       88 LOADN                            R8 155
       89 LOADN                            R9 155
       90 CALL                             R6 3 1
       91 SETTABLEKS                       R6 R5 K22 ["ColorGridLine"]
       93 JUMPIFNOT                        R4 ; [+2]
       94 LOADK                            R6 K28 ["rbxasset://textures/Cursors/DragDetector/HoverCursor.png"]
       95 JUMP                             ; [+1]
       96 LOADK                            R6 K29 ["rbxasset://textures/advCursor-openedHand.png"]
       97 SETTABLEKS                       R6 R5 K23 ["CursorOpenedHand"]
       99 NEWTABLE                         R6 0 8
      101 MOVE                             R7 R2
      102 LOADK                            R8 K30 [".GridLine"]
      103 DUPTABLE                         R9 K34 [{"BorderSizePixel", "ZIndex", "BackgroundColor3"}]
      104 LOADN                            R10 0
      105 SETTABLEKS                       R10 R9 K31 ["BorderSizePixel"]
      107 LOADN                            R10 2
      108 SETTABLEKS                       R10 R9 K32 ["ZIndex"]
      110 LOADK                            R10 K35 ["$ColorGridLine"]
      111 SETTABLEKS                       R10 R9 K33 ["BackgroundColor3"]
      113 CALL                             R7 2 1
      114 MOVE                             R8 R2
      115 LOADK                            R9 K36 [".GridLabel"]
      116 DUPTABLE                         R10 K39 [{"BackgroundTransparency", "TextColor3"}]
      117 LOADN                            R11 1
      118 SETTABLEKS                       R11 R10 K37 ["BackgroundTransparency"]
      120 LOADK                            R11 K35 ["$ColorGridLine"]
      121 SETTABLEKS                       R11 R10 K38 ["TextColor3"]
      123 CALL                             R8 2 1
      124 MOVE                             R9 R2
      125 LOADK                            R10 K40 [".AnalyzerCurve"]
      126 DUPTABLE                         R11 K42 [{"ZIndex", "Color3", "Thickness"}]
      127 LOADN                            R12 10
      128 SETTABLEKS                       R12 R11 K32 ["ZIndex"]
      130 LOADK                            R12 K43 ["$ColorAnalyzerCurve"]
      131 SETTABLEKS                       R12 R11 K25 ["Color3"]
      133 LOADN                            R12 1
      134 SETTABLEKS                       R12 R11 K41 ["Thickness"]
      136 CALL                             R9 2 1
      137 MOVE                             R10 R2
      138 LOADK                            R11 K44 [".FullCurve"]
      139 DUPTABLE                         R12 K42 [{"ZIndex", "Color3", "Thickness"}]
      140 LOADN                            R13 10
      141 SETTABLEKS                       R13 R12 K32 ["ZIndex"]
      143 LOADK                            R13 K45 ["$ColorFullCurve"]
      144 SETTABLEKS                       R13 R12 K25 ["Color3"]
      146 LOADN                            R13 2
      147 SETTABLEKS                       R13 R12 K41 ["Thickness"]
      149 CALL                             R10 2 1
      150 MOVE                             R11 R2
      151 LOADK                            R12 K46 [".FullCurveDisabled"]
      152 DUPTABLE                         R13 K42 [{"ZIndex", "Color3", "Thickness"}]
      153 LOADN                            R14 10
      154 SETTABLEKS                       R14 R13 K32 ["ZIndex"]
      156 LOADK                            R14 K47 ["$ColorFullCurveDisabled"]
      157 SETTABLEKS                       R14 R13 K25 ["Color3"]
      159 LOADN                            R14 2
      160 SETTABLEKS                       R14 R13 K41 ["Thickness"]
      162 CALL                             R11 2 1
      163 MOVE                             R12 R2
      164 LOADK                            R13 K48 [".Curve"]
      165 DUPTABLE                         R14 K42 [{"ZIndex", "Color3", "Thickness"}]
      166 LOADN                            R15 9
      167 SETTABLEKS                       R15 R14 K32 ["ZIndex"]
      169 LOADK                            R15 K49 ["$ColorCurve"]
      170 SETTABLEKS                       R15 R14 K25 ["Color3"]
      172 LOADN                            R15 1
      173 SETTABLEKS                       R15 R14 K41 ["Thickness"]
      175 CALL                             R12 2 1
      176 MOVE                             R13 R2
      177 LOADK                            R14 K50 [".ControlPoint"]
      178 DUPTABLE                         R15 K55 [{"AnchorPoint", "BackgroundTransparency", "Image", "ImageColor3", "Size", "ZIndex"}]
      179 GETIMPORT                        R16 K58 [Vector2.new]
      181 LOADK                            R17 K59 [0.5]
      182 LOADK                            R18 K59 [0.5]
      183 CALL                             R16 2 1
      184 SETTABLEKS                       R16 R15 K51 ["AnchorPoint"]
      186 LOADN                            R16 1
      187 SETTABLEKS                       R16 R15 K37 ["BackgroundTransparency"]
      189 LOADK                            R16 K60 ["rbxasset://textures/smallWhiteCircle.png"]
      190 SETTABLEKS                       R16 R15 K52 ["Image"]
      192 LOADK                            R16 K61 ["$ColorControlPoint"]
      193 SETTABLEKS                       R16 R15 K53 ["ImageColor3"]
      195 GETIMPORT                        R16 K64 [UDim2.fromOffset]
      197 LOADN                            R17 24
      198 LOADN                            R18 24
      199 CALL                             R16 2 1
      200 SETTABLEKS                       R16 R15 K54 ["Size"]
      202 LOADN                            R16 20
      203 SETTABLEKS                       R16 R15 K32 ["ZIndex"]
      205 NEWTABLE                         R16 0 4
      207 MOVE                             R17 R2
      208 LOADK                            R18 K65 ["> ImageLabel"]
      209 DUPTABLE                         R19 K68 [{"BackgroundTransparency", "Image", "ImageTransparency", "Position", "Size", "ZIndex"}]
      210 LOADN                            R20 1
      211 SETTABLEKS                       R20 R19 K37 ["BackgroundTransparency"]
      213 LOADK                            R20 K60 ["rbxasset://textures/smallWhiteCircle.png"]
      214 SETTABLEKS                       R20 R19 K52 ["Image"]
      216 LOADK                            R20 K69 [0.6]
      217 SETTABLEKS                       R20 R19 K66 ["ImageTransparency"]
      219 GETIMPORT                        R20 K71 [UDim2.fromScale]
      221 LOADK                            R21 K72 [0.1]
      222 LOADK                            R22 K72 [0.1]
      223 CALL                             R20 2 1
      224 SETTABLEKS                       R20 R19 K67 ["Position"]
      226 GETIMPORT                        R20 K71 [UDim2.fromScale]
      228 LOADK                            R21 K73 [0.8]
      229 LOADK                            R22 K73 [0.8]
      230 CALL                             R20 2 1
      231 SETTABLEKS                       R20 R19 K54 ["Size"]
      233 LOADN                            R20 21
      234 SETTABLEKS                       R20 R19 K32 ["ZIndex"]
      236 CALL                             R17 2 1
      237 MOVE                             R18 R2
      238 LOADK                            R19 K74 ["> TextLabel"]
      239 DUPTABLE                         R20 K77 [{"BackgroundTransparency", "FontFace", "Position", "Size", "TextSize", "ZIndex"}]
      240 LOADN                            R21 1
      241 SETTABLEKS                       R21 R20 K37 ["BackgroundTransparency"]
      243 GETIMPORT                        R21 K79 [Font.new]
      245 LOADK                            R22 K80 ["rbxasset://fonts/families/Montserrat.json"]
      246 GETIMPORT                        R23 K84 [Enum.FontWeight.Bold]
      248 CALL                             R21 2 1
      249 SETTABLEKS                       R21 R20 K75 ["FontFace"]
      251 GETIMPORT                        R21 K71 [UDim2.fromScale]
      253 LOADK                            R22 K72 [0.1]
      254 LOADK                            R23 K72 [0.1]
      255 CALL                             R21 2 1
      256 SETTABLEKS                       R21 R20 K67 ["Position"]
      258 GETIMPORT                        R21 K71 [UDim2.fromScale]
      260 LOADK                            R22 K73 [0.8]
      261 LOADK                            R23 K73 [0.8]
      262 CALL                             R21 2 1
      263 SETTABLEKS                       R21 R20 K54 ["Size"]
      265 LOADN                            R21 18
      266 SETTABLEKS                       R21 R20 K76 ["TextSize"]
      268 LOADN                            R21 22
      269 SETTABLEKS                       R21 R20 K32 ["ZIndex"]
      271 CALL                             R18 2 1
      272 MOVE                             R19 R2
      273 LOADK                            R20 K85 [".Hovered"]
      274 DUPTABLE                         R21 K86 [{"ImageColor3"}]
      275 LOADK                            R22 K87 ["$ColorControlPointHovered"]
      276 SETTABLEKS                       R22 R21 K53 ["ImageColor3"]
      278 CALL                             R19 2 1
      279 MOVE                             R20 R2
      280 LOADK                            R21 K88 [".Pressed"]
      281 DUPTABLE                         R22 K86 [{"ImageColor3"}]
      282 LOADK                            R23 K89 ["$ColorControlPointPressed"]
      283 SETTABLEKS                       R23 R22 K53 ["ImageColor3"]
      285 CALL                             R20 2 -1
      286 SETLIST                          R16 R17 -1 [1]
      288 CALL                             R13 3 1
      289 MOVE                             R14 R2
      290 LOADK                            R15 K90 ["TextLabel, TextButton, TextBox"]
      291 DUPTABLE                         R16 K91 [{"Font", "TextSize"}]
      292 GETIMPORT                        R17 K93 [Enum.Font.SourceSans]
      294 SETTABLEKS                       R17 R16 K78 ["Font"]
      296 LOADN                            R17 15
      297 SETTABLEKS                       R17 R16 K76 ["TextSize"]
      299 CALL                             R14 2 -1
      300 SETLIST                          R6 R7 -1 [1]
      302 MOVE                             R7 R3
      303 LOADK                            R8 K2 ["AudioEqualizerEditor"]
      304 MOVE                             R9 R6
      305 MOVE                             R10 R5
      306 CALL                             R7 3 -1
      307 RETURN                           R7 -1
