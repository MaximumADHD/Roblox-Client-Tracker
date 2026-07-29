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
       49 NEWTABLE                         R7 8 0
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K24 ["Tag"]
       54 LOADK                            R9 K25 ["data-testid=MaterialGridItemScrim"]
       55 SETTABLE                         R9 R7 R8
       56 GETUPVAL                         R8 3
       57 SETTABLEKS                       R8 R7 K26 ["BackgroundColor3"]
       59 LOADN                            R8 0
       60 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
       62 LOADN                            R8 0
       63 SETTABLEKS                       R8 R7 K7 ["BorderSizePixel"]
       65 GETIMPORT                        R8 K20 [UDim2.fromScale]
       67 LOADN                            R9 0
       68 LOADN                            R10 0
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K9 ["Position"]
       72 GETIMPORT                        R8 K20 [UDim2.fromScale]
       74 LOADN                            R9 1
       75 LOADN                            R10 1
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K10 ["Size"]
       79 MOVE                             R8 R0
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R7 K27 ["ZIndex"]
       83 DUPTABLE                         R8 K29 [{"Shade"}]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K0 ["createElement"]
       87 LOADK                            R10 K30 ["UIGradient"]
       88 DUPTABLE                         R11 K35 [{["Color"], ["Rotation"] = 90, ["Transparency"]}]
       89 GETIMPORT                        R12 K37 [ColorSequence.new]
       91 GETUPVAL                         R13 3
       92 GETUPVAL                         R14 3
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K31 ["Color"]
       96 GETIMPORT                        R12 K39 [NumberSequence.new]
       98 NEWTABLE                         R13 0 2
      100 GETIMPORT                        R14 K41 [NumberSequenceKeypoint.new]
      102 LOADN                            R15 0
      103 LOADN                            R16 1
      104 CALL                             R14 2 1
      105 GETIMPORT                        R15 K41 [NumberSequenceKeypoint.new]
      107 LOADN                            R16 1
      108 LOADN                            R17 0
      109 CALL                             R15 2 -1
      110 SETLIST                          R13 R14 -1 [1]
      112 CALL                             R12 1 1
      113 SETTABLEKS                       R12 R11 K34 ["Transparency"]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K28 ["Shade"]
      118 CALL                             R5 3 1
      119 SETTABLEKS                       R5 R4 K21 ["Scrim"]
      121 GETUPVAL                         R5 1
      122 GETTABLEKS                       R5 R5 K0 ["createElement"]
      124 GETUPVAL                         R6 4
      125 DUPTABLE                         R7 K49 [{["AnchorPoint"], ["AutomaticSize"], ["Size"], ["Position"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False, ["ZIndex"]}]
      126 GETIMPORT                        R8 K51 [Vector2.zero]
      128 SETTABLEKS                       R8 R7 K3 ["AnchorPoint"]
      130 GETIMPORT                        R8 K17 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      134 GETIMPORT                        R8 K20 [UDim2.fromScale]
      136 LOADN                            R9 1
      137 LOADN                            R10 0
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R7 K10 ["Size"]
      141 GETIMPORT                        R8 K20 [UDim2.fromScale]
      143 LOADN                            R9 0
      144 LOADN                            R10 0
      145 CALL                             R8 2 1
      146 SETTABLEKS                       R8 R7 K9 ["Position"]
      148 GETUPVAL                         R8 5
      149 GETTABLEKS                       R8 R8 K22 ["Text"]
      151 SETTABLEKS                       R8 R7 K22 ["Text"]
      153 GETUPVAL                         R8 6
      154 GETTABLEKS                       R8 R8 K52 ["ItemLabelTextColor"]
      156 SETTABLEKS                       R8 R7 K42 ["TextColor"]
      158 GETUPVAL                         R8 6
      159 GETTABLEKS                       R8 R8 K43 ["TextSize"]
      161 SETTABLEKS                       R8 R7 K43 ["TextSize"]
      163 GETIMPORT                        R8 K54 [Enum.TextTruncate.AtEnd]
      165 SETTABLEKS                       R8 R7 K44 ["TextTruncate"]
      167 GETIMPORT                        R8 K56 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R8 R7 K45 ["TextXAlignment"]
      171 GETIMPORT                        R8 K58 [Enum.TextYAlignment.Center]
      173 SETTABLEKS                       R8 R7 K46 ["TextYAlignment"]
      175 MOVE                             R8 R0
      176 CALL                             R8 0 1
      177 SETTABLEKS                       R8 R7 K27 ["ZIndex"]
      179 DUPTABLE                         R8 K60 [{"Padding"}]
      180 GETUPVAL                         R9 1
      181 GETTABLEKS                       R9 R9 K0 ["createElement"]
      183 LOADK                            R10 K61 ["UIPadding"]
      184 DUPTABLE                         R11 K64 [{"PaddingBottom", "PaddingLeft"}]
      185 GETUPVAL                         R12 6
      186 GETTABLEKS                       R12 R12 K65 ["GridItemLabelPadding"]
      188 GETTABLEKS                       R12 R12 K62 ["PaddingBottom"]
      190 SETTABLEKS                       R12 R11 K62 ["PaddingBottom"]
      192 GETUPVAL                         R12 6
      193 GETTABLEKS                       R12 R12 K65 ["GridItemLabelPadding"]
      195 GETTABLEKS                       R12 R12 K63 ["PaddingLeft"]
      197 SETTABLEKS                       R12 R11 K63 ["PaddingLeft"]
      199 CALL                             R9 2 1
      200 SETTABLEKS                       R9 R8 K59 ["Padding"]
      202 CALL                             R5 3 1
      203 SETTABLEKS                       R5 R4 K22 ["Text"]
      205 CALL                             R1 3 -1
      206 RETURN                           R1 -1

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
       29 GETUPVAL                         R9 1
       30 CALL                             R9 0 1
       31 JUMPIFNOT                        R9 ; [+3]
       32 GETTABLEKS                       R8 R2 K7 ["ItemLabelScrimColor"]
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R8 2
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R8
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R11 0 4
       49 MOVE                             R12 R7
       50 MOVE                             R13 R2
       51 MOVE                             R14 R8
       52 GETTABLEKS                       R15 R0 K5 ["Text"]
       54 SETLIST                          R11 R12 4 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R12 0 4
       67 MOVE                             R13 R6
       68 GETTABLEKS                       R14 R0 K10 ["OnMouseEnter"]
       70 MOVE                             R15 R3
       71 MOVE                             R16 R5
       72 SETLIST                          R12 R13 4 [1]
       74 CALL                             R10 2 1
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       78 NEWCLOSURE                       R12 P2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 NEWTABLE                         R13 0 4
       85 MOVE                             R14 R6
       86 GETTABLEKS                       R15 R0 K11 ["OnMouseLeave"]
       88 MOVE                             R16 R3
       89 MOVE                             R17 R5
       90 SETLIST                          R13 R14 4 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       96 NEWCLOSURE                       R13 P3
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R14 0 2
      101 GETTABLEKS                       R15 R0 K12 ["OnClick"]
      103 MOVE                             R16 R3
      104 SETLIST                          R14 R15 2 [1]
      106 CALL                             R12 2 1
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K9 ["useCallback"]
      110 NEWCLOSURE                       R14 P4
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R3
      113 NEWTABLE                         R15 0 2
      115 GETTABLEKS                       R16 R0 K13 ["OnRightClick"]
      117 MOVE                             R17 R3
      118 SETLIST                          R15 R16 2 [1]
      120 CALL                             R13 2 1
      121 GETTABLEKS                       R14 R0 K14 ["Loading"]
      123 JUMPIFNOT                        R14 ; [+66]
      124 GETTABLEKS                       R14 R2 K15 ["ShimmerSizeOffset"]
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R15 R15 K16 ["createElement"]
      129 GETUPVAL                         R16 5
      130 DUPTABLE                         R17 K21 [{["LayoutOrder"], ["Position"], ["Size"], [4] = "BorderBox"}]
      131 GETTABLEKS                       R18 R0 K17 ["LayoutOrder"]
      133 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      135 GETTABLEKS                       R18 R0 K18 ["Position"]
      137 SETTABLEKS                       R18 R17 K18 ["Position"]
      139 GETTABLEKS                       R18 R0 K19 ["Size"]
      141 SETTABLEKS                       R18 R17 K19 ["Size"]
      143 DUPTABLE                         R18 K23 [{"Shimmer"}]
      144 GETUPVAL                         R20 6
      145 CALL                             R20 0 1
      146 JUMPIFNOT                        R20 ; [+34]
      147 GETUPVAL                         R19 0
      148 GETTABLEKS                       R19 R19 K16 ["createElement"]
      150 GETUPVAL                         R20 7
      151 DUPTABLE                         R21 K26 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      152 GETIMPORT                        R22 K29 [Vector2.new]
      154 LOADK                            R23 K30 [0.5]
      155 LOADK                            R24 K30 [0.5]
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      159 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      161 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      163 GETIMPORT                        R22 K34 [UDim2.fromScale]
      165 LOADK                            R23 K30 [0.5]
      166 LOADK                            R24 K30 [0.5]
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K18 ["Position"]
      170 GETIMPORT                        R22 K35 [UDim2.new]
      172 LOADN                            R23 1
      173 MINUS                            R24 R14
      174 LOADN                            R25 1
      175 MINUS                            R26 R14
      176 CALL                             R22 4 1
      177 SETTABLEKS                       R22 R21 K19 ["Size"]
      179 CALL                             R19 2 1
      180 JUMP                             ; [+5]
      181 GETUPVAL                         R19 0
      182 GETTABLEKS                       R19 R19 K16 ["createElement"]
      184 GETUPVAL                         R20 7
      185 CALL                             R19 1 1
      186 SETTABLEKS                       R19 R18 K22 ["Shimmer"]
      188 CALL                             R15 3 -1
      189 RETURN                           R15 -1
      190 LOADNIL                          R14
      191 LOADNIL                          R15
      192 GETTABLEKS                       R16 R0 K36 ["ShouldCenterTooltip"]
      194 JUMPIFNOT                        R16 ; [+45]
      195 GETIMPORT                        R16 K34 [UDim2.fromScale]
      197 LOADK                            R17 K30 [0.5]
      198 LOADK                            R18 K30 [0.5]
      199 CALL                             R16 2 1
      200 MOVE                             R14 R16
      201 GETTABLEKS                       R17 R0 K18 ["Position"]
      203 GETTABLEKS                       R17 R17 K37 ["X"]
      205 GETTABLEKS                       R17 R17 K38 ["Offset"]
      207 GETTABLEKS                       R19 R0 K40 ["GridItemSize"]
      209 DIVK                             R18 R19 K39 [2]
      210 ADD                              R16 R17 R18
      211 GETTABLEKS                       R19 R0 K18 ["Position"]
      213 GETTABLEKS                       R19 R19 K41 ["Y"]
      215 GETTABLEKS                       R19 R19 K38 ["Offset"]
      217 GETTABLEKS                       R21 R0 K40 ["GridItemSize"]
      219 MULK                             R20 R21 K42 [0.8]
      220 ADD                              R18 R19 R20
      221 GETTABLEKS                       R19 R0 K43 ["CanvasPosition"]
      223 GETTABLEKS                       R19 R19 K41 ["Y"]
      225 SUB                              R17 R18 R19
      226 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      228 JUMPIFNOT                        R18 ; [+5]
      229 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      231 GETTABLEKS                       R18 R18 K45 ["Min"]
      233 ADD                              R17 R17 R18
      234 GETIMPORT                        R18 K29 [Vector2.new]
      236 MOVE                             R19 R16
      237 MOVE                             R20 R17
      238 CALL                             R18 2 1
      239 MOVE                             R15 R18
      240 GETTABLEKS                       R16 R2 K46 ["GridItemBackgroundColor"]
      242 GETTABLEKS                       R17 R0 K47 ["Applied"]
      244 JUMPIFNOT                        R17 ; [+2]
      245 GETTABLEKS                       R16 R2 K48 ["GridItemBackgroundColorApplied"]
      247 JUMPIFNOT                        R4 ; [+6]
      248 JUMPIF                           R6 ; [+5]
      249 GETTABLEKS                       R17 R0 K49 ["HoverEffectsEnabled"]
      251 JUMPIFNOT                        R17 ; [+2]
      252 GETTABLEKS                       R16 R2 K50 ["GridItemBackgroundColorHovered"]
      254 GETTABLEKS                       R18 R0 K51 ["Selected"]
      256 JUMPIFNOT                        R18 ; [+3]
      257 GETTABLEKS                       R17 R2 K52 ["GridItemBorderColorSelected"]
      259 JUMP                             ; [+2]
      260 GETTABLEKS                       R17 R2 K53 ["GridItemBorderColor"]
      262 DUPTABLE                         R18 K58 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      263 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      265 JUMPIFNOT                        R20 ; [+15]
      266 GETUPVAL                         R19 0
      267 GETTABLEKS                       R19 R19 K16 ["createElement"]
      269 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      271 DUPTABLE                         R21 K60 [{"Size"}]
      272 GETIMPORT                        R22 K34 [UDim2.fromScale]
      274 LOADN                            R23 1
      275 LOADN                            R24 1
      276 CALL                             R22 2 1
      277 SETTABLEKS                       R22 R21 K19 ["Size"]
      279 CALL                             R19 2 1
      280 JUMP                             ; [+58]
      281 GETUPVAL                         R19 0
      282 GETTABLEKS                       R19 R19 K16 ["createElement"]
      284 GETUPVAL                         R20 8
      285 DUPTABLE                         R21 K73 [{["AnchorPoint"], ["BackgroundColor"], ["ImageTransparency"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["OverrideColor"], ["OverrideTransparency"], ["Position"], ["Static"] = True, [12], ["Transparent"] = True, ["ref"]}]
      286 GETIMPORT                        R22 K29 [Vector2.new]
      288 LOADK                            R23 K30 [0.5]
      289 LOADK                            R24 K30 [0.5]
      290 CALL                             R22 2 1
      291 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      293 SETTABLEKS                       R16 R21 K61 ["BackgroundColor"]
      295 JUMPIFNOT                        R6 ; [+2]
      296 LOADK                            R22 K74 [0.35]
      297 JUMP                             ; [+1]
      298 LOADN                            R22 0
      299 SETTABLEKS                       R22 R21 K62 ["ImageTransparency"]
      301 GETTABLEKS                       R22 R0 K63 ["InitialDistance"]
      303 SETTABLEKS                       R22 R21 K63 ["InitialDistance"]
      305 GETTABLEKS                       R22 R0 K64 ["Material"]
      307 SETTABLEKS                       R22 R21 K64 ["Material"]
      309 GETTABLEKS                       R22 R0 K65 ["MaterialPreviewGeometryType"]
      311 SETTABLEKS                       R22 R21 K65 ["MaterialPreviewGeometryType"]
      313 GETTABLEKS                       R22 R2 K46 ["GridItemBackgroundColor"]
      315 SETTABLEKS                       R22 R21 K66 ["MeshPartBackgroundColor"]
      317 GETTABLEKS                       R22 R0 K67 ["OverrideColor"]
      319 SETTABLEKS                       R22 R21 K67 ["OverrideColor"]
      321 GETTABLEKS                       R22 R0 K68 ["OverrideTransparency"]
      323 SETTABLEKS                       R22 R21 K68 ["OverrideTransparency"]
      325 GETIMPORT                        R22 K34 [UDim2.fromScale]
      327 LOADK                            R23 K30 [0.5]
      328 LOADK                            R24 K30 [0.5]
      329 CALL                             R22 2 1
      330 SETTABLEKS                       R22 R21 K18 ["Position"]
      332 GETTABLEKS                       R22 R2 K75 ["MaterialPreviewStyle"]
      334 SETTABLEKS                       R22 R21 K0 ["Style"]
      336 SETTABLEKS                       R1 R21 K72 ["ref"]
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K54 ["MaterialPreview"]
      341 SETTABLEKS                       R9 R18 K55 ["LabelArea"]
      343 GETUPVAL                         R19 0
      344 GETTABLEKS                       R19 R19 K16 ["createElement"]
      346 LOADK                            R20 K56 ["UICorner"]
      347 DUPTABLE                         R21 K76 [{"CornerRadius"}]
      348 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      350 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      352 CALL                             R19 2 1
      353 SETTABLEKS                       R19 R18 K56 ["UICorner"]
      355 GETUPVAL                         R19 0
      356 GETTABLEKS                       R19 R19 K16 ["createElement"]
      358 LOADK                            R20 K57 ["UIStroke"]
      359 DUPTABLE                         R21 K82 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1, ["Transparency"]}]
      360 GETIMPORT                        R22 K85 [Enum.ApplyStrokeMode.Border]
      362 SETTABLEKS                       R22 R21 K77 ["ApplyStrokeMode"]
      364 SETTABLEKS                       R17 R21 K78 ["Color"]
      366 JUMPIFNOT                        R6 ; [+2]
      367 LOADK                            R22 K74 [0.35]
      368 JUMP                             ; [+1]
      369 LOADN                            R22 0
      370 SETTABLEKS                       R22 R21 K81 ["Transparency"]
      372 CALL                             R19 2 1
      373 SETTABLEKS                       R19 R18 K57 ["UIStroke"]
      375 GETUPVAL                         R20 9
      376 CALL                             R20 0 1
      377 JUMPIFNOT                        R20 ; [+9]
      378 NOT                              R19 R7
      379 JUMPIF                           R19 ; [+8]
      380 GETTABLEKS                       R20 R0 K86 ["ShowTooltipWithLabel"]
      382 JUMPIFEQKB                       R20 TRUE ; [+2]
      384 LOADB                            R19 0 +1
      385 LOADB                            R19 1
      386 JUMP                             ; [+1]
      387 NOT                              R19 R7
      388 LOADNIL                          R20
      389 JUMPIFNOT                        R19 ; [+45]
      390 GETUPVAL                         R21 0
      391 GETTABLEKS                       R21 R21 K16 ["createElement"]
      393 GETUPVAL                         R22 10
      394 DUPTABLE                         R23 K91 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      395 SETTABLEKS                       R14 R23 K24 ["AnchorPoint"]
      397 GETTABLEKS                       R24 R0 K87 ["ContainerXBounds"]
      399 SETTABLEKS                       R24 R23 K87 ["ContainerXBounds"]
      401 GETTABLEKS                       R24 R0 K44 ["ContainerYBounds"]
      403 SETTABLEKS                       R24 R23 K44 ["ContainerYBounds"]
      405 LOADB                            R24 0
      406 GETTABLEKS                       R25 R0 K49 ["HoverEffectsEnabled"]
      408 JUMPIFEQKB                       R25 FALSE ; [+2]
      410 NOT                              R24 R6
      411 SETTABLEKS                       R24 R23 K88 ["Enabled"]
      413 GETTABLEKS                       R24 R0 K89 ["OnTooltipShown"]
      415 SETTABLEKS                       R24 R23 K89 ["OnTooltipShown"]
      417 SETTABLEKS                       R15 R23 K18 ["Position"]
      419 GETTABLEKS                       R25 R0 K92 ["InstantTooltipEnabled"]
      421 JUMPIFNOT                        R25 ; [+2]
      422 LOADN                            R24 0
      423 JUMP                             ; [+2]
      424 GETTABLEKS                       R24 R0 K93 ["TooltipDelay"]
      426 SETTABLEKS                       R24 R23 K90 ["ShowDelay"]
      428 GETTABLEKS                       R24 R0 K5 ["Text"]
      430 SETTABLEKS                       R24 R23 K5 ["Text"]
      432 CALL                             R21 2 1
      433 MOVE                             R20 R21
      434 JUMP                             ; [+10]
      435 GETUPVAL                         R21 0
      436 GETTABLEKS                       R21 R21 K16 ["createElement"]
      438 GETUPVAL                         R22 0
      439 GETTABLEKS                       R22 R22 K94 ["Fragment"]
      441 NEWTABLE                         R23 0 0
      443 CALL                             R21 2 1
      444 MOVE                             R20 R21
      445 DUPTABLE                         R21 K97 [{"Swatch", "Tooltip", "UICorner"}]
      446 GETUPVAL                         R22 0
      447 GETTABLEKS                       R22 R22 K16 ["createElement"]
      449 LOADK                            R23 K98 ["Frame"]
      450 DUPTABLE                         R24 K100 [{["BackgroundTransparency"] = 1, ["Size"]}]
      451 GETIMPORT                        R25 K34 [UDim2.fromScale]
      453 LOADN                            R26 1
      454 LOADN                            R27 1
      455 CALL                             R25 2 1
      456 SETTABLEKS                       R25 R24 K19 ["Size"]
      458 MOVE                             R25 R18
      459 CALL                             R22 3 1
      460 SETTABLEKS                       R22 R21 K95 ["Swatch"]
      462 SETTABLEKS                       R20 R21 K96 ["Tooltip"]
      464 GETUPVAL                         R22 0
      465 GETTABLEKS                       R22 R22 K16 ["createElement"]
      467 LOADK                            R23 K56 ["UICorner"]
      468 DUPTABLE                         R24 K76 [{"CornerRadius"}]
      469 GETTABLEKS                       R25 R2 K31 ["GridItemCornerRadius"]
      471 SETTABLEKS                       R25 R24 K25 ["CornerRadius"]
      473 CALL                             R22 2 1
      474 SETTABLEKS                       R22 R21 K56 ["UICorner"]
      476 LOADNIL                          R22
      477 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      479 JUMPIFNOT                        R23 ; [+5]
      480 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      482 MOVE                             R24 R3
      483 CALL                             R23 1 1
      484 MOVE                             R22 R23
      485 GETUPVAL                         R23 0
      486 GETTABLEKS                       R23 R23 K16 ["createElement"]
      488 LOADK                            R24 K102 ["TextButton"]
      489 NEWTABLE                         R25 16 0
      491 NOT                              R26 R6
      492 SETTABLEKS                       R26 R25 K103 ["Active"]
      494 LOADB                            R26 0
      495 SETTABLEKS                       R26 R25 K104 ["AutoButtonColor"]
      497 SETTABLEKS                       R16 R25 K105 ["BackgroundColor3"]
      499 JUMPIFNOT                        R6 ; [+2]
      500 LOADK                            R26 K74 [0.35]
      501 JUMP                             ; [+1]
      502 LOADN                            R26 0
      503 SETTABLEKS                       R26 R25 K99 ["BackgroundTransparency"]
      505 LOADN                            R26 0
      506 SETTABLEKS                       R26 R25 K106 ["BorderSizePixel"]
      508 GETTABLEKS                       R26 R0 K17 ["LayoutOrder"]
      510 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      512 GETTABLEKS                       R26 R0 K18 ["Position"]
      514 SETTABLEKS                       R26 R25 K18 ["Position"]
      516 NOT                              R26 R6
      517 SETTABLEKS                       R26 R25 K107 ["Selectable"]
      519 GETTABLEKS                       R26 R0 K19 ["Size"]
      521 SETTABLEKS                       R26 R25 K19 ["Size"]
      523 LOADK                            R26 K6 [""]
      524 SETTABLEKS                       R26 R25 K5 ["Text"]
      526 GETTABLEKS                       R26 R0 K5 ["Text"]
      528 SETTABLEKS                       R26 R25 K108 ["Name"]
      530 GETUPVAL                         R26 0
      531 GETTABLEKS                       R26 R26 K109 ["Event"]
      533 GETTABLEKS                       R26 R26 K110 ["Activated"]
      535 JUMPIFNOT                        R6 ; [+2]
      536 GETUPVAL                         R27 11
      537 JUMP                             ; [+1]
      538 MOVE                             R27 R12
      539 SETTABLE                         R27 R25 R26
      540 GETUPVAL                         R26 0
      541 GETTABLEKS                       R26 R26 K109 ["Event"]
      543 GETTABLEKS                       R26 R26 K111 ["MouseButton2Click"]
      545 JUMPIFNOT                        R6 ; [+2]
      546 GETUPVAL                         R27 11
      547 JUMP                             ; [+1]
      548 MOVE                             R27 R13
      549 SETTABLE                         R27 R25 R26
      550 GETUPVAL                         R26 0
      551 GETTABLEKS                       R26 R26 K109 ["Event"]
      553 GETTABLEKS                       R26 R26 K112 ["MouseEnter"]
      555 SETTABLE                         R10 R25 R26
      556 GETUPVAL                         R26 0
      557 GETTABLEKS                       R26 R26 K109 ["Event"]
      559 GETTABLEKS                       R26 R26 K113 ["MouseLeave"]
      561 SETTABLE                         R11 R25 R26
      562 GETUPVAL                         R26 0
      563 GETTABLEKS                       R26 R26 K109 ["Event"]
      565 GETTABLEKS                       R26 R26 K114 ["MouseMoved"]
      567 JUMPIF                           R6 ; [+3]
      568 GETTABLEKS                       R27 R0 K115 ["OnMouseMoved"]
      570 JUMP                             ; [+1]
      571 LOADNIL                          R27
      572 SETTABLE                         R27 R25 R26
      573 GETUPVAL                         R26 12
      574 GETTABLEKS                       R26 R26 K116 ["join"]
      576 MOVE                             R27 R21
      577 MOVE                             R28 R22
      578 CALL                             R26 2 -1
      579 CALL                             R23 -1 -1
      580 RETURN                           R23 -1

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
       46 GETTABLEKS                       R9 R9 K14 ["getFFlagMaterialGridItemLabelFoundationStyle"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Flags"]
       53 GETTABLEKS                       R10 R10 K15 ["getFFlagMaterialGridShowTooltipWithLabel"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R4 K16 ["UI"]
       58 GETTABLEKS                       R11 R10 K17 ["Pane"]
       60 GETTABLEKS                       R12 R10 K18 ["Shimmer"]
       62 GETTABLEKS                       R13 R10 K19 ["TextLabel"]
       64 GETTABLEKS                       R14 R10 K20 ["Tooltip"]
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K21 ["Components"]
       70 GETTABLEKS                       R16 R16 K22 ["MaterialPreview"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K25 [Color3.fromHex]
       75 LOADK                            R17 K26 ["#121215"]
       76 CALL                             R16 1 1
       77 DUPCLOSURE                       R17 K27 [PROTO_0]
       78 DUPCLOSURE                       R18 K28 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R3
       92 GETTABLEKS                       R19 R5 K29 ["forwardRef"]
       94 MOVE                             R20 R18
       95 CALL                             R19 1 -1
       96 RETURN                           R19 -1
