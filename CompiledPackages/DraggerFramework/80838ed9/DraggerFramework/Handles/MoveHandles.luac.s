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
       14 GETUPVAL                         R4 0
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+13]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K2 ["_planeHandles"]
       21 JUMPIFEQKNIL                     R1 ; [+8]
       23 GETTABLEKS                       R4 R1 K3 ["Outset"]
       25 JUMPIFNOTEQKN                    R4 K4 [0.3] ; [+4]
       27 LOADN                            R4 0
       28 SETTABLEKS                       R4 R1 K3 ["Outset"]
       30 MOVE                             R4 R1
       31 JUMPIF                           R4 ; [+1]
       32 DUPTABLE                         R4 K9 [{["MustPositionAtPivot"] = False, ["Summonable"] = True}]
       33 SETTABLEKS                       R4 R3 K10 ["_props"]
       35 SETTABLEKS                       R0 R3 K11 ["_draggerContext"]
       37 SETTABLEKS                       R2 R3 K12 ["_implementation"]
       39 LOADB                            R4 0
       40 SETTABLEKS                       R4 R3 K13 ["_tabKeyDown"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K14 ["new"]
       45 MOVE                             R5 R0
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K15 ["_softSnapper"]
       49 GETUPVAL                         R6 3
       50 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       52 MOVE                             R5 R3
       53 GETIMPORT                        R4 K17 [setmetatable]
       55 CALL                             R4 2 1
       56 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+31]
        1 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        3 NAMECALL                         R3 R3 K1 ["getCameraCFrame"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K2 ["LookVector"]
        8 LOADNIL                          R5
        9 GETTABLEKS                       R7 R4 K3 ["Y"]
       11 FASTCALL1                        MATH_ABS R7 ; [+2]
       12 GETIMPORT                        R6 K6 [math.abs]
       14 CALL                             R6 1 1
       15 LOADK                            R7 K7 [0.9999]
       16 JUMPIFNOTLT                      R7 R6 ; [+4]
       18 GETTABLEKS                       R5 R3 K8 ["UpVector"]
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K9 [{0, 1, 0}]
       22 GETIMPORT                        R6 K12 [CFrame.lookAt]
       24 GETTABLEKS                       R7 R1 K13 ["Position"]
       26 GETTABLEKS                       R9 R1 K13 ["Position"]
       28 ADD                              R8 R9 R4
       29 MOVE                             R9 R5
       30 CALL                             R6 3 -1
       31 RETURN                           R6 -1
       32 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R3 ; [+35]
        3 NAMECALL                         R3 R2 K1 ["getBoundingBox"]
        5 CALL                             R3 1 3
        6 GETIMPORT                        R6 K4 [CFrame.new]
        8 MINUS                            R7 R4
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R0 K5 ["_basisOffset"]
       12 DUPTABLE                         R6 K7 [{"Size", "CFrame"}]
       13 SETTABLEKS                       R5 R6 K6 ["Size"]
       15 GETIMPORT                        R8 K4 [CFrame.new]
       17 MOVE                             R9 R4
       18 CALL                             R8 1 1
       19 MUL                              R7 R3 R8
       20 SETTABLEKS                       R7 R6 K2 ["CFrame"]
       22 SETTABLEKS                       R6 R0 K8 ["_boundingBox"]
       24 SETTABLEKS                       R1 R0 K9 ["_draggerToolModel"]
       26 NAMECALL                         R6 R1 K10 ["getSchema"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R0 K11 ["_schema"]
       31 NAMECALL                         R6 R1 K12 ["getSelectionWrapper"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R0 K13 ["_selectionWrapper"]
       36 SETTABLEKS                       R2 R0 K14 ["_selectionInfo"]
       38 NAMECALL                         R3 R0 K15 ["_updateHandles"]
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_summonOffsetInBasis"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K1 ["_laggingHandleId"]
        5 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_summonOffsetInBasis"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_laggingHandleId"]
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_summonOffsetInBasis"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R3 R0 K1 ["_basisOffset"]
        5 MUL                              R2 R3 R1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K1 ["_basisOffset"]
        9 RETURN                           R2 1

PROTO_6:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_7:
        0 LOADNIL                          R3
        1 LOADK                            R4 K0 [∞]
        2 GETIMPORT                        R5 K2 [pairs]
        4 GETTABLEKS                       R6 R0 K3 ["_handles"]
        6 CALL                             R5 1 3
        7 FORGPREP_NEXT                    R5
        8 GETUPVAL                         R10 0
        9 CALL                             R10 0 1
       10 JUMPIFNOT                        R10 ; [+10]
       11 GETTABLEKS                       R10 R9 K4 ["Axis"]
       13 MOVE                             R13 R10
       14 LOADB                            R14 1
       15 NAMECALL                         R11 R0 K5 ["_getGrazingAngleFactor"]
       17 CALL                             R11 3 1
       18 LOADN                            R12 0
       19 JUMPIFLE                         R11 R12 ; [+12]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K6 ["hitTest"]
       24 MOVE                             R11 R9
       25 MOVE                             R12 R1
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+4]
       28 JUMPIFNOTLT                      R10 R4 ; [+3]
       30 MOVE                             R4 R10
       31 MOVE                             R3 R8
       32 FORGLOOP                         R5 2 ; [-25]
       34 GETUPVAL                         R5 0
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+66]
       37 GETIMPORT                        R5 K2 [pairs]
       39 GETTABLEKS                       R6 R0 K7 ["_planeHandles"]
       41 CALL                             R5 1 3
       42 FORGPREP_NEXT                    R5
       43 GETTABLEKS                       R12 R9 K4 ["Axis"]
       45 GETTABLEKS                       R13 R9 K8 ["IsView"]
       47 NAMECALL                         R10 R0 K9 ["_orient"]
       49 CALL                             R10 3 1
       50 MOVE                             R13 R10
       51 NAMECALL                         R11 R0 K5 ["_getGrazingAngleFactor"]
       53 CALL                             R11 2 1
       54 LOADN                            R12 0
       55 JUMPIFLE                         R11 R12 ; [+12]
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R12 R12 K6 ["hitTest"]
       60 MOVE                             R13 R9
       61 MOVE                             R14 R1
       62 CALL                             R12 2 1
       63 JUMPIFNOT                        R12 ; [+4]
       64 JUMPIFNOTLT                      R12 R4 ; [+3]
       66 MOVE                             R4 R12
       67 MOVE                             R3 R8
       68 FORGLOOP                         R5 2 ; [-26]
       70 JUMPIF                           R2 ; [+32]
       71 JUMPIF                           R3 ; [+31]
       72 GETTABLEKS                       R5 R0 K7 ["_planeHandles"]
       74 LOADNIL                          R6
       75 LOADNIL                          R7
       76 FORGPREP                         R5
       77 GETTABLEKS                       R10 R9 K4 ["Axis"]
       79 MOVE                             R13 R10
       80 NAMECALL                         R11 R0 K5 ["_getGrazingAngleFactor"]
       82 CALL                             R11 2 1
       83 LOADN                            R12 0
       84 JUMPIFLE                         R11 R12 ; [+11]
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K10 ["distanceFromHandle"]
       89 MOVE                             R13 R9
       90 MOVE                             R14 R1
       91 CALL                             R12 2 1
       92 JUMPIFNOTLT                      R12 R4 ; [+3]
       94 MOVE                             R4 R12
       95 MOVE                             R3 R8
       96 FORGLOOP                         R5 2 ; [-20]
       98 LOADN                            R5 0
       99 JUMPIFNOTLT                      R5 R4 ; [+3]
      101 LOADNIL                          R3
      102 LOADK                            R4 K0 [∞]
      103 MOVE                             R5 R3
      104 MOVE                             R6 R4
      105 LOADB                            R7 1
      106 RETURN                           R5 3

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_lastDelta"]
        2 SUB                              R2 R1 R3
        3 SETTABLEKS                       R1 R0 K0 ["_lastDelta"]
        5 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R3 K2 ["_boundsChangedTracker"]
        9 NAMECALL                         R3 R3 K3 ["uninstall"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K4 ["_implementation"]
       14 GETTABLEKS                       R5 R0 K5 ["_selectionWrapper"]
       16 NAMECALL                         R5 R5 K6 ["get"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R0 K7 ["_selectionInfo"]
       21 NAMECALL                         R3 R3 K8 ["beginDrag"]
       23 CALL                             R3 3 0
       24 GETTABLEKS                       R3 R0 K4 ["_implementation"]
       26 GETIMPORT                        R5 K11 [CFrame.new]
       28 GETTABLEKS                       R7 R0 K12 ["_axis"]
       30 MUL                              R6 R7 R2
       31 CALL                             R5 1 -1
       32 NAMECALL                         R3 R3 K13 ["updateDrag"]
       34 CALL                             R3 -1 0
       35 GETTABLEKS                       R3 R0 K4 ["_implementation"]
       37 NAMECALL                         R3 R3 K14 ["endDrag"]
       39 CALL                             R3 1 0
       40 GETTABLEKS                       R3 R0 K15 ["_schema"]
       42 GETTABLEKS                       R3 R3 K16 ["addUndoWaypoint"]
       44 GETTABLEKS                       R4 R0 K17 ["_draggerContext"]
       46 LOADK                            R5 K18 ["Precise Axis Move Selection"]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       50 GETTABLEKS                       R3 R3 K2 ["_boundsChangedTracker"]
       52 NAMECALL                         R3 R3 K19 ["install"]
       54 CALL                             R3 1 0
       55 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       57 NAMECALL                         R3 R3 K20 ["_updateSelectionInfo"]
       59 CALL                             R3 1 0
       60 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       62 NAMECALL                         R3 R3 K21 ["_scheduleRender"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [next]
        2 GETTABLEKS                       R3 R0 K2 ["_handles"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K3 ["_draggerContext"]
        9 NAMECALL                         R2 R2 K4 ["getGridSize"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K5 ["_laggingHandleId"]
       14 JUMPIFNOT                        R3 ; [+11]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R5 R0 K6 ["_laggingRelativeToId"]
       18 GETTABLE                         R3 R4 R5
       19 GETTABLEKS                       R3 R3 K7 ["Opposite"]
       21 JUMPIFNOTEQ                      R3 R1 ; [+4]
       23 GETTABLEKS                       R1 R0 K6 ["_laggingRelativeToId"]
       25 MINUS                            R2 R2
       26 GETTABLEKS                       R3 R0 K5 ["_laggingHandleId"]
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETTABLEKS                       R3 R0 K6 ["_laggingRelativeToId"]
       31 JUMPIFEQ                         R3 R1 ; [+21]
       33 MOVE                             R5 R1
       34 NAMECALL                         R3 R0 K8 ["_getHandleIdClosestToCenterOfScreen"]
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R0 K5 ["_laggingHandleId"]
       39 SETTABLEKS                       R1 R0 K6 ["_laggingRelativeToId"]
       41 LOADN                            R3 0
       42 SETTABLEKS                       R3 R0 K9 ["_lastDelta"]
       44 GETTABLEKS                       R4 R0 K2 ["_handles"]
       46 GETTABLE                         R3 R4 R1
       47 GETTABLEKS                       R3 R3 K10 ["Axis"]
       49 GETTABLEKS                       R3 R3 K11 ["LookVector"]
       51 SETTABLEKS                       R3 R0 K12 ["_axis"]
       53 GETTABLEKS                       R6 R0 K9 ["_lastDelta"]
       55 ADD                              R5 R6 R2
       56 NAMECALL                         R3 R0 K13 ["_doMeasuredMove"]
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["useBoundingBoxMoveHandles"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETTABLEKS                       R2 R0 K2 ["_summonOffsetInBasis"]
        8 NOT                              R1 R2
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R2 R0 K3 ["_props"]
       12 GETTABLEKS                       R2 R2 K4 ["MustPositionAtPivot"]
       14 NOT                              R1 R2
       15 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldPartSnap"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLE                         R2 R3 R1
        3 LOADK                            R3 K1 [-∞]
        4 LOADK                            R4 K2 [∞]
        5 LOADNIL                          R5
        6 GETTABLEKS                       R6 R0 K3 ["_draggerContext"]
        8 NAMECALL                         R6 R6 K4 ["getCameraCFrame"]
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R10 R2 K5 ["Axis"]
       13 GETTABLEKS                       R10 R10 K6 ["LookVector"]
       15 NAMECALL                         R8 R6 K7 ["VectorToObjectSpace"]
       17 CALL                             R8 2 1
       18 GETIMPORT                        R9 K10 [Vector2.new]
       20 GETTABLEKS                       R10 R8 K11 ["X"]
       22 GETTABLEKS                       R11 R8 K12 ["Y"]
       24 CALL                             R9 2 1
       25 MOVE                             R7 R9
       26 GETTABLEKS                       R8 R0 K0 ["_handles"]
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 GETTABLEKS                       R13 R0 K13 ["_draggingHandleId"]
       33 JUMPIFEQ                         R11 R13 ; [+77]
       35 GETTABLEKS                       R13 R2 K14 ["Opposite"]
       37 JUMPIFEQ                         R11 R13 ; [+73]
       39 GETTABLEKS                       R16 R12 K5 ["Axis"]
       41 GETTABLEKS                       R16 R16 K6 ["LookVector"]
       43 NAMECALL                         R14 R6 K7 ["VectorToObjectSpace"]
       45 CALL                             R14 2 1
       46 GETIMPORT                        R15 K10 [Vector2.new]
       48 GETTABLEKS                       R16 R14 K11 ["X"]
       50 GETTABLEKS                       R17 R14 K12 ["Y"]
       52 CALL                             R15 2 1
       53 MOVE                             R13 R15
       54 GETTABLEKS                       R18 R12 K5 ["Axis"]
       56 GETTABLEKS                       R18 R18 K15 ["Position"]
       58 GETTABLEKS                       R20 R12 K5 ["Axis"]
       60 GETTABLEKS                       R20 R20 K6 ["LookVector"]
       62 MULK                             R19 R20 K16 [0.01]
       63 ADD                              R17 R18 R19
       64 NAMECALL                         R15 R6 K17 ["PointToObjectSpace"]
       66 CALL                             R15 2 1
       67 GETIMPORT                        R16 K10 [Vector2.new]
       69 GETTABLEKS                       R17 R15 K11 ["X"]
       71 GETTABLEKS                       R18 R15 K12 ["Y"]
       73 CALL                             R16 2 1
       74 MOVE                             R14 R16
       75 GETTABLEKS                       R14 R14 K18 ["Magnitude"]
       77 GETTABLEKS                       R18 R13 K12 ["Y"]
       79 GETTABLEKS                       R19 R7 K11 ["X"]
       81 MUL                              R17 R18 R19
       82 GETTABLEKS                       R19 R13 K11 ["X"]
       84 GETTABLEKS                       R20 R7 K12 ["Y"]
       86 MUL                              R18 R19 R20
       87 SUB                              R16 R17 R18
       88 FASTCALL1                        MATH_ABS R16 ; [+2]
       89 GETIMPORT                        R15 K21 [math.abs]
       91 CALL                             R15 1 1
       92 SUB                              R17 R15 R3
       93 FASTCALL1                        MATH_ABS R17 ; [+2]
       94 GETIMPORT                        R16 K21 [math.abs]
       96 CALL                             R16 1 1
       97 LOADK                            R17 K22 [0.001]
       98 JUMPIFNOTLT                      R16 R17 ; [+7]
      100 JUMPIFNOTLT                      R14 R4 ; [+10]
      102 MOVE                             R3 R15
      103 MOVE                             R4 R14
      104 MOVE                             R5 R11
      105 JUMP                             ; [+5]
      106 JUMPIFNOTLT                      R3 R15 ; [+4]
      108 MOVE                             R3 R15
      109 MOVE                             R4 R14
      110 MOVE                             R5 R11
      111 FORGLOOP                         R8 2 ; [-81]
      113 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["_planeHandles"]
        5 GETTABLEKS                       R3 R0 K1 ["_draggingHandleId"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+4]
        9 NAMECALL                         R1 R0 K2 ["_calcPlaneDragViewportPosition"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETTABLEKS                       R2 R0 K3 ["_handles"]
       15 GETTABLEKS                       R3 R0 K4 ["_laggingRelativeToId"]
       17 GETTABLE                         R1 R2 R3
       18 GETTABLEKS                       R3 R0 K3 ["_handles"]
       20 GETTABLEKS                       R4 R0 K5 ["_laggingHandleId"]
       22 GETTABLE                         R2 R3 R4
       23 GETTABLEKS                       R4 R2 K6 ["Axis"]
       25 GETTABLEKS                       R6 R0 K7 ["_axis"]
       27 GETTABLEKS                       R7 R0 K8 ["_lastDelta"]
       29 MUL                              R5 R6 R7
       30 SUB                              R3 R4 R5
       31 GETTABLEKS                       R4 R0 K9 ["_draggerContext"]
       33 GETTABLEKS                       R6 R3 K10 ["Position"]
       35 NAMECALL                         R4 R4 K11 ["getHandleScale"]
       37 CALL                             R4 2 1
       38 GETTABLEKS                       R5 R1 K6 ["Axis"]
       40 GETTABLEKS                       R5 R5 K12 ["LookVector"]
       42 GETTABLEKS                       R6 R3 K12 ["LookVector"]
       44 GETTABLEKS                       R7 R1 K6 ["Axis"]
       46 GETTABLEKS                       R7 R7 K10 ["Position"]
       48 LOADNIL                          R8
       49 NAMECALL                         R9 R0 K13 ["_useBoundingBoxMoveHandles"]
       51 CALL                             R9 1 1
       52 JUMPIFNOT                        R9 ; [+12]
       53 LOADK                            R10 K14 [2.5]
       54 MUL                              R9 R10 R4
       55 GETTABLEKS                       R11 R2 K16 ["AxisOffset"]
       57 ORK                              R10 R11 K15 [0]
       58 ADD                              R8 R9 R10
       59 GETTABLEKS                       R11 R1 K16 ["AxisOffset"]
       61 ORK                              R10 R11 K15 [0]
       62 MUL                              R9 R5 R10
       63 SUB                              R7 R7 R9
       64 JUMP                             ; [+6]
       65 LOADK                            R10 K17 [3.5]
       66 GETTABLEKS                       R12 R2 K18 ["Outset"]
       68 ORK                              R11 R12 K15 [0]
       69 ADD                              R9 R10 R11
       70 MUL                              R8 R9 R4
       71 MUL                              R9 R6 R8
       72 ADD                              R10 R7 R9
       73 GETTABLEKS                       R14 R0 K8 ["_lastDelta"]
       75 MUL                              R13 R5 R14
       76 SUB                              R12 R7 R13
       77 ADD                              R11 R12 R9
       78 GETTABLEKS                       R12 R0 K8 ["_lastDelta"]
       80 LOADN                            R13 0
       81 JUMPIFNOTLT                      R12 R13 ; [+4]
       83 MOVE                             R12 R11
       84 MOVE                             R11 R10
       85 MOVE                             R10 R12
       86 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
       88 GETTABLEKS                       R14 R1 K6 ["Axis"]
       90 GETTABLEKS                       R14 R14 K10 ["Position"]
       92 NAMECALL                         R12 R12 K11 ["getHandleScale"]
       94 CALL                             R12 2 1
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K19 ["getHandleDimensionForScale"]
       98 MOVE                             R14 R12
       99 GETTABLEKS                       R15 R1 K18 ["Outset"]
      101 CALL                             R13 2 2
      102 GETUPVAL                         R15 2
      103 CALL                             R15 0 1
      104 JUMPIFNOT                        R15 ; [+7]
      105 GETTABLEKS                       R15 R0 K20 ["_draggingHandleFrac"]
      107 JUMPIFNOTEQKNIL                  R15 ; [+4]
      109 LOADK                            R15 K21 [0.5]
      110 SETTABLEKS                       R15 R0 K20 ["_draggingHandleFrac"]
      112 GETTABLEKS                       R16 R0 K20 ["_draggingHandleFrac"]
      114 LOADK                            R17 K22 [0.4]
      115 LOADN                            R18 1
      116 FASTCALL                         MATH_CLAMP ; [+2]
      117 GETIMPORT                        R15 K25 [math.clamp]
      119 CALL                             R15 3 1
      120 MUL                              R20 R15 R14
      121 ADD                              R19 R13 R20
      122 MUL                              R18 R5 R19
      123 ADD                              R17 R7 R18
      124 LOADK                            R19 K21 [0.5]
      125 MUL                              R18 R19 R9
      126 ADD                              R16 R17 R18
      127 GETTABLEKS                       R17 R0 K9 ["_draggerContext"]
      129 MOVE                             R19 R16
      130 NAMECALL                         R17 R17 K26 ["worldToViewportPoint"]
      132 CALL                             R17 2 2
      133 LOADNIL                          R19
      134 JUMPIFNOT                        R18 ; [+8]
      135 GETIMPORT                        R20 K29 [UDim2.fromOffset]
      137 GETTABLEKS                       R21 R17 K30 ["X"]
      139 GETTABLEKS                       R22 R17 K31 ["Y"]
      141 CALL                             R20 2 1
      142 MOVE                             R19 R20
      143 GETIMPORT                        R20 K34 [table.freeze]
      145 DUPTABLE                         R21 K42 [{"from", "to", "direction", "perpendicularDirection", "scale", "viewportPosition", "inBounds"}]
      146 SETTABLEKS                       R10 R21 K35 ["from"]
      148 SETTABLEKS                       R11 R21 K36 ["to"]
      150 SETTABLEKS                       R5 R21 K37 ["direction"]
      152 SETTABLEKS                       R6 R21 K38 ["perpendicularDirection"]
      154 SETTABLEKS                       R4 R21 K39 ["scale"]
      156 SETTABLEKS                       R19 R21 K40 ["viewportPosition"]
      158 SETTABLEKS                       R18 R21 K41 ["inBounds"]
      160 CALL                             R20 1 -1
      161 RETURN                           R20 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K1 ["_dragPlanePointEnd"]
        2 ORK                              R1 R2 K0 [{0, 5, 0}]
        3 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K3 ["worldToViewportPoint"]
        8 CALL                             R2 2 2
        9 LOADNIL                          R4
       10 JUMPIFNOT                        R3 ; [+15]
       11 GETIMPORT                        R5 K6 [UDim2.fromOffset]
       13 GETTABLEKS                       R6 R2 K7 ["X"]
       15 GETTABLEKS                       R7 R2 K8 ["Y"]
       17 CALL                             R5 2 1
       18 GETIMPORT                        R6 K10 [UDim2.new]
       20 LOADN                            R7 0
       21 LOADN                            R8 50
       22 LOADN                            R9 0
       23 LOADN                            R10 -20
       24 CALL                             R6 4 1
       25 ADD                              R4 R5 R6
       26 DUPTABLE                         R5 K12 [{"viewportPosition"}]
       27 SETTABLEKS                       R4 R5 K11 ["viewportPosition"]
       29 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["from"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["to"]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R0 K2 ["AddLine"]
       10 CALL                             R3 3 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["scale"]
       14 MULK                             R3 R4 K3 [0.3]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["_lastDelta"]
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K8 [math.abs]
       21 CALL                             R4 1 1
       22 MULK                             R5 R3 K9 [3]
       23 JUMPIFNOTLT                      R5 R4 ; [+40]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K10 ["perpendicularDirection"]
       28 MUL                              R4 R5 R3
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K11 ["direction"]
       32 MUL                              R5 R6 R3
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K5 ["_lastDelta"]
       36 LOADN                            R7 0
       37 JUMPIFNOTLT                      R7 R6 ; [+14]
       39 MOVE                             R8 R1
       40 SUB                              R10 R1 R5
       41 ADD                              R9 R10 R4
       42 NAMECALL                         R6 R0 K2 ["AddLine"]
       44 CALL                             R6 3 0
       45 MOVE                             R8 R1
       46 SUB                              R10 R1 R5
       47 SUB                              R9 R10 R4
       48 NAMECALL                         R6 R0 K2 ["AddLine"]
       50 CALL                             R6 3 0
       51 RETURN                           R0 0
       52 MOVE                             R8 R2
       53 ADD                              R10 R2 R5
       54 ADD                              R9 R10 R4
       55 NAMECALL                         R6 R0 K2 ["AddLine"]
       57 CALL                             R6 3 0
       58 MOVE                             R8 R2
       59 ADD                              R10 R2 R5
       60 SUB                              R9 R10 R4
       61 NAMECALL                         R6 R0 K2 ["AddLine"]
       63 CALL                             R6 3 0
       64 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["AlwaysOnTop"] = True, ["Color3"], ["Render"]}]
        5 GETTABLEKS                       R5 R0 K6 ["_draggerContext"]
        7 NAMECALL                         R5 R5 K7 ["getChosenColor"]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K3 ["Color3"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R5 R4 K4 ["Render"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 LOADK                            R3 K1 ["HotkeyUsageHidden"]
        3 NAMECALL                         R1 R1 K2 ["getSetting"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+32]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["addGridSnap"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["addSummonHandles"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["addHelp"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["createElement"]
       29 GETUPVAL                         R3 2
       30 DUPTABLE                         R4 K9 [{"DraggerContext", "HotkeyList"}]
       31 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       33 SETTABLEKS                       R5 R4 K7 ["DraggerContext"]
       35 SETTABLEKS                       R1 R4 K8 ["HotkeyList"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 LOADNIL                          R1
       40 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_lastGlobalTransformForRender"]
        2 NAMECALL                         R2 R2 K1 ["ToOrientation"]
        4 CALL                             R2 1 -1
        5 FASTCALL                         VECTOR ; [+2]
        6 GETIMPORT                        R1 K4 [Vector3.new]
        8 CALL                             R1 -1 1
        9 GETTABLEKS                       R3 R1 K5 ["Magnitude"]
       11 LOADK                            R4 K6 [0.001]
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R3 R1 K0 ["Magnitude"]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
        4 LOADK                            R3 K2 [{1, 0, 0}]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R0 K3 ["_draggerContext"]
        8 NAMECALL                         R3 R3 K4 ["getCameraCFrame"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R3 K5 ["Position"]
       13 SUB                              R4 R5 R2
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R1 K6 ["Cross"]
       17 CALL                             R5 2 1
       18 GETTABLEKS                       R6 R5 K0 ["Magnitude"]
       20 LOADK                            R7 K7 [1E-05]
       21 JUMPIFNOTLT                      R6 R7 ; [+18]
       23 GETTABLEKS                       R8 R1 K8 ["X"]
       25 FASTCALL1                        MATH_ABS R8 ; [+2]
       26 GETIMPORT                        R7 K11 [math.abs]
       28 CALL                             R7 1 1
       29 LOADK                            R8 K12 [0.99]
       30 JUMPIFNOTLT                      R7 R8 ; [+3]
       32 LOADK                            R6 K2 [{1, 0, 0}]
       33 JUMP                             ; [+1]
       34 LOADK                            R6 K13 [{0, 1, 0}]
       35 MOVE                             R9 R6
       36 NAMECALL                         R7 R1 K6 ["Cross"]
       38 CALL                             R7 2 1
       39 MOVE                             R5 R7
       40 GETTABLEKS                       R6 R5 K14 ["Unit"]
       42 RETURN                           R6 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getCameraCFrame"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R2 K2 ["Position"]
        7 GETTABLEKS                       R5 R1 K2 ["Position"]
        9 SUB                              R3 R4 R5
       10 GETTABLEKS                       R3 R3 K3 ["Unit"]
       12 GETTABLEKS                       R5 R1 K4 ["XVector"]
       14 MOVE                             R7 R3
       15 NAMECALL                         R5 R5 K5 ["Dot"]
       17 CALL                             R5 2 1
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K8 [math.abs]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R6 R1 K9 ["YVector"]
       24 MOVE                             R8 R3
       25 NAMECALL                         R6 R6 K5 ["Dot"]
       27 CALL                             R6 2 1
       28 FASTCALL1                        MATH_ABS R6 ; [+2]
       29 GETIMPORT                        R5 K8 [math.abs]
       31 CALL                             R5 1 1
       32 JUMPIFNOTLT                      R4 R5 ; [+4]
       34 GETTABLEKS                       R4 R1 K4 ["XVector"]
       36 RETURN                           R4 1
       37 GETTABLEKS                       R4 R1 K9 ["YVector"]
       39 RETURN                           R4 1

PROTO_22:
        0 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R5 R5 K1 ["getGridSize"]
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
        7 NAMECALL                         R6 R6 K2 ["getMajorGridIncrement"]
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R7 K3 ["getHandleScale"]
       15 CALL                             R7 2 1
       16 LOADN                            R10 -10000
       17 LOADN                            R8 10000
       18 LOADN                            R9 1
       19 FORNPREP                         R8
       20 MUL                              R13 R5 R10
       21 MUL                              R12 R2 R13
       22 ADD                              R11 R1 R12
       23 MOD                              R13 R10 R6
       24 JUMPIFEQKN                       R13 K4 [0] ; [+2]
       26 LOADB                            R12 0 +1
       27 LOADB                            R12 1
       28 JUMPIFNOT                        R12 ; [+2]
       29 LOADK                            R14 K5 [0.15]
       30 JUMP                             ; [+1]
       31 LOADK                            R14 K6 [0.1]
       32 MUL                              R13 R14 R7
       33 MUL                              R17 R3 R13
       34 ADD                              R16 R11 R17
       35 MUL                              R18 R3 R13
       36 SUB                              R17 R11 R18
       37 NAMECALL                         R14 R4 K7 ["AddLine"]
       39 CALL                             R14 3 0
       40 FORNLOOP                         R8
       41 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 ADD                              R1 R2 R3
        3 GETUPVAL                         R2 2
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+79]
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K1 ["_lastDelta"]
        9 ORK                              R2 R3 K0 [0]
       10 LOADN                            R4 0
       11 MINUS                            R5 R2
       12 FASTCALL3                        MATH_MIN R4 R5 R1
       14 MOVE                             R6 R1
       15 GETIMPORT                        R3 K4 [math.min]
       17 CALL                             R3 3 1
       18 LOADN                            R5 0
       19 MINUS                            R6 R2
       20 FASTCALL3                        MATH_MAX R5 R6 R1
       22 MOVE                             R7 R1
       23 GETIMPORT                        R4 K6 [math.max]
       25 CALL                             R4 3 1
       26 GETUPVAL                         R8 4
       27 GETUPVAL                         R10 5
       28 MULK                             R9 R10 K7 [-10000]
       29 ADD                              R7 R8 R9
       30 GETUPVAL                         R9 4
       31 GETUPVAL                         R11 5
       32 MUL                              R10 R11 R3
       33 ADD                              R8 R9 R10
       34 NAMECALL                         R5 R0 K8 ["AddLine"]
       36 CALL                             R5 3 0
       37 GETUPVAL                         R8 4
       38 GETUPVAL                         R10 5
       39 MUL                              R9 R10 R4
       40 ADD                              R7 R8 R9
       41 GETUPVAL                         R9 4
       42 GETUPVAL                         R11 5
       43 MULK                             R10 R11 K9 [10000]
       44 ADD                              R8 R9 R10
       45 NAMECALL                         R5 R0 K8 ["AddLine"]
       47 CALL                             R5 3 0
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K10 ["_draggerContext"]
       51 NAMECALL                         R5 R5 K11 ["shouldGridSnap"]
       53 CALL                             R5 1 1
       54 JUMPIFNOT                        R5 ; [+49]
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R5 R5 K10 ["_draggerContext"]
       58 NAMECALL                         R5 R5 K12 ["getDraggerShowAxisTicks"]
       60 CALL                             R5 1 1
       61 JUMPIFNOT                        R5 ; [+42]
       62 GETUPVAL                         R6 4
       63 GETUPVAL                         R8 5
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K1 ["_lastDelta"]
       67 MUL                              R7 R8 R9
       68 SUB                              R5 R6 R7
       69 GETUPVAL                         R6 3
       70 GETUPVAL                         R8 6
       71 GETTABLEKS                       R8 R8 K13 ["Axis"]
       73 NAMECALL                         R6 R6 K14 ["_getMostPerpendicular"]
       75 CALL                             R6 2 1
       76 GETUPVAL                         R7 3
       77 MOVE                             R9 R5
       78 GETUPVAL                         R10 5
       79 MOVE                             R11 R6
       80 MOVE                             R12 R0
       81 NAMECALL                         R7 R7 K15 ["_drawTicks"]
       83 CALL                             R7 5 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R5 4
       86 GETUPVAL                         R7 5
       87 MUL                              R6 R7 R1
       88 ADD                              R4 R5 R6
       89 GETUPVAL                         R6 4
       90 GETUPVAL                         R8 5
       91 MULK                             R7 R8 K9 [10000]
       92 ADD                              R5 R6 R7
       93 NAMECALL                         R2 R0 K8 ["AddLine"]
       95 CALL                             R2 3 0
       96 GETUPVAL                         R5 4
       97 GETUPVAL                         R7 5
       98 MULK                             R6 R7 K9 [10000]
       99 SUB                              R4 R5 R6
      100 GETUPVAL                         R5 4
      101 NAMECALL                         R2 R0 K8 ["AddLine"]
      103 CALL                             R2 3 0
      104 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLE                         R2 R3 R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["getHandleDimensionForScale"]
        6 GETTABLEKS                       R4 R2 K2 ["Scale"]
        8 GETTABLEKS                       R5 R2 K3 ["Outset"]
       10 CALL                             R3 2 2
       11 GETTABLEKS                       R5 R2 K4 ["Axis"]
       13 GETTABLEKS                       R5 R5 K5 ["Position"]
       15 GETTABLEKS                       R6 R2 K4 ["Axis"]
       17 GETTABLEKS                       R6 R6 K6 ["LookVector"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K7 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K11 [{"AlwaysOnTop", "Color3", "Render"}]
       24 GETUPVAL                         R11 3
       25 CALL                             R11 0 1
       26 JUMPIFNOT                        R11 ; [+2]
       27 LOADB                            R10 1
       28 JUMP                             ; [+1]
       29 LOADB                            R10 0
       30 SETTABLEKS                       R10 R9 K8 ["AlwaysOnTop"]
       32 GETTABLEKS                       R10 R0 K12 ["_draggerContext"]
       34 NAMECALL                         R10 R10 K13 ["getGridColor"]
       36 CALL                             R10 1 1
       37 SETTABLEKS                       R10 R9 K9 ["Color3"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R10 R9 K10 ["Render"]
       49 CALL                             R7 2 -1
       50 RETURN                           R7 -1

PROTO_25:
        0 LOADN                            R2 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["_localPlaneDelta"]
        4 GETTABLEKS                       R3 R3 K1 ["X"]
        6 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        8 GETIMPORT                        R1 K4 [math.min]
       10 CALL                             R1 2 1
       11 LOADN                            R3 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["_localPlaneDelta"]
       15 GETTABLEKS                       R4 R4 K1 ["X"]
       17 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       19 GETIMPORT                        R2 K6 [math.max]
       21 CALL                             R2 2 1
       22 LOADN                            R4 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["_localPlaneDelta"]
       26 GETTABLEKS                       R5 R5 K7 ["Y"]
       28 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       30 GETIMPORT                        R3 K4 [math.min]
       32 CALL                             R3 2 1
       33 LOADN                            R5 0
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K0 ["_localPlaneDelta"]
       37 GETTABLEKS                       R6 R6 K7 ["Y"]
       39 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       41 GETIMPORT                        R4 K6 [math.max]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R8 1
       45 GETUPVAL                         R10 2
       46 MULK                             R9 R10 K8 [-10000]
       47 ADD                              R7 R8 R9
       48 GETUPVAL                         R9 1
       49 GETUPVAL                         R11 2
       50 MUL                              R10 R11 R1
       51 ADD                              R8 R9 R10
       52 NAMECALL                         R5 R0 K9 ["AddLine"]
       54 CALL                             R5 3 0
       55 GETUPVAL                         R8 1
       56 GETUPVAL                         R10 2
       57 MUL                              R9 R10 R2
       58 ADD                              R7 R8 R9
       59 GETUPVAL                         R9 1
       60 GETUPVAL                         R11 2
       61 MULK                             R10 R11 K10 [10000]
       62 ADD                              R8 R9 R10
       63 NAMECALL                         R5 R0 K9 ["AddLine"]
       65 CALL                             R5 3 0
       66 GETUPVAL                         R8 1
       67 GETUPVAL                         R10 3
       68 MULK                             R9 R10 K8 [-10000]
       69 ADD                              R7 R8 R9
       70 GETUPVAL                         R9 1
       71 GETUPVAL                         R11 3
       72 MUL                              R10 R11 R3
       73 ADD                              R8 R9 R10
       74 NAMECALL                         R5 R0 K9 ["AddLine"]
       76 CALL                             R5 3 0
       77 GETUPVAL                         R8 1
       78 GETUPVAL                         R10 3
       79 MUL                              R9 R10 R4
       80 ADD                              R7 R8 R9
       81 GETUPVAL                         R9 1
       82 GETUPVAL                         R11 3
       83 MULK                             R10 R11 K10 [10000]
       84 ADD                              R8 R9 R10
       85 NAMECALL                         R5 R0 K9 ["AddLine"]
       87 CALL                             R5 3 0
       88 LOADK                            R5 K11 [0.75]
       89 SETTABLEKS                       R5 R0 K12 ["Transparency"]
       91 GETUPVAL                         R9 1
       92 GETUPVAL                         R11 2
       93 MUL                              R10 R11 R1
       94 ADD                              R8 R9 R10
       95 GETUPVAL                         R10 3
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K0 ["_localPlaneDelta"]
       99 GETTABLEKS                       R11 R11 K7 ["Y"]
      101 MUL                              R9 R10 R11
      102 ADD                              R7 R8 R9
      103 GETUPVAL                         R10 1
      104 GETUPVAL                         R12 2
      105 MUL                              R11 R12 R2
      106 ADD                              R9 R10 R11
      107 GETUPVAL                         R11 3
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R12 R12 K0 ["_localPlaneDelta"]
      111 GETTABLEKS                       R12 R12 K7 ["Y"]
      113 MUL                              R10 R11 R12
      114 ADD                              R8 R9 R10
      115 NAMECALL                         R5 R0 K9 ["AddLine"]
      117 CALL                             R5 3 0
      118 GETUPVAL                         R9 1
      119 GETUPVAL                         R11 3
      120 MUL                              R10 R11 R3
      121 ADD                              R8 R9 R10
      122 GETUPVAL                         R10 2
      123 GETUPVAL                         R11 0
      124 GETTABLEKS                       R11 R11 K0 ["_localPlaneDelta"]
      126 GETTABLEKS                       R11 R11 K1 ["X"]
      128 MUL                              R9 R10 R11
      129 ADD                              R7 R8 R9
      130 GETUPVAL                         R10 1
      131 GETUPVAL                         R12 3
      132 MUL                              R11 R12 R4
      133 ADD                              R9 R10 R11
      134 GETUPVAL                         R11 2
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R12 R12 K0 ["_localPlaneDelta"]
      138 GETTABLEKS                       R12 R12 K1 ["X"]
      140 MUL                              R10 R11 R12
      141 ADD                              R8 R9 R10
      142 NAMECALL                         R5 R0 K9 ["AddLine"]
      144 CALL                             R5 3 0
      145 LOADN                            R5 0
      146 SETTABLEKS                       R5 R0 K12 ["Transparency"]
      148 GETUPVAL                         R5 0
      149 GETTABLEKS                       R5 R5 K13 ["_draggerContext"]
      151 NAMECALL                         R5 R5 K14 ["shouldGridSnap"]
      153 CALL                             R5 1 1
      154 JUMPIFNOT                        R5 ; [+23]
      155 GETUPVAL                         R5 0
      156 GETTABLEKS                       R5 R5 K13 ["_draggerContext"]
      158 NAMECALL                         R5 R5 K15 ["getDraggerShowAxisTicks"]
      160 CALL                             R5 1 1
      161 JUMPIFNOT                        R5 ; [+16]
      162 GETUPVAL                         R5 0
      163 GETUPVAL                         R7 1
      164 GETUPVAL                         R8 2
      165 GETUPVAL                         R9 3
      166 MOVE                             R10 R0
      167 NAMECALL                         R5 R5 K16 ["_drawTicks"]
      169 CALL                             R5 5 0
      170 GETUPVAL                         R5 0
      171 GETUPVAL                         R7 1
      172 GETUPVAL                         R8 3
      173 GETUPVAL                         R9 2
      174 MOVE                             R10 R0
      175 NAMECALL                         R5 R5 K16 ["_drawTicks"]
      177 CALL                             R5 5 0
      178 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_dragPlaneCf"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Plane drag guide requires an active drag plane"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["Position"]
       11 GETTABLEKS                       R4 R2 K5 ["XVector"]
       13 GETTABLEKS                       R5 R2 K6 ["YVector"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K7 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K12 [{["AlwaysOnTop"] = True, ["Color3"], ["Render"]}]
       20 GETTABLEKS                       R9 R0 K13 ["_draggerContext"]
       22 NAMECALL                         R9 R9 K14 ["getGridColor"]
       24 CALL                             R9 1 1
       25 SETTABLEKS                       R9 R8 K10 ["Color3"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 SETTABLEKS                       R9 R8 K11 ["Render"]
       34 CALL                             R6 2 -1
       35 RETURN                           R6 -1

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 NAMECALL                         R2 R0 K1 ["_getLaggingHandleChoice"]
        6 CALL                             R2 1 3
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K11 [{["Axis"], ["AxisOffset"], ["Outset"], ["Color"], ["Scale"], ["AlwaysOnTop"] = True, ["Thin"] = True}]
       12 SETTABLEKS                       R2 R7 K3 ["Axis"]
       14 JUMPIF                           R1 ; [+3]
       15 GETTABLEKS                       R8 R4 K4 ["AxisOffset"]
       17 JUMPIF                           R8 ; [+1]
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R7 K4 ["AxisOffset"]
       21 GETTABLEKS                       R8 R4 K5 ["Outset"]
       23 SETTABLEKS                       R8 R7 K5 ["Outset"]
       25 GETUPVAL                         R9 2
       26 CALL                             R9 0 1
       27 JUMPIFNOT                        R9 ; [+3]
       28 GETTABLEKS                       R8 R4 K6 ["Color"]
       30 JUMP                             ; [+6]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K12 ["makeDimmed"]
       34 GETTABLEKS                       R9 R4 K6 ["Color"]
       36 CALL                             R8 1 1
       37 SETTABLEKS                       R8 R7 K6 ["Color"]
       39 SETTABLEKS                       R3 R7 K7 ["Scale"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_28:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETTABLEKS                       R2 R0 K0 ["_laggingHandleId"]
        6 JUMPIF                           R2 ; [+5]
        7 GETTABLEKS                       R3 R0 K1 ["_planeHandles"]
        9 GETTABLEKS                       R4 R0 K2 ["_draggingHandleId"]
       11 GETTABLE                         R2 R3 R4
       12 MOVE                             R1 R2
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
       16 JUMPIFNOT                        R1 ; [+77]
       17 NAMECALL                         R2 R0 K3 ["_getMoveMeasurementArrowMetrics"]
       19 CALL                             R2 1 1
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 0
       23 CALL                             R5 0 1
       24 JUMPIFNOT                        R5 ; [+39]
       25 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       27 NAMECALL                         R6 R5 K5 ["shouldGridSnap"]
       29 CALL                             R6 1 1
       30 JUMPIFNOT                        R6 ; [+5]
       31 NAMECALL                         R6 R5 K6 ["getGridSize"]
       33 CALL                             R6 1 1
       34 MOVE                             R3 R6
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 GETTABLEKS                       R7 R0 K7 ["_handles"]
       39 GETTABLEKS                       R8 R0 K2 ["_draggingHandleId"]
       41 GETTABLE                         R6 R7 R8
       42 JUMPIFNOT                        R6 ; [+8]
       43 GETTABLEKS                       R7 R0 K7 ["_handles"]
       45 GETTABLEKS                       R8 R0 K2 ["_draggingHandleId"]
       47 GETTABLE                         R6 R7 R8
       48 GETTABLEKS                       R4 R6 K8 ["AxisId"]
       50 JUMP                             ; [+13]
       51 GETTABLEKS                       R7 R0 K1 ["_planeHandles"]
       53 GETTABLEKS                       R8 R0 K2 ["_draggingHandleId"]
       55 GETTABLE                         R6 R7 R8
       56 JUMPIFNOT                        R6 ; [+7]
       57 GETTABLEKS                       R7 R0 K1 ["_planeHandles"]
       59 GETTABLEKS                       R8 R0 K2 ["_draggingHandleId"]
       61 GETTABLE                         R6 R7 R8
       62 GETTABLEKS                       R4 R6 K9 ["PlaneAxesIds"]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K10 ["createFragment"]
       67 DUPTABLE                         R6 K12 [{"MoveMeasurementValue"}]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R7 R7 K13 ["createElement"]
       71 GETUPVAL                         R8 2
       72 DUPTABLE                         R9 K17 [{"DraggerContext", "Position", "Value"}]
       73 GETTABLEKS                       R10 R0 K4 ["_draggerContext"]
       75 SETTABLEKS                       R10 R9 K14 ["DraggerContext"]
       77 GETTABLEKS                       R10 R2 K18 ["viewportPosition"]
       79 SETTABLEKS                       R10 R9 K15 ["Position"]
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R11 R0 K19 ["_lastDelta"]
       84 MOVE                             R12 R3
       85 MOVE                             R13 R4
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K16 ["Value"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K11 ["MoveMeasurementValue"]
       92 CALL                             R5 1 -1
       93 RETURN                           R5 -1
       94 LOADNIL                          R2
       95 RETURN                           R2 1

PROTO_29:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R5 R5 K1 ["shouldShowPreciseInput"]
        7 CALL                             R5 1 1
        8 JUMPIFNOT                        R5 ; [+37]
        9 NAMECALL                         R5 R0 K2 ["_lastTransformWasLinear"]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+33]
       13 GETTABLEKS                       R5 R0 K3 ["_laggingHandleId"]
       15 JUMPIF                           R5 ; [+8]
       16 MOVE                             R7 R1
       17 NAMECALL                         R5 R0 K4 ["_getHandleIdClosestToCenterOfScreen"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R0 K3 ["_laggingHandleId"]
       22 SETTABLEKS                       R1 R0 K5 ["_laggingRelativeToId"]
       24 GETTABLEKS                       R5 R0 K6 ["_handles"]
       26 GETTABLEKS                       R6 R0 K3 ["_laggingHandleId"]
       28 GETTABLE                         R4 R5 R6
       29 GETTABLEKS                       R5 R0 K7 ["_lastGlobalTransformForRender"]
       31 NAMECALL                         R5 R5 K8 ["Inverse"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R4 K9 ["Axis"]
       36 MUL                              R2 R5 R6
       37 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       39 GETTABLEKS                       R7 R2 K10 ["Position"]
       41 NAMECALL                         R5 R5 K11 ["getHandleScale"]
       43 CALL                             R5 2 1
       44 MOVE                             R3 R5
       45 RETURN                           R2 3
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R0 K3 ["_laggingHandleId"]
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 RETURN                           R5 3

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_handles"]
        2 GETTABLEKS                       R3 R0 K1 ["_laggingHandleId"]
        4 GETTABLE                         R1 R2 R3
        5 GETIMPORT                        R3 K4 [CFrame.new]
        7 GETTABLEKS                       R6 R0 K5 ["_axis"]
        9 MINUS                            R5 R6
       10 GETTABLEKS                       R6 R0 K6 ["_lastDelta"]
       12 MUL                              R4 R5 R6
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R1 K7 ["Axis"]
       16 MUL                              R2 R3 R4
       17 GETTABLEKS                       R3 R0 K8 ["_draggerContext"]
       19 GETTABLEKS                       R5 R2 K9 ["Position"]
       21 NAMECALL                         R3 R3 K10 ["getHandleScale"]
       23 CALL                             R3 2 1
       24 MOVE                             R4 R2
       25 MOVE                             R5 R3
       26 MOVE                             R6 R1
       27 RETURN                           R4 3

PROTO_31:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R4 R0 K2 ["_handles"]
       14 GETTABLE                         R3 R4 R1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K15 [{["Axis"], ["AxisOffset"], ["Outset"], ["Color"], ["Scale"], ["Tail"], ["TailScale"], ["AlwaysOnTop"] = True, ["Hovered"] = False}]
       20 GETTABLEKS                       R7 R3 K4 ["Axis"]
       22 SETTABLEKS                       R7 R6 K4 ["Axis"]
       24 GETTABLEKS                       R7 R3 K5 ["AxisOffset"]
       26 SETTABLEKS                       R7 R6 K5 ["AxisOffset"]
       28 GETTABLEKS                       R7 R3 K6 ["Outset"]
       30 SETTABLEKS                       R7 R6 K6 ["Outset"]
       32 GETUPVAL                         R8 0
       33 CALL                             R8 0 1
       34 JUMPIFNOT                        R8 ; [+3]
       35 GETTABLEKS                       R7 R3 K16 ["HighlightColor"]
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R7 R3 K7 ["Color"]
       40 SETTABLEKS                       R7 R6 K7 ["Color"]
       42 GETTABLEKS                       R7 R3 K8 ["Scale"]
       44 SETTABLEKS                       R7 R6 K8 ["Scale"]
       46 GETTABLEKS                       R7 R0 K17 ["_lastDelta"]
       48 SETTABLEKS                       R7 R6 K9 ["Tail"]
       50 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       52 GETTABLEKS                       R10 R3 K4 ["Axis"]
       54 GETTABLEKS                       R10 R10 K18 ["Position"]
       56 GETTABLEKS                       R12 R0 K19 ["_axis"]
       58 GETTABLEKS                       R13 R0 K17 ["_lastDelta"]
       60 MUL                              R11 R12 R13
       61 SUB                              R9 R10 R11
       62 NAMECALL                         R7 R7 K20 ["getHandleScale"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K10 ["TailScale"]
       67 CALL                             R4 2 1
       68 SETTABLE                         R4 R2 R1
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K21 ["createFragment"]
       72 MOVE                             R5 R2
       73 CALL                             R4 1 -1
       74 RETURN                           R4 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R0 K2 ["_updateLaggingHandleChoice"]
       13 CALL                             R2 2 0
       14 NAMECALL                         R2 R0 K3 ["_lastTransformWasLinear"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["createFragment"]
       20 DUPTABLE                         R4 K11 [{"ChosenAxisDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
       21 JUMPIFNOT                        R2 ; [+5]
       22 MOVE                             R7 R1
       23 NAMECALL                         R5 R0 K12 ["_renderChosenAxisGuide"]
       25 CALL                             R5 2 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K5 ["ChosenAxisDisplay"]
       30 NAMECALL                         R6 R0 K13 ["_hasSoftSnap"]
       32 CALL                             R6 1 1
       33 JUMPIFNOT                        R6 ; [+7]
       34 GETTABLEKS                       R5 R0 K14 ["_softSnapper"]
       36 LOADB                            R7 1
       37 NAMECALL                         R5 R5 K15 ["render"]
       39 CALL                             R5 2 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K6 ["SoftSnaps"]
       44 GETTABLEKS                       R5 R0 K16 ["_implementation"]
       46 GETTABLEKS                       R7 R0 K17 ["_lastGlobalTransformForRender"]
       48 NAMECALL                         R5 R5 K15 ["render"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K7 ["ImplementationRendered"]
       53 NAMECALL                         R5 R0 K18 ["_renderHotkeyHelp"]
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K8 ["HotkeyHelp"]
       58 JUMPIFNOT                        R2 ; [+4]
       59 NAMECALL                         R5 R0 K19 ["_renderActiveMoveMeasurement"]
       61 CALL                             R5 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K9 ["MoveMeasurement"]
       66 MOVE                             R7 R1
       67 NAMECALL                         R5 R0 K20 ["_renderDraggingAxisHandles"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K10 ["Handles"]
       72 CALL                             R3 1 -1
       73 RETURN                           R3 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R4 R0 K2 ["_planeHandles"]
       14 GETTABLE                         R3 R4 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 GETTABLEKS                       R6 R0 K3 ["_dragPlaneCf"]
       19 JUMPIFNOT                        R6 ; [+16]
       20 GETTABLEKS                       R6 R0 K4 ["_dragPlanePointStart"]
       22 JUMPIFNOT                        R6 ; [+13]
       23 GETTABLEKS                       R6 R0 K5 ["_dragPlanePointEnd"]
       25 JUMPIFNOT                        R6 ; [+10]
       26 GETTABLEKS                       R6 R0 K3 ["_dragPlaneCf"]
       28 GETTABLEKS                       R4 R6 K6 ["Position"]
       30 GETTABLEKS                       R7 R0 K5 ["_dragPlanePointEnd"]
       32 GETTABLEKS                       R8 R0 K4 ["_dragPlanePointStart"]
       34 SUB                              R6 R7 R8
       35 ADD                              R5 R4 R6
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K7 ["createElement"]
       39 GETUPVAL                         R7 2
       40 DUPTABLE                         R8 K24 [{["Axis"], ["AxisOffset"], ["Outset"], ["Color"], ["Scale"], ["TailStart"], ["TailEnd"], ["TailScale"], ["PlaneCf"], ["PlaneColors"], ["LocalPlaneDelta"], ["AlwaysOnTop"] = True, ["Hovered"] = False, ["IsView"]}]
       41 GETTABLEKS                       R11 R3 K8 ["Axis"]
       43 GETTABLEKS                       R12 R3 K23 ["IsView"]
       45 NAMECALL                         R9 R0 K25 ["_orient"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K8 ["Axis"]
       50 GETTABLEKS                       R9 R3 K9 ["AxisOffset"]
       52 SETTABLEKS                       R9 R8 K9 ["AxisOffset"]
       54 GETTABLEKS                       R9 R3 K10 ["Outset"]
       56 SETTABLEKS                       R9 R8 K10 ["Outset"]
       58 GETUPVAL                         R10 0
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+3]
       61 GETTABLEKS                       R9 R3 K26 ["HighlightColor"]
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R9 R3 K11 ["Color"]
       66 SETTABLEKS                       R9 R8 K11 ["Color"]
       68 GETTABLEKS                       R9 R3 K12 ["Scale"]
       70 SETTABLEKS                       R9 R8 K12 ["Scale"]
       72 SETTABLEKS                       R4 R8 K13 ["TailStart"]
       74 SETTABLEKS                       R5 R8 K14 ["TailEnd"]
       76 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
       78 MOVE                             R11 R4
       79 NAMECALL                         R9 R9 K27 ["getHandleScale"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K15 ["TailScale"]
       84 GETTABLEKS                       R9 R0 K3 ["_dragPlaneCf"]
       86 SETTABLEKS                       R9 R8 K16 ["PlaneCf"]
       88 GETTABLEKS                       R9 R3 K17 ["PlaneColors"]
       90 SETTABLEKS                       R9 R8 K17 ["PlaneColors"]
       92 GETTABLEKS                       R9 R0 K28 ["_localPlaneDelta"]
       94 SETTABLEKS                       R9 R8 K18 ["LocalPlaneDelta"]
       96 GETTABLEKS                       R9 R3 K23 ["IsView"]
       98 SETTABLEKS                       R9 R8 K23 ["IsView"]
      100 CALL                             R6 2 1
      101 SETTABLE                         R6 R2 R1
      102 GETUPVAL                         R6 1
      103 GETTABLEKS                       R6 R6 K29 ["createFragment"]
      105 MOVE                             R7 R2
      106 CALL                             R6 1 -1
      107 RETURN                           R6 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 NAMECALL                         R2 R0 K2 ["_lastTransformWasLinear"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["createFragment"]
       16 DUPTABLE                         R4 K10 [{"ChosenPlaneDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
       17 JUMPIFNOT                        R2 ; [+5]
       18 MOVE                             R7 R1
       19 NAMECALL                         R5 R0 K11 ["_renderChosenPlaneGuide"]
       21 CALL                             R5 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K4 ["ChosenPlaneDisplay"]
       26 NAMECALL                         R6 R0 K12 ["_hasSoftSnap"]
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+7]
       30 GETTABLEKS                       R5 R0 K13 ["_softSnapper"]
       32 LOADB                            R7 1
       33 NAMECALL                         R5 R5 K14 ["render"]
       35 CALL                             R5 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K5 ["SoftSnaps"]
       40 GETTABLEKS                       R5 R0 K15 ["_implementation"]
       42 GETTABLEKS                       R7 R0 K16 ["_lastGlobalTransformForRender"]
       44 NAMECALL                         R5 R5 K14 ["render"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K6 ["ImplementationRendered"]
       49 NAMECALL                         R5 R0 K17 ["_renderHotkeyHelp"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K7 ["HotkeyHelp"]
       54 JUMPIFNOT                        R2 ; [+4]
       55 NAMECALL                         R5 R0 K18 ["_renderActiveMoveMeasurement"]
       57 CALL                             R5 1 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R5
       60 SETTABLEKS                       R5 R4 K8 ["MoveMeasurement"]
       62 MOVE                             R7 R1
       63 NAMECALL                         R5 R0 K19 ["_renderDraggingPlaneHandles"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K9 ["Handles"]
       68 CALL                             R3 1 -1
       69 RETURN                           R3 -1

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["getCameraCFrame"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["Position"]
        7 GETTABLEKS                       R4 R1 K3 ["LookVector"]
        9 GETTABLEKS                       R6 R1 K2 ["Position"]
       11 SUB                              R5 R6 R3
       12 LOADNIL                          R6
       13 JUMPIF                           R2 ; [+9]
       14 GETTABLEKS                       R7 R4 K4 ["Unit"]
       16 GETTABLEKS                       R9 R5 K4 ["Unit"]
       18 NAMECALL                         R7 R7 K5 ["Dot"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 JUMP                             ; [+9]
       23 GETTABLEKS                       R7 R4 K4 ["Unit"]
       25 GETTABLEKS                       R9 R5 K4 ["Unit"]
       27 NAMECALL                         R7 R7 K6 ["Cross"]
       29 CALL                             R7 2 1
       30 GETTABLEKS                       R6 R7 K7 ["Magnitude"]
       32 FASTCALL1                        MATH_ABS R6 ; [+3]
       33 MOVE                             R10 R6
       34 GETIMPORT                        R9 K12 [math.abs]
       36 CALL                             R9 1 1
       37 SUBK                             R8 R9 K9 [0.17364817766693]
       38 DIVK                             R7 R8 K8 [0.168371965658738]
       39 LOADN                            R10 0
       40 LOADN                            R11 1
       41 FASTCALL3                        MATH_CLAMP R7 R10 R11
       43 MOVE                             R9 R7
       44 GETIMPORT                        R8 K14 [math.clamp]
       46 CALL                             R8 3 1
       47 MOVE                             R7 R8
       48 RETURN                           R7 1

PROTO_36:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R4 R0 K0 ["_useBoundingBoxMoveHandles"]
        4 CALL                             R4 1 1
        5 NOT                              R3 R4
        6 GETTABLEKS                       R4 R0 K1 ["_handles"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 JUMPIFEQ                         R7 R1 ; [+2]
       13 LOADB                            R9 0 +1
       14 LOADB                            R9 1
       15 GETTABLEKS                       R10 R8 K2 ["Color"]
       17 GETUPVAL                         R11 0
       18 CALL                             R11 0 1
       19 JUMPIFNOT                        R11 ; [+4]
       20 JUMPIFNOT                        R9 ; [+10]
       21 GETTABLEKS                       R10 R8 K3 ["HighlightColor"]
       23 JUMP                             ; [+7]
       24 JUMPIF                           R9 ; [+6]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K4 ["makeDimmed"]
       28 MOVE                             R12 R10
       29 CALL                             R11 1 1
       30 MOVE                             R10 R11
       31 LOADNIL                          R11
       32 GETUPVAL                         R12 0
       33 CALL                             R12 0 1
       34 JUMPIFNOT                        R12 ; [+11]
       35 GETTABLEKS                       R12 R8 K5 ["Axis"]
       37 MOVE                             R15 R12
       38 LOADB                            R16 1
       39 NAMECALL                         R13 R0 K6 ["_getGrazingAngleFactor"]
       41 CALL                             R13 3 1
       42 MOVE                             R11 R13
       43 LOADN                            R13 0
       44 JUMPIFLE                         R11 R13 ; [+39]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K7 ["createElement"]
       49 GETUPVAL                         R13 3
       50 DUPTABLE                         R14 K15 [{["Axis"], ["AxisOffset"], ["Outset"], ["Color"], ["Scale"], ["AlwaysOnTop"] = True, ["Hovered"], ["Transparency"]}]
       51 GETTABLEKS                       R15 R8 K5 ["Axis"]
       53 SETTABLEKS                       R15 R14 K5 ["Axis"]
       55 JUMPIFNOT                        R3 ; [+3]
       56 GETTABLEKS                       R15 R8 K8 ["AxisOffset"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R15
       60 SETTABLEKS                       R15 R14 K8 ["AxisOffset"]
       62 GETTABLEKS                       R15 R8 K9 ["Outset"]
       64 SETTABLEKS                       R15 R14 K9 ["Outset"]
       66 SETTABLEKS                       R10 R14 K2 ["Color"]
       68 GETTABLEKS                       R15 R8 K10 ["Scale"]
       70 SETTABLEKS                       R15 R14 K10 ["Scale"]
       72 SETTABLEKS                       R9 R14 K13 ["Hovered"]
       74 GETUPVAL                         R16 0
       75 CALL                             R16 0 1
       76 JUMPIFNOT                        R16 ; [+2]
       77 SUBRK                            R15 K16 [1] R11
       78 JUMP                             ; [+1]
       79 LOADNIL                          R15
       80 SETTABLEKS                       R15 R14 K14 ["Transparency"]
       82 CALL                             R12 2 1
       83 SETTABLE                         R12 R2 R7
       84 FORGLOOP                         R4 2 ; [-74]
       86 GETUPVAL                         R4 0
       87 CALL                             R4 0 1
       88 JUMPIFNOT                        R4 ; [+55]
       89 GETTABLEKS                       R4 R0 K17 ["_planeHandles"]
       91 LOADNIL                          R5
       92 LOADNIL                          R6
       93 FORGPREP                         R4
       94 JUMPIFEQ                         R7 R1 ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 JUMPIFNOT                        R9 ; [+3]
       99 GETTABLEKS                       R10 R8 K3 ["HighlightColor"]
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R10 R8 K2 ["Color"]
      104 GETTABLEKS                       R13 R8 K5 ["Axis"]
      106 GETTABLEKS                       R14 R8 K18 ["IsView"]
      108 NAMECALL                         R11 R0 K19 ["_orient"]
      110 CALL                             R11 3 1
      111 MOVE                             R14 R11
      112 NAMECALL                         R12 R0 K6 ["_getGrazingAngleFactor"]
      114 CALL                             R12 2 1
      115 LOADN                            R13 0
      116 JUMPIFLE                         R12 R13 ; [+25]
      118 GETUPVAL                         R13 2
      119 GETTABLEKS                       R13 R13 K7 ["createElement"]
      121 GETUPVAL                         R14 4
      122 DUPTABLE                         R15 K21 [{["Axis"], ["AxisOffset"] = , ["Outset"] = , ["Color"], ["Scale"], ["AlwaysOnTop"] = True, ["Hovered"], ["IsView"], ["Transparency"]}]
      123 SETTABLEKS                       R11 R15 K5 ["Axis"]
      125 SETTABLEKS                       R10 R15 K2 ["Color"]
      127 GETTABLEKS                       R16 R8 K10 ["Scale"]
      129 SETTABLEKS                       R16 R15 K10 ["Scale"]
      131 SETTABLEKS                       R9 R15 K13 ["Hovered"]
      133 GETTABLEKS                       R16 R8 K18 ["IsView"]
      135 SETTABLEKS                       R16 R15 K18 ["IsView"]
      137 SUBRK                            R16 K16 [1] R12
      138 SETTABLEKS                       R16 R15 K14 ["Transparency"]
      140 CALL                             R13 2 1
      141 SETTABLE                         R13 R2 R7
      142 FORGLOOP                         R4 2 ; [-49]
      144 GETUPVAL                         R4 2
      145 GETTABLEKS                       R4 R4 K22 ["createFragment"]
      147 MOVE                             R5 R2
      148 CALL                             R4 1 -1
      149 RETURN                           R4 -1

PROTO_37:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["_doMeasuredMove"]
       10 CALL                             R2 2 0
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        4 RETURN                           R0 0

PROTO_39:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+12]
        4 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        6 NAMECALL                         R4 R3 K1 ["shouldGridSnap"]
        8 CALL                             R4 1 1
        9 JUMPIFNOT                        R4 ; [+5]
       10 NAMECALL                         R4 R3 K2 ["getGridSize"]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETTABLEKS                       R3 R0 K3 ["_props"]
       21 GETTABLEKS                       R3 R3 K4 ["AxisId"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["createElement"]
       28 GETUPVAL                         R5 2
       29 DUPTABLE                         R6 K11 [{"DraggerContext", "Position", "Value", "OnChanged", "OnHidden"}]
       30 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       32 SETTABLEKS                       R7 R6 K6 ["DraggerContext"]
       34 GETTABLEKS                       R7 R1 K12 ["viewportPosition"]
       36 SETTABLEKS                       R7 R6 K7 ["Position"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R8 R0 K13 ["_lastDelta"]
       41 MOVE                             R9 R2
       42 MOVE                             R10 R3
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K8 ["Value"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R7 R6 K9 ["OnChanged"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R7 R6 K10 ["OnHidden"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_40:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R1 0
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        8 JUMPIFNOT                        R1 ; [+15]
        9 NAMECALL                         R2 R0 K1 ["_getMoveMeasurementArrowMetrics"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["createFragment"]
       15 DUPTABLE                         R4 K4 [{"ValueInput"}]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R0 K5 ["_renderMeasurementInputBox"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K3 ["ValueInput"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createFragment"]
        3 DUPTABLE                         R3 K3 [{"MoveMeasurement", "Handles"}]
        4 NAMECALL                         R4 R0 K4 ["_renderPassiveMoveMeasurement"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K1 ["MoveMeasurement"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R0 K5 ["_renderHoveringHandles"]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K2 ["Handles"]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+50]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+42]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["createElement"]
       17 GETUPVAL                         R2 1
       18 DUPTABLE                         R3 K10 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
       19 GETTABLEKS                       R4 R0 K11 ["_boundingBox"]
       21 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       23 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       25 GETTABLEKS                       R4 R0 K11 ["_boundingBox"]
       27 GETTABLEKS                       R4 R4 K6 ["Size"]
       29 SETTABLEKS                       R4 R3 K6 ["Size"]
       31 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       33 LOADB                            R6 0
       34 NAMECALL                         R4 R4 K13 ["getSelectionBoxColor"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K7 ["Color"]
       39 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       41 NAMECALL                         R4 R4 K14 ["getHoverThickness"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K8 ["LineThickness"]
       46 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       48 NAMECALL                         R4 R4 K15 ["getGuiParent"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K9 ["Container"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1
       55 LOADNIL                          R1
       56 RETURN                           R1 1

PROTO_43:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+115]
        5 GETTABLEKS                       R2 R0 K1 ["_props"]
        7 GETTABLEKS                       R2 R2 K2 ["Summonable"]
        9 JUMPIFNOT                        R2 ; [+110]
       10 NEWTABLE                         R2 4 0
       12 GETTABLEKS                       R3 R0 K3 ["_summonOffsetInBasis"]
       14 JUMPIFNOT                        R3 ; [+30]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K10 [{["DraggerContext"], ["CFrame"], ["Dragging"], ["Hovered"] = False}]
       20 GETTABLEKS                       R6 R0 K11 ["_draggerContext"]
       22 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       24 GETTABLEKS                       R7 R0 K12 ["_boundingBox"]
       26 GETTABLEKS                       R7 R7 K6 ["CFrame"]
       28 NAMECALL                         R8 R0 K13 ["_getBasisOffset"]
       30 CALL                             R8 1 1
       31 MUL                              R6 R7 R8
       32 SETTABLEKS                       R6 R5 K6 ["CFrame"]
       34 GETTABLEKS                       R7 R0 K14 ["_draggingHandleId"]
       36 JUMPIFNOTEQKNIL                  R7 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K7 ["Dragging"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R2 K15 ["SummonSnap"]
       45 GETTABLEKS                       R3 R0 K14 ["_draggingHandleId"]
       47 JUMPIF                           R3 ; [+66]
       48 GETTABLEKS                       R3 R0 K3 ["_summonOffsetInBasis"]
       50 JUMPIFNOT                        R3 ; [+13]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K4 ["createElement"]
       54 GETUPVAL                         R4 2
       55 DUPTABLE                         R5 K16 [{"DraggerContext"}]
       56 GETTABLEKS                       R6 R0 K11 ["_draggerContext"]
       58 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       60 CALL                             R3 2 1
       61 SETTABLEKS                       R3 R2 K17 ["SummonHandlesHider"]
       63 JUMP                             ; [+50]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K18 ["hasSeenEnough"]
       67 GETTABLEKS                       R4 R0 K11 ["_draggerContext"]
       69 CALL                             R3 1 1
       70 JUMPIF                           R3 ; [+43]
       71 GETTABLEKS                       R4 R0 K12 ["_boundingBox"]
       73 GETTABLEKS                       R4 R4 K6 ["CFrame"]
       75 GETTABLEKS                       R5 R0 K19 ["_basisOffset"]
       77 MUL                              R3 R4 R5
       78 GETTABLEKS                       R3 R3 K20 ["Position"]
       80 GETTABLEKS                       R4 R0 K11 ["_draggerContext"]
       82 MOVE                             R6 R3
       83 NAMECALL                         R4 R4 K21 ["worldToViewportPoint"]
       85 CALL                             R4 2 2
       86 GETTABLEKS                       R6 R4 K22 ["Z"]
       88 LOADN                            R7 0
       89 JUMPIFNOTLT                      R7 R6 ; [+24]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K4 ["createElement"]
       94 GETUPVAL                         R7 3
       95 DUPTABLE                         R8 K24 [{"Position", "InView", "DraggerContext"}]
       96 GETIMPORT                        R9 K27 [Vector2.new]
       98 GETTABLEKS                       R10 R4 K28 ["X"]
      100 GETTABLEKS                       R11 R4 K29 ["Y"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K20 ["Position"]
      105 SETTABLEKS                       R5 R8 K23 ["InView"]
      107 GETTABLEKS                       R9 R0 K11 ["_draggerContext"]
      109 SETTABLEKS                       R9 R8 K5 ["DraggerContext"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R2 K30 ["SummonHandlesNote"]
      114 GETUPVAL                         R3 0
      115 GETTABLEKS                       R3 R3 K31 ["createFragment"]
      117 MOVE                             R4 R2
      118 CALL                             R3 1 -1
      119 RETURN                           R3 -1
      120 LOADNIL                          R2
      121 RETURN                           R2 1

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETTABLEKS                       R4 R0 K2 ["_planeHandles"]
       16 GETTABLEKS                       R5 R0 K0 ["_draggingHandleId"]
       18 GETTABLE                         R3 R4 R5
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETTABLEKS                       R6 R0 K0 ["_draggingHandleId"]
       24 NAMECALL                         R4 R0 K3 ["_renderDraggingAxis"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETTABLEKS                       R6 R0 K0 ["_draggingHandleId"]
       31 NAMECALL                         R4 R0 K4 ["_renderDraggingPlane"]
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1
       35 MOVE                             R6 R1
       36 NAMECALL                         R4 R0 K5 ["_renderHovering"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Folder"]
        4 NEWTABLE                         R4 0 0
        6 DUPTABLE                         R5 K5 [{"Handles", "BoundingBox", "Summon"}]
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R0 K6 ["_renderHoverOrDrag"]
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K2 ["Handles"]
       13 NAMECALL                         R6 R0 K7 ["_renderBoundingBox"]
       15 CALL                             R6 1 1
       16 SETTABLEKS                       R6 R5 K3 ["BoundingBox"]
       18 NAMECALL                         R6 R0 K8 ["_renderSummon"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R5 K4 ["Summon"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

PROTO_46:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+24]
        3 GETTABLEKS                       R3 R0 K0 ["_handles"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+19]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       10 NAMECALL                         R3 R3 K2 ["getMaxSoftSnaps"]
       12 CALL                             R3 1 1
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R3 ; [+11]
       16 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       18 NAMECALL                         R3 R3 K3 ["getSoftSnapMarginFactor"]
       20 CALL                             R3 1 1
       21 LOADN                            R4 0
       22 JUMPIFLT                         R4 R3 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 LOADB                            R2 0
       28 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       30 NAMECALL                         R3 R3 K2 ["getMaxSoftSnaps"]
       32 CALL                             R3 1 1
       33 LOADN                            R4 0
       34 JUMPIFNOTLT                      R4 R3 ; [+11]
       36 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       38 NAMECALL                         R3 R3 K3 ["getSoftSnapMarginFactor"]
       40 CALL                             R3 1 1
       41 LOADN                            R4 0
       42 JUMPIFLT                         R4 R3 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_48:
        0 LOADNIL                          R3
        1 SETTABLEKS                       R3 R0 K0 ["_laggingHandleId"]
        3 SETTABLEKS                       R2 R0 K1 ["_draggingHandleId"]
        5 GETTABLEKS                       R3 R0 K2 ["_boundingBox"]
        7 GETTABLEKS                       R3 R3 K3 ["CFrame"]
        9 SETTABLEKS                       R3 R0 K4 ["_draggingOriginalBoundingBoxCFrame"]
       11 GETTABLEKS                       R4 R0 K5 ["_handles"]
       13 GETTABLE                         R3 R4 R2
       14 JUMPIFNOT                        R3 ; [+75]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K6 ["_setupMoveAtCurrentBoundingBox"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R4 R0 K5 ["_handles"]
       21 GETTABLE                         R3 R4 R2
       22 NAMECALL                         R4 R0 K7 ["_useBoundingBoxMoveHandles"]
       24 CALL                             R4 1 1
       25 JUMPIF                           R4 ; [+17]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K8 ["getHandleDimensionForScale"]
       29 GETTABLEKS                       R5 R3 K9 ["Scale"]
       31 GETTABLEKS                       R6 R0 K10 ["_props"]
       33 GETTABLEKS                       R6 R6 K11 ["Outset"]
       35 CALL                             R4 2 2
       36 GETTABLEKS                       R8 R0 K12 ["_startDistance"]
       38 SUB                              R7 R8 R4
       39 DIV                              R6 R7 R5
       40 SETTABLEKS                       R6 R0 K13 ["_draggingHandleFrac"]
       42 JUMP                             ; [+15]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K8 ["getHandleDimensionForScale"]
       46 GETTABLEKS                       R5 R3 K9 ["Scale"]
       48 CALL                             R4 1 2
       49 GETTABLEKS                       R6 R3 K14 ["AxisOffset"]
       51 GETTABLEKS                       R10 R0 K12 ["_startDistance"]
       53 SUB                              R9 R10 R4
       54 SUB                              R8 R9 R6
       55 DIV                              R7 R8 R5
       56 SETTABLEKS                       R7 R0 K13 ["_draggingHandleFrac"]
       58 GETTABLEKS                       R4 R0 K4 ["_draggingOriginalBoundingBoxCFrame"]
       60 GETTABLEKS                       R6 R4 K15 ["Position"]
       62 GETTABLEKS                       R7 R4 K16 ["Rotation"]
       64 NAMECALL                         R9 R0 K17 ["_getBasisOffset"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R9 R9 K15 ["Position"]
       69 NAMECALL                         R7 R7 K18 ["VectorToWorldSpace"]
       71 CALL                             R7 2 1
       72 ADD                              R5 R6 R7
       73 SETTABLEKS                       R5 R0 K19 ["_dragStartPosition"]
       75 GETTABLEKS                       R5 R3 K20 ["Axis"]
       77 GETTABLEKS                       R5 R5 K15 ["Position"]
       79 SETTABLEKS                       R5 R0 K21 ["_startDragHandlePosition"]
       81 GETTABLEKS                       R5 R3 K9 ["Scale"]
       83 SETTABLEKS                       R5 R0 K22 ["_startDragHandleScale"]
       85 GETTABLEKS                       R5 R0 K23 ["_axis"]
       87 SETTABLEKS                       R5 R0 K24 ["_dragDirection"]
       89 JUMP                             ; [+59]
       90 GETUPVAL                         R3 1
       91 CALL                             R3 0 1
       92 JUMPIFNOT                        R3 ; [+56]
       93 GETTABLEKS                       R4 R0 K25 ["_planeHandles"]
       95 GETTABLE                         R3 R4 R2
       96 JUMPIFNOT                        R3 ; [+52]
       97 GETTABLEKS                       R6 R0 K25 ["_planeHandles"]
       99 GETTABLE                         R5 R6 R2
      100 GETTABLEKS                       R5 R5 K20 ["Axis"]
      102 GETTABLEKS                       R7 R0 K25 ["_planeHandles"]
      104 GETTABLE                         R6 R7 R2
      105 GETTABLEKS                       R6 R6 K26 ["IsView"]
      107 NAMECALL                         R3 R0 K27 ["_orient"]
      109 CALL                             R3 3 1
      110 JUMPIFNOTEQKS                    R2 K28 ["PlaneY"] ; [+9]
      112 GETIMPORT                        R4 K30 [CFrame.fromOrientation]
      114 LOADN                            R5 0
      115 LOADN                            R6 0
      116 LOADK                            R7 K31 [-1.5707963267949]
      117 CALL                             R4 3 1
      118 MUL                              R3 R3 R4
      119 JUMP                             ; [+7]
      120 GETIMPORT                        R4 K30 [CFrame.fromOrientation]
      122 LOADK                            R5 K32 [3.14159265358979]
      123 LOADN                            R6 0
      124 LOADN                            R7 0
      125 CALL                             R4 3 1
      126 MUL                              R3 R3 R4
      127 SETTABLEKS                       R3 R0 K33 ["_dragPlaneCf"]
      129 GETUPVAL                         R4 2
      130 GETTABLEKS                       R4 R4 K34 ["_planePoint"]
      132 MOVE                             R5 R3
      133 MOVE                             R6 R1
      134 CALL                             R4 2 1
      135 SETTABLEKS                       R4 R0 K35 ["_dragPlanePointStart"]
      137 GETTABLEKS                       R4 R0 K35 ["_dragPlanePointStart"]
      139 SETTABLEKS                       R4 R0 K36 ["_dragPlanePointEnd"]
      141 GETIMPORT                        R4 K39 [Vector2.zero]
      143 SETTABLEKS                       R4 R0 K40 ["_localPlaneDelta"]
      145 GETIMPORT                        R4 K39 [Vector2.zero]
      147 SETTABLEKS                       R4 R0 K41 ["_lastDelta"]
      149 GETIMPORT                        R3 K43 [CFrame.new]
      151 CALL                             R3 0 1
      152 SETTABLEKS                       R3 R0 K44 ["_lastGlobalTransformForRender"]
      154 GETTABLEKS                       R3 R0 K45 ["_implementation"]
      156 GETTABLEKS                       R5 R0 K46 ["_selectionWrapper"]
      158 NAMECALL                         R5 R5 K47 ["get"]
      160 CALL                             R5 1 1
      161 GETTABLEKS                       R6 R0 K48 ["_selectionInfo"]
      163 NAMECALL                         R3 R3 K49 ["beginDrag"]
      165 CALL                             R3 3 0
      166 GETTABLEKS                       R3 R0 K45 ["_implementation"]
      168 GETTABLEKS                       R3 R3 K50 ["getSoftSnaps"]
      170 JUMPIFNOT                        R3 ; [+19]
      171 MOVE                             R6 R2
      172 NAMECALL                         R4 R0 K51 ["_needsSoftSnaps"]
      174 CALL                             R4 2 1
      175 JUMPIFNOT                        R4 ; [+14]
      176 GETTABLEKS                       R4 R0 K52 ["_softSnapper"]
      178 MOVE                             R6 R3
      179 GETTABLEKS                       R7 R0 K45 ["_implementation"]
      181 GETTABLEKS                       R8 R0 K23 ["_axis"]
      183 GETTABLEKS                       R9 R0 K53 ["_summonOffsetInBasis"]
      185 CALL                             R6 3 -1
      186 NAMECALL                         R4 R4 K54 ["setSnaps"]
      188 CALL                             R4 -1 0
      189 RETURN                           R0 0
      190 GETTABLEKS                       R4 R0 K52 ["_softSnapper"]
      192 NAMECALL                         R4 R4 K55 ["clearSnaps"]
      194 CALL                             R4 1 0
      195 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R2 R2 K1 ["Offset"]
        6 GETTABLEKS                       R5 R0 K2 ["_boundingBox"]
        8 GETTABLEKS                       R5 R5 K3 ["CFrame"]
       10 NAMECALL                         R6 R0 K4 ["_getBasisOffset"]
       12 CALL                             R6 1 1
       13 MUL                              R4 R5 R6
       14 MUL                              R3 R4 R2
       15 GETTABLEKS                       R3 R3 K5 ["LookVector"]
       17 SETTABLEKS                       R3 R0 K6 ["_axis"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R0 K7 ["_getDistanceAlongAxis"]
       22 CALL                             R3 2 2
       23 JUMPIFNOT                        R3 ; [+2]
       24 MOVE                             R5 R4
       25 JUMPIF                           R5 ; [+1]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R0 K8 ["_startDistance"]
       29 LOADN                            R5 0
       30 SETTABLEKS                       R5 R0 K9 ["_lastDelta"]
       32 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 SETTABLEKS                       R1 R2 K1 ["CFrame"]
        4 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingOriginalBoundingBoxCFrame"]
        2 NAMECALL                         R3 R0 K1 ["_useBoundingBoxMoveHandles"]
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+4]
        6 NAMECALL                         R3 R0 K2 ["_getBasisOffset"]
        8 CALL                             R3 1 1
        9 MUL                              R2 R2 R3
       10 GETTABLEKS                       R3 R2 K3 ["Position"]
       12 GETTABLEKS                       R4 R0 K4 ["_axis"]
       14 GETTABLEKS                       R4 R4 K5 ["Unit"]
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R3
       18 MOVE                             R7 R4
       19 MOVE                             R8 R1
       20 CALL                             R5 3 -1
       21 RETURN                           R5 -1

PROTO_52:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["_implementation"]
        3 GETTABLEKS                       R3 R3 K1 ["getSnapPoints"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 MOVE                             R4 R3
        7 GETTABLEKS                       R5 R0 K0 ["_implementation"]
        9 CALL                             R4 1 1
       10 MOVE                             R2 R4
       11 JUMPIFNOT                        R2 ; [+72]
       12 GETTABLEKS                       R5 R0 K2 ["_draggingOriginalBoundingBoxCFrame"]
       14 GETTABLEKS                       R6 R0 K3 ["_basisOffset"]
       16 MUL                              R4 R5 R6
       17 GETTABLEKS                       R4 R4 K4 ["Position"]
       19 GETTABLEKS                       R5 R0 K5 ["_axis"]
       21 LOADK                            R6 K6 [-∞]
       22 LOADK                            R7 K7 [∞]
       23 LOADK                            R8 K7 [∞]
       24 LOADK                            R9 K7 [∞]
       25 GETIMPORT                        R10 K9 [ipairs]
       27 MOVE                             R11 R2
       28 CALL                             R10 1 3
       29 FORGPREP_INEXT                   R10
       30 GETTABLEKS                       R16 R14 K4 ["Position"]
       32 SUB                              R15 R16 R4
       33 MOVE                             R17 R5
       34 NAMECALL                         R15 R15 K10 ["Dot"]
       36 CALL                             R15 2 1
       37 FASTCALL2                        MATH_MAX R6 R15 ; [+5]
       39 MOVE                             R17 R6
       40 MOVE                             R18 R15
       41 GETIMPORT                        R16 K13 [math.max]
       43 CALL                             R16 2 1
       44 MOVE                             R6 R16
       45 FASTCALL2                        MATH_MIN R7 R15 ; [+5]
       47 MOVE                             R17 R7
       48 MOVE                             R18 R15
       49 GETIMPORT                        R16 K15 [math.min]
       51 CALL                             R16 2 1
       52 MOVE                             R7 R16
       53 SUB                              R17 R15 R1
       54 FASTCALL1                        MATH_ABS R17 ; [+2]
       55 GETIMPORT                        R16 K17 [math.abs]
       57 CALL                             R16 1 1
       58 JUMPIFNOTLT                      R16 R8 ; [+3]
       60 MOVE                             R8 R16
       61 MOVE                             R9 R15
       62 FORGLOOP                         R10 2 [inext] ; [-33]
       64 JUMPIFLT                         R6 R1 ; [+3]
       66 JUMPIFNOTLT                      R1 R7 ; [+16]
       68 GETTABLEKS                       R10 R0 K18 ["_draggerContext"]
       70 MOVE                             R12 R1
       71 NAMECALL                         R10 R10 K19 ["snapToGridSize"]
       73 CALL                             R10 2 1
       74 SUB                              R12 R10 R1
       75 FASTCALL1                        MATH_ABS R12 ; [+2]
       76 GETIMPORT                        R11 K17 [math.abs]
       78 CALL                             R11 1 1
       79 JUMPIFNOTLT                      R8 R11 ; [+2]
       81 RETURN                           R9 1
       82 RETURN                           R10 1
       83 RETURN                           R9 1
       84 GETTABLEKS                       R4 R0 K18 ["_draggerContext"]
       86 MOVE                             R6 R1
       87 NAMECALL                         R4 R4 K19 ["snapToGridSize"]
       89 CALL                             R4 2 -1
       90 RETURN                           R4 -1

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_dragPlaneCf"]
        2 GETTABLEKS                       R3 R0 K1 ["_dragPlanePointStart"]
        4 AND                              R5 R2 R3
        5 FASTCALL2K                       ASSERT R5 K2 ; [+4]
        7 LOADK                            R6 K2 ["Plane drag requires an active drag plane"]
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 2 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["_planePoint"]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+59]
       18 SETTABLEKS                       R4 R0 K6 ["_dragPlanePointEnd"]
       20 SUB                              R5 R4 R3
       21 MOVE                             R8 R5
       22 NAMECALL                         R6 R2 K7 ["VectorToObjectSpace"]
       24 CALL                             R6 2 1
       25 GETTABLEKS                       R8 R0 K8 ["_draggerContext"]
       27 GETTABLEKS                       R10 R6 K9 ["X"]
       29 NAMECALL                         R8 R8 K10 ["snapToGridSize"]
       31 CALL                             R8 2 1
       32 GETTABLEKS                       R9 R0 K8 ["_draggerContext"]
       34 GETTABLEKS                       R11 R6 K11 ["Y"]
       36 NAMECALL                         R9 R9 K10 ["snapToGridSize"]
       38 CALL                             R9 2 1
       39 LOADN                            R10 0
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R7 K14 [Vector3.new]
       43 CALL                             R7 3 1
       44 MOVE                             R6 R7
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R2 K15 ["VectorToWorldSpace"]
       48 CALL                             R7 2 1
       49 MOVE                             R5 R7
       50 ADD                              R7 R3 R5
       51 SETTABLEKS                       R7 R0 K6 ["_dragPlanePointEnd"]
       53 GETIMPORT                        R7 K17 [Vector2.new]
       55 GETTABLEKS                       R8 R6 K9 ["X"]
       57 GETTABLEKS                       R9 R6 K11 ["Y"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R0 K18 ["_localPlaneDelta"]
       62 GETTABLEKS                       R7 R0 K18 ["_localPlaneDelta"]
       64 SETTABLEKS                       R7 R0 K19 ["_lastDelta"]
       66 GETIMPORT                        R7 K21 [CFrame.new]
       68 MOVE                             R8 R5
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R0 K22 ["_implementation"]
       72 MOVE                             R10 R7
       73 NAMECALL                         R8 R8 K23 ["updateDrag"]
       75 CALL                             R8 2 1
       76 RETURN                           R8 1
       77 LOADNIL                          R5
       78 RETURN                           R5 1

PROTO_54:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getDistanceAlongAxis"]
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["shouldGridSnap"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 0
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+6]
       14 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       16 NAMECALL                         R5 R5 K3 ["getDraggerScaleFactor"]
       18 CALL                             R5 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       25 NAMECALL                         R8 R8 K4 ["getCamera"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R9 R0 K5 ["_dragStartPosition"]
       30 GETTABLEKS                       R10 R0 K6 ["_dragDirection"]
       32 GETTABLEKS                       R11 R0 K7 ["_startDragHandlePosition"]
       34 GETTABLEKS                       R12 R0 K8 ["_startDragHandleScale"]
       36 GETTABLEKS                       R13 R0 K9 ["_startDistance"]
       38 MOVE                             R14 R3
       39 MOVE                             R15 R5
       40 CALL                             R7 8 1
       41 GETTABLEKS                       R9 R0 K7 ["_startDragHandlePosition"]
       43 GETTABLEKS                       R10 R0 K5 ["_dragStartPosition"]
       45 SUB                              R8 R9 R10
       46 GETTABLEKS                       R8 R8 K10 ["Magnitude"]
       48 SUB                              R6 R7 R8
       49 LOADNIL                          R9
       50 NAMECALL                         R10 R0 K11 ["_useBoundingBoxMoveHandles"]
       52 CALL                             R10 1 1
       53 JUMPIF                           R10 ; [+6]
       54 MOVE                             R12 R6
       55 NAMECALL                         R10 R0 K12 ["_getSnappedDelta"]
       57 CALL                             R10 2 1
       58 MOVE                             R9 R10
       59 JUMP                             ; [+7]
       60 GETTABLEKS                       R10 R0 K1 ["_draggerContext"]
       62 MOVE                             R12 R6
       63 NAMECALL                         R10 R10 K13 ["snapToGridSize"]
       65 CALL                             R10 2 1
       66 MOVE                             R9 R10
       67 NAMECALL                         R10 R0 K14 ["_hasSoftSnap"]
       69 CALL                             R10 1 1
       70 JUMPIFNOT                        R10 ; [+17]
       71 JUMPIFNOT                        R4 ; [+6]
       72 SUB                              R11 R6 R9
       73 FASTCALL1                        MATH_ABS R11 ; [+2]
       74 GETIMPORT                        R10 K17 [math.abs]
       76 CALL                             R10 1 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 GETTABLEKS                       R11 R0 K18 ["_softSnapper"]
       81 MOVE                             R13 R6
       82 MOVE                             R14 R10
       83 NAMECALL                         R11 R11 K19 ["updateCurrentSnap"]
       85 CALL                             R11 3 1
       86 JUMPIFNOT                        R11 ; [+1]
       87 MOVE                             R9 R11
       88 GETTABLEKS                       R10 R0 K20 ["_implementation"]
       90 GETIMPORT                        R12 K23 [CFrame.new]
       92 GETTABLEKS                       R14 R0 K24 ["_axis"]
       94 MUL                              R13 R14 R9
       95 CALL                             R12 1 -1
       96 NAMECALL                         R10 R10 K25 ["updateDrag"]
       98 CALL                             R10 -1 1
       99 JUMPIFNOTEQKNIL                  R10 ; [+2]
      101 LOADB                            R12 0 +1
      102 LOADB                            R12 1
      103 FASTCALL2K                       ASSERT R12 K26 ; [+4]
      105 LOADK                            R13 K26 ["Did not return a transform from updateDrag."]
      106 GETIMPORT                        R11 K28 [assert]
      108 CALL                             R11 2 0
      109 NAMECALL                         R11 R0 K29 ["_lastTransformWasLinear"]
      111 CALL                             R11 1 1
      112 JUMPIFNOT                        R11 ; [+13]
      113 FASTCALL1                        MATH_SIGN R9 ; [+3]
      114 MOVE                             R13 R9
      115 GETIMPORT                        R12 K31 [math.sign]
      117 CALL                             R12 1 1
      118 GETTABLEKS                       R13 R10 K32 ["Position"]
      120 GETTABLEKS                       R13 R13 K10 ["Magnitude"]
      122 MUL                              R11 R12 R13
      123 SETTABLEKS                       R11 R0 K33 ["_lastDelta"]
      125 RETURN                           R10 1
      126 LOADN                            R11 0
      127 SETTABLEKS                       R11 R0 K33 ["_lastDelta"]
      129 RETURN                           R10 1

PROTO_55:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R4 R0 K0 ["_handles"]
        3 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFNOT                        R3 ; [+6]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["_mouseDragAxis"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 JUMP                             ; [+14]
       13 GETUPVAL                         R3 0
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+11]
       16 GETTABLEKS                       R4 R0 K3 ["_planeHandles"]
       18 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
       20 GETTABLE                         R3 R4 R5
       21 JUMPIFNOT                        R3 ; [+5]
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K4 ["_mouseDragPlane"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETTABLEKS                       R6 R0 K5 ["_draggingOriginalBoundingBoxCFrame"]
       30 MUL                              R5 R2 R6
       31 NAMECALL                         R3 R0 K6 ["_setMidMoveBoundingBox"]
       33 CALL                             R3 2 0
       34 SETTABLEKS                       R2 R0 K7 ["_lastGlobalTransformForRender"]
       36 RETURN                           R0 0

PROTO_56:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        3 GETTABLEKS                       R2 R0 K1 ["_implementation"]
        5 NAMECALL                         R2 R2 K2 ["endDrag"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R0 K3 ["_schema"]
       10 GETTABLEKS                       R3 R3 K4 ["addUndoWaypoint"]
       12 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
       14 LOADK                            R5 K6 ["Axis Move Selection"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+12]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R0 K7 ["_dragPlaneCf"]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R0 K8 ["_dragPlanePointStart"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R0 K9 ["_dragPlanePointEnd"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R0 K10 ["_localPlaneDelta"]
       31 RETURN                           R2 1

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R1 R1 K1 ["isEmpty"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+14]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K2 ["_handles"]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 NEWTABLE                         R1 0 0
       15 JUMP                             ; [+1]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["_planeHandles"]
       19 RETURN                           R0 0
       20 GETIMPORT                        R1 K5 [pairs]
       22 GETUPVAL                         R2 1
       23 CALL                             R1 1 3
       24 FORGPREP_NEXT                    R1
       25 NAMECALL                         R6 R0 K6 ["_useBoundingBoxMoveHandles"]
       27 CALL                             R6 1 1
       28 JUMPIF                           R6 ; [+102]
       29 LOADNIL                          R6
       30 GETUPVAL                         R7 0
       31 CALL                             R7 0 1
       32 JUMPIFNOT                        R7 ; [+17]
       33 LOADN                            R10 1
       34 LOADN                            R11 4
       35 NAMECALL                         R8 R4 K7 ["sub"]
       37 CALL                             R8 3 1
       38 JUMPIFEQKS                       R8 K8 ["Plus"] ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 MOVE                             R8 R7
       43 JUMPIF                           R8 ; [+5]
       44 GETTABLEKS                       R8 R0 K9 ["_draggerContext"]
       46 NAMECALL                         R8 R8 K10 ["getDraggerShowNegativeAxes"]
       48 CALL                             R8 1 1
       49 MOVE                             R6 R8
       50 GETUPVAL                         R7 0
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+1]
       53 JUMPIFNOT                        R6 ; [+72]
       54 GETTABLEKS                       R9 R0 K11 ["_boundingBox"]
       56 GETTABLEKS                       R9 R9 K12 ["CFrame"]
       58 NAMECALL                         R10 R0 K13 ["_getBasisOffset"]
       60 CALL                             R10 1 1
       61 MUL                              R8 R9 R10
       62 GETTABLEKS                       R9 R5 K14 ["Offset"]
       64 MUL                              R7 R8 R9
       65 GETUPVAL                         R9 0
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+7]
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K15 ["get"]
       71 GETTABLEKS                       R9 R5 K16 ["Axis"]
       73 CALL                             R8 1 1
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R8 R5 K17 ["Color"]
       77 GETTABLEKS                       R9 R0 K2 ["_handles"]
       79 DUPTABLE                         R10 K25 [{["Outset"], ["Axis"], ["AxisId"], ["Color"], ["HighlightColor"], ["Scale"], ["AlwaysOnTop"] = True, ["Opposite"]}]
       80 GETTABLEKS                       R11 R0 K26 ["_props"]
       82 GETTABLEKS                       R11 R11 K18 ["Outset"]
       84 SETTABLEKS                       R11 R10 K18 ["Outset"]
       86 SETTABLEKS                       R7 R10 K16 ["Axis"]
       88 GETUPVAL                         R12 0
       89 CALL                             R12 0 1
       90 JUMPIFNOT                        R12 ; [+3]
       91 GETTABLEKS                       R11 R5 K16 ["Axis"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R11
       95 SETTABLEKS                       R11 R10 K19 ["AxisId"]
       97 SETTABLEKS                       R8 R10 K17 ["Color"]
       99 GETUPVAL                         R12 0
      100 CALL                             R12 0 1
      101 JUMPIFNOT                        R12 ; [+6]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R11 R11 K27 ["makeHighlighted"]
      105 MOVE                             R12 R8
      106 CALL                             R11 1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R11
      109 SETTABLEKS                       R11 R10 K20 ["HighlightColor"]
      111 GETTABLEKS                       R11 R0 K9 ["_draggerContext"]
      113 GETTABLEKS                       R13 R7 K28 ["Position"]
      115 NAMECALL                         R11 R11 K29 ["getHandleScale"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K21 ["Scale"]
      120 GETTABLEKS                       R11 R5 K24 ["Opposite"]
      122 SETTABLEKS                       R11 R10 K24 ["Opposite"]
      124 SETTABLE                         R10 R9 R4
      125 JUMP                             ; [+94]
      126 GETTABLEKS                       R7 R0 K2 ["_handles"]
      128 LOADNIL                          R8
      129 SETTABLE                         R8 R7 R4
      130 JUMP                             ; [+89]
      131 GETTABLEKS                       R6 R5 K14 ["Offset"]
      133 NAMECALL                         R6 R6 K30 ["Inverse"]
      135 CALL                             R6 1 1
      136 GETTABLEKS                       R8 R0 K11 ["_boundingBox"]
      138 GETTABLEKS                       R8 R8 K31 ["Size"]
      140 NAMECALL                         R6 R6 K32 ["VectorToWorldSpace"]
      142 CALL                             R6 2 1
      143 GETTABLEKS                       R9 R6 K34 ["Z"]
      145 FASTCALL1                        MATH_ABS R9 ; [+2]
      146 GETIMPORT                        R8 K37 [math.abs]
      148 CALL                             R8 1 1
      149 MULK                             R7 R8 K33 [0.5]
      150 GETTABLEKS                       R10 R0 K11 ["_boundingBox"]
      152 GETTABLEKS                       R10 R10 K12 ["CFrame"]
      154 GETTABLEKS                       R11 R5 K14 ["Offset"]
      156 MUL                              R9 R10 R11
      157 GETIMPORT                        R10 K39 [CFrame.new]
      159 LOADN                            R11 0
      160 LOADN                            R12 0
      161 MINUS                            R13 R7
      162 CALL                             R10 3 1
      163 MUL                              R8 R9 R10
      164 GETUPVAL                         R10 0
      165 CALL                             R10 0 1
      166 JUMPIFNOT                        R10 ; [+7]
      167 GETUPVAL                         R9 2
      168 GETTABLEKS                       R9 R9 K15 ["get"]
      170 GETTABLEKS                       R10 R5 K16 ["Axis"]
      172 CALL                             R9 1 1
      173 JUMP                             ; [+2]
      174 GETTABLEKS                       R9 R5 K17 ["Color"]
      176 GETTABLEKS                       R10 R0 K2 ["_handles"]
      178 DUPTABLE                         R11 K41 [{["AxisOffset"], ["Axis"], ["AxisId"], ["Color"], ["HighlightColor"], ["Scale"], ["AlwaysOnTop"] = True, ["Opposite"]}]
      179 SETTABLEKS                       R7 R11 K40 ["AxisOffset"]
      181 SETTABLEKS                       R8 R11 K16 ["Axis"]
      183 GETUPVAL                         R13 0
      184 CALL                             R13 0 1
      185 JUMPIFNOT                        R13 ; [+3]
      186 GETTABLEKS                       R12 R5 K16 ["Axis"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R12
      190 SETTABLEKS                       R12 R11 K19 ["AxisId"]
      192 SETTABLEKS                       R9 R11 K17 ["Color"]
      194 GETUPVAL                         R13 0
      195 CALL                             R13 0 1
      196 JUMPIFNOT                        R13 ; [+6]
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R12 R12 K27 ["makeHighlighted"]
      200 MOVE                             R13 R9
      201 CALL                             R12 1 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R12
      204 SETTABLEKS                       R12 R11 K20 ["HighlightColor"]
      206 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
      208 GETTABLEKS                       R14 R8 K28 ["Position"]
      210 NAMECALL                         R12 R12 K29 ["getHandleScale"]
      212 CALL                             R12 2 1
      213 SETTABLEKS                       R12 R11 K21 ["Scale"]
      215 GETTABLEKS                       R12 R5 K24 ["Opposite"]
      217 SETTABLEKS                       R12 R11 K24 ["Opposite"]
      219 SETTABLE                         R11 R10 R4
      220 FORGLOOP                         R1 2 ; [-196]
      222 GETUPVAL                         R1 0
      223 CALL                             R1 0 1
      224 JUMPIFNOT                        R1 ; [+111]
      225 GETTABLEKS                       R1 R0 K9 ["_draggerContext"]
      227 NAMECALL                         R1 R1 K42 ["getDraggerShowPlanes"]
      229 CALL                             R1 1 1
      230 JUMPIFNOT                        R1 ; [+105]
      231 GETIMPORT                        R1 K5 [pairs]
      233 GETUPVAL                         R2 3
      234 CALL                             R1 1 3
      235 FORGPREP_NEXT                    R1
      236 GETTABLEKS                       R8 R0 K11 ["_boundingBox"]
      238 GETTABLEKS                       R8 R8 K12 ["CFrame"]
      240 NAMECALL                         R9 R0 K13 ["_getBasisOffset"]
      242 CALL                             R9 1 1
      243 MUL                              R7 R8 R9
      244 GETTABLEKS                       R8 R5 K14 ["Offset"]
      246 MUL                              R6 R7 R8
      247 GETUPVAL                         R7 2
      248 GETTABLEKS                       R7 R7 K15 ["get"]
      250 GETTABLEKS                       R8 R5 K16 ["Axis"]
      252 CALL                             R7 1 1
      253 GETUPVAL                         R8 2
      254 GETTABLEKS                       R8 R8 K15 ["get"]
      256 GETTABLEKS                       R10 R5 K43 ["PlaneAxes"]
      258 GETTABLEN                        R9 R10 1
      259 CALL                             R8 1 1
      260 GETUPVAL                         R9 2
      261 GETTABLEKS                       R9 R9 K15 ["get"]
      263 GETTABLEKS                       R11 R5 K43 ["PlaneAxes"]
      265 GETTABLEN                        R10 R11 2
      266 CALL                             R9 1 1
      267 GETTABLEKS                       R10 R0 K3 ["_planeHandles"]
      269 DUPTABLE                         R11 K48 [{["Outset"], ["Axis"], ["Color"], ["HighlightColor"], ["AxisId"], ["Scale"], ["AlwaysOnTop"] = True, ["IsView"], ["PlaneAxesIds"], ["PlaneColors"], ["PlaneHighlightColors"]}]
      270 GETTABLEKS                       R12 R0 K26 ["_props"]
      272 GETTABLEKS                       R12 R12 K18 ["Outset"]
      274 SETTABLEKS                       R12 R11 K18 ["Outset"]
      276 SETTABLEKS                       R6 R11 K16 ["Axis"]
      278 SETTABLEKS                       R7 R11 K17 ["Color"]
      280 GETUPVAL                         R12 2
      281 GETTABLEKS                       R12 R12 K27 ["makeHighlighted"]
      283 MOVE                             R13 R7
      284 CALL                             R12 1 1
      285 SETTABLEKS                       R12 R11 K20 ["HighlightColor"]
      287 GETTABLEKS                       R12 R5 K16 ["Axis"]
      289 SETTABLEKS                       R12 R11 K19 ["AxisId"]
      291 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
      293 GETTABLEKS                       R14 R6 K28 ["Position"]
      295 NAMECALL                         R12 R12 K29 ["getHandleScale"]
      297 CALL                             R12 2 1
      298 SETTABLEKS                       R12 R11 K21 ["Scale"]
      300 GETTABLEKS                       R12 R5 K44 ["IsView"]
      302 SETTABLEKS                       R12 R11 K44 ["IsView"]
      304 GETTABLEKS                       R12 R5 K43 ["PlaneAxes"]
      306 SETTABLEKS                       R12 R11 K45 ["PlaneAxesIds"]
      308 NEWTABLE                         R12 0 2
      310 MOVE                             R13 R8
      311 MOVE                             R14 R9
      312 SETLIST                          R12 R13 2 [1]
      314 SETTABLEKS                       R12 R11 K46 ["PlaneColors"]
      316 NEWTABLE                         R12 0 2
      318 GETUPVAL                         R13 2
      319 GETTABLEKS                       R13 R13 K27 ["makeHighlighted"]
      321 MOVE                             R14 R8
      322 CALL                             R13 1 1
      323 GETUPVAL                         R14 2
      324 GETTABLEKS                       R14 R14 K27 ["makeHighlighted"]
      326 MOVE                             R15 R9
      327 CALL                             R14 1 -1
      328 SETLIST                          R12 R13 -1 [1]
      330 SETTABLEKS                       R12 R11 K47 ["PlaneHighlightColors"]
      332 SETTABLE                         R11 R10 R4
      333 FORGLOOP                         R1 2 ; [-98]
      335 RETURN                           R0 0
      336 GETUPVAL                         R2 0
      337 CALL                             R2 0 1
      338 JUMPIFNOT                        R2 ; [+3]
      339 NEWTABLE                         R1 0 0
      341 JUMP                             ; [+1]
      342 LOADNIL                          R1
      343 SETTABLEKS                       R1 R0 K3 ["_planeHandles"]
      345 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        5 JUMPIFNOT                        R2 ; [+40]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["getMouseRay"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R0 K3 ["mouseDrag"]
       13 CALL                             R2 -1 0
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 JUMP                             ; [+29]
       17 GETIMPORT                        R2 K7 [Enum.KeyCode.H]
       19 JUMPIFNOTEQ                      R1 R2 ; [+16]
       21 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
       23 LOADK                            R4 K8 ["HotkeyUsageHidden"]
       24 GETTABLEKS                       R6 R0 K1 ["_draggerContext"]
       26 LOADK                            R8 K8 ["HotkeyUsageHidden"]
       27 NAMECALL                         R6 R6 K9 ["getSetting"]
       29 CALL                             R6 2 1
       30 NOT                              R5 R6
       31 NAMECALL                         R2 R2 K10 ["setSetting"]
       33 CALL                             R2 3 0
       34 LOADB                            R2 1
       35 RETURN                           R2 1
       36 GETUPVAL                         R3 1
       37 GETTABLE                         R2 R3 R1
       38 JUMPIFNOT                        R2 ; [+7]
       39 GETUPVAL                         R5 1
       40 GETTABLE                         R4 R5 R1
       41 NAMECALL                         R2 R0 K11 ["_doBump"]
       43 CALL                             R2 2 0
       44 LOADB                            R2 1
       45 RETURN                           R2 1
       46 LOADB                            R2 0
       47 RETURN                           R2 1

PROTO_59:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["getMouseRay"]
       10 CALL                             R4 1 -1
       11 NAMECALL                         R2 R0 K3 ["mouseDrag"]
       13 CALL                             R2 -1 0
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["_implementation"]
        2 GETTABLEKS                       R1 R1 K1 ["getPriority"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 MOVE                             R2 R1
        6 GETTABLEKS                       R3 R0 K0 ["_implementation"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1
       10 LOADN                            R2 0
       11 RETURN                           R2 1

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
       27 GETTABLEKS                       R5 R0 K9 ["Components"]
       29 GETTABLEKS                       R5 R5 K10 ["StandaloneSelectionBox"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["WireframeHandleAdornment"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Components"]
       43 GETTABLEKS                       R7 R7 K12 ["HotkeyUsageInfo"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K9 ["Components"]
       50 GETTABLEKS                       R8 R8 K13 ["FloatingValueInput"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K7 ["Utility"]
       57 GETTABLEKS                       R9 R9 K14 ["HotkeyHelpBuilder"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K7 ["Utility"]
       64 GETTABLEKS                       R10 R10 K15 ["conciseNumberFormat"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R0 K7 ["Utility"]
       71 GETTABLEKS                       R11 R11 K16 ["SoftSnapper"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R12 R0 K9 ["Components"]
       78 GETTABLEKS                       R12 R12 K17 ["MoveHandleView"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R13 R0 K9 ["Components"]
       85 GETTABLEKS                       R13 R13 K18 ["MovePlanarHandleView"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R14 R0 K9 ["Components"]
       92 GETTABLEKS                       R14 R14 K19 ["SummonHandlesNote"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R15 R0 K9 ["Components"]
       99 GETTABLEKS                       R15 R15 K20 ["SummonHandlesHider"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R16 R0 K9 ["Components"]
      106 GETTABLEKS                       R16 R16 K21 ["SummonedPivot"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K7 ["Utility"]
      113 GETTABLEKS                       R17 R17 K22 ["computeDraggedDistance"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R18 R0 K7 ["Utility"]
      120 GETTABLEKS                       R18 R18 K23 ["computeHandlePositionDistance"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K4 [require]
      125 GETTABLEKS                       R19 R0 K24 ["Types"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K4 [require]
      130 GETTABLEKS                       R20 R0 K25 ["Flags"]
      132 GETTABLEKS                       R20 R20 K26 ["getFFlagNextGenDraggers"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K4 [require]
      137 GETTABLEKS                       R21 R0 K25 ["Flags"]
      139 GETTABLEKS                       R21 R21 K27 ["getFFlagSBT4896NudgingWithNumpad"]
      141 CALL                             R20 1 1
      142 NEWTABLE                         R21 64 0
      144 SETTABLEKS                       R21 R21 K28 ["__index"]
      146 GETIMPORT                        R22 K31 [table.freeze]
      148 DUPTABLE                         R23 K38 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
      149 DUPTABLE                         R24 K44 [{["Offset"], ["Color"], ["Axis"] = "Z", ["Opposite"] = "PlusZ"}]
      150 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      152 FASTCALL                         VECTOR ; [+2]
      153 GETIMPORT                        R26 K50 [Vector3.new]
      155 CALL                             R26 0 1
      156 LOADK                            R27 K51 [{1, 0, 0}]
      157 LOADK                            R28 K52 [{0, 1, 0}]
      158 CALL                             R25 3 1
      159 SETTABLEKS                       R25 R24 K39 ["Offset"]
      161 GETTABLEKS                       R25 R3 K53 ["Z_AXIS"]
      163 SETTABLEKS                       R25 R24 K40 ["Color"]
      165 SETTABLEKS                       R24 R23 K32 ["MinusZ"]
      167 DUPTABLE                         R24 K54 [{["Offset"], ["Color"], ["Axis"] = "Z", ["Opposite"] = "MinusZ"}]
      168 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      170 FASTCALL                         VECTOR ; [+2]
      171 GETIMPORT                        R26 K50 [Vector3.new]
      173 CALL                             R26 0 1
      174 LOADK                            R27 K51 [{1, 0, 0}]
      175 LOADK                            R28 K55 [{0, -1, 0}]
      176 CALL                             R25 3 1
      177 SETTABLEKS                       R25 R24 K39 ["Offset"]
      179 GETTABLEKS                       R25 R3 K53 ["Z_AXIS"]
      181 SETTABLEKS                       R25 R24 K40 ["Color"]
      183 SETTABLEKS                       R24 R23 K33 ["PlusZ"]
      185 DUPTABLE                         R24 K57 [{["Offset"], ["Color"], ["Axis"] = "Y", ["Opposite"] = "PlusY"}]
      186 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      188 FASTCALL                         VECTOR ; [+2]
      189 GETIMPORT                        R26 K50 [Vector3.new]
      191 CALL                             R26 0 1
      192 LOADK                            R27 K58 [{0, 0, 1}]
      193 LOADK                            R28 K51 [{1, 0, 0}]
      194 CALL                             R25 3 1
      195 SETTABLEKS                       R25 R24 K39 ["Offset"]
      197 GETTABLEKS                       R25 R3 K59 ["Y_AXIS"]
      199 SETTABLEKS                       R25 R24 K40 ["Color"]
      201 SETTABLEKS                       R24 R23 K34 ["MinusY"]
      203 DUPTABLE                         R24 K60 [{["Offset"], ["Color"], ["Axis"] = "Y", ["Opposite"] = "MinusY"}]
      204 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      206 FASTCALL                         VECTOR ; [+2]
      207 GETIMPORT                        R26 K50 [Vector3.new]
      209 CALL                             R26 0 1
      210 LOADK                            R27 K58 [{0, 0, 1}]
      211 LOADK                            R28 K61 [{-1, 0, 0}]
      212 CALL                             R25 3 1
      213 SETTABLEKS                       R25 R24 K39 ["Offset"]
      215 GETTABLEKS                       R25 R3 K59 ["Y_AXIS"]
      217 SETTABLEKS                       R25 R24 K40 ["Color"]
      219 SETTABLEKS                       R24 R23 K35 ["PlusY"]
      221 DUPTABLE                         R24 K63 [{["Offset"], ["Color"], ["Axis"] = "X", ["Opposite"] = "PlusX"}]
      222 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      224 FASTCALL                         VECTOR ; [+2]
      225 GETIMPORT                        R26 K50 [Vector3.new]
      227 CALL                             R26 0 1
      228 LOADK                            R27 K52 [{0, 1, 0}]
      229 LOADK                            R28 K58 [{0, 0, 1}]
      230 CALL                             R25 3 1
      231 SETTABLEKS                       R25 R24 K39 ["Offset"]
      233 GETTABLEKS                       R25 R3 K64 ["X_AXIS"]
      235 SETTABLEKS                       R25 R24 K40 ["Color"]
      237 SETTABLEKS                       R24 R23 K36 ["MinusX"]
      239 DUPTABLE                         R24 K65 [{["Offset"], ["Color"], ["Axis"] = "X", ["Opposite"] = "MinusX"}]
      240 GETIMPORT                        R25 K47 [CFrame.fromMatrix]
      242 FASTCALL                         VECTOR ; [+2]
      243 GETIMPORT                        R26 K50 [Vector3.new]
      245 CALL                             R26 0 1
      246 LOADK                            R27 K52 [{0, 1, 0}]
      247 LOADK                            R28 K66 [{0, 0, -1}]
      248 CALL                             R25 3 1
      249 SETTABLEKS                       R25 R24 K39 ["Offset"]
      251 GETTABLEKS                       R25 R3 K64 ["X_AXIS"]
      253 SETTABLEKS                       R25 R24 K40 ["Color"]
      255 SETTABLEKS                       R24 R23 K37 ["PlusX"]
      257 CALL                             R22 1 1
      258 MOVE                             R24 R19
      259 CALL                             R24 0 1
      260 JUMPIF                           R24 ; [+2]
      261 LOADNIL                          R23
      262 JUMP                             ; [+85]
      263 GETIMPORT                        R23 K31 [table.freeze]
      265 DUPTABLE                         R24 K71 [{"PlaneX", "PlaneY", "PlaneZ", "PlaneV"}]
      266 DUPTABLE                         R25 K73 [{["Offset"], ["Axis"] = "X", ["PlaneAxes"]}]
      267 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      269 FASTCALL                         VECTOR ; [+2]
      270 GETIMPORT                        R27 K50 [Vector3.new]
      272 CALL                             R27 0 1
      273 LOADK                            R28 K52 [{0, 1, 0}]
      274 LOADK                            R29 K66 [{0, 0, -1}]
      275 CALL                             R26 3 1
      276 SETTABLEKS                       R26 R25 K39 ["Offset"]
      278 NEWTABLE                         R26 0 2
      280 LOADK                            R27 K56 ["Y"]
      281 LOADK                            R28 K42 ["Z"]
      282 SETLIST                          R26 R27 2 [1]
      284 SETTABLEKS                       R26 R25 K72 ["PlaneAxes"]
      286 SETTABLEKS                       R25 R24 K67 ["PlaneX"]
      288 DUPTABLE                         R25 K74 [{["Offset"], ["Axis"] = "Y", ["PlaneAxes"]}]
      289 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      291 FASTCALL                         VECTOR ; [+2]
      292 GETIMPORT                        R27 K50 [Vector3.new]
      294 CALL                             R27 0 1
      295 LOADK                            R28 K58 [{0, 0, 1}]
      296 LOADK                            R29 K61 [{-1, 0, 0}]
      297 CALL                             R26 3 1
      298 SETTABLEKS                       R26 R25 K39 ["Offset"]
      300 NEWTABLE                         R26 0 2
      302 LOADK                            R27 K62 ["X"]
      303 LOADK                            R28 K42 ["Z"]
      304 SETLIST                          R26 R27 2 [1]
      306 SETTABLEKS                       R26 R25 K72 ["PlaneAxes"]
      308 SETTABLEKS                       R25 R24 K68 ["PlaneY"]
      310 DUPTABLE                         R25 K75 [{["Offset"], ["Axis"] = "Z", ["PlaneAxes"]}]
      311 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      313 FASTCALL                         VECTOR ; [+2]
      314 GETIMPORT                        R27 K50 [Vector3.new]
      316 CALL                             R27 0 1
      317 LOADK                            R28 K51 [{1, 0, 0}]
      318 LOADK                            R29 K55 [{0, -1, 0}]
      319 CALL                             R26 3 1
      320 SETTABLEKS                       R26 R25 K39 ["Offset"]
      322 NEWTABLE                         R26 0 2
      324 LOADK                            R27 K62 ["X"]
      325 LOADK                            R28 K56 ["Y"]
      326 SETLIST                          R26 R27 2 [1]
      328 SETTABLEKS                       R26 R25 K72 ["PlaneAxes"]
      330 SETTABLEKS                       R25 R24 K69 ["PlaneZ"]
      332 DUPTABLE                         R25 K79 [{["Offset"], ["Axis"] = "V", ["PlaneAxes"], ["IsView"] = True}]
      333 GETIMPORT                        R26 K81 [CFrame.identity]
      335 SETTABLEKS                       R26 R25 K39 ["Offset"]
      337 NEWTABLE                         R26 0 2
      339 LOADK                            R27 K76 ["V"]
      340 LOADK                            R28 K76 ["V"]
      341 SETLIST                          R26 R27 2 [1]
      343 SETTABLEKS                       R26 R25 K72 ["PlaneAxes"]
      345 SETTABLEKS                       R25 R24 K70 ["PlaneV"]
      347 CALL                             R23 1 1
      348 DUPCLOSURE                       R24 K82 [PROTO_0]
      349 CAPTURE                          VAL R19
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R10
      352 CAPTURE                          VAL R21
      353 SETTABLEKS                       R24 R21 K49 ["new"]
      355 DUPCLOSURE                       R24 K83 [PROTO_1]
      356 SETTABLEKS                       R24 R21 K84 ["_orient"]
      358 DUPCLOSURE                       R24 K85 [PROTO_2]
      359 SETTABLEKS                       R24 R21 K86 ["update"]
      361 DUPCLOSURE                       R24 K87 [PROTO_3]
      362 SETTABLEKS                       R24 R21 K88 ["beginSummon"]
      364 DUPCLOSURE                       R24 K89 [PROTO_4]
      365 SETTABLEKS                       R24 R21 K90 ["endSummon"]
      367 DUPCLOSURE                       R24 K91 [PROTO_5]
      368 SETTABLEKS                       R24 R21 K92 ["_getBasisOffset"]
      370 DUPCLOSURE                       R24 K93 [PROTO_6]
      371 SETTABLEKS                       R24 R21 K94 ["shouldBiasTowardsObjects"]
      373 DUPCLOSURE                       R24 K95 [PROTO_7]
      374 CAPTURE                          VAL R19
      375 CAPTURE                          VAL R11
      376 CAPTURE                          VAL R12
      377 SETTABLEKS                       R24 R21 K96 ["hitTest"]
      379 DUPCLOSURE                       R24 K97 [PROTO_8]
      380 SETTABLEKS                       R24 R21 K98 ["_doMeasuredMove"]
      382 DUPCLOSURE                       R24 K99 [PROTO_9]
      383 CAPTURE                          VAL R22
      384 SETTABLEKS                       R24 R21 K100 ["_doBump"]
      386 DUPCLOSURE                       R24 K101 [PROTO_10]
      387 SETTABLEKS                       R24 R21 K102 ["_useBoundingBoxMoveHandles"]
      389 DUPCLOSURE                       R24 K103 [PROTO_11]
      390 SETTABLEKS                       R24 R21 K104 ["_hasSoftSnap"]
      392 DUPCLOSURE                       R24 K105 [PROTO_12]
      393 DUPCLOSURE                       R25 K106 [PROTO_13]
      394 SETTABLEKS                       R25 R21 K107 ["_getHandleIdClosestToCenterOfScreen"]
      396 DUPCLOSURE                       R25 K108 [PROTO_14]
      397 CAPTURE                          VAL R19
      398 CAPTURE                          VAL R11
      399 CAPTURE                          VAL R20
      400 SETTABLEKS                       R25 R21 K109 ["_getMoveMeasurementArrowMetrics"]
      402 DUPCLOSURE                       R25 K110 [PROTO_15]
      403 SETTABLEKS                       R25 R21 K111 ["_calcPlaneDragViewportPosition"]
      405 DUPCLOSURE                       R25 K112 [PROTO_17]
      406 CAPTURE                          VAL R2
      407 CAPTURE                          VAL R5
      408 SETTABLEKS                       R25 R21 K113 ["_renderMoveMeasurementArrow"]
      410 DUPCLOSURE                       R25 K114 [PROTO_18]
      411 CAPTURE                          VAL R8
      412 CAPTURE                          VAL R2
      413 CAPTURE                          VAL R6
      414 SETTABLEKS                       R25 R21 K115 ["_renderHotkeyHelp"]
      416 DUPCLOSURE                       R25 K116 [PROTO_19]
      417 SETTABLEKS                       R25 R21 K117 ["_lastTransformWasLinear"]
      419 DUPCLOSURE                       R25 K118 [PROTO_20]
      420 SETTABLEKS                       R25 R21 K119 ["_getPerpendicularToDirAndCam"]
      422 DUPCLOSURE                       R25 K120 [PROTO_21]
      423 SETTABLEKS                       R25 R21 K121 ["_getMostPerpendicular"]
      425 DUPCLOSURE                       R25 K122 [PROTO_22]
      426 SETTABLEKS                       R25 R21 K123 ["_drawTicks"]
      428 DUPCLOSURE                       R25 K124 [PROTO_24]
      429 CAPTURE                          VAL R11
      430 CAPTURE                          VAL R2
      431 CAPTURE                          VAL R5
      432 CAPTURE                          VAL R19
      433 SETTABLEKS                       R25 R21 K125 ["_renderChosenAxisGuide"]
      435 DUPCLOSURE                       R25 K126 [PROTO_26]
      436 CAPTURE                          VAL R2
      437 CAPTURE                          VAL R5
      438 SETTABLEKS                       R25 R21 K127 ["_renderChosenPlaneGuide"]
      440 DUPCLOSURE                       R25 K128 [PROTO_27]
      441 CAPTURE                          VAL R2
      442 CAPTURE                          VAL R11
      443 CAPTURE                          VAL R19
      444 CAPTURE                          VAL R3
      445 SETTABLEKS                       R25 R21 K129 ["_renderPassiveLaggingHandle"]
      447 DUPCLOSURE                       R25 K130 [PROTO_28]
      448 CAPTURE                          VAL R19
      449 CAPTURE                          VAL R2
      450 CAPTURE                          VAL R7
      451 CAPTURE                          VAL R9
      452 SETTABLEKS                       R25 R21 K131 ["_renderActiveMoveMeasurement"]
      454 DUPCLOSURE                       R25 K132 [PROTO_29]
      455 SETTABLEKS                       R25 R21 K133 ["_updateLaggingHandleChoice"]
      457 DUPCLOSURE                       R25 K134 [PROTO_30]
      458 SETTABLEKS                       R25 R21 K135 ["_getLaggingHandleChoice"]
      460 DUPCLOSURE                       R25 K136 [PROTO_31]
      461 CAPTURE                          VAL R19
      462 CAPTURE                          VAL R2
      463 CAPTURE                          VAL R11
      464 SETTABLEKS                       R25 R21 K137 ["_renderDraggingAxisHandles"]
      466 DUPCLOSURE                       R25 K138 [PROTO_32]
      467 CAPTURE                          VAL R19
      468 CAPTURE                          VAL R2
      469 SETTABLEKS                       R25 R21 K139 ["_renderDraggingAxis"]
      471 DUPCLOSURE                       R25 K140 [PROTO_33]
      472 CAPTURE                          VAL R19
      473 CAPTURE                          VAL R2
      474 CAPTURE                          VAL R12
      475 SETTABLEKS                       R25 R21 K141 ["_renderDraggingPlaneHandles"]
      477 DUPCLOSURE                       R25 K142 [PROTO_34]
      478 CAPTURE                          VAL R19
      479 CAPTURE                          VAL R2
      480 SETTABLEKS                       R25 R21 K143 ["_renderDraggingPlane"]
      482 DUPCLOSURE                       R25 K144 [PROTO_35]
      483 SETTABLEKS                       R25 R21 K145 ["_getGrazingAngleFactor"]
      485 DUPCLOSURE                       R25 K146 [PROTO_36]
      486 CAPTURE                          VAL R19
      487 CAPTURE                          VAL R3
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R11
      490 CAPTURE                          VAL R12
      491 SETTABLEKS                       R25 R21 K147 ["_renderHoveringHandles"]
      493 DUPCLOSURE                       R25 K148 [PROTO_39]
      494 CAPTURE                          VAL R19
      495 CAPTURE                          VAL R2
      496 CAPTURE                          VAL R7
      497 CAPTURE                          VAL R9
      498 SETTABLEKS                       R25 R21 K149 ["_renderMeasurementInputBox"]
      500 DUPCLOSURE                       R25 K150 [PROTO_40]
      501 CAPTURE                          VAL R19
      502 CAPTURE                          VAL R2
      503 SETTABLEKS                       R25 R21 K151 ["_renderPassiveMoveMeasurement"]
      505 DUPCLOSURE                       R25 K152 [PROTO_41]
      506 CAPTURE                          VAL R2
      507 SETTABLEKS                       R25 R21 K153 ["_renderHovering"]
      509 DUPCLOSURE                       R25 K154 [PROTO_42]
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R4
      512 SETTABLEKS                       R25 R21 K155 ["_renderBoundingBox"]
      514 DUPCLOSURE                       R25 K156 [PROTO_43]
      515 CAPTURE                          VAL R2
      516 CAPTURE                          VAL R15
      517 CAPTURE                          VAL R14
      518 CAPTURE                          VAL R13
      519 SETTABLEKS                       R25 R21 K157 ["_renderSummon"]
      521 DUPCLOSURE                       R25 K158 [PROTO_44]
      522 CAPTURE                          VAL R19
      523 SETTABLEKS                       R25 R21 K159 ["_renderHoverOrDrag"]
      525 DUPCLOSURE                       R25 K160 [PROTO_45]
      526 CAPTURE                          VAL R2
      527 SETTABLEKS                       R25 R21 K161 ["render"]
      529 DUPCLOSURE                       R25 K162 [PROTO_46]
      530 SETTABLEKS                       R25 R21 K163 ["selectionChanged"]
      532 DUPCLOSURE                       R25 K164 [PROTO_47]
      533 CAPTURE                          VAL R19
      534 SETTABLEKS                       R25 R21 K165 ["_needsSoftSnaps"]
      536 DUPCLOSURE                       R25 K166 [PROTO_48]
      537 CAPTURE                          VAL R11
      538 CAPTURE                          VAL R19
      539 CAPTURE                          VAL R12
      540 SETTABLEKS                       R25 R21 K167 ["mouseDown"]
      542 DUPCLOSURE                       R25 K168 [PROTO_49]
      543 CAPTURE                          VAL R22
      544 SETTABLEKS                       R25 R21 K169 ["_setupMoveAtCurrentBoundingBox"]
      546 DUPCLOSURE                       R25 K170 [PROTO_50]
      547 SETTABLEKS                       R25 R21 K171 ["_setMidMoveBoundingBox"]
      549 DUPCLOSURE                       R25 K172 [PROTO_51]
      550 CAPTURE                          VAL R16
      551 SETTABLEKS                       R25 R21 K173 ["_getDistanceAlongAxis"]
      553 DUPCLOSURE                       R25 K174 [PROTO_52]
      554 SETTABLEKS                       R25 R21 K175 ["_getSnappedDelta"]
      556 DUPCLOSURE                       R25 K176 [PROTO_53]
      557 CAPTURE                          VAL R12
      558 SETTABLEKS                       R25 R21 K177 ["_mouseDragPlane"]
      560 DUPCLOSURE                       R25 K178 [PROTO_54]
      561 CAPTURE                          VAL R19
      562 CAPTURE                          VAL R17
      563 SETTABLEKS                       R25 R21 K179 ["_mouseDragAxis"]
      565 DUPCLOSURE                       R25 K180 [PROTO_55]
      566 CAPTURE                          VAL R19
      567 SETTABLEKS                       R25 R21 K181 ["mouseDrag"]
      569 DUPCLOSURE                       R25 K182 [PROTO_56]
      570 CAPTURE                          VAL R19
      571 SETTABLEKS                       R25 R21 K183 ["mouseUp"]
      573 DUPCLOSURE                       R25 K184 [PROTO_57]
      574 CAPTURE                          VAL R19
      575 CAPTURE                          VAL R22
      576 CAPTURE                          VAL R3
      577 CAPTURE                          VAL R23
      578 SETTABLEKS                       R25 R21 K185 ["_updateHandles"]
      580 GETIMPORT                        R25 K31 [table.freeze]
      582 NEWTABLE                         R26 2 0
      584 GETIMPORT                        R27 K189 [Enum.KeyCode.RightShift]
      586 LOADB                            R28 1
      587 SETTABLE                         R28 R26 R27
      588 GETIMPORT                        R27 K191 [Enum.KeyCode.LeftShift]
      590 LOADB                            R28 1
      591 SETTABLE                         R28 R26 R27
      592 CALL                             R25 1 1
      593 GETIMPORT                        R26 K31 [table.freeze]
      595 NEWTABLE                         R27 8 0
      597 GETIMPORT                        R28 K193 [Enum.KeyCode.KeypadSeven]
      599 LOADK                            R29 K35 ["PlusY"]
      600 SETTABLE                         R29 R27 R28
      601 GETIMPORT                        R28 K195 [Enum.KeyCode.KeypadOne]
      603 LOADK                            R29 K34 ["MinusY"]
      604 SETTABLE                         R29 R27 R28
      605 GETIMPORT                        R28 K197 [Enum.KeyCode.KeypadFour]
      607 LOADK                            R29 K37 ["PlusX"]
      608 SETTABLE                         R29 R27 R28
      609 GETIMPORT                        R28 K199 [Enum.KeyCode.KeypadSix]
      611 LOADK                            R29 K36 ["MinusX"]
      612 SETTABLE                         R29 R27 R28
      613 GETIMPORT                        R28 K201 [Enum.KeyCode.KeypadEight]
      615 LOADK                            R29 K33 ["PlusZ"]
      616 SETTABLE                         R29 R27 R28
      617 GETIMPORT                        R28 K203 [Enum.KeyCode.KeypadTwo]
      619 LOADK                            R29 K32 ["MinusZ"]
      620 SETTABLE                         R29 R27 R28
      621 CALL                             R26 1 1
      622 DUPCLOSURE                       R27 K204 [PROTO_58]
      623 CAPTURE                          VAL R25
      624 CAPTURE                          VAL R26
      625 SETTABLEKS                       R27 R21 K205 ["keyDown"]
      627 DUPCLOSURE                       R27 K206 [PROTO_59]
      628 CAPTURE                          VAL R25
      629 SETTABLEKS                       R27 R21 K207 ["keyUp"]
      631 DUPCLOSURE                       R27 K208 [PROTO_60]
      632 SETTABLEKS                       R27 R21 K209 ["getPriority"]
      634 RETURN                           R21 1
