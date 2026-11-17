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
       96 DUPTABLE                         R10 K38 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundColor3"] = "$ColorGridLine"}]
       97 CALL                             R8 2 1
       98 MOVE                             R9 R3
       99 LOADK                            R10 K39 [".GridLabel"]
      100 DUPTABLE                         R11 K43 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorGridLine"}]
      101 CALL                             R9 2 1
      102 MOVE                             R10 R3
      103 LOADK                            R11 K44 [".CurvePointOuter"]
      104 DUPTABLE                         R12 K49 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Size"], ["ZIndex"] = 4}]
      105 GETIMPORT                        R13 K52 [Vector2.new]
      107 LOADK                            R14 K53 [0.5]
      108 LOADK                            R15 K53 [0.5]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K45 ["AnchorPoint"]
      112 GETIMPORT                        R13 K54 [Color3.new]
      114 LOADN                            R14 0
      115 LOADN                            R15 0
      116 LOADN                            R16 0
      117 CALL                             R13 3 1
      118 SETTABLEKS                       R13 R12 K46 ["ImageColor3"]
      120 GETIMPORT                        R13 K57 [UDim2.fromOffset]
      122 LOADN                            R14 14
      123 LOADN                            R15 14
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K47 ["Size"]
      127 NEWTABLE                         R13 0 1
      129 MOVE                             R14 R3
      130 LOADK                            R15 K58 [".Selected, .Hovered, .Pressed"]
      131 DUPTABLE                         R16 K62 [{["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorKeypointHighlight"}]
      132 CALL                             R14 2 -1
      133 SETLIST                          R13 R14 -1 [1]
      135 CALL                             R10 3 1
      136 MOVE                             R11 R3
      137 LOADK                            R12 K63 [".CurvePoint"]
      138 DUPTABLE                         R13 K67 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorKeypoint", ["Position"], ["Size"], ["ZIndex"] = 5}]
      139 GETIMPORT                        R14 K52 [Vector2.new]
      141 LOADK                            R15 K53 [0.5]
      142 LOADK                            R16 K53 [0.5]
      143 CALL                             R14 2 1
      144 SETTABLEKS                       R14 R13 K45 ["AnchorPoint"]
      146 GETIMPORT                        R14 K69 [UDim2.fromScale]
      148 LOADK                            R15 K53 [0.5]
      149 LOADK                            R16 K53 [0.5]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K65 ["Position"]
      153 GETIMPORT                        R14 K57 [UDim2.fromOffset]
      155 LOADN                            R15 10
      156 LOADN                            R16 10
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K47 ["Size"]
      160 NEWTABLE                         R14 0 2
      162 MOVE                             R15 R3
      163 LOADK                            R16 K70 [".Pressed"]
      164 DUPTABLE                         R17 K72 [{["ImageColor3"] = "$ColorKeypointPressed"}]
      165 CALL                             R15 2 1
      166 MOVE                             R16 R3
      167 LOADK                            R17 K73 [".Hovered"]
      168 DUPTABLE                         R18 K75 [{["ImageColor3"] = "$ColorKeypointHovered"}]
      169 CALL                             R16 2 -1
      170 SETLIST                          R14 R15 -1 [1]
      172 CALL                             R11 3 1
      173 MOVE                             R12 R3
      174 LOADK                            R13 K76 [".GhostPoint"]
      175 DUPTABLE                         R14 K78 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorGridLine", ["ImageTransparency"] = 0.5, ["Size"], ["ZIndex"] = 4}]
      176 GETIMPORT                        R15 K52 [Vector2.new]
      178 LOADK                            R16 K53 [0.5]
      179 LOADK                            R17 K53 [0.5]
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K45 ["AnchorPoint"]
      183 GETIMPORT                        R15 K57 [UDim2.fromOffset]
      185 LOADN                            R16 6
      186 LOADN                            R17 6
      187 CALL                             R15 2 1
      188 SETTABLEKS                       R15 R14 K47 ["Size"]
      190 CALL                             R12 2 1
      191 MOVE                             R13 R3
      192 LOADK                            R14 K79 [".CurveLinePath2D"]
      193 DUPTABLE                         R15 K82 [{["ZIndex"] = 4, ["Thickness"] = 2, ["Color3"] = "$ColorCurve"}]
      194 CALL                             R13 2 1
      195 MOVE                             R14 R3
      196 LOADK                            R15 K83 [".GhostLinePath2D"]
      197 DUPTABLE                         R16 K85 [{["ZIndex"] = 4, ["Thickness"] = 1, ["Color3"] = "$ColorCurveEnd"}]
      198 CALL                             R14 2 1
      199 MOVE                             R15 R3
      200 LOADK                            R16 K86 [".ScrollbarFrame"]
      201 DUPTABLE                         R17 K88 [{["BackgroundTransparency"] = 0.6, ["BackgroundColor3"]}]
      202 GETIMPORT                        R18 K28 [Color3.fromRGB]
      204 LOADN                            R19 0
      205 LOADN                            R20 0
      206 LOADN                            R21 0
      207 CALL                             R18 3 1
      208 SETTABLEKS                       R18 R17 K36 ["BackgroundColor3"]
      210 CALL                             R15 2 1
      211 MOVE                             R16 R3
      212 LOADK                            R17 K89 [".ScrollbarButton"]
      213 DUPTABLE                         R18 K94 [{["BackgroundColor3"] = "$ColorScrollbarButton", ["BorderColor3"] = "$ColorScrollbarButtonBorder", ["TextColor3"] = "$ColorScrollbarButtonText"}]
      214 NEWTABLE                         R19 0 2
      216 MOVE                             R20 R3
      217 LOADK                            R21 K73 [".Hovered"]
      218 DUPTABLE                         R22 K96 [{["BackgroundColor3"] = "$ColorScrollbarButtonHovered"}]
      219 CALL                             R20 2 1
      220 MOVE                             R21 R3
      221 LOADK                            R22 K70 [".Pressed"]
      222 DUPTABLE                         R23 K98 [{["BackgroundColor3"] = "$ColorScrollbarButtonPressed"}]
      223 CALL                             R21 2 -1
      224 SETLIST                          R19 R20 -1 [1]
      226 CALL                             R16 3 1
      227 MOVE                             R17 R3
      228 LOADK                            R18 K99 ["TextLabel, TextButton, TextBox"]
      229 DUPTABLE                         R19 K103 [{["Font"], ["TextSize"] = 15}]
      230 GETIMPORT                        R20 K106 [Enum.Font.SourceSans]
      232 SETTABLEKS                       R20 R19 K100 ["Font"]
      234 CALL                             R17 2 -1
      235 SETLIST                          R7 R8 -1 [1]
      237 MOVE                             R8 R4
      238 LOADK                            R9 K2 ["AttenuationCurveEditor"]
      239 MOVE                             R10 R7
      240 MOVE                             R11 R6
      241 CALL                             R8 3 -1
      242 RETURN                           R8 -1
