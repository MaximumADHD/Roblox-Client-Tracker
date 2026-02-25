PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["changedLayers"]
        2 NAMECALL                         R2 R2 K1 ["report"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["OnClothingLayerOrderChanged"]
        8 GETUPVAL                         R6 2
        9 LENGTH                           R5 R6
       10 SUB                              R4 R5 R0
       11 ADDK                             R3 R4 K3 [1]
       12 GETUPVAL                         R7 2
       13 LENGTH                           R6 R7
       14 SUB                              R5 R6 R1
       15 ADDK                             R4 R5 K3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnMakeupLayerOrderChanged"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K1 ["changedLayers"]
        8 NAMECALL                         R2 R2 K2 ["report"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["OnMakeupLayerOrderChanged"]
       14 GETUPVAL                         R6 2
       15 LENGTH                           R5 R6
       16 SUB                              R4 R5 R0
       17 ADDK                             R3 R4 K3 [1]
       18 GETUPVAL                         R7 2
       19 LENGTH                           R6 R7
       20 SUB                              R5 R6 R1
       21 ADDK                             R4 R5 K3 [1]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R7 R0 K0 ["palette"]
        2 FASTCALL1                        TOSTRING R7 ; [+2]
        3 GETIMPORT                        R6 K2 [tostring]
        5 CALL                             R6 1 1
        6 MOVE                             R3 R6
        7 LOADK                            R4 K3 ["/"]
        8 GETTABLEKS                       R6 R0 K4 ["item"]
       10 FASTCALL1                        TOSTRING R6 ; [+2]
       11 GETIMPORT                        R5 K2 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R2 R3 R5
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K10 [{"key", "ItemData", "Size", "IsDragging"}]
       20 GETUPVAL                         R7 2
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+2]
       23 MOVE                             R6 R2
       24 JUMP                             ; [+1]
       25 LOADNIL                          R6
       26 SETTABLEKS                       R6 R5 K6 ["key"]
       28 SETTABLEKS                       R0 R5 K7 ["ItemData"]
       30 GETIMPORT                        R6 K13 [UDim2.fromScale]
       32 LOADN                            R7 1
       33 LOADN                            R8 1
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K8 ["Size"]
       37 SETTABLEKS                       R1 R5 K9 ["IsDragging"]
       39 CALL                             R3 2 1
       40 MOVE                             R4 R2
       41 RETURN                           R3 2

PROTO_4:
        0 GETTABLEKS                       R7 R0 K0 ["palette"]
        2 FASTCALL1                        TOSTRING R7 ; [+2]
        3 GETIMPORT                        R6 K2 [tostring]
        5 CALL                             R6 1 1
        6 MOVE                             R3 R6
        7 LOADK                            R4 K3 ["/"]
        8 GETTABLEKS                       R6 R0 K4 ["item"]
       10 FASTCALL1                        TOSTRING R6 ; [+2]
       11 GETIMPORT                        R5 K2 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R2 R3 R5
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K11 [{"key", "ItemData", "Size", "IsDragging", "EnableTooltip"}]
       20 GETUPVAL                         R7 2
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+2]
       23 MOVE                             R6 R2
       24 JUMP                             ; [+1]
       25 LOADNIL                          R6
       26 SETTABLEKS                       R6 R5 K6 ["key"]
       28 SETTABLEKS                       R0 R5 K7 ["ItemData"]
       30 GETIMPORT                        R6 K14 [UDim2.fromScale]
       32 LOADN                            R7 1
       33 LOADN                            R8 1
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K8 ["Size"]
       37 SETTABLEKS                       R1 R5 K9 ["IsDragging"]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K10 ["EnableTooltip"]
       42 CALL                             R3 2 1
       43 MOVE                             R4 R2
       44 RETURN                           R3 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["EquippedItemsSidebar"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useContext"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 NEWTABLE                         R4 0 0
       16 NEWTABLE                         R5 0 0
       18 NEWTABLE                         R6 0 0
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K3 ["new"]
       23 CALL                             R7 0 1
       24 GETTABLEKS                       R8 R3 K4 ["equippedItems"]
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETUPVAL                         R13 5
       30 MOVE                             R14 R12
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K5 ["layered"] ; [+10]
       34 LOADN                            R15 1
       35 FASTCALL3                        TABLE_INSERT R4 R15 R12
       37 MOVE                             R14 R4
       38 MOVE                             R16 R12
       39 GETIMPORT                        R13 K8 [table.insert]
       41 CALL                             R13 3 0
       42 JUMP                             ; [+52]
       43 GETUPVAL                         R13 6
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+14]
       46 GETUPVAL                         R13 5
       47 MOVE                             R14 R12
       48 CALL                             R13 1 1
       49 JUMPIFNOTEQKS                    R13 K9 ["makeup"] ; [+10]
       51 LOADN                            R15 1
       52 FASTCALL3                        TABLE_INSERT R5 R15 R12
       54 MOVE                             R14 R5
       55 MOVE                             R16 R12
       56 GETIMPORT                        R13 K8 [table.insert]
       58 CALL                             R13 3 0
       59 JUMP                             ; [+35]
       60 MOVE                             R14 R6
       61 GETUPVAL                         R16 2
       62 GETTABLEKS                       R15 R16 K10 ["createElement"]
       64 GETUPVAL                         R16 7
       65 DUPTABLE                         R17 K15 [{"key", "ItemData", "LayoutOrder", "Size"}]
       66 GETUPVAL                         R19 8
       67 CALL                             R19 0 1
       68 JUMPIFNOT                        R19 ; [+7]
       69 LOADK                            R19 K16 ["%*"]
       70 MOVE                             R21 R11
       71 NAMECALL                         R19 R19 K17 ["format"]
       73 CALL                             R19 2 1
       74 MOVE                             R18 R19
       75 JUMP                             ; [+1]
       76 LOADNIL                          R18
       77 SETTABLEKS                       R18 R17 K11 ["key"]
       79 SETTABLEKS                       R12 R17 K12 ["ItemData"]
       81 NAMECALL                         R18 R7 K18 ["getNextOrder"]
       83 CALL                             R18 1 1
       84 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
       86 GETTABLEKS                       R18 R2 K19 ["CellSize"]
       88 SETTABLEKS                       R18 R17 K14 ["Size"]
       90 CALL                             R15 2 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R13 K8 [table.insert]
       94 CALL                             R13 -1 0
       95 FORGLOOP                         R8 2 ; [-67]
       97 GETUPVAL                         R9 2
       98 GETTABLEKS                       R8 R9 K20 ["useState"]
      100 GETIMPORT                        R9 K22 [Vector2.new]
      102 CALL                             R9 0 -1
      103 CALL                             R8 -1 2
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R10 R11 K23 ["useCallback"]
      107 NEWCLOSURE                       R11 P0
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R12 0 2
      113 GETTABLEKS                       R13 R0 K24 ["OnClothingLayerOrderChanged"]
      115 LENGTH                           R14 R4
      116 SETLIST                          R12 R13 2 [1]
      118 CALL                             R10 2 1
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R11 R12 K23 ["useCallback"]
      122 NEWCLOSURE                       R12 P1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R5
      126 NEWTABLE                         R13 0 2
      128 GETTABLEKS                       R14 R0 K25 ["OnMakeupLayerOrderChanged"]
      130 LENGTH                           R15 R5
      131 SETLIST                          R13 R14 2 [1]
      133 CALL                             R11 2 1
      134 GETUPVAL                         R13 2
      135 GETTABLEKS                       R12 R13 K10 ["createElement"]
      137 GETUPVAL                         R13 9
      138 DUPTABLE                         R14 K33 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      139 GETIMPORT                        R15 K22 [Vector2.new]
      141 LOADN                            R16 1
      142 LOADN                            R17 0
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K26 ["AnchorPoint"]
      146 GETIMPORT                        R15 K36 [UDim2.fromScale]
      148 LOADN                            R16 1
      149 LOADN                            R17 0
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K27 ["Position"]
      153 GETTABLEKS                       R15 R2 K14 ["Size"]
      155 SETTABLEKS                       R15 R14 K14 ["Size"]
      157 GETIMPORT                        R15 K39 [Enum.AutomaticSize.XY]
      159 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
      161 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      163 SETTABLEKS                       R15 R14 K29 ["Layout"]
      165 GETTABLEKS                       R15 R2 K43 ["SidebarSpacing"]
      167 SETTABLEKS                       R15 R14 K30 ["Spacing"]
      169 GETIMPORT                        R15 K45 [Enum.HorizontalAlignment.Right]
      171 SETTABLEKS                       R15 R14 K31 ["HorizontalAlignment"]
      173 GETIMPORT                        R15 K47 [Enum.VerticalAlignment.Top]
      175 SETTABLEKS                       R15 R14 K32 ["VerticalAlignment"]
      177 DUPTABLE                         R15 K50 [{"Contents", "OtherEquipment"}]
      178 GETUPVAL                         R17 2
      179 GETTABLEKS                       R16 R17 K10 ["createElement"]
      181 GETUPVAL                         R17 9
      182 NEWTABLE                         R18 8 0
      184 GETIMPORT                        R19 K52 [Enum.AutomaticSize.Y]
      186 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      188 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      190 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      192 GETIMPORT                        R19 K47 [Enum.VerticalAlignment.Top]
      194 SETTABLEKS                       R19 R18 K32 ["VerticalAlignment"]
      196 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      198 SETTABLEKS                       R19 R18 K29 ["Layout"]
      200 GETTABLEKS                       R19 R2 K43 ["SidebarSpacing"]
      202 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      204 DUPTABLE                         R19 K54 [{"Top", "Left", "Right"}]
      205 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      207 SETTABLEKS                       R20 R19 K46 ["Top"]
      209 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      211 SETTABLEKS                       R20 R19 K53 ["Left"]
      213 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      215 SETTABLEKS                       R20 R19 K44 ["Right"]
      217 SETTABLEKS                       R19 R18 K56 ["Padding"]
      219 GETUPVAL                         R21 2
      220 GETTABLEKS                       R20 R21 K57 ["Change"]
      222 GETTABLEKS                       R19 R20 K58 ["AbsoluteSize"]
      224 NEWCLOSURE                       R20 P2
      225 CAPTURE                          VAL R9
      226 SETTABLE                         R20 R18 R19
      227 DUPTABLE                         R19 K62 [{"ResetCameraButton", "LayeredClothingEquipment", "MakeupEquipment"}]
      228 GETUPVAL                         R21 2
      229 GETTABLEKS                       R20 R21 K10 ["createElement"]
      231 GETUPVAL                         R21 10
      232 DUPTABLE                         R22 K63 [{"LayoutOrder"}]
      233 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      235 CALL                             R23 1 1
      236 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K59 ["ResetCameraButton"]
      241 GETUPVAL                         R21 2
      242 GETTABLEKS                       R20 R21 K10 ["createElement"]
      244 GETUPVAL                         R21 11
      245 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      246 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      248 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      250 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      252 SETTABLEKS                       R23 R22 K65 ["spacing"]
      254 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      256 CALL                             R23 1 1
      257 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      259 SETTABLEKS                       R4 R22 K67 ["tiles"]
      261 DUPCLOSURE                       R23 K72 [PROTO_3]
      262 CAPTURE                          UPVAL U2
      263 CAPTURE                          UPVAL U7
      264 CAPTURE                          UPVAL U8
      265 SETTABLEKS                       R23 R22 K68 ["render"]
      267 SETTABLEKS                       R10 R22 K69 ["move"]
      269 CALL                             R20 2 1
      270 SETTABLEKS                       R20 R19 K60 ["LayeredClothingEquipment"]
      272 GETUPVAL                         R21 6
      273 CALL                             R21 0 1
      274 JUMPIFNOT                        R21 ; [+34]
      275 GETTABLEKS                       R21 R0 K25 ["OnMakeupLayerOrderChanged"]
      277 JUMPIFEQKNIL                     R21 ; [+31]
      279 GETUPVAL                         R21 2
      280 GETTABLEKS                       R20 R21 K10 ["createElement"]
      282 GETUPVAL                         R21 11
      283 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      284 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      286 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      288 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      290 SETTABLEKS                       R23 R22 K65 ["spacing"]
      292 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      294 CALL                             R23 1 1
      295 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      297 SETTABLEKS                       R5 R22 K67 ["tiles"]
      299 DUPCLOSURE                       R23 K73 [PROTO_4]
      300 CAPTURE                          UPVAL U2
      301 CAPTURE                          UPVAL U7
      302 CAPTURE                          UPVAL U8
      303 SETTABLEKS                       R23 R22 K68 ["render"]
      305 SETTABLEKS                       R11 R22 K69 ["move"]
      307 CALL                             R20 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R20
      310 SETTABLEKS                       R20 R19 K61 ["MakeupEquipment"]
      312 CALL                             R16 3 1
      313 SETTABLEKS                       R16 R15 K48 ["Contents"]
      315 GETUPVAL                         R17 2
      316 GETTABLEKS                       R16 R17 K10 ["createElement"]
      318 GETUPVAL                         R17 12
      319 DUPTABLE                         R18 K78 [{"AutomaticSize", "AutoSizeCanvas", "AutomaticCanvasSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing", "ScrollBarThickness", "Padding", "Size", "ScrollingFrameSize"}]
      320 GETIMPORT                        R19 K80 [Enum.AutomaticSize.X]
      322 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      324 LOADB                            R19 0
      325 SETTABLEKS                       R19 R18 K74 ["AutoSizeCanvas"]
      327 GETIMPORT                        R19 K39 [Enum.AutomaticSize.XY]
      329 SETTABLEKS                       R19 R18 K75 ["AutomaticCanvasSize"]
      331 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      333 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      335 NAMECALL                         R19 R7 K18 ["getNextOrder"]
      337 CALL                             R19 1 1
      338 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      340 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      342 SETTABLEKS                       R19 R18 K29 ["Layout"]
      344 GETTABLEKS                       R19 R2 K71 ["ItemSpacing"]
      346 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      348 GETTABLEKS                       R19 R2 K76 ["ScrollBarThickness"]
      350 SETTABLEKS                       R19 R18 K76 ["ScrollBarThickness"]
      352 DUPTABLE                         R19 K81 [{"Right", "Left"}]
      353 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      355 SETTABLEKS                       R20 R19 K44 ["Right"]
      357 GETTABLEKS                       R21 R2 K55 ["SidebarPadding"]
      359 MINUS                            R20 R21
      360 SETTABLEKS                       R20 R19 K53 ["Left"]
      362 SETTABLEKS                       R19 R18 K56 ["Padding"]
      364 GETIMPORT                        R19 K82 [UDim2.new]
      366 LOADN                            R20 1
      367 LOADN                            R21 0
      368 LOADN                            R22 1
      369 GETTABLEKS                       R26 R8 K51 ["Y"]
      371 MINUS                            R25 R26
      372 GETTABLEKS                       R26 R2 K43 ["SidebarSpacing"]
      374 SUB                              R24 R25 R26
      375 LOADK                            R26 K83 [0.5]
      376 GETTABLEKS                       R27 R2 K55 ["SidebarPadding"]
      378 MUL                              R25 R26 R27
      379 SUB                              R23 R24 R25
      380 CALL                             R19 4 1
      381 SETTABLEKS                       R19 R18 K14 ["Size"]
      383 GETIMPORT                        R19 K82 [UDim2.new]
      385 LOADN                            R20 0
      386 GETTABLEKS                       R21 R2 K84 ["ScrollingFrameSizeOffset"]
      388 LOADN                            R22 1
      389 LOADN                            R23 0
      390 CALL                             R19 4 1
      391 SETTABLEKS                       R19 R18 K77 ["ScrollingFrameSize"]
      393 MOVE                             R19 R6
      394 CALL                             R16 3 1
      395 SETTABLEKS                       R16 R15 K49 ["OtherEquipment"]
      397 CALL                             R12 3 -1
      398 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["EquippedItemPreview"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K10 ["Parent"]
       34 GETTABLEKS                       R5 R6 K11 ["ResetCameraButton"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Components"]
       43 GETTABLEKS                       R6 R7 K14 ["DraggableTileList"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K12 ["Src"]
       50 GETTABLEKS                       R8 R9 K15 ["Util"]
       52 GETTABLEKS                       R7 R8 K16 ["EquipmentStateContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K12 ["Src"]
       59 GETTABLEKS                       R9 R10 K15 ["Util"]
       61 GETTABLEKS                       R8 R9 K17 ["getItemAccessoryType"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Src"]
       68 GETTABLEKS                       R10 R11 K18 ["Flags"]
       70 GETTABLEKS                       R9 R10 K19 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K12 ["Src"]
       77 GETTABLEKS                       R11 R12 K18 ["Flags"]
       79 GETTABLEKS                       R10 R11 K20 ["getFFlagAvatarPreviewerMakeup"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Src"]
       86 GETTABLEKS                       R12 R13 K21 ["Resources"]
       88 GETTABLEKS                       R11 R12 K22 ["Theme"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K12 ["Src"]
       95 GETTABLEKS                       R12 R13 K23 ["Types"]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R12 R1 K24 ["UI"]
      100 GETTABLEKS                       R13 R12 K25 ["Pane"]
      102 GETTABLEKS                       R14 R12 K26 ["ScrollingFrame"]
      104 GETTABLEKS                       R16 R1 K15 ["Util"]
      106 GETTABLEKS                       R15 R16 K27 ["LayoutOrderIterator"]
      108 GETTABLEKS                       R17 R1 K28 ["ContextServices"]
      110 GETTABLEKS                       R16 R17 K29 ["Analytics"]
      112 GETTABLEKS                       R18 R1 K28 ["ContextServices"]
      114 GETTABLEKS                       R17 R18 K30 ["Stylizer"]
      116 DUPCLOSURE                       R18 K31 [PROTO_5]
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R14
      130 RETURN                           R18 1
