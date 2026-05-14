PROTO_0:
        0 DUPTABLE                         R5 K5 [{"_isDoubleClick", "_dragStartLocation", "_dragInfo", "_clickedMetadata", "_draggerToolModel"}]
        1 SETTABLEKS                       R1 R5 K0 ["_isDoubleClick"]
        3 GETTABLEKS                       R6 R0 K6 ["_draggerContext"]
        5 NAMECALL                         R6 R6 K7 ["getMouseLocation"]
        7 CALL                             R6 1 1
        8 SETTABLEKS                       R6 R5 K1 ["_dragStartLocation"]
       10 SETTABLEKS                       R2 R5 K2 ["_dragInfo"]
       12 SETTABLEKS                       R3 R5 K3 ["_clickedMetadata"]
       14 SETTABLEKS                       R0 R5 K4 ["_draggerToolModel"]
       16 GETUPVAL                         R6 0
       17 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       19 GETIMPORT                        R4 K9 [setmetatable]
       21 CALL                             R4 2 1
       22 RETURN                           R4 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getClosedHand"]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R1 K2 ["setMouseCursor"]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+35]
       12 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
       14 NAMECALL                         R1 R1 K3 ["getSchema"]
       16 CALL                             R1 1 1
       17 GETTABLEKS                       R1 R1 K4 ["getHoverComponent"]
       19 JUMPIFNOT                        R1 ; [+27]
       20 MOVE                             R2 R1
       21 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       23 GETTABLEKS                       R3 R3 K5 ["_draggerContext"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+20]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["createElement"]
       30 MOVE                             R4 R2
       31 DUPTABLE                         R5 K10 [{"DraggerContext", "HoverMetadata", "Pending"}]
       32 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       34 GETTABLEKS                       R6 R6 K5 ["_draggerContext"]
       36 SETTABLEKS                       R6 R5 K7 ["DraggerContext"]
       38 GETTABLEKS                       R6 R0 K11 ["_clickedMetadata"]
       40 SETTABLEKS                       R6 R5 K8 ["HoverMetadata"]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K9 ["Pending"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1
       47 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Mouse should already be down while pending part drag."]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["getMouseLocation"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K3 ["_dragStartLocation"]
        9 SUB                              R2 R1 R3
       10 GETTABLEKS                       R3 R2 K4 ["Magnitude"]
       12 LOADN                            R4 4
       13 JUMPIFNOTLT                      R4 R3 ; [+11]
       15 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K5 ["DraggingParts"]
       20 GETTABLEKS                       R6 R0 K6 ["_dragInfo"]
       22 NAMECALL                         R3 R3 K7 ["transitionToState"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R1 K1 ["_draggerContext"]
        4 NAMECALL                         R3 R2 K2 ["shouldExtendSelection"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R2 K3 ["isAltKeyDown"]
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+32]
       11 JUMPIF                           R3 ; [+31]
       12 GETTABLEKS                       R4 R1 K4 ["_selectionCycleCache"]
       14 NEWTABLE                         R5 0 0
       16 LOADB                            R8 1
       17 NAMECALL                         R6 R4 K5 ["getNextSelectable"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+29]
       21 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
       23 MOVE                             R8 R5
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K8 [table.insert]
       27 CALL                             R7 2 0
       28 GETTABLEKS                       R7 R1 K9 ["_selectionWrapper"]
       30 MOVE                             R9 R5
       31 NAMECALL                         R7 R7 K10 ["set"]
       33 CALL                             R7 2 0
       34 NAMECALL                         R7 R1 K11 ["isSelected"]
       36 CALL                             R7 1 1
       37 JUMPIF                           R7 ; [+1]
       38 RETURN                           R0 0
       39 NAMECALL                         R7 R1 K12 ["_updateSelectionInfo"]
       41 CALL                             R7 1 0
       42 JUMP                             ; [+7]
       43 GETTABLEKS                       R6 R0 K13 ["_dragInfo"]
       45 GETTABLEKS                       R7 R0 K14 ["_isDoubleClick"]
       47 NAMECALL                         R4 R1 K15 ["selectNextSelectables"]
       49 CALL                             R4 3 0
       50 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K16 ["Ready"]
       55 NAMECALL                         R4 R4 K17 ["transitionToState"]
       57 CALL                             R4 2 0
       58 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["DraggingParts"]
        8 GETTABLEKS                       R5 R0 K2 ["_dragInfo"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R2 R2 K3 ["transitionToState"]
       13 CALL                             R2 4 0
       14 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

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
       18 GETTABLEKS                       R4 R0 K6 ["Implementation"]
       20 GETTABLEKS                       R4 R4 K7 ["DraggerStateType"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Utility"]
       27 GETTABLEKS                       R5 R5 K9 ["StandardCursor"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Flags"]
       34 GETTABLEKS                       R6 R6 K11 ["getFFlagDraggerImprovements"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 16 0
       39 SETTABLEKS                       R6 R6 K12 ["__index"]
       41 DUPCLOSURE                       R7 K13 [PROTO_0]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R7 R6 K14 ["new"]
       45 DUPCLOSURE                       R7 K15 [PROTO_1]
       46 SETTABLEKS                       R7 R6 K16 ["enter"]
       48 DUPCLOSURE                       R7 K17 [PROTO_2]
       49 SETTABLEKS                       R7 R6 K18 ["leave"]
       51 DUPCLOSURE                       R7 K19 [PROTO_3]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R7 R6 K20 ["render"]
       57 DUPCLOSURE                       R7 K21 [PROTO_4]
       58 SETTABLEKS                       R7 R6 K22 ["processSelectionChanged"]
       60 DUPCLOSURE                       R7 K23 [PROTO_5]
       61 SETTABLEKS                       R7 R6 K24 ["processMouseDown"]
       63 DUPCLOSURE                       R7 K25 [PROTO_6]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R7 R6 K26 ["processViewChanged"]
       67 DUPCLOSURE                       R7 K27 [PROTO_7]
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R7 R6 K28 ["processMouseUp"]
       71 DUPCLOSURE                       R7 K29 [PROTO_8]
       72 SETTABLEKS                       R7 R6 K30 ["processMouseEnter"]
       74 DUPCLOSURE                       R7 K31 [PROTO_9]
       75 SETTABLEKS                       R7 R6 K32 ["processMouseLeave"]
       77 DUPCLOSURE                       R7 K33 [PROTO_10]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R7 R6 K34 ["processKeyDown"]
       82 DUPCLOSURE                       R7 K35 [PROTO_11]
       83 SETTABLEKS                       R7 R6 K36 ["processKeyUp"]
       85 RETURN                           R6 1
