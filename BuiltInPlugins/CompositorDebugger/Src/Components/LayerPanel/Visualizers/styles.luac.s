MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".BlendBase"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 3
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> .Blend1D"]
       26 DUPTABLE                         R9 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "Size", "Position"}]
       27 LOADK                            R10 K19 ["$BackgroundPaper"]
       28 SETTABLEKS                       R10 R9 K12 ["BackgroundColor3"]
       30 LOADN                            R10 0
       31 SETTABLEKS                       R10 R9 K13 ["BackgroundTransparency"]
       33 LOADK                            R10 K20 ["$TextPrimary"]
       34 SETTABLEKS                       R10 R9 K14 ["BorderColor3"]
       36 LOADN                            R10 1
       37 SETTABLEKS                       R10 R9 K15 ["BorderSizePixel"]
       39 GETIMPORT                        R10 K23 [UDim2.new]
       41 LOADN                            R11 1
       42 LOADN                            R12 226
       43 LOADN                            R13 0
       44 LOADN                            R14 9
       45 CALL                             R10 4 1
       46 SETTABLEKS                       R10 R9 K16 ["Size"]
       48 GETIMPORT                        R10 K23 [UDim2.new]
       50 LOADN                            R11 0
       51 LOADN                            R12 15
       52 LOADK                            R13 K24 [0.5]
       53 LOADN                            R14 0
       54 CALL                             R10 4 1
       55 SETTABLEKS                       R10 R9 K17 ["Position"]
       57 CALL                             R7 2 1
       58 MOVE                             R8 R2
       59 LOADK                            R9 K25 ["> .Blend2D"]
       60 DUPTABLE                         R10 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "Size", "Position"}]
       61 LOADK                            R11 K19 ["$BackgroundPaper"]
       62 SETTABLEKS                       R11 R10 K12 ["BackgroundColor3"]
       64 LOADN                            R11 0
       65 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
       67 LOADK                            R11 K20 ["$TextPrimary"]
       68 SETTABLEKS                       R11 R10 K14 ["BorderColor3"]
       70 LOADN                            R11 1
       71 SETTABLEKS                       R11 R10 K15 ["BorderSizePixel"]
       73 GETIMPORT                        R11 K23 [UDim2.new]
       75 LOADN                            R12 1
       76 LOADN                            R13 226
       77 LOADN                            R14 1
       78 LOADN                            R15 208
       79 CALL                             R11 4 1
       80 SETTABLEKS                       R11 R10 K16 ["Size"]
       82 GETIMPORT                        R11 K27 [UDim2.fromOffset]
       84 LOADN                            R12 15
       85 LOADN                            R13 33
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K17 ["Position"]
       89 CALL                             R8 2 1
       90 MOVE                             R9 R2
       91 LOADK                            R10 K28 ["> #Canvas"]
       92 NEWTABLE                         R11 0 0
       94 NEWTABLE                         R12 0 8
       96 MOVE                             R13 R2
       97 LOADK                            R14 K29 ["> #Grid"]
       98 DUPTABLE                         R15 K31 [{"ClipsDescendants", "Size"}]
       99 LOADB                            R16 1
      100 SETTABLEKS                       R16 R15 K30 ["ClipsDescendants"]
      102 GETIMPORT                        R16 K33 [UDim2.fromScale]
      104 LOADN                            R17 1
      105 LOADN                            R18 1
      106 CALL                             R16 2 1
      107 SETTABLEKS                       R16 R15 K16 ["Size"]
      109 CALL                             R13 2 1
      110 MOVE                             R14 R2
      111 LOADK                            R15 K34 ["> #Reset"]
      112 DUPTABLE                         R16 K38 [{"Image", "Size", "Position", "ImageColor3", "AnchorPoint", "BackgroundTransparency"}]
      113 LOADK                            R17 K39 ["rbxasset://textures/CompositorDebugger/clear.png"]
      114 SETTABLEKS                       R17 R16 K35 ["Image"]
      116 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      118 LOADN                            R18 12
      119 LOADN                            R19 12
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K16 ["Size"]
      123 GETIMPORT                        R17 K23 [UDim2.new]
      125 LOADN                            R18 1
      126 LOADN                            R19 0
      127 LOADN                            R20 0
      128 LOADN                            R21 250
      129 CALL                             R17 4 1
      130 SETTABLEKS                       R17 R16 K17 ["Position"]
      132 LOADK                            R17 K20 ["$TextPrimary"]
      133 SETTABLEKS                       R17 R16 K36 ["ImageColor3"]
      135 GETIMPORT                        R17 K41 [Vector2.new]
      137 LOADN                            R18 1
      138 LOADN                            R19 1
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K37 ["AnchorPoint"]
      142 LOADN                            R17 1
      143 SETTABLEKS                       R17 R16 K13 ["BackgroundTransparency"]
      145 CALL                             R14 2 1
      146 MOVE                             R15 R2
      147 LOADK                            R16 K42 ["> .Dot"]
      148 DUPTABLE                         R17 K43 [{"Image", "Size", "ImageColor3", "AnchorPoint", "BackgroundTransparency"}]
      149 LOADK                            R18 K44 ["rbxasset://textures/CompositorDebugger/dot.png"]
      150 SETTABLEKS                       R18 R17 K35 ["Image"]
      152 GETIMPORT                        R18 K27 [UDim2.fromOffset]
      154 LOADN                            R19 9
      155 LOADN                            R20 9
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K16 ["Size"]
      159 LOADK                            R18 K20 ["$TextPrimary"]
      160 SETTABLEKS                       R18 R17 K36 ["ImageColor3"]
      162 GETIMPORT                        R18 K41 [Vector2.new]
      164 LOADK                            R19 K24 [0.5]
      165 LOADK                            R20 K24 [0.5]
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K37 ["AnchorPoint"]
      169 LOADN                            R18 1
      170 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
      172 CALL                             R15 2 1
      173 MOVE                             R16 R2
      174 LOADK                            R17 K45 ["> .Cursor"]
      175 DUPTABLE                         R18 K46 [{"Image", "ImageColor3"}]
      176 LOADK                            R19 K47 ["rbxasset://textures/CompositorDebugger/cursor.png"]
      177 SETTABLEKS                       R19 R18 K35 ["Image"]
      179 LOADK                            R19 K48 ["$Blue60"]
      180 SETTABLEKS                       R19 R18 K36 ["ImageColor3"]
      182 CALL                             R16 2 1
      183 MOVE                             R17 R2
      184 LOADK                            R18 K49 [">> .Trail"]
      185 DUPTABLE                         R19 K51 [{"BackgroundColor3", "Width"}]
      186 LOADK                            R20 K48 ["$Blue60"]
      187 SETTABLEKS                       R20 R19 K12 ["BackgroundColor3"]
      189 LOADN                            R20 2
      190 SETTABLEKS                       R20 R19 K50 ["Width"]
      192 CALL                             R17 2 1
      193 MOVE                             R18 R2
      194 LOADK                            R19 K52 ["> .Override"]
      195 DUPTABLE                         R20 K53 [{"ImageColor3"}]
      196 LOADK                            R21 K54 ["$TextError"]
      197 SETTABLEKS                       R21 R20 K36 ["ImageColor3"]
      199 CALL                             R18 2 1
      200 MOVE                             R19 R2
      201 LOADK                            R20 K55 [">> .Axis"]
      202 DUPTABLE                         R21 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      203 LOADK                            R22 K20 ["$TextPrimary"]
      204 SETTABLEKS                       R22 R21 K12 ["BackgroundColor3"]
      206 LOADN                            R22 0
      207 SETTABLEKS                       R22 R21 K13 ["BackgroundTransparency"]
      209 CALL                             R19 2 1
      210 MOVE                             R20 R2
      211 LOADK                            R21 K57 [">> .Grid"]
      212 DUPTABLE                         R22 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      213 LOADK                            R23 K58 ["$TextDisabled"]
      214 SETTABLEKS                       R23 R22 K12 ["BackgroundColor3"]
      216 LOADN                            R23 0
      217 SETTABLEKS                       R23 R22 K13 ["BackgroundTransparency"]
      219 CALL                             R20 2 -1
      220 SETLIST                          R12 R13 -1 [1]
      222 CALL                             R9 3 -1
      223 SETLIST                          R6 R7 -1 [1]
      225 DUPTABLE                         R7 K60 [{"DotSize"}]
      226 LOADN                            R8 9
      227 SETTABLEKS                       R8 R7 K59 ["DotSize"]
      229 CALL                             R3 4 -1
      230 RETURN                           R3 -1
