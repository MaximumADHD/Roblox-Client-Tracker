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
      103 DUPTABLE                         R9 K37 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundColor3"] = "$ColorGridLine"}]
      104 CALL                             R7 2 1
      105 MOVE                             R8 R2
      106 LOADK                            R9 K38 [".GridLabel"]
      107 DUPTABLE                         R10 K42 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorGridLine"}]
      108 CALL                             R8 2 1
      109 MOVE                             R9 R2
      110 LOADK                            R10 K43 [".AnalyzerCurve"]
      111 DUPTABLE                         R11 K47 [{["ZIndex"] = 10, ["Color3"] = "$ColorAnalyzerCurve", ["Thickness"] = 1}]
      112 CALL                             R9 2 1
      113 MOVE                             R10 R2
      114 LOADK                            R11 K48 [".FullCurve"]
      115 DUPTABLE                         R12 K50 [{["ZIndex"] = 10, ["Color3"] = "$ColorFullCurve", ["Thickness"] = 2}]
      116 CALL                             R10 2 1
      117 MOVE                             R11 R2
      118 LOADK                            R12 K51 [".FullCurveDisabled"]
      119 DUPTABLE                         R13 K53 [{["ZIndex"] = 10, ["Color3"] = "$ColorFullCurveDisabled", ["Thickness"] = 2}]
      120 CALL                             R11 2 1
      121 MOVE                             R12 R2
      122 LOADK                            R13 K54 [".Curve"]
      123 DUPTABLE                         R14 K57 [{["ZIndex"] = 9, ["Color3"] = "$ColorCurve", ["Thickness"] = 1}]
      124 CALL                             R12 2 1
      125 MOVE                             R13 R2
      126 LOADK                            R14 K58 [".ControlPoint"]
      127 DUPTABLE                         R15 K66 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorControlPoint", ["Size"], ["ZIndex"] = 20}]
      128 GETIMPORT                        R16 K69 [Vector2.new]
      130 LOADK                            R17 K70 [0.5]
      131 LOADK                            R18 K70 [0.5]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R15 K59 ["AnchorPoint"]
      135 GETIMPORT                        R16 K73 [UDim2.fromOffset]
      137 LOADN                            R17 24
      138 LOADN                            R18 24
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K64 ["Size"]
      142 NEWTABLE                         R16 0 4
      144 MOVE                             R17 R2
      145 LOADK                            R18 K74 ["> ImageLabel"]
      146 DUPTABLE                         R19 K79 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageTransparency"] = 0.6, ["Position"], ["Size"], ["ZIndex"] = 21}]
      147 GETIMPORT                        R20 K81 [UDim2.fromScale]
      149 LOADK                            R21 K82 [0.1]
      150 LOADK                            R22 K82 [0.1]
      151 CALL                             R20 2 1
      152 SETTABLEKS                       R20 R19 K77 ["Position"]
      154 GETIMPORT                        R20 K81 [UDim2.fromScale]
      156 LOADK                            R21 K83 [0.8]
      157 LOADK                            R22 K83 [0.8]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K64 ["Size"]
      161 CALL                             R17 2 1
      162 MOVE                             R18 R2
      163 LOADK                            R19 K84 ["> TextLabel"]
      164 DUPTABLE                         R20 K89 [{["BackgroundTransparency"] = 1, ["FontFace"], ["Position"], ["Size"], ["TextSize"] = 18, ["ZIndex"] = 22}]
      165 GETIMPORT                        R21 K91 [Font.new]
      167 LOADK                            R22 K92 ["rbxasset://fonts/families/Montserrat.json"]
      168 GETIMPORT                        R23 K96 [Enum.FontWeight.Bold]
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K85 ["FontFace"]
      173 GETIMPORT                        R21 K81 [UDim2.fromScale]
      175 LOADK                            R22 K82 [0.1]
      176 LOADK                            R23 K82 [0.1]
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K77 ["Position"]
      180 GETIMPORT                        R21 K81 [UDim2.fromScale]
      182 LOADK                            R22 K83 [0.8]
      183 LOADK                            R23 K83 [0.8]
      184 CALL                             R21 2 1
      185 SETTABLEKS                       R21 R20 K64 ["Size"]
      187 CALL                             R18 2 1
      188 MOVE                             R19 R2
      189 LOADK                            R20 K97 [".Hovered"]
      190 DUPTABLE                         R21 K99 [{["ImageColor3"] = "$ColorControlPointHovered"}]
      191 CALL                             R19 2 1
      192 MOVE                             R20 R2
      193 LOADK                            R21 K100 [".Pressed"]
      194 DUPTABLE                         R22 K102 [{["ImageColor3"] = "$ColorControlPointPressed"}]
      195 CALL                             R20 2 -1
      196 SETLIST                          R16 R17 -1 [1]
      198 CALL                             R13 3 1
      199 MOVE                             R14 R2
      200 LOADK                            R15 K103 ["TextLabel, TextButton, TextBox"]
      201 DUPTABLE                         R16 K105 [{["Font"], ["TextSize"] = 15}]
      202 GETIMPORT                        R17 K107 [Enum.Font.SourceSans]
      204 SETTABLEKS                       R17 R16 K90 ["Font"]
      206 CALL                             R14 2 -1
      207 SETLIST                          R6 R7 -1 [1]
      209 MOVE                             R7 R3
      210 LOADK                            R8 K2 ["AudioEqualizerEditor"]
      211 MOVE                             R9 R6
      212 MOVE                             R10 R5
      213 CALL                             R7 3 -1
      214 RETURN                           R7 -1
