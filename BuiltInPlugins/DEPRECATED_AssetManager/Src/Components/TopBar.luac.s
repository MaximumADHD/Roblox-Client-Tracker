PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnOverlayActivated"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Analytics"]
        5 LOADK                            R4 K2 ["search"]
        6 NAMECALL                         R2 R2 K3 ["report"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["dispatchSetSearchTerm"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{[1] = False}]
        2 NAMECALL                         R2 R2 K3 ["setState"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["OnTreeViewButtonActivated"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["OnSearchRequested"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["OnSelectSortItem"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["OnOpenSortDropdown"]
       19 NEWCLOSURE                       R1 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K8 ["OnCloseSortDropdown"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnTreeViewButtonActivated"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R0 4
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R0 4
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K0 ["clickBulkImportButton"]
        6 NAMECALL                         R0 R0 K1 ["report"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 3
       10 LOADN                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ShowBulkImportView"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Key"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GRID"]
        6 GETTABLEKS                       R1 R1 K0 ["Key"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["LIST"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["Key"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K2 ["LIST"]
       22 GETTABLEKS                       R1 R1 K0 ["Key"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+6]
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K1 ["GRID"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnOpenSortDropdown"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Analytics"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["TopBar"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["Enabled"]
       16 GETTABLEKS                       R9 R1 K8 ["RecentViewToggled"]
       18 GETTABLEKS                       R10 R1 K9 ["dispatchSetRecentViewToggled"]
       20 GETTABLEKS                       R11 R1 K10 ["CurrentScreen"]
       22 GETTABLEKS                       R12 R1 K11 ["PreviousScreens"]
       24 GETTABLEKS                       R13 R1 K12 ["NextScreens"]
       26 GETTABLEKS                       R14 R1 K13 ["dispatchSetToPreviousScreen"]
       28 GETTABLEKS                       R15 R1 K14 ["dispatchSetToNextScreen"]
       30 LENGTH                           R17 R12
       31 LOADN                            R18 0
       32 JUMPIFLT                         R18 R17 ; [+2]
       34 LOADB                            R16 0 +1
       35 LOADB                            R16 1
       36 LENGTH                           R18 R13
       37 LOADN                            R19 0
       38 JUMPIFLT                         R19 R18 ; [+2]
       40 LOADB                            R17 0 +1
       41 LOADB                            R17 1
       42 GETTABLEKS                       R18 R1 K15 ["BulkImporterRunning"]
       44 GETTABLEKS                       R19 R1 K16 ["dispatchLaunchBulkImporter"]
       46 LOADK                            R22 K17 ["BulkImport"]
       47 LOADK                            R23 K18 ["BulkImportRunning"]
       48 NAMECALL                         R20 R5 K19 ["getText"]
       50 CALL                             R20 3 1
       51 LOADK                            R23 K17 ["BulkImport"]
       52 LOADK                            R24 K20 ["BulkImportShowLink"]
       53 NAMECALL                         R21 R5 K19 ["getText"]
       55 CALL                             R21 3 1
       56 GETUPVAL                         R22 0
       57 MOVE                             R23 R20
       58 GETTABLEKS                       R24 R4 K21 ["Tooltip"]
       60 GETTABLEKS                       R24 R24 K22 ["TextSize"]
       62 GETTABLEKS                       R25 R3 K23 ["Font"]
       64 GETIMPORT                        R26 K26 [Vector2.new]
       66 GETTABLEKS                       R27 R4 K21 ["Tooltip"]
       68 GETTABLEKS                       R27 R27 K27 ["Width"]
       70 LOADK                            R28 K28 [∞]
       71 CALL                             R26 2 -1
       72 CALL                             R22 -1 1
       73 GETUPVAL                         R23 0
       74 MOVE                             R24 R21
       75 GETTABLEKS                       R25 R4 K21 ["Tooltip"]
       77 GETTABLEKS                       R25 R25 K22 ["TextSize"]
       79 GETTABLEKS                       R26 R3 K23 ["Font"]
       81 GETIMPORT                        R27 K26 [Vector2.new]
       83 GETTABLEKS                       R28 R4 K21 ["Tooltip"]
       85 GETTABLEKS                       R28 R28 K27 ["Width"]
       87 LOADK                            R29 K28 [∞]
       88 CALL                             R27 2 -1
       89 CALL                             R23 -1 1
       90 GETTABLEKS                       R26 R22 K29 ["Y"]
       92 GETTABLEKS                       R27 R4 K21 ["Tooltip"]
       94 GETTABLEKS                       R27 R27 K30 ["Padding"]
       96 ADD                              R25 R26 R27
       97 GETTABLEKS                       R26 R23 K29 ["Y"]
       99 ADD                              R24 R25 R26
      100 GETTABLEKS                       R25 R1 K31 ["View"]
      102 GETTABLEKS                       R26 R1 K32 ["dispatchSetView"]
      104 LOADNIL                          R27
      105 GETTABLEKS                       R28 R25 K33 ["Key"]
      107 GETUPVAL                         R29 1
      108 GETTABLEKS                       R29 R29 K34 ["GRID"]
      110 GETTABLEKS                       R29 R29 K33 ["Key"]
      112 JUMPIFNOTEQ                      R28 R29 ; [+3]
      114 LOADK                            R27 K35 ["ListViewButton"]
      115 JUMP                             ; [+10]
      116 GETTABLEKS                       R28 R25 K33 ["Key"]
      118 GETUPVAL                         R29 1
      119 GETTABLEKS                       R29 R29 K36 ["LIST"]
      121 GETTABLEKS                       R29 R29 K33 ["Key"]
      123 JUMPIFNOTEQ                      R28 R29 ; [+2]
      125 LOADK                            R27 K37 ["GridViewButton"]
      126 LOADNIL                          R28
      127 GETUPVAL                         R29 2
      128 JUMPIFNOT                        R29 ; [+10]
      129 GETTABLEKS                       R30 R4 K39 ["Button"]
      131 GETTABLEKS                       R30 R30 K5 ["Size"]
      133 MULK                             R29 R30 K38 [6]
      134 GETTABLEKS                       R31 R4 K30 ["Padding"]
      136 MULK                             R30 R31 K40 [2]
      137 ADD                              R28 R29 R30
      138 JUMP                             ; [+9]
      139 GETTABLEKS                       R30 R4 K39 ["Button"]
      141 GETTABLEKS                       R30 R30 K5 ["Size"]
      143 MULK                             R29 R30 K41 [5]
      144 GETTABLEKS                       R31 R4 K30 ["Padding"]
      146 MULK                             R30 R31 K42 [4]
      147 ADD                              R28 R29 R30
      148 LOADNIL                          R29
      149 LOADNIL                          R30
      150 GETUPVAL                         R31 3
      151 JUMPIFNOT                        R31 ; [+32]
      152 LOADB                            R29 1
      153 GETTABLEKS                       R31 R11 K43 ["Path"]
      155 GETUPVAL                         R32 4
      156 GETTABLEKS                       R32 R32 K44 ["MAIN"]
      158 GETTABLEKS                       R32 R32 K43 ["Path"]
      160 JUMPIFEQ                         R31 R32 ; [+16]
      162 LOADK                            R36 K45 ["SearchBar"]
      163 LOADK                            R37 K46 ["PlaceholderText"]
      164 NAMECALL                         R34 R5 K19 ["getText"]
      166 CALL                             R34 3 1
      167 MOVE                             R31 R34
      168 LOADK                            R32 K47 [" "]
      169 LOADK                            R35 K48 ["Folders"]
      170 GETTABLEKS                       R36 R11 K43 ["Path"]
      172 NAMECALL                         R33 R5 K19 ["getText"]
      174 CALL                             R33 3 1
      175 CONCAT                           R30 R31 R33
      176 JUMP                             ; [+32]
      177 LOADK                            R33 K45 ["SearchBar"]
      178 LOADK                            R34 K49 ["GlobalPlaceholderText"]
      179 NAMECALL                         R31 R5 K19 ["getText"]
      181 CALL                             R31 3 1
      182 MOVE                             R30 R31
      183 JUMP                             ; [+25]
      184 GETTABLEKS                       R31 R11 K43 ["Path"]
      186 GETUPVAL                         R32 4
      187 GETTABLEKS                       R32 R32 K44 ["MAIN"]
      189 GETTABLEKS                       R32 R32 K43 ["Path"]
      191 JUMPIFNOTEQ                      R31 R32 ; [+2]
      193 LOADB                            R29 0 +1
      194 LOADB                            R29 1
      195 LOADK                            R36 K45 ["SearchBar"]
      196 LOADK                            R37 K46 ["PlaceholderText"]
      197 NAMECALL                         R34 R5 K19 ["getText"]
      199 CALL                             R34 3 1
      200 MOVE                             R31 R34
      201 LOADK                            R32 K47 [" "]
      202 LOADK                            R35 K48 ["Folders"]
      203 GETTABLEKS                       R36 R11 K43 ["Path"]
      205 NAMECALL                         R33 R5 K19 ["getText"]
      207 CALL                             R33 3 1
      208 CONCAT                           R30 R31 R33
      209 GETUPVAL                         R31 5
      210 GETTABLEKS                       R31 R31 K25 ["new"]
      212 CALL                             R31 0 1
      213 LOADK                            R34 K3 ["TopBar"]
      214 LOADK                            R35 K50 ["ExplorerOverlayButton"]
      215 NAMECALL                         R32 R5 K19 ["getText"]
      217 CALL                             R32 3 1
      218 LOADK                            R35 K3 ["TopBar"]
      219 LOADK                            R36 K51 ["BackButton"]
      220 NAMECALL                         R33 R5 K19 ["getText"]
      222 CALL                             R33 3 1
      223 LOADK                            R36 K3 ["TopBar"]
      224 LOADK                            R37 K52 ["ForwardButton"]
      225 NAMECALL                         R34 R5 K19 ["getText"]
      227 CALL                             R34 3 1
      228 LOADK                            R37 K3 ["TopBar"]
      229 LOADK                            R38 K53 ["BulkImportButton"]
      230 NAMECALL                         R35 R5 K19 ["getText"]
      232 CALL                             R35 3 1
      233 LOADNIL                          R36
      234 GETTABLEKS                       R37 R25 K33 ["Key"]
      236 GETUPVAL                         R38 1
      237 GETTABLEKS                       R38 R38 K34 ["GRID"]
      239 GETTABLEKS                       R38 R38 K33 ["Key"]
      241 JUMPIFNOTEQ                      R37 R38 ; [+8]
      243 LOADK                            R39 K3 ["TopBar"]
      244 LOADK                            R40 K35 ["ListViewButton"]
      245 NAMECALL                         R37 R5 K19 ["getText"]
      247 CALL                             R37 3 1
      248 MOVE                             R36 R37
      249 JUMP                             ; [+15]
      250 GETTABLEKS                       R37 R25 K33 ["Key"]
      252 GETUPVAL                         R38 1
      253 GETTABLEKS                       R38 R38 K36 ["LIST"]
      255 GETTABLEKS                       R38 R38 K33 ["Key"]
      257 JUMPIFNOTEQ                      R37 R38 ; [+7]
      259 LOADK                            R39 K3 ["TopBar"]
      260 LOADK                            R40 K37 ["GridViewButton"]
      261 NAMECALL                         R37 R5 K19 ["getText"]
      263 CALL                             R37 3 1
      264 MOVE                             R36 R37
      265 LOADNIL                          R37
      266 LOADNIL                          R38
      267 LOADNIL                          R39
      268 LOADNIL                          R40
      269 LOADNIL                          R41
      270 GETUPVAL                         R42 2
      271 JUMPIFNOT                        R42 ; [+30]
      272 LOADK                            R44 K3 ["TopBar"]
      273 LOADK                            R45 K54 ["SortButton"]
      274 NAMECALL                         R42 R5 K19 ["getText"]
      276 CALL                             R42 3 1
      277 MOVE                             R37 R42
      278 LOADK                            R44 K55 ["SortOption"]
      279 LOADK                            R45 K56 ["RecentlyAdded"]
      280 NAMECALL                         R42 R5 K19 ["getText"]
      282 CALL                             R42 3 1
      283 MOVE                             R38 R42
      284 LOADK                            R44 K55 ["SortOption"]
      285 LOADK                            R45 K57 ["RecentlyUsed"]
      286 NAMECALL                         R42 R5 K19 ["getText"]
      288 CALL                             R42 3 1
      289 MOVE                             R39 R42
      290 LOADK                            R44 K55 ["SortOption"]
      291 LOADK                            R45 K58 ["AscendingName"]
      292 NAMECALL                         R42 R5 K19 ["getText"]
      294 CALL                             R42 3 1
      295 MOVE                             R40 R42
      296 LOADK                            R44 K55 ["SortOption"]
      297 LOADK                            R45 K59 ["DescendingName"]
      298 NAMECALL                         R42 R5 K19 ["getText"]
      300 CALL                             R42 3 1
      301 MOVE                             R41 R42
      302 GETUPVAL                         R42 6
      303 GETTABLEKS                       R42 R42 K60 ["createElement"]
      305 LOADK                            R43 K61 ["Frame"]
      306 DUPTABLE                         R44 K66 [{["Size"], ["LayoutOrder"], ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1}]
      307 SETTABLEKS                       R6 R44 K5 ["Size"]
      309 SETTABLEKS                       R7 R44 K6 ["LayoutOrder"]
      311 GETTABLEKS                       R45 R3 K67 ["BackgroundColor"]
      313 SETTABLEKS                       R45 R44 K62 ["BackgroundColor3"]
      315 GETTABLEKS                       R45 R3 K68 ["BorderColor"]
      317 SETTABLEKS                       R45 R44 K63 ["BorderColor3"]
      319 DUPTABLE                         R45 K74 [{"TopBarLayout", "Padding", "ExplorerOverlayButton", "NavigationButtonsFrame", "BulkImporterButton", "GridListToggleButton", "SearchBar", "SearchSortFrame"}]
      320 GETUPVAL                         R46 6
      321 GETTABLEKS                       R46 R46 K60 ["createElement"]
      323 LOADK                            R47 K75 ["UIListLayout"]
      324 DUPTABLE                         R48 K79 [{"Padding", "FillDirection", "VerticalAlignment", "SortOrder"}]
      325 GETIMPORT                        R49 K81 [UDim.new]
      327 LOADN                            R50 0
      328 GETTABLEKS                       R51 R4 K30 ["Padding"]
      330 CALL                             R49 2 1
      331 SETTABLEKS                       R49 R48 K30 ["Padding"]
      333 GETIMPORT                        R49 K84 [Enum.FillDirection.Horizontal]
      335 SETTABLEKS                       R49 R48 K76 ["FillDirection"]
      337 GETIMPORT                        R49 K86 [Enum.VerticalAlignment.Center]
      339 SETTABLEKS                       R49 R48 K77 ["VerticalAlignment"]
      341 GETIMPORT                        R49 K87 [Enum.SortOrder.LayoutOrder]
      343 SETTABLEKS                       R49 R48 K78 ["SortOrder"]
      345 CALL                             R46 2 1
      346 SETTABLEKS                       R46 R45 K69 ["TopBarLayout"]
      348 GETUPVAL                         R46 6
      349 GETTABLEKS                       R46 R46 K60 ["createElement"]
      351 LOADK                            R47 K88 ["UIPadding"]
      352 DUPTABLE                         R48 K91 [{"PaddingLeft", "PaddingRight"}]
      353 GETIMPORT                        R49 K81 [UDim.new]
      355 LOADN                            R50 0
      356 GETTABLEKS                       R51 R4 K30 ["Padding"]
      358 CALL                             R49 2 1
      359 SETTABLEKS                       R49 R48 K89 ["PaddingLeft"]
      361 GETIMPORT                        R49 K81 [UDim.new]
      363 LOADN                            R50 0
      364 GETTABLEKS                       R51 R4 K30 ["Padding"]
      366 CALL                             R49 2 1
      367 SETTABLEKS                       R49 R48 K90 ["PaddingRight"]
      369 CALL                             R46 2 1
      370 SETTABLEKS                       R46 R45 K30 ["Padding"]
      372 GETUPVAL                         R46 6
      373 GETTABLEKS                       R46 R46 K60 ["createElement"]
      375 GETUPVAL                         R47 7
      376 DUPTABLE                         R48 K96 [{["Size"], ["AnchorPoint"], ["LayoutOrder"], ["Style"] = "OverlayButton", ["OnClick"]}]
      377 GETIMPORT                        R49 K98 [UDim2.new]
      379 LOADN                            R50 0
      380 GETTABLEKS                       R51 R4 K39 ["Button"]
      382 GETTABLEKS                       R51 R51 K5 ["Size"]
      384 LOADN                            R52 0
      385 GETTABLEKS                       R53 R4 K39 ["Button"]
      387 GETTABLEKS                       R53 R53 K5 ["Size"]
      389 CALL                             R49 4 1
      390 SETTABLEKS                       R49 R48 K5 ["Size"]
      392 GETIMPORT                        R49 K26 [Vector2.new]
      394 LOADK                            R50 K99 [0.5]
      395 LOADK                            R51 K99 [0.5]
      396 CALL                             R49 2 1
      397 SETTABLEKS                       R49 R48 K92 ["AnchorPoint"]
      399 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      401 CALL                             R49 1 1
      402 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      404 NEWCLOSURE                       R49 P0
      405 CAPTURE                          VAL R8
      406 CAPTURE                          VAL R0
      407 SETTABLEKS                       R49 R48 K95 ["OnClick"]
      409 DUPTABLE                         R49 K102 [{"HoverArea", "Tooltip"}]
      410 MOVE                             R50 R8
      411 JUMPIFNOT                        R50 ; [+14]
      412 GETUPVAL                         R50 6
      413 GETTABLEKS                       R50 R50 K60 ["createElement"]
      415 GETUPVAL                         R51 8
      416 DUPTABLE                         R52 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      417 GETTABLEKS                       R53 R0 K108 ["mouseEnter"]
      419 SETTABLEKS                       R53 R52 K105 ["MouseEnter"]
      421 GETTABLEKS                       R53 R0 K109 ["mouseLeave"]
      423 SETTABLEKS                       R53 R52 K106 ["MouseLeave"]
      425 CALL                             R50 2 1
      426 SETTABLEKS                       R50 R49 K101 ["HoverArea"]
      428 MOVE                             R50 R8
      429 JUMPIFNOT                        R50 ; [+8]
      430 GETUPVAL                         R50 6
      431 GETTABLEKS                       R50 R50 K60 ["createElement"]
      433 GETUPVAL                         R51 9
      434 DUPTABLE                         R52 K112 [{["Text"], ["Enabled"] = True}]
      435 SETTABLEKS                       R32 R52 K110 ["Text"]
      437 CALL                             R50 2 1
      438 SETTABLEKS                       R50 R49 K21 ["Tooltip"]
      440 CALL                             R46 3 1
      441 SETTABLEKS                       R46 R45 K50 ["ExplorerOverlayButton"]
      443 GETUPVAL                         R46 6
      444 GETTABLEKS                       R46 R46 K60 ["createElement"]
      446 LOADK                            R47 K61 ["Frame"]
      447 DUPTABLE                         R48 K114 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      448 GETIMPORT                        R49 K98 [UDim2.new]
      450 LOADN                            R50 0
      451 LOADN                            R52 2
      452 GETTABLEKS                       R53 R4 K39 ["Button"]
      454 GETTABLEKS                       R53 R53 K5 ["Size"]
      456 MUL                              R51 R52 R53
      457 LOADN                            R52 0
      458 GETTABLEKS                       R53 R4 K39 ["Button"]
      460 GETTABLEKS                       R53 R53 K5 ["Size"]
      462 CALL                             R49 4 1
      463 SETTABLEKS                       R49 R48 K5 ["Size"]
      465 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      467 CALL                             R49 1 1
      468 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      470 DUPTABLE                         R49 K118 [{"ButtonLayout", "PreviousButton", "NextButton"}]
      471 GETUPVAL                         R50 6
      472 GETTABLEKS                       R50 R50 K60 ["createElement"]
      474 LOADK                            R51 K75 ["UIListLayout"]
      475 DUPTABLE                         R52 K119 [{"Padding", "FillDirection", "SortOrder"}]
      476 GETIMPORT                        R53 K81 [UDim.new]
      478 LOADN                            R54 0
      479 LOADN                            R55 0
      480 CALL                             R53 2 1
      481 SETTABLEKS                       R53 R52 K30 ["Padding"]
      483 GETIMPORT                        R53 K84 [Enum.FillDirection.Horizontal]
      485 SETTABLEKS                       R53 R52 K76 ["FillDirection"]
      487 GETIMPORT                        R53 K87 [Enum.SortOrder.LayoutOrder]
      489 SETTABLEKS                       R53 R52 K78 ["SortOrder"]
      491 CALL                             R50 2 1
      492 SETTABLEKS                       R50 R49 K115 ["ButtonLayout"]
      494 GETUPVAL                         R50 6
      495 GETTABLEKS                       R50 R50 K60 ["createElement"]
      497 GETUPVAL                         R51 7
      498 DUPTABLE                         R52 K121 [{["Size"], ["AnchorPoint"], ["LayoutOrder"] = 1, ["Style"] = "PreviousButton", ["StyleModifier"], ["OnClick"]}]
      499 GETIMPORT                        R53 K98 [UDim2.new]
      501 LOADN                            R54 0
      502 GETTABLEKS                       R55 R4 K39 ["Button"]
      504 GETTABLEKS                       R55 R55 K5 ["Size"]
      506 LOADN                            R56 0
      507 GETTABLEKS                       R57 R4 K39 ["Button"]
      509 GETTABLEKS                       R57 R57 K5 ["Size"]
      511 CALL                             R53 4 1
      512 SETTABLEKS                       R53 R52 K5 ["Size"]
      514 GETIMPORT                        R53 K26 [Vector2.new]
      516 LOADK                            R54 K99 [0.5]
      517 LOADK                            R55 K99 [0.5]
      518 CALL                             R53 2 1
      519 SETTABLEKS                       R53 R52 K92 ["AnchorPoint"]
      521 NOT                              R53 R16
      522 JUMPIFNOT                        R53 ; [+3]
      523 GETUPVAL                         R53 10
      524 GETTABLEKS                       R53 R53 K122 ["Disabled"]
      526 SETTABLEKS                       R53 R52 K120 ["StyleModifier"]
      528 NEWCLOSURE                       R53 P1
      529 CAPTURE                          VAL R16
      530 CAPTURE                          VAL R8
      531 CAPTURE                          VAL R14
      532 CAPTURE                          VAL R9
      533 CAPTURE                          VAL R10
      534 SETTABLEKS                       R53 R52 K95 ["OnClick"]
      536 DUPTABLE                         R53 K102 [{"HoverArea", "Tooltip"}]
      537 MOVE                             R54 R16
      538 JUMPIFNOT                        R54 ; [+16]
      539 MOVE                             R54 R8
      540 JUMPIFNOT                        R54 ; [+14]
      541 GETUPVAL                         R54 6
      542 GETTABLEKS                       R54 R54 K60 ["createElement"]
      544 GETUPVAL                         R55 8
      545 DUPTABLE                         R56 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      546 GETTABLEKS                       R57 R0 K108 ["mouseEnter"]
      548 SETTABLEKS                       R57 R56 K105 ["MouseEnter"]
      550 GETTABLEKS                       R57 R0 K109 ["mouseLeave"]
      552 SETTABLEKS                       R57 R56 K106 ["MouseLeave"]
      554 CALL                             R54 2 1
      555 SETTABLEKS                       R54 R53 K101 ["HoverArea"]
      557 MOVE                             R54 R16
      558 JUMPIFNOT                        R54 ; [+10]
      559 MOVE                             R54 R8
      560 JUMPIFNOT                        R54 ; [+8]
      561 GETUPVAL                         R54 6
      562 GETTABLEKS                       R54 R54 K60 ["createElement"]
      564 GETUPVAL                         R55 9
      565 DUPTABLE                         R56 K112 [{["Text"], ["Enabled"] = True}]
      566 SETTABLEKS                       R33 R56 K110 ["Text"]
      568 CALL                             R54 2 1
      569 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
      571 CALL                             R50 3 1
      572 SETTABLEKS                       R50 R49 K116 ["PreviousButton"]
      574 GETUPVAL                         R50 6
      575 GETTABLEKS                       R50 R50 K60 ["createElement"]
      577 GETUPVAL                         R51 7
      578 DUPTABLE                         R52 K123 [{["Size"], ["AnchorPoint"], ["LayoutOrder"] = 2, ["Style"] = "NextButton", ["StyleModifier"], ["OnClick"]}]
      579 GETIMPORT                        R53 K98 [UDim2.new]
      581 LOADN                            R54 0
      582 GETTABLEKS                       R55 R4 K39 ["Button"]
      584 GETTABLEKS                       R55 R55 K5 ["Size"]
      586 LOADN                            R56 0
      587 GETTABLEKS                       R57 R4 K39 ["Button"]
      589 GETTABLEKS                       R57 R57 K5 ["Size"]
      591 CALL                             R53 4 1
      592 SETTABLEKS                       R53 R52 K5 ["Size"]
      594 GETIMPORT                        R53 K26 [Vector2.new]
      596 LOADK                            R54 K99 [0.5]
      597 LOADK                            R55 K99 [0.5]
      598 CALL                             R53 2 1
      599 SETTABLEKS                       R53 R52 K92 ["AnchorPoint"]
      601 NOT                              R53 R17
      602 JUMPIFNOT                        R53 ; [+3]
      603 GETUPVAL                         R53 10
      604 GETTABLEKS                       R53 R53 K122 ["Disabled"]
      606 SETTABLEKS                       R53 R52 K120 ["StyleModifier"]
      608 NEWCLOSURE                       R53 P2
      609 CAPTURE                          VAL R17
      610 CAPTURE                          VAL R8
      611 CAPTURE                          VAL R15
      612 CAPTURE                          VAL R9
      613 CAPTURE                          VAL R10
      614 SETTABLEKS                       R53 R52 K95 ["OnClick"]
      616 DUPTABLE                         R53 K102 [{"HoverArea", "Tooltip"}]
      617 MOVE                             R54 R17
      618 JUMPIFNOT                        R54 ; [+16]
      619 MOVE                             R54 R8
      620 JUMPIFNOT                        R54 ; [+14]
      621 GETUPVAL                         R54 6
      622 GETTABLEKS                       R54 R54 K60 ["createElement"]
      624 GETUPVAL                         R55 8
      625 DUPTABLE                         R56 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      626 GETTABLEKS                       R57 R0 K108 ["mouseEnter"]
      628 SETTABLEKS                       R57 R56 K105 ["MouseEnter"]
      630 GETTABLEKS                       R57 R0 K109 ["mouseLeave"]
      632 SETTABLEKS                       R57 R56 K106 ["MouseLeave"]
      634 CALL                             R54 2 1
      635 SETTABLEKS                       R54 R53 K101 ["HoverArea"]
      637 MOVE                             R54 R17
      638 JUMPIFNOT                        R54 ; [+10]
      639 MOVE                             R54 R8
      640 JUMPIFNOT                        R54 ; [+8]
      641 GETUPVAL                         R54 6
      642 GETTABLEKS                       R54 R54 K60 ["createElement"]
      644 GETUPVAL                         R55 9
      645 DUPTABLE                         R56 K112 [{["Text"], ["Enabled"] = True}]
      646 SETTABLEKS                       R34 R56 K110 ["Text"]
      648 CALL                             R54 2 1
      649 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
      651 CALL                             R50 3 1
      652 SETTABLEKS                       R50 R49 K117 ["NextButton"]
      654 CALL                             R46 3 1
      655 SETTABLEKS                       R46 R45 K70 ["NavigationButtonsFrame"]
      657 GETUPVAL                         R46 6
      658 GETTABLEKS                       R46 R46 K60 ["createElement"]
      660 GETUPVAL                         R47 7
      661 DUPTABLE                         R48 K124 [{["Size"], ["AnchorPoint"], ["LayoutOrder"], ["Style"] = "BulkImporterButton", ["StyleModifier"], ["OnClick"]}]
      662 GETIMPORT                        R49 K98 [UDim2.new]
      664 LOADN                            R50 0
      665 GETTABLEKS                       R51 R4 K39 ["Button"]
      667 GETTABLEKS                       R51 R51 K5 ["Size"]
      669 LOADN                            R52 0
      670 GETTABLEKS                       R53 R4 K39 ["Button"]
      672 GETTABLEKS                       R53 R53 K5 ["Size"]
      674 CALL                             R49 4 1
      675 SETTABLEKS                       R49 R48 K5 ["Size"]
      677 GETIMPORT                        R49 K26 [Vector2.new]
      679 LOADK                            R50 K99 [0.5]
      680 LOADK                            R51 K99 [0.5]
      681 CALL                             R49 2 1
      682 SETTABLEKS                       R49 R48 K92 ["AnchorPoint"]
      684 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      686 CALL                             R49 1 1
      687 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      689 MOVE                             R49 R18
      690 JUMPIFNOT                        R49 ; [+3]
      691 GETUPVAL                         R49 10
      692 GETTABLEKS                       R49 R49 K122 ["Disabled"]
      694 SETTABLEKS                       R49 R48 K120 ["StyleModifier"]
      696 NEWCLOSURE                       R49 P3
      697 CAPTURE                          VAL R18
      698 CAPTURE                          VAL R8
      699 CAPTURE                          VAL R2
      700 CAPTURE                          VAL R19
      701 SETTABLEKS                       R49 R48 K95 ["OnClick"]
      703 DUPTABLE                         R49 K127 [{"OpenBulkImporterTooltip", "HoverArea", "BulkImportButtonTooltip"}]
      704 GETUPVAL                         R50 6
      705 GETTABLEKS                       R50 R50 K60 ["createElement"]
      707 GETUPVAL                         R51 9
      708 DUPTABLE                         R52 K130 [{"Content", "ContentExtents", "Enabled"}]
      709 GETUPVAL                         R53 6
      710 GETTABLEKS                       R53 R53 K60 ["createElement"]
      712 GETUPVAL                         R54 11
      713 DUPTABLE                         R55 K134 [{["Layout"], ["Spacing"], ["Style"] = "Box"}]
      714 GETIMPORT                        R56 K136 [Enum.FillDirection.Vertical]
      716 SETTABLEKS                       R56 R55 K131 ["Layout"]
      718 GETTABLEKS                       R56 R4 K21 ["Tooltip"]
      720 GETTABLEKS                       R56 R56 K30 ["Padding"]
      722 SETTABLEKS                       R56 R55 K132 ["Spacing"]
      724 DUPTABLE                         R56 K139 [{"TextLabel", "LinkText"}]
      725 GETUPVAL                         R57 6
      726 GETTABLEKS                       R57 R57 K60 ["createElement"]
      728 GETUPVAL                         R58 12
      729 DUPTABLE                         R59 K143 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      730 GETIMPORT                        R60 K144 [Enum.AutomaticSize.Y]
      732 SETTABLEKS                       R60 R59 K140 ["AutomaticSize"]
      734 GETTABLEKS                       R60 R3 K23 ["Font"]
      736 SETTABLEKS                       R60 R59 K23 ["Font"]
      738 GETIMPORT                        R60 K146 [UDim2.fromScale]
      740 LOADN                            R61 1
      741 LOADN                            R62 0
      742 CALL                             R60 2 1
      743 SETTABLEKS                       R60 R59 K5 ["Size"]
      745 SETTABLEKS                       R20 R59 K110 ["Text"]
      747 GETTABLEKS                       R60 R4 K21 ["Tooltip"]
      749 GETTABLEKS                       R60 R60 K22 ["TextSize"]
      751 SETTABLEKS                       R60 R59 K22 ["TextSize"]
      753 GETIMPORT                        R60 K148 [Enum.TextXAlignment.Left]
      755 SETTABLEKS                       R60 R59 K142 ["TextXAlignment"]
      757 CALL                             R57 2 1
      758 SETTABLEKS                       R57 R56 K137 ["TextLabel"]
      760 GETUPVAL                         R57 6
      761 GETTABLEKS                       R57 R57 K60 ["createElement"]
      763 GETUPVAL                         R58 13
      764 DUPTABLE                         R59 K150 [{["LayoutOrder"] = 2, ["Style"] = "BulkImporterTooltip", ["Text"], ["OnClick"]}]
      765 SETTABLEKS                       R21 R59 K110 ["Text"]
      767 DUPCLOSURE                       R60 K151 [PROTO_10]
      768 CAPTURE                          UPVAL U14
      769 SETTABLEKS                       R60 R59 K95 ["OnClick"]
      771 CALL                             R57 2 1
      772 SETTABLEKS                       R57 R56 K138 ["LinkText"]
      774 CALL                             R53 3 1
      775 SETTABLEKS                       R53 R52 K128 ["Content"]
      777 GETIMPORT                        R53 K26 [Vector2.new]
      779 GETTABLEKS                       R54 R4 K21 ["Tooltip"]
      781 GETTABLEKS                       R54 R54 K27 ["Width"]
      783 MOVE                             R55 R24
      784 CALL                             R53 2 1
      785 SETTABLEKS                       R53 R52 K129 ["ContentExtents"]
      787 SETTABLEKS                       R18 R52 K7 ["Enabled"]
      789 CALL                             R50 2 1
      790 SETTABLEKS                       R50 R49 K125 ["OpenBulkImporterTooltip"]
      792 NOT                              R50 R18
      793 JUMPIFNOT                        R50 ; [+16]
      794 MOVE                             R50 R8
      795 JUMPIFNOT                        R50 ; [+14]
      796 GETUPVAL                         R50 6
      797 GETTABLEKS                       R50 R50 K60 ["createElement"]
      799 GETUPVAL                         R51 8
      800 DUPTABLE                         R52 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      801 GETTABLEKS                       R53 R0 K108 ["mouseEnter"]
      803 SETTABLEKS                       R53 R52 K105 ["MouseEnter"]
      805 GETTABLEKS                       R53 R0 K109 ["mouseLeave"]
      807 SETTABLEKS                       R53 R52 K106 ["MouseLeave"]
      809 CALL                             R50 2 1
      810 SETTABLEKS                       R50 R49 K101 ["HoverArea"]
      812 NOT                              R50 R18
      813 JUMPIFNOT                        R50 ; [+10]
      814 MOVE                             R50 R8
      815 JUMPIFNOT                        R50 ; [+8]
      816 GETUPVAL                         R50 6
      817 GETTABLEKS                       R50 R50 K60 ["createElement"]
      819 GETUPVAL                         R51 9
      820 DUPTABLE                         R52 K112 [{["Text"], ["Enabled"] = True}]
      821 SETTABLEKS                       R35 R52 K110 ["Text"]
      823 CALL                             R50 2 1
      824 SETTABLEKS                       R50 R49 K126 ["BulkImportButtonTooltip"]
      826 CALL                             R46 3 1
      827 SETTABLEKS                       R46 R45 K71 ["BulkImporterButton"]
      829 GETUPVAL                         R46 6
      830 GETTABLEKS                       R46 R46 K60 ["createElement"]
      832 GETUPVAL                         R47 7
      833 DUPTABLE                         R48 K152 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
      834 GETIMPORT                        R49 K98 [UDim2.new]
      836 LOADN                            R50 0
      837 GETTABLEKS                       R51 R4 K39 ["Button"]
      839 GETTABLEKS                       R51 R51 K5 ["Size"]
      841 LOADN                            R52 0
      842 GETTABLEKS                       R53 R4 K39 ["Button"]
      844 GETTABLEKS                       R53 R53 K5 ["Size"]
      846 CALL                             R49 4 1
      847 SETTABLEKS                       R49 R48 K5 ["Size"]
      849 GETIMPORT                        R49 K26 [Vector2.new]
      851 LOADK                            R50 K99 [0.5]
      852 LOADK                            R51 K99 [0.5]
      853 CALL                             R49 2 1
      854 SETTABLEKS                       R49 R48 K92 ["AnchorPoint"]
      856 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      858 CALL                             R49 1 1
      859 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      861 SETTABLEKS                       R27 R48 K93 ["Style"]
      863 MOVE                             R49 R18
      864 JUMPIFNOT                        R49 ; [+3]
      865 GETUPVAL                         R49 10
      866 GETTABLEKS                       R49 R49 K122 ["Disabled"]
      868 SETTABLEKS                       R49 R48 K120 ["StyleModifier"]
      870 NEWCLOSURE                       R49 P5
      871 CAPTURE                          VAL R25
      872 CAPTURE                          UPVAL U1
      873 CAPTURE                          VAL R26
      874 SETTABLEKS                       R49 R48 K95 ["OnClick"]
      876 DUPTABLE                         R49 K154 [{"HoverArea", "Tooltip", "TeachingCallout"}]
      877 NOT                              R50 R18
      878 JUMPIFNOT                        R50 ; [+16]
      879 MOVE                             R50 R8
      880 JUMPIFNOT                        R50 ; [+14]
      881 GETUPVAL                         R50 6
      882 GETTABLEKS                       R50 R50 K60 ["createElement"]
      884 GETUPVAL                         R51 8
      885 DUPTABLE                         R52 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
      886 GETTABLEKS                       R53 R0 K108 ["mouseEnter"]
      888 SETTABLEKS                       R53 R52 K105 ["MouseEnter"]
      890 GETTABLEKS                       R53 R0 K109 ["mouseLeave"]
      892 SETTABLEKS                       R53 R52 K106 ["MouseLeave"]
      894 CALL                             R50 2 1
      895 SETTABLEKS                       R50 R49 K101 ["HoverArea"]
      897 MOVE                             R50 R8
      898 JUMPIFNOT                        R50 ; [+8]
      899 GETUPVAL                         R50 6
      900 GETTABLEKS                       R50 R50 K60 ["createElement"]
      902 GETUPVAL                         R51 9
      903 DUPTABLE                         R52 K112 [{["Text"], ["Enabled"] = True}]
      904 SETTABLEKS                       R36 R52 K110 ["Text"]
      906 CALL                             R50 2 1
      907 SETTABLEKS                       R50 R49 K21 ["Tooltip"]
      909 GETUPVAL                         R50 15
      910 CALL                             R50 0 1
      911 JUMPIFNOT                        R50 ; [+6]
      912 GETUPVAL                         R50 6
      913 GETTABLEKS                       R50 R50 K60 ["createElement"]
      915 GETUPVAL                         R51 16
      916 DUPTABLE                         R52 K158 [{["DefinitionId"] = "AssetManagerBadgesDevProductCallout", ["LocationId"] = "GridListToggleButton"}]
      917 CALL                             R50 2 1
      918 SETTABLEKS                       R50 R49 K153 ["TeachingCallout"]
      920 CALL                             R46 3 1
      921 SETTABLEKS                       R46 R45 K72 ["GridListToggleButton"]
      923 GETUPVAL                         R47 2
      924 JUMPIF                           R47 ; [+31]
      925 JUMPIFNOT                        R29 ; [+30]
      926 GETUPVAL                         R46 6
      927 GETTABLEKS                       R46 R46 K60 ["createElement"]
      929 GETUPVAL                         R47 17
      930 DUPTABLE                         R48 K167 [{["Size"], ["LayoutOrder"], ["Disabled"], ["Style"] = "Compact", ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["PlaceholderText"], ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 0, ["OnSearchRequested"]}]
      931 GETIMPORT                        R49 K98 [UDim2.new]
      933 LOADN                            R50 1
      934 MINUS                            R51 R28
      935 LOADN                            R52 1
      936 LOADN                            R53 -2
      937 CALL                             R49 4 1
      938 SETTABLEKS                       R49 R48 K5 ["Size"]
      940 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      942 CALL                             R49 1 1
      943 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      945 NOT                              R49 R8
      946 SETTABLEKS                       R49 R48 K122 ["Disabled"]
      948 SETTABLEKS                       R30 R48 K46 ["PlaceholderText"]
      950 GETTABLEKS                       R49 R0 K166 ["OnSearchRequested"]
      952 SETTABLEKS                       R49 R48 K166 ["OnSearchRequested"]
      954 CALL                             R46 2 1
      955 JUMP                             ; [+1]
      956 LOADNIL                          R46
      957 SETTABLEKS                       R46 R45 K45 ["SearchBar"]
      959 GETUPVAL                         R47 2
      960 JUMPIFNOT                        R47 ; [+170]
      961 GETUPVAL                         R46 6
      962 GETTABLEKS                       R46 R46 K60 ["createElement"]
      964 GETUPVAL                         R47 11
      965 DUPTABLE                         R48 K168 [{["Size"], ["BackgroundTransparency"] = 1, ["Layout"], ["LayoutOrder"]}]
      966 GETIMPORT                        R49 K98 [UDim2.new]
      968 LOADN                            R50 1
      969 MINUS                            R51 R28
      970 LOADN                            R52 0
      971 GETTABLEKS                       R53 R4 K39 ["Button"]
      973 GETTABLEKS                       R53 R53 K5 ["Size"]
      975 CALL                             R49 4 1
      976 SETTABLEKS                       R49 R48 K5 ["Size"]
      978 GETIMPORT                        R49 K84 [Enum.FillDirection.Horizontal]
      980 SETTABLEKS                       R49 R48 K131 ["Layout"]
      982 NAMECALL                         R49 R31 K100 ["getNextOrder"]
      984 CALL                             R49 1 1
      985 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      987 DUPTABLE                         R49 K169 [{"SearchBar", "SortButton"}]
      988 MOVE                             R50 R29
      989 JUMPIFNOT                        R50 ; [+28]
      990 GETUPVAL                         R50 6
      991 GETTABLEKS                       R50 R50 K60 ["createElement"]
      993 GETUPVAL                         R51 17
      994 DUPTABLE                         R52 K170 [{["Size"], ["LayoutOrder"] = 1, ["Disabled"], ["Style"] = "Compact", ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["PlaceholderText"], ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 0, ["OnSearchRequested"]}]
      995 GETIMPORT                        R53 K98 [UDim2.new]
      997 LOADN                            R54 1
      998 GETTABLEKS                       R56 R4 K39 ["Button"]
     1000 GETTABLEKS                       R56 R56 K5 ["Size"]
     1002 MINUS                            R55 R56
     1003 LOADN                            R56 1
     1004 LOADN                            R57 -2
     1005 CALL                             R53 4 1
     1006 SETTABLEKS                       R53 R52 K5 ["Size"]
     1008 NOT                              R53 R8
     1009 SETTABLEKS                       R53 R52 K122 ["Disabled"]
     1011 SETTABLEKS                       R30 R52 K46 ["PlaceholderText"]
     1013 GETTABLEKS                       R53 R0 K166 ["OnSearchRequested"]
     1015 SETTABLEKS                       R53 R52 K166 ["OnSearchRequested"]
     1017 CALL                             R50 2 1
     1018 SETTABLEKS                       R50 R49 K45 ["SearchBar"]
     1020 GETUPVAL                         R50 6
     1021 GETTABLEKS                       R50 R50 K60 ["createElement"]
     1023 GETUPVAL                         R51 7
     1024 DUPTABLE                         R52 K171 [{["Size"], ["AnchorPoint"], ["LayoutOrder"] = 2, ["Style"] = "SortButton", ["StyleModifier"], ["OnClick"]}]
     1025 GETIMPORT                        R53 K98 [UDim2.new]
     1027 LOADN                            R54 0
     1028 GETTABLEKS                       R55 R4 K39 ["Button"]
     1030 GETTABLEKS                       R55 R55 K5 ["Size"]
     1032 LOADN                            R56 0
     1033 GETTABLEKS                       R57 R4 K39 ["Button"]
     1035 GETTABLEKS                       R57 R57 K5 ["Size"]
     1037 CALL                             R53 4 1
     1038 SETTABLEKS                       R53 R52 K5 ["Size"]
     1040 GETIMPORT                        R53 K26 [Vector2.new]
     1042 LOADK                            R54 K99 [0.5]
     1043 LOADK                            R55 K99 [0.5]
     1044 CALL                             R53 2 1
     1045 SETTABLEKS                       R53 R52 K92 ["AnchorPoint"]
     1047 GETTABLEKS                       R53 R0 K172 ["state"]
     1049 GETTABLEKS                       R53 R53 K173 ["showSortDropdown"]
     1051 JUMPIFNOT                        R53 ; [+3]
     1052 GETUPVAL                         R53 10
     1053 GETTABLEKS                       R53 R53 K174 ["Selected"]
     1055 SETTABLEKS                       R53 R52 K120 ["StyleModifier"]
     1057 NEWCLOSURE                       R53 P6
     1058 CAPTURE                          VAL R8
     1059 CAPTURE                          VAL R0
     1060 SETTABLEKS                       R53 R52 K95 ["OnClick"]
     1062 DUPTABLE                         R53 K176 [{"Menu", "HoverArea", "Tooltip"}]
     1063 GETUPVAL                         R54 6
     1064 GETTABLEKS                       R54 R54 K60 ["createElement"]
     1066 GETUPVAL                         R55 18
     1067 DUPTABLE                         R56 K181 [{"Hide", "Items", "OnItemActivated", "OnFocusLost"}]
     1068 GETTABLEKS                       R58 R0 K172 ["state"]
     1070 GETTABLEKS                       R58 R58 K173 ["showSortDropdown"]
     1072 NOT                              R57 R58
     1073 SETTABLEKS                       R57 R56 K177 ["Hide"]
     1075 NEWTABLE                         R57 0 4
     1077 MOVE                             R58 R38
     1078 MOVE                             R59 R39
     1079 MOVE                             R60 R40
     1080 MOVE                             R61 R41
     1081 SETLIST                          R57 R58 4 [1]
     1083 SETTABLEKS                       R57 R56 K178 ["Items"]
     1085 GETTABLEKS                       R57 R0 K182 ["OnSelectSortItem"]
     1087 SETTABLEKS                       R57 R56 K179 ["OnItemActivated"]
     1089 GETTABLEKS                       R57 R0 K183 ["OnCloseSortDropdown"]
     1091 SETTABLEKS                       R57 R56 K180 ["OnFocusLost"]
     1093 CALL                             R54 2 1
     1094 SETTABLEKS                       R54 R53 K175 ["Menu"]
     1096 MOVE                             R54 R8
     1097 JUMPIFNOT                        R54 ; [+14]
     1098 GETUPVAL                         R54 6
     1099 GETTABLEKS                       R54 R54 K60 ["createElement"]
     1101 GETUPVAL                         R55 8
     1102 DUPTABLE                         R56 K107 [{["Cursor"] = "PointingHand", ["MouseEnter"], ["MouseLeave"]}]
     1103 GETTABLEKS                       R57 R0 K108 ["mouseEnter"]
     1105 SETTABLEKS                       R57 R56 K105 ["MouseEnter"]
     1107 GETTABLEKS                       R57 R0 K109 ["mouseLeave"]
     1109 SETTABLEKS                       R57 R56 K106 ["MouseLeave"]
     1111 CALL                             R54 2 1
     1112 SETTABLEKS                       R54 R53 K101 ["HoverArea"]
     1114 MOVE                             R54 R8
     1115 JUMPIFNOT                        R54 ; [+8]
     1116 GETUPVAL                         R54 6
     1117 GETTABLEKS                       R54 R54 K60 ["createElement"]
     1119 GETUPVAL                         R55 9
     1120 DUPTABLE                         R56 K112 [{["Text"], ["Enabled"] = True}]
     1121 SETTABLEKS                       R37 R56 K110 ["Text"]
     1123 CALL                             R54 2 1
     1124 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
     1126 CALL                             R50 3 1
     1127 SETTABLEKS                       R50 R49 K54 ["SortButton"]
     1129 CALL                             R46 3 1
     1130 JUMP                             ; [+1]
     1131 LOADNIL                          R46
     1132 SETTABLEKS                       R46 R45 K73 ["SearchSortFrame"]
     1134 CALL                             R42 3 -1
     1135 RETURN                           R42 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["Screen"]
        2 GETTABLEKS                       R2 R2 K1 ["previousScreens"]
        4 GETTABLEKS                       R3 R0 K0 ["Screen"]
        6 GETTABLEKS                       R3 R3 K2 ["nextScreens"]
        8 DUPTABLE                         R4 K9 [{"BulkImporterRunning", "CurrentScreen", "PreviousScreens", "NextScreens", "RecentViewToggled", "View"}]
        9 GETTABLEKS                       R5 R0 K10 ["AssetManagerReducer"]
       11 GETTABLEKS                       R5 R5 K11 ["bulkImporterRunning"]
       13 SETTABLEKS                       R5 R4 K3 ["BulkImporterRunning"]
       15 GETTABLEKS                       R5 R0 K0 ["Screen"]
       17 GETTABLEKS                       R5 R5 K12 ["currentScreen"]
       19 SETTABLEKS                       R5 R4 K4 ["CurrentScreen"]
       21 SETTABLEKS                       R2 R4 K5 ["PreviousScreens"]
       23 SETTABLEKS                       R3 R4 K6 ["NextScreens"]
       25 GETTABLEKS                       R5 R0 K10 ["AssetManagerReducer"]
       27 GETTABLEKS                       R5 R5 K13 ["recentViewToggled"]
       29 SETTABLEKS                       R5 R4 K7 ["RecentViewToggled"]
       31 GETTABLEKS                       R5 R0 K10 ["AssetManagerReducer"]
       33 GETTABLEKS                       R5 R5 K14 ["view"]
       35 SETTABLEKS                       R5 R4 K8 ["View"]
       37 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K6 [{"dispatchLaunchBulkImporter", "dispatchSetRecentViewToggled", "dispatchSetSearchTerm", "dispatchSetToPreviousScreen", "dispatchSetToNextScreen", "dispatchSetView"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchLaunchBulkImporter"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetRecentViewToggled"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchSetSearchTerm"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchSetToPreviousScreen"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchSetToNextScreen"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["dispatchSetView"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["EnableAssetManagerGlobalSearchBar"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["EnableAssetManagerSortButton"]
       18 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K15 ["withContext"]
       46 GETTABLEKS                       R8 R5 K16 ["UI"]
       48 GETTABLEKS                       R9 R8 K17 ["Button"]
       50 GETTABLEKS                       R10 R8 K18 ["DropdownMenu"]
       52 GETTABLEKS                       R11 R8 K19 ["HoverArea"]
       54 GETTABLEKS                       R12 R8 K20 ["LinkText"]
       56 GETTABLEKS                       R13 R8 K21 ["Pane"]
       58 GETTABLEKS                       R14 R8 K22 ["TextLabel"]
       60 GETTABLEKS                       R15 R8 K23 ["Tooltip"]
       62 GETTABLEKS                       R16 R8 K24 ["SearchBar"]
       64 GETTABLEKS                       R17 R5 K25 ["Util"]
       66 GETTABLEKS                       R18 R17 K26 ["LayoutOrderIterator"]
       68 GETTABLEKS                       R19 R17 K27 ["StyleModifier"]
       70 GETTABLEKS                       R20 R17 K28 ["GetTextSize"]
       72 GETIMPORT                        R21 K9 [require]
       74 GETTABLEKS                       R22 R0 K29 ["Src"]
       76 GETTABLEKS                       R22 R22 K30 ["Actions"]
       78 GETTABLEKS                       R22 R22 K31 ["SetRecentViewToggled"]
       80 CALL                             R21 1 1
       81 GETIMPORT                        R22 K9 [require]
       83 GETTABLEKS                       R23 R0 K29 ["Src"]
       85 GETTABLEKS                       R23 R23 K30 ["Actions"]
       87 GETTABLEKS                       R23 R23 K32 ["SetSearchTerm"]
       89 CALL                             R22 1 1
       90 GETIMPORT                        R23 K9 [require]
       92 GETTABLEKS                       R24 R0 K29 ["Src"]
       94 GETTABLEKS                       R24 R24 K30 ["Actions"]
       96 GETTABLEKS                       R24 R24 K33 ["SetToPreviousScreen"]
       98 CALL                             R23 1 1
       99 GETIMPORT                        R24 K9 [require]
      101 GETTABLEKS                       R25 R0 K29 ["Src"]
      103 GETTABLEKS                       R25 R25 K30 ["Actions"]
      105 GETTABLEKS                       R25 R25 K34 ["SetToNextScreen"]
      107 CALL                             R24 1 1
      108 GETIMPORT                        R25 K9 [require]
      110 GETTABLEKS                       R26 R0 K29 ["Src"]
      112 GETTABLEKS                       R26 R26 K30 ["Actions"]
      114 GETTABLEKS                       R26 R26 K35 ["SetView"]
      116 CALL                             R25 1 1
      117 GETIMPORT                        R26 K9 [require]
      119 GETTABLEKS                       R27 R0 K29 ["Src"]
      121 GETTABLEKS                       R27 R27 K36 ["Thunks"]
      123 GETTABLEKS                       R27 R27 K37 ["LaunchBulkImport"]
      125 CALL                             R26 1 1
      126 GETIMPORT                        R27 K9 [require]
      128 GETTABLEKS                       R28 R0 K29 ["Src"]
      130 GETTABLEKS                       R28 R28 K25 ["Util"]
      132 GETTABLEKS                       R28 R28 K38 ["Screens"]
      134 CALL                             R27 1 1
      135 GETIMPORT                        R28 K9 [require]
      137 GETTABLEKS                       R29 R0 K29 ["Src"]
      139 GETTABLEKS                       R29 R29 K25 ["Util"]
      141 GETTABLEKS                       R29 R29 K39 ["View"]
      143 CALL                             R28 1 1
      144 GETIMPORT                        R29 K4 [game]
      146 LOADK                            R31 K40 ["BulkImportService"]
      147 NAMECALL                         R29 R29 K41 ["GetService"]
      149 CALL                             R29 2 1
      150 GETIMPORT                        R30 K9 [require]
      152 GETTABLEKS                       R31 R0 K29 ["Src"]
      154 GETTABLEKS                       R31 R31 K25 ["Util"]
      156 GETTABLEKS                       R31 R31 K42 ["AssetManagerUtilities"]
      158 CALL                             R30 1 1
      159 GETTABLEKS                       R30 R30 K43 ["enableBadgesCallout"]
      161 MOVE                             R32 R30
      162 CALL                             R32 0 1
      163 JUMPIFNOT                        R32 ; [+10]
      164 GETIMPORT                        R31 K9 [require]
      166 GETIMPORT                        R32 K1 [script]
      168 GETTABLEKS                       R32 R32 K2 ["Parent"]
      170 GETTABLEKS                       R32 R32 K44 ["TeachingCallout"]
      172 CALL                             R31 1 1
      173 JUMPIF                           R31 ; [+1]
      174 LOADNIL                          R31
      175 GETTABLEKS                       R32 R3 K45 ["PureComponent"]
      177 LOADK                            R34 K46 ["TopBar"]
      178 NAMECALL                         R32 R32 K47 ["extend"]
      180 CALL                             R32 2 1
      181 DUPCLOSURE                       R33 K48 [PROTO_5]
      182 SETTABLEKS                       R33 R32 K49 ["init"]
      184 DUPCLOSURE                       R33 K50 [PROTO_13]
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R31
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R10
      204 SETTABLEKS                       R33 R32 K51 ["render"]
      206 MOVE                             R33 R7
      207 DUPTABLE                         R34 K55 [{"Analytics", "Localization", "Stylizer"}]
      208 GETTABLEKS                       R35 R6 K52 ["Analytics"]
      210 SETTABLEKS                       R35 R34 K52 ["Analytics"]
      212 GETTABLEKS                       R35 R6 K53 ["Localization"]
      214 SETTABLEKS                       R35 R34 K53 ["Localization"]
      216 GETTABLEKS                       R35 R6 K54 ["Stylizer"]
      218 SETTABLEKS                       R35 R34 K54 ["Stylizer"]
      220 CALL                             R33 1 1
      221 MOVE                             R34 R32
      222 CALL                             R33 1 1
      223 MOVE                             R32 R33
      224 DUPCLOSURE                       R33 K56 [PROTO_14]
      225 DUPCLOSURE                       R34 K57 [PROTO_21]
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R23
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R25
      232 GETTABLEKS                       R35 R4 K58 ["connect"]
      234 MOVE                             R36 R33
      235 MOVE                             R37 R34
      236 CALL                             R35 2 1
      237 MOVE                             R36 R32
      238 CALL                             R35 1 -1
      239 RETURN                           R35 -1
