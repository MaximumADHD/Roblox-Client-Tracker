PROTO_0:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R0 K2 ["_boundsChangedTracker"]
        5 NAMECALL                         R4 R4 K3 ["uninstall"]
        7 CALL                             R4 1 0
        8 DUPTABLE                         R5 K8 [{"_keyForcingStateTransition", "_dragInfo", "_draggerToolModel", "_freeformDragger"}]
        9 SETTABLEKS                       R2 R5 K4 ["_keyForcingStateTransition"]
       11 SETTABLEKS                       R1 R5 K5 ["_dragInfo"]
       13 SETTABLEKS                       R0 R5 K6 ["_draggerToolModel"]
       15 NAMECALL                         R6 R0 K9 ["getSchema"]
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R6 R6 K10 ["FreeformDragger"]
       20 GETTABLEKS                       R6 R6 K11 ["new"]
       22 GETTABLEKS                       R7 R0 K12 ["_draggerContext"]
       24 MOVE                             R8 R0
       25 MOVE                             R9 R1
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K7 ["_freeformDragger"]
       29 GETUPVAL                         R6 0
       30 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       32 GETIMPORT                        R4 K14 [setmetatable]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R6 K1 [tick]
       37 CALL                             R6 0 1
       38 SUB                              R5 R6 R3
       39 MOVE                             R8 R5
       40 NAMECALL                         R6 R0 K15 ["_analyticsRecordFreeformDragBegin"]
       42 CALL                             R6 2 0
       43 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_updateFreeformSelectionDrag"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_keyForcingStateTransition"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R3 R0 K1 ["_keyForcingStateTransition"]
        8 NAMECALL                         R1 R0 K2 ["processKeyDown"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
        4 NEWTABLE                         R2 0 2
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 SETLIST                          R2 R3 2 [1]
       10 NAMECALL                         R3 R1 K2 ["isAltKeyDown"]
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETUPVAL                         R5 2
       15 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K5 [table.insert]
       20 CALL                             R3 2 0
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R5 3
       23 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       25 MOVE                             R4 R2
       26 GETIMPORT                        R3 K5 [table.insert]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K6 ["addGridSnap"]
       32 MOVE                             R4 R2
       33 MOVE                             R5 R1
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K7 ["addHelp"]
       38 MOVE                             R4 R2
       39 CALL                             R3 1 0
       40 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getClosedHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 GETTABLEKS                       R1 R0 K3 ["_freeformDragger"]
       11 NAMECALL                         R1 R1 K4 ["render"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       16 GETTABLEKS                       R2 R2 K5 ["_draggerContext"]
       18 LOADK                            R4 K6 ["HotkeyUsageHidden"]
       19 NAMECALL                         R2 R2 K7 ["getSetting"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+1]
       23 RETURN                           R1 1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K8 ["createFragment"]
       27 DUPTABLE                         R3 K11 [{"DraggerElements", "HotkeyUsageInfo"}]
       28 SETTABLEKS                       R1 R3 K9 ["DraggerElements"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K12 ["createElement"]
       33 GETUPVAL                         R5 2
       34 DUPTABLE                         R6 K15 [{"DraggerContext", "HotkeyList"}]
       35 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       37 GETTABLEKS                       R7 R7 K5 ["_draggerContext"]
       39 SETTABLEKS                       R7 R6 K13 ["DraggerContext"]
       41 NAMECALL                         R7 R0 K16 ["_getHotkeyList"]
       43 CALL                             R7 1 1
       44 SETTABLEKS                       R7 R6 K14 ["HotkeyList"]
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K10 ["HotkeyUsageInfo"]
       49 CALL                             R2 1 -1
       50 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_freeformDragger"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
        7 NAMECALL                         R1 R1 K3 ["_updateSelectionInfo"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
       12 NAMECALL                         R1 R1 K4 ["getSchema"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R1 R1 K5 ["FreeformDragger"]
       17 GETTABLEKS                       R1 R1 K6 ["new"]
       19 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       21 GETTABLEKS                       R2 R2 K7 ["_draggerContext"]
       23 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
       25 GETTABLEKS                       R4 R0 K8 ["_dragInfo"]
       27 CALL                             R1 3 1
       28 SETTABLEKS                       R1 R0 K0 ["_freeformDragger"]
       30 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Mouse should already be down while dragging parts."]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_updateFreeformSelectionDrag"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["_endFreeformSelectionDrag"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.R]
        2 JUMPIFNOTEQ                      R1 R2 ; [+19]
        4 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
        6 GETTABLEKS                       R2 R2 K5 ["_sessionAnalytics"]
        8 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       10 GETTABLEKS                       R4 R4 K5 ["_sessionAnalytics"]
       12 GETTABLEKS                       R4 R4 K7 ["dragRotates"]
       14 ADDK                             R3 R4 K6 [1]
       15 SETTABLEKS                       R3 R2 K7 ["dragRotates"]
       17 LOADK                            R4 K8 [{0, 1, 0}]
       18 NAMECALL                         R2 R0 K9 ["_tiltRotateFreeformSelectionDrag"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K11 [Enum.KeyCode.T]
       24 JUMPIFNOTEQ                      R1 R2 ; [+19]
       26 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       28 GETTABLEKS                       R2 R2 K5 ["_sessionAnalytics"]
       30 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       32 GETTABLEKS                       R4 R4 K5 ["_sessionAnalytics"]
       34 GETTABLEKS                       R4 R4 K12 ["dragTilts"]
       36 ADDK                             R3 R4 K6 [1]
       37 SETTABLEKS                       R3 R2 K12 ["dragTilts"]
       39 LOADK                            R4 K13 [{1, 0, 0}]
       40 NAMECALL                         R2 R0 K9 ["_tiltRotateFreeformSelectionDrag"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K15 [Enum.KeyCode.H]
       46 JUMPIFNOTEQ                      R1 R2 ; [+20]
       48 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       50 GETTABLEKS                       R2 R2 K16 ["_draggerContext"]
       52 LOADK                            R5 K17 ["HotkeyUsageHidden"]
       53 LOADK                            R9 K17 ["HotkeyUsageHidden"]
       54 NAMECALL                         R7 R2 K18 ["getSetting"]
       56 CALL                             R7 2 1
       57 NOT                              R6 R7
       58 NAMECALL                         R3 R2 K19 ["setSetting"]
       60 CALL                             R3 3 0
       61 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       63 NAMECALL                         R3 R3 K20 ["_scheduleRender"]
       65 CALL                             R3 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R3 0
       68 GETTABLE                         R2 R3 R1
       69 JUMPIFNOT                        R2 ; [+8]
       70 NAMECALL                         R2 R0 K21 ["_updateFreeformSelectionDrag"]
       72 CALL                             R2 1 0
       73 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       75 NAMECALL                         R2 R2 K20 ["_scheduleRender"]
       77 CALL                             R2 1 0
       78 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+8]
        3 NAMECALL                         R2 R0 K0 ["_updateFreeformSelectionDrag"]
        5 CALL                             R2 1 0
        6 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
        8 NAMECALL                         R2 R2 K2 ["_scheduleRender"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_freeformDragger"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["rotate"]
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K2 ["_updateFreeformSelectionDrag"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K3 ["_draggerToolModel"]
       11 NAMECALL                         R2 R2 K4 ["_scheduleRender"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_freeformDragger"]
        2 NAMECALL                         R1 R1 K1 ["update"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_freeformDragger"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
        7 GETTABLEKS                       R2 R2 K3 ["_boundsChangedTracker"]
        9 NAMECALL                         R2 R2 K4 ["install"]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K5 ["_updateSelectionInfo"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["Ready"]
       23 NAMECALL                         R2 R2 K7 ["transitionToState"]
       25 CALL                             R2 2 0
       26 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       28 NAMECALL                         R2 R2 K8 ["getSchema"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R2 R2 K9 ["addUndoWaypoint"]
       33 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
       35 GETTABLEKS                       R3 R3 K10 ["_draggerContext"]
       37 LOADK                            R4 K11 ["End Freeform Drag"]
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       41 NAMECALL                         R2 R2 K8 ["getSchema"]
       43 CALL                             R2 1 1
       44 GETTABLEKS                       R2 R2 K12 ["setActivePoint"]
       46 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
       48 GETTABLEKS                       R3 R3 K10 ["_draggerContext"]
       50 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
       52 GETTABLEKS                       R4 R4 K13 ["_selectionInfo"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R4 K7 ["HotkeyUsageInfo"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Implementation"]
       27 GETTABLEKS                       R5 R5 K9 ["DraggerStateType"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Utility"]
       34 GETTABLEKS                       R6 R6 K11 ["StandardCursor"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Utility"]
       41 GETTABLEKS                       R7 R7 K12 ["HotkeyHelpBuilder"]
       43 CALL                             R6 1 1
       44 NEWTABLE                         R7 32 0
       46 SETTABLEKS                       R7 R7 K13 ["__index"]
       48 DUPCLOSURE                       R8 K14 [PROTO_0]
       49 CAPTURE                          VAL R7
       50 SETTABLEKS                       R8 R7 K15 ["new"]
       52 DUPCLOSURE                       R8 K16 [PROTO_1]
       53 SETTABLEKS                       R8 R7 K17 ["enter"]
       55 DUPCLOSURE                       R8 K18 [PROTO_2]
       56 SETTABLEKS                       R8 R7 K19 ["leave"]
       58 GETIMPORT                        R8 K22 [table.freeze]
       60 DUPTABLE                         R9 K27 [{["Hotkey"] = "T", ["LabelLocEntry"] = "DragTilt"}]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K22 [table.freeze]
       64 DUPTABLE                         R10 K30 [{["Hotkey"] = "R", ["LabelLocEntry"] = "DragRotate"}]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K22 [table.freeze]
       68 DUPTABLE                         R11 K33 [{["Hotkey"] = "⬇Alt", ["LabelLocEntry"] = "HoldOrientation"}]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K22 [table.freeze]
       72 DUPTABLE                         R12 K36 [{["Hotkey"] = "⬆Alt", ["LabelLocEntry"] = "UnholdOrientation"}]
       73 CALL                             R11 1 1
       74 DUPCLOSURE                       R12 K37 [PROTO_3]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R12 R7 K38 ["_getHotkeyList"]
       82 DUPCLOSURE                       R12 K39 [PROTO_4]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R12 R7 K40 ["render"]
       88 DUPCLOSURE                       R12 K41 [PROTO_5]
       89 SETTABLEKS                       R12 R7 K42 ["processSelectionChanged"]
       91 DUPCLOSURE                       R12 K43 [PROTO_6]
       92 SETTABLEKS                       R12 R7 K44 ["processMouseDown"]
       94 DUPCLOSURE                       R12 K45 [PROTO_7]
       95 SETTABLEKS                       R12 R7 K46 ["processViewChanged"]
       97 DUPCLOSURE                       R12 K47 [PROTO_8]
       98 SETTABLEKS                       R12 R7 K48 ["processMouseUp"]
      100 DUPCLOSURE                       R12 K49 [PROTO_9]
      101 SETTABLEKS                       R12 R7 K50 ["processMouseEnter"]
      103 DUPCLOSURE                       R12 K51 [PROTO_10]
      104 SETTABLEKS                       R12 R7 K52 ["processMouseLeave"]
      106 GETIMPORT                        R12 K22 [table.freeze]
      108 NEWTABLE                         R13 8 0
      110 GETIMPORT                        R14 K56 [Enum.KeyCode.RightShift]
      112 LOADB                            R15 1
      113 SETTABLE                         R15 R13 R14
      114 GETIMPORT                        R14 K58 [Enum.KeyCode.LeftShift]
      116 LOADB                            R15 1
      117 SETTABLE                         R15 R13 R14
      118 GETIMPORT                        R14 K60 [Enum.KeyCode.RightControl]
      120 LOADB                            R15 1
      121 SETTABLE                         R15 R13 R14
      122 GETIMPORT                        R14 K62 [Enum.KeyCode.LeftControl]
      124 LOADB                            R15 1
      125 SETTABLE                         R15 R13 R14
      126 GETIMPORT                        R14 K64 [Enum.KeyCode.RightAlt]
      128 LOADB                            R15 1
      129 SETTABLE                         R15 R13 R14
      130 GETIMPORT                        R14 K66 [Enum.KeyCode.LeftAlt]
      132 LOADB                            R15 1
      133 SETTABLE                         R15 R13 R14
      134 CALL                             R12 1 1
      135 DUPCLOSURE                       R13 K67 [PROTO_11]
      136 CAPTURE                          VAL R12
      137 SETTABLEKS                       R13 R7 K68 ["processKeyDown"]
      139 DUPCLOSURE                       R13 K69 [PROTO_12]
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R13 R7 K70 ["processKeyUp"]
      143 DUPCLOSURE                       R13 K71 [PROTO_13]
      144 SETTABLEKS                       R13 R7 K72 ["_tiltRotateFreeformSelectionDrag"]
      146 DUPCLOSURE                       R13 K73 [PROTO_14]
      147 SETTABLEKS                       R13 R7 K74 ["_updateFreeformSelectionDrag"]
      149 DUPCLOSURE                       R13 K75 [PROTO_15]
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R13 R7 K76 ["_endFreeformSelectionDrag"]
      153 RETURN                           R7 1
