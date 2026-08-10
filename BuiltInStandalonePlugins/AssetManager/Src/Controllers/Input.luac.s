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
        0 DUPTABLE                         R2 K33 [{[1], ["_pluginController"], ["_layoutController"], ["_itemsController"], ["_searchController"], ["_explorerController"], ["_pressedKeys"], ["_lastPressed"], ["_keyHoldDetector"], ["_lastClickMousePosition"], ["_lastZone"] = , ["_dragging"] = False, ["_dragInfo"] = , ["_isDragInGui"] = True, ["_invalidDragHoverPosition"] = , ["_mouseTrackerInstance"] = , ["_doubleClickDetector"], ["_doubleClickQueued"] = False, ["_resolvingDoubleClick"] = False, ["isDoubleClick"] = False, ["clickDelay"] = 0.2, ["_connections"], ["_threads"], ["_widgetRegistered"] = False, ["OnDrag"], ["OnDrop"], ["OnDragMove"], ["OnEnterViewport"], ["OnMouseMove"]}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K34 ["PluginController"]
        5 SETTABLEKS                       R3 R2 K1 ["_pluginController"]
        7 GETTABLEKS                       R3 R0 K35 ["LayoutController"]
        9 SETTABLEKS                       R3 R2 K2 ["_layoutController"]
       11 GETTABLEKS                       R3 R0 K36 ["ItemsController"]
       13 SETTABLEKS                       R3 R2 K3 ["_itemsController"]
       15 GETTABLEKS                       R3 R0 K37 ["SearchController"]
       17 SETTABLEKS                       R3 R2 K4 ["_searchController"]
       19 GETTABLEKS                       R3 R0 K38 ["ExplorerController"]
       21 SETTABLEKS                       R3 R2 K5 ["_explorerController"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K6 ["_pressedKeys"]
       27 GETIMPORT                        R3 K42 [Enum.KeyCode.Unknown]
       29 SETTABLEKS                       R3 R2 K7 ["_lastPressed"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K43 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
       37 GETIMPORT                        R3 K45 [Vector2.new]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K9 ["_lastClickMousePosition"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K43 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K19 ["_doubleClickDetector"]
       48 NEWTABLE                         R3 0 0
       50 SETTABLEKS                       R3 R2 K25 ["_connections"]
       52 NEWTABLE                         R3 0 0
       54 SETTABLEKS                       R3 R2 K26 ["_threads"]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K43 ["new"]
       59 CALL                             R3 0 1
       60 SETTABLEKS                       R3 R2 K28 ["OnDrag"]
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R3 R3 K43 ["new"]
       65 CALL                             R3 0 1
       66 SETTABLEKS                       R3 R2 K29 ["OnDrop"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K43 ["new"]
       71 CALL                             R3 0 1
       72 SETTABLEKS                       R3 R2 K30 ["OnDragMove"]
       74 GETUPVAL                         R3 2
       75 GETTABLEKS                       R3 R3 K43 ["new"]
       77 CALL                             R3 0 1
       78 SETTABLEKS                       R3 R2 K31 ["OnEnterViewport"]
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R3 R3 K43 ["new"]
       83 CALL                             R3 0 1
       84 SETTABLEKS                       R3 R2 K32 ["OnMouseMove"]
       86 GETUPVAL                         R5 3
       87 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       89 MOVE                             R4 R2
       90 GETIMPORT                        R3 K47 [setmetatable]
       92 CALL                             R3 2 0
       93 GETTABLEKS                       R3 R2 K8 ["_keyHoldDetector"]
       95 NEWCLOSURE                       R5 P0
       96 CAPTURE                          VAL R2
       97 NAMECALL                         R3 R3 K48 ["setCallback"]
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R3 R2 K2 ["_layoutController"]
      102 NAMECALL                         R3 R3 K49 ["getPluginGui"]
      104 CALL                             R3 1 1
      105 GETTABLEKS                       R5 R2 K25 ["_connections"]
      107 GETTABLEKS                       R6 R3 K50 ["PluginDragEntered"]
      109 NEWCLOSURE                       R8 P1
      110 CAPTURE                          UPVAL U4
      111 CAPTURE                          VAL R2
      112 NAMECALL                         R6 R6 K51 ["Connect"]
      114 CALL                             R6 2 -1
      115 FASTCALL                         TABLE_INSERT ; [+2]
      116 GETIMPORT                        R4 K54 [table.insert]
      118 CALL                             R4 -1 0
      119 GETTABLEKS                       R5 R2 K25 ["_connections"]
      121 GETTABLEKS                       R6 R3 K55 ["PluginDragLeft"]
      123 NEWCLOSURE                       R8 P2
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R2
      126 NAMECALL                         R6 R6 K51 ["Connect"]
      128 CALL                             R6 2 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R4 K54 [table.insert]
      132 CALL                             R4 -1 0
      133 GETTABLEKS                       R5 R2 K25 ["_connections"]
      135 GETTABLEKS                       R6 R3 K56 ["PluginDragDropped"]
      137 NEWCLOSURE                       R8 P3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          UPVAL U4
      140 NAMECALL                         R6 R6 K51 ["Connect"]
      142 CALL                             R6 2 -1
      143 FASTCALL                         TABLE_INSERT ; [+2]
      144 GETIMPORT                        R4 K54 [table.insert]
      146 CALL                             R4 -1 0
      147 GETTABLEKS                       R5 R2 K25 ["_connections"]
      149 GETTABLEKS                       R6 R3 K57 ["WindowFocusReleased"]
      151 NEWCLOSURE                       R8 P4
      152 CAPTURE                          VAL R2
      153 NAMECALL                         R6 R6 K51 ["Connect"]
      155 CALL                             R6 2 -1
      156 FASTCALL                         TABLE_INSERT ; [+2]
      157 GETIMPORT                        R4 K54 [table.insert]
      159 CALL                             R4 -1 0
      160 GETTABLEKS                       R5 R2 K25 ["_connections"]
      162 GETTABLEKS                       R6 R2 K2 ["_layoutController"]
      164 GETTABLEKS                       R6 R6 K58 ["OnPluginFrameSet"]
      166 NEWCLOSURE                       R8 P5
      167 CAPTURE                          VAL R2
      168 CAPTURE                          UPVAL U4
      169 NAMECALL                         R6 R6 K51 ["Connect"]
      171 CALL                             R6 2 -1
      172 FASTCALL                         TABLE_INSERT ; [+2]
      173 GETIMPORT                        R4 K54 [table.insert]
      175 CALL                             R4 -1 0
      176 NAMECALL                         R4 R2 K59 ["_registerMouseTrackerAsync"]
      178 CALL                             R4 1 0
      179 NAMECALL                         R4 R2 K60 ["_connectViewportDragEvents"]
      181 CALL                             R4 1 0
      182 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_keyHoldDetector"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["_connections"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["_threads"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETIMPORT                        R6 K6 [task.cancel]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-5]
       20 GETTABLEKS                       R1 R0 K7 ["_mouseTrackerInstance"]
       22 JUMPIFEQKNIL                     R1 ; [+6]
       24 GETTABLEKS                       R1 R0 K7 ["_mouseTrackerInstance"]
       26 NAMECALL                         R1 R1 K8 ["Destroy"]
       28 CALL                             R1 1 0
       29 NAMECALL                         R1 R0 K9 ["_deregisterWidgetAsync"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Drag entered 3D viewport"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["Sender"]
        5 JUMPIFNOTEQKS                    R1 K2 ["AssetManager"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Data"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["_itemsController"]
       14 NAMECALL                         R1 R1 K5 ["getInsertDataForDrag"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 LOADK                            R4 K6 ["StartDragInsertManager"]
       19 DUPTABLE                         R5 K11 [{"Ids", "Types", "Names", "Scope"}]
       20 GETTABLEKS                       R6 R1 K7 ["Ids"]
       22 SETTABLEKS                       R6 R5 K7 ["Ids"]
       24 GETTABLEKS                       R6 R1 K8 ["Types"]
       26 SETTABLEKS                       R6 R5 K8 ["Types"]
       28 GETTABLEKS                       R6 R1 K9 ["Names"]
       30 SETTABLEKS                       R6 R5 K9 ["Names"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K4 ["_itemsController"]
       35 NAMECALL                         R6 R6 K12 ["getCurrentShownScope"]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K10 ["Scope"]
       40 NAMECALL                         R2 R2 K13 ["Invoke"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Drag left 3D viewport"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["StopDragInsertManager"]
        5 DUPTABLE                         R3 K4 [{["ShouldCancel"] = True}]
        6 NAMECALL                         R0 R0 K5 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Drag dropped on 3D viewport"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_itemsController"]
        6 LOADK                            R3 K2 ["drag_insert"]
        7 NAMECALL                         R1 R1 K3 ["setAnalyticsInsertAction"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["_itemsController"]
       13 NAMECALL                         R1 R1 K4 ["sendInsertToAnalytics"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 LOADK                            R3 K5 ["StopDragInsertManager"]
       18 DUPTABLE                         R4 K8 [{["ShouldCancel"] = False}]
       19 NAMECALL                         R1 R1 K9 ["Invoke"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K2 ["_connections"]
        7 GETTABLEKS                       R4 R1 K3 ["ViewportDragEntered"]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NAMECALL                         R4 R4 K4 ["Connect"]
       15 CALL                             R4 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R2 K7 [table.insert]
       19 CALL                             R2 -1 0
       20 GETTABLEKS                       R3 R0 K2 ["_connections"]
       22 GETTABLEKS                       R4 R1 K8 ["ViewportDragLeft"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R4 R4 K4 ["Connect"]
       29 CALL                             R4 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R2 K7 [table.insert]
       33 CALL                             R2 -1 0
       34 GETTABLEKS                       R3 R0 K2 ["_connections"]
       36 GETTABLEKS                       R4 R1 K9 ["ViewportDragDropped"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 NAMECALL                         R4 R4 K4 ["Connect"]
       44 CALL                             R4 2 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R2 K7 [table.insert]
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_mouseTrackerInstance"]
        3 LOADK                            R2 K1 ["RBX_MouseHoverEnabled"]
        4 NAMECALL                         R0 R0 K2 ["GetAttribute"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+8]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["OnMouseMove"]
       11 LOADNIL                          R2
       12 NAMECALL                         R0 R0 K4 ["Fire"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K3 ["OnMouseMove"]
       19 GETUPVAL                         R2 0
       20 NAMECALL                         R2 R2 K5 ["getMousePosition"]
       22 CALL                             R2 1 -1
       23 NAMECALL                         R0 R0 K4 ["Fire"]
       25 CALL                             R0 -1 0
       26 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       35 LOADK                            R2 K10 ["RBX_MouseHoverEnabled"]
       36 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       38 CALL                             R0 2 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R0 R0 K12 ["Connect"]
       43 CALL                             R0 2 0
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K6 ["_mouseTrackerInstance"]
       47 LOADK                            R2 K13 ["RBX_MousePosition"]
       48 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       50 CALL                             R0 2 1
       51 NEWCLOSURE                       R2 P1
       52 CAPTURE                          UPVAL U0
       53 NAMECALL                         R0 R0 K12 ["Connect"]
       55 CALL                             R0 2 0
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K6 ["_mouseTrackerInstance"]
       59 LOADK                            R2 K14 ["RBX_LeftMouseButtonDown"]
       60 NAMECALL                         R0 R0 K11 ["GetAttributeChangedSignal"]
       62 CALL                             R0 2 1
       63 NEWCLOSURE                       R2 P2
       64 CAPTURE                          UPVAL U0
       65 NAMECALL                         R0 R0 K12 ["Connect"]
       67 CALL                             R0 2 0
       68 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["_mouseTrackerInstance"]
        5 LOADK                            R3 K1 ["RBX_MousePosition"]
        6 NAMECALL                         R1 R1 K2 ["GetAttribute"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
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
       22 LOADN                            R3 -1
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
       56 LOADN                            R3 -1
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
       20 GETTABLEKS                       R2 R2 K5 ["Browser"]
       22 JUMPIFNOTEQ                      R1 R2 ; [+11]
       24 GETTABLEKS                       R2 R0 K6 ["_heldShift"]
       26 JUMPIF                           R2 ; [+7]
       27 GETTABLEKS                       R2 R0 K3 ["_itemsController"]
       29 NEWTABLE                         R4 0 0
       31 NAMECALL                         R2 R2 K7 ["setSelection"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["_pressedKeys"]
        2 GETIMPORT                        R4 K4 [Enum.KeyCode.MouseLeftButton]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_dragging"]
        2 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_lastZone"]
        2 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_dragInfo"]
        2 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 SETTABLEKS                       R1 R0 K0 ["_invalidDragHoverPosition"]
        2 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_invalidDragHoverPosition"]
        2 RETURN                           R1 1

PROTO_45:
        0 NAMECALL                         R1 R0 K0 ["getMousePosition"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_dragging"]
        5 JUMPIFNOT                        R2 ; [+10]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K2 ["_invalidDragHoverPosition"]
        9 GETTABLEKS                       R2 R0 K3 ["OnDragMove"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["Fire"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K5 ["_layoutController"]
       18 NAMECALL                         R2 R2 K6 ["isPluginGuiFocused"]
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+7]
       22 GETTABLEKS                       R2 R0 K7 ["_isDragInGui"]
       24 JUMPIFNOT                        R2 ; [+4]
       25 NAMECALL                         R2 R0 K8 ["isMouse1Down"]
       27 CALL                             R2 1 1
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R0 0
       30 GETTABLEKS                       R2 R0 K9 ["_pluginController"]
       32 NAMECALL                         R2 R2 K10 ["getCurrentScope"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R4 R0 K11 ["_lastClickMousePosition"]
       37 SUB                              R3 R1 R4
       38 GETTABLEKS                       R3 R3 K12 ["Magnitude"]
       40 LOADN                            R4 15
       41 JUMPIFNOTLT                      R4 R3 ; [+101]
       43 GETTABLEKS                       R3 R0 K1 ["_dragging"]
       45 JUMPIF                           R3 ; [+97]
       46 GETTABLEKS                       R3 R0 K13 ["_lastZone"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K14 ["UiZone"]
       51 GETTABLEKS                       R4 R4 K15 ["Browser"]
       53 JUMPIFNOTEQ                      R3 R4 ; [+19]
       55 DUPTABLE                         R3 K18 [{"DraggedItems", "SourceZone"}]
       56 GETTABLEKS                       R4 R0 K19 ["_itemsController"]
       58 NAMECALL                         R4 R4 K20 ["getDraggedItems"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K16 ["DraggedItems"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K14 ["UiZone"]
       66 GETTABLEKS                       R4 R4 K15 ["Browser"]
       68 SETTABLEKS                       R4 R3 K17 ["SourceZone"]
       70 SETTABLEKS                       R3 R0 K21 ["_dragInfo"]
       72 JUMP                             ; [+35]
       73 GETTABLEKS                       R3 R0 K13 ["_lastZone"]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K14 ["UiZone"]
       78 GETTABLEKS                       R4 R4 K22 ["Sidebar"]
       80 JUMPIFNOTEQ                      R3 R4 ; [+27]
       82 JUMPIFNOT                        R2 ; [+9]
       83 GETTABLEKS                       R3 R2 K23 ["Type"]
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K24 ["ScopeType"]
       88 GETTABLEKS                       R4 R4 K25 ["Folder"]
       90 JUMPIFEQ                         R3 R4 ; [+5]
       92 GETUPVAL                         R3 1
       93 LOADK                            R4 K26 ["Sidebar selection is not a folder, cannot drag."]
       94 CALL                             R3 1 0
       95 RETURN                           R0 0
       96 DUPTABLE                         R3 K18 [{"DraggedItems", "SourceZone"}]
       97 SETTABLEKS                       R2 R3 K16 ["DraggedItems"]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K14 ["UiZone"]
      102 GETTABLEKS                       R4 R4 K22 ["Sidebar"]
      104 SETTABLEKS                       R4 R3 K17 ["SourceZone"]
      106 SETTABLEKS                       R3 R0 K21 ["_dragInfo"]
      108 GETUPVAL                         R3 2
      109 GETTABLEKS                       R4 R0 K21 ["_dragInfo"]
      111 GETTABLEKS                       R5 R0 K19 ["_itemsController"]
      113 NAMECALL                         R5 R5 K27 ["getItemsCache"]
      115 CALL                             R5 1 1
      116 MOVE                             R6 R2
      117 CALL                             R3 3 1
      118 LOADB                            R4 1
      119 SETTABLEKS                       R4 R0 K1 ["_dragging"]
      121 GETTABLEKS                       R4 R0 K9 ["_pluginController"]
      123 NAMECALL                         R4 R4 K28 ["getPlugin"]
      125 CALL                             R4 1 1
      126 DUPTABLE                         R6 K37 [{["Sender"] = "AssetManager", ["MimeType"] = "text/plain", ["Data"] = "Items", ["DragIcon"], ["HotSpot"]}]
      127 SETTABLEKS                       R3 R6 K35 ["DragIcon"]
      129 GETIMPORT                        R7 K40 [Vector2.new]
      131 GETUPVAL                         R8 3
      132 GETTABLEKS                       R8 R8 K41 ["IconWidth"]
      134 GETUPVAL                         R9 3
      135 GETTABLEKS                       R9 R9 K41 ["IconWidth"]
      137 CALL                             R7 2 1
      138 SETTABLEKS                       R7 R6 K36 ["HotSpot"]
      140 NAMECALL                         R4 R4 K42 ["StartDrag"]
      142 CALL                             R4 2 0
      143 RETURN                           R0 0

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
       96 LOADK                            R16 K23 ["Input"]
       97 NAMECALL                         R14 R3 K24 ["extend"]
       99 CALL                             R14 2 1
      100 DUPCLOSURE                       R15 K25 [PROTO_6]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R11
      106 SETTABLEKS                       R15 R14 K26 ["new"]
      108 DUPCLOSURE                       R15 K27 [PROTO_7]
      109 CAPTURE                          VAL R14
      110 SETTABLEKS                       R15 R14 K28 ["mock"]
      112 DUPCLOSURE                       R15 K29 [PROTO_8]
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R15 R14 K30 ["destroy"]
      116 DUPCLOSURE                       R15 K31 [PROTO_12]
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R15 R14 K32 ["_connectViewportDragEvents"]
      120 DUPCLOSURE                       R15 K33 [PROTO_13]
      121 SETTABLEKS                       R15 R14 K34 ["getPlugin"]
      123 DUPCLOSURE                       R15 K35 [PROTO_18]
      124 CAPTURE                          VAL R7
      125 SETTABLEKS                       R15 R14 K36 ["_registerMouseTrackerAsync"]
      127 DUPCLOSURE                       R15 K37 [PROTO_20]
      128 CAPTURE                          VAL R7
      129 SETTABLEKS                       R15 R14 K38 ["_registerWidgetAsync"]
      131 DUPCLOSURE                       R15 K39 [PROTO_22]
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R15 R14 K40 ["_deregisterWidgetAsync"]
      135 DUPCLOSURE                       R15 K41 [PROTO_23]
      136 SETTABLEKS                       R15 R14 K42 ["_registerMod"]
      138 DUPCLOSURE                       R15 K43 [PROTO_24]
      139 SETTABLEKS                       R15 R14 K44 ["getMousePosition"]
      141 DUPCLOSURE                       R15 K45 [PROTO_25]
      142 SETTABLEKS                       R15 R14 K46 ["_isArrowKey"]
      144 DUPCLOSURE                       R15 K47 [PROTO_26]
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R15 R14 K48 ["_handleBrowserArrowInput"]
      148 DUPCLOSURE                       R15 K49 [PROTO_27]
      149 CAPTURE                          VAL R13
      150 SETTABLEKS                       R15 R14 K50 ["handleKeyDown"]
      152 DUPCLOSURE                       R15 K51 [PROTO_28]
      153 SETTABLEKS                       R15 R14 K52 ["handleKeyUp"]
      155 DUPCLOSURE                       R15 K53 [PROTO_29]
      156 SETTABLEKS                       R15 R14 K54 ["_checkBrowserDoubleClick"]
      158 DUPCLOSURE                       R15 K55 [PROTO_30]
      159 SETTABLEKS                       R15 R14 K56 ["_handleBrowserDoubleClick"]
      161 DUPCLOSURE                       R15 K57 [PROTO_31]
      162 SETTABLEKS                       R15 R14 K58 ["_waitForSelectionDoubleClick"]
      164 DUPCLOSURE                       R15 K59 [PROTO_32]
      165 CAPTURE                          VAL R13
      166 SETTABLEKS                       R15 R14 K60 ["handleMouse1Click"]
      168 DUPCLOSURE                       R15 K61 [PROTO_33]
      169 CAPTURE                          VAL R13
      170 SETTABLEKS                       R15 R14 K62 ["handleMouse1Down"]
      172 DUPCLOSURE                       R15 K63 [PROTO_34]
      173 CAPTURE                          VAL R13
      174 SETTABLEKS                       R15 R14 K64 ["handleMouse1Up"]
      176 DUPCLOSURE                       R15 K65 [PROTO_35]
      177 CAPTURE                          VAL R13
      178 SETTABLEKS                       R15 R14 K66 ["handleMouse2Click"]
      180 DUPCLOSURE                       R15 K67 [PROTO_36]
      181 SETTABLEKS                       R15 R14 K68 ["isMouse1Down"]
      183 DUPCLOSURE                       R15 K69 [PROTO_37]
      184 SETTABLEKS                       R15 R14 K70 ["isDragging"]
      186 DUPCLOSURE                       R15 K71 [PROTO_38]
      187 SETTABLEKS                       R15 R14 K72 ["getLastZoneClicked"]
      189 DUPCLOSURE                       R15 K73 [PROTO_39]
      190 SETTABLEKS                       R15 R14 K74 ["getDragInfo"]
      192 DUPCLOSURE                       R15 K75 [PROTO_40]
      193 SETTABLEKS                       R15 R14 K76 ["_isValidSidebarDrag"]
      195 DUPCLOSURE                       R15 K77 [PROTO_41]
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R8
      198 SETTABLEKS                       R15 R14 K78 ["_isValidBrowserDrag"]
      200 DUPCLOSURE                       R15 K79 [PROTO_42]
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R11
      204 SETTABLEKS                       R15 R14 K80 ["isValidDragForTarget"]
      206 DUPCLOSURE                       R15 K81 [PROTO_43]
      207 SETTABLEKS                       R15 R14 K82 ["setInvalidDragHoverPosition"]
      209 DUPCLOSURE                       R15 K83 [PROTO_44]
      210 SETTABLEKS                       R15 R14 K84 ["getInvalidDragHoverPosition"]
      212 DUPCLOSURE                       R15 K85 [PROTO_45]
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R12
      217 SETTABLEKS                       R15 R14 K86 ["_updateDrag"]
      219 RETURN                           R14 1
