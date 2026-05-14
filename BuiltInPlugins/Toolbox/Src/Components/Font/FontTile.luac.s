PROTO_0:
        0 DUPTABLE                         R0 K1 [{"isHovered"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isHovered"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"isHovered"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isHovered"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R2 R0 K2 ["LogImpression"]
        7 JUMPIFNOT                        R2 ; [+14]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K2 ["LogImpression"]
       11 MOVE                             R4 R1
       12 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
       14 GETTABLEKS                       R6 R0 K4 ["AbsolutePosition"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K5 ["wasAssetBoundsWithinScrollingBounds"]
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K5 ["wasAssetBoundsWithinScrollingBounds"]
       22 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
        3 DUPTABLE                         R2 K2 [{"isHovered"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["isHovered"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K4 ["onMouseEnter"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K5 ["onMouseLeave"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K6 ["logImpression"]
       21 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AssetInfo"]
        4 GETTABLEKS                       R3 R1 K2 ["LogImpression"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R4 R0 K3 ["logImpression"]
       10 CALL                             R4 0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["AbsolutePosition"]
        4 GETTABLEKS                       R5 R3 K1 ["AbsolutePosition"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+13]
        8 GETTABLEKS                       R4 R1 K2 ["ParentAbsoluteSize"]
       10 GETTABLEKS                       R5 R3 K2 ["ParentAbsoluteSize"]
       12 JUMPIFNOTEQ                      R4 R5 ; [+7]
       14 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
       16 GETTABLEKS                       R5 R3 K3 ["AbsoluteSize"]
       18 JUMPIFEQ                         R4 R5 ; [+4]
       20 GETTABLEKS                       R4 R0 K4 ["logImpression"]
       22 CALL                             R4 0 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetInfo"]
        6 GETTABLEKS                       R3 R3 K3 ["Asset"]
        8 JUMPIFNOT                        R3 ; [+7]
        9 GETTABLEKS                       R5 R3 K4 ["Id"]
       11 FASTCALL1                        TOSTRING R5 ; [+2]
       12 GETIMPORT                        R4 K6 [tostring]
       14 CALL                             R4 1 1
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K7 [""]
       17 JUMPIFNOT                        R3 ; [+7]
       18 GETTABLEKS                       R6 R3 K8 ["Name"]
       20 FASTCALL1                        TOSTRING R6 ; [+2]
       21 GETIMPORT                        R5 K6 [tostring]
       23 CALL                             R5 1 1
       24 JUMP                             ; [+1]
       25 LOADK                            R5 K7 [""]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K9 ["constructAssetThumbnailUrl"]
       29 MOVE                             R7 R4
       30 LOADN                            R8 176
       31 LOADN                            R9 80
       32 LOADK                            R10 K10 ["FontFamily"]
       33 CALL                             R6 4 1
       34 GETTABLEKS                       R7 R2 K11 ["isHovered"]
       36 GETTABLEKS                       R8 R1 K12 ["Stylizer"]
       38 GETTABLEKS                       R9 R8 K13 ["fontTile"]
       40 GETTABLEKS                       R9 R9 K14 ["backgroundColor"]
       42 JUMPIFNOT                        R7 ; [+4]
       43 GETTABLEKS                       R10 R8 K13 ["fontTile"]
       45 GETTABLEKS                       R9 R10 K15 ["hoveredBackgroundColor"]
       47 GETTABLEKS                       R10 R8 K13 ["fontTile"]
       49 GETTABLEKS                       R10 R10 K16 ["textFillColor"]
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R11 R11 K17 ["new"]
       54 CALL                             R11 0 1
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K18 ["join"]
       58 NEWTABLE                         R13 16 0
       60 SETTABLEKS                       R9 R13 K19 ["BackgroundColor"]
       62 LOADN                            R14 1
       63 SETTABLEKS                       R14 R13 K20 ["BorderSizePixel"]
       65 GETTABLEKS                       R14 R1 K21 ["LayoutOrder"]
       67 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       69 GETTABLEKS                       R14 R1 K22 ["OnAssetPreviewButtonClicked"]
       71 SETTABLEKS                       R14 R13 K23 ["OnClick"]
       73 DUPTABLE                         R14 K25 [{"Right"}]
       74 LOADN                            R15 1
       75 SETTABLEKS                       R15 R14 K24 ["Right"]
       77 SETTABLEKS                       R14 R13 K26 ["Padding"]
       79 GETTABLEKS                       R14 R1 K27 ["Size"]
       81 SETTABLEKS                       R14 R13 K27 ["Size"]
       83 LOADK                            R14 K28 ["BorderBox"]
       84 SETTABLEKS                       R14 R13 K29 ["Style"]
       86 GETUPVAL                         R14 3
       87 GETTABLEKS                       R14 R14 K30 ["Event"]
       89 GETTABLEKS                       R14 R14 K31 ["MouseEnter"]
       91 GETTABLEKS                       R15 R0 K32 ["onMouseEnter"]
       93 SETTABLE                         R15 R13 R14
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R14 R14 K30 ["Event"]
       97 GETTABLEKS                       R14 R14 K33 ["MouseLeave"]
       99 GETTABLEKS                       R15 R0 K34 ["onMouseLeave"]
      101 SETTABLE                         R15 R13 R14
      102 GETTABLEKS                       R14 R1 K35 ["WrapperProps"]
      104 CALL                             R12 2 1
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K36 ["createElement"]
      108 GETUPVAL                         R14 4
      109 MOVE                             R15 R12
      110 DUPTABLE                         R16 K40 [{"AssetPreviewTriggerButtonFrame", "UIGradientFrame", "TileComponent"}]
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R17 R17 K36 ["createElement"]
      114 LOADK                            R18 K41 ["Frame"]
      115 DUPTABLE                         R19 K47 [{"AnchorPoint", "AutomaticSize", "BackgroundTransparency", "Position", "ZIndex"}]
      116 GETIMPORT                        R20 K49 [Vector2.new]
      118 LOADN                            R21 1
      119 LOADN                            R22 0
      120 CALL                             R20 2 1
      121 SETTABLEKS                       R20 R19 K42 ["AnchorPoint"]
      123 GETIMPORT                        R20 K52 [Enum.AutomaticSize.XY]
      125 SETTABLEKS                       R20 R19 K43 ["AutomaticSize"]
      127 LOADN                            R20 1
      128 SETTABLEKS                       R20 R19 K44 ["BackgroundTransparency"]
      130 GETIMPORT                        R20 K54 [UDim2.new]
      132 LOADN                            R21 1
      133 LOADN                            R22 0
      134 LOADN                            R23 0
      135 LOADN                            R24 0
      136 CALL                             R20 4 1
      137 SETTABLEKS                       R20 R19 K45 ["Position"]
      139 LOADN                            R20 200
      140 SETTABLEKS                       R20 R19 K46 ["ZIndex"]
      142 DUPTABLE                         R20 K56 [{"AssetPreviewTriggerButton"}]
      143 GETUPVAL                         R21 3
      144 GETTABLEKS                       R21 R21 K36 ["createElement"]
      146 GETUPVAL                         R22 5
      147 DUPTABLE                         R23 K60 [{"onClick", "position", "ShowIcon"}]
      148 GETTABLEKS                       R24 R1 K22 ["OnAssetPreviewButtonClicked"]
      150 SETTABLEKS                       R24 R23 K57 ["onClick"]
      152 GETUPVAL                         R24 6
      153 SETTABLEKS                       R24 R23 K58 ["position"]
      155 SETTABLEKS                       R7 R23 K59 ["ShowIcon"]
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K55 ["AssetPreviewTriggerButton"]
      160 CALL                             R17 3 1
      161 SETTABLEKS                       R17 R16 K37 ["AssetPreviewTriggerButtonFrame"]
      163 GETUPVAL                         R17 3
      164 GETTABLEKS                       R17 R17 K36 ["createElement"]
      166 LOADK                            R18 K41 ["Frame"]
      167 DUPTABLE                         R19 K62 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size", "ZIndex"}]
      168 GETIMPORT                        R20 K49 [Vector2.new]
      170 LOADN                            R21 1
      171 LOADK                            R22 K63 [0.5]
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K42 ["AnchorPoint"]
      175 SETTABLEKS                       R9 R19 K61 ["BackgroundColor3"]
      177 LOADN                            R20 0
      178 SETTABLEKS                       R20 R19 K20 ["BorderSizePixel"]
      180 GETIMPORT                        R20 K54 [UDim2.new]
      182 LOADN                            R21 1
      183 LOADN                            R22 0
      184 LOADK                            R23 K63 [0.5]
      185 LOADN                            R24 0
      186 CALL                             R20 4 1
      187 SETTABLEKS                       R20 R19 K45 ["Position"]
      189 GETIMPORT                        R20 K54 [UDim2.new]
      191 LOADN                            R21 0
      192 LOADN                            R22 60
      193 LOADN                            R23 1
      194 LOADN                            R24 254
      195 CALL                             R20 4 1
      196 SETTABLEKS                       R20 R19 K27 ["Size"]
      198 LOADN                            R20 100
      199 SETTABLEKS                       R20 R19 K46 ["ZIndex"]
      201 DUPTABLE                         R20 K65 [{"UIGradient"}]
      202 GETUPVAL                         R21 3
      203 GETTABLEKS                       R21 R21 K36 ["createElement"]
      205 LOADK                            R22 K64 ["UIGradient"]
      206 DUPTABLE                         R23 K67 [{"Transparency"}]
      207 GETIMPORT                        R24 K69 [NumberSequence.new]
      209 NEWTABLE                         R25 0 2
      211 GETIMPORT                        R26 K71 [NumberSequenceKeypoint.new]
      213 LOADN                            R27 0
      214 LOADN                            R28 1
      215 CALL                             R26 2 1
      216 GETIMPORT                        R27 K71 [NumberSequenceKeypoint.new]
      218 LOADN                            R28 1
      219 LOADN                            R29 0
      220 CALL                             R27 2 -1
      221 SETLIST                          R25 R26 -1 [1]
      223 CALL                             R24 1 1
      224 SETTABLEKS                       R24 R23 K66 ["Transparency"]
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K64 ["UIGradient"]
      229 CALL                             R17 3 1
      230 SETTABLEKS                       R17 R16 K38 ["UIGradientFrame"]
      232 GETUPVAL                         R17 3
      233 GETTABLEKS                       R17 R17 K36 ["createElement"]
      235 GETUPVAL                         R18 4
      236 DUPTABLE                         R19 K75 [{"AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "Layout", "Padding", "Size", "Spacing"}]
      237 GETIMPORT                        R20 K77 [Enum.AutomaticSize.Y]
      239 SETTABLEKS                       R20 R19 K43 ["AutomaticSize"]
      241 LOADN                            R20 1
      242 SETTABLEKS                       R20 R19 K44 ["BackgroundTransparency"]
      244 GETIMPORT                        R20 K79 [Enum.HorizontalAlignment.Left]
      246 SETTABLEKS                       R20 R19 K72 ["HorizontalAlignment"]
      248 GETIMPORT                        R20 K82 [Enum.FillDirection.Vertical]
      250 SETTABLEKS                       R20 R19 K73 ["Layout"]
      252 DUPTABLE                         R20 K85 [{"Bottom", "Left", "Right", "Top"}]
      253 LOADN                            R21 12
      254 SETTABLEKS                       R21 R20 K83 ["Bottom"]
      256 LOADN                            R21 10
      257 SETTABLEKS                       R21 R20 K78 ["Left"]
      259 LOADN                            R21 0
      260 SETTABLEKS                       R21 R20 K24 ["Right"]
      262 LOADN                            R21 12
      263 SETTABLEKS                       R21 R20 K84 ["Top"]
      265 SETTABLEKS                       R20 R19 K26 ["Padding"]
      267 GETIMPORT                        R20 K54 [UDim2.new]
      269 LOADN                            R21 1
      270 LOADN                            R22 0
      271 LOADN                            R23 0
      272 LOADN                            R24 0
      273 CALL                             R20 4 1
      274 SETTABLEKS                       R20 R19 K27 ["Size"]
      276 LOADN                            R20 8
      277 SETTABLEKS                       R20 R19 K74 ["Spacing"]
      279 DUPTABLE                         R20 K88 [{"FontTitle", "FontThumbnailPane"}]
      280 GETUPVAL                         R21 3
      281 GETTABLEKS                       R21 R21 K36 ["createElement"]
      283 GETUPVAL                         R22 7
      284 DUPTABLE                         R23 K93 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      285 GETIMPORT                        R24 K52 [Enum.AutomaticSize.XY]
      287 SETTABLEKS                       R24 R23 K43 ["AutomaticSize"]
      289 LOADN                            R24 1
      290 SETTABLEKS                       R24 R23 K44 ["BackgroundTransparency"]
      292 GETUPVAL                         R24 8
      293 GETTABLEKS                       R24 R24 K94 ["FONT"]
      295 SETTABLEKS                       R24 R23 K89 ["Font"]
      297 NAMECALL                         R24 R11 K95 ["getNextOrder"]
      299 CALL                             R24 1 1
      300 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      302 SETTABLEKS                       R5 R23 K90 ["Text"]
      304 GETUPVAL                         R24 8
      305 GETTABLEKS                       R24 R24 K96 ["FONT_SIZE_MEDIUM"]
      307 SETTABLEKS                       R24 R23 K91 ["TextSize"]
      309 GETIMPORT                        R24 K97 [Enum.TextXAlignment.Left]
      311 SETTABLEKS                       R24 R23 K92 ["TextXAlignment"]
      313 CALL                             R21 2 1
      314 SETTABLEKS                       R21 R20 K86 ["FontTitle"]
      316 GETUPVAL                         R21 3
      317 GETTABLEKS                       R21 R21 K36 ["createElement"]
      319 GETUPVAL                         R22 4
      320 DUPTABLE                         R23 K99 [{"AutomaticSize", "BackgroundColor", "BorderSizePixel", "ClipsDescendants", "LayoutOrder", "Size"}]
      321 GETIMPORT                        R24 K77 [Enum.AutomaticSize.Y]
      323 SETTABLEKS                       R24 R23 K43 ["AutomaticSize"]
      325 SETTABLEKS                       R9 R23 K19 ["BackgroundColor"]
      327 LOADN                            R24 0
      328 SETTABLEKS                       R24 R23 K20 ["BorderSizePixel"]
      330 LOADB                            R24 1
      331 SETTABLEKS                       R24 R23 K98 ["ClipsDescendants"]
      333 NAMECALL                         R24 R11 K95 ["getNextOrder"]
      335 CALL                             R24 1 1
      336 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      338 GETIMPORT                        R24 K54 [UDim2.new]
      340 LOADN                            R25 1
      341 LOADN                            R26 0
      342 LOADN                            R27 0
      343 LOADN                            R28 0
      344 CALL                             R24 4 1
      345 SETTABLEKS                       R24 R23 K27 ["Size"]
      347 DUPTABLE                         R24 K101 [{"FontThumbnail"}]
      348 GETUPVAL                         R25 3
      349 GETTABLEKS                       R25 R25 K36 ["createElement"]
      351 LOADK                            R26 K102 ["ImageLabel"]
      352 DUPTABLE                         R27 K105 [{"BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      353 LOADN                            R28 1
      354 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      356 SETTABLEKS                       R6 R27 K103 ["Image"]
      358 SETTABLEKS                       R10 R27 K104 ["ImageColor3"]
      360 GETIMPORT                        R28 K54 [UDim2.new]
      362 LOADN                            R29 0
      363 LOADN                            R30 88
      364 LOADN                            R31 0
      365 LOADN                            R32 40
      366 CALL                             R28 4 1
      367 SETTABLEKS                       R28 R27 K27 ["Size"]
      369 CALL                             R25 2 1
      370 SETTABLEKS                       R25 R24 K100 ["FontThumbnail"]
      372 CALL                             R21 3 1
      373 SETTABLEKS                       R21 R20 K87 ["FontThumbnailPane"]
      375 CALL                             R17 3 1
      376 SETTABLEKS                       R17 R16 K39 ["TileComponent"]
      378 CALL                             R13 3 -1
      379 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R1 K10 ["Dash"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R7 R3 K11 ["Wrappers"]
       34 GETTABLEKS                       R7 R7 K12 ["withAbsoluteSizeAndPosition"]
       36 GETTABLEKS                       R8 R3 K13 ["Util"]
       38 GETTABLEKS                       R8 R8 K14 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R9 R3 K15 ["UI"]
       42 GETTABLEKS                       R9 R9 K16 ["Pane"]
       44 GETTABLEKS                       R10 R3 K15 ["UI"]
       46 GETTABLEKS                       R10 R10 K17 ["TextLabel"]
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R12 R0 K18 ["Src"]
       52 GETTABLEKS                       R12 R12 K19 ["Models"]
       54 GETTABLEKS                       R12 R12 K20 ["AssetInfo"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R13 R0 K18 ["Src"]
       61 GETTABLEKS                       R13 R13 K21 ["Components"]
       63 GETTABLEKS                       R13 R13 K22 ["AssetLogicWrapper"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R0 K18 ["Src"]
       70 GETTABLEKS                       R14 R14 K13 ["Util"]
       72 GETTABLEKS                       R14 R14 K23 ["Constants"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K18 ["Src"]
       79 GETTABLEKS                       R15 R15 K21 ["Components"]
       81 GETTABLEKS                       R15 R15 K24 ["Asset"]
       83 GETTABLEKS                       R15 R15 K25 ["Preview"]
       85 GETTABLEKS                       R15 R15 K26 ["PopUpWrapperButton"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K5 [require]
       90 GETTABLEKS                       R16 R0 K18 ["Src"]
       92 GETTABLEKS                       R16 R16 K13 ["Util"]
       94 GETTABLEKS                       R16 R16 K27 ["Urls"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K30 [UDim2.new]
       99 LOADN                            R17 0
      100 LOADN                            R18 242
      101 LOADN                            R19 0
      102 LOADN                            R20 14
      103 CALL                             R16 4 1
      104 GETTABLEKS                       R17 R13 K31 ["FONT_TILE_HEIGHT"]
      106 GETTABLEKS                       R18 R2 K32 ["PureComponent"]
      108 LOADK                            R20 K33 ["FontTile"]
      109 NAMECALL                         R18 R18 K34 ["extend"]
      111 CALL                             R18 2 1
      112 DUPTABLE                         R19 K36 [{"Size"}]
      113 GETIMPORT                        R20 K30 [UDim2.new]
      115 LOADN                            R21 1
      116 LOADN                            R22 0
      117 LOADN                            R23 0
      118 MOVE                             R24 R17
      119 CALL                             R20 4 1
      120 SETTABLEKS                       R20 R19 K35 ["Size"]
      122 SETTABLEKS                       R19 R18 K37 ["defaultProps"]
      124 DUPCLOSURE                       R19 K38 [PROTO_5]
      125 SETTABLEKS                       R19 R18 K39 ["init"]
      127 DUPCLOSURE                       R19 K40 [PROTO_6]
      128 SETTABLEKS                       R19 R18 K41 ["didMount"]
      130 DUPCLOSURE                       R19 K42 [PROTO_7]
      131 SETTABLEKS                       R19 R18 K43 ["didUpdate"]
      133 DUPCLOSURE                       R19 K44 [PROTO_8]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R13
      143 SETTABLEKS                       R19 R18 K45 ["render"]
      145 MOVE                             R19 R5
      146 DUPTABLE                         R20 K47 [{"Stylizer"}]
      147 GETTABLEKS                       R21 R4 K46 ["Stylizer"]
      149 SETTABLEKS                       R21 R20 K46 ["Stylizer"]
      151 CALL                             R19 1 1
      152 MOVE                             R20 R18
      153 CALL                             R19 1 1
      154 MOVE                             R18 R19
      155 MOVE                             R19 R7
      156 MOVE                             R20 R18
      157 CALL                             R19 1 -1
      158 RETURN                           R19 -1
