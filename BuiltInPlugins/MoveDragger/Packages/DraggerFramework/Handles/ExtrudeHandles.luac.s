PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["init"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 0
        8 NEWTABLE                         R3 8 0
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K1 ["_handles"]
       14 MOVE                             R4 R1
       15 JUMPIF                           R4 ; [+2]
       16 NEWTABLE                         R4 0 0
       18 SETTABLEKS                       R4 R3 K2 ["_props"]
       20 SETTABLEKS                       R0 R3 K3 ["_draggerContext"]
       22 SETTABLEKS                       R2 R3 K4 ["_implementation"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["new"]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K6 ["_softSnapper"]
       31 GETUPVAL                         R6 3
       32 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       34 MOVE                             R5 R3
       35 GETIMPORT                        R4 K8 [setmetatable]
       37 CALL                             R4 2 1
       38 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldPartSnap"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R3 R3 K1 ["getBoundingBox"]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 GETTABLEKS                       R3 R0 K2 ["_boundingBox"]
        8 GETTABLEKS                       R3 R3 K3 ["CFrame"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K4 ["ToObjectSpace"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R5 R0 K2 ["_boundingBox"]
       16 GETTABLEKS                       R5 R5 K6 ["Size"]
       18 DIVK                             R4 R5 K5 [2]
       19 GETTABLEKS                       R5 R3 K7 ["Position"]
       21 MINUS                            R7 R4
       22 NAMECALL                         R5 R5 K8 ["Max"]
       24 CALL                             R5 2 1
       25 MOVE                             R7 R4
       26 NAMECALL                         R5 R5 K9 ["Min"]
       28 CALL                             R5 2 1
       29 GETTABLEKS                       R7 R3 K10 ["Rotation"]
       31 ADD                              R6 R7 R5
       32 SETTABLEKS                       R6 R0 K11 ["_summonBasisOffset"]
       34 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["_basisOffset"]
        5 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R3 ; [+44]
        3 SETTABLEKS                       R2 R0 K1 ["_selectionInfo"]
        5 SETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
        7 NAMECALL                         R3 R1 K3 ["getSchema"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R0 K4 ["_schema"]
       12 NAMECALL                         R3 R1 K5 ["getSelectionWrapper"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R0 K6 ["_selectionWrapper"]
       17 GETTABLEKS                       R3 R0 K7 ["_implementation"]
       19 GETTABLEKS                       R5 R0 K6 ["_selectionWrapper"]
       21 NAMECALL                         R5 R5 K8 ["get"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R0 K1 ["_selectionInfo"]
       26 NAMECALL                         R3 R3 K9 ["getBoundingBox"]
       28 CALL                             R3 3 3
       29 GETIMPORT                        R6 K12 [CFrame.new]
       31 MINUS                            R7 R4
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R0 K13 ["_basisOffset"]
       35 DUPTABLE                         R6 K15 [{"Size", "CFrame"}]
       36 SETTABLEKS                       R5 R6 K14 ["Size"]
       38 GETIMPORT                        R8 K12 [CFrame.new]
       40 MOVE                             R9 R4
       41 CALL                             R8 1 1
       42 MUL                              R7 R3 R8
       43 SETTABLEKS                       R7 R6 K10 ["CFrame"]
       45 SETTABLEKS                       R6 R0 K16 ["_boundingBox"]
       47 NAMECALL                         R3 R0 K17 ["_updateHandles"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 SETTABLEKS                       R1 R0 K2 ["_originalBoundingBoxSize"]
        6 GETTABLEKS                       R1 R0 K0 ["_boundingBox"]
        8 GETTABLEKS                       R1 R1 K3 ["CFrame"]
       10 SETTABLEKS                       R1 R0 K4 ["_originalBoundingBoxCFrame"]
       12 NAMECALL                         R1 R0 K5 ["_getBasisOffset"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R1 R1 K6 ["Position"]
       17 SETTABLEKS                       R1 R0 K7 ["_originalBasisOffset"]
       19 GETTABLEKS                       R2 R0 K8 ["_handles"]
       21 GETTABLEKS                       R3 R0 K9 ["_draggingHandleId"]
       23 GETTABLE                         R1 R2 R3
       24 GETTABLEKS                       R1 R1 K10 ["Axis"]
       26 GETTABLEKS                       R2 R0 K7 ["_originalBasisOffset"]
       28 MOVE                             R6 R1
       29 NAMECALL                         R4 R2 K11 ["Dot"]
       31 CALL                             R4 2 1
       32 MUL                              R3 R1 R4
       33 SUB                              R2 R2 R3
       34 SETTABLEKS                       R2 R0 K12 ["_perpendicularMovement"]
       36 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_lastDeltaSize"]
        2 SETTABLEKS                       R1 R0 K1 ["_committedDeltaSize"]
        4 GETTABLEKS                       R1 R0 K2 ["_lastOffset"]
        6 SETTABLEKS                       R1 R0 K3 ["_committedOffset"]
        8 NAMECALL                         R1 R0 K4 ["_rememberCurrentBoundsAsOriginal"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R3 R0 K5 ["_draggerContext"]
       13 NAMECALL                         R3 R3 K6 ["getMouseRay"]
       15 CALL                             R3 1 1
       16 LOADB                            R4 1
       17 NAMECALL                         R1 R0 K7 ["_getDistanceAlongAxis"]
       19 CALL                             R1 3 2
       20 JUMPIFNOT                        R1 ; [+2]
       21 MOVE                             R3 R2
       22 JUMPIF                           R3 ; [+1]
       23 LOADN                            R3 0
       24 SETTABLEKS                       R3 R0 K8 ["_startDistance"]
       26 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 JUMPIFNOT                        R0 ; [+19]
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETTABLEKS                       R2 R0 K0 ["X"]
        8 GETTABLEKS                       R3 R1 K0 ["X"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+13]
       12 GETTABLEKS                       R2 R0 K1 ["Y"]
       14 GETTABLEKS                       R3 R1 K1 ["Y"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+7]
       18 GETTABLEKS                       R2 R0 K2 ["Z"]
       20 GETTABLEKS                       R3 R1 K2 ["Z"]
       22 JUMPIFEQ                         R2 R3 ; [+3]
       24 LOADB                            R2 0
       25 RETURN                           R2 1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionWrapper"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["_selectionInfo"]
        7 GETTABLEKS                       R3 R0 K3 ["_normalId"]
        9 GETTABLEKS                       R4 R0 K4 ["_implementation"]
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 MOVE                             R8 R3
       14 NAMECALL                         R4 R4 K5 ["shouldScaleFromCenter"]
       16 CALL                             R4 4 1
       17 GETTABLEKS                       R5 R0 K4 ["_implementation"]
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 NAMECALL                         R5 R5 K6 ["axesToScale"]
       23 CALL                             R5 3 1
       24 GETTABLEKS                       R6 R0 K4 ["_implementation"]
       26 MOVE                             R8 R2
       27 MOVE                             R9 R5
       28 GETTABLEKS                       R10 R0 K7 ["_boundingBox"]
       30 GETTABLEKS                       R10 R10 K8 ["Size"]
       32 NAMECALL                         R6 R6 K9 ["getMinMaxSizes"]
       34 CALL                             R6 4 2
       35 SETTABLEKS                       R6 R0 K10 ["_minimumSize"]
       37 SETTABLEKS                       R7 R0 K11 ["_maximumSize"]
       39 GETTABLEKS                       R8 R0 K12 ["_lastAxesToScale"]
       41 JUMPIFNOTEQ                      R5 R8 ; [+3]
       43 LOADB                            R7 1
       44 JUMP                             ; [+23]
       45 JUMPIFNOT                        R5 ; [+19]
       46 JUMPIFNOT                        R8 ; [+18]
       47 GETTABLEKS                       R9 R5 K13 ["X"]
       49 GETTABLEKS                       R10 R8 K13 ["X"]
       51 JUMPIFNOTEQ                      R9 R10 ; [+13]
       53 GETTABLEKS                       R9 R5 K14 ["Y"]
       55 GETTABLEKS                       R10 R8 K14 ["Y"]
       57 JUMPIFNOTEQ                      R9 R10 ; [+7]
       59 GETTABLEKS                       R9 R5 K15 ["Z"]
       61 GETTABLEKS                       R10 R8 K15 ["Z"]
       63 JUMPIFEQ                         R9 R10 ; [+3]
       65 LOADB                            R7 0
       66 JUMP                             ; [+1]
       67 LOADB                            R7 1
       68 NOT                              R6 R7
       69 GETTABLEKS                       R8 R0 K16 ["_lastResizeFromCenter"]
       71 JUMPIFNOTEQ                      R4 R8 ; [+2]
       73 LOADB                            R7 0 +1
       74 LOADB                            R7 1
       75 SETTABLEKS                       R5 R0 K12 ["_lastAxesToScale"]
       77 SETTABLEKS                       R4 R0 K16 ["_lastResizeFromCenter"]
       79 OR                               R8 R6 R7
       80 RETURN                           R8 1

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["_updateExtrudeMode"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R3 R0 K1 ["_handles"]
        6 GETTABLEKS                       R4 R0 K2 ["_draggingHandleId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+3]
       10 NAMECALL                         R2 R0 K3 ["_refreshDrag"]
       12 CALL                             R2 1 0
       13 RETURN                           R1 1

PROTO_12:
        0 LOADNIL                          R3
        1 LOADK                            R4 K0 [∞]
        2 GETIMPORT                        R5 K2 [pairs]
        4 GETTABLEKS                       R6 R0 K3 ["_handles"]
        6 CALL                             R5 1 3
        7 FORGPREP_NEXT                    R5
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R10 R10 K4 ["hitTest"]
       11 MOVE                             R11 R9
       12 MOVE                             R12 R1
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+4]
       15 JUMPIFNOTLT                      R10 R4 ; [+3]
       17 MOVE                             R4 R10
       18 MOVE                             R3 R8
       19 FORGLOOP                         R5 2 ; [-12]
       21 JUMPIFNOT                        R3 ; [+3]
       22 MOVE                             R5 R3
       23 LOADN                            R6 0
       24 RETURN                           R5 2
       25 JUMPIFNOT                        R2 ; [+3]
       26 LOADNIL                          R5
       27 LOADN                            R6 0
       28 RETURN                           R5 2
       29 GETIMPORT                        R5 K2 [pairs]
       31 GETTABLEKS                       R6 R0 K3 ["_handles"]
       33 CALL                             R5 1 3
       34 FORGPREP_NEXT                    R5
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K5 ["distanceFromHandle"]
       38 MOVE                             R11 R9
       39 MOVE                             R12 R1
       40 CALL                             R10 2 1
       41 JUMPIFNOTLT                      R10 R4 ; [+3]
       43 MOVE                             R4 R10
       44 MOVE                             R3 R8
       45 FORGLOOP                         R5 2 ; [-11]
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R4 R5 ; [+4]
       50 MOVE                             R5 R3
       51 LOADN                            R6 0
       52 RETURN                           R5 2
       53 LOADNIL                          R5
       54 LOADN                            R6 0
       55 RETURN                           R5 2

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_scalingLimitReachedUpper"]
        2 JUMPIF                           R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_scalingLimitReachedLower"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_resizeWasConstrained"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["SizeLimitReached"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K4 ["_draggerContext"]
       15 NAMECALL                         R1 R1 K5 ["getSelectionBoxColor"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getHoverThickness"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_scalingLimitReachedLower"]
        2 JUMPIF                           R1 ; [+22]
        3 GETTABLEKS                       R1 R0 K1 ["_scalingLimitReachedUpper"]
        5 JUMPIF                           R1 ; [+19]
        6 GETTABLEKS                       R1 R0 K2 ["_resizeWasConstrained"]
        8 JUMPIF                           R1 ; [+16]
        9 GETTABLEKS                       R1 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R1 K4 ["ShowBoundingBox"]
       13 JUMPIFNOT                        R1 ; [+11]
       14 GETTABLEKS                       R3 R0 K5 ["_selectionWrapper"]
       16 NAMECALL                         R3 R3 K6 ["get"]
       18 CALL                             R3 1 1
       19 LENGTH                           R2 R3
       20 LOADN                            R3 1
       21 JUMPIFLT                         R3 R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 LOADK                            R3 K1 ["HotkeyUsageHidden"]
        3 NAMECALL                         R1 R1 K2 ["getSetting"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+74]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["addGridSnap"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       18 NAMECALL                         R2 R2 K4 ["isCtrlKeyDown"]
       20 CALL                             R2 1 1
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETUPVAL                         R4 1
       23 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       25 MOVE                             R3 R1
       26 GETIMPORT                        R2 K7 [table.insert]
       28 CALL                             R2 2 0
       29 JUMP                             ; [+7]
       30 GETUPVAL                         R4 2
       31 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K7 [table.insert]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       39 NAMECALL                         R2 R2 K8 ["isAltKeyDown"]
       41 CALL                             R2 1 1
       42 JUMPIFNOT                        R2 ; [+8]
       43 GETUPVAL                         R4 3
       44 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       46 MOVE                             R3 R1
       47 GETIMPORT                        R2 K7 [table.insert]
       49 CALL                             R2 2 0
       50 JUMP                             ; [+7]
       51 GETUPVAL                         R4 4
       52 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       54 MOVE                             R3 R1
       55 GETIMPORT                        R2 K7 [table.insert]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K9 ["addSummonHandles"]
       61 MOVE                             R3 R1
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K10 ["addHelp"]
       66 MOVE                             R3 R1
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 5
       69 GETTABLEKS                       R2 R2 K11 ["createElement"]
       71 GETUPVAL                         R3 6
       72 DUPTABLE                         R4 K14 [{"DraggerContext", "HotkeyList"}]
       73 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       75 SETTABLEKS                       R5 R4 K12 ["DraggerContext"]
       77 SETTABLEKS                       R1 R4 K13 ["HotkeyList"]
       79 CALL                             R2 2 -1
       80 RETURN                           R2 -1
       81 LOADNIL                          R1
       82 RETURN                           R1 1

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["_hasSoftSnap"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["_scalingLimitReachedLower"]
        6 JUMPIF                           R1 ; [+2]
        7 GETTABLEKS                       R1 R0 K2 ["_scalingLimitReachedUpper"]
        9 GETTABLEKS                       R2 R0 K3 ["_softSnapper"]
       11 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       13 NOT                              R5 R1
       14 NAMECALL                         R2 R2 K5 ["render"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 MULK                             R5 R6 K0 [10000]
        3 SUB                              R3 R4 R5
        4 GETUPVAL                         R5 0
        5 GETUPVAL                         R7 1
        6 MULK                             R6 R7 K0 [10000]
        7 ADD                              R4 R5 R6
        8 NAMECALL                         R1 R0 K1 ["AddLine"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R2 R2 K1 ["CFrame"]
        4 NAMECALL                         R3 R0 K2 ["_getBasisOffset"]
        6 CALL                             R3 1 1
        7 MUL                              R1 R2 R3
        8 GETTABLEKS                       R1 R1 K3 ["Position"]
       10 GETTABLEKS                       R2 R0 K4 ["_dragDirection"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["createElement"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K10 [{["AlwaysOnTop"] = False, ["Color3"], ["Render"]}]
       17 GETTABLEKS                       R6 R0 K11 ["_draggerContext"]
       19 NAMECALL                         R6 R6 K12 ["getGridColor"]
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K8 ["Color3"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R6 R5 K9 ["Render"]
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_handles"]
        4 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R0 K1 ["_draggingHandleId"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 GETUPVAL                         R5 1
       13 DUPTABLE                         R6 K6 [{"HandleCFrame", "Color", "Scale"}]
       14 GETTABLEKS                       R7 R2 K3 ["HandleCFrame"]
       16 SETTABLEKS                       R7 R6 K3 ["HandleCFrame"]
       18 GETUPVAL                         R8 2
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R7 R2 K7 ["HighlightColor"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R7 R2 K4 ["Color"]
       26 SETTABLEKS                       R7 R6 K4 ["Color"]
       28 GETTABLEKS                       R7 R2 K5 ["Scale"]
       30 SETTABLEKS                       R7 R6 K5 ["Scale"]
       32 CALL                             R4 2 1
       33 SETTABLE                         R4 R1 R3
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K8 ["createFragment"]
       37 MOVE                             R4 R1
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 NEWTABLE                         R3 0 3
        6 GETTABLEKS                       R4 R1 K2 ["X"]
        8 GETTABLEKS                       R5 R1 K3 ["Y"]
       10 GETTABLEKS                       R6 R1 K4 ["Z"]
       12 SETLIST                          R3 R4 3 [1]
       14 GETTABLEKS                       R4 R0 K5 ["_normalId"]
       16 GETTABLE                         R2 R3 R4
       17 GETTABLEKS                       R3 R0 K0 ["_boundingBox"]
       19 GETTABLEKS                       R3 R3 K6 ["CFrame"]
       21 GETTABLEKS                       R3 R3 K7 ["Position"]
       23 GETTABLEKS                       R4 R0 K8 ["_draggerContext"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K9 ["worldToViewportPoint"]
       28 CALL                             R4 2 2
       29 JUMPIFNOT                        R5 ; [+39]
       30 GETUPVAL                         R7 0
       31 CALL                             R7 0 1
       32 JUMPIFNOT                        R7 ; [+8]
       33 GETTABLEKS                       R7 R0 K10 ["_handles"]
       35 GETTABLEKS                       R8 R0 K11 ["_draggingHandleId"]
       37 GETTABLE                         R6 R7 R8
       38 GETTABLEKS                       R6 R6 K12 ["AxisId"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K13 ["createElement"]
       45 GETUPVAL                         R8 2
       46 DUPTABLE                         R9 K16 [{"DraggerContext", "Position", "Value"}]
       47 GETTABLEKS                       R10 R0 K8 ["_draggerContext"]
       49 SETTABLEKS                       R10 R9 K14 ["DraggerContext"]
       51 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       53 GETTABLEKS                       R11 R4 K2 ["X"]
       55 GETTABLEKS                       R12 R4 K3 ["Y"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K7 ["Position"]
       60 GETUPVAL                         R10 3
       61 MOVE                             R11 R2
       62 LOADNIL                          R12
       63 MOVE                             R13 R6
       64 CALL                             R10 3 1
       65 SETTABLEKS                       R10 R9 K15 ["Value"]
       67 CALL                             R7 2 -1
       68 RETURN                           R7 -1
       69 LOADNIL                          R6
       70 RETURN                           R6 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 JUMPIFNOT                        R1 ; [+39]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K5 [{"DraggerContext", "CFrame", "IsActive"}]
        8 GETTABLEKS                       R4 R0 K6 ["_draggerContext"]
       10 SETTABLEKS                       R4 R3 K2 ["DraggerContext"]
       12 GETTABLEKS                       R5 R0 K7 ["_boundingBox"]
       14 GETTABLEKS                       R5 R5 K3 ["CFrame"]
       16 NAMECALL                         R6 R0 K8 ["_getBasisOffset"]
       18 CALL                             R6 1 1
       19 MUL                              R4 R5 R6
       20 SETTABLEKS                       R4 R3 K3 ["CFrame"]
       22 GETTABLEKS                       R4 R0 K6 ["_draggerContext"]
       24 NAMECALL                         R4 R4 K9 ["shouldShowActiveInstanceHighlight"]
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETTABLEKS                       R6 R0 K10 ["_selectionWrapper"]
       30 NAMECALL                         R6 R6 K11 ["get"]
       32 CALL                             R6 1 1
       33 LENGTH                           R5 R6
       34 JUMPIFEQKN                       R5 K12 [1] ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K4 ["IsActive"]
       40 CALL                             R1 2 -1
       41 RETURN                           R1 -1
       42 LOADNIL                          R1
       43 RETURN                           R1 1

PROTO_23:
        0 NAMECALL                         R1 R0 K0 ["_shouldDrawBoundingBox"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+36]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K7 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
        9 GETTABLEKS                       R4 R0 K8 ["_boundingBox"]
       11 GETTABLEKS                       R4 R4 K2 ["CFrame"]
       13 SETTABLEKS                       R4 R3 K2 ["CFrame"]
       15 GETTABLEKS                       R4 R0 K8 ["_boundingBox"]
       17 GETTABLEKS                       R4 R4 K3 ["Size"]
       19 SETTABLEKS                       R4 R3 K3 ["Size"]
       21 NAMECALL                         R4 R0 K9 ["_getBoundingBoxColor"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K4 ["Color"]
       26 NAMECALL                         R4 R0 K10 ["_getBoundingBoxThickness"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["LineThickness"]
       31 GETTABLEKS                       R4 R0 K11 ["_draggerContext"]
       33 NAMECALL                         R4 R4 K12 ["getGuiParent"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K6 ["Container"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1
       40 LOADNIL                          R1
       41 RETURN                           R1 1

PROTO_24:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["_handles"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 JUMPIFEQ                         R6 R1 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 GETTABLEKS                       R9 R7 K3 ["Color"]
       14 GETUPVAL                         R10 0
       15 CALL                             R10 0 1
       16 JUMPIFNOT                        R10 ; [+4]
       17 JUMPIFNOT                        R8 ; [+10]
       18 GETTABLEKS                       R9 R7 K4 ["HighlightColor"]
       20 JUMP                             ; [+7]
       21 JUMPIF                           R8 ; [+6]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K5 ["makeDimmed"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 MOVE                             R9 R10
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R10 R10 K6 ["createElement"]
       31 GETUPVAL                         R11 3
       32 DUPTABLE                         R12 K10 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
       33 GETTABLEKS                       R13 R7 K7 ["HandleCFrame"]
       35 SETTABLEKS                       R13 R12 K7 ["HandleCFrame"]
       37 SETTABLEKS                       R9 R12 K3 ["Color"]
       39 GETTABLEKS                       R13 R7 K8 ["Scale"]
       41 SETTABLEKS                       R13 R12 K8 ["Scale"]
       43 SETTABLEKS                       R8 R12 K9 ["Hovered"]
       45 CALL                             R10 2 1
       46 SETTABLE                         R10 R2 R6
       47 FORGLOOP                         R3 2 ; [-40]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R3 R3 K11 ["createFragment"]
       52 MOVE                             R4 R2
       53 CALL                             R3 1 -1
       54 RETURN                           R3 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K7 [{"Handles", "ChosenAxisDisplay", "SoftSnaps", "SizeMeasurement", "HotkeyHelp", "Implementation"}]
        4 NAMECALL                         R3 R0 K8 ["_renderDraggingHandles"]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K1 ["Handles"]
        9 NAMECALL                         R3 R0 K9 ["_renderChosenAxis"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K2 ["ChosenAxisDisplay"]
       14 NAMECALL                         R3 R0 K10 ["_renderSoftSnaps"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K3 ["SoftSnaps"]
       19 GETTABLEKS                       R4 R0 K11 ["_draggerContext"]
       21 NAMECALL                         R4 R4 K12 ["shouldShowPreciseInput"]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+4]
       25 NAMECALL                         R3 R0 K13 ["_renderSizeMeasurement"]
       27 CALL                             R3 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K4 ["SizeMeasurement"]
       32 NAMECALL                         R3 R0 K14 ["_renderHotkeyHelp"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K5 ["HotkeyHelp"]
       37 GETTABLEKS                       R3 R0 K15 ["_implementation"]
       39 GETTABLEKS                       R5 R0 K16 ["_lastDeltaSize"]
       41 GETTABLEKS                       R6 R0 K17 ["_lastOffset"]
       43 NAMECALL                         R3 R3 K18 ["render"]
       45 CALL                             R3 3 1
       46 SETTABLEKS                       R3 R2 K6 ["Implementation"]
       48 CALL                             R1 1 -1
       49 RETURN                           R1 -1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 LOADK                            R4 K3 ["Folder"]
       12 NEWTABLE                         R5 0 0
       14 DUPTABLE                         R6 K7 [{"MainView", "BoundingBox", "Summon"}]
       15 JUMPIFNOT                        R2 ; [+4]
       16 NAMECALL                         R7 R0 K8 ["_renderDragging"]
       18 CALL                             R7 1 1
       19 JUMP                             ; [+4]
       20 MOVE                             R9 R1
       21 NAMECALL                         R7 R0 K9 ["_renderHovering"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K4 ["MainView"]
       26 NAMECALL                         R7 R0 K10 ["_renderBoundingBox"]
       28 CALL                             R7 1 1
       29 SETTABLEKS                       R7 R6 K5 ["BoundingBox"]
       31 NAMECALL                         R7 R0 K11 ["_renderSummon"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K6 ["Summon"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

PROTO_27:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        3 NAMECALL                         R2 R2 K1 ["getMaxSoftSnaps"]
        5 CALL                             R2 1 1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+11]
        9 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       11 NAMECALL                         R2 R2 K2 ["getSoftSnapMarginFactor"]
       13 CALL                             R2 1 1
       14 LOADN                            R3 0
       15 JUMPIFLT                         R3 R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_28:
        0 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 GETTABLEKS                       R4 R0 K1 ["_handles"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R0 K1 ["_handles"]
        9 GETTABLE                         R3 R4 R2
       10 GETTABLEKS                       R3 R3 K2 ["NormalId"]
       12 SETTABLEKS                       R3 R0 K3 ["_normalId"]
       14 GETTABLEKS                       R4 R0 K1 ["_handles"]
       16 GETTABLE                         R3 R4 R2
       17 GETTABLEKS                       R3 R3 K4 ["HandleCFrame"]
       19 SETTABLEKS                       R3 R0 K5 ["_handleCFrame"]
       21 NAMECALL                         R3 R0 K6 ["_rememberCurrentBoundsAsOriginal"]
       23 CALL                             R3 1 0
       24 NAMECALL                         R3 R0 K7 ["_updateExtrudeMode"]
       26 CALL                             R3 1 0
       27 MOVE                             R5 R1
       28 LOADB                            R6 1
       29 NAMECALL                         R3 R0 K8 ["_getDistanceAlongAxis"]
       31 CALL                             R3 3 2
       32 JUMPIFNOT                        R3 ; [+2]
       33 MOVE                             R5 R4
       34 JUMPIF                           R5 ; [+1]
       35 LOADN                            R5 0
       36 SETTABLEKS                       R5 R0 K9 ["_startDistance"]
       38 GETTABLEKS                       R6 R0 K1 ["_handles"]
       40 GETTABLE                         R5 R6 R2
       41 GETTABLEKS                       R5 R5 K4 ["HandleCFrame"]
       43 GETTABLEKS                       R5 R5 K10 ["Position"]
       45 SETTABLEKS                       R5 R0 K11 ["_startDragHandlePosition"]
       47 GETTABLEKS                       R6 R0 K1 ["_handles"]
       49 GETTABLE                         R5 R6 R2
       50 GETTABLEKS                       R5 R5 K12 ["Scale"]
       52 SETTABLEKS                       R5 R0 K13 ["_startDragHandleScale"]
       54 FASTCALL                         VECTOR ; [+2]
       55 GETIMPORT                        R5 K16 [Vector3.new]
       57 CALL                             R5 0 1
       58 SETTABLEKS                       R5 R0 K17 ["_committedDeltaSize"]
       60 FASTCALL                         VECTOR ; [+2]
       61 GETIMPORT                        R5 K16 [Vector3.new]
       63 CALL                             R5 0 1
       64 SETTABLEKS                       R5 R0 K18 ["_committedOffset"]
       66 FASTCALL                         VECTOR ; [+2]
       67 GETIMPORT                        R5 K16 [Vector3.new]
       69 CALL                             R5 0 1
       70 SETTABLEKS                       R5 R0 K19 ["_lastDeltaSize"]
       72 FASTCALL                         VECTOR ; [+2]
       73 GETIMPORT                        R5 K16 [Vector3.new]
       75 CALL                             R5 0 1
       76 SETTABLEKS                       R5 R0 K20 ["_lastOffset"]
       78 GETTABLEKS                       R5 R0 K21 ["_implementation"]
       80 GETTABLEKS                       R7 R0 K22 ["_selectionWrapper"]
       82 NAMECALL                         R7 R7 K23 ["get"]
       84 CALL                             R7 1 1
       85 GETTABLEKS                       R8 R0 K24 ["_selectionInfo"]
       87 GETTABLEKS                       R9 R0 K3 ["_normalId"]
       89 NAMECALL                         R5 R5 K25 ["beginScale"]
       91 CALL                             R5 4 0
       92 GETTABLEKS                       R5 R0 K21 ["_implementation"]
       94 GETTABLEKS                       R5 R5 K26 ["getSoftSnaps"]
       96 JUMPIFNOT                        R5 ; [+21]
       97 NAMECALL                         R5 R0 K27 ["_needsSoftSnaps"]
       99 CALL                             R5 1 1
      100 JUMPIFNOT                        R5 ; [+17]
      101 GETTABLEKS                       R5 R0 K28 ["_softSnapper"]
      103 GETTABLEKS                       R7 R0 K21 ["_implementation"]
      105 GETTABLEKS                       R9 R0 K5 ["_handleCFrame"]
      107 GETTABLEKS                       R9 R9 K29 ["LookVector"]
      109 GETTABLEKS                       R10 R0 K30 ["_summonBasisOffset"]
      111 NAMECALL                         R7 R7 K26 ["getSoftSnaps"]
      113 CALL                             R7 3 -1
      114 NAMECALL                         R5 R5 K31 ["setSnaps"]
      116 CALL                             R5 -1 0
      117 RETURN                           R0 0
      118 GETTABLEKS                       R5 R0 K28 ["_softSnapper"]
      120 NAMECALL                         R5 R5 K32 ["clearSnaps"]
      122 CALL                             R5 1 0
      123 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOTLT                      R0 R1 ; [+10]
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+6]
        5 SUB                              R7 R1 R0
        6 MOD                              R6 R7 R3
        7 SUB                              R5 R3 R6
        8 ADD                              R4 R1 R5
        9 RETURN                           R4 1
       10 RETURN                           R1 1
       11 JUMPIFNOTLT                      R2 R0 ; [+10]
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R3 ; [+6]
       16 SUB                              R7 R0 R2
       17 MOD                              R6 R7 R3
       18 SUB                              R5 R3 R6
       19 SUB                              R4 R2 R5
       20 RETURN                           R4 1
       21 RETURN                           R2 1
       22 RETURN                           R0 1

PROTO_30:
        0 LOADK                            R7 K0 [0.01]
        1 JUMPIFNOTLT                      R4 R7 ; [+2]
        3 LOADN                            R4 0
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K1 ["vectorToArray"]
        7 MOVE                             R8 R0
        8 CALL                             R7 1 1
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K1 ["vectorToArray"]
       12 SUB                              R9 R5 R0
       13 CALL                             R8 1 1
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K1 ["vectorToArray"]
       17 SUB                              R10 R6 R0
       18 CALL                             R9 1 1
       19 GETTABLE                         R11 R8 R2
       20 GETTABLE                         R12 R9 R2
       21 MOVE                             R13 R4
       22 JUMPIFNOTLT                      R1 R11 ; [+11]
       24 LOADN                            R14 0
       25 JUMPIFNOTLT                      R14 R13 ; [+6]
       27 SUB                              R16 R11 R1
       28 MOD                              R15 R16 R13
       29 SUB                              R14 R13 R15
       30 ADD                              R10 R11 R14
       31 JUMP                             ; [+15]
       32 MOVE                             R10 R11
       33 JUMP                             ; [+13]
       34 JUMPIFNOTLT                      R12 R1 ; [+11]
       36 LOADN                            R14 0
       37 JUMPIFNOTLT                      R14 R13 ; [+6]
       39 SUB                              R16 R1 R12
       40 MOD                              R15 R16 R13
       41 SUB                              R14 R13 R15
       42 SUB                              R10 R12 R14
       43 JUMP                             ; [+3]
       44 MOVE                             R10 R12
       45 JUMP                             ; [+1]
       46 MOVE                             R10 R1
       47 LOADNIL                          R11
       48 GETTABLE                         R12 R7 R2
       49 LOADK                            R13 K2 [0.0001]
       50 JUMPIFNOTLT                      R12 R13 ; [+8]
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R12 R12 K3 ["setToVector3"]
       55 MOVE                             R13 R3
       56 CALL                             R12 1 1
       57 MUL                              R11 R12 R10
       58 JUMP                             ; [+9]
       59 GETTABLE                         R13 R7 R2
       60 DIV                              R12 R10 R13
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R14 R14 K3 ["setToVector3"]
       64 MOVE                             R15 R3
       65 CALL                             R14 1 1
       66 MUL                              R13 R0 R14
       67 MUL                              R11 R13 R12
       68 MOVE                             R12 R11
       69 MOVE                             R13 R10
       70 RETURN                           R12 2

PROTO_31:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+7]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R3 1
        4 SUB                              R7 R1 R0
        5 DIVK                             R6 R7 K1 [2]
        6 MUL                              R5 R6 R2
        7 RETURN                           R5 1
        8 DIV                              R5 R1 R0
        9 MINUS                            R6 R3
       10 MUL                              R7 R5 R6
       11 SUB                              R8 R7 R6
       12 RETURN                           R8 1

PROTO_32:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 DIV                              R2 R0 R1
        5 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Missing dragging handle ID."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R0 K4 ["_handles"]
       10 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
       12 GETTABLE                         R2 R3 R4
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 NAMECALL                         R2 R0 K5 ["_refreshDragIfNeeded"]
       17 CALL                             R2 1 0
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R0 K6 ["_getDistanceAlongAxis"]
       21 CALL                             R2 2 2
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       26 NAMECALL                         R4 R4 K8 ["shouldGridSnap"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 0
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+6]
       32 GETTABLEKS                       R5 R0 K7 ["_draggerContext"]
       34 NAMECALL                         R5 R5 K9 ["getDraggerScaleFactor"]
       36 CALL                             R5 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R8 R0 K7 ["_draggerContext"]
       43 NAMECALL                         R8 R8 K10 ["getCamera"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R0 K11 ["_dragStartPosition"]
       48 GETTABLEKS                       R10 R0 K12 ["_dragDirection"]
       50 GETTABLEKS                       R11 R0 K13 ["_startDragHandlePosition"]
       52 GETTABLEKS                       R12 R0 K14 ["_startDragHandleScale"]
       54 GETTABLEKS                       R13 R0 K15 ["_startDistance"]
       56 MOVE                             R14 R3
       57 MOVE                             R15 R5
       58 CALL                             R7 8 1
       59 GETTABLEKS                       R9 R0 K13 ["_startDragHandlePosition"]
       61 GETTABLEKS                       R10 R0 K11 ["_dragStartPosition"]
       63 SUB                              R8 R9 R10
       64 GETTABLEKS                       R8 R8 K16 ["Magnitude"]
       66 SUB                              R6 R7 R8
       67 GETTABLEKS                       R9 R0 K7 ["_draggerContext"]
       69 MOVE                             R11 R6
       70 NAMECALL                         R9 R9 K17 ["snapToGridSize"]
       72 CALL                             R9 2 1
       73 NAMECALL                         R10 R0 K18 ["_hasSoftSnap"]
       75 CALL                             R10 1 1
       76 JUMPIFNOT                        R10 ; [+17]
       77 JUMPIFNOT                        R4 ; [+6]
       78 SUB                              R11 R9 R6
       79 FASTCALL1                        MATH_ABS R11 ; [+2]
       80 GETIMPORT                        R10 K21 [math.abs]
       82 CALL                             R10 1 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R10
       85 GETTABLEKS                       R11 R0 K22 ["_softSnapper"]
       87 MOVE                             R13 R6
       88 MOVE                             R14 R10
       89 NAMECALL                         R11 R11 K23 ["updateCurrentSnap"]
       91 CALL                             R11 3 1
       92 JUMPIFNOT                        R11 ; [+1]
       93 MOVE                             R9 R11
       94 GETTABLEKS                       R11 R0 K4 ["_handles"]
       96 GETTABLEKS                       R12 R0 K0 ["_draggingHandleId"]
       98 GETTABLE                         R10 R11 R12
       99 GETTABLEKS                       R11 R10 K24 ["NormalId"]
      101 LOADNIL                          R12
      102 NEWTABLE                         R13 0 3
      104 GETTABLEKS                       R14 R0 K25 ["_originalBoundingBoxSize"]
      106 GETTABLEKS                       R14 R14 K26 ["X"]
      108 GETTABLEKS                       R15 R0 K25 ["_originalBoundingBoxSize"]
      110 GETTABLEKS                       R15 R15 K27 ["Y"]
      112 GETTABLEKS                       R16 R0 K25 ["_originalBoundingBoxSize"]
      114 GETTABLEKS                       R16 R16 K28 ["Z"]
      116 SETLIST                          R13 R14 3 [1]
      118 GETTABLE                         R14 R13 R11
      119 NAMECALL                         R15 R0 K29 ["_getBasisOffset"]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R15 R15 K30 ["Position"]
      124 FASTCALL                         VECTOR ; [+2]
      125 GETIMPORT                        R17 K33 [Vector3.new]
      127 CALL                             R17 0 1
      128 NAMECALL                         R15 R15 K34 ["FuzzyEq"]
      130 CALL                             R15 2 1
      131 JUMPIF                           R15 ; [+29]
      132 GETTABLEKS                       R16 R0 K15 ["_startDistance"]
      134 DIV                              R15 R3 R16
      135 JUMPIFNOTEQKN                    R14 K35 [0] ; [+3]
      137 MOVE                             R16 R3
      138 JUMP                             ; [+1]
      139 MUL                              R16 R15 R14
      140 GETTABLEKS                       R17 R0 K7 ["_draggerContext"]
      142 SUB                              R19 R16 R14
      143 NAMECALL                         R17 R17 K17 ["snapToGridSize"]
      145 CALL                             R17 2 1
      146 MOVE                             R9 R17
      147 NAMECALL                         R17 R0 K18 ["_hasSoftSnap"]
      149 CALL                             R17 1 1
      150 JUMPIFNOT                        R17 ; [+14]
      151 GETTABLEKS                       R17 R0 K22 ["_softSnapper"]
      153 MOVE                             R19 R9
      154 LOADNIL                          R20
      155 NAMECALL                         R17 R17 K23 ["updateCurrentSnap"]
      157 CALL                             R17 3 1
      158 JUMPIFNOT                        R17 ; [+6]
      159 MOVE                             R9 R17
      160 JUMP                             ; [+4]
      161 GETTABLEKS                       R15 R0 K36 ["_lastResizeFromCenter"]
      163 JUMPIFNOT                        R15 ; [+1]
      164 MULK                             R9 R9 K37 [2]
      165 ADD                              R16 R14 R9
      166 GETTABLEKS                       R17 R0 K12 ["_dragDirection"]
      168 GETTABLEKS                       R18 R0 K38 ["_worldBBoxCenterToScaleCenter"]
      170 GETTABLEKS                       R19 R0 K36 ["_lastResizeFromCenter"]
      172 JUMPIFNOTEQKN                    R14 K35 [0] ; [+8]
      174 JUMPIFNOT                        R19 ; [+2]
      175 MOVE                             R15 R18
      176 JUMP                             ; [+8]
      177 SUB                              R21 R16 R14
      178 DIVK                             R20 R21 K37 [2]
      179 MUL                              R15 R20 R17
      180 JUMP                             ; [+4]
      181 DIV                              R20 R16 R14
      182 MINUS                            R21 R18
      183 MUL                              R22 R20 R21
      184 SUB                              R15 R22 R21
      185 GETTABLEKS                       R16 R0 K39 ["_originalBoundingBoxCFrame"]
      187 NAMECALL                         R16 R16 K40 ["Inverse"]
      189 CALL                             R16 1 1
      190 MOVE                             R19 R15
      191 NAMECALL                         R17 R16 K41 ["VectorToWorldSpace"]
      193 CALL                             R17 2 1
      194 MOVE                             R12 R17
      195 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      197 GETTABLEKS                       R17 R17 K26 ["X"]
      199 JUMPIF                           R17 ; [+10]
      200 LOADN                            R18 0
      201 GETTABLEKS                       R19 R12 K27 ["Y"]
      203 GETTABLEKS                       R20 R12 K28 ["Z"]
      205 FASTCALL                         VECTOR ; [+2]
      206 GETIMPORT                        R17 K33 [Vector3.new]
      208 CALL                             R17 3 1
      209 MOVE                             R12 R17
      210 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      212 GETTABLEKS                       R17 R17 K27 ["Y"]
      214 JUMPIF                           R17 ; [+10]
      215 GETTABLEKS                       R18 R12 K26 ["X"]
      217 LOADN                            R19 0
      218 GETTABLEKS                       R20 R12 K28 ["Z"]
      220 FASTCALL                         VECTOR ; [+2]
      221 GETIMPORT                        R17 K33 [Vector3.new]
      223 CALL                             R17 3 1
      224 MOVE                             R12 R17
      225 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      227 GETTABLEKS                       R17 R17 K28 ["Z"]
      229 JUMPIF                           R17 ; [+10]
      230 GETTABLEKS                       R18 R12 K26 ["X"]
      232 GETTABLEKS                       R19 R12 K27 ["Y"]
      234 LOADN                            R20 0
      235 FASTCALL                         VECTOR ; [+2]
      236 GETIMPORT                        R17 K33 [Vector3.new]
      238 CALL                             R17 3 1
      239 MOVE                             R12 R17
      240 GETTABLEKS                       R17 R0 K25 ["_originalBoundingBoxSize"]
      242 GETTABLEKS                       R18 R0 K42 ["_lastAxesToScale"]
      244 JUMPIFNOT                        R4 ; [+6]
      245 GETTABLEKS                       R19 R0 K7 ["_draggerContext"]
      247 NAMECALL                         R19 R19 K43 ["getGridSize"]
      249 CALL                             R19 1 1
      250 JUMP                             ; [+1]
      251 LOADN                            R19 0
      252 GETTABLEKS                       R20 R0 K44 ["_minimumSize"]
      254 GETTABLEKS                       R21 R0 K45 ["_maximumSize"]
      256 GETUPVAL                         R22 2
      257 MOVE                             R23 R17
      258 MOVE                             R24 R9
      259 MOVE                             R25 R11
      260 MOVE                             R26 R18
      261 MOVE                             R27 R19
      262 MOVE                             R28 R20
      263 MOVE                             R29 R21
      264 CALL                             R22 7 2
      265 JUMPIFEQKN                       R9 K35 [0] ; [+3]
      267 DIV                              R24 R23 R9
      268 MUL                              R12 R12 R24
      269 SUB                              R25 R9 R23
      270 LOADN                            R26 0
      271 JUMPIFLT                         R26 R25 ; [+2]
      273 LOADB                            R24 0 +1
      274 LOADB                            R24 1
      275 SETTABLEKS                       R24 R0 K46 ["_scalingLimitReachedUpper"]
      277 SUB                              R25 R23 R9
      278 LOADN                            R26 0
      279 JUMPIFLT                         R26 R25 ; [+2]
      281 LOADB                            R24 0 +1
      282 LOADB                            R24 1
      283 SETTABLEKS                       R24 R0 K47 ["_scalingLimitReachedLower"]
      285 GETTABLEKS                       R25 R0 K48 ["_committedDeltaSize"]
      287 ADD                              R24 R22 R25
      288 GETTABLEKS                       R26 R0 K49 ["_committedOffset"]
      290 ADD                              R25 R12 R26
      291 FASTCALL                         VECTOR ; [+2]
      292 GETIMPORT                        R28 K33 [Vector3.new]
      294 CALL                             R28 0 1
      295 NAMECALL                         R26 R24 K34 ["FuzzyEq"]
      297 CALL                             R26 2 1
      298 JUMPIFNOT                        R26 ; [+5]
      299 FASTCALL                         VECTOR ; [+2]
      300 GETIMPORT                        R26 K33 [Vector3.new]
      302 CALL                             R26 0 1
      303 MOVE                             R24 R26
      304 FASTCALL                         VECTOR ; [+2]
      305 GETIMPORT                        R28 K33 [Vector3.new]
      307 CALL                             R28 0 1
      308 NAMECALL                         R26 R25 K34 ["FuzzyEq"]
      310 CALL                             R26 2 1
      311 JUMPIFNOT                        R26 ; [+5]
      312 FASTCALL                         VECTOR ; [+2]
      313 GETIMPORT                        R26 K33 [Vector3.new]
      315 CALL                             R26 0 1
      316 MOVE                             R25 R26
      317 GETTABLEKS                       R26 R0 K50 ["_implementation"]
      319 MOVE                             R28 R24
      320 MOVE                             R29 R25
      321 NAMECALL                         R26 R26 K51 ["updateScale"]
      323 CALL                             R26 3 2
      324 SETTABLEKS                       R26 R0 K52 ["_lastDeltaSize"]
      326 SETTABLEKS                       R27 R0 K53 ["_lastOffset"]
      328 GETTABLEKS                       R27 R0 K52 ["_lastDeltaSize"]
      330 JUMPIFNOTEQ                      R24 R27 ; [+2]
      332 LOADB                            R26 0 +1
      333 LOADB                            R26 1
      334 SETTABLEKS                       R26 R0 K54 ["_resizeWasConstrained"]
      336 GETTABLEKS                       R26 R0 K55 ["_boundingBox"]
      338 GETTABLEKS                       R28 R0 K39 ["_originalBoundingBoxCFrame"]
      340 GETIMPORT                        R29 K57 [CFrame.new]
      342 GETTABLEKS                       R31 R0 K53 ["_lastOffset"]
      344 GETTABLEKS                       R32 R0 K49 ["_committedOffset"]
      346 SUB                              R30 R31 R32
      347 CALL                             R29 1 1
      348 MUL                              R27 R28 R29
      349 SETTABLEKS                       R27 R26 K56 ["CFrame"]
      351 GETTABLEKS                       R26 R0 K55 ["_boundingBox"]
      353 GETTABLEKS                       R29 R0 K52 ["_lastDeltaSize"]
      355 GETTABLEKS                       R30 R0 K48 ["_committedDeltaSize"]
      357 SUB                              R28 R29 R30
      358 ADD                              R27 R17 R28
      359 SETTABLEKS                       R27 R26 K58 ["Size"]
      361 GETIMPORT                        R26 K57 [CFrame.new]
      363 GETUPVAL                         R28 3
      364 GETTABLEKS                       R28 R28 K59 ["componentwiseOperation"]
      366 GETTABLEKS                       R29 R0 K55 ["_boundingBox"]
      368 GETTABLEKS                       R29 R29 K58 ["Size"]
      370 GETTABLEKS                       R30 R0 K25 ["_originalBoundingBoxSize"]
      372 DUPCLOSURE                       R31 K60 [PROTO_32]
      373 CALL                             R28 3 1
      374 GETTABLEKS                       R29 R0 K61 ["_originalBasisOffset"]
      376 MUL                              R27 R28 R29
      377 CALL                             R26 1 1
      378 GETTABLEKS                       R27 R0 K62 ["_summonBasisOffset"]
      380 JUMPIFNOT                        R27 ; [+3]
      381 SETTABLEKS                       R26 R0 K62 ["_summonBasisOffset"]
      383 RETURN                           R0 0
      384 SETTABLEKS                       R26 R0 K63 ["_basisOffset"]
      386 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R2 R0 K2 ["_implementation"]
        8 NAMECALL                         R2 R2 K3 ["endScale"]
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R0 K1 ["_draggingHandleId"]
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R0 K4 ["_scalingLimitReachedUpper"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R0 K5 ["_scalingLimitReachedLower"]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R0 K6 ["_resizeWasConstrained"]
       23 GETTABLEKS                       R2 R0 K7 ["_schema"]
       25 GETTABLEKS                       R2 R2 K8 ["addUndoWaypoint"]
       27 GETTABLEKS                       R3 R0 K9 ["_draggerContext"]
       29 LOADK                            R4 K10 ["Scale Selection"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R2 R2 K0 ["Offset"]
        4 NAMECALL                         R3 R2 K1 ["Inverse"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R6 R0 K2 ["_originalBoundingBoxSize"]
        9 NAMECALL                         R4 R3 K3 ["VectorToWorldSpace"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R7 R4 K5 ["Z"]
       14 FASTCALL1                        MATH_ABS R7 ; [+2]
       15 GETIMPORT                        R6 K8 [math.abs]
       17 CALL                             R6 1 1
       18 MULK                             R5 R6 K4 [0.5]
       19 GETIMPORT                        R7 K11 [CFrame.new]
       21 LOADN                            R8 0
       22 LOADN                            R9 0
       23 MOVE                             R10 R5
       24 CALL                             R7 3 1
       25 MUL                              R6 R2 R7
       26 RETURN                           R6 1

PROTO_36:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R0 K1 ["_originalBoundingBoxCFrame"]
        6 GETTABLEKS                       R4 R4 K2 ["Rotation"]
        8 MUL                              R3 R4 R2
        9 GETTABLEKS                       R4 R3 K3 ["Position"]
       11 RETURN                           R4 1

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_handleCFrame"]
        2 GETTABLEKS                       R1 R1 K1 ["LookVector"]
        4 SETTABLEKS                       R1 R0 K2 ["_dragDirection"]
        6 GETTABLEKS                       R2 R0 K3 ["_handles"]
        8 GETTABLEKS                       R3 R0 K4 ["_draggingHandleId"]
       10 GETTABLE                         R1 R2 R3
       11 GETTABLEKS                       R3 R1 K5 ["HandleCFrame"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["getLocalHandleOffset"]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 1
       18 MUL                              R2 R3 R4
       19 GETTABLEKS                       R2 R2 K7 ["Position"]
       21 SETTABLEKS                       R2 R0 K8 ["_dragHandleCenter"]
       23 GETTABLEKS                       R2 R0 K9 ["_lastResizeFromCenter"]
       25 JUMPIFNOT                        R2 ; [+15]
       26 GETTABLEKS                       R3 R0 K10 ["_originalBoundingBoxCFrame"]
       28 GETTABLEKS                       R3 R3 K11 ["Rotation"]
       30 GETIMPORT                        R4 K14 [CFrame.new]
       32 GETTABLEKS                       R5 R0 K15 ["_originalBasisOffset"]
       34 CALL                             R4 1 1
       35 MUL                              R2 R3 R4
       36 GETTABLEKS                       R3 R2 K7 ["Position"]
       38 SETTABLEKS                       R3 R0 K16 ["_worldBBoxCenterToScaleCenter"]
       40 JUMP                             ; [+24]
       41 GETTABLEKS                       R4 R0 K4 ["_draggingHandleId"]
       43 NAMECALL                         R2 R0 K17 ["_getScaleCenterToOppositeBoundingBoxSide"]
       45 CALL                             R2 2 1
       46 GETTABLEKS                       R4 R0 K8 ["_dragHandleCenter"]
       48 GETTABLEKS                       R5 R0 K10 ["_originalBoundingBoxCFrame"]
       50 GETTABLEKS                       R5 R5 K7 ["Position"]
       52 SUB                              R3 R4 R5
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K18 ["intersectRayPlanePoint"]
       56 MOVE                             R5 R3
       57 GETTABLEKS                       R6 R0 K2 ["_dragDirection"]
       59 MOVE                             R7 R2
       60 GETTABLEKS                       R8 R0 K2 ["_dragDirection"]
       62 CALL                             R4 4 1
       63 SETTABLEKS                       R4 R0 K16 ["_worldBBoxCenterToScaleCenter"]
       65 GETTABLEKS                       R3 R0 K10 ["_originalBoundingBoxCFrame"]
       67 GETTABLEKS                       R3 R3 K7 ["Position"]
       69 GETTABLEKS                       R4 R0 K16 ["_worldBBoxCenterToScaleCenter"]
       71 ADD                              R2 R3 R4
       72 SETTABLEKS                       R2 R0 K19 ["_dragStartPosition"]
       74 RETURN                           R0 0

PROTO_38:
        0 JUMPIFNOT                        R2 ; [+3]
        1 NAMECALL                         R3 R0 K0 ["_computeProjectionLineAndScaleCenter"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K1 ["_dragStartPosition"]
        7 GETTABLEKS                       R5 R0 K2 ["_dragDirection"]
        9 MOVE                             R6 R1
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R1 R1 K1 ["isEmpty"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+12]
        6 GETTABLEKS                       R1 R0 K2 ["_boundingBox"]
        8 GETTABLEKS                       R1 R1 K3 ["Size"]
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R3 K6 [Vector3.new]
       13 CALL                             R3 0 1
       14 NAMECALL                         R1 R1 K7 ["FuzzyEq"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+5]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K8 ["_handles"]
       22 RETURN                           R0 0
       23 GETIMPORT                        R1 K10 [pairs]
       25 GETUPVAL                         R2 0
       26 CALL                             R1 1 3
       27 FORGPREP_NEXT                    R1
       28 GETTABLEKS                       R6 R5 K11 ["Offset"]
       30 NAMECALL                         R7 R6 K12 ["Inverse"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R10 R0 K2 ["_boundingBox"]
       35 GETTABLEKS                       R10 R10 K3 ["Size"]
       37 NAMECALL                         R8 R7 K13 ["VectorToWorldSpace"]
       39 CALL                             R8 2 1
       40 GETTABLEKS                       R11 R8 K15 ["Z"]
       42 FASTCALL1                        MATH_ABS R11 ; [+2]
       43 GETIMPORT                        R10 K18 [math.abs]
       45 CALL                             R10 1 1
       46 MULK                             R9 R10 K14 [0.5]
       47 NAMECALL                         R12 R0 K19 ["_getBasisOffset"]
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R12 R12 K20 ["Position"]
       52 NAMECALL                         R10 R7 K13 ["VectorToWorldSpace"]
       54 CALL                             R10 2 1
       55 GETTABLEKS                       R12 R10 K15 ["Z"]
       57 FASTCALL1                        MATH_ABS R12 ; [+2]
       58 GETIMPORT                        R11 K18 [math.abs]
       60 CALL                             R11 1 1
       61 JUMPIFNOTLT                      R9 R11 ; [+13]
       63 GETTABLEKS                       R11 R10 K15 ["Z"]
       65 LOADN                            R12 0
       66 JUMPIFNOTLT                      R11 R12 ; [+8]
       68 GETTABLEKS                       R12 R10 K15 ["Z"]
       70 FASTCALL1                        MATH_ABS R12 ; [+2]
       71 GETIMPORT                        R11 K18 [math.abs]
       73 CALL                             R11 1 1
       74 MOVE                             R9 R11
       75 GETTABLEKS                       R13 R0 K2 ["_boundingBox"]
       77 GETTABLEKS                       R13 R13 K21 ["CFrame"]
       79 MUL                              R12 R13 R6
       80 GETIMPORT                        R13 K22 [CFrame.new]
       82 GETTABLEKS                       R14 R10 K23 ["X"]
       84 GETTABLEKS                       R15 R10 K24 ["Y"]
       86 MINUS                            R16 R9
       87 CALL                             R13 3 1
       88 MUL                              R11 R12 R13
       89 GETUPVAL                         R13 1
       90 CALL                             R13 0 1
       91 JUMPIFNOT                        R13 ; [+7]
       92 GETUPVAL                         R12 2
       93 GETTABLEKS                       R12 R12 K25 ["get"]
       95 GETTABLEKS                       R13 R5 K26 ["Axis"]
       97 CALL                             R12 1 1
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R12 R5 K27 ["Color"]
      101 GETTABLEKS                       R13 R0 K8 ["_handles"]
      103 DUPTABLE                         R14 K33 [{"Axis", "AxisId", "Color", "HighlightColor", "HandleCFrame", "NormalId", "Scale"}]
      104 GETTABLEKS                       R15 R6 K34 ["LookVector"]
      106 SETTABLEKS                       R15 R14 K26 ["Axis"]
      108 GETUPVAL                         R16 1
      109 CALL                             R16 0 1
      110 JUMPIFNOT                        R16 ; [+3]
      111 GETTABLEKS                       R15 R5 K26 ["Axis"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R15
      115 SETTABLEKS                       R15 R14 K28 ["AxisId"]
      117 SETTABLEKS                       R12 R14 K27 ["Color"]
      119 GETUPVAL                         R16 1
      120 CALL                             R16 0 1
      121 JUMPIFNOT                        R16 ; [+6]
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K35 ["makeHighlighted"]
      125 MOVE                             R16 R12
      126 CALL                             R15 1 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R15
      129 SETTABLEKS                       R15 R14 K29 ["HighlightColor"]
      131 SETTABLEKS                       R11 R14 K30 ["HandleCFrame"]
      133 GETTABLEKS                       R15 R5 K31 ["NormalId"]
      135 SETTABLEKS                       R15 R14 K31 ["NormalId"]
      137 GETTABLEKS                       R15 R0 K36 ["_draggerContext"]
      139 GETTABLEKS                       R17 R11 K20 ["Position"]
      141 NAMECALL                         R15 R15 K37 ["getHandleScale"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K32 ["Scale"]
      146 SETTABLE                         R14 R13 R4
      147 FORGLOOP                         R1 2 ; [-120]
      149 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K3 [Enum.KeyCode.H]
        7 JUMPIFNOTEQ                      R1 R2 ; [+16]
        9 GETTABLEKS                       R2 R0 K4 ["_draggerContext"]
       11 LOADK                            R4 K5 ["HotkeyUsageHidden"]
       12 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       14 LOADK                            R8 K5 ["HotkeyUsageHidden"]
       15 NAMECALL                         R6 R6 K6 ["getSetting"]
       17 CALL                             R6 2 1
       18 NOT                              R5 R6
       19 NAMECALL                         R2 R2 K7 ["setSetting"]
       21 CALL                             R2 3 0
       22 LOADB                            R2 1
       23 RETURN                           R2 1
       24 LOADB                            R2 0
       25 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 LOADB                            R2 0
        6 RETURN                           R2 1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_implementation"]
        2 GETTABLEKS                       R1 R1 K1 ["getPriority"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["_implementation"]
        7 GETTABLEKS                       R1 R1 K1 ["getPriority"]
        9 CALL                             R1 0 -1
       10 RETURN                           R1 -1
       11 LOADN                            R1 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Utility"]
       22 GETTABLEKS                       R4 R4 K8 ["Colors"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Utility"]
       29 GETTABLEKS                       R5 R5 K9 ["Math"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["StandaloneSelectionBox"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Components"]
       43 GETTABLEKS                       R7 R7 K12 ["ScaleHandleView"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Components"]
       50 GETTABLEKS                       R8 R8 K13 ["SummonedPivot"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R9 K14 ["HotkeyUsageInfo"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K15 ["WireframeHandleAdornment"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R0 K7 ["Utility"]
       71 GETTABLEKS                       R11 R11 K16 ["HotkeyHelpBuilder"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Components"]
       78 GETTABLEKS                       R12 R12 K17 ["FloatingValueInput"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R13 R0 K7 ["Utility"]
       85 GETTABLEKS                       R13 R13 K18 ["conciseNumberFormat"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R14 R0 K7 ["Utility"]
       92 GETTABLEKS                       R14 R14 K19 ["SoftSnapper"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K7 ["Utility"]
       99 GETTABLEKS                       R15 R15 K20 ["computeHandlePositionDistance"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R16 R0 K7 ["Utility"]
      106 GETTABLEKS                       R16 R16 K21 ["computeDraggedDistance"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K22 ["Flags"]
      113 GETTABLEKS                       R17 R17 K23 ["getFFlagNextGenDraggers"]
      115 CALL                             R16 1 1
      116 NEWTABLE                         R17 64 0
      118 SETTABLEKS                       R17 R17 K24 ["__index"]
      120 GETIMPORT                        R18 K27 [table.freeze]
      122 DUPTABLE                         R19 K34 [{["X_AXIS"] = 1, ["Y_AXIS"] = 2, ["Z_AXIS"] = 3}]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K27 [table.freeze]
      126 DUPTABLE                         R20 K41 [{"MinusX", "PlusX", "MinusY", "PlusY", "MinusZ", "PlusZ"}]
      127 DUPTABLE                         R21 K47 [{["Offset"], ["Color"], ["Axis"] = "X", ["NormalId"]}]
      128 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      130 FASTCALL                         VECTOR ; [+2]
      131 GETIMPORT                        R23 K53 [Vector3.new]
      133 CALL                             R23 0 1
      134 LOADK                            R24 K54 [{0, 1, 0}]
      135 LOADK                            R25 K55 [{0, 0, 1}]
      136 CALL                             R22 3 1
      137 SETTABLEKS                       R22 R21 K42 ["Offset"]
      139 GETTABLEKS                       R22 R3 K28 ["X_AXIS"]
      141 SETTABLEKS                       R22 R21 K43 ["Color"]
      143 GETTABLEKS                       R22 R18 K28 ["X_AXIS"]
      145 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      147 SETTABLEKS                       R21 R20 K35 ["MinusX"]
      149 DUPTABLE                         R21 K47 [{["Offset"], ["Color"], ["Axis"] = "X", ["NormalId"]}]
      150 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      152 FASTCALL                         VECTOR ; [+2]
      153 GETIMPORT                        R23 K53 [Vector3.new]
      155 CALL                             R23 0 1
      156 LOADK                            R24 K54 [{0, 1, 0}]
      157 LOADK                            R25 K56 [{0, 0, -1}]
      158 CALL                             R22 3 1
      159 SETTABLEKS                       R22 R21 K42 ["Offset"]
      161 GETTABLEKS                       R22 R3 K28 ["X_AXIS"]
      163 SETTABLEKS                       R22 R21 K43 ["Color"]
      165 GETTABLEKS                       R22 R18 K28 ["X_AXIS"]
      167 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      169 SETTABLEKS                       R21 R20 K36 ["PlusX"]
      171 DUPTABLE                         R21 K58 [{["Offset"], ["Color"], ["Axis"] = "Y", ["NormalId"]}]
      172 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      174 FASTCALL                         VECTOR ; [+2]
      175 GETIMPORT                        R23 K53 [Vector3.new]
      177 CALL                             R23 0 1
      178 LOADK                            R24 K55 [{0, 0, 1}]
      179 LOADK                            R25 K59 [{1, 0, 0}]
      180 CALL                             R22 3 1
      181 SETTABLEKS                       R22 R21 K42 ["Offset"]
      183 GETTABLEKS                       R22 R3 K30 ["Y_AXIS"]
      185 SETTABLEKS                       R22 R21 K43 ["Color"]
      187 GETTABLEKS                       R22 R18 K30 ["Y_AXIS"]
      189 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      191 SETTABLEKS                       R21 R20 K37 ["MinusY"]
      193 DUPTABLE                         R21 K58 [{["Offset"], ["Color"], ["Axis"] = "Y", ["NormalId"]}]
      194 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      196 FASTCALL                         VECTOR ; [+2]
      197 GETIMPORT                        R23 K53 [Vector3.new]
      199 CALL                             R23 0 1
      200 LOADK                            R24 K55 [{0, 0, 1}]
      201 LOADK                            R25 K60 [{-1, 0, 0}]
      202 CALL                             R22 3 1
      203 SETTABLEKS                       R22 R21 K42 ["Offset"]
      205 GETTABLEKS                       R22 R3 K30 ["Y_AXIS"]
      207 SETTABLEKS                       R22 R21 K43 ["Color"]
      209 GETTABLEKS                       R22 R18 K30 ["Y_AXIS"]
      211 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      213 SETTABLEKS                       R21 R20 K38 ["PlusY"]
      215 DUPTABLE                         R21 K62 [{["Offset"], ["Color"], ["Axis"] = "Z", ["NormalId"]}]
      216 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      218 FASTCALL                         VECTOR ; [+2]
      219 GETIMPORT                        R23 K53 [Vector3.new]
      221 CALL                             R23 0 1
      222 LOADK                            R24 K59 [{1, 0, 0}]
      223 LOADK                            R25 K54 [{0, 1, 0}]
      224 CALL                             R22 3 1
      225 SETTABLEKS                       R22 R21 K42 ["Offset"]
      227 GETTABLEKS                       R22 R3 K32 ["Z_AXIS"]
      229 SETTABLEKS                       R22 R21 K43 ["Color"]
      231 GETTABLEKS                       R22 R18 K32 ["Z_AXIS"]
      233 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      235 SETTABLEKS                       R21 R20 K39 ["MinusZ"]
      237 DUPTABLE                         R21 K62 [{["Offset"], ["Color"], ["Axis"] = "Z", ["NormalId"]}]
      238 GETIMPORT                        R22 K50 [CFrame.fromMatrix]
      240 FASTCALL                         VECTOR ; [+2]
      241 GETIMPORT                        R23 K53 [Vector3.new]
      243 CALL                             R23 0 1
      244 LOADK                            R24 K59 [{1, 0, 0}]
      245 LOADK                            R25 K63 [{0, -1, 0}]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K42 ["Offset"]
      249 GETTABLEKS                       R22 R3 K32 ["Z_AXIS"]
      251 SETTABLEKS                       R22 R21 K43 ["Color"]
      253 GETTABLEKS                       R22 R18 K32 ["Z_AXIS"]
      255 SETTABLEKS                       R22 R21 K46 ["NormalId"]
      257 SETTABLEKS                       R21 R20 K40 ["PlusZ"]
      259 CALL                             R19 1 1
      260 DUPCLOSURE                       R20 K64 [PROTO_0]
      261 CAPTURE                          VAL R16
      262 CAPTURE                          VAL R3
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R17
      265 SETTABLEKS                       R20 R17 K52 ["new"]
      267 DUPCLOSURE                       R20 K65 [PROTO_1]
      268 SETTABLEKS                       R20 R17 K66 ["_hasSoftSnap"]
      270 DUPCLOSURE                       R20 K67 [PROTO_2]
      271 SETTABLEKS                       R20 R17 K68 ["beginSummon"]
      273 DUPCLOSURE                       R20 K69 [PROTO_3]
      274 SETTABLEKS                       R20 R17 K70 ["endSummon"]
      276 DUPCLOSURE                       R20 K71 [PROTO_4]
      277 SETTABLEKS                       R20 R17 K72 ["_getBasisOffset"]
      279 DUPCLOSURE                       R20 K73 [PROTO_5]
      280 SETTABLEKS                       R20 R17 K74 ["update"]
      282 DUPCLOSURE                       R20 K75 [PROTO_6]
      283 SETTABLEKS                       R20 R17 K76 ["shouldBiasTowardsObjects"]
      285 DUPCLOSURE                       R20 K77 [PROTO_7]
      286 SETTABLEKS                       R20 R17 K78 ["_rememberCurrentBoundsAsOriginal"]
      288 DUPCLOSURE                       R20 K79 [PROTO_8]
      289 SETTABLEKS                       R20 R17 K80 ["_refreshDrag"]
      291 DUPCLOSURE                       R20 K81 [PROTO_9]
      292 DUPCLOSURE                       R21 K82 [PROTO_10]
      293 SETTABLEKS                       R21 R17 K83 ["_updateExtrudeMode"]
      295 DUPCLOSURE                       R21 K84 [PROTO_11]
      296 SETTABLEKS                       R21 R17 K85 ["_refreshDragIfNeeded"]
      298 DUPCLOSURE                       R21 K86 [PROTO_12]
      299 CAPTURE                          VAL R6
      300 SETTABLEKS                       R21 R17 K87 ["hitTest"]
      302 DUPCLOSURE                       R21 K88 [PROTO_13]
      303 CAPTURE                          VAL R3
      304 SETTABLEKS                       R21 R17 K89 ["_getBoundingBoxColor"]
      306 DUPCLOSURE                       R21 K90 [PROTO_14]
      307 SETTABLEKS                       R21 R17 K91 ["_getBoundingBoxThickness"]
      309 DUPCLOSURE                       R21 K92 [PROTO_15]
      310 SETTABLEKS                       R21 R17 K93 ["_shouldDrawBoundingBox"]
      312 DUPTABLE                         R21 K98 [{["Hotkey"] = "⬇Alt", ["LabelLocEntry"] = "ScaleUniformly"}]
      313 DUPTABLE                         R22 K101 [{["Hotkey"] = "⬆Alt", ["LabelLocEntry"] = "ScaleResize"}]
      314 DUPTABLE                         R23 K104 [{["Hotkey"] = "⬇Ctrl", ["LabelLocEntry"] = "ScaleAroundPivot"}]
      315 DUPTABLE                         R24 K107 [{["Hotkey"] = "⬆Ctrl", ["LabelLocEntry"] = "ScaleFromEdge"}]
      316 DUPCLOSURE                       R25 K108 [PROTO_16]
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R24
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R22
      321 CAPTURE                          VAL R21
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R8
      324 SETTABLEKS                       R25 R17 K109 ["_renderHotkeyHelp"]
      326 DUPCLOSURE                       R25 K110 [PROTO_17]
      327 SETTABLEKS                       R25 R17 K111 ["_renderSoftSnaps"]
      329 DUPCLOSURE                       R25 K112 [PROTO_19]
      330 CAPTURE                          VAL R2
      331 CAPTURE                          VAL R9
      332 SETTABLEKS                       R25 R17 K113 ["_renderChosenAxis"]
      334 DUPCLOSURE                       R25 K114 [PROTO_20]
      335 CAPTURE                          VAL R2
      336 CAPTURE                          VAL R6
      337 CAPTURE                          VAL R16
      338 SETTABLEKS                       R25 R17 K115 ["_renderDraggingHandles"]
      340 DUPCLOSURE                       R25 K116 [PROTO_21]
      341 CAPTURE                          VAL R16
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R11
      344 CAPTURE                          VAL R12
      345 SETTABLEKS                       R25 R17 K117 ["_renderSizeMeasurement"]
      347 DUPCLOSURE                       R25 K118 [PROTO_22]
      348 CAPTURE                          VAL R2
      349 CAPTURE                          VAL R7
      350 SETTABLEKS                       R25 R17 K119 ["_renderSummon"]
      352 DUPCLOSURE                       R25 K120 [PROTO_23]
      353 CAPTURE                          VAL R2
      354 CAPTURE                          VAL R5
      355 SETTABLEKS                       R25 R17 K121 ["_renderBoundingBox"]
      357 DUPCLOSURE                       R25 K122 [PROTO_24]
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R2
      361 CAPTURE                          VAL R6
      362 SETTABLEKS                       R25 R17 K123 ["_renderHovering"]
      364 DUPCLOSURE                       R25 K124 [PROTO_25]
      365 CAPTURE                          VAL R2
      366 SETTABLEKS                       R25 R17 K125 ["_renderDragging"]
      368 DUPCLOSURE                       R25 K126 [PROTO_26]
      369 CAPTURE                          VAL R2
      370 SETTABLEKS                       R25 R17 K127 ["render"]
      372 DUPCLOSURE                       R25 K128 [PROTO_27]
      373 SETTABLEKS                       R25 R17 K129 ["_needsSoftSnaps"]
      375 DUPCLOSURE                       R25 K130 [PROTO_28]
      376 SETTABLEKS                       R25 R17 K131 ["mouseDown"]
      378 DUPCLOSURE                       R25 K132 [PROTO_29]
      379 DUPCLOSURE                       R26 K133 [PROTO_30]
      380 CAPTURE                          VAL R4
      381 DUPCLOSURE                       R27 K134 [PROTO_31]
      382 DUPCLOSURE                       R28 K135 [PROTO_33]
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R14
      385 CAPTURE                          VAL R26
      386 CAPTURE                          VAL R4
      387 SETTABLEKS                       R28 R17 K136 ["mouseDrag"]
      389 DUPCLOSURE                       R28 K137 [PROTO_34]
      390 SETTABLEKS                       R28 R17 K138 ["mouseUp"]
      392 DUPCLOSURE                       R28 K139 [PROTO_35]
      393 CAPTURE                          VAL R19
      394 SETTABLEKS                       R28 R17 K140 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
      396 DUPCLOSURE                       R28 K141 [PROTO_36]
      397 SETTABLEKS                       R28 R17 K142 ["_getScaleCenterToOppositeBoundingBoxSide"]
      399 DUPCLOSURE                       R28 K143 [PROTO_37]
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R4
      402 SETTABLEKS                       R28 R17 K144 ["_computeProjectionLineAndScaleCenter"]
      404 DUPCLOSURE                       R28 K145 [PROTO_38]
      405 CAPTURE                          VAL R15
      406 SETTABLEKS                       R28 R17 K146 ["_getDistanceAlongAxis"]
      408 DUPCLOSURE                       R28 K147 [PROTO_39]
      409 CAPTURE                          VAL R19
      410 CAPTURE                          VAL R16
      411 CAPTURE                          VAL R3
      412 SETTABLEKS                       R28 R17 K148 ["_updateHandles"]
      414 NEWTABLE                         R28 8 0
      416 GETIMPORT                        R29 K152 [Enum.KeyCode.RightShift]
      418 LOADB                            R30 1
      419 SETTABLE                         R30 R28 R29
      420 GETIMPORT                        R29 K154 [Enum.KeyCode.LeftShift]
      422 LOADB                            R30 1
      423 SETTABLE                         R30 R28 R29
      424 GETIMPORT                        R29 K156 [Enum.KeyCode.RightControl]
      426 LOADB                            R30 1
      427 SETTABLE                         R30 R28 R29
      428 GETIMPORT                        R29 K158 [Enum.KeyCode.LeftControl]
      430 LOADB                            R30 1
      431 SETTABLE                         R30 R28 R29
      432 GETIMPORT                        R29 K160 [Enum.KeyCode.RightAlt]
      434 LOADB                            R30 1
      435 SETTABLE                         R30 R28 R29
      436 GETIMPORT                        R29 K162 [Enum.KeyCode.LeftAlt]
      438 LOADB                            R30 1
      439 SETTABLE                         R30 R28 R29
      440 DUPCLOSURE                       R29 K163 [PROTO_40]
      441 CAPTURE                          VAL R28
      442 SETTABLEKS                       R29 R17 K164 ["keyDown"]
      444 DUPCLOSURE                       R29 K165 [PROTO_41]
      445 CAPTURE                          VAL R28
      446 SETTABLEKS                       R29 R17 K166 ["keyUp"]
      448 DUPCLOSURE                       R29 K167 [PROTO_42]
      449 SETTABLEKS                       R29 R17 K168 ["getPriority"]
      451 RETURN                           R17 1
