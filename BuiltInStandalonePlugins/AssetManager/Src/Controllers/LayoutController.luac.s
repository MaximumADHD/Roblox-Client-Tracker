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
      234 GETUPVAL                         R5 6
      235 CALL                             R5 0 1
      236 JUMPIFNOT                        R5 ; [+12]
      237 GETTABLEKS                       R6 R4 K38 ["_columns"]
      239 GETUPVAL                         R7 1
      240 GETTABLEKS                       R7 R7 K32 ["AssetInfoField"]
      242 GETTABLEKS                       R7 R7 K60 ["VersionNumber"]
      244 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
      246 GETIMPORT                        R5 K63 [table.insert]
      248 CALL                             R5 2 0
      249 GETTABLEKS                       R5 R4 K38 ["_columns"]
      251 LOADNIL                          R6
      252 LOADNIL                          R7
      253 FORGPREP                         R5
      254 GETTABLEKS                       R10 R4 K31 ["_columnWidths"]
      256 GETUPVAL                         R11 3
      257 SETTABLE                         R11 R10 R8
      258 FORGLOOP                         R5 2 ; [-5]
      260 GETTABLEKS                       R5 R4 K42 ["_connections"]
      262 GETTABLEKS                       R6 R1 K64 ["WindowFocused"]
      264 NEWCLOSURE                       R8 P0
      265 CAPTURE                          VAL R4
      266 NAMECALL                         R6 R6 K65 ["Connect"]
      268 CALL                             R6 2 1
      269 SETTABLEKS                       R6 R5 K66 ["GuiWindowFocused"]
      271 GETTABLEKS                       R5 R4 K42 ["_connections"]
      273 GETTABLEKS                       R6 R1 K67 ["WindowFocusReleased"]
      275 NEWCLOSURE                       R8 P1
      276 CAPTURE                          VAL R4
      277 NAMECALL                         R6 R6 K65 ["Connect"]
      279 CALL                             R6 2 1
      280 SETTABLEKS                       R6 R5 K68 ["GuiWindowFocusReleased"]
      282 RETURN                           R4 1

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
        3 NAMECALL                         R1 R0 K1 ["_unbindScroll"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K2 ["_connections"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
       46 LOADK                            R3 K10 [∞]
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
        6 LOADN                            R1 250
        7 RETURN                           R1 1

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
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_33:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETTABLEKS                       R2 R0 K0 ["_contentGrid"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        5 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R1 K2 ["X"]
        9 RETURN                           R1 1
       10 LOADN                            R1 0
       11 RETURN                           R1 1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContentScrollChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_58:
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

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSidebarScrollableChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_gridCellsPerRow"]
        2 RETURN                           R1 1

PROTO_66:
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
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R12 R12 K20 ["Flags"]
       78 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrFlexPaneSizing"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Src"]
       85 GETTABLEKS                       R13 R13 K20 ["Flags"]
       87 GETTABLEKS                       R13 R13 K22 ["getFFlagAmrEnableVersioning"]
       89 CALL                             R12 1 1
       90 LOADK                            R15 K23 ["LayoutController"]
       91 NAMECALL                         R13 R3 K24 ["extend"]
       93 CALL                             R13 2 1
       94 GETIMPORT                        R14 K27 [UDim.new]
       96 LOADN                            R15 0
       97 LOADN                            R16 150
       98 CALL                             R14 2 1
       99 DUPCLOSURE                       R15 K28 [PROTO_0]
      100 DUPCLOSURE                       R16 K29 [PROTO_3]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R16 R13 K26 ["new"]
      110 DUPCLOSURE                       R16 K30 [PROTO_4]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R13
      113 SETTABLEKS                       R16 R13 K31 ["mock"]
      115 DUPCLOSURE                       R16 K32 [PROTO_5]
      116 CAPTURE                          VAL R9
      117 SETTABLEKS                       R16 R13 K33 ["destroy"]
      119 DUPCLOSURE                       R16 K34 [PROTO_6]
      120 SETTABLEKS                       R16 R13 K35 ["getPluginGui"]
      122 DUPCLOSURE                       R16 K36 [PROTO_7]
      123 SETTABLEKS                       R16 R13 K37 ["isPluginGuiFocused"]
      125 DUPCLOSURE                       R16 K38 [PROTO_9]
      126 SETTABLEKS                       R16 R13 K39 ["setPluginFrame"]
      128 DUPCLOSURE                       R16 K40 [PROTO_10]
      129 SETTABLEKS                       R16 R13 K41 ["getPluginFrame"]
      131 DUPCLOSURE                       R16 K42 [PROTO_11]
      132 SETTABLEKS                       R16 R13 K43 ["getFolderLimit"]
      134 DUPCLOSURE                       R16 K44 [PROTO_12]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R11
      138 SETTABLEKS                       R16 R13 K45 ["_updateFolderLimit"]
      140 DUPCLOSURE                       R16 K46 [PROTO_13]
      141 SETTABLEKS                       R16 R13 K47 ["_normalizeColumnWidths"]
      143 DUPCLOSURE                       R16 K48 [PROTO_14]
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R16 R13 K49 ["populateSavedSettings"]
      148 DUPCLOSURE                       R16 K50 [PROTO_15]
      149 SETTABLEKS                       R16 R13 K51 ["getShowSidebar"]
      151 DUPCLOSURE                       R16 K52 [PROTO_16]
      152 SETTABLEKS                       R16 R13 K53 ["toggleSidebar"]
      154 DUPCLOSURE                       R16 K54 [PROTO_17]
      155 CAPTURE                          VAL R11
      156 SETTABLEKS                       R16 R13 K55 ["_setShowSidebar"]
      158 DUPCLOSURE                       R16 K56 [PROTO_18]
      159 SETTABLEKS                       R16 R13 K57 ["getIsCompact"]
      161 DUPCLOSURE                       R16 K58 [PROTO_19]
      162 SETTABLEKS                       R16 R13 K59 ["getPluginWidth"]
      164 DUPCLOSURE                       R16 K60 [PROTO_20]
      165 SETTABLEKS                       R16 R13 K61 ["getPluginHeight"]
      167 DUPCLOSURE                       R16 K62 [PROTO_21]
      168 CAPTURE                          VAL R11
      169 SETTABLEKS                       R16 R13 K63 ["_setPluginWidth"]
      171 DUPCLOSURE                       R16 K64 [PROTO_22]
      172 CAPTURE                          VAL R11
      173 SETTABLEKS                       R16 R13 K65 ["_setPluginHeight"]
      175 DUPCLOSURE                       R16 K66 [PROTO_23]
      176 SETTABLEKS                       R16 R13 K67 ["setAppSizes"]
      178 DUPCLOSURE                       R16 K68 [PROTO_24]
      179 SETTABLEKS                       R16 R13 K69 ["getAppSizes"]
      181 DUPCLOSURE                       R16 K70 [PROTO_25]
      182 CAPTURE                          VAL R11
      183 SETTABLEKS                       R16 R13 K71 ["getSidebarWidth"]
      185 DUPCLOSURE                       R16 K72 [PROTO_26]
      186 SETTABLEKS                       R16 R13 K73 ["getSidebarDesiredWidth"]
      188 DUPCLOSURE                       R16 K74 [PROTO_27]
      189 CAPTURE                          VAL R11
      190 SETTABLEKS                       R16 R13 K75 ["adjustSidebarWidth"]
      192 DUPCLOSURE                       R16 K76 [PROTO_28]
      193 CAPTURE                          VAL R11
      194 SETTABLEKS                       R16 R13 K77 ["setSidebarWidth"]
      196 DUPCLOSURE                       R16 K78 [PROTO_29]
      197 SETTABLEKS                       R16 R13 K79 ["getSidebarSizing"]
      199 DUPCLOSURE                       R16 K80 [PROTO_30]
      200 SETTABLEKS                       R16 R13 K81 ["_getBrowserMinWidth"]
      202 DUPCLOSURE                       R16 K82 [PROTO_31]
      203 SETTABLEKS                       R16 R13 K83 ["_getBrowserWidth"]
      205 DUPCLOSURE                       R16 K84 [PROTO_32]
      206 SETTABLEKS                       R16 R13 K85 ["getMainViewWidth"]
      208 DUPCLOSURE                       R16 K86 [PROTO_33]
      209 SETTABLEKS                       R16 R13 K87 ["getAppMinSizes"]
      211 DUPCLOSURE                       R16 K88 [PROTO_34]
      212 SETTABLEKS                       R16 R13 K89 ["setBrowserLayout"]
      214 DUPCLOSURE                       R16 K90 [PROTO_35]
      215 SETTABLEKS                       R16 R13 K91 ["getBrowserLayout"]
      217 DUPCLOSURE                       R16 K92 [PROTO_36]
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R7
      220 SETTABLEKS                       R16 R13 K93 ["getBrowserLayoutThumbnailSize"]
      222 DUPCLOSURE                       R16 K94 [PROTO_37]
      223 CAPTURE                          VAL R4
      224 SETTABLEKS                       R16 R13 K95 ["getContentFrame"]
      226 DUPCLOSURE                       R16 K96 [PROTO_38]
      227 SETTABLEKS                       R16 R13 K97 ["setColumnWidths"]
      229 DUPCLOSURE                       R16 K98 [PROTO_39]
      230 SETTABLEKS                       R16 R13 K99 ["getColumnWidths"]
      232 DUPCLOSURE                       R16 K100 [PROTO_40]
      233 SETTABLEKS                       R16 R13 K101 ["_removeColumnWidth"]
      235 DUPCLOSURE                       R16 K102 [PROTO_41]
      236 CAPTURE                          VAL R14
      237 SETTABLEKS                       R16 R13 K103 ["_addColumnWidth"]
      239 DUPCLOSURE                       R16 K104 [PROTO_42]
      240 SETTABLEKS                       R16 R13 K105 ["setColumns"]
      242 DUPCLOSURE                       R16 K106 [PROTO_43]
      243 SETTABLEKS                       R16 R13 K107 ["getColumns"]
      245 DUPCLOSURE                       R16 K108 [PROTO_45]
      246 CAPTURE                          VAL R5
      247 SETTABLEKS                       R16 R13 K109 ["getColumnIndex"]
      249 DUPCLOSURE                       R16 K110 [PROTO_46]
      250 SETTABLEKS                       R16 R13 K111 ["toggleColumn"]
      252 DUPCLOSURE                       R16 K112 [PROTO_48]
      253 SETTABLEKS                       R16 R13 K113 ["_bindScroll"]
      255 DUPCLOSURE                       R16 K114 [PROTO_49]
      256 SETTABLEKS                       R16 R13 K115 ["_unbindScroll"]
      258 DUPCLOSURE                       R16 K116 [PROTO_50]
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R7
      261 SETTABLEKS                       R16 R13 K117 ["scrollToItem"]
      263 DUPCLOSURE                       R16 K118 [PROTO_51]
      264 CAPTURE                          VAL R7
      265 SETTABLEKS                       R16 R13 K119 ["scrollToSidebarItem"]
      267 DUPCLOSURE                       R16 K120 [PROTO_52]
      268 SETTABLEKS                       R16 R13 K121 ["setContentList"]
      270 DUPCLOSURE                       R16 K122 [PROTO_53]
      271 SETTABLEKS                       R16 R13 K123 ["setListHeaderRow"]
      273 DUPCLOSURE                       R16 K124 [PROTO_54]
      274 CAPTURE                          VAL R7
      275 SETTABLEKS                       R16 R13 K125 ["_updateGridState"]
      277 DUPCLOSURE                       R16 K126 [PROTO_55]
      278 SETTABLEKS                       R16 R13 K127 ["getGridWidth"]
      280 DUPCLOSURE                       R16 K128 [PROTO_58]
      281 SETTABLEKS                       R16 R13 K129 ["setContentGrid"]
      283 DUPCLOSURE                       R16 K130 [PROTO_60]
      284 SETTABLEKS                       R16 R13 K131 ["_syncSidebarScroll"]
      286 DUPCLOSURE                       R16 K132 [PROTO_61]
      287 SETTABLEKS                       R16 R13 K133 ["isSidebarScrollable"]
      289 DUPCLOSURE                       R16 K134 [PROTO_63]
      290 SETTABLEKS                       R16 R13 K135 ["setSidebarScrollFrame"]
      292 DUPCLOSURE                       R16 K136 [PROTO_64]
      293 CAPTURE                          VAL R10
      294 SETTABLEKS                       R16 R13 K137 ["getSidebarHoveredCanvasY"]
      296 DUPCLOSURE                       R16 K138 [PROTO_65]
      297 SETTABLEKS                       R16 R13 K139 ["getGridCellsPerRow"]
      299 DUPCLOSURE                       R16 K140 [PROTO_66]
      300 CAPTURE                          VAL R7
      301 SETTABLEKS                       R16 R13 K141 ["getGridCellPadding"]
      303 RETURN                           R13 1
