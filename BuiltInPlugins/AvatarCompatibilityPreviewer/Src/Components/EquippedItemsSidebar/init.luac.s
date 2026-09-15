PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["changedLayers"]
        2 NAMECALL                         R2 R2 K1 ["report"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["OnClothingLayerOrderChanged"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnMakeupLayerOrderChanged"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K1 ["changedLayers"]
        8 NAMECALL                         R2 R2 K2 ["report"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["OnMakeupLayerOrderChanged"]
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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["createElement"]
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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K12 [{["key"], ["ItemData"], ["Size"], ["IsDragging"], ["EnableTooltip"] = True}]
       20 GETUPVAL                         R7 2
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+2]
       23 MOVE                             R6 R2
       24 JUMP                             ; [+1]
       25 LOADNIL                          R6
       26 SETTABLEKS                       R6 R5 K6 ["key"]
       28 SETTABLEKS                       R0 R5 K7 ["ItemData"]
       30 GETIMPORT                        R6 K15 [UDim2.fromScale]
       32 LOADN                            R7 1
       33 LOADN                            R8 1
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K8 ["Size"]
       37 SETTABLEKS                       R1 R5 K9 ["IsDragging"]
       39 CALL                             R3 2 1
       40 MOVE                             R4 R2
       41 RETURN                           R3 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["EquippedItemsSidebar"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useContext"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 NEWTABLE                         R4 0 0
       16 NEWTABLE                         R5 0 0
       18 NEWTABLE                         R6 0 0
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K3 ["new"]
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
       42 JUMP                             ; [+48]
       43 GETUPVAL                         R13 5
       44 MOVE                             R14 R12
       45 CALL                             R13 1 1
       46 JUMPIFNOTEQKS                    R13 K9 ["makeup"] ; [+10]
       48 LOADN                            R15 1
       49 FASTCALL3                        TABLE_INSERT R5 R15 R12
       51 MOVE                             R14 R5
       52 MOVE                             R16 R12
       53 GETIMPORT                        R13 K8 [table.insert]
       55 CALL                             R13 3 0
       56 JUMP                             ; [+34]
       57 MOVE                             R14 R6
       58 GETUPVAL                         R15 2
       59 GETTABLEKS                       R15 R15 K10 ["createElement"]
       61 GETUPVAL                         R16 6
       62 DUPTABLE                         R17 K15 [{"key", "ItemData", "LayoutOrder", "Size"}]
       63 GETUPVAL                         R19 7
       64 CALL                             R19 0 1
       65 JUMPIFNOT                        R19 ; [+6]
       66 LOADK                            R18 K16 ["%*"]
       67 MOVE                             R20 R11
       68 NAMECALL                         R18 R18 K17 ["format"]
       70 CALL                             R18 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R18
       73 SETTABLEKS                       R18 R17 K11 ["key"]
       75 SETTABLEKS                       R12 R17 K12 ["ItemData"]
       77 NAMECALL                         R18 R7 K18 ["getNextOrder"]
       79 CALL                             R18 1 1
       80 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
       82 GETTABLEKS                       R18 R2 K19 ["CellSize"]
       84 SETTABLEKS                       R18 R17 K14 ["Size"]
       86 CALL                             R15 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R13 K8 [table.insert]
       90 CALL                             R13 -1 0
       91 FORGLOOP                         R8 2 ; [-63]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R8 R8 K20 ["useState"]
       96 GETIMPORT                        R9 K22 [Vector2.new]
       98 CALL                             R9 0 -1
       99 CALL                             R8 -1 2
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K23 ["useCallback"]
      103 NEWCLOSURE                       R11 P0
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R12 0 2
      109 GETTABLEKS                       R13 R0 K24 ["OnClothingLayerOrderChanged"]
      111 LENGTH                           R14 R4
      112 SETLIST                          R12 R13 2 [1]
      114 CALL                             R10 2 1
      115 GETUPVAL                         R11 2
      116 GETTABLEKS                       R11 R11 K23 ["useCallback"]
      118 NEWCLOSURE                       R12 P1
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R5
      122 NEWTABLE                         R13 0 2
      124 GETTABLEKS                       R14 R0 K25 ["OnMakeupLayerOrderChanged"]
      126 LENGTH                           R15 R5
      127 SETLIST                          R13 R14 2 [1]
      129 CALL                             R11 2 1
      130 GETUPVAL                         R12 2
      131 GETTABLEKS                       R12 R12 K10 ["createElement"]
      133 GETUPVAL                         R13 8
      134 DUPTABLE                         R14 K33 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      135 GETIMPORT                        R15 K22 [Vector2.new]
      137 LOADN                            R16 1
      138 LOADN                            R17 0
      139 CALL                             R15 2 1
      140 SETTABLEKS                       R15 R14 K26 ["AnchorPoint"]
      142 GETIMPORT                        R15 K36 [UDim2.fromScale]
      144 LOADN                            R16 1
      145 LOADN                            R17 0
      146 CALL                             R15 2 1
      147 SETTABLEKS                       R15 R14 K27 ["Position"]
      149 GETTABLEKS                       R15 R2 K14 ["Size"]
      151 SETTABLEKS                       R15 R14 K14 ["Size"]
      153 GETIMPORT                        R15 K39 [Enum.AutomaticSize.XY]
      155 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
      157 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      159 SETTABLEKS                       R15 R14 K29 ["Layout"]
      161 GETTABLEKS                       R15 R2 K43 ["SidebarSpacing"]
      163 SETTABLEKS                       R15 R14 K30 ["Spacing"]
      165 GETIMPORT                        R15 K45 [Enum.HorizontalAlignment.Right]
      167 SETTABLEKS                       R15 R14 K31 ["HorizontalAlignment"]
      169 GETIMPORT                        R15 K47 [Enum.VerticalAlignment.Top]
      171 SETTABLEKS                       R15 R14 K32 ["VerticalAlignment"]
      173 DUPTABLE                         R15 K50 [{"Contents", "OtherEquipment"}]
      174 GETUPVAL                         R16 2
      175 GETTABLEKS                       R16 R16 K10 ["createElement"]
      177 GETUPVAL                         R17 8
      178 NEWTABLE                         R18 8 0
      180 GETIMPORT                        R19 K52 [Enum.AutomaticSize.Y]
      182 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      184 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      186 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      188 GETIMPORT                        R19 K47 [Enum.VerticalAlignment.Top]
      190 SETTABLEKS                       R19 R18 K32 ["VerticalAlignment"]
      192 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      194 SETTABLEKS                       R19 R18 K29 ["Layout"]
      196 GETTABLEKS                       R19 R2 K43 ["SidebarSpacing"]
      198 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      200 DUPTABLE                         R19 K54 [{"Top", "Left", "Right"}]
      201 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      203 SETTABLEKS                       R20 R19 K46 ["Top"]
      205 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      207 SETTABLEKS                       R20 R19 K53 ["Left"]
      209 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      211 SETTABLEKS                       R20 R19 K44 ["Right"]
      213 SETTABLEKS                       R19 R18 K56 ["Padding"]
      215 GETUPVAL                         R19 2
      216 GETTABLEKS                       R19 R19 K57 ["Change"]
      218 GETTABLEKS                       R19 R19 K58 ["AbsoluteSize"]
      220 NEWCLOSURE                       R20 P2
      221 CAPTURE                          VAL R9
      222 SETTABLE                         R20 R18 R19
      223 DUPTABLE                         R19 K62 [{"ResetCameraButton", "LayeredClothingEquipment", "MakeupEquipment"}]
      224 GETUPVAL                         R20 2
      225 GETTABLEKS                       R20 R20 K10 ["createElement"]
      227 GETUPVAL                         R21 9
      228 DUPTABLE                         R22 K63 [{"LayoutOrder"}]
      229 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      231 CALL                             R23 1 1
      232 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      234 CALL                             R20 2 1
      235 SETTABLEKS                       R20 R19 K59 ["ResetCameraButton"]
      237 GETUPVAL                         R20 2
      238 GETTABLEKS                       R20 R20 K10 ["createElement"]
      240 GETUPVAL                         R21 10
      241 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      242 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      244 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      246 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      248 SETTABLEKS                       R23 R22 K65 ["spacing"]
      250 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      252 CALL                             R23 1 1
      253 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      255 SETTABLEKS                       R4 R22 K67 ["tiles"]
      257 DUPCLOSURE                       R23 K72 [PROTO_3]
      258 CAPTURE                          UPVAL U2
      259 CAPTURE                          UPVAL U6
      260 CAPTURE                          UPVAL U7
      261 SETTABLEKS                       R23 R22 K68 ["render"]
      263 SETTABLEKS                       R10 R22 K69 ["move"]
      265 CALL                             R20 2 1
      266 SETTABLEKS                       R20 R19 K60 ["LayeredClothingEquipment"]
      268 GETTABLEKS                       R21 R0 K25 ["OnMakeupLayerOrderChanged"]
      270 JUMPIFEQKNIL                     R21 ; [+31]
      272 GETUPVAL                         R20 2
      273 GETTABLEKS                       R20 R20 K10 ["createElement"]
      275 GETUPVAL                         R21 10
      276 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      277 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      279 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      281 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      283 SETTABLEKS                       R23 R22 K65 ["spacing"]
      285 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      287 CALL                             R23 1 1
      288 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      290 SETTABLEKS                       R5 R22 K67 ["tiles"]
      292 DUPCLOSURE                       R23 K73 [PROTO_4]
      293 CAPTURE                          UPVAL U2
      294 CAPTURE                          UPVAL U6
      295 CAPTURE                          UPVAL U7
      296 SETTABLEKS                       R23 R22 K68 ["render"]
      298 SETTABLEKS                       R11 R22 K69 ["move"]
      300 CALL                             R20 2 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R20
      303 SETTABLEKS                       R20 R19 K61 ["MakeupEquipment"]
      305 CALL                             R16 3 1
      306 SETTABLEKS                       R16 R15 K48 ["Contents"]
      308 GETUPVAL                         R16 2
      309 GETTABLEKS                       R16 R16 K10 ["createElement"]
      311 GETUPVAL                         R17 11
      312 DUPTABLE                         R18 K79 [{["AutomaticSize"], ["AutoSizeCanvas"] = False, ["AutomaticCanvasSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Spacing"], ["ScrollBarThickness"], ["Padding"], ["Size"], ["ScrollingFrameSize"]}]
      313 GETIMPORT                        R19 K81 [Enum.AutomaticSize.X]
      315 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      317 GETIMPORT                        R19 K39 [Enum.AutomaticSize.XY]
      319 SETTABLEKS                       R19 R18 K76 ["AutomaticCanvasSize"]
      321 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      323 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      325 NAMECALL                         R19 R7 K18 ["getNextOrder"]
      327 CALL                             R19 1 1
      328 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      330 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      332 SETTABLEKS                       R19 R18 K29 ["Layout"]
      334 GETTABLEKS                       R19 R2 K71 ["ItemSpacing"]
      336 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      338 GETTABLEKS                       R19 R2 K77 ["ScrollBarThickness"]
      340 SETTABLEKS                       R19 R18 K77 ["ScrollBarThickness"]
      342 DUPTABLE                         R19 K82 [{"Right", "Left"}]
      343 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      345 SETTABLEKS                       R20 R19 K44 ["Right"]
      347 GETTABLEKS                       R21 R2 K55 ["SidebarPadding"]
      349 MINUS                            R20 R21
      350 SETTABLEKS                       R20 R19 K53 ["Left"]
      352 SETTABLEKS                       R19 R18 K56 ["Padding"]
      354 GETIMPORT                        R19 K83 [UDim2.new]
      356 LOADN                            R20 1
      357 LOADN                            R21 0
      358 LOADN                            R22 1
      359 GETTABLEKS                       R26 R8 K51 ["Y"]
      361 MINUS                            R25 R26
      362 GETTABLEKS                       R26 R2 K43 ["SidebarSpacing"]
      364 SUB                              R24 R25 R26
      365 LOADK                            R26 K84 [0.5]
      366 GETTABLEKS                       R27 R2 K55 ["SidebarPadding"]
      368 MUL                              R25 R26 R27
      369 SUB                              R23 R24 R25
      370 CALL                             R19 4 1
      371 SETTABLEKS                       R19 R18 K14 ["Size"]
      373 GETIMPORT                        R19 K83 [UDim2.new]
      375 LOADN                            R20 0
      376 GETTABLEKS                       R21 R2 K85 ["ScrollingFrameSizeOffset"]
      378 LOADN                            R22 1
      379 LOADN                            R23 0
      380 CALL                             R19 4 1
      381 SETTABLEKS                       R19 R18 K78 ["ScrollingFrameSize"]
      383 MOVE                             R19 R6
      384 CALL                             R16 3 1
      385 SETTABLEKS                       R16 R15 K49 ["OtherEquipment"]
      387 CALL                             R12 3 -1
      388 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["EquippedItemPreview"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["ResetCameraButton"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["DraggableTileList"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["EquipmentStateContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Util"]
       61 GETTABLEKS                       R8 R8 K17 ["getItemAccessoryType"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K12 ["Src"]
       68 GETTABLEKS                       R9 R9 K18 ["Flags"]
       70 GETTABLEKS                       R9 R9 K19 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K12 ["Src"]
       77 GETTABLEKS                       R10 R10 K20 ["Resources"]
       79 GETTABLEKS                       R10 R10 K21 ["Theme"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K12 ["Src"]
       86 GETTABLEKS                       R11 R11 K22 ["Types"]
       88 CALL                             R10 1 1
       89 GETTABLEKS                       R11 R1 K23 ["UI"]
       91 GETTABLEKS                       R12 R11 K24 ["Pane"]
       93 GETTABLEKS                       R13 R11 K25 ["ScrollingFrame"]
       95 GETTABLEKS                       R14 R1 K15 ["Util"]
       97 GETTABLEKS                       R14 R14 K26 ["LayoutOrderIterator"]
       99 GETTABLEKS                       R15 R1 K27 ["ContextServices"]
      101 GETTABLEKS                       R15 R15 K28 ["Analytics"]
      103 GETTABLEKS                       R16 R1 K27 ["ContextServices"]
      105 GETTABLEKS                       R16 R16 K29 ["Stylizer"]
      107 DUPCLOSURE                       R17 K30 [PROTO_5]
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R13
      120 RETURN                           R17 1
