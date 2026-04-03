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
        0 DUPTABLE                         R3 K31 [{"_isMock", "_contentList", "_contentGrid", "_sidebar", "_pluginGui", "_pluginGuiFocused", "_sidebarSize", "_browserSize", "_sidebarMinSize", "_browserMinSize", "_pluginWidth", "_pluginHeight", "_showSidebar", "_pluginFrame", "_isPluginFrameLoaded", "_browserLayout", "_gridWidth", "_gridCellsPerRow", "_columnWidths", "_columns", "_connections", "OnSidebarToggled", "OnPluginWidthChanged", "OnPluginHeightChanged", "OnIsCompactChanged", "OnAppSizesChanged", "OnBrowserLayoutChanged", "OnGridStateUpdated", "OnColumnWidthsChanged", "OnColumnsChanged", "OnPluginFrameSet"}]
        1 SETTABLEKS                       R2 R3 K0 ["_isMock"]
        3 LOADNIL                          R4
        4 SETTABLEKS                       R4 R3 K1 ["_contentList"]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R3 K2 ["_contentGrid"]
        9 LOADNIL                          R4
       10 SETTABLEKS                       R4 R3 K3 ["_sidebar"]
       12 SETTABLEKS                       R1 R3 K4 ["_pluginGui"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K5 ["_pluginGuiFocused"]
       17 GETIMPORT                        R4 K34 [UDim.new]
       19 LOADK                            R5 K35 [0.2]
       20 LOADN                            R6 0
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K6 ["_sidebarSize"]
       24 GETIMPORT                        R4 K34 [UDim.new]
       26 LOADK                            R5 K36 [0.8]
       27 LOADN                            R6 0
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K7 ["_browserSize"]
       31 GETIMPORT                        R4 K34 [UDim.new]
       33 LOADN                            R5 0
       34 LOADN                            R6 100
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K8 ["_sidebarMinSize"]
       38 GETIMPORT                        R4 K34 [UDim.new]
       40 LOADN                            R5 0
       41 LOADN                            R6 144
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K9 ["_browserMinSize"]
       45 LOADN                            R4 0
       46 SETTABLEKS                       R4 R3 K10 ["_pluginWidth"]
       48 LOADN                            R4 0
       49 SETTABLEKS                       R4 R3 K11 ["_pluginHeight"]
       51 LOADB                            R4 1
       52 SETTABLEKS                       R4 R3 K12 ["_showSidebar"]
       54 LOADNIL                          R4
       55 SETTABLEKS                       R4 R3 K13 ["_pluginFrame"]
       57 LOADB                            R4 0
       58 SETTABLEKS                       R4 R3 K14 ["_isPluginFrameLoaded"]
       60 DUPTABLE                         R4 K39 [{"GridSize", "ViewType"}]
       61 LOADN                            R5 100
       62 SETTABLEKS                       R5 R4 K37 ["GridSize"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K38 ["ViewType"]
       67 GETTABLEKS                       R5 R6 K40 ["List"]
       69 SETTABLEKS                       R5 R4 K38 ["ViewType"]
       71 SETTABLEKS                       R4 R3 K15 ["_browserLayout"]
       73 LOADN                            R4 0
       74 SETTABLEKS                       R4 R3 K16 ["_gridWidth"]
       76 LOADN                            R4 0
       77 SETTABLEKS                       R4 R3 K17 ["_gridCellsPerRow"]
       79 NEWTABLE                         R4 0 1
       81 GETUPVAL                         R5 1
       82 SETLIST                          R4 R5 1 [1]
       84 SETTABLEKS                       R4 R3 K18 ["_columnWidths"]
       86 NEWTABLE                         R4 0 5
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R6 R7 K41 ["AssetInfoField"]
       91 GETTABLEKS                       R5 R6 K42 ["DisplayName"]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R7 R8 K41 ["AssetInfoField"]
       96 GETTABLEKS                       R6 R7 K43 ["AssetId"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R8 R9 K41 ["AssetInfoField"]
      101 GETTABLEKS                       R7 R8 K44 ["AssetType"]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R9 R10 K41 ["AssetInfoField"]
      106 GETTABLEKS                       R8 R9 K45 ["Modified"]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R10 R11 K41 ["AssetInfoField"]
      111 GETTABLEKS                       R9 R10 K46 ["Creator"]
      113 SETLIST                          R4 R5 5 [1]
      115 SETTABLEKS                       R4 R3 K19 ["_columns"]
      117 NEWTABLE                         R4 0 0
      119 SETTABLEKS                       R4 R3 K20 ["_connections"]
      121 GETUPVAL                         R5 2
      122 GETTABLEKS                       R4 R5 K33 ["new"]
      124 CALL                             R4 0 1
      125 SETTABLEKS                       R4 R3 K21 ["OnSidebarToggled"]
      127 GETUPVAL                         R5 2
      128 GETTABLEKS                       R4 R5 K33 ["new"]
      130 CALL                             R4 0 1
      131 SETTABLEKS                       R4 R3 K22 ["OnPluginWidthChanged"]
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R4 R5 K33 ["new"]
      136 CALL                             R4 0 1
      137 SETTABLEKS                       R4 R3 K23 ["OnPluginHeightChanged"]
      139 GETUPVAL                         R5 2
      140 GETTABLEKS                       R4 R5 K33 ["new"]
      142 CALL                             R4 0 1
      143 SETTABLEKS                       R4 R3 K24 ["OnIsCompactChanged"]
      145 GETUPVAL                         R5 2
      146 GETTABLEKS                       R4 R5 K33 ["new"]
      148 CALL                             R4 0 1
      149 SETTABLEKS                       R4 R3 K25 ["OnAppSizesChanged"]
      151 GETUPVAL                         R5 2
      152 GETTABLEKS                       R4 R5 K33 ["new"]
      154 CALL                             R4 0 1
      155 SETTABLEKS                       R4 R3 K26 ["OnBrowserLayoutChanged"]
      157 GETUPVAL                         R5 2
      158 GETTABLEKS                       R4 R5 K33 ["new"]
      160 CALL                             R4 0 1
      161 SETTABLEKS                       R4 R3 K27 ["OnGridStateUpdated"]
      163 GETUPVAL                         R5 2
      164 GETTABLEKS                       R4 R5 K33 ["new"]
      166 CALL                             R4 0 1
      167 SETTABLEKS                       R4 R3 K28 ["OnColumnWidthsChanged"]
      169 GETUPVAL                         R5 2
      170 GETTABLEKS                       R4 R5 K33 ["new"]
      172 CALL                             R4 0 1
      173 SETTABLEKS                       R4 R3 K29 ["OnColumnsChanged"]
      175 GETUPVAL                         R5 2
      176 GETTABLEKS                       R4 R5 K33 ["new"]
      178 CALL                             R4 0 1
      179 SETTABLEKS                       R4 R3 K30 ["OnPluginFrameSet"]
      181 GETUPVAL                         R6 3
      182 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      184 MOVE                             R5 R3
      185 GETIMPORT                        R4 K48 [setmetatable]
      187 CALL                             R4 2 0
      188 GETTABLEKS                       R4 R3 K19 ["_columns"]
      190 LOADNIL                          R5
      191 LOADNIL                          R6
      192 FORGPREP                         R4
      193 GETTABLEKS                       R9 R3 K18 ["_columnWidths"]
      195 GETUPVAL                         R10 1
      196 SETTABLE                         R10 R9 R7
      197 FORGLOOP                         R4 2 ; [-5]
      199 GETUPVAL                         R4 4
      200 CALL                             R4 0 1
      201 JUMPIFNOT                        R4 ; [+22]
      202 GETTABLEKS                       R4 R3 K20 ["_connections"]
      204 GETTABLEKS                       R5 R1 K49 ["WindowFocused"]
      206 NEWCLOSURE                       R7 P0
      207 CAPTURE                          VAL R3
      208 NAMECALL                         R5 R5 K50 ["Connect"]
      210 CALL                             R5 2 1
      211 SETTABLEKS                       R5 R4 K51 ["GuiWindowFocused"]
      213 GETTABLEKS                       R4 R3 K20 ["_connections"]
      215 GETTABLEKS                       R5 R1 K52 ["WindowFocusReleased"]
      217 NEWCLOSURE                       R7 P1
      218 CAPTURE                          VAL R3
      219 NAMECALL                         R5 R5 K50 ["Connect"]
      221 CALL                             R5 2 1
      222 SETTABLEKS                       R5 R4 K53 ["GuiWindowFocusReleased"]
      224 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"WindowFocused", "WindowFocusReleased"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["WindowFocused"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["new"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K1 ["WindowFocusReleased"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["new"]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 LOADB                            R5 1
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnSidebarToggled"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnPluginWidthChanged"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnPluginHeightChanged"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnIsCompactChanged"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnRenamePlaceIdChanged"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["_pluginFrame"]
       18 NAMECALL                         R1 R0 K6 ["_unbindScroll"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R2 R0 K7 ["_connections"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K7 ["_connections"]
       28 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginGui"]
        2 RETURN                           R1 1

PROTO_6:
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
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 SETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+22]
        7 GETTABLEKS                       R2 R0 K1 ["_connections"]
        9 GETTABLEKS                       R3 R0 K0 ["_pluginFrame"]
       11 LOADK                            R5 K2 ["AbsoluteSize"]
       12 NAMECALL                         R3 R3 K3 ["GetPropertyChangedSignal"]
       14 CALL                             R3 2 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R3 R3 K4 ["Connect"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K5 ["PluginFrame"]
       22 GETTABLEKS                       R2 R0 K6 ["OnPluginFrameSet"]
       24 MOVE                             R4 R1
       25 NAMECALL                         R2 R2 K7 ["Fire"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R0 K1 ["_connections"]
       31 GETTABLEKS                       R4 R0 K0 ["_pluginFrame"]
       33 LOADK                            R6 K2 ["AbsoluteSize"]
       34 NAMECALL                         R4 R4 K3 ["GetPropertyChangedSignal"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R4 R4 K4 ["Connect"]
       41 CALL                             R4 2 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R2 K10 [table.insert]
       45 CALL                             R2 -1 0
       46 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R1 R2 K1 ["ViewType"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["ViewType"]
        7 GETTABLEKS                       R2 R3 K2 ["Grid"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+10]
       11 LOADN                            R2 1
       12 NAMECALL                         R3 R0 K3 ["getGridCellsPerRow"]
       14 CALL                             R3 1 -1
       15 FASTCALL                         MATH_MAX ; [+2]
       16 GETIMPORT                        R1 K6 [math.max]
       18 CALL                             R1 -1 1
       19 RETURN                           R1 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K7 ["SearchFoldersResultCountDefault"]
       23 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_showSidebar"]
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        5 GETTABLEKS                       R1 R0 K1 ["OnSidebarToggled"]
        7 GETTABLEKS                       R3 R0 K0 ["_showSidebar"]
        9 NAMECALL                         R1 R1 K2 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSidebarToggled"]
        4 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginHeight"]
        2 RETURN                           R1 1

PROTO_19:
        0 NAMECALL                         R2 R0 K0 ["getIsCompact"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R0 K1 ["_pluginWidth"]
        5 SETTABLEKS                       R1 R0 K1 ["_pluginWidth"]
        7 JUMPIFEQ                         R3 R1 ; [+7]
        9 GETTABLEKS                       R4 R0 K2 ["OnPluginWidthChanged"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R4 K3 ["Fire"]
       14 CALL                             R4 2 0
       15 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       17 CALL                             R4 1 1
       18 JUMPIFNOTEQ                      R2 R4 ; [+3]
       20 JUMPIFNOTEQKN                    R3 K4 [0] ; [+29]
       22 GETTABLEKS                       R4 R0 K5 ["OnIsCompactChanged"]
       24 NAMECALL                         R6 R0 K0 ["getIsCompact"]
       26 CALL                             R6 1 -1
       27 NAMECALL                         R4 R4 K3 ["Fire"]
       29 CALL                             R4 -1 0
       30 GETTABLEKS                       R4 R0 K6 ["_isPluginFrameLoaded"]
       32 JUMPIF                           R4 ; [+4]
       33 LOADB                            R4 1
       34 SETTABLEKS                       R4 R0 K6 ["_isPluginFrameLoaded"]
       36 RETURN                           R0 0
       37 NAMECALL                         R4 R0 K0 ["getIsCompact"]
       39 CALL                             R4 1 1
       40 JUMPIFNOT                        R4 ; [+5]
       41 LOADB                            R6 0
       42 NAMECALL                         R4 R0 K7 ["_setShowSidebar"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
       46 LOADB                            R6 1
       47 NAMECALL                         R4 R0 K7 ["_setShowSidebar"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 LENGTH                           R2 R1
        1 JUMPIFEQKN                       R2 K0 [2] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEN                        R2 R1 1
        5 SETTABLEKS                       R2 R0 K1 ["_sidebarSize"]
        7 GETTABLEN                        R2 R1 2
        8 SETTABLEKS                       R2 R0 K2 ["_browserSize"]
       10 GETTABLEKS                       R2 R0 K3 ["OnAppSizesChanged"]
       12 NEWTABLE                         R4 0 2
       14 GETTABLEKS                       R5 R0 K1 ["_sidebarSize"]
       16 GETTABLEKS                       R6 R0 K2 ["_browserSize"]
       18 SETLIST                          R4 R5 2 [1]
       20 NAMECALL                         R2 R2 K4 ["Fire"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_26:
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
       17 GETTABLEKS                       R1 R2 K3 ["AMR_LIST_THUMBNAIL_SIZE"]
       19 RETURN                           R1 1
       20 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       22 GETTABLEKS                       R3 R4 K4 ["GridSize"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K5 ["AMR_GRID_THUMBNAIL_SCALE"]
       27 MUL                              R2 R3 R4
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K6 ["AMR_GRID_THUMBNAIL_OFFSET"]
       31 SUB                              R1 R2 R3
       32 RETURN                           R1 1

PROTO_27:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_39:
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
       40 GETTABLEKS                       R7 R8 K12 ["AMR_CELLDATA_HEIGHT"]
       42 ADD                              R6 R7 R2
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K13 ["AMR_GRIDCELL_PADDING"]
       46 GETTABLEKS                       R8 R9 K14 ["Y"]
       48 GETTABLEKS                       R7 R8 K15 ["Offset"]
       50 ADD                              R5 R6 R7
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K16 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
       55 JUMPIF                           R4 ; [+1]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R7 R4 K17 ["CanvasPosition"]
       59 GETTABLEKS                       R6 R7 K18 ["X"]
       61 GETTABLEKS                       R8 R4 K17 ["CanvasPosition"]
       63 GETTABLEKS                       R7 R8 K14 ["Y"]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R10 R11 K13 ["AMR_GRIDCELL_PADDING"]
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
        4 GETTABLEKS                       R3 R4 K1 ["GridSize"]
        6 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        7 GETIMPORT                        R2 K4 [math.floor]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["GridSize"]
       12 GETTABLEKS                       R2 R0 K5 ["_contentGrid"]
       14 JUMPIFNOT                        R2 ; [+7]
       15 GETTABLEKS                       R3 R0 K5 ["_contentGrid"]
       17 GETTABLEKS                       R2 R3 K6 ["AbsoluteSize"]
       19 GETTABLEKS                       R1 R2 K7 ["X"]
       21 JUMP                             ; [+1]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K8 ["_gridWidth"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K9 ["AMR_GRIDCELL_PADDING"]
       28 GETTABLEKS                       R2 R3 K7 ["X"]
       30 GETTABLEKS                       R1 R2 K10 ["Offset"]
       32 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       34 GETTABLEKS                       R3 R4 K1 ["GridSize"]
       36 ADD                              R2 R3 R1
       37 GETTABLEKS                       R6 R0 K8 ["_gridWidth"]
       39 SUB                              R5 R6 R1
       40 DIV                              R4 R5 R2
       41 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       42 GETIMPORT                        R3 K4 [math.floor]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R0 K11 ["_gridCellsPerRow"]
       47 GETUPVAL                         R3 1
       48 CALL                             R3 0 1
       49 JUMPIFNOT                        R3 ; [+5]
       50 GETTABLEKS                       R3 R0 K12 ["OnGridStateUpdated"]
       52 NAMECALL                         R3 R3 K13 ["Fire"]
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["_gridWidth"]
        2 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateGridState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 SETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+31]
        5 GETTABLEKS                       R3 R0 K1 ["_connections"]
        7 GETTABLEKS                       R2 R3 K2 ["ContentGrid"]
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETTABLEKS                       R3 R0 K1 ["_connections"]
       12 GETTABLEKS                       R2 R3 K2 ["ContentGrid"]
       14 NAMECALL                         R2 R2 K3 ["Disconnect"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K1 ["_connections"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETTABLEKS                       R2 R0 K1 ["_connections"]
       25 LOADK                            R5 K4 ["AbsoluteSize"]
       26 NAMECALL                         R3 R1 K5 ["GetPropertyChangedSignal"]
       28 CALL                             R3 2 1
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R3 R3 K6 ["Connect"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K2 ["ContentGrid"]
       36 NAMECALL                         R2 R0 K7 ["_updateGridState"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R3 R0 K0 ["_contentGrid"]
        5 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R1 R2 K2 ["X"]
        9 GETTABLEKS                       R2 R0 K3 ["_gridWidth"]
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["_updateGridState"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K5 ["_gridCellsPerRow"]
       18 RETURN                           R1 1

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
       76 GETIMPORT                        R12 K25 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 150
       80 CALL                             R12 2 1
       81 DUPCLOSURE                       R13 K26 [PROTO_2]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 SETTABLEKS                       R13 R10 K24 ["new"]
       89 DUPCLOSURE                       R13 K27 [PROTO_3]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R13 R10 K28 ["mock"]
       94 DUPCLOSURE                       R13 K29 [PROTO_4]
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R13 R10 K30 ["destroy"]
       98 DUPCLOSURE                       R13 K31 [PROTO_5]
       99 SETTABLEKS                       R13 R10 K32 ["getPluginGui"]
      101 DUPCLOSURE                       R13 K33 [PROTO_8]
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R13 R10 K34 ["setPluginFrame"]
      105 DUPCLOSURE                       R13 K35 [PROTO_9]
      106 SETTABLEKS                       R13 R10 K36 ["getPluginFrame"]
      108 DUPCLOSURE                       R13 K37 [PROTO_10]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R13 R10 K38 ["getFolderLimit"]
      113 DUPCLOSURE                       R13 K39 [PROTO_11]
      114 SETTABLEKS                       R13 R10 K40 ["_normalizeColumnWidths"]
      116 DUPCLOSURE                       R13 K41 [PROTO_12]
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R13 R10 K42 ["populateSavedSettings"]
      120 DUPCLOSURE                       R13 K43 [PROTO_13]
      121 SETTABLEKS                       R13 R10 K44 ["getShowSidebar"]
      123 DUPCLOSURE                       R13 K45 [PROTO_14]
      124 SETTABLEKS                       R13 R10 K46 ["toggleSidebar"]
      126 DUPCLOSURE                       R13 K47 [PROTO_15]
      127 SETTABLEKS                       R13 R10 K48 ["_setShowSidebar"]
      129 DUPCLOSURE                       R13 K49 [PROTO_16]
      130 SETTABLEKS                       R13 R10 K50 ["getIsCompact"]
      132 DUPCLOSURE                       R13 K51 [PROTO_17]
      133 SETTABLEKS                       R13 R10 K52 ["getPluginWidth"]
      135 DUPCLOSURE                       R13 K53 [PROTO_18]
      136 SETTABLEKS                       R13 R10 K54 ["getPluginHeight"]
      138 DUPCLOSURE                       R13 K55 [PROTO_19]
      139 SETTABLEKS                       R13 R10 K56 ["_setPluginWidth"]
      141 DUPCLOSURE                       R13 K57 [PROTO_20]
      142 SETTABLEKS                       R13 R10 K58 ["_setPluginHeight"]
      144 DUPCLOSURE                       R13 K59 [PROTO_21]
      145 SETTABLEKS                       R13 R10 K60 ["setAppSizes"]
      147 DUPCLOSURE                       R13 K61 [PROTO_22]
      148 SETTABLEKS                       R13 R10 K62 ["getAppSizes"]
      150 DUPCLOSURE                       R13 K63 [PROTO_23]
      151 SETTABLEKS                       R13 R10 K64 ["getAppMinSizes"]
      153 DUPCLOSURE                       R13 K65 [PROTO_24]
      154 SETTABLEKS                       R13 R10 K66 ["setBrowserLayout"]
      156 DUPCLOSURE                       R13 K67 [PROTO_25]
      157 SETTABLEKS                       R13 R10 K68 ["getBrowserLayout"]
      159 DUPCLOSURE                       R13 K69 [PROTO_26]
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R7
      163 SETTABLEKS                       R13 R10 K70 ["getBrowserLayoutThumbnailSize"]
      165 DUPCLOSURE                       R13 K71 [PROTO_27]
      166 SETTABLEKS                       R13 R10 K72 ["setColumnWidths"]
      168 DUPCLOSURE                       R13 K73 [PROTO_28]
      169 SETTABLEKS                       R13 R10 K74 ["getColumnWidths"]
      171 DUPCLOSURE                       R13 K75 [PROTO_29]
      172 SETTABLEKS                       R13 R10 K76 ["_removeColumnWidth"]
      174 DUPCLOSURE                       R13 K77 [PROTO_30]
      175 CAPTURE                          VAL R12
      176 SETTABLEKS                       R13 R10 K78 ["_addColumnWidth"]
      178 DUPCLOSURE                       R13 K79 [PROTO_31]
      179 SETTABLEKS                       R13 R10 K80 ["setColumns"]
      181 DUPCLOSURE                       R13 K81 [PROTO_32]
      182 SETTABLEKS                       R13 R10 K82 ["getColumns"]
      184 DUPCLOSURE                       R13 K83 [PROTO_34]
      185 CAPTURE                          VAL R5
      186 SETTABLEKS                       R13 R10 K84 ["getColumnIndex"]
      188 DUPCLOSURE                       R13 K85 [PROTO_35]
      189 SETTABLEKS                       R13 R10 K86 ["toggleColumn"]
      191 DUPCLOSURE                       R13 K87 [PROTO_37]
      192 SETTABLEKS                       R13 R10 K88 ["_bindScroll"]
      194 DUPCLOSURE                       R13 K89 [PROTO_38]
      195 SETTABLEKS                       R13 R10 K90 ["_unbindScroll"]
      197 DUPCLOSURE                       R13 K91 [PROTO_39]
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R7
      200 SETTABLEKS                       R13 R10 K92 ["scrollToItem"]
      202 DUPCLOSURE                       R13 K93 [PROTO_40]
      203 SETTABLEKS                       R13 R10 K94 ["setContentList"]
      205 DUPCLOSURE                       R13 K95 [PROTO_41]
      206 SETTABLEKS                       R13 R10 K96 ["setListHeaderRow"]
      208 DUPCLOSURE                       R13 K97 [PROTO_42]
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R11
      211 SETTABLEKS                       R13 R10 K98 ["_updateGridState"]
      213 DUPCLOSURE                       R13 K99 [PROTO_43]
      214 SETTABLEKS                       R13 R10 K100 ["getGridWidth"]
      216 DUPCLOSURE                       R13 K101 [PROTO_45]
      217 CAPTURE                          VAL R11
      218 SETTABLEKS                       R13 R10 K102 ["setContentGrid"]
      220 DUPCLOSURE                       R13 K103 [PROTO_46]
      221 SETTABLEKS                       R13 R10 K104 ["getGridCellsPerRow"]
      223 RETURN                           R10 1
