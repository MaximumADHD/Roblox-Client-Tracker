PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["_handleBrowserArrowInput"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K20 [{"_isMock", "_pluginController", "_layoutController", "_itemsController", "_searchController", "_explorerController", "_pressedKeys", "_lastPressed", "_lastClickMousePosition", "_lastZone", "_isDragging", "_doubleClickDetector", "_doubleClickQueued", "_resolvingDoubleClick", "isDoubleClick", "clickDelay", "_keyHoldDetector", "OnDrag", "OnDrop", "OnEnterViewport"}]
  SETTABLEKS R1 R2 K0 ["_isMock"]
  GETTABLEKS R3 R0 K21 ["PluginController"]
  SETTABLEKS R3 R2 K1 ["_pluginController"]
  GETTABLEKS R3 R0 K22 ["LayoutController"]
  SETTABLEKS R3 R2 K2 ["_layoutController"]
  GETTABLEKS R3 R0 K23 ["ItemsController"]
  SETTABLEKS R3 R2 K3 ["_itemsController"]
  GETTABLEKS R3 R0 K24 ["SearchController"]
  SETTABLEKS R3 R2 K4 ["_searchController"]
  GETTABLEKS R3 R0 K25 ["ExplorerController"]
  SETTABLEKS R3 R2 K5 ["_explorerController"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["_pressedKeys"]
  GETIMPORT R3 K29 [Enum.KeyCode.Unknown]
  SETTABLEKS R3 R2 K7 ["_lastPressed"]
  GETIMPORT R3 K32 [Vector2.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K8 ["_lastClickMousePosition"]
  LOADNIL R3
  SETTABLEKS R3 R2 K9 ["_lastZone"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["_isDragging"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K31 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K11 ["_doubleClickDetector"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["_doubleClickQueued"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["_resolvingDoubleClick"]
  LOADB R3 0
  SETTABLEKS R3 R2 K14 ["isDoubleClick"]
  LOADK R3 K33 [0.2]
  SETTABLEKS R3 R2 K15 ["clickDelay"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K31 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K16 ["_keyHoldDetector"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K31 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K17 ["OnDrag"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K31 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K18 ["OnDrop"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K31 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K19 ["OnEnterViewport"]
  GETUPVAL R5 3
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K35 [setmetatable]
  CALL R3 2 0
  GETTABLEKS R3 R2 K16 ["_keyHoldDetector"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NAMECALL R3 R3 K36 ["setCallback"]
  CALL R3 2 0
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_pressedKeys"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_lastClickMousePosition"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_lastZone"]
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_doubleClickDetector"]
  GETTABLEKS R1 R0 K4 ["_keyHoldDetector"]
  NAMECALL R1 R1 K5 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_keyHoldDetector"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_pluginController"]
  NAMECALL R1 R1 K1 ["getPlugin"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K4 [Enum.KeyCode.LeftShift]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+5]
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K6 [Enum.KeyCode.RightShift]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K7 ["_heldShift"]
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K9 [Enum.KeyCode.LeftControl]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+17]
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K11 [Enum.KeyCode.RightControl]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+11]
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K13 [Enum.KeyCode.LeftMeta]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+5]
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K15 [Enum.KeyCode.RightMeta]
  GETTABLE R1 R2 R3
  SETTABLEKS R1 R0 K16 ["_heldCtrl"]
  RETURN R0 0

PROTO_6:
  LOADB R2 1
  GETIMPORT R3 K3 [Enum.KeyCode.Up]
  JUMPIFEQ R1 R3 [+17]
  LOADB R2 1
  GETIMPORT R3 K5 [Enum.KeyCode.Down]
  JUMPIFEQ R1 R3 [+12]
  LOADB R2 1
  GETIMPORT R3 K7 [Enum.KeyCode.Left]
  JUMPIFEQ R1 R3 [+7]
  GETIMPORT R3 K9 [Enum.KeyCode.Right]
  JUMPIFEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  GETTABLEKS R4 R0 K0 ["_layoutController"]
  NAMECALL R4 R4 K1 ["getBrowserLayout"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K2 ["ViewType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["ViewType"]
  GETTABLEKS R4 R5 K3 ["Grid"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  LOADN R3 0
  JUMPIFNOT R2 [+34]
  GETIMPORT R4 K7 [Enum.KeyCode.Left]
  JUMPIFNOTEQ R1 R4 [+3]
  LOADN R3 255
  JUMP [+39]
  GETIMPORT R4 K9 [Enum.KeyCode.Right]
  JUMPIFNOTEQ R1 R4 [+3]
  LOADN R3 1
  JUMP [+33]
  GETIMPORT R4 K11 [Enum.KeyCode.Up]
  JUMPIFNOTEQ R1 R4 [+8]
  GETTABLEKS R4 R0 K0 ["_layoutController"]
  NAMECALL R4 R4 K12 ["getGridCellsPerRow"]
  CALL R4 1 1
  MINUS R3 R4
  JUMP [+22]
  GETIMPORT R4 K14 [Enum.KeyCode.Down]
  JUMPIFNOTEQ R1 R4 [+19]
  GETTABLEKS R4 R0 K0 ["_layoutController"]
  NAMECALL R4 R4 K12 ["getGridCellsPerRow"]
  CALL R4 1 1
  MOVE R3 R4
  JUMP [+11]
  GETIMPORT R4 K11 [Enum.KeyCode.Up]
  JUMPIFNOTEQ R1 R4 [+3]
  LOADN R3 255
  JUMP [+5]
  GETIMPORT R4 K14 [Enum.KeyCode.Down]
  JUMPIFNOTEQ R1 R4 [+2]
  LOADN R3 1
  GETTABLEKS R4 R0 K15 ["_itemsController"]
  GETTABLEKS R6 R0 K16 ["_heldShift"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R0 K17 ["_heldCtrl"]
  MOVE R7 R3
  NAMECALL R4 R4 K18 ["moveSelection"]
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  LOADB R3 1
  SETTABLE R3 R2 R1
  NAMECALL R2 R0 K1 ["_registerMod"]
  CALL R2 1 0
  GETIMPORT R2 K5 [Enum.KeyCode.Tab]
  JUMPIFNOTEQ R1 R2 [+7]
  GETTABLEKS R2 R0 K6 ["_layoutController"]
  NAMECALL R2 R2 K7 ["toggleSidebar"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K8 ["_lastZone"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["UiZone"]
  GETTABLEKS R3 R4 K10 ["Browser"]
  JUMPIFNOTEQ R2 R3 [+16]
  MOVE R4 R1
  NAMECALL R2 R0 K11 ["_isArrowKey"]
  CALL R2 2 1
  JUMPIFNOT R2 [+10]
  MOVE R4 R1
  NAMECALL R2 R0 K12 ["_handleBrowserArrowInput"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K13 ["_keyHoldDetector"]
  MOVE R4 R1
  NAMECALL R2 R2 K14 ["keyPressed"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  NAMECALL R2 R0 K1 ["_registerMod"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["_keyHoldDetector"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["keyReleased"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+21]
  GETTABLEKS R3 R0 K0 ["_itemsController"]
  NAMECALL R3 R3 K1 ["getRenderItems"]
  CALL R3 1 1
  GETTABLE R2 R3 R1
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K2 ["getSelection"]
  CALL R4 1 1
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+30]
  GETTABLEKS R3 R0 K3 ["isDoubleClick"]
  JUMPIFNOT R3 [+27]
  LOADB R3 1
  SETTABLEKS R3 R0 K4 ["_doubleClickQueued"]
  RETURN R0 0
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K1 ["getRenderItems"]
  CALL R4 1 1
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K5 ["AssetId"]
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K2 ["getSelection"]
  CALL R4 1 1
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+7]
  GETTABLEKS R3 R0 K3 ["isDoubleClick"]
  JUMPIFNOT R3 [+4]
  LOADB R3 1
  SETTABLEKS R3 R0 K4 ["_doubleClickQueued"]
  RETURN R0 0
  RETURN R0 0

PROTO_11:
  LOADB R2 1
  SETTABLEKS R2 R0 K0 ["_resolvingDoubleClick"]
  GETTABLEKS R2 R0 K1 ["_itemsController"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["handleDoubleClick"]
  CALL R2 2 0
  GETIMPORT R2 K5 [task.wait]
  GETTABLEKS R3 R0 K6 ["clickDelay"]
  CALL R2 1 0
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["_resolvingDoubleClick"]
  LOADB R2 0
  SETTABLEKS R2 R0 K7 ["_doubleClickQueued"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+19]
  GETTABLEKS R3 R0 K0 ["_itemsController"]
  NAMECALL R3 R3 K1 ["getRenderItems"]
  CALL R3 1 1
  GETTABLE R2 R3 R1
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K2 ["getSelection"]
  CALL R4 1 1
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+26]
  GETIMPORT R3 K5 [task.wait]
  GETTABLEKS R4 R0 K6 ["clickDelay"]
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K1 ["getRenderItems"]
  CALL R4 1 1
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K7 ["AssetId"]
  GETTABLEKS R4 R0 K0 ["_itemsController"]
  NAMECALL R4 R4 K2 ["getSelection"]
  CALL R4 1 1
  GETTABLE R3 R4 R2
  JUMPIFNOT R3 [+5]
  GETIMPORT R3 K5 [task.wait]
  GETTABLEKS R4 R0 K6 ["clickDelay"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["_layoutController"]
  NAMECALL R1 R1 K1 ["getIsCompact"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_layoutController"]
  NAMECALL R1 R1 K2 ["toggleSidebar"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  PREPVARARGS 2
  SETTABLEKS R1 R0 K0 ["_lastZone"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["UiZone"]
  GETTABLEKS R2 R3 K2 ["Filter"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETTABLEKS R2 R0 K3 ["_itemsController"]
  GETVARARGS R4 -1
  NAMECALL R2 R2 K4 ["toggleFilter"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["UiZone"]
  GETTABLEKS R2 R3 K5 ["Explorer"]
  JUMPIFNOTEQ R1 R2 [+5]
  GETVARARGS R4 -1
  NAMECALL R2 R0 K6 ["_handleExplorerClick"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_15:
  PREPVARARGS 2
  GETTABLEKS R2 R0 K0 ["_resolvingDoubleClick"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_pressedKeys"]
  GETIMPORT R3 K5 [Enum.KeyCode.MouseLeftButton]
  LOADB R4 1
  SETTABLE R4 R2 R3
  GETTABLEKS R2 R0 K6 ["_mousePosition"]
  SETTABLEKS R2 R0 K7 ["_lastClickMousePosition"]
  GETTABLEKS R2 R0 K8 ["_doubleClickDetector"]
  NAMECALL R2 R2 K9 ["isDoubleClick"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K9 ["isDoubleClick"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["UiZone"]
  GETTABLEKS R2 R3 K11 ["Browser"]
  JUMPIFNOTEQ R1 R2 [+19]
  GETTABLEKS R2 R0 K12 ["_heldShift"]
  JUMPIF R2 [+5]
  GETTABLEKS R2 R0 K13 ["_itemsController"]
  NAMECALL R2 R2 K14 ["syncSelectionIndices"]
  CALL R2 1 0
  GETVARARGS R4 -1
  NAMECALL R2 R0 K15 ["_checkBrowserDoubleClick"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K13 ["_itemsController"]
  GETVARARGS R4 -1
  NAMECALL R2 R2 K16 ["setLastItemClicked"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  PREPVARARGS 2
  GETTABLEKS R2 R0 K0 ["_resolvingDoubleClick"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  SETTABLEKS R1 R0 K1 ["_lastZone"]
  GETTABLEKS R2 R0 K2 ["_pressedKeys"]
  GETIMPORT R3 K6 [Enum.KeyCode.MouseLeftButton]
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETTABLEKS R2 R0 K7 ["_isDragging"]
  JUMPIFNOT R2 [+4]
  LOADB R2 0
  SETTABLEKS R2 R0 K7 ["_isDragging"]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["UiZone"]
  GETTABLEKS R2 R3 K9 ["Browser"]
  JUMPIFNOTEQ R1 R2 [+27]
  GETTABLEKS R2 R0 K10 ["_doubleClickQueued"]
  JUMPIFNOT R2 [+5]
  GETVARARGS R4 -1
  NAMECALL R2 R0 K11 ["_handleBrowserDoubleClick"]
  CALL R2 -1 0
  RETURN R0 0
  GETVARARGS R4 -1
  NAMECALL R2 R0 K12 ["_waitForSelectionDoubleClick"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K10 ["_doubleClickQueued"]
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K13 ["_itemsController"]
  GETTABLEKS R4 R0 K14 ["_heldShift"]
  GETTABLEKS R5 R0 K15 ["_heldCtrl"]
  GETVARARGS R6 -1
  NAMECALL R2 R2 K16 ["changeSelection"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_17:
  PREPVARARGS 2
  SETTABLEKS R1 R0 K0 ["_lastZone"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["UiZone"]
  GETTABLEKS R2 R3 K2 ["Browser"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETTABLEKS R2 R0 K3 ["_itemsController"]
  GETVARARGS R4 -1
  NAMECALL R2 R2 K4 ["handleRightClick"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  PREPVARARGS 2
  GETTABLEKS R2 R0 K0 ["_pressedKeys"]
  GETIMPORT R3 K4 [Enum.KeyCode.MouseRightButton]
  LOADB R4 1
  SETTABLE R4 R2 R3
  RETURN R0 0

PROTO_19:
  PREPVARARGS 2
  SETTABLEKS R1 R0 K0 ["_lastZone"]
  GETTABLEKS R2 R0 K1 ["_pressedKeys"]
  GETIMPORT R3 K5 [Enum.KeyCode.MouseRightButton]
  LOADNIL R4
  SETTABLE R4 R2 R3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["DoubleClickDetector"]
  GETTABLEKS R6 R1 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["Signal"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K15 ["KeyHoldDetector"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K17 ["getFFlagAmrUpdatedItemsCache"]
  CALL R8 1 1
  LOADK R11 K18 ["Input"]
  NAMECALL R9 R3 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K21 ["new"]
  DUPCLOSURE R10 K22 [PROTO_2]
  CAPTURE VAL R9
  SETTABLEKS R10 R9 K23 ["mock"]
  DUPCLOSURE R10 K24 [PROTO_3]
  SETTABLEKS R10 R9 K25 ["destroy"]
  DUPCLOSURE R10 K26 [PROTO_4]
  SETTABLEKS R10 R9 K27 ["getPlugin"]
  DUPCLOSURE R10 K28 [PROTO_5]
  SETTABLEKS R10 R9 K29 ["_registerMod"]
  DUPCLOSURE R10 K30 [PROTO_6]
  SETTABLEKS R10 R9 K31 ["_isArrowKey"]
  DUPCLOSURE R10 K32 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K33 ["_handleBrowserArrowInput"]
  DUPCLOSURE R10 K34 [PROTO_8]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K35 ["handleKeyDown"]
  DUPCLOSURE R10 K36 [PROTO_9]
  SETTABLEKS R10 R9 K37 ["handleKeyUp"]
  DUPCLOSURE R10 K38 [PROTO_10]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K39 ["_checkBrowserDoubleClick"]
  DUPCLOSURE R10 K40 [PROTO_11]
  SETTABLEKS R10 R9 K41 ["_handleBrowserDoubleClick"]
  DUPCLOSURE R10 K42 [PROTO_12]
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K43 ["_waitForSelectionDoubleClick"]
  DUPCLOSURE R10 K44 [PROTO_13]
  SETTABLEKS R10 R9 K45 ["_handleExplorerClick"]
  DUPCLOSURE R10 K46 [PROTO_14]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K47 ["handleMouse1Click"]
  DUPCLOSURE R10 K48 [PROTO_15]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K49 ["handleMouse1Down"]
  DUPCLOSURE R10 K50 [PROTO_16]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K51 ["handleMouse1Up"]
  DUPCLOSURE R10 K52 [PROTO_17]
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K53 ["handleMouse2Click"]
  DUPCLOSURE R10 K54 [PROTO_18]
  SETTABLEKS R10 R9 K55 ["handleMouse2Down"]
  DUPCLOSURE R10 K56 [PROTO_19]
  SETTABLEKS R10 R9 K57 ["handleMouse2Up"]
  RETURN R9 1
