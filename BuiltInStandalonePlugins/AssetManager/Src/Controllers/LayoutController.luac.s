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
        0 NEWTABLE                         R3 64 0
        2 SETTABLEKS                       R2 R3 K0 ["_isMock"]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K1 ["_contentList"]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K2 ["_contentGrid"]
       10 LOADNIL                          R4
       11 SETTABLEKS                       R4 R3 K3 ["_sidebar"]
       13 SETTABLEKS                       R1 R3 K4 ["_pluginGui"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["_pluginGuiFocused"]
       18 GETIMPORT                        R4 K8 [UDim.new]
       20 LOADN                            R5 0
       21 LOADN                            R6 250
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K9 ["_sidebarSize"]
       25 GETIMPORT                        R4 K8 [UDim.new]
       27 LOADN                            R5 1
       28 LOADN                            R6 -250
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K10 ["_browserSize"]
       32 GETIMPORT                        R4 K8 [UDim.new]
       34 LOADN                            R5 0
       35 GETUPVAL                         R6 0
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K11 ["_sidebarMinSize"]
       39 GETIMPORT                        R4 K8 [UDim.new]
       41 LOADN                            R5 0
       42 LOADN                            R6 0
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K12 ["_browserMinSize"]
       46 LOADN                            R4 0
       47 SETTABLEKS                       R4 R3 K13 ["_pluginWidth"]
       49 LOADN                            R4 0
       50 SETTABLEKS                       R4 R3 K14 ["_pluginHeight"]
       52 LOADB                            R4 1
       53 SETTABLEKS                       R4 R3 K15 ["_showSidebar"]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K16 ["_pluginFrame"]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R3 K17 ["_isPluginFrameLoaded"]
       61 DUPTABLE                         R4 K21 [{"GridSize", "ViewType", "ListRowHeight"}]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K22 ["ItemCellSizeDefault"]
       65 SETTABLEKS                       R5 R4 K18 ["GridSize"]
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K19 ["ViewType"]
       70 GETTABLEKS                       R5 R5 K23 ["List"]
       72 SETTABLEKS                       R5 R4 K19 ["ViewType"]
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R5 R5 K24 ["ItemRowHeightDefault"]
       77 SETTABLEKS                       R5 R4 K20 ["ListRowHeight"]
       79 SETTABLEKS                       R4 R3 K25 ["_browserLayout"]
       81 LOADN                            R4 0
       82 SETTABLEKS                       R4 R3 K26 ["_gridCellsPerRow"]
       84 GETUPVAL                         R4 3
       85 GETTABLEKS                       R4 R4 K27 ["SearchFoldersResultCountDefault"]
       87 SETTABLEKS                       R4 R3 K28 ["_folderLimit"]
       89 NEWTABLE                         R4 0 1
       91 GETUPVAL                         R5 4
       92 SETLIST                          R4 R5 1 [1]
       94 SETTABLEKS                       R4 R3 K29 ["_columnWidths"]
       96 NEWTABLE                         R4 0 5
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R5 R5 K30 ["AssetInfoField"]
      101 GETTABLEKS                       R5 R5 K31 ["DisplayName"]
      103 GETUPVAL                         R6 2
      104 GETTABLEKS                       R6 R6 K30 ["AssetInfoField"]
      106 GETTABLEKS                       R6 R6 K32 ["AssetId"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K30 ["AssetInfoField"]
      111 GETTABLEKS                       R7 R7 K33 ["AssetType"]
      113 GETUPVAL                         R8 2
      114 GETTABLEKS                       R8 R8 K30 ["AssetInfoField"]
      116 GETTABLEKS                       R8 R8 K34 ["Modified"]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R9 R9 K30 ["AssetInfoField"]
      121 GETTABLEKS                       R9 R9 K35 ["Creator"]
      123 SETLIST                          R4 R5 5 [1]
      125 SETTABLEKS                       R4 R3 K36 ["_columns"]
      127 LOADNIL                          R4
      128 SETTABLEKS                       R4 R3 K37 ["_mainSidebarScrollFrame"]
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K38 ["_underlaySidebarScrollFrame"]
      133 LOADNIL                          R4
      134 SETTABLEKS                       R4 R3 K39 ["_overlaySidebarScrollFrame"]
      136 NEWTABLE                         R4 0 0
      138 SETTABLEKS                       R4 R3 K40 ["_connections"]
      140 GETUPVAL                         R4 5
      141 GETTABLEKS                       R4 R4 K7 ["new"]
      143 CALL                             R4 0 1
      144 SETTABLEKS                       R4 R3 K41 ["OnAppSizesChanged"]
      146 GETUPVAL                         R4 5
      147 GETTABLEKS                       R4 R4 K7 ["new"]
      149 CALL                             R4 0 1
      150 SETTABLEKS                       R4 R3 K42 ["OnBrowserLayoutChanged"]
      152 GETUPVAL                         R4 5
      153 GETTABLEKS                       R4 R4 K7 ["new"]
      155 CALL                             R4 0 1
      156 SETTABLEKS                       R4 R3 K43 ["OnColumnsChanged"]
      158 GETUPVAL                         R4 5
      159 GETTABLEKS                       R4 R4 K7 ["new"]
      161 CALL                             R4 0 1
      162 SETTABLEKS                       R4 R3 K44 ["OnColumnWidthsChanged"]
      164 GETUPVAL                         R4 5
      165 GETTABLEKS                       R4 R4 K7 ["new"]
      167 CALL                             R4 0 1
      168 SETTABLEKS                       R4 R3 K45 ["OnContentScrollChanged"]
      170 GETUPVAL                         R4 5
      171 GETTABLEKS                       R4 R4 K7 ["new"]
      173 CALL                             R4 0 1
      174 SETTABLEKS                       R4 R3 K46 ["OnGridStateUpdated"]
      176 GETUPVAL                         R4 5
      177 GETTABLEKS                       R4 R4 K7 ["new"]
      179 CALL                             R4 0 1
      180 SETTABLEKS                       R4 R3 K47 ["OnIsCompactChanged"]
      182 GETUPVAL                         R4 5
      183 GETTABLEKS                       R4 R4 K7 ["new"]
      185 CALL                             R4 0 1
      186 SETTABLEKS                       R4 R3 K48 ["OnLayoutFolderLimitChanged"]
      188 GETUPVAL                         R4 5
      189 GETTABLEKS                       R4 R4 K7 ["new"]
      191 CALL                             R4 0 1
      192 SETTABLEKS                       R4 R3 K49 ["OnPluginFrameSet"]
      194 GETUPVAL                         R4 5
      195 GETTABLEKS                       R4 R4 K7 ["new"]
      197 CALL                             R4 0 1
      198 SETTABLEKS                       R4 R3 K50 ["OnPluginHeightChanged"]
      200 GETUPVAL                         R4 5
      201 GETTABLEKS                       R4 R4 K7 ["new"]
      203 CALL                             R4 0 1
      204 SETTABLEKS                       R4 R3 K51 ["OnPluginWidthChanged"]
      206 GETUPVAL                         R4 5
      207 GETTABLEKS                       R4 R4 K7 ["new"]
      209 CALL                             R4 0 1
      210 SETTABLEKS                       R4 R3 K52 ["OnSidebarScrollableChanged"]
      212 GETUPVAL                         R4 5
      213 GETTABLEKS                       R4 R4 K7 ["new"]
      215 CALL                             R4 0 1
      216 SETTABLEKS                       R4 R3 K53 ["OnSidebarScrollChanged"]
      218 GETUPVAL                         R4 5
      219 GETTABLEKS                       R4 R4 K7 ["new"]
      221 CALL                             R4 0 1
      222 SETTABLEKS                       R4 R3 K54 ["OnSidebarToggled"]
      224 GETUPVAL                         R6 6
      225 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      227 MOVE                             R5 R3
      228 GETIMPORT                        R4 K56 [setmetatable]
      230 CALL                             R4 2 0
      231 GETTABLEKS                       R4 R3 K36 ["_columns"]
      233 LOADNIL                          R5
      234 LOADNIL                          R6
      235 FORGPREP                         R4
      236 GETTABLEKS                       R9 R3 K29 ["_columnWidths"]
      238 GETUPVAL                         R10 4
      239 SETTABLE                         R10 R9 R7
      240 FORGLOOP                         R4 2 ; [-5]
      242 GETTABLEKS                       R4 R3 K40 ["_connections"]
      244 GETTABLEKS                       R5 R1 K57 ["WindowFocused"]
      246 NEWCLOSURE                       R7 P0
      247 CAPTURE                          VAL R3
      248 NAMECALL                         R5 R5 K58 ["Connect"]
      250 CALL                             R5 2 1
      251 SETTABLEKS                       R5 R4 K59 ["GuiWindowFocused"]
      253 GETTABLEKS                       R4 R3 K40 ["_connections"]
      255 GETTABLEKS                       R5 R1 K60 ["WindowFocusReleased"]
      257 NEWCLOSURE                       R7 P1
      258 CAPTURE                          VAL R3
      259 NAMECALL                         R5 R5 K58 ["Connect"]
      261 CALL                             R5 2 1
      262 SETTABLEKS                       R5 R4 K61 ["GuiWindowFocusReleased"]
      264 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"WindowFocused", "WindowFocusReleased", "PluginDragEntered", "PluginDragLeft", "PluginDragDropped"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["WindowFocused"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K6 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K1 ["WindowFocusReleased"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["new"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["PluginDragEntered"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["new"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K3 ["PluginDragLeft"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K4 ["PluginDragDropped"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K6 ["new"]
       34 MOVE                             R3 R0
       35 MOVE                             R4 R1
       36 LOADB                            R5 1
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnAppSizesChanged"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnBrowserLayoutChanged"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnColumnsChanged"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnColumnWidthsChanged"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnContentScrollChanged"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnGridStateUpdated"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["OnIsCompactChanged"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnLayoutFolderLimitChanged"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnPluginFrameSet"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["OnPluginHeightChanged"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["OnPluginWidthChanged"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K11 ["OnSidebarScrollableChanged"]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K12 ["OnSidebarScrollChanged"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K13 ["OnSidebarToggled"]
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K14 ["_pluginFrame"]
       45 NAMECALL                         R1 R0 K15 ["_unbindScroll"]
       47 CALL                             R1 1 0
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R2 R0 K16 ["_connections"]
       51 CALL                             R1 1 0
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K16 ["_connections"]
       55 RETURN                           R0 0

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
       11 GETTABLEKS                       R2 R1 K2 ["BrowserLayout"]
       13 JUMPIFNOT                        R2 ; [+29]
       14 GETTABLEKS                       R3 R1 K2 ["BrowserLayout"]
       16 GETTABLEKS                       R3 R3 K3 ["ViewType"]
       18 JUMPIFNOTEQKS                    R3 K4 ["Grid"] ; [+7]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K3 ["ViewType"]
       23 GETTABLEKS                       R2 R2 K4 ["Grid"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["ViewType"]
       29 GETTABLEKS                       R2 R2 K5 ["List"]
       31 GETTABLEKS                       R5 R1 K2 ["BrowserLayout"]
       33 GETTABLEKS                       R5 R5 K6 ["GridSize"]
       35 MOVE                             R6 R2
       36 GETTABLEKS                       R7 R1 K2 ["BrowserLayout"]
       38 GETTABLEKS                       R7 R7 K7 ["ListRowHeight"]
       40 NAMECALL                         R3 R0 K8 ["setBrowserLayout"]
       42 CALL                             R3 4 0
       43 GETTABLEKS                       R2 R1 K9 ["Columns"]
       45 JUMPIFNOT                        R2 ; [+11]
       46 GETTABLEKS                       R3 R1 K9 ["Columns"]
       48 LENGTH                           R2 R3
       49 LOADN                            R3 0
       50 JUMPIFNOTLT                      R3 R2 ; [+6]
       52 GETTABLEKS                       R4 R1 K9 ["Columns"]
       54 NAMECALL                         R2 R0 K10 ["setColumns"]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R1 K11 ["ColumnWidths"]
       59 JUMPIFNOT                        R2 ; [+11]
       60 GETTABLEKS                       R3 R1 K11 ["ColumnWidths"]
       62 LENGTH                           R2 R3
       63 LOADN                            R3 0
       64 JUMPIFNOTLT                      R3 R2 ; [+6]
       66 GETTABLEKS                       R4 R1 K11 ["ColumnWidths"]
       68 NAMECALL                         R2 R0 K12 ["setColumnWidths"]
       70 CALL                             R2 2 0
       71 NAMECALL                         R2 R0 K13 ["_normalizeColumnWidths"]
       73 CALL                             R2 1 0
       74 RETURN                           R0 0

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
        7 JUMPIFEQ                         R3 R1 ; [+33]
        9 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+22]
       13 GETIMPORT                        R4 K4 [UDim.new]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R7 R0 K5 ["_sidebarSize"]
       18 GETTABLEKS                       R7 R7 K6 ["Offset"]
       20 SUB                              R6 R1 R7
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R0 K7 ["_browserSize"]
       24 NEWTABLE                         R6 0 2
       26 GETTABLEKS                       R7 R0 K5 ["_sidebarSize"]
       28 GETTABLEKS                       R8 R0 K7 ["_browserSize"]
       30 SETLIST                          R6 R7 2 [1]
       32 NAMECALL                         R4 R0 K8 ["setAppSizes"]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R0 K9 ["OnPluginWidthChanged"]
       37 MOVE                             R6 R1
       38 NAMECALL                         R4 R4 K10 ["Fire"]
       40 CALL                             R4 2 0
       41 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQ                      R2 R4 ; [+3]
       46 JUMPIFNOTEQKN                    R3 K11 [0] ; [+29]
       48 GETTABLEKS                       R4 R0 K12 ["OnIsCompactChanged"]
       50 NAMECALL                         R6 R0 K0 ["getIsCompact"]
       52 CALL                             R6 1 -1
       53 NAMECALL                         R4 R4 K10 ["Fire"]
       55 CALL                             R4 -1 0
       56 GETTABLEKS                       R4 R0 K13 ["_isPluginFrameLoaded"]
       58 JUMPIF                           R4 ; [+4]
       59 LOADB                            R4 1
       60 SETTABLEKS                       R4 R0 K13 ["_isPluginFrameLoaded"]
       62 RETURN                           R0 0
       63 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       65 CALL                             R4 1 1
       66 JUMPIFNOT                        R4 ; [+5]
       67 LOADB                            R6 0
       68 NAMECALL                         R4 R0 K14 ["_setShowSidebar"]
       70 CALL                             R4 2 0
       71 RETURN                           R0 0
       72 LOADB                            R6 1
       73 NAMECALL                         R4 R0 K14 ["_setShowSidebar"]
       75 CALL                             R4 2 0
       76 RETURN                           R0 0

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
        5 SETTABLEKS                       R2 R0 K1 ["_sidebarSize"]
        7 GETTABLEN                        R2 R1 2
        8 SETTABLEKS                       R2 R0 K2 ["_browserSize"]
       10 NAMECALL                         R2 R0 K3 ["_updateGridState"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K4 ["OnAppSizesChanged"]
       15 NEWTABLE                         R4 0 2
       17 GETTABLEKS                       R5 R0 K1 ["_sidebarSize"]
       19 GETTABLEKS                       R6 R0 K2 ["_browserSize"]
       21 SETLIST                          R4 R5 2 [1]
       23 NAMECALL                         R2 R2 K5 ["Fire"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_23:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_24:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R1 K1 ["ViewType"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R2 K2 ["List"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+21]
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+13]
       14 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       16 GETTABLEKS                       R3 R3 K3 ["ListRowHeight"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["ListThumbnailScale"]
       21 MUL                              R2 R3 R4
       22 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       23 GETIMPORT                        R1 K7 [math.floor]
       25 CALL                             R1 1 1
       26 RETURN                           R1 1
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K8 ["ListThumbnailSize"]
       30 RETURN                           R1 1
       31 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       33 GETTABLEKS                       R3 R3 K9 ["GridSize"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K10 ["GridThumbnailScale"]
       38 MUL                              R2 R3 R4
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K11 ["GridThumbnailOffset"]
       42 SUB                              R1 R2 R3
       43 RETURN                           R1 1

PROTO_28:
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

PROTO_29:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_41:
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
       51 JUMP                             ; [+11]
       52 GETUPVAL                         R6 2
       53 CALL                             R6 0 1
       54 JUMPIFNOT                        R6 ; [+5]
       55 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       57 GETTABLEKS                       R5 R5 K16 ["ListRowHeight"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K17 ["ItemRowHeightDefault"]
       63 JUMPIF                           R4 ; [+1]
       64 RETURN                           R0 0
       65 GETTABLEKS                       R6 R4 K18 ["CanvasPosition"]
       67 GETTABLEKS                       R6 R6 K19 ["X"]
       69 GETTABLEKS                       R7 R4 K18 ["CanvasPosition"]
       71 GETTABLEKS                       R7 R7 K14 ["Y"]
       73 JUMPIFNOT                        R3 ; [+8]
       74 GETUPVAL                         R8 1
       75 GETTABLEKS                       R8 R8 K13 ["GridCellPadding"]
       77 GETTABLEKS                       R8 R8 K14 ["Y"]
       79 GETTABLEKS                       R8 R8 K15 ["Offset"]
       81 JUMP                             ; [+1]
       82 LOADN                            R8 0
       83 GETTABLEKS                       R10 R4 K20 ["AbsoluteSize"]
       85 GETTABLEKS                       R10 R10 K14 ["Y"]
       87 SUB                              R9 R10 R8
       88 DIV                              R11 R7 R5
       89 FASTCALL1                        MATH_CEIL R11 ; [+2]
       90 GETIMPORT                        R10 K22 [math.ceil]
       92 CALL                             R10 1 1
       93 ADD                              R13 R7 R9
       94 DIV                              R12 R13 R5
       95 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       96 GETIMPORT                        R11 K4 [math.floor]
       98 CALL                             R11 1 1
       99 JUMPIFNOT                        R3 ; [+11]
      100 SUBK                             R14 R1 K23 [1]
      101 NAMECALL                         R15 R0 K24 ["getGridCellsPerRow"]
      103 CALL                             R15 1 1
      104 DIV                              R13 R14 R15
      105 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      106 GETIMPORT                        R12 K4 [math.floor]
      108 CALL                             R12 1 1
      109 ADDK                             R1 R12 K23 [1]
      110 JUMP                             ; [0]
      111 JUMPIFNOTLE                      R1 R10 ; [+11]
      113 GETIMPORT                        R12 K27 [Vector2.new]
      115 MOVE                             R13 R6
      116 SUBK                             R16 R1 K23 [1]
      117 MUL                              R15 R16 R5
      118 ADD                              R14 R8 R15
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R4 K18 ["CanvasPosition"]
      122 RETURN                           R0 0
      123 JUMPIFNOTLT                      R11 R1 ; [+16]
      125 MUL                              R13 R1 R5
      126 ADD                              R12 R8 R13
      127 GETTABLEKS                       R14 R4 K20 ["AbsoluteSize"]
      129 GETTABLEKS                       R14 R14 K14 ["Y"]
      131 ADD                              R13 R7 R14
      132 GETIMPORT                        R14 K27 [Vector2.new]
      134 MOVE                             R15 R6
      135 SUB                              R17 R12 R13
      136 ADD                              R16 R7 R17
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R4 K18 ["CanvasPosition"]
      140 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K2 ["X"]
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContentScrollChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_49:
        0 SETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 GETTABLEKS                       R2 R0 K1 ["_connections"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["_connections"]
        8 GETTABLEKS                       R2 R2 K2 ["ContentGrid"]
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R2 R0 K1 ["_connections"]
       13 GETTABLEKS                       R2 R2 K2 ["ContentGrid"]
       15 NAMECALL                         R2 R2 K3 ["Disconnect"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R2 R0 K1 ["_connections"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       23 JUMPIFNOT                        R1 ; [+26]
       24 GETTABLEKS                       R2 R0 K1 ["_connections"]
       26 LOADK                            R5 K4 ["AbsoluteSize"]
       27 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       29 CALL                             R3 2 1
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R3 R3 K6 ["Connect"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       37 GETTABLEKS                       R2 R0 K1 ["_connections"]
       39 LOADK                            R5 K7 ["CanvasPosition"]
       40 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       42 CALL                             R3 2 1
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R3 R3 K6 ["Connect"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K8 ["GridScrollConnection"]
       50 NAMECALL                         R2 R0 K9 ["_updateGridState"]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
        0 GETTABLEKS                       R4 R0 K0 ["_connections"]
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+2]
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMPIF                           R3 ; [+18]
        7 GETTABLEKS                       R4 R0 K0 ["_connections"]
        9 GETTABLEKS                       R4 R4 K1 ["SidebarScrollSync"]
       11 JUMPIFNOT                        R4 ; [+12]
       12 GETTABLEKS                       R4 R0 K0 ["_connections"]
       14 GETTABLEKS                       R4 R4 K1 ["SidebarScrollSync"]
       16 NAMECALL                         R4 R4 K2 ["Disconnect"]
       18 CALL                             R4 1 0
       19 GETTABLEKS                       R4 R0 K0 ["_connections"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K1 ["SidebarScrollSync"]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R0 K0 ["_connections"]
       27 LOADK                            R7 K3 ["CanvasPosition"]
       28 NAMECALL                         R5 R2 K4 ["GetPropertyChangedSignal"]
       30 CALL                             R5 2 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R5 R5 K5 ["Connect"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K1 ["SidebarScrollSync"]
       41 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSidebarScrollableChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R4 R0 K0 ["_connections"]
        2 JUMPIF                           R4 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K1 ["_mainSidebarScrollFrame"]
        6 SETTABLEKS                       R2 R0 K2 ["_underlaySidebarScrollFrame"]
        8 SETTABLEKS                       R3 R0 K3 ["_overlaySidebarScrollFrame"]
       10 GETTABLEKS                       R4 R0 K0 ["_connections"]
       12 GETTABLEKS                       R4 R4 K4 ["SidebarScrollableCanvasSize"]
       14 JUMPIFNOT                        R4 ; [+12]
       15 GETTABLEKS                       R4 R0 K0 ["_connections"]
       17 GETTABLEKS                       R4 R4 K4 ["SidebarScrollableCanvasSize"]
       19 NAMECALL                         R4 R4 K5 ["Disconnect"]
       21 CALL                             R4 1 0
       22 GETTABLEKS                       R4 R0 K0 ["_connections"]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K4 ["SidebarScrollableCanvasSize"]
       27 GETTABLEKS                       R4 R0 K0 ["_connections"]
       29 GETTABLEKS                       R4 R4 K6 ["SidebarScrollableAbsoluteSize"]
       31 JUMPIFNOT                        R4 ; [+12]
       32 GETTABLEKS                       R4 R0 K0 ["_connections"]
       34 GETTABLEKS                       R4 R4 K6 ["SidebarScrollableAbsoluteSize"]
       36 NAMECALL                         R4 R4 K5 ["Disconnect"]
       38 CALL                             R4 1 0
       39 GETTABLEKS                       R4 R0 K0 ["_connections"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K6 ["SidebarScrollableAbsoluteSize"]
       44 JUMPIFNOT                        R1 ; [+31]
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          VAL R0
       47 GETTABLEKS                       R5 R0 K0 ["_connections"]
       49 LOADK                            R8 K7 ["CanvasSize"]
       50 NAMECALL                         R6 R1 K8 ["GetPropertyChangedSignal"]
       52 CALL                             R6 2 1
       53 MOVE                             R8 R4
       54 NAMECALL                         R6 R6 K9 ["Connect"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K4 ["SidebarScrollableCanvasSize"]
       59 GETTABLEKS                       R5 R0 K0 ["_connections"]
       61 LOADK                            R8 K10 ["AbsoluteSize"]
       62 NAMECALL                         R6 R1 K8 ["GetPropertyChangedSignal"]
       64 CALL                             R6 2 1
       65 MOVE                             R8 R4
       66 NAMECALL                         R6 R6 K9 ["Connect"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K6 ["SidebarScrollableAbsoluteSize"]
       71 GETTABLEKS                       R5 R0 K11 ["OnSidebarScrollableChanged"]
       73 NAMECALL                         R5 R5 K12 ["Fire"]
       75 CALL                             R5 1 0
       76 MOVE                             R6 R2
       77 MOVE                             R7 R1
       78 MOVE                             R8 R3
       79 NAMECALL                         R4 R0 K13 ["_syncSidebarScroll"]
       81 CALL                             R4 4 0
       82 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
        0 GETTABLEKS                       R1 R0 K0 ["_gridCellsPerRow"]
        2 RETURN                           R1 1

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
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R0 K10 ["Src"]
       80 GETTABLEKS                       R13 R13 K22 ["Flags"]
       82 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrListViewCustomRowHeight"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R14 R0 K10 ["Src"]
       89 GETTABLEKS                       R14 R14 K22 ["Flags"]
       91 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrFoundationifySearch"]
       93 CALL                             R13 1 1
       94 MOVE                             R15 R13
       95 CALL                             R15 0 1
       96 JUMPIFNOT                        R15 ; [+2]
       97 LOADN                            R14 150
       98 JUMP                             ; [+1]
       99 LOADN                            R14 100
      100 GETIMPORT                        R15 K27 [UDim.new]
      102 LOADN                            R16 0
      103 LOADN                            R17 150
      104 CALL                             R15 2 1
      105 DUPCLOSURE                       R16 K28 [PROTO_2]
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R11
      113 SETTABLEKS                       R16 R11 K26 ["new"]
      115 DUPCLOSURE                       R16 K29 [PROTO_3]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R16 R11 K30 ["mock"]
      120 DUPCLOSURE                       R16 K31 [PROTO_4]
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R16 R11 K32 ["destroy"]
      124 DUPCLOSURE                       R16 K33 [PROTO_5]
      125 SETTABLEKS                       R16 R11 K34 ["getPluginGui"]
      127 DUPCLOSURE                       R16 K35 [PROTO_6]
      128 SETTABLEKS                       R16 R11 K36 ["isPluginGuiFocused"]
      130 DUPCLOSURE                       R16 K37 [PROTO_8]
      131 SETTABLEKS                       R16 R11 K38 ["setPluginFrame"]
      133 DUPCLOSURE                       R16 K39 [PROTO_9]
      134 SETTABLEKS                       R16 R11 K40 ["getPluginFrame"]
      136 DUPCLOSURE                       R16 K41 [PROTO_10]
      137 SETTABLEKS                       R16 R11 K42 ["getFolderLimit"]
      139 DUPCLOSURE                       R16 K43 [PROTO_11]
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R16 R11 K44 ["_updateFolderLimit"]
      144 DUPCLOSURE                       R16 K45 [PROTO_12]
      145 SETTABLEKS                       R16 R11 K46 ["_normalizeColumnWidths"]
      147 DUPCLOSURE                       R16 K47 [PROTO_13]
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R16 R11 K48 ["populateSavedSettings"]
      151 DUPCLOSURE                       R16 K49 [PROTO_14]
      152 SETTABLEKS                       R16 R11 K50 ["getShowSidebar"]
      154 DUPCLOSURE                       R16 K51 [PROTO_15]
      155 SETTABLEKS                       R16 R11 K52 ["toggleSidebar"]
      157 DUPCLOSURE                       R16 K53 [PROTO_16]
      158 SETTABLEKS                       R16 R11 K54 ["_setShowSidebar"]
      160 DUPCLOSURE                       R16 K55 [PROTO_17]
      161 SETTABLEKS                       R16 R11 K56 ["getIsCompact"]
      163 DUPCLOSURE                       R16 K57 [PROTO_18]
      164 SETTABLEKS                       R16 R11 K58 ["getPluginWidth"]
      166 DUPCLOSURE                       R16 K59 [PROTO_19]
      167 SETTABLEKS                       R16 R11 K60 ["getPluginHeight"]
      169 DUPCLOSURE                       R16 K61 [PROTO_20]
      170 SETTABLEKS                       R16 R11 K62 ["_setPluginWidth"]
      172 DUPCLOSURE                       R16 K63 [PROTO_21]
      173 SETTABLEKS                       R16 R11 K64 ["_setPluginHeight"]
      175 DUPCLOSURE                       R16 K65 [PROTO_22]
      176 SETTABLEKS                       R16 R11 K66 ["setAppSizes"]
      178 DUPCLOSURE                       R16 K67 [PROTO_23]
      179 SETTABLEKS                       R16 R11 K68 ["getAppSizes"]
      181 DUPCLOSURE                       R16 K69 [PROTO_24]
      182 SETTABLEKS                       R16 R11 K70 ["getAppMinSizes"]
      184 DUPCLOSURE                       R16 K71 [PROTO_25]
      185 SETTABLEKS                       R16 R11 K72 ["setBrowserLayout"]
      187 DUPCLOSURE                       R16 K73 [PROTO_26]
      188 SETTABLEKS                       R16 R11 K74 ["getBrowserLayout"]
      190 DUPCLOSURE                       R16 K75 [PROTO_27]
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R7
      194 SETTABLEKS                       R16 R11 K76 ["getBrowserLayoutThumbnailSize"]
      196 DUPCLOSURE                       R16 K77 [PROTO_28]
      197 CAPTURE                          VAL R4
      198 SETTABLEKS                       R16 R11 K78 ["getContentFrame"]
      200 DUPCLOSURE                       R16 K79 [PROTO_29]
      201 SETTABLEKS                       R16 R11 K80 ["setColumnWidths"]
      203 DUPCLOSURE                       R16 K81 [PROTO_30]
      204 SETTABLEKS                       R16 R11 K82 ["getColumnWidths"]
      206 DUPCLOSURE                       R16 K83 [PROTO_31]
      207 SETTABLEKS                       R16 R11 K84 ["_removeColumnWidth"]
      209 DUPCLOSURE                       R16 K85 [PROTO_32]
      210 CAPTURE                          VAL R15
      211 SETTABLEKS                       R16 R11 K86 ["_addColumnWidth"]
      213 DUPCLOSURE                       R16 K87 [PROTO_33]
      214 SETTABLEKS                       R16 R11 K88 ["setColumns"]
      216 DUPCLOSURE                       R16 K89 [PROTO_34]
      217 SETTABLEKS                       R16 R11 K90 ["getColumns"]
      219 DUPCLOSURE                       R16 K91 [PROTO_36]
      220 CAPTURE                          VAL R5
      221 SETTABLEKS                       R16 R11 K92 ["getColumnIndex"]
      223 DUPCLOSURE                       R16 K93 [PROTO_37]
      224 SETTABLEKS                       R16 R11 K94 ["toggleColumn"]
      226 DUPCLOSURE                       R16 K95 [PROTO_39]
      227 SETTABLEKS                       R16 R11 K96 ["_bindScroll"]
      229 DUPCLOSURE                       R16 K97 [PROTO_40]
      230 SETTABLEKS                       R16 R11 K98 ["_unbindScroll"]
      232 DUPCLOSURE                       R16 K99 [PROTO_41]
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R12
      236 SETTABLEKS                       R16 R11 K100 ["scrollToItem"]
      238 DUPCLOSURE                       R16 K101 [PROTO_42]
      239 CAPTURE                          VAL R7
      240 SETTABLEKS                       R16 R11 K102 ["scrollToSidebarItem"]
      242 DUPCLOSURE                       R16 K103 [PROTO_43]
      243 SETTABLEKS                       R16 R11 K104 ["setContentList"]
      245 DUPCLOSURE                       R16 K105 [PROTO_44]
      246 SETTABLEKS                       R16 R11 K106 ["setListHeaderRow"]
      248 DUPCLOSURE                       R16 K107 [PROTO_45]
      249 CAPTURE                          VAL R7
      250 SETTABLEKS                       R16 R11 K108 ["_updateGridState"]
      252 DUPCLOSURE                       R16 K109 [PROTO_46]
      253 SETTABLEKS                       R16 R11 K110 ["getGridWidth"]
      255 DUPCLOSURE                       R16 K111 [PROTO_49]
      256 SETTABLEKS                       R16 R11 K112 ["setContentGrid"]
      258 DUPCLOSURE                       R16 K113 [PROTO_51]
      259 SETTABLEKS                       R16 R11 K114 ["_syncSidebarScroll"]
      261 DUPCLOSURE                       R16 K115 [PROTO_52]
      262 SETTABLEKS                       R16 R11 K116 ["isSidebarScrollable"]
      264 DUPCLOSURE                       R16 K117 [PROTO_54]
      265 SETTABLEKS                       R16 R11 K118 ["setSidebarScrollFrame"]
      267 DUPCLOSURE                       R16 K119 [PROTO_55]
      268 CAPTURE                          VAL R10
      269 SETTABLEKS                       R16 R11 K120 ["getSidebarHoveredCanvasY"]
      271 DUPCLOSURE                       R16 K121 [PROTO_56]
      272 SETTABLEKS                       R16 R11 K122 ["getGridCellsPerRow"]
      274 RETURN                           R11 1
