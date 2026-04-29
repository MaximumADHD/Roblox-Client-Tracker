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
       35 LOADN                            R6 100
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
       61 DUPTABLE                         R4 K20 [{"GridSize", "ViewType"}]
       62 LOADN                            R5 100
       63 SETTABLEKS                       R5 R4 K18 ["GridSize"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K19 ["ViewType"]
       68 GETTABLEKS                       R5 R6 K21 ["List"]
       70 SETTABLEKS                       R5 R4 K19 ["ViewType"]
       72 SETTABLEKS                       R4 R3 K22 ["_browserLayout"]
       74 LOADN                            R4 0
       75 SETTABLEKS                       R4 R3 K23 ["_gridWidth"]
       77 LOADN                            R4 0
       78 SETTABLEKS                       R4 R3 K24 ["_gridCellsPerRow"]
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R4 R5 K25 ["SearchFoldersResultCountDefault"]
       83 SETTABLEKS                       R4 R3 K26 ["_folderLimit"]
       85 NEWTABLE                         R4 0 1
       87 GETUPVAL                         R5 2
       88 SETLIST                          R4 R5 1 [1]
       90 SETTABLEKS                       R4 R3 K27 ["_columnWidths"]
       92 NEWTABLE                         R4 0 5
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R6 R7 K28 ["AssetInfoField"]
       97 GETTABLEKS                       R5 R6 K29 ["DisplayName"]
       99 GETUPVAL                         R8 0
      100 GETTABLEKS                       R7 R8 K28 ["AssetInfoField"]
      102 GETTABLEKS                       R6 R7 K30 ["AssetId"]
      104 GETUPVAL                         R9 0
      105 GETTABLEKS                       R8 R9 K28 ["AssetInfoField"]
      107 GETTABLEKS                       R7 R8 K31 ["AssetType"]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R9 R10 K28 ["AssetInfoField"]
      112 GETTABLEKS                       R8 R9 K32 ["Modified"]
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R10 R11 K28 ["AssetInfoField"]
      117 GETTABLEKS                       R9 R10 K33 ["Creator"]
      119 SETLIST                          R4 R5 5 [1]
      121 SETTABLEKS                       R4 R3 K34 ["_columns"]
      123 NEWTABLE                         R4 0 0
      125 SETTABLEKS                       R4 R3 K35 ["_connections"]
      127 GETUPVAL                         R5 3
      128 GETTABLEKS                       R4 R5 K7 ["new"]
      130 CALL                             R4 0 1
      131 SETTABLEKS                       R4 R3 K36 ["OnAppSizesChanged"]
      133 GETUPVAL                         R5 3
      134 GETTABLEKS                       R4 R5 K7 ["new"]
      136 CALL                             R4 0 1
      137 SETTABLEKS                       R4 R3 K37 ["OnBrowserLayoutChanged"]
      139 GETUPVAL                         R5 3
      140 GETTABLEKS                       R4 R5 K7 ["new"]
      142 CALL                             R4 0 1
      143 SETTABLEKS                       R4 R3 K38 ["OnColumnsChanged"]
      145 GETUPVAL                         R5 3
      146 GETTABLEKS                       R4 R5 K7 ["new"]
      148 CALL                             R4 0 1
      149 SETTABLEKS                       R4 R3 K39 ["OnColumnWidthsChanged"]
      151 GETUPVAL                         R5 3
      152 GETTABLEKS                       R4 R5 K7 ["new"]
      154 CALL                             R4 0 1
      155 SETTABLEKS                       R4 R3 K40 ["OnGridStateUpdated"]
      157 GETUPVAL                         R5 3
      158 GETTABLEKS                       R4 R5 K7 ["new"]
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K41 ["OnIsCompactChanged"]
      163 GETUPVAL                         R5 3
      164 GETTABLEKS                       R4 R5 K7 ["new"]
      166 CALL                             R4 0 1
      167 SETTABLEKS                       R4 R3 K42 ["OnLayoutFolderLimitChanged"]
      169 GETUPVAL                         R5 3
      170 GETTABLEKS                       R4 R5 K7 ["new"]
      172 CALL                             R4 0 1
      173 SETTABLEKS                       R4 R3 K43 ["OnPluginFrameSet"]
      175 GETUPVAL                         R5 3
      176 GETTABLEKS                       R4 R5 K7 ["new"]
      178 CALL                             R4 0 1
      179 SETTABLEKS                       R4 R3 K44 ["OnPluginHeightChanged"]
      181 GETUPVAL                         R5 3
      182 GETTABLEKS                       R4 R5 K7 ["new"]
      184 CALL                             R4 0 1
      185 SETTABLEKS                       R4 R3 K45 ["OnPluginWidthChanged"]
      187 GETUPVAL                         R5 3
      188 GETTABLEKS                       R4 R5 K7 ["new"]
      190 CALL                             R4 0 1
      191 SETTABLEKS                       R4 R3 K46 ["OnSidebarToggled"]
      193 GETUPVAL                         R6 4
      194 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      196 MOVE                             R5 R3
      197 GETIMPORT                        R4 K48 [setmetatable]
      199 CALL                             R4 2 0
      200 GETTABLEKS                       R4 R3 K34 ["_columns"]
      202 LOADNIL                          R5
      203 LOADNIL                          R6
      204 FORGPREP                         R4
      205 GETTABLEKS                       R9 R3 K27 ["_columnWidths"]
      207 GETUPVAL                         R10 2
      208 SETTABLE                         R10 R9 R7
      209 FORGLOOP                         R4 2 ; [-5]
      211 GETUPVAL                         R4 5
      212 CALL                             R4 0 1
      213 JUMPIFNOT                        R4 ; [+22]
      214 GETTABLEKS                       R4 R3 K35 ["_connections"]
      216 GETTABLEKS                       R5 R1 K49 ["WindowFocused"]
      218 NEWCLOSURE                       R7 P0
      219 CAPTURE                          VAL R3
      220 NAMECALL                         R5 R5 K50 ["Connect"]
      222 CALL                             R5 2 1
      223 SETTABLEKS                       R5 R4 K51 ["GuiWindowFocused"]
      225 GETTABLEKS                       R4 R3 K35 ["_connections"]
      227 GETTABLEKS                       R5 R1 K52 ["WindowFocusReleased"]
      229 NEWCLOSURE                       R7 P1
      230 CAPTURE                          VAL R3
      231 NAMECALL                         R5 R5 K50 ["Connect"]
      233 CALL                             R5 2 1
      234 SETTABLEKS                       R5 R4 K53 ["GuiWindowFocusReleased"]
      236 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K5 [{"WindowFocused", "WindowFocusReleased", "PluginDragEntered", "PluginDragLeft", "PluginDragDropped"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K6 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["WindowFocused"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K6 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K1 ["WindowFocusReleased"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K6 ["new"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["PluginDragEntered"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K6 ["new"]
       22 CALL                             R2 0 1
       23 SETTABLEKS                       R2 R1 K3 ["PluginDragLeft"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K6 ["new"]
       28 CALL                             R2 0 1
       29 SETTABLEKS                       R2 R1 K4 ["PluginDragDropped"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K6 ["new"]
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
       13 SETTABLEKS                       R1 R0 K4 ["OnGridStateUpdated"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnIsCompactChanged"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["OnLayoutFolderLimitChanged"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnPluginFrameSet"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnPluginHeightChanged"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["OnPluginWidthChanged"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["OnSidebarToggled"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K11 ["_pluginFrame"]
       36 NAMECALL                         R1 R0 K12 ["_unbindScroll"]
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R2 R0 K13 ["_connections"]
       42 CALL                             R1 1 0
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K13 ["_connections"]
       46 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGui"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGuiFocused"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["_pluginFrame"]
        4 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R3 K2 ["X"]
        8 NAMECALL                         R0 R0 K3 ["_setPluginWidth"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["_pluginFrame"]
       15 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R3 K4 ["Y"]
       19 NAMECALL                         R0 R0 K5 ["_setPluginHeight"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["_pluginFrame"]
        4 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R3 K2 ["X"]
        8 NAMECALL                         R0 R0 K3 ["_setPluginWidth"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["_pluginFrame"]
       15 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R3 K4 ["Y"]
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
        0 GETTABLEKS                       R2 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R2 K1 ["ViewType"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R3 K2 ["Grid"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+12]
       11 LOADN                            R2 1
       12 NAMECALL                         R3 R0 K3 ["getGridCellsPerRow"]
       14 CALL                             R3 1 -1
       15 FASTCALL                         MATH_MAX ; [+2]
       16 GETIMPORT                        R1 K6 [math.max]
       18 CALL                             R1 -1 1
       19 SETTABLEKS                       R1 R0 K7 ["_folderLimit"]
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R1 R2 K8 ["SearchFoldersResultCountDefault"]
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
       13 JUMPIFNOT                        R2 ; [+25]
       14 GETTABLEKS                       R4 R1 K2 ["BrowserLayout"]
       16 GETTABLEKS                       R3 R4 K3 ["ViewType"]
       18 JUMPIFNOTEQKS                    R3 K4 ["Grid"] ; [+7]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K3 ["ViewType"]
       23 GETTABLEKS                       R2 R3 K4 ["Grid"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K3 ["ViewType"]
       29 GETTABLEKS                       R2 R3 K5 ["List"]
       31 GETTABLEKS                       R6 R1 K2 ["BrowserLayout"]
       33 GETTABLEKS                       R5 R6 K6 ["GridSize"]
       35 MOVE                             R6 R2
       36 NAMECALL                         R3 R0 K7 ["setBrowserLayout"]
       38 CALL                             R3 3 0
       39 GETTABLEKS                       R2 R1 K8 ["Columns"]
       41 JUMPIFNOT                        R2 ; [+11]
       42 GETTABLEKS                       R3 R1 K8 ["Columns"]
       44 LENGTH                           R2 R3
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R3 R2 ; [+6]
       48 GETTABLEKS                       R4 R1 K8 ["Columns"]
       50 NAMECALL                         R2 R0 K9 ["setColumns"]
       52 CALL                             R2 2 0
       53 GETTABLEKS                       R2 R1 K10 ["ColumnWidths"]
       55 JUMPIFNOT                        R2 ; [+11]
       56 GETTABLEKS                       R3 R1 K10 ["ColumnWidths"]
       58 LENGTH                           R2 R3
       59 LOADN                            R3 0
       60 JUMPIFNOTLT                      R3 R2 ; [+6]
       62 GETTABLEKS                       R4 R1 K10 ["ColumnWidths"]
       64 NAMECALL                         R2 R0 K11 ["setColumnWidths"]
       66 CALL                             R2 2 0
       67 NAMECALL                         R2 R0 K12 ["_normalizeColumnWidths"]
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["_pluginWidth"]
        5 LOADN                            R3 144
        6 JUMPIFLT                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 LOADB                            R1 0
       12 RETURN                           R1 1

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
       16 GETTABLEKS                       R8 R0 K5 ["_sidebarSize"]
       18 GETTABLEKS                       R7 R8 K6 ["Offset"]
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
        1 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        3 GETTABLEKS                       R1 R3 K1 ["GridSize"]
        5 JUMPIF                           R2 ; [+4]
        6 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        8 GETTABLEKS                       R2 R3 K2 ["ViewType"]
       10 DUPTABLE                         R3 K3 [{"GridSize", "ViewType"}]
       11 SETTABLEKS                       R1 R3 K1 ["GridSize"]
       13 SETTABLEKS                       R2 R3 K2 ["ViewType"]
       15 SETTABLEKS                       R3 R0 K0 ["_browserLayout"]
       17 NAMECALL                         R3 R0 K4 ["_updateGridState"]
       19 CALL                             R3 1 0
       20 GETTABLEKS                       R3 R0 K5 ["OnBrowserLayoutChanged"]
       22 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       24 NAMECALL                         R3 R3 K6 ["Fire"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K0 ["_browserLayout"]
        7 GETTABLEKS                       R1 R2 K1 ["ViewType"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["ViewType"]
       12 GETTABLEKS                       R2 R3 K2 ["List"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+5]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K3 ["ListThumbnailSize"]
       19 RETURN                           R1 1
       20 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       22 GETTABLEKS                       R3 R4 K4 ["GridSize"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K5 ["GridThumbnailScale"]
       27 MUL                              R2 R3 R4
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K6 ["GridThumbnailOffset"]
       31 SUB                              R1 R2 R3
       32 RETURN                           R1 1

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findIndex"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_headerRow"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["_contentList"]
        8 GETTABLEKS                       R3 R4 K5 ["CanvasPosition"]
       10 GETTABLEKS                       R2 R3 K6 ["X"]
       12 LOADN                            R3 0
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       16 RETURN                           R0 0

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
        0 GETTABLEKS                       R3 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R2 R3 K1 ["GridSize"]
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
       19 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       21 GETTABLEKS                       R4 R5 K8 ["ViewType"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K8 ["ViewType"]
       26 GETTABLEKS                       R5 R6 K9 ["Grid"]
       28 JUMPIFEQ                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETTABLEKS                       R4 R0 K10 ["_contentGrid"]
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R4 R0 K11 ["_contentList"]
       38 JUMPIFNOT                        R3 ; [+13]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K12 ["CellDataHeight"]
       42 ADD                              R6 R7 R2
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K13 ["GridCellPadding"]
       46 GETTABLEKS                       R8 R9 K14 ["Y"]
       48 GETTABLEKS                       R7 R8 K15 ["Offset"]
       50 ADD                              R5 R6 R7
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K16 ["ItemRowHeight"]
       55 JUMPIF                           R4 ; [+1]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R7 R4 K17 ["CanvasPosition"]
       59 GETTABLEKS                       R6 R7 K18 ["X"]
       61 GETTABLEKS                       R8 R4 K17 ["CanvasPosition"]
       63 GETTABLEKS                       R7 R8 K14 ["Y"]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R10 R11 K13 ["GridCellPadding"]
       69 GETTABLEKS                       R9 R10 K14 ["Y"]
       71 GETTABLEKS                       R8 R9 K15 ["Offset"]
       73 JUMP                             ; [+1]
       74 LOADN                            R8 0
       75 GETTABLEKS                       R11 R4 K19 ["AbsoluteSize"]
       77 GETTABLEKS                       R10 R11 K14 ["Y"]
       79 SUB                              R9 R10 R8
       80 DIV                              R11 R7 R5
       81 FASTCALL1                        MATH_CEIL R11 ; [+2]
       82 GETIMPORT                        R10 K21 [math.ceil]
       84 CALL                             R10 1 1
       85 ADD                              R13 R7 R9
       86 DIV                              R12 R13 R5
       87 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       88 GETIMPORT                        R11 K4 [math.floor]
       90 CALL                             R11 1 1
       91 JUMPIFNOT                        R3 ; [+11]
       92 SUBK                             R14 R1 K22 [1]
       93 NAMECALL                         R15 R0 K23 ["getGridCellsPerRow"]
       95 CALL                             R15 1 1
       96 DIV                              R13 R14 R15
       97 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       98 GETIMPORT                        R12 K4 [math.floor]
      100 CALL                             R12 1 1
      101 ADDK                             R1 R12 K22 [1]
      102 JUMP                             ; [0]
      103 JUMPIFNOTLE                      R1 R10 ; [+11]
      105 GETIMPORT                        R12 K26 [Vector2.new]
      107 MOVE                             R13 R6
      108 SUBK                             R16 R1 K22 [1]
      109 MUL                              R15 R16 R5
      110 ADD                              R14 R8 R15
      111 CALL                             R12 2 1
      112 SETTABLEKS                       R12 R4 K17 ["CanvasPosition"]
      114 RETURN                           R0 0
      115 JUMPIFNOTLT                      R11 R1 ; [+16]
      117 MUL                              R13 R1 R5
      118 ADD                              R12 R8 R13
      119 GETTABLEKS                       R15 R4 K19 ["AbsoluteSize"]
      121 GETTABLEKS                       R14 R15 K14 ["Y"]
      123 ADD                              R13 R7 R14
      124 GETIMPORT                        R14 K26 [Vector2.new]
      126 MOVE                             R15 R6
      127 SUB                              R17 R12 R13
      128 ADD                              R16 R7 R17
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R4 K17 ["CanvasPosition"]
      132 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
        4 GETTABLEKS                       R3 R4 K1 ["GridSize"]
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
       24 GETTABLEKS                       R4 R0 K6 ["_contentGrid"]
       26 GETTABLEKS                       R3 R4 K7 ["AbsoluteSize"]
       28 GETTABLEKS                       R2 R3 K8 ["X"]
       30 JUMP                             ; [+1]
       31 LOADN                            R2 0
       32 SETTABLEKS                       R2 R0 K9 ["_gridWidth"]
       34 GETTABLEKS                       R1 R0 K9 ["_gridWidth"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K10 ["GridCellPadding"]
       39 GETTABLEKS                       R3 R4 K8 ["X"]
       41 GETTABLEKS                       R2 R3 K11 ["Offset"]
       43 GETTABLEKS                       R5 R0 K0 ["_browserLayout"]
       45 GETTABLEKS                       R4 R5 K1 ["GridSize"]
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

PROTO_45:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R3 R0 K0 ["_contentGrid"]
        8 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R1 R2 K2 ["X"]
       12 RETURN                           R1 1
       13 LOADN                            R1 0
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K3 ["_gridWidth"]
       17 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_47:
        0 SETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+35]
        5 GETTABLEKS                       R2 R0 K1 ["_connections"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K1 ["_connections"]
       11 GETTABLEKS                       R2 R3 K2 ["ContentGrid"]
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETTABLEKS                       R3 R0 K1 ["_connections"]
       16 GETTABLEKS                       R2 R3 K2 ["ContentGrid"]
       18 NAMECALL                         R2 R2 K3 ["Disconnect"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K1 ["_connections"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       26 JUMPIFNOT                        R1 ; [+13]
       27 GETTABLEKS                       R2 R0 K1 ["_connections"]
       29 LOADK                            R5 K4 ["AbsoluteSize"]
       30 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       32 CALL                             R3 2 1
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R3 R3 K6 ["Connect"]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       40 NAMECALL                         R2 R0 K7 ["_updateGridState"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETTABLEKS                       R3 R0 K0 ["_contentGrid"]
        8 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R1 R2 K2 ["X"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K12 ["Dash"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K10 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Resources"]
       38 GETTABLEKS                       R7 R8 K14 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R10 K13 ["Resources"]
       47 GETTABLEKS                       R8 R9 K15 ["StyleConstants"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R9 R1 K16 ["Util"]
       52 GETTABLEKS                       R8 R9 K17 ["Signal"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K10 ["Src"]
       58 GETTABLEKS                       R11 R12 K16 ["Util"]
       60 GETTABLEKS                       R10 R11 K18 ["cleanConnections"]
       62 CALL                             R9 1 1
       63 LOADK                            R12 K19 ["LayoutController"]
       64 NAMECALL                         R10 R3 K20 ["extend"]
       66 CALL                             R10 2 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R14 R0 K10 ["Src"]
       71 GETTABLEKS                       R13 R14 K21 ["Flags"]
       73 GETTABLEKS                       R12 R13 K22 ["getFFlagAmrOrganizationFoundation"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R15 R0 K10 ["Src"]
       80 GETTABLEKS                       R14 R15 K21 ["Flags"]
       82 GETTABLEKS                       R13 R14 K23 ["getFFlagAmrFoundationifyContextMenu"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K26 [UDim.new]
       87 LOADN                            R14 0
       88 LOADN                            R15 150
       89 CALL                             R13 2 1
       90 DUPCLOSURE                       R14 K27 [PROTO_2]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R14 R10 K25 ["new"]
       99 DUPCLOSURE                       R14 K28 [PROTO_3]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 SETTABLEKS                       R14 R10 K29 ["mock"]
      104 DUPCLOSURE                       R14 K30 [PROTO_4]
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R14 R10 K31 ["destroy"]
      108 DUPCLOSURE                       R14 K32 [PROTO_5]
      109 SETTABLEKS                       R14 R10 K33 ["getPluginGui"]
      111 DUPCLOSURE                       R14 K34 [PROTO_6]
      112 SETTABLEKS                       R14 R10 K35 ["isPluginGuiFocused"]
      114 DUPCLOSURE                       R14 K36 [PROTO_9]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R12
      117 SETTABLEKS                       R14 R10 K37 ["setPluginFrame"]
      119 DUPCLOSURE                       R14 K38 [PROTO_10]
      120 SETTABLEKS                       R14 R10 K39 ["getPluginFrame"]
      122 DUPCLOSURE                       R14 K40 [PROTO_11]
      123 SETTABLEKS                       R14 R10 K41 ["getFolderLimit"]
      125 DUPCLOSURE                       R14 K42 [PROTO_12]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R14 R10 K43 ["_updateFolderLimit"]
      130 DUPCLOSURE                       R14 K44 [PROTO_13]
      131 SETTABLEKS                       R14 R10 K45 ["_normalizeColumnWidths"]
      133 DUPCLOSURE                       R14 K46 [PROTO_14]
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R14 R10 K47 ["populateSavedSettings"]
      137 DUPCLOSURE                       R14 K48 [PROTO_15]
      138 SETTABLEKS                       R14 R10 K49 ["getShowSidebar"]
      140 DUPCLOSURE                       R14 K50 [PROTO_16]
      141 SETTABLEKS                       R14 R10 K51 ["toggleSidebar"]
      143 DUPCLOSURE                       R14 K52 [PROTO_17]
      144 SETTABLEKS                       R14 R10 K53 ["_setShowSidebar"]
      146 DUPCLOSURE                       R14 K54 [PROTO_18]
      147 SETTABLEKS                       R14 R10 K55 ["getIsCompact"]
      149 DUPCLOSURE                       R14 K56 [PROTO_19]
      150 SETTABLEKS                       R14 R10 K57 ["getPluginWidth"]
      152 DUPCLOSURE                       R14 K58 [PROTO_20]
      153 SETTABLEKS                       R14 R10 K59 ["getPluginHeight"]
      155 DUPCLOSURE                       R14 K60 [PROTO_21]
      156 SETTABLEKS                       R14 R10 K61 ["_setPluginWidth"]
      158 DUPCLOSURE                       R14 K62 [PROTO_22]
      159 SETTABLEKS                       R14 R10 K63 ["_setPluginHeight"]
      161 DUPCLOSURE                       R14 K64 [PROTO_23]
      162 CAPTURE                          VAL R11
      163 SETTABLEKS                       R14 R10 K65 ["setAppSizes"]
      165 DUPCLOSURE                       R14 K66 [PROTO_24]
      166 SETTABLEKS                       R14 R10 K67 ["getAppSizes"]
      168 DUPCLOSURE                       R14 K68 [PROTO_25]
      169 SETTABLEKS                       R14 R10 K69 ["getAppMinSizes"]
      171 DUPCLOSURE                       R14 K70 [PROTO_26]
      172 SETTABLEKS                       R14 R10 K71 ["setBrowserLayout"]
      174 DUPCLOSURE                       R14 K72 [PROTO_27]
      175 SETTABLEKS                       R14 R10 K73 ["getBrowserLayout"]
      177 DUPCLOSURE                       R14 K74 [PROTO_28]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R7
      181 SETTABLEKS                       R14 R10 K75 ["getBrowserLayoutThumbnailSize"]
      183 DUPCLOSURE                       R14 K76 [PROTO_29]
      184 SETTABLEKS                       R14 R10 K77 ["setColumnWidths"]
      186 DUPCLOSURE                       R14 K78 [PROTO_30]
      187 SETTABLEKS                       R14 R10 K79 ["getColumnWidths"]
      189 DUPCLOSURE                       R14 K80 [PROTO_31]
      190 SETTABLEKS                       R14 R10 K81 ["_removeColumnWidth"]
      192 DUPCLOSURE                       R14 K82 [PROTO_32]
      193 CAPTURE                          VAL R13
      194 SETTABLEKS                       R14 R10 K83 ["_addColumnWidth"]
      196 DUPCLOSURE                       R14 K84 [PROTO_33]
      197 SETTABLEKS                       R14 R10 K85 ["setColumns"]
      199 DUPCLOSURE                       R14 K86 [PROTO_34]
      200 SETTABLEKS                       R14 R10 K87 ["getColumns"]
      202 DUPCLOSURE                       R14 K88 [PROTO_36]
      203 CAPTURE                          VAL R5
      204 SETTABLEKS                       R14 R10 K89 ["getColumnIndex"]
      206 DUPCLOSURE                       R14 K90 [PROTO_37]
      207 SETTABLEKS                       R14 R10 K91 ["toggleColumn"]
      209 DUPCLOSURE                       R14 K92 [PROTO_39]
      210 SETTABLEKS                       R14 R10 K93 ["_bindScroll"]
      212 DUPCLOSURE                       R14 K94 [PROTO_40]
      213 SETTABLEKS                       R14 R10 K95 ["_unbindScroll"]
      215 DUPCLOSURE                       R14 K96 [PROTO_41]
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R7
      218 SETTABLEKS                       R14 R10 K97 ["scrollToItem"]
      220 DUPCLOSURE                       R14 K98 [PROTO_42]
      221 SETTABLEKS                       R14 R10 K99 ["setContentList"]
      223 DUPCLOSURE                       R14 K100 [PROTO_43]
      224 SETTABLEKS                       R14 R10 K101 ["setListHeaderRow"]
      226 DUPCLOSURE                       R14 K102 [PROTO_44]
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R7
      229 SETTABLEKS                       R14 R10 K103 ["_updateGridState"]
      231 DUPCLOSURE                       R14 K104 [PROTO_45]
      232 CAPTURE                          VAL R11
      233 SETTABLEKS                       R14 R10 K105 ["getGridWidth"]
      235 DUPCLOSURE                       R14 K106 [PROTO_47]
      236 CAPTURE                          VAL R11
      237 SETTABLEKS                       R14 R10 K107 ["setContentGrid"]
      239 DUPCLOSURE                       R14 K108 [PROTO_48]
      240 CAPTURE                          VAL R11
      241 SETTABLEKS                       R14 R10 K109 ["getGridCellsPerRow"]
      243 RETURN                           R10 1
