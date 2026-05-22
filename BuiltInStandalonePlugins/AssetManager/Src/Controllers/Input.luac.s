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
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["_isDragInGui"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["OnDragMove"]
       14 GETUPVAL                         R3 1
       15 NAMECALL                         R3 R3 K4 ["getMousePosition"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K5 ["Fire"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Drag left Asset Manager"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["_dragging"]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["_isDragInGui"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["OnDragMove"]
       14 GETUPVAL                         R3 1
       15 NAMECALL                         R3 R3 K4 ["getMousePosition"]
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K5 ["Fire"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_dragging"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["Drag dropped on Asset Manager but did not come from Asset Manager"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["_pressedKeys"]
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
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K11 ["OnDrop"]
       28 GETUPVAL                         R3 0
       29 NAMECALL                         R3 R3 K12 ["getMousePosition"]
       31 CALL                             R3 1 -1
       32 NAMECALL                         R1 R1 K13 ["Fire"]
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnMouseMove"]
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_widgetRegistered"]
        3 JUMPIF                           R1 ; [+8]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["Widget not registered, registering now..."]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["_registerWidgetAsync"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K28 [{"_isMock", "_pluginController", "_layoutController", "_itemsController", "_searchController", "_explorerController", "_pressedKeys", "_lastPressed", "_keyHoldDetector", "_lastClickMousePosition", "_lastZone", "_dragging", "_dragInfo", "_isDragInGui", "_mouseTrackerInstance", "_doubleClickDetector", "_doubleClickQueued", "_resolvingDoubleClick", "isDoubleClick", "clickDelay", "_connections", "_threads", "_widgetRegistered", "OnDrag", "OnDrop", "OnDragMove", "OnEnterViewport", "OnMouseMove"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K29 ["PluginController"]
        5 SETTABLEKS                       R3 R2 K1 ["_pluginController"]
        7 GETTABLEKS                       R3 R0 K30 ["LayoutController"]
        9 SETTABLEKS                       R3 R2 K2 ["_layoutController"]
       11 GETTABLEKS                       R3 R0 K31 ["ItemsController"]
       13 SETTABLEKS                       R3 R2 K3 ["_itemsController"]
       15 GETTABLEKS                       R3 R0 K32 ["SearchController"]
       17 SETTABLEKS                       R3 R2 K4 ["_searchController"]
       19 GETTABLEKS                       R3 R0 K33 ["ExplorerController"]
       21 SETTABLEKS                       R3 R2 K5 ["_explorerController"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K6 ["_pressedKeys"]
       27 GETIMPORT                        R3 K37 [Enum.KeyCode.Unknown]
       29 SETTABLEKS                       R3 R2 K7 ["_lastPressed"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K38 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
       37 GETIMPORT                        R3 K40 [Vector2.new]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K9 ["_lastClickMousePosition"]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K10 ["_lastZone"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K11 ["_dragging"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K12 ["_dragInfo"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R2 K13 ["_isDragInGui"]
       54 LOADNIL                          R3
       55 SETTABLEKS                       R3 R2 K14 ["_mouseTrackerInstance"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K38 ["new"]
       60 CALL                             R3 0 1
       61 SETTABLEKS                       R3 R2 K15 ["_doubleClickDetector"]
       63 LOADB                            R3 0
       64 SETTABLEKS                       R3 R2 K16 ["_doubleClickQueued"]
       66 LOADB                            R3 0
       67 SETTABLEKS                       R3 R2 K17 ["_resolvingDoubleClick"]
       69 LOADB                            R3 0
       70 SETTABLEKS                       R3 R2 K18 ["isDoubleClick"]
       72 LOADK                            R3 K41 [0.2]
       73 SETTABLEKS                       R3 R2 K19 ["clickDelay"]
       75 NEWTABLE                         R3 0 0
       77 SETTABLEKS                       R3 R2 K20 ["_connections"]
       79 NEWTABLE                         R3 0 0
       81 SETTABLEKS                       R3 R2 K21 ["_threads"]
       83 LOADB                            R3 0
       84 SETTABLEKS                       R3 R2 K22 ["_widgetRegistered"]
       86 GETUPVAL                         R3 2
       87 GETTABLEKS                       R3 R3 K38 ["new"]
       89 CALL                             R3 0 1
       90 SETTABLEKS                       R3 R2 K23 ["OnDrag"]
       92 GETUPVAL                         R3 2
       93 GETTABLEKS                       R3 R3 K38 ["new"]
       95 CALL                             R3 0 1
       96 SETTABLEKS                       R3 R2 K24 ["OnDrop"]
       98 GETUPVAL                         R3 2
       99 GETTABLEKS                       R3 R3 K38 ["new"]
      101 CALL                             R3 0 1
      102 SETTABLEKS                       R3 R2 K25 ["OnDragMove"]
      104 GETUPVAL                         R3 2
      105 GETTABLEKS                       R3 R3 K38 ["new"]
      107 CALL                             R3 0 1
      108 SETTABLEKS                       R3 R2 K26 ["OnEnterViewport"]
      110 GETUPVAL                         R3 2
      111 GETTABLEKS                       R3 R3 K38 ["new"]
      113 CALL                             R3 0 1
      114 SETTABLEKS                       R3 R2 K27 ["OnMouseMove"]
      116 GETUPVAL                         R5 3
      117 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      119 MOVE                             R4 R2
      120 GETIMPORT                        R3 K43 [setmetatable]
      122 CALL                             R3 2 0
      123 GETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
      125 NEWCLOSURE                       R5 P0
      126 CAPTURE                          VAL R2
      127 NAMECALL                         R3 R3 K44 ["setCallback"]
      129 CALL                             R3 2 0
      130 GETUPVAL                         R3 4
      131 CALL                             R3 0 1
      132 JUMPIFNOT                        R3 ; [+60]
      133 GETTABLEKS                       R3 R2 K2 ["_layoutController"]
      135 NAMECALL                         R3 R3 K45 ["getPluginGui"]
      137 CALL                             R3 1 1
      138 GETTABLEKS                       R5 R2 K20 ["_connections"]
      140 GETTABLEKS                       R6 R3 K46 ["PluginDragEntered"]
      142 NEWCLOSURE                       R8 P1
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R2
      145 NAMECALL                         R6 R6 K47 ["Connect"]
      147 CALL                             R6 2 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R4 K50 [table.insert]
      151 CALL                             R4 -1 0
      152 GETTABLEKS                       R5 R2 K20 ["_connections"]
      154 GETTABLEKS                       R6 R3 K51 ["PluginDragLeft"]
      156 NEWCLOSURE                       R8 P2
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          VAL R2
      159 NAMECALL                         R6 R6 K47 ["Connect"]
      161 CALL                             R6 2 -1
      162 FASTCALL                         TABLE_INSERT ; [+2]
      163 GETIMPORT                        R4 K50 [table.insert]
      165 CALL                             R4 -1 0
      166 GETTABLEKS                       R5 R2 K20 ["_connections"]
      168 GETTABLEKS                       R6 R3 K52 ["PluginDragDropped"]
      170 NEWCLOSURE                       R8 P3
      171 CAPTURE                          VAL R2
      172 CAPTURE                          UPVAL U5
      173 NAMECALL                         R6 R6 K47 ["Connect"]
      175 CALL                             R6 2 -1
      176 FASTCALL                         TABLE_INSERT ; [+2]
      177 GETIMPORT                        R4 K50 [table.insert]
      179 CALL                             R4 -1 0
      180 GETTABLEKS                       R5 R2 K20 ["_connections"]
      182 GETTABLEKS                       R6 R3 K53 ["WindowFocusReleased"]
      184 NEWCLOSURE                       R8 P4
      185 CAPTURE                          VAL R2
      186 NAMECALL                         R6 R6 K47 ["Connect"]
      188 CALL                             R6 2 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R4 K50 [table.insert]
      192 CALL                             R4 -1 0
      193 GETUPVAL                         R3 4
      194 CALL                             R3 0 1
      195 JUMPIF                           R3 ; [+3]
      196 GETUPVAL                         R3 6
      197 CALL                             R3 0 1
      198 JUMPIFNOT                        R3 ; [+19]
      199 GETTABLEKS                       R4 R2 K20 ["_connections"]
      201 GETTABLEKS                       R5 R2 K2 ["_layoutController"]
      203 GETTABLEKS                       R5 R5 K54 ["OnPluginFrameSet"]
      205 NEWCLOSURE                       R7 P5
      206 CAPTURE                          VAL R2
      207 CAPTURE                          UPVAL U5
      208 NAMECALL                         R5 R5 K47 ["Connect"]
      210 CALL                             R5 2 -1
      211 FASTCALL                         TABLE_INSERT ; [+2]
      212 GETIMPORT                        R3 K50 [table.insert]
      214 CALL                             R3 -1 0
      215 NAMECALL                         R3 R2 K55 ["_registerMouseTrackerAsync"]
      217 CALL                             R3 1 0
      218 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["OnDrag"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["OnDrop"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnDragMove"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnEnterViewport"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnMouseMove"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["_pressedKeys"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["_lastClickMousePosition"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["_lastZone"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["_doubleClickDetector"]
       27 GETTABLEKS                       R1 R0 K9 ["_keyHoldDetector"]
       29 NAMECALL                         R1 R1 K10 ["destroy"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K9 ["_keyHoldDetector"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R2 R0 K11 ["_connections"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K11 ["_connections"]
       42 GETTABLEKS                       R1 R0 K12 ["_threads"]
       44 LOADNIL                          R2
       45 LOADNIL                          R3
       46 FORGPREP                         R1
       47 GETIMPORT                        R6 K15 [task.cancel]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 0
       51 FORGLOOP                         R1 2 ; [-5]
       53 LOADNIL                          R1
       54 SETTABLEKS                       R1 R0 K12 ["_threads"]
       56 GETTABLEKS                       R1 R0 K16 ["_mouseTrackerInstance"]
       58 JUMPIFEQKNIL                     R1 ; [+9]
       60 GETTABLEKS                       R1 R0 K16 ["_mouseTrackerInstance"]
       62 NAMECALL                         R1 R1 K17 ["Destroy"]
       64 CALL                             R1 1 0
       65 LOADNIL                          R1
       66 SETTABLEKS                       R1 R0 K16 ["_mouseTrackerInstance"]
       68 NAMECALL                         R1 R0 K18 ["_deregisterWidgetAsync"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateDrag"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_layoutController"]
        7 NAMECALL                         R0 R0 K2 ["isPluginGuiFocused"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K3 ["OnMouseMove"]
       14 GETUPVAL                         R2 0
       15 NAMECALL                         R2 R2 K4 ["getMousePosition"]
       17 CALL                             R2 1 -1
       18 NAMECALL                         R0 R0 K5 ["Fire"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mouseTrackerInstance"]
        3 LOADK                            R2 K1 ["RBX_LeftMouseButtonDown"]
        4 NAMECALL                         R0 R0 K2 ["GetAttribute"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+11]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["_pressedKeys"]
       11 GETIMPORT                        R1 K7 [Enum.KeyCode.MouseLeftButton]
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 0
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K8 ["_isDragInGui"]
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        4 NAMECALL                         R1 R1 K1 ["getPlugin"]
        6 CALL                             R1 1 1
        7 LOADK                            R3 K2 ["MouseTracker"]
        8 NAMECALL                         R1 R1 K3 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["GuiUri"]
       14 NAMECALL                         R1 R1 K5 ["RegisterMouseTrackingRelativeToWidgetAsync"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K6 ["_mouseTrackerInstance"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["_mouseTrackerInstance"]
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       28 LOADK                            R2 K7 ["Unable to get mouse tracker instance"]
       29 GETIMPORT                        R0 K9 [assert]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K6 ["_mouseTrackerInstance"]
       35 LOADK                            R2 K10 ["RBX_MousePosition"]
       36 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       38 CALL                             R0 2 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R0 R0 K12 ["Connect"]
       43 CALL                             R0 2 0
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K6 ["_mouseTrackerInstance"]
       47 LOADK                            R2 K13 ["RBX_LeftMouseButtonDown"]
       48 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       50 CALL                             R0 2 1
       51 NEWCLOSURE                       R2 P1
       52 CAPTURE                          UPVAL U0
       53 NAMECALL                         R0 R0 K12 ["Connect"]
       55 CALL                             R0 2 0
       56 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_layoutController"]
        3 NAMECALL                         R0 R0 K1 ["getPluginGui"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["_pluginController"]
        9 NAMECALL                         R1 R1 K3 ["getPlugin"]
       11 CALL                             R1 1 1
       12 LOADK                            R3 K4 ["Widgets"]
       13 NAMECALL                         R1 R1 K5 ["GetPluginComponent"]
       15 CALL                             R1 2 1
       16 NEWTABLE                         R3 0 1
       18 DUPTABLE                         R4 K9 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K10 ["GuiUri"]
       22 SETTABLEKS                       R5 R4 K6 ["Uri"]
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R5 R4 K7 ["Widget"]
       27 SETTABLEKS                       R0 R4 K8 ["DEPRECATED_PluginGui"]
       29 SETLIST                          R3 R4 1 [1]
       31 NAMECALL                         R1 R1 K11 ["RegisterAsync"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getPlugin"]
        5 CALL                             R0 1 1
        6 LOADK                            R2 K2 ["Widgets"]
        7 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        9 CALL                             R0 2 1
       10 NEWTABLE                         R2 0 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["GuiUri"]
       15 SETLIST                          R2 R3 1 [1]
       17 NAMECALL                         R0 R0 K5 ["DeregisterAsync"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        5 LOADK                            R3 K1 ["RBX_MousePosition"]
        6 NAMECALL                         R1 R1 K2 ["GetAttribute"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_layoutController"]
        2 NAMECALL                         R3 R3 K1 ["getBrowserLayout"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["ViewType"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["ViewType"]
       10 GETTABLEKS                       R4 R4 K3 ["Grid"]
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

PROTO_22:
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
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K9 ["UiZone"]
       22 GETTABLEKS                       R3 R3 K10 ["Browser"]
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        2 NAMECALL                         R1 R1 K1 ["getIsCompact"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        8 NAMECALL                         R1 R1 K2 ["toggleSidebar"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_28:
        0 PREPVARARGS                      2
        1 SETTABLEKS                       R1 R0 K0 ["_lastZone"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R2 K2 ["Filters"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+8]
       10 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K4 ["toggleFilter"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K1 ["UiZone"]
       20 GETTABLEKS                       R2 R2 K5 ["Sidebar"]
       22 JUMPIFNOTEQ                      R1 R2 ; [+5]
       24 NAMECALL                         R2 R0 K6 ["_handleSidebarClick"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K1 ["UiZone"]
       31 GETTABLEKS                       R2 R2 K7 ["Browser"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+11]
       35 GETTABLEKS                       R2 R0 K8 ["_heldShift"]
       37 JUMPIF                           R2 ; [+7]
       38 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       40 NEWTABLE                         R4 0 0
       42 NAMECALL                         R2 R2 K9 ["setSelection"]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_29:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K1 ["_lastZone"]
        7 GETTABLEKS                       R2 R0 K2 ["_pressedKeys"]
        9 GETIMPORT                        R3 K6 [Enum.KeyCode.MouseLeftButton]
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R2 R3
       13 NAMECALL                         R2 R0 K7 ["getMousePosition"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K8 ["_lastClickMousePosition"]
       18 GETTABLEKS                       R2 R0 K9 ["_doubleClickDetector"]
       20 NAMECALL                         R2 R2 K10 ["isDoubleClick"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R0 K10 ["isDoubleClick"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K11 ["UiZone"]
       28 GETTABLEKS                       R2 R2 K12 ["Browser"]
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
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K11 ["UiZone"]
       54 GETTABLEKS                       R2 R2 K18 ["Sidebar"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+7]
       58 GETTABLEKS                       R2 R0 K19 ["_pluginController"]
       60 GETVARARGS                       R4 -1
       61 NAMECALL                         R2 R2 K20 ["setCurrentScope"]
       63 CALL                             R2 -1 0
       64 RETURN                           R0 0

PROTO_30:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R2 R0 K1 ["getMousePosition"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R0 K2 ["_lastClickMousePosition"]
       10 SETTABLEKS                       R1 R0 K3 ["_lastZone"]
       12 GETTABLEKS                       R2 R0 K4 ["_pressedKeys"]
       14 GETIMPORT                        R3 K8 [Enum.KeyCode.MouseLeftButton]
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R2 R3
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K9 ["UiZone"]
       21 GETTABLEKS                       R2 R2 K10 ["Browser"]
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

PROTO_31:
        0 PREPVARARGS                      2
        1 SETTABLEKS                       R1 R0 K0 ["_lastZone"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R2 K2 ["Browser"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       12 GETVARARGS                       R4 -1
       13 NAMECALL                         R2 R2 K4 ["handleRightClick"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R3 R0 K0 ["_pressedKeys"]
        2 GETIMPORT                        R4 K4 [Enum.KeyCode.MouseLeftButton]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_lastZone"]
        2 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_dragInfo"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["_explorerController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getScopeRoot"]
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R0 K2 ["_dragInfo"]
        8 GETTABLEKS                       R4 R4 K3 ["DraggedItems"]
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

PROTO_36:
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
       29 GETTABLEKS                       R6 R0 K5 ["_dragInfo"]
       31 GETTABLEKS                       R6 R6 K6 ["DraggedItems"]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R13 R4 K7 ["Uid"]
       38 MOVE                             R14 R10
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K8 ["AssetInfoField"]
       42 GETTABLEKS                       R15 R15 K9 ["AssetType"]
       44 NAMECALL                         R11 R5 K10 ["getItemField"]
       46 CALL                             R11 4 1
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K9 ["AssetType"]
       50 GETTABLEKS                       R12 R12 K11 ["Folder"]
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

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["_dragging"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLEKS                       R3 R0 K1 ["_isDragInGui"]
        5 JUMPIFNOT                        R3 ; [+4]
        6 NAMECALL                         R3 R0 K2 ["isMouse1Down"]
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 MOVE                             R3 R2
       13 JUMPIF                           R3 ; [+10]
       14 MOVE                             R3 R1
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETTABLEKS                       R3 R0 K3 ["_explorerController"]
       18 GETUPVAL                         R5 0
       19 MOVE                             R6 R1
       20 CALL                             R5 1 -1
       21 NAMECALL                         R3 R3 K4 ["getScopeWithUid"]
       23 CALL                             R3 -1 1
       24 JUMPIF                           R3 ; [+2]
       25 LOADB                            R4 0
       26 RETURN                           R4 1
       27 GETTABLEKS                       R4 R0 K5 ["_dragInfo"]
       29 GETTABLEKS                       R4 R4 K6 ["DraggedItems"]
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 JUMPIFEQ                         R8 R1 ; [+3]
       36 JUMPIFNOTEQ                      R8 R3 ; [+3]
       38 LOADB                            R9 0
       39 RETURN                           R9 1
       40 FORGLOOP                         R4 2 ; [-7]
       42 GETTABLEKS                       R4 R0 K7 ["_lastZone"]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K8 ["UiZone"]
       47 GETTABLEKS                       R5 R5 K9 ["Sidebar"]
       49 JUMPIFNOTEQ                      R4 R5 ; [+7]
       51 MOVE                             R6 R3
       52 MOVE                             R7 R1
       53 NAMECALL                         R4 R0 K10 ["_isValidSidebarDrag"]
       55 CALL                             R4 3 -1
       56 RETURN                           R4 -1
       57 GETTABLEKS                       R4 R0 K7 ["_lastZone"]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K8 ["UiZone"]
       62 GETTABLEKS                       R5 R5 K11 ["Browser"]
       64 JUMPIFNOTEQ                      R4 R5 ; [+7]
       66 MOVE                             R6 R3
       67 MOVE                             R7 R1
       68 NAMECALL                         R4 R0 K12 ["_isValidBrowserDrag"]
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1
       72 GETUPVAL                         R4 2
       73 LOADK                            R5 K13 ["Checking drag for unexpected zone"]
       74 LOADK                            R6 K14 ["WARN"]
       75 CALL                             R4 2 0
       76 LOADB                            R4 0
       77 RETURN                           R4 1

PROTO_38:
        0 NAMECALL                         R1 R0 K0 ["getMousePosition"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_dragging"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K2 ["OnDragMove"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K3 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K4 ["_layoutController"]
       15 NAMECALL                         R2 R2 K5 ["isPluginGuiFocused"]
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETTABLEKS                       R2 R0 K6 ["_isDragInGui"]
       21 JUMPIFNOT                        R2 ; [+4]
       22 NAMECALL                         R2 R0 K7 ["isMouse1Down"]
       24 CALL                             R2 1 1
       25 JUMPIF                           R2 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R2 R0 K8 ["_pluginController"]
       29 NAMECALL                         R2 R2 K9 ["getCurrentScope"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R4 R0 K10 ["_lastClickMousePosition"]
       34 SUB                              R3 R1 R4
       35 GETTABLEKS                       R3 R3 K11 ["Magnitude"]
       37 LOADN                            R4 15
       38 JUMPIFNOTLT                      R4 R3 ; [+110]
       40 GETTABLEKS                       R3 R0 K1 ["_dragging"]
       42 JUMPIF                           R3 ; [+106]
       43 GETTABLEKS                       R3 R0 K12 ["_lastZone"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K13 ["UiZone"]
       48 GETTABLEKS                       R4 R4 K14 ["Browser"]
       50 JUMPIFNOTEQ                      R3 R4 ; [+19]
       52 DUPTABLE                         R3 K17 [{"DraggedItems", "SourceZone"}]
       53 GETTABLEKS                       R4 R0 K18 ["_itemsController"]
       55 NAMECALL                         R4 R4 K19 ["getDraggedItems"]
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R3 K15 ["DraggedItems"]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K13 ["UiZone"]
       63 GETTABLEKS                       R4 R4 K14 ["Browser"]
       65 SETTABLEKS                       R4 R3 K16 ["SourceZone"]
       67 SETTABLEKS                       R3 R0 K20 ["_dragInfo"]
       69 JUMP                             ; [+35]
       70 GETTABLEKS                       R3 R0 K12 ["_lastZone"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K13 ["UiZone"]
       75 GETTABLEKS                       R4 R4 K21 ["Sidebar"]
       77 JUMPIFNOTEQ                      R3 R4 ; [+27]
       79 JUMPIFNOT                        R2 ; [+9]
       80 GETTABLEKS                       R3 R2 K22 ["Type"]
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R4 R4 K23 ["ScopeType"]
       85 GETTABLEKS                       R4 R4 K24 ["Folder"]
       87 JUMPIFEQ                         R3 R4 ; [+5]
       89 GETUPVAL                         R3 1
       90 LOADK                            R4 K25 ["Sidebar selection is not a folder, cannot drag."]
       91 CALL                             R3 1 0
       92 RETURN                           R0 0
       93 DUPTABLE                         R3 K17 [{"DraggedItems", "SourceZone"}]
       94 SETTABLEKS                       R2 R3 K15 ["DraggedItems"]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R4 R4 K13 ["UiZone"]
       99 GETTABLEKS                       R4 R4 K21 ["Sidebar"]
      101 SETTABLEKS                       R4 R3 K16 ["SourceZone"]
      103 SETTABLEKS                       R3 R0 K20 ["_dragInfo"]
      105 GETUPVAL                         R3 2
      106 GETTABLEKS                       R4 R0 K20 ["_dragInfo"]
      108 GETTABLEKS                       R5 R0 K18 ["_itemsController"]
      110 NAMECALL                         R5 R5 K26 ["getItemsCache"]
      112 CALL                             R5 1 1
      113 MOVE                             R6 R2
      114 CALL                             R3 3 1
      115 LOADB                            R4 1
      116 SETTABLEKS                       R4 R0 K1 ["_dragging"]
      118 GETTABLEKS                       R4 R0 K8 ["_pluginController"]
      120 NAMECALL                         R4 R4 K27 ["getPlugin"]
      122 CALL                             R4 1 1
      123 DUPTABLE                         R6 K33 [{"Sender", "MimeType", "Data", "DragIcon", "HotSpot"}]
      124 LOADK                            R7 K34 ["AssetManager"]
      125 SETTABLEKS                       R7 R6 K28 ["Sender"]
      127 LOADK                            R7 K35 ["text/plain"]
      128 SETTABLEKS                       R7 R6 K29 ["MimeType"]
      130 LOADK                            R7 K36 ["Items"]
      131 SETTABLEKS                       R7 R6 K30 ["Data"]
      133 SETTABLEKS                       R3 R6 K31 ["DragIcon"]
      135 GETIMPORT                        R7 K39 [Vector2.new]
      137 GETUPVAL                         R8 3
      138 GETTABLEKS                       R8 R8 K40 ["IconWidth"]
      140 GETUPVAL                         R9 3
      141 GETTABLEKS                       R9 R9 K40 ["IconWidth"]
      143 CALL                             R7 2 1
      144 SETTABLEKS                       R7 R6 K32 ["HotSpot"]
      146 NAMECALL                         R4 R4 K41 ["StartDrag"]
      148 CALL                             R4 2 0
      149 RETURN                           R0 0

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
       18 GETTABLEKS                       R4 R1 K10 ["Util"]
       20 GETTABLEKS                       R4 R4 K11 ["DoubleClickDetector"]
       22 GETTABLEKS                       R5 R1 K10 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["Signal"]
       26 GETIMPORT                        R6 K5 [require]
       28 GETTABLEKS                       R7 R0 K13 ["Src"]
       30 GETTABLEKS                       R7 R7 K10 ["Util"]
       32 GETTABLEKS                       R7 R7 K14 ["cleanConnections"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Resources"]
       41 GETTABLEKS                       R8 R8 K16 ["Constants"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Src"]
       48 GETTABLEKS                       R9 R9 K10 ["Util"]
       50 GETTABLEKS                       R9 R9 K17 ["createFolderUid"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K13 ["Src"]
       57 GETTABLEKS                       R10 R10 K10 ["Util"]
       59 GETTABLEKS                       R10 R10 K18 ["getDragInfoIcon"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R11 K10 ["Util"]
       68 GETTABLEKS                       R11 R11 K19 ["KeyHoldDetector"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETTABLEKS                       R12 R0 K13 ["Src"]
       75 GETTABLEKS                       R12 R12 K10 ["Util"]
       77 GETTABLEKS                       R12 R12 K20 ["logIfDebug"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K13 ["Src"]
       84 GETTABLEKS                       R13 R13 K15 ["Resources"]
       86 GETTABLEKS                       R13 R13 K21 ["StyleConstants"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K13 ["Src"]
       93 GETTABLEKS                       R14 R14 K22 ["Types"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K13 ["Src"]
      100 GETTABLEKS                       R15 R15 K23 ["Flags"]
      102 GETTABLEKS                       R15 R15 K24 ["getFFlagAmrOrganizationFoundation"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K13 ["Src"]
      109 GETTABLEKS                       R16 R16 K23 ["Flags"]
      111 GETTABLEKS                       R16 R16 K25 ["getFFlagAmrFoundationifyContextMenu"]
      113 CALL                             R15 1 1
      114 LOADK                            R18 K26 ["Input"]
      115 NAMECALL                         R16 R3 K27 ["extend"]
      117 CALL                             R16 2 1
      118 DUPCLOSURE                       R17 K28 [PROTO_6]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R15
      126 SETTABLEKS                       R17 R16 K29 ["new"]
      128 DUPCLOSURE                       R17 K30 [PROTO_7]
      129 CAPTURE                          VAL R16
      130 SETTABLEKS                       R17 R16 K31 ["mock"]
      132 DUPCLOSURE                       R17 K32 [PROTO_8]
      133 CAPTURE                          VAL R6
      134 SETTABLEKS                       R17 R16 K33 ["destroy"]
      136 DUPCLOSURE                       R17 K34 [PROTO_9]
      137 SETTABLEKS                       R17 R16 K35 ["getPlugin"]
      139 DUPCLOSURE                       R17 K36 [PROTO_13]
      140 CAPTURE                          VAL R7
      141 SETTABLEKS                       R17 R16 K37 ["_registerMouseTrackerAsync"]
      143 DUPCLOSURE                       R17 K38 [PROTO_15]
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R17 R16 K39 ["_registerWidgetAsync"]
      147 DUPCLOSURE                       R17 K40 [PROTO_17]
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R17 R16 K41 ["_deregisterWidgetAsync"]
      151 DUPCLOSURE                       R17 K42 [PROTO_18]
      152 SETTABLEKS                       R17 R16 K43 ["_registerMod"]
      154 DUPCLOSURE                       R17 K44 [PROTO_19]
      155 SETTABLEKS                       R17 R16 K45 ["getMousePosition"]
      157 DUPCLOSURE                       R17 K46 [PROTO_20]
      158 SETTABLEKS                       R17 R16 K47 ["_isArrowKey"]
      160 DUPCLOSURE                       R17 K48 [PROTO_21]
      161 CAPTURE                          VAL R13
      162 SETTABLEKS                       R17 R16 K49 ["_handleBrowserArrowInput"]
      164 DUPCLOSURE                       R17 K50 [PROTO_22]
      165 CAPTURE                          VAL R13
      166 SETTABLEKS                       R17 R16 K51 ["handleKeyDown"]
      168 DUPCLOSURE                       R17 K52 [PROTO_23]
      169 SETTABLEKS                       R17 R16 K53 ["handleKeyUp"]
      171 DUPCLOSURE                       R17 K54 [PROTO_24]
      172 SETTABLEKS                       R17 R16 K55 ["_checkBrowserDoubleClick"]
      174 DUPCLOSURE                       R17 K56 [PROTO_25]
      175 SETTABLEKS                       R17 R16 K57 ["_handleBrowserDoubleClick"]
      177 DUPCLOSURE                       R17 K58 [PROTO_26]
      178 SETTABLEKS                       R17 R16 K59 ["_waitForSelectionDoubleClick"]
      180 DUPCLOSURE                       R17 K60 [PROTO_27]
      181 SETTABLEKS                       R17 R16 K61 ["_handleSidebarClick"]
      183 DUPCLOSURE                       R17 K62 [PROTO_28]
      184 CAPTURE                          VAL R13
      185 SETTABLEKS                       R17 R16 K63 ["handleMouse1Click"]
      187 DUPCLOSURE                       R17 K64 [PROTO_29]
      188 CAPTURE                          VAL R13
      189 SETTABLEKS                       R17 R16 K65 ["handleMouse1Down"]
      191 DUPCLOSURE                       R17 K66 [PROTO_30]
      192 CAPTURE                          VAL R13
      193 SETTABLEKS                       R17 R16 K67 ["handleMouse1Up"]
      195 DUPCLOSURE                       R17 K68 [PROTO_31]
      196 CAPTURE                          VAL R13
      197 SETTABLEKS                       R17 R16 K69 ["handleMouse2Click"]
      199 DUPCLOSURE                       R17 K70 [PROTO_32]
      200 SETTABLEKS                       R17 R16 K71 ["isMouse1Down"]
      202 DUPCLOSURE                       R17 K72 [PROTO_33]
      203 SETTABLEKS                       R17 R16 K73 ["getLastZoneClicked"]
      205 DUPCLOSURE                       R17 K74 [PROTO_34]
      206 SETTABLEKS                       R17 R16 K75 ["getDragInfo"]
      208 DUPCLOSURE                       R17 K76 [PROTO_35]
      209 SETTABLEKS                       R17 R16 K77 ["_isValidSidebarDrag"]
      211 DUPCLOSURE                       R17 K78 [PROTO_36]
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R8
      214 SETTABLEKS                       R17 R16 K79 ["_isValidBrowserDrag"]
      216 DUPCLOSURE                       R17 K80 [PROTO_37]
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R11
      220 SETTABLEKS                       R17 R16 K81 ["isValidDragForTarget"]
      222 DUPCLOSURE                       R17 K82 [PROTO_38]
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R12
      227 SETTABLEKS                       R17 R16 K83 ["_updateDrag"]
      229 RETURN                           R16 1
