PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 GETIMPORT                        R6 K1 [pairs]
        4 MOVE                             R7 R2
        5 CALL                             R6 1 3
        6 FORGPREP_NEXT                    R6
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R11 R12 K2 ["createElement"]
       10 GETUPVAL                         R12 1
       11 DUPTABLE                         R13 K9 [{"AssetData", "LayoutOrder", "StyleModifier", "Enabled", "RecentListItem", "OnAssetDrag"}]
       12 SETTABLEKS                       R10 R13 K3 ["AssetData"]
       14 GETTABLEKS                       R14 R10 K10 ["key"]
       16 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       18 GETTABLEKS                       R16 R10 K10 ["key"]
       20 GETTABLE                         R15 R3 R16
       21 JUMPIFNOT                        R15 ; [+4]
       22 GETUPVAL                         R15 2
       23 GETTABLEKS                       R14 R15 K11 ["Selected"]
       25 JUMPIF                           R14 ; [+1]
       26 LOADNIL                          R14
       27 SETTABLEKS                       R14 R13 K5 ["StyleModifier"]
       29 SETTABLEKS                       R4 R13 K6 ["Enabled"]
       31 LOADB                            R14 1
       32 SETTABLEKS                       R14 R13 K7 ["RecentListItem"]
       34 GETTABLEKS                       R14 R0 K12 ["onAssetDrag"]
       36 SETTABLEKS                       R14 R13 K8 ["OnAssetDrag"]
       38 CALL                             R11 2 1
       39 GETTABLEKS                       R12 R10 K13 ["id"]
       41 SETTABLE                         R11 R5 R12
       42 FORGLOOP                         R6 2 ; [-36]
       44 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["dispatchSetRecentViewToggled"]
        5 GETTABLEKS                       R6 R3 K2 ["RecentViewToggled"]
        7 NOT                              R5 R6
        8 CALL                             R4 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 LOADK                            R3 K2 ["PointingHand"]
        6 NAMECALL                         R1 R1 K3 ["__pushCursor"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 NAMECALL                         R1 R1 K2 ["__popCursor"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["InsertAsset"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R1 K3 ["dispatchOnAssetDrag"]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R0
       12 GETTABLEKS                       R6 R1 K4 ["Analytics"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onMouseActivated"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["mouseEnter"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["mouseLeave"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["onAssetDrag"]
       16 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["RecentView"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["Enabled"]
       14 LOADK                            R10 K7 ["RecentlyImportedView"]
       15 LOADK                            R11 K8 ["Title"]
       16 NAMECALL                         R8 R4 K9 ["getText"]
       18 CALL                             R8 3 1
       19 GETTABLEKS                       R9 R1 K10 ["RecentViewToggled"]
       21 JUMPIFNOT                        R9 ; [+7]
       22 GETTABLEKS                       R12 R3 K11 ["Bar"]
       24 GETTABLEKS                       R11 R12 K12 ["Arrow"]
       26 GETTABLEKS                       R10 R11 K13 ["Expanded"]
       28 JUMPIF                           R10 ; [+6]
       29 GETTABLEKS                       R12 R3 K11 ["Bar"]
       31 GETTABLEKS                       R11 R12 K12 ["Arrow"]
       33 GETTABLEKS                       R10 R11 K14 ["Collapsed"]
       35 GETTABLEKS                       R11 R1 K15 ["RecentAssets"]
       37 GETTABLEKS                       R12 R1 K16 ["SelectedAssets"]
       39 MOVE                             R15 R2
       40 MOVE                             R16 R11
       41 MOVE                             R17 R12
       42 MOVE                             R18 R7
       43 NAMECALL                         R13 R0 K17 ["createListItems"]
       45 CALL                             R13 5 1
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R14 R15 K18 ["new"]
       49 CALL                             R14 0 1
       50 GETUPVAL                         R16 1
       51 GETTABLEKS                       R15 R16 K19 ["createElement"]
       53 LOADK                            R16 K20 ["Frame"]
       54 DUPTABLE                         R17 K23 [{"Size", "LayoutOrder", "ZIndex", "BackgroundTransparency"}]
       55 SETTABLEKS                       R5 R17 K4 ["Size"]
       57 SETTABLEKS                       R6 R17 K5 ["LayoutOrder"]
       59 LOADN                            R18 2
       60 SETTABLEKS                       R18 R17 K21 ["ZIndex"]
       62 LOADN                            R18 1
       63 SETTABLEKS                       R18 R17 K22 ["BackgroundTransparency"]
       65 DUPTABLE                         R18 K27 [{"RecentlyImportedViewLayout", "RecentlyImportedViewBar", "RecentlyImportedViewScrollingFrame"}]
       66 GETUPVAL                         R20 1
       67 GETTABLEKS                       R19 R20 K19 ["createElement"]
       69 LOADK                            R20 K28 ["UIListLayout"]
       70 DUPTABLE                         R21 K32 [{"Padding", "FillDirection", "SortOrder"}]
       71 GETIMPORT                        R22 K34 [UDim.new]
       73 LOADN                            R23 0
       74 LOADN                            R24 0
       75 CALL                             R22 2 1
       76 SETTABLEKS                       R22 R21 K29 ["Padding"]
       78 GETIMPORT                        R22 K37 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R22 R21 K30 ["FillDirection"]
       82 GETIMPORT                        R22 K38 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R22 R21 K31 ["SortOrder"]
       86 CALL                             R19 2 1
       87 SETTABLEKS                       R19 R18 K24 ["RecentlyImportedViewLayout"]
       89 GETUPVAL                         R20 1
       90 GETTABLEKS                       R19 R20 K19 ["createElement"]
       92 LOADK                            R20 K39 ["ImageButton"]
       93 NEWTABLE                         R21 16 0
       95 GETIMPORT                        R22 K41 [UDim2.new]
       97 LOADN                            R23 1
       98 LOADN                            R24 0
       99 LOADN                            R25 0
      100 GETTABLEKS                       R27 R3 K11 ["Bar"]
      102 GETTABLEKS                       R26 R27 K42 ["Height"]
      104 CALL                             R22 4 1
      105 SETTABLEKS                       R22 R21 K4 ["Size"]
      107 NAMECALL                         R22 R14 K43 ["getNextOrder"]
      109 CALL                             R22 1 1
      110 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      112 LOADN                            R22 100
      113 SETTABLEKS                       R22 R21 K21 ["ZIndex"]
      115 GETTABLEKS                       R23 R3 K11 ["Bar"]
      117 GETTABLEKS                       R22 R23 K44 ["BackgroundColor"]
      119 SETTABLEKS                       R22 R21 K45 ["BackgroundColor3"]
      121 GETTABLEKS                       R22 R2 K46 ["BorderColor"]
      123 SETTABLEKS                       R22 R21 K47 ["BorderColor3"]
      125 LOADN                            R22 1
      126 SETTABLEKS                       R22 R21 K48 ["BorderSizePixel"]
      128 GETUPVAL                         R24 1
      129 GETTABLEKS                       R23 R24 K49 ["Event"]
      131 GETTABLEKS                       R22 R23 K50 ["Activated"]
      133 GETTABLEKS                       R23 R0 K51 ["onMouseActivated"]
      135 SETTABLE                         R23 R21 R22
      136 GETUPVAL                         R24 1
      137 GETTABLEKS                       R23 R24 K49 ["Event"]
      139 GETTABLEKS                       R22 R23 K52 ["MouseEnter"]
      141 GETTABLEKS                       R23 R0 K53 ["mouseEnter"]
      143 SETTABLE                         R23 R21 R22
      144 GETUPVAL                         R24 1
      145 GETTABLEKS                       R23 R24 K49 ["Event"]
      147 GETTABLEKS                       R22 R23 K54 ["mouseLeave"]
      149 GETTABLEKS                       R23 R0 K54 ["mouseLeave"]
      151 SETTABLE                         R23 R21 R22
      152 DUPTABLE                         R22 K59 [{"RecentlyImportedViewBarLayout", "GameBarPadding", "RecentlyImportedViewBarText", "CollapseImageFrame"}]
      153 GETUPVAL                         R24 1
      154 GETTABLEKS                       R23 R24 K19 ["createElement"]
      156 LOADK                            R24 K28 ["UIListLayout"]
      157 DUPTABLE                         R25 K32 [{"Padding", "FillDirection", "SortOrder"}]
      158 GETIMPORT                        R26 K34 [UDim.new]
      160 LOADN                            R27 0
      161 GETTABLEKS                       R29 R3 K11 ["Bar"]
      163 GETTABLEKS                       R28 R29 K29 ["Padding"]
      165 CALL                             R26 2 1
      166 SETTABLEKS                       R26 R25 K29 ["Padding"]
      168 GETIMPORT                        R26 K61 [Enum.FillDirection.Horizontal]
      170 SETTABLEKS                       R26 R25 K30 ["FillDirection"]
      172 GETIMPORT                        R26 K38 [Enum.SortOrder.LayoutOrder]
      174 SETTABLEKS                       R26 R25 K31 ["SortOrder"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K55 ["RecentlyImportedViewBarLayout"]
      179 GETUPVAL                         R24 1
      180 GETTABLEKS                       R23 R24 K19 ["createElement"]
      182 LOADK                            R24 K62 ["UIPadding"]
      183 DUPTABLE                         R25 K64 [{"PaddingLeft"}]
      184 GETIMPORT                        R26 K34 [UDim.new]
      186 LOADN                            R27 0
      187 GETTABLEKS                       R29 R3 K11 ["Bar"]
      189 GETTABLEKS                       R28 R29 K29 ["Padding"]
      191 CALL                             R26 2 1
      192 SETTABLEKS                       R26 R25 K63 ["PaddingLeft"]
      194 CALL                             R23 2 1
      195 SETTABLEKS                       R23 R22 K56 ["GameBarPadding"]
      197 GETUPVAL                         R24 1
      198 GETTABLEKS                       R23 R24 K19 ["createElement"]
      200 LOADK                            R24 K65 ["TextLabel"]
      201 DUPTABLE                         R25 K71 [{"Size", "LayoutOrder", "BackgroundTransparency", "Text", "TextColor3", "TextSize", "Font", "TextXAlignment"}]
      202 GETIMPORT                        R26 K41 [UDim2.new]
      204 LOADN                            R27 1
      205 GETTABLEKS                       R32 R3 K11 ["Bar"]
      207 GETTABLEKS                       R31 R32 K72 ["Button"]
      209 GETTABLEKS                       R30 R31 K4 ["Size"]
      211 MINUS                            R29 R30
      212 GETTABLEKS                       R31 R3 K11 ["Bar"]
      214 GETTABLEKS                       R30 R31 K29 ["Padding"]
      216 SUB                              R28 R29 R30
      217 LOADN                            R29 1
      218 LOADN                            R30 0
      219 CALL                             R26 4 1
      220 SETTABLEKS                       R26 R25 K4 ["Size"]
      222 LOADN                            R26 0
      223 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      225 LOADN                            R26 1
      226 SETTABLEKS                       R26 R25 K22 ["BackgroundTransparency"]
      228 SETTABLEKS                       R8 R25 K66 ["Text"]
      230 GETTABLEKS                       R26 R2 K73 ["TextColor"]
      232 SETTABLEKS                       R26 R25 K67 ["TextColor3"]
      234 GETTABLEKS                       R26 R2 K74 ["FontSizeSmall"]
      236 SETTABLEKS                       R26 R25 K68 ["TextSize"]
      238 GETTABLEKS                       R26 R2 K69 ["Font"]
      240 SETTABLEKS                       R26 R25 K69 ["Font"]
      242 GETIMPORT                        R26 K76 [Enum.TextXAlignment.Left]
      244 SETTABLEKS                       R26 R25 K70 ["TextXAlignment"]
      246 CALL                             R23 2 1
      247 SETTABLEKS                       R23 R22 K57 ["RecentlyImportedViewBarText"]
      249 GETUPVAL                         R24 1
      250 GETTABLEKS                       R23 R24 K19 ["createElement"]
      252 LOADK                            R24 K20 ["Frame"]
      253 DUPTABLE                         R25 K77 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      254 GETIMPORT                        R26 K41 [UDim2.new]
      256 LOADN                            R27 0
      257 GETTABLEKS                       R30 R3 K11 ["Bar"]
      259 GETTABLEKS                       R29 R30 K72 ["Button"]
      261 GETTABLEKS                       R28 R29 K4 ["Size"]
      263 LOADN                            R29 0
      264 GETTABLEKS                       R32 R3 K11 ["Bar"]
      266 GETTABLEKS                       R31 R32 K72 ["Button"]
      268 GETTABLEKS                       R30 R31 K4 ["Size"]
      270 CALL                             R26 4 1
      271 SETTABLEKS                       R26 R25 K4 ["Size"]
      273 LOADN                            R26 1
      274 SETTABLEKS                       R26 R25 K5 ["LayoutOrder"]
      276 LOADN                            R26 1
      277 SETTABLEKS                       R26 R25 K22 ["BackgroundTransparency"]
      279 DUPTABLE                         R26 K79 [{"CollapseArrow"}]
      280 GETUPVAL                         R28 1
      281 GETTABLEKS                       R27 R28 K19 ["createElement"]
      283 LOADK                            R28 K80 ["ImageLabel"]
      284 GETUPVAL                         R31 2
      285 GETTABLEKS                       R30 R31 K81 ["Dictionary"]
      287 GETTABLEKS                       R29 R30 K82 ["join"]
      289 MOVE                             R30 R10
      290 DUPTABLE                         R31 K86 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "ImageColor3"}]
      291 GETIMPORT                        R32 K41 [UDim2.new]
      293 LOADN                            R33 0
      294 GETTABLEKS                       R36 R3 K11 ["Bar"]
      296 GETTABLEKS                       R35 R36 K12 ["Arrow"]
      298 GETTABLEKS                       R34 R35 K4 ["Size"]
      300 LOADN                            R35 0
      301 GETTABLEKS                       R38 R3 K11 ["Bar"]
      303 GETTABLEKS                       R37 R38 K12 ["Arrow"]
      305 GETTABLEKS                       R36 R37 K4 ["Size"]
      307 CALL                             R32 4 1
      308 SETTABLEKS                       R32 R31 K4 ["Size"]
      310 GETIMPORT                        R32 K88 [Vector2.new]
      312 LOADN                            R33 0
      313 LOADK                            R34 K89 [0.5]
      314 CALL                             R32 2 1
      315 SETTABLEKS                       R32 R31 K83 ["AnchorPoint"]
      317 GETIMPORT                        R32 K41 [UDim2.new]
      319 LOADN                            R33 0
      320 LOADN                            R34 0
      321 LOADK                            R35 K89 [0.5]
      322 LOADN                            R36 0
      323 CALL                             R32 4 1
      324 SETTABLEKS                       R32 R31 K84 ["Position"]
      326 LOADN                            R32 1
      327 SETTABLEKS                       R32 R31 K22 ["BackgroundTransparency"]
      329 GETTABLEKS                       R34 R3 K11 ["Bar"]
      331 GETTABLEKS                       R33 R34 K12 ["Arrow"]
      333 GETTABLEKS                       R32 R33 K90 ["Color"]
      335 SETTABLEKS                       R32 R31 K85 ["ImageColor3"]
      337 CALL                             R29 2 -1
      338 CALL                             R27 -1 1
      339 SETTABLEKS                       R27 R26 K78 ["CollapseArrow"]
      341 CALL                             R23 3 1
      342 SETTABLEKS                       R23 R22 K58 ["CollapseImageFrame"]
      344 CALL                             R19 3 1
      345 SETTABLEKS                       R19 R18 K25 ["RecentlyImportedViewBar"]
      347 GETUPVAL                         R20 1
      348 GETTABLEKS                       R19 R20 K19 ["createElement"]
      350 GETUPVAL                         R20 3
      351 DUPTABLE                         R21 K92 [{"Size", "LayoutOrder", "BackgroundTransparency", "AutoSizeLayoutOptions"}]
      352 GETIMPORT                        R22 K41 [UDim2.new]
      354 LOADN                            R23 1
      355 LOADN                            R24 0
      356 JUMPIFNOT                        R9 ; [+2]
      357 LOADN                            R25 1
      358 JUMP                             ; [+1]
      359 LOADN                            R25 0
      360 JUMPIFNOT                        R9 ; [+6]
      361 GETTABLEKS                       R28 R3 K11 ["Bar"]
      363 GETTABLEKS                       R27 R28 K42 ["Height"]
      365 MINUS                            R26 R27
      366 JUMPIF                           R26 ; [+1]
      367 LOADN                            R26 0
      368 CALL                             R22 4 1
      369 SETTABLEKS                       R22 R21 K4 ["Size"]
      371 NAMECALL                         R22 R14 K43 ["getNextOrder"]
      373 CALL                             R22 1 1
      374 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      376 LOADN                            R22 1
      377 SETTABLEKS                       R22 R21 K22 ["BackgroundTransparency"]
      379 DUPTABLE                         R22 K93 [{"SortOrder"}]
      380 GETIMPORT                        R23 K38 [Enum.SortOrder.LayoutOrder]
      382 SETTABLEKS                       R23 R22 K31 ["SortOrder"]
      384 SETTABLEKS                       R22 R21 K91 ["AutoSizeLayoutOptions"]
      386 MOVE                             R22 R13
      387 CALL                             R19 3 1
      388 SETTABLEKS                       R19 R18 K26 ["RecentlyImportedViewScrollingFrame"]
      390 CALL                             R15 3 -1
      391 RETURN                           R15 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K4 [{"RecentAssets", "RecentViewToggled", "SelectedAssets"}]
        3 GETTABLEKS                       R4 R2 K5 ["recentAssets"]
        5 SETTABLEKS                       R4 R3 K1 ["RecentAssets"]
        7 GETTABLEKS                       R4 R2 K6 ["recentViewToggled"]
        9 SETTABLEKS                       R4 R3 K2 ["RecentViewToggled"]
       11 GETTABLEKS                       R4 R2 K7 ["selectedAssets"]
       13 SETTABLEKS                       R4 R3 K3 ["SelectedAssets"]
       15 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"dispatchOnAssetDrag", "dispatchSetRecentViewToggled"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchOnAssetDrag"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetRecentViewToggled"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["InsertAsset"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Roact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["RoactRodux"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K5 ["Packages"]
       41 GETTABLEKS                       R6 R7 K10 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K12 ["withContext"]
       48 GETTABLEKS                       R9 R2 K13 ["Context"]
       50 GETTABLEKS                       R8 R9 K14 ["InsertAssetContext"]
       52 GETTABLEKS                       R9 R5 K15 ["UI"]
       54 GETTABLEKS                       R10 R9 K16 ["ScrollingFrame"]
       56 GETTABLEKS                       R11 R5 K17 ["Util"]
       58 GETTABLEKS                       R12 R11 K18 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R13 R11 K19 ["StyleModifier"]
       62 GETIMPORT                        R14 K4 [require]
       64 GETTABLEKS                       R17 R0 K20 ["Src"]
       66 GETTABLEKS                       R16 R17 K21 ["Components"]
       68 GETTABLEKS                       R15 R16 K22 ["ListItem"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R18 R0 K20 ["Src"]
       75 GETTABLEKS                       R17 R18 K23 ["Actions"]
       77 GETTABLEKS                       R16 R17 K24 ["SetRecentViewToggled"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K4 [require]
       82 GETTABLEKS                       R19 R0 K20 ["Src"]
       84 GETTABLEKS                       R18 R19 K25 ["Thunks"]
       86 GETTABLEKS                       R17 R18 K26 ["OnAssetDrag"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R17 R3 K27 ["PureComponent"]
       91 LOADK                            R19 K28 ["RecentlyImportedView"]
       92 NAMECALL                         R17 R17 K29 ["extend"]
       94 CALL                             R17 2 1
       95 DUPCLOSURE                       R18 K30 [PROTO_0]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R13
       99 SETTABLEKS                       R18 R17 K31 ["createListItems"]
      101 DUPCLOSURE                       R18 K32 [PROTO_5]
      102 SETTABLEKS                       R18 R17 K33 ["init"]
      104 DUPCLOSURE                       R18 K34 [PROTO_6]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R18 R17 K35 ["render"]
      111 MOVE                             R18 R7
      112 DUPTABLE                         R19 K40 [{"Analytics", "InsertAsset", "Localization", "Mouse", "Stylizer"}]
      113 GETTABLEKS                       R20 R6 K36 ["Analytics"]
      115 SETTABLEKS                       R20 R19 K36 ["Analytics"]
      117 SETTABLEKS                       R8 R19 K7 ["InsertAsset"]
      119 GETTABLEKS                       R20 R6 K37 ["Localization"]
      121 SETTABLEKS                       R20 R19 K37 ["Localization"]
      123 GETTABLEKS                       R20 R6 K38 ["Mouse"]
      125 SETTABLEKS                       R20 R19 K38 ["Mouse"]
      127 GETTABLEKS                       R20 R6 K39 ["Stylizer"]
      129 SETTABLEKS                       R20 R19 K39 ["Stylizer"]
      131 CALL                             R18 1 1
      132 MOVE                             R19 R17
      133 CALL                             R18 1 1
      134 MOVE                             R17 R18
      135 DUPCLOSURE                       R18 K41 [PROTO_7]
      136 DUPCLOSURE                       R19 K42 [PROTO_10]
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R15
      139 GETTABLEKS                       R20 R4 K43 ["connect"]
      141 MOVE                             R21 R18
      142 MOVE                             R22 R19
      143 CALL                             R20 2 1
      144 MOVE                             R21 R17
      145 CALL                             R20 1 -1
      146 RETURN                           R20 -1
