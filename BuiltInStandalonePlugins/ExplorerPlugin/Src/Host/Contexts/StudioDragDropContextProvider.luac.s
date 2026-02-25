PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"Sender", "MimeType"}]
        2 LOADK                            R3 K3 ["Explorer"]
        3 SETTABLEKS                       R3 R2 K0 ["Sender"]
        5 LOADK                            R3 K4 ["roblox/selection"]
        6 SETTABLEKS                       R3 R2 K1 ["MimeType"]
        8 NAMECALL                         R0 R0 K5 ["StartDrag"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["MimeType"]
        2 JUMPIFEQKS                       R1 K1 ["roblox/selection"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["enable"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["MimeType"]
        2 JUMPIFEQKS                       R1 K1 ["roblox/selection"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["disable"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["MimeType"]
        2 JUMPIFEQKS                       R1 K1 ["roblox/selection"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["disable"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["current"]
       12 NAMECALL                         R1 R1 K4 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["useToggleState"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K5 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R1
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K6 ["useEventConnection"]
       29 GETTABLEKS                       R6 R0 K7 ["dockWidget"]
       31 GETTABLEKS                       R5 R6 K8 ["PluginDragEntered"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R7 0 0
       37 CALL                             R4 3 0
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K6 ["useEventConnection"]
       41 GETTABLEKS                       R6 R0 K7 ["dockWidget"]
       43 GETTABLEKS                       R5 R6 K9 ["PluginDragLeft"]
       45 NEWCLOSURE                       R6 P2
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R7 0 0
       49 CALL                             R4 3 0
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R4 R5 K10 ["useRef"]
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R6 R7 K11 ["Signal"]
       56 GETTABLEKS                       R5 R6 K12 ["new"]
       58 CALL                             R5 0 -1
       59 CALL                             R4 -1 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K6 ["useEventConnection"]
       63 GETTABLEKS                       R7 R0 K7 ["dockWidget"]
       65 GETTABLEKS                       R6 R7 K13 ["PluginDragDropped"]
       67 NEWCLOSURE                       R7 P3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R8 0 0
       72 CALL                             R5 3 0
       73 GETUPVAL                         R5 4
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R8 R9 K14 ["Components"]
       77 GETTABLEKS                       R7 R8 K15 ["Contexts"]
       79 GETTABLEKS                       R6 R7 K16 ["DragDropContextProvider"]
       81 DUPTABLE                         R7 K20 [{"startSelectionDrag", "selectionDragInProgress", "selectionDragDropped"}]
       82 SETTABLEKS                       R3 R7 K17 ["startSelectionDrag"]
       84 GETTABLEKS                       R8 R2 K21 ["enabled"]
       86 SETTABLEKS                       R8 R7 K18 ["selectionDragInProgress"]
       88 GETTABLEKS                       R8 R4 K22 ["current"]
       90 SETTABLEKS                       R8 R7 K19 ["selectionDragDropped"]
       92 GETTABLEKS                       R8 R0 K23 ["children"]
       94 CALL                             R5 3 -1
       95 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["createElement"]
       37 DUPCLOSURE                       R6 K12 [PROTO_4]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
