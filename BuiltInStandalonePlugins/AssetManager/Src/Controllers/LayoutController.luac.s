PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        4 RETURN                           R0 0

PROTO_2:
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
      136 NEWTABLE                         R5 0 0
      138 SETTABLEKS                       R5 R4 K42 ["_connections"]
      140 LOADB                            R5 0
      141 SETTABLEKS                       R5 R4 K43 ["_destroyed"]
      143 GETUPVAL                         R5 4
      144 GETTABLEKS                       R5 R5 K10 ["new"]
      146 CALL                             R5 0 1
      147 SETTABLEKS                       R5 R4 K44 ["OnAppSizesChanged"]
      149 GETUPVAL                         R5 4
      150 GETTABLEKS                       R5 R5 K10 ["new"]
      152 CALL                             R5 0 1
      153 SETTABLEKS                       R5 R4 K45 ["OnBrowserLayoutChanged"]
      155 GETUPVAL                         R5 4
      156 GETTABLEKS                       R5 R5 K10 ["new"]
      158 CALL                             R5 0 1
      159 SETTABLEKS                       R5 R4 K46 ["OnColumnsChanged"]
      161 GETUPVAL                         R5 4
      162 GETTABLEKS                       R5 R5 K10 ["new"]
      164 CALL                             R5 0 1
      165 SETTABLEKS                       R5 R4 K47 ["OnColumnWidthsChanged"]
      167 GETUPVAL                         R5 4
      168 GETTABLEKS                       R5 R5 K10 ["new"]
      170 CALL                             R5 0 1
      171 SETTABLEKS                       R5 R4 K48 ["OnContentScrollChanged"]
      173 GETUPVAL                         R5 4
      174 GETTABLEKS                       R5 R5 K10 ["new"]
      176 CALL                             R5 0 1
      177 SETTABLEKS                       R5 R4 K49 ["OnGridStateUpdated"]
      179 GETUPVAL                         R5 4
      180 GETTABLEKS                       R5 R5 K10 ["new"]
      182 CALL                             R5 0 1
      183 SETTABLEKS                       R5 R4 K50 ["OnIsCompactChanged"]
      185 GETUPVAL                         R5 4
      186 GETTABLEKS                       R5 R5 K10 ["new"]
      188 CALL                             R5 0 1
      189 SETTABLEKS                       R5 R4 K51 ["OnLayoutFolderLimitChanged"]
      191 GETUPVAL                         R5 4
      192 GETTABLEKS                       R5 R5 K10 ["new"]
      194 CALL                             R5 0 1
      195 SETTABLEKS                       R5 R4 K52 ["OnPluginFrameSet"]
      197 GETUPVAL                         R5 4
      198 GETTABLEKS                       R5 R5 K10 ["new"]
      200 CALL                             R5 0 1
      201 SETTABLEKS                       R5 R4 K53 ["OnPluginHeightChanged"]
      203 GETUPVAL                         R5 4
      204 GETTABLEKS                       R5 R5 K10 ["new"]
      206 CALL                             R5 0 1
      207 SETTABLEKS                       R5 R4 K54 ["OnPluginWidthChanged"]
      209 GETUPVAL                         R5 4
      210 GETTABLEKS                       R5 R5 K10 ["new"]
      212 CALL                             R5 0 1
      213 SETTABLEKS                       R5 R4 K55 ["OnSidebarScrollableChanged"]
      215 GETUPVAL                         R5 4
      216 GETTABLEKS                       R5 R5 K10 ["new"]
      218 CALL                             R5 0 1
      219 SETTABLEKS                       R5 R4 K56 ["OnSidebarScrollChanged"]
      221 GETUPVAL                         R5 4
      222 GETTABLEKS                       R5 R5 K10 ["new"]
      224 CALL                             R5 0 1
      225 SETTABLEKS                       R5 R4 K57 ["OnSidebarToggled"]
      227 GETUPVAL                         R7 5
      228 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
      230 MOVE                             R6 R4
      231 GETIMPORT                        R5 K59 [setmetatable]
      233 CALL                             R5 2 0
      234 GETTABLEKS                       R5 R4 K38 ["_columns"]
      236 LOADNIL                          R6
      237 LOADNIL                          R7
      238 FORGPREP                         R5
      239 GETTABLEKS                       R10 R4 K31 ["_columnWidths"]
      241 GETUPVAL                         R11 3
      242 SETTABLE                         R11 R10 R8
      243 FORGLOOP                         R5 2 ; [-5]
      245 GETTABLEKS                       R5 R4 K42 ["_connections"]
      247 GETTABLEKS                       R6 R1 K60 ["WindowFocused"]
      249 NEWCLOSURE                       R8 P0
      250 CAPTURE                          VAL R4
      251 NAMECALL                         R6 R6 K61 ["Connect"]
      253 CALL                             R6 2 1
      254 SETTABLEKS                       R6 R5 K62 ["GuiWindowFocused"]
      256 GETTABLEKS                       R5 R4 K42 ["_connections"]
      258 GETTABLEKS                       R6 R1 K63 ["WindowFocusReleased"]
      260 NEWCLOSURE                       R8 P1
      261 CAPTURE                          VAL R4
      262 NAMECALL                         R6 R6 K61 ["Connect"]
      264 CALL                             R6 2 1
      265 SETTABLEKS                       R6 R5 K64 ["GuiWindowFocusReleased"]
      267 RETURN                           R4 1

PROTO_3:
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

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 NAMECALL                         R1 R0 K1 ["_unbindScroll"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K2 ["_connections"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGui"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        2 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_folderLimit"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R1 K1 ["ViewType"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R2 K2 ["Grid"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+12]
       11 LOADN                            R2 1
       12 NAMECALL                         R3 R0 K3 ["getGridCellsPerRow"]
       14 CALL                             R3 1 -1
       15 FASTCALL                         MATH_MAX ; [+2]
       16 GETIMPORT                        R1 K6 [math.max]
       18 CALL                             R1 -1 1
       19 SETTABLEKS                       R1 R0 K7 ["_folderLimit"]
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K8 ["SearchFoldersResultCountDefault"]
       25 SETTABLEKS                       R1 R0 K7 ["_folderLimit"]
       27 GETTABLEKS                       R1 R0 K9 ["OnLayoutFolderLimitChanged"]
       29 NAMECALL                         R1 R1 K10 ["Fire"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R1 K0 ["ShowSidebar"]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R4 R1 K0 ["ShowSidebar"]
        8 NAMECALL                         R2 R0 K1 ["_setShowSidebar"]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R1 K2 ["SidebarWidth"]
       13 JUMPIFNOT                        R2 ; [+30]
       14 GETTABLEKS                       R3 R0 K3 ["_pluginGui"]
       16 GETTABLEKS                       R3 R3 K4 ["AbsoluteSize"]
       18 JUMPIFNOT                        R3 ; [+7]
       19 GETTABLEKS                       R2 R0 K3 ["_pluginGui"]
       21 GETTABLEKS                       R2 R2 K4 ["AbsoluteSize"]
       23 GETTABLEKS                       R2 R2 K5 ["X"]
       25 JUMP                             ; [+1]
       26 LOADN                            R2 0
       27 LOADN                            R4 150
       28 JUMPIFNOTLT                      R4 R2 ; [+3]
       30 MOVE                             R3 R2
       31 JUMP                             ; [+1]
       32 LOADK                            R3 K6 [∞]
       33 GETTABLEKS                       R5 R1 K2 ["SidebarWidth"]
       35 LOADN                            R6 150
       36 FASTCALL3                        MATH_CLAMP R5 R6 R3
       38 MOVE                             R7 R3
       39 GETIMPORT                        R4 K9 [math.clamp]
       41 CALL                             R4 3 1
       42 SETTABLEKS                       R4 R0 K10 ["_sidebarWidth"]
       44 GETTABLEKS                       R2 R1 K11 ["BrowserLayout"]
       46 JUMPIFNOT                        R2 ; [+29]
       47 GETTABLEKS                       R3 R1 K11 ["BrowserLayout"]
       49 GETTABLEKS                       R3 R3 K12 ["ViewType"]
       51 JUMPIFNOTEQKS                    R3 K13 ["Grid"] ; [+7]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K12 ["ViewType"]
       56 GETTABLEKS                       R2 R2 K13 ["Grid"]
       58 JUMP                             ; [+5]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K12 ["ViewType"]
       62 GETTABLEKS                       R2 R2 K14 ["List"]
       64 GETTABLEKS                       R5 R1 K11 ["BrowserLayout"]
       66 GETTABLEKS                       R5 R5 K15 ["GridSize"]
       68 MOVE                             R6 R2
       69 GETTABLEKS                       R7 R1 K11 ["BrowserLayout"]
       71 GETTABLEKS                       R7 R7 K16 ["ListRowHeight"]
       73 NAMECALL                         R3 R0 K17 ["setBrowserLayout"]
       75 CALL                             R3 4 0
       76 GETTABLEKS                       R2 R1 K18 ["Columns"]
       78 JUMPIFNOT                        R2 ; [+11]
       79 GETTABLEKS                       R3 R1 K18 ["Columns"]
       81 LENGTH                           R2 R3
       82 LOADN                            R3 0
       83 JUMPIFNOTLT                      R3 R2 ; [+6]
       85 GETTABLEKS                       R4 R1 K18 ["Columns"]
       87 NAMECALL                         R2 R0 K19 ["setColumns"]
       89 CALL                             R2 2 0
       90 GETTABLEKS                       R2 R1 K20 ["ColumnWidths"]
       92 JUMPIFNOT                        R2 ; [+11]
       93 GETTABLEKS                       R3 R1 K20 ["ColumnWidths"]
       95 LENGTH                           R2 R3
       96 LOADN                            R3 0
       97 JUMPIFNOTLT                      R3 R2 ; [+6]
       99 GETTABLEKS                       R4 R1 K20 ["ColumnWidths"]
      101 NAMECALL                         R2 R0 K21 ["setColumnWidths"]
      103 CALL                             R2 2 0
      104 NAMECALL                         R2 R0 K22 ["_normalizeColumnWidths"]
      106 CALL                             R2 1 0
      107 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        2 NOT                              R3 R4
        3 NAMECALL                         R1 R0 K1 ["_setShowSidebar"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_16:
        0 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSidebarToggled"]
        4 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginHeight"]
        2 RETURN                           R1 1

PROTO_20:
        0 NAMECALL                         R2 R0 K0 ["getIsCompact"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_pluginWidth"]
        5 SETTABLEKS                       R1 R0 K1 ["_pluginWidth"]
        7 JUMPIFEQ                         R3 R1 ; [+38]
        9 NAMECALL                         R5 R0 K0 ["getIsCompact"]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETIMPORT                        R4 K4 [UDim.new]
       15 LOADN                            R5 0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 JUMP                             ; [+7]
       19 GETIMPORT                        R4 K4 [UDim.new]
       21 LOADN                            R5 0
       22 GETTABLEKS                       R7 R0 K5 ["_sidebarWidth"]
       24 SUB                              R6 R1 R7
       25 CALL                             R4 2 1
       26 NEWTABLE                         R7 0 2
       28 GETIMPORT                        R8 K4 [UDim.new]
       30 LOADN                            R9 0
       31 GETTABLEKS                       R10 R0 K5 ["_sidebarWidth"]
       33 CALL                             R8 2 1
       34 MOVE                             R9 R4
       35 SETLIST                          R7 R8 2 [1]
       37 NAMECALL                         R5 R0 K6 ["setAppSizes"]
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R5 R0 K7 ["OnPluginWidthChanged"]
       42 MOVE                             R7 R1
       43 NAMECALL                         R5 R5 K8 ["Fire"]
       45 CALL                             R5 2 0
       46 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       48 CALL                             R4 1 1
       49 JUMPIFNOTEQ                      R2 R4 ; [+3]
       51 JUMPIFNOTEQKN                    R3 K9 [0] ; [+29]
       53 GETTABLEKS                       R4 R0 K10 ["OnIsCompactChanged"]
       55 NAMECALL                         R6 R0 K0 ["getIsCompact"]
       57 CALL                             R6 1 -1
       58 NAMECALL                         R4 R4 K8 ["Fire"]
       60 CALL                             R4 -1 0
       61 GETTABLEKS                       R4 R0 K11 ["_isPluginFrameLoaded"]
       63 JUMPIF                           R4 ; [+4]
       64 LOADB                            R4 1
       65 SETTABLEKS                       R4 R0 K11 ["_isPluginFrameLoaded"]
       67 RETURN                           R0 0
       68 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       70 CALL                             R4 1 1
       71 JUMPIFNOT                        R4 ; [+5]
       72 LOADB                            R6 0
       73 NAMECALL                         R4 R0 K12 ["_setShowSidebar"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0
       77 LOADB                            R6 1
       78 NAMECALL                         R4 R0 K12 ["_setShowSidebar"]
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginHeight"]
        2 SETTABLEKS                       R1 R0 K0 ["_pluginHeight"]
        4 JUMPIFEQ                         R2 R1 ; [+17]
        6 GETTABLEKS                       R5 R0 K1 ["OnPluginHeightChanged"]
        8 JUMPIFNOTEQKNIL                  R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 FASTCALL1                        ASSERT R4 ; [+2]
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R0 K1 ["OnPluginHeightChanged"]
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R3 K4 ["Fire"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 NEWTABLE                         R1 0 2
        2 GETIMPORT                        R2 K2 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R0 K3 ["_sidebarWidth"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K4 ["_browserSize"]
       10 SETLIST                          R1 R2 2 [1]
       12 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_sidebarWidth"]
        2 RETURN                           R1 1

PROTO_25:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R2 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R2 R2 K1 ["GridSize"]
        4 FASTCALL1                        MATH_FLOOR R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K4 [math.floor]
        8 CALL                             R5 1 1
        9 JUMPIFEQ                         R5 R2 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       15 LOADK                            R5 K5 ["LayoutController:scrollToItem - Precision lost with non-integer GridSize"]
       16 GETIMPORT                        R3 K7 [assert]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       21 GETTABLEKS                       R4 R4 K8 ["ViewType"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K8 ["ViewType"]
       26 GETTABLEKS                       R5 R5 K9 ["Grid"]
       28 JUMPIFEQ                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETTABLEKS                       R4 R0 K10 ["_contentGrid"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R4 R0 K11 ["_contentList"]
       38 JUMPIFNOT                        R3 ; [+13]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K12 ["CellDataHeight"]
       42 ADD                              R6 R7 R2
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K13 ["GridCellPadding"]
       46 GETTABLEKS                       R7 R7 K14 ["Y"]
       48 GETTABLEKS                       R7 R7 K15 ["Offset"]
       50 ADD                              R5 R6 R7
       51 JUMP                             ; [+4]
       52 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       54 GETTABLEKS                       R5 R5 K16 ["ListRowHeight"]
       56 JUMPIF                           R4 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R6 R4 K17 ["CanvasPosition"]
       60 GETTABLEKS                       R6 R6 K18 ["X"]
       62 GETTABLEKS                       R7 R4 K17 ["CanvasPosition"]
       64 GETTABLEKS                       R7 R7 K14 ["Y"]
       66 JUMPIFNOT                        R3 ; [+8]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K13 ["GridCellPadding"]
       70 GETTABLEKS                       R8 R8 K14 ["Y"]
       72 GETTABLEKS                       R8 R8 K15 ["Offset"]
       74 JUMP                             ; [+1]
       75 LOADN                            R8 0
       76 GETTABLEKS                       R10 R4 K19 ["AbsoluteSize"]
       78 GETTABLEKS                       R10 R10 K14 ["Y"]
       80 SUB                              R9 R10 R8
       81 DIV                              R11 R7 R5
       82 FASTCALL1                        MATH_CEIL R11 ; [+2]
       83 GETIMPORT                        R10 K21 [math.ceil]
       85 CALL                             R10 1 1
       86 ADD                              R13 R7 R9
       87 DIV                              R12 R13 R5
       88 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       89 GETIMPORT                        R11 K4 [math.floor]
       91 CALL                             R11 1 1
       92 JUMPIFNOT                        R3 ; [+11]
       93 SUBK                             R14 R1 K22 [1]
       94 NAMECALL                         R15 R0 K23 ["getGridCellsPerRow"]
       96 CALL                             R15 1 1
       97 DIV                              R13 R14 R15
       98 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       99 GETIMPORT                        R12 K4 [math.floor]
      101 CALL                             R12 1 1
      102 ADDK                             R1 R12 K22 [1]
      103 JUMP                             ; [0]
      104 JUMPIFNOTLE                      R1 R10 ; [+11]
      106 GETIMPORT                        R12 K26 [Vector2.new]
      108 MOVE                             R13 R6
      109 SUBK                             R16 R1 K22 [1]
      110 MUL                              R15 R16 R5
      111 ADD                              R14 R8 R15
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R4 K17 ["CanvasPosition"]
      115 RETURN                           R0 0
      116 JUMPIFNOTLT                      R11 R1 ; [+16]
      118 MUL                              R13 R1 R5
      119 ADD                              R12 R8 R13
      120 GETTABLEKS                       R14 R4 K19 ["AbsoluteSize"]
      122 GETTABLEKS                       R14 R14 K14 ["Y"]
      124 ADD                              R13 R7 R14
      125 GETIMPORT                        R14 K26 [Vector2.new]
      127 MOVE                             R15 R6
      128 SUB                              R17 R12 R13
      129 ADD                              R16 R7 R17
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R4 K17 ["CanvasPosition"]
      133 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 SETTABLEKS                       R1 R0 K0 ["_contentList"]
        2 GETTABLEKS                       R2 R0 K0 ["_contentList"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["_headerRow"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 NAMECALL                         R2 R0 K2 ["_bindScroll"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 NAMECALL                         R2 R0 K3 ["_unbindScroll"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K2 ["X"]
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContentScrollChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_50:
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
       53 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSidebarScrollableChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
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

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_gridCellsPerRow"]
        2 RETURN                           R1 1

PROTO_58:
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
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K12 ["Dash"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Resources"]
       38 GETTABLEKS                       R7 R7 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Resources"]
       47 GETTABLEKS                       R8 R8 K15 ["StyleConstants"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R1 K16 ["Util"]
       52 GETTABLEKS                       R8 R8 K17 ["Signal"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["cleanConnections"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R11 R11 K16 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["isPositionInFrame"]
       71 CALL                             R10 1 1
       72 LOADK                            R13 K20 ["LayoutController"]
       73 NAMECALL                         R11 R3 K21 ["extend"]
       75 CALL                             R11 2 1
       76 GETIMPORT                        R12 K24 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 150
       80 CALL                             R12 2 1
       81 DUPCLOSURE                       R13 K25 [PROTO_2]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R13 R11 K23 ["new"]
       90 DUPCLOSURE                       R13 K26 [PROTO_3]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 SETTABLEKS                       R13 R11 K27 ["mock"]
       95 DUPCLOSURE                       R13 K28 [PROTO_4]
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R13 R11 K29 ["destroy"]
       99 DUPCLOSURE                       R13 K30 [PROTO_5]
      100 SETTABLEKS                       R13 R11 K31 ["getPluginGui"]
      102 DUPCLOSURE                       R13 K32 [PROTO_6]
      103 SETTABLEKS                       R13 R11 K33 ["isPluginGuiFocused"]
      105 DUPCLOSURE                       R13 K34 [PROTO_8]
      106 SETTABLEKS                       R13 R11 K35 ["setPluginFrame"]
      108 DUPCLOSURE                       R13 K36 [PROTO_9]
      109 SETTABLEKS                       R13 R11 K37 ["getPluginFrame"]
      111 DUPCLOSURE                       R13 K38 [PROTO_10]
      112 SETTABLEKS                       R13 R11 K39 ["getFolderLimit"]
      114 DUPCLOSURE                       R13 K40 [PROTO_11]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R13 R11 K41 ["_updateFolderLimit"]
      119 DUPCLOSURE                       R13 K42 [PROTO_12]
      120 SETTABLEKS                       R13 R11 K43 ["_normalizeColumnWidths"]
      122 DUPCLOSURE                       R13 K44 [PROTO_13]
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R13 R11 K45 ["populateSavedSettings"]
      126 DUPCLOSURE                       R13 K46 [PROTO_14]
      127 SETTABLEKS                       R13 R11 K47 ["getShowSidebar"]
      129 DUPCLOSURE                       R13 K48 [PROTO_15]
      130 SETTABLEKS                       R13 R11 K49 ["toggleSidebar"]
      132 DUPCLOSURE                       R13 K50 [PROTO_16]
      133 SETTABLEKS                       R13 R11 K51 ["_setShowSidebar"]
      135 DUPCLOSURE                       R13 K52 [PROTO_17]
      136 SETTABLEKS                       R13 R11 K53 ["getIsCompact"]
      138 DUPCLOSURE                       R13 K54 [PROTO_18]
      139 SETTABLEKS                       R13 R11 K55 ["getPluginWidth"]
      141 DUPCLOSURE                       R13 K56 [PROTO_19]
      142 SETTABLEKS                       R13 R11 K57 ["getPluginHeight"]
      144 DUPCLOSURE                       R13 K58 [PROTO_20]
      145 SETTABLEKS                       R13 R11 K59 ["_setPluginWidth"]
      147 DUPCLOSURE                       R13 K60 [PROTO_21]
      148 SETTABLEKS                       R13 R11 K61 ["_setPluginHeight"]
      150 DUPCLOSURE                       R13 K62 [PROTO_22]
      151 SETTABLEKS                       R13 R11 K63 ["setAppSizes"]
      153 DUPCLOSURE                       R13 K64 [PROTO_23]
      154 SETTABLEKS                       R13 R11 K65 ["getAppSizes"]
      156 DUPCLOSURE                       R13 K66 [PROTO_24]
      157 SETTABLEKS                       R13 R11 K67 ["getSidebarWidth"]
      159 DUPCLOSURE                       R13 K68 [PROTO_25]
      160 SETTABLEKS                       R13 R11 K69 ["getAppMinSizes"]
      162 DUPCLOSURE                       R13 K70 [PROTO_26]
      163 SETTABLEKS                       R13 R11 K71 ["setBrowserLayout"]
      165 DUPCLOSURE                       R13 K72 [PROTO_27]
      166 SETTABLEKS                       R13 R11 K73 ["getBrowserLayout"]
      168 DUPCLOSURE                       R13 K74 [PROTO_28]
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R7
      171 SETTABLEKS                       R13 R11 K75 ["getBrowserLayoutThumbnailSize"]
      173 DUPCLOSURE                       R13 K76 [PROTO_29]
      174 CAPTURE                          VAL R4
      175 SETTABLEKS                       R13 R11 K77 ["getContentFrame"]
      177 DUPCLOSURE                       R13 K78 [PROTO_30]
      178 SETTABLEKS                       R13 R11 K79 ["setColumnWidths"]
      180 DUPCLOSURE                       R13 K80 [PROTO_31]
      181 SETTABLEKS                       R13 R11 K81 ["getColumnWidths"]
      183 DUPCLOSURE                       R13 K82 [PROTO_32]
      184 SETTABLEKS                       R13 R11 K83 ["_removeColumnWidth"]
      186 DUPCLOSURE                       R13 K84 [PROTO_33]
      187 CAPTURE                          VAL R12
      188 SETTABLEKS                       R13 R11 K85 ["_addColumnWidth"]
      190 DUPCLOSURE                       R13 K86 [PROTO_34]
      191 SETTABLEKS                       R13 R11 K87 ["setColumns"]
      193 DUPCLOSURE                       R13 K88 [PROTO_35]
      194 SETTABLEKS                       R13 R11 K89 ["getColumns"]
      196 DUPCLOSURE                       R13 K90 [PROTO_37]
      197 CAPTURE                          VAL R5
      198 SETTABLEKS                       R13 R11 K91 ["getColumnIndex"]
      200 DUPCLOSURE                       R13 K92 [PROTO_38]
      201 SETTABLEKS                       R13 R11 K93 ["toggleColumn"]
      203 DUPCLOSURE                       R13 K94 [PROTO_40]
      204 SETTABLEKS                       R13 R11 K95 ["_bindScroll"]
      206 DUPCLOSURE                       R13 K96 [PROTO_41]
      207 SETTABLEKS                       R13 R11 K97 ["_unbindScroll"]
      209 DUPCLOSURE                       R13 K98 [PROTO_42]
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R7
      212 SETTABLEKS                       R13 R11 K99 ["scrollToItem"]
      214 DUPCLOSURE                       R13 K100 [PROTO_43]
      215 CAPTURE                          VAL R7
      216 SETTABLEKS                       R13 R11 K101 ["scrollToSidebarItem"]
      218 DUPCLOSURE                       R13 K102 [PROTO_44]
      219 SETTABLEKS                       R13 R11 K103 ["setContentList"]
      221 DUPCLOSURE                       R13 K104 [PROTO_45]
      222 SETTABLEKS                       R13 R11 K105 ["setListHeaderRow"]
      224 DUPCLOSURE                       R13 K106 [PROTO_46]
      225 CAPTURE                          VAL R7
      226 SETTABLEKS                       R13 R11 K107 ["_updateGridState"]
      228 DUPCLOSURE                       R13 K108 [PROTO_47]
      229 SETTABLEKS                       R13 R11 K109 ["getGridWidth"]
      231 DUPCLOSURE                       R13 K110 [PROTO_50]
      232 SETTABLEKS                       R13 R11 K111 ["setContentGrid"]
      234 DUPCLOSURE                       R13 K112 [PROTO_52]
      235 SETTABLEKS                       R13 R11 K113 ["_syncSidebarScroll"]
      237 DUPCLOSURE                       R13 K114 [PROTO_53]
      238 SETTABLEKS                       R13 R11 K115 ["isSidebarScrollable"]
      240 DUPCLOSURE                       R13 K116 [PROTO_55]
      241 SETTABLEKS                       R13 R11 K117 ["setSidebarScrollFrame"]
      243 DUPCLOSURE                       R13 K118 [PROTO_56]
      244 CAPTURE                          VAL R10
      245 SETTABLEKS                       R13 R11 K119 ["getSidebarHoveredCanvasY"]
      247 DUPCLOSURE                       R13 K120 [PROTO_57]
      248 SETTABLEKS                       R13 R11 K121 ["getGridCellsPerRow"]
      250 DUPCLOSURE                       R13 K122 [PROTO_58]
      251 CAPTURE                          VAL R7
      252 SETTABLEKS                       R13 R11 K123 ["getGridCellPadding"]
      254 RETURN                           R11 1
