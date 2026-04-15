PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleBrowserArrowInput"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Drag entered Asset Manager"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["_dragging"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["OnDrag"]
       10 NAMECALL                         R1 R1 K3 ["Fire"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Drag left Asset Manager"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["_dragging"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_dragging"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["Drag dropped on Asset Manager but did not come from Asset Manager"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["_pressedKeys"]
       11 GETIMPORT                        R2 K6 [Enum.KeyCode.MouseLeftButton]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R1 R2
       15 GETUPVAL                         R1 0
       16 GETIMPORT                        R2 K9 [Vector2.new]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K10 ["_lastClickMousePosition"]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K0 ["_dragging"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K11 ["OnDrop"]
       28 GETUPVAL                         R3 0
       29 NAMECALL                         R3 R3 K12 ["_getMousePosition"]
       31 CALL                             R3 1 -1
       32 NAMECALL                         R1 R1 K13 ["Fire"]
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_widgetRegistered"]
        3 JUMPIF                           R1 ; [+8]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["Widget not registered, registering now..."]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["_registerWidgetAsync"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K26 [{"_isMock", "_pluginController", "_layoutController", "_itemsController", "_searchController", "_explorerController", "_pressedKeys", "_lastPressed", "_keyHoldDetector", "_lastClickMousePosition", "_lastZone", "_dragging", "_dragInfo", "_mouseTrackerInstance", "_doubleClickDetector", "_doubleClickQueued", "_resolvingDoubleClick", "isDoubleClick", "clickDelay", "_connections", "_threads", "_widgetRegistered", "OnDrag", "OnDrop", "OnDragMove", "OnEnterViewport"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K27 ["PluginController"]
        5 SETTABLEKS                       R3 R2 K1 ["_pluginController"]
        7 GETTABLEKS                       R3 R0 K28 ["LayoutController"]
        9 SETTABLEKS                       R3 R2 K2 ["_layoutController"]
       11 GETTABLEKS                       R3 R0 K29 ["ItemsController"]
       13 SETTABLEKS                       R3 R2 K3 ["_itemsController"]
       15 GETTABLEKS                       R3 R0 K30 ["SearchController"]
       17 SETTABLEKS                       R3 R2 K4 ["_searchController"]
       19 GETTABLEKS                       R3 R0 K31 ["ExplorerController"]
       21 SETTABLEKS                       R3 R2 K5 ["_explorerController"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K6 ["_pressedKeys"]
       27 GETIMPORT                        R3 K35 [Enum.KeyCode.Unknown]
       29 SETTABLEKS                       R3 R2 K7 ["_lastPressed"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K36 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
       37 GETIMPORT                        R3 K38 [Vector2.new]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K9 ["_lastClickMousePosition"]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K10 ["_lastZone"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K11 ["_dragging"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K12 ["_dragInfo"]
       51 LOADNIL                          R3
       52 SETTABLEKS                       R3 R2 K13 ["_mouseTrackerInstance"]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R3 R4 K36 ["new"]
       57 CALL                             R3 0 1
       58 SETTABLEKS                       R3 R2 K14 ["_doubleClickDetector"]
       60 LOADB                            R3 0
       61 SETTABLEKS                       R3 R2 K15 ["_doubleClickQueued"]
       63 LOADB                            R3 0
       64 SETTABLEKS                       R3 R2 K16 ["_resolvingDoubleClick"]
       66 LOADB                            R3 0
       67 SETTABLEKS                       R3 R2 K17 ["isDoubleClick"]
       69 LOADK                            R3 K39 [0.2]
       70 SETTABLEKS                       R3 R2 K18 ["clickDelay"]
       72 NEWTABLE                         R3 0 0
       74 SETTABLEKS                       R3 R2 K19 ["_connections"]
       76 NEWTABLE                         R3 0 0
       78 SETTABLEKS                       R3 R2 K20 ["_threads"]
       80 LOADB                            R3 0
       81 SETTABLEKS                       R3 R2 K21 ["_widgetRegistered"]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R3 R4 K36 ["new"]
       86 CALL                             R3 0 1
       87 SETTABLEKS                       R3 R2 K22 ["OnDrag"]
       89 GETUPVAL                         R4 2
       90 GETTABLEKS                       R3 R4 K36 ["new"]
       92 CALL                             R3 0 1
       93 SETTABLEKS                       R3 R2 K23 ["OnDrop"]
       95 GETUPVAL                         R4 2
       96 GETTABLEKS                       R3 R4 K36 ["new"]
       98 CALL                             R3 0 1
       99 SETTABLEKS                       R3 R2 K24 ["OnDragMove"]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R3 R4 K36 ["new"]
      104 CALL                             R3 0 1
      105 SETTABLEKS                       R3 R2 K25 ["OnEnterViewport"]
      107 GETUPVAL                         R5 3
      108 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      110 MOVE                             R4 R2
      111 GETIMPORT                        R3 K41 [setmetatable]
      113 CALL                             R3 2 0
      114 GETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
      116 NEWCLOSURE                       R5 P0
      117 CAPTURE                          VAL R2
      118 NAMECALL                         R3 R3 K42 ["setCallback"]
      120 CALL                             R3 2 0
      121 GETUPVAL                         R3 4
      122 CALL                             R3 0 1
      123 JUMPIFNOT                        R3 ; [+66]
      124 GETTABLEKS                       R3 R2 K2 ["_layoutController"]
      126 NAMECALL                         R3 R3 K43 ["getPluginGui"]
      128 CALL                             R3 1 1
      129 GETTABLEKS                       R5 R2 K19 ["_connections"]
      131 GETTABLEKS                       R6 R3 K44 ["PluginDragEntered"]
      133 NEWCLOSURE                       R8 P1
      134 CAPTURE                          UPVAL U5
      135 CAPTURE                          VAL R2
      136 NAMECALL                         R6 R6 K45 ["Connect"]
      138 CALL                             R6 2 -1
      139 FASTCALL                         TABLE_INSERT ; [+2]
      140 GETIMPORT                        R4 K48 [table.insert]
      142 CALL                             R4 -1 0
      143 GETTABLEKS                       R5 R2 K19 ["_connections"]
      145 GETTABLEKS                       R6 R3 K49 ["PluginDragLeft"]
      147 NEWCLOSURE                       R8 P2
      148 CAPTURE                          UPVAL U5
      149 CAPTURE                          VAL R2
      150 NAMECALL                         R6 R6 K45 ["Connect"]
      152 CALL                             R6 2 -1
      153 FASTCALL                         TABLE_INSERT ; [+2]
      154 GETIMPORT                        R4 K48 [table.insert]
      156 CALL                             R4 -1 0
      157 GETTABLEKS                       R5 R2 K19 ["_connections"]
      159 GETTABLEKS                       R6 R3 K50 ["PluginDragDropped"]
      161 NEWCLOSURE                       R8 P3
      162 CAPTURE                          VAL R2
      163 CAPTURE                          UPVAL U5
      164 NAMECALL                         R6 R6 K45 ["Connect"]
      166 CALL                             R6 2 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R4 K48 [table.insert]
      170 CALL                             R4 -1 0
      171 GETTABLEKS                       R5 R2 K19 ["_connections"]
      173 GETTABLEKS                       R7 R2 K2 ["_layoutController"]
      175 GETTABLEKS                       R6 R7 K51 ["OnPluginFrameSet"]
      177 NEWCLOSURE                       R8 P4
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U5
      180 NAMECALL                         R6 R6 K45 ["Connect"]
      182 CALL                             R6 2 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R4 K48 [table.insert]
      186 CALL                             R4 -1 0
      187 NAMECALL                         R4 R2 K52 ["_registerMouseTrackerAsync"]
      189 CALL                             R4 1 0
      190 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnDrag"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnDrop"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnDragMove"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnEnterViewport"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["_pressedKeys"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["_lastClickMousePosition"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["_lastZone"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["_doubleClickDetector"]
       24 GETTABLEKS                       R1 R0 K8 ["_keyHoldDetector"]
       26 NAMECALL                         R1 R1 K9 ["destroy"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_keyHoldDetector"]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R2 R0 K10 ["_connections"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K10 ["_connections"]
       39 GETTABLEKS                       R1 R0 K11 ["_threads"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 GETIMPORT                        R6 K14 [task.cancel]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 0
       48 FORGLOOP                         R1 2 ; [-5]
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K11 ["_threads"]
       53 GETTABLEKS                       R1 R0 K15 ["_mouseTrackerInstance"]
       55 JUMPIFEQKNIL                     R1 ; [+6]
       57 GETTABLEKS                       R1 R0 K15 ["_mouseTrackerInstance"]
       59 NAMECALL                         R1 R1 K16 ["Destroy"]
       61 CALL                             R1 1 0
       62 NAMECALL                         R1 R0 K17 ["_deregisterWidgetAsync"]
       64 CALL                             R1 1 0
       65 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateDrag"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        4 NAMECALL                         R1 R1 K1 ["getPlugin"]
        6 CALL                             R1 1 1
        7 LOADK                            R3 K2 ["MouseTracker"]
        8 NAMECALL                         R1 R1 K3 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K4 ["GuiUri"]
       14 NAMECALL                         R1 R1 K5 ["RegisterMouseTrackingRelativeToWidgetAsync"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K6 ["_mouseTrackerInstance"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K6 ["_mouseTrackerInstance"]
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       28 LOADK                            R2 K7 ["Unable to get mouse tracker instance"]
       29 GETIMPORT                        R0 K9 [assert]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R0 R1 K6 ["_mouseTrackerInstance"]
       35 LOADK                            R2 K10 ["RBX_MousePosition"]
       36 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       38 CALL                             R0 2 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R0 R0 K12 ["Connect"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R3 R0 K3 ["_threads"]
        8 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R2 K6 [table.insert]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_layoutController"]
        3 NAMECALL                         R0 R0 K1 ["getPluginGui"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["_pluginController"]
        9 NAMECALL                         R1 R1 K3 ["getPlugin"]
       11 CALL                             R1 1 1
       12 LOADK                            R3 K4 ["Widgets"]
       13 NAMECALL                         R1 R1 K5 ["GetPluginComponent"]
       15 CALL                             R1 2 1
       16 NEWTABLE                         R3 0 1
       18 DUPTABLE                         R4 K9 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K10 ["GuiUri"]
       22 SETTABLEKS                       R5 R4 K6 ["Uri"]
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R5 R4 K7 ["Widget"]
       27 SETTABLEKS                       R0 R4 K8 ["DEPRECATED_PluginGui"]
       29 SETLIST                          R3 R4 1 [1]
       31 NAMECALL                         R1 R1 K11 ["RegisterAsync"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_widgetRegistered"]
        3 GETIMPORT                        R2 K3 [task.spawn]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R0 K4 ["_threads"]
       12 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R3 K7 [table.insert]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["Widgets"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 1
       10 NEWTABLE                         R2 0 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["GuiUri"]
       15 SETLIST                          R2 R3 1 [1]
       17 NAMECALL                         R0 R0 K5 ["DeregisterAsync"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
        2 GETIMPORT                        R3 K4 [Enum.KeyCode.LeftShift]
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+5]
        6 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
        8 GETIMPORT                        R3 K6 [Enum.KeyCode.RightShift]
       10 GETTABLE                         R1 R2 R3
       11 SETTABLEKS                       R1 R0 K7 ["_heldShift"]
       13 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
       15 GETIMPORT                        R3 K9 [Enum.KeyCode.LeftControl]
       17 GETTABLE                         R1 R2 R3
       18 JUMPIF                           R1 ; [+17]
       19 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
       21 GETIMPORT                        R3 K11 [Enum.KeyCode.RightControl]
       23 GETTABLE                         R1 R2 R3
       24 JUMPIF                           R1 ; [+11]
       25 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
       27 GETIMPORT                        R3 K13 [Enum.KeyCode.LeftMeta]
       29 GETTABLE                         R1 R2 R3
       30 JUMPIF                           R1 ; [+5]
       31 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
       33 GETIMPORT                        R3 K15 [Enum.KeyCode.RightMeta]
       35 GETTABLE                         R1 R2 R3
       36 SETTABLEKS                       R1 R0 K16 ["_heldCtrl"]
       38 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        5 LOADK                            R3 K1 ["RBX_MousePosition"]
        6 NAMECALL                         R1 R1 K2 ["GetAttribute"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_18:
        0 LOADB                            R2 1
        1 GETIMPORT                        R3 K3 [Enum.KeyCode.Up]
        3 JUMPIFEQ                         R1 R3 ; [+17]
        5 LOADB                            R2 1
        6 GETIMPORT                        R3 K5 [Enum.KeyCode.Down]
        8 JUMPIFEQ                         R1 R3 ; [+12]
       10 LOADB                            R2 1
       11 GETIMPORT                        R3 K7 [Enum.KeyCode.Left]
       13 JUMPIFEQ                         R1 R3 ; [+7]
       15 GETIMPORT                        R3 K9 [Enum.KeyCode.Right]
       17 JUMPIFEQ                         R1 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["_layoutController"]
        2 NAMECALL                         R4 R4 K1 ["getBrowserLayout"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R3 R4 K2 ["ViewType"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["ViewType"]
       10 GETTABLEKS                       R4 R5 K3 ["Grid"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LOADN                            R3 0
       17 JUMPIFNOT                        R2 ; [+34]
       18 GETIMPORT                        R4 K7 [Enum.KeyCode.Left]
       20 JUMPIFNOTEQ                      R1 R4 ; [+3]
       22 LOADN                            R3 255
       23 JUMP                             ; [+39]
       24 GETIMPORT                        R4 K9 [Enum.KeyCode.Right]
       26 JUMPIFNOTEQ                      R1 R4 ; [+3]
       28 LOADN                            R3 1
       29 JUMP                             ; [+33]
       30 GETIMPORT                        R4 K11 [Enum.KeyCode.Up]
       32 JUMPIFNOTEQ                      R1 R4 ; [+8]
       34 GETTABLEKS                       R4 R0 K0 ["_layoutController"]
       36 NAMECALL                         R4 R4 K12 ["getGridCellsPerRow"]
       38 CALL                             R4 1 1
       39 MINUS                            R3 R4
       40 JUMP                             ; [+22]
       41 GETIMPORT                        R4 K14 [Enum.KeyCode.Down]
       43 JUMPIFNOTEQ                      R1 R4 ; [+19]
       45 GETTABLEKS                       R4 R0 K0 ["_layoutController"]
       47 NAMECALL                         R4 R4 K12 ["getGridCellsPerRow"]
       49 CALL                             R4 1 1
       50 MOVE                             R3 R4
       51 JUMP                             ; [+11]
       52 GETIMPORT                        R4 K11 [Enum.KeyCode.Up]
       54 JUMPIFNOTEQ                      R1 R4 ; [+3]
       56 LOADN                            R3 255
       57 JUMP                             ; [+5]
       58 GETIMPORT                        R4 K14 [Enum.KeyCode.Down]
       60 JUMPIFNOTEQ                      R1 R4 ; [+2]
       62 LOADN                            R3 1
       63 GETTABLEKS                       R4 R0 K15 ["_itemsController"]
       65 GETTABLEKS                       R6 R0 K16 ["_heldShift"]
       67 JUMPIF                           R6 ; [+2]
       68 GETTABLEKS                       R6 R0 K17 ["_heldCtrl"]
       70 MOVE                             R7 R3
       71 NAMECALL                         R4 R4 K18 ["moveSelection"]
       73 CALL                             R4 3 0
       74 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 NAMECALL                         R2 R0 K1 ["_registerMod"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K5 [Enum.KeyCode.Tab]
        9 JUMPIFNOTEQ                      R1 R2 ; [+7]
       11 GETTABLEKS                       R2 R0 K6 ["_layoutController"]
       13 NAMECALL                         R2 R2 K7 ["toggleSidebar"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R0 K8 ["_lastZone"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K9 ["UiZone"]
       22 GETTABLEKS                       R3 R4 K10 ["Browser"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+16]
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R0 K11 ["_isArrowKey"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+10]
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R0 K12 ["_handleBrowserArrowInput"]
       34 CALL                             R2 2 0
       35 GETTABLEKS                       R2 R0 K13 ["_keyHoldDetector"]
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K14 ["keyPressed"]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 NAMECALL                         R2 R0 K1 ["_registerMod"]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R0 K2 ["_keyHoldDetector"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["keyReleased"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsController"]
        2 NAMECALL                         R3 R3 K1 ["getRenderItems"]
        4 CALL                             R3 1 1
        5 GETTABLE                         R2 R3 R1
        6 GETTABLEKS                       R4 R0 K0 ["_itemsController"]
        8 NAMECALL                         R4 R4 K2 ["getSelection"]
       10 CALL                             R4 1 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETTABLEKS                       R3 R0 K3 ["isDoubleClick"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R0 K4 ["_doubleClickQueued"]
       19 RETURN                           R0 0
       20 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 GETTABLEKS                       R2 R0 K1 ["_itemsController"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["handleDoubleClick"]
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K5 [task.wait]
       11 GETTABLEKS                       R3 R0 K6 ["clickDelay"]
       13 CALL                             R2 1 0
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R0 K7 ["_doubleClickQueued"]
       20 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_itemsController"]
        2 NAMECALL                         R3 R3 K1 ["getRenderItems"]
        4 CALL                             R3 1 1
        5 GETTABLE                         R2 R3 R1
        6 GETTABLEKS                       R4 R0 K0 ["_itemsController"]
        8 NAMECALL                         R4 R4 K2 ["getSelection"]
       10 CALL                             R4 1 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETIMPORT                        R3 K5 [task.wait]
       15 GETTABLEKS                       R4 R0 K6 ["clickDelay"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        2 NAMECALL                         R1 R1 K1 ["getIsCompact"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        8 NAMECALL                         R1 R1 K2 ["toggleSidebar"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_26:
        0 PREPVARARGS                      2
        1 SETTABLEKS                       R1 R0 K0 ["_lastZone"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R3 K2 ["Filters"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+8]
       10 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K4 ["toggleFilter"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K1 ["UiZone"]
       20 GETTABLEKS                       R2 R3 K5 ["Sidebar"]
       22 JUMPIFNOTEQ                      R1 R2 ; [+5]
       24 GETVARARGS                       R4 -1
       25 NAMECALL                         R2 R0 K6 ["_handleSidebarClick"]
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_27:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K1 ["_lastZone"]
        7 GETTABLEKS                       R2 R0 K2 ["_pressedKeys"]
        9 GETIMPORT                        R3 K6 [Enum.KeyCode.MouseLeftButton]
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R2 R3
       13 NAMECALL                         R2 R0 K7 ["_getMousePosition"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K8 ["_lastClickMousePosition"]
       18 GETTABLEKS                       R2 R0 K9 ["_doubleClickDetector"]
       20 NAMECALL                         R2 R2 K10 ["isDoubleClick"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R0 K10 ["isDoubleClick"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K11 ["UiZone"]
       28 GETTABLEKS                       R2 R3 K12 ["Browser"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+20]
       32 GETTABLEKS                       R2 R0 K13 ["_heldShift"]
       34 JUMPIF                           R2 ; [+5]
       35 GETTABLEKS                       R2 R0 K14 ["_itemsController"]
       37 NAMECALL                         R2 R2 K15 ["syncSelectionIndices"]
       39 CALL                             R2 1 0
       40 GETVARARGS                       R4 -1
       41 NAMECALL                         R2 R0 K16 ["_checkBrowserDoubleClick"]
       43 CALL                             R2 -1 0
       44 GETTABLEKS                       R2 R0 K14 ["_itemsController"]
       46 GETVARARGS                       R4 -1
       47 NAMECALL                         R2 R2 K17 ["setLastItemClicked"]
       49 CALL                             R2 -1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K11 ["UiZone"]
       54 GETTABLEKS                       R2 R3 K18 ["Sidebar"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+7]
       58 GETTABLEKS                       R2 R0 K19 ["_pluginController"]
       60 GETVARARGS                       R4 -1
       61 NAMECALL                         R2 R2 K20 ["setCurrentScope"]
       63 CALL                             R2 -1 0
       64 RETURN                           R0 0

PROTO_28:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R0 K1 ["_getMousePosition"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R0 K2 ["_lastClickMousePosition"]
       10 SETTABLEKS                       R1 R0 K3 ["_lastZone"]
       12 GETTABLEKS                       R2 R0 K4 ["_pressedKeys"]
       14 GETIMPORT                        R3 K8 [Enum.KeyCode.MouseLeftButton]
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K9 ["UiZone"]
       21 GETTABLEKS                       R2 R3 K10 ["Browser"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+27]
       25 GETTABLEKS                       R2 R0 K11 ["_doubleClickQueued"]
       27 JUMPIFNOT                        R2 ; [+5]
       28 GETVARARGS                       R4 -1
       29 NAMECALL                         R2 R0 K12 ["_handleBrowserDoubleClick"]
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0
       33 GETVARARGS                       R4 -1
       34 NAMECALL                         R2 R0 K13 ["_waitForSelectionDoubleClick"]
       36 CALL                             R2 -1 0
       37 GETTABLEKS                       R2 R0 K11 ["_doubleClickQueued"]
       39 JUMPIFNOT                        R2 ; [+1]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R2 R0 K14 ["_itemsController"]
       43 GETTABLEKS                       R4 R0 K15 ["_heldShift"]
       45 GETTABLEKS                       R5 R0 K16 ["_heldCtrl"]
       47 GETVARARGS                       R6 -1
       48 NAMECALL                         R2 R2 K17 ["changeSelection"]
       50 CALL                             R2 -1 0
       51 RETURN                           R0 0

PROTO_29:
        0 PREPVARARGS                      2
        1 SETTABLEKS                       R1 R0 K0 ["_lastZone"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R3 K2 ["Browser"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K4 ["handleRightClick"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["_pressedKeys"]
        2 GETIMPORT                        R4 K4 [Enum.KeyCode.MouseLeftButton]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_lastZone"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_dragInfo"]
        2 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getScopeRoot"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R5 R0 K2 ["_dragInfo"]
        8 GETTABLEKS                       R4 R5 K3 ["DraggedItems"]
       10 GETTABLEKS                       R5 R0 K0 ["_explorerController"]
       12 MOVE                             R7 R4
       13 NAMECALL                         R5 R5 K1 ["getScopeRoot"]
       15 CALL                             R5 2 1
       16 JUMPIFEQ                         R3 R5 ; [+3]
       18 LOADB                            R5 0
       19 RETURN                           R5 1
       20 JUMPIFNOT                        R2 ; [+12]
       21 GETTABLEKS                       R5 R0 K0 ["_explorerController"]
       23 GETTABLEKS                       R7 R4 K4 ["Uid"]
       25 GETTABLEKS                       R8 R1 K4 ["Uid"]
       27 NAMECALL                         R5 R5 K5 ["isAncestor"]
       29 CALL                             R5 3 1
       30 JUMPIFNOT                        R5 ; [+2]
       31 LOADB                            R5 0
       32 RETURN                           R5 1
       33 LOADB                            R5 1
       34 RETURN                           R5 1

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getScopeRoot"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R0 K2 ["_itemsController"]
        8 NAMECALL                         R4 R4 K3 ["getCurrentShownScope"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R0 K0 ["_explorerController"]
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R5 K1 ["getScopeRoot"]
       16 CALL                             R5 2 1
       17 JUMPIFEQ                         R3 R5 ; [+3]
       19 LOADB                            R5 0
       20 RETURN                           R5 1
       21 JUMPIF                           R2 ; [+2]
       22 LOADB                            R5 1
       23 RETURN                           R5 1
       24 GETTABLEKS                       R5 R0 K2 ["_itemsController"]
       26 NAMECALL                         R5 R5 K4 ["getItemsCache"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R9 R0 K5 ["_dragInfo"]
       31 GETTABLEKS                       R6 R9 K6 ["DraggedItems"]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R13 R4 K7 ["Uid"]
       38 MOVE                             R14 R10
       39 GETUPVAL                         R17 0
       40 GETTABLEKS                       R16 R17 K8 ["AssetInfoField"]
       42 GETTABLEKS                       R15 R16 K9 ["AssetType"]
       44 NAMECALL                         R11 R5 K10 ["getItemField"]
       46 CALL                             R11 4 1
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R13 R14 K9 ["AssetType"]
       50 GETTABLEKS                       R12 R13 K11 ["Folder"]
       52 JUMPIFNOTEQ                      R11 R12 ; [+14]
       54 GETTABLEKS                       R12 R0 K0 ["_explorerController"]
       56 GETUPVAL                         R14 1
       57 MOVE                             R15 R10
       58 CALL                             R14 1 1
       59 GETTABLEKS                       R15 R1 K7 ["Uid"]
       61 NAMECALL                         R12 R12 K12 ["isAncestor"]
       63 CALL                             R12 3 1
       64 JUMPIFNOT                        R12 ; [+2]
       65 LOADB                            R12 0
       66 RETURN                           R12 1
       67 FORGLOOP                         R6 2 ; [-32]
       69 LOADB                            R6 1
       70 RETURN                           R6 1

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["_dragging"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 MOVE                             R3 R2
        6 JUMPIF                           R3 ; [+10]
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETTABLEKS                       R3 R0 K1 ["_explorerController"]
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R1
       13 CALL                             R5 1 -1
       14 NAMECALL                         R3 R3 K2 ["getScopeWithUid"]
       16 CALL                             R3 -1 1
       17 JUMPIF                           R3 ; [+2]
       18 LOADB                            R4 0
       19 RETURN                           R4 1
       20 GETTABLEKS                       R7 R0 K3 ["_dragInfo"]
       22 GETTABLEKS                       R4 R7 K4 ["DraggedItems"]
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 JUMPIFEQ                         R8 R1 ; [+3]
       29 JUMPIFNOTEQ                      R8 R3 ; [+3]
       31 LOADB                            R9 0
       32 RETURN                           R9 1
       33 FORGLOOP                         R4 2 ; [-7]
       35 GETTABLEKS                       R4 R0 K5 ["_lastZone"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K6 ["UiZone"]
       40 GETTABLEKS                       R5 R6 K7 ["Sidebar"]
       42 JUMPIFNOTEQ                      R4 R5 ; [+7]
       44 MOVE                             R6 R3
       45 MOVE                             R7 R1
       46 NAMECALL                         R4 R0 K8 ["_isValidSidebarDrag"]
       48 CALL                             R4 3 -1
       49 RETURN                           R4 -1
       50 GETTABLEKS                       R4 R0 K5 ["_lastZone"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R6 R7 K6 ["UiZone"]
       55 GETTABLEKS                       R5 R6 K9 ["Browser"]
       57 JUMPIFNOTEQ                      R4 R5 ; [+7]
       59 MOVE                             R6 R3
       60 MOVE                             R7 R1
       61 NAMECALL                         R4 R0 K10 ["_isValidBrowserDrag"]
       63 CALL                             R4 3 -1
       64 RETURN                           R4 -1
       65 GETUPVAL                         R4 2
       66 LOADK                            R5 K11 ["Checking drag for unexpected zone"]
       67 LOADK                            R6 K12 ["WARN"]
       68 CALL                             R4 2 0
       69 LOADB                            R4 0
       70 RETURN                           R4 1

PROTO_36:
        0 NAMECALL                         R1 R0 K0 ["_getMousePosition"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_dragging"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETTABLEKS                       R2 R0 K2 ["OnDragMove"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K3 ["Fire"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K4 ["_layoutController"]
       14 NAMECALL                         R2 R2 K5 ["isPluginGuiFocused"]
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 NAMECALL                         R2 R0 K6 ["isMouse1Down"]
       20 CALL                             R2 1 1
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R0 K7 ["_pluginController"]
       25 NAMECALL                         R2 R2 K8 ["getCurrentScope"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R5 R0 K9 ["_lastClickMousePosition"]
       30 SUB                              R4 R1 R5
       31 GETTABLEKS                       R3 R4 K10 ["Magnitude"]
       33 LOADN                            R4 15
       34 JUMPIFNOTLT                      R4 R3 ; [+110]
       36 GETTABLEKS                       R3 R0 K1 ["_dragging"]
       38 JUMPIF                           R3 ; [+106]
       39 GETTABLEKS                       R3 R0 K11 ["_lastZone"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K12 ["UiZone"]
       44 GETTABLEKS                       R4 R5 K13 ["Browser"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+19]
       48 DUPTABLE                         R3 K16 [{"DraggedItems", "SourceZone"}]
       49 GETTABLEKS                       R4 R0 K17 ["_itemsController"]
       51 NAMECALL                         R4 R4 K18 ["getDragData"]
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K14 ["DraggedItems"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K12 ["UiZone"]
       59 GETTABLEKS                       R4 R5 K13 ["Browser"]
       61 SETTABLEKS                       R4 R3 K15 ["SourceZone"]
       63 SETTABLEKS                       R3 R0 K19 ["_dragInfo"]
       65 JUMP                             ; [+35]
       66 GETTABLEKS                       R3 R0 K11 ["_lastZone"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R5 R6 K12 ["UiZone"]
       71 GETTABLEKS                       R4 R5 K20 ["Sidebar"]
       73 JUMPIFNOTEQ                      R3 R4 ; [+27]
       75 JUMPIFNOT                        R2 ; [+9]
       76 GETTABLEKS                       R3 R2 K21 ["Type"]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R5 R6 K22 ["ScopeType"]
       81 GETTABLEKS                       R4 R5 K23 ["Folder"]
       83 JUMPIFEQ                         R3 R4 ; [+5]
       85 GETUPVAL                         R3 1
       86 LOADK                            R4 K24 ["Sidebar selection is not a folder, cannot drag."]
       87 CALL                             R3 1 0
       88 RETURN                           R0 0
       89 DUPTABLE                         R3 K16 [{"DraggedItems", "SourceZone"}]
       90 SETTABLEKS                       R2 R3 K14 ["DraggedItems"]
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R5 R6 K12 ["UiZone"]
       95 GETTABLEKS                       R4 R5 K20 ["Sidebar"]
       97 SETTABLEKS                       R4 R3 K15 ["SourceZone"]
       99 SETTABLEKS                       R3 R0 K19 ["_dragInfo"]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R4 R0 K19 ["_dragInfo"]
      104 GETTABLEKS                       R5 R0 K17 ["_itemsController"]
      106 NAMECALL                         R5 R5 K25 ["getItemsCache"]
      108 CALL                             R5 1 1
      109 MOVE                             R6 R2
      110 CALL                             R3 3 1
      111 LOADB                            R4 1
      112 SETTABLEKS                       R4 R0 K1 ["_dragging"]
      114 GETTABLEKS                       R4 R0 K7 ["_pluginController"]
      116 NAMECALL                         R4 R4 K26 ["getPlugin"]
      118 CALL                             R4 1 1
      119 DUPTABLE                         R6 K32 [{"Sender", "MimeType", "Data", "DragIcon", "HotSpot"}]
      120 LOADK                            R7 K33 ["AssetManager"]
      121 SETTABLEKS                       R7 R6 K27 ["Sender"]
      123 LOADK                            R7 K34 ["text/plain"]
      124 SETTABLEKS                       R7 R6 K28 ["MimeType"]
      126 LOADK                            R7 K35 ["Items"]
      127 SETTABLEKS                       R7 R6 K29 ["Data"]
      129 SETTABLEKS                       R3 R6 K30 ["DragIcon"]
      131 GETIMPORT                        R7 K38 [Vector2.new]
      133 GETUPVAL                         R9 3
      134 GETTABLEKS                       R8 R9 K39 ["IconWidth"]
      136 GETUPVAL                         R10 3
      137 GETTABLEKS                       R9 R10 K39 ["IconWidth"]
      139 CALL                             R7 2 1
      140 SETTABLEKS                       R7 R6 K31 ["HotSpot"]
      142 NAMECALL                         R4 R4 K40 ["StartDrag"]
      144 CALL                             R4 2 0
      145 RETURN                           R0 0

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
       18 GETTABLEKS                       R5 R1 K10 ["Util"]
       20 GETTABLEKS                       R4 R5 K11 ["DoubleClickDetector"]
       22 GETTABLEKS                       R6 R1 K10 ["Util"]
       24 GETTABLEKS                       R5 R6 K12 ["Signal"]
       26 GETIMPORT                        R6 K5 [require]
       28 GETTABLEKS                       R9 R0 K13 ["Src"]
       30 GETTABLEKS                       R8 R9 K10 ["Util"]
       32 GETTABLEKS                       R7 R8 K14 ["cleanConnections"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R10 R0 K13 ["Src"]
       39 GETTABLEKS                       R9 R10 K15 ["Resources"]
       41 GETTABLEKS                       R8 R9 K16 ["Constants"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R11 R0 K13 ["Src"]
       48 GETTABLEKS                       R10 R11 K10 ["Util"]
       50 GETTABLEKS                       R9 R10 K17 ["createFolderUid"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R12 R0 K13 ["Src"]
       57 GETTABLEKS                       R11 R12 K10 ["Util"]
       59 GETTABLEKS                       R10 R11 K18 ["getDragInfoIcon"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R13 R0 K13 ["Src"]
       66 GETTABLEKS                       R12 R13 K10 ["Util"]
       68 GETTABLEKS                       R11 R12 K19 ["KeyHoldDetector"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R14 R0 K13 ["Src"]
       75 GETTABLEKS                       R13 R14 K10 ["Util"]
       77 GETTABLEKS                       R12 R13 K20 ["logIfDebug"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R15 R0 K13 ["Src"]
       84 GETTABLEKS                       R14 R15 K15 ["Resources"]
       86 GETTABLEKS                       R13 R14 K21 ["StyleConstants"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R15 R0 K13 ["Src"]
       93 GETTABLEKS                       R14 R15 K22 ["Types"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R17 R0 K13 ["Src"]
      100 GETTABLEKS                       R16 R17 K23 ["Flags"]
      102 GETTABLEKS                       R15 R16 K24 ["getFFlagAmrOrganizationFoundation"]
      104 CALL                             R14 1 1
      105 LOADK                            R17 K25 ["Input"]
      106 NAMECALL                         R15 R3 K26 ["extend"]
      108 CALL                             R15 2 1
      109 DUPCLOSURE                       R16 K27 [PROTO_5]
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R11
      116 SETTABLEKS                       R16 R15 K28 ["new"]
      118 DUPCLOSURE                       R16 K29 [PROTO_6]
      119 CAPTURE                          VAL R15
      120 SETTABLEKS                       R16 R15 K30 ["mock"]
      122 DUPCLOSURE                       R16 K31 [PROTO_7]
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R16 R15 K32 ["destroy"]
      126 DUPCLOSURE                       R16 K33 [PROTO_8]
      127 SETTABLEKS                       R16 R15 K34 ["getPlugin"]
      129 DUPCLOSURE                       R16 K35 [PROTO_11]
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R16 R15 K36 ["_registerMouseTrackerAsync"]
      133 DUPCLOSURE                       R16 K37 [PROTO_13]
      134 CAPTURE                          VAL R7
      135 SETTABLEKS                       R16 R15 K38 ["_registerWidgetAsync"]
      137 DUPCLOSURE                       R16 K39 [PROTO_15]
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R16 R15 K40 ["_deregisterWidgetAsync"]
      141 DUPCLOSURE                       R16 K41 [PROTO_16]
      142 SETTABLEKS                       R16 R15 K42 ["_registerMod"]
      144 DUPCLOSURE                       R16 K43 [PROTO_17]
      145 SETTABLEKS                       R16 R15 K44 ["_getMousePosition"]
      147 DUPCLOSURE                       R16 K45 [PROTO_18]
      148 SETTABLEKS                       R16 R15 K46 ["_isArrowKey"]
      150 DUPCLOSURE                       R16 K47 [PROTO_19]
      151 CAPTURE                          VAL R13
      152 SETTABLEKS                       R16 R15 K48 ["_handleBrowserArrowInput"]
      154 DUPCLOSURE                       R16 K49 [PROTO_20]
      155 CAPTURE                          VAL R13
      156 SETTABLEKS                       R16 R15 K50 ["handleKeyDown"]
      158 DUPCLOSURE                       R16 K51 [PROTO_21]
      159 SETTABLEKS                       R16 R15 K52 ["handleKeyUp"]
      161 DUPCLOSURE                       R16 K53 [PROTO_22]
      162 SETTABLEKS                       R16 R15 K54 ["_checkBrowserDoubleClick"]
      164 DUPCLOSURE                       R16 K55 [PROTO_23]
      165 SETTABLEKS                       R16 R15 K56 ["_handleBrowserDoubleClick"]
      167 DUPCLOSURE                       R16 K57 [PROTO_24]
      168 SETTABLEKS                       R16 R15 K58 ["_waitForSelectionDoubleClick"]
      170 DUPCLOSURE                       R16 K59 [PROTO_25]
      171 SETTABLEKS                       R16 R15 K60 ["_handleSidebarClick"]
      173 DUPCLOSURE                       R16 K61 [PROTO_26]
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R16 R15 K62 ["handleMouse1Click"]
      177 DUPCLOSURE                       R16 K63 [PROTO_27]
      178 CAPTURE                          VAL R13
      179 SETTABLEKS                       R16 R15 K64 ["handleMouse1Down"]
      181 DUPCLOSURE                       R16 K65 [PROTO_28]
      182 CAPTURE                          VAL R13
      183 SETTABLEKS                       R16 R15 K66 ["handleMouse1Up"]
      185 DUPCLOSURE                       R16 K67 [PROTO_29]
      186 CAPTURE                          VAL R13
      187 SETTABLEKS                       R16 R15 K68 ["handleMouse2Click"]
      189 DUPCLOSURE                       R16 K69 [PROTO_30]
      190 SETTABLEKS                       R16 R15 K70 ["isMouse1Down"]
      192 DUPCLOSURE                       R16 K71 [PROTO_31]
      193 SETTABLEKS                       R16 R15 K72 ["getLastZoneClicked"]
      195 DUPCLOSURE                       R16 K73 [PROTO_32]
      196 SETTABLEKS                       R16 R15 K74 ["getDragInfo"]
      198 DUPCLOSURE                       R16 K75 [PROTO_33]
      199 SETTABLEKS                       R16 R15 K76 ["_isValidSidebarDrag"]
      201 DUPCLOSURE                       R16 K77 [PROTO_34]
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R8
      204 SETTABLEKS                       R16 R15 K78 ["_isValidBrowserDrag"]
      206 DUPCLOSURE                       R16 K79 [PROTO_35]
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R11
      210 SETTABLEKS                       R16 R15 K80 ["isValidDragForTarget"]
      212 DUPCLOSURE                       R16 K81 [PROTO_36]
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R12
      217 SETTABLEKS                       R16 R15 K82 ["_updateDrag"]
      219 RETURN                           R15 1
