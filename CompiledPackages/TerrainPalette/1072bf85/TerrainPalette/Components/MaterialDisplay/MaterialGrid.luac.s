PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R6 0 0
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R4
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 LOADN                            R8 0
       33 JUMPIFNOTLT                      R8 R1 ; [+21]
       35 SUBK                             R8 R1 K3 [16]
       36 LOADN                            R10 1
       37 ADDK                             R13 R8 K5 [4]
       38 DIVK                             R12 R13 K4 [117]
       39 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       40 GETIMPORT                        R11 K8 [math.floor]
       42 CALL                             R11 1 1
       43 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       45 GETIMPORT                        R9 K10 [math.max]
       47 CALL                             R9 2 1
       48 MOVE                             R6 R9
       49 SUBK                             R12 R6 K11 [1]
       50 MULK                             R11 R12 K5 [4]
       51 SUB                              R10 R8 R11
       52 DIV                              R9 R10 R6
       53 ADDK                             R7 R9 K12 [33]
       54 JUMP                             ; [+2]
       55 LOADN                            R6 1
       56 LOADN                            R7 146
       57 GETUPVAL                         R8 1
       58 DUPTABLE                         R9 K24 [{["columns"], ["gridRowStride"], ["listRowStride"] = 62, ["onScrolledToSlot"], ["padding"] = 8, ["scrollingFrameRef"], ["slotEntries"], ["targetSlotIndex"], ["viewType"]}]
       59 SETTABLEKS                       R6 R9 K13 ["columns"]
       61 ADDK                             R10 R7 K5 [4]
       62 SETTABLEKS                       R10 R9 K14 ["gridRowStride"]
       64 GETTABLEKS                       R10 R0 K17 ["onScrolledToSlot"]
       66 SETTABLEKS                       R10 R9 K17 ["onScrolledToSlot"]
       68 SETTABLEKS                       R3 R9 K20 ["scrollingFrameRef"]
       70 GETTABLEKS                       R10 R0 K21 ["slotEntries"]
       72 SETTABLEKS                       R10 R9 K21 ["slotEntries"]
       74 GETTABLEKS                       R10 R0 K25 ["scrollToSlotIndex"]
       76 SETTABLEKS                       R10 R9 K22 ["targetSlotIndex"]
       78 GETTABLEKS                       R10 R0 K23 ["viewType"]
       80 SETTABLEKS                       R10 R9 K23 ["viewType"]
       82 CALL                             R8 1 0
       83 DIVRK                            R10 K5 [4] R6
       84 SUBK                             R11 R6 K11 [1]
       85 MUL                              R9 R10 R11
       86 FASTCALL1                        MATH_CEIL R9 ; [+2]
       87 GETIMPORT                        R8 K27 [math.ceil]
       89 CALL                             R8 1 1
       90 NEWTABLE                         R9 4 0
       92 GETTABLEKS                       R10 R0 K21 ["slotEntries"]
       94 LOADNIL                          R11
       95 LOADNIL                          R12
       96 FORGPREP                         R10
       97 LOADK                            R16 K28 ["Tile_"]
       98 GETTABLEKS                       R17 R14 K29 ["slotIndex"]
      100 CONCAT                           R15 R16 R17
      101 GETUPVAL                         R16 0
      102 GETTABLEKS                       R16 R16 K30 ["createElement"]
      104 GETUPVAL                         R17 2
      105 DUPTABLE                         R18 K39 [{"material", "variant", "color", "name", "slotIndex", "isSelected", "viewType", "tileWidth", "onActivated", "layoutOrder"}]
      106 GETTABLEKS                       R19 R14 K31 ["material"]
      108 SETTABLEKS                       R19 R18 K31 ["material"]
      110 GETTABLEKS                       R19 R14 K32 ["variant"]
      112 SETTABLEKS                       R19 R18 K32 ["variant"]
      114 GETTABLEKS                       R19 R14 K33 ["color"]
      116 SETTABLEKS                       R19 R18 K33 ["color"]
      118 GETTABLEKS                       R19 R14 K34 ["name"]
      120 SETTABLEKS                       R19 R18 K34 ["name"]
      122 GETTABLEKS                       R19 R14 K29 ["slotIndex"]
      124 SETTABLEKS                       R19 R18 K29 ["slotIndex"]
      126 GETTABLEKS                       R20 R14 K29 ["slotIndex"]
      128 GETTABLEKS                       R21 R0 K40 ["selectedSlotIndex"]
      130 JUMPIFEQ                         R20 R21 ; [+2]
      132 LOADB                            R19 0 +1
      133 LOADB                            R19 1
      134 SETTABLEKS                       R19 R18 K35 ["isSelected"]
      136 GETTABLEKS                       R19 R0 K23 ["viewType"]
      138 SETTABLEKS                       R19 R18 K23 ["viewType"]
      140 GETTABLEKS                       R20 R0 K23 ["viewType"]
      142 JUMPIFNOTEQKS                    R20 K41 ["grid"] ; [+10]
      144 LOADN                            R20 0
      145 JUMPIFNOTLT                      R20 R1 ; [+7]
      147 SUBK                             R21 R1 K3 [16]
      148 SUBK                             R23 R6 K11 [1]
      149 MULK                             R22 R23 K5 [4]
      150 SUB                              R20 R21 R22
      151 DIV                              R19 R20 R6
      152 JUMP                             ; [+1]
      153 LOADNIL                          R19
      154 SETTABLEKS                       R19 R18 K36 ["tileWidth"]
      156 GETTABLEKS                       R19 R0 K42 ["onSlotSelected"]
      158 SETTABLEKS                       R19 R18 K37 ["onActivated"]
      160 SETTABLEKS                       R13 R18 K38 ["layoutOrder"]
      162 CALL                             R16 2 1
      163 SETTABLE                         R16 R9 R15
      164 FORGLOOP                         R10 2 ; [-68]
      166 GETTABLEKS                       R10 R0 K23 ["viewType"]
      168 JUMPIFNOTEQKS                    R10 K41 ["grid"] ; [+44]
      170 GETUPVAL                         R10 0
      171 GETTABLEKS                       R10 R10 K30 ["createElement"]
      173 LOADK                            R11 K43 ["UIGridLayout"]
      174 DUPTABLE                         R12 K49 [{"CellSize", "CellPadding", "SortOrder", "HorizontalAlignment", "VerticalAlignment"}]
      175 GETIMPORT                        R13 K52 [UDim2.new]
      177 GETIMPORT                        R14 K54 [UDim.new]
      179 DIVRK                            R15 K11 [1] R6
      180 MINUS                            R16 R8
      181 CALL                             R14 2 1
      182 GETIMPORT                        R15 K54 [UDim.new]
      184 LOADN                            R16 0
      185 MOVE                             R17 R7
      186 CALL                             R15 2 -1
      187 CALL                             R13 -1 1
      188 SETTABLEKS                       R13 R12 K44 ["CellSize"]
      190 GETIMPORT                        R13 K56 [UDim2.fromOffset]
      192 LOADN                            R14 4
      193 LOADN                            R15 4
      194 CALL                             R13 2 1
      195 SETTABLEKS                       R13 R12 K45 ["CellPadding"]
      197 GETIMPORT                        R13 K59 [Enum.SortOrder.LayoutOrder]
      199 SETTABLEKS                       R13 R12 K46 ["SortOrder"]
      201 GETIMPORT                        R13 K61 [Enum.HorizontalAlignment.Left]
      203 SETTABLEKS                       R13 R12 K47 ["HorizontalAlignment"]
      205 GETIMPORT                        R13 K63 [Enum.VerticalAlignment.Top]
      207 SETTABLEKS                       R13 R12 K48 ["VerticalAlignment"]
      209 CALL                             R10 2 1
      210 SETTABLEKS                       R10 R9 K43 ["UIGridLayout"]
      212 JUMP                             ; [+23]
      213 GETUPVAL                         R10 0
      214 GETTABLEKS                       R10 R10 K30 ["createElement"]
      216 LOADK                            R11 K64 ["UIListLayout"]
      217 DUPTABLE                         R12 K67 [{"FillDirection", "SortOrder", "Padding"}]
      218 GETIMPORT                        R13 K69 [Enum.FillDirection.Vertical]
      220 SETTABLEKS                       R13 R12 K65 ["FillDirection"]
      222 GETIMPORT                        R13 K59 [Enum.SortOrder.LayoutOrder]
      224 SETTABLEKS                       R13 R12 K46 ["SortOrder"]
      226 GETIMPORT                        R13 K54 [UDim.new]
      228 LOADN                            R14 0
      229 LOADN                            R15 2
      230 CALL                             R13 2 1
      231 SETTABLEKS                       R13 R12 K66 ["Padding"]
      233 CALL                             R10 2 1
      234 SETTABLEKS                       R10 R9 K64 ["UIListLayout"]
      236 GETUPVAL                         R10 0
      237 GETTABLEKS                       R10 R10 K30 ["createElement"]
      239 LOADK                            R11 K70 ["UIPadding"]
      240 DUPTABLE                         R12 K75 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      241 GETIMPORT                        R13 K54 [UDim.new]
      243 LOADN                            R14 0
      244 LOADN                            R15 8
      245 CALL                             R13 2 1
      246 SETTABLEKS                       R13 R12 K71 ["PaddingLeft"]
      248 GETIMPORT                        R13 K54 [UDim.new]
      250 LOADN                            R14 0
      251 LOADN                            R15 8
      252 CALL                             R13 2 1
      253 SETTABLEKS                       R13 R12 K72 ["PaddingRight"]
      255 GETIMPORT                        R13 K54 [UDim.new]
      257 LOADN                            R14 0
      258 LOADN                            R15 8
      259 CALL                             R13 2 1
      260 SETTABLEKS                       R13 R12 K73 ["PaddingTop"]
      262 GETIMPORT                        R13 K54 [UDim.new]
      264 LOADN                            R14 0
      265 LOADN                            R15 8
      266 CALL                             R13 2 1
      267 SETTABLEKS                       R13 R12 K74 ["PaddingBottom"]
      269 CALL                             R10 2 1
      270 SETTABLEKS                       R10 R9 K70 ["UIPadding"]
      272 GETUPVAL                         R10 0
      273 GETTABLEKS                       R10 R10 K30 ["createElement"]
      275 GETUPVAL                         R11 3
      276 DUPTABLE                         R12 K81 [{["tag"] = "size-full", ["testId"], ["scrollingFrameRef"], ["scroll"], ["onAbsoluteWindowSizeChanged"]}]
      277 GETTABLEKS                       R14 R0 K23 ["viewType"]
      279 JUMPIFNOTEQKS                    R14 K41 ["grid"] ; [+3]
      281 LOADK                            R13 K82 ["MaterialGrid"]
      282 JUMP                             ; [+1]
      283 LOADK                            R13 K83 ["MaterialList"]
      284 SETTABLEKS                       R13 R12 K78 ["testId"]
      286 SETTABLEKS                       R5 R12 K20 ["scrollingFrameRef"]
      288 DUPTABLE                         R13 K88 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      289 GETIMPORT                        R14 K91 [Enum.AutomaticSize.Y]
      291 SETTABLEKS                       R14 R13 K84 ["AutomaticCanvasSize"]
      293 GETIMPORT                        R14 K52 [UDim2.new]
      295 CALL                             R14 0 1
      296 SETTABLEKS                       R14 R13 K85 ["CanvasSize"]
      298 GETIMPORT                        R14 K92 [Enum.ScrollingDirection.Y]
      300 SETTABLEKS                       R14 R13 K86 ["ScrollingDirection"]
      302 GETUPVAL                         R14 4
      303 GETTABLEKS                       R14 R14 K93 ["Always"]
      305 SETTABLEKS                       R14 R13 K87 ["scrollBarVisibility"]
      307 SETTABLEKS                       R13 R12 K79 ["scroll"]
      309 SETTABLEKS                       R4 R12 K80 ["onAbsoluteWindowSizeChanged"]
      311 MOVE                             R13 R9
      312 CALL                             R10 3 -1
      313 RETURN                           R10 -1

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
       45 GETTABLEKS                       R8 R0 K17 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K18 ["useScrollToSlot"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K19 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 RETURN                           R8 1
