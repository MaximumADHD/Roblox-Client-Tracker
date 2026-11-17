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
       29 GETTABLEKS                       R8 R2 K7 ["ItemLabelScrimColor"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R7
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R8
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R11 0 4
       44 MOVE                             R12 R7
       45 MOVE                             R13 R2
       46 MOVE                             R14 R8
       47 GETTABLEKS                       R15 R0 K5 ["Text"]
       49 SETLIST                          R11 R12 4 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       55 NEWCLOSURE                       R11 P1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R12 0 4
       62 MOVE                             R13 R6
       63 GETTABLEKS                       R14 R0 K10 ["OnMouseEnter"]
       65 MOVE                             R15 R3
       66 MOVE                             R16 R5
       67 SETLIST                          R12 R13 4 [1]
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       73 NEWCLOSURE                       R12 P2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R13 0 4
       80 MOVE                             R14 R6
       81 GETTABLEKS                       R15 R0 K11 ["OnMouseLeave"]
       83 MOVE                             R16 R3
       84 MOVE                             R17 R5
       85 SETLIST                          R13 R14 4 [1]
       87 CALL                             R11 2 1
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       91 NEWCLOSURE                       R13 P3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R14 0 2
       96 GETTABLEKS                       R15 R0 K12 ["OnClick"]
       98 MOVE                             R16 R3
       99 SETLIST                          R14 R15 2 [1]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K9 ["useCallback"]
      105 NEWCLOSURE                       R14 P4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R3
      108 NEWTABLE                         R15 0 2
      110 GETTABLEKS                       R16 R0 K13 ["OnRightClick"]
      112 MOVE                             R17 R3
      113 SETLIST                          R15 R16 2 [1]
      115 CALL                             R13 2 1
      116 GETTABLEKS                       R14 R0 K14 ["Loading"]
      118 JUMPIFNOT                        R14 ; [+57]
      119 GETTABLEKS                       R14 R2 K15 ["ShimmerSizeOffset"]
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R15 R15 K16 ["createElement"]
      124 GETUPVAL                         R16 3
      125 DUPTABLE                         R17 K21 [{["LayoutOrder"], ["Position"], ["Size"], [4] = "BorderBox"}]
      126 GETTABLEKS                       R18 R0 K17 ["LayoutOrder"]
      128 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      130 GETTABLEKS                       R18 R0 K18 ["Position"]
      132 SETTABLEKS                       R18 R17 K18 ["Position"]
      134 GETTABLEKS                       R18 R0 K19 ["Size"]
      136 SETTABLEKS                       R18 R17 K19 ["Size"]
      138 DUPTABLE                         R18 K23 [{"Shimmer"}]
      139 GETUPVAL                         R19 0
      140 GETTABLEKS                       R19 R19 K16 ["createElement"]
      142 GETUPVAL                         R20 4
      143 DUPTABLE                         R21 K26 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      144 GETIMPORT                        R22 K29 [Vector2.new]
      146 LOADK                            R23 K30 [0.5]
      147 LOADK                            R24 K30 [0.5]
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      151 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      153 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      155 GETIMPORT                        R22 K34 [UDim2.fromScale]
      157 LOADK                            R23 K30 [0.5]
      158 LOADK                            R24 K30 [0.5]
      159 CALL                             R22 2 1
      160 SETTABLEKS                       R22 R21 K18 ["Position"]
      162 GETIMPORT                        R22 K35 [UDim2.new]
      164 LOADN                            R23 1
      165 MINUS                            R24 R14
      166 LOADN                            R25 1
      167 MINUS                            R26 R14
      168 CALL                             R22 4 1
      169 SETTABLEKS                       R22 R21 K19 ["Size"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K22 ["Shimmer"]
      174 CALL                             R15 3 -1
      175 RETURN                           R15 -1
      176 LOADNIL                          R14
      177 LOADNIL                          R15
      178 GETTABLEKS                       R16 R0 K36 ["ShouldCenterTooltip"]
      180 JUMPIFNOT                        R16 ; [+45]
      181 GETIMPORT                        R16 K34 [UDim2.fromScale]
      183 LOADK                            R17 K30 [0.5]
      184 LOADK                            R18 K30 [0.5]
      185 CALL                             R16 2 1
      186 MOVE                             R14 R16
      187 GETTABLEKS                       R17 R0 K18 ["Position"]
      189 GETTABLEKS                       R17 R17 K37 ["X"]
      191 GETTABLEKS                       R17 R17 K38 ["Offset"]
      193 GETTABLEKS                       R19 R0 K40 ["GridItemSize"]
      195 DIVK                             R18 R19 K39 [2]
      196 ADD                              R16 R17 R18
      197 GETTABLEKS                       R19 R0 K18 ["Position"]
      199 GETTABLEKS                       R19 R19 K41 ["Y"]
      201 GETTABLEKS                       R19 R19 K38 ["Offset"]
      203 GETTABLEKS                       R21 R0 K40 ["GridItemSize"]
      205 MULK                             R20 R21 K42 [0.8]
      206 ADD                              R18 R19 R20
      207 GETTABLEKS                       R19 R0 K43 ["CanvasPosition"]
      209 GETTABLEKS                       R19 R19 K41 ["Y"]
      211 SUB                              R17 R18 R19
      212 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      214 JUMPIFNOT                        R18 ; [+5]
      215 GETTABLEKS                       R18 R0 K44 ["ContainerYBounds"]
      217 GETTABLEKS                       R18 R18 K45 ["Min"]
      219 ADD                              R17 R17 R18
      220 GETIMPORT                        R18 K29 [Vector2.new]
      222 MOVE                             R19 R16
      223 MOVE                             R20 R17
      224 CALL                             R18 2 1
      225 MOVE                             R15 R18
      226 GETTABLEKS                       R16 R2 K46 ["GridItemBackgroundColor"]
      228 GETTABLEKS                       R17 R0 K47 ["Applied"]
      230 JUMPIFNOT                        R17 ; [+2]
      231 GETTABLEKS                       R16 R2 K48 ["GridItemBackgroundColorApplied"]
      233 JUMPIFNOT                        R4 ; [+6]
      234 JUMPIF                           R6 ; [+5]
      235 GETTABLEKS                       R17 R0 K49 ["HoverEffectsEnabled"]
      237 JUMPIFNOT                        R17 ; [+2]
      238 GETTABLEKS                       R16 R2 K50 ["GridItemBackgroundColorHovered"]
      240 GETTABLEKS                       R18 R0 K51 ["Selected"]
      242 JUMPIFNOT                        R18 ; [+3]
      243 GETTABLEKS                       R17 R2 K52 ["GridItemBorderColorSelected"]
      245 JUMP                             ; [+2]
      246 GETTABLEKS                       R17 R2 K53 ["GridItemBorderColor"]
      248 DUPTABLE                         R18 K58 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      249 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      251 JUMPIFNOT                        R20 ; [+15]
      252 GETUPVAL                         R19 0
      253 GETTABLEKS                       R19 R19 K16 ["createElement"]
      255 GETTABLEKS                       R20 R0 K59 ["CustomPreview"]
      257 DUPTABLE                         R21 K60 [{"Size"}]
      258 GETIMPORT                        R22 K34 [UDim2.fromScale]
      260 LOADN                            R23 1
      261 LOADN                            R24 1
      262 CALL                             R22 2 1
      263 SETTABLEKS                       R22 R21 K19 ["Size"]
      265 CALL                             R19 2 1
      266 JUMP                             ; [+58]
      267 GETUPVAL                         R19 0
      268 GETTABLEKS                       R19 R19 K16 ["createElement"]
      270 GETUPVAL                         R20 5
      271 DUPTABLE                         R21 K73 [{["AnchorPoint"], ["BackgroundColor"], ["ImageTransparency"], ["InitialDistance"], ["Material"], ["MaterialPreviewGeometryType"], ["MeshPartBackgroundColor"], ["OverrideColor"], ["OverrideTransparency"], ["Position"], ["Static"] = True, [12], ["Transparent"] = True, ["ref"]}]
      272 GETIMPORT                        R22 K29 [Vector2.new]
      274 LOADK                            R23 K30 [0.5]
      275 LOADK                            R24 K30 [0.5]
      276 CALL                             R22 2 1
      277 SETTABLEKS                       R22 R21 K24 ["AnchorPoint"]
      279 SETTABLEKS                       R16 R21 K61 ["BackgroundColor"]
      281 JUMPIFNOT                        R6 ; [+2]
      282 LOADK                            R22 K74 [0.35]
      283 JUMP                             ; [+1]
      284 LOADN                            R22 0
      285 SETTABLEKS                       R22 R21 K62 ["ImageTransparency"]
      287 GETTABLEKS                       R22 R0 K63 ["InitialDistance"]
      289 SETTABLEKS                       R22 R21 K63 ["InitialDistance"]
      291 GETTABLEKS                       R22 R0 K64 ["Material"]
      293 SETTABLEKS                       R22 R21 K64 ["Material"]
      295 GETTABLEKS                       R22 R0 K65 ["MaterialPreviewGeometryType"]
      297 SETTABLEKS                       R22 R21 K65 ["MaterialPreviewGeometryType"]
      299 GETTABLEKS                       R22 R2 K46 ["GridItemBackgroundColor"]
      301 SETTABLEKS                       R22 R21 K66 ["MeshPartBackgroundColor"]
      303 GETTABLEKS                       R22 R0 K67 ["OverrideColor"]
      305 SETTABLEKS                       R22 R21 K67 ["OverrideColor"]
      307 GETTABLEKS                       R22 R0 K68 ["OverrideTransparency"]
      309 SETTABLEKS                       R22 R21 K68 ["OverrideTransparency"]
      311 GETIMPORT                        R22 K34 [UDim2.fromScale]
      313 LOADK                            R23 K30 [0.5]
      314 LOADK                            R24 K30 [0.5]
      315 CALL                             R22 2 1
      316 SETTABLEKS                       R22 R21 K18 ["Position"]
      318 GETTABLEKS                       R22 R2 K75 ["MaterialPreviewStyle"]
      320 SETTABLEKS                       R22 R21 K0 ["Style"]
      322 SETTABLEKS                       R1 R21 K72 ["ref"]
      324 CALL                             R19 2 1
      325 SETTABLEKS                       R19 R18 K54 ["MaterialPreview"]
      327 SETTABLEKS                       R9 R18 K55 ["LabelArea"]
      329 GETUPVAL                         R19 0
      330 GETTABLEKS                       R19 R19 K16 ["createElement"]
      332 LOADK                            R20 K56 ["UICorner"]
      333 DUPTABLE                         R21 K76 [{"CornerRadius"}]
      334 GETTABLEKS                       R22 R2 K31 ["GridItemCornerRadius"]
      336 SETTABLEKS                       R22 R21 K25 ["CornerRadius"]
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K56 ["UICorner"]
      341 GETUPVAL                         R19 0
      342 GETTABLEKS                       R19 R19 K16 ["createElement"]
      344 LOADK                            R20 K57 ["UIStroke"]
      345 DUPTABLE                         R21 K82 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 1, ["Transparency"]}]
      346 GETIMPORT                        R22 K85 [Enum.ApplyStrokeMode.Border]
      348 SETTABLEKS                       R22 R21 K77 ["ApplyStrokeMode"]
      350 SETTABLEKS                       R17 R21 K78 ["Color"]
      352 JUMPIFNOT                        R6 ; [+2]
      353 LOADK                            R22 K74 [0.35]
      354 JUMP                             ; [+1]
      355 LOADN                            R22 0
      356 SETTABLEKS                       R22 R21 K81 ["Transparency"]
      358 CALL                             R19 2 1
      359 SETTABLEKS                       R19 R18 K57 ["UIStroke"]
      361 GETUPVAL                         R20 6
      362 CALL                             R20 0 1
      363 JUMPIFNOT                        R20 ; [+9]
      364 NOT                              R19 R7
      365 JUMPIF                           R19 ; [+8]
      366 GETTABLEKS                       R20 R0 K86 ["ShowTooltipWithLabel"]
      368 JUMPIFEQKB                       R20 TRUE ; [+2]
      370 LOADB                            R19 0 +1
      371 LOADB                            R19 1
      372 JUMP                             ; [+1]
      373 NOT                              R19 R7
      374 LOADNIL                          R20
      375 JUMPIFNOT                        R19 ; [+45]
      376 GETUPVAL                         R21 0
      377 GETTABLEKS                       R21 R21 K16 ["createElement"]
      379 GETUPVAL                         R22 7
      380 DUPTABLE                         R23 K91 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      381 SETTABLEKS                       R14 R23 K24 ["AnchorPoint"]
      383 GETTABLEKS                       R24 R0 K87 ["ContainerXBounds"]
      385 SETTABLEKS                       R24 R23 K87 ["ContainerXBounds"]
      387 GETTABLEKS                       R24 R0 K44 ["ContainerYBounds"]
      389 SETTABLEKS                       R24 R23 K44 ["ContainerYBounds"]
      391 LOADB                            R24 0
      392 GETTABLEKS                       R25 R0 K49 ["HoverEffectsEnabled"]
      394 JUMPIFEQKB                       R25 FALSE ; [+2]
      396 NOT                              R24 R6
      397 SETTABLEKS                       R24 R23 K88 ["Enabled"]
      399 GETTABLEKS                       R24 R0 K89 ["OnTooltipShown"]
      401 SETTABLEKS                       R24 R23 K89 ["OnTooltipShown"]
      403 SETTABLEKS                       R15 R23 K18 ["Position"]
      405 GETTABLEKS                       R25 R0 K92 ["InstantTooltipEnabled"]
      407 JUMPIFNOT                        R25 ; [+2]
      408 LOADN                            R24 0
      409 JUMP                             ; [+2]
      410 GETTABLEKS                       R24 R0 K93 ["TooltipDelay"]
      412 SETTABLEKS                       R24 R23 K90 ["ShowDelay"]
      414 GETTABLEKS                       R24 R0 K5 ["Text"]
      416 SETTABLEKS                       R24 R23 K5 ["Text"]
      418 CALL                             R21 2 1
      419 MOVE                             R20 R21
      420 JUMP                             ; [+10]
      421 GETUPVAL                         R21 0
      422 GETTABLEKS                       R21 R21 K16 ["createElement"]
      424 GETUPVAL                         R22 0
      425 GETTABLEKS                       R22 R22 K94 ["Fragment"]
      427 NEWTABLE                         R23 0 0
      429 CALL                             R21 2 1
      430 MOVE                             R20 R21
      431 DUPTABLE                         R21 K97 [{"Swatch", "Tooltip", "UICorner"}]
      432 GETUPVAL                         R22 0
      433 GETTABLEKS                       R22 R22 K16 ["createElement"]
      435 LOADK                            R23 K98 ["Frame"]
      436 DUPTABLE                         R24 K100 [{["BackgroundTransparency"] = 1, ["Size"]}]
      437 GETIMPORT                        R25 K34 [UDim2.fromScale]
      439 LOADN                            R26 1
      440 LOADN                            R27 1
      441 CALL                             R25 2 1
      442 SETTABLEKS                       R25 R24 K19 ["Size"]
      444 MOVE                             R25 R18
      445 CALL                             R22 3 1
      446 SETTABLEKS                       R22 R21 K95 ["Swatch"]
      448 SETTABLEKS                       R20 R21 K96 ["Tooltip"]
      450 GETUPVAL                         R22 0
      451 GETTABLEKS                       R22 R22 K16 ["createElement"]
      453 LOADK                            R23 K56 ["UICorner"]
      454 DUPTABLE                         R24 K76 [{"CornerRadius"}]
      455 GETTABLEKS                       R25 R2 K31 ["GridItemCornerRadius"]
      457 SETTABLEKS                       R25 R24 K25 ["CornerRadius"]
      459 CALL                             R22 2 1
      460 SETTABLEKS                       R22 R21 K56 ["UICorner"]
      462 LOADNIL                          R22
      463 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      465 JUMPIFNOT                        R23 ; [+5]
      466 GETTABLEKS                       R23 R0 K101 ["OnRenderChildren"]
      468 MOVE                             R24 R3
      469 CALL                             R23 1 1
      470 MOVE                             R22 R23
      471 GETUPVAL                         R23 0
      472 GETTABLEKS                       R23 R23 K16 ["createElement"]
      474 LOADK                            R24 K102 ["TextButton"]
      475 NEWTABLE                         R25 16 0
      477 NOT                              R26 R6
      478 SETTABLEKS                       R26 R25 K103 ["Active"]
      480 LOADB                            R26 0
      481 SETTABLEKS                       R26 R25 K104 ["AutoButtonColor"]
      483 SETTABLEKS                       R16 R25 K105 ["BackgroundColor3"]
      485 JUMPIFNOT                        R6 ; [+2]
      486 LOADK                            R26 K74 [0.35]
      487 JUMP                             ; [+1]
      488 LOADN                            R26 0
      489 SETTABLEKS                       R26 R25 K99 ["BackgroundTransparency"]
      491 LOADN                            R26 0
      492 SETTABLEKS                       R26 R25 K106 ["BorderSizePixel"]
      494 GETTABLEKS                       R26 R0 K17 ["LayoutOrder"]
      496 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      498 GETTABLEKS                       R26 R0 K18 ["Position"]
      500 SETTABLEKS                       R26 R25 K18 ["Position"]
      502 NOT                              R26 R6
      503 SETTABLEKS                       R26 R25 K107 ["Selectable"]
      505 GETTABLEKS                       R26 R0 K19 ["Size"]
      507 SETTABLEKS                       R26 R25 K19 ["Size"]
      509 LOADK                            R26 K6 [""]
      510 SETTABLEKS                       R26 R25 K5 ["Text"]
      512 GETTABLEKS                       R26 R0 K5 ["Text"]
      514 SETTABLEKS                       R26 R25 K108 ["Name"]
      516 GETUPVAL                         R26 0
      517 GETTABLEKS                       R26 R26 K109 ["Event"]
      519 GETTABLEKS                       R26 R26 K110 ["Activated"]
      521 JUMPIFNOT                        R6 ; [+2]
      522 GETUPVAL                         R27 8
      523 JUMP                             ; [+1]
      524 MOVE                             R27 R12
      525 SETTABLE                         R27 R25 R26
      526 GETUPVAL                         R26 0
      527 GETTABLEKS                       R26 R26 K109 ["Event"]
      529 GETTABLEKS                       R26 R26 K111 ["MouseButton2Click"]
      531 JUMPIFNOT                        R6 ; [+2]
      532 GETUPVAL                         R27 8
      533 JUMP                             ; [+1]
      534 MOVE                             R27 R13
      535 SETTABLE                         R27 R25 R26
      536 GETUPVAL                         R26 0
      537 GETTABLEKS                       R26 R26 K109 ["Event"]
      539 GETTABLEKS                       R26 R26 K112 ["MouseEnter"]
      541 SETTABLE                         R10 R25 R26
      542 GETUPVAL                         R26 0
      543 GETTABLEKS                       R26 R26 K109 ["Event"]
      545 GETTABLEKS                       R26 R26 K113 ["MouseLeave"]
      547 SETTABLE                         R11 R25 R26
      548 GETUPVAL                         R26 0
      549 GETTABLEKS                       R26 R26 K109 ["Event"]
      551 GETTABLEKS                       R26 R26 K114 ["MouseMoved"]
      553 JUMPIF                           R6 ; [+3]
      554 GETTABLEKS                       R27 R0 K115 ["OnMouseMoved"]
      556 JUMP                             ; [+1]
      557 LOADNIL                          R27
      558 SETTABLE                         R27 R25 R26
      559 GETUPVAL                         R26 9
      560 GETTABLEKS                       R26 R26 K116 ["join"]
      562 MOVE                             R27 R21
      563 MOVE                             R28 R22
      564 CALL                             R26 2 -1
      565 CALL                             R23 -1 -1
      566 RETURN                           R23 -1

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
       42 GETTABLEKS                       R8 R8 K12 ["getFFlagMaterialGridShowTooltipWithLabel"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R4 K13 ["UI"]
       47 GETTABLEKS                       R9 R8 K14 ["Pane"]
       49 GETTABLEKS                       R10 R8 K15 ["Shimmer"]
       51 GETTABLEKS                       R11 R8 K16 ["TextLabel"]
       53 GETTABLEKS                       R12 R8 K17 ["Tooltip"]
       55 GETIMPORT                        R13 K4 [require]
       57 GETTABLEKS                       R14 R0 K18 ["Components"]
       59 GETTABLEKS                       R14 R14 K19 ["MaterialPreview"]
       61 CALL                             R13 1 1
       62 DUPCLOSURE                       R14 K20 [PROTO_0]
       63 DUPCLOSURE                       R15 K21 [PROTO_6]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R14
       73 CAPTURE                          VAL R3
       74 GETTABLEKS                       R16 R5 K22 ["forwardRef"]
       76 MOVE                             R17 R15
       77 CALL                             R16 1 -1
       78 RETURN                           R16 -1
