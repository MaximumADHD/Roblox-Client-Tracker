PROTO_0:
        0 NEWTABLE                         R5 0 0
        2 GETIMPORT                        R6 K1 [pairs]
        4 MOVE                             R7 R2
        5 CALL                             R6 1 3
        6 FORGPREP_NEXT                    R6
        7 GETUPVAL                         R11 0
        8 GETTABLEKS                       R11 R11 K2 ["createElement"]
       10 GETUPVAL                         R12 1
       11 DUPTABLE                         R13 K10 [{["AssetData"], ["LayoutOrder"], ["StyleModifier"], ["Enabled"], ["RecentListItem"] = True, ["OnAssetDrag"]}]
       12 SETTABLEKS                       R10 R13 K3 ["AssetData"]
       14 GETTABLEKS                       R14 R10 K11 ["key"]
       16 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       18 GETTABLEKS                       R16 R10 K11 ["key"]
       20 GETTABLE                         R15 R3 R16
       21 JUMPIFNOT                        R15 ; [+4]
       22 GETUPVAL                         R14 2
       23 GETTABLEKS                       R14 R14 K12 ["Selected"]
       25 JUMPIF                           R14 ; [+1]
       26 LOADNIL                          R14
       27 SETTABLEKS                       R14 R13 K5 ["StyleModifier"]
       29 SETTABLEKS                       R4 R13 K6 ["Enabled"]
       31 GETTABLEKS                       R14 R0 K13 ["onAssetDrag"]
       33 SETTABLEKS                       R14 R13 K9 ["OnAssetDrag"]
       35 CALL                             R11 2 1
       36 GETTABLEKS                       R12 R10 K14 ["id"]
       38 SETTABLE                         R11 R5 R12
       39 FORGLOOP                         R6 2 ; [-33]
       41 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["dispatchSetRecentViewToggled"]
        5 GETTABLEKS                       R6 R3 K2 ["RecentViewToggled"]
        7 NOT                              R5 R6
        8 CALL                             R4 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 LOADK                            R3 K2 ["PointingHand"]
        6 NAMECALL                         R1 R1 K3 ["__pushCursor"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Mouse"]
        5 NAMECALL                         R1 R1 K2 ["__popCursor"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
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
       22 GETTABLEKS                       R10 R3 K11 ["Bar"]
       24 GETTABLEKS                       R10 R10 K12 ["Arrow"]
       26 GETTABLEKS                       R10 R10 K13 ["Expanded"]
       28 JUMPIF                           R10 ; [+6]
       29 GETTABLEKS                       R10 R3 K11 ["Bar"]
       31 GETTABLEKS                       R10 R10 K12 ["Arrow"]
       33 GETTABLEKS                       R10 R10 K14 ["Collapsed"]
       35 GETTABLEKS                       R11 R1 K15 ["RecentAssets"]
       37 GETTABLEKS                       R12 R1 K16 ["SelectedAssets"]
       39 MOVE                             R15 R2
       40 MOVE                             R16 R11
       41 MOVE                             R17 R12
       42 MOVE                             R18 R7
       43 NAMECALL                         R13 R0 K17 ["createListItems"]
       45 CALL                             R13 5 1
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R14 R14 K18 ["new"]
       49 CALL                             R14 0 1
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K19 ["createElement"]
       53 LOADK                            R16 K20 ["Frame"]
       54 DUPTABLE                         R17 K25 [{["Size"], ["LayoutOrder"], ["ZIndex"] = 2, ["BackgroundTransparency"] = 1}]
       55 SETTABLEKS                       R5 R17 K4 ["Size"]
       57 SETTABLEKS                       R6 R17 K5 ["LayoutOrder"]
       59 DUPTABLE                         R18 K29 [{"RecentlyImportedViewLayout", "RecentlyImportedViewBar", "RecentlyImportedViewScrollingFrame"}]
       60 GETUPVAL                         R19 1
       61 GETTABLEKS                       R19 R19 K19 ["createElement"]
       63 LOADK                            R20 K30 ["UIListLayout"]
       64 DUPTABLE                         R21 K34 [{"Padding", "FillDirection", "SortOrder"}]
       65 GETIMPORT                        R22 K36 [UDim.new]
       67 LOADN                            R23 0
       68 LOADN                            R24 0
       69 CALL                             R22 2 1
       70 SETTABLEKS                       R22 R21 K31 ["Padding"]
       72 GETIMPORT                        R22 K39 [Enum.FillDirection.Vertical]
       74 SETTABLEKS                       R22 R21 K32 ["FillDirection"]
       76 GETIMPORT                        R22 K40 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R22 R21 K33 ["SortOrder"]
       80 CALL                             R19 2 1
       81 SETTABLEKS                       R19 R18 K26 ["RecentlyImportedViewLayout"]
       83 GETUPVAL                         R19 1
       84 GETTABLEKS                       R19 R19 K19 ["createElement"]
       86 LOADK                            R20 K41 ["ImageButton"]
       87 NEWTABLE                         R21 16 0
       89 GETIMPORT                        R22 K43 [UDim2.new]
       91 LOADN                            R23 1
       92 LOADN                            R24 0
       93 LOADN                            R25 0
       94 GETTABLEKS                       R26 R3 K11 ["Bar"]
       96 GETTABLEKS                       R26 R26 K44 ["Height"]
       98 CALL                             R22 4 1
       99 SETTABLEKS                       R22 R21 K4 ["Size"]
      101 NAMECALL                         R22 R14 K45 ["getNextOrder"]
      103 CALL                             R22 1 1
      104 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      106 LOADN                            R22 100
      107 SETTABLEKS                       R22 R21 K21 ["ZIndex"]
      109 GETTABLEKS                       R22 R3 K11 ["Bar"]
      111 GETTABLEKS                       R22 R22 K46 ["BackgroundColor"]
      113 SETTABLEKS                       R22 R21 K47 ["BackgroundColor3"]
      115 GETTABLEKS                       R22 R2 K48 ["BorderColor"]
      117 SETTABLEKS                       R22 R21 K49 ["BorderColor3"]
      119 LOADN                            R22 1
      120 SETTABLEKS                       R22 R21 K50 ["BorderSizePixel"]
      122 GETUPVAL                         R22 1
      123 GETTABLEKS                       R22 R22 K51 ["Event"]
      125 GETTABLEKS                       R22 R22 K52 ["Activated"]
      127 GETTABLEKS                       R23 R0 K53 ["onMouseActivated"]
      129 SETTABLE                         R23 R21 R22
      130 GETUPVAL                         R22 1
      131 GETTABLEKS                       R22 R22 K51 ["Event"]
      133 GETTABLEKS                       R22 R22 K54 ["MouseEnter"]
      135 GETTABLEKS                       R23 R0 K55 ["mouseEnter"]
      137 SETTABLE                         R23 R21 R22
      138 GETUPVAL                         R22 1
      139 GETTABLEKS                       R22 R22 K51 ["Event"]
      141 GETTABLEKS                       R22 R22 K56 ["mouseLeave"]
      143 GETTABLEKS                       R23 R0 K56 ["mouseLeave"]
      145 SETTABLE                         R23 R21 R22
      146 DUPTABLE                         R22 K61 [{"RecentlyImportedViewBarLayout", "GameBarPadding", "RecentlyImportedViewBarText", "CollapseImageFrame"}]
      147 GETUPVAL                         R23 1
      148 GETTABLEKS                       R23 R23 K19 ["createElement"]
      150 LOADK                            R24 K30 ["UIListLayout"]
      151 DUPTABLE                         R25 K34 [{"Padding", "FillDirection", "SortOrder"}]
      152 GETIMPORT                        R26 K36 [UDim.new]
      154 LOADN                            R27 0
      155 GETTABLEKS                       R28 R3 K11 ["Bar"]
      157 GETTABLEKS                       R28 R28 K31 ["Padding"]
      159 CALL                             R26 2 1
      160 SETTABLEKS                       R26 R25 K31 ["Padding"]
      162 GETIMPORT                        R26 K63 [Enum.FillDirection.Horizontal]
      164 SETTABLEKS                       R26 R25 K32 ["FillDirection"]
      166 GETIMPORT                        R26 K40 [Enum.SortOrder.LayoutOrder]
      168 SETTABLEKS                       R26 R25 K33 ["SortOrder"]
      170 CALL                             R23 2 1
      171 SETTABLEKS                       R23 R22 K57 ["RecentlyImportedViewBarLayout"]
      173 GETUPVAL                         R23 1
      174 GETTABLEKS                       R23 R23 K19 ["createElement"]
      176 LOADK                            R24 K64 ["UIPadding"]
      177 DUPTABLE                         R25 K66 [{"PaddingLeft"}]
      178 GETIMPORT                        R26 K36 [UDim.new]
      180 LOADN                            R27 0
      181 GETTABLEKS                       R28 R3 K11 ["Bar"]
      183 GETTABLEKS                       R28 R28 K31 ["Padding"]
      185 CALL                             R26 2 1
      186 SETTABLEKS                       R26 R25 K65 ["PaddingLeft"]
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R22 K58 ["GameBarPadding"]
      191 GETUPVAL                         R23 1
      192 GETTABLEKS                       R23 R23 K19 ["createElement"]
      194 LOADK                            R24 K67 ["TextLabel"]
      195 DUPTABLE                         R25 K74 [{["Size"], ["LayoutOrder"] = 0, ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["TextSize"], ["Font"], ["TextXAlignment"]}]
      196 GETIMPORT                        R26 K43 [UDim2.new]
      198 LOADN                            R27 1
      199 GETTABLEKS                       R30 R3 K11 ["Bar"]
      201 GETTABLEKS                       R30 R30 K75 ["Button"]
      203 GETTABLEKS                       R30 R30 K4 ["Size"]
      205 MINUS                            R29 R30
      206 GETTABLEKS                       R30 R3 K11 ["Bar"]
      208 GETTABLEKS                       R30 R30 K31 ["Padding"]
      210 SUB                              R28 R29 R30
      211 LOADN                            R29 1
      212 LOADN                            R30 0
      213 CALL                             R26 4 1
      214 SETTABLEKS                       R26 R25 K4 ["Size"]
      216 SETTABLEKS                       R8 R25 K69 ["Text"]
      218 GETTABLEKS                       R26 R2 K76 ["TextColor"]
      220 SETTABLEKS                       R26 R25 K70 ["TextColor3"]
      222 GETTABLEKS                       R26 R2 K77 ["FontSizeSmall"]
      224 SETTABLEKS                       R26 R25 K71 ["TextSize"]
      226 GETTABLEKS                       R26 R2 K72 ["Font"]
      228 SETTABLEKS                       R26 R25 K72 ["Font"]
      230 GETIMPORT                        R26 K79 [Enum.TextXAlignment.Left]
      232 SETTABLEKS                       R26 R25 K73 ["TextXAlignment"]
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K59 ["RecentlyImportedViewBarText"]
      237 GETUPVAL                         R23 1
      238 GETTABLEKS                       R23 R23 K19 ["createElement"]
      240 LOADK                            R24 K20 ["Frame"]
      241 DUPTABLE                         R25 K80 [{["Size"], ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1}]
      242 GETIMPORT                        R26 K43 [UDim2.new]
      244 LOADN                            R27 0
      245 GETTABLEKS                       R28 R3 K11 ["Bar"]
      247 GETTABLEKS                       R28 R28 K75 ["Button"]
      249 GETTABLEKS                       R28 R28 K4 ["Size"]
      251 LOADN                            R29 0
      252 GETTABLEKS                       R30 R3 K11 ["Bar"]
      254 GETTABLEKS                       R30 R30 K75 ["Button"]
      256 GETTABLEKS                       R30 R30 K4 ["Size"]
      258 CALL                             R26 4 1
      259 SETTABLEKS                       R26 R25 K4 ["Size"]
      261 DUPTABLE                         R26 K82 [{"CollapseArrow"}]
      262 GETUPVAL                         R27 1
      263 GETTABLEKS                       R27 R27 K19 ["createElement"]
      265 LOADK                            R28 K83 ["ImageLabel"]
      266 GETUPVAL                         R29 2
      267 GETTABLEKS                       R29 R29 K84 ["Dictionary"]
      269 GETTABLEKS                       R29 R29 K85 ["join"]
      271 MOVE                             R30 R10
      272 DUPTABLE                         R31 K89 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["ImageColor3"]}]
      273 GETIMPORT                        R32 K43 [UDim2.new]
      275 LOADN                            R33 0
      276 GETTABLEKS                       R34 R3 K11 ["Bar"]
      278 GETTABLEKS                       R34 R34 K12 ["Arrow"]
      280 GETTABLEKS                       R34 R34 K4 ["Size"]
      282 LOADN                            R35 0
      283 GETTABLEKS                       R36 R3 K11 ["Bar"]
      285 GETTABLEKS                       R36 R36 K12 ["Arrow"]
      287 GETTABLEKS                       R36 R36 K4 ["Size"]
      289 CALL                             R32 4 1
      290 SETTABLEKS                       R32 R31 K4 ["Size"]
      292 GETIMPORT                        R32 K91 [Vector2.new]
      294 LOADN                            R33 0
      295 LOADK                            R34 K92 [0.5]
      296 CALL                             R32 2 1
      297 SETTABLEKS                       R32 R31 K86 ["AnchorPoint"]
      299 GETIMPORT                        R32 K43 [UDim2.new]
      301 LOADN                            R33 0
      302 LOADN                            R34 0
      303 LOADK                            R35 K92 [0.5]
      304 LOADN                            R36 0
      305 CALL                             R32 4 1
      306 SETTABLEKS                       R32 R31 K87 ["Position"]
      308 GETTABLEKS                       R32 R3 K11 ["Bar"]
      310 GETTABLEKS                       R32 R32 K12 ["Arrow"]
      312 GETTABLEKS                       R32 R32 K93 ["Color"]
      314 SETTABLEKS                       R32 R31 K88 ["ImageColor3"]
      316 CALL                             R29 2 -1
      317 CALL                             R27 -1 1
      318 SETTABLEKS                       R27 R26 K81 ["CollapseArrow"]
      320 CALL                             R23 3 1
      321 SETTABLEKS                       R23 R22 K60 ["CollapseImageFrame"]
      323 CALL                             R19 3 1
      324 SETTABLEKS                       R19 R18 K27 ["RecentlyImportedViewBar"]
      326 GETUPVAL                         R19 1
      327 GETTABLEKS                       R19 R19 K19 ["createElement"]
      329 GETUPVAL                         R20 3
      330 DUPTABLE                         R21 K95 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["AutoSizeLayoutOptions"]}]
      331 GETIMPORT                        R22 K43 [UDim2.new]
      333 LOADN                            R23 1
      334 LOADN                            R24 0
      335 JUMPIFNOT                        R9 ; [+2]
      336 LOADN                            R25 1
      337 JUMP                             ; [+1]
      338 LOADN                            R25 0
      339 JUMPIFNOT                        R9 ; [+6]
      340 GETTABLEKS                       R27 R3 K11 ["Bar"]
      342 GETTABLEKS                       R27 R27 K44 ["Height"]
      344 MINUS                            R26 R27
      345 JUMPIF                           R26 ; [+1]
      346 LOADN                            R26 0
      347 CALL                             R22 4 1
      348 SETTABLEKS                       R22 R21 K4 ["Size"]
      350 NAMECALL                         R22 R14 K45 ["getNextOrder"]
      352 CALL                             R22 1 1
      353 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      355 DUPTABLE                         R22 K96 [{"SortOrder"}]
      356 GETIMPORT                        R23 K40 [Enum.SortOrder.LayoutOrder]
      358 SETTABLEKS                       R23 R22 K33 ["SortOrder"]
      360 SETTABLEKS                       R22 R21 K94 ["AutoSizeLayoutOptions"]
      362 MOVE                             R22 R13
      363 CALL                             R19 3 1
      364 SETTABLEKS                       R19 R18 K28 ["RecentlyImportedViewScrollingFrame"]
      366 CALL                             R15 3 -1
      367 RETURN                           R15 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["InsertAsset"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Roact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["RoactRodux"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["Packages"]
       41 GETTABLEKS                       R6 R6 K10 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K12 ["withContext"]
       48 GETTABLEKS                       R8 R2 K13 ["Context"]
       50 GETTABLEKS                       R8 R8 K14 ["InsertAssetContext"]
       52 GETTABLEKS                       R9 R5 K15 ["UI"]
       54 GETTABLEKS                       R10 R9 K16 ["ScrollingFrame"]
       56 GETTABLEKS                       R11 R5 K17 ["Util"]
       58 GETTABLEKS                       R12 R11 K18 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R13 R11 K19 ["StyleModifier"]
       62 GETIMPORT                        R14 K4 [require]
       64 GETTABLEKS                       R15 R0 K20 ["Src"]
       66 GETTABLEKS                       R15 R15 K21 ["Components"]
       68 GETTABLEKS                       R15 R15 K22 ["ListItem"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R16 R0 K20 ["Src"]
       75 GETTABLEKS                       R16 R16 K23 ["Actions"]
       77 GETTABLEKS                       R16 R16 K24 ["SetRecentViewToggled"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K4 [require]
       82 GETTABLEKS                       R17 R0 K20 ["Src"]
       84 GETTABLEKS                       R17 R17 K25 ["Thunks"]
       86 GETTABLEKS                       R17 R17 K26 ["OnAssetDrag"]
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
