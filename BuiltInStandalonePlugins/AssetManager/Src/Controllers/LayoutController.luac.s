PROTO_0:
        0 DUPTABLE                         R2 K26 [{"_isMock", "_contentList", "_contentGrid", "_sidebarSize", "_browserSize", "_sidebarMinSize", "_browserMinSize", "_pluginWidth", "_pluginHeight", "_showSidebar", "_pluginFrame", "_isPluginFrameLoaded", "_browserLayout", "_gridWidth", "_gridCellsPerRow", "_columnWidths", "_columns", "_connections", "OnSidebarToggled", "OnPluginWidthChanged", "OnPluginHeightChanged", "OnIsCompactChanged", "OnAppSizesChanged", "OnBrowserLayoutChanged", "OnColumnWidthsChanged", "OnColumnsChanged"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 LOADNIL                          R3
        4 SETTABLEKS                       R3 R2 K1 ["_contentList"]
        6 LOADNIL                          R3
        7 SETTABLEKS                       R3 R2 K2 ["_contentGrid"]
        9 GETIMPORT                        R3 K29 [UDim.new]
       11 LOADK                            R4 K30 [0.2]
       12 LOADN                            R5 0
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K3 ["_sidebarSize"]
       16 GETIMPORT                        R3 K29 [UDim.new]
       18 LOADK                            R4 K31 [0.8]
       19 LOADN                            R5 0
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K4 ["_browserSize"]
       23 GETIMPORT                        R3 K29 [UDim.new]
       25 LOADN                            R4 0
       26 LOADN                            R5 100
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K5 ["_sidebarMinSize"]
       30 GETIMPORT                        R3 K29 [UDim.new]
       32 LOADN                            R4 0
       33 LOADN                            R5 144
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K6 ["_browserMinSize"]
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R2 K7 ["_pluginWidth"]
       40 LOADN                            R3 0
       41 SETTABLEKS                       R3 R2 K8 ["_pluginHeight"]
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R2 K9 ["_showSidebar"]
       46 LOADNIL                          R3
       47 SETTABLEKS                       R3 R2 K10 ["_pluginFrame"]
       49 LOADB                            R3 0
       50 SETTABLEKS                       R3 R2 K11 ["_isPluginFrameLoaded"]
       52 DUPTABLE                         R3 K34 [{"GridSize", "ViewType"}]
       53 LOADN                            R4 100
       54 SETTABLEKS                       R4 R3 K32 ["GridSize"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K33 ["ViewType"]
       59 GETTABLEKS                       R4 R5 K35 ["List"]
       61 SETTABLEKS                       R4 R3 K33 ["ViewType"]
       63 SETTABLEKS                       R3 R2 K12 ["_browserLayout"]
       65 LOADN                            R3 0
       66 SETTABLEKS                       R3 R2 K13 ["_gridWidth"]
       68 LOADN                            R3 0
       69 SETTABLEKS                       R3 R2 K14 ["_gridCellsPerRow"]
       71 NEWTABLE                         R3 0 1
       73 GETUPVAL                         R4 1
       74 SETLIST                          R3 R4 1 [1]
       76 SETTABLEKS                       R3 R2 K15 ["_columnWidths"]
       78 NEWTABLE                         R3 0 5
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R5 R6 K36 ["AssetInfoField"]
       83 GETTABLEKS                       R4 R5 K37 ["DisplayName"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R6 R7 K36 ["AssetInfoField"]
       88 GETTABLEKS                       R5 R6 K38 ["AssetId"]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R7 R8 K36 ["AssetInfoField"]
       93 GETTABLEKS                       R6 R7 K39 ["AssetType"]
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R8 R9 K36 ["AssetInfoField"]
       98 GETTABLEKS                       R7 R8 K40 ["Modified"]
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R9 R10 K36 ["AssetInfoField"]
      103 GETTABLEKS                       R8 R9 K41 ["Creator"]
      105 SETLIST                          R3 R4 5 [1]
      107 SETTABLEKS                       R3 R2 K16 ["_columns"]
      109 NEWTABLE                         R3 0 0
      111 SETTABLEKS                       R3 R2 K17 ["_connections"]
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R3 R4 K28 ["new"]
      116 CALL                             R3 0 1
      117 SETTABLEKS                       R3 R2 K18 ["OnSidebarToggled"]
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R3 R4 K28 ["new"]
      122 CALL                             R3 0 1
      123 SETTABLEKS                       R3 R2 K19 ["OnPluginWidthChanged"]
      125 GETUPVAL                         R4 2
      126 GETTABLEKS                       R3 R4 K28 ["new"]
      128 CALL                             R3 0 1
      129 SETTABLEKS                       R3 R2 K20 ["OnPluginHeightChanged"]
      131 GETUPVAL                         R4 2
      132 GETTABLEKS                       R3 R4 K28 ["new"]
      134 CALL                             R3 0 1
      135 SETTABLEKS                       R3 R2 K21 ["OnIsCompactChanged"]
      137 GETUPVAL                         R4 2
      138 GETTABLEKS                       R3 R4 K28 ["new"]
      140 CALL                             R3 0 1
      141 SETTABLEKS                       R3 R2 K22 ["OnAppSizesChanged"]
      143 GETUPVAL                         R4 2
      144 GETTABLEKS                       R3 R4 K28 ["new"]
      146 CALL                             R3 0 1
      147 SETTABLEKS                       R3 R2 K23 ["OnBrowserLayoutChanged"]
      149 GETUPVAL                         R4 2
      150 GETTABLEKS                       R3 R4 K28 ["new"]
      152 CALL                             R3 0 1
      153 SETTABLEKS                       R3 R2 K24 ["OnColumnWidthsChanged"]
      155 GETUPVAL                         R4 2
      156 GETTABLEKS                       R3 R4 K28 ["new"]
      158 CALL                             R3 0 1
      159 SETTABLEKS                       R3 R2 K25 ["OnColumnsChanged"]
      161 GETUPVAL                         R5 3
      162 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      164 MOVE                             R4 R2
      165 GETIMPORT                        R3 K43 [setmetatable]
      167 CALL                             R3 2 0
      168 GETTABLEKS                       R3 R2 K16 ["_columns"]
      170 LOADNIL                          R4
      171 LOADNIL                          R5
      172 FORGPREP                         R3
      173 GETTABLEKS                       R8 R2 K15 ["_columnWidths"]
      175 GETUPVAL                         R9 1
      176 SETTABLE                         R9 R8 R6
      177 FORGLOOP                         R3 2 ; [-5]
      179 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnSidebarToggled"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnPluginWidthChanged"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnPluginHeightChanged"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnIsCompactChanged"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnConfirmRemovePlaceChanged"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnRenamePlaceIdChanged"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["_pluginFrame"]
       21 NAMECALL                         R1 R0 K7 ["_unbindScroll"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R2 R0 K8 ["_connections"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K8 ["_connections"]
       31 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 SETTABLEKS                       R1 R0 K0 ["_pluginFrame"]
        4 GETTABLEKS                       R3 R0 K1 ["_connections"]
        6 GETTABLEKS                       R4 R0 K0 ["_pluginFrame"]
        8 LOADK                            R6 K2 ["AbsoluteSize"]
        9 NAMECALL                         R4 R4 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R4 2 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R4 R4 K4 ["Connect"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K7 [table.insert]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_showSidebar"]
        2 NOT                              R1 R2
        3 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        5 GETTABLEKS                       R1 R0 K1 ["OnSidebarToggled"]
        7 GETTABLEKS                       R3 R0 K0 ["_showSidebar"]
        9 NAMECALL                         R1 R1 K2 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_showSidebar"]
        2 GETTABLEKS                       R2 R0 K1 ["OnSidebarToggled"]
        4 GETTABLEKS                       R4 R0 K0 ["_showSidebar"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginWidth"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginHeight"]
        2 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_17:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R2 R0 K0 ["_sidebarMinSize"]
        4 GETTABLEKS                       R3 R0 K1 ["_browserMinSize"]
        6 SETLIST                          R1 R2 2 [1]
        8 RETURN                           R1 1

PROTO_18:
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

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_browserLayout"]
        2 RETURN                           R1 1

PROTO_20:
        0 SETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnWidthsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columnWidths"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_columnWidths"]
        2 RETURN                           R1 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 SETTABLEKS                       R1 R0 K0 ["_columns"]
        2 GETTABLEKS                       R2 R0 K1 ["OnColumnsChanged"]
        4 GETTABLEKS                       R4 R0 K0 ["_columns"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_columns"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["_columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_scrollerConnection"]
       11 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R6 R0 K0 ["_browserLayout"]
        2 GETTABLEKS                       R5 R6 K1 ["GridSize"]
        4 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        5 GETIMPORT                        R4 K4 [math.floor]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R6 R0 K0 ["_browserLayout"]
       10 GETTABLEKS                       R5 R6 K1 ["GridSize"]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL1                        ASSERT R3 ; [+2]
       17 GETIMPORT                        R2 K6 [assert]
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       22 GETTABLEKS                       R3 R4 K7 ["ViewType"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K7 ["ViewType"]
       27 GETTABLEKS                       R4 R5 K8 ["Grid"]
       29 JUMPIFEQ                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETTABLEKS                       R3 R0 K9 ["_contentGrid"]
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R3 R0 K10 ["_contentList"]
       39 JUMPIFNOT                        R2 ; [+17]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K11 ["AMR_CELLDATA_HEIGHT"]
       43 GETTABLEKS                       R8 R0 K0 ["_browserLayout"]
       45 GETTABLEKS                       R7 R8 K1 ["GridSize"]
       47 ADD                              R5 R6 R7
       48 NAMECALL                         R8 R0 K12 ["getGridPadding"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R7 R8 K13 ["Y"]
       53 GETTABLEKS                       R6 R7 K14 ["Offset"]
       55 ADD                              R4 R5 R6
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K15 ["AMR_ITEMROW_DEFAULT_HEIGHT"]
       60 JUMPIF                           R3 ; [+1]
       61 RETURN                           R0 0
       62 GETTABLEKS                       R6 R3 K16 ["CanvasPosition"]
       64 GETTABLEKS                       R5 R6 K17 ["X"]
       66 GETTABLEKS                       R7 R3 K16 ["CanvasPosition"]
       68 GETTABLEKS                       R6 R7 K13 ["Y"]
       70 JUMPIFNOT                        R2 ; [+8]
       71 NAMECALL                         R9 R0 K12 ["getGridPadding"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R8 R9 K13 ["Y"]
       76 GETTABLEKS                       R7 R8 K14 ["Offset"]
       78 JUMP                             ; [+1]
       79 LOADN                            R7 0
       80 GETTABLEKS                       R10 R3 K18 ["AbsoluteSize"]
       82 GETTABLEKS                       R9 R10 K13 ["Y"]
       84 SUB                              R8 R9 R7
       85 DIV                              R10 R6 R4
       86 FASTCALL1                        MATH_CEIL R10 ; [+2]
       87 GETIMPORT                        R9 K20 [math.ceil]
       89 CALL                             R9 1 1
       90 ADD                              R12 R6 R8
       91 DIV                              R11 R12 R4
       92 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       93 GETIMPORT                        R10 K4 [math.floor]
       95 CALL                             R10 1 1
       96 JUMPIFNOT                        R2 ; [+11]
       97 SUBK                             R13 R1 K21 [1]
       98 NAMECALL                         R14 R0 K22 ["getGridCellsPerRow"]
      100 CALL                             R14 1 1
      101 DIV                              R12 R13 R14
      102 FASTCALL1                        MATH_FLOOR R12 ; [+2]
      103 GETIMPORT                        R11 K4 [math.floor]
      105 CALL                             R11 1 1
      106 ADDK                             R1 R11 K21 [1]
      107 JUMP                             ; [0]
      108 JUMPIFNOTLE                      R1 R9 ; [+11]
      110 GETIMPORT                        R11 K25 [Vector2.new]
      112 MOVE                             R12 R5
      113 SUBK                             R15 R1 K21 [1]
      114 MUL                              R14 R15 R4
      115 ADD                              R13 R7 R14
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R3 K16 ["CanvasPosition"]
      119 RETURN                           R0 0
      120 JUMPIFNOTLT                      R10 R1 ; [+16]
      122 MUL                              R12 R1 R4
      123 ADD                              R11 R7 R12
      124 GETTABLEKS                       R14 R3 K18 ["AbsoluteSize"]
      126 GETTABLEKS                       R13 R14 K13 ["Y"]
      128 ADD                              R12 R6 R13
      129 GETIMPORT                        R13 K25 [Vector2.new]
      131 MOVE                             R14 R5
      132 SUB                              R16 R11 R12
      133 ADD                              R15 R6 R16
      134 CALL                             R13 2 1
      135 SETTABLEKS                       R13 R3 K16 ["CanvasPosition"]
      137 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K7 ["X"]
       28 GETTABLEKS                       R1 R2 K9 ["Offset"]
       30 GETTABLEKS                       R4 R0 K0 ["_browserLayout"]
       32 GETTABLEKS                       R3 R4 K1 ["GridSize"]
       34 ADD                              R2 R3 R1
       35 GETTABLEKS                       R6 R0 K8 ["_gridWidth"]
       37 SUB                              R5 R6 R1
       38 DIV                              R4 R5 R2
       39 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       40 GETIMPORT                        R3 K4 [math.floor]
       42 CALL                             R3 1 1
       43 SETTABLEKS                       R3 R0 K10 ["_gridCellsPerRow"]
       45 RETURN                           R0 0

PROTO_36:
        0 SETTABLEKS                       R1 R0 K0 ["_contentGrid"]
        2 NAMECALL                         R2 R0 K1 ["_updateGridState"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["_contentGrid"]
        2 GETTABLEKS                       R2 R3 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R2 K2 ["X"]
        6 GETTABLEKS                       R2 R0 K3 ["_gridWidth"]
        8 JUMPIFEQ                         R1 R2 ; [+4]
       10 NAMECALL                         R1 R0 K4 ["_updateGridState"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K5 ["_gridCellsPerRow"]
       15 RETURN                           R1 1

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
       38 GETTABLEKS                       R7 R8 K14 ["StyleConstants"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R8 R1 K15 ["Util"]
       43 GETTABLEKS                       R7 R8 K16 ["Signal"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K10 ["Src"]
       49 GETTABLEKS                       R10 R11 K15 ["Util"]
       51 GETTABLEKS                       R9 R10 K17 ["cleanConnections"]
       53 CALL                             R8 1 1
       54 LOADK                            R11 K18 ["LayoutController"]
       55 NAMECALL                         R9 R3 K19 ["extend"]
       57 CALL                             R9 2 1
       58 GETIMPORT                        R10 K22 [UDim.new]
       60 LOADN                            R11 0
       61 LOADN                            R12 150
       62 CALL                             R10 2 1
       63 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       65 LOADN                            R12 10
       66 LOADN                            R13 10
       67 CALL                             R11 2 1
       68 DUPCLOSURE                       R12 K26 [PROTO_0]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R12 R9 K21 ["new"]
       75 DUPCLOSURE                       R12 K27 [PROTO_1]
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R12 R9 K28 ["mock"]
       79 DUPCLOSURE                       R12 K29 [PROTO_2]
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R12 R9 K30 ["destroy"]
       83 DUPCLOSURE                       R12 K31 [PROTO_4]
       84 SETTABLEKS                       R12 R9 K32 ["setPluginFrame"]
       86 DUPCLOSURE                       R12 K33 [PROTO_5]
       87 SETTABLEKS                       R12 R9 K34 ["_normalizeColumnWidths"]
       89 DUPCLOSURE                       R12 K35 [PROTO_6]
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R12 R9 K36 ["populateSavedSettings"]
       93 DUPCLOSURE                       R12 K37 [PROTO_7]
       94 SETTABLEKS                       R12 R9 K38 ["getShowSidebar"]
       96 DUPCLOSURE                       R12 K39 [PROTO_8]
       97 SETTABLEKS                       R12 R9 K40 ["toggleSidebar"]
       99 DUPCLOSURE                       R12 K41 [PROTO_9]
      100 SETTABLEKS                       R12 R9 K42 ["_setShowSidebar"]
      102 DUPCLOSURE                       R12 K43 [PROTO_10]
      103 SETTABLEKS                       R12 R9 K44 ["getIsCompact"]
      105 DUPCLOSURE                       R12 K45 [PROTO_11]
      106 SETTABLEKS                       R12 R9 K46 ["getPluginWidth"]
      108 DUPCLOSURE                       R12 K47 [PROTO_12]
      109 SETTABLEKS                       R12 R9 K48 ["getPluginHeight"]
      111 DUPCLOSURE                       R12 K49 [PROTO_13]
      112 SETTABLEKS                       R12 R9 K50 ["_setPluginWidth"]
      114 DUPCLOSURE                       R12 K51 [PROTO_14]
      115 SETTABLEKS                       R12 R9 K52 ["_setPluginHeight"]
      117 DUPCLOSURE                       R12 K53 [PROTO_15]
      118 SETTABLEKS                       R12 R9 K54 ["setAppSizes"]
      120 DUPCLOSURE                       R12 K55 [PROTO_16]
      121 SETTABLEKS                       R12 R9 K56 ["getAppSizes"]
      123 DUPCLOSURE                       R12 K57 [PROTO_17]
      124 SETTABLEKS                       R12 R9 K58 ["getAppMinSizes"]
      126 DUPCLOSURE                       R12 K59 [PROTO_18]
      127 SETTABLEKS                       R12 R9 K60 ["setBrowserLayout"]
      129 DUPCLOSURE                       R12 K61 [PROTO_19]
      130 SETTABLEKS                       R12 R9 K62 ["getBrowserLayout"]
      132 DUPCLOSURE                       R12 K63 [PROTO_20]
      133 SETTABLEKS                       R12 R9 K64 ["setColumnWidths"]
      135 DUPCLOSURE                       R12 K65 [PROTO_21]
      136 SETTABLEKS                       R12 R9 K66 ["getColumnWidths"]
      138 DUPCLOSURE                       R12 K67 [PROTO_22]
      139 SETTABLEKS                       R12 R9 K68 ["_removeColumnWidth"]
      141 DUPCLOSURE                       R12 K69 [PROTO_23]
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R12 R9 K70 ["_addColumnWidth"]
      145 DUPCLOSURE                       R12 K71 [PROTO_24]
      146 SETTABLEKS                       R12 R9 K72 ["setColumns"]
      148 DUPCLOSURE                       R12 K73 [PROTO_25]
      149 SETTABLEKS                       R12 R9 K74 ["getColumns"]
      151 DUPCLOSURE                       R12 K75 [PROTO_27]
      152 CAPTURE                          VAL R5
      153 SETTABLEKS                       R12 R9 K76 ["getColumnIndex"]
      155 DUPCLOSURE                       R12 K77 [PROTO_28]
      156 SETTABLEKS                       R12 R9 K78 ["toggleColumn"]
      158 DUPCLOSURE                       R12 K79 [PROTO_30]
      159 SETTABLEKS                       R12 R9 K80 ["_bindScroll"]
      161 DUPCLOSURE                       R12 K81 [PROTO_31]
      162 SETTABLEKS                       R12 R9 K82 ["_unbindScroll"]
      164 DUPCLOSURE                       R12 K83 [PROTO_32]
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R6
      167 SETTABLEKS                       R12 R9 K84 ["scrollToItem"]
      169 DUPCLOSURE                       R12 K85 [PROTO_33]
      170 SETTABLEKS                       R12 R9 K86 ["setContentList"]
      172 DUPCLOSURE                       R12 K87 [PROTO_34]
      173 SETTABLEKS                       R12 R9 K88 ["setListHeaderRow"]
      175 DUPCLOSURE                       R12 K89 [PROTO_35]
      176 CAPTURE                          VAL R11
      177 SETTABLEKS                       R12 R9 K90 ["_updateGridState"]
      179 DUPCLOSURE                       R12 K91 [PROTO_36]
      180 SETTABLEKS                       R12 R9 K92 ["setContentGrid"]
      182 DUPCLOSURE                       R12 K93 [PROTO_37]
      183 CAPTURE                          VAL R11
      184 SETTABLEKS                       R12 R9 K94 ["getGridPadding"]
      186 DUPCLOSURE                       R12 K95 [PROTO_38]
      187 SETTABLEKS                       R12 R9 K96 ["getGridCellsPerRow"]
      189 RETURN                           R9 1
