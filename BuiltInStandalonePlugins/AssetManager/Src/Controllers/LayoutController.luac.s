PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Size"]
        2 GETTABLEKS                       R4 R4 K1 ["X"]
        4 GETTABLEKS                       R4 R4 K2 ["Scale"]
        6 MUL                              R3 R4 R1
        7 GETTABLEKS                       R4 R0 K0 ["Size"]
        9 GETTABLEKS                       R4 R4 K1 ["X"]
       11 GETTABLEKS                       R4 R4 K3 ["Offset"]
       13 ADD                              R2 R3 R4
       14 GETTABLEKS                       R5 R0 K4 ["MinWidth"]
       16 GETTABLEKS                       R6 R0 K5 ["MaxWidth"]
       18 FASTCALL3                        MATH_CLAMP R2 R5 R6
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K8 [math.clamp]
       23 CALL                             R3 3 1
       24 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        4 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R4 64 0
        2 SETTABLEKS                       R3 R4 K0 ["_isMock"]
        4 GETTABLEKS                       R5 R2 K1 ["PluginController"]
        6 SETTABLEKS                       R5 R4 K2 ["_pluginController"]
        8 LOADNIL                          R5
        9 SETTABLEKS                       R5 R4 K3 ["_contentList"]
       11 LOADNIL                          R5
       12 SETTABLEKS                       R5 R4 K4 ["_contentGrid"]
       14 LOADNIL                          R5
       15 SETTABLEKS                       R5 R4 K5 ["_sidebar"]
       17 SETTABLEKS                       R1 R4 K6 ["_pluginGui"]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K7 ["_pluginGuiFocused"]
       22 LOADN                            R5 250
       23 SETTABLEKS                       R5 R4 K8 ["_sidebarWidth"]
       25 GETIMPORT                        R5 K11 [UDim.new]
       27 LOADN                            R6 1
       28 LOADN                            R7 -250
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K12 ["_browserSize"]
       32 GETIMPORT                        R5 K11 [UDim.new]
       34 LOADN                            R6 0
       35 LOADN                            R7 150
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K13 ["_sidebarMinSize"]
       39 GETIMPORT                        R5 K11 [UDim.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K14 ["_browserMinSize"]
       46 LOADN                            R5 0
       47 SETTABLEKS                       R5 R4 K15 ["_pluginWidth"]
       49 LOADN                            R5 0
       50 SETTABLEKS                       R5 R4 K16 ["_pluginHeight"]
       52 LOADB                            R5 1
       53 SETTABLEKS                       R5 R4 K17 ["_showSidebar"]
       55 LOADNIL                          R5
       56 SETTABLEKS                       R5 R4 K18 ["_pluginFrame"]
       58 LOADB                            R5 0
       59 SETTABLEKS                       R5 R4 K19 ["_isPluginFrameLoaded"]
       61 DUPTABLE                         R5 K23 [{"GridSize", "ViewType", "ListRowHeight"}]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K24 ["GridCellSizeDefault"]
       65 SETTABLEKS                       R6 R5 K20 ["GridSize"]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K21 ["ViewType"]
       70 GETTABLEKS                       R6 R6 K25 ["List"]
       72 SETTABLEKS                       R6 R5 K21 ["ViewType"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K26 ["ListRowHeightDefault"]
       77 SETTABLEKS                       R6 R5 K22 ["ListRowHeight"]
       79 SETTABLEKS                       R5 R4 K27 ["_browserLayout"]
       81 LOADN                            R5 0
       82 SETTABLEKS                       R5 R4 K28 ["_gridCellsPerRow"]
       84 GETUPVAL                         R5 2
       85 GETTABLEKS                       R5 R5 K29 ["SearchFoldersResultCountDefault"]
       87 SETTABLEKS                       R5 R4 K30 ["_folderLimit"]
       89 NEWTABLE                         R5 0 1
       91 GETUPVAL                         R6 3
       92 SETLIST                          R5 R6 1 [1]
       94 SETTABLEKS                       R5 R4 K31 ["_columnWidths"]
       96 NEWTABLE                         R5 0 5
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R6 R6 K32 ["AssetInfoField"]
      101 GETTABLEKS                       R6 R6 K33 ["DisplayName"]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K32 ["AssetInfoField"]
      106 GETTABLEKS                       R7 R7 K34 ["AssetId"]
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K32 ["AssetInfoField"]
      111 GETTABLEKS                       R8 R8 K35 ["AssetType"]
      113 GETUPVAL                         R9 1
      114 GETTABLEKS                       R9 R9 K32 ["AssetInfoField"]
      116 GETTABLEKS                       R9 R9 K36 ["Modified"]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R10 R10 K32 ["AssetInfoField"]
      121 GETTABLEKS                       R10 R10 K37 ["Creator"]
      123 SETLIST                          R5 R6 5 [1]
      125 SETTABLEKS                       R5 R4 K38 ["_columns"]
      127 LOADNIL                          R5
      128 SETTABLEKS                       R5 R4 K39 ["_mainSidebarScrollFrame"]
      130 LOADNIL                          R5
      131 SETTABLEKS                       R5 R4 K40 ["_underlaySidebarScrollFrame"]
      133 LOADNIL                          R5
      134 SETTABLEKS                       R5 R4 K41 ["_overlaySidebarScrollFrame"]
      136 LOADB                            R5 0
      137 SETTABLEKS                       R5 R4 K42 ["_showDetailsDrawer"]
      139 LOADN                            R5 280
      140 SETTABLEKS                       R5 R4 K43 ["_drawerDesiredWidth"]
      142 LOADK                            R5 K44 [0.6]
      143 SETTABLEKS                       R5 R4 K45 ["_compactDrawerHeightScale"]
      145 NEWTABLE                         R5 0 0
      147 SETTABLEKS                       R5 R4 K46 ["_connections"]
      149 LOADB                            R5 0
      150 SETTABLEKS                       R5 R4 K47 ["_destroyed"]
      152 LOADNIL                          R5
      153 SETTABLEKS                       R5 R4 K48 ["_pendingScrollIndex"]
      155 LOADNIL                          R5
      156 SETTABLEKS                       R5 R4 K49 ["_scrollSettleThread"]
      158 LOADNIL                          R5
      159 SETTABLEKS                       R5 R4 K50 ["_scrollTimeoutThread"]
      161 GETUPVAL                         R5 4
      162 GETTABLEKS                       R5 R5 K10 ["new"]
      164 CALL                             R5 0 1
      165 SETTABLEKS                       R5 R4 K51 ["OnAppSizesChanged"]
      167 GETUPVAL                         R5 4
      168 GETTABLEKS                       R5 R5 K10 ["new"]
      170 CALL                             R5 0 1
      171 SETTABLEKS                       R5 R4 K52 ["OnCompactDrawerHeightChanged"]
      173 GETUPVAL                         R5 4
      174 GETTABLEKS                       R5 R5 K10 ["new"]
      176 CALL                             R5 0 1
      177 SETTABLEKS                       R5 R4 K53 ["OnDetailsDrawerChanged"]
      179 GETUPVAL                         R5 4
      180 GETTABLEKS                       R5 R5 K10 ["new"]
      182 CALL                             R5 0 1
      183 SETTABLEKS                       R5 R4 K54 ["OnBrowserLayoutChanged"]
      185 GETUPVAL                         R5 4
      186 GETTABLEKS                       R5 R5 K10 ["new"]
      188 CALL                             R5 0 1
      189 SETTABLEKS                       R5 R4 K55 ["OnColumnsChanged"]
      191 GETUPVAL                         R5 4
      192 GETTABLEKS                       R5 R5 K10 ["new"]
      194 CALL                             R5 0 1
      195 SETTABLEKS                       R5 R4 K56 ["OnColumnWidthsChanged"]
      197 GETUPVAL                         R5 4
      198 GETTABLEKS                       R5 R5 K10 ["new"]
      200 CALL                             R5 0 1
      201 SETTABLEKS                       R5 R4 K57 ["OnContentScrollChanged"]
      203 GETUPVAL                         R5 4
      204 GETTABLEKS                       R5 R5 K10 ["new"]
      206 CALL                             R5 0 1
      207 SETTABLEKS                       R5 R4 K58 ["OnGridStateUpdated"]
      209 GETUPVAL                         R5 4
      210 GETTABLEKS                       R5 R5 K10 ["new"]
      212 CALL                             R5 0 1
      213 SETTABLEKS                       R5 R4 K59 ["OnIsCompactChanged"]
      215 GETUPVAL                         R5 4
      216 GETTABLEKS                       R5 R5 K10 ["new"]
      218 CALL                             R5 0 1
      219 SETTABLEKS                       R5 R4 K60 ["OnLayoutFolderLimitChanged"]
      221 GETUPVAL                         R5 4
      222 GETTABLEKS                       R5 R5 K10 ["new"]
      224 CALL                             R5 0 1
      225 SETTABLEKS                       R5 R4 K61 ["OnPluginFrameSet"]
      227 GETUPVAL                         R5 4
      228 GETTABLEKS                       R5 R5 K10 ["new"]
      230 CALL                             R5 0 1
      231 SETTABLEKS                       R5 R4 K62 ["OnPluginHeightChanged"]
      233 GETUPVAL                         R5 4
      234 GETTABLEKS                       R5 R5 K10 ["new"]
      236 CALL                             R5 0 1
      237 SETTABLEKS                       R5 R4 K63 ["OnPluginWidthChanged"]
      239 GETUPVAL                         R5 4
      240 GETTABLEKS                       R5 R5 K10 ["new"]
      242 CALL                             R5 0 1
      243 SETTABLEKS                       R5 R4 K64 ["OnSidebarScrollableChanged"]
      245 GETUPVAL                         R5 4
      246 GETTABLEKS                       R5 R5 K10 ["new"]
      248 CALL                             R5 0 1
      249 SETTABLEKS                       R5 R4 K65 ["OnSidebarScrollChanged"]
      251 GETUPVAL                         R5 4
      252 GETTABLEKS                       R5 R5 K10 ["new"]
      254 CALL                             R5 0 1
      255 SETTABLEKS                       R5 R4 K66 ["OnSidebarToggled"]
      257 GETUPVAL                         R7 5
      258 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      260 MOVE                             R6 R4
      261 GETIMPORT                        R5 K68 [setmetatable]
      263 CALL                             R5 2 0
      264 GETUPVAL                         R5 6
      265 CALL                             R5 0 1
      266 JUMPIFNOT                        R5 ; [+12]
      267 GETTABLEKS                       R6 R4 K38 ["_columns"]
      269 GETUPVAL                         R7 1
      270 GETTABLEKS                       R7 R7 K32 ["AssetInfoField"]
      272 GETTABLEKS                       R7 R7 K69 ["VersionNumber"]
      274 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
      276 GETIMPORT                        R5 K72 [table.insert]
      278 CALL                             R5 2 0
      279 GETTABLEKS                       R5 R4 K38 ["_columns"]
      281 LOADNIL                          R6
      282 LOADNIL                          R7
      283 FORGPREP                         R5
      284 GETTABLEKS                       R10 R4 K31 ["_columnWidths"]
      286 GETUPVAL                         R11 3
      287 SETTABLE                         R11 R10 R8
      288 FORGLOOP                         R5 2 ; [-5]
      290 GETTABLEKS                       R5 R4 K46 ["_connections"]
      292 GETTABLEKS                       R6 R1 K73 ["WindowFocused"]
      294 NEWCLOSURE                       R8 P0
      295 CAPTURE                          VAL R4
      296 NAMECALL                         R6 R6 K74 ["Connect"]
      298 CALL                             R6 2 1
      299 SETTABLEKS                       R6 R5 K75 ["GuiWindowFocused"]
      301 GETTABLEKS                       R5 R4 K46 ["_connections"]
      303 GETTABLEKS                       R6 R1 K76 ["WindowFocusReleased"]
      305 NEWCLOSURE                       R8 P1
      306 CAPTURE                          VAL R4
      307 NAMECALL                         R6 R6 K74 ["Connect"]
      309 CALL                             R6 2 1
      310 SETTABLEKS                       R6 R5 K77 ["GuiWindowFocusReleased"]
      312 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R2 K5 [{"WindowFocused", "WindowFocusReleased", "PluginDragEntered", "PluginDragLeft", "PluginDragDropped"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["new"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["WindowFocused"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K6 ["new"]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K1 ["WindowFocusReleased"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["new"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K2 ["PluginDragEntered"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K6 ["new"]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K3 ["PluginDragLeft"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["new"]
       28 CALL                             R3 0 1
       29 SETTABLEKS                       R3 R2 K4 ["PluginDragDropped"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K6 ["new"]
       34 MOVE                             R4 R0
       35 MOVE                             R5 R2
       36 MOVE                             R6 R1
       37 LOADB                            R7 1
       38 CALL                             R3 4 -1
       39 RETURN                           R3 -1

PROTO_5:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 NAMECALL                         R1 R0 K1 ["_cancelPendingScroll"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K2 ["_unbindScroll"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R2 R0 K3 ["_connections"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGui"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_pluginFrame"]
        4 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 NAMECALL                         R0 R0 K3 ["_setPluginWidth"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["_pluginFrame"]
       15 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R2 K4 ["Y"]
       19 NAMECALL                         R0 R0 K5 ["_setPluginHeight"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 SETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        4 GETTABLEKS                       R2 R0 K1 ["_connections"]
        6 GETTABLEKS                       R3 R0 K0 ["_pluginFrame"]
        8 LOADK                            R5 K2 ["AbsoluteSize"]
        9 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R3 R3 K4 ["Connect"]
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K5 ["PluginFrame"]
       19 GETTABLEKS                       R2 R0 K6 ["OnPluginFrameSet"]
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K7 ["Fire"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_folderLimit"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_folderLimit"]
        2 GETTABLEKS                       R2 R0 K1 ["_browserLayout"]
        4 GETTABLEKS                       R2 R2 K2 ["ViewType"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["ViewType"]
        9 GETTABLEKS                       R3 R3 K3 ["Grid"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+12]
       13 LOADN                            R3 1
       14 NAMECALL                         R4 R0 K4 ["getGridCellsPerRow"]
       16 CALL                             R4 1 -1
       17 FASTCALL                         MATH_MAX ; [+2]
       18 GETIMPORT                        R2 K7 [math.max]
       20 CALL                             R2 -1 1
       21 SETTABLEKS                       R2 R0 K0 ["_folderLimit"]
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K8 ["SearchFoldersResultCountDefault"]
       27 SETTABLEKS                       R2 R0 K0 ["_folderLimit"]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 JUMPIF                           R2 ; [+6]
       32 GETTABLEKS                       R2 R0 K9 ["OnLayoutFolderLimitChanged"]
       34 NAMECALL                         R2 R2 K10 ["Fire"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R2 R0 K0 ["_folderLimit"]
       40 JUMPIFEQ                         R2 R1 ; [+6]
       42 GETTABLEKS                       R2 R0 K9 ["OnLayoutFolderLimitChanged"]
       44 NAMECALL                         R2 R2 K10 ["Fire"]
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_columns"]
        2 LENGTH                           R1 R2
        3 GETTABLEKS                       R3 R0 K1 ["_columnWidths"]
        5 LENGTH                           R2 R3
        6 JUMPIFNOTLT                      R1 R2 ; [+17]
        8 GETTABLEKS                       R2 R0 K0 ["_columns"]
       10 LENGTH                           R1 R2
       11 GETTABLEKS                       R3 R0 K1 ["_columnWidths"]
       13 LENGTH                           R2 R3
       14 JUMPIFNOTLT                      R1 R2 ; [+29]
       16 GETTABLEKS                       R4 R0 K1 ["_columnWidths"]
       18 LENGTH                           R3 R4
       19 NAMECALL                         R1 R0 K2 ["_removeColumnWidth"]
       21 CALL                             R1 2 0
       22 JUMPBACK                         ; [-15]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R2 R0 K0 ["_columns"]
       26 LENGTH                           R1 R2
       27 GETTABLEKS                       R3 R0 K1 ["_columnWidths"]
       29 LENGTH                           R2 R3
       30 JUMPIFNOTLT                      R2 R1 ; [+13]
       32 GETTABLEKS                       R2 R0 K0 ["_columns"]
       34 LENGTH                           R1 R2
       35 GETTABLEKS                       R3 R0 K1 ["_columnWidths"]
       37 LENGTH                           R2 R3
       38 JUMPIFNOTLT                      R2 R1 ; [+5]
       40 NAMECALL                         R1 R0 K3 ["_addColumnWidth"]
       42 CALL                             R1 1 0
       43 JUMPBACK                         ; [-12]
       44 RETURN                           R0 0

PROTO_14:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R1 K0 ["ShowSidebar"]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R4 R1 K0 ["ShowSidebar"]
        8 NAMECALL                         R2 R0 K1 ["_setShowSidebar"]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R1 K2 ["SidebarWidth"]
       13 JUMPIFNOT                        R2 ; [+44]
       14 GETUPVAL                         R2 0
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+11]
       17 LOADN                            R3 150
       18 GETTABLEKS                       R4 R1 K2 ["SidebarWidth"]
       20 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       22 GETIMPORT                        R2 K5 [math.max]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K6 ["_sidebarWidth"]
       27 JUMP                             ; [+30]
       28 GETTABLEKS                       R3 R0 K7 ["_pluginGui"]
       30 GETTABLEKS                       R3 R3 K8 ["AbsoluteSize"]
       32 JUMPIFNOT                        R3 ; [+7]
       33 GETTABLEKS                       R2 R0 K7 ["_pluginGui"]
       35 GETTABLEKS                       R2 R2 K8 ["AbsoluteSize"]
       37 GETTABLEKS                       R2 R2 K9 ["X"]
       39 JUMP                             ; [+1]
       40 LOADN                            R2 0
       41 LOADN                            R4 150
       42 JUMPIFNOTLT                      R4 R2 ; [+3]
       44 MOVE                             R3 R2
       45 JUMP                             ; [+1]
       46 LOADK                            R3 K10 [Infinity]
       47 GETTABLEKS                       R5 R1 K2 ["SidebarWidth"]
       49 LOADN                            R6 150
       50 FASTCALL3                        MATH_CLAMP R5 R6 R3
       52 MOVE                             R7 R3
       53 GETIMPORT                        R4 K12 [math.clamp]
       55 CALL                             R4 3 1
       56 SETTABLEKS                       R4 R0 K6 ["_sidebarWidth"]
       58 GETTABLEKS                       R2 R1 K13 ["BrowserLayout"]
       60 JUMPIFNOT                        R2 ; [+29]
       61 GETTABLEKS                       R3 R1 K13 ["BrowserLayout"]
       63 GETTABLEKS                       R3 R3 K14 ["ViewType"]
       65 JUMPIFNOTEQKS                    R3 K15 ["Grid"] ; [+7]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K14 ["ViewType"]
       70 GETTABLEKS                       R2 R2 K15 ["Grid"]
       72 JUMP                             ; [+5]
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R2 R2 K14 ["ViewType"]
       76 GETTABLEKS                       R2 R2 K16 ["List"]
       78 GETTABLEKS                       R5 R1 K13 ["BrowserLayout"]
       80 GETTABLEKS                       R5 R5 K17 ["GridSize"]
       82 MOVE                             R6 R2
       83 GETTABLEKS                       R7 R1 K13 ["BrowserLayout"]
       85 GETTABLEKS                       R7 R7 K18 ["ListRowHeight"]
       87 NAMECALL                         R3 R0 K19 ["setBrowserLayout"]
       89 CALL                             R3 4 0
       90 GETTABLEKS                       R2 R1 K20 ["Columns"]
       92 JUMPIFNOT                        R2 ; [+11]
       93 GETTABLEKS                       R3 R1 K20 ["Columns"]
       95 LENGTH                           R2 R3
       96 LOADN                            R3 0
       97 JUMPIFNOTLT                      R3 R2 ; [+6]
       99 GETTABLEKS                       R4 R1 K20 ["Columns"]
      101 NAMECALL                         R2 R0 K21 ["setColumns"]
      103 CALL                             R2 2 0
      104 GETTABLEKS                       R2 R1 K22 ["ColumnWidths"]
      106 JUMPIFNOT                        R2 ; [+11]
      107 GETTABLEKS                       R3 R1 K22 ["ColumnWidths"]
      109 LENGTH                           R2 R3
      110 LOADN                            R3 0
      111 JUMPIFNOTLT                      R3 R2 ; [+6]
      113 GETTABLEKS                       R4 R1 K22 ["ColumnWidths"]
      115 NAMECALL                         R2 R0 K23 ["setColumnWidths"]
      117 CALL                             R2 2 0
      118 NAMECALL                         R2 R0 K24 ["_normalizeColumnWidths"]
      120 CALL                             R2 1 0
      121 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        2 NOT                              R3 R4
        3 NAMECALL                         R1 R0 K1 ["_setShowSidebar"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSidebarToggled"]
        4 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 0
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+8]
       12 NAMECALL                         R2 R0 K3 ["_updateGridState"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K4 ["OnAppSizesChanged"]
       17 NAMECALL                         R2 R2 K2 ["Fire"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        8 LOADN                            R3 400
        9 JUMPIFLT                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginHeight"]
        2 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 FASTCALL1                        MATH_ROUND R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [math.round]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 NAMECALL                         R2 R0 K3 ["getIsCompact"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K4 ["_pluginWidth"]
       14 SETTABLEKS                       R1 R0 K4 ["_pluginWidth"]
       16 JUMPIFEQ                         R3 R1 ; [+50]
       18 GETUPVAL                         R4 0
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+9]
       21 NAMECALL                         R4 R0 K5 ["_updateGridState"]
       23 CALL                             R4 1 0
       24 GETTABLEKS                       R4 R0 K6 ["OnAppSizesChanged"]
       26 NAMECALL                         R4 R4 K7 ["Fire"]
       28 CALL                             R4 1 0
       29 JUMP                             ; [+31]
       30 NAMECALL                         R5 R0 K3 ["getIsCompact"]
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R5 ; [+6]
       34 GETIMPORT                        R4 K10 [UDim.new]
       36 LOADN                            R5 0
       37 MOVE                             R6 R1
       38 CALL                             R4 2 1
       39 JUMP                             ; [+7]
       40 GETIMPORT                        R4 K10 [UDim.new]
       42 LOADN                            R5 0
       43 GETTABLEKS                       R7 R0 K11 ["_sidebarWidth"]
       45 SUB                              R6 R1 R7
       46 CALL                             R4 2 1
       47 NEWTABLE                         R7 0 2
       49 GETIMPORT                        R8 K10 [UDim.new]
       51 LOADN                            R9 0
       52 GETTABLEKS                       R10 R0 K11 ["_sidebarWidth"]
       54 CALL                             R8 2 1
       55 MOVE                             R9 R4
       56 SETLIST                          R7 R8 2 [1]
       58 NAMECALL                         R5 R0 K12 ["setAppSizes"]
       60 CALL                             R5 2 0
       61 GETTABLEKS                       R4 R0 K13 ["OnPluginWidthChanged"]
       63 MOVE                             R6 R1
       64 NAMECALL                         R4 R4 K7 ["Fire"]
       66 CALL                             R4 2 0
       67 NAMECALL                         R4 R0 K3 ["getIsCompact"]
       69 CALL                             R4 1 1
       70 JUMPIFNOTEQ                      R2 R4 ; [+3]
       72 JUMPIFNOTEQKN                    R3 K14 [0] ; [+29]
       74 GETTABLEKS                       R4 R0 K15 ["OnIsCompactChanged"]
       76 NAMECALL                         R6 R0 K3 ["getIsCompact"]
       78 CALL                             R6 1 -1
       79 NAMECALL                         R4 R4 K7 ["Fire"]
       81 CALL                             R4 -1 0
       82 GETTABLEKS                       R4 R0 K16 ["_isPluginFrameLoaded"]
       84 JUMPIF                           R4 ; [+4]
       85 LOADB                            R4 1
       86 SETTABLEKS                       R4 R0 K16 ["_isPluginFrameLoaded"]
       88 RETURN                           R0 0
       89 NAMECALL                         R4 R0 K3 ["getIsCompact"]
       91 CALL                             R4 1 1
       92 JUMPIFNOT                        R4 ; [+5]
       93 LOADB                            R6 0
       94 NAMECALL                         R4 R0 K17 ["_setShowSidebar"]
       96 CALL                             R4 2 0
       97 RETURN                           R0 0
       98 LOADB                            R6 1
       99 NAMECALL                         R4 R0 K17 ["_setShowSidebar"]
      101 CALL                             R4 2 0
      102 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 FASTCALL1                        MATH_ROUND R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [math.round]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 GETTABLEKS                       R2 R0 K3 ["_pluginHeight"]
       11 SETTABLEKS                       R1 R0 K3 ["_pluginHeight"]
       13 JUMPIFEQ                         R2 R1 ; [+17]
       15 GETTABLEKS                       R5 R0 K4 ["OnPluginHeightChanged"]
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL1                        ASSERT R4 ; [+2]
       22 GETIMPORT                        R3 K6 [assert]
       24 CALL                             R3 1 0
       25 GETTABLEKS                       R3 R0 K4 ["OnPluginHeightChanged"]
       27 MOVE                             R5 R1
       28 NAMECALL                         R3 R3 K7 ["Fire"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_23:
        0 LENGTH                           R2 R1
        1 JUMPIFEQKN                       R2 K0 [2] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEN                        R2 R1 1
        5 GETTABLEKS                       R2 R2 K1 ["Offset"]
        7 GETTABLEN                        R3 R1 2
        8 GETTABLEKS                       R4 R0 K2 ["_sidebarWidth"]
       10 JUMPIFNOTEQ                      R2 R4 ; [+6]
       12 GETTABLEKS                       R4 R0 K3 ["_browserSize"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+2]
       16 RETURN                           R0 0
       17 SETTABLEKS                       R2 R0 K2 ["_sidebarWidth"]
       19 SETTABLEKS                       R3 R0 K3 ["_browserSize"]
       21 NAMECALL                         R4 R0 K4 ["_updateGridState"]
       23 CALL                             R4 1 0
       24 GETTABLEKS                       R4 R0 K5 ["OnAppSizesChanged"]
       26 NAMECALL                         R6 R0 K6 ["getAppSizes"]
       28 CALL                             R6 1 -1
       29 NAMECALL                         R4 R4 K7 ["Fire"]
       31 CALL                             R4 -1 0
       32 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R1 0 2
        2 GETIMPORT                        R2 K2 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R0 K3 ["_sidebarWidth"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K4 ["_browserSize"]
       10 SETLIST                          R1 R2 2 [1]
       12 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+4]
        8 GETTABLEKS                       R1 R0 K1 ["_sidebarWidth"]
       10 RETURN                           R1 1
       11 NAMECALL                         R2 R0 K2 ["getSidebarSizing"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K0 ["_pluginWidth"]
       16 GETTABLEKS                       R6 R2 K3 ["Size"]
       18 GETTABLEKS                       R6 R6 K4 ["X"]
       20 GETTABLEKS                       R6 R6 K5 ["Scale"]
       22 MUL                              R5 R6 R3
       23 GETTABLEKS                       R6 R2 K3 ["Size"]
       25 GETTABLEKS                       R6 R6 K4 ["X"]
       27 GETTABLEKS                       R6 R6 K6 ["Offset"]
       29 ADD                              R4 R5 R6
       30 GETTABLEKS                       R7 R2 K7 ["MinWidth"]
       32 GETTABLEKS                       R8 R2 K8 ["MaxWidth"]
       34 FASTCALL3                        MATH_CLAMP R4 R7 R8
       36 MOVE                             R6 R4
       37 GETIMPORT                        R5 K11 [math.clamp]
       39 CALL                             R5 3 1
       40 MOVE                             R1 R5
       41 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_sidebarWidth"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R2 R0 K0 ["getSidebarWidth"]
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 JUMPIFNOTLE                      R3 R1 ; [+7]
       10 NAMECALL                         R3 R0 K1 ["getSidebarDesiredWidth"]
       12 CALL                             R3 1 1
       13 JUMPIFNOTLT                      R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 ADD                              R5 R2 R1
       17 NAMECALL                         R3 R0 K2 ["setSidebarWidth"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADN                            R3 150
        5 FASTCALL1                        MATH_ROUND R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K2 [math.round]
        9 CALL                             R4 1 1
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K4 [math.max]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R3 R0 K5 ["_sidebarWidth"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 SETTABLEKS                       R2 R0 K5 ["_sidebarWidth"]
       22 NAMECALL                         R3 R0 K6 ["_updateGridState"]
       24 CALL                             R3 1 0
       25 GETTABLEKS                       R3 R0 K7 ["OnAppSizesChanged"]
       27 NAMECALL                         R3 R3 K8 ["Fire"]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_29:
        0 DUPTABLE                         R1 K4 [{[1], ["MinWidth"] = 150, ["MaxWidth"]}]
        1 GETIMPORT                        R2 K7 [UDim2.new]
        3 LOADN                            R3 1
        4 NAMECALL                         R5 R0 K8 ["_getBrowserMinWidth"]
        6 CALL                             R5 1 1
        7 MINUS                            R4 R5
        8 LOADN                            R5 1
        9 LOADN                            R6 0
       10 CALL                             R2 4 1
       11 SETTABLEKS                       R2 R1 K0 ["Size"]
       13 GETTABLEKS                       R2 R0 K9 ["_sidebarWidth"]
       15 SETTABLEKS                       R2 R1 K3 ["MaxWidth"]
       17 RETURN                           R1 1

PROTO_30:
        0 NAMECALL                         R1 R0 K0 ["getIsCompact"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADN                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R1 R0 K1 ["_showDetailsDrawer"]
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADN                            R1 400
       13 RETURN                           R1 1
       14 LOADN                            R1 250
       15 RETURN                           R1 1

PROTO_31:
        0 NAMECALL                         R1 R0 K0 ["getIsCompact"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["_showSidebar"]
        6 JUMPIF                           R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K2 ["_pluginWidth"]
        9 RETURN                           R1 1
       10 LOADN                            R2 0
       11 GETTABLEKS                       R4 R0 K2 ["_pluginWidth"]
       13 NAMECALL                         R5 R0 K3 ["getSidebarWidth"]
       15 CALL                             R5 1 1
       16 SUB                              R3 R4 R5
       17 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       19 GETIMPORT                        R1 K6 [math.max]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1

PROTO_32:
        0 NAMECALL                         R1 R0 K0 ["_getBrowserWidth"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K1 ["_showDetailsDrawer"]
        8 JUMPIFNOT                        R2 ; [+4]
        9 NAMECALL                         R2 R0 K2 ["getIsCompact"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+1]
       13 RETURN                           R1 1
       14 NAMECALL                         R3 R0 K3 ["getMainViewSizing"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R6 R3 K4 ["Size"]
       19 GETTABLEKS                       R6 R6 K5 ["X"]
       21 GETTABLEKS                       R6 R6 K6 ["Scale"]
       23 MUL                              R5 R6 R1
       24 GETTABLEKS                       R6 R3 K4 ["Size"]
       26 GETTABLEKS                       R6 R6 K5 ["X"]
       28 GETTABLEKS                       R6 R6 K7 ["Offset"]
       30 ADD                              R4 R5 R6
       31 GETTABLEKS                       R7 R3 K8 ["MinWidth"]
       33 GETTABLEKS                       R8 R3 K9 ["MaxWidth"]
       35 FASTCALL3                        MATH_CLAMP R4 R7 R8
       37 MOVE                             R6 R4
       38 GETIMPORT                        R5 K12 [math.clamp]
       40 CALL                             R5 3 1
       41 MOVE                             R2 R5
       42 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 NAMECALL                         R1 R0 K1 ["getIsCompact"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+2]
       10 LOADN                            R1 0
       11 RETURN                           R1 1
       12 LOADN                            R2 0
       13 NAMECALL                         R4 R0 K2 ["_getBrowserWidth"]
       15 CALL                             R4 1 1
       16 NAMECALL                         R5 R0 K3 ["getMainViewWidth"]
       18 CALL                             R5 1 1
       19 SUB                              R3 R4 R5
       20 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       22 GETIMPORT                        R1 K6 [math.max]
       24 CALL                             R1 2 1
       25 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_drawerDesiredWidth"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R2 R0 K0 ["getDrawerWidth"]
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 JUMPIFNOTLE                      R1 R3 ; [+7]
       10 NAMECALL                         R3 R0 K1 ["getDrawerDesiredWidth"]
       12 CALL                             R3 1 1
       13 JUMPIFNOTLT                      R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 SUB                              R5 R2 R1
       17 NAMECALL                         R3 R0 K2 ["setDrawerDesiredWidth"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R2 R0 K0 ["getPluginHeight"]
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 JUMPIFNOTLE                      R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 NAMECALL                         R6 R0 K1 ["getCompactDrawerHeightScale"]
       13 CALL                             R6 1 1
       14 DIV                              R7 R1 R2
       15 SUB                              R5 R6 R7
       16 NAMECALL                         R3 R0 K2 ["setCompactDrawerHeightScale"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_38:
        0 JUMPIF                           R1 ; [+4]
        1 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
        3 GETTABLEKS                       R1 R4 K1 ["GridSize"]
        5 JUMPIF                           R2 ; [+4]
        6 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
        8 GETTABLEKS                       R2 R4 K2 ["ViewType"]
       10 JUMPIF                           R3 ; [+4]
       11 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       13 GETTABLEKS                       R3 R4 K3 ["ListRowHeight"]
       15 DUPTABLE                         R4 K4 [{"GridSize", "ViewType", "ListRowHeight"}]
       16 SETTABLEKS                       R1 R4 K1 ["GridSize"]
       18 SETTABLEKS                       R2 R4 K2 ["ViewType"]
       20 SETTABLEKS                       R3 R4 K3 ["ListRowHeight"]
       22 SETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       24 NAMECALL                         R4 R0 K5 ["_updateGridState"]
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R4 R0 K6 ["OnBrowserLayoutChanged"]
       29 GETTABLEKS                       R6 R0 K0 ["_browserLayout"]
       31 NAMECALL                         R4 R4 K7 ["Fire"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R1 K1 ["ViewType"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R2 K2 ["List"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+14]
       11 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       13 GETTABLEKS                       R3 R3 K3 ["ListRowHeight"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["ListThumbnailScale"]
       18 MUL                              R2 R3 R4
       19 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       20 GETIMPORT                        R1 K7 [math.floor]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       26 GETTABLEKS                       R3 R3 K8 ["GridSize"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K9 ["GridThumbnailScale"]
       31 MUL                              R2 R3 R4
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K10 ["GridThumbnailOffset"]
       35 SUB                              R1 R2 R3
       36 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R1 K1 ["ViewType"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R2 K2 ["Grid"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+4]
       11 GETTABLEKS                       R1 R0 K3 ["_contentGrid"]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K4 ["_contentList"]
       16 RETURN                           R1 1

PROTO_42:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R3 R0 K3 ["_columnWidths"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K5 [table.remove]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 0
       10 SETTABLEKS                       R2 R0 K3 ["_columnWidths"]
       12 GETTABLEKS                       R3 R0 K6 ["OnColumnWidthsChanged"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K7 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_columnWidths"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K5 [table.insert]
       11 CALL                             R2 2 0
       12 SETTABLEKS                       R1 R0 K3 ["_columnWidths"]
       14 GETTABLEKS                       R2 R0 K6 ["OnColumnWidthsChanged"]
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K7 ["Fire"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_46:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_50:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getColumnIndex"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETIMPORT                        R3 K3 [table.remove]
        7 GETTABLEKS                       R4 R0 K4 ["_columns"]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 0
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R0 K5 ["_removeColumnWidth"]
       14 CALL                             R3 2 0
       15 JUMP                             ; [+11]
       16 GETTABLEKS                       R4 R0 K4 ["_columns"]
       18 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 NAMECALL                         R3 R0 K8 ["_addColumnWidth"]
       26 CALL                             R3 1 0
       27 GETIMPORT                        R3 K10 [table.clone]
       29 GETTABLEKS                       R4 R0 K4 ["_columns"]
       31 CALL                             R3 1 1
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R0 K11 ["setColumns"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_headerRow"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K4 ["_contentList"]
        8 GETTABLEKS                       R2 R2 K5 ["CanvasPosition"]
       10 GETTABLEKS                       R2 R2 K6 ["X"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K7 ["OnContentScrollChanged"]
       19 NAMECALL                         R0 R0 K8 ["Fire"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_52:
        0 NAMECALL                         R1 R0 K0 ["_unbindScroll"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_contentList"]
        5 LOADK                            R3 K2 ["CanvasPosition"]
        6 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K4 ["Connect"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["_scrollerConnection"]
       16 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R3 R3 K1 ["ViewType"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["ViewType"]
        7 GETTABLEKS                       R4 R4 K2 ["Grid"]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       15 GETTABLEKS                       R3 R3 K3 ["GridSize"]
       17 GETUPVAL                         R5 1
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["CellDataHeightWithTwoLineName"]
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["CellDataHeight"]
       27 JUMPIFNOT                        R2 ; [+10]
       28 ADD                              R6 R4 R3
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K6 ["GridCellPadding"]
       32 GETTABLEKS                       R7 R7 K7 ["Y"]
       34 GETTABLEKS                       R7 R7 K8 ["Offset"]
       36 ADD                              R5 R6 R7
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       40 GETTABLEKS                       R5 R5 K9 ["ListRowHeight"]
       42 JUMPIFNOT                        R2 ; [+8]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K6 ["GridCellPadding"]
       46 GETTABLEKS                       R6 R6 K7 ["Y"]
       48 GETTABLEKS                       R6 R6 K8 ["Offset"]
       50 JUMP                             ; [+1]
       51 LOADN                            R6 0
       52 JUMPIFNOT                        R2 ; [+11]
       53 SUBK                             R10 R1 K10 [1]
       54 NAMECALL                         R11 R0 K11 ["getGridCellsPerRow"]
       56 CALL                             R11 1 1
       57 DIV                              R9 R10 R11
       58 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       59 GETIMPORT                        R8 K14 [math.floor]
       61 CALL                             R8 1 1
       62 ADDK                             R7 R8 K10 [1]
       63 JUMP                             ; [+1]
       64 MOVE                             R7 R1
       65 SUBK                             R10 R7 K10 [1]
       66 MUL                              R9 R10 R5
       67 ADD                              R8 R6 R9
       68 DUPTABLE                         R9 K20 [{"rowHeight", "padding", "rowIndex", "rowTop", "rowBottom"}]
       69 SETTABLEKS                       R5 R9 K15 ["rowHeight"]
       71 SETTABLEKS                       R6 R9 K16 ["padding"]
       73 SETTABLEKS                       R7 R9 K17 ["rowIndex"]
       75 SETTABLEKS                       R8 R9 K18 ["rowTop"]
       77 ADD                              R10 R8 R5
       78 SETTABLEKS                       R10 R9 K19 ["rowBottom"]
       80 RETURN                           R9 1

PROTO_55:
        0 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R3 R3 K1 ["GridSize"]
        4 FASTCALL1                        MATH_FLOOR R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K4 [math.floor]
        8 CALL                             R6 1 1
        9 JUMPIFEQ                         R6 R3 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       15 LOADK                            R6 K5 ["LayoutController:scrollToItem - Precision lost with non-integer GridSize"]
       16 GETIMPORT                        R4 K7 [assert]
       18 CALL                             R4 2 0
       19 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       21 GETTABLEKS                       R5 R5 K8 ["ViewType"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K8 ["ViewType"]
       26 GETTABLEKS                       R6 R6 K9 ["Grid"]
       28 JUMPIFEQ                         R5 R6 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETTABLEKS                       R5 R0 K10 ["_contentGrid"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R5 R0 K11 ["_contentList"]
       38 JUMPIF                           R5 ; [+1]
       39 RETURN                           R0 0
       40 MOVE                             R8 R1
       41 NAMECALL                         R6 R0 K12 ["_getRowGeometry"]
       43 CALL                             R6 2 1
       44 GETTABLEKS                       R7 R5 K13 ["CanvasPosition"]
       46 GETTABLEKS                       R7 R7 K14 ["X"]
       48 JUMPIFNOT                        R2 ; [+26]
       49 LOADN                            R9 0
       50 GETTABLEKS                       R12 R6 K15 ["rowTop"]
       52 GETTABLEKS                       R14 R6 K17 ["rowHeight"]
       54 DIVK                             R13 R14 K16 [2]
       55 ADD                              R11 R12 R13
       56 GETTABLEKS                       R13 R5 K18 ["AbsoluteSize"]
       58 GETTABLEKS                       R13 R13 K19 ["Y"]
       60 DIVK                             R12 R13 K16 [2]
       61 SUB                              R10 R11 R12
       62 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       64 GETIMPORT                        R8 K21 [math.max]
       66 CALL                             R8 2 1
       67 GETIMPORT                        R9 K24 [Vector2.new]
       69 MOVE                             R10 R7
       70 MOVE                             R11 R8
       71 CALL                             R9 2 1
       72 SETTABLEKS                       R9 R5 K13 ["CanvasPosition"]
       74 RETURN                           R0 0
       75 GETTABLEKS                       R8 R5 K13 ["CanvasPosition"]
       77 GETTABLEKS                       R8 R8 K19 ["Y"]
       79 GETTABLEKS                       R10 R5 K18 ["AbsoluteSize"]
       81 GETTABLEKS                       R10 R10 K19 ["Y"]
       83 GETTABLEKS                       R11 R6 K25 ["padding"]
       85 SUB                              R9 R10 R11
       86 GETTABLEKS                       R12 R6 K17 ["rowHeight"]
       88 DIV                              R11 R8 R12
       89 FASTCALL1                        MATH_CEIL R11 ; [+2]
       90 GETIMPORT                        R10 K27 [math.ceil]
       92 CALL                             R10 1 1
       93 ADD                              R13 R8 R9
       94 GETTABLEKS                       R14 R6 K17 ["rowHeight"]
       96 DIV                              R12 R13 R14
       97 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       98 GETIMPORT                        R11 K4 [math.floor]
      100 CALL                             R11 1 1
      101 GETTABLEKS                       R12 R6 K28 ["rowIndex"]
      103 JUMPIFNOTLE                      R12 R10 ; [+10]
      105 GETIMPORT                        R12 K24 [Vector2.new]
      107 MOVE                             R13 R7
      108 GETTABLEKS                       R14 R6 K15 ["rowTop"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R5 K13 ["CanvasPosition"]
      113 RETURN                           R0 0
      114 GETTABLEKS                       R12 R6 K28 ["rowIndex"]
      116 JUMPIFNOTLT                      R11 R12 ; [+16]
      118 GETTABLEKS                       R13 R5 K18 ["AbsoluteSize"]
      120 GETTABLEKS                       R13 R13 K19 ["Y"]
      122 ADD                              R12 R8 R13
      123 GETIMPORT                        R13 K24 [Vector2.new]
      125 MOVE                             R14 R7
      126 GETTABLEKS                       R17 R6 K29 ["rowBottom"]
      128 SUB                              R16 R17 R12
      129 ADD                              R15 R8 R16
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R5 K13 ["CanvasPosition"]
      133 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_scrollTimeoutThread"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_cancelPendingScroll"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_57:
        0 NAMECALL                         R2 R0 K0 ["_cancelPendingScroll"]
        2 CALL                             R2 1 0
        3 SETTABLEKS                       R1 R0 K1 ["_pendingScrollIndex"]
        5 GETIMPORT                        R2 K4 [task.delay]
        7 LOADN                            R3 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R0 K5 ["_scrollTimeoutThread"]
       13 NAMECALL                         R2 R0 K6 ["_bindScrollReady"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_evaluateScrollReady"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_connections"]
        2 GETTABLEKS                       R1 R1 K1 ["ScrollReady"]
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETTABLEKS                       R1 R0 K0 ["_connections"]
        7 GETTABLEKS                       R1 R1 K1 ["ScrollReady"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K0 ["_connections"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["ScrollReady"]
       17 GETTABLEKS                       R1 R0 K3 ["_scrollSettleThread"]
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETIMPORT                        R1 K6 [task.cancel]
       22 GETTABLEKS                       R2 R0 K3 ["_scrollSettleThread"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["_scrollSettleThread"]
       28 GETTABLEKS                       R1 R0 K7 ["_destroyed"]
       30 JUMPIF                           R1 ; [+4]
       31 GETTABLEKS                       R1 R0 K8 ["_pendingScrollIndex"]
       33 JUMPIFNOTEQKNIL                  R1 ; [+2]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R2 R0 K9 ["_browserLayout"]
       38 GETTABLEKS                       R2 R2 K10 ["ViewType"]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K10 ["ViewType"]
       43 GETTABLEKS                       R3 R3 K11 ["Grid"]
       45 JUMPIFEQ                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+3]
       50 GETTABLEKS                       R2 R0 K12 ["_contentGrid"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R2 R0 K13 ["_contentList"]
       55 JUMPIF                           R2 ; [+1]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R3 R0 K0 ["_connections"]
       59 LOADK                            R6 K14 ["AbsoluteCanvasSize"]
       60 NAMECALL                         R4 R2 K15 ["GetPropertyChangedSignal"]
       62 CALL                             R4 2 1
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 NAMECALL                         R4 R4 K16 ["Connect"]
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K1 ["ScrollReady"]
       71 MOVE                             R5 R2
       72 NAMECALL                         R3 R0 K17 ["_evaluateScrollReady"]
       74 CALL                             R3 2 0
       75 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_scrollSettleThread"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 NAMECALL                         R0 R0 K1 ["scrollToItem"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K2 ["_cancelPendingScroll"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_61:
        0 GETTABLEKS                       R2 R0 K0 ["_pendingScrollIndex"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R1 K1 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R3 K2 ["Y"]
        9 MOVE                             R6 R2
       10 NAMECALL                         R4 R0 K3 ["_getRowGeometry"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R4 R4 K4 ["rowBottom"]
       15 JUMPIFNOTLT                      R3 R4 ; [+13]
       17 GETTABLEKS                       R3 R0 K5 ["_scrollSettleThread"]
       19 JUMPIFNOT                        R3 ; [+8]
       20 GETIMPORT                        R3 K8 [task.cancel]
       22 GETTABLEKS                       R4 R0 K5 ["_scrollSettleThread"]
       24 CALL                             R3 1 0
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R0 K5 ["_scrollSettleThread"]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R0 K5 ["_scrollSettleThread"]
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETIMPORT                        R3 K8 [task.cancel]
       34 GETTABLEKS                       R4 R0 K5 ["_scrollSettleThread"]
       36 CALL                             R3 1 0
       37 GETIMPORT                        R3 K10 [task.delay]
       39 LOADK                            R4 K11 [0.05]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R0 K5 ["_scrollSettleThread"]
       46 RETURN                           R0 0

PROTO_62:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_pendingScrollIndex"]
        3 GETTABLEKS                       R1 R0 K1 ["_connections"]
        5 GETTABLEKS                       R1 R1 K2 ["ScrollReady"]
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETTABLEKS                       R1 R0 K1 ["_connections"]
       10 GETTABLEKS                       R1 R1 K2 ["ScrollReady"]
       12 NAMECALL                         R1 R1 K3 ["Disconnect"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K1 ["_connections"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K2 ["ScrollReady"]
       20 GETTABLEKS                       R1 R0 K4 ["_scrollSettleThread"]
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETIMPORT                        R1 K7 [task.cancel]
       25 GETTABLEKS                       R2 R0 K4 ["_scrollSettleThread"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K4 ["_scrollSettleThread"]
       31 GETTABLEKS                       R1 R0 K8 ["_scrollTimeoutThread"]
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETIMPORT                        R1 K7 [task.cancel]
       36 GETTABLEKS                       R2 R0 K8 ["_scrollTimeoutThread"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K8 ["_scrollTimeoutThread"]
       42 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R2 R0 K0 ["_mainSidebarScrollFrame"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["SidebarRowHeight"]
        7 SUBK                             R5 R1 K2 [1]
        8 MUL                              R4 R5 R3
        9 DIVK                             R7 R3 K3 [2]
       10 ADD                              R6 R4 R7
       11 GETTABLEKS                       R8 R2 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R8 R8 K5 ["Y"]
       15 DIVK                             R7 R8 K3 [2]
       16 SUB                              R5 R6 R7
       17 GETIMPORT                        R6 K8 [Vector2.new]
       19 GETTABLEKS                       R7 R2 K9 ["CanvasPosition"]
       21 GETTABLEKS                       R7 R7 K10 ["X"]
       23 LOADN                            R9 0
       24 FASTCALL2                        MATH_MAX R9 R5 ; [+4]
       26 MOVE                             R10 R5
       27 GETIMPORT                        R8 K13 [math.max]
       29 CALL                             R8 2 1
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R2 K9 ["CanvasPosition"]
       33 RETURN                           R0 0

PROTO_64:
        0 SETTABLEKS                       R1 R0 K0 ["_contentList"]
        2 GETTABLEKS                       R2 R0 K0 ["_contentList"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["_headerRow"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 NAMECALL                         R2 R0 K2 ["_bindScroll"]
       10 CALL                             R2 1 0
       11 JUMP                             ; [+3]
       12 NAMECALL                         R2 R0 K3 ["_unbindScroll"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K4 ["_pendingScrollIndex"]
       17 JUMPIFEQKNIL                     R2 ; [+4]
       19 NAMECALL                         R2 R0 K5 ["_bindScrollReady"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_65:
        0 SETTABLEKS                       R1 R0 K0 ["_headerRow"]
        2 GETTABLEKS                       R2 R0 K1 ["_contentList"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_headerRow"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 NAMECALL                         R2 R0 K2 ["_bindScroll"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 NAMECALL                         R2 R0 K3 ["_unbindScroll"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        4 GETTABLEKS                       R3 R3 K1 ["GridSize"]
        6 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.floor]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["GridSize"]
       12 NAMECALL                         R1 R0 K5 ["getGridWidth"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["GridCellPadding"]
       18 GETTABLEKS                       R2 R2 K7 ["X"]
       20 GETTABLEKS                       R2 R2 K8 ["Offset"]
       22 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       24 GETTABLEKS                       R4 R4 K1 ["GridSize"]
       26 ADD                              R3 R4 R2
       27 SUB                              R7 R1 R2
       28 DIV                              R6 R7 R3
       29 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       30 GETIMPORT                        R5 K4 [math.floor]
       32 CALL                             R5 1 1
       33 FASTCALL2K                       MATH_MAX R5 K9 ; [+4]
       35 LOADK                            R6 K9 [1]
       36 GETIMPORT                        R4 K11 [math.max]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R0 K12 ["_gridCellsPerRow"]
       41 NAMECALL                         R4 R0 K13 ["_updateFolderLimit"]
       43 CALL                             R4 1 0
       44 GETTABLEKS                       R4 R0 K14 ["OnGridStateUpdated"]
       46 NAMECALL                         R4 R4 K15 ["Fire"]
       48 CALL                             R4 1 0
       49 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K2 ["X"]
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_68:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContentScrollChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_70:
        0 SETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 GETTABLEKS                       R2 R0 K1 ["_destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["_connections"]
        8 GETTABLEKS                       R2 R2 K3 ["ContentGrid"]
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R2 R0 K2 ["_connections"]
       13 GETTABLEKS                       R2 R2 K3 ["ContentGrid"]
       15 NAMECALL                         R2 R2 K4 ["Disconnect"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R2 R0 K2 ["_connections"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K3 ["ContentGrid"]
       23 JUMPIFNOT                        R1 ; [+26]
       24 GETTABLEKS                       R2 R0 K2 ["_connections"]
       26 LOADK                            R5 K5 ["AbsoluteSize"]
       27 NAMECALL                         R3 R1 K6 ["GetPropertyChangedSignal"]
       29 CALL                             R3 2 1
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R3 R3 K7 ["Connect"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K3 ["ContentGrid"]
       37 GETTABLEKS                       R2 R0 K2 ["_connections"]
       39 LOADK                            R5 K8 ["CanvasPosition"]
       40 NAMECALL                         R3 R1 K6 ["GetPropertyChangedSignal"]
       42 CALL                             R3 2 1
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R3 R3 K7 ["Connect"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K9 ["GridScrollConnection"]
       50 NAMECALL                         R2 R0 K10 ["_updateGridState"]
       52 CALL                             R2 1 0
       53 GETTABLEKS                       R2 R0 K11 ["_pendingScrollIndex"]
       55 JUMPIFEQKNIL                     R2 ; [+4]
       57 NAMECALL                         R2 R0 K12 ["_bindScrollReady"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R0 R0 K1 ["Y"]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K4 [Vector2.new]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["CanvasPosition"]
       13 GETTABLEKS                       R3 R3 K5 ["X"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K0 ["CanvasPosition"]
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+12]
       21 GETUPVAL                         R1 2
       22 GETIMPORT                        R2 K4 [Vector2.new]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K0 ["CanvasPosition"]
       27 GETTABLEKS                       R3 R3 K5 ["X"]
       29 MOVE                             R4 R0
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K0 ["CanvasPosition"]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R1 R1 K6 ["OnSidebarScrollChanged"]
       36 NAMECALL                         R1 R1 K7 ["Fire"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+2]
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMPIF                           R3 ; [+18]
        7 GETTABLEKS                       R4 R0 K1 ["_connections"]
        9 GETTABLEKS                       R4 R4 K2 ["SidebarScrollSync"]
       11 JUMPIFNOT                        R4 ; [+12]
       12 GETTABLEKS                       R4 R0 K1 ["_connections"]
       14 GETTABLEKS                       R4 R4 K2 ["SidebarScrollSync"]
       16 NAMECALL                         R4 R4 K3 ["Disconnect"]
       18 CALL                             R4 1 0
       19 GETTABLEKS                       R4 R0 K1 ["_connections"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K2 ["SidebarScrollSync"]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R0 K1 ["_connections"]
       27 LOADK                            R7 K4 ["CanvasPosition"]
       28 NAMECALL                         R5 R2 K5 ["GetPropertyChangedSignal"]
       30 CALL                             R5 2 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R5 R5 K6 ["Connect"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K2 ["SidebarScrollSync"]
       41 RETURN                           R0 0

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["_mainSidebarScrollFrame"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETTABLEKS                       R3 R1 K1 ["CanvasSize"]
        7 GETTABLEKS                       R3 R3 K2 ["Y"]
        9 GETTABLEKS                       R3 R3 K3 ["Offset"]
       11 GETTABLEKS                       R4 R1 K4 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R4 K2 ["Y"]
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSidebarScrollableChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_75:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K1 ["_mainSidebarScrollFrame"]
        6 SETTABLEKS                       R2 R0 K2 ["_underlaySidebarScrollFrame"]
        8 SETTABLEKS                       R3 R0 K3 ["_overlaySidebarScrollFrame"]
       10 GETTABLEKS                       R4 R0 K4 ["_connections"]
       12 GETTABLEKS                       R4 R4 K5 ["SidebarScrollableCanvasSize"]
       14 JUMPIFNOT                        R4 ; [+12]
       15 GETTABLEKS                       R4 R0 K4 ["_connections"]
       17 GETTABLEKS                       R4 R4 K5 ["SidebarScrollableCanvasSize"]
       19 NAMECALL                         R4 R4 K6 ["Disconnect"]
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R4 R0 K4 ["_connections"]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K5 ["SidebarScrollableCanvasSize"]
       27 GETTABLEKS                       R4 R0 K4 ["_connections"]
       29 GETTABLEKS                       R4 R4 K7 ["SidebarScrollableAbsoluteSize"]
       31 JUMPIFNOT                        R4 ; [+12]
       32 GETTABLEKS                       R4 R0 K4 ["_connections"]
       34 GETTABLEKS                       R4 R4 K7 ["SidebarScrollableAbsoluteSize"]
       36 NAMECALL                         R4 R4 K6 ["Disconnect"]
       38 CALL                             R4 1 0
       39 GETTABLEKS                       R4 R0 K4 ["_connections"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K7 ["SidebarScrollableAbsoluteSize"]
       44 JUMPIFNOT                        R1 ; [+31]
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          VAL R0
       47 GETTABLEKS                       R5 R0 K4 ["_connections"]
       49 LOADK                            R8 K8 ["CanvasSize"]
       50 NAMECALL                         R6 R1 K9 ["GetPropertyChangedSignal"]
       52 CALL                             R6 2 1
       53 MOVE                             R8 R4
       54 NAMECALL                         R6 R6 K10 ["Connect"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K5 ["SidebarScrollableCanvasSize"]
       59 GETTABLEKS                       R5 R0 K4 ["_connections"]
       61 LOADK                            R8 K11 ["AbsoluteSize"]
       62 NAMECALL                         R6 R1 K9 ["GetPropertyChangedSignal"]
       64 CALL                             R6 2 1
       65 MOVE                             R8 R4
       66 NAMECALL                         R6 R6 K10 ["Connect"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K7 ["SidebarScrollableAbsoluteSize"]
       71 GETTABLEKS                       R5 R0 K12 ["OnSidebarScrollableChanged"]
       73 NAMECALL                         R5 R5 K13 ["Fire"]
       75 CALL                             R5 1 0
       76 MOVE                             R6 R2
       77 MOVE                             R7 R1
       78 MOVE                             R8 R3
       79 NAMECALL                         R4 R0 K14 ["_syncSidebarScroll"]
       81 CALL                             R4 4 0
       82 RETURN                           R0 0

PROTO_76:
        0 GETTABLEKS                       R2 R0 K0 ["_mainSidebarScrollFrame"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 LOADN                            R6 1
        9 CALL                             R3 3 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 GETTABLEKS                       R3 R2 K1 ["AbsolutePosition"]
       15 GETTABLEKS                       R6 R1 K2 ["Y"]
       17 GETTABLEKS                       R7 R3 K2 ["Y"]
       19 SUB                              R5 R6 R7
       20 GETTABLEKS                       R6 R2 K3 ["CanvasPosition"]
       22 GETTABLEKS                       R6 R6 K2 ["Y"]
       24 ADD                              R4 R5 R6
       25 RETURN                           R4 1

PROTO_77:
        0 GETTABLEKS                       R1 R0 K0 ["_gridCellsPerRow"]
        2 RETURN                           R1 1

PROTO_78:
        0 NAMECALL                         R1 R0 K0 ["getGridWidth"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getGridCellsPerRow"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R3 R0 K2 ["getBrowserLayout"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K3 ["GridSize"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["GridCellPadding"]
       14 GETTABLEKS                       R5 R5 K5 ["X"]
       16 GETTABLEKS                       R5 R5 K6 ["Offset"]
       18 FASTCALL2K                       MATH_MAX R2 K7 ; [+5]
       20 MOVE                             R7 R2
       21 LOADK                            R8 K7 [1]
       22 GETIMPORT                        R6 K10 [math.max]
       24 CALL                             R6 2 1
       25 LOADN                            R8 0
       26 MUL                              R11 R6 R4
       27 ADDK                             R13 R6 K7 [1]
       28 MUL                              R12 R13 R5
       29 ADD                              R10 R11 R12
       30 SUB                              R9 R1 R10
       31 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       33 GETIMPORT                        R7 K10 [math.max]
       35 CALL                             R7 2 1
       36 ADDK                             R11 R6 K7 [1]
       37 DIV                              R10 R7 R11
       38 ADD                              R9 R5 R10
       39 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       40 GETIMPORT                        R8 K12 [math.floor]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       45 MOVE                             R10 R8
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K4 ["GridCellPadding"]
       49 GETTABLEKS                       R11 R11 K16 ["Y"]
       51 GETTABLEKS                       R11 R11 K6 ["Offset"]
       53 CALL                             R9 2 -1
       54 RETURN                           R9 -1

PROTO_79:
        0 GETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        7 GETTABLEKS                       R1 R0 K1 ["OnDetailsDrawerChanged"]
        9 LOADB                            R3 1
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K3 ["OnAppSizesChanged"]
       15 NAMECALL                         R1 R1 K2 ["Fire"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_80:
        0 GETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        7 GETTABLEKS                       R1 R0 K1 ["OnDetailsDrawerChanged"]
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K3 ["OnAppSizesChanged"]
       15 NAMECALL                         R1 R1 K2 ["Fire"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_81:
        0 GETTABLEKS                       R1 R0 K0 ["_showDetailsDrawer"]
        2 RETURN                           R1 1

PROTO_82:
        0 DUPTABLE                         R1 K5 [{[1], ["MinWidth"] = 250, ["MaxWidth"] = Infinity}]
        1 GETIMPORT                        R2 K8 [UDim2.new]
        3 LOADN                            R3 1
        4 GETTABLEKS                       R5 R0 K9 ["_drawerDesiredWidth"]
        6 MINUS                            R4 R5
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 CALL                             R2 4 1
       10 SETTABLEKS                       R2 R1 K0 ["Size"]
       12 RETURN                           R1 1

PROTO_83:
        0 LOADN                            R3 150
        1 FASTCALL1                        MATH_ROUND R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [math.round]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [math.max]
       10 CALL                             R2 2 1
       11 GETTABLEKS                       R3 R0 K5 ["_drawerDesiredWidth"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 RETURN                           R0 0
       16 SETTABLEKS                       R2 R0 K5 ["_drawerDesiredWidth"]
       18 GETTABLEKS                       R3 R0 K6 ["OnAppSizesChanged"]
       20 NAMECALL                         R3 R3 K7 ["Fire"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_84:
        0 GETTABLEKS                       R1 R0 K0 ["_compactDrawerHeightScale"]
        2 RETURN                           R1 1

PROTO_85:
        0 LOADK                            R4 K0 [0.25]
        1 LOADK                            R5 K1 [0.9]
        2 FASTCALL3                        MATH_CLAMP R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K4 [math.clamp]
        7 CALL                             R2 3 1
        8 GETTABLEKS                       R3 R0 K5 ["_compactDrawerHeightScale"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+2]
       12 RETURN                           R0 0
       13 SETTABLEKS                       R2 R0 K5 ["_compactDrawerHeightScale"]
       15 GETTABLEKS                       R3 R0 K6 ["OnCompactDrawerHeightChanged"]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K7 ["Fire"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagAmrGridAssetNameTwoLine"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K12 ["ContextItem"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Resources"]
       33 GETTABLEKS                       R6 R6 K14 ["Constants"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Packages"]
       40 GETTABLEKS                       R7 R7 K15 ["Dash"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Resources"]
       49 GETTABLEKS                       R8 R8 K16 ["StyleConstants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R9 R9 K17 ["Types"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R1 K18 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["Signal"]
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Src"]
       67 GETTABLEKS                       R11 R11 K18 ["Util"]
       69 GETTABLEKS                       R11 R11 K20 ["cleanConnections"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K8 ["Src"]
       76 GETTABLEKS                       R12 R12 K9 ["Flags"]
       78 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrAssetDetailView"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K8 ["Src"]
       85 GETTABLEKS                       R13 R13 K9 ["Flags"]
       87 GETTABLEKS                       R13 R13 K22 ["getFFlagAmrFlexPaneSizing"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K8 ["Src"]
       94 GETTABLEKS                       R14 R14 K18 ["Util"]
       96 GETTABLEKS                       R14 R14 K23 ["isPositionInFrame"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K8 ["Src"]
      103 GETTABLEKS                       R15 R15 K9 ["Flags"]
      105 GETTABLEKS                       R15 R15 K24 ["getFFlagAmrEnableVersioning"]
      107 CALL                             R14 1 1
      108 LOADK                            R17 K25 ["LayoutController"]
      109 NAMECALL                         R15 R4 K26 ["extend"]
      111 CALL                             R15 2 1
      112 GETIMPORT                        R16 K29 [UDim.new]
      114 LOADN                            R17 0
      115 LOADN                            R18 150
      116 CALL                             R16 2 1
      117 DUPCLOSURE                       R17 K30 [PROTO_0]
      118 DUPCLOSURE                       R18 K31 [PROTO_3]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R14
      126 SETTABLEKS                       R18 R15 K28 ["new"]
      128 DUPCLOSURE                       R18 K32 [PROTO_4]
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R15
      131 SETTABLEKS                       R18 R15 K33 ["mock"]
      133 DUPCLOSURE                       R18 K34 [PROTO_5]
      134 CAPTURE                          VAL R10
      135 SETTABLEKS                       R18 R15 K35 ["destroy"]
      137 DUPCLOSURE                       R18 K36 [PROTO_6]
      138 SETTABLEKS                       R18 R15 K37 ["getPluginGui"]
      140 DUPCLOSURE                       R18 K38 [PROTO_7]
      141 SETTABLEKS                       R18 R15 K39 ["isPluginGuiFocused"]
      143 DUPCLOSURE                       R18 K40 [PROTO_9]
      144 SETTABLEKS                       R18 R15 K41 ["setPluginFrame"]
      146 DUPCLOSURE                       R18 K42 [PROTO_10]
      147 SETTABLEKS                       R18 R15 K43 ["getPluginFrame"]
      149 DUPCLOSURE                       R18 K44 [PROTO_11]
      150 SETTABLEKS                       R18 R15 K45 ["getFolderLimit"]
      152 DUPCLOSURE                       R18 K46 [PROTO_12]
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R12
      156 SETTABLEKS                       R18 R15 K47 ["_updateFolderLimit"]
      158 DUPCLOSURE                       R18 K48 [PROTO_13]
      159 SETTABLEKS                       R18 R15 K49 ["_normalizeColumnWidths"]
      161 DUPCLOSURE                       R18 K50 [PROTO_14]
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R8
      164 SETTABLEKS                       R18 R15 K51 ["populateSavedSettings"]
      166 DUPCLOSURE                       R18 K52 [PROTO_15]
      167 SETTABLEKS                       R18 R15 K53 ["getShowSidebar"]
      169 DUPCLOSURE                       R18 K54 [PROTO_16]
      170 SETTABLEKS                       R18 R15 K55 ["toggleSidebar"]
      172 DUPCLOSURE                       R18 K56 [PROTO_17]
      173 CAPTURE                          VAL R12
      174 SETTABLEKS                       R18 R15 K57 ["_setShowSidebar"]
      176 DUPCLOSURE                       R18 K58 [PROTO_18]
      177 SETTABLEKS                       R18 R15 K59 ["getIsCompact"]
      179 DUPCLOSURE                       R18 K60 [PROTO_19]
      180 SETTABLEKS                       R18 R15 K61 ["getPluginWidth"]
      182 DUPCLOSURE                       R18 K62 [PROTO_20]
      183 SETTABLEKS                       R18 R15 K63 ["getPluginHeight"]
      185 DUPCLOSURE                       R18 K64 [PROTO_21]
      186 CAPTURE                          VAL R12
      187 SETTABLEKS                       R18 R15 K65 ["_setPluginWidth"]
      189 DUPCLOSURE                       R18 K66 [PROTO_22]
      190 CAPTURE                          VAL R12
      191 SETTABLEKS                       R18 R15 K67 ["_setPluginHeight"]
      193 DUPCLOSURE                       R18 K68 [PROTO_23]
      194 SETTABLEKS                       R18 R15 K69 ["setAppSizes"]
      196 DUPCLOSURE                       R18 K70 [PROTO_24]
      197 SETTABLEKS                       R18 R15 K71 ["getAppSizes"]
      199 DUPCLOSURE                       R18 K72 [PROTO_25]
      200 CAPTURE                          VAL R12
      201 SETTABLEKS                       R18 R15 K73 ["getSidebarWidth"]
      203 DUPCLOSURE                       R18 K74 [PROTO_26]
      204 SETTABLEKS                       R18 R15 K75 ["getSidebarDesiredWidth"]
      206 DUPCLOSURE                       R18 K76 [PROTO_27]
      207 CAPTURE                          VAL R12
      208 SETTABLEKS                       R18 R15 K77 ["adjustSidebarWidth"]
      210 DUPCLOSURE                       R18 K78 [PROTO_28]
      211 CAPTURE                          VAL R12
      212 SETTABLEKS                       R18 R15 K79 ["setSidebarWidth"]
      214 DUPCLOSURE                       R18 K80 [PROTO_29]
      215 SETTABLEKS                       R18 R15 K81 ["getSidebarSizing"]
      217 DUPCLOSURE                       R18 K82 [PROTO_30]
      218 CAPTURE                          VAL R11
      219 SETTABLEKS                       R18 R15 K83 ["_getBrowserMinWidth"]
      221 DUPCLOSURE                       R18 K84 [PROTO_31]
      222 SETTABLEKS                       R18 R15 K85 ["_getBrowserWidth"]
      224 DUPCLOSURE                       R18 K86 [PROTO_32]
      225 CAPTURE                          VAL R11
      226 SETTABLEKS                       R18 R15 K87 ["getMainViewWidth"]
      228 DUPCLOSURE                       R18 K88 [PROTO_33]
      229 CAPTURE                          VAL R11
      230 SETTABLEKS                       R18 R15 K89 ["getDrawerWidth"]
      232 DUPCLOSURE                       R18 K90 [PROTO_34]
      233 SETTABLEKS                       R18 R15 K91 ["getDrawerDesiredWidth"]
      235 DUPCLOSURE                       R18 K92 [PROTO_35]
      236 CAPTURE                          VAL R11
      237 SETTABLEKS                       R18 R15 K93 ["adjustDrawerWidth"]
      239 DUPCLOSURE                       R18 K94 [PROTO_36]
      240 CAPTURE                          VAL R11
      241 SETTABLEKS                       R18 R15 K95 ["adjustCompactDrawerHeight"]
      243 DUPCLOSURE                       R18 K96 [PROTO_37]
      244 SETTABLEKS                       R18 R15 K97 ["getAppMinSizes"]
      246 DUPCLOSURE                       R18 K98 [PROTO_38]
      247 SETTABLEKS                       R18 R15 K99 ["setBrowserLayout"]
      249 DUPCLOSURE                       R18 K100 [PROTO_39]
      250 SETTABLEKS                       R18 R15 K101 ["getBrowserLayout"]
      252 DUPCLOSURE                       R18 K102 [PROTO_40]
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R7
      255 SETTABLEKS                       R18 R15 K103 ["getBrowserLayoutThumbnailSize"]
      257 DUPCLOSURE                       R18 K104 [PROTO_41]
      258 CAPTURE                          VAL R8
      259 SETTABLEKS                       R18 R15 K105 ["getContentFrame"]
      261 DUPCLOSURE                       R18 K106 [PROTO_42]
      262 SETTABLEKS                       R18 R15 K107 ["setColumnWidths"]
      264 DUPCLOSURE                       R18 K108 [PROTO_43]
      265 SETTABLEKS                       R18 R15 K109 ["getColumnWidths"]
      267 DUPCLOSURE                       R18 K110 [PROTO_44]
      268 SETTABLEKS                       R18 R15 K111 ["_removeColumnWidth"]
      270 DUPCLOSURE                       R18 K112 [PROTO_45]
      271 CAPTURE                          VAL R16
      272 SETTABLEKS                       R18 R15 K113 ["_addColumnWidth"]
      274 DUPCLOSURE                       R18 K114 [PROTO_46]
      275 SETTABLEKS                       R18 R15 K115 ["setColumns"]
      277 DUPCLOSURE                       R18 K116 [PROTO_47]
      278 SETTABLEKS                       R18 R15 K117 ["getColumns"]
      280 DUPCLOSURE                       R18 K118 [PROTO_49]
      281 CAPTURE                          VAL R6
      282 SETTABLEKS                       R18 R15 K119 ["getColumnIndex"]
      284 DUPCLOSURE                       R18 K120 [PROTO_50]
      285 SETTABLEKS                       R18 R15 K121 ["toggleColumn"]
      287 DUPCLOSURE                       R18 K122 [PROTO_52]
      288 SETTABLEKS                       R18 R15 K123 ["_bindScroll"]
      290 DUPCLOSURE                       R18 K124 [PROTO_53]
      291 SETTABLEKS                       R18 R15 K125 ["_unbindScroll"]
      293 DUPCLOSURE                       R18 K126 [PROTO_54]
      294 CAPTURE                          VAL R8
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R7
      297 SETTABLEKS                       R18 R15 K127 ["_getRowGeometry"]
      299 DUPCLOSURE                       R18 K128 [PROTO_55]
      300 CAPTURE                          VAL R8
      301 SETTABLEKS                       R18 R15 K129 ["scrollToItem"]
      303 DUPCLOSURE                       R18 K130 [PROTO_57]
      304 SETTABLEKS                       R18 R15 K131 ["scrollToItemWhenReady"]
      306 DUPCLOSURE                       R18 K132 [PROTO_59]
      307 CAPTURE                          VAL R8
      308 SETTABLEKS                       R18 R15 K133 ["_bindScrollReady"]
      310 DUPCLOSURE                       R18 K134 [PROTO_61]
      311 SETTABLEKS                       R18 R15 K135 ["_evaluateScrollReady"]
      313 DUPCLOSURE                       R18 K136 [PROTO_62]
      314 SETTABLEKS                       R18 R15 K137 ["_cancelPendingScroll"]
      316 DUPCLOSURE                       R18 K138 [PROTO_63]
      317 CAPTURE                          VAL R7
      318 SETTABLEKS                       R18 R15 K139 ["scrollToSidebarItem"]
      320 DUPCLOSURE                       R18 K140 [PROTO_64]
      321 SETTABLEKS                       R18 R15 K141 ["setContentList"]
      323 DUPCLOSURE                       R18 K142 [PROTO_65]
      324 SETTABLEKS                       R18 R15 K143 ["setListHeaderRow"]
      326 DUPCLOSURE                       R18 K144 [PROTO_66]
      327 CAPTURE                          VAL R7
      328 SETTABLEKS                       R18 R15 K145 ["_updateGridState"]
      330 DUPCLOSURE                       R18 K146 [PROTO_67]
      331 SETTABLEKS                       R18 R15 K147 ["getGridWidth"]
      333 DUPCLOSURE                       R18 K148 [PROTO_70]
      334 SETTABLEKS                       R18 R15 K149 ["setContentGrid"]
      336 DUPCLOSURE                       R18 K150 [PROTO_72]
      337 SETTABLEKS                       R18 R15 K151 ["_syncSidebarScroll"]
      339 DUPCLOSURE                       R18 K152 [PROTO_73]
      340 SETTABLEKS                       R18 R15 K153 ["isSidebarScrollable"]
      342 DUPCLOSURE                       R18 K154 [PROTO_75]
      343 SETTABLEKS                       R18 R15 K155 ["setSidebarScrollFrame"]
      345 DUPCLOSURE                       R18 K156 [PROTO_76]
      346 CAPTURE                          VAL R13
      347 SETTABLEKS                       R18 R15 K157 ["getSidebarHoveredCanvasY"]
      349 DUPCLOSURE                       R18 K158 [PROTO_77]
      350 SETTABLEKS                       R18 R15 K159 ["getGridCellsPerRow"]
      352 DUPCLOSURE                       R18 K160 [PROTO_78]
      353 CAPTURE                          VAL R7
      354 SETTABLEKS                       R18 R15 K161 ["getGridCellPadding"]
      356 DUPCLOSURE                       R18 K162 [PROTO_79]
      357 SETTABLEKS                       R18 R15 K163 ["openDetailsDrawer"]
      359 DUPCLOSURE                       R18 K164 [PROTO_80]
      360 SETTABLEKS                       R18 R15 K165 ["closeDetailsDrawer"]
      362 DUPCLOSURE                       R18 K166 [PROTO_81]
      363 SETTABLEKS                       R18 R15 K167 ["getShowDetailsDrawer"]
      365 DUPCLOSURE                       R18 K168 [PROTO_82]
      366 SETTABLEKS                       R18 R15 K169 ["getMainViewSizing"]
      368 DUPCLOSURE                       R18 K170 [PROTO_83]
      369 SETTABLEKS                       R18 R15 K171 ["setDrawerDesiredWidth"]
      371 DUPCLOSURE                       R18 K172 [PROTO_84]
      372 SETTABLEKS                       R18 R15 K173 ["getCompactDrawerHeightScale"]
      374 DUPCLOSURE                       R18 K174 [PROTO_85]
      375 SETTABLEKS                       R18 R15 K175 ["setCompactDrawerHeightScale"]
      377 RETURN                           R15 1
