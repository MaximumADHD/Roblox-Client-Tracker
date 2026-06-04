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
       18 DUPTABLE                         R3 K9 [{"AnchorPoint", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
       19 GETIMPORT                        R4 K12 [Vector2.new]
       21 LOADN                            R5 0
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K3 ["AnchorPoint"]
       26 GETIMPORT                        R4 K15 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R4 R3 K4 ["AutomaticSize"]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       36 GETIMPORT                        R4 K18 [UDim2.fromScale]
       38 LOADN                            R5 0
       39 LOADN                            R6 1
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K7 ["Position"]
       43 GETIMPORT                        R4 K18 [UDim2.fromScale]
       45 LOADN                            R5 1
       46 LOADN                            R6 0
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K8 ["Size"]
       50 DUPTABLE                         R4 K21 [{"Scrim", "Text"}]
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K0 ["createElement"]
       54 LOADK                            R6 K2 ["Frame"]
       55 DUPTABLE                         R7 K24 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ZIndex"}]
       56 GETUPVAL                         R8 3
       57 SETTABLEKS                       R8 R7 K22 ["BackgroundColor3"]
       59 LOADN                            R8 0
       60 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
       62 LOADN                            R8 0
       63 SETTABLEKS                       R8 R7 K6 ["BorderSizePixel"]
       65 GETIMPORT                        R8 K18 [UDim2.fromScale]
       67 LOADN                            R9 0
       68 LOADN                            R10 0
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K7 ["Position"]
       72 GETIMPORT                        R8 K18 [UDim2.fromScale]
       74 LOADN                            R9 1
       75 LOADN                            R10 1
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K8 ["Size"]
       79 MOVE                             R8 R0
       80 CALL                             R8 0 1
       81 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
       83 DUPTABLE                         R8 K26 [{"Shade"}]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K0 ["createElement"]
       87 LOADK                            R10 K27 ["UIGradient"]
       88 DUPTABLE                         R11 K31 [{"Color", "Rotation", "Transparency"}]
       89 GETIMPORT                        R12 K33 [ColorSequence.new]
       91 GETUPVAL                         R13 3
       92 GETUPVAL                         R14 3
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K28 ["Color"]
       96 LOADN                            R12 90
       97 SETTABLEKS                       R12 R11 K29 ["Rotation"]
       99 GETIMPORT                        R12 K35 [NumberSequence.new]
      101 NEWTABLE                         R13 0 2
      103 GETIMPORT                        R14 K37 [NumberSequenceKeypoint.new]
      105 LOADN                            R15 0
      106 LOADN                            R16 1
      107 CALL                             R14 2 1
      108 GETIMPORT                        R15 K37 [NumberSequenceKeypoint.new]
      110 LOADN                            R16 1
      111 LOADN                            R17 0
      112 CALL                             R15 2 -1
      113 SETLIST                          R13 R14 -1 [1]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K30 ["Transparency"]
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K25 ["Shade"]
      121 CALL                             R5 3 1
      122 SETTABLEKS                       R5 R4 K19 ["Scrim"]
      124 GETUPVAL                         R5 1
      125 GETTABLEKS                       R5 R5 K0 ["createElement"]
      127 GETUPVAL                         R6 4
      128 DUPTABLE                         R7 K44 [{"AnchorPoint", "AutomaticSize", "Size", "Position", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped", "ZIndex"}]
      129 GETIMPORT                        R8 K46 [Vector2.zero]
      131 SETTABLEKS                       R8 R7 K3 ["AnchorPoint"]
      133 GETIMPORT                        R8 K15 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
      137 GETIMPORT                        R8 K18 [UDim2.fromScale]
      139 LOADN                            R9 1
      140 LOADN                            R10 0
      141 CALL                             R8 2 1
      142 SETTABLEKS                       R8 R7 K8 ["Size"]
      144 GETIMPORT                        R8 K18 [UDim2.fromScale]
      146 LOADN                            R9 0
      147 LOADN                            R10 0
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K7 ["Position"]
      151 GETUPVAL                         R8 5
      152 GETTABLEKS                       R8 R8 K20 ["Text"]
      154 SETTABLEKS                       R8 R7 K20 ["Text"]
      156 GETUPVAL                         R8 6
      157 GETTABLEKS                       R8 R8 K47 ["ItemLabelTextColor"]
      159 SETTABLEKS                       R8 R7 K38 ["TextColor"]
      161 GETUPVAL                         R8 6
      162 GETTABLEKS                       R8 R8 K39 ["TextSize"]
      164 SETTABLEKS                       R8 R7 K39 ["TextSize"]
      166 GETIMPORT                        R8 K49 [Enum.TextTruncate.AtEnd]
      168 SETTABLEKS                       R8 R7 K40 ["TextTruncate"]
      170 GETIMPORT                        R8 K51 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R8 R7 K41 ["TextXAlignment"]
      174 GETIMPORT                        R8 K53 [Enum.TextYAlignment.Center]
      176 SETTABLEKS                       R8 R7 K42 ["TextYAlignment"]
      178 LOADB                            R8 0
      179 SETTABLEKS                       R8 R7 K43 ["TextWrapped"]
      181 MOVE                             R8 R0
      182 CALL                             R8 0 1
      183 SETTABLEKS                       R8 R7 K23 ["ZIndex"]
      185 DUPTABLE                         R8 K55 [{"Padding"}]
      186 GETUPVAL                         R9 1
      187 GETTABLEKS                       R9 R9 K0 ["createElement"]
      189 LOADK                            R10 K56 ["UIPadding"]
      190 DUPTABLE                         R11 K59 [{"PaddingBottom", "PaddingLeft"}]
      191 GETUPVAL                         R12 6
      192 GETTABLEKS                       R12 R12 K60 ["GridItemLabelPadding"]
      194 GETTABLEKS                       R12 R12 K57 ["PaddingBottom"]
      196 SETTABLEKS                       R12 R11 K57 ["PaddingBottom"]
      198 GETUPVAL                         R12 6
      199 GETTABLEKS                       R12 R12 K60 ["GridItemLabelPadding"]
      201 GETTABLEKS                       R12 R12 K58 ["PaddingLeft"]
      203 SETTABLEKS                       R12 R11 K58 ["PaddingLeft"]
      205 CALL                             R9 2 1
      206 SETTABLEKS                       R9 R8 K54 ["Padding"]
      208 CALL                             R5 3 1
      209 SETTABLEKS                       R5 R4 K20 ["Text"]
      211 CALL                             R1 3 -1
      212 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["OnMouseEnter"]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 LOADB                            R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["OnMouseLeave"]
       12 GETUPVAL                         R1 3
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 4
       15 LOADB                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

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
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 NEWTABLE                         R11 0 4
       60 MOVE                             R12 R6
       61 GETTABLEKS                       R13 R0 K9 ["OnMouseEnter"]
       63 MOVE                             R14 R3
       64 MOVE                             R15 R5
       65 SETLIST                          R11 R12 4 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       71 NEWCLOSURE                       R11 P2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 NEWTABLE                         R12 0 4
       79 MOVE                             R13 R6
       80 GETTABLEKS                       R14 R0 K10 ["OnMouseLeave"]
       82 MOVE                             R15 R3
       83 MOVE                             R16 R5
       84 SETLIST                          R12 R13 4 [1]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       90 NEWCLOSURE                       R12 P3
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R3
       93 NEWTABLE                         R13 0 2
       95 GETTABLEKS                       R14 R0 K11 ["OnClick"]
       97 MOVE                             R15 R3
       98 SETLIST                          R13 R14 2 [1]
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R14 0 2
      109 GETTABLEKS                       R15 R0 K12 ["OnRightClick"]
      111 MOVE                             R16 R3
      112 SETLIST                          R14 R15 2 [1]
      114 CALL                             R12 2 1
      115 GETTABLEKS                       R13 R0 K13 ["Loading"]
      117 JUMPIFNOT                        R13 ; [+69]
      118 GETTABLEKS                       R13 R2 K14 ["ShimmerSizeOffset"]
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K15 ["createElement"]
      123 GETUPVAL                         R15 5
      124 DUPTABLE                         R16 K19 [{"LayoutOrder", "Position", "Size", "Style"}]
      125 GETTABLEKS                       R17 R0 K16 ["LayoutOrder"]
      127 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      129 GETTABLEKS                       R17 R0 K17 ["Position"]
      131 SETTABLEKS                       R17 R16 K17 ["Position"]
      133 GETTABLEKS                       R17 R0 K18 ["Size"]
      135 SETTABLEKS                       R17 R16 K18 ["Size"]
      137 LOADK                            R17 K20 ["BorderBox"]
      138 SETTABLEKS                       R17 R16 K0 ["Style"]
      140 DUPTABLE                         R17 K22 [{"Shimmer"}]
      141 GETUPVAL                         R19 6
      142 CALL                             R19 0 1
      143 JUMPIFNOT                        R19 ; [+34]
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K15 ["createElement"]
      147 GETUPVAL                         R19 7
      148 DUPTABLE                         R20 K25 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      149 GETIMPORT                        R21 K28 [Vector2.new]
      151 LOADK                            R22 K29 [0.5]
      152 LOADK                            R23 K29 [0.5]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      156 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      158 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      160 GETIMPORT                        R21 K33 [UDim2.fromScale]
      162 LOADK                            R22 K29 [0.5]
      163 LOADK                            R23 K29 [0.5]
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K17 ["Position"]
      167 GETIMPORT                        R21 K34 [UDim2.new]
      169 LOADN                            R22 1
      170 MINUS                            R23 R13
      171 LOADN                            R24 1
      172 MINUS                            R25 R13
      173 CALL                             R21 4 1
      174 SETTABLEKS                       R21 R20 K18 ["Size"]
      176 CALL                             R18 2 1
      177 JUMP                             ; [+5]
      178 GETUPVAL                         R18 0
      179 GETTABLEKS                       R18 R18 K15 ["createElement"]
      181 GETUPVAL                         R19 7
      182 CALL                             R18 1 1
      183 SETTABLEKS                       R18 R17 K21 ["Shimmer"]
      185 CALL                             R14 3 -1
      186 RETURN                           R14 -1
      187 LOADNIL                          R13
      188 LOADNIL                          R14
      189 GETUPVAL                         R15 8
      190 CALL                             R15 0 1
      191 JUMPIFNOT                        R15 ; [+48]
      192 GETTABLEKS                       R15 R0 K35 ["ShouldCenterTooltip"]
      194 JUMPIFNOT                        R15 ; [+45]
      195 GETIMPORT                        R15 K33 [UDim2.fromScale]
      197 LOADK                            R16 K29 [0.5]
      198 LOADK                            R17 K29 [0.5]
      199 CALL                             R15 2 1
      200 MOVE                             R13 R15
      201 GETTABLEKS                       R16 R0 K17 ["Position"]
      203 GETTABLEKS                       R16 R16 K36 ["X"]
      205 GETTABLEKS                       R16 R16 K37 ["Offset"]
      207 GETTABLEKS                       R18 R0 K39 ["GridItemSize"]
      209 DIVK                             R17 R18 K38 [2]
      210 ADD                              R15 R16 R17
      211 GETTABLEKS                       R18 R0 K17 ["Position"]
      213 GETTABLEKS                       R18 R18 K40 ["Y"]
      215 GETTABLEKS                       R18 R18 K37 ["Offset"]
      217 GETTABLEKS                       R20 R0 K39 ["GridItemSize"]
      219 MULK                             R19 R20 K41 [0.8]
      220 ADD                              R17 R18 R19
      221 GETTABLEKS                       R18 R0 K42 ["CanvasPosition"]
      223 GETTABLEKS                       R18 R18 K40 ["Y"]
      225 SUB                              R16 R17 R18
      226 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      228 JUMPIFNOT                        R17 ; [+5]
      229 GETTABLEKS                       R17 R0 K43 ["ContainerYBounds"]
      231 GETTABLEKS                       R17 R17 K44 ["Min"]
      233 ADD                              R16 R16 R17
      234 GETIMPORT                        R17 K28 [Vector2.new]
      236 MOVE                             R18 R15
      237 MOVE                             R19 R16
      238 CALL                             R17 2 1
      239 MOVE                             R14 R17
      240 LOADNIL                          R15
      241 GETUPVAL                         R16 4
      242 CALL                             R16 0 1
      243 JUMPIFNOT                        R16 ; [+23]
      244 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      246 GETTABLEKS                       R16 R0 K46 ["Applied"]
      248 JUMPIFNOT                        R16 ; [+2]
      249 GETTABLEKS                       R15 R2 K47 ["GridItemBackgroundColorApplied"]
      251 GETUPVAL                         R16 8
      252 CALL                             R16 0 1
      253 JUMPIFNOT                        R16 ; [+8]
      254 JUMPIFNOT                        R4 ; [+19]
      255 JUMPIF                           R6 ; [+18]
      256 GETTABLEKS                       R16 R0 K48 ["HoverEffectsEnabled"]
      258 JUMPIFNOT                        R16 ; [+15]
      259 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      261 JUMP                             ; [+12]
      262 JUMPIFNOT                        R4 ; [+11]
      263 JUMPIF                           R6 ; [+10]
      264 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      266 JUMP                             ; [+7]
      267 JUMPIFNOT                        R4 ; [+4]
      268 JUMPIF                           R6 ; [+3]
      269 GETTABLEKS                       R15 R2 K49 ["GridItemBackgroundColorHovered"]
      271 JUMP                             ; [+2]
      272 GETTABLEKS                       R15 R2 K45 ["GridItemBackgroundColor"]
      274 GETTABLEKS                       R17 R0 K50 ["Selected"]
      276 JUMPIFNOT                        R17 ; [+3]
      277 GETTABLEKS                       R16 R2 K51 ["GridItemBorderColorSelected"]
      279 JUMP                             ; [+2]
      280 GETTABLEKS                       R16 R2 K52 ["GridItemBorderColor"]
      282 DUPTABLE                         R17 K57 [{"MaterialPreview", "LabelArea", "UICorner", "UIStroke"}]
      283 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      285 JUMPIFNOT                        R19 ; [+15]
      286 GETUPVAL                         R18 0
      287 GETTABLEKS                       R18 R18 K15 ["createElement"]
      289 GETTABLEKS                       R19 R0 K58 ["CustomPreview"]
      291 DUPTABLE                         R20 K59 [{"Size"}]
      292 GETIMPORT                        R21 K33 [UDim2.fromScale]
      294 LOADN                            R22 1
      295 LOADN                            R23 1
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K18 ["Size"]
      299 CALL                             R18 2 1
      300 JUMP                             ; [+67]
      301 GETUPVAL                         R18 0
      302 GETTABLEKS                       R18 R18 K15 ["createElement"]
      304 GETUPVAL                         R19 9
      305 DUPTABLE                         R20 K69 [{"AnchorPoint", "BackgroundColor", "ImageTransparency", "InitialDistance", "Material", "MaterialPreviewGeometryType", "MeshPartBackgroundColor", "Position", "Static", "Style", "Transparent", "ref"}]
      306 GETIMPORT                        R21 K28 [Vector2.new]
      308 LOADK                            R22 K29 [0.5]
      309 LOADK                            R23 K29 [0.5]
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K23 ["AnchorPoint"]
      313 SETTABLEKS                       R15 R20 K60 ["BackgroundColor"]
      315 JUMPIFNOT                        R6 ; [+2]
      316 LOADK                            R21 K70 [0.35]
      317 JUMP                             ; [+1]
      318 LOADN                            R21 0
      319 SETTABLEKS                       R21 R20 K61 ["ImageTransparency"]
      321 GETTABLEKS                       R21 R0 K62 ["InitialDistance"]
      323 SETTABLEKS                       R21 R20 K62 ["InitialDistance"]
      325 GETTABLEKS                       R21 R0 K63 ["Material"]
      327 SETTABLEKS                       R21 R20 K63 ["Material"]
      329 GETTABLEKS                       R21 R0 K64 ["MaterialPreviewGeometryType"]
      331 SETTABLEKS                       R21 R20 K64 ["MaterialPreviewGeometryType"]
      333 GETUPVAL                         R22 4
      334 CALL                             R22 0 1
      335 JUMPIFNOT                        R22 ; [+3]
      336 GETTABLEKS                       R21 R2 K45 ["GridItemBackgroundColor"]
      338 JUMP                             ; [+1]
      339 LOADNIL                          R21
      340 SETTABLEKS                       R21 R20 K65 ["MeshPartBackgroundColor"]
      342 GETIMPORT                        R21 K33 [UDim2.fromScale]
      344 LOADK                            R22 K29 [0.5]
      345 LOADK                            R23 K29 [0.5]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K17 ["Position"]
      349 LOADB                            R21 1
      350 SETTABLEKS                       R21 R20 K66 ["Static"]
      352 GETTABLEKS                       R21 R2 K71 ["MaterialPreviewStyle"]
      354 SETTABLEKS                       R21 R20 K0 ["Style"]
      356 LOADB                            R21 1
      357 SETTABLEKS                       R21 R20 K67 ["Transparent"]
      359 GETUPVAL                         R22 4
      360 CALL                             R22 0 1
      361 JUMPIFNOT                        R22 ; [+2]
      362 MOVE                             R21 R1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R21
      365 SETTABLEKS                       R21 R20 K68 ["ref"]
      367 CALL                             R18 2 1
      368 SETTABLEKS                       R18 R17 K53 ["MaterialPreview"]
      370 SETTABLEKS                       R8 R17 K54 ["LabelArea"]
      372 GETUPVAL                         R18 0
      373 GETTABLEKS                       R18 R18 K15 ["createElement"]
      375 LOADK                            R19 K55 ["UICorner"]
      376 DUPTABLE                         R20 K72 [{"CornerRadius"}]
      377 GETTABLEKS                       R21 R2 K30 ["GridItemCornerRadius"]
      379 SETTABLEKS                       R21 R20 K24 ["CornerRadius"]
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K55 ["UICorner"]
      384 GETUPVAL                         R18 0
      385 GETTABLEKS                       R18 R18 K15 ["createElement"]
      387 LOADK                            R19 K56 ["UIStroke"]
      388 DUPTABLE                         R20 K77 [{"ApplyStrokeMode", "Color", "Thickness", "Transparency"}]
      389 GETIMPORT                        R21 K80 [Enum.ApplyStrokeMode.Border]
      391 SETTABLEKS                       R21 R20 K73 ["ApplyStrokeMode"]
      393 SETTABLEKS                       R16 R20 K74 ["Color"]
      395 LOADN                            R21 1
      396 SETTABLEKS                       R21 R20 K75 ["Thickness"]
      398 JUMPIFNOT                        R6 ; [+2]
      399 LOADK                            R21 K70 [0.35]
      400 JUMP                             ; [+1]
      401 LOADN                            R21 0
      402 SETTABLEKS                       R21 R20 K76 ["Transparency"]
      404 CALL                             R18 2 1
      405 SETTABLEKS                       R18 R17 K56 ["UIStroke"]
      407 GETUPVAL                         R19 10
      408 CALL                             R19 0 1
      409 JUMPIFNOT                        R19 ; [+9]
      410 NOT                              R18 R7
      411 JUMPIF                           R18 ; [+8]
      412 GETTABLEKS                       R19 R0 K81 ["ShowTooltipWithLabel"]
      414 JUMPIFEQKB                       R19 TRUE ; [+2]
      416 LOADB                            R18 0 +1
      417 LOADB                            R18 1
      418 JUMP                             ; [+1]
      419 NOT                              R18 R7
      420 LOADNIL                          R19
      421 JUMPIFNOT                        R18 ; [+63]
      422 GETUPVAL                         R20 8
      423 CALL                             R20 0 1
      424 JUMPIFNOT                        R20 ; [+45]
      425 GETUPVAL                         R20 0
      426 GETTABLEKS                       R20 R20 K15 ["createElement"]
      428 GETUPVAL                         R21 11
      429 DUPTABLE                         R22 K86 [{"AnchorPoint", "ContainerXBounds", "ContainerYBounds", "Enabled", "OnTooltipShown", "Position", "ShowDelay", "Text"}]
      430 SETTABLEKS                       R13 R22 K23 ["AnchorPoint"]
      432 GETTABLEKS                       R23 R0 K82 ["ContainerXBounds"]
      434 SETTABLEKS                       R23 R22 K82 ["ContainerXBounds"]
      436 GETTABLEKS                       R23 R0 K43 ["ContainerYBounds"]
      438 SETTABLEKS                       R23 R22 K43 ["ContainerYBounds"]
      440 LOADB                            R23 0
      441 GETTABLEKS                       R24 R0 K48 ["HoverEffectsEnabled"]
      443 JUMPIFEQKB                       R24 FALSE ; [+2]
      445 NOT                              R23 R6
      446 SETTABLEKS                       R23 R22 K83 ["Enabled"]
      448 GETTABLEKS                       R23 R0 K84 ["OnTooltipShown"]
      450 SETTABLEKS                       R23 R22 K84 ["OnTooltipShown"]
      452 SETTABLEKS                       R14 R22 K17 ["Position"]
      454 GETTABLEKS                       R24 R0 K87 ["InstantTooltipEnabled"]
      456 JUMPIFNOT                        R24 ; [+2]
      457 LOADN                            R23 0
      458 JUMP                             ; [+2]
      459 GETTABLEKS                       R23 R0 K88 ["TooltipDelay"]
      461 SETTABLEKS                       R23 R22 K85 ["ShowDelay"]
      463 GETTABLEKS                       R23 R0 K5 ["Text"]
      465 SETTABLEKS                       R23 R22 K5 ["Text"]
      467 CALL                             R20 2 1
      468 MOVE                             R19 R20
      469 JUMP                             ; [+25]
      470 GETUPVAL                         R20 0
      471 GETTABLEKS                       R20 R20 K15 ["createElement"]
      473 GETUPVAL                         R21 11
      474 DUPTABLE                         R22 K89 [{"Enabled", "Text"}]
      475 NOT                              R23 R6
      476 SETTABLEKS                       R23 R22 K83 ["Enabled"]
      478 GETTABLEKS                       R23 R0 K5 ["Text"]
      480 SETTABLEKS                       R23 R22 K5 ["Text"]
      482 CALL                             R20 2 1
      483 MOVE                             R19 R20
      484 JUMP                             ; [+10]
      485 GETUPVAL                         R20 0
      486 GETTABLEKS                       R20 R20 K15 ["createElement"]
      488 GETUPVAL                         R21 0
      489 GETTABLEKS                       R21 R21 K90 ["Fragment"]
      491 NEWTABLE                         R22 0 0
      493 CALL                             R20 2 1
      494 MOVE                             R19 R20
      495 DUPTABLE                         R20 K93 [{"Swatch", "Tooltip", "UICorner"}]
      496 GETUPVAL                         R21 0
      497 GETTABLEKS                       R21 R21 K15 ["createElement"]
      499 LOADK                            R22 K94 ["Frame"]
      500 DUPTABLE                         R23 K96 [{"BackgroundTransparency", "Size"}]
      501 LOADN                            R24 1
      502 SETTABLEKS                       R24 R23 K95 ["BackgroundTransparency"]
      504 GETIMPORT                        R24 K33 [UDim2.fromScale]
      506 LOADN                            R25 1
      507 LOADN                            R26 1
      508 CALL                             R24 2 1
      509 SETTABLEKS                       R24 R23 K18 ["Size"]
      511 MOVE                             R24 R17
      512 CALL                             R21 3 1
      513 SETTABLEKS                       R21 R20 K91 ["Swatch"]
      515 SETTABLEKS                       R19 R20 K92 ["Tooltip"]
      517 GETUPVAL                         R21 0
      518 GETTABLEKS                       R21 R21 K15 ["createElement"]
      520 LOADK                            R22 K55 ["UICorner"]
      521 DUPTABLE                         R23 K72 [{"CornerRadius"}]
      522 GETTABLEKS                       R24 R2 K30 ["GridItemCornerRadius"]
      524 SETTABLEKS                       R24 R23 K24 ["CornerRadius"]
      526 CALL                             R21 2 1
      527 SETTABLEKS                       R21 R20 K55 ["UICorner"]
      529 LOADNIL                          R21
      530 GETTABLEKS                       R22 R0 K97 ["OnRenderChildren"]
      532 JUMPIFNOT                        R22 ; [+5]
      533 GETTABLEKS                       R22 R0 K97 ["OnRenderChildren"]
      535 MOVE                             R23 R3
      536 CALL                             R22 1 1
      537 MOVE                             R21 R22
      538 GETUPVAL                         R22 0
      539 GETTABLEKS                       R22 R22 K15 ["createElement"]
      541 LOADK                            R23 K98 ["TextButton"]
      542 NEWTABLE                         R24 16 0
      544 NOT                              R25 R6
      545 SETTABLEKS                       R25 R24 K99 ["Active"]
      547 LOADB                            R25 0
      548 SETTABLEKS                       R25 R24 K100 ["AutoButtonColor"]
      550 SETTABLEKS                       R15 R24 K101 ["BackgroundColor3"]
      552 JUMPIFNOT                        R6 ; [+2]
      553 LOADK                            R25 K70 [0.35]
      554 JUMP                             ; [+1]
      555 LOADN                            R25 0
      556 SETTABLEKS                       R25 R24 K95 ["BackgroundTransparency"]
      558 LOADN                            R25 0
      559 SETTABLEKS                       R25 R24 K102 ["BorderSizePixel"]
      561 GETTABLEKS                       R25 R0 K16 ["LayoutOrder"]
      563 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      565 GETTABLEKS                       R25 R0 K17 ["Position"]
      567 SETTABLEKS                       R25 R24 K17 ["Position"]
      569 NOT                              R25 R6
      570 SETTABLEKS                       R25 R24 K103 ["Selectable"]
      572 GETTABLEKS                       R25 R0 K18 ["Size"]
      574 SETTABLEKS                       R25 R24 K18 ["Size"]
      576 LOADK                            R25 K6 [""]
      577 SETTABLEKS                       R25 R24 K5 ["Text"]
      579 GETTABLEKS                       R25 R0 K5 ["Text"]
      581 SETTABLEKS                       R25 R24 K104 ["Name"]
      583 GETUPVAL                         R25 0
      584 GETTABLEKS                       R25 R25 K105 ["Event"]
      586 GETTABLEKS                       R25 R25 K106 ["Activated"]
      588 JUMPIFNOT                        R6 ; [+2]
      589 GETUPVAL                         R26 12
      590 JUMP                             ; [+1]
      591 MOVE                             R26 R11
      592 SETTABLE                         R26 R24 R25
      593 GETUPVAL                         R25 0
      594 GETTABLEKS                       R25 R25 K105 ["Event"]
      596 GETTABLEKS                       R25 R25 K107 ["MouseButton2Click"]
      598 JUMPIFNOT                        R6 ; [+2]
      599 GETUPVAL                         R26 12
      600 JUMP                             ; [+1]
      601 MOVE                             R26 R12
      602 SETTABLE                         R26 R24 R25
      603 GETUPVAL                         R25 0
      604 GETTABLEKS                       R25 R25 K105 ["Event"]
      606 GETTABLEKS                       R25 R25 K108 ["MouseEnter"]
      608 SETTABLE                         R9 R24 R25
      609 GETUPVAL                         R25 0
      610 GETTABLEKS                       R25 R25 K105 ["Event"]
      612 GETTABLEKS                       R25 R25 K109 ["MouseLeave"]
      614 SETTABLE                         R10 R24 R25
      615 GETUPVAL                         R25 0
      616 GETTABLEKS                       R25 R25 K105 ["Event"]
      618 GETTABLEKS                       R25 R25 K110 ["MouseMoved"]
      620 GETUPVAL                         R27 8
      621 CALL                             R27 0 1
      622 JUMPIFNOT                        R27 ; [+4]
      623 JUMPIF                           R6 ; [+3]
      624 GETTABLEKS                       R26 R0 K111 ["OnMouseMoved"]
      626 JUMP                             ; [+1]
      627 LOADNIL                          R26
      628 SETTABLE                         R26 R24 R25
      629 GETUPVAL                         R25 13
      630 GETTABLEKS                       R25 R25 K112 ["join"]
      632 MOVE                             R26 R20
      633 MOVE                             R27 R21
      634 CALL                             R25 2 -1
      635 CALL                             R22 -1 -1
      636 RETURN                           R22 -1

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
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Flags"]
       53 GETTABLEKS                       R10 R10 K15 ["getFFlagMaterialPickerInstantTooltip"]
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
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R0 K13 ["Flags"]
       77 GETTABLEKS                       R17 R17 K23 ["getFFlagMaterialPickerUIChanges"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K26 [Color3.fromHex]
       82 LOADK                            R18 K27 ["#121215"]
       83 CALL                             R17 1 1
       84 DUPCLOSURE                       R18 K28 [PROTO_0]
       85 DUPCLOSURE                       R19 K29 [PROTO_6]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R17
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R3
      100 GETTABLEKS                       R20 R5 K30 ["forwardRef"]
      102 MOVE                             R21 R19
      103 CALL                             R20 1 -1
      104 RETURN                           R20 -1
