PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onSlotContextMenuOpened"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onSlotContextMenuOpened"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        8 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["useState"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K3 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R9 0 1
       29 GETTABLEKS                       R10 R0 K5 ["onSlotContextMenuOpened"]
       31 SETLIST                          R9 R10 1 [1]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R11 0 0
       49 CALL                             R9 2 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R9
       56 NEWTABLE                         R12 0 1
       58 MOVE                             R13 R9
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 1
       62 LOADNIL                          R11
       63 LOADN                            R12 0
       64 JUMPIFNOTLT                      R12 R1 ; [+32]
       66 LOADN                            R14 2
       67 GETTABLEKS                       R15 R3 K6 ["Padding"]
       69 GETTABLEKS                       R15 R15 K7 ["Small"]
       71 MUL                              R13 R14 R15
       72 SUB                              R12 R1 R13
       73 LOADN                            R14 1
       74 GETTABLEKS                       R18 R3 K8 ["Gap"]
       76 GETTABLEKS                       R18 R18 K7 ["Small"]
       78 ADD                              R17 R12 R18
       79 LOADN                            R19 120
       80 GETTABLEKS                       R20 R3 K8 ["Gap"]
       82 GETTABLEKS                       R20 R20 K7 ["Small"]
       84 ADD                              R18 R19 R20
       85 DIV                              R16 R17 R18
       86 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       87 GETIMPORT                        R15 K11 [math.floor]
       89 CALL                             R15 1 1
       90 FASTCALL2                        MATH_MAX R14 R15 ; [+3]
       92 GETIMPORT                        R13 K13 [math.max]
       94 CALL                             R13 2 1
       95 MOVE                             R11 R13
       96 JUMP                             ; [+1]
       97 LOADN                            R11 1
       98 GETUPVAL                         R12 2
       99 DUPTABLE                         R13 K24 [{["columns"], ["gridRowStride"], ["listRowStride"] = 62, ["onScrolledToSlot"], ["padding"], ["scrollingFrameRef"], ["slotEntries"], ["targetSlotIndex"], ["viewType"]}]
      100 SETTABLEKS                       R11 R13 K14 ["columns"]
      102 LOADN                            R15 168
      103 GETTABLEKS                       R16 R3 K8 ["Gap"]
      105 GETTABLEKS                       R16 R16 K7 ["Small"]
      107 ADD                              R14 R15 R16
      108 SETTABLEKS                       R14 R13 K15 ["gridRowStride"]
      110 GETTABLEKS                       R14 R0 K18 ["onScrolledToSlot"]
      112 SETTABLEKS                       R14 R13 K18 ["onScrolledToSlot"]
      114 GETTABLEKS                       R14 R3 K6 ["Padding"]
      116 GETTABLEKS                       R14 R14 K7 ["Small"]
      118 SETTABLEKS                       R14 R13 K19 ["padding"]
      120 SETTABLEKS                       R6 R13 K20 ["scrollingFrameRef"]
      122 GETTABLEKS                       R14 R0 K21 ["slotEntries"]
      124 SETTABLEKS                       R14 R13 K21 ["slotEntries"]
      126 GETTABLEKS                       R14 R0 K25 ["scrollToSlotIndex"]
      128 SETTABLEKS                       R14 R13 K22 ["targetSlotIndex"]
      130 GETTABLEKS                       R14 R0 K23 ["viewType"]
      132 SETTABLEKS                       R14 R13 K23 ["viewType"]
      134 CALL                             R12 1 0
      135 NEWTABLE                         R12 4 0
      137 GETTABLEKS                       R13 R0 K21 ["slotEntries"]
      139 LOADNIL                          R14
      140 LOADNIL                          R15
      141 FORGPREP                         R13
      142 LOADK                            R19 K26 ["Tile_"]
      143 GETTABLEKS                       R20 R17 K27 ["slotIndex"]
      145 CONCAT                           R18 R19 R20
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K28 ["createElement"]
      149 GETUPVAL                         R20 3
      150 DUPTABLE                         R21 K42 [{"material", "variant", "color", "name", "slotIndex", "isSelected", "viewType", "canDuplicate", "isContextMenuOpen", "onContextMenuClosed", "onContextMenuOpened", "onDelete", "onDuplicate", "onActivated", "layoutOrder"}]
      151 GETTABLEKS                       R22 R17 K29 ["material"]
      153 SETTABLEKS                       R22 R21 K29 ["material"]
      155 GETTABLEKS                       R22 R17 K30 ["variant"]
      157 SETTABLEKS                       R22 R21 K30 ["variant"]
      159 GETTABLEKS                       R22 R17 K31 ["color"]
      161 SETTABLEKS                       R22 R21 K31 ["color"]
      163 GETTABLEKS                       R22 R17 K32 ["name"]
      165 SETTABLEKS                       R22 R21 K32 ["name"]
      167 GETTABLEKS                       R22 R17 K27 ["slotIndex"]
      169 SETTABLEKS                       R22 R21 K27 ["slotIndex"]
      171 GETTABLEKS                       R23 R17 K27 ["slotIndex"]
      173 GETTABLEKS                       R24 R0 K43 ["selectedSlotIndex"]
      175 JUMPIFEQ                         R23 R24 ; [+2]
      177 LOADB                            R22 0 +1
      178 LOADB                            R22 1
      179 SETTABLEKS                       R22 R21 K33 ["isSelected"]
      181 GETTABLEKS                       R22 R0 K23 ["viewType"]
      183 SETTABLEKS                       R22 R21 K23 ["viewType"]
      185 GETTABLEKS                       R22 R0 K34 ["canDuplicate"]
      187 SETTABLEKS                       R22 R21 K34 ["canDuplicate"]
      189 GETTABLEKS                       R23 R17 K27 ["slotIndex"]
      191 JUMPIFEQ                         R23 R4 ; [+2]
      193 LOADB                            R22 0 +1
      194 LOADB                            R22 1
      195 SETTABLEKS                       R22 R21 K35 ["isContextMenuOpen"]
      197 SETTABLEKS                       R8 R21 K36 ["onContextMenuClosed"]
      199 SETTABLEKS                       R7 R21 K37 ["onContextMenuOpened"]
      201 GETTABLEKS                       R22 R0 K44 ["onSlotDelete"]
      203 SETTABLEKS                       R22 R21 K38 ["onDelete"]
      205 GETTABLEKS                       R22 R0 K45 ["onSlotDuplicate"]
      207 SETTABLEKS                       R22 R21 K39 ["onDuplicate"]
      209 GETTABLEKS                       R22 R0 K46 ["onSlotSelected"]
      211 SETTABLEKS                       R22 R21 K40 ["onActivated"]
      213 SETTABLEKS                       R16 R21 K41 ["layoutOrder"]
      215 CALL                             R19 2 1
      216 SETTABLE                         R19 R12 R18
      217 FORGLOOP                         R13 2 ; [-76]
      219 GETTABLEKS                       R13 R0 K23 ["viewType"]
      221 JUMPIFNOTEQKS                    R13 K47 ["grid"] ; [+42]
      223 GETUPVAL                         R13 0
      224 GETTABLEKS                       R13 R13 K28 ["createElement"]
      226 LOADK                            R14 K48 ["UIGridLayout"]
      227 DUPTABLE                         R15 K54 [{"CellSize", "CellPadding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      228 GETIMPORT                        R16 K57 [UDim2.fromOffset]
      230 LOADN                            R17 120
      231 LOADN                            R18 168
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K49 ["CellSize"]
      235 GETIMPORT                        R16 K57 [UDim2.fromOffset]
      237 GETTABLEKS                       R17 R3 K8 ["Gap"]
      239 GETTABLEKS                       R17 R17 K7 ["Small"]
      241 GETTABLEKS                       R18 R3 K8 ["Gap"]
      243 GETTABLEKS                       R18 R18 K7 ["Small"]
      245 CALL                             R16 2 1
      246 SETTABLEKS                       R16 R15 K50 ["CellPadding"]
      248 GETIMPORT                        R16 K60 [Enum.SortOrder.LayoutOrder]
      250 SETTABLEKS                       R16 R15 K51 ["SortOrder"]
      252 GETIMPORT                        R16 K62 [Enum.HorizontalAlignment.Left]
      254 SETTABLEKS                       R16 R15 K52 ["HorizontalAlignment"]
      256 GETIMPORT                        R16 K64 [Enum.VerticalAlignment.Top]
      258 SETTABLEKS                       R16 R15 K53 ["VerticalAlignment"]
      260 CALL                             R13 2 1
      261 SETTABLEKS                       R13 R12 K48 ["UIGridLayout"]
      263 JUMP                             ; [+23]
      264 GETUPVAL                         R13 0
      265 GETTABLEKS                       R13 R13 K28 ["createElement"]
      267 LOADK                            R14 K65 ["UIListLayout"]
      268 DUPTABLE                         R15 K67 [{"FillDirection", "SortOrder", "Padding"}]
      269 GETIMPORT                        R16 K69 [Enum.FillDirection.Vertical]
      271 SETTABLEKS                       R16 R15 K66 ["FillDirection"]
      273 GETIMPORT                        R16 K60 [Enum.SortOrder.LayoutOrder]
      275 SETTABLEKS                       R16 R15 K51 ["SortOrder"]
      277 GETIMPORT                        R16 K72 [UDim.new]
      279 LOADN                            R17 0
      280 LOADN                            R18 2
      281 CALL                             R16 2 1
      282 SETTABLEKS                       R16 R15 K6 ["Padding"]
      284 CALL                             R13 2 1
      285 SETTABLEKS                       R13 R12 K65 ["UIListLayout"]
      287 GETUPVAL                         R13 0
      288 GETTABLEKS                       R13 R13 K28 ["createElement"]
      290 LOADK                            R14 K73 ["UIPadding"]
      291 DUPTABLE                         R15 K78 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      292 GETIMPORT                        R16 K72 [UDim.new]
      294 LOADN                            R17 0
      295 GETTABLEKS                       R18 R3 K6 ["Padding"]
      297 GETTABLEKS                       R18 R18 K7 ["Small"]
      299 CALL                             R16 2 1
      300 SETTABLEKS                       R16 R15 K74 ["PaddingLeft"]
      302 GETIMPORT                        R16 K72 [UDim.new]
      304 LOADN                            R17 0
      305 GETTABLEKS                       R18 R3 K6 ["Padding"]
      307 GETTABLEKS                       R18 R18 K7 ["Small"]
      309 CALL                             R16 2 1
      310 SETTABLEKS                       R16 R15 K75 ["PaddingRight"]
      312 GETIMPORT                        R16 K72 [UDim.new]
      314 LOADN                            R17 0
      315 GETTABLEKS                       R18 R3 K6 ["Padding"]
      317 GETTABLEKS                       R18 R18 K7 ["Small"]
      319 CALL                             R16 2 1
      320 SETTABLEKS                       R16 R15 K76 ["PaddingTop"]
      322 GETIMPORT                        R16 K72 [UDim.new]
      324 LOADN                            R17 0
      325 GETTABLEKS                       R18 R3 K6 ["Padding"]
      327 GETTABLEKS                       R18 R18 K7 ["Small"]
      329 CALL                             R16 2 1
      330 SETTABLEKS                       R16 R15 K77 ["PaddingBottom"]
      332 CALL                             R13 2 1
      333 SETTABLEKS                       R13 R12 K73 ["UIPadding"]
      335 GETUPVAL                         R13 0
      336 GETTABLEKS                       R13 R13 K28 ["createElement"]
      338 GETUPVAL                         R14 4
      339 DUPTABLE                         R15 K84 [{["tag"] = "size-full", ["testId"], ["scrollingFrameRef"], ["scroll"], ["onAbsoluteWindowSizeChanged"]}]
      340 GETTABLEKS                       R17 R0 K23 ["viewType"]
      342 JUMPIFNOTEQKS                    R17 K47 ["grid"] ; [+3]
      344 LOADK                            R16 K85 ["MaterialGrid"]
      345 JUMP                             ; [+1]
      346 LOADK                            R16 K86 ["MaterialList"]
      347 SETTABLEKS                       R16 R15 K81 ["testId"]
      349 SETTABLEKS                       R10 R15 K20 ["scrollingFrameRef"]
      351 DUPTABLE                         R16 K91 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      352 GETIMPORT                        R17 K94 [Enum.AutomaticSize.Y]
      354 SETTABLEKS                       R17 R16 K87 ["AutomaticCanvasSize"]
      356 GETIMPORT                        R17 K95 [UDim2.new]
      358 CALL                             R17 0 1
      359 SETTABLEKS                       R17 R16 K88 ["CanvasSize"]
      361 GETIMPORT                        R17 K96 [Enum.ScrollingDirection.Y]
      363 SETTABLEKS                       R17 R16 K89 ["ScrollingDirection"]
      365 GETUPVAL                         R17 5
      366 GETTABLEKS                       R17 R17 K97 ["Always"]
      368 SETTABLEKS                       R17 R16 K90 ["scrollBarVisibility"]
      370 SETTABLEKS                       R16 R15 K82 ["scroll"]
      372 SETTABLEKS                       R9 R15 K83 ["onAbsoluteWindowSizeChanged"]
      374 MOVE                             R16 R12
      375 CALL                             R13 3 -1
      376 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ScrollView"]
       23 GETTABLEKS                       R4 R2 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["Visibility"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["MaterialDisplay"]
       33 GETTABLEKS                       R6 R6 K14 ["MaterialTile"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K15 ["Domain"]
       40 GETTABLEKS                       R7 R7 K16 ["TerrainMaterialTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K17 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       52 GETTABLEKS                       R9 R9 K19 ["useScrollToSlot"]
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K20 [PROTO_5]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 RETURN                           R9 1
