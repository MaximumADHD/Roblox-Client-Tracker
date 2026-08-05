PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["ScrollView"]
        8 DUPTABLE                         R4 K10 [{["testId"] = "--appkit-layout-freeform", ["LayoutOrder"], ["tag"] = "size-full bg-surface-100", ["scroll"], ["layout"], ["padding"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K15 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       14 GETIMPORT                        R6 K19 [Enum.AutomaticSize.Y]
       16 SETTABLEKS                       R6 R5 K11 ["AutomaticCanvasSize"]
       18 GETIMPORT                        R6 K22 [UDim2.fromOffset]
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K12 ["CanvasSize"]
       25 GETIMPORT                        R6 K23 [Enum.ScrollingDirection.Y]
       27 SETTABLEKS                       R6 R5 K13 ["ScrollingDirection"]
       29 GETIMPORT                        R6 K26 [Enum.ScrollBarInset.Always]
       31 SETTABLEKS                       R6 R5 K14 ["VerticalScrollBarInset"]
       33 SETTABLEKS                       R5 R4 K7 ["scroll"]
       35 DUPTABLE                         R5 K30 [{"FillDirection", "SortOrder", "Padding"}]
       36 GETIMPORT                        R6 K32 [Enum.FillDirection.Vertical]
       38 SETTABLEKS                       R6 R5 K27 ["FillDirection"]
       40 GETIMPORT                        R6 K33 [Enum.SortOrder.LayoutOrder]
       42 SETTABLEKS                       R6 R5 K28 ["SortOrder"]
       44 GETIMPORT                        R6 K36 [UDim.new]
       46 LOADN                            R7 0
       47 GETTABLEKS                       R8 R1 K37 ["gutter"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K29 ["Padding"]
       52 SETTABLEKS                       R5 R4 K8 ["layout"]
       54 DUPTABLE                         R5 K42 [{"left", "right", "top", "bottom"}]
       55 GETIMPORT                        R6 K36 [UDim.new]
       57 LOADN                            R7 0
       58 GETTABLEKS                       R8 R1 K43 ["margin"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K38 ["left"]
       63 GETIMPORT                        R6 K36 [UDim.new]
       65 LOADN                            R7 0
       66 GETTABLEKS                       R8 R1 K43 ["margin"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K39 ["right"]
       71 GETIMPORT                        R6 K36 [UDim.new]
       73 LOADN                            R7 0
       74 GETTABLEKS                       R8 R1 K43 ["margin"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K40 ["top"]
       79 GETIMPORT                        R6 K36 [UDim.new]
       81 LOADN                            R7 0
       82 GETTABLEKS                       R8 R1 K43 ["margin"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K41 ["bottom"]
       87 SETTABLEKS                       R5 R4 K9 ["padding"]
       89 GETTABLEKS                       R5 R0 K44 ["children"]
       91 CALL                             R2 3 -1
       92 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["image"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["image"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["placeId"]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 LOADK                            R2 K2 ["rbxthumb://type=GameThumbnail&id=%*&w=768&h=432"]
       12 GETTABLEKS                       R4 R0 K1 ["placeId"]
       14 NAMECALL                         R2 R2 K3 ["format"]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K7 [{"title", "metadata", "image", "aspectRatio", "width", "LayoutOrder", "onActivated"}]
        3 GETTABLEKS                       R6 R0 K0 ["title"]
        5 SETTABLEKS                       R6 R5 K0 ["title"]
        7 GETTABLEKS                       R6 R0 K1 ["metadata"]
        9 SETTABLEKS                       R6 R5 K1 ["metadata"]
       11 GETTABLEKS                       R7 R0 K2 ["image"]
       13 JUMPIFEQKNIL                     R7 ; [+4]
       15 GETTABLEKS                       R6 R0 K2 ["image"]
       17 JUMP                             ; [+13]
       18 GETTABLEKS                       R7 R0 K8 ["placeId"]
       20 JUMPIFEQKNIL                     R7 ; [+9]
       22 LOADK                            R7 K9 ["rbxthumb://type=GameThumbnail&id=%*&w=768&h=432"]
       23 GETTABLEKS                       R9 R0 K8 ["placeId"]
       25 NAMECALL                         R7 R7 K10 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K2 ["image"]
       33 GETUPVAL                         R6 2
       34 SETTABLEKS                       R6 R5 K3 ["aspectRatio"]
       36 SETTABLEKS                       R2 R5 K4 ["width"]
       38 SETTABLEKS                       R1 R5 K5 ["LayoutOrder"]
       40 GETTABLEKS                       R6 R0 K11 ["onSelect"]
       42 SETTABLEKS                       R6 R5 K6 ["onActivated"]
       44 CALL                             R3 2 -1
       45 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onTabChange"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R0 K1 ["sections"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R8 1
       12 GETUPVAL                         R9 2
       13 DUPTABLE                         R10 K8 [{["title"], ["description"], ["action"], ["onAction"], ["LayoutOrder"] = 1}]
       14 GETTABLEKS                       R11 R7 K2 ["title"]
       16 SETTABLEKS                       R11 R10 K2 ["title"]
       18 GETTABLEKS                       R11 R7 K3 ["description"]
       20 SETTABLEKS                       R11 R10 K3 ["description"]
       22 GETTABLEKS                       R12 R7 K9 ["onSeeAll"]
       24 JUMPIFEQKNIL                     R12 ; [+3]
       26 LOADK                            R11 K10 ["See all"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R11
       29 SETTABLEKS                       R11 R10 K4 ["action"]
       31 GETTABLEKS                       R11 R7 K9 ["onSeeAll"]
       33 SETTABLEKS                       R11 R10 K5 ["onAction"]
       35 CALL                             R8 2 1
       36 LOADNIL                          R9
       37 GETTABLEKS                       R10 R7 K11 ["kind"]
       39 JUMPIFNOTEQKS                    R10 K12 ["connections"] ; [+20]
       41 GETUPVAL                         R10 1
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R11 R11 K13 ["ConnectionCarousel"]
       45 DUPTABLE                         R12 K16 [{["connections"], ["visible"], ["LayoutOrder"] = 2}]
       46 GETTABLEKS                       R13 R7 K12 ["connections"]
       48 JUMPIF                           R13 ; [+2]
       49 NEWTABLE                         R13 0 0
       51 SETTABLEKS                       R13 R12 K12 ["connections"]
       53 GETTABLEKS                       R13 R7 K14 ["visible"]
       55 SETTABLEKS                       R13 R12 K14 ["visible"]
       57 CALL                             R10 2 1
       58 MOVE                             R9 R10
       59 JUMP                             ; [+77]
       60 GETTABLEKS                       R10 R7 K11 ["kind"]
       62 JUMPIFNOTEQKS                    R10 K17 ["grid"] ; [+35]
       64 GETTABLEKS                       R11 R7 K18 ["aspectRatio"]
       66 ORK                              R10 R11 K7 [1]
       67 GETUPVAL                         R11 1
       68 GETUPVAL                         R12 4
       69 GETTABLEKS                       R12 R12 K19 ["ContentGrid"]
       71 DUPTABLE                         R13 K23 [{["tiles"], ["renderTile"], ["visible"], ["gutter"], ["LayoutOrder"] = 2}]
       72 GETTABLEKS                       R14 R7 K20 ["tiles"]
       74 JUMPIF                           R14 ; [+2]
       75 NEWTABLE                         R14 0 0
       77 SETTABLEKS                       R14 R13 K20 ["tiles"]
       79 NEWCLOSURE                       R14 P0
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R14 R13 K21 ["renderTile"]
       85 GETTABLEKS                       R14 R7 K14 ["visible"]
       87 JUMPIF                           R14 ; [+1]
       88 DUPTABLE                         R14 K31 [{["l"] = 6, ["m"] = 4, ["s"] = 3, ["xs"] = 2}]
       89 SETTABLEKS                       R14 R13 K14 ["visible"]
       91 GETTABLEKS                       R14 R1 K22 ["gutter"]
       93 SETTABLEKS                       R14 R13 K22 ["gutter"]
       95 CALL                             R11 2 1
       96 MOVE                             R9 R11
       97 JUMP                             ; [+39]
       98 GETTABLEKS                       R11 R7 K18 ["aspectRatio"]
      100 ORK                              R10 R11 K32 [1.77777777777778]
      101 GETUPVAL                         R11 1
      102 GETUPVAL                         R12 4
      103 GETTABLEKS                       R12 R12 K33 ["ContentCarousel"]
      105 DUPTABLE                         R13 K35 [{["tiles"], ["renderTile"], ["visible"], ["aspectRatio"], ["height"], ["gutter"], ["LayoutOrder"] = 2}]
      106 GETTABLEKS                       R14 R7 K20 ["tiles"]
      108 JUMPIF                           R14 ; [+2]
      109 NEWTABLE                         R14 0 0
      111 SETTABLEKS                       R14 R13 K20 ["tiles"]
      113 NEWCLOSURE                       R14 P0
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R10
      117 SETTABLEKS                       R14 R13 K21 ["renderTile"]
      119 GETTABLEKS                       R14 R7 K14 ["visible"]
      121 JUMPIF                           R14 ; [+1]
      122 DUPTABLE                         R14 K36 [{["l"] = 3, ["m"] = 2, ["s"] = 1, ["xs"] = 1}]
      123 SETTABLEKS                       R14 R13 K14 ["visible"]
      125 SETTABLEKS                       R10 R13 K18 ["aspectRatio"]
      127 GETTABLEKS                       R14 R7 K34 ["height"]
      129 SETTABLEKS                       R14 R13 K34 ["height"]
      131 GETTABLEKS                       R14 R1 K22 ["gutter"]
      133 SETTABLEKS                       R14 R13 K22 ["gutter"]
      135 CALL                             R11 2 1
      136 MOVE                             R9 R11
      137 LOADK                            R11 K37 ["section_%*"]
      138 GETTABLEKS                       R13 R7 K38 ["id"]
      140 NAMECALL                         R11 R11 K39 ["format"]
      142 CALL                             R11 2 1
      143 MOVE                             R10 R11
      144 GETUPVAL                         R11 1
      145 GETUPVAL                         R12 6
      146 GETTABLEKS                       R12 R12 K40 ["View"]
      148 DUPTABLE                         R13 K44 [{"LayoutOrder", "Size", "AutomaticSize", "layout"}]
      149 SETTABLEKS                       R6 R13 K6 ["LayoutOrder"]
      151 GETIMPORT                        R14 K47 [UDim2.new]
      153 LOADN                            R15 1
      154 LOADN                            R16 0
      155 LOADN                            R17 0
      156 LOADN                            R18 0
      157 CALL                             R14 4 1
      158 SETTABLEKS                       R14 R13 K41 ["Size"]
      160 GETIMPORT                        R14 K50 [Enum.AutomaticSize.Y]
      162 SETTABLEKS                       R14 R13 K42 ["AutomaticSize"]
      164 DUPTABLE                         R14 K54 [{"FillDirection", "SortOrder", "Padding"}]
      165 GETIMPORT                        R15 K56 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R15 R14 K51 ["FillDirection"]
      169 GETIMPORT                        R15 K57 [Enum.SortOrder.LayoutOrder]
      171 SETTABLEKS                       R15 R14 K52 ["SortOrder"]
      173 GETIMPORT                        R15 K59 [UDim.new]
      175 LOADN                            R16 0
      176 GETTABLEKS                       R17 R1 K22 ["gutter"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K53 ["Padding"]
      181 SETTABLEKS                       R14 R13 K43 ["layout"]
      183 DUPTABLE                         R14 K62 [{"Heading", "Collection"}]
      184 SETTABLEKS                       R8 R14 K60 ["Heading"]
      186 SETTABLEKS                       R9 R14 K61 ["Collection"]
      188 CALL                             R11 3 1
      189 SETTABLE                         R11 R2 R10
      190 FORGLOOP                         R3 2 ; [-180]
      192 GETUPVAL                         R3 1
      193 GETUPVAL                         R4 6
      194 GETTABLEKS                       R4 R4 K63 ["ScrollView"]
      196 DUPTABLE                         R5 K70 [{["testId"] = "--appkit-layout-discovery", ["tag"] = "size-full", ["scroll"], ["layout"], ["padding"]}]
      197 DUPTABLE                         R6 K75 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      198 GETIMPORT                        R7 K76 [Enum.ScrollingDirection.Y]
      200 SETTABLEKS                       R7 R6 K71 ["ScrollingDirection"]
      202 GETIMPORT                        R7 K50 [Enum.AutomaticSize.Y]
      204 SETTABLEKS                       R7 R6 K72 ["AutomaticCanvasSize"]
      206 GETIMPORT                        R7 K78 [UDim2.fromOffset]
      208 LOADN                            R8 0
      209 LOADN                            R9 0
      210 CALL                             R7 2 1
      211 SETTABLEKS                       R7 R6 K73 ["CanvasSize"]
      213 GETIMPORT                        R7 K81 [Enum.ScrollBarInset.Always]
      215 SETTABLEKS                       R7 R6 K74 ["VerticalScrollBarInset"]
      217 SETTABLEKS                       R6 R5 K68 ["scroll"]
      219 DUPTABLE                         R6 K54 [{"FillDirection", "SortOrder", "Padding"}]
      220 GETIMPORT                        R7 K56 [Enum.FillDirection.Vertical]
      222 SETTABLEKS                       R7 R6 K51 ["FillDirection"]
      224 GETIMPORT                        R7 K57 [Enum.SortOrder.LayoutOrder]
      226 SETTABLEKS                       R7 R6 K52 ["SortOrder"]
      228 GETIMPORT                        R7 K59 [UDim.new]
      230 LOADN                            R8 0
      231 GETTABLEKS                       R9 R1 K82 ["margin"]
      233 CALL                             R7 2 1
      234 SETTABLEKS                       R7 R6 K53 ["Padding"]
      236 SETTABLEKS                       R6 R5 K43 ["layout"]
      238 DUPTABLE                         R6 K87 [{"left", "right", "top", "bottom"}]
      239 GETIMPORT                        R7 K59 [UDim.new]
      241 LOADN                            R8 0
      242 GETTABLEKS                       R9 R1 K82 ["margin"]
      244 CALL                             R7 2 1
      245 SETTABLEKS                       R7 R6 K83 ["left"]
      247 GETIMPORT                        R7 K59 [UDim.new]
      249 LOADN                            R8 0
      250 GETTABLEKS                       R9 R1 K82 ["margin"]
      252 CALL                             R7 2 1
      253 SETTABLEKS                       R7 R6 K84 ["right"]
      255 GETIMPORT                        R7 K59 [UDim.new]
      257 LOADN                            R8 0
      258 GETTABLEKS                       R9 R1 K82 ["margin"]
      260 CALL                             R7 2 1
      261 SETTABLEKS                       R7 R6 K85 ["top"]
      263 GETIMPORT                        R7 K59 [UDim.new]
      265 LOADN                            R8 0
      266 GETTABLEKS                       R9 R1 K82 ["margin"]
      268 CALL                             R7 2 1
      269 SETTABLEKS                       R7 R6 K86 ["bottom"]
      271 SETTABLEKS                       R6 R5 K69 ["padding"]
      273 MOVE                             R6 R2
      274 CALL                             R3 3 1
      275 GETTABLEKS                       R5 R0 K2 ["title"]
      277 JUMPIFNOTEQKNIL                  R5 ; [+2]
      279 LOADB                            R4 0 +1
      280 LOADB                            R4 1
      281 LOADB                            R5 0
      282 GETTABLEKS                       R6 R0 K88 ["tabs"]
      284 JUMPIFEQKNIL                     R6 ; [+9]
      286 GETTABLEKS                       R7 R0 K88 ["tabs"]
      288 LENGTH                           R6 R7
      289 LOADN                            R7 0
      290 JUMPIFLT                         R7 R6 ; [+2]
      292 LOADB                            R5 0 +1
      293 LOADB                            R5 1
      294 JUMPIF                           R4 ; [+15]
      295 JUMPIF                           R5 ; [+14]
      296 GETUPVAL                         R6 1
      297 GETUPVAL                         R7 6
      298 GETTABLEKS                       R7 R7 K40 ["View"]
      300 DUPTABLE                         R8 K90 [{["tag"] = "size-full bg-surface-100", ["LayoutOrder"]}]
      301 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
      303 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      305 DUPTABLE                         R9 K92 [{"Feed"}]
      306 SETTABLEKS                       R3 R9 K91 ["Feed"]
      308 CALL                             R6 3 -1
      309 RETURN                           R6 -1
      310 JUMPIFNOT                        R4 ; [+2]
      311 GETUPVAL                         R6 7
      312 JUMP                             ; [+1]
      313 LOADN                            R6 0
      314 JUMPIFNOT                        R5 ; [+2]
      315 GETUPVAL                         R7 8
      316 JUMP                             ; [+1]
      317 LOADN                            R7 0
      318 ADD                              R8 R6 R7
      319 NEWTABLE                         R9 2 0
      321 JUMPIFNOT                        R4 ; [+46]
      322 GETUPVAL                         R10 1
      323 LOADK                            R11 K93 ["Frame"]
      324 DUPTABLE                         R12 K98 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      325 GETIMPORT                        R13 K78 [UDim2.fromOffset]
      327 LOADN                            R14 0
      328 LOADN                            R15 0
      329 CALL                             R13 2 1
      330 SETTABLEKS                       R13 R12 K97 ["Position"]
      332 GETIMPORT                        R13 K47 [UDim2.new]
      334 LOADN                            R14 1
      335 LOADN                            R15 0
      336 LOADN                            R16 0
      337 MOVE                             R17 R6
      338 CALL                             R13 4 1
      339 SETTABLEKS                       R13 R12 K41 ["Size"]
      341 DUPTABLE                         R13 K100 [{"HeaderBar"}]
      342 GETUPVAL                         R14 1
      343 GETUPVAL                         R15 9
      344 GETTABLEKS                       R15 R15 K99 ["HeaderBar"]
      346 DUPTABLE                         R16 K102 [{"title", "trailing", "height"}]
      347 GETTABLEKS                       R17 R0 K2 ["title"]
      349 SETTABLEKS                       R17 R16 K2 ["title"]
      351 GETTABLEKS                       R17 R0 K103 ["headerActions"]
      353 JUMPIF                           R17 ; [+4]
      354 GETUPVAL                         R17 1
      355 GETUPVAL                         R18 10
      356 DUPTABLE                         R19 K106 [{["icon"] = "magnifying-glass"}]
      357 CALL                             R17 2 1
      358 SETTABLEKS                       R17 R16 K101 ["trailing"]
      360 SETTABLEKS                       R6 R16 K34 ["height"]
      362 CALL                             R14 2 1
      363 SETTABLEKS                       R14 R13 K99 ["HeaderBar"]
      365 CALL                             R10 3 1
      366 SETTABLEKS                       R10 R9 K107 ["Bar"]
      368 JUMPIFNOT                        R5 ; [+117]
      369 NEWTABLE                         R10 0 0
      371 GETTABLEKS                       R11 R0 K88 ["tabs"]
      373 LOADNIL                          R12
      374 LOADNIL                          R13
      375 FORGPREP                         R11
      376 DUPTABLE                         R16 K109 [{"id", "text"}]
      377 GETTABLEKS                       R17 R15 K38 ["id"]
      379 SETTABLEKS                       R17 R16 K38 ["id"]
      381 GETTABLEKS                       R17 R15 K110 ["label"]
      383 SETTABLEKS                       R17 R16 K108 ["text"]
      385 SETTABLE                         R16 R10 R14
      386 FORGLOOP                         R11 2 ; [-11]
      388 GETUPVAL                         R11 1
      389 LOADK                            R12 K93 ["Frame"]
      390 DUPTABLE                         R13 K98 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      391 GETIMPORT                        R14 K78 [UDim2.fromOffset]
      393 LOADN                            R15 0
      394 MOVE                             R16 R6
      395 CALL                             R14 2 1
      396 SETTABLEKS                       R14 R13 K97 ["Position"]
      398 GETIMPORT                        R14 K47 [UDim2.new]
      400 LOADN                            R15 1
      401 LOADN                            R16 0
      402 LOADN                            R17 0
      403 MOVE                             R18 R7
      404 CALL                             R14 4 1
      405 SETTABLEKS                       R14 R13 K41 ["Size"]
      407 DUPTABLE                         R14 K112 [{"Pad"}]
      408 GETUPVAL                         R15 1
      409 GETUPVAL                         R16 6
      410 GETTABLEKS                       R16 R16 K40 ["View"]
      412 DUPTABLE                         R17 K114 [{["tag"] = "size-full row align-y-center", ["padding"]}]
      413 DUPTABLE                         R18 K115 [{"left", "right"}]
      414 GETIMPORT                        R19 K59 [UDim.new]
      416 LOADN                            R20 0
      417 GETTABLEKS                       R21 R1 K82 ["margin"]
      419 CALL                             R19 2 1
      420 SETTABLEKS                       R19 R18 K83 ["left"]
      422 GETIMPORT                        R19 K59 [UDim.new]
      424 LOADN                            R20 0
      425 GETTABLEKS                       R21 R1 K82 ["margin"]
      427 CALL                             R19 2 1
      428 SETTABLEKS                       R19 R18 K84 ["right"]
      430 SETTABLEKS                       R18 R17 K69 ["padding"]
      432 DUPTABLE                         R18 K117 [{"Tabs"}]
      433 GETUPVAL                         R19 1
      434 GETUPVAL                         R20 6
      435 GETTABLEKS                       R20 R20 K116 ["Tabs"]
      437 DUPTABLE                         R21 K123 [{["testId"] = "--appkit-discovery-tabs", ["tabs"], ["defaultActiveTabId"], ["onActivated"], ["size"], ["fillBehavior"]}]
      438 SETTABLEKS                       R10 R21 K88 ["tabs"]
      440 GETTABLEKS                       R22 R0 K124 ["activeTab"]
      442 JUMPIF                           R22 ; [+5]
      443 GETTABLEKS                       R23 R0 K88 ["tabs"]
      445 GETTABLEN                        R22 R23 1
      446 GETTABLEKS                       R22 R22 K38 ["id"]
      448 SETTABLEKS                       R22 R21 K119 ["defaultActiveTabId"]
      450 GETTABLEKS                       R23 R0 K125 ["onTabChange"]
      452 JUMPIFNOT                        R23 ; [+3]
      453 NEWCLOSURE                       R22 P1
      454 CAPTURE                          VAL R0
      455 JUMP                             ; [+1]
      456 LOADNIL                          R22
      457 SETTABLEKS                       R22 R21 K120 ["onActivated"]
      459 GETUPVAL                         R22 6
      460 GETTABLEKS                       R22 R22 K126 ["Enums"]
      462 GETTABLEKS                       R22 R22 K127 ["InputSize"]
      464 GETTABLEKS                       R22 R22 K128 ["Medium"]
      466 SETTABLEKS                       R22 R21 K121 ["size"]
      468 GETUPVAL                         R22 6
      469 GETTABLEKS                       R22 R22 K126 ["Enums"]
      471 GETTABLEKS                       R22 R22 K129 ["FillBehavior"]
      473 GETTABLEKS                       R22 R22 K130 ["Fit"]
      475 SETTABLEKS                       R22 R21 K122 ["fillBehavior"]
      477 CALL                             R19 2 1
      478 SETTABLEKS                       R19 R18 K116 ["Tabs"]
      480 CALL                             R15 3 1
      481 SETTABLEKS                       R15 R14 K111 ["Pad"]
      483 CALL                             R11 3 1
      484 SETTABLEKS                       R11 R9 K116 ["Tabs"]
      486 GETUPVAL                         R10 1
      487 GETUPVAL                         R11 6
      488 GETTABLEKS                       R11 R11 K40 ["View"]
      490 DUPTABLE                         R12 K132 [{["testId"] = "--appkit-layout-discovery-root", ["tag"] = "size-full bg-surface-100", ["LayoutOrder"]}]
      491 GETTABLEKS                       R13 R0 K6 ["LayoutOrder"]
      493 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      495 DUPTABLE                         R13 K134 [{"Header", "Feed"}]
      496 GETUPVAL                         R14 1
      497 LOADK                            R15 K93 ["Frame"]
      498 DUPTABLE                         R16 K98 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      499 GETIMPORT                        R17 K78 [UDim2.fromOffset]
      501 LOADN                            R18 0
      502 LOADN                            R19 0
      503 CALL                             R17 2 1
      504 SETTABLEKS                       R17 R16 K97 ["Position"]
      506 GETIMPORT                        R17 K47 [UDim2.new]
      508 LOADN                            R18 1
      509 LOADN                            R19 0
      510 LOADN                            R20 0
      511 MOVE                             R21 R8
      512 CALL                             R17 4 1
      513 SETTABLEKS                       R17 R16 K41 ["Size"]
      515 MOVE                             R17 R9
      516 CALL                             R14 3 1
      517 SETTABLEKS                       R14 R13 K133 ["Header"]
      519 GETUPVAL                         R14 1
      520 LOADK                            R15 K93 ["Frame"]
      521 DUPTABLE                         R16 K98 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      522 GETIMPORT                        R17 K78 [UDim2.fromOffset]
      524 LOADN                            R18 0
      525 MOVE                             R19 R8
      526 CALL                             R17 2 1
      527 SETTABLEKS                       R17 R16 K97 ["Position"]
      529 GETIMPORT                        R17 K47 [UDim2.new]
      531 LOADN                            R18 1
      532 LOADN                            R19 0
      533 LOADN                            R20 1
      534 MINUS                            R21 R8
      535 CALL                             R17 4 1
      536 SETTABLEKS                       R17 R16 K41 ["Size"]
      538 DUPTABLE                         R17 K136 [{"Scroll"}]
      539 SETTABLEKS                       R3 R17 K135 ["Scroll"]
      541 CALL                             R14 3 1
      542 SETTABLEKS                       R14 R13 K91 ["Feed"]
      544 CALL                             R10 3 -1
      545 RETURN                           R10 -1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        2 RETURN                           R0 1
        3 GETIMPORT                        R2 K3 [string.lower]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R0
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETIMPORT                        R9 K5 [string.find]
       15 GETIMPORT                        R10 K3 [string.lower]
       17 GETTABLEKS                       R11 R8 K6 ["title"]
       19 CALL                             R10 1 1
       20 MOVE                             R11 R2
       21 LOADN                            R12 1
       22 LOADB                            R13 1
       23 CALL                             R9 4 1
       24 JUMPIFEQKNIL                     R9 ; [+8]
       26 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       28 MOVE                             R10 R3
       29 MOVE                             R11 R8
       30 GETIMPORT                        R9 K9 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 2 ; [-21]
       35 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K2 ["onSearchChanged"]
        7 GETTABLEKS                       R5 R0 K3 ["searchable"]
        9 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R6 R0 K4 ["items"]
       16 MOVE                             R7 R1
       17 CALL                             R5 2 1
       18 NEWTABLE                         R6 0 0
       20 MOVE                             R7 R5
       21 LOADNIL                          R8
       22 LOADNIL                          R9
       23 FORGPREP                         R7
       24 GETTABLEKS                       R12 R11 K5 ["id"]
       26 GETUPVAL                         R13 2
       27 GETUPVAL                         R14 3
       28 GETTABLEKS                       R14 R14 K6 ["ListRow"]
       30 DUPTABLE                         R15 K13 [{"title", "metadata", "description", "leadingIcon", "onActivated", "LayoutOrder"}]
       31 GETTABLEKS                       R16 R11 K7 ["title"]
       33 SETTABLEKS                       R16 R15 K7 ["title"]
       35 GETTABLEKS                       R16 R11 K8 ["metadata"]
       37 SETTABLEKS                       R16 R15 K8 ["metadata"]
       39 GETTABLEKS                       R16 R11 K9 ["description"]
       41 SETTABLEKS                       R16 R15 K9 ["description"]
       43 GETTABLEKS                       R16 R11 K10 ["leadingIcon"]
       45 SETTABLEKS                       R16 R15 K10 ["leadingIcon"]
       47 GETTABLEKS                       R16 R11 K14 ["onSelect"]
       49 SETTABLEKS                       R16 R15 K11 ["onActivated"]
       51 SETTABLEKS                       R10 R15 K12 ["LayoutOrder"]
       53 CALL                             R13 2 1
       54 SETTABLE                         R13 R6 R12
       55 FORGLOOP                         R7 2 ; [-32]
       57 NEWTABLE                         R7 2 0
       59 GETTABLEKS                       R8 R0 K7 ["title"]
       61 JUMPIFEQKNIL                     R8 ; [+13]
       63 GETUPVAL                         R8 2
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R9 R9 K15 ["Text"]
       67 DUPTABLE                         R10 K19 [{["Text"], ["tag"] = "text-heading-small content-emphasis text-align-x-left auto-y size-full-0", ["LayoutOrder"] = 1}]
       68 GETTABLEKS                       R11 R0 K7 ["title"]
       70 SETTABLEKS                       R11 R10 K15 ["Text"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K20 ["Title"]
       75 JUMPIFNOT                        R4 ; [+20]
       76 GETUPVAL                         R8 2
       77 GETUPVAL                         R9 4
       78 GETTABLEKS                       R9 R9 K21 ["SearchInput"]
       80 DUPTABLE                         R10 K26 [{["text"], ["placeholder"], ["onChanged"], ["LayoutOrder"] = 2}]
       81 SETTABLEKS                       R1 R10 K22 ["text"]
       83 GETTABLEKS                       R12 R0 K23 ["placeholder"]
       85 ORK                              R11 R12 K27 ["Search"]
       86 SETTABLEKS                       R11 R10 K23 ["placeholder"]
       88 NEWCLOSURE                       R11 P0
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R11 R10 K24 ["onChanged"]
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K27 ["Search"]
       96 DUPTABLE                         R8 K29 [{"Body"}]
       97 GETUPVAL                         R9 2
       98 GETUPVAL                         R10 4
       99 GETTABLEKS                       R10 R10 K30 ["ScrollView"]
      101 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 2, ["tag"] = "size-full flex-fill", ["scroll"], ["layout"]}]
      102 DUPTABLE                         R12 K39 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      103 GETIMPORT                        R13 K43 [Enum.AutomaticSize.Y]
      105 SETTABLEKS                       R13 R12 K35 ["AutomaticCanvasSize"]
      107 GETIMPORT                        R13 K46 [UDim2.fromOffset]
      109 LOADN                            R14 0
      110 LOADN                            R15 0
      111 CALL                             R13 2 1
      112 SETTABLEKS                       R13 R12 K36 ["CanvasSize"]
      114 GETIMPORT                        R13 K47 [Enum.ScrollingDirection.Y]
      116 SETTABLEKS                       R13 R12 K37 ["ScrollingDirection"]
      118 GETIMPORT                        R13 K50 [Enum.ScrollBarInset.Always]
      120 SETTABLEKS                       R13 R12 K38 ["VerticalScrollBarInset"]
      122 SETTABLEKS                       R12 R11 K32 ["scroll"]
      124 DUPTABLE                         R12 K53 [{"FillDirection", "SortOrder"}]
      125 GETIMPORT                        R13 K55 [Enum.FillDirection.Vertical]
      127 SETTABLEKS                       R13 R12 K51 ["FillDirection"]
      129 GETIMPORT                        R13 K56 [Enum.SortOrder.LayoutOrder]
      131 SETTABLEKS                       R13 R12 K52 ["SortOrder"]
      133 SETTABLEKS                       R12 R11 K33 ["layout"]
      135 DUPTABLE                         R12 K58 [{"List"}]
      136 GETUPVAL                         R13 2
      137 GETUPVAL                         R14 4
      138 GETTABLEKS                       R14 R14 K57 ["List"]
      140 GETTABLEKS                       R14 R14 K59 ["Root"]
      142 LOADNIL                          R15
      143 MOVE                             R16 R6
      144 CALL                             R13 3 1
      145 SETTABLEKS                       R13 R12 K57 ["List"]
      147 CALL                             R9 3 1
      148 SETTABLEKS                       R9 R8 K28 ["Body"]
      150 GETIMPORT                        R9 K61 [next]
      152 MOVE                             R10 R7
      153 CALL                             R9 1 1
      154 JUMPIFEQKNIL                     R9 ; [+10]
      156 GETUPVAL                         R9 2
      157 GETUPVAL                         R10 4
      158 GETTABLEKS                       R10 R10 K62 ["View"]
      160 DUPTABLE                         R11 K64 [{["LayoutOrder"] = 1, ["tag"] = "col gap-small padding-small size-full-0 auto-y"}]
      161 MOVE                             R12 R7
      162 CALL                             R9 3 1
      163 SETTABLEKS                       R9 R8 K65 ["Header"]
      165 GETUPVAL                         R9 2
      166 GETUPVAL                         R10 4
      167 GETTABLEKS                       R10 R10 K62 ["View"]
      169 DUPTABLE                         R11 K69 [{["testId"] = "--appkit-layout-listview", ["LayoutOrder"], ["tag"] = "col gap-small size-full bg-surface-100"}]
      170 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
      172 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      174 MOVE                             R12 R8
      175 CALL                             R9 3 -1
      176 RETURN                           R9 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K7 [{["id"], ["messages"], ["isOutgoing"] = True}]
        5 LOADK                            R6 K8 ["local-%*"]
        6 LENGTH                           R9 R0
        7 ADDK                             R8 R9 K9 [1]
        8 NAMECALL                         R6 R6 K10 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 SETTABLEKS                       R5 R4 K3 ["id"]
       14 NEWTABLE                         R5 0 1
       16 GETUPVAL                         R6 0
       17 SETLIST                          R5 R6 1 [1]
       19 SETTABLEKS                       R5 R4 K4 ["messages"]
       21 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K12 [table.insert]
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R2 K0 [""]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["onSend"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K1 ["onSend"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 GETTABLEKS                       R3 R0 K2 ["messages"]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADK                            R5 K3 [""]
       14 CALL                             R4 1 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 0
       21 MOVE                             R8 R2
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 GETTABLEKS                       R13 R12 K4 ["id"]
       27 GETUPVAL                         R14 2
       28 GETUPVAL                         R15 3
       29 GETTABLEKS                       R15 R15 K5 ["ChatBubble"]
       31 DUPTABLE                         R16 K12 [{"userId", "LayoutOrder", "messages", "isOutgoing", "displayName", "avatarInitials", "status"}]
       32 GETTABLEKS                       R17 R12 K6 ["userId"]
       34 SETTABLEKS                       R17 R16 K6 ["userId"]
       36 SETTABLEKS                       R11 R16 K7 ["LayoutOrder"]
       38 GETTABLEKS                       R17 R12 K2 ["messages"]
       40 SETTABLEKS                       R17 R16 K2 ["messages"]
       42 GETTABLEKS                       R17 R12 K8 ["isOutgoing"]
       44 SETTABLEKS                       R17 R16 K8 ["isOutgoing"]
       46 GETTABLEKS                       R17 R12 K9 ["displayName"]
       48 SETTABLEKS                       R17 R16 K9 ["displayName"]
       50 GETTABLEKS                       R17 R12 K10 ["avatarInitials"]
       52 SETTABLEKS                       R17 R16 K10 ["avatarInitials"]
       54 GETTABLEKS                       R17 R12 K11 ["status"]
       56 SETTABLEKS                       R17 R16 K11 ["status"]
       58 CALL                             R14 2 1
       59 SETTABLE                         R14 R7 R13
       60 FORGLOOP                         R8 2 ; [-36]
       62 LOADNIL                          R8
       63 GETTABLEKS                       R9 R0 K13 ["onCall"]
       65 JUMPIFNOTEQKNIL                  R9 ; [+5]
       67 GETTABLEKS                       R9 R0 K14 ["onVideo"]
       69 JUMPIFEQKNIL                     R9 ; [+52]
       71 NEWTABLE                         R9 2 0
       73 GETTABLEKS                       R10 R0 K13 ["onCall"]
       75 JUMPIFEQKNIL                     R10 ; [+11]
       77 GETUPVAL                         R10 2
       78 GETUPVAL                         R11 4
       79 DUPTABLE                         R12 K21 [{["icon"] = "phone", ["onActivated"], ["isCompact"] = True, ["LayoutOrder"] = 1}]
       80 GETTABLEKS                       R13 R0 K13 ["onCall"]
       82 SETTABLEKS                       R13 R12 K17 ["onActivated"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K22 ["Call"]
       87 GETTABLEKS                       R10 R0 K14 ["onVideo"]
       89 JUMPIFEQKNIL                     R10 ; [+11]
       91 GETUPVAL                         R10 2
       92 GETUPVAL                         R11 4
       93 DUPTABLE                         R12 K25 [{["icon"] = "video-camera", ["onActivated"], ["isCompact"] = True, ["LayoutOrder"] = 2}]
       94 GETTABLEKS                       R13 R0 K14 ["onVideo"]
       96 SETTABLEKS                       R13 R12 K17 ["onActivated"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K26 ["Video"]
      101 GETUPVAL                         R10 2
      102 GETUPVAL                         R11 5
      103 GETTABLEKS                       R11 R11 K27 ["View"]
      105 DUPTABLE                         R12 K32 [{["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center gap-xsmall"}]
      106 GETIMPORT                        R13 K35 [Enum.AutomaticSize.X]
      108 SETTABLEKS                       R13 R12 K28 ["AutomaticSize"]
      110 GETIMPORT                        R13 K38 [UDim2.new]
      112 LOADN                            R14 0
      113 LOADN                            R15 0
      114 LOADN                            R16 1
      115 LOADN                            R17 0
      116 CALL                             R13 4 1
      117 SETTABLEKS                       R13 R12 K29 ["Size"]
      119 MOVE                             R13 R9
      120 CALL                             R10 3 1
      121 MOVE                             R8 R10
      122 GETUPVAL                         R9 2
      123 GETUPVAL                         R10 5
      124 GETTABLEKS                       R10 R10 K27 ["View"]
      126 DUPTABLE                         R11 K42 [{["testId"] = "--appkit-layout-chat", ["tag"] = "size-full bg-surface-100", ["LayoutOrder"]}]
      127 GETTABLEKS                       R12 R0 K7 ["LayoutOrder"]
      129 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      131 DUPTABLE                         R12 K46 [{"Header", "Feed", "Composer"}]
      132 GETUPVAL                         R13 2
      133 LOADK                            R14 K47 ["Frame"]
      134 DUPTABLE                         R15 K52 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      135 GETIMPORT                        R16 K54 [UDim2.fromOffset]
      137 LOADN                            R17 0
      138 LOADN                            R18 0
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K51 ["Position"]
      142 GETIMPORT                        R16 K38 [UDim2.new]
      144 LOADN                            R17 1
      145 LOADN                            R18 0
      146 LOADN                            R19 0
      147 GETUPVAL                         R20 6
      148 CALL                             R16 4 1
      149 SETTABLEKS                       R16 R15 K29 ["Size"]
      151 DUPTABLE                         R16 K56 [{"Bar"}]
      152 GETUPVAL                         R17 2
      153 GETUPVAL                         R18 7
      154 GETTABLEKS                       R18 R18 K57 ["HeaderBar"]
      156 DUPTABLE                         R19 K64 [{["height"], ["title"], ["subtitle"], ["hasDivider"] = True, ["leading"], ["trailing"]}]
      157 GETUPVAL                         R20 6
      158 SETTABLEKS                       R20 R19 K58 ["height"]
      160 GETTABLEKS                       R20 R0 K59 ["title"]
      162 SETTABLEKS                       R20 R19 K59 ["title"]
      164 GETTABLEKS                       R20 R0 K60 ["subtitle"]
      166 SETTABLEKS                       R20 R19 K60 ["subtitle"]
      168 GETTABLEKS                       R21 R0 K65 ["onBack"]
      170 JUMPIFEQKNIL                     R21 ; [+10]
      172 GETUPVAL                         R20 2
      173 GETUPVAL                         R21 4
      174 DUPTABLE                         R22 K67 [{["icon"] = "arrow-large-left", ["onActivated"], ["isCompact"] = True}]
      175 GETTABLEKS                       R23 R0 K65 ["onBack"]
      177 SETTABLEKS                       R23 R22 K17 ["onActivated"]
      179 CALL                             R20 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R20
      182 SETTABLEKS                       R20 R19 K62 ["leading"]
      184 SETTABLEKS                       R8 R19 K63 ["trailing"]
      186 CALL                             R17 2 1
      187 SETTABLEKS                       R17 R16 K55 ["Bar"]
      189 CALL                             R13 3 1
      190 SETTABLEKS                       R13 R12 K43 ["Header"]
      192 GETUPVAL                         R13 2
      193 LOADK                            R14 K47 ["Frame"]
      194 DUPTABLE                         R15 K52 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      195 GETIMPORT                        R16 K54 [UDim2.fromOffset]
      197 LOADN                            R17 0
      198 GETUPVAL                         R18 6
      199 CALL                             R16 2 1
      200 SETTABLEKS                       R16 R15 K51 ["Position"]
      202 GETIMPORT                        R16 K38 [UDim2.new]
      204 LOADN                            R17 1
      205 LOADN                            R18 0
      206 LOADN                            R19 1
      207 GETUPVAL                         R22 6
      208 GETUPVAL                         R23 8
      209 ADD                              R21 R22 R23
      210 MINUS                            R20 R21
      211 CALL                             R16 4 1
      212 SETTABLEKS                       R16 R15 K29 ["Size"]
      214 DUPTABLE                         R16 K69 [{"Scroll"}]
      215 GETUPVAL                         R17 2
      216 GETUPVAL                         R18 5
      217 GETTABLEKS                       R18 R18 K70 ["ScrollView"]
      219 DUPTABLE                         R19 K75 [{["tag"] = "size-full", ["scroll"], ["padding"], ["layout"]}]
      220 DUPTABLE                         R20 K80 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      221 GETIMPORT                        R21 K82 [Enum.ScrollingDirection.Y]
      223 SETTABLEKS                       R21 R20 K76 ["ScrollingDirection"]
      225 GETIMPORT                        R21 K83 [Enum.AutomaticSize.Y]
      227 SETTABLEKS                       R21 R20 K77 ["AutomaticCanvasSize"]
      229 GETIMPORT                        R21 K54 [UDim2.fromOffset]
      231 LOADN                            R22 0
      232 LOADN                            R23 0
      233 CALL                             R21 2 1
      234 SETTABLEKS                       R21 R20 K78 ["CanvasSize"]
      236 GETIMPORT                        R21 K86 [Enum.ScrollBarInset.Always]
      238 SETTABLEKS                       R21 R20 K79 ["VerticalScrollBarInset"]
      240 SETTABLEKS                       R20 R19 K72 ["scroll"]
      242 DUPTABLE                         R20 K91 [{"left", "right", "top", "bottom"}]
      243 GETIMPORT                        R21 K93 [UDim.new]
      245 LOADN                            R22 0
      246 GETTABLEKS                       R23 R1 K94 ["margin"]
      248 CALL                             R21 2 1
      249 SETTABLEKS                       R21 R20 K87 ["left"]
      251 GETIMPORT                        R21 K93 [UDim.new]
      253 LOADN                            R22 0
      254 GETTABLEKS                       R23 R1 K94 ["margin"]
      256 CALL                             R21 2 1
      257 SETTABLEKS                       R21 R20 K88 ["right"]
      259 GETIMPORT                        R21 K93 [UDim.new]
      261 LOADN                            R22 0
      262 GETTABLEKS                       R23 R1 K94 ["margin"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K89 ["top"]
      267 GETIMPORT                        R21 K93 [UDim.new]
      269 LOADN                            R22 0
      270 GETTABLEKS                       R23 R1 K94 ["margin"]
      272 CALL                             R21 2 1
      273 SETTABLEKS                       R21 R20 K90 ["bottom"]
      275 SETTABLEKS                       R20 R19 K73 ["padding"]
      277 DUPTABLE                         R20 K98 [{"FillDirection", "SortOrder", "Padding"}]
      278 GETIMPORT                        R21 K100 [Enum.FillDirection.Vertical]
      280 SETTABLEKS                       R21 R20 K95 ["FillDirection"]
      282 GETIMPORT                        R21 K101 [Enum.SortOrder.LayoutOrder]
      284 SETTABLEKS                       R21 R20 K96 ["SortOrder"]
      286 GETIMPORT                        R21 K93 [UDim.new]
      288 LOADN                            R22 0
      289 GETUPVAL                         R23 9
      290 GETTABLEKS                       R23 R23 K29 ["Size"]
      292 GETTABLEKS                       R23 R23 K102 ["Size_300"]
      294 CALL                             R21 2 1
      295 SETTABLEKS                       R21 R20 K97 ["Padding"]
      297 SETTABLEKS                       R20 R19 K74 ["layout"]
      299 MOVE                             R20 R7
      300 CALL                             R17 3 1
      301 SETTABLEKS                       R17 R16 K68 ["Scroll"]
      303 CALL                             R13 3 1
      304 SETTABLEKS                       R13 R12 K44 ["Feed"]
      306 GETUPVAL                         R13 2
      307 LOADK                            R14 K47 ["Frame"]
      308 DUPTABLE                         R15 K104 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Position"], ["Size"]}]
      309 GETIMPORT                        R16 K106 [Vector2.new]
      311 LOADN                            R17 0
      312 LOADN                            R18 1
      313 CALL                             R16 2 1
      314 SETTABLEKS                       R16 R15 K103 ["AnchorPoint"]
      316 GETIMPORT                        R16 K108 [UDim2.fromScale]
      318 LOADN                            R17 0
      319 LOADN                            R18 1
      320 CALL                             R16 2 1
      321 SETTABLEKS                       R16 R15 K51 ["Position"]
      323 GETIMPORT                        R16 K38 [UDim2.new]
      325 LOADN                            R17 1
      326 LOADN                            R18 0
      327 LOADN                            R19 0
      328 GETUPVAL                         R20 8
      329 CALL                             R16 4 1
      330 SETTABLEKS                       R16 R15 K29 ["Size"]
      332 DUPTABLE                         R16 K110 [{"Pad"}]
      333 GETUPVAL                         R17 2
      334 GETUPVAL                         R18 5
      335 GETTABLEKS                       R18 R18 K27 ["View"]
      337 DUPTABLE                         R19 K111 [{["tag"] = "size-full", ["padding"]}]
      338 DUPTABLE                         R20 K91 [{"left", "right", "top", "bottom"}]
      339 GETIMPORT                        R21 K93 [UDim.new]
      341 LOADN                            R22 0
      342 GETUPVAL                         R23 9
      343 GETTABLEKS                       R23 R23 K29 ["Size"]
      345 GETTABLEKS                       R23 R23 K102 ["Size_300"]
      347 CALL                             R21 2 1
      348 SETTABLEKS                       R21 R20 K87 ["left"]
      350 GETIMPORT                        R21 K93 [UDim.new]
      352 LOADN                            R22 0
      353 GETUPVAL                         R23 9
      354 GETTABLEKS                       R23 R23 K29 ["Size"]
      356 GETTABLEKS                       R23 R23 K102 ["Size_300"]
      358 CALL                             R21 2 1
      359 SETTABLEKS                       R21 R20 K88 ["right"]
      361 GETIMPORT                        R21 K93 [UDim.new]
      363 LOADN                            R22 0
      364 GETUPVAL                         R23 9
      365 GETTABLEKS                       R23 R23 K97 ["Padding"]
      367 GETTABLEKS                       R23 R23 K112 ["Small"]
      369 CALL                             R21 2 1
      370 SETTABLEKS                       R21 R20 K89 ["top"]
      372 GETIMPORT                        R21 K93 [UDim.new]
      374 LOADN                            R22 0
      375 GETUPVAL                         R23 9
      376 GETTABLEKS                       R23 R23 K97 ["Padding"]
      378 GETTABLEKS                       R23 R23 K112 ["Small"]
      380 CALL                             R21 2 1
      381 SETTABLEKS                       R21 R20 K90 ["bottom"]
      383 SETTABLEKS                       R20 R19 K73 ["padding"]
      385 DUPTABLE                         R20 K56 [{"Bar"}]
      386 GETUPVAL                         R21 2
      387 GETUPVAL                         R22 10
      388 DUPTABLE                         R23 K119 [{"value", "placeholder", "onValueChange", "onSend", "onAdd", "onVoice"}]
      389 SETTABLEKS                       R4 R23 K113 ["value"]
      391 GETTABLEKS                       R25 R0 K121 ["composerPlaceholder"]
      393 ORK                              R24 R25 K120 ["Message"]
      394 SETTABLEKS                       R24 R23 K114 ["placeholder"]
      396 SETTABLEKS                       R5 R23 K115 ["onValueChange"]
      398 SETTABLEKS                       R6 R23 K116 ["onSend"]
      400 DUPCLOSURE                       R24 K122 [PROTO_11]
      401 SETTABLEKS                       R24 R23 K117 ["onAdd"]
      403 DUPCLOSURE                       R24 K123 [PROTO_12]
      404 SETTABLEKS                       R24 R23 K118 ["onVoice"]
      406 CALL                             R21 2 1
      407 SETTABLEKS                       R21 R20 K55 ["Bar"]
      409 CALL                             R17 3 1
      410 SETTABLEKS                       R17 R16 K109 ["Pad"]
      412 CALL                             R13 3 1
      413 SETTABLEKS                       R13 R12 K45 ["Composer"]
      415 CALL                             R9 3 -1
      416 RETURN                           R9 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 [""]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["onSend"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["onSend"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADK                            R3 K2 [""]
        8 CALL                             R2 1 2
        9 GETTABLEKS                       R5 R0 K3 ["onSend"]
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 NEWTABLE                         R5 0 0
       17 GETTABLEKS                       R6 R0 K4 ["comments"]
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K5 ["id"]
       24 GETUPVAL                         R12 2
       25 GETUPVAL                         R13 3
       26 DUPTABLE                         R14 K20 [{"LayoutOrder", "user", "timestamp", "label", "body", "userId", "avatarInitials", "reactions", "isReply", "isFirstReply", "hasReply", "onReply", "onAddReaction", "onOverflowClick"}]
       27 SETTABLEKS                       R9 R14 K6 ["LayoutOrder"]
       29 GETTABLEKS                       R15 R10 K7 ["user"]
       31 SETTABLEKS                       R15 R14 K7 ["user"]
       33 GETTABLEKS                       R15 R10 K8 ["timestamp"]
       35 SETTABLEKS                       R15 R14 K8 ["timestamp"]
       37 GETTABLEKS                       R15 R10 K9 ["label"]
       39 SETTABLEKS                       R15 R14 K9 ["label"]
       41 GETTABLEKS                       R15 R10 K10 ["body"]
       43 SETTABLEKS                       R15 R14 K10 ["body"]
       45 GETTABLEKS                       R15 R10 K11 ["userId"]
       47 SETTABLEKS                       R15 R14 K11 ["userId"]
       49 GETTABLEKS                       R15 R10 K12 ["avatarInitials"]
       51 SETTABLEKS                       R15 R14 K12 ["avatarInitials"]
       53 GETTABLEKS                       R15 R10 K13 ["reactions"]
       55 SETTABLEKS                       R15 R14 K13 ["reactions"]
       57 GETTABLEKS                       R15 R10 K14 ["isReply"]
       59 SETTABLEKS                       R15 R14 K14 ["isReply"]
       61 GETTABLEKS                       R15 R10 K15 ["isFirstReply"]
       63 SETTABLEKS                       R15 R14 K15 ["isFirstReply"]
       65 GETTABLEKS                       R15 R10 K16 ["hasReply"]
       67 SETTABLEKS                       R15 R14 K16 ["hasReply"]
       69 GETTABLEKS                       R15 R10 K17 ["onReply"]
       71 SETTABLEKS                       R15 R14 K17 ["onReply"]
       73 GETTABLEKS                       R15 R10 K18 ["onAddReaction"]
       75 SETTABLEKS                       R15 R14 K18 ["onAddReaction"]
       77 GETTABLEKS                       R15 R10 K19 ["onOverflowClick"]
       79 SETTABLEKS                       R15 R14 K19 ["onOverflowClick"]
       81 CALL                             R12 2 1
       82 SETTABLE                         R12 R5 R11
       83 FORGLOOP                         R6 2 ; [-62]
       85 JUMPIFNOT                        R4 ; [+2]
       86 GETUPVAL                         R6 4
       87 JUMP                             ; [+1]
       88 LOADN                            R6 0
       89 DUPTABLE                         R7 K22 [{"List"}]
       90 GETUPVAL                         R8 2
       91 LOADK                            R9 K23 ["Frame"]
       92 DUPTABLE                         R10 K30 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
       93 GETIMPORT                        R11 K33 [UDim2.fromOffset]
       95 LOADN                            R12 0
       96 LOADN                            R13 0
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K28 ["Position"]
      100 GETIMPORT                        R11 K35 [UDim2.new]
      102 LOADN                            R12 1
      103 LOADN                            R13 0
      104 LOADN                            R14 1
      105 MINUS                            R15 R6
      106 CALL                             R11 4 1
      107 SETTABLEKS                       R11 R10 K29 ["Size"]
      109 DUPTABLE                         R11 K37 [{"Scroll"}]
      110 GETUPVAL                         R12 2
      111 GETUPVAL                         R13 5
      112 GETTABLEKS                       R13 R13 K38 ["ScrollView"]
      114 DUPTABLE                         R14 K46 [{["testId"] = "--appkit-layout-conversation-thread", ["tag"] = "size-full", ["scroll"], ["padding"], ["layout"]}]
      115 DUPTABLE                         R15 K51 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      116 GETIMPORT                        R16 K54 [Enum.ScrollingDirection.Y]
      118 SETTABLEKS                       R16 R15 K47 ["ScrollingDirection"]
      120 GETIMPORT                        R16 K56 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R16 R15 K48 ["AutomaticCanvasSize"]
      124 GETIMPORT                        R16 K33 [UDim2.fromOffset]
      126 LOADN                            R17 0
      127 LOADN                            R18 0
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K49 ["CanvasSize"]
      131 GETIMPORT                        R16 K59 [Enum.ScrollBarInset.Always]
      133 SETTABLEKS                       R16 R15 K50 ["VerticalScrollBarInset"]
      135 SETTABLEKS                       R15 R14 K43 ["scroll"]
      137 DUPTABLE                         R15 K64 [{"left", "right", "top", "bottom"}]
      138 GETIMPORT                        R16 K66 [UDim.new]
      140 LOADN                            R17 0
      141 GETTABLEKS                       R18 R1 K67 ["margin"]
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K60 ["left"]
      146 GETIMPORT                        R16 K66 [UDim.new]
      148 LOADN                            R17 0
      149 GETTABLEKS                       R18 R1 K67 ["margin"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K61 ["right"]
      154 GETIMPORT                        R16 K66 [UDim.new]
      156 LOADN                            R17 0
      157 GETTABLEKS                       R18 R1 K67 ["margin"]
      159 CALL                             R16 2 1
      160 SETTABLEKS                       R16 R15 K62 ["top"]
      162 GETIMPORT                        R16 K66 [UDim.new]
      164 LOADN                            R17 0
      165 GETTABLEKS                       R18 R1 K67 ["margin"]
      167 CALL                             R16 2 1
      168 SETTABLEKS                       R16 R15 K63 ["bottom"]
      170 SETTABLEKS                       R15 R14 K44 ["padding"]
      172 DUPTABLE                         R15 K71 [{"FillDirection", "SortOrder", "Padding"}]
      173 GETIMPORT                        R16 K73 [Enum.FillDirection.Vertical]
      175 SETTABLEKS                       R16 R15 K68 ["FillDirection"]
      177 GETIMPORT                        R16 K74 [Enum.SortOrder.LayoutOrder]
      179 SETTABLEKS                       R16 R15 K69 ["SortOrder"]
      181 GETIMPORT                        R16 K66 [UDim.new]
      183 LOADN                            R17 0
      184 LOADN                            R18 20
      185 CALL                             R16 2 1
      186 SETTABLEKS                       R16 R15 K70 ["Padding"]
      188 SETTABLEKS                       R15 R14 K45 ["layout"]
      190 MOVE                             R15 R5
      191 CALL                             R12 3 1
      192 SETTABLEKS                       R12 R11 K36 ["Scroll"]
      194 CALL                             R8 3 1
      195 SETTABLEKS                       R8 R7 K21 ["List"]
      197 JUMPIFNOT                        R4 ; [+106]
      198 GETUPVAL                         R8 2
      199 LOADK                            R9 K23 ["Frame"]
      200 DUPTABLE                         R10 K76 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Position"], ["Size"]}]
      201 GETIMPORT                        R11 K78 [Vector2.new]
      203 LOADN                            R12 0
      204 LOADN                            R13 1
      205 CALL                             R11 2 1
      206 SETTABLEKS                       R11 R10 K75 ["AnchorPoint"]
      208 GETIMPORT                        R11 K80 [UDim2.fromScale]
      210 LOADN                            R12 0
      211 LOADN                            R13 1
      212 CALL                             R11 2 1
      213 SETTABLEKS                       R11 R10 K28 ["Position"]
      215 GETIMPORT                        R11 K35 [UDim2.new]
      217 LOADN                            R12 1
      218 LOADN                            R13 0
      219 LOADN                            R14 0
      220 GETUPVAL                         R15 4
      221 CALL                             R11 4 1
      222 SETTABLEKS                       R11 R10 K29 ["Size"]
      224 DUPTABLE                         R11 K82 [{"Pad"}]
      225 GETUPVAL                         R12 2
      226 GETUPVAL                         R13 5
      227 GETTABLEKS                       R13 R13 K83 ["View"]
      229 DUPTABLE                         R14 K84 [{["tag"] = "size-full", ["padding"]}]
      230 DUPTABLE                         R15 K64 [{"left", "right", "top", "bottom"}]
      231 GETIMPORT                        R16 K66 [UDim.new]
      233 LOADN                            R17 0
      234 GETUPVAL                         R18 6
      235 GETTABLEKS                       R18 R18 K29 ["Size"]
      237 GETTABLEKS                       R18 R18 K85 ["Size_300"]
      239 CALL                             R16 2 1
      240 SETTABLEKS                       R16 R15 K60 ["left"]
      242 GETIMPORT                        R16 K66 [UDim.new]
      244 LOADN                            R17 0
      245 GETUPVAL                         R18 6
      246 GETTABLEKS                       R18 R18 K29 ["Size"]
      248 GETTABLEKS                       R18 R18 K85 ["Size_300"]
      250 CALL                             R16 2 1
      251 SETTABLEKS                       R16 R15 K61 ["right"]
      253 GETIMPORT                        R16 K66 [UDim.new]
      255 LOADN                            R17 0
      256 GETUPVAL                         R18 6
      257 GETTABLEKS                       R18 R18 K70 ["Padding"]
      259 GETTABLEKS                       R18 R18 K86 ["Small"]
      261 CALL                             R16 2 1
      262 SETTABLEKS                       R16 R15 K62 ["top"]
      264 GETIMPORT                        R16 K66 [UDim.new]
      266 LOADN                            R17 0
      267 GETUPVAL                         R18 6
      268 GETTABLEKS                       R18 R18 K70 ["Padding"]
      270 GETTABLEKS                       R18 R18 K86 ["Small"]
      272 CALL                             R16 2 1
      273 SETTABLEKS                       R16 R15 K63 ["bottom"]
      275 SETTABLEKS                       R15 R14 K44 ["padding"]
      277 DUPTABLE                         R15 K88 [{"Bar"}]
      278 GETUPVAL                         R16 2
      279 GETUPVAL                         R17 7
      280 DUPTABLE                         R18 K92 [{"value", "placeholder", "onValueChange", "onSend"}]
      281 SETTABLEKS                       R2 R18 K89 ["value"]
      283 GETTABLEKS                       R20 R0 K94 ["composerPlaceholder"]
      285 ORK                              R19 R20 K93 ["Add a comment"]
      286 SETTABLEKS                       R19 R18 K90 ["placeholder"]
      288 SETTABLEKS                       R3 R18 K91 ["onValueChange"]
      290 NEWCLOSURE                       R19 P0
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R0
      293 SETTABLEKS                       R19 R18 K3 ["onSend"]
      295 CALL                             R16 2 1
      296 SETTABLEKS                       R16 R15 K87 ["Bar"]
      298 CALL                             R12 3 1
      299 SETTABLEKS                       R12 R11 K81 ["Pad"]
      301 CALL                             R8 3 1
      302 SETTABLEKS                       R8 R7 K95 ["Composer"]
      304 GETUPVAL                         R8 2
      305 GETUPVAL                         R9 5
      306 GETTABLEKS                       R9 R9 K83 ["View"]
      308 DUPTABLE                         R10 K98 [{["testId"] = "--appkit-layout-conversation", ["tag"] = "size-full bg-surface-100", ["LayoutOrder"]}]
      309 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
      311 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      313 MOVE                             R11 R7
      314 CALL                             R8 3 -1
      315 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Layouts must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETIMPORT                        R5 K1 [script]
       41 GETTABLEKS                       R5 R5 K12 ["Parent"]
       43 GETTABLEKS                       R5 R5 K14 ["Parts"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K8 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K12 ["Parent"]
       52 GETTABLEKS                       R6 R6 K15 ["Bars"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETIMPORT                        R7 K1 [script]
       59 GETTABLEKS                       R7 R7 K12 ["Parent"]
       61 GETTABLEKS                       R7 R7 K16 ["UtilityButton"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K8 [require]
       66 GETIMPORT                        R8 K1 [script]
       68 GETTABLEKS                       R8 R8 K12 ["Parent"]
       70 GETTABLEKS                       R8 R8 K17 ["SectionHeading"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K8 [require]
       75 GETIMPORT                        R9 K1 [script]
       77 GETTABLEKS                       R9 R9 K12 ["Parent"]
       79 GETTABLEKS                       R9 R9 K18 ["ChatBubble"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K8 [require]
       84 GETIMPORT                        R10 K1 [script]
       86 GETTABLEKS                       R10 R10 K12 ["Parent"]
       88 GETTABLEKS                       R10 R10 K19 ["Composer"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K8 [require]
       93 GETIMPORT                        R11 K1 [script]
       95 GETTABLEKS                       R11 R11 K12 ["Parent"]
       97 GETTABLEKS                       R11 R11 K20 ["Comment"]
       99 CALL                             R10 1 1
      100 GETIMPORT                        R11 K8 [require]
      102 GETIMPORT                        R12 K1 [script]
      104 GETTABLEKS                       R12 R12 K12 ["Parent"]
      106 GETTABLEKS                       R12 R12 K21 ["ButtonTile"]
      108 CALL                             R11 1 1
      109 GETIMPORT                        R12 K8 [require]
      111 GETIMPORT                        R13 K1 [script]
      113 GETTABLEKS                       R13 R13 K12 ["Parent"]
      115 GETTABLEKS                       R13 R13 K22 ["DynamicTile"]
      117 CALL                             R12 1 1
      118 GETTABLEKS                       R13 R1 K23 ["createElement"]
      120 GETTABLEKS                       R14 R2 K24 ["Utility"]
      122 GETTABLEKS                       R14 R14 K25 ["getTokens"]
      124 GETTABLEKS                       R15 R2 K26 ["Enums"]
      126 GETTABLEKS                       R15 R15 K27 ["Theme"]
      128 GETTABLEKS                       R15 R15 K28 ["Dark"]
      130 GETTABLEKS                       R16 R2 K26 ["Enums"]
      132 GETTABLEKS                       R16 R16 K29 ["Device"]
      134 GETTABLEKS                       R16 R16 K30 ["Desktop"]
      136 CALL                             R14 2 1
      137 NEWTABLE                         R15 8 0
      139 DUPCLOSURE                       R16 K31 [PROTO_0]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R2
      143 SETTABLEKS                       R16 R15 K32 ["Freeform"]
      145 GETTABLEKS                       R16 R14 K33 ["Size"]
      147 GETTABLEKS                       R16 R16 K34 ["Size_1400"]
      149 GETTABLEKS                       R17 R14 K33 ["Size"]
      151 GETTABLEKS                       R17 R17 K35 ["Size_1200"]
      153 DUPCLOSURE                       R18 K36 [PROTO_1]
      154 DUPCLOSURE                       R19 K37 [PROTO_3]
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R12
      157 DUPCLOSURE                       R20 K38 [PROTO_5]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R6
      169 SETTABLEKS                       R20 R15 K39 ["Discovery"]
      171 DUPCLOSURE                       R20 K40 [PROTO_6]
      172 SETTABLEKS                       R20 R15 K41 ["filterItems"]
      174 DUPCLOSURE                       R21 K42 [PROTO_8]
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R2
      180 SETTABLEKS                       R21 R15 K43 ["ListView"]
      182 GETTABLEKS                       R21 R14 K33 ["Size"]
      184 GETTABLEKS                       R21 R21 K34 ["Size_1400"]
      186 GETTABLEKS                       R22 R14 K33 ["Size"]
      188 GETTABLEKS                       R22 R22 K44 ["Size_1600"]
      190 DUPCLOSURE                       R23 K45 [PROTO_13]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R9
      202 SETTABLEKS                       R23 R15 K46 ["Chat"]
      204 GETTABLEKS                       R23 R14 K33 ["Size"]
      206 GETTABLEKS                       R23 R23 K44 ["Size_1600"]
      208 DUPCLOSURE                       R24 K47 [PROTO_15]
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R9
      217 SETTABLEKS                       R24 R15 K48 ["ConversationThread"]
      219 RETURN                           R15 1
