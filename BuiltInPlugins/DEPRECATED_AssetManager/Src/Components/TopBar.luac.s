PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnOverlayActivated"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        1 DUPTABLE                         R4 K1 [{"showSortDropdown"}]
        2 LOADB                            R5 0
        3 SETTABLEKS                       R5 R4 K0 ["showSortDropdown"]
        5 NAMECALL                         R2 R2 K2 ["setState"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showSortDropdown"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showSortDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showSortDropdown"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showSortDropdown"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"showSortDropdown"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showSortDropdown"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["OnTreeViewButtonActivated"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["OnSearchRequested"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["OnSelectSortItem"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["OnOpenSortDropdown"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["OnCloseSortDropdown"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["OnTreeViewButtonActivated"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Key"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GRID"]
        6 GETTABLEKS                       R1 R2 K0 ["Key"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["LIST"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K0 ["Key"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K2 ["LIST"]
       22 GETTABLEKS                       R1 R2 K0 ["Key"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+6]
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K1 ["GRID"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["OnOpenSortDropdown"]
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
       58 GETTABLEKS                       R25 R4 K21 ["Tooltip"]
       60 GETTABLEKS                       R24 R25 K22 ["TextSize"]
       62 GETTABLEKS                       R25 R3 K23 ["Font"]
       64 GETIMPORT                        R26 K26 [Vector2.new]
       66 GETTABLEKS                       R28 R4 K21 ["Tooltip"]
       68 GETTABLEKS                       R27 R28 K27 ["Width"]
       70 LOADK                            R28 K28 [∞]
       71 CALL                             R26 2 -1
       72 CALL                             R22 -1 1
       73 GETUPVAL                         R23 0
       74 MOVE                             R24 R21
       75 GETTABLEKS                       R26 R4 K21 ["Tooltip"]
       77 GETTABLEKS                       R25 R26 K22 ["TextSize"]
       79 GETTABLEKS                       R26 R3 K23 ["Font"]
       81 GETIMPORT                        R27 K26 [Vector2.new]
       83 GETTABLEKS                       R29 R4 K21 ["Tooltip"]
       85 GETTABLEKS                       R28 R29 K27 ["Width"]
       87 LOADK                            R29 K28 [∞]
       88 CALL                             R27 2 -1
       89 CALL                             R23 -1 1
       90 GETTABLEKS                       R26 R22 K29 ["Y"]
       92 GETTABLEKS                       R28 R4 K21 ["Tooltip"]
       94 GETTABLEKS                       R27 R28 K30 ["Padding"]
       96 ADD                              R25 R26 R27
       97 GETTABLEKS                       R26 R23 K29 ["Y"]
       99 ADD                              R24 R25 R26
      100 GETTABLEKS                       R25 R1 K31 ["View"]
      102 GETTABLEKS                       R26 R1 K32 ["dispatchSetView"]
      104 LOADNIL                          R27
      105 GETTABLEKS                       R28 R25 K33 ["Key"]
      107 GETUPVAL                         R31 1
      108 GETTABLEKS                       R30 R31 K34 ["GRID"]
      110 GETTABLEKS                       R29 R30 K33 ["Key"]
      112 JUMPIFNOTEQ                      R28 R29 ; [+3]
      114 LOADK                            R27 K35 ["ListViewButton"]
      115 JUMP                             ; [+10]
      116 GETTABLEKS                       R28 R25 K33 ["Key"]
      118 GETUPVAL                         R31 1
      119 GETTABLEKS                       R30 R31 K36 ["LIST"]
      121 GETTABLEKS                       R29 R30 K33 ["Key"]
      123 JUMPIFNOTEQ                      R28 R29 ; [+2]
      125 LOADK                            R27 K37 ["GridViewButton"]
      126 LOADNIL                          R28
      127 GETUPVAL                         R29 2
      128 JUMPIFNOT                        R29 ; [+10]
      129 GETTABLEKS                       R31 R4 K39 ["Button"]
      131 GETTABLEKS                       R30 R31 K5 ["Size"]
      133 MULK                             R29 R30 K38 [6]
      134 GETTABLEKS                       R31 R4 K30 ["Padding"]
      136 MULK                             R30 R31 K40 [2]
      137 ADD                              R28 R29 R30
      138 JUMP                             ; [+9]
      139 GETTABLEKS                       R31 R4 K39 ["Button"]
      141 GETTABLEKS                       R30 R31 K5 ["Size"]
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
      155 GETUPVAL                         R34 4
      156 GETTABLEKS                       R33 R34 K44 ["MAIN"]
      158 GETTABLEKS                       R32 R33 K43 ["Path"]
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
      186 GETUPVAL                         R34 4
      187 GETTABLEKS                       R33 R34 K44 ["MAIN"]
      189 GETTABLEKS                       R32 R33 K43 ["Path"]
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
      209 GETUPVAL                         R32 5
      210 GETTABLEKS                       R31 R32 K25 ["new"]
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
      236 GETUPVAL                         R40 1
      237 GETTABLEKS                       R39 R40 K34 ["GRID"]
      239 GETTABLEKS                       R38 R39 K33 ["Key"]
      241 JUMPIFNOTEQ                      R37 R38 ; [+8]
      243 LOADK                            R39 K3 ["TopBar"]
      244 LOADK                            R40 K35 ["ListViewButton"]
      245 NAMECALL                         R37 R5 K19 ["getText"]
      247 CALL                             R37 3 1
      248 MOVE                             R36 R37
      249 JUMP                             ; [+15]
      250 GETTABLEKS                       R37 R25 K33 ["Key"]
      252 GETUPVAL                         R40 1
      253 GETTABLEKS                       R39 R40 K36 ["LIST"]
      255 GETTABLEKS                       R38 R39 K33 ["Key"]
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
      302 GETUPVAL                         R43 6
      303 GETTABLEKS                       R42 R43 K60 ["createElement"]
      305 LOADK                            R43 K61 ["Frame"]
      306 DUPTABLE                         R44 K65 [{"Size", "LayoutOrder", "BackgroundColor3", "BorderColor3", "BorderSizePixel"}]
      307 SETTABLEKS                       R6 R44 K5 ["Size"]
      309 SETTABLEKS                       R7 R44 K6 ["LayoutOrder"]
      311 GETTABLEKS                       R45 R3 K66 ["BackgroundColor"]
      313 SETTABLEKS                       R45 R44 K62 ["BackgroundColor3"]
      315 GETTABLEKS                       R45 R3 K67 ["BorderColor"]
      317 SETTABLEKS                       R45 R44 K63 ["BorderColor3"]
      319 LOADN                            R45 1
      320 SETTABLEKS                       R45 R44 K64 ["BorderSizePixel"]
      322 DUPTABLE                         R45 K73 [{"TopBarLayout", "Padding", "ExplorerOverlayButton", "NavigationButtonsFrame", "BulkImporterButton", "GridListToggleButton", "SearchBar", "SearchSortFrame"}]
      323 GETUPVAL                         R47 6
      324 GETTABLEKS                       R46 R47 K60 ["createElement"]
      326 LOADK                            R47 K74 ["UIListLayout"]
      327 DUPTABLE                         R48 K78 [{"Padding", "FillDirection", "VerticalAlignment", "SortOrder"}]
      328 GETIMPORT                        R49 K80 [UDim.new]
      330 LOADN                            R50 0
      331 GETTABLEKS                       R51 R4 K30 ["Padding"]
      333 CALL                             R49 2 1
      334 SETTABLEKS                       R49 R48 K30 ["Padding"]
      336 GETIMPORT                        R49 K83 [Enum.FillDirection.Horizontal]
      338 SETTABLEKS                       R49 R48 K75 ["FillDirection"]
      340 GETIMPORT                        R49 K85 [Enum.VerticalAlignment.Center]
      342 SETTABLEKS                       R49 R48 K76 ["VerticalAlignment"]
      344 GETIMPORT                        R49 K86 [Enum.SortOrder.LayoutOrder]
      346 SETTABLEKS                       R49 R48 K77 ["SortOrder"]
      348 CALL                             R46 2 1
      349 SETTABLEKS                       R46 R45 K68 ["TopBarLayout"]
      351 GETUPVAL                         R47 6
      352 GETTABLEKS                       R46 R47 K60 ["createElement"]
      354 LOADK                            R47 K87 ["UIPadding"]
      355 DUPTABLE                         R48 K90 [{"PaddingLeft", "PaddingRight"}]
      356 GETIMPORT                        R49 K80 [UDim.new]
      358 LOADN                            R50 0
      359 GETTABLEKS                       R51 R4 K30 ["Padding"]
      361 CALL                             R49 2 1
      362 SETTABLEKS                       R49 R48 K88 ["PaddingLeft"]
      364 GETIMPORT                        R49 K80 [UDim.new]
      366 LOADN                            R50 0
      367 GETTABLEKS                       R51 R4 K30 ["Padding"]
      369 CALL                             R49 2 1
      370 SETTABLEKS                       R49 R48 K89 ["PaddingRight"]
      372 CALL                             R46 2 1
      373 SETTABLEKS                       R46 R45 K30 ["Padding"]
      375 GETUPVAL                         R47 6
      376 GETTABLEKS                       R46 R47 K60 ["createElement"]
      378 GETUPVAL                         R47 7
      379 DUPTABLE                         R48 K94 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "OnClick"}]
      380 GETIMPORT                        R49 K96 [UDim2.new]
      382 LOADN                            R50 0
      383 GETTABLEKS                       R52 R4 K39 ["Button"]
      385 GETTABLEKS                       R51 R52 K5 ["Size"]
      387 LOADN                            R52 0
      388 GETTABLEKS                       R54 R4 K39 ["Button"]
      390 GETTABLEKS                       R53 R54 K5 ["Size"]
      392 CALL                             R49 4 1
      393 SETTABLEKS                       R49 R48 K5 ["Size"]
      395 GETIMPORT                        R49 K26 [Vector2.new]
      397 LOADK                            R50 K97 [0.5]
      398 LOADK                            R51 K97 [0.5]
      399 CALL                             R49 2 1
      400 SETTABLEKS                       R49 R48 K91 ["AnchorPoint"]
      402 NAMECALL                         R49 R31 K98 ["getNextOrder"]
      404 CALL                             R49 1 1
      405 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      407 LOADK                            R49 K99 ["OverlayButton"]
      408 SETTABLEKS                       R49 R48 K92 ["Style"]
      410 NEWCLOSURE                       R49 P0
      411 CAPTURE                          VAL R8
      412 CAPTURE                          VAL R0
      413 SETTABLEKS                       R49 R48 K93 ["OnClick"]
      415 DUPTABLE                         R49 K101 [{"HoverArea", "Tooltip"}]
      416 MOVE                             R50 R8
      417 JUMPIFNOT                        R50 ; [+17]
      418 GETUPVAL                         R51 6
      419 GETTABLEKS                       R50 R51 K60 ["createElement"]
      421 GETUPVAL                         R51 8
      422 DUPTABLE                         R52 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
      423 LOADK                            R53 K106 ["PointingHand"]
      424 SETTABLEKS                       R53 R52 K102 ["Cursor"]
      426 GETTABLEKS                       R53 R0 K107 ["mouseEnter"]
      428 SETTABLEKS                       R53 R52 K103 ["MouseEnter"]
      430 GETTABLEKS                       R53 R0 K108 ["mouseLeave"]
      432 SETTABLEKS                       R53 R52 K104 ["MouseLeave"]
      434 CALL                             R50 2 1
      435 SETTABLEKS                       R50 R49 K100 ["HoverArea"]
      437 MOVE                             R50 R8
      438 JUMPIFNOT                        R50 ; [+11]
      439 GETUPVAL                         R51 6
      440 GETTABLEKS                       R50 R51 K60 ["createElement"]
      442 GETUPVAL                         R51 9
      443 DUPTABLE                         R52 K110 [{"Text", "Enabled"}]
      444 SETTABLEKS                       R32 R52 K109 ["Text"]
      446 LOADB                            R53 1
      447 SETTABLEKS                       R53 R52 K7 ["Enabled"]
      449 CALL                             R50 2 1
      450 SETTABLEKS                       R50 R49 K21 ["Tooltip"]
      452 CALL                             R46 3 1
      453 SETTABLEKS                       R46 R45 K50 ["ExplorerOverlayButton"]
      455 GETUPVAL                         R47 6
      456 GETTABLEKS                       R46 R47 K60 ["createElement"]
      458 LOADK                            R47 K61 ["Frame"]
      459 DUPTABLE                         R48 K112 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      460 GETIMPORT                        R49 K96 [UDim2.new]
      462 LOADN                            R50 0
      463 LOADN                            R52 2
      464 GETTABLEKS                       R54 R4 K39 ["Button"]
      466 GETTABLEKS                       R53 R54 K5 ["Size"]
      468 MUL                              R51 R52 R53
      469 LOADN                            R52 0
      470 GETTABLEKS                       R54 R4 K39 ["Button"]
      472 GETTABLEKS                       R53 R54 K5 ["Size"]
      474 CALL                             R49 4 1
      475 SETTABLEKS                       R49 R48 K5 ["Size"]
      477 LOADN                            R49 1
      478 SETTABLEKS                       R49 R48 K111 ["BackgroundTransparency"]
      480 NAMECALL                         R49 R31 K98 ["getNextOrder"]
      482 CALL                             R49 1 1
      483 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      485 DUPTABLE                         R49 K116 [{"ButtonLayout", "PreviousButton", "NextButton"}]
      486 GETUPVAL                         R51 6
      487 GETTABLEKS                       R50 R51 K60 ["createElement"]
      489 LOADK                            R51 K74 ["UIListLayout"]
      490 DUPTABLE                         R52 K117 [{"Padding", "FillDirection", "SortOrder"}]
      491 GETIMPORT                        R53 K80 [UDim.new]
      493 LOADN                            R54 0
      494 LOADN                            R55 0
      495 CALL                             R53 2 1
      496 SETTABLEKS                       R53 R52 K30 ["Padding"]
      498 GETIMPORT                        R53 K83 [Enum.FillDirection.Horizontal]
      500 SETTABLEKS                       R53 R52 K75 ["FillDirection"]
      502 GETIMPORT                        R53 K86 [Enum.SortOrder.LayoutOrder]
      504 SETTABLEKS                       R53 R52 K77 ["SortOrder"]
      506 CALL                             R50 2 1
      507 SETTABLEKS                       R50 R49 K113 ["ButtonLayout"]
      509 GETUPVAL                         R51 6
      510 GETTABLEKS                       R50 R51 K60 ["createElement"]
      512 GETUPVAL                         R51 7
      513 DUPTABLE                         R52 K119 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
      514 GETIMPORT                        R53 K96 [UDim2.new]
      516 LOADN                            R54 0
      517 GETTABLEKS                       R56 R4 K39 ["Button"]
      519 GETTABLEKS                       R55 R56 K5 ["Size"]
      521 LOADN                            R56 0
      522 GETTABLEKS                       R58 R4 K39 ["Button"]
      524 GETTABLEKS                       R57 R58 K5 ["Size"]
      526 CALL                             R53 4 1
      527 SETTABLEKS                       R53 R52 K5 ["Size"]
      529 GETIMPORT                        R53 K26 [Vector2.new]
      531 LOADK                            R54 K97 [0.5]
      532 LOADK                            R55 K97 [0.5]
      533 CALL                             R53 2 1
      534 SETTABLEKS                       R53 R52 K91 ["AnchorPoint"]
      536 LOADN                            R53 1
      537 SETTABLEKS                       R53 R52 K6 ["LayoutOrder"]
      539 LOADK                            R53 K114 ["PreviousButton"]
      540 SETTABLEKS                       R53 R52 K92 ["Style"]
      542 NOT                              R53 R16
      543 JUMPIFNOT                        R53 ; [+3]
      544 GETUPVAL                         R54 10
      545 GETTABLEKS                       R53 R54 K120 ["Disabled"]
      547 SETTABLEKS                       R53 R52 K118 ["StyleModifier"]
      549 NEWCLOSURE                       R53 P1
      550 CAPTURE                          VAL R16
      551 CAPTURE                          VAL R8
      552 CAPTURE                          VAL R14
      553 CAPTURE                          VAL R9
      554 CAPTURE                          VAL R10
      555 SETTABLEKS                       R53 R52 K93 ["OnClick"]
      557 DUPTABLE                         R53 K101 [{"HoverArea", "Tooltip"}]
      558 MOVE                             R54 R16
      559 JUMPIFNOT                        R54 ; [+19]
      560 MOVE                             R54 R8
      561 JUMPIFNOT                        R54 ; [+17]
      562 GETUPVAL                         R55 6
      563 GETTABLEKS                       R54 R55 K60 ["createElement"]
      565 GETUPVAL                         R55 8
      566 DUPTABLE                         R56 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
      567 LOADK                            R57 K106 ["PointingHand"]
      568 SETTABLEKS                       R57 R56 K102 ["Cursor"]
      570 GETTABLEKS                       R57 R0 K107 ["mouseEnter"]
      572 SETTABLEKS                       R57 R56 K103 ["MouseEnter"]
      574 GETTABLEKS                       R57 R0 K108 ["mouseLeave"]
      576 SETTABLEKS                       R57 R56 K104 ["MouseLeave"]
      578 CALL                             R54 2 1
      579 SETTABLEKS                       R54 R53 K100 ["HoverArea"]
      581 MOVE                             R54 R16
      582 JUMPIFNOT                        R54 ; [+13]
      583 MOVE                             R54 R8
      584 JUMPIFNOT                        R54 ; [+11]
      585 GETUPVAL                         R55 6
      586 GETTABLEKS                       R54 R55 K60 ["createElement"]
      588 GETUPVAL                         R55 9
      589 DUPTABLE                         R56 K110 [{"Text", "Enabled"}]
      590 SETTABLEKS                       R33 R56 K109 ["Text"]
      592 LOADB                            R57 1
      593 SETTABLEKS                       R57 R56 K7 ["Enabled"]
      595 CALL                             R54 2 1
      596 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
      598 CALL                             R50 3 1
      599 SETTABLEKS                       R50 R49 K114 ["PreviousButton"]
      601 GETUPVAL                         R51 6
      602 GETTABLEKS                       R50 R51 K60 ["createElement"]
      604 GETUPVAL                         R51 7
      605 DUPTABLE                         R52 K119 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
      606 GETIMPORT                        R53 K96 [UDim2.new]
      608 LOADN                            R54 0
      609 GETTABLEKS                       R56 R4 K39 ["Button"]
      611 GETTABLEKS                       R55 R56 K5 ["Size"]
      613 LOADN                            R56 0
      614 GETTABLEKS                       R58 R4 K39 ["Button"]
      616 GETTABLEKS                       R57 R58 K5 ["Size"]
      618 CALL                             R53 4 1
      619 SETTABLEKS                       R53 R52 K5 ["Size"]
      621 GETIMPORT                        R53 K26 [Vector2.new]
      623 LOADK                            R54 K97 [0.5]
      624 LOADK                            R55 K97 [0.5]
      625 CALL                             R53 2 1
      626 SETTABLEKS                       R53 R52 K91 ["AnchorPoint"]
      628 LOADN                            R53 2
      629 SETTABLEKS                       R53 R52 K6 ["LayoutOrder"]
      631 LOADK                            R53 K115 ["NextButton"]
      632 SETTABLEKS                       R53 R52 K92 ["Style"]
      634 NOT                              R53 R17
      635 JUMPIFNOT                        R53 ; [+3]
      636 GETUPVAL                         R54 10
      637 GETTABLEKS                       R53 R54 K120 ["Disabled"]
      639 SETTABLEKS                       R53 R52 K118 ["StyleModifier"]
      641 NEWCLOSURE                       R53 P2
      642 CAPTURE                          VAL R17
      643 CAPTURE                          VAL R8
      644 CAPTURE                          VAL R15
      645 CAPTURE                          VAL R9
      646 CAPTURE                          VAL R10
      647 SETTABLEKS                       R53 R52 K93 ["OnClick"]
      649 DUPTABLE                         R53 K101 [{"HoverArea", "Tooltip"}]
      650 MOVE                             R54 R17
      651 JUMPIFNOT                        R54 ; [+19]
      652 MOVE                             R54 R8
      653 JUMPIFNOT                        R54 ; [+17]
      654 GETUPVAL                         R55 6
      655 GETTABLEKS                       R54 R55 K60 ["createElement"]
      657 GETUPVAL                         R55 8
      658 DUPTABLE                         R56 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
      659 LOADK                            R57 K106 ["PointingHand"]
      660 SETTABLEKS                       R57 R56 K102 ["Cursor"]
      662 GETTABLEKS                       R57 R0 K107 ["mouseEnter"]
      664 SETTABLEKS                       R57 R56 K103 ["MouseEnter"]
      666 GETTABLEKS                       R57 R0 K108 ["mouseLeave"]
      668 SETTABLEKS                       R57 R56 K104 ["MouseLeave"]
      670 CALL                             R54 2 1
      671 SETTABLEKS                       R54 R53 K100 ["HoverArea"]
      673 MOVE                             R54 R17
      674 JUMPIFNOT                        R54 ; [+13]
      675 MOVE                             R54 R8
      676 JUMPIFNOT                        R54 ; [+11]
      677 GETUPVAL                         R55 6
      678 GETTABLEKS                       R54 R55 K60 ["createElement"]
      680 GETUPVAL                         R55 9
      681 DUPTABLE                         R56 K110 [{"Text", "Enabled"}]
      682 SETTABLEKS                       R34 R56 K109 ["Text"]
      684 LOADB                            R57 1
      685 SETTABLEKS                       R57 R56 K7 ["Enabled"]
      687 CALL                             R54 2 1
      688 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
      690 CALL                             R50 3 1
      691 SETTABLEKS                       R50 R49 K115 ["NextButton"]
      693 CALL                             R46 3 1
      694 SETTABLEKS                       R46 R45 K69 ["NavigationButtonsFrame"]
      696 GETUPVAL                         R47 6
      697 GETTABLEKS                       R46 R47 K60 ["createElement"]
      699 GETUPVAL                         R47 7
      700 DUPTABLE                         R48 K119 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
      701 GETIMPORT                        R49 K96 [UDim2.new]
      703 LOADN                            R50 0
      704 GETTABLEKS                       R52 R4 K39 ["Button"]
      706 GETTABLEKS                       R51 R52 K5 ["Size"]
      708 LOADN                            R52 0
      709 GETTABLEKS                       R54 R4 K39 ["Button"]
      711 GETTABLEKS                       R53 R54 K5 ["Size"]
      713 CALL                             R49 4 1
      714 SETTABLEKS                       R49 R48 K5 ["Size"]
      716 GETIMPORT                        R49 K26 [Vector2.new]
      718 LOADK                            R50 K97 [0.5]
      719 LOADK                            R51 K97 [0.5]
      720 CALL                             R49 2 1
      721 SETTABLEKS                       R49 R48 K91 ["AnchorPoint"]
      723 NAMECALL                         R49 R31 K98 ["getNextOrder"]
      725 CALL                             R49 1 1
      726 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      728 LOADK                            R49 K70 ["BulkImporterButton"]
      729 SETTABLEKS                       R49 R48 K92 ["Style"]
      731 MOVE                             R49 R18
      732 JUMPIFNOT                        R49 ; [+3]
      733 GETUPVAL                         R50 10
      734 GETTABLEKS                       R49 R50 K120 ["Disabled"]
      736 SETTABLEKS                       R49 R48 K118 ["StyleModifier"]
      738 NEWCLOSURE                       R49 P3
      739 CAPTURE                          VAL R18
      740 CAPTURE                          VAL R8
      741 CAPTURE                          VAL R2
      742 CAPTURE                          VAL R19
      743 SETTABLEKS                       R49 R48 K93 ["OnClick"]
      745 DUPTABLE                         R49 K123 [{"OpenBulkImporterTooltip", "HoverArea", "BulkImportButtonTooltip"}]
      746 GETUPVAL                         R51 6
      747 GETTABLEKS                       R50 R51 K60 ["createElement"]
      749 GETUPVAL                         R51 9
      750 DUPTABLE                         R52 K126 [{"Content", "ContentExtents", "Enabled"}]
      751 GETUPVAL                         R54 6
      752 GETTABLEKS                       R53 R54 K60 ["createElement"]
      754 GETUPVAL                         R54 11
      755 DUPTABLE                         R55 K129 [{"Layout", "Spacing", "Style"}]
      756 GETIMPORT                        R56 K131 [Enum.FillDirection.Vertical]
      758 SETTABLEKS                       R56 R55 K127 ["Layout"]
      760 GETTABLEKS                       R57 R4 K21 ["Tooltip"]
      762 GETTABLEKS                       R56 R57 K30 ["Padding"]
      764 SETTABLEKS                       R56 R55 K128 ["Spacing"]
      766 LOADK                            R56 K132 ["Box"]
      767 SETTABLEKS                       R56 R55 K92 ["Style"]
      769 DUPTABLE                         R56 K135 [{"TextLabel", "LinkText"}]
      770 GETUPVAL                         R58 6
      771 GETTABLEKS                       R57 R58 K60 ["createElement"]
      773 GETUPVAL                         R58 12
      774 DUPTABLE                         R59 K139 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
      775 GETIMPORT                        R60 K140 [Enum.AutomaticSize.Y]
      777 SETTABLEKS                       R60 R59 K136 ["AutomaticSize"]
      779 GETTABLEKS                       R60 R3 K23 ["Font"]
      781 SETTABLEKS                       R60 R59 K23 ["Font"]
      783 LOADN                            R60 1
      784 SETTABLEKS                       R60 R59 K6 ["LayoutOrder"]
      786 GETIMPORT                        R60 K142 [UDim2.fromScale]
      788 LOADN                            R61 1
      789 LOADN                            R62 0
      790 CALL                             R60 2 1
      791 SETTABLEKS                       R60 R59 K5 ["Size"]
      793 SETTABLEKS                       R20 R59 K109 ["Text"]
      795 GETTABLEKS                       R61 R4 K21 ["Tooltip"]
      797 GETTABLEKS                       R60 R61 K22 ["TextSize"]
      799 SETTABLEKS                       R60 R59 K22 ["TextSize"]
      801 LOADB                            R60 1
      802 SETTABLEKS                       R60 R59 K137 ["TextWrapped"]
      804 GETIMPORT                        R60 K144 [Enum.TextXAlignment.Left]
      806 SETTABLEKS                       R60 R59 K138 ["TextXAlignment"]
      808 CALL                             R57 2 1
      809 SETTABLEKS                       R57 R56 K133 ["TextLabel"]
      811 GETUPVAL                         R58 6
      812 GETTABLEKS                       R57 R58 K60 ["createElement"]
      814 GETUPVAL                         R58 13
      815 DUPTABLE                         R59 K145 [{"LayoutOrder", "Style", "Text", "OnClick"}]
      816 LOADN                            R60 2
      817 SETTABLEKS                       R60 R59 K6 ["LayoutOrder"]
      819 LOADK                            R60 K146 ["BulkImporterTooltip"]
      820 SETTABLEKS                       R60 R59 K92 ["Style"]
      822 SETTABLEKS                       R21 R59 K109 ["Text"]
      824 DUPCLOSURE                       R60 K147 [PROTO_10]
      825 CAPTURE                          UPVAL U14
      826 SETTABLEKS                       R60 R59 K93 ["OnClick"]
      828 CALL                             R57 2 1
      829 SETTABLEKS                       R57 R56 K134 ["LinkText"]
      831 CALL                             R53 3 1
      832 SETTABLEKS                       R53 R52 K124 ["Content"]
      834 GETIMPORT                        R53 K26 [Vector2.new]
      836 GETTABLEKS                       R55 R4 K21 ["Tooltip"]
      838 GETTABLEKS                       R54 R55 K27 ["Width"]
      840 MOVE                             R55 R24
      841 CALL                             R53 2 1
      842 SETTABLEKS                       R53 R52 K125 ["ContentExtents"]
      844 SETTABLEKS                       R18 R52 K7 ["Enabled"]
      846 CALL                             R50 2 1
      847 SETTABLEKS                       R50 R49 K121 ["OpenBulkImporterTooltip"]
      849 NOT                              R50 R18
      850 JUMPIFNOT                        R50 ; [+19]
      851 MOVE                             R50 R8
      852 JUMPIFNOT                        R50 ; [+17]
      853 GETUPVAL                         R51 6
      854 GETTABLEKS                       R50 R51 K60 ["createElement"]
      856 GETUPVAL                         R51 8
      857 DUPTABLE                         R52 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
      858 LOADK                            R53 K106 ["PointingHand"]
      859 SETTABLEKS                       R53 R52 K102 ["Cursor"]
      861 GETTABLEKS                       R53 R0 K107 ["mouseEnter"]
      863 SETTABLEKS                       R53 R52 K103 ["MouseEnter"]
      865 GETTABLEKS                       R53 R0 K108 ["mouseLeave"]
      867 SETTABLEKS                       R53 R52 K104 ["MouseLeave"]
      869 CALL                             R50 2 1
      870 SETTABLEKS                       R50 R49 K100 ["HoverArea"]
      872 NOT                              R50 R18
      873 JUMPIFNOT                        R50 ; [+13]
      874 MOVE                             R50 R8
      875 JUMPIFNOT                        R50 ; [+11]
      876 GETUPVAL                         R51 6
      877 GETTABLEKS                       R50 R51 K60 ["createElement"]
      879 GETUPVAL                         R51 9
      880 DUPTABLE                         R52 K110 [{"Text", "Enabled"}]
      881 SETTABLEKS                       R35 R52 K109 ["Text"]
      883 LOADB                            R53 1
      884 SETTABLEKS                       R53 R52 K7 ["Enabled"]
      886 CALL                             R50 2 1
      887 SETTABLEKS                       R50 R49 K122 ["BulkImportButtonTooltip"]
      889 CALL                             R46 3 1
      890 SETTABLEKS                       R46 R45 K70 ["BulkImporterButton"]
      892 GETUPVAL                         R47 6
      893 GETTABLEKS                       R46 R47 K60 ["createElement"]
      895 GETUPVAL                         R47 7
      896 DUPTABLE                         R48 K119 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
      897 GETIMPORT                        R49 K96 [UDim2.new]
      899 LOADN                            R50 0
      900 GETTABLEKS                       R52 R4 K39 ["Button"]
      902 GETTABLEKS                       R51 R52 K5 ["Size"]
      904 LOADN                            R52 0
      905 GETTABLEKS                       R54 R4 K39 ["Button"]
      907 GETTABLEKS                       R53 R54 K5 ["Size"]
      909 CALL                             R49 4 1
      910 SETTABLEKS                       R49 R48 K5 ["Size"]
      912 GETIMPORT                        R49 K26 [Vector2.new]
      914 LOADK                            R50 K97 [0.5]
      915 LOADK                            R51 K97 [0.5]
      916 CALL                             R49 2 1
      917 SETTABLEKS                       R49 R48 K91 ["AnchorPoint"]
      919 NAMECALL                         R49 R31 K98 ["getNextOrder"]
      921 CALL                             R49 1 1
      922 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
      924 SETTABLEKS                       R27 R48 K92 ["Style"]
      926 MOVE                             R49 R18
      927 JUMPIFNOT                        R49 ; [+3]
      928 GETUPVAL                         R50 10
      929 GETTABLEKS                       R49 R50 K120 ["Disabled"]
      931 SETTABLEKS                       R49 R48 K118 ["StyleModifier"]
      933 NEWCLOSURE                       R49 P5
      934 CAPTURE                          VAL R25
      935 CAPTURE                          UPVAL U1
      936 CAPTURE                          VAL R26
      937 SETTABLEKS                       R49 R48 K93 ["OnClick"]
      939 DUPTABLE                         R49 K149 [{"HoverArea", "Tooltip", "TeachingCallout"}]
      940 NOT                              R50 R18
      941 JUMPIFNOT                        R50 ; [+19]
      942 MOVE                             R50 R8
      943 JUMPIFNOT                        R50 ; [+17]
      944 GETUPVAL                         R51 6
      945 GETTABLEKS                       R50 R51 K60 ["createElement"]
      947 GETUPVAL                         R51 8
      948 DUPTABLE                         R52 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
      949 LOADK                            R53 K106 ["PointingHand"]
      950 SETTABLEKS                       R53 R52 K102 ["Cursor"]
      952 GETTABLEKS                       R53 R0 K107 ["mouseEnter"]
      954 SETTABLEKS                       R53 R52 K103 ["MouseEnter"]
      956 GETTABLEKS                       R53 R0 K108 ["mouseLeave"]
      958 SETTABLEKS                       R53 R52 K104 ["MouseLeave"]
      960 CALL                             R50 2 1
      961 SETTABLEKS                       R50 R49 K100 ["HoverArea"]
      963 MOVE                             R50 R8
      964 JUMPIFNOT                        R50 ; [+11]
      965 GETUPVAL                         R51 6
      966 GETTABLEKS                       R50 R51 K60 ["createElement"]
      968 GETUPVAL                         R51 9
      969 DUPTABLE                         R52 K110 [{"Text", "Enabled"}]
      970 SETTABLEKS                       R36 R52 K109 ["Text"]
      972 LOADB                            R53 1
      973 SETTABLEKS                       R53 R52 K7 ["Enabled"]
      975 CALL                             R50 2 1
      976 SETTABLEKS                       R50 R49 K21 ["Tooltip"]
      978 GETUPVAL                         R50 15
      979 CALL                             R50 0 1
      980 JUMPIFNOT                        R50 ; [+12]
      981 GETUPVAL                         R51 6
      982 GETTABLEKS                       R50 R51 K60 ["createElement"]
      984 GETUPVAL                         R51 16
      985 DUPTABLE                         R52 K152 [{"DefinitionId", "LocationId"}]
      986 LOADK                            R53 K153 ["AssetManagerBadgesDevProductCallout"]
      987 SETTABLEKS                       R53 R52 K150 ["DefinitionId"]
      989 LOADK                            R53 K71 ["GridListToggleButton"]
      990 SETTABLEKS                       R53 R52 K151 ["LocationId"]
      992 CALL                             R50 2 1
      993 SETTABLEKS                       R50 R49 K148 ["TeachingCallout"]
      995 CALL                             R46 3 1
      996 SETTABLEKS                       R46 R45 K71 ["GridListToggleButton"]
      998 GETUPVAL                         R47 2
      999 JUMPIF                           R47 ; [+46]
     1000 JUMPIFNOT                        R29 ; [+45]
     1001 GETUPVAL                         R47 6
     1002 GETTABLEKS                       R46 R47 K60 ["createElement"]
     1004 GETUPVAL                         R47 17
     1005 DUPTABLE                         R48 K159 [{"Size", "LayoutOrder", "Disabled", "Style", "ShowSearchIcon", "ShowSearchButton", "PlaceholderText", "IncrementalTextSearch", "IncrementalTextSearchDelay", "OnSearchRequested"}]
     1006 GETIMPORT                        R49 K96 [UDim2.new]
     1008 LOADN                            R50 1
     1009 MINUS                            R51 R28
     1010 LOADN                            R52 1
     1011 LOADN                            R53 254
     1012 CALL                             R49 4 1
     1013 SETTABLEKS                       R49 R48 K5 ["Size"]
     1015 NAMECALL                         R49 R31 K98 ["getNextOrder"]
     1017 CALL                             R49 1 1
     1018 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
     1020 NOT                              R49 R8
     1021 SETTABLEKS                       R49 R48 K120 ["Disabled"]
     1023 LOADK                            R49 K160 ["Compact"]
     1024 SETTABLEKS                       R49 R48 K92 ["Style"]
     1026 LOADB                            R49 1
     1027 SETTABLEKS                       R49 R48 K154 ["ShowSearchIcon"]
     1029 LOADB                            R49 0
     1030 SETTABLEKS                       R49 R48 K155 ["ShowSearchButton"]
     1032 SETTABLEKS                       R30 R48 K46 ["PlaceholderText"]
     1034 LOADB                            R49 1
     1035 SETTABLEKS                       R49 R48 K156 ["IncrementalTextSearch"]
     1037 LOADN                            R49 0
     1038 SETTABLEKS                       R49 R48 K157 ["IncrementalTextSearchDelay"]
     1040 GETTABLEKS                       R49 R0 K158 ["OnSearchRequested"]
     1042 SETTABLEKS                       R49 R48 K158 ["OnSearchRequested"]
     1044 CALL                             R46 2 1
     1045 JUMP                             ; [+1]
     1046 LOADNIL                          R46
     1047 SETTABLEKS                       R46 R45 K45 ["SearchBar"]
     1049 GETUPVAL                         R47 2
     1050 JUMPIFNOT                        R47 ; [+203]
     1051 GETUPVAL                         R47 6
     1052 GETTABLEKS                       R46 R47 K60 ["createElement"]
     1054 GETUPVAL                         R47 11
     1055 DUPTABLE                         R48 K161 [{"Size", "BackgroundTransparency", "Layout", "LayoutOrder"}]
     1056 GETIMPORT                        R49 K96 [UDim2.new]
     1058 LOADN                            R50 1
     1059 MINUS                            R51 R28
     1060 LOADN                            R52 0
     1061 GETTABLEKS                       R54 R4 K39 ["Button"]
     1063 GETTABLEKS                       R53 R54 K5 ["Size"]
     1065 CALL                             R49 4 1
     1066 SETTABLEKS                       R49 R48 K5 ["Size"]
     1068 LOADN                            R49 1
     1069 SETTABLEKS                       R49 R48 K111 ["BackgroundTransparency"]
     1071 GETIMPORT                        R49 K83 [Enum.FillDirection.Horizontal]
     1073 SETTABLEKS                       R49 R48 K127 ["Layout"]
     1075 NAMECALL                         R49 R31 K98 ["getNextOrder"]
     1077 CALL                             R49 1 1
     1078 SETTABLEKS                       R49 R48 K6 ["LayoutOrder"]
     1080 DUPTABLE                         R49 K162 [{"SearchBar", "SortButton"}]
     1081 MOVE                             R50 R29
     1082 JUMPIFNOT                        R50 ; [+46]
     1083 GETUPVAL                         R51 6
     1084 GETTABLEKS                       R50 R51 K60 ["createElement"]
     1086 GETUPVAL                         R51 17
     1087 DUPTABLE                         R52 K159 [{"Size", "LayoutOrder", "Disabled", "Style", "ShowSearchIcon", "ShowSearchButton", "PlaceholderText", "IncrementalTextSearch", "IncrementalTextSearchDelay", "OnSearchRequested"}]
     1088 GETIMPORT                        R53 K96 [UDim2.new]
     1090 LOADN                            R54 1
     1091 GETTABLEKS                       R57 R4 K39 ["Button"]
     1093 GETTABLEKS                       R56 R57 K5 ["Size"]
     1095 MINUS                            R55 R56
     1096 LOADN                            R56 1
     1097 LOADN                            R57 254
     1098 CALL                             R53 4 1
     1099 SETTABLEKS                       R53 R52 K5 ["Size"]
     1101 LOADN                            R53 1
     1102 SETTABLEKS                       R53 R52 K6 ["LayoutOrder"]
     1104 NOT                              R53 R8
     1105 SETTABLEKS                       R53 R52 K120 ["Disabled"]
     1107 LOADK                            R53 K160 ["Compact"]
     1108 SETTABLEKS                       R53 R52 K92 ["Style"]
     1110 LOADB                            R53 1
     1111 SETTABLEKS                       R53 R52 K154 ["ShowSearchIcon"]
     1113 LOADB                            R53 0
     1114 SETTABLEKS                       R53 R52 K155 ["ShowSearchButton"]
     1116 SETTABLEKS                       R30 R52 K46 ["PlaceholderText"]
     1118 LOADB                            R53 1
     1119 SETTABLEKS                       R53 R52 K156 ["IncrementalTextSearch"]
     1121 LOADN                            R53 0
     1122 SETTABLEKS                       R53 R52 K157 ["IncrementalTextSearchDelay"]
     1124 GETTABLEKS                       R53 R0 K158 ["OnSearchRequested"]
     1126 SETTABLEKS                       R53 R52 K158 ["OnSearchRequested"]
     1128 CALL                             R50 2 1
     1129 SETTABLEKS                       R50 R49 K45 ["SearchBar"]
     1131 GETUPVAL                         R51 6
     1132 GETTABLEKS                       R50 R51 K60 ["createElement"]
     1134 GETUPVAL                         R51 7
     1135 DUPTABLE                         R52 K119 [{"Size", "AnchorPoint", "LayoutOrder", "Style", "StyleModifier", "OnClick"}]
     1136 GETIMPORT                        R53 K96 [UDim2.new]
     1138 LOADN                            R54 0
     1139 GETTABLEKS                       R56 R4 K39 ["Button"]
     1141 GETTABLEKS                       R55 R56 K5 ["Size"]
     1143 LOADN                            R56 0
     1144 GETTABLEKS                       R58 R4 K39 ["Button"]
     1146 GETTABLEKS                       R57 R58 K5 ["Size"]
     1148 CALL                             R53 4 1
     1149 SETTABLEKS                       R53 R52 K5 ["Size"]
     1151 GETIMPORT                        R53 K26 [Vector2.new]
     1153 LOADK                            R54 K97 [0.5]
     1154 LOADK                            R55 K97 [0.5]
     1155 CALL                             R53 2 1
     1156 SETTABLEKS                       R53 R52 K91 ["AnchorPoint"]
     1158 LOADN                            R53 2
     1159 SETTABLEKS                       R53 R52 K6 ["LayoutOrder"]
     1161 LOADK                            R53 K54 ["SortButton"]
     1162 SETTABLEKS                       R53 R52 K92 ["Style"]
     1164 GETTABLEKS                       R54 R0 K163 ["state"]
     1166 GETTABLEKS                       R53 R54 K164 ["showSortDropdown"]
     1168 JUMPIFNOT                        R53 ; [+3]
     1169 GETUPVAL                         R54 10
     1170 GETTABLEKS                       R53 R54 K165 ["Selected"]
     1172 SETTABLEKS                       R53 R52 K118 ["StyleModifier"]
     1174 NEWCLOSURE                       R53 P6
     1175 CAPTURE                          VAL R8
     1176 CAPTURE                          VAL R0
     1177 SETTABLEKS                       R53 R52 K93 ["OnClick"]
     1179 DUPTABLE                         R53 K167 [{"Menu", "HoverArea", "Tooltip"}]
     1180 GETUPVAL                         R55 6
     1181 GETTABLEKS                       R54 R55 K60 ["createElement"]
     1183 GETUPVAL                         R55 18
     1184 DUPTABLE                         R56 K172 [{"Hide", "Items", "OnItemActivated", "OnFocusLost"}]
     1185 GETTABLEKS                       R59 R0 K163 ["state"]
     1187 GETTABLEKS                       R58 R59 K164 ["showSortDropdown"]
     1189 NOT                              R57 R58
     1190 SETTABLEKS                       R57 R56 K168 ["Hide"]
     1192 NEWTABLE                         R57 0 4
     1194 MOVE                             R58 R38
     1195 MOVE                             R59 R39
     1196 MOVE                             R60 R40
     1197 MOVE                             R61 R41
     1198 SETLIST                          R57 R58 4 [1]
     1200 SETTABLEKS                       R57 R56 K169 ["Items"]
     1202 GETTABLEKS                       R57 R0 K173 ["OnSelectSortItem"]
     1204 SETTABLEKS                       R57 R56 K170 ["OnItemActivated"]
     1206 GETTABLEKS                       R57 R0 K174 ["OnCloseSortDropdown"]
     1208 SETTABLEKS                       R57 R56 K171 ["OnFocusLost"]
     1210 CALL                             R54 2 1
     1211 SETTABLEKS                       R54 R53 K166 ["Menu"]
     1213 MOVE                             R54 R8
     1214 JUMPIFNOT                        R54 ; [+17]
     1215 GETUPVAL                         R55 6
     1216 GETTABLEKS                       R54 R55 K60 ["createElement"]
     1218 GETUPVAL                         R55 8
     1219 DUPTABLE                         R56 K105 [{"Cursor", "MouseEnter", "MouseLeave"}]
     1220 LOADK                            R57 K106 ["PointingHand"]
     1221 SETTABLEKS                       R57 R56 K102 ["Cursor"]
     1223 GETTABLEKS                       R57 R0 K107 ["mouseEnter"]
     1225 SETTABLEKS                       R57 R56 K103 ["MouseEnter"]
     1227 GETTABLEKS                       R57 R0 K108 ["mouseLeave"]
     1229 SETTABLEKS                       R57 R56 K104 ["MouseLeave"]
     1231 CALL                             R54 2 1
     1232 SETTABLEKS                       R54 R53 K100 ["HoverArea"]
     1234 MOVE                             R54 R8
     1235 JUMPIFNOT                        R54 ; [+11]
     1236 GETUPVAL                         R55 6
     1237 GETTABLEKS                       R54 R55 K60 ["createElement"]
     1239 GETUPVAL                         R55 9
     1240 DUPTABLE                         R56 K110 [{"Text", "Enabled"}]
     1241 SETTABLEKS                       R37 R56 K109 ["Text"]
     1243 LOADB                            R57 1
     1244 SETTABLEKS                       R57 R56 K7 ["Enabled"]
     1246 CALL                             R54 2 1
     1247 SETTABLEKS                       R54 R53 K21 ["Tooltip"]
     1249 CALL                             R50 3 1
     1250 SETTABLEKS                       R50 R49 K54 ["SortButton"]
     1252 CALL                             R46 3 1
     1253 JUMP                             ; [+1]
     1254 LOADNIL                          R46
     1255 SETTABLEKS                       R46 R45 K72 ["SearchSortFrame"]
     1257 CALL                             R42 3 -1
     1258 RETURN                           R42 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["Screen"]
        2 GETTABLEKS                       R2 R3 K1 ["previousScreens"]
        4 GETTABLEKS                       R4 R0 K0 ["Screen"]
        6 GETTABLEKS                       R3 R4 K2 ["nextScreens"]
        8 DUPTABLE                         R4 K9 [{"BulkImporterRunning", "CurrentScreen", "PreviousScreens", "NextScreens", "RecentViewToggled", "View"}]
        9 GETTABLEKS                       R6 R0 K10 ["AssetManagerReducer"]
       11 GETTABLEKS                       R5 R6 K11 ["bulkImporterRunning"]
       13 SETTABLEKS                       R5 R4 K3 ["BulkImporterRunning"]
       15 GETTABLEKS                       R6 R0 K0 ["Screen"]
       17 GETTABLEKS                       R5 R6 K12 ["currentScreen"]
       19 SETTABLEKS                       R5 R4 K4 ["CurrentScreen"]
       21 SETTABLEKS                       R2 R4 K5 ["PreviousScreens"]
       23 SETTABLEKS                       R3 R4 K6 ["NextScreens"]
       25 GETTABLEKS                       R6 R0 K10 ["AssetManagerReducer"]
       27 GETTABLEKS                       R5 R6 K13 ["recentViewToggled"]
       29 SETTABLEKS                       R5 R4 K7 ["RecentViewToggled"]
       31 GETTABLEKS                       R6 R0 K10 ["AssetManagerReducer"]
       33 GETTABLEKS                       R5 R6 K14 ["view"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["EnableAssetManagerGlobalSearchBar"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K4 [game]
       17 LOADK                            R4 K7 ["EnableAssetManagerSortButton"]
       18 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Packages"]
       39 GETTABLEKS                       R6 R7 K13 ["Framework"]
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
       74 GETTABLEKS                       R24 R0 K29 ["Src"]
       76 GETTABLEKS                       R23 R24 K30 ["Actions"]
       78 GETTABLEKS                       R22 R23 K31 ["SetRecentViewToggled"]
       80 CALL                             R21 1 1
       81 GETIMPORT                        R22 K9 [require]
       83 GETTABLEKS                       R25 R0 K29 ["Src"]
       85 GETTABLEKS                       R24 R25 K30 ["Actions"]
       87 GETTABLEKS                       R23 R24 K32 ["SetSearchTerm"]
       89 CALL                             R22 1 1
       90 GETIMPORT                        R23 K9 [require]
       92 GETTABLEKS                       R26 R0 K29 ["Src"]
       94 GETTABLEKS                       R25 R26 K30 ["Actions"]
       96 GETTABLEKS                       R24 R25 K33 ["SetToPreviousScreen"]
       98 CALL                             R23 1 1
       99 GETIMPORT                        R24 K9 [require]
      101 GETTABLEKS                       R27 R0 K29 ["Src"]
      103 GETTABLEKS                       R26 R27 K30 ["Actions"]
      105 GETTABLEKS                       R25 R26 K34 ["SetToNextScreen"]
      107 CALL                             R24 1 1
      108 GETIMPORT                        R25 K9 [require]
      110 GETTABLEKS                       R28 R0 K29 ["Src"]
      112 GETTABLEKS                       R27 R28 K30 ["Actions"]
      114 GETTABLEKS                       R26 R27 K35 ["SetView"]
      116 CALL                             R25 1 1
      117 GETIMPORT                        R26 K9 [require]
      119 GETTABLEKS                       R29 R0 K29 ["Src"]
      121 GETTABLEKS                       R28 R29 K36 ["Thunks"]
      123 GETTABLEKS                       R27 R28 K37 ["LaunchBulkImport"]
      125 CALL                             R26 1 1
      126 GETIMPORT                        R27 K9 [require]
      128 GETTABLEKS                       R30 R0 K29 ["Src"]
      130 GETTABLEKS                       R29 R30 K25 ["Util"]
      132 GETTABLEKS                       R28 R29 K38 ["Screens"]
      134 CALL                             R27 1 1
      135 GETIMPORT                        R28 K9 [require]
      137 GETTABLEKS                       R31 R0 K29 ["Src"]
      139 GETTABLEKS                       R30 R31 K25 ["Util"]
      141 GETTABLEKS                       R29 R30 K39 ["View"]
      143 CALL                             R28 1 1
      144 GETIMPORT                        R29 K4 [game]
      146 LOADK                            R31 K40 ["BulkImportService"]
      147 NAMECALL                         R29 R29 K41 ["GetService"]
      149 CALL                             R29 2 1
      150 GETIMPORT                        R31 K9 [require]
      152 GETTABLEKS                       R34 R0 K29 ["Src"]
      154 GETTABLEKS                       R33 R34 K25 ["Util"]
      156 GETTABLEKS                       R32 R33 K42 ["AssetManagerUtilities"]
      158 CALL                             R31 1 1
      159 GETTABLEKS                       R30 R31 K43 ["enableBadgesCallout"]
      161 MOVE                             R32 R30
      162 CALL                             R32 0 1
      163 JUMPIFNOT                        R32 ; [+10]
      164 GETIMPORT                        R31 K9 [require]
      166 GETIMPORT                        R34 K1 [script]
      168 GETTABLEKS                       R33 R34 K2 ["Parent"]
      170 GETTABLEKS                       R32 R33 K44 ["TeachingCallout"]
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
