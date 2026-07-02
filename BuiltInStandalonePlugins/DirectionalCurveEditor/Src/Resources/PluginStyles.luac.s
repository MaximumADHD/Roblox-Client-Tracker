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
      112 DUPTABLE                         R9 K40 [{["BorderSizePixel"] = 0, ["ZIndex"] = 2, ["BackgroundColor3"] = "$ColorGridLine"}]
      113 CALL                             R7 2 1
      114 MOVE                             R8 R2
      115 LOADK                            R9 K41 [".GridLinePath2D"]
      116 DUPTABLE                         R10 K46 [{["ZIndex"] = -1, ["Thickness"] = 1, ["Color3"] = "$ColorGridLinePath"}]
      117 CALL                             R8 2 1
      118 MOVE                             R9 R2
      119 LOADK                            R10 K47 [".GridLabel"]
      120 DUPTABLE                         R11 K50 [{["BackgroundTransparency"] = 1, ["TextColor3"] = "$ColorGridLine"}]
      121 CALL                             R9 2 1
      122 MOVE                             R10 R2
      123 LOADK                            R11 K51 [".CurveLinePath2D"]
      124 DUPTABLE                         R12 K54 [{["ZIndex"] = 4, ["Thickness"] = 2, ["Color3"] = "$ColorCurve"}]
      125 CALL                             R10 2 1
      126 MOVE                             R11 R2
      127 LOADK                            R12 K55 [".EndLinePath2D"]
      128 DUPTABLE                         R13 K57 [{["ZIndex"] = 4, ["Thickness"] = 1, ["Color3"] = "$ColorCurveEnd"}]
      129 CALL                             R11 2 1
      130 MOVE                             R12 R2
      131 LOADK                            R13 K58 ["TextLabel, TextButton, TextBox"]
      132 DUPTABLE                         R14 K62 [{["Font"], ["TextSize"] = 15}]
      133 GETIMPORT                        R15 K65 [Enum.Font.SourceSans]
      135 SETTABLEKS                       R15 R14 K59 ["Font"]
      137 CALL                             R12 2 1
      138 MOVE                             R13 R2
      139 LOADK                            R14 K66 [".CurvePointOuter"]
      140 DUPTABLE                         R15 K70 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Size"], ["ZIndex"] = 4}]
      141 GETIMPORT                        R16 K73 [Vector2.new]
      143 LOADK                            R17 K74 [0.5]
      144 LOADK                            R18 K74 [0.5]
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K67 ["AnchorPoint"]
      148 GETIMPORT                        R16 K75 [Color3.new]
      150 LOADN                            R17 0
      151 LOADN                            R18 0
      152 LOADN                            R19 0
      153 CALL                             R16 3 1
      154 SETTABLEKS                       R16 R15 K68 ["ImageColor3"]
      156 GETIMPORT                        R16 K78 [UDim2.fromOffset]
      158 LOADN                            R17 14
      159 LOADN                            R18 14
      160 CALL                             R16 2 1
      161 SETTABLEKS                       R16 R15 K69 ["Size"]
      163 NEWTABLE                         R16 0 1
      165 MOVE                             R17 R2
      166 LOADK                            R18 K79 [".Selected, .Hovered, .Pressed"]
      167 DUPTABLE                         R19 K83 [{["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorControlPointHighlight"}]
      168 CALL                             R17 2 -1
      169 SETLIST                          R16 R17 -1 [1]
      171 CALL                             R13 3 1
      172 MOVE                             R14 R2
      173 LOADK                            R15 K84 [".CurvePoint"]
      174 DUPTABLE                         R16 K88 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/smallWhiteCircle.png", ["ImageColor3"] = "$ColorControlPoint", ["Position"], ["Size"], ["ZIndex"] = 5}]
      175 GETIMPORT                        R17 K73 [Vector2.new]
      177 LOADK                            R18 K74 [0.5]
      178 LOADK                            R19 K74 [0.5]
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K67 ["AnchorPoint"]
      182 GETIMPORT                        R17 K90 [UDim2.fromScale]
      184 LOADK                            R18 K74 [0.5]
      185 LOADK                            R19 K74 [0.5]
      186 CALL                             R17 2 1
      187 SETTABLEKS                       R17 R16 K86 ["Position"]
      189 GETIMPORT                        R17 K78 [UDim2.fromOffset]
      191 LOADN                            R18 10
      192 LOADN                            R19 10
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K69 ["Size"]
      196 NEWTABLE                         R17 0 2
      198 MOVE                             R18 R2
      199 LOADK                            R19 K91 [".Pressed"]
      200 DUPTABLE                         R20 K93 [{["ImageColor3"] = "$ColorControlPointPressed"}]
      201 CALL                             R18 2 1
      202 MOVE                             R19 R2
      203 LOADK                            R20 K94 [".Hovered"]
      204 DUPTABLE                         R21 K96 [{["ImageColor3"] = "$ColorControlPointHovered"}]
      205 CALL                             R19 2 -1
      206 SETLIST                          R17 R18 -1 [1]
      208 CALL                             R14 3 -1
      209 SETLIST                          R6 R7 -1 [1]
      211 MOVE                             R7 R3
      212 LOADK                            R8 K2 ["DirectionalCurveEditor"]
      213 MOVE                             R9 R6
      214 MOVE                             R10 R5
      215 CALL                             R7 3 -1
      216 RETURN                           R7 -1
