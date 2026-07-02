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
       42 JUMP                             ; [+49]
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
       56 JUMP                             ; [+35]
       57 MOVE                             R14 R6
       58 GETUPVAL                         R15 2
       59 GETTABLEKS                       R15 R15 K10 ["createElement"]
       61 GETUPVAL                         R16 6
       62 DUPTABLE                         R17 K15 [{"key", "ItemData", "LayoutOrder", "Size"}]
       63 GETUPVAL                         R19 7
       64 CALL                             R19 0 1
       65 JUMPIFNOT                        R19 ; [+7]
       66 LOADK                            R19 K16 ["%*"]
       67 MOVE                             R21 R11
       68 NAMECALL                         R19 R19 K17 ["format"]
       70 CALL                             R19 2 1
       71 MOVE                             R18 R19
       72 JUMP                             ; [+1]
       73 LOADNIL                          R18
       74 SETTABLEKS                       R18 R17 K11 ["key"]
       76 SETTABLEKS                       R12 R17 K12 ["ItemData"]
       78 NAMECALL                         R18 R7 K18 ["getNextOrder"]
       80 CALL                             R18 1 1
       81 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
       83 GETTABLEKS                       R18 R2 K19 ["CellSize"]
       85 SETTABLEKS                       R18 R17 K14 ["Size"]
       87 CALL                             R15 2 -1
       88 FASTCALL                         TABLE_INSERT ; [+2]
       89 GETIMPORT                        R13 K8 [table.insert]
       91 CALL                             R13 -1 0
       92 FORGLOOP                         R8 2 ; [-64]
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R8 R8 K20 ["useState"]
       97 GETIMPORT                        R9 K22 [Vector2.new]
       99 CALL                             R9 0 -1
      100 CALL                             R8 -1 2
      101 GETUPVAL                         R10 2
      102 GETTABLEKS                       R10 R10 K23 ["useCallback"]
      104 NEWCLOSURE                       R11 P0
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R4
      108 NEWTABLE                         R12 0 2
      110 GETTABLEKS                       R13 R0 K24 ["OnClothingLayerOrderChanged"]
      112 LENGTH                           R14 R4
      113 SETLIST                          R12 R13 2 [1]
      115 CALL                             R10 2 1
      116 GETUPVAL                         R11 2
      117 GETTABLEKS                       R11 R11 K23 ["useCallback"]
      119 NEWCLOSURE                       R12 P1
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R5
      123 NEWTABLE                         R13 0 2
      125 GETTABLEKS                       R14 R0 K25 ["OnMakeupLayerOrderChanged"]
      127 LENGTH                           R15 R5
      128 SETLIST                          R13 R14 2 [1]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R12 2
      132 GETTABLEKS                       R12 R12 K10 ["createElement"]
      134 GETUPVAL                         R13 8
      135 DUPTABLE                         R14 K33 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      136 GETIMPORT                        R15 K22 [Vector2.new]
      138 LOADN                            R16 1
      139 LOADN                            R17 0
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K26 ["AnchorPoint"]
      143 GETIMPORT                        R15 K36 [UDim2.fromScale]
      145 LOADN                            R16 1
      146 LOADN                            R17 0
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K27 ["Position"]
      150 GETTABLEKS                       R15 R2 K14 ["Size"]
      152 SETTABLEKS                       R15 R14 K14 ["Size"]
      154 GETIMPORT                        R15 K39 [Enum.AutomaticSize.XY]
      156 SETTABLEKS                       R15 R14 K28 ["AutomaticSize"]
      158 GETIMPORT                        R15 K42 [Enum.FillDirection.Vertical]
      160 SETTABLEKS                       R15 R14 K29 ["Layout"]
      162 GETTABLEKS                       R15 R2 K43 ["SidebarSpacing"]
      164 SETTABLEKS                       R15 R14 K30 ["Spacing"]
      166 GETIMPORT                        R15 K45 [Enum.HorizontalAlignment.Right]
      168 SETTABLEKS                       R15 R14 K31 ["HorizontalAlignment"]
      170 GETIMPORT                        R15 K47 [Enum.VerticalAlignment.Top]
      172 SETTABLEKS                       R15 R14 K32 ["VerticalAlignment"]
      174 DUPTABLE                         R15 K50 [{"Contents", "OtherEquipment"}]
      175 GETUPVAL                         R16 2
      176 GETTABLEKS                       R16 R16 K10 ["createElement"]
      178 GETUPVAL                         R17 8
      179 NEWTABLE                         R18 8 0
      181 GETIMPORT                        R19 K52 [Enum.AutomaticSize.Y]
      183 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      185 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      187 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      189 GETIMPORT                        R19 K47 [Enum.VerticalAlignment.Top]
      191 SETTABLEKS                       R19 R18 K32 ["VerticalAlignment"]
      193 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      195 SETTABLEKS                       R19 R18 K29 ["Layout"]
      197 GETTABLEKS                       R19 R2 K43 ["SidebarSpacing"]
      199 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      201 DUPTABLE                         R19 K54 [{"Top", "Left", "Right"}]
      202 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      204 SETTABLEKS                       R20 R19 K46 ["Top"]
      206 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      208 SETTABLEKS                       R20 R19 K53 ["Left"]
      210 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      212 SETTABLEKS                       R20 R19 K44 ["Right"]
      214 SETTABLEKS                       R19 R18 K56 ["Padding"]
      216 GETUPVAL                         R19 2
      217 GETTABLEKS                       R19 R19 K57 ["Change"]
      219 GETTABLEKS                       R19 R19 K58 ["AbsoluteSize"]
      221 NEWCLOSURE                       R20 P2
      222 CAPTURE                          VAL R9
      223 SETTABLE                         R20 R18 R19
      224 DUPTABLE                         R19 K62 [{"ResetCameraButton", "LayeredClothingEquipment", "MakeupEquipment"}]
      225 GETUPVAL                         R20 2
      226 GETTABLEKS                       R20 R20 K10 ["createElement"]
      228 GETUPVAL                         R21 9
      229 DUPTABLE                         R22 K63 [{"LayoutOrder"}]
      230 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      232 CALL                             R23 1 1
      233 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      235 CALL                             R20 2 1
      236 SETTABLEKS                       R20 R19 K59 ["ResetCameraButton"]
      238 GETUPVAL                         R20 2
      239 GETTABLEKS                       R20 R20 K10 ["createElement"]
      241 GETUPVAL                         R21 10
      242 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      243 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      245 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      247 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      249 SETTABLEKS                       R23 R22 K65 ["spacing"]
      251 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      253 CALL                             R23 1 1
      254 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      256 SETTABLEKS                       R4 R22 K67 ["tiles"]
      258 DUPCLOSURE                       R23 K72 [PROTO_3]
      259 CAPTURE                          UPVAL U2
      260 CAPTURE                          UPVAL U6
      261 CAPTURE                          UPVAL U7
      262 SETTABLEKS                       R23 R22 K68 ["render"]
      264 SETTABLEKS                       R10 R22 K69 ["move"]
      266 CALL                             R20 2 1
      267 SETTABLEKS                       R20 R19 K60 ["LayeredClothingEquipment"]
      269 GETTABLEKS                       R21 R0 K25 ["OnMakeupLayerOrderChanged"]
      271 JUMPIFEQKNIL                     R21 ; [+31]
      273 GETUPVAL                         R20 2
      274 GETTABLEKS                       R20 R20 K10 ["createElement"]
      276 GETUPVAL                         R21 10
      277 DUPTABLE                         R22 K70 [{"cellSize", "spacing", "layoutOrder", "tiles", "render", "move"}]
      278 GETTABLEKS                       R23 R2 K19 ["CellSize"]
      280 SETTABLEKS                       R23 R22 K64 ["cellSize"]
      282 GETTABLEKS                       R23 R2 K71 ["ItemSpacing"]
      284 SETTABLEKS                       R23 R22 K65 ["spacing"]
      286 NAMECALL                         R23 R7 K18 ["getNextOrder"]
      288 CALL                             R23 1 1
      289 SETTABLEKS                       R23 R22 K66 ["layoutOrder"]
      291 SETTABLEKS                       R5 R22 K67 ["tiles"]
      293 DUPCLOSURE                       R23 K73 [PROTO_4]
      294 CAPTURE                          UPVAL U2
      295 CAPTURE                          UPVAL U6
      296 CAPTURE                          UPVAL U7
      297 SETTABLEKS                       R23 R22 K68 ["render"]
      299 SETTABLEKS                       R11 R22 K69 ["move"]
      301 CALL                             R20 2 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R20
      304 SETTABLEKS                       R20 R19 K61 ["MakeupEquipment"]
      306 CALL                             R16 3 1
      307 SETTABLEKS                       R16 R15 K48 ["Contents"]
      309 GETUPVAL                         R16 2
      310 GETTABLEKS                       R16 R16 K10 ["createElement"]
      312 GETUPVAL                         R17 11
      313 DUPTABLE                         R18 K79 [{["AutomaticSize"], ["AutoSizeCanvas"] = False, ["AutomaticCanvasSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Spacing"], ["ScrollBarThickness"], ["Padding"], ["Size"], ["ScrollingFrameSize"]}]
      314 GETIMPORT                        R19 K81 [Enum.AutomaticSize.X]
      316 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
      318 GETIMPORT                        R19 K39 [Enum.AutomaticSize.XY]
      320 SETTABLEKS                       R19 R18 K76 ["AutomaticCanvasSize"]
      322 GETIMPORT                        R19 K45 [Enum.HorizontalAlignment.Right]
      324 SETTABLEKS                       R19 R18 K31 ["HorizontalAlignment"]
      326 NAMECALL                         R19 R7 K18 ["getNextOrder"]
      328 CALL                             R19 1 1
      329 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      331 GETIMPORT                        R19 K42 [Enum.FillDirection.Vertical]
      333 SETTABLEKS                       R19 R18 K29 ["Layout"]
      335 GETTABLEKS                       R19 R2 K71 ["ItemSpacing"]
      337 SETTABLEKS                       R19 R18 K30 ["Spacing"]
      339 GETTABLEKS                       R19 R2 K77 ["ScrollBarThickness"]
      341 SETTABLEKS                       R19 R18 K77 ["ScrollBarThickness"]
      343 DUPTABLE                         R19 K82 [{"Right", "Left"}]
      344 GETTABLEKS                       R20 R2 K55 ["SidebarPadding"]
      346 SETTABLEKS                       R20 R19 K44 ["Right"]
      348 GETTABLEKS                       R21 R2 K55 ["SidebarPadding"]
      350 MINUS                            R20 R21
      351 SETTABLEKS                       R20 R19 K53 ["Left"]
      353 SETTABLEKS                       R19 R18 K56 ["Padding"]
      355 GETIMPORT                        R19 K83 [UDim2.new]
      357 LOADN                            R20 1
      358 LOADN                            R21 0
      359 LOADN                            R22 1
      360 GETTABLEKS                       R26 R8 K51 ["Y"]
      362 MINUS                            R25 R26
      363 GETTABLEKS                       R26 R2 K43 ["SidebarSpacing"]
      365 SUB                              R24 R25 R26
      366 LOADK                            R26 K84 [0.5]
      367 GETTABLEKS                       R27 R2 K55 ["SidebarPadding"]
      369 MUL                              R25 R26 R27
      370 SUB                              R23 R24 R25
      371 CALL                             R19 4 1
      372 SETTABLEKS                       R19 R18 K14 ["Size"]
      374 GETIMPORT                        R19 K83 [UDim2.new]
      376 LOADN                            R20 0
      377 GETTABLEKS                       R21 R2 K85 ["ScrollingFrameSizeOffset"]
      379 LOADN                            R22 1
      380 LOADN                            R23 0
      381 CALL                             R19 4 1
      382 SETTABLEKS                       R19 R18 K78 ["ScrollingFrameSize"]
      384 MOVE                             R19 R6
      385 CALL                             R16 3 1
      386 SETTABLEKS                       R16 R15 K49 ["OtherEquipment"]
      388 CALL                             R12 3 -1
      389 RETURN                           R12 -1

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
