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
       28 LOADN                            R6 6
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
       82 SETTABLEKS                       R4 R3 K26 ["_gridWidth"]
       84 LOADN                            R4 0
       85 SETTABLEKS                       R4 R3 K27 ["_gridCellsPerRow"]
       87 GETUPVAL                         R4 3
       88 GETTABLEKS                       R4 R4 K28 ["SearchFoldersResultCountDefault"]
       90 SETTABLEKS                       R4 R3 K29 ["_folderLimit"]
       92 NEWTABLE                         R4 0 1
       94 GETUPVAL                         R5 4
       95 SETLIST                          R4 R5 1 [1]
       97 SETTABLEKS                       R4 R3 K30 ["_columnWidths"]
       99 NEWTABLE                         R4 0 5
      101 GETUPVAL                         R5 2
      102 GETTABLEKS                       R5 R5 K31 ["AssetInfoField"]
      104 GETTABLEKS                       R5 R5 K32 ["DisplayName"]
      106 GETUPVAL                         R6 2
      107 GETTABLEKS                       R6 R6 K31 ["AssetInfoField"]
      109 GETTABLEKS                       R6 R6 K33 ["AssetId"]
      111 GETUPVAL                         R7 2
      112 GETTABLEKS                       R7 R7 K31 ["AssetInfoField"]
      114 GETTABLEKS                       R7 R7 K34 ["AssetType"]
      116 GETUPVAL                         R8 2
      117 GETTABLEKS                       R8 R8 K31 ["AssetInfoField"]
      119 GETTABLEKS                       R8 R8 K35 ["Modified"]
      121 GETUPVAL                         R9 2
      122 GETTABLEKS                       R9 R9 K31 ["AssetInfoField"]
      124 GETTABLEKS                       R9 R9 K36 ["Creator"]
      126 SETLIST                          R4 R5 5 [1]
      128 SETTABLEKS                       R4 R3 K37 ["_columns"]
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K38 ["_mainSidebarScrollFrame"]
      133 LOADNIL                          R4
      134 SETTABLEKS                       R4 R3 K39 ["_underlaySidebarScrollFrame"]
      136 LOADNIL                          R4
      137 SETTABLEKS                       R4 R3 K40 ["_overlaySidebarScrollFrame"]
      139 NEWTABLE                         R4 0 0
      141 SETTABLEKS                       R4 R3 K41 ["_connections"]
      143 GETUPVAL                         R4 5
      144 GETTABLEKS                       R4 R4 K7 ["new"]
      146 CALL                             R4 0 1
      147 SETTABLEKS                       R4 R3 K42 ["OnAppSizesChanged"]
      149 GETUPVAL                         R4 5
      150 GETTABLEKS                       R4 R4 K7 ["new"]
      152 CALL                             R4 0 1
      153 SETTABLEKS                       R4 R3 K43 ["OnBrowserLayoutChanged"]
      155 GETUPVAL                         R4 5
      156 GETTABLEKS                       R4 R4 K7 ["new"]
      158 CALL                             R4 0 1
      159 SETTABLEKS                       R4 R3 K44 ["OnColumnsChanged"]
      161 GETUPVAL                         R4 5
      162 GETTABLEKS                       R4 R4 K7 ["new"]
      164 CALL                             R4 0 1
      165 SETTABLEKS                       R4 R3 K45 ["OnColumnWidthsChanged"]
      167 GETUPVAL                         R4 5
      168 GETTABLEKS                       R4 R4 K7 ["new"]
      170 CALL                             R4 0 1
      171 SETTABLEKS                       R4 R3 K46 ["OnContentScrollChanged"]
      173 GETUPVAL                         R4 5
      174 GETTABLEKS                       R4 R4 K7 ["new"]
      176 CALL                             R4 0 1
      177 SETTABLEKS                       R4 R3 K47 ["OnGridStateUpdated"]
      179 GETUPVAL                         R4 5
      180 GETTABLEKS                       R4 R4 K7 ["new"]
      182 CALL                             R4 0 1
      183 SETTABLEKS                       R4 R3 K48 ["OnIsCompactChanged"]
      185 GETUPVAL                         R4 5
      186 GETTABLEKS                       R4 R4 K7 ["new"]
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K49 ["OnLayoutFolderLimitChanged"]
      191 GETUPVAL                         R4 5
      192 GETTABLEKS                       R4 R4 K7 ["new"]
      194 CALL                             R4 0 1
      195 SETTABLEKS                       R4 R3 K50 ["OnPluginFrameSet"]
      197 GETUPVAL                         R4 5
      198 GETTABLEKS                       R4 R4 K7 ["new"]
      200 CALL                             R4 0 1
      201 SETTABLEKS                       R4 R3 K51 ["OnPluginHeightChanged"]
      203 GETUPVAL                         R4 5
      204 GETTABLEKS                       R4 R4 K7 ["new"]
      206 CALL                             R4 0 1
      207 SETTABLEKS                       R4 R3 K52 ["OnPluginWidthChanged"]
      209 GETUPVAL                         R4 5
      210 GETTABLEKS                       R4 R4 K7 ["new"]
      212 CALL                             R4 0 1
      213 SETTABLEKS                       R4 R3 K53 ["OnSidebarScrollableChanged"]
      215 GETUPVAL                         R4 5
      216 GETTABLEKS                       R4 R4 K7 ["new"]
      218 CALL                             R4 0 1
      219 SETTABLEKS                       R4 R3 K54 ["OnSidebarScrollChanged"]
      221 GETUPVAL                         R4 5
      222 GETTABLEKS                       R4 R4 K7 ["new"]
      224 CALL                             R4 0 1
      225 SETTABLEKS                       R4 R3 K55 ["OnSidebarToggled"]
      227 GETUPVAL                         R6 6
      228 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      230 MOVE                             R5 R3
      231 GETIMPORT                        R4 K57 [setmetatable]
      233 CALL                             R4 2 0
      234 GETTABLEKS                       R4 R3 K37 ["_columns"]
      236 LOADNIL                          R5
      237 LOADNIL                          R6
      238 FORGPREP                         R4
      239 GETTABLEKS                       R9 R3 K30 ["_columnWidths"]
      241 GETUPVAL                         R10 4
      242 SETTABLE                         R10 R9 R7
      243 FORGLOOP                         R4 2 ; [-5]
      245 GETUPVAL                         R4 7
      246 CALL                             R4 0 1
      247 JUMPIFNOT                        R4 ; [+22]
      248 GETTABLEKS                       R4 R3 K41 ["_connections"]
      250 GETTABLEKS                       R5 R1 K58 ["WindowFocused"]
      252 NEWCLOSURE                       R7 P0
      253 CAPTURE                          VAL R3
      254 NAMECALL                         R5 R5 K59 ["Connect"]
      256 CALL                             R5 2 1
      257 SETTABLEKS                       R5 R4 K60 ["GuiWindowFocused"]
      259 GETTABLEKS                       R4 R3 K41 ["_connections"]
      261 GETTABLEKS                       R5 R1 K61 ["WindowFocusReleased"]
      263 NEWCLOSURE                       R7 P1
      264 CAPTURE                          VAL R3
      265 NAMECALL                         R5 R5 K59 ["Connect"]
      267 CALL                             R5 2 1
      268 SETTABLEKS                       R5 R4 K62 ["GuiWindowFocusReleased"]
      270 RETURN                           R3 1

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
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+22]
       10 GETTABLEKS                       R2 R0 K1 ["_connections"]
       12 GETTABLEKS                       R3 R0 K0 ["_pluginFrame"]
       14 LOADK                            R5 K2 ["AbsoluteSize"]
       15 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R3 R3 K4 ["Connect"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R2 K5 ["PluginFrame"]
       25 GETTABLEKS                       R2 R0 K6 ["OnPluginFrameSet"]
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K7 ["Fire"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R3 R0 K1 ["_connections"]
       34 GETTABLEKS                       R4 R0 K0 ["_pluginFrame"]
       36 LOADK                            R6 K2 ["AbsoluteSize"]
       37 NAMECALL                         R4 R4 K3 ["GetPropertyChangedSignal"]
       39 CALL                             R4 2 1
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R4 R4 K4 ["Connect"]
       44 CALL                             R4 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R2 K10 [table.insert]
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_folderLimit"]
        2 RETURN                           R1 1

PROTO_12:
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
        9 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        8 LOADN                            R3 144
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

PROTO_22:
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

PROTO_23:
        0 LENGTH                           R2 R1
        1 JUMPIFEQKN                       R2 K0 [2] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEN                        R2 R1 1
        5 SETTABLEKS                       R2 R0 K1 ["_sidebarSize"]
        7 GETTABLEN                        R2 R1 2
        8 SETTABLEKS                       R2 R0 K2 ["_browserSize"]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R2 R0 K3 ["_updateGridState"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K4 ["OnAppSizesChanged"]
       18 NEWTABLE                         R4 0 2
       20 GETTABLEKS                       R5 R0 K1 ["_sidebarSize"]
       22 GETTABLEKS                       R6 R0 K2 ["_browserSize"]
       24 SETLIST                          R4 R5 2 [1]
       26 NAMECALL                         R2 R2 K5 ["Fire"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        7 GETTABLEKS                       R1 R1 K1 ["ViewType"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["ViewType"]
       12 GETTABLEKS                       R2 R2 K2 ["List"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+21]
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+13]
       19 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       21 GETTABLEKS                       R3 R3 K3 ["ListRowHeight"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K4 ["ListThumbnailScale"]
       26 MUL                              R2 R3 R4
       27 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       28 GETIMPORT                        R1 K7 [math.floor]
       30 CALL                             R1 1 1
       31 RETURN                           R1 1
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K8 ["ListThumbnailSize"]
       35 RETURN                           R1 1
       36 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       38 GETTABLEKS                       R3 R3 K9 ["GridSize"]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K10 ["GridThumbnailScale"]
       43 MUL                              R2 R3 R4
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K11 ["GridThumbnailOffset"]
       47 SUB                              R1 R2 R3
       48 RETURN                           R1 1

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
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 0
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+5]
       16 NAMECALL                         R2 R0 K5 ["getGridWidth"]
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 JUMP                             ; [+15]
       21 GETTABLEKS                       R3 R0 K6 ["_contentGrid"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETTABLEKS                       R2 R0 K6 ["_contentGrid"]
       26 GETTABLEKS                       R2 R2 K7 ["AbsoluteSize"]
       28 GETTABLEKS                       R2 R2 K8 ["X"]
       30 JUMP                             ; [+1]
       31 LOADN                            R2 0
       32 SETTABLEKS                       R2 R0 K9 ["_gridWidth"]
       34 GETTABLEKS                       R1 R0 K9 ["_gridWidth"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K10 ["GridCellPadding"]
       39 GETTABLEKS                       R2 R2 K8 ["X"]
       41 GETTABLEKS                       R2 R2 K11 ["Offset"]
       43 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       45 GETTABLEKS                       R4 R4 K1 ["GridSize"]
       47 ADD                              R3 R4 R2
       48 GETUPVAL                         R5 0
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+13]
       51 SUB                              R7 R1 R2
       52 DIV                              R6 R7 R3
       53 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       54 GETIMPORT                        R5 K4 [math.floor]
       56 CALL                             R5 1 1
       57 FASTCALL2K                       MATH_MAX R5 K12 ; [+4]
       59 LOADK                            R6 K12 [1]
       60 GETIMPORT                        R4 K14 [math.max]
       62 CALL                             R4 2 1
       63 JUMP                             ; [+6]
       64 SUB                              R6 R1 R2
       65 DIV                              R5 R6 R3
       66 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       67 GETIMPORT                        R4 K4 [math.floor]
       69 CALL                             R4 1 1
       70 SETTABLEKS                       R4 R0 K15 ["_gridCellsPerRow"]
       72 GETUPVAL                         R4 0
       73 CALL                             R4 0 1
       74 JUMPIFNOT                        R4 ; [+8]
       75 NAMECALL                         R4 R0 K16 ["_updateFolderLimit"]
       77 CALL                             R4 1 0
       78 GETTABLEKS                       R4 R0 K17 ["OnGridStateUpdated"]
       80 NAMECALL                         R4 R4 K18 ["Fire"]
       82 CALL                             R4 1 0
       83 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        8 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R1 R1 K2 ["X"]
       12 RETURN                           R1 1
       13 LOADN                            R1 0
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K3 ["_gridWidth"]
       17 RETURN                           R1 1

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
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+48]
        5 GETTABLEKS                       R2 R0 K1 ["_connections"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K1 ["_connections"]
       11 GETTABLEKS                       R2 R2 K2 ["ContentGrid"]
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETTABLEKS                       R2 R0 K1 ["_connections"]
       16 GETTABLEKS                       R2 R2 K2 ["ContentGrid"]
       18 NAMECALL                         R2 R2 K3 ["Disconnect"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K1 ["_connections"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       26 JUMPIFNOT                        R1 ; [+26]
       27 GETTABLEKS                       R2 R0 K1 ["_connections"]
       29 LOADK                            R5 K4 ["AbsoluteSize"]
       30 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       32 CALL                             R3 2 1
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R3 R3 K6 ["Connect"]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       40 GETTABLEKS                       R2 R0 K1 ["_connections"]
       42 LOADK                            R5 K7 ["CanvasPosition"]
       43 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       45 CALL                             R3 2 1
       46 NEWCLOSURE                       R5 P1
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R3 R3 K6 ["Connect"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K8 ["GridScrollConnection"]
       53 NAMECALL                         R2 R0 K9 ["_updateGridState"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        8 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R1 R1 K2 ["X"]
       12 GETTABLEKS                       R2 R0 K3 ["_gridWidth"]
       14 JUMPIFEQ                         R1 R2 ; [+4]
       16 NAMECALL                         R1 R0 K4 ["_updateGridState"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K5 ["_gridCellsPerRow"]
       21 RETURN                           R1 1

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
       82 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrOrganizationFoundation"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K5 [require]
       87 GETTABLEKS                       R14 R0 K10 ["Src"]
       89 GETTABLEKS                       R14 R14 K22 ["Flags"]
       91 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrFoundationifyContextMenu"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K10 ["Src"]
       98 GETTABLEKS                       R15 R15 K22 ["Flags"]
      100 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrListViewCustomRowHeight"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K10 ["Src"]
      107 GETTABLEKS                       R16 R16 K22 ["Flags"]
      109 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrFoundationifySearch"]
      111 CALL                             R15 1 1
      112 MOVE                             R17 R15
      113 CALL                             R17 0 1
      114 JUMPIFNOT                        R17 ; [+2]
      115 LOADN                            R16 150
      116 JUMP                             ; [+1]
      117 LOADN                            R16 100
      118 GETIMPORT                        R17 K29 [UDim.new]
      120 LOADN                            R18 0
      121 LOADN                            R19 150
      122 CALL                             R17 2 1
      123 DUPCLOSURE                       R18 K30 [PROTO_2]
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R18 R11 K28 ["new"]
      134 DUPCLOSURE                       R18 K31 [PROTO_3]
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R11
      137 SETTABLEKS                       R18 R11 K32 ["mock"]
      139 DUPCLOSURE                       R18 K33 [PROTO_4]
      140 CAPTURE                          VAL R9
      141 SETTABLEKS                       R18 R11 K34 ["destroy"]
      143 DUPCLOSURE                       R18 K35 [PROTO_5]
      144 SETTABLEKS                       R18 R11 K36 ["getPluginGui"]
      146 DUPCLOSURE                       R18 K37 [PROTO_6]
      147 SETTABLEKS                       R18 R11 K38 ["isPluginGuiFocused"]
      149 DUPCLOSURE                       R18 K39 [PROTO_9]
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R13
      152 SETTABLEKS                       R18 R11 K40 ["setPluginFrame"]
      154 DUPCLOSURE                       R18 K41 [PROTO_10]
      155 SETTABLEKS                       R18 R11 K42 ["getPluginFrame"]
      157 DUPCLOSURE                       R18 K43 [PROTO_11]
      158 SETTABLEKS                       R18 R11 K44 ["getFolderLimit"]
      160 DUPCLOSURE                       R18 K45 [PROTO_12]
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R6
      163 SETTABLEKS                       R18 R11 K46 ["_updateFolderLimit"]
      165 DUPCLOSURE                       R18 K47 [PROTO_13]
      166 SETTABLEKS                       R18 R11 K48 ["_normalizeColumnWidths"]
      168 DUPCLOSURE                       R18 K49 [PROTO_14]
      169 CAPTURE                          VAL R4
      170 SETTABLEKS                       R18 R11 K50 ["populateSavedSettings"]
      172 DUPCLOSURE                       R18 K51 [PROTO_15]
      173 SETTABLEKS                       R18 R11 K52 ["getShowSidebar"]
      175 DUPCLOSURE                       R18 K53 [PROTO_16]
      176 SETTABLEKS                       R18 R11 K54 ["toggleSidebar"]
      178 DUPCLOSURE                       R18 K55 [PROTO_17]
      179 SETTABLEKS                       R18 R11 K56 ["_setShowSidebar"]
      181 DUPCLOSURE                       R18 K57 [PROTO_18]
      182 SETTABLEKS                       R18 R11 K58 ["getIsCompact"]
      184 DUPCLOSURE                       R18 K59 [PROTO_19]
      185 SETTABLEKS                       R18 R11 K60 ["getPluginWidth"]
      187 DUPCLOSURE                       R18 K61 [PROTO_20]
      188 SETTABLEKS                       R18 R11 K62 ["getPluginHeight"]
      190 DUPCLOSURE                       R18 K63 [PROTO_21]
      191 SETTABLEKS                       R18 R11 K64 ["_setPluginWidth"]
      193 DUPCLOSURE                       R18 K65 [PROTO_22]
      194 SETTABLEKS                       R18 R11 K66 ["_setPluginHeight"]
      196 DUPCLOSURE                       R18 K67 [PROTO_23]
      197 CAPTURE                          VAL R12
      198 SETTABLEKS                       R18 R11 K68 ["setAppSizes"]
      200 DUPCLOSURE                       R18 K69 [PROTO_24]
      201 SETTABLEKS                       R18 R11 K70 ["getAppSizes"]
      203 DUPCLOSURE                       R18 K71 [PROTO_25]
      204 SETTABLEKS                       R18 R11 K72 ["getAppMinSizes"]
      206 DUPCLOSURE                       R18 K73 [PROTO_26]
      207 SETTABLEKS                       R18 R11 K74 ["setBrowserLayout"]
      209 DUPCLOSURE                       R18 K75 [PROTO_27]
      210 SETTABLEKS                       R18 R11 K76 ["getBrowserLayout"]
      212 DUPCLOSURE                       R18 K77 [PROTO_28]
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R7
      217 SETTABLEKS                       R18 R11 K78 ["getBrowserLayoutThumbnailSize"]
      219 DUPCLOSURE                       R18 K79 [PROTO_29]
      220 CAPTURE                          VAL R4
      221 SETTABLEKS                       R18 R11 K80 ["getContentFrame"]
      223 DUPCLOSURE                       R18 K81 [PROTO_30]
      224 SETTABLEKS                       R18 R11 K82 ["setColumnWidths"]
      226 DUPCLOSURE                       R18 K83 [PROTO_31]
      227 SETTABLEKS                       R18 R11 K84 ["getColumnWidths"]
      229 DUPCLOSURE                       R18 K85 [PROTO_32]
      230 SETTABLEKS                       R18 R11 K86 ["_removeColumnWidth"]
      232 DUPCLOSURE                       R18 K87 [PROTO_33]
      233 CAPTURE                          VAL R17
      234 SETTABLEKS                       R18 R11 K88 ["_addColumnWidth"]
      236 DUPCLOSURE                       R18 K89 [PROTO_34]
      237 SETTABLEKS                       R18 R11 K90 ["setColumns"]
      239 DUPCLOSURE                       R18 K91 [PROTO_35]
      240 SETTABLEKS                       R18 R11 K92 ["getColumns"]
      242 DUPCLOSURE                       R18 K93 [PROTO_37]
      243 CAPTURE                          VAL R5
      244 SETTABLEKS                       R18 R11 K94 ["getColumnIndex"]
      246 DUPCLOSURE                       R18 K95 [PROTO_38]
      247 SETTABLEKS                       R18 R11 K96 ["toggleColumn"]
      249 DUPCLOSURE                       R18 K97 [PROTO_40]
      250 SETTABLEKS                       R18 R11 K98 ["_bindScroll"]
      252 DUPCLOSURE                       R18 K99 [PROTO_41]
      253 SETTABLEKS                       R18 R11 K100 ["_unbindScroll"]
      255 DUPCLOSURE                       R18 K101 [PROTO_42]
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R14
      259 SETTABLEKS                       R18 R11 K102 ["scrollToItem"]
      261 DUPCLOSURE                       R18 K103 [PROTO_43]
      262 CAPTURE                          VAL R7
      263 SETTABLEKS                       R18 R11 K104 ["scrollToSidebarItem"]
      265 DUPCLOSURE                       R18 K105 [PROTO_44]
      266 SETTABLEKS                       R18 R11 K106 ["setContentList"]
      268 DUPCLOSURE                       R18 K107 [PROTO_45]
      269 SETTABLEKS                       R18 R11 K108 ["setListHeaderRow"]
      271 DUPCLOSURE                       R18 K109 [PROTO_46]
      272 CAPTURE                          VAL R12
      273 CAPTURE                          VAL R7
      274 SETTABLEKS                       R18 R11 K110 ["_updateGridState"]
      276 DUPCLOSURE                       R18 K111 [PROTO_47]
      277 CAPTURE                          VAL R12
      278 SETTABLEKS                       R18 R11 K112 ["getGridWidth"]
      280 DUPCLOSURE                       R18 K113 [PROTO_50]
      281 CAPTURE                          VAL R12
      282 SETTABLEKS                       R18 R11 K114 ["setContentGrid"]
      284 DUPCLOSURE                       R18 K115 [PROTO_52]
      285 SETTABLEKS                       R18 R11 K116 ["_syncSidebarScroll"]
      287 DUPCLOSURE                       R18 K117 [PROTO_53]
      288 SETTABLEKS                       R18 R11 K118 ["isSidebarScrollable"]
      290 DUPCLOSURE                       R18 K119 [PROTO_55]
      291 SETTABLEKS                       R18 R11 K120 ["setSidebarScrollFrame"]
      293 DUPCLOSURE                       R18 K121 [PROTO_56]
      294 CAPTURE                          VAL R10
      295 SETTABLEKS                       R18 R11 K122 ["getSidebarHoveredCanvasY"]
      297 DUPCLOSURE                       R18 K123 [PROTO_57]
      298 CAPTURE                          VAL R12
      299 SETTABLEKS                       R18 R11 K124 ["getGridCellsPerRow"]
      301 RETURN                           R11 1
