PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["_handles"]
        6 MOVE                             R4 R1
        7 JUMPIF                           R4 ; [+2]
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R3 K1 ["_props"]
       12 SETTABLEKS                       R0 R3 K2 ["_draggerContext"]
       14 SETTABLEKS                       R2 R3 K3 ["_implementation"]
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+7]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K4 ["new"]
       22 MOVE                             R5 R0
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K5 ["_softSnapper"]
       26 GETUPVAL                         R6 2
       27 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K7 [setmetatable]
       32 CALL                             R4 2 1
       33 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldPartSnap"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R2 K4 ["Summonable"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       18 NAMECALL                         R1 R1 K6 ["getMouseRay"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R3 R0 K7 ["_schema"]
       23 GETTABLEKS                       R2 R3 K8 ["getMouseTarget"]
       25 GETTABLEKS                       R3 R0 K5 ["_draggerContext"]
       27 MOVE                             R4 R1
       28 NEWTABLE                         R5 0 0
       30 CALL                             R2 3 3
       31 JUMPIFNOT                        R3 ; [+42]
       32 GETTABLEKS                       R5 R0 K9 ["_selectionInfo"]
       34 MOVE                             R7 R3
       35 NAMECALL                         R5 R5 K10 ["doesContainItem"]
       37 CALL                             R5 2 1
       38 JUMPIFNOT                        R5 ; [+35]
       39 GETTABLEKS                       R6 R1 K11 ["Origin"]
       41 GETTABLEKS                       R9 R1 K12 ["Direction"]
       43 GETTABLEKS                       R8 R9 K13 ["Unit"]
       45 MUL                              R7 R8 R4
       46 ADD                              R5 R6 R7
       47 GETTABLEKS                       R7 R0 K14 ["_boundingBox"]
       49 GETTABLEKS                       R6 R7 K15 ["CFrame"]
       51 MOVE                             R8 R5
       52 NAMECALL                         R6 R6 K16 ["PointToObjectSpace"]
       54 CALL                             R6 2 1
       55 GETTABLEKS                       R9 R0 K14 ["_boundingBox"]
       57 GETTABLEKS                       R8 R9 K18 ["Size"]
       59 DIVK                             R7 R8 K17 [2]
       60 GETIMPORT                        R8 K20 [CFrame.new]
       62 MINUS                            R11 R7
       63 NAMECALL                         R9 R6 K21 ["Max"]
       65 CALL                             R9 2 1
       66 MOVE                             R11 R7
       67 NAMECALL                         R9 R9 K22 ["Min"]
       69 CALL                             R9 2 -1
       70 CALL                             R8 -1 1
       71 SETTABLEKS                       R8 R0 K23 ["_summonBasisOffset"]
       73 RETURN                           R0 0
       74 GETTABLEKS                       R5 R0 K5 ["_draggerContext"]
       76 NAMECALL                         R5 R5 K24 ["getMouseLocation"]
       78 CALL                             R5 1 1
       79 LOADNIL                          R6
       80 LOADK                            R7 K25 [∞]
       81 GETIMPORT                        R8 K27 [ipairs]
       83 GETUPVAL                         R9 1
       84 CALL                             R8 1 3
       85 FORGPREP_INEXT                   R8
       86 GETTABLEKS                       R15 R0 K14 ["_boundingBox"]
       88 GETTABLEKS                       R14 R15 K15 ["CFrame"]
       90 GETIMPORT                        R15 K20 [CFrame.new]
       92 GETTABLEKS                       R18 R0 K14 ["_boundingBox"]
       94 GETTABLEKS                       R17 R18 K18 ["Size"]
       96 MUL                              R16 R17 R12
       97 CALL                             R15 1 1
       98 MUL                              R13 R14 R15
       99 GETTABLEKS                       R14 R0 K5 ["_draggerContext"]
      101 GETTABLEKS                       R16 R13 K28 ["Position"]
      103 NAMECALL                         R14 R14 K29 ["worldToViewportPoint"]
      105 CALL                             R14 2 2
      106 GETIMPORT                        R18 K31 [Vector2.new]
      108 GETTABLEKS                       R19 R14 K32 ["X"]
      110 GETTABLEKS                       R20 R14 K33 ["Y"]
      112 CALL                             R18 2 1
      113 SUB                              R17 R5 R18
      114 GETTABLEKS                       R16 R17 K34 ["Magnitude"]
      116 JUMPIFNOT                        R15 ; [+4]
      117 JUMPIFNOTLT                      R16 R7 ; [+3]
      119 MOVE                             R7 R16
      120 MOVE                             R6 R13
      121 FORGLOOP                         R8 2 [inext] ; [-36]
      123 JUMPIFNOT                        R6 ; [+10]
      124 GETTABLEKS                       R9 R0 K14 ["_boundingBox"]
      126 GETTABLEKS                       R8 R9 K15 ["CFrame"]
      128 MOVE                             R10 R6
      129 NAMECALL                         R8 R8 K35 ["ToObjectSpace"]
      131 CALL                             R8 2 1
      132 SETTABLEKS                       R8 R0 K23 ["_summonBasisOffset"]
      134 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R3 R3 K1 ["getBoundingBox"]
        4 CALL                             R3 1 1
        5 MUL                              R2 R3 R1
        6 GETTABLEKS                       R4 R0 K2 ["_boundingBox"]
        8 GETTABLEKS                       R3 R4 K3 ["CFrame"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K4 ["ToObjectSpace"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R6 R0 K2 ["_boundingBox"]
       16 GETTABLEKS                       R5 R6 K6 ["Size"]
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

PROTO_5:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["_basisOffset"]
        5 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R1 R2 K1 ["Size"]
        4 SETTABLEKS                       R1 R0 K2 ["_originalBoundingBoxSize"]
        6 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        8 GETTABLEKS                       R1 R2 K3 ["CFrame"]
       10 SETTABLEKS                       R1 R0 K4 ["_originalBoundingBoxCFrame"]
       12 NAMECALL                         R2 R0 K5 ["_getBasisOffset"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R1 R2 K6 ["Position"]
       17 SETTABLEKS                       R1 R0 K7 ["_originalBasisOffset"]
       19 GETTABLEKS                       R3 R0 K8 ["_handles"]
       21 GETTABLEKS                       R4 R0 K9 ["_draggingHandleId"]
       23 GETTABLE                         R2 R3 R4
       24 GETTABLEKS                       R1 R2 K10 ["Axis"]
       26 GETTABLEKS                       R2 R0 K7 ["_originalBasisOffset"]
       28 MOVE                             R6 R1
       29 NAMECALL                         R4 R2 K11 ["Dot"]
       31 CALL                             R4 2 1
       32 MUL                              R3 R1 R4
       33 SUB                              R2 R2 R3
       34 SETTABLEKS                       R2 R0 K12 ["_perpendicularMovement"]
       36 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       28 GETTABLEKS                       R11 R0 K7 ["_boundingBox"]
       30 GETTABLEKS                       R10 R11 K8 ["Size"]
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

PROTO_13:
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

PROTO_14:
        0 LOADNIL                          R3
        1 LOADK                            R4 K0 [∞]
        2 GETIMPORT                        R5 K2 [pairs]
        4 GETTABLEKS                       R6 R0 K3 ["_handles"]
        6 CALL                             R5 1 3
        7 FORGPREP_NEXT                    R5
        8 GETUPVAL                         R11 0
        9 GETTABLEKS                       R10 R11 K4 ["hitTest"]
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
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R10 R11 K5 ["distanceFromHandle"]
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

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_scalingLimitReachedUpper"]
        2 JUMPIF                           R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_scalingLimitReachedLower"]
        5 JUMPIF                           R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_resizeWasConstrained"]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["SizeLimitReached"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K4 ["_draggerContext"]
       15 NAMECALL                         R1 R1 K5 ["getSelectionBoxColor"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getHoverThickness"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_scalingLimitReachedLower"]
        2 JUMPIF                           R1 ; [+22]
        3 GETTABLEKS                       R1 R0 K1 ["_scalingLimitReachedUpper"]
        5 JUMPIF                           R1 ; [+19]
        6 GETTABLEKS                       R1 R0 K2 ["_resizeWasConstrained"]
        8 JUMPIF                           R1 ; [+16]
        9 GETTABLEKS                       R2 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R2 K4 ["ShowBoundingBox"]
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

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 LOADK                            R3 K1 ["HotkeyUsageHidden"]
        3 NAMECALL                         R1 R1 K2 ["getSetting"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+74]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["addGridSnap"]
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
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R2 R3 K9 ["addSummonHandles"]
       61 MOVE                             R3 R1
       62 CALL                             R2 1 0
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R2 R3 K10 ["addHelp"]
       66 MOVE                             R3 R1
       67 CALL                             R2 1 0
       68 GETUPVAL                         R3 5
       69 GETTABLEKS                       R2 R3 K11 ["createElement"]
       71 GETUPVAL                         R3 6
       72 DUPTABLE                         R4 K14 [{"DraggerContext", "HotkeyList"}]
       73 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       75 SETTABLEKS                       R5 R4 K12 ["DraggerContext"]
       77 SETTABLEKS                       R1 R4 K13 ["HotkeyList"]
       79 CALL                             R2 2 -1
       80 RETURN                           R2 -1
       81 RETURN                           R0 0

PROTO_19:
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
       18 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R3 R4 K1 ["CFrame"]
        4 NAMECALL                         R4 R0 K2 ["_getBasisOffset"]
        6 CALL                             R4 1 1
        7 MUL                              R2 R3 R4
        8 GETTABLEKS                       R1 R2 K3 ["Position"]
       10 GETTABLEKS                       R2 R0 K4 ["_dragDirection"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K5 ["createElement"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K9 [{"AlwaysOnTop", "Color3", "Render"}]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K6 ["AlwaysOnTop"]
       20 GETTABLEKS                       R6 R0 K10 ["_draggerContext"]
       22 NAMECALL                         R6 R6 K11 ["getGridColor"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R5 K7 ["Color3"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R6 R5 K8 ["Render"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_22:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R3 R0 K0 ["_handles"]
        4 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R0 K1 ["_draggingHandleId"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["createElement"]
       12 GETUPVAL                         R5 1
       13 DUPTABLE                         R6 K6 [{"HandleCFrame", "Color", "Scale"}]
       14 GETTABLEKS                       R7 R2 K3 ["HandleCFrame"]
       16 SETTABLEKS                       R7 R6 K3 ["HandleCFrame"]
       18 GETTABLEKS                       R7 R2 K4 ["Color"]
       20 SETTABLEKS                       R7 R6 K4 ["Color"]
       22 GETTABLEKS                       R7 R2 K5 ["Scale"]
       24 SETTABLEKS                       R7 R6 K5 ["Scale"]
       26 CALL                             R4 2 1
       27 SETTABLE                         R4 R1 R3
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K7 ["createFragment"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 -1
       33 RETURN                           R3 -1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 GETTABLEKS                       R1 R2 K1 ["Size"]
        4 NEWTABLE                         R3 0 3
        6 GETTABLEKS                       R4 R1 K2 ["X"]
        8 GETTABLEKS                       R5 R1 K3 ["Y"]
       10 GETTABLEKS                       R6 R1 K4 ["Z"]
       12 SETLIST                          R3 R4 3 [1]
       14 GETTABLEKS                       R4 R0 K5 ["_normalId"]
       16 GETTABLE                         R2 R3 R4
       17 GETTABLEKS                       R5 R0 K0 ["_boundingBox"]
       19 GETTABLEKS                       R4 R5 K6 ["CFrame"]
       21 GETTABLEKS                       R3 R4 K7 ["Position"]
       23 GETTABLEKS                       R4 R0 K8 ["_draggerContext"]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R4 K9 ["worldToViewportPoint"]
       28 CALL                             R4 2 2
       29 JUMPIFNOT                        R5 ; [+25]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K10 ["createElement"]
       33 GETUPVAL                         R7 1
       34 DUPTABLE                         R8 K13 [{"DraggerContext", "Position", "Value"}]
       35 GETTABLEKS                       R9 R0 K8 ["_draggerContext"]
       37 SETTABLEKS                       R9 R8 K11 ["DraggerContext"]
       39 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       41 GETTABLEKS                       R10 R4 K2 ["X"]
       43 GETTABLEKS                       R11 R4 K3 ["Y"]
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K7 ["Position"]
       48 GETUPVAL                         R9 2
       49 MOVE                             R10 R2
       50 CALL                             R9 1 1
       51 SETTABLEKS                       R9 R8 K12 ["Value"]
       53 CALL                             R6 2 -1
       54 RETURN                           R6 -1
       55 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_summonBasisOffset"]
        2 JUMPIFNOT                        R1 ; [+39]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K5 [{"DraggerContext", "CFrame", "IsActive"}]
        8 GETTABLEKS                       R4 R0 K6 ["_draggerContext"]
       10 SETTABLEKS                       R4 R3 K2 ["DraggerContext"]
       12 GETTABLEKS                       R6 R0 K7 ["_boundingBox"]
       14 GETTABLEKS                       R5 R6 K3 ["CFrame"]
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
       42 RETURN                           R0 0

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["_shouldDrawBoundingBox"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+36]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["createElement"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K7 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
        9 GETTABLEKS                       R5 R0 K8 ["_boundingBox"]
       11 GETTABLEKS                       R4 R5 K2 ["CFrame"]
       13 SETTABLEKS                       R4 R3 K2 ["CFrame"]
       15 GETTABLEKS                       R5 R0 K8 ["_boundingBox"]
       17 GETTABLEKS                       R4 R5 K3 ["Size"]
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
       40 RETURN                           R0 0

PROTO_26:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETTABLEKS                       R4 R0 K2 ["_handles"]
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 GETTABLEKS                       R8 R7 K3 ["Color"]
       10 JUMPIFEQ                         R6 R1 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 JUMPIF                           R9 ; [+7]
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R10 R11 K4 ["makeDimmed"]
       18 GETTABLEKS                       R11 R7 K3 ["Color"]
       20 CALL                             R10 1 1
       21 MOVE                             R8 R10
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K5 ["createElement"]
       25 GETUPVAL                         R11 2
       26 DUPTABLE                         R12 K9 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
       27 GETTABLEKS                       R13 R7 K6 ["HandleCFrame"]
       29 SETTABLEKS                       R13 R12 K6 ["HandleCFrame"]
       31 SETTABLEKS                       R8 R12 K3 ["Color"]
       33 GETTABLEKS                       R13 R7 K7 ["Scale"]
       35 SETTABLEKS                       R13 R12 K7 ["Scale"]
       37 SETTABLEKS                       R9 R12 K8 ["Hovered"]
       39 CALL                             R10 2 1
       40 SETTABLE                         R10 R2 R6
       41 FORGLOOP                         R3 2 ; [-34]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K10 ["createFragment"]
       46 MOVE                             R4 R2
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createFragment"]
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

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["createElement"]
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

PROTO_29:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["renderNEW"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 NEWTABLE                         R2 4 0
       10 GETTABLEKS                       R3 R0 K1 ["_draggingHandleId"]
       12 JUMPIFNOT                        R3 ; [+82]
       13 GETTABLEKS                       R4 R0 K2 ["_handles"]
       15 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIFNOT                        R3 ; [+76]
       19 GETTABLEKS                       R4 R0 K2 ["_handles"]
       21 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K3 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K7 [{"HandleCFrame", "Color", "Scale"}]
       31 GETTABLEKS                       R8 R3 K4 ["HandleCFrame"]
       33 SETTABLEKS                       R8 R7 K4 ["HandleCFrame"]
       35 GETTABLEKS                       R8 R3 K5 ["Color"]
       37 SETTABLEKS                       R8 R7 K5 ["Color"]
       39 GETTABLEKS                       R8 R3 K6 ["Scale"]
       41 SETTABLEKS                       R8 R7 K6 ["Scale"]
       43 CALL                             R5 2 1
       44 SETTABLE                         R5 R2 R4
       45 GETIMPORT                        R4 K9 [pairs]
       47 GETTABLEKS                       R5 R0 K2 ["_handles"]
       49 CALL                             R4 1 3
       50 FORGPREP_NEXT                    R4
       51 GETTABLEKS                       R9 R0 K1 ["_draggingHandleId"]
       53 JUMPIFEQ                         R7 R9 ; [+27]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K3 ["createElement"]
       58 GETUPVAL                         R10 2
       59 DUPTABLE                         R11 K11 [{"HandleCFrame", "Color", "Scale", "Thin"}]
       60 GETTABLEKS                       R12 R8 K4 ["HandleCFrame"]
       62 SETTABLEKS                       R12 R11 K4 ["HandleCFrame"]
       64 GETUPVAL                         R13 3
       65 GETTABLEKS                       R12 R13 K12 ["makeDimmed"]
       67 GETTABLEKS                       R13 R8 K5 ["Color"]
       69 CALL                             R12 1 1
       70 SETTABLEKS                       R12 R11 K5 ["Color"]
       72 GETTABLEKS                       R12 R8 K6 ["Scale"]
       74 SETTABLEKS                       R12 R11 K6 ["Scale"]
       76 LOADB                            R12 1
       77 SETTABLEKS                       R12 R11 K10 ["Thin"]
       79 CALL                             R9 2 1
       80 SETTABLE                         R9 R2 R7
       81 FORGLOOP                         R4 2 ; [-31]
       83 GETTABLEKS                       R4 R0 K13 ["_implementation"]
       85 GETTABLEKS                       R6 R0 K14 ["_lastDeltaSize"]
       87 GETTABLEKS                       R7 R0 K15 ["_lastOffset"]
       89 NAMECALL                         R4 R4 K16 ["render"]
       91 CALL                             R4 3 1
       92 SETTABLEKS                       R4 R2 K17 ["ImplementationRendered"]
       94 JUMP                             ; [+41]
       95 GETIMPORT                        R3 K9 [pairs]
       97 GETTABLEKS                       R4 R0 K2 ["_handles"]
       99 CALL                             R3 1 3
      100 FORGPREP_NEXT                    R3
      101 GETTABLEKS                       R8 R7 K5 ["Color"]
      103 JUMPIFEQ                         R6 R1 ; [+2]
      105 LOADB                            R9 0 +1
      106 LOADB                            R9 1
      107 JUMPIF                           R9 ; [+7]
      108 GETUPVAL                         R11 3
      109 GETTABLEKS                       R10 R11 K12 ["makeDimmed"]
      111 GETTABLEKS                       R11 R7 K5 ["Color"]
      113 CALL                             R10 1 1
      114 MOVE                             R8 R10
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R10 R11 K3 ["createElement"]
      118 GETUPVAL                         R11 2
      119 DUPTABLE                         R12 K19 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
      120 GETTABLEKS                       R13 R7 K4 ["HandleCFrame"]
      122 SETTABLEKS                       R13 R12 K4 ["HandleCFrame"]
      124 SETTABLEKS                       R8 R12 K5 ["Color"]
      126 GETTABLEKS                       R13 R7 K6 ["Scale"]
      128 SETTABLEKS                       R13 R12 K6 ["Scale"]
      130 SETTABLEKS                       R9 R12 K18 ["Hovered"]
      132 CALL                             R10 2 1
      133 SETTABLE                         R10 R2 R6
      134 FORGLOOP                         R3 2 ; [-34]
      136 NAMECALL                         R3 R0 K20 ["_shouldDrawBoundingBox"]
      138 CALL                             R3 1 1
      139 JUMPIFNOT                        R3 ; [+37]
      140 GETUPVAL                         R4 1
      141 GETTABLEKS                       R3 R4 K3 ["createElement"]
      143 GETUPVAL                         R4 4
      144 DUPTABLE                         R5 K25 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      145 GETTABLEKS                       R7 R0 K26 ["_boundingBox"]
      147 GETTABLEKS                       R6 R7 K21 ["CFrame"]
      149 SETTABLEKS                       R6 R5 K21 ["CFrame"]
      151 GETTABLEKS                       R7 R0 K26 ["_boundingBox"]
      153 GETTABLEKS                       R6 R7 K22 ["Size"]
      155 SETTABLEKS                       R6 R5 K22 ["Size"]
      157 NAMECALL                         R6 R0 K27 ["_getBoundingBoxColor"]
      159 CALL                             R6 1 1
      160 SETTABLEKS                       R6 R5 K5 ["Color"]
      162 NAMECALL                         R6 R0 K28 ["_getBoundingBoxThickness"]
      164 CALL                             R6 1 1
      165 SETTABLEKS                       R6 R5 K23 ["LineThickness"]
      167 GETTABLEKS                       R6 R0 K29 ["_draggerContext"]
      169 NAMECALL                         R6 R6 K30 ["getGuiParent"]
      171 CALL                             R6 1 1
      172 SETTABLEKS                       R6 R5 K24 ["Container"]
      174 CALL                             R3 2 1
      175 SETTABLEKS                       R3 R2 K31 ["SelectionBoundingBox"]
      177 GETTABLEKS                       R3 R0 K32 ["_summonBasisOffset"]
      179 JUMPIFNOT                        R3 ; [+40]
      180 GETUPVAL                         R4 1
      181 GETTABLEKS                       R3 R4 K3 ["createElement"]
      183 GETUPVAL                         R4 5
      184 DUPTABLE                         R5 K35 [{"DraggerContext", "CFrame", "IsActive"}]
      185 GETTABLEKS                       R6 R0 K29 ["_draggerContext"]
      187 SETTABLEKS                       R6 R5 K33 ["DraggerContext"]
      189 GETTABLEKS                       R8 R0 K26 ["_boundingBox"]
      191 GETTABLEKS                       R7 R8 K21 ["CFrame"]
      193 NAMECALL                         R8 R0 K36 ["_getBasisOffset"]
      195 CALL                             R8 1 1
      196 MUL                              R6 R7 R8
      197 SETTABLEKS                       R6 R5 K21 ["CFrame"]
      199 GETTABLEKS                       R6 R0 K29 ["_draggerContext"]
      201 NAMECALL                         R6 R6 K37 ["shouldShowActiveInstanceHighlight"]
      203 CALL                             R6 1 1
      204 JUMPIFNOT                        R6 ; [+10]
      205 GETTABLEKS                       R8 R0 K38 ["_selectionWrapper"]
      207 NAMECALL                         R8 R8 K39 ["get"]
      209 CALL                             R8 1 1
      210 LENGTH                           R7 R8
      211 JUMPIFEQKN                       R7 K40 [1] ; [+2]
      213 LOADB                            R6 0 +1
      214 LOADB                            R6 1
      215 SETTABLEKS                       R6 R5 K34 ["IsActive"]
      217 CALL                             R3 2 1
      218 SETTABLEKS                       R3 R2 K41 ["SummonedPivot"]
      220 GETUPVAL                         R4 1
      221 GETTABLEKS                       R3 R4 K3 ["createElement"]
      223 LOADK                            R4 K42 ["Folder"]
      224 NEWTABLE                         R5 0 0
      226 MOVE                             R6 R2
      227 CALL                             R3 3 -1
      228 RETURN                           R3 -1

PROTO_30:
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

PROTO_31:
        0 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 GETTABLEKS                       R4 R0 K1 ["_handles"]
        4 GETTABLE                         R3 R4 R2
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K1 ["_handles"]
        9 GETTABLE                         R4 R5 R2
       10 GETTABLEKS                       R3 R4 K2 ["NormalId"]
       12 SETTABLEKS                       R3 R0 K3 ["_normalId"]
       14 GETTABLEKS                       R5 R0 K1 ["_handles"]
       16 GETTABLE                         R4 R5 R2
       17 GETTABLEKS                       R3 R4 K4 ["HandleCFrame"]
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
       38 GETTABLEKS                       R8 R0 K1 ["_handles"]
       40 GETTABLE                         R7 R8 R2
       41 GETTABLEKS                       R6 R7 K4 ["HandleCFrame"]
       43 GETTABLEKS                       R5 R6 K10 ["Position"]
       45 SETTABLEKS                       R5 R0 K11 ["_startDragHandlePosition"]
       47 GETTABLEKS                       R7 R0 K1 ["_handles"]
       49 GETTABLE                         R6 R7 R2
       50 GETTABLEKS                       R5 R6 K12 ["Scale"]
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
       92 GETUPVAL                         R5 0
       93 CALL                             R5 0 1
       94 JUMPIFNOT                        R5 ; [+31]
       95 GETTABLEKS                       R6 R0 K21 ["_implementation"]
       97 GETTABLEKS                       R5 R6 K26 ["getSoftSnaps"]
       99 JUMPIFNOT                        R5 ; [+21]
      100 NAMECALL                         R5 R0 K27 ["_needsSoftSnaps"]
      102 CALL                             R5 1 1
      103 JUMPIFNOT                        R5 ; [+17]
      104 GETTABLEKS                       R5 R0 K28 ["_softSnapper"]
      106 GETTABLEKS                       R7 R0 K21 ["_implementation"]
      108 GETTABLEKS                       R10 R0 K5 ["_handleCFrame"]
      110 GETTABLEKS                       R9 R10 K29 ["LookVector"]
      112 GETTABLEKS                       R10 R0 K30 ["_summonBasisOffset"]
      114 NAMECALL                         R7 R7 K26 ["getSoftSnaps"]
      116 CALL                             R7 3 -1
      117 NAMECALL                         R5 R5 K31 ["setSnaps"]
      119 CALL                             R5 -1 0
      120 RETURN                           R0 0
      121 GETTABLEKS                       R5 R0 K28 ["_softSnapper"]
      123 NAMECALL                         R5 R5 K32 ["clearSnaps"]
      125 CALL                             R5 1 0
      126 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
        0 LOADK                            R7 K0 [0.01]
        1 JUMPIFNOTLT                      R4 R7 ; [+2]
        3 LOADN                            R4 0
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K1 ["vectorToArray"]
        7 MOVE                             R8 R0
        8 CALL                             R7 1 1
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K1 ["vectorToArray"]
       12 SUB                              R9 R5 R0
       13 CALL                             R8 1 1
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K1 ["vectorToArray"]
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
       48 GETUPVAL                         R12 1
       49 CALL                             R12 0 1
       50 JUMPIFNOT                        R12 ; [+21]
       51 GETTABLE                         R12 R7 R2
       52 LOADK                            R13 K2 [0.0001]
       53 JUMPIFNOTLT                      R12 R13 ; [+8]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K3 ["setToVector3"]
       58 MOVE                             R13 R3
       59 CALL                             R12 1 1
       60 MUL                              R11 R12 R10
       61 JUMP                             ; [+24]
       62 GETTABLE                         R13 R7 R2
       63 DIV                              R12 R10 R13
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R14 R15 K3 ["setToVector3"]
       67 MOVE                             R15 R3
       68 CALL                             R14 1 1
       69 MUL                              R13 R0 R14
       70 MUL                              R11 R13 R12
       71 JUMP                             ; [+14]
       72 GETTABLE                         R13 R7 R2
       73 JUMPIFNOTEQKN                    R13 K4 [0] ; [+3]
       75 LOADN                            R12 0
       76 JUMP                             ; [+2]
       77 GETTABLE                         R13 R7 R2
       78 DIV                              R12 R10 R13
       79 GETUPVAL                         R15 0
       80 GETTABLEKS                       R14 R15 K3 ["setToVector3"]
       82 MOVE                             R15 R3
       83 CALL                             R14 1 1
       84 MUL                              R13 R0 R14
       85 MUL                              R11 R13 R12
       86 MOVE                             R12 R11
       87 MOVE                             R13 R10
       88 RETURN                           R12 2

PROTO_34:
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

PROTO_35:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADN                            R2 0
        3 RETURN                           R2 1
        4 DIV                              R2 R0 R1
        5 RETURN                           R2 1

PROTO_36:
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
       24 GETUPVAL                         R5 0
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+6]
       27 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       29 NAMECALL                         R4 R4 K8 ["shouldGridSnap"]
       31 CALL                             R4 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R4
       34 GETUPVAL                         R6 1
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+6]
       37 GETTABLEKS                       R5 R0 K7 ["_draggerContext"]
       39 NAMECALL                         R5 R5 K9 ["getDraggerScaleFactor"]
       41 CALL                             R5 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R8 R0 K7 ["_draggerContext"]
       48 NAMECALL                         R8 R8 K10 ["getCamera"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R0 K11 ["_dragStartPosition"]
       53 GETTABLEKS                       R10 R0 K12 ["_dragDirection"]
       55 GETTABLEKS                       R11 R0 K13 ["_startDragHandlePosition"]
       57 GETTABLEKS                       R12 R0 K14 ["_startDragHandleScale"]
       59 GETTABLEKS                       R13 R0 K15 ["_startDistance"]
       61 MOVE                             R14 R3
       62 MOVE                             R15 R5
       63 CALL                             R7 8 1
       64 GETTABLEKS                       R10 R0 K13 ["_startDragHandlePosition"]
       66 GETTABLEKS                       R11 R0 K11 ["_dragStartPosition"]
       68 SUB                              R9 R10 R11
       69 GETTABLEKS                       R8 R9 K16 ["Magnitude"]
       71 SUB                              R6 R7 R8
       72 GETTABLEKS                       R9 R0 K7 ["_draggerContext"]
       74 MOVE                             R11 R6
       75 NAMECALL                         R9 R9 K17 ["snapToGridSize"]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R10 0
       79 CALL                             R10 0 1
       80 JUMPIFNOT                        R10 ; [+21]
       81 NAMECALL                         R10 R0 K18 ["_hasSoftSnap"]
       83 CALL                             R10 1 1
       84 JUMPIFNOT                        R10 ; [+17]
       85 JUMPIFNOT                        R4 ; [+6]
       86 SUB                              R11 R9 R6
       87 FASTCALL1                        MATH_ABS R11 ; [+2]
       88 GETIMPORT                        R10 K21 [math.abs]
       90 CALL                             R10 1 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 GETTABLEKS                       R11 R0 K22 ["_softSnapper"]
       95 MOVE                             R13 R6
       96 MOVE                             R14 R10
       97 NAMECALL                         R11 R11 K23 ["updateCurrentSnap"]
       99 CALL                             R11 3 1
      100 JUMPIFNOT                        R11 ; [+1]
      101 MOVE                             R9 R11
      102 GETTABLEKS                       R11 R0 K4 ["_handles"]
      104 GETTABLEKS                       R12 R0 K0 ["_draggingHandleId"]
      106 GETTABLE                         R10 R11 R12
      107 GETTABLEKS                       R11 R10 K24 ["NormalId"]
      109 LOADNIL                          R12
      110 NEWTABLE                         R13 0 3
      112 GETTABLEKS                       R15 R0 K25 ["_originalBoundingBoxSize"]
      114 GETTABLEKS                       R14 R15 K26 ["X"]
      116 GETTABLEKS                       R16 R0 K25 ["_originalBoundingBoxSize"]
      118 GETTABLEKS                       R15 R16 K27 ["Y"]
      120 GETTABLEKS                       R17 R0 K25 ["_originalBoundingBoxSize"]
      122 GETTABLEKS                       R16 R17 K28 ["Z"]
      124 SETLIST                          R13 R14 3 [1]
      126 GETTABLE                         R14 R13 R11
      127 NAMECALL                         R16 R0 K29 ["_getBasisOffset"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R15 R16 K30 ["Position"]
      132 FASTCALL                         VECTOR ; [+2]
      133 GETIMPORT                        R17 K33 [Vector3.new]
      135 CALL                             R17 0 1
      136 NAMECALL                         R15 R15 K34 ["FuzzyEq"]
      138 CALL                             R15 2 1
      139 JUMPIF                           R15 ; [+35]
      140 GETTABLEKS                       R16 R0 K15 ["_startDistance"]
      142 DIV                              R15 R3 R16
      143 GETUPVAL                         R17 3
      144 CALL                             R17 0 1
      145 JUMPIFNOT                        R17 ; [+4]
      146 JUMPIFNOTEQKN                    R14 K35 [0] ; [+3]
      148 MOVE                             R16 R3
      149 JUMP                             ; [+1]
      150 MUL                              R16 R15 R14
      151 GETTABLEKS                       R17 R0 K7 ["_draggerContext"]
      153 SUB                              R19 R16 R14
      154 NAMECALL                         R17 R17 K17 ["snapToGridSize"]
      156 CALL                             R17 2 1
      157 MOVE                             R9 R17
      158 GETUPVAL                         R17 0
      159 CALL                             R17 0 1
      160 JUMPIFNOT                        R17 ; [+18]
      161 NAMECALL                         R17 R0 K18 ["_hasSoftSnap"]
      163 CALL                             R17 1 1
      164 JUMPIFNOT                        R17 ; [+14]
      165 GETTABLEKS                       R17 R0 K22 ["_softSnapper"]
      167 MOVE                             R19 R9
      168 LOADNIL                          R20
      169 NAMECALL                         R17 R17 K23 ["updateCurrentSnap"]
      171 CALL                             R17 3 1
      172 JUMPIFNOT                        R17 ; [+6]
      173 MOVE                             R9 R17
      174 JUMP                             ; [+4]
      175 GETTABLEKS                       R15 R0 K36 ["_lastResizeFromCenter"]
      177 JUMPIFNOT                        R15 ; [+1]
      178 MULK                             R9 R9 K37 [2]
      179 LOADNIL                          R15
      180 GETUPVAL                         R16 3
      181 CALL                             R16 0 1
      182 JUMPIFNOT                        R16 ; [+21]
      183 ADD                              R16 R14 R9
      184 GETTABLEKS                       R17 R0 K12 ["_dragDirection"]
      186 GETTABLEKS                       R18 R0 K38 ["_worldBBoxCenterToScaleCenter"]
      188 GETTABLEKS                       R19 R0 K36 ["_lastResizeFromCenter"]
      190 JUMPIFNOTEQKN                    R14 K35 [0] ; [+8]
      192 JUMPIFNOT                        R19 ; [+2]
      193 MOVE                             R15 R18
      194 JUMP                             ; [+20]
      195 SUB                              R21 R16 R14
      196 DIVK                             R20 R21 K37 [2]
      197 MUL                              R15 R20 R17
      198 JUMP                             ; [+16]
      199 DIV                              R20 R16 R14
      200 MINUS                            R21 R18
      201 MUL                              R22 R20 R21
      202 SUB                              R15 R22 R21
      203 JUMP                             ; [+11]
      204 JUMPIFNOTEQKN                    R14 K35 [0] ; [+3]
      206 LOADN                            R16 1
      207 JUMP                             ; [+2]
      208 ADD                              R17 R14 R9
      209 DIV                              R16 R17 R14
      210 GETTABLEKS                       R18 R0 K38 ["_worldBBoxCenterToScaleCenter"]
      212 MINUS                            R17 R18
      213 MUL                              R18 R16 R17
      214 SUB                              R15 R18 R17
      215 GETTABLEKS                       R16 R0 K39 ["_originalBoundingBoxCFrame"]
      217 NAMECALL                         R16 R16 K40 ["Inverse"]
      219 CALL                             R16 1 1
      220 MOVE                             R19 R15
      221 NAMECALL                         R17 R16 K41 ["VectorToWorldSpace"]
      223 CALL                             R17 2 1
      224 MOVE                             R12 R17
      225 GETTABLEKS                       R18 R0 K42 ["_lastAxesToScale"]
      227 GETTABLEKS                       R17 R18 K26 ["X"]
      229 JUMPIF                           R17 ; [+10]
      230 LOADN                            R18 0
      231 GETTABLEKS                       R19 R12 K27 ["Y"]
      233 GETTABLEKS                       R20 R12 K28 ["Z"]
      235 FASTCALL                         VECTOR ; [+2]
      236 GETIMPORT                        R17 K33 [Vector3.new]
      238 CALL                             R17 3 1
      239 MOVE                             R12 R17
      240 GETTABLEKS                       R18 R0 K42 ["_lastAxesToScale"]
      242 GETTABLEKS                       R17 R18 K27 ["Y"]
      244 JUMPIF                           R17 ; [+10]
      245 GETTABLEKS                       R18 R12 K26 ["X"]
      247 LOADN                            R19 0
      248 GETTABLEKS                       R20 R12 K28 ["Z"]
      250 FASTCALL                         VECTOR ; [+2]
      251 GETIMPORT                        R17 K33 [Vector3.new]
      253 CALL                             R17 3 1
      254 MOVE                             R12 R17
      255 GETTABLEKS                       R18 R0 K42 ["_lastAxesToScale"]
      257 GETTABLEKS                       R17 R18 K28 ["Z"]
      259 JUMPIF                           R17 ; [+10]
      260 GETTABLEKS                       R18 R12 K26 ["X"]
      262 GETTABLEKS                       R19 R12 K27 ["Y"]
      264 LOADN                            R20 0
      265 FASTCALL                         VECTOR ; [+2]
      266 GETIMPORT                        R17 K33 [Vector3.new]
      268 CALL                             R17 3 1
      269 MOVE                             R12 R17
      270 GETTABLEKS                       R17 R0 K25 ["_originalBoundingBoxSize"]
      272 GETTABLEKS                       R18 R0 K42 ["_lastAxesToScale"]
      274 LOADNIL                          R19
      275 GETUPVAL                         R20 0
      276 CALL                             R20 0 1
      277 JUMPIFNOT                        R20 ; [+10]
      278 JUMPIFNOT                        R4 ; [+7]
      279 GETTABLEKS                       R20 R0 K7 ["_draggerContext"]
      281 NAMECALL                         R20 R20 K43 ["getGridSize"]
      283 CALL                             R20 1 1
      284 MOVE                             R19 R20
      285 JUMP                             ; [+8]
      286 LOADN                            R19 0
      287 JUMP                             ; [+6]
      288 GETTABLEKS                       R20 R0 K7 ["_draggerContext"]
      290 NAMECALL                         R20 R20 K43 ["getGridSize"]
      292 CALL                             R20 1 1
      293 MOVE                             R19 R20
      294 GETTABLEKS                       R20 R0 K44 ["_minimumSize"]
      296 GETTABLEKS                       R21 R0 K45 ["_maximumSize"]
      298 GETUPVAL                         R22 4
      299 MOVE                             R23 R17
      300 MOVE                             R24 R9
      301 MOVE                             R25 R11
      302 MOVE                             R26 R18
      303 MOVE                             R27 R19
      304 MOVE                             R28 R20
      305 MOVE                             R29 R21
      306 CALL                             R22 7 2
      307 JUMPIFEQKN                       R9 K35 [0] ; [+3]
      309 DIV                              R24 R23 R9
      310 MUL                              R12 R12 R24
      311 SUB                              R25 R9 R23
      312 LOADN                            R26 0
      313 JUMPIFLT                         R26 R25 ; [+2]
      315 LOADB                            R24 0 +1
      316 LOADB                            R24 1
      317 SETTABLEKS                       R24 R0 K46 ["_scalingLimitReachedUpper"]
      319 SUB                              R25 R23 R9
      320 LOADN                            R26 0
      321 JUMPIFLT                         R26 R25 ; [+2]
      323 LOADB                            R24 0 +1
      324 LOADB                            R24 1
      325 SETTABLEKS                       R24 R0 K47 ["_scalingLimitReachedLower"]
      327 GETTABLEKS                       R25 R0 K48 ["_committedDeltaSize"]
      329 ADD                              R24 R22 R25
      330 GETTABLEKS                       R26 R0 K49 ["_committedOffset"]
      332 ADD                              R25 R12 R26
      333 FASTCALL                         VECTOR ; [+2]
      334 GETIMPORT                        R28 K33 [Vector3.new]
      336 CALL                             R28 0 1
      337 NAMECALL                         R26 R24 K34 ["FuzzyEq"]
      339 CALL                             R26 2 1
      340 JUMPIFNOT                        R26 ; [+5]
      341 FASTCALL                         VECTOR ; [+2]
      342 GETIMPORT                        R26 K33 [Vector3.new]
      344 CALL                             R26 0 1
      345 MOVE                             R24 R26
      346 FASTCALL                         VECTOR ; [+2]
      347 GETIMPORT                        R28 K33 [Vector3.new]
      349 CALL                             R28 0 1
      350 NAMECALL                         R26 R25 K34 ["FuzzyEq"]
      352 CALL                             R26 2 1
      353 JUMPIFNOT                        R26 ; [+5]
      354 FASTCALL                         VECTOR ; [+2]
      355 GETIMPORT                        R26 K33 [Vector3.new]
      357 CALL                             R26 0 1
      358 MOVE                             R25 R26
      359 GETTABLEKS                       R26 R0 K50 ["_implementation"]
      361 MOVE                             R28 R24
      362 MOVE                             R29 R25
      363 NAMECALL                         R26 R26 K51 ["updateScale"]
      365 CALL                             R26 3 2
      366 SETTABLEKS                       R26 R0 K52 ["_lastDeltaSize"]
      368 SETTABLEKS                       R27 R0 K53 ["_lastOffset"]
      370 GETTABLEKS                       R27 R0 K52 ["_lastDeltaSize"]
      372 JUMPIFNOTEQ                      R24 R27 ; [+2]
      374 LOADB                            R26 0 +1
      375 LOADB                            R26 1
      376 SETTABLEKS                       R26 R0 K54 ["_resizeWasConstrained"]
      378 GETTABLEKS                       R26 R0 K55 ["_boundingBox"]
      380 GETTABLEKS                       R28 R0 K39 ["_originalBoundingBoxCFrame"]
      382 GETIMPORT                        R29 K57 [CFrame.new]
      384 GETTABLEKS                       R31 R0 K53 ["_lastOffset"]
      386 GETTABLEKS                       R32 R0 K49 ["_committedOffset"]
      388 SUB                              R30 R31 R32
      389 CALL                             R29 1 1
      390 MUL                              R27 R28 R29
      391 SETTABLEKS                       R27 R26 K56 ["CFrame"]
      393 GETTABLEKS                       R26 R0 K55 ["_boundingBox"]
      395 GETTABLEKS                       R29 R0 K52 ["_lastDeltaSize"]
      397 GETTABLEKS                       R30 R0 K48 ["_committedDeltaSize"]
      399 SUB                              R28 R29 R30
      400 ADD                              R27 R17 R28
      401 SETTABLEKS                       R27 R26 K58 ["Size"]
      403 GETUPVAL                         R26 3
      404 CALL                             R26 0 1
      405 JUMPIFNOT                        R26 ; [+26]
      406 GETIMPORT                        R26 K57 [CFrame.new]
      408 GETUPVAL                         R29 5
      409 GETTABLEKS                       R28 R29 K59 ["componentwiseOperation"]
      411 GETTABLEKS                       R30 R0 K55 ["_boundingBox"]
      413 GETTABLEKS                       R29 R30 K58 ["Size"]
      415 GETTABLEKS                       R30 R0 K25 ["_originalBoundingBoxSize"]
      417 DUPCLOSURE                       R31 K60 [PROTO_35]
      418 CALL                             R28 3 1
      419 GETTABLEKS                       R29 R0 K61 ["_originalBasisOffset"]
      421 MUL                              R27 R28 R29
      422 CALL                             R26 1 1
      423 GETTABLEKS                       R27 R0 K62 ["_summonBasisOffset"]
      425 JUMPIFNOT                        R27 ; [+3]
      426 SETTABLEKS                       R26 R0 K62 ["_summonBasisOffset"]
      428 RETURN                           R0 0
      429 SETTABLEKS                       R26 R0 K63 ["_basisOffset"]
      431 RETURN                           R0 0
      432 GETTABLEKS                       R26 R0 K62 ["_summonBasisOffset"]
      434 JUMPIFNOT                        R26 ; [+16]
      435 GETIMPORT                        R26 K57 [CFrame.new]
      437 GETTABLEKS                       R29 R0 K61 ["_originalBasisOffset"]
      439 GETTABLEKS                       R30 R0 K25 ["_originalBoundingBoxSize"]
      441 DIV                              R28 R29 R30
      442 GETTABLEKS                       R30 R0 K55 ["_boundingBox"]
      444 GETTABLEKS                       R29 R30 K58 ["Size"]
      446 MUL                              R27 R28 R29
      447 CALL                             R26 1 1
      448 SETTABLEKS                       R26 R0 K62 ["_summonBasisOffset"]
      450 RETURN                           R0 0
      451 GETIMPORT                        R26 K57 [CFrame.new]
      453 GETTABLEKS                       R29 R0 K61 ["_originalBasisOffset"]
      455 GETTABLEKS                       R30 R0 K25 ["_originalBoundingBoxSize"]
      457 DIV                              R28 R29 R30
      458 GETTABLEKS                       R30 R0 K55 ["_boundingBox"]
      460 GETTABLEKS                       R29 R30 K58 ["Size"]
      462 MUL                              R27 R28 R29
      463 CALL                             R26 1 1
      464 SETTABLEKS                       R26 R0 K63 ["_basisOffset"]
      466 RETURN                           R0 0

PROTO_37:
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
       23 GETUPVAL                         R2 0
       24 CALL                             R2 0 1
       25 JUMPIF                           R2 ; [+6]
       26 GETTABLEKS                       R2 R0 K7 ["_tabKeyDown"]
       28 JUMPIF                           R2 ; [+3]
       29 NAMECALL                         R2 R0 K8 ["_endSummon"]
       31 CALL                             R2 1 0
       32 GETTABLEKS                       R3 R0 K9 ["_schema"]
       34 GETTABLEKS                       R2 R3 K10 ["addUndoWaypoint"]
       36 GETTABLEKS                       R3 R0 K11 ["_draggerContext"]
       38 LOADK                            R4 K12 ["Scale Selection"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 GETTABLEKS                       R2 R3 K0 ["Offset"]
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

PROTO_39:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R5 R0 K1 ["_originalBoundingBoxCFrame"]
        6 GETTABLEKS                       R4 R5 K2 ["Rotation"]
        8 MUL                              R3 R4 R2
        9 GETTABLEKS                       R4 R3 K3 ["Position"]
       11 RETURN                           R4 1

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["_handleCFrame"]
        2 GETTABLEKS                       R1 R2 K1 ["LookVector"]
        4 SETTABLEKS                       R1 R0 K2 ["_dragDirection"]
        6 GETTABLEKS                       R2 R0 K3 ["_handles"]
        8 GETTABLEKS                       R3 R0 K4 ["_draggingHandleId"]
       10 GETTABLE                         R1 R2 R3
       11 GETTABLEKS                       R4 R1 K5 ["HandleCFrame"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K6 ["getLocalHandleOffset"]
       16 MOVE                             R6 R1
       17 CALL                             R5 1 1
       18 MUL                              R3 R4 R5
       19 GETTABLEKS                       R2 R3 K7 ["Position"]
       21 SETTABLEKS                       R2 R0 K8 ["_dragHandleCenter"]
       23 GETTABLEKS                       R2 R0 K9 ["_lastResizeFromCenter"]
       25 JUMPIFNOT                        R2 ; [+15]
       26 GETTABLEKS                       R4 R0 K10 ["_originalBoundingBoxCFrame"]
       28 GETTABLEKS                       R3 R4 K11 ["Rotation"]
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
       48 GETTABLEKS                       R6 R0 K10 ["_originalBoundingBoxCFrame"]
       50 GETTABLEKS                       R5 R6 K7 ["Position"]
       52 SUB                              R3 R4 R5
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K18 ["intersectRayPlanePoint"]
       56 MOVE                             R5 R3
       57 GETTABLEKS                       R6 R0 K2 ["_dragDirection"]
       59 MOVE                             R7 R2
       60 GETTABLEKS                       R8 R0 K2 ["_dragDirection"]
       62 CALL                             R4 4 1
       63 SETTABLEKS                       R4 R0 K16 ["_worldBBoxCenterToScaleCenter"]
       65 GETTABLEKS                       R4 R0 K10 ["_originalBoundingBoxCFrame"]
       67 GETTABLEKS                       R3 R4 K7 ["Position"]
       69 GETTABLEKS                       R4 R0 K16 ["_worldBBoxCenterToScaleCenter"]
       71 ADD                              R2 R3 R4
       72 SETTABLEKS                       R2 R0 K19 ["_dragStartPosition"]
       74 RETURN                           R0 0

PROTO_41:
        0 JUMPIFNOT                        R2 ; [+3]
        1 NAMECALL                         R3 R0 K0 ["_computeProjectionLineAndScaleCenter"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K1 ["_dragStartPosition"]
        7 GETTABLEKS                       R5 R0 K2 ["_dragDirection"]
        9 MOVE                             R6 R1
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R1 R1 K1 ["isEmpty"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+12]
        6 GETTABLEKS                       R2 R0 K2 ["_boundingBox"]
        8 GETTABLEKS                       R1 R2 K3 ["Size"]
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
       33 GETTABLEKS                       R11 R0 K2 ["_boundingBox"]
       35 GETTABLEKS                       R10 R11 K3 ["Size"]
       37 NAMECALL                         R8 R7 K13 ["VectorToWorldSpace"]
       39 CALL                             R8 2 1
       40 GETTABLEKS                       R11 R8 K15 ["Z"]
       42 FASTCALL1                        MATH_ABS R11 ; [+2]
       43 GETIMPORT                        R10 K18 [math.abs]
       45 CALL                             R10 1 1
       46 MULK                             R9 R10 K14 [0.5]
       47 NAMECALL                         R13 R0 K19 ["_getBasisOffset"]
       49 CALL                             R13 1 1
       50 GETTABLEKS                       R12 R13 K20 ["Position"]
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
       75 GETTABLEKS                       R14 R0 K2 ["_boundingBox"]
       77 GETTABLEKS                       R13 R14 K21 ["CFrame"]
       79 MUL                              R12 R13 R6
       80 GETIMPORT                        R13 K22 [CFrame.new]
       82 GETTABLEKS                       R14 R10 K23 ["X"]
       84 GETTABLEKS                       R15 R10 K24 ["Y"]
       86 MINUS                            R16 R9
       87 CALL                             R13 3 1
       88 MUL                              R11 R12 R13
       89 GETTABLEKS                       R12 R0 K8 ["_handles"]
       91 DUPTABLE                         R13 K30 [{"Color", "Axis", "HandleCFrame", "NormalId", "Scale"}]
       92 GETTABLEKS                       R14 R5 K25 ["Color"]
       94 SETTABLEKS                       R14 R13 K25 ["Color"]
       96 GETTABLEKS                       R14 R6 K31 ["LookVector"]
       98 SETTABLEKS                       R14 R13 K26 ["Axis"]
      100 SETTABLEKS                       R11 R13 K27 ["HandleCFrame"]
      102 GETTABLEKS                       R14 R5 K28 ["NormalId"]
      104 SETTABLEKS                       R14 R13 K28 ["NormalId"]
      106 GETTABLEKS                       R14 R0 K32 ["_draggerContext"]
      108 GETTABLEKS                       R16 R11 K20 ["Position"]
      110 NAMECALL                         R14 R14 K33 ["getHandleScale"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K29 ["Scale"]
      115 SETTABLE                         R13 R12 R4
      116 FORGLOOP                         R1 2 ; [-89]
      118 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+16]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        5 JUMPIFNOTEQ                      R1 R2 ; [+13]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R0 K4 ["_tabKeyDown"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       12 JUMPIF                           R2 ; [+36]
       13 NAMECALL                         R2 R0 K6 ["_summonHandles"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 JUMP                             ; [+30]
       19 GETUPVAL                         R2 0
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETUPVAL                         R3 1
       23 GETTABLE                         R2 R3 R1
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 0
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+19]
       30 GETIMPORT                        R2 K8 [Enum.KeyCode.H]
       32 JUMPIFNOTEQ                      R1 R2 ; [+16]
       34 GETTABLEKS                       R2 R0 K9 ["_draggerContext"]
       36 LOADK                            R4 K10 ["HotkeyUsageHidden"]
       37 GETTABLEKS                       R6 R0 K9 ["_draggerContext"]
       39 LOADK                            R8 K10 ["HotkeyUsageHidden"]
       40 NAMECALL                         R6 R6 K11 ["getSetting"]
       42 CALL                             R6 2 1
       43 NOT                              R5 R6
       44 NAMECALL                         R2 R2 K12 ["setSetting"]
       46 CALL                             R2 3 0
       47 LOADB                            R2 1
       48 RETURN                           R2 1
       49 LOADB                            R2 0
       50 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+15]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        5 JUMPIFNOTEQ                      R1 R2 ; [+12]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R0 K4 ["_tabKeyDown"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       12 JUMPIF                           R2 ; [+3]
       13 NAMECALL                         R2 R0 K6 ["_endSummon"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 0
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 GETUPVAL                         R3 1
       22 GETTABLE                         R2 R3 R1
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R2 0
       27 RETURN                           R2 1

PROTO_45:
        0 GETTABLEKS                       R2 R0 K0 ["_implementation"]
        2 GETTABLEKS                       R1 R2 K1 ["getPriority"]
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["_implementation"]
        7 GETTABLEKS                       R1 R2 K1 ["getPriority"]
        9 CALL                             R1 0 -1
       10 RETURN                           R1 -1
       11 LOADN                            R1 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Utility"]
       22 GETTABLEKS                       R4 R5 K8 ["Colors"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Utility"]
       29 GETTABLEKS                       R5 R6 K9 ["Math"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["StandaloneSelectionBox"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Components"]
       43 GETTABLEKS                       R7 R8 K12 ["ScaleHandleView"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Components"]
       50 GETTABLEKS                       R8 R9 K13 ["DraggedPivot"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R10 K14 ["SummonedPivot"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R11 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R11 K15 ["HotkeyUsageInfo"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R12 K16 ["WireframeHandleAdornment"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R13 R0 K7 ["Utility"]
       78 GETTABLEKS                       R12 R13 K17 ["HotkeyHelpBuilder"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R14 R0 K10 ["Components"]
       85 GETTABLEKS                       R13 R14 K18 ["FloatingValueInput"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R15 R0 K7 ["Utility"]
       92 GETTABLEKS                       R14 R15 K19 ["conciseNumberFormat"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R16 R0 K7 ["Utility"]
       99 GETTABLEKS                       R15 R16 K20 ["SoftSnapper"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R17 R0 K7 ["Utility"]
      106 GETTABLEKS                       R16 R17 K21 ["computeHandlePositionDistance"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R18 R0 K7 ["Utility"]
      113 GETTABLEKS                       R17 R18 K22 ["computeDraggedDistance"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R19 R0 K23 ["Flags"]
      120 GETTABLEKS                       R18 R19 K24 ["getFFlagDraggerImprovements"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K4 [require]
      125 GETTABLEKS                       R20 R0 K23 ["Flags"]
      127 GETTABLEKS                       R19 R20 K25 ["getFFlagNextGenDraggers"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K4 [require]
      132 GETTABLEKS                       R21 R0 K23 ["Flags"]
      134 GETTABLEKS                       R20 R21 K26 ["getFFlagScaleDraggerFixZeroSizeBug"]
      136 CALL                             R19 1 1
      137 NEWTABLE                         R20 64 0
      139 SETTABLEKS                       R20 R20 K27 ["__index"]
      141 GETIMPORT                        R21 K30 [table.freeze]
      143 DUPTABLE                         R22 K34 [{"X_AXIS", "Y_AXIS", "Z_AXIS"}]
      144 LOADN                            R23 1
      145 SETTABLEKS                       R23 R22 K31 ["X_AXIS"]
      147 LOADN                            R23 2
      148 SETTABLEKS                       R23 R22 K32 ["Y_AXIS"]
      150 LOADN                            R23 3
      151 SETTABLEKS                       R23 R22 K33 ["Z_AXIS"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K30 [table.freeze]
      156 DUPTABLE                         R23 K41 [{"MinusX", "PlusX", "MinusY", "PlusY", "MinusZ", "PlusZ"}]
      157 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      158 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      160 FASTCALL                         VECTOR ; [+2]
      161 GETIMPORT                        R26 K51 [Vector3.new]
      163 CALL                             R26 0 1
      164 LOADK                            R27 K52 [{0, 1, 0}]
      165 LOADK                            R28 K53 [{0, 0, 1}]
      166 CALL                             R25 3 1
      167 SETTABLEKS                       R25 R24 K42 ["Offset"]
      169 GETTABLEKS                       R25 R3 K31 ["X_AXIS"]
      171 SETTABLEKS                       R25 R24 K43 ["Color"]
      173 GETTABLEKS                       R25 R21 K31 ["X_AXIS"]
      175 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      177 SETTABLEKS                       R24 R23 K35 ["MinusX"]
      179 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      180 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      182 FASTCALL                         VECTOR ; [+2]
      183 GETIMPORT                        R26 K51 [Vector3.new]
      185 CALL                             R26 0 1
      186 LOADK                            R27 K52 [{0, 1, 0}]
      187 LOADK                            R28 K54 [{0, 0, -1}]
      188 CALL                             R25 3 1
      189 SETTABLEKS                       R25 R24 K42 ["Offset"]
      191 GETTABLEKS                       R25 R3 K31 ["X_AXIS"]
      193 SETTABLEKS                       R25 R24 K43 ["Color"]
      195 GETTABLEKS                       R25 R21 K31 ["X_AXIS"]
      197 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      199 SETTABLEKS                       R24 R23 K36 ["PlusX"]
      201 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      202 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      204 FASTCALL                         VECTOR ; [+2]
      205 GETIMPORT                        R26 K51 [Vector3.new]
      207 CALL                             R26 0 1
      208 LOADK                            R27 K53 [{0, 0, 1}]
      209 LOADK                            R28 K55 [{1, 0, 0}]
      210 CALL                             R25 3 1
      211 SETTABLEKS                       R25 R24 K42 ["Offset"]
      213 GETTABLEKS                       R25 R3 K32 ["Y_AXIS"]
      215 SETTABLEKS                       R25 R24 K43 ["Color"]
      217 GETTABLEKS                       R25 R21 K32 ["Y_AXIS"]
      219 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      221 SETTABLEKS                       R24 R23 K37 ["MinusY"]
      223 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      224 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      226 FASTCALL                         VECTOR ; [+2]
      227 GETIMPORT                        R26 K51 [Vector3.new]
      229 CALL                             R26 0 1
      230 LOADK                            R27 K53 [{0, 0, 1}]
      231 LOADK                            R28 K56 [{-1, 0, 0}]
      232 CALL                             R25 3 1
      233 SETTABLEKS                       R25 R24 K42 ["Offset"]
      235 GETTABLEKS                       R25 R3 K32 ["Y_AXIS"]
      237 SETTABLEKS                       R25 R24 K43 ["Color"]
      239 GETTABLEKS                       R25 R21 K32 ["Y_AXIS"]
      241 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      243 SETTABLEKS                       R24 R23 K38 ["PlusY"]
      245 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      246 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      248 FASTCALL                         VECTOR ; [+2]
      249 GETIMPORT                        R26 K51 [Vector3.new]
      251 CALL                             R26 0 1
      252 LOADK                            R27 K55 [{1, 0, 0}]
      253 LOADK                            R28 K52 [{0, 1, 0}]
      254 CALL                             R25 3 1
      255 SETTABLEKS                       R25 R24 K42 ["Offset"]
      257 GETTABLEKS                       R25 R3 K33 ["Z_AXIS"]
      259 SETTABLEKS                       R25 R24 K43 ["Color"]
      261 GETTABLEKS                       R25 R21 K33 ["Z_AXIS"]
      263 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      265 SETTABLEKS                       R24 R23 K39 ["MinusZ"]
      267 DUPTABLE                         R24 K45 [{"Offset", "Color", "NormalId"}]
      268 GETIMPORT                        R25 K48 [CFrame.fromMatrix]
      270 FASTCALL                         VECTOR ; [+2]
      271 GETIMPORT                        R26 K51 [Vector3.new]
      273 CALL                             R26 0 1
      274 LOADK                            R27 K55 [{1, 0, 0}]
      275 LOADK                            R28 K57 [{0, -1, 0}]
      276 CALL                             R25 3 1
      277 SETTABLEKS                       R25 R24 K42 ["Offset"]
      279 GETTABLEKS                       R25 R3 K33 ["Z_AXIS"]
      281 SETTABLEKS                       R25 R24 K43 ["Color"]
      283 GETTABLEKS                       R25 R21 K33 ["Z_AXIS"]
      285 SETTABLEKS                       R25 R24 K44 ["NormalId"]
      287 SETTABLEKS                       R24 R23 K40 ["PlusZ"]
      289 CALL                             R22 1 1
      290 GETIMPORT                        R23 K30 [table.freeze]
      292 NEWTABLE                         R24 0 8
      294 LOADK                            R25 K58 [{0.5, 0.5, 0.5}]
      295 LOADK                            R26 K59 [{0.5, 0.5, -0.5}]
      296 LOADK                            R27 K60 [{0.5, -0.5, 0.5}]
      297 LOADK                            R28 K61 [{0.5, -0.5, -0.5}]
      298 LOADK                            R29 K62 [{-0.5, 0.5, 0.5}]
      299 LOADK                            R30 K63 [{-0.5, 0.5, -0.5}]
      300 LOADK                            R31 K64 [{-0.5, -0.5, 0.5}]
      301 LOADK                            R32 K65 [{-0.5, -0.5, -0.5}]
      302 SETLIST                          R24 R25 8 [1]
      304 CALL                             R23 1 1
      305 DUPCLOSURE                       R24 K66 [PROTO_0]
      306 CAPTURE                          VAL R17
      307 CAPTURE                          VAL R14
      308 CAPTURE                          VAL R20
      309 SETTABLEKS                       R24 R20 K50 ["new"]
      311 DUPCLOSURE                       R24 K67 [PROTO_1]
      312 SETTABLEKS                       R24 R20 K68 ["_hasSoftSnap"]
      314 DUPCLOSURE                       R24 K69 [PROTO_2]
      315 CAPTURE                          VAL R17
      316 CAPTURE                          VAL R23
      317 SETTABLEKS                       R24 R20 K70 ["_summonHandles"]
      319 DUPCLOSURE                       R24 K71 [PROTO_3]
      320 CAPTURE                          VAL R17
      321 SETTABLEKS                       R24 R20 K72 ["_endSummon"]
      323 DUPCLOSURE                       R24 K73 [PROTO_4]
      324 SETTABLEKS                       R24 R20 K74 ["beginSummon"]
      326 DUPCLOSURE                       R24 K75 [PROTO_5]
      327 SETTABLEKS                       R24 R20 K76 ["endSummon"]
      329 DUPCLOSURE                       R24 K77 [PROTO_6]
      330 SETTABLEKS                       R24 R20 K78 ["_getBasisOffset"]
      332 DUPCLOSURE                       R24 K79 [PROTO_7]
      333 SETTABLEKS                       R24 R20 K80 ["update"]
      335 DUPCLOSURE                       R24 K81 [PROTO_8]
      336 SETTABLEKS                       R24 R20 K82 ["shouldBiasTowardsObjects"]
      338 DUPCLOSURE                       R24 K83 [PROTO_9]
      339 SETTABLEKS                       R24 R20 K84 ["_rememberCurrentBoundsAsOriginal"]
      341 DUPCLOSURE                       R24 K85 [PROTO_10]
      342 SETTABLEKS                       R24 R20 K86 ["_refreshDrag"]
      344 DUPCLOSURE                       R24 K87 [PROTO_11]
      345 DUPCLOSURE                       R25 K88 [PROTO_12]
      346 SETTABLEKS                       R25 R20 K89 ["_updateExtrudeMode"]
      348 DUPCLOSURE                       R25 K90 [PROTO_13]
      349 SETTABLEKS                       R25 R20 K91 ["_refreshDragIfNeeded"]
      351 DUPCLOSURE                       R25 K92 [PROTO_14]
      352 CAPTURE                          VAL R6
      353 SETTABLEKS                       R25 R20 K93 ["hitTest"]
      355 DUPCLOSURE                       R25 K94 [PROTO_15]
      356 CAPTURE                          VAL R3
      357 SETTABLEKS                       R25 R20 K95 ["_getBoundingBoxColor"]
      359 DUPCLOSURE                       R25 K96 [PROTO_16]
      360 SETTABLEKS                       R25 R20 K97 ["_getBoundingBoxThickness"]
      362 DUPCLOSURE                       R25 K98 [PROTO_17]
      363 SETTABLEKS                       R25 R20 K99 ["_shouldDrawBoundingBox"]
      365 DUPTABLE                         R25 K102 [{"Hotkey", "LabelLocEntry"}]
      366 LOADK                            R26 K103 ["⬇Alt"]
      367 SETTABLEKS                       R26 R25 K100 ["Hotkey"]
      369 LOADK                            R26 K104 ["ScaleUniformly"]
      370 SETTABLEKS                       R26 R25 K101 ["LabelLocEntry"]
      372 DUPTABLE                         R26 K102 [{"Hotkey", "LabelLocEntry"}]
      373 LOADK                            R27 K105 ["⬆Alt"]
      374 SETTABLEKS                       R27 R26 K100 ["Hotkey"]
      376 LOADK                            R27 K106 ["ScaleResize"]
      377 SETTABLEKS                       R27 R26 K101 ["LabelLocEntry"]
      379 DUPTABLE                         R27 K102 [{"Hotkey", "LabelLocEntry"}]
      380 LOADK                            R28 K107 ["⬇Ctrl"]
      381 SETTABLEKS                       R28 R27 K100 ["Hotkey"]
      383 LOADK                            R28 K108 ["ScaleAroundPivot"]
      384 SETTABLEKS                       R28 R27 K101 ["LabelLocEntry"]
      386 DUPTABLE                         R28 K102 [{"Hotkey", "LabelLocEntry"}]
      387 LOADK                            R29 K109 ["⬆Ctrl"]
      388 SETTABLEKS                       R29 R28 K100 ["Hotkey"]
      390 LOADK                            R29 K110 ["ScaleFromEdge"]
      391 SETTABLEKS                       R29 R28 K101 ["LabelLocEntry"]
      393 DUPCLOSURE                       R29 K111 [PROTO_18]
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R27
      397 CAPTURE                          VAL R26
      398 CAPTURE                          VAL R25
      399 CAPTURE                          VAL R2
      400 CAPTURE                          VAL R9
      401 SETTABLEKS                       R29 R20 K112 ["_renderHotkeyHelp"]
      403 DUPCLOSURE                       R29 K113 [PROTO_19]
      404 SETTABLEKS                       R29 R20 K114 ["_renderSoftSnaps"]
      406 DUPCLOSURE                       R29 K115 [PROTO_21]
      407 CAPTURE                          VAL R2
      408 CAPTURE                          VAL R10
      409 SETTABLEKS                       R29 R20 K116 ["_renderChosenAxis"]
      411 DUPCLOSURE                       R29 K117 [PROTO_22]
      412 CAPTURE                          VAL R2
      413 CAPTURE                          VAL R6
      414 SETTABLEKS                       R29 R20 K118 ["_renderDraggingHandles"]
      416 DUPCLOSURE                       R29 K119 [PROTO_23]
      417 CAPTURE                          VAL R2
      418 CAPTURE                          VAL R12
      419 CAPTURE                          VAL R13
      420 SETTABLEKS                       R29 R20 K120 ["_renderSizeMeasurement"]
      422 DUPCLOSURE                       R29 K121 [PROTO_24]
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R8
      425 SETTABLEKS                       R29 R20 K122 ["_renderSummon"]
      427 DUPCLOSURE                       R29 K123 [PROTO_25]
      428 CAPTURE                          VAL R2
      429 CAPTURE                          VAL R5
      430 SETTABLEKS                       R29 R20 K124 ["_renderBoundingBox"]
      432 DUPCLOSURE                       R29 K125 [PROTO_26]
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R2
      435 CAPTURE                          VAL R6
      436 SETTABLEKS                       R29 R20 K126 ["_renderHovering"]
      438 DUPCLOSURE                       R29 K127 [PROTO_27]
      439 CAPTURE                          VAL R2
      440 SETTABLEKS                       R29 R20 K128 ["_renderDragging"]
      442 DUPCLOSURE                       R29 K129 [PROTO_28]
      443 CAPTURE                          VAL R2
      444 SETTABLEKS                       R29 R20 K130 ["renderNEW"]
      446 DUPCLOSURE                       R29 K131 [PROTO_29]
      447 CAPTURE                          VAL R17
      448 CAPTURE                          VAL R2
      449 CAPTURE                          VAL R6
      450 CAPTURE                          VAL R3
      451 CAPTURE                          VAL R5
      452 CAPTURE                          VAL R7
      453 SETTABLEKS                       R29 R20 K132 ["render"]
      455 DUPCLOSURE                       R29 K133 [PROTO_30]
      456 SETTABLEKS                       R29 R20 K134 ["_needsSoftSnaps"]
      458 DUPCLOSURE                       R29 K135 [PROTO_31]
      459 CAPTURE                          VAL R17
      460 SETTABLEKS                       R29 R20 K136 ["mouseDown"]
      462 DUPCLOSURE                       R29 K137 [PROTO_32]
      463 DUPCLOSURE                       R30 K138 [PROTO_33]
      464 CAPTURE                          VAL R4
      465 CAPTURE                          VAL R19
      466 DUPCLOSURE                       R31 K139 [PROTO_34]
      467 DUPCLOSURE                       R32 K140 [PROTO_36]
      468 CAPTURE                          VAL R17
      469 CAPTURE                          VAL R18
      470 CAPTURE                          VAL R15
      471 CAPTURE                          VAL R19
      472 CAPTURE                          VAL R30
      473 CAPTURE                          VAL R4
      474 SETTABLEKS                       R32 R20 K141 ["mouseDrag"]
      476 DUPCLOSURE                       R32 K142 [PROTO_37]
      477 CAPTURE                          VAL R17
      478 SETTABLEKS                       R32 R20 K143 ["mouseUp"]
      480 DUPCLOSURE                       R32 K144 [PROTO_38]
      481 CAPTURE                          VAL R22
      482 SETTABLEKS                       R32 R20 K145 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
      484 DUPCLOSURE                       R32 K146 [PROTO_39]
      485 SETTABLEKS                       R32 R20 K147 ["_getScaleCenterToOppositeBoundingBoxSide"]
      487 DUPCLOSURE                       R32 K148 [PROTO_40]
      488 CAPTURE                          VAL R6
      489 CAPTURE                          VAL R4
      490 SETTABLEKS                       R32 R20 K149 ["_computeProjectionLineAndScaleCenter"]
      492 DUPCLOSURE                       R32 K150 [PROTO_41]
      493 CAPTURE                          VAL R16
      494 SETTABLEKS                       R32 R20 K151 ["_getDistanceAlongAxis"]
      496 DUPCLOSURE                       R32 K152 [PROTO_42]
      497 CAPTURE                          VAL R22
      498 SETTABLEKS                       R32 R20 K153 ["_updateHandles"]
      500 NEWTABLE                         R32 8 0
      502 GETIMPORT                        R33 K157 [Enum.KeyCode.RightShift]
      504 LOADB                            R34 1
      505 SETTABLE                         R34 R32 R33
      506 GETIMPORT                        R33 K159 [Enum.KeyCode.LeftShift]
      508 LOADB                            R34 1
      509 SETTABLE                         R34 R32 R33
      510 GETIMPORT                        R33 K161 [Enum.KeyCode.RightControl]
      512 LOADB                            R34 1
      513 SETTABLE                         R34 R32 R33
      514 GETIMPORT                        R33 K163 [Enum.KeyCode.LeftControl]
      516 LOADB                            R34 1
      517 SETTABLE                         R34 R32 R33
      518 GETIMPORT                        R33 K165 [Enum.KeyCode.RightAlt]
      520 LOADB                            R34 1
      521 SETTABLE                         R34 R32 R33
      522 GETIMPORT                        R33 K167 [Enum.KeyCode.LeftAlt]
      524 LOADB                            R34 1
      525 SETTABLE                         R34 R32 R33
      526 DUPCLOSURE                       R33 K168 [PROTO_43]
      527 CAPTURE                          VAL R17
      528 CAPTURE                          VAL R32
      529 SETTABLEKS                       R33 R20 K169 ["keyDown"]
      531 DUPCLOSURE                       R33 K170 [PROTO_44]
      532 CAPTURE                          VAL R17
      533 CAPTURE                          VAL R32
      534 SETTABLEKS                       R33 R20 K171 ["keyUp"]
      536 DUPCLOSURE                       R33 K172 [PROTO_45]
      537 SETTABLEKS                       R33 R20 K173 ["getPriority"]
      539 RETURN                           R20 1
