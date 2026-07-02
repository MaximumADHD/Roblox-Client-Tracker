PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K2 [{[1] = False}]
        1 RETURN                           R0 1

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
        3 DUPTABLE                         R2 K3 [{["isHovered"] = False}]
        4 SETTABLEKS                       R2 R0 K4 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K5 ["onMouseEnter"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K6 ["onMouseLeave"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K7 ["logImpression"]
       18 RETURN                           R0 0

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
       30 LOADN                            R8 1200
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
       73 DUPTABLE                         R14 K26 [{["Right"] = 1}]
       74 SETTABLEKS                       R14 R13 K27 ["Padding"]
       76 GETTABLEKS                       R14 R1 K28 ["Size"]
       78 SETTABLEKS                       R14 R13 K28 ["Size"]
       80 LOADK                            R14 K29 ["BorderBox"]
       81 SETTABLEKS                       R14 R13 K30 ["Style"]
       83 GETUPVAL                         R14 3
       84 GETTABLEKS                       R14 R14 K31 ["Event"]
       86 GETTABLEKS                       R14 R14 K32 ["MouseEnter"]
       88 GETTABLEKS                       R15 R0 K33 ["onMouseEnter"]
       90 SETTABLE                         R15 R13 R14
       91 GETUPVAL                         R14 3
       92 GETTABLEKS                       R14 R14 K31 ["Event"]
       94 GETTABLEKS                       R14 R14 K34 ["MouseLeave"]
       96 GETTABLEKS                       R15 R0 K35 ["onMouseLeave"]
       98 SETTABLE                         R15 R13 R14
       99 GETTABLEKS                       R14 R1 K36 ["WrapperProps"]
      101 CALL                             R12 2 1
      102 GETUPVAL                         R13 3
      103 GETTABLEKS                       R13 R13 K37 ["createElement"]
      105 GETUPVAL                         R14 4
      106 MOVE                             R15 R12
      107 DUPTABLE                         R16 K41 [{"AssetPreviewTriggerButtonFrame", "UIGradientFrame", "TileComponent"}]
      108 GETUPVAL                         R17 3
      109 GETTABLEKS                       R17 R17 K37 ["createElement"]
      111 LOADK                            R18 K42 ["Frame"]
      112 DUPTABLE                         R19 K49 [{["AnchorPoint"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["ZIndex"] = 200}]
      113 GETIMPORT                        R20 K51 [Vector2.new]
      115 LOADN                            R21 1
      116 LOADN                            R22 0
      117 CALL                             R20 2 1
      118 SETTABLEKS                       R20 R19 K43 ["AnchorPoint"]
      120 GETIMPORT                        R20 K54 [Enum.AutomaticSize.XY]
      122 SETTABLEKS                       R20 R19 K44 ["AutomaticSize"]
      124 GETIMPORT                        R20 K56 [UDim2.new]
      126 LOADN                            R21 1
      127 LOADN                            R22 0
      128 LOADN                            R23 0
      129 LOADN                            R24 0
      130 CALL                             R20 4 1
      131 SETTABLEKS                       R20 R19 K46 ["Position"]
      133 DUPTABLE                         R20 K58 [{"AssetPreviewTriggerButton"}]
      134 GETUPVAL                         R21 3
      135 GETTABLEKS                       R21 R21 K37 ["createElement"]
      137 GETUPVAL                         R22 5
      138 DUPTABLE                         R23 K62 [{"onClick", "position", "ShowIcon"}]
      139 GETTABLEKS                       R24 R1 K22 ["OnAssetPreviewButtonClicked"]
      141 SETTABLEKS                       R24 R23 K59 ["onClick"]
      143 GETUPVAL                         R24 6
      144 SETTABLEKS                       R24 R23 K60 ["position"]
      146 SETTABLEKS                       R7 R23 K61 ["ShowIcon"]
      148 CALL                             R21 2 1
      149 SETTABLEKS                       R21 R20 K57 ["AssetPreviewTriggerButton"]
      151 CALL                             R17 3 1
      152 SETTABLEKS                       R17 R16 K38 ["AssetPreviewTriggerButtonFrame"]
      154 GETUPVAL                         R17 3
      155 GETTABLEKS                       R17 R17 K37 ["createElement"]
      157 LOADK                            R18 K42 ["Frame"]
      158 DUPTABLE                         R19 K66 [{["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["ZIndex"] = 100}]
      159 GETIMPORT                        R20 K51 [Vector2.new]
      161 LOADN                            R21 1
      162 LOADK                            R22 K67 [0.5]
      163 CALL                             R20 2 1
      164 SETTABLEKS                       R20 R19 K43 ["AnchorPoint"]
      166 SETTABLEKS                       R9 R19 K63 ["BackgroundColor3"]
      168 GETIMPORT                        R20 K56 [UDim2.new]
      170 LOADN                            R21 1
      171 LOADN                            R22 0
      172 LOADK                            R23 K67 [0.5]
      173 LOADN                            R24 0
      174 CALL                             R20 4 1
      175 SETTABLEKS                       R20 R19 K46 ["Position"]
      177 GETIMPORT                        R20 K56 [UDim2.new]
      179 LOADN                            R21 0
      180 LOADN                            R22 60
      181 LOADN                            R23 1
      182 LOADN                            R24 -2
      183 CALL                             R20 4 1
      184 SETTABLEKS                       R20 R19 K28 ["Size"]
      186 DUPTABLE                         R20 K69 [{"UIGradient"}]
      187 GETUPVAL                         R21 3
      188 GETTABLEKS                       R21 R21 K37 ["createElement"]
      190 LOADK                            R22 K68 ["UIGradient"]
      191 DUPTABLE                         R23 K71 [{"Transparency"}]
      192 GETIMPORT                        R24 K73 [NumberSequence.new]
      194 NEWTABLE                         R25 0 2
      196 GETIMPORT                        R26 K75 [NumberSequenceKeypoint.new]
      198 LOADN                            R27 0
      199 LOADN                            R28 1
      200 CALL                             R26 2 1
      201 GETIMPORT                        R27 K75 [NumberSequenceKeypoint.new]
      203 LOADN                            R28 1
      204 LOADN                            R29 0
      205 CALL                             R27 2 -1
      206 SETLIST                          R25 R26 -1 [1]
      208 CALL                             R24 1 1
      209 SETTABLEKS                       R24 R23 K70 ["Transparency"]
      211 CALL                             R21 2 1
      212 SETTABLEKS                       R21 R20 K68 ["UIGradient"]
      214 CALL                             R17 3 1
      215 SETTABLEKS                       R17 R16 K39 ["UIGradientFrame"]
      217 GETUPVAL                         R17 3
      218 GETTABLEKS                       R17 R17 K37 ["createElement"]
      220 GETUPVAL                         R18 4
      221 DUPTABLE                         R19 K80 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["Layout"], ["Padding"], ["Size"], ["Spacing"] = 8}]
      222 GETIMPORT                        R20 K82 [Enum.AutomaticSize.Y]
      224 SETTABLEKS                       R20 R19 K44 ["AutomaticSize"]
      226 GETIMPORT                        R20 K84 [Enum.HorizontalAlignment.Left]
      228 SETTABLEKS                       R20 R19 K76 ["HorizontalAlignment"]
      230 GETIMPORT                        R20 K87 [Enum.FillDirection.Vertical]
      232 SETTABLEKS                       R20 R19 K77 ["Layout"]
      234 DUPTABLE                         R20 K92 [{["Bottom"] = 12, ["Left"] = 10, ["Right"] = 0, ["Top"] = 12}]
      235 SETTABLEKS                       R20 R19 K27 ["Padding"]
      237 GETIMPORT                        R20 K56 [UDim2.new]
      239 LOADN                            R21 1
      240 LOADN                            R22 0
      241 LOADN                            R23 0
      242 LOADN                            R24 0
      243 CALL                             R20 4 1
      244 SETTABLEKS                       R20 R19 K28 ["Size"]
      246 DUPTABLE                         R20 K95 [{"FontTitle", "FontThumbnailPane"}]
      247 GETUPVAL                         R21 3
      248 GETTABLEKS                       R21 R21 K37 ["createElement"]
      250 GETUPVAL                         R22 7
      251 DUPTABLE                         R23 K100 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Text"], ["TextSize"], ["TextXAlignment"]}]
      252 GETIMPORT                        R24 K54 [Enum.AutomaticSize.XY]
      254 SETTABLEKS                       R24 R23 K44 ["AutomaticSize"]
      256 GETUPVAL                         R24 8
      257 GETTABLEKS                       R24 R24 K101 ["FONT"]
      259 SETTABLEKS                       R24 R23 K96 ["Font"]
      261 NAMECALL                         R24 R11 K102 ["getNextOrder"]
      263 CALL                             R24 1 1
      264 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      266 SETTABLEKS                       R5 R23 K97 ["Text"]
      268 GETUPVAL                         R24 8
      269 GETTABLEKS                       R24 R24 K103 ["FONT_SIZE_MEDIUM"]
      271 SETTABLEKS                       R24 R23 K98 ["TextSize"]
      273 GETIMPORT                        R24 K104 [Enum.TextXAlignment.Left]
      275 SETTABLEKS                       R24 R23 K99 ["TextXAlignment"]
      277 CALL                             R21 2 1
      278 SETTABLEKS                       R21 R20 K93 ["FontTitle"]
      280 GETUPVAL                         R21 3
      281 GETTABLEKS                       R21 R21 K37 ["createElement"]
      283 GETUPVAL                         R22 4
      284 DUPTABLE                         R23 K107 [{["AutomaticSize"], ["BackgroundColor"], ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["LayoutOrder"], ["Size"]}]
      285 GETIMPORT                        R24 K82 [Enum.AutomaticSize.Y]
      287 SETTABLEKS                       R24 R23 K44 ["AutomaticSize"]
      289 SETTABLEKS                       R9 R23 K19 ["BackgroundColor"]
      291 NAMECALL                         R24 R11 K102 ["getNextOrder"]
      293 CALL                             R24 1 1
      294 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      296 GETIMPORT                        R24 K56 [UDim2.new]
      298 LOADN                            R25 1
      299 LOADN                            R26 0
      300 LOADN                            R27 0
      301 LOADN                            R28 0
      302 CALL                             R24 4 1
      303 SETTABLEKS                       R24 R23 K28 ["Size"]
      305 DUPTABLE                         R24 K109 [{"FontThumbnail"}]
      306 GETUPVAL                         R25 3
      307 GETTABLEKS                       R25 R25 K37 ["createElement"]
      309 LOADK                            R26 K110 ["ImageLabel"]
      310 DUPTABLE                         R27 K113 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
      311 SETTABLEKS                       R6 R27 K111 ["Image"]
      313 SETTABLEKS                       R10 R27 K112 ["ImageColor3"]
      315 GETIMPORT                        R28 K56 [UDim2.new]
      317 LOADN                            R29 0
      318 LOADN                            R30 600
      319 LOADN                            R31 0
      320 LOADN                            R32 40
      321 CALL                             R28 4 1
      322 SETTABLEKS                       R28 R27 K28 ["Size"]
      324 CALL                             R25 2 1
      325 SETTABLEKS                       R25 R24 K108 ["FontThumbnail"]
      327 CALL                             R21 3 1
      328 SETTABLEKS                       R21 R20 K94 ["FontThumbnailPane"]
      330 CALL                             R17 3 1
      331 SETTABLEKS                       R17 R16 K40 ["TileComponent"]
      333 CALL                             R13 3 -1
      334 RETURN                           R13 -1

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
      100 LOADN                            R18 -14
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
