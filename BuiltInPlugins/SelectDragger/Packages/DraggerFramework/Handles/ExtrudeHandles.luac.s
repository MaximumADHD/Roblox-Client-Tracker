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
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K5 ["new"]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K6 ["_softSnapper"]
       34 GETUPVAL                         R6 4
       35 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       37 MOVE                             R5 R3
       38 GETIMPORT                        R4 K8 [setmetatable]
       40 CALL                             R4 2 1
       41 RETURN                           R4 1

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
        9 GETTABLEKS                       R1 R0 K3 ["_props"]
       11 GETTABLEKS                       R1 R1 K4 ["Summonable"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       18 NAMECALL                         R1 R1 K6 ["getMouseRay"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R0 K7 ["_schema"]
       23 GETTABLEKS                       R2 R2 K8 ["getMouseTarget"]
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
       41 GETTABLEKS                       R8 R1 K12 ["Direction"]
       43 GETTABLEKS                       R8 R8 K13 ["Unit"]
       45 MUL                              R7 R8 R4
       46 ADD                              R5 R6 R7
       47 GETTABLEKS                       R6 R0 K14 ["_boundingBox"]
       49 GETTABLEKS                       R6 R6 K15 ["CFrame"]
       51 MOVE                             R8 R5
       52 NAMECALL                         R6 R6 K16 ["PointToObjectSpace"]
       54 CALL                             R6 2 1
       55 GETTABLEKS                       R8 R0 K14 ["_boundingBox"]
       57 GETTABLEKS                       R8 R8 K18 ["Size"]
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
       86 GETTABLEKS                       R14 R0 K14 ["_boundingBox"]
       88 GETTABLEKS                       R14 R14 K15 ["CFrame"]
       90 GETIMPORT                        R15 K20 [CFrame.new]
       92 GETTABLEKS                       R17 R0 K14 ["_boundingBox"]
       94 GETTABLEKS                       R17 R17 K18 ["Size"]
       96 MUL                              R16 R17 R12
       97 CALL                             R15 1 1
       98 MUL                              R13 R14 R15
       99 GETTABLEKS                       R14 R0 K5 ["_draggerContext"]
      101 GETTABLEKS                       R16 R13 K28 ["Position"]
      103 NAMECALL                         R14 R14 K29 ["worldToViewportPoint"]
      105 CALL                             R14 2 2
      106 GETIMPORT                        R17 K31 [Vector2.new]
      108 GETTABLEKS                       R18 R14 K32 ["X"]
      110 GETTABLEKS                       R19 R14 K33 ["Y"]
      112 CALL                             R17 2 1
      113 SUB                              R16 R5 R17
      114 GETTABLEKS                       R16 R16 K34 ["Magnitude"]
      116 JUMPIFNOT                        R15 ; [+4]
      117 JUMPIFNOTLT                      R16 R7 ; [+3]
      119 MOVE                             R7 R16
      120 MOVE                             R6 R13
      121 FORGLOOP                         R8 2 [inext] ; [-36]
      123 JUMPIFNOT                        R6 ; [+10]
      124 GETTABLEKS                       R8 R0 K14 ["_boundingBox"]
      126 GETTABLEKS                       R8 R8 K15 ["CFrame"]
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

PROTO_15:
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

PROTO_18:
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

PROTO_23:
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
       69 RETURN                           R0 0

PROTO_24:
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
       42 RETURN                           R0 0

PROTO_25:
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
       40 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       12 JUMPIFNOT                        R3 ; [+94]
       13 GETTABLEKS                       R4 R0 K2 ["_handles"]
       15 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIFNOT                        R3 ; [+88]
       19 GETTABLEKS                       R4 R0 K2 ["_handles"]
       21 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       23 GETTABLE                         R3 R4 R5
       24 GETTABLEKS                       R4 R0 K1 ["_draggingHandleId"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K3 ["createElement"]
       29 GETUPVAL                         R6 2
       30 DUPTABLE                         R7 K7 [{"HandleCFrame", "Color", "Scale"}]
       31 GETTABLEKS                       R8 R3 K4 ["HandleCFrame"]
       33 SETTABLEKS                       R8 R7 K4 ["HandleCFrame"]
       35 GETUPVAL                         R9 3
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+3]
       38 GETTABLEKS                       R8 R3 K8 ["HighlightColor"]
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R8 R3 K5 ["Color"]
       43 SETTABLEKS                       R8 R7 K5 ["Color"]
       45 GETTABLEKS                       R8 R3 K6 ["Scale"]
       47 SETTABLEKS                       R8 R7 K6 ["Scale"]
       49 CALL                             R5 2 1
       50 SETTABLE                         R5 R2 R4
       51 GETIMPORT                        R4 K10 [pairs]
       53 GETTABLEKS                       R5 R0 K2 ["_handles"]
       55 CALL                             R4 1 3
       56 FORGPREP_NEXT                    R4
       57 GETTABLEKS                       R9 R0 K1 ["_draggingHandleId"]
       59 JUMPIFEQ                         R7 R9 ; [+33]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K3 ["createElement"]
       64 GETUPVAL                         R10 2
       65 DUPTABLE                         R11 K12 [{"HandleCFrame", "Color", "Scale", "Thin"}]
       66 GETTABLEKS                       R12 R8 K4 ["HandleCFrame"]
       68 SETTABLEKS                       R12 R11 K4 ["HandleCFrame"]
       70 GETUPVAL                         R13 3
       71 CALL                             R13 0 1
       72 JUMPIFNOT                        R13 ; [+3]
       73 GETTABLEKS                       R12 R8 K5 ["Color"]
       75 JUMP                             ; [+6]
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R12 R12 K13 ["makeDimmed"]
       79 GETTABLEKS                       R13 R8 K5 ["Color"]
       81 CALL                             R12 1 1
       82 SETTABLEKS                       R12 R11 K5 ["Color"]
       84 GETTABLEKS                       R12 R8 K6 ["Scale"]
       86 SETTABLEKS                       R12 R11 K6 ["Scale"]
       88 LOADB                            R12 1
       89 SETTABLEKS                       R12 R11 K11 ["Thin"]
       91 CALL                             R9 2 1
       92 SETTABLE                         R9 R2 R7
       93 FORGLOOP                         R4 2 ; [-37]
       95 GETTABLEKS                       R4 R0 K14 ["_implementation"]
       97 GETTABLEKS                       R6 R0 K15 ["_lastDeltaSize"]
       99 GETTABLEKS                       R7 R0 K16 ["_lastOffset"]
      101 NAMECALL                         R4 R4 K17 ["render"]
      103 CALL                             R4 3 1
      104 SETTABLEKS                       R4 R2 K18 ["ImplementationRendered"]
      106 JUMP                             ; [+47]
      107 GETIMPORT                        R3 K10 [pairs]
      109 GETTABLEKS                       R4 R0 K2 ["_handles"]
      111 CALL                             R3 1 3
      112 FORGPREP_NEXT                    R3
      113 JUMPIFEQ                         R6 R1 ; [+2]
      115 LOADB                            R8 0 +1
      116 LOADB                            R8 1
      117 GETTABLEKS                       R9 R7 K5 ["Color"]
      119 GETUPVAL                         R10 3
      120 CALL                             R10 0 1
      121 JUMPIFNOT                        R10 ; [+4]
      122 JUMPIFNOT                        R8 ; [+10]
      123 GETTABLEKS                       R9 R7 K8 ["HighlightColor"]
      125 JUMP                             ; [+7]
      126 JUMPIF                           R8 ; [+6]
      127 GETUPVAL                         R10 4
      128 GETTABLEKS                       R10 R10 K13 ["makeDimmed"]
      130 MOVE                             R11 R9
      131 CALL                             R10 1 1
      132 MOVE                             R9 R10
      133 GETUPVAL                         R10 1
      134 GETTABLEKS                       R10 R10 K3 ["createElement"]
      136 GETUPVAL                         R11 2
      137 DUPTABLE                         R12 K20 [{"HandleCFrame", "Color", "Scale", "Hovered"}]
      138 GETTABLEKS                       R13 R7 K4 ["HandleCFrame"]
      140 SETTABLEKS                       R13 R12 K4 ["HandleCFrame"]
      142 SETTABLEKS                       R9 R12 K5 ["Color"]
      144 GETTABLEKS                       R13 R7 K6 ["Scale"]
      146 SETTABLEKS                       R13 R12 K6 ["Scale"]
      148 SETTABLEKS                       R8 R12 K19 ["Hovered"]
      150 CALL                             R10 2 1
      151 SETTABLE                         R10 R2 R6
      152 FORGLOOP                         R3 2 ; [-40]
      154 NAMECALL                         R3 R0 K21 ["_shouldDrawBoundingBox"]
      156 CALL                             R3 1 1
      157 JUMPIFNOT                        R3 ; [+37]
      158 GETUPVAL                         R3 1
      159 GETTABLEKS                       R3 R3 K3 ["createElement"]
      161 GETUPVAL                         R4 5
      162 DUPTABLE                         R5 K26 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      163 GETTABLEKS                       R6 R0 K27 ["_boundingBox"]
      165 GETTABLEKS                       R6 R6 K22 ["CFrame"]
      167 SETTABLEKS                       R6 R5 K22 ["CFrame"]
      169 GETTABLEKS                       R6 R0 K27 ["_boundingBox"]
      171 GETTABLEKS                       R6 R6 K23 ["Size"]
      173 SETTABLEKS                       R6 R5 K23 ["Size"]
      175 NAMECALL                         R6 R0 K28 ["_getBoundingBoxColor"]
      177 CALL                             R6 1 1
      178 SETTABLEKS                       R6 R5 K5 ["Color"]
      180 NAMECALL                         R6 R0 K29 ["_getBoundingBoxThickness"]
      182 CALL                             R6 1 1
      183 SETTABLEKS                       R6 R5 K24 ["LineThickness"]
      185 GETTABLEKS                       R6 R0 K30 ["_draggerContext"]
      187 NAMECALL                         R6 R6 K31 ["getGuiParent"]
      189 CALL                             R6 1 1
      190 SETTABLEKS                       R6 R5 K25 ["Container"]
      192 CALL                             R3 2 1
      193 SETTABLEKS                       R3 R2 K32 ["SelectionBoundingBox"]
      195 GETTABLEKS                       R3 R0 K33 ["_summonBasisOffset"]
      197 JUMPIFNOT                        R3 ; [+40]
      198 GETUPVAL                         R3 1
      199 GETTABLEKS                       R3 R3 K3 ["createElement"]
      201 GETUPVAL                         R4 6
      202 DUPTABLE                         R5 K36 [{"DraggerContext", "CFrame", "IsActive"}]
      203 GETTABLEKS                       R6 R0 K30 ["_draggerContext"]
      205 SETTABLEKS                       R6 R5 K34 ["DraggerContext"]
      207 GETTABLEKS                       R7 R0 K27 ["_boundingBox"]
      209 GETTABLEKS                       R7 R7 K22 ["CFrame"]
      211 NAMECALL                         R8 R0 K37 ["_getBasisOffset"]
      213 CALL                             R8 1 1
      214 MUL                              R6 R7 R8
      215 SETTABLEKS                       R6 R5 K22 ["CFrame"]
      217 GETTABLEKS                       R6 R0 K30 ["_draggerContext"]
      219 NAMECALL                         R6 R6 K38 ["shouldShowActiveInstanceHighlight"]
      221 CALL                             R6 1 1
      222 JUMPIFNOT                        R6 ; [+10]
      223 GETTABLEKS                       R8 R0 K39 ["_selectionWrapper"]
      225 NAMECALL                         R8 R8 K40 ["get"]
      227 CALL                             R8 1 1
      228 LENGTH                           R7 R8
      229 JUMPIFEQKN                       R7 K41 [1] ; [+2]
      231 LOADB                            R6 0 +1
      232 LOADB                            R6 1
      233 SETTABLEKS                       R6 R5 K35 ["IsActive"]
      235 CALL                             R3 2 1
      236 SETTABLEKS                       R3 R2 K42 ["SummonedPivot"]
      238 GETUPVAL                         R3 1
      239 GETTABLEKS                       R3 R3 K3 ["createElement"]
      241 LOADK                            R4 K43 ["Folder"]
      242 NEWTABLE                         R5 0 0
      244 MOVE                             R6 R2
      245 CALL                             R3 3 -1
      246 RETURN                           R3 -1

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
       92 GETUPVAL                         R5 0
       93 CALL                             R5 0 1
       94 JUMPIFNOT                        R5 ; [+31]
       95 GETTABLEKS                       R5 R0 K21 ["_implementation"]
       97 GETTABLEKS                       R5 R5 K26 ["getSoftSnaps"]
       99 JUMPIFNOT                        R5 ; [+21]
      100 NAMECALL                         R5 R0 K27 ["_needsSoftSnaps"]
      102 CALL                             R5 1 1
      103 JUMPIFNOT                        R5 ; [+17]
      104 GETTABLEKS                       R5 R0 K28 ["_softSnapper"]
      106 GETTABLEKS                       R7 R0 K21 ["_implementation"]
      108 GETTABLEKS                       R9 R0 K5 ["_handleCFrame"]
      110 GETTABLEKS                       R9 R9 K29 ["LookVector"]
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
       48 GETUPVAL                         R12 1
       49 CALL                             R12 0 1
       50 JUMPIFNOT                        R12 ; [+21]
       51 GETTABLE                         R12 R7 R2
       52 LOADK                            R13 K2 [0.0001]
       53 JUMPIFNOTLT                      R12 R13 ; [+8]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K3 ["setToVector3"]
       58 MOVE                             R13 R3
       59 CALL                             R12 1 1
       60 MUL                              R11 R12 R10
       61 JUMP                             ; [+24]
       62 GETTABLE                         R13 R7 R2
       63 DIV                              R12 R10 R13
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R14 R14 K3 ["setToVector3"]
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
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K3 ["setToVector3"]
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
       64 GETTABLEKS                       R9 R0 K13 ["_startDragHandlePosition"]
       66 GETTABLEKS                       R10 R0 K11 ["_dragStartPosition"]
       68 SUB                              R8 R9 R10
       69 GETTABLEKS                       R8 R8 K16 ["Magnitude"]
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
      112 GETTABLEKS                       R14 R0 K25 ["_originalBoundingBoxSize"]
      114 GETTABLEKS                       R14 R14 K26 ["X"]
      116 GETTABLEKS                       R15 R0 K25 ["_originalBoundingBoxSize"]
      118 GETTABLEKS                       R15 R15 K27 ["Y"]
      120 GETTABLEKS                       R16 R0 K25 ["_originalBoundingBoxSize"]
      122 GETTABLEKS                       R16 R16 K28 ["Z"]
      124 SETLIST                          R13 R14 3 [1]
      126 GETTABLE                         R14 R13 R11
      127 NAMECALL                         R15 R0 K29 ["_getBasisOffset"]
      129 CALL                             R15 1 1
      130 GETTABLEKS                       R15 R15 K30 ["Position"]
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
      225 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      227 GETTABLEKS                       R17 R17 K26 ["X"]
      229 JUMPIF                           R17 ; [+10]
      230 LOADN                            R18 0
      231 GETTABLEKS                       R19 R12 K27 ["Y"]
      233 GETTABLEKS                       R20 R12 K28 ["Z"]
      235 FASTCALL                         VECTOR ; [+2]
      236 GETIMPORT                        R17 K33 [Vector3.new]
      238 CALL                             R17 3 1
      239 MOVE                             R12 R17
      240 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      242 GETTABLEKS                       R17 R17 K27 ["Y"]
      244 JUMPIF                           R17 ; [+10]
      245 GETTABLEKS                       R18 R12 K26 ["X"]
      247 LOADN                            R19 0
      248 GETTABLEKS                       R20 R12 K28 ["Z"]
      250 FASTCALL                         VECTOR ; [+2]
      251 GETIMPORT                        R17 K33 [Vector3.new]
      253 CALL                             R17 3 1
      254 MOVE                             R12 R17
      255 GETTABLEKS                       R17 R0 K42 ["_lastAxesToScale"]
      257 GETTABLEKS                       R17 R17 K28 ["Z"]
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
      408 GETUPVAL                         R28 5
      409 GETTABLEKS                       R28 R28 K59 ["componentwiseOperation"]
      411 GETTABLEKS                       R29 R0 K55 ["_boundingBox"]
      413 GETTABLEKS                       R29 R29 K58 ["Size"]
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
      442 GETTABLEKS                       R29 R0 K55 ["_boundingBox"]
      444 GETTABLEKS                       R29 R29 K58 ["Size"]
      446 MUL                              R27 R28 R29
      447 CALL                             R26 1 1
      448 SETTABLEKS                       R26 R0 K62 ["_summonBasisOffset"]
      450 RETURN                           R0 0
      451 GETIMPORT                        R26 K57 [CFrame.new]
      453 GETTABLEKS                       R29 R0 K61 ["_originalBasisOffset"]
      455 GETTABLEKS                       R30 R0 K25 ["_originalBoundingBoxSize"]
      457 DIV                              R28 R29 R30
      458 GETTABLEKS                       R29 R0 K55 ["_boundingBox"]
      460 GETTABLEKS                       R29 R29 K58 ["Size"]
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
       32 GETTABLEKS                       R2 R0 K9 ["_schema"]
       34 GETTABLEKS                       R2 R2 K10 ["addUndoWaypoint"]
       36 GETTABLEKS                       R3 R0 K11 ["_draggerContext"]
       38 LOADK                            R4 K12 ["Scale Selection"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R0 K1 ["_originalBoundingBoxCFrame"]
        6 GETTABLEKS                       R4 R4 K2 ["Rotation"]
        8 MUL                              R3 R4 R2
        9 GETTABLEKS                       R4 R3 K3 ["Position"]
       11 RETURN                           R4 1

PROTO_40:
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
       50 GETTABLEKS                       R8 R8 K13 ["DraggedPivot"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R9 K14 ["SummonedPivot"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K15 ["HotkeyUsageInfo"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K16 ["WireframeHandleAdornment"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R12 R0 K7 ["Utility"]
       78 GETTABLEKS                       R12 R12 K17 ["HotkeyHelpBuilder"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R13 R0 K10 ["Components"]
       85 GETTABLEKS                       R13 R13 K18 ["FloatingValueInput"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R14 R0 K7 ["Utility"]
       92 GETTABLEKS                       R14 R14 K19 ["conciseNumberFormat"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K7 ["Utility"]
       99 GETTABLEKS                       R15 R15 K20 ["SoftSnapper"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R16 R0 K7 ["Utility"]
      106 GETTABLEKS                       R16 R16 K21 ["computeHandlePositionDistance"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K7 ["Utility"]
      113 GETTABLEKS                       R17 R17 K22 ["computeDraggedDistance"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R18 R0 K23 ["Flags"]
      120 GETTABLEKS                       R18 R18 K24 ["getFFlagDraggerImprovements"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K4 [require]
      125 GETTABLEKS                       R19 R0 K23 ["Flags"]
      127 GETTABLEKS                       R19 R19 K25 ["getFFlagNextGenDraggers"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K4 [require]
      132 GETTABLEKS                       R20 R0 K23 ["Flags"]
      134 GETTABLEKS                       R20 R20 K26 ["getFFlagScaleDraggerFixZeroSizeBug"]
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
      157 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      158 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      160 FASTCALL                         VECTOR ; [+2]
      161 GETIMPORT                        R26 K52 [Vector3.new]
      163 CALL                             R26 0 1
      164 LOADK                            R27 K53 [{0, 1, 0}]
      165 LOADK                            R28 K54 [{0, 0, 1}]
      166 CALL                             R25 3 1
      167 SETTABLEKS                       R25 R24 K42 ["Offset"]
      169 GETTABLEKS                       R25 R3 K31 ["X_AXIS"]
      171 SETTABLEKS                       R25 R24 K43 ["Color"]
      173 LOADK                            R25 K55 ["X"]
      174 SETTABLEKS                       R25 R24 K44 ["Axis"]
      176 GETTABLEKS                       R25 R21 K31 ["X_AXIS"]
      178 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      180 SETTABLEKS                       R24 R23 K35 ["MinusX"]
      182 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      183 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      185 FASTCALL                         VECTOR ; [+2]
      186 GETIMPORT                        R26 K52 [Vector3.new]
      188 CALL                             R26 0 1
      189 LOADK                            R27 K53 [{0, 1, 0}]
      190 LOADK                            R28 K56 [{0, 0, -1}]
      191 CALL                             R25 3 1
      192 SETTABLEKS                       R25 R24 K42 ["Offset"]
      194 GETTABLEKS                       R25 R3 K31 ["X_AXIS"]
      196 SETTABLEKS                       R25 R24 K43 ["Color"]
      198 LOADK                            R25 K55 ["X"]
      199 SETTABLEKS                       R25 R24 K44 ["Axis"]
      201 GETTABLEKS                       R25 R21 K31 ["X_AXIS"]
      203 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      205 SETTABLEKS                       R24 R23 K36 ["PlusX"]
      207 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      208 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      210 FASTCALL                         VECTOR ; [+2]
      211 GETIMPORT                        R26 K52 [Vector3.new]
      213 CALL                             R26 0 1
      214 LOADK                            R27 K54 [{0, 0, 1}]
      215 LOADK                            R28 K57 [{1, 0, 0}]
      216 CALL                             R25 3 1
      217 SETTABLEKS                       R25 R24 K42 ["Offset"]
      219 GETTABLEKS                       R25 R3 K32 ["Y_AXIS"]
      221 SETTABLEKS                       R25 R24 K43 ["Color"]
      223 LOADK                            R25 K58 ["Y"]
      224 SETTABLEKS                       R25 R24 K44 ["Axis"]
      226 GETTABLEKS                       R25 R21 K32 ["Y_AXIS"]
      228 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      230 SETTABLEKS                       R24 R23 K37 ["MinusY"]
      232 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      233 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      235 FASTCALL                         VECTOR ; [+2]
      236 GETIMPORT                        R26 K52 [Vector3.new]
      238 CALL                             R26 0 1
      239 LOADK                            R27 K54 [{0, 0, 1}]
      240 LOADK                            R28 K59 [{-1, 0, 0}]
      241 CALL                             R25 3 1
      242 SETTABLEKS                       R25 R24 K42 ["Offset"]
      244 GETTABLEKS                       R25 R3 K32 ["Y_AXIS"]
      246 SETTABLEKS                       R25 R24 K43 ["Color"]
      248 LOADK                            R25 K58 ["Y"]
      249 SETTABLEKS                       R25 R24 K44 ["Axis"]
      251 GETTABLEKS                       R25 R21 K32 ["Y_AXIS"]
      253 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      255 SETTABLEKS                       R24 R23 K38 ["PlusY"]
      257 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      258 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      260 FASTCALL                         VECTOR ; [+2]
      261 GETIMPORT                        R26 K52 [Vector3.new]
      263 CALL                             R26 0 1
      264 LOADK                            R27 K57 [{1, 0, 0}]
      265 LOADK                            R28 K53 [{0, 1, 0}]
      266 CALL                             R25 3 1
      267 SETTABLEKS                       R25 R24 K42 ["Offset"]
      269 GETTABLEKS                       R25 R3 K33 ["Z_AXIS"]
      271 SETTABLEKS                       R25 R24 K43 ["Color"]
      273 LOADK                            R25 K60 ["Z"]
      274 SETTABLEKS                       R25 R24 K44 ["Axis"]
      276 GETTABLEKS                       R25 R21 K33 ["Z_AXIS"]
      278 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      280 SETTABLEKS                       R24 R23 K39 ["MinusZ"]
      282 DUPTABLE                         R24 K46 [{"Offset", "Color", "Axis", "NormalId"}]
      283 GETIMPORT                        R25 K49 [CFrame.fromMatrix]
      285 FASTCALL                         VECTOR ; [+2]
      286 GETIMPORT                        R26 K52 [Vector3.new]
      288 CALL                             R26 0 1
      289 LOADK                            R27 K57 [{1, 0, 0}]
      290 LOADK                            R28 K61 [{0, -1, 0}]
      291 CALL                             R25 3 1
      292 SETTABLEKS                       R25 R24 K42 ["Offset"]
      294 GETTABLEKS                       R25 R3 K33 ["Z_AXIS"]
      296 SETTABLEKS                       R25 R24 K43 ["Color"]
      298 LOADK                            R25 K60 ["Z"]
      299 SETTABLEKS                       R25 R24 K44 ["Axis"]
      301 GETTABLEKS                       R25 R21 K33 ["Z_AXIS"]
      303 SETTABLEKS                       R25 R24 K45 ["NormalId"]
      305 SETTABLEKS                       R24 R23 K40 ["PlusZ"]
      307 CALL                             R22 1 1
      308 GETIMPORT                        R23 K30 [table.freeze]
      310 NEWTABLE                         R24 0 8
      312 LOADK                            R25 K62 [{0.5, 0.5, 0.5}]
      313 LOADK                            R26 K63 [{0.5, 0.5, -0.5}]
      314 LOADK                            R27 K64 [{0.5, -0.5, 0.5}]
      315 LOADK                            R28 K65 [{0.5, -0.5, -0.5}]
      316 LOADK                            R29 K66 [{-0.5, 0.5, 0.5}]
      317 LOADK                            R30 K67 [{-0.5, 0.5, -0.5}]
      318 LOADK                            R31 K68 [{-0.5, -0.5, 0.5}]
      319 LOADK                            R32 K69 [{-0.5, -0.5, -0.5}]
      320 SETLIST                          R24 R25 8 [1]
      322 CALL                             R23 1 1
      323 DUPCLOSURE                       R24 K70 [PROTO_0]
      324 CAPTURE                          VAL R18
      325 CAPTURE                          VAL R3
      326 CAPTURE                          VAL R17
      327 CAPTURE                          VAL R14
      328 CAPTURE                          VAL R20
      329 SETTABLEKS                       R24 R20 K51 ["new"]
      331 DUPCLOSURE                       R24 K71 [PROTO_1]
      332 SETTABLEKS                       R24 R20 K72 ["_hasSoftSnap"]
      334 DUPCLOSURE                       R24 K73 [PROTO_2]
      335 CAPTURE                          VAL R17
      336 CAPTURE                          VAL R23
      337 SETTABLEKS                       R24 R20 K74 ["_summonHandles"]
      339 DUPCLOSURE                       R24 K75 [PROTO_3]
      340 CAPTURE                          VAL R17
      341 SETTABLEKS                       R24 R20 K76 ["_endSummon"]
      343 DUPCLOSURE                       R24 K77 [PROTO_4]
      344 SETTABLEKS                       R24 R20 K78 ["beginSummon"]
      346 DUPCLOSURE                       R24 K79 [PROTO_5]
      347 SETTABLEKS                       R24 R20 K80 ["endSummon"]
      349 DUPCLOSURE                       R24 K81 [PROTO_6]
      350 SETTABLEKS                       R24 R20 K82 ["_getBasisOffset"]
      352 DUPCLOSURE                       R24 K83 [PROTO_7]
      353 SETTABLEKS                       R24 R20 K84 ["update"]
      355 DUPCLOSURE                       R24 K85 [PROTO_8]
      356 SETTABLEKS                       R24 R20 K86 ["shouldBiasTowardsObjects"]
      358 DUPCLOSURE                       R24 K87 [PROTO_9]
      359 SETTABLEKS                       R24 R20 K88 ["_rememberCurrentBoundsAsOriginal"]
      361 DUPCLOSURE                       R24 K89 [PROTO_10]
      362 SETTABLEKS                       R24 R20 K90 ["_refreshDrag"]
      364 DUPCLOSURE                       R24 K91 [PROTO_11]
      365 DUPCLOSURE                       R25 K92 [PROTO_12]
      366 SETTABLEKS                       R25 R20 K93 ["_updateExtrudeMode"]
      368 DUPCLOSURE                       R25 K94 [PROTO_13]
      369 SETTABLEKS                       R25 R20 K95 ["_refreshDragIfNeeded"]
      371 DUPCLOSURE                       R25 K96 [PROTO_14]
      372 CAPTURE                          VAL R6
      373 SETTABLEKS                       R25 R20 K97 ["hitTest"]
      375 DUPCLOSURE                       R25 K98 [PROTO_15]
      376 CAPTURE                          VAL R3
      377 SETTABLEKS                       R25 R20 K99 ["_getBoundingBoxColor"]
      379 DUPCLOSURE                       R25 K100 [PROTO_16]
      380 SETTABLEKS                       R25 R20 K101 ["_getBoundingBoxThickness"]
      382 DUPCLOSURE                       R25 K102 [PROTO_17]
      383 SETTABLEKS                       R25 R20 K103 ["_shouldDrawBoundingBox"]
      385 DUPTABLE                         R25 K106 [{"Hotkey", "LabelLocEntry"}]
      386 LOADK                            R26 K107 ["⬇Alt"]
      387 SETTABLEKS                       R26 R25 K104 ["Hotkey"]
      389 LOADK                            R26 K108 ["ScaleUniformly"]
      390 SETTABLEKS                       R26 R25 K105 ["LabelLocEntry"]
      392 DUPTABLE                         R26 K106 [{"Hotkey", "LabelLocEntry"}]
      393 LOADK                            R27 K109 ["⬆Alt"]
      394 SETTABLEKS                       R27 R26 K104 ["Hotkey"]
      396 LOADK                            R27 K110 ["ScaleResize"]
      397 SETTABLEKS                       R27 R26 K105 ["LabelLocEntry"]
      399 DUPTABLE                         R27 K106 [{"Hotkey", "LabelLocEntry"}]
      400 LOADK                            R28 K111 ["⬇Ctrl"]
      401 SETTABLEKS                       R28 R27 K104 ["Hotkey"]
      403 LOADK                            R28 K112 ["ScaleAroundPivot"]
      404 SETTABLEKS                       R28 R27 K105 ["LabelLocEntry"]
      406 DUPTABLE                         R28 K106 [{"Hotkey", "LabelLocEntry"}]
      407 LOADK                            R29 K113 ["⬆Ctrl"]
      408 SETTABLEKS                       R29 R28 K104 ["Hotkey"]
      410 LOADK                            R29 K114 ["ScaleFromEdge"]
      411 SETTABLEKS                       R29 R28 K105 ["LabelLocEntry"]
      413 DUPCLOSURE                       R29 K115 [PROTO_18]
      414 CAPTURE                          VAL R11
      415 CAPTURE                          VAL R28
      416 CAPTURE                          VAL R27
      417 CAPTURE                          VAL R26
      418 CAPTURE                          VAL R25
      419 CAPTURE                          VAL R2
      420 CAPTURE                          VAL R9
      421 SETTABLEKS                       R29 R20 K116 ["_renderHotkeyHelp"]
      423 DUPCLOSURE                       R29 K117 [PROTO_19]
      424 SETTABLEKS                       R29 R20 K118 ["_renderSoftSnaps"]
      426 DUPCLOSURE                       R29 K119 [PROTO_21]
      427 CAPTURE                          VAL R2
      428 CAPTURE                          VAL R10
      429 SETTABLEKS                       R29 R20 K120 ["_renderChosenAxis"]
      431 DUPCLOSURE                       R29 K121 [PROTO_22]
      432 CAPTURE                          VAL R2
      433 CAPTURE                          VAL R6
      434 CAPTURE                          VAL R18
      435 SETTABLEKS                       R29 R20 K122 ["_renderDraggingHandles"]
      437 DUPCLOSURE                       R29 K123 [PROTO_23]
      438 CAPTURE                          VAL R18
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R12
      441 CAPTURE                          VAL R13
      442 SETTABLEKS                       R29 R20 K124 ["_renderSizeMeasurement"]
      444 DUPCLOSURE                       R29 K125 [PROTO_24]
      445 CAPTURE                          VAL R2
      446 CAPTURE                          VAL R8
      447 SETTABLEKS                       R29 R20 K126 ["_renderSummon"]
      449 DUPCLOSURE                       R29 K127 [PROTO_25]
      450 CAPTURE                          VAL R2
      451 CAPTURE                          VAL R5
      452 SETTABLEKS                       R29 R20 K128 ["_renderBoundingBox"]
      454 DUPCLOSURE                       R29 K129 [PROTO_26]
      455 CAPTURE                          VAL R18
      456 CAPTURE                          VAL R3
      457 CAPTURE                          VAL R2
      458 CAPTURE                          VAL R6
      459 SETTABLEKS                       R29 R20 K130 ["_renderHovering"]
      461 DUPCLOSURE                       R29 K131 [PROTO_27]
      462 CAPTURE                          VAL R2
      463 SETTABLEKS                       R29 R20 K132 ["_renderDragging"]
      465 DUPCLOSURE                       R29 K133 [PROTO_28]
      466 CAPTURE                          VAL R2
      467 SETTABLEKS                       R29 R20 K134 ["renderNEW"]
      469 DUPCLOSURE                       R29 K135 [PROTO_29]
      470 CAPTURE                          VAL R17
      471 CAPTURE                          VAL R2
      472 CAPTURE                          VAL R6
      473 CAPTURE                          VAL R18
      474 CAPTURE                          VAL R3
      475 CAPTURE                          VAL R5
      476 CAPTURE                          VAL R7
      477 SETTABLEKS                       R29 R20 K136 ["render"]
      479 DUPCLOSURE                       R29 K137 [PROTO_30]
      480 SETTABLEKS                       R29 R20 K138 ["_needsSoftSnaps"]
      482 DUPCLOSURE                       R29 K139 [PROTO_31]
      483 CAPTURE                          VAL R17
      484 SETTABLEKS                       R29 R20 K140 ["mouseDown"]
      486 DUPCLOSURE                       R29 K141 [PROTO_32]
      487 DUPCLOSURE                       R30 K142 [PROTO_33]
      488 CAPTURE                          VAL R4
      489 CAPTURE                          VAL R19
      490 DUPCLOSURE                       R31 K143 [PROTO_34]
      491 DUPCLOSURE                       R32 K144 [PROTO_36]
      492 CAPTURE                          VAL R17
      493 CAPTURE                          VAL R18
      494 CAPTURE                          VAL R15
      495 CAPTURE                          VAL R19
      496 CAPTURE                          VAL R30
      497 CAPTURE                          VAL R4
      498 SETTABLEKS                       R32 R20 K145 ["mouseDrag"]
      500 DUPCLOSURE                       R32 K146 [PROTO_37]
      501 CAPTURE                          VAL R17
      502 SETTABLEKS                       R32 R20 K147 ["mouseUp"]
      504 DUPCLOSURE                       R32 K148 [PROTO_38]
      505 CAPTURE                          VAL R22
      506 SETTABLEKS                       R32 R20 K149 ["_getLocalOppositeBoundingBoxSideCenterOffset"]
      508 DUPCLOSURE                       R32 K150 [PROTO_39]
      509 SETTABLEKS                       R32 R20 K151 ["_getScaleCenterToOppositeBoundingBoxSide"]
      511 DUPCLOSURE                       R32 K152 [PROTO_40]
      512 CAPTURE                          VAL R6
      513 CAPTURE                          VAL R4
      514 SETTABLEKS                       R32 R20 K153 ["_computeProjectionLineAndScaleCenter"]
      516 DUPCLOSURE                       R32 K154 [PROTO_41]
      517 CAPTURE                          VAL R16
      518 SETTABLEKS                       R32 R20 K155 ["_getDistanceAlongAxis"]
      520 DUPCLOSURE                       R32 K156 [PROTO_42]
      521 CAPTURE                          VAL R22
      522 CAPTURE                          VAL R18
      523 CAPTURE                          VAL R3
      524 SETTABLEKS                       R32 R20 K157 ["_updateHandles"]
      526 NEWTABLE                         R32 8 0
      528 GETIMPORT                        R33 K161 [Enum.KeyCode.RightShift]
      530 LOADB                            R34 1
      531 SETTABLE                         R34 R32 R33
      532 GETIMPORT                        R33 K163 [Enum.KeyCode.LeftShift]
      534 LOADB                            R34 1
      535 SETTABLE                         R34 R32 R33
      536 GETIMPORT                        R33 K165 [Enum.KeyCode.RightControl]
      538 LOADB                            R34 1
      539 SETTABLE                         R34 R32 R33
      540 GETIMPORT                        R33 K167 [Enum.KeyCode.LeftControl]
      542 LOADB                            R34 1
      543 SETTABLE                         R34 R32 R33
      544 GETIMPORT                        R33 K169 [Enum.KeyCode.RightAlt]
      546 LOADB                            R34 1
      547 SETTABLE                         R34 R32 R33
      548 GETIMPORT                        R33 K171 [Enum.KeyCode.LeftAlt]
      550 LOADB                            R34 1
      551 SETTABLE                         R34 R32 R33
      552 DUPCLOSURE                       R33 K172 [PROTO_43]
      553 CAPTURE                          VAL R17
      554 CAPTURE                          VAL R32
      555 SETTABLEKS                       R33 R20 K173 ["keyDown"]
      557 DUPCLOSURE                       R33 K174 [PROTO_44]
      558 CAPTURE                          VAL R17
      559 CAPTURE                          VAL R32
      560 SETTABLEKS                       R33 R20 K175 ["keyUp"]
      562 DUPCLOSURE                       R33 K176 [PROTO_45]
      563 SETTABLEKS                       R33 R20 K177 ["getPriority"]
      565 RETURN                           R20 1
