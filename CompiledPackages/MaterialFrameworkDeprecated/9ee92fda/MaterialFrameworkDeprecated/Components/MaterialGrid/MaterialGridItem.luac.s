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
      123 JUMPIFNOT                        R14 ; [+57]
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
      144 GETUPVAL                         R19 0
      145 GETTABLEKS                       R19 R19 K16 ["createElement"]
      147 GETUPVAL                         R20 6
      148 DUPTABLE                         R21 K26 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      149 GETIMPORT                        R22 K29 [Vector2.new]
      151 LOADK                            R23 K30 [0.5]
      152 LOADK                            R24 K30 [0.5]
      153 CALL                             R22 2 1
      154 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      156 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      158 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      160 GETIMPORT                        R22 K34 [UDim2.fromScale]
      162 LOADK                            R23 K30 [0.5]
      163 LOADK                            R24 K30 [0.5]
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K18 ["Position"]
      167 GETIMPORT                        R22 K35 [UDim2.new]
      169 LOADN                            R23 1
      170 MINUS                            R24 R14
      171 LOADN                            R25 1
      172 MINUS                            R26 R14
      173 CALL                             R22 4 1
      174 SETTABLEKS                       R22 R21 K19 ["Size"]
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K22 ["Shimmer"]
      179 CALL                             R15 3 -1
      180 RETURN                           R15 -1
      181 LOADNIL                          R14
      182 LOADNIL                          R15
      183 GETTABLEKS                       R16 R0 K36 ["ShouldCenterTooltip"]
      185 JUMPIFNOT                        R16 ; [+45]
      186 GETIMPORT                        R16 K34 [UDim2.fromScale]
      188 LOADK                            R17 K30 [0.5]
      189 LOADK                            R18 K30 [0.5]
      190 CALL                             R16 2 1
      191 MOVE                             R14 R16
      192 GETTABLEKS                       R17 R0 K18 ["Position"]
      194 GETTABLEKS                       R17 R17 K37 ["X"]
      196 GETTABLEKS                       R17 R17 K38 ["Offset"]
      198 GETTABLEKS                       R19 R0 K40 ["GridItemSize"]
      200 DIVK                             R18 R19 K39 [2]
      201 ADD                              R16 R17 R18
      202 GETTABLEKS                       R19 R0 K18 ["Position"]
      204 GETTABLEKS                       R19 R19 K41 ["Y"]
      206 GETTABLEKS                       R19 R19 K38 ["Offset"]
      208 GETTABLEKS                       R21 R0 K40 ["GridItemSize"]
      210 MULK                             R20 R21 K42 [0.8]
      211 ADD                              R18 R19 R20
      212 GETTABLEKS                       R19 R0 K43 ["CanvasPosition"]
      214 GETTABLEKS                       R19 R19 K41 ["Y"]
      216 SUB                              R17 R18 R19
      217 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      219 JUMPIFNOT                        R18 ; [+5]
      220 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      222 GETTABLEKS                       R18 R18 K45 ["Min"]
      224 ADD                              R17 R17 R18
      225 GETIMPORT                        R18 K29 [Vector2.new]
      227 MOVE                             R19 R16
      228 MOVE                             R20 R17
      229 CALL                             R18 2 1
      230 MOVE                             R15 R18
      231 GETTABLEKS                       R16 R2 K46 ["GridItemBackgroundColor"]
      233 GETTABLEKS                       R17 R0 K47 ["Applied"]
      235 JUMPIFNOT                        R17 ; [+2]
      236 GETTABLEKS                       R16 R2 K48 ["GridItemBackgroundColorApplied"]
      238 JUMPIFNOT                        R4 ; [+6]
      239 JUMPIF                           R6 ; [+5]
      240 GETTABLEKS                       R17 R0 K49 ["HoverEffectsEnabled"]
      242 JUMPIFNOT                        R17 ; [+2]
      243 GETTABLEKS                       R16 R2 K50 ["GridItemBackgroundColorHovered"]
      245 GETTABLEKS                       R18 R0 K51 ["Selected"]
      247 JUMPIFNOT                        R18 ; [+3]
      248 GETTABLEKS                       R17 R2 K52 ["GridItemBorderColorSelected"]
      250 JUMP                             ; [+2]
      251 GETTABLEKS                       R17 R2 K53 ["GridItemBorderColor"]
      253 DUPTABLE                         R18 K58 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      254 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      256 JUMPIFNOT                        R20 ; [+15]
      257 GETUPVAL                         R19 0
      258 GETTABLEKS                       R19 R19 K16 ["createElement"]
      260 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      262 DUPTABLE                         R21 K60 [{"Size"}]
      263 GETIMPORT                        R22 K34 [UDim2.fromScale]
      265 LOADN                            R23 1
      266 LOADN                            R24 1
      267 CALL                             R22 2 1
      268 SETTABLEKS                       R22 R21 K19 ["Size"]
      270 CALL                             R19 2 1
      271 JUMP                             ; [+58]
      272 GETUPVAL                         R19 0
      273 GETTABLEKS                       R19 R19 K16 ["createElement"]
      275 GETUPVAL                         R20 7
      276 DUPTABLE                         R21 K73 [{["AnchorPoint"], ["BackgroundColor"], ["ImageTransparency"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["OverrideColor"], ["OverrideTransparency"], ["Position"], ["Static"] = True, [12], ["Transparent"] = True, ["ref"]}]
      277 GETIMPORT                        R22 K29 [Vector2.new]
      279 LOADK                            R23 K30 [0.5]
      280 LOADK                            R24 K30 [0.5]
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      284 SETTABLEKS                       R16 R21 K61 ["BackgroundColor"]
      286 JUMPIFNOT                        R6 ; [+2]
      287 LOADK                            R22 K74 [0.35]
      288 JUMP                             ; [+1]
      289 LOADN                            R22 0
      290 SETTABLEKS                       R22 R21 K62 ["ImageTransparency"]
      292 GETTABLEKS                       R22 R0 K63 ["InitialDistance"]
      294 SETTABLEKS                       R22 R21 K63 ["InitialDistance"]
      296 GETTABLEKS                       R22 R0 K64 ["Material"]
      298 SETTABLEKS                       R22 R21 K64 ["Material"]
      300 GETTABLEKS                       R22 R0 K65 ["MaterialPreviewGeometryType"]
      302 SETTABLEKS                       R22 R21 K65 ["MaterialPreviewGeometryType"]
      304 GETTABLEKS                       R22 R2 K46 ["GridItemBackgroundColor"]
      306 SETTABLEKS                       R22 R21 K66 ["MeshPartBackgroundColor"]
      308 GETTABLEKS                       R22 R0 K67 ["OverrideColor"]
      310 SETTABLEKS                       R22 R21 K67 ["OverrideColor"]
      312 GETTABLEKS                       R22 R0 K68 ["OverrideTransparency"]
      314 SETTABLEKS                       R22 R21 K68 ["OverrideTransparency"]
      316 GETIMPORT                        R22 K34 [UDim2.fromScale]
      318 LOADK                            R23 K30 [0.5]
      319 LOADK                            R24 K30 [0.5]
      320 CALL                             R22 2 1
      321 SETTABLEKS                       R22 R21 K18 ["Position"]
      323 GETTABLEKS                       R22 R2 K75 ["MaterialPreviewStyle"]
      325 SETTABLEKS                       R22 R21 K0 ["Style"]
      327 SETTABLEKS                       R1 R21 K72 ["ref"]
      329 CALL                             R19 2 1
      330 SETTABLEKS                       R19 R18 K54 ["MaterialPreview"]
      332 SETTABLEKS                       R9 R18 K55 ["LabelArea"]
      334 GETUPVAL                         R19 0
      335 GETTABLEKS                       R19 R19 K16 ["createElement"]
      337 LOADK                            R20 K56 ["UICorner"]
      338 DUPTABLE                         R21 K76 [{"CornerRadius"}]
      339 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      341 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      343 CALL                             R19 2 1
      344 SETTABLEKS                       R19 R18 K56 ["UICorner"]
      346 GETUPVAL                         R19 0
      347 GETTABLEKS                       R19 R19 K16 ["createElement"]
      349 LOADK                            R20 K57 ["UIStroke"]
      350 DUPTABLE                         R21 K82 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1, ["Transparency"]}]
      351 GETIMPORT                        R22 K85 [Enum.ApplyStrokeMode.Border]
      353 SETTABLEKS                       R22 R21 K77 ["ApplyStrokeMode"]
      355 SETTABLEKS                       R17 R21 K78 ["Color"]
      357 JUMPIFNOT                        R6 ; [+2]
      358 LOADK                            R22 K74 [0.35]
      359 JUMP                             ; [+1]
      360 LOADN                            R22 0
      361 SETTABLEKS                       R22 R21 K81 ["Transparency"]
      363 CALL                             R19 2 1
      364 SETTABLEKS                       R19 R18 K57 ["UIStroke"]
      366 GETUPVAL                         R20 8
      367 CALL                             R20 0 1
      368 JUMPIFNOT                        R20 ; [+9]
      369 NOT                              R19 R7
      370 JUMPIF                           R19 ; [+8]
      371 GETTABLEKS                       R20 R0 K86 ["ShowTooltipWithLabel"]
      373 JUMPIFEQKB                       R20 TRUE ; [+2]
      375 LOADB                            R19 0 +1
      376 LOADB                            R19 1
      377 JUMP                             ; [+1]
      378 NOT                              R19 R7
      379 LOADNIL                          R20
      380 JUMPIFNOT                        R19 ; [+45]
      381 GETUPVAL                         R21 0
      382 GETTABLEKS                       R21 R21 K16 ["createElement"]
      384 GETUPVAL                         R22 9
      385 DUPTABLE                         R23 K91 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      386 SETTABLEKS                       R14 R23 K24 ["AnchorPoint"]
      388 GETTABLEKS                       R24 R0 K87 ["ContainerXBounds"]
      390 SETTABLEKS                       R24 R23 K87 ["ContainerXBounds"]
      392 GETTABLEKS                       R24 R0 K44 ["ContainerYBounds"]
      394 SETTABLEKS                       R24 R23 K44 ["ContainerYBounds"]
      396 LOADB                            R24 0
      397 GETTABLEKS                       R25 R0 K49 ["HoverEffectsEnabled"]
      399 JUMPIFEQKB                       R25 FALSE ; [+2]
      401 NOT                              R24 R6
      402 SETTABLEKS                       R24 R23 K88 ["Enabled"]
      404 GETTABLEKS                       R24 R0 K89 ["OnTooltipShown"]
      406 SETTABLEKS                       R24 R23 K89 ["OnTooltipShown"]
      408 SETTABLEKS                       R15 R23 K18 ["Position"]
      410 GETTABLEKS                       R25 R0 K92 ["InstantTooltipEnabled"]
      412 JUMPIFNOT                        R25 ; [+2]
      413 LOADN                            R24 0
      414 JUMP                             ; [+2]
      415 GETTABLEKS                       R24 R0 K93 ["TooltipDelay"]
      417 SETTABLEKS                       R24 R23 K90 ["ShowDelay"]
      419 GETTABLEKS                       R24 R0 K5 ["Text"]
      421 SETTABLEKS                       R24 R23 K5 ["Text"]
      423 CALL                             R21 2 1
      424 MOVE                             R20 R21
      425 JUMP                             ; [+10]
      426 GETUPVAL                         R21 0
      427 GETTABLEKS                       R21 R21 K16 ["createElement"]
      429 GETUPVAL                         R22 0
      430 GETTABLEKS                       R22 R22 K94 ["Fragment"]
      432 NEWTABLE                         R23 0 0
      434 CALL                             R21 2 1
      435 MOVE                             R20 R21
      436 DUPTABLE                         R21 K97 [{"Swatch", "Tooltip", "UICorner"}]
      437 GETUPVAL                         R22 0
      438 GETTABLEKS                       R22 R22 K16 ["createElement"]
      440 LOADK                            R23 K98 ["Frame"]
      441 DUPTABLE                         R24 K100 [{["BackgroundTransparency"] = 1, ["Size"]}]
      442 GETIMPORT                        R25 K34 [UDim2.fromScale]
      444 LOADN                            R26 1
      445 LOADN                            R27 1
      446 CALL                             R25 2 1
      447 SETTABLEKS                       R25 R24 K19 ["Size"]
      449 MOVE                             R25 R18
      450 CALL                             R22 3 1
      451 SETTABLEKS                       R22 R21 K95 ["Swatch"]
      453 SETTABLEKS                       R20 R21 K96 ["Tooltip"]
      455 GETUPVAL                         R22 0
      456 GETTABLEKS                       R22 R22 K16 ["createElement"]
      458 LOADK                            R23 K56 ["UICorner"]
      459 DUPTABLE                         R24 K76 [{"CornerRadius"}]
      460 GETTABLEKS                       R25 R2 K31 ["GridItemCornerRadius"]
      462 SETTABLEKS                       R25 R24 K25 ["CornerRadius"]
      464 CALL                             R22 2 1
      465 SETTABLEKS                       R22 R21 K56 ["UICorner"]
      467 LOADNIL                          R22
      468 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      470 JUMPIFNOT                        R23 ; [+5]
      471 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      473 MOVE                             R24 R3
      474 CALL                             R23 1 1
      475 MOVE                             R22 R23
      476 GETUPVAL                         R23 0
      477 GETTABLEKS                       R23 R23 K16 ["createElement"]
      479 LOADK                            R24 K102 ["TextButton"]
      480 NEWTABLE                         R25 16 0
      482 NOT                              R26 R6
      483 SETTABLEKS                       R26 R25 K103 ["Active"]
      485 LOADB                            R26 0
      486 SETTABLEKS                       R26 R25 K104 ["AutoButtonColor"]
      488 SETTABLEKS                       R16 R25 K105 ["BackgroundColor3"]
      490 JUMPIFNOT                        R6 ; [+2]
      491 LOADK                            R26 K74 [0.35]
      492 JUMP                             ; [+1]
      493 LOADN                            R26 0
      494 SETTABLEKS                       R26 R25 K99 ["BackgroundTransparency"]
      496 LOADN                            R26 0
      497 SETTABLEKS                       R26 R25 K106 ["BorderSizePixel"]
      499 GETTABLEKS                       R26 R0 K17 ["LayoutOrder"]
      501 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      503 GETTABLEKS                       R26 R0 K18 ["Position"]
      505 SETTABLEKS                       R26 R25 K18 ["Position"]
      507 NOT                              R26 R6
      508 SETTABLEKS                       R26 R25 K107 ["Selectable"]
      510 GETTABLEKS                       R26 R0 K19 ["Size"]
      512 SETTABLEKS                       R26 R25 K19 ["Size"]
      514 LOADK                            R26 K6 [""]
      515 SETTABLEKS                       R26 R25 K5 ["Text"]
      517 GETTABLEKS                       R26 R0 K5 ["Text"]
      519 SETTABLEKS                       R26 R25 K108 ["Name"]
      521 GETUPVAL                         R26 0
      522 GETTABLEKS                       R26 R26 K109 ["Event"]
      524 GETTABLEKS                       R26 R26 K110 ["Activated"]
      526 JUMPIFNOT                        R6 ; [+2]
      527 GETUPVAL                         R27 10
      528 JUMP                             ; [+1]
      529 MOVE                             R27 R12
      530 SETTABLE                         R27 R25 R26
      531 GETUPVAL                         R26 0
      532 GETTABLEKS                       R26 R26 K109 ["Event"]
      534 GETTABLEKS                       R26 R26 K111 ["MouseButton2Click"]
      536 JUMPIFNOT                        R6 ; [+2]
      537 GETUPVAL                         R27 10
      538 JUMP                             ; [+1]
      539 MOVE                             R27 R13
      540 SETTABLE                         R27 R25 R26
      541 GETUPVAL                         R26 0
      542 GETTABLEKS                       R26 R26 K109 ["Event"]
      544 GETTABLEKS                       R26 R26 K112 ["MouseEnter"]
      546 SETTABLE                         R10 R25 R26
      547 GETUPVAL                         R26 0
      548 GETTABLEKS                       R26 R26 K109 ["Event"]
      550 GETTABLEKS                       R26 R26 K113 ["MouseLeave"]
      552 SETTABLE                         R11 R25 R26
      553 GETUPVAL                         R26 0
      554 GETTABLEKS                       R26 R26 K109 ["Event"]
      556 GETTABLEKS                       R26 R26 K114 ["MouseMoved"]
      558 JUMPIF                           R6 ; [+3]
      559 GETTABLEKS                       R27 R0 K115 ["OnMouseMoved"]
      561 JUMP                             ; [+1]
      562 LOADNIL                          R27
      563 SETTABLE                         R27 R25 R26
      564 GETUPVAL                         R26 11
      565 GETTABLEKS                       R26 R26 K116 ["join"]
      567 MOVE                             R27 R21
      568 MOVE                             R28 R22
      569 CALL                             R26 2 -1
      570 CALL                             R23 -1 -1
      571 RETURN                           R23 -1

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
       38 GETIMPORT                        R7 K4 [require]
       40 GETTABLEKS                       R8 R0 K11 ["Flags"]
       42 GETTABLEKS                       R8 R8 K12 ["getFFlagMaterialGridItemLabelFoundationStyle"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Flags"]
       49 GETTABLEKS                       R9 R9 K13 ["getFFlagMaterialGridShowTooltipWithLabel"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R4 K14 ["UI"]
       54 GETTABLEKS                       R10 R9 K15 ["Pane"]
       56 GETTABLEKS                       R11 R9 K16 ["Shimmer"]
       58 GETTABLEKS                       R12 R9 K17 ["TextLabel"]
       60 GETTABLEKS                       R13 R9 K18 ["Tooltip"]
       62 GETIMPORT                        R14 K4 [require]
       64 GETTABLEKS                       R15 R0 K19 ["Components"]
       66 GETTABLEKS                       R15 R15 K20 ["MaterialPreview"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K23 [Color3.fromHex]
       71 LOADK                            R16 K24 ["#121215"]
       72 CALL                             R15 1 1
       73 DUPCLOSURE                       R16 K25 [PROTO_0]
       74 DUPCLOSURE                       R17 K26 [PROTO_6]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R3
       87 GETTABLEKS                       R18 R5 K27 ["forwardRef"]
       89 MOVE                             R19 R17
       90 CALL                             R18 1 -1
       91 RETURN                           R18 -1
