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
       67 DUPTABLE                         R10 K27 [{"Hotkey", "LabelLocEntry"}]
       68 LOADK                            R11 K28 ["T"]
       69 SETTABLEKS                       R11 R10 K25 ["Hotkey"]
       71 LOADK                            R11 K29 ["DragTilt"]
       72 SETTABLEKS                       R11 R10 K26 ["LabelLocEntry"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K24 [table.freeze]
       77 DUPTABLE                         R11 K27 [{"Hotkey", "LabelLocEntry"}]
       78 LOADK                            R12 K30 ["R"]
       79 SETTABLEKS                       R12 R11 K25 ["Hotkey"]
       81 LOADK                            R12 K31 ["DragRotate"]
       82 SETTABLEKS                       R12 R11 K26 ["LabelLocEntry"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K24 [table.freeze]
       87 DUPTABLE                         R12 K27 [{"Hotkey", "LabelLocEntry"}]
       88 LOADK                            R13 K32 ["⬇Alt"]
       89 SETTABLEKS                       R13 R12 K25 ["Hotkey"]
       91 LOADK                            R13 K33 ["HoldOrientation"]
       92 SETTABLEKS                       R13 R12 K26 ["LabelLocEntry"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K24 [table.freeze]
       97 DUPTABLE                         R13 K27 [{"Hotkey", "LabelLocEntry"}]
       98 LOADK                            R14 K34 ["⬆Alt"]
       99 SETTABLEKS                       R14 R13 K25 ["Hotkey"]
      101 LOADK                            R14 K35 ["UnholdOrientation"]
      102 SETTABLEKS                       R14 R13 K26 ["LabelLocEntry"]
      104 CALL                             R12 1 1
      105 DUPCLOSURE                       R13 K36 [PROTO_3]
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R13 R8 K37 ["_getHotkeyList"]
      113 DUPCLOSURE                       R13 K38 [PROTO_4]
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R13 R8 K39 ["render"]
      120 DUPCLOSURE                       R13 K40 [PROTO_5]
      121 SETTABLEKS                       R13 R8 K41 ["processSelectionChanged"]
      123 DUPCLOSURE                       R13 K42 [PROTO_6]
      124 SETTABLEKS                       R13 R8 K43 ["processMouseDown"]
      126 DUPCLOSURE                       R13 K44 [PROTO_7]
      127 SETTABLEKS                       R13 R8 K45 ["processViewChanged"]
      129 DUPCLOSURE                       R13 K46 [PROTO_8]
      130 SETTABLEKS                       R13 R8 K47 ["processMouseUp"]
      132 DUPCLOSURE                       R13 K48 [PROTO_9]
      133 SETTABLEKS                       R13 R8 K49 ["processMouseEnter"]
      135 DUPCLOSURE                       R13 K50 [PROTO_10]
      136 SETTABLEKS                       R13 R8 K51 ["processMouseLeave"]
      138 GETIMPORT                        R13 K24 [table.freeze]
      140 NEWTABLE                         R14 8 0
      142 GETIMPORT                        R15 K55 [Enum.KeyCode.RightShift]
      144 LOADB                            R16 1
      145 SETTABLE                         R16 R14 R15
      146 GETIMPORT                        R15 K57 [Enum.KeyCode.LeftShift]
      148 LOADB                            R16 1
      149 SETTABLE                         R16 R14 R15
      150 GETIMPORT                        R15 K59 [Enum.KeyCode.RightControl]
      152 LOADB                            R16 1
      153 SETTABLE                         R16 R14 R15
      154 GETIMPORT                        R15 K61 [Enum.KeyCode.LeftControl]
      156 LOADB                            R16 1
      157 SETTABLE                         R16 R14 R15
      158 GETIMPORT                        R15 K63 [Enum.KeyCode.RightAlt]
      160 LOADB                            R16 1
      161 SETTABLE                         R16 R14 R15
      162 GETIMPORT                        R15 K65 [Enum.KeyCode.LeftAlt]
      164 LOADB                            R16 1
      165 SETTABLE                         R16 R14 R15
      166 CALL                             R13 1 1
      167 DUPCLOSURE                       R14 K66 [PROTO_11]
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R13
      170 SETTABLEKS                       R14 R8 K67 ["processKeyDown"]
      172 DUPCLOSURE                       R14 K68 [PROTO_12]
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R14 R8 K69 ["processKeyUp"]
      177 DUPCLOSURE                       R14 K70 [PROTO_13]
      178 SETTABLEKS                       R14 R8 K71 ["_tiltRotateFreeformSelectionDrag"]
      180 DUPCLOSURE                       R14 K72 [PROTO_14]
      181 SETTABLEKS                       R14 R8 K73 ["_updateFreeformSelectionDrag"]
      183 DUPCLOSURE                       R14 K74 [PROTO_15]
      184 CAPTURE                          VAL R4
      185 SETTABLEKS                       R14 R8 K75 ["_endFreeformSelectionDrag"]
      187 RETURN                           R8 1
