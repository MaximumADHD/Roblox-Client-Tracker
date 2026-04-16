PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleBrowserArrowInput"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K20 [{"_isMock", "_pluginController", "_layoutController", "_itemsController", "_searchController", "_explorerController", "_pressedKeys", "_lastPressed", "_lastClickMousePosition", "_lastZone", "_dragging", "_doubleClickDetector", "_doubleClickQueued", "_resolvingDoubleClick", "isDoubleClick", "clickDelay", "_keyHoldDetector", "OnDrag", "OnDrop", "OnEnterViewport"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K21 ["PluginController"]
        5 SETTABLEKS                       R3 R2 K1 ["_pluginController"]
        7 GETTABLEKS                       R3 R0 K22 ["LayoutController"]
        9 SETTABLEKS                       R3 R2 K2 ["_layoutController"]
       11 GETTABLEKS                       R3 R0 K23 ["ItemsController"]
       13 SETTABLEKS                       R3 R2 K3 ["_itemsController"]
       15 GETTABLEKS                       R3 R0 K24 ["SearchController"]
       17 SETTABLEKS                       R3 R2 K4 ["_searchController"]
       19 GETTABLEKS                       R3 R0 K25 ["ExplorerController"]
       21 SETTABLEKS                       R3 R2 K5 ["_explorerController"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K6 ["_pressedKeys"]
       27 GETIMPORT                        R3 K29 [Enum.KeyCode.Unknown]
       29 SETTABLEKS                       R3 R2 K7 ["_lastPressed"]
       31 GETIMPORT                        R3 K32 [Vector2.new]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K8 ["_lastClickMousePosition"]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K9 ["_lastZone"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K10 ["_dragging"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K31 ["new"]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K11 ["_doubleClickDetector"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K12 ["_doubleClickQueued"]
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R2 K13 ["_resolvingDoubleClick"]
       54 LOADB                            R3 0
       55 SETTABLEKS                       R3 R2 K14 ["isDoubleClick"]
       57 LOADK                            R3 K33 [0.2]
       58 SETTABLEKS                       R3 R2 K15 ["clickDelay"]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R3 R4 K31 ["new"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R2 K16 ["_keyHoldDetector"]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R3 R4 K31 ["new"]
       69 CALL                             R3 0 1
       70 SETTABLEKS                       R3 R2 K17 ["OnDrag"]
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R3 R4 K31 ["new"]
       75 CALL                             R3 0 1
       76 SETTABLEKS                       R3 R2 K18 ["OnDrop"]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R3 R4 K31 ["new"]
       81 CALL                             R3 0 1
       82 SETTABLEKS                       R3 R2 K19 ["OnEnterViewport"]
       84 GETUPVAL                         R5 3
       85 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       87 MOVE                             R4 R2
       88 GETIMPORT                        R3 K35 [setmetatable]
       90 CALL                             R3 2 0
       91 GETTABLEKS                       R3 R2 K16 ["_keyHoldDetector"]
       93 NEWCLOSURE                       R5 P0
       94 CAPTURE                          VAL R2
       95 NAMECALL                         R3 R3 K36 ["setCallback"]
       97 CALL                             R3 2 0
       98 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_pressedKeys"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_lastClickMousePosition"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_lastZone"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_doubleClickDetector"]
       12 GETTABLEKS                       R1 R0 K4 ["_keyHoldDetector"]
       14 NAMECALL                         R1 R1 K5 ["destroy"]
       16 CALL                             R1 1 0
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["_keyHoldDetector"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        2 NAMECALL                         R1 R1 K1 ["getIsCompact"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K0 ["_layoutController"]
        8 NAMECALL                         R1 R1 K2 ["toggleSidebar"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["_pressedKeys"]
        7 GETIMPORT                        R3 K5 [Enum.KeyCode.MouseLeftButton]
        9 LOADB                            R4 1
       10 SETTABLE                         R4 R2 R3
       11 GETTABLEKS                       R2 R0 K6 ["_mousePosition"]
       13 SETTABLEKS                       R2 R0 K7 ["_lastClickMousePosition"]
       15 GETTABLEKS                       R2 R0 K8 ["_doubleClickDetector"]
       17 NAMECALL                         R2 R2 K9 ["isDoubleClick"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R0 K9 ["isDoubleClick"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K10 ["UiZone"]
       25 GETTABLEKS                       R2 R3 K11 ["Browser"]
       27 JUMPIFNOTEQ                      R1 R2 ; [+19]
       29 GETTABLEKS                       R2 R0 K12 ["_heldShift"]
       31 JUMPIF                           R2 ; [+5]
       32 GETTABLEKS                       R2 R0 K13 ["_itemsController"]
       34 NAMECALL                         R2 R2 K14 ["syncSelectionIndices"]
       36 CALL                             R2 1 0
       37 GETVARARGS                       R4 -1
       38 NAMECALL                         R2 R0 K15 ["_checkBrowserDoubleClick"]
       40 CALL                             R2 -1 0
       41 GETTABLEKS                       R2 R0 K13 ["_itemsController"]
       43 GETVARARGS                       R4 -1
       44 NAMECALL                         R2 R2 K16 ["setLastItemClicked"]
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_resolvingDoubleClick"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K1 ["_lastZone"]
        7 GETTABLEKS                       R2 R0 K2 ["_pressedKeys"]
        9 GETIMPORT                        R3 K6 [Enum.KeyCode.MouseLeftButton]
       11 LOADNIL                          R4
       12 SETTABLE                         R4 R2 R3
       13 GETTABLEKS                       R2 R0 K7 ["_dragging"]
       15 JUMPIFNOT                        R2 ; [+9]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R0 K7 ["_dragging"]
       19 GETTABLEKS                       R2 R0 K8 ["OnDrop"]
       21 NAMECALL                         R2 R2 K9 ["Fire"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K10 ["UiZone"]
       28 GETTABLEKS                       R2 R3 K11 ["Browser"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+27]
       32 GETTABLEKS                       R2 R0 K12 ["_doubleClickQueued"]
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETVARARGS                       R4 -1
       36 NAMECALL                         R2 R0 K13 ["_handleBrowserDoubleClick"]
       38 CALL                             R2 -1 0
       39 RETURN                           R0 0
       40 GETVARARGS                       R4 -1
       41 NAMECALL                         R2 R0 K14 ["_waitForSelectionDoubleClick"]
       43 CALL                             R2 -1 0
       44 GETTABLEKS                       R2 R0 K12 ["_doubleClickQueued"]
       46 JUMPIFNOT                        R2 ; [+1]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R2 R0 K15 ["_itemsController"]
       50 GETTABLEKS                       R4 R0 K16 ["_heldShift"]
       52 GETTABLEKS                       R5 R0 K17 ["_heldCtrl"]
       54 GETVARARGS                       R6 -1
       55 NAMECALL                         R2 R2 K18 ["changeSelection"]
       57 CALL                             R2 -1 0
       58 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_pressedKeys"]
        3 GETIMPORT                        R3 K4 [Enum.KeyCode.MouseRightButton]
        5 LOADB                            R4 1
        6 SETTABLE                         R4 R2 R3
        7 RETURN                           R0 0

PROTO_19:
        0 PREPVARARGS                      2
        1 SETTABLEKS                       R1 R0 K0 ["_lastZone"]
        3 GETTABLEKS                       R2 R0 K1 ["_pressedKeys"]
        5 GETIMPORT                        R3 K5 [Enum.KeyCode.MouseRightButton]
        7 LOADNIL                          R4
        8 SETTABLE                         R4 R2 R3
        9 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_pressedKeys"]
        2 GETIMPORT                        R4 K4 [Enum.KeyCode.MouseLeftButton]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R0 K3 ["_lastClickMousePosition"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 GETTABLEKS                       R4 R0 K3 ["_lastClickMousePosition"]
       10 GETIMPORT                        R5 K2 [Vector2.new]
       12 CALL                             R5 0 1
       13 JUMPIFNOTEQ                      R4 R5 ; [+4]
       15 SETTABLEKS                       R3 R0 K3 ["_lastClickMousePosition"]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R6 R0 K3 ["_lastClickMousePosition"]
       20 SUB                              R5 R3 R6
       21 GETTABLEKS                       R4 R5 K4 ["Magnitude"]
       23 LOADN                            R5 30
       24 JUMPIFNOTLT                      R5 R4 ; [+9]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R0 K5 ["_dragging"]
       29 GETTABLEKS                       R4 R0 K6 ["OnDrag"]
       31 NAMECALL                         R4 R4 K7 ["Fire"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_currentHovered"]
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETTABLEKS                       R4 R0 K0 ["_currentHovered"]
        5 GETTABLEKS                       R3 R4 K1 ["ItemPath"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 DUPTABLE                         R3 K3 [{"Zone", "ItemPath"}]
       11 SETTABLEKS                       R1 R3 K2 ["Zone"]
       13 SETTABLEKS                       R2 R3 K1 ["ItemPath"]
       15 SETTABLEKS                       R3 R0 K0 ["_currentHovered"]
       17 RETURN                           R0 0

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
       28 GETTABLEKS                       R8 R0 K13 ["Src"]
       30 GETTABLEKS                       R7 R8 K14 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R10 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R10 K10 ["Util"]
       39 GETTABLEKS                       R8 R9 K15 ["KeyHoldDetector"]
       41 CALL                             R7 1 1
       42 LOADK                            R10 K16 ["Input"]
       43 NAMECALL                         R8 R3 K17 ["extend"]
       45 CALL                             R8 2 1
       46 DUPCLOSURE                       R9 K18 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R8
       51 SETTABLEKS                       R9 R8 K19 ["new"]
       53 DUPCLOSURE                       R9 K20 [PROTO_2]
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R9 R8 K21 ["mock"]
       57 DUPCLOSURE                       R9 K22 [PROTO_3]
       58 SETTABLEKS                       R9 R8 K23 ["destroy"]
       60 DUPCLOSURE                       R9 K24 [PROTO_4]
       61 SETTABLEKS                       R9 R8 K25 ["getPlugin"]
       63 DUPCLOSURE                       R9 K26 [PROTO_5]
       64 SETTABLEKS                       R9 R8 K27 ["_registerMod"]
       66 DUPCLOSURE                       R9 K28 [PROTO_6]
       67 SETTABLEKS                       R9 R8 K29 ["_isArrowKey"]
       69 DUPCLOSURE                       R9 K30 [PROTO_7]
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R9 R8 K31 ["_handleBrowserArrowInput"]
       73 DUPCLOSURE                       R9 K32 [PROTO_8]
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R9 R8 K33 ["handleKeyDown"]
       77 DUPCLOSURE                       R9 K34 [PROTO_9]
       78 SETTABLEKS                       R9 R8 K35 ["handleKeyUp"]
       80 DUPCLOSURE                       R9 K36 [PROTO_10]
       81 SETTABLEKS                       R9 R8 K37 ["_checkBrowserDoubleClick"]
       83 DUPCLOSURE                       R9 K38 [PROTO_11]
       84 SETTABLEKS                       R9 R8 K39 ["_handleBrowserDoubleClick"]
       86 DUPCLOSURE                       R9 K40 [PROTO_12]
       87 SETTABLEKS                       R9 R8 K41 ["_waitForSelectionDoubleClick"]
       89 DUPCLOSURE                       R9 K42 [PROTO_13]
       90 SETTABLEKS                       R9 R8 K43 ["_handleSidebarClick"]
       92 DUPCLOSURE                       R9 K44 [PROTO_14]
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R9 R8 K45 ["handleMouse1Click"]
       96 DUPCLOSURE                       R9 K46 [PROTO_15]
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R9 R8 K47 ["handleMouse1Down"]
      100 DUPCLOSURE                       R9 K48 [PROTO_16]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R9 R8 K49 ["handleMouse1Up"]
      104 DUPCLOSURE                       R9 K50 [PROTO_17]
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R9 R8 K51 ["handleMouse2Click"]
      108 DUPCLOSURE                       R9 K52 [PROTO_18]
      109 SETTABLEKS                       R9 R8 K53 ["handleMouse2Down"]
      111 DUPCLOSURE                       R9 K54 [PROTO_19]
      112 SETTABLEKS                       R9 R8 K55 ["handleMouse2Up"]
      114 DUPCLOSURE                       R9 K56 [PROTO_20]
      115 SETTABLEKS                       R9 R8 K57 ["isMouse1Down"]
      117 DUPCLOSURE                       R9 K58 [PROTO_21]
      118 SETTABLEKS                       R9 R8 K59 ["updateMousePosition"]
      120 DUPCLOSURE                       R9 K60 [PROTO_22]
      121 SETTABLEKS                       R9 R8 K61 ["setCurrentHovered"]
      123 RETURN                           R8 1
