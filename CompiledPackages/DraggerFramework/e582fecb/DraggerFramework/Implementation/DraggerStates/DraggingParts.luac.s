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
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+42]
       12 GETTABLEKS                       R1 R0 K3 ["_freeformDragger"]
       14 NAMECALL                         R1 R1 K4 ["render"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       19 GETTABLEKS                       R2 R2 K5 ["_draggerContext"]
       21 LOADK                            R4 K6 ["HotkeyUsageHidden"]
       22 NAMECALL                         R2 R2 K7 ["getSetting"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+1]
       26 RETURN                           R1 1
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K8 ["createFragment"]
       30 DUPTABLE                         R3 K11 [{"DraggerElements", "HotkeyUsageInfo"}]
       31 SETTABLEKS                       R1 R3 K9 ["DraggerElements"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K12 ["createElement"]
       36 GETUPVAL                         R5 3
       37 DUPTABLE                         R6 K15 [{"DraggerContext", "HotkeyList"}]
       38 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       40 GETTABLEKS                       R7 R7 K5 ["_draggerContext"]
       42 SETTABLEKS                       R7 R6 K13 ["DraggerContext"]
       44 NAMECALL                         R7 R0 K16 ["_getHotkeyList"]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K14 ["HotkeyList"]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K10 ["HotkeyUsageInfo"]
       52 CALL                             R2 1 -1
       53 RETURN                           R2 -1
       54 GETTABLEKS                       R1 R0 K3 ["_freeformDragger"]
       56 NAMECALL                         R1 R1 K4 ["render"]
       58 CALL                             R1 1 -1
       59 RETURN                           R1 -1

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
       44 GETUPVAL                         R2 0
       45 CALL                             R2 0 1
       46 JUMPIFNOT                        R2 ; [+23]
       47 GETIMPORT                        R2 K15 [Enum.KeyCode.H]
       49 JUMPIFNOTEQ                      R1 R2 ; [+20]
       51 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       53 GETTABLEKS                       R2 R2 K16 ["_draggerContext"]
       55 LOADK                            R5 K17 ["HotkeyUsageHidden"]
       56 LOADK                            R9 K17 ["HotkeyUsageHidden"]
       57 NAMECALL                         R7 R2 K18 ["getSetting"]
       59 CALL                             R7 2 1
       60 NOT                              R6 R7
       61 NAMECALL                         R3 R2 K19 ["setSetting"]
       63 CALL                             R3 3 0
       64 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       66 NAMECALL                         R3 R3 K20 ["_scheduleRender"]
       68 CALL                             R3 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R2 0
       71 CALL                             R2 0 1
       72 JUMPIFNOT                        R2 ; [+11]
       73 GETUPVAL                         R3 1
       74 GETTABLE                         R2 R3 R1
       75 JUMPIFNOT                        R2 ; [+8]
       76 NAMECALL                         R2 R0 K21 ["_updateFreeformSelectionDrag"]
       78 CALL                             R2 1 0
       79 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       81 NAMECALL                         R2 R2 K20 ["_scheduleRender"]
       83 CALL                             R2 1 0
       84 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+8]
        6 NAMECALL                         R2 R0 K0 ["_updateFreeformSelectionDrag"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       11 NAMECALL                         R2 R2 K2 ["_scheduleRender"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

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
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R0 K13 ["Flags"]
       48 GETTABLEKS                       R8 R8 K14 ["getFFlagDraggerImprovements"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R8 32 0
       53 SETTABLEKS                       R8 R8 K15 ["__index"]
       55 DUPCLOSURE                       R9 K16 [PROTO_0]
       56 CAPTURE                          VAL R8
       57 SETTABLEKS                       R9 R8 K17 ["new"]
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 SETTABLEKS                       R9 R8 K19 ["enter"]
       62 DUPCLOSURE                       R9 K20 [PROTO_2]
       63 SETTABLEKS                       R9 R8 K21 ["leave"]
       65 GETIMPORT                        R9 K24 [table.freeze]
       67 DUPTABLE                         R10 K29 [{["Hotkey"] = "T", ["LabelLocEntry"] = "DragTilt"}]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K24 [table.freeze]
       71 DUPTABLE                         R11 K32 [{["Hotkey"] = "R", ["LabelLocEntry"] = "DragRotate"}]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K24 [table.freeze]
       75 DUPTABLE                         R12 K35 [{["Hotkey"] = "⬇Alt", ["LabelLocEntry"] = "HoldOrientation"}]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K24 [table.freeze]
       79 DUPTABLE                         R13 K38 [{["Hotkey"] = "⬆Alt", ["LabelLocEntry"] = "UnholdOrientation"}]
       80 CALL                             R12 1 1
       81 DUPCLOSURE                       R13 K39 [PROTO_3]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R13 R8 K40 ["_getHotkeyList"]
       89 DUPCLOSURE                       R13 K41 [PROTO_4]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R13 R8 K42 ["render"]
       96 DUPCLOSURE                       R13 K43 [PROTO_5]
       97 SETTABLEKS                       R13 R8 K44 ["processSelectionChanged"]
       99 DUPCLOSURE                       R13 K45 [PROTO_6]
      100 SETTABLEKS                       R13 R8 K46 ["processMouseDown"]
      102 DUPCLOSURE                       R13 K47 [PROTO_7]
      103 SETTABLEKS                       R13 R8 K48 ["processViewChanged"]
      105 DUPCLOSURE                       R13 K49 [PROTO_8]
      106 SETTABLEKS                       R13 R8 K50 ["processMouseUp"]
      108 DUPCLOSURE                       R13 K51 [PROTO_9]
      109 SETTABLEKS                       R13 R8 K52 ["processMouseEnter"]
      111 DUPCLOSURE                       R13 K53 [PROTO_10]
      112 SETTABLEKS                       R13 R8 K54 ["processMouseLeave"]
      114 GETIMPORT                        R13 K24 [table.freeze]
      116 NEWTABLE                         R14 8 0
      118 GETIMPORT                        R15 K58 [Enum.KeyCode.RightShift]
      120 LOADB                            R16 1
      121 SETTABLE                         R16 R14 R15
      122 GETIMPORT                        R15 K60 [Enum.KeyCode.LeftShift]
      124 LOADB                            R16 1
      125 SETTABLE                         R16 R14 R15
      126 GETIMPORT                        R15 K62 [Enum.KeyCode.RightControl]
      128 LOADB                            R16 1
      129 SETTABLE                         R16 R14 R15
      130 GETIMPORT                        R15 K64 [Enum.KeyCode.LeftControl]
      132 LOADB                            R16 1
      133 SETTABLE                         R16 R14 R15
      134 GETIMPORT                        R15 K66 [Enum.KeyCode.RightAlt]
      136 LOADB                            R16 1
      137 SETTABLE                         R16 R14 R15
      138 GETIMPORT                        R15 K68 [Enum.KeyCode.LeftAlt]
      140 LOADB                            R16 1
      141 SETTABLE                         R16 R14 R15
      142 CALL                             R13 1 1
      143 DUPCLOSURE                       R14 K69 [PROTO_11]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R14 R8 K70 ["processKeyDown"]
      148 DUPCLOSURE                       R14 K71 [PROTO_12]
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R13
      151 SETTABLEKS                       R14 R8 K72 ["processKeyUp"]
      153 DUPCLOSURE                       R14 K73 [PROTO_13]
      154 SETTABLEKS                       R14 R8 K74 ["_tiltRotateFreeformSelectionDrag"]
      156 DUPCLOSURE                       R14 K75 [PROTO_14]
      157 SETTABLEKS                       R14 R8 K76 ["_updateFreeformSelectionDrag"]
      159 DUPCLOSURE                       R14 K77 [PROTO_15]
      160 CAPTURE                          VAL R4
      161 SETTABLEKS                       R14 R8 K78 ["_endFreeformSelectionDrag"]
      163 RETURN                           R8 1
