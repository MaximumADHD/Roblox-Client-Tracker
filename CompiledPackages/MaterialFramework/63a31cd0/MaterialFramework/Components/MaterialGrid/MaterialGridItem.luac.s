PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["createElement"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["Fragment"]
        8 NEWTABLE                         R2 0 0
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K0 ["createElement"]
       17 LOADK                            R2 K2 ["Frame"]
       18 DUPTABLE                         R3 K11 [{["AnchorPoint"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
       19 GETIMPORT                        R4 K14 [Vector2.new]
       21 LOADN                            R5 0
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K3 ["AnchorPoint"]
       26 GETIMPORT                        R4 K17 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R4 R3 K4 ["AutomaticSize"]
       30 GETIMPORT                        R4 K20 [UDim2.fromScale]
       32 LOADN                            R5 0
       33 LOADN                            R6 1
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K9 ["Position"]
       37 GETIMPORT                        R4 K20 [UDim2.fromScale]
       39 LOADN                            R5 1
       40 LOADN                            R6 0
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K10 ["Size"]
       44 DUPTABLE                         R4 K23 [{"Scrim", "Text"}]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K0 ["createElement"]
       48 LOADK                            R6 K2 ["Frame"]
       49 DUPTABLE                         R7 K26 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["ZIndex"]}]
       50 GETUPVAL                         R8 3
       51 SETTABLEKS                       R8 R7 K24 ["BackgroundColor3"]
       53 GETIMPORT                        R8 K20 [UDim2.fromScale]
       55 LOADN                            R9 0
       56 LOADN                            R10 0
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K9 ["Position"]
       60 GETIMPORT                        R8 K20 [UDim2.fromScale]
       62 LOADN                            R9 1
       63 LOADN                            R10 1
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K10 ["Size"]
       67 MOVE                             R8 R0
       68 CALL                             R8 0 1
       69 SETTABLEKS                       R8 R7 K25 ["ZIndex"]
       71 DUPTABLE                         R8 K28 [{"Shade"}]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K0 ["createElement"]
       75 LOADK                            R10 K29 ["UIGradient"]
       76 DUPTABLE                         R11 K34 [{["Color"], ["Rotation"] = 90, ["Transparency"]}]
       77 GETIMPORT                        R12 K36 [ColorSequence.new]
       79 GETUPVAL                         R13 3
       80 GETUPVAL                         R14 3
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K30 ["Color"]
       84 GETIMPORT                        R12 K38 [NumberSequence.new]
       86 NEWTABLE                         R13 0 2
       88 GETIMPORT                        R14 K40 [NumberSequenceKeypoint.new]
       90 LOADN                            R15 0
       91 LOADN                            R16 1
       92 CALL                             R14 2 1
       93 GETIMPORT                        R15 K40 [NumberSequenceKeypoint.new]
       95 LOADN                            R16 1
       96 LOADN                            R17 0
       97 CALL                             R15 2 -1
       98 SETLIST                          R13 R14 -1 [1]
      100 CALL                             R12 1 1
      101 SETTABLEKS                       R12 R11 K33 ["Transparency"]
      103 CALL                             R9 2 1
      104 SETTABLEKS                       R9 R8 K27 ["Shade"]
      106 CALL                             R5 3 1
      107 SETTABLEKS                       R5 R4 K21 ["Scrim"]
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R5 R5 K0 ["createElement"]
      112 GETUPVAL                         R6 4
      113 DUPTABLE                         R7 K48 [{["AnchorPoint"], ["AutomaticSize"], ["Size"], ["Position"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False, ["ZIndex"]}]
      114 GETIMPORT                        R8 K50 [Vector2.zero]
      116 SETTABLEKS                       R8 R7 K3 ["AnchorPoint"]
      118 GETIMPORT                        R8 K17 [Enum.AutomaticSize.Y]
      120 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      122 GETIMPORT                        R8 K20 [UDim2.fromScale]
      124 LOADN                            R9 1
      125 LOADN                            R10 0
      126 CALL                             R8 2 1
      127 SETTABLEKS                       R8 R7 K10 ["Size"]
      129 GETIMPORT                        R8 K20 [UDim2.fromScale]
      131 LOADN                            R9 0
      132 LOADN                            R10 0
      133 CALL                             R8 2 1
      134 SETTABLEKS                       R8 R7 K9 ["Position"]
      136 GETUPVAL                         R8 5
      137 GETTABLEKS                       R8 R8 K22 ["Text"]
      139 SETTABLEKS                       R8 R7 K22 ["Text"]
      141 GETUPVAL                         R8 6
      142 GETTABLEKS                       R8 R8 K51 ["ItemLabelTextColor"]
      144 SETTABLEKS                       R8 R7 K41 ["TextColor"]
      146 GETUPVAL                         R8 6
      147 GETTABLEKS                       R8 R8 K42 ["TextSize"]
      149 SETTABLEKS                       R8 R7 K42 ["TextSize"]
      151 GETIMPORT                        R8 K53 [Enum.TextTruncate.AtEnd]
      153 SETTABLEKS                       R8 R7 K43 ["TextTruncate"]
      155 GETIMPORT                        R8 K55 [Enum.TextXAlignment.Left]
      157 SETTABLEKS                       R8 R7 K44 ["TextXAlignment"]
      159 GETIMPORT                        R8 K57 [Enum.TextYAlignment.Center]
      161 SETTABLEKS                       R8 R7 K45 ["TextYAlignment"]
      163 MOVE                             R8 R0
      164 CALL                             R8 0 1
      165 SETTABLEKS                       R8 R7 K25 ["ZIndex"]
      167 DUPTABLE                         R8 K59 [{"Padding"}]
      168 GETUPVAL                         R9 1
      169 GETTABLEKS                       R9 R9 K0 ["createElement"]
      171 LOADK                            R10 K60 ["UIPadding"]
      172 DUPTABLE                         R11 K63 [{"PaddingBottom", "PaddingLeft"}]
      173 GETUPVAL                         R12 6
      174 GETTABLEKS                       R12 R12 K64 ["GridItemLabelPadding"]
      176 GETTABLEKS                       R12 R12 K61 ["PaddingBottom"]
      178 SETTABLEKS                       R12 R11 K61 ["PaddingBottom"]
      180 GETUPVAL                         R12 6
      181 GETTABLEKS                       R12 R12 K64 ["GridItemLabelPadding"]
      183 GETTABLEKS                       R12 R12 K62 ["PaddingLeft"]
      185 SETTABLEKS                       R12 R11 K62 ["PaddingLeft"]
      187 CALL                             R9 2 1
      188 SETTABLEKS                       R9 R8 K58 ["Padding"]
      190 CALL                             R5 3 1
      191 SETTABLEKS                       R5 R4 K22 ["Text"]
      193 CALL                             R1 3 -1
      194 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R3 R0 K1 ["Item"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["useState"]
        7 LOADB                            R5 0
        8 CALL                             R4 1 2
        9 GETTABLEKS                       R7 R0 K3 ["ItemsDisabled"]
       11 JUMPIFEQKB                       R7 TRUE ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 LOADB                            R7 0
       16 GETTABLEKS                       R8 R0 K4 ["ShowGridLabels"]
       18 JUMPIFEQKB                       R8 FALSE ; [+10]
       20 GETTABLEKS                       R7 R0 K5 ["Text"]
       22 JUMPIFNOT                        R7 ; [+6]
       23 GETTABLEKS                       R8 R0 K5 ["Text"]
       25 JUMPIFNOTEQKS                    R8 K6 [""] ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R7
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R10 0 3
       42 MOVE                             R11 R7
       43 MOVE                             R12 R2
       44 GETTABLEKS                       R13 R0 K5 ["Text"]
       46 SETLIST                          R10 R11 3 [1]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R11 0 4
       59 MOVE                             R12 R6
       60 GETTABLEKS                       R13 R0 K9 ["OnMouseEnter"]
       62 MOVE                             R14 R3
       63 MOVE                             R15 R5
       64 SETLIST                          R11 R12 4 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       70 NEWCLOSURE                       R11 P2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 NEWTABLE                         R12 0 4
       77 MOVE                             R13 R6
       78 GETTABLEKS                       R14 R0 K10 ["OnMouseLeave"]
       80 MOVE                             R15 R3
       81 MOVE                             R16 R5
       82 SETLIST                          R12 R13 4 [1]
       84 CALL                             R10 2 1
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       88 NEWCLOSURE                       R12 P3
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R13 0 2
       93 GETTABLEKS                       R14 R0 K11 ["OnClick"]
       95 MOVE                             R15 R3
       96 SETLIST                          R13 R14 2 [1]
       98 CALL                             R11 2 1
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      102 NEWCLOSURE                       R13 P4
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R14 0 2
      107 GETTABLEKS                       R15 R0 K12 ["OnRightClick"]
      109 MOVE                             R16 R3
      110 SETLIST                          R14 R15 2 [1]
      112 CALL                             R12 2 1
      113 GETTABLEKS                       R13 R0 K13 ["Loading"]
      115 JUMPIFNOT                        R13 ; [+66]
      116 GETTABLEKS                       R13 R2 K14 ["ShimmerSizeOffset"]
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K15 ["createElement"]
      121 GETUPVAL                         R15 4
      122 DUPTABLE                         R16 K20 [{["LayoutOrder"], ["Position"], ["Size"], [4] = "BorderBox"}]
      123 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      125 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      127 GETTABLEKS                       R17 R0 K17 ["Position"]
      129 SETTABLEKS                       R17 R16 K17 ["Position"]
      131 GETTABLEKS                       R17 R0 K18 ["Size"]
      133 SETTABLEKS                       R17 R16 K18 ["Size"]
      135 DUPTABLE                         R17 K22 [{"Shimmer"}]
      136 GETUPVAL                         R19 5
      137 CALL                             R19 0 1
      138 JUMPIFNOT                        R19 ; [+34]
      139 GETUPVAL                         R18 0
      140 GETTABLEKS                       R18 R18 K15 ["createElement"]
      142 GETUPVAL                         R19 6
      143 DUPTABLE                         R20 K25 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      144 GETIMPORT                        R21 K28 [Vector2.new]
      146 LOADK                            R22 K29 [0.5]
      147 LOADK                            R23 K29 [0.5]
      148 CALL                             R21 2 1
      149 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      151 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      153 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      155 GETIMPORT                        R21 K33 [UDim2.fromScale]
      157 LOADK                            R22 K29 [0.5]
      158 LOADK                            R23 K29 [0.5]
      159 CALL                             R21 2 1
      160 SETTABLEKS                       R21 R20 K17 ["Position"]
      162 GETIMPORT                        R21 K34 [UDim2.new]
      164 LOADN                            R22 1
      165 MINUS                            R23 R13
      166 LOADN                            R24 1
      167 MINUS                            R25 R13
      168 CALL                             R21 4 1
      169 SETTABLEKS                       R21 R20 K18 ["Size"]
      171 CALL                             R18 2 1
      172 JUMP                             ; [+5]
      173 GETUPVAL                         R18 0
      174 GETTABLEKS                       R18 R18 K15 ["createElement"]
      176 GETUPVAL                         R19 6
      177 CALL                             R18 1 1
      178 SETTABLEKS                       R18 R17 K21 ["Shimmer"]
      180 CALL                             R14 3 -1
      181 RETURN                           R14 -1
      182 LOADNIL                          R13
      183 LOADNIL                          R14
      184 GETTABLEKS                       R15 R0 K35 ["ShouldCenterTooltip"]
      186 JUMPIFNOT                        R15 ; [+45]
      187 GETIMPORT                        R15 K33 [UDim2.fromScale]
      189 LOADK                            R16 K29 [0.5]
      190 LOADK                            R17 K29 [0.5]
      191 CALL                             R15 2 1
      192 MOVE                             R13 R15
      193 GETTABLEKS                       R16 R0 K17 ["Position"]
      195 GETTABLEKS                       R16 R16 K36 ["X"]
      197 GETTABLEKS                       R16 R16 K37 ["Offset"]
      199 GETTABLEKS                       R18 R0 K39 ["GridItemSize"]
      201 DIVK                             R17 R18 K38 [2]
      202 ADD                              R15 R16 R17
      203 GETTABLEKS                       R18 R0 K17 ["Position"]
      205 GETTABLEKS                       R18 R18 K40 ["Y"]
      207 GETTABLEKS                       R18 R18 K37 ["Offset"]
      209 GETTABLEKS                       R20 R0 K39 ["GridItemSize"]
      211 MULK                             R19 R20 K41 [0.8]
      212 ADD                              R17 R18 R19
      213 GETTABLEKS                       R18 R0 K42 ["CanvasPosition"]
      215 GETTABLEKS                       R18 R18 K40 ["Y"]
      217 SUB                              R16 R17 R18
      218 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      220 JUMPIFNOT                        R17 ; [+5]
      221 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      223 GETTABLEKS                       R17 R17 K44 ["Min"]
      225 ADD                              R16 R16 R17
      226 GETIMPORT                        R17 K28 [Vector2.new]
      228 MOVE                             R18 R15
      229 MOVE                             R19 R16
      230 CALL                             R17 2 1
      231 MOVE                             R14 R17
      232 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      234 GETTABLEKS                       R16 R0 K46 ["Applied"]
      236 JUMPIFNOT                        R16 ; [+2]
      237 GETTABLEKS                       R15 R2 K47 ["GridItemBackgroundColorApplied"]
      239 JUMPIFNOT                        R4 ; [+6]
      240 JUMPIF                           R6 ; [+5]
      241 GETTABLEKS                       R16 R0 K48 ["HoverEffectsEnabled"]
      243 JUMPIFNOT                        R16 ; [+2]
      244 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      246 GETTABLEKS                       R17 R0 K50 ["Selected"]
      248 JUMPIFNOT                        R17 ; [+3]
      249 GETTABLEKS                       R16 R2 K51 ["GridItemBorderColorSelected"]
      251 JUMP                             ; [+2]
      252 GETTABLEKS                       R16 R2 K52 ["GridItemBorderColor"]
      254 DUPTABLE                         R17 K57 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      255 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      257 JUMPIFNOT                        R19 ; [+15]
      258 GETUPVAL                         R18 0
      259 GETTABLEKS                       R18 R18 K15 ["createElement"]
      261 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      263 DUPTABLE                         R20 K59 [{"Size"}]
      264 GETIMPORT                        R21 K33 [UDim2.fromScale]
      266 LOADN                            R22 1
      267 LOADN                            R23 1
      268 CALL                             R21 2 1
      269 SETTABLEKS                       R21 R20 K18 ["Size"]
      271 CALL                             R18 2 1
      272 JUMP                             ; [+50]
      273 GETUPVAL                         R18 0
      274 GETTABLEKS                       R18 R18 K15 ["createElement"]
      276 GETUPVAL                         R19 7
      277 DUPTABLE                         R20 K70 [{["AnchorPoint"], ["BackgroundColor"], ["ImageTransparency"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["Position"], ["Static"] = True, [10], ["Transparent"] = True, ["ref"]}]
      278 GETIMPORT                        R21 K28 [Vector2.new]
      280 LOADK                            R22 K29 [0.5]
      281 LOADK                            R23 K29 [0.5]
      282 CALL                             R21 2 1
      283 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      285 SETTABLEKS                       R15 R20 K60 ["BackgroundColor"]
      287 JUMPIFNOT                        R6 ; [+2]
      288 LOADK                            R21 K71 [0.35]
      289 JUMP                             ; [+1]
      290 LOADN                            R21 0
      291 SETTABLEKS                       R21 R20 K61 ["ImageTransparency"]
      293 GETTABLEKS                       R21 R0 K62 ["InitialDistance"]
      295 SETTABLEKS                       R21 R20 K62 ["InitialDistance"]
      297 GETTABLEKS                       R21 R0 K63 ["Material"]
      299 SETTABLEKS                       R21 R20 K63 ["Material"]
      301 GETTABLEKS                       R21 R0 K64 ["MaterialPreviewGeometryType"]
      303 SETTABLEKS                       R21 R20 K64 ["MaterialPreviewGeometryType"]
      305 GETTABLEKS                       R21 R2 K45 ["GridItemBackgroundColor"]
      307 SETTABLEKS                       R21 R20 K65 ["MeshPartBackgroundColor"]
      309 GETIMPORT                        R21 K33 [UDim2.fromScale]
      311 LOADK                            R22 K29 [0.5]
      312 LOADK                            R23 K29 [0.5]
      313 CALL                             R21 2 1
      314 SETTABLEKS                       R21 R20 K17 ["Position"]
      316 GETTABLEKS                       R21 R2 K72 ["MaterialPreviewStyle"]
      318 SETTABLEKS                       R21 R20 K0 ["Style"]
      320 SETTABLEKS                       R1 R20 K69 ["ref"]
      322 CALL                             R18 2 1
      323 SETTABLEKS                       R18 R17 K53 ["MaterialPreview"]
      325 SETTABLEKS                       R8 R17 K54 ["LabelArea"]
      327 GETUPVAL                         R18 0
      328 GETTABLEKS                       R18 R18 K15 ["createElement"]
      330 LOADK                            R19 K55 ["UICorner"]
      331 DUPTABLE                         R20 K73 [{"CornerRadius"}]
      332 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      334 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      336 CALL                             R18 2 1
      337 SETTABLEKS                       R18 R17 K55 ["UICorner"]
      339 GETUPVAL                         R18 0
      340 GETTABLEKS                       R18 R18 K15 ["createElement"]
      342 LOADK                            R19 K56 ["UIStroke"]
      343 DUPTABLE                         R20 K79 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1, ["Transparency"]}]
      344 GETIMPORT                        R21 K82 [Enum.ApplyStrokeMode.Border]
      346 SETTABLEKS                       R21 R20 K74 ["ApplyStrokeMode"]
      348 SETTABLEKS                       R16 R20 K75 ["Color"]
      350 JUMPIFNOT                        R6 ; [+2]
      351 LOADK                            R21 K71 [0.35]
      352 JUMP                             ; [+1]
      353 LOADN                            R21 0
      354 SETTABLEKS                       R21 R20 K78 ["Transparency"]
      356 CALL                             R18 2 1
      357 SETTABLEKS                       R18 R17 K56 ["UIStroke"]
      359 GETUPVAL                         R19 8
      360 CALL                             R19 0 1
      361 JUMPIFNOT                        R19 ; [+9]
      362 NOT                              R18 R7
      363 JUMPIF                           R18 ; [+8]
      364 GETTABLEKS                       R19 R0 K83 ["ShowTooltipWithLabel"]
      366 JUMPIFEQKB                       R19 TRUE ; [+2]
      368 LOADB                            R18 0 +1
      369 LOADB                            R18 1
      370 JUMP                             ; [+1]
      371 NOT                              R18 R7
      372 LOADNIL                          R19
      373 JUMPIFNOT                        R18 ; [+45]
      374 GETUPVAL                         R20 0
      375 GETTABLEKS                       R20 R20 K15 ["createElement"]
      377 GETUPVAL                         R21 9
      378 DUPTABLE                         R22 K88 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      379 SETTABLEKS                       R13 R22 K23 ["AnchorPoint"]
      381 GETTABLEKS                       R23 R0 K84 ["ContainerXBounds"]
      383 SETTABLEKS                       R23 R22 K84 ["ContainerXBounds"]
      385 GETTABLEKS                       R23 R0 K43 ["ContainerYBounds"]
      387 SETTABLEKS                       R23 R22 K43 ["ContainerYBounds"]
      389 LOADB                            R23 0
      390 GETTABLEKS                       R24 R0 K48 ["HoverEffectsEnabled"]
      392 JUMPIFEQKB                       R24 FALSE ; [+2]
      394 NOT                              R23 R6
      395 SETTABLEKS                       R23 R22 K85 ["Enabled"]
      397 GETTABLEKS                       R23 R0 K86 ["OnTooltipShown"]
      399 SETTABLEKS                       R23 R22 K86 ["OnTooltipShown"]
      401 SETTABLEKS                       R14 R22 K17 ["Position"]
      403 GETTABLEKS                       R24 R0 K89 ["InstantTooltipEnabled"]
      405 JUMPIFNOT                        R24 ; [+2]
      406 LOADN                            R23 0
      407 JUMP                             ; [+2]
      408 GETTABLEKS                       R23 R0 K90 ["TooltipDelay"]
      410 SETTABLEKS                       R23 R22 K87 ["ShowDelay"]
      412 GETTABLEKS                       R23 R0 K5 ["Text"]
      414 SETTABLEKS                       R23 R22 K5 ["Text"]
      416 CALL                             R20 2 1
      417 MOVE                             R19 R20
      418 JUMP                             ; [+10]
      419 GETUPVAL                         R20 0
      420 GETTABLEKS                       R20 R20 K15 ["createElement"]
      422 GETUPVAL                         R21 0
      423 GETTABLEKS                       R21 R21 K91 ["Fragment"]
      425 NEWTABLE                         R22 0 0
      427 CALL                             R20 2 1
      428 MOVE                             R19 R20
      429 DUPTABLE                         R20 K94 [{"Swatch", "Tooltip", "UICorner"}]
      430 GETUPVAL                         R21 0
      431 GETTABLEKS                       R21 R21 K15 ["createElement"]
      433 LOADK                            R22 K95 ["Frame"]
      434 DUPTABLE                         R23 K97 [{["BackgroundTransparency"] = 1, ["Size"]}]
      435 GETIMPORT                        R24 K33 [UDim2.fromScale]
      437 LOADN                            R25 1
      438 LOADN                            R26 1
      439 CALL                             R24 2 1
      440 SETTABLEKS                       R24 R23 K18 ["Size"]
      442 MOVE                             R24 R17
      443 CALL                             R21 3 1
      444 SETTABLEKS                       R21 R20 K92 ["Swatch"]
      446 SETTABLEKS                       R19 R20 K93 ["Tooltip"]
      448 GETUPVAL                         R21 0
      449 GETTABLEKS                       R21 R21 K15 ["createElement"]
      451 LOADK                            R22 K55 ["UICorner"]
      452 DUPTABLE                         R23 K73 [{"CornerRadius"}]
      453 GETTABLEKS                       R24 R2 K30 ["GridItemCornerRadius"]
      455 SETTABLEKS                       R24 R23 K24 ["CornerRadius"]
      457 CALL                             R21 2 1
      458 SETTABLEKS                       R21 R20 K55 ["UICorner"]
      460 LOADNIL                          R21
      461 GETTABLEKS                       R22 R0 K98 ["OnRenderChildren"]
      463 JUMPIFNOT                        R22 ; [+5]
      464 GETTABLEKS                       R22 R0 K98 ["OnRenderChildren"]
      466 MOVE                             R23 R3
      467 CALL                             R22 1 1
      468 MOVE                             R21 R22
      469 GETUPVAL                         R22 0
      470 GETTABLEKS                       R22 R22 K15 ["createElement"]
      472 LOADK                            R23 K99 ["TextButton"]
      473 NEWTABLE                         R24 16 0
      475 NOT                              R25 R6
      476 SETTABLEKS                       R25 R24 K100 ["Active"]
      478 LOADB                            R25 0
      479 SETTABLEKS                       R25 R24 K101 ["AutoButtonColor"]
      481 SETTABLEKS                       R15 R24 K102 ["BackgroundColor3"]
      483 JUMPIFNOT                        R6 ; [+2]
      484 LOADK                            R25 K71 [0.35]
      485 JUMP                             ; [+1]
      486 LOADN                            R25 0
      487 SETTABLEKS                       R25 R24 K96 ["BackgroundTransparency"]
      489 LOADN                            R25 0
      490 SETTABLEKS                       R25 R24 K103 ["BorderSizePixel"]
      492 GETTABLEKS                       R25 R0 K16 ["LayoutOrder"]
      494 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      496 GETTABLEKS                       R25 R0 K17 ["Position"]
      498 SETTABLEKS                       R25 R24 K17 ["Position"]
      500 NOT                              R25 R6
      501 SETTABLEKS                       R25 R24 K104 ["Selectable"]
      503 GETTABLEKS                       R25 R0 K18 ["Size"]
      505 SETTABLEKS                       R25 R24 K18 ["Size"]
      507 LOADK                            R25 K6 [""]
      508 SETTABLEKS                       R25 R24 K5 ["Text"]
      510 GETTABLEKS                       R25 R0 K5 ["Text"]
      512 SETTABLEKS                       R25 R24 K105 ["Name"]
      514 GETUPVAL                         R25 0
      515 GETTABLEKS                       R25 R25 K106 ["Event"]
      517 GETTABLEKS                       R25 R25 K107 ["Activated"]
      519 JUMPIFNOT                        R6 ; [+2]
      520 GETUPVAL                         R26 10
      521 JUMP                             ; [+1]
      522 MOVE                             R26 R11
      523 SETTABLE                         R26 R24 R25
      524 GETUPVAL                         R25 0
      525 GETTABLEKS                       R25 R25 K106 ["Event"]
      527 GETTABLEKS                       R25 R25 K108 ["MouseButton2Click"]
      529 JUMPIFNOT                        R6 ; [+2]
      530 GETUPVAL                         R26 10
      531 JUMP                             ; [+1]
      532 MOVE                             R26 R12
      533 SETTABLE                         R26 R24 R25
      534 GETUPVAL                         R25 0
      535 GETTABLEKS                       R25 R25 K106 ["Event"]
      537 GETTABLEKS                       R25 R25 K109 ["MouseEnter"]
      539 SETTABLE                         R9 R24 R25
      540 GETUPVAL                         R25 0
      541 GETTABLEKS                       R25 R25 K106 ["Event"]
      543 GETTABLEKS                       R25 R25 K110 ["MouseLeave"]
      545 SETTABLE                         R10 R24 R25
      546 GETUPVAL                         R25 0
      547 GETTABLEKS                       R25 R25 K106 ["Event"]
      549 GETTABLEKS                       R25 R25 K111 ["MouseMoved"]
      551 JUMPIF                           R6 ; [+3]
      552 GETTABLEKS                       R26 R0 K112 ["OnMouseMoved"]
      554 JUMP                             ; [+1]
      555 LOADNIL                          R26
      556 SETTABLE                         R26 R24 R25
      557 GETUPVAL                         R25 11
      558 GETTABLEKS                       R25 R25 K113 ["join"]
      560 MOVE                             R26 R20
      561 MOVE                             R27 R21
      562 CALL                             R25 2 -1
      563 CALL                             R22 -1 -1
      564 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K6 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["Framework"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R2 K8 ["React"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R0 K9 ["Util"]
       35 GETTABLEKS                       R7 R7 K10 ["createNextOrder"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K11 ["SharedFlags"]
       40 GETTABLEKS                       R7 R7 K12 ["getFFlagDevFrameworkShimmerImprovements"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Flags"]
       46 GETTABLEKS                       R9 R9 K14 ["getFFlagMaterialGridShowTooltipWithLabel"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R4 K15 ["UI"]
       51 GETTABLEKS                       R10 R9 K16 ["Pane"]
       53 GETTABLEKS                       R11 R9 K17 ["Shimmer"]
       55 GETTABLEKS                       R12 R9 K18 ["TextLabel"]
       57 GETTABLEKS                       R13 R9 K19 ["Tooltip"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R0 K20 ["Components"]
       63 GETTABLEKS                       R15 R15 K21 ["MaterialPreview"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K24 [Color3.fromHex]
       68 LOADK                            R16 K25 ["#121215"]
       69 CALL                             R15 1 1
       70 DUPCLOSURE                       R16 K26 [PROTO_0]
       71 DUPCLOSURE                       R17 K27 [PROTO_6]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R3
       84 GETTABLEKS                       R18 R5 K28 ["forwardRef"]
       86 MOVE                             R19 R17
       87 CALL                             R18 1 -1
       88 RETURN                           R18 -1
