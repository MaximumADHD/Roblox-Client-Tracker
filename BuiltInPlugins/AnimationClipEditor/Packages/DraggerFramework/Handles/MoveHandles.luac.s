PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 NEWTABLE                         R4 0 0
        4 SETTABLEKS                       R4 R3 K0 ["_handles"]
        6 MOVE                             R4 R1
        7 JUMPIF                           R4 ; [+7]
        8 DUPTABLE                         R4 K3 [{"MustPositionAtPivot", "Summonable"}]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K1 ["MustPositionAtPivot"]
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K2 ["Summonable"]
       15 SETTABLEKS                       R4 R3 K4 ["_props"]
       17 SETTABLEKS                       R0 R3 K5 ["_draggerContext"]
       19 SETTABLEKS                       R2 R3 K6 ["_implementation"]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K7 ["_tabKeyDown"]
       24 GETUPVAL                         R4 0
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K8 ["new"]
       30 MOVE                             R5 R0
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K9 ["_softSnapper"]
       34 GETUPVAL                         R6 2
       35 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       37 MOVE                             R5 R3
       38 GETIMPORT                        R4 K11 [setmetatable]
       40 CALL                             R4 2 1
       41 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_draggingHandleId"]
        2 JUMPIF                           R3 ; [+44]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+6]
        6 GETTABLEKS                       R3 R0 K1 ["_tabKeyDown"]
        8 JUMPIF                           R3 ; [+3]
        9 NAMECALL                         R3 R0 K2 ["_endSummon"]
       11 CALL                             R3 1 0
       12 NAMECALL                         R3 R2 K3 ["getBoundingBox"]
       14 CALL                             R3 1 3
       15 GETIMPORT                        R6 K6 [CFrame.new]
       17 MINUS                            R7 R4
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R0 K7 ["_basisOffset"]
       21 DUPTABLE                         R6 K9 [{"Size", "CFrame"}]
       22 SETTABLEKS                       R5 R6 K8 ["Size"]
       24 GETIMPORT                        R8 K6 [CFrame.new]
       26 MOVE                             R9 R4
       27 CALL                             R8 1 1
       28 MUL                              R7 R3 R8
       29 SETTABLEKS                       R7 R6 K4 ["CFrame"]
       31 SETTABLEKS                       R6 R0 K10 ["_boundingBox"]
       33 SETTABLEKS                       R1 R0 K11 ["_draggerToolModel"]
       35 NAMECALL                         R6 R1 K12 ["getSchema"]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R0 K13 ["_schema"]
       40 NAMECALL                         R6 R1 K14 ["getSelectionWrapper"]
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R0 K15 ["_selectionWrapper"]
       45 SETTABLEKS                       R2 R0 K16 ["_selectionInfo"]
       47 NAMECALL                         R3 R0 K17 ["_updateHandles"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0

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
       31 JUMPIFNOT                        R4 ; [+21]
       32 GETTABLEKS                       R6 R1 K9 ["Origin"]
       34 GETTABLEKS                       R9 R1 K10 ["Direction"]
       36 GETTABLEKS                       R8 R9 K11 ["Unit"]
       38 MUL                              R7 R8 R4
       39 ADD                              R5 R6 R7
       40 GETIMPORT                        R6 K14 [CFrame.new]
       42 GETTABLEKS                       R8 R0 K15 ["_boundingBox"]
       44 GETTABLEKS                       R7 R8 K12 ["CFrame"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K16 ["PointToObjectSpace"]
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 1
       51 SETTABLEKS                       R6 R0 K17 ["_summonBasisOffset"]
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["_summonBasisOffset"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["_summonWasSnapped"]
       18 LOADB                            R1 0
       19 SETTABLEKS                       R1 R0 K5 ["_summonWasSnappedToSurface"]
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_summonOffsetInBasis"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K4 ["_laggingHandleId"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Wrong flag branching"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K3 ["_summonOffsetInBasis"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K4 ["_laggingHandleId"]
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["_summonOffsetInBasis"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R3 R0 K1 ["_basisOffset"]
        8 MUL                              R2 R3 R1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K1 ["_basisOffset"]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R1 R0 K2 ["_summonBasisOffset"]
       15 JUMPIF                           R1 ; [+2]
       16 GETTABLEKS                       R1 R0 K1 ["_basisOffset"]
       18 RETURN                           R1 1

PROTO_7:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_8:
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
       21 MOVE                             R5 R3
       22 MOVE                             R6 R4
       23 LOADB                            R7 1
       24 RETURN                           R5 3

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_lastDelta"]
        2 SUB                              R2 R1 R3
        3 SETTABLEKS                       R1 R0 K0 ["_lastDelta"]
        5 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R4 K2 ["_boundsChangedTracker"]
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
       40 GETTABLEKS                       R4 R0 K15 ["_schema"]
       42 GETTABLEKS                       R3 R4 K16 ["addUndoWaypoint"]
       44 GETTABLEKS                       R4 R0 K17 ["_draggerContext"]
       46 LOADK                            R5 K18 ["Precise Axis Move Selection"]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
       50 GETTABLEKS                       R3 R4 K2 ["_boundsChangedTracker"]
       52 NAMECALL                         R3 R3 K19 ["install"]
       54 CALL                             R3 1 0
       55 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       57 NAMECALL                         R3 R3 K20 ["_updateSelectionInfo"]
       59 CALL                             R3 1 0
       60 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       62 NAMECALL                         R3 R3 K21 ["_scheduleRender"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_10:
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
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R6 R0 K6 ["_laggingRelativeToId"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R3 R4 K7 ["Opposite"]
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
       44 GETTABLEKS                       R6 R0 K2 ["_handles"]
       46 GETTABLE                         R5 R6 R1
       47 GETTABLEKS                       R4 R5 K10 ["Axis"]
       49 GETTABLEKS                       R3 R4 K11 ["LookVector"]
       51 SETTABLEKS                       R3 R0 K12 ["_axis"]
       53 GETTABLEKS                       R6 R0 K9 ["_lastDelta"]
       55 ADD                              R5 R6 R2
       56 NAMECALL                         R3 R0 K13 ["_doMeasuredMove"]
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R1 R1 K1 ["useBoundingBoxMoveHandles"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETTABLEKS                       R2 R0 K2 ["_summonOffsetInBasis"]
       11 NOT                              R1 R2
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R3 R0 K3 ["_props"]
       15 GETTABLEKS                       R2 R3 K4 ["MustPositionAtPivot"]
       17 NOT                              R1 R2
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
       21 NAMECALL                         R1 R1 K1 ["useBoundingBoxMoveHandles"]
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+9]
       25 GETTABLEKS                       R2 R0 K5 ["_summonBasisOffset"]
       27 NOT                              R1 R2
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETTABLEKS                       R3 R0 K3 ["_props"]
       31 GETTABLEKS                       R2 R3 K4 ["MustPositionAtPivot"]
       33 NOT                              R1 R2
       34 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldPartSnap"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLE                         R2 R3 R1
        3 LOADK                            R3 K1 [-∞]
        4 LOADK                            R4 K2 [∞]
        5 LOADNIL                          R5
        6 GETTABLEKS                       R6 R0 K3 ["_draggerContext"]
        8 NAMECALL                         R6 R6 K4 ["getCameraCFrame"]
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R11 R2 K5 ["Axis"]
       13 GETTABLEKS                       R10 R11 K6 ["LookVector"]
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
       39 GETTABLEKS                       R17 R12 K5 ["Axis"]
       41 GETTABLEKS                       R16 R17 K6 ["LookVector"]
       43 NAMECALL                         R14 R6 K7 ["VectorToObjectSpace"]
       45 CALL                             R14 2 1
       46 GETIMPORT                        R15 K10 [Vector2.new]
       48 GETTABLEKS                       R16 R14 K11 ["X"]
       50 GETTABLEKS                       R17 R14 K12 ["Y"]
       52 CALL                             R15 2 1
       53 MOVE                             R13 R15
       54 GETTABLEKS                       R20 R12 K5 ["Axis"]
       56 GETTABLEKS                       R19 R20 K15 ["Position"]
       58 GETTABLEKS                       R22 R12 K5 ["Axis"]
       60 GETTABLEKS                       R21 R22 K6 ["LookVector"]
       62 MULK                             R20 R21 K16 [0.01]
       63 ADD                              R18 R19 R20
       64 NAMECALL                         R16 R6 K17 ["PointToObjectSpace"]
       66 CALL                             R16 2 1
       67 GETIMPORT                        R17 K10 [Vector2.new]
       69 GETTABLEKS                       R18 R16 K11 ["X"]
       71 GETTABLEKS                       R19 R16 K12 ["Y"]
       73 CALL                             R17 2 1
       74 MOVE                             R15 R17
       75 GETTABLEKS                       R14 R15 K18 ["Magnitude"]
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

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_handles"]
        2 GETTABLEKS                       R3 R0 K1 ["_laggingRelativeToId"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R3 R0 K0 ["_handles"]
        7 GETTABLEKS                       R4 R0 K2 ["_laggingHandleId"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R4 R2 K3 ["Axis"]
       12 GETTABLEKS                       R6 R0 K4 ["_axis"]
       14 GETTABLEKS                       R7 R0 K5 ["_lastDelta"]
       16 MUL                              R5 R6 R7
       17 SUB                              R3 R4 R5
       18 GETTABLEKS                       R4 R0 K6 ["_draggerContext"]
       20 GETTABLEKS                       R6 R3 K7 ["Position"]
       22 NAMECALL                         R4 R4 K8 ["getHandleScale"]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R6 R1 K3 ["Axis"]
       27 GETTABLEKS                       R5 R6 K9 ["LookVector"]
       29 GETTABLEKS                       R6 R3 K9 ["LookVector"]
       31 GETTABLEKS                       R8 R1 K3 ["Axis"]
       33 GETTABLEKS                       R7 R8 K7 ["Position"]
       35 LOADNIL                          R8
       36 NAMECALL                         R9 R0 K10 ["_useBoundingBoxMoveHandles"]
       38 CALL                             R9 1 1
       39 JUMPIFNOT                        R9 ; [+10]
       40 LOADK                            R10 K11 [2.5]
       41 MUL                              R9 R10 R4
       42 GETTABLEKS                       R10 R2 K12 ["AxisOffset"]
       44 ADD                              R8 R9 R10
       45 GETTABLEKS                       R10 R1 K12 ["AxisOffset"]
       47 MUL                              R9 R5 R10
       48 SUB                              R7 R7 R9
       49 JUMP                             ; [+6]
       50 LOADK                            R10 K13 [3.5]
       51 GETTABLEKS                       R12 R2 K15 ["Outset"]
       53 ORK                              R11 R12 K14 [0]
       54 ADD                              R9 R10 R11
       55 MUL                              R8 R9 R4
       56 MUL                              R9 R6 R8
       57 ADD                              R10 R7 R9
       58 GETTABLEKS                       R14 R0 K5 ["_lastDelta"]
       60 MUL                              R13 R5 R14
       61 SUB                              R12 R7 R13
       62 ADD                              R11 R12 R9
       63 GETTABLEKS                       R12 R0 K5 ["_lastDelta"]
       65 LOADN                            R13 0
       66 JUMPIFNOTLT                      R12 R13 ; [+4]
       68 MOVE                             R12 R11
       69 MOVE                             R11 R10
       70 MOVE                             R10 R12
       71 GETTABLEKS                       R12 R0 K6 ["_draggerContext"]
       73 GETTABLEKS                       R15 R1 K3 ["Axis"]
       75 GETTABLEKS                       R14 R15 K7 ["Position"]
       77 NAMECALL                         R12 R12 K8 ["getHandleScale"]
       79 CALL                             R12 2 1
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K16 ["getHandleDimensionForScale"]
       83 MOVE                             R14 R12
       84 GETTABLEKS                       R15 R1 K15 ["Outset"]
       86 CALL                             R13 2 2
       87 GETUPVAL                         R15 1
       88 CALL                             R15 0 1
       89 JUMPIFNOT                        R15 ; [+7]
       90 GETTABLEKS                       R15 R0 K17 ["_draggingHandleFrac"]
       92 JUMPIFNOTEQKNIL                  R15 ; [+4]
       94 LOADK                            R15 K18 [0.5]
       95 SETTABLEKS                       R15 R0 K17 ["_draggingHandleFrac"]
       97 GETTABLEKS                       R16 R0 K17 ["_draggingHandleFrac"]
       99 LOADK                            R17 K19 [0.4]
      100 LOADN                            R18 1
      101 FASTCALL                         MATH_CLAMP ; [+2]
      102 GETIMPORT                        R15 K22 [math.clamp]
      104 CALL                             R15 3 1
      105 MUL                              R20 R15 R14
      106 ADD                              R19 R13 R20
      107 MUL                              R18 R5 R19
      108 ADD                              R17 R7 R18
      109 LOADK                            R19 K18 [0.5]
      110 MUL                              R18 R19 R9
      111 ADD                              R16 R17 R18
      112 GETTABLEKS                       R17 R0 K6 ["_draggerContext"]
      114 MOVE                             R19 R16
      115 NAMECALL                         R17 R17 K23 ["worldToViewportPoint"]
      117 CALL                             R17 2 2
      118 LOADNIL                          R19
      119 JUMPIFNOT                        R18 ; [+8]
      120 GETIMPORT                        R20 K26 [UDim2.fromOffset]
      122 GETTABLEKS                       R21 R17 K27 ["X"]
      124 GETTABLEKS                       R22 R17 K28 ["Y"]
      126 CALL                             R20 2 1
      127 MOVE                             R19 R20
      128 GETIMPORT                        R20 K31 [table.freeze]
      130 DUPTABLE                         R21 K39 [{"from", "to", "direction", "perpendicularDirection", "scale", "viewportPosition", "inBounds"}]
      131 SETTABLEKS                       R10 R21 K32 ["from"]
      133 SETTABLEKS                       R11 R21 K33 ["to"]
      135 SETTABLEKS                       R5 R21 K34 ["direction"]
      137 SETTABLEKS                       R6 R21 K35 ["perpendicularDirection"]
      139 SETTABLEKS                       R4 R21 K36 ["scale"]
      141 SETTABLEKS                       R19 R21 K37 ["viewportPosition"]
      143 SETTABLEKS                       R18 R21 K38 ["inBounds"]
      145 CALL                             R20 1 -1
      146 RETURN                           R20 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R1 R3 K0 ["from"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["to"]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R0 K2 ["AddLine"]
       10 CALL                             R3 3 0
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["scale"]
       14 MULK                             R3 R4 K3 [0.3]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K5 ["_lastDelta"]
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K8 [math.abs]
       21 CALL                             R4 1 1
       22 MULK                             R5 R3 K9 [3]
       23 JUMPIFNOTLT                      R5 R4 ; [+40]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K10 ["perpendicularDirection"]
       28 MUL                              R4 R5 R3
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K11 ["direction"]
       32 MUL                              R5 R6 R3
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K5 ["_lastDelta"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"AlwaysOnTop", "Color3", "Render"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K1 ["AlwaysOnTop"]
        8 GETTABLEKS                       R5 R0 K5 ["_draggerContext"]
       10 NAMECALL                         R5 R5 K6 ["getChosenColor"]
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K2 ["Color3"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R5 R4 K3 ["Render"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 LOADK                            R3 K1 ["HotkeyUsageHidden"]
        3 NAMECALL                         R1 R1 K2 ["getSetting"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+32]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["addGridSnap"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["addSummonHandles"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K5 ["addHelp"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K6 ["createElement"]
       29 GETUPVAL                         R3 2
       30 DUPTABLE                         R4 K9 [{"DraggerContext", "HotkeyList"}]
       31 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       33 SETTABLEKS                       R5 R4 K7 ["DraggerContext"]
       35 SETTABLEKS                       R1 R4 K8 ["HotkeyList"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 ADD                              R1 R2 R3
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R7 3
        5 MUL                              R6 R7 R1
        6 ADD                              R4 R5 R6
        7 GETUPVAL                         R6 2
        8 GETUPVAL                         R8 3
        9 MULK                             R7 R8 K0 [10000]
       10 ADD                              R5 R6 R7
       11 NAMECALL                         R2 R0 K1 ["AddLine"]
       13 CALL                             R2 3 0
       14 GETUPVAL                         R5 2
       15 GETUPVAL                         R7 3
       16 MULK                             R6 R7 K0 [10000]
       17 SUB                              R4 R5 R6
       18 GETUPVAL                         R5 2
       19 NAMECALL                         R2 R0 K1 ["AddLine"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_handles"]
        2 GETTABLE                         R2 R3 R1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["getHandleDimensionForScale"]
        6 GETTABLEKS                       R4 R2 K2 ["Scale"]
        8 GETTABLEKS                       R5 R2 K3 ["Outset"]
       10 CALL                             R3 2 2
       11 GETTABLEKS                       R6 R2 K4 ["Axis"]
       13 GETTABLEKS                       R5 R6 K5 ["Position"]
       15 GETTABLEKS                       R7 R2 K4 ["Axis"]
       17 GETTABLEKS                       R6 R7 K6 ["LookVector"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K7 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K11 [{"AlwaysOnTop", "Color3", "Render"}]
       24 LOADB                            R10 0
       25 SETTABLEKS                       R10 R9 K8 ["AlwaysOnTop"]
       27 GETTABLEKS                       R10 R0 K12 ["_draggerContext"]
       29 NAMECALL                         R10 R10 K13 ["getGridColor"]
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K9 ["Color3"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R10 R9 K10 ["Render"]
       41 CALL                             R7 2 -1
       42 RETURN                           R7 -1

PROTO_22:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 NAMECALL                         R2 R0 K1 ["_getLaggingHandleChoice"]
        6 CALL                             R2 1 3
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K10 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Thin"}]
       12 SETTABLEKS                       R2 R7 K3 ["Axis"]
       14 JUMPIF                           R1 ; [+3]
       15 GETTABLEKS                       R8 R4 K4 ["AxisOffset"]
       17 JUMPIF                           R8 ; [+1]
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R7 K4 ["AxisOffset"]
       21 GETTABLEKS                       R8 R4 K5 ["Outset"]
       23 SETTABLEKS                       R8 R7 K5 ["Outset"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K11 ["makeDimmed"]
       28 GETTABLEKS                       R9 R4 K6 ["Color"]
       30 CALL                             R8 1 1
       31 SETTABLEKS                       R8 R7 K6 ["Color"]
       33 SETTABLEKS                       R3 R7 K7 ["Scale"]
       35 LOADB                            R8 1
       36 SETTABLEKS                       R8 R7 K8 ["AlwaysOnTop"]
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K9 ["Thin"]
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        2 JUMPIFNOT                        R1 ; [+31]
        3 NAMECALL                         R1 R0 K1 ["_getMoveMeasurementArrowMetrics"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["createFragment"]
        9 DUPTABLE                         R3 K4 [{"MoveMeasurementValue"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K5 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K9 [{"DraggerContext", "Position", "Value"}]
       15 GETTABLEKS                       R7 R0 K10 ["_draggerContext"]
       17 SETTABLEKS                       R7 R6 K6 ["DraggerContext"]
       19 GETTABLEKS                       R7 R1 K11 ["viewportPosition"]
       21 SETTABLEKS                       R7 R6 K7 ["Position"]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R8 R0 K12 ["_lastDelta"]
       26 CALL                             R7 1 1
       27 SETTABLEKS                       R7 R6 K8 ["Value"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K3 ["MoveMeasurementValue"]
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1
       34 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R4 R0 K0 ["_handles"]
        4 GETTABLE                         R3 R4 R1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K11 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "Tail", "TailScale", "AlwaysOnTop", "Hovered"}]
       10 GETTABLEKS                       R7 R3 K2 ["Axis"]
       12 SETTABLEKS                       R7 R6 K2 ["Axis"]
       14 GETTABLEKS                       R7 R3 K3 ["AxisOffset"]
       16 SETTABLEKS                       R7 R6 K3 ["AxisOffset"]
       18 GETTABLEKS                       R7 R3 K4 ["Outset"]
       20 SETTABLEKS                       R7 R6 K4 ["Outset"]
       22 GETTABLEKS                       R7 R3 K5 ["Color"]
       24 SETTABLEKS                       R7 R6 K5 ["Color"]
       26 GETTABLEKS                       R7 R3 K6 ["Scale"]
       28 SETTABLEKS                       R7 R6 K6 ["Scale"]
       30 GETTABLEKS                       R7 R0 K12 ["_lastDelta"]
       32 SETTABLEKS                       R7 R6 K7 ["Tail"]
       34 GETTABLEKS                       R7 R0 K13 ["_draggerContext"]
       36 GETTABLEKS                       R11 R3 K2 ["Axis"]
       38 GETTABLEKS                       R10 R11 K14 ["Position"]
       40 GETTABLEKS                       R12 R0 K15 ["_axis"]
       42 GETTABLEKS                       R13 R0 K12 ["_lastDelta"]
       44 MUL                              R11 R12 R13
       45 SUB                              R9 R10 R11
       46 NAMECALL                         R7 R7 K16 ["getHandleScale"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K8 ["TailScale"]
       51 LOADB                            R7 1
       52 SETTABLEKS                       R7 R6 K9 ["AlwaysOnTop"]
       54 LOADB                            R7 0
       55 SETTABLEKS                       R7 R6 K10 ["Hovered"]
       57 CALL                             R4 2 1
       58 SETTABLE                         R4 R2 R1
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K17 ["createFragment"]
       62 MOVE                             R5 R2
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R2 K1 [assert]
        5 CALL                             R2 -1 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R0 K2 ["_updateLaggingHandleChoice"]
        9 CALL                             R2 2 0
       10 NAMECALL                         R2 R0 K3 ["_lastTransformWasLinear"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["createFragment"]
       16 DUPTABLE                         R4 K11 [{"ChosenAxisDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
       17 JUMPIFNOT                        R2 ; [+5]
       18 MOVE                             R7 R1
       19 NAMECALL                         R5 R0 K12 ["_renderChosenAxisGuide"]
       21 CALL                             R5 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K5 ["ChosenAxisDisplay"]
       26 NAMECALL                         R6 R0 K13 ["_hasSoftSnap"]
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+7]
       30 GETTABLEKS                       R5 R0 K14 ["_softSnapper"]
       32 LOADB                            R7 1
       33 NAMECALL                         R5 R5 K15 ["render"]
       35 CALL                             R5 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K6 ["SoftSnaps"]
       40 GETTABLEKS                       R5 R0 K16 ["_implementation"]
       42 GETTABLEKS                       R7 R0 K17 ["_lastGlobalTransformForRender"]
       44 NAMECALL                         R5 R5 K15 ["render"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K7 ["ImplementationRendered"]
       49 NAMECALL                         R5 R0 K18 ["_renderHotkeyHelp"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K8 ["HotkeyHelp"]
       54 JUMPIFNOT                        R2 ; [+4]
       55 NAMECALL                         R5 R0 K19 ["_renderActiveMoveMeasurement"]
       57 CALL                             R5 1 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R5
       60 SETTABLEKS                       R5 R4 K9 ["MoveMeasurement"]
       62 MOVE                             R7 R1
       63 NAMECALL                         R5 R0 K20 ["_renderDraggingAxisHandles"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K10 ["Handles"]
       68 CALL                             R3 1 -1
       69 RETURN                           R3 -1

PROTO_28:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R4 R0 K0 ["_useBoundingBoxMoveHandles"]
        4 CALL                             R4 1 1
        5 NOT                              R3 R4
        6 GETTABLEKS                       R4 R0 K1 ["_handles"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["Color"]
       13 JUMPIFEQ                         R7 R1 ; [+2]
       15 LOADB                            R10 0 +1
       16 LOADB                            R10 1
       17 JUMPIF                           R10 ; [+6]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K3 ["makeDimmed"]
       21 MOVE                             R12 R9
       22 CALL                             R11 1 1
       23 MOVE                             R9 R11
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R11 R12 K4 ["createElement"]
       27 GETUPVAL                         R12 2
       28 DUPTABLE                         R13 K11 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
       29 GETTABLEKS                       R14 R8 K5 ["Axis"]
       31 SETTABLEKS                       R14 R13 K5 ["Axis"]
       33 JUMPIFNOT                        R3 ; [+3]
       34 GETTABLEKS                       R14 R8 K6 ["AxisOffset"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R14
       38 SETTABLEKS                       R14 R13 K6 ["AxisOffset"]
       40 GETTABLEKS                       R14 R8 K7 ["Outset"]
       42 SETTABLEKS                       R14 R13 K7 ["Outset"]
       44 SETTABLEKS                       R9 R13 K2 ["Color"]
       46 GETTABLEKS                       R14 R8 K8 ["Scale"]
       48 SETTABLEKS                       R14 R13 K8 ["Scale"]
       50 LOADB                            R14 1
       51 SETTABLEKS                       R14 R13 K9 ["AlwaysOnTop"]
       53 SETTABLEKS                       R10 R13 K10 ["Hovered"]
       55 CALL                             R11 2 1
       56 SETTABLE                         R11 R2 R7
       57 FORGLOOP                         R4 2 ; [-47]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R4 R5 K12 ["createFragment"]
       62 MOVE                             R5 R2
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"DraggerContext", "Position", "Value", "OnChanged", "OnHidden"}]
        5 GETTABLEKS                       R5 R0 K7 ["_draggerContext"]
        7 SETTABLEKS                       R5 R4 K1 ["DraggerContext"]
        9 GETTABLEKS                       R5 R1 K8 ["viewportPosition"]
       11 SETTABLEKS                       R5 R4 K2 ["Position"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R0 K9 ["_lastDelta"]
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R5 R4 K3 ["Value"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R5 R4 K4 ["OnChanged"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K5 ["OnHidden"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 NAMECALL                         R1 R0 K1 ["_getMoveMeasurementArrowMetrics"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["createFragment"]
        9 DUPTABLE                         R3 K4 [{"ValueInput"}]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R0 K5 ["_renderMeasurementInputBox"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K3 ["ValueInput"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createFragment"]
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

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+41]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["createElement"]
       17 GETUPVAL                         R2 1
       18 DUPTABLE                         R3 K10 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
       19 GETTABLEKS                       R5 R0 K11 ["_boundingBox"]
       21 GETTABLEKS                       R4 R5 K5 ["CFrame"]
       23 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       25 GETTABLEKS                       R5 R0 K11 ["_boundingBox"]
       27 GETTABLEKS                       R4 R5 K6 ["Size"]
       29 SETTABLEKS                       R4 R3 K6 ["Size"]
       31 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       33 NAMECALL                         R4 R4 K13 ["getSelectionBoxColor"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K7 ["Color"]
       38 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       40 NAMECALL                         R4 R4 K14 ["getHoverThickness"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K8 ["LineThickness"]
       45 GETTABLEKS                       R4 R0 K12 ["_draggerContext"]
       47 NAMECALL                         R4 R4 K15 ["getGuiParent"]
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K9 ["Container"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1
       54 RETURN                           R0 0

PROTO_35:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+118]
        5 GETTABLEKS                       R3 R0 K1 ["_props"]
        7 GETTABLEKS                       R2 R3 K2 ["Summonable"]
        9 JUMPIFNOT                        R2 ; [+113]
       10 NEWTABLE                         R2 4 0
       12 GETTABLEKS                       R3 R0 K3 ["_summonOffsetInBasis"]
       14 JUMPIFNOT                        R3 ; [+33]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K9 [{"DraggerContext", "CFrame", "Dragging", "Hovered"}]
       20 GETTABLEKS                       R6 R0 K10 ["_draggerContext"]
       22 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       24 GETTABLEKS                       R8 R0 K11 ["_boundingBox"]
       26 GETTABLEKS                       R7 R8 K6 ["CFrame"]
       28 NAMECALL                         R8 R0 K12 ["_getBasisOffset"]
       30 CALL                             R8 1 1
       31 MUL                              R6 R7 R8
       32 SETTABLEKS                       R6 R5 K6 ["CFrame"]
       34 GETTABLEKS                       R7 R0 K13 ["_draggingHandleId"]
       36 JUMPIFNOTEQKNIL                  R7 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K7 ["Dragging"]
       42 LOADB                            R6 0
       43 SETTABLEKS                       R6 R5 K8 ["Hovered"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K14 ["SummonSnap"]
       48 GETTABLEKS                       R3 R0 K13 ["_draggingHandleId"]
       50 JUMPIF                           R3 ; [+66]
       51 GETTABLEKS                       R3 R0 K3 ["_summonOffsetInBasis"]
       53 JUMPIFNOT                        R3 ; [+13]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R3 R4 K4 ["createElement"]
       57 GETUPVAL                         R4 2
       58 DUPTABLE                         R5 K15 [{"DraggerContext"}]
       59 GETTABLEKS                       R6 R0 K10 ["_draggerContext"]
       61 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       63 CALL                             R3 2 1
       64 SETTABLEKS                       R3 R2 K16 ["SummonHandlesHider"]
       66 JUMP                             ; [+50]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R3 R4 K17 ["hasSeenEnough"]
       70 GETTABLEKS                       R4 R0 K10 ["_draggerContext"]
       72 CALL                             R3 1 1
       73 JUMPIF                           R3 ; [+43]
       74 GETTABLEKS                       R6 R0 K11 ["_boundingBox"]
       76 GETTABLEKS                       R5 R6 K6 ["CFrame"]
       78 GETTABLEKS                       R6 R0 K18 ["_basisOffset"]
       80 MUL                              R4 R5 R6
       81 GETTABLEKS                       R3 R4 K19 ["Position"]
       83 GETTABLEKS                       R4 R0 K10 ["_draggerContext"]
       85 MOVE                             R6 R3
       86 NAMECALL                         R4 R4 K20 ["worldToViewportPoint"]
       88 CALL                             R4 2 2
       89 GETTABLEKS                       R6 R4 K21 ["Z"]
       91 LOADN                            R7 0
       92 JUMPIFNOTLT                      R7 R6 ; [+24]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R6 R7 K4 ["createElement"]
       97 GETUPVAL                         R7 3
       98 DUPTABLE                         R8 K23 [{"Position", "InView", "DraggerContext"}]
       99 GETIMPORT                        R9 K26 [Vector2.new]
      101 GETTABLEKS                       R10 R4 K27 ["X"]
      103 GETTABLEKS                       R11 R4 K28 ["Y"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K19 ["Position"]
      108 SETTABLEKS                       R5 R8 K22 ["InView"]
      110 GETTABLEKS                       R9 R0 K10 ["_draggerContext"]
      112 SETTABLEKS                       R9 R8 K5 ["DraggerContext"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R2 K29 ["SummonHandlesNote"]
      117 GETUPVAL                         R4 0
      118 GETTABLEKS                       R3 R4 K30 ["createFragment"]
      120 MOVE                             R4 R2
      121 CALL                             R3 1 -1
      122 RETURN                           R3 -1
      123 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R3 R0 K1 ["_handles"]
        5 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETTABLEKS                       R5 R0 K0 ["_draggingHandleId"]
       11 NAMECALL                         R3 R0 K2 ["_renderDraggingAxis"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K3 ["_renderHovering"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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

PROTO_38:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R0 K0 ["renderNEW"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 NEWTABLE                         R2 8 0
       10 NAMECALL                         R4 R0 K1 ["_useBoundingBoxMoveHandles"]
       12 CALL                             R4 1 1
       13 NOT                              R3 R4
       14 GETTABLEKS                       R4 R0 K2 ["_draggingHandleId"]
       16 JUMPIFNOT                        R4 ; [+111]
       17 GETTABLEKS                       R5 R0 K3 ["_handles"]
       19 GETTABLEKS                       R6 R0 K2 ["_draggingHandleId"]
       21 GETTABLE                         R4 R5 R6
       22 JUMPIFNOT                        R4 ; [+105]
       23 GETTABLEKS                       R5 R0 K3 ["_handles"]
       25 GETTABLEKS                       R6 R0 K2 ["_draggingHandleId"]
       27 GETTABLE                         R4 R5 R6
       28 GETTABLEKS                       R5 R0 K2 ["_draggingHandleId"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K4 ["createElement"]
       33 GETUPVAL                         R7 2
       34 DUPTABLE                         R8 K12 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
       35 GETTABLEKS                       R9 R4 K5 ["Axis"]
       37 SETTABLEKS                       R9 R8 K5 ["Axis"]
       39 JUMPIF                           R3 ; [+3]
       40 GETTABLEKS                       R9 R4 K6 ["AxisOffset"]
       42 JUMPIF                           R9 ; [+1]
       43 LOADNIL                          R9
       44 SETTABLEKS                       R9 R8 K6 ["AxisOffset"]
       46 GETTABLEKS                       R9 R4 K7 ["Outset"]
       48 SETTABLEKS                       R9 R8 K7 ["Outset"]
       50 GETTABLEKS                       R9 R4 K8 ["Color"]
       52 SETTABLEKS                       R9 R8 K8 ["Color"]
       54 GETTABLEKS                       R9 R4 K9 ["Scale"]
       56 SETTABLEKS                       R9 R8 K9 ["Scale"]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K10 ["AlwaysOnTop"]
       61 LOADB                            R9 0
       62 SETTABLEKS                       R9 R8 K11 ["Hovered"]
       64 CALL                             R6 2 1
       65 SETTABLE                         R6 R2 R5
       66 GETIMPORT                        R5 K14 [pairs]
       68 GETTABLEKS                       R6 R0 K3 ["_handles"]
       70 CALL                             R5 1 3
       71 FORGPREP_NEXT                    R5
       72 GETTABLEKS                       R10 R0 K2 ["_draggingHandleId"]
       74 JUMPIFEQ                         R8 R10 ; [+41]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R10 R11 K4 ["createElement"]
       79 GETUPVAL                         R11 2
       80 DUPTABLE                         R12 K16 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Thin"}]
       81 GETTABLEKS                       R13 R9 K5 ["Axis"]
       83 SETTABLEKS                       R13 R12 K5 ["Axis"]
       85 JUMPIF                           R3 ; [+3]
       86 GETTABLEKS                       R13 R9 K6 ["AxisOffset"]
       88 JUMPIF                           R13 ; [+1]
       89 LOADNIL                          R13
       90 SETTABLEKS                       R13 R12 K6 ["AxisOffset"]
       92 GETTABLEKS                       R13 R9 K7 ["Outset"]
       94 SETTABLEKS                       R13 R12 K7 ["Outset"]
       96 GETUPVAL                         R14 3
       97 GETTABLEKS                       R13 R14 K17 ["makeDimmed"]
       99 GETTABLEKS                       R14 R9 K8 ["Color"]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K8 ["Color"]
      104 GETTABLEKS                       R13 R9 K9 ["Scale"]
      106 SETTABLEKS                       R13 R12 K9 ["Scale"]
      108 LOADB                            R13 1
      109 SETTABLEKS                       R13 R12 K10 ["AlwaysOnTop"]
      111 LOADB                            R13 1
      112 SETTABLEKS                       R13 R12 K15 ["Thin"]
      114 CALL                             R10 2 1
      115 SETTABLE                         R10 R2 R8
      116 FORGLOOP                         R5 2 ; [-45]
      118 GETTABLEKS                       R5 R0 K18 ["_implementation"]
      120 GETTABLEKS                       R7 R0 K19 ["_lastGlobalTransformForRender"]
      122 NAMECALL                         R5 R5 K20 ["render"]
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R2 K21 ["ImplementationRendered"]
      127 JUMP                             ; [+54]
      128 GETIMPORT                        R4 K14 [pairs]
      130 GETTABLEKS                       R5 R0 K3 ["_handles"]
      132 CALL                             R4 1 3
      133 FORGPREP_NEXT                    R4
      134 GETTABLEKS                       R9 R8 K8 ["Color"]
      136 JUMPIFEQ                         R7 R1 ; [+2]
      138 LOADB                            R10 0 +1
      139 LOADB                            R10 1
      140 JUMPIF                           R10 ; [+6]
      141 GETUPVAL                         R12 3
      142 GETTABLEKS                       R11 R12 K17 ["makeDimmed"]
      144 MOVE                             R12 R9
      145 CALL                             R11 1 1
      146 MOVE                             R9 R11
      147 GETUPVAL                         R12 1
      148 GETTABLEKS                       R11 R12 K4 ["createElement"]
      150 GETUPVAL                         R12 2
      151 DUPTABLE                         R13 K12 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered"}]
      152 GETTABLEKS                       R14 R8 K5 ["Axis"]
      154 SETTABLEKS                       R14 R13 K5 ["Axis"]
      156 JUMPIF                           R3 ; [+3]
      157 GETTABLEKS                       R14 R8 K6 ["AxisOffset"]
      159 JUMPIF                           R14 ; [+1]
      160 LOADNIL                          R14
      161 SETTABLEKS                       R14 R13 K6 ["AxisOffset"]
      163 GETTABLEKS                       R14 R8 K7 ["Outset"]
      165 SETTABLEKS                       R14 R13 K7 ["Outset"]
      167 SETTABLEKS                       R9 R13 K8 ["Color"]
      169 GETTABLEKS                       R14 R8 K9 ["Scale"]
      171 SETTABLEKS                       R14 R13 K9 ["Scale"]
      173 LOADB                            R14 1
      174 SETTABLEKS                       R14 R13 K10 ["AlwaysOnTop"]
      176 SETTABLEKS                       R10 R13 K11 ["Hovered"]
      178 CALL                             R11 2 1
      179 SETTABLE                         R11 R2 R7
      180 FORGLOOP                         R4 2 ; [-47]
      182 GETTABLEKS                       R5 R0 K22 ["_props"]
      184 GETTABLEKS                       R4 R5 K23 ["ShowBoundingBox"]
      186 JUMPIFNOT                        R4 ; [+50]
      187 GETTABLEKS                       R5 R0 K24 ["_selectionWrapper"]
      189 NAMECALL                         R5 R5 K25 ["get"]
      191 CALL                             R5 1 1
      192 LENGTH                           R4 R5
      193 LOADN                            R5 1
      194 JUMPIFNOTLT                      R5 R4 ; [+42]
      196 GETUPVAL                         R5 1
      197 GETTABLEKS                       R4 R5 K4 ["createElement"]
      199 GETUPVAL                         R5 4
      200 DUPTABLE                         R6 K30 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      201 GETTABLEKS                       R8 R0 K31 ["_boundingBox"]
      203 GETTABLEKS                       R7 R8 K26 ["CFrame"]
      205 SETTABLEKS                       R7 R6 K26 ["CFrame"]
      207 GETTABLEKS                       R8 R0 K31 ["_boundingBox"]
      209 GETTABLEKS                       R7 R8 K27 ["Size"]
      211 SETTABLEKS                       R7 R6 K27 ["Size"]
      213 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      215 NAMECALL                         R7 R7 K33 ["getSelectionBoxColor"]
      217 CALL                             R7 1 1
      218 SETTABLEKS                       R7 R6 K8 ["Color"]
      220 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      222 NAMECALL                         R7 R7 K34 ["getHoverThickness"]
      224 CALL                             R7 1 1
      225 SETTABLEKS                       R7 R6 K28 ["LineThickness"]
      227 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      229 NAMECALL                         R7 R7 K35 ["getGuiParent"]
      231 CALL                             R7 1 1
      232 SETTABLEKS                       R7 R6 K29 ["Container"]
      234 CALL                             R4 2 1
      235 SETTABLEKS                       R4 R2 K36 ["SelectionBoundingBox"]
      237 JUMPIFNOT                        R3 ; [+117]
      238 GETTABLEKS                       R5 R0 K22 ["_props"]
      240 GETTABLEKS                       R4 R5 K37 ["Summonable"]
      242 JUMPIFNOT                        R4 ; [+112]
      243 GETTABLEKS                       R4 R0 K38 ["_summonBasisOffset"]
      245 JUMPIFNOT                        R4 ; [+40]
      246 GETUPVAL                         R5 1
      247 GETTABLEKS                       R4 R5 K4 ["createElement"]
      249 GETUPVAL                         R5 5
      250 DUPTABLE                         R6 K41 [{"DraggerContext", "CFrame", "IsActive"}]
      251 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      253 SETTABLEKS                       R7 R6 K39 ["DraggerContext"]
      255 GETTABLEKS                       R9 R0 K31 ["_boundingBox"]
      257 GETTABLEKS                       R8 R9 K26 ["CFrame"]
      259 NAMECALL                         R9 R0 K42 ["_getBasisOffset"]
      261 CALL                             R9 1 1
      262 MUL                              R7 R8 R9
      263 SETTABLEKS                       R7 R6 K26 ["CFrame"]
      265 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      267 NAMECALL                         R7 R7 K43 ["shouldShowActiveInstanceHighlight"]
      269 CALL                             R7 1 1
      270 JUMPIFNOT                        R7 ; [+10]
      271 GETTABLEKS                       R9 R0 K24 ["_selectionWrapper"]
      273 NAMECALL                         R9 R9 K25 ["get"]
      275 CALL                             R9 1 1
      276 LENGTH                           R8 R9
      277 JUMPIFEQKN                       R8 K44 [1] ; [+2]
      279 LOADB                            R7 0 +1
      280 LOADB                            R7 1
      281 SETTABLEKS                       R7 R6 K40 ["IsActive"]
      283 CALL                             R4 2 1
      284 SETTABLEKS                       R4 R2 K45 ["SummonedPivot"]
      286 GETTABLEKS                       R4 R0 K2 ["_draggingHandleId"]
      288 JUMPIF                           R4 ; [+66]
      289 GETTABLEKS                       R4 R0 K38 ["_summonBasisOffset"]
      291 JUMPIFNOT                        R4 ; [+13]
      292 GETUPVAL                         R5 1
      293 GETTABLEKS                       R4 R5 K4 ["createElement"]
      295 GETUPVAL                         R5 6
      296 DUPTABLE                         R6 K46 [{"DraggerContext"}]
      297 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      299 SETTABLEKS                       R7 R6 K39 ["DraggerContext"]
      301 CALL                             R4 2 1
      302 SETTABLEKS                       R4 R2 K47 ["SummonHandlesHider"]
      304 JUMP                             ; [+50]
      305 GETUPVAL                         R5 6
      306 GETTABLEKS                       R4 R5 K48 ["hasSeenEnough"]
      308 GETTABLEKS                       R5 R0 K32 ["_draggerContext"]
      310 CALL                             R4 1 1
      311 JUMPIF                           R4 ; [+43]
      312 GETTABLEKS                       R7 R0 K31 ["_boundingBox"]
      314 GETTABLEKS                       R6 R7 K26 ["CFrame"]
      316 GETTABLEKS                       R7 R0 K49 ["_basisOffset"]
      318 MUL                              R5 R6 R7
      319 GETTABLEKS                       R4 R5 K50 ["Position"]
      321 GETTABLEKS                       R5 R0 K32 ["_draggerContext"]
      323 MOVE                             R7 R4
      324 NAMECALL                         R5 R5 K51 ["worldToViewportPoint"]
      326 CALL                             R5 2 2
      327 GETTABLEKS                       R7 R5 K52 ["Z"]
      329 LOADN                            R8 0
      330 JUMPIFNOTLT                      R8 R7 ; [+24]
      332 GETUPVAL                         R8 1
      333 GETTABLEKS                       R7 R8 K4 ["createElement"]
      335 GETUPVAL                         R8 7
      336 DUPTABLE                         R9 K54 [{"Position", "InView", "DraggerContext"}]
      337 GETIMPORT                        R10 K57 [Vector2.new]
      339 GETTABLEKS                       R11 R5 K58 ["X"]
      341 GETTABLEKS                       R12 R5 K59 ["Y"]
      343 CALL                             R10 2 1
      344 SETTABLEKS                       R10 R9 K50 ["Position"]
      346 SETTABLEKS                       R6 R9 K53 ["InView"]
      348 GETTABLEKS                       R10 R0 K32 ["_draggerContext"]
      350 SETTABLEKS                       R10 R9 K39 ["DraggerContext"]
      352 CALL                             R7 2 1
      353 SETTABLEKS                       R7 R2 K60 ["SummonHandlesNote"]
      355 GETUPVAL                         R5 1
      356 GETTABLEKS                       R4 R5 K4 ["createElement"]
      358 LOADK                            R5 K61 ["Folder"]
      359 NEWTABLE                         R6 0 0
      361 MOVE                             R7 R2
      362 CALL                             R4 3 -1
      363 RETURN                           R4 -1

PROTO_39:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        3 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 LOADNIL                          R3
        1 SETTABLEKS                       R3 R0 K0 ["_laggingHandleId"]
        3 SETTABLEKS                       R2 R0 K1 ["_draggingHandleId"]
        5 GETTABLEKS                       R4 R0 K2 ["_boundingBox"]
        7 GETTABLEKS                       R3 R4 K3 ["CFrame"]
        9 SETTABLEKS                       R3 R0 K4 ["_draggingOriginalBoundingBoxCFrame"]
       11 GETTABLEKS                       R4 R0 K5 ["_handles"]
       13 GETTABLE                         R3 R4 R2
       14 JUMPIFNOT                        R3 ; [+74]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K6 ["_setupMoveAtCurrentBoundingBox"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R4 R0 K5 ["_handles"]
       21 GETTABLE                         R3 R4 R2
       22 NAMECALL                         R4 R0 K7 ["_useBoundingBoxMoveHandles"]
       24 CALL                             R4 1 1
       25 JUMPIF                           R4 ; [+17]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K8 ["getHandleDimensionForScale"]
       29 GETTABLEKS                       R5 R3 K9 ["Scale"]
       31 GETTABLEKS                       R7 R0 K10 ["_props"]
       33 GETTABLEKS                       R6 R7 K11 ["Outset"]
       35 CALL                             R4 2 2
       36 GETTABLEKS                       R8 R0 K12 ["_startDistance"]
       38 SUB                              R7 R8 R4
       39 DIV                              R6 R7 R5
       40 SETTABLEKS                       R6 R0 K13 ["_draggingHandleFrac"]
       42 JUMP                             ; [+15]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K8 ["getHandleDimensionForScale"]
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
       64 NAMECALL                         R10 R0 K17 ["_getBasisOffset"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R9 R10 K15 ["Position"]
       69 NAMECALL                         R7 R7 K18 ["VectorToWorldSpace"]
       71 CALL                             R7 2 1
       72 ADD                              R5 R6 R7
       73 SETTABLEKS                       R5 R0 K19 ["_dragStartPosition"]
       75 GETTABLEKS                       R6 R3 K20 ["Axis"]
       77 GETTABLEKS                       R5 R6 K15 ["Position"]
       79 SETTABLEKS                       R5 R0 K21 ["_startDragHandlePosition"]
       81 GETTABLEKS                       R5 R3 K9 ["Scale"]
       83 SETTABLEKS                       R5 R0 K22 ["_startDragHandleScale"]
       85 GETTABLEKS                       R5 R0 K23 ["_axis"]
       87 SETTABLEKS                       R5 R0 K24 ["_dragDirection"]
       89 GETUPVAL                         R3 1
       90 CALL                             R3 0 1
       91 JUMPIFNOT                        R3 ; [+5]
       92 GETIMPORT                        R3 K26 [CFrame.new]
       94 CALL                             R3 0 1
       95 SETTABLEKS                       R3 R0 K27 ["_lastGlobalTransformForRender"]
       97 GETTABLEKS                       R3 R0 K28 ["_implementation"]
       99 GETTABLEKS                       R5 R0 K29 ["_selectionWrapper"]
      101 NAMECALL                         R5 R5 K30 ["get"]
      103 CALL                             R5 1 1
      104 GETTABLEKS                       R6 R0 K31 ["_selectionInfo"]
      106 NAMECALL                         R3 R3 K32 ["beginDrag"]
      108 CALL                             R3 3 0
      109 GETUPVAL                         R3 1
      110 CALL                             R3 0 1
      111 JUMPIFNOT                        R3 ; [+29]
      112 GETTABLEKS                       R4 R0 K28 ["_implementation"]
      114 GETTABLEKS                       R3 R4 K33 ["getSoftSnaps"]
      116 JUMPIFNOT                        R3 ; [+19]
      117 NAMECALL                         R3 R0 K34 ["_needsSoftSnaps"]
      119 CALL                             R3 1 1
      120 JUMPIFNOT                        R3 ; [+15]
      121 GETTABLEKS                       R3 R0 K35 ["_softSnapper"]
      123 GETTABLEKS                       R5 R0 K28 ["_implementation"]
      125 GETTABLEKS                       R7 R0 K23 ["_axis"]
      127 GETTABLEKS                       R8 R0 K36 ["_summonOffsetInBasis"]
      129 NAMECALL                         R5 R5 K33 ["getSoftSnaps"]
      131 CALL                             R5 3 -1
      132 NAMECALL                         R3 R3 K37 ["setSnaps"]
      134 CALL                             R3 -1 0
      135 RETURN                           R0 0
      136 GETTABLEKS                       R3 R0 K35 ["_softSnapper"]
      138 NAMECALL                         R3 R3 K38 ["clearSnaps"]
      140 CALL                             R3 1 0
      141 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["_draggingHandleId"]
        3 GETTABLE                         R3 R4 R5
        4 GETTABLEKS                       R2 R3 K1 ["Offset"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETTABLEKS                       R7 R0 K2 ["_boundingBox"]
       12 GETTABLEKS                       R6 R7 K3 ["CFrame"]
       14 NAMECALL                         R7 R0 K4 ["_getBasisOffset"]
       16 CALL                             R7 1 1
       17 MUL                              R5 R6 R7
       18 MUL                              R4 R5 R2
       19 GETTABLEKS                       R3 R4 K5 ["LookVector"]
       21 JUMP                             ; [+7]
       22 GETTABLEKS                       R6 R0 K2 ["_boundingBox"]
       24 GETTABLEKS                       R5 R6 K3 ["CFrame"]
       26 MUL                              R4 R5 R2
       27 GETTABLEKS                       R3 R4 K5 ["LookVector"]
       29 SETTABLEKS                       R3 R0 K6 ["_axis"]
       31 MOVE                             R6 R1
       32 NAMECALL                         R4 R0 K7 ["_getDistanceAlongAxis"]
       34 CALL                             R4 2 2
       35 JUMPIFNOT                        R4 ; [+2]
       36 MOVE                             R6 R5
       37 JUMPIF                           R6 ; [+1]
       38 LOADN                            R6 0
       39 SETTABLEKS                       R6 R0 K8 ["_startDistance"]
       41 GETUPVAL                         R6 1
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+4]
       44 LOADN                            R6 0
       45 SETTABLEKS                       R6 R0 K9 ["_lastDelta"]
       47 RETURN                           R0 0
       48 GETIMPORT                        R6 K11 [CFrame.new]
       50 CALL                             R6 0 1
       51 SETTABLEKS                       R6 R0 K12 ["_lastGlobalTransformForRender"]
       53 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 SETTABLEKS                       R1 R2 K1 ["CFrame"]
        4 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["_draggingOriginalBoundingBoxCFrame"]
        2 NAMECALL                         R3 R0 K1 ["_useBoundingBoxMoveHandles"]
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+4]
        6 NAMECALL                         R3 R0 K2 ["_getBasisOffset"]
        8 CALL                             R3 1 1
        9 MUL                              R2 R2 R3
       10 GETTABLEKS                       R3 R2 K3 ["Position"]
       12 GETTABLEKS                       R5 R0 K4 ["_axis"]
       14 GETTABLEKS                       R4 R5 K5 ["Unit"]
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R3
       18 MOVE                             R7 R4
       19 MOVE                             R8 R1
       20 CALL                             R5 3 -1
       21 RETURN                           R5 -1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_draggingOriginalBoundingBoxCFrame"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["_axis"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K2 ["_startDistance"]
        9 SUB                              R5 R0 R6
       10 MUL                              R3 R4 R5
       11 ADD                              R1 R2 R3
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 1
       14 JUMPIFNOT                        R3 ; [+8]
       15 GETUPVAL                         R4 0
       16 NAMECALL                         R4 R4 K3 ["_getBasisOffset"]
       18 CALL                             R4 1 1
       19 MUL                              R3 R1 R4
       20 GETUPVAL                         R4 2
       21 MUL                              R2 R3 R4
       22 JUMP                             ; [+18]
       23 GETUPVAL                         R4 1
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETUPVAL                         R5 2
       26 MUL                              R4 R1 R5
       27 GETUPVAL                         R5 3
       28 MUL                              R3 R4 R5
       29 JUMPIF                           R3 ; [+10]
       30 GETUPVAL                         R5 2
       31 MUL                              R4 R1 R5
       32 GETIMPORT                        R5 K6 [CFrame.new]
       34 LOADN                            R6 0
       35 LOADN                            R7 0
       36 GETUPVAL                         R9 4
       37 MINUS                            R8 R9
       38 CALL                             R5 3 1
       39 MUL                              R3 R4 R5
       40 MOVE                             R2 R3
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K7 ["_draggerContext"]
       44 GETTABLEKS                       R5 R2 K8 ["Position"]
       46 NAMECALL                         R3 R3 K9 ["getHandleScale"]
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+19]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["getHandleDimensionForScale"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K1 ["_props"]
       12 GETTABLEKS                       R4 R5 K2 ["Outset"]
       14 CALL                             R2 2 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K3 ["_startDistance"]
       18 SUB                              R4 R0 R5
       19 ADD                              R5 R4 R2
       20 GETUPVAL                         R8 4
       21 SUB                              R7 R8 R5
       22 DIV                              R6 R7 R3
       23 RETURN                           R6 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K0 ["getHandleDimensionForScale"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 2
       29 GETUPVAL                         R6 4
       30 SUB                              R5 R6 R0
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K3 ["_startDistance"]
       34 ADD                              R4 R5 R6
       35 SUB                              R7 R4 R2
       36 GETUPVAL                         R8 5
       37 SUB                              R6 R7 R8
       38 DIV                              R5 R6 R3
       39 RETURN                           R5 1

PROTO_47:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["getHandleDimensionForScale"]
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R6 R7 K1 ["_props"]
       13 GETTABLEKS                       R5 R6 K2 ["Outset"]
       15 CALL                             R3 2 2
       16 MOVE                             R1 R3
       17 MOVE                             R2 R4
       18 RETURN                           R2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K0 ["getHandleDimensionForScale"]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R0
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 2
       26 MOVE                             R1 R3
       27 MOVE                             R2 R4
       28 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL1                        ASSERT R3 ; [+2]
        4 GETIMPORT                        R2 K1 [assert]
        6 CALL                             R2 1 0
        7 NAMECALL                         R3 R0 K2 ["_useBoundingBoxMoveHandles"]
        9 CALL                             R3 1 1
       10 NOT                              R2 R3
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETTABLEKS                       R6 R0 K3 ["_handles"]
       16 GETTABLEKS                       R7 R0 K4 ["_draggingHandleId"]
       18 GETTABLE                         R5 R6 R7
       19 GETTABLEKS                       R4 R5 K5 ["OffsetInHandleSpace"]
       21 JUMP                             ; [+7]
       22 GETTABLEKS                       R6 R0 K3 ["_handles"]
       24 GETTABLEKS                       R7 R0 K4 ["_draggingHandleId"]
       26 GETTABLE                         R5 R6 R7
       27 GETTABLEKS                       R3 R5 K6 ["AxisOffset"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R8 R0 K4 ["_draggingHandleId"]
       32 GETTABLE                         R6 R7 R8
       33 GETTABLEKS                       R5 R6 K7 ["Offset"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          REF R4
       40 CAPTURE                          REF R3
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R3
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R0
       53 LOADNIL                          R10
       54 LOADNIL                          R11
       55 JUMPIFNOT                        R2 ; [+14]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R12 R13 K8 ["getHandleDimensionForScale"]
       59 MOVE                             R13 R6
       60 LOADN                            R14 0
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R15 R0 K9 ["_props"]
       64 GETTABLEKS                       R14 R15 K10 ["Outset"]
       66 CALL                             R12 2 2
       67 MOVE                             R10 R12
       68 MOVE                             R11 R13
       69 JUMP                             ; [+9]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R12 R13 K8 ["getHandleDimensionForScale"]
       73 MOVE                             R13 R6
       74 LOADN                            R14 0
       75 CALL                             R13 1 -1
       76 CALL                             R12 -1 2
       77 MOVE                             R10 R12
       78 MOVE                             R11 R13
       79 MOVE                             R9 R11
       80 LOADNIL                          R11
       81 LOADNIL                          R12
       82 JUMPIFNOT                        R2 ; [+14]
       83 GETUPVAL                         R14 2
       84 GETTABLEKS                       R13 R14 K8 ["getHandleDimensionForScale"]
       86 MOVE                             R14 R6
       87 MOVE                             R15 R1
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R16 R0 K9 ["_props"]
       91 GETTABLEKS                       R15 R16 K10 ["Outset"]
       93 CALL                             R13 2 2
       94 MOVE                             R11 R13
       95 MOVE                             R12 R14
       96 JUMP                             ; [+9]
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R13 R14 K8 ["getHandleDimensionForScale"]
      100 MOVE                             R14 R6
      101 MOVE                             R15 R1
      102 CALL                             R14 1 -1
      103 CALL                             R13 -1 2
      104 MOVE                             R11 R13
      105 MOVE                             R12 R14
      106 MOVE                             R10 R12
      107 FASTCALL2                        MATH_MAX R9 R10 ; [+5]
      109 MOVE                             R12 R9
      110 MOVE                             R13 R10
      111 GETIMPORT                        R11 K13 [math.max]
      113 CALL                             R11 2 1
      114 SUB                              R12 R1 R11
      115 ADD                              R13 R1 R11
      116 MOVE                             R14 R7
      117 MOVE                             R15 R12
      118 CALL                             R14 1 1
      119 MOVE                             R15 R7
      120 MOVE                             R16 R13
      121 CALL                             R15 1 1
      122 SUB                              R17 R12 R13
      123 FASTCALL1                        MATH_ABS R17 ; [+2]
      124 GETIMPORT                        R16 K15 [math.abs]
      126 CALL                             R16 1 1
      127 LOADK                            R17 K16 [0.0001]
      128 JUMPIFNOTLT                      R17 R16 ; [+21]
      130 LOADK                            R17 K17 [0.5]
      131 ADD                              R18 R12 R13
      132 MUL                              R16 R17 R18
      133 MOVE                             R17 R7
      134 MOVE                             R18 R16
      135 CALL                             R17 1 1
      136 GETTABLEKS                       R20 R0 K18 ["_draggingHandleFrac"]
      138 SUB                              R19 R20 R17
      139 SUB                              R20 R15 R14
      140 MUL                              R18 R19 R20
      141 LOADN                            R19 0
      142 JUMPIFNOTLT                      R19 R18 ; [+4]
      144 MOVE                             R12 R16
      145 MOVE                             R14 R17
      146 JUMP                             ; [+2]
      147 MOVE                             R13 R16
      148 MOVE                             R15 R17
      149 JUMPBACK                         ; [-28]
      150 CLOSEUPVALS                      R3
      151 RETURN                           R12 1

PROTO_49:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R4 R0 K0 ["_implementation"]
        3 GETTABLEKS                       R3 R4 K1 ["getSnapPoints"]
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETTABLEKS                       R3 R0 K0 ["_implementation"]
        8 NAMECALL                         R3 R3 K1 ["getSnapPoints"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 JUMPIFNOT                        R2 ; [+72]
       13 GETTABLEKS                       R5 R0 K2 ["_draggingOriginalBoundingBoxCFrame"]
       15 GETTABLEKS                       R6 R0 K3 ["_basisOffset"]
       17 MUL                              R4 R5 R6
       18 GETTABLEKS                       R3 R4 K4 ["Position"]
       20 GETTABLEKS                       R4 R0 K5 ["_axis"]
       22 LOADK                            R5 K6 [-∞]
       23 LOADK                            R6 K7 [∞]
       24 LOADK                            R7 K7 [∞]
       25 LOADK                            R8 K7 [∞]
       26 GETIMPORT                        R9 K9 [ipairs]
       28 MOVE                             R10 R2
       29 CALL                             R9 1 3
       30 FORGPREP_INEXT                   R9
       31 GETTABLEKS                       R15 R13 K4 ["Position"]
       33 SUB                              R14 R15 R3
       34 MOVE                             R16 R4
       35 NAMECALL                         R14 R14 K10 ["Dot"]
       37 CALL                             R14 2 1
       38 FASTCALL2                        MATH_MAX R5 R14 ; [+5]
       40 MOVE                             R16 R5
       41 MOVE                             R17 R14
       42 GETIMPORT                        R15 K13 [math.max]
       44 CALL                             R15 2 1
       45 MOVE                             R5 R15
       46 FASTCALL2                        MATH_MIN R6 R14 ; [+5]
       48 MOVE                             R16 R6
       49 MOVE                             R17 R14
       50 GETIMPORT                        R15 K15 [math.min]
       52 CALL                             R15 2 1
       53 MOVE                             R6 R15
       54 SUB                              R16 R14 R1
       55 FASTCALL1                        MATH_ABS R16 ; [+2]
       56 GETIMPORT                        R15 K17 [math.abs]
       58 CALL                             R15 1 1
       59 JUMPIFNOTLT                      R15 R7 ; [+3]
       61 MOVE                             R7 R15
       62 MOVE                             R8 R14
       63 FORGLOOP                         R9 2 [inext] ; [-33]
       65 JUMPIFLT                         R5 R1 ; [+3]
       67 JUMPIFNOTLT                      R1 R6 ; [+16]
       69 GETTABLEKS                       R9 R0 K18 ["_draggerContext"]
       71 MOVE                             R11 R1
       72 NAMECALL                         R9 R9 K19 ["snapToGridSize"]
       74 CALL                             R9 2 1
       75 SUB                              R11 R9 R1
       76 FASTCALL1                        MATH_ABS R11 ; [+2]
       77 GETIMPORT                        R10 K17 [math.abs]
       79 CALL                             R10 1 1
       80 JUMPIFNOTLT                      R7 R10 ; [+2]
       82 RETURN                           R8 1
       83 RETURN                           R9 1
       84 RETURN                           R8 1
       85 GETTABLEKS                       R3 R0 K18 ["_draggerContext"]
       87 MOVE                             R5 R1
       88 NAMECALL                         R3 R3 K19 ["snapToGridSize"]
       90 CALL                             R3 2 -1
       91 RETURN                           R3 -1

PROTO_50:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getDistanceAlongAxis"]
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        8 NAMECALL                         R4 R4 K2 ["shouldGridSnap"]
       10 CALL                             R4 1 1
       11 LOADNIL                          R5
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       15 NAMECALL                         R7 R7 K3 ["getCamera"]
       17 CALL                             R7 1 1
       18 GETTABLEKS                       R8 R0 K4 ["_dragStartPosition"]
       20 GETTABLEKS                       R9 R0 K5 ["_dragDirection"]
       22 GETTABLEKS                       R10 R0 K6 ["_startDragHandlePosition"]
       24 GETTABLEKS                       R11 R0 K7 ["_startDragHandleScale"]
       26 GETTABLEKS                       R12 R0 K8 ["_startDistance"]
       28 MOVE                             R13 R3
       29 CALL                             R6 7 1
       30 GETTABLEKS                       R9 R0 K6 ["_startDragHandlePosition"]
       32 GETTABLEKS                       R10 R0 K4 ["_dragStartPosition"]
       34 SUB                              R8 R9 R10
       35 GETTABLEKS                       R7 R8 K9 ["Magnitude"]
       37 SUB                              R5 R6 R7
       38 LOADNIL                          R8
       39 NAMECALL                         R9 R0 K10 ["_useBoundingBoxMoveHandles"]
       41 CALL                             R9 1 1
       42 JUMPIF                           R9 ; [+6]
       43 MOVE                             R11 R5
       44 NAMECALL                         R9 R0 K11 ["_getSnappedDelta"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 JUMP                             ; [+7]
       49 GETTABLEKS                       R9 R0 K1 ["_draggerContext"]
       51 MOVE                             R11 R5
       52 NAMECALL                         R9 R9 K12 ["snapToGridSize"]
       54 CALL                             R9 2 1
       55 MOVE                             R8 R9
       56 NAMECALL                         R9 R0 K13 ["_hasSoftSnap"]
       58 CALL                             R9 1 1
       59 JUMPIFNOT                        R9 ; [+17]
       60 JUMPIFNOT                        R4 ; [+6]
       61 SUB                              R10 R5 R8
       62 FASTCALL1                        MATH_ABS R10 ; [+2]
       63 GETIMPORT                        R9 K16 [math.abs]
       65 CALL                             R9 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R9
       68 GETTABLEKS                       R10 R0 K17 ["_softSnapper"]
       70 MOVE                             R12 R5
       71 MOVE                             R13 R9
       72 NAMECALL                         R10 R10 K18 ["updateCurrentSnap"]
       74 CALL                             R10 3 1
       75 JUMPIFNOT                        R10 ; [+1]
       76 MOVE                             R8 R10
       77 GETTABLEKS                       R9 R0 K19 ["_implementation"]
       79 GETIMPORT                        R11 K22 [CFrame.new]
       81 GETTABLEKS                       R13 R0 K23 ["_axis"]
       83 MUL                              R12 R13 R8
       84 CALL                             R11 1 -1
       85 NAMECALL                         R9 R9 K24 ["updateDrag"]
       87 CALL                             R9 -1 1
       88 JUMPIFNOTEQKNIL                  R9 ; [+2]
       90 LOADB                            R11 0 +1
       91 LOADB                            R11 1
       92 FASTCALL2K                       ASSERT R11 K25 ; [+4]
       94 LOADK                            R12 K25 ["Did not return a transform from updateDrag."]
       95 GETIMPORT                        R10 K27 [assert]
       97 CALL                             R10 2 0
       98 GETUPVAL                         R10 1
       99 CALL                             R10 0 1
      100 JUMPIFNOT                        R10 ; [+21]
      101 NAMECALL                         R10 R0 K28 ["_lastTransformWasLinear"]
      103 CALL                             R10 1 1
      104 JUMPIFNOT                        R10 ; [+13]
      105 FASTCALL1                        MATH_SIGN R8 ; [+3]
      106 MOVE                             R12 R8
      107 GETIMPORT                        R11 K30 [math.sign]
      109 CALL                             R11 1 1
      110 GETTABLEKS                       R13 R9 K31 ["Position"]
      112 GETTABLEKS                       R12 R13 K9 ["Magnitude"]
      114 MUL                              R10 R11 R12
      115 SETTABLEKS                       R10 R0 K32 ["_lastDelta"]
      117 RETURN                           R9 1
      118 LOADN                            R10 0
      119 SETTABLEKS                       R10 R0 K32 ["_lastDelta"]
      121 RETURN                           R9 1
      122 FASTCALL1                        MATH_SIGN R8 ; [+3]
      123 MOVE                             R12 R8
      124 GETIMPORT                        R11 K30 [math.sign]
      126 CALL                             R11 1 1
      127 GETTABLEKS                       R13 R9 K31 ["Position"]
      129 GETTABLEKS                       R12 R13 K9 ["Magnitude"]
      131 MUL                              R10 R11 R12
      132 SETTABLEKS                       R10 R0 K32 ["_lastDelta"]
      134 RETURN                           R9 1

PROTO_51:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R4 R0 K0 ["_handles"]
        3 GETTABLEKS                       R5 R0 K1 ["_draggingHandleId"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFNOT                        R3 ; [+5]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K2 ["_mouseDragAxis"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 JUMPIFNOT                        R2 ; [+8]
       13 GETTABLEKS                       R6 R0 K3 ["_draggingOriginalBoundingBoxCFrame"]
       15 MUL                              R5 R2 R6
       16 NAMECALL                         R3 R0 K4 ["_setMidMoveBoundingBox"]
       18 CALL                             R3 2 0
       19 SETTABLEKS                       R2 R0 K5 ["_lastGlobalTransformForRender"]
       21 RETURN                           R0 0

PROTO_52:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getDistanceAlongAxis"]
        3 CALL                             R2 2 2
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R5 R0 K1 ["_handles"]
        8 GETTABLEKS                       R6 R0 K2 ["_draggingHandleId"]
       10 GETTABLE                         R4 R5 R6
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 MOVE                             R7 R3
       14 NAMECALL                         R5 R0 K3 ["_solveForAdjustedDistance"]
       16 CALL                             R5 2 1
       17 GETTABLEKS                       R6 R0 K4 ["_startDistance"]
       19 SUB                              R4 R5 R6
       20 LOADNIL                          R5
       21 NAMECALL                         R6 R0 K5 ["_useBoundingBoxMoveHandles"]
       23 CALL                             R6 1 1
       24 JUMPIF                           R6 ; [+6]
       25 MOVE                             R8 R4
       26 NAMECALL                         R6 R0 K6 ["_getSnappedDelta"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 JUMP                             ; [+7]
       31 GETTABLEKS                       R6 R0 K7 ["_draggerContext"]
       33 MOVE                             R8 R4
       34 NAMECALL                         R6 R6 K8 ["snapToGridSize"]
       36 CALL                             R6 2 1
       37 MOVE                             R5 R6
       38 GETTABLEKS                       R6 R0 K9 ["_implementation"]
       40 GETIMPORT                        R8 K12 [CFrame.new]
       42 GETTABLEKS                       R10 R0 K13 ["_axis"]
       44 MUL                              R9 R10 R5
       45 CALL                             R8 1 -1
       46 NAMECALL                         R6 R6 K14 ["updateDrag"]
       48 CALL                             R6 -1 1
       49 JUMPIFNOTEQKNIL                  R6 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 FASTCALL2K                       ASSERT R8 K15 ; [+4]
       55 LOADK                            R9 K15 ["Did not return a transform from updateDrag."]
       56 GETIMPORT                        R7 K17 [assert]
       58 CALL                             R7 2 0
       59 GETTABLEKS                       R10 R0 K18 ["_draggingOriginalBoundingBoxCFrame"]
       61 MUL                              R9 R6 R10
       62 NAMECALL                         R7 R0 K19 ["_setMidMoveBoundingBox"]
       64 CALL                             R7 2 0
       65 SETTABLEKS                       R6 R0 K20 ["_lastGlobalTransformForRender"]
       67 RETURN                           R0 0

PROTO_53:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["_draggingHandleId"]
        3 GETTABLEKS                       R2 R0 K1 ["_implementation"]
        5 NAMECALL                         R2 R2 K2 ["endDrag"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R0 K3 ["_schema"]
       10 GETTABLEKS                       R3 R4 K4 ["addUndoWaypoint"]
       12 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
       14 LOADK                            R5 K6 ["Axis Move Selection"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 0
       17 CALL                             R3 0 1
       18 JUMPIF                           R3 ; [+6]
       19 GETTABLEKS                       R3 R0 K7 ["_tabKeyDown"]
       21 JUMPIF                           R3 ; [+3]
       22 NAMECALL                         R3 R0 K8 ["_endSummon"]
       24 CALL                             R3 1 0
       25 RETURN                           R2 1

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 NAMECALL                         R1 R1 K1 ["isEmpty"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K2 ["_handles"]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K4 [pairs]
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 3
       15 FORGPREP_NEXT                    R1
       16 NAMECALL                         R6 R0 K5 ["_useBoundingBoxMoveHandles"]
       18 CALL                             R6 1 1
       19 JUMPIF                           R6 ; [+44]
       20 GETTABLEKS                       R9 R0 K6 ["_boundingBox"]
       22 GETTABLEKS                       R8 R9 K7 ["CFrame"]
       24 NAMECALL                         R9 R0 K8 ["_getBasisOffset"]
       26 CALL                             R9 1 1
       27 MUL                              R7 R8 R9
       28 GETTABLEKS                       R8 R5 K9 ["Offset"]
       30 MUL                              R6 R7 R8
       31 GETTABLEKS                       R7 R0 K2 ["_handles"]
       33 DUPTABLE                         R8 K16 [{"Outset", "Axis", "Color", "Scale", "AlwaysOnTop", "Opposite"}]
       34 GETTABLEKS                       R10 R0 K17 ["_props"]
       36 GETTABLEKS                       R9 R10 K10 ["Outset"]
       38 SETTABLEKS                       R9 R8 K10 ["Outset"]
       40 SETTABLEKS                       R6 R8 K11 ["Axis"]
       42 GETTABLEKS                       R9 R5 K12 ["Color"]
       44 SETTABLEKS                       R9 R8 K12 ["Color"]
       46 GETTABLEKS                       R9 R0 K18 ["_draggerContext"]
       48 GETTABLEKS                       R11 R6 K19 ["Position"]
       50 NAMECALL                         R9 R9 K20 ["getHandleScale"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K13 ["Scale"]
       55 LOADB                            R9 1
       56 SETTABLEKS                       R9 R8 K14 ["AlwaysOnTop"]
       58 GETTABLEKS                       R9 R5 K15 ["Opposite"]
       60 SETTABLEKS                       R9 R8 K15 ["Opposite"]
       62 SETTABLE                         R8 R7 R4
       63 JUMP                             ; [+61]
       64 GETTABLEKS                       R6 R5 K9 ["Offset"]
       66 NAMECALL                         R6 R6 K21 ["Inverse"]
       68 CALL                             R6 1 1
       69 GETTABLEKS                       R9 R0 K6 ["_boundingBox"]
       71 GETTABLEKS                       R8 R9 K22 ["Size"]
       73 NAMECALL                         R6 R6 K23 ["VectorToWorldSpace"]
       75 CALL                             R6 2 1
       76 GETTABLEKS                       R9 R6 K25 ["Z"]
       78 FASTCALL1                        MATH_ABS R9 ; [+2]
       79 GETIMPORT                        R8 K28 [math.abs]
       81 CALL                             R8 1 1
       82 MULK                             R7 R8 K24 [0.5]
       83 GETTABLEKS                       R11 R0 K6 ["_boundingBox"]
       85 GETTABLEKS                       R10 R11 K7 ["CFrame"]
       87 GETTABLEKS                       R11 R5 K9 ["Offset"]
       89 MUL                              R9 R10 R11
       90 GETIMPORT                        R10 K30 [CFrame.new]
       92 LOADN                            R11 0
       93 LOADN                            R12 0
       94 MINUS                            R13 R7
       95 CALL                             R10 3 1
       96 MUL                              R8 R9 R10
       97 GETTABLEKS                       R9 R0 K2 ["_handles"]
       99 DUPTABLE                         R10 K32 [{"AxisOffset", "Axis", "Color", "Scale", "AlwaysOnTop", "Opposite"}]
      100 SETTABLEKS                       R7 R10 K31 ["AxisOffset"]
      102 SETTABLEKS                       R8 R10 K11 ["Axis"]
      104 GETTABLEKS                       R11 R5 K12 ["Color"]
      106 SETTABLEKS                       R11 R10 K12 ["Color"]
      108 GETTABLEKS                       R11 R0 K18 ["_draggerContext"]
      110 GETTABLEKS                       R13 R8 K19 ["Position"]
      112 NAMECALL                         R11 R11 K20 ["getHandleScale"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K13 ["Scale"]
      117 LOADB                            R11 1
      118 SETTABLEKS                       R11 R10 K14 ["AlwaysOnTop"]
      120 GETTABLEKS                       R11 R5 K15 ["Opposite"]
      122 SETTABLEKS                       R11 R10 K15 ["Opposite"]
      124 SETTABLE                         R10 R9 R4
      125 FORGLOOP                         R1 2 ; [-110]
      127 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+16]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        5 JUMPIFNOTEQ                      R1 R2 ; [+13]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R0 K4 ["_tabKeyDown"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       12 JUMPIF                           R2 ; [+55]
       13 NAMECALL                         R2 R0 K6 ["_summonHandles"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 JUMP                             ; [+49]
       19 GETUPVAL                         R2 0
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+46]
       22 GETUPVAL                         R3 1
       23 GETTABLE                         R2 R3 R1
       24 JUMPIFNOT                        R2 ; [+14]
       25 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       27 JUMPIFNOT                        R2 ; [+40]
       28 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       30 NAMECALL                         R4 R4 K8 ["getMouseRay"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R0 K9 ["mouseDrag"]
       35 CALL                             R2 -1 0
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 JUMP                             ; [+29]
       39 GETIMPORT                        R2 K11 [Enum.KeyCode.H]
       41 JUMPIFNOTEQ                      R1 R2 ; [+16]
       43 GETTABLEKS                       R2 R0 K7 ["_draggerContext"]
       45 LOADK                            R4 K12 ["HotkeyUsageHidden"]
       46 GETTABLEKS                       R6 R0 K7 ["_draggerContext"]
       48 LOADK                            R8 K12 ["HotkeyUsageHidden"]
       49 NAMECALL                         R6 R6 K13 ["getSetting"]
       51 CALL                             R6 2 1
       52 NOT                              R5 R6
       53 NAMECALL                         R2 R2 K14 ["setSetting"]
       55 CALL                             R2 3 0
       56 LOADB                            R2 1
       57 RETURN                           R2 1
       58 GETUPVAL                         R3 2
       59 GETTABLE                         R2 R3 R1
       60 JUMPIFNOT                        R2 ; [+7]
       61 GETUPVAL                         R5 2
       62 GETTABLE                         R4 R5 R1
       63 NAMECALL                         R2 R0 K15 ["_doBump"]
       65 CALL                             R2 2 0
       66 LOADB                            R2 1
       67 RETURN                           R2 1
       68 LOADB                            R2 0
       69 RETURN                           R2 1

PROTO_56:
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
       20 JUMPIFNOT                        R2 ; [+16]
       21 GETUPVAL                         R3 1
       22 GETTABLE                         R2 R3 R1
       23 JUMPIFNOT                        R2 ; [+13]
       24 GETTABLEKS                       R2 R0 K5 ["_draggingHandleId"]
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       29 NAMECALL                         R4 R4 K8 ["getMouseRay"]
       31 CALL                             R4 1 -1
       32 NAMECALL                         R2 R0 K9 ["mouseDrag"]
       34 CALL                             R2 -1 0
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R2 0
       38 RETURN                           R2 1

PROTO_57:
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
       27 GETTABLEKS                       R6 R0 K9 ["Components"]
       29 GETTABLEKS                       R5 R6 K10 ["StandaloneSelectionBox"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Components"]
       36 GETTABLEKS                       R6 R7 K11 ["WireframeHandleAdornment"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Components"]
       43 GETTABLEKS                       R7 R8 K12 ["HotkeyUsageInfo"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R9 R0 K9 ["Components"]
       50 GETTABLEKS                       R8 R9 K13 ["FloatingValueInput"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R10 R0 K7 ["Utility"]
       57 GETTABLEKS                       R9 R10 K14 ["HotkeyHelpBuilder"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R11 R0 K7 ["Utility"]
       64 GETTABLEKS                       R10 R11 K15 ["conciseNumberFormat"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R12 R0 K7 ["Utility"]
       71 GETTABLEKS                       R11 R12 K16 ["SoftSnapper"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K4 [require]
       76 GETTABLEKS                       R13 R0 K9 ["Components"]
       78 GETTABLEKS                       R12 R13 K17 ["MoveHandleView"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R14 R0 K9 ["Components"]
       85 GETTABLEKS                       R13 R14 K18 ["SummonHandlesNote"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETTABLEKS                       R15 R0 K9 ["Components"]
       92 GETTABLEKS                       R14 R15 K19 ["SummonHandlesHider"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K4 [require]
       97 GETTABLEKS                       R16 R0 K9 ["Components"]
       99 GETTABLEKS                       R15 R16 K20 ["DraggedPivot"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R17 R0 K9 ["Components"]
      106 GETTABLEKS                       R16 R17 K21 ["SummonedPivot"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R18 R0 K7 ["Utility"]
      113 GETTABLEKS                       R17 R18 K22 ["computeDraggedDistance"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R19 R0 K7 ["Utility"]
      120 GETTABLEKS                       R18 R19 K23 ["computeHandlePositionDistance"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K4 [require]
      125 GETTABLEKS                       R20 R0 K24 ["Flags"]
      127 GETTABLEKS                       R19 R20 K25 ["getFFlagDraggerImprovements"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K4 [require]
      132 GETTABLEKS                       R21 R0 K24 ["Flags"]
      134 GETTABLEKS                       R20 R21 K26 ["getFFlagSBT4896NudgingWithNumpad"]
      136 CALL                             R19 1 1
      137 NEWTABLE                         R20 64 0
      139 SETTABLEKS                       R20 R20 K27 ["__index"]
      141 GETIMPORT                        R21 K30 [table.freeze]
      143 DUPTABLE                         R22 K37 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
      144 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      145 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      147 FASTCALL                         VECTOR ; [+2]
      148 GETIMPORT                        R25 K47 [Vector3.new]
      150 CALL                             R25 0 1
      151 LOADK                            R26 K48 [{1, 0, 0}]
      152 LOADK                            R27 K49 [{0, 1, 0}]
      153 CALL                             R24 3 1
      154 SETTABLEKS                       R24 R23 K38 ["Offset"]
      156 GETTABLEKS                       R24 R3 K50 ["Z_AXIS"]
      158 SETTABLEKS                       R24 R23 K39 ["Color"]
      160 LOADK                            R24 K32 ["PlusZ"]
      161 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      163 SETTABLEKS                       R23 R22 K31 ["MinusZ"]
      165 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      166 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      168 FASTCALL                         VECTOR ; [+2]
      169 GETIMPORT                        R25 K47 [Vector3.new]
      171 CALL                             R25 0 1
      172 LOADK                            R26 K48 [{1, 0, 0}]
      173 LOADK                            R27 K51 [{0, -1, 0}]
      174 CALL                             R24 3 1
      175 SETTABLEKS                       R24 R23 K38 ["Offset"]
      177 GETTABLEKS                       R24 R3 K50 ["Z_AXIS"]
      179 SETTABLEKS                       R24 R23 K39 ["Color"]
      181 LOADK                            R24 K31 ["MinusZ"]
      182 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      184 SETTABLEKS                       R23 R22 K32 ["PlusZ"]
      186 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      187 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      189 FASTCALL                         VECTOR ; [+2]
      190 GETIMPORT                        R25 K47 [Vector3.new]
      192 CALL                             R25 0 1
      193 LOADK                            R26 K52 [{0, 0, 1}]
      194 LOADK                            R27 K48 [{1, 0, 0}]
      195 CALL                             R24 3 1
      196 SETTABLEKS                       R24 R23 K38 ["Offset"]
      198 GETTABLEKS                       R24 R3 K53 ["Y_AXIS"]
      200 SETTABLEKS                       R24 R23 K39 ["Color"]
      202 LOADK                            R24 K34 ["PlusY"]
      203 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      205 SETTABLEKS                       R23 R22 K33 ["MinusY"]
      207 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      208 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      210 FASTCALL                         VECTOR ; [+2]
      211 GETIMPORT                        R25 K47 [Vector3.new]
      213 CALL                             R25 0 1
      214 LOADK                            R26 K52 [{0, 0, 1}]
      215 LOADK                            R27 K54 [{-1, 0, 0}]
      216 CALL                             R24 3 1
      217 SETTABLEKS                       R24 R23 K38 ["Offset"]
      219 GETTABLEKS                       R24 R3 K53 ["Y_AXIS"]
      221 SETTABLEKS                       R24 R23 K39 ["Color"]
      223 LOADK                            R24 K33 ["MinusY"]
      224 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      226 SETTABLEKS                       R23 R22 K34 ["PlusY"]
      228 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      229 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      231 FASTCALL                         VECTOR ; [+2]
      232 GETIMPORT                        R25 K47 [Vector3.new]
      234 CALL                             R25 0 1
      235 LOADK                            R26 K49 [{0, 1, 0}]
      236 LOADK                            R27 K52 [{0, 0, 1}]
      237 CALL                             R24 3 1
      238 SETTABLEKS                       R24 R23 K38 ["Offset"]
      240 GETTABLEKS                       R24 R3 K55 ["X_AXIS"]
      242 SETTABLEKS                       R24 R23 K39 ["Color"]
      244 LOADK                            R24 K36 ["PlusX"]
      245 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      247 SETTABLEKS                       R23 R22 K35 ["MinusX"]
      249 DUPTABLE                         R23 K41 [{"Offset", "Color", "Opposite"}]
      250 GETIMPORT                        R24 K44 [CFrame.fromMatrix]
      252 FASTCALL                         VECTOR ; [+2]
      253 GETIMPORT                        R25 K47 [Vector3.new]
      255 CALL                             R25 0 1
      256 LOADK                            R26 K49 [{0, 1, 0}]
      257 LOADK                            R27 K56 [{0, 0, -1}]
      258 CALL                             R24 3 1
      259 SETTABLEKS                       R24 R23 K38 ["Offset"]
      261 GETTABLEKS                       R24 R3 K55 ["X_AXIS"]
      263 SETTABLEKS                       R24 R23 K39 ["Color"]
      265 LOADK                            R24 K35 ["MinusX"]
      266 SETTABLEKS                       R24 R23 K40 ["Opposite"]
      268 SETTABLEKS                       R23 R22 K36 ["PlusX"]
      270 CALL                             R21 1 1
      271 DUPCLOSURE                       R22 K57 [PROTO_0]
      272 CAPTURE                          VAL R18
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R20
      275 SETTABLEKS                       R22 R20 K46 ["new"]
      277 DUPCLOSURE                       R22 K58 [PROTO_1]
      278 CAPTURE                          VAL R18
      279 SETTABLEKS                       R22 R20 K59 ["update"]
      281 DUPCLOSURE                       R22 K60 [PROTO_2]
      282 CAPTURE                          VAL R18
      283 SETTABLEKS                       R22 R20 K61 ["_summonHandles"]
      285 DUPCLOSURE                       R22 K62 [PROTO_3]
      286 CAPTURE                          VAL R18
      287 SETTABLEKS                       R22 R20 K63 ["_endSummon"]
      289 DUPCLOSURE                       R22 K64 [PROTO_4]
      290 CAPTURE                          VAL R18
      291 SETTABLEKS                       R22 R20 K65 ["beginSummon"]
      293 DUPCLOSURE                       R22 K66 [PROTO_5]
      294 CAPTURE                          VAL R18
      295 SETTABLEKS                       R22 R20 K67 ["endSummon"]
      297 DUPCLOSURE                       R22 K68 [PROTO_6]
      298 CAPTURE                          VAL R18
      299 SETTABLEKS                       R22 R20 K69 ["_getBasisOffset"]
      301 DUPCLOSURE                       R22 K70 [PROTO_7]
      302 SETTABLEKS                       R22 R20 K71 ["shouldBiasTowardsObjects"]
      304 DUPCLOSURE                       R22 K72 [PROTO_8]
      305 CAPTURE                          VAL R11
      306 SETTABLEKS                       R22 R20 K73 ["hitTest"]
      308 DUPCLOSURE                       R22 K74 [PROTO_9]
      309 SETTABLEKS                       R22 R20 K75 ["_doMeasuredMove"]
      311 DUPCLOSURE                       R22 K76 [PROTO_10]
      312 CAPTURE                          VAL R21
      313 SETTABLEKS                       R22 R20 K77 ["_doBump"]
      315 DUPCLOSURE                       R22 K78 [PROTO_11]
      316 CAPTURE                          VAL R18
      317 SETTABLEKS                       R22 R20 K79 ["_useBoundingBoxMoveHandles"]
      319 DUPCLOSURE                       R22 K80 [PROTO_12]
      320 SETTABLEKS                       R22 R20 K81 ["_hasSoftSnap"]
      322 DUPCLOSURE                       R22 K82 [PROTO_13]
      323 DUPCLOSURE                       R23 K83 [PROTO_14]
      324 SETTABLEKS                       R23 R20 K84 ["_getHandleIdClosestToCenterOfScreen"]
      326 DUPCLOSURE                       R23 K85 [PROTO_15]
      327 CAPTURE                          VAL R11
      328 CAPTURE                          VAL R19
      329 SETTABLEKS                       R23 R20 K86 ["_getMoveMeasurementArrowMetrics"]
      331 DUPCLOSURE                       R23 K87 [PROTO_17]
      332 CAPTURE                          VAL R2
      333 CAPTURE                          VAL R5
      334 SETTABLEKS                       R23 R20 K88 ["_renderMoveMeasurementArrow"]
      336 DUPCLOSURE                       R23 K89 [PROTO_18]
      337 CAPTURE                          VAL R8
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R6
      340 SETTABLEKS                       R23 R20 K90 ["_renderHotkeyHelp"]
      342 DUPCLOSURE                       R23 K91 [PROTO_19]
      343 SETTABLEKS                       R23 R20 K92 ["_lastTransformWasLinear"]
      345 DUPCLOSURE                       R23 K93 [PROTO_21]
      346 CAPTURE                          VAL R11
      347 CAPTURE                          VAL R2
      348 CAPTURE                          VAL R5
      349 SETTABLEKS                       R23 R20 K94 ["_renderChosenAxisGuide"]
      351 DUPCLOSURE                       R23 K95 [PROTO_22]
      352 CAPTURE                          VAL R2
      353 CAPTURE                          VAL R11
      354 CAPTURE                          VAL R3
      355 SETTABLEKS                       R23 R20 K96 ["_renderPassiveLaggingHandle"]
      357 DUPCLOSURE                       R23 K97 [PROTO_23]
      358 CAPTURE                          VAL R2
      359 CAPTURE                          VAL R7
      360 CAPTURE                          VAL R9
      361 SETTABLEKS                       R23 R20 K98 ["_renderActiveMoveMeasurement"]
      363 DUPCLOSURE                       R23 K99 [PROTO_24]
      364 SETTABLEKS                       R23 R20 K100 ["_updateLaggingHandleChoice"]
      366 DUPCLOSURE                       R23 K101 [PROTO_25]
      367 SETTABLEKS                       R23 R20 K102 ["_getLaggingHandleChoice"]
      369 DUPCLOSURE                       R23 K103 [PROTO_26]
      370 CAPTURE                          VAL R2
      371 CAPTURE                          VAL R11
      372 SETTABLEKS                       R23 R20 K104 ["_renderDraggingAxisHandles"]
      374 DUPCLOSURE                       R23 K105 [PROTO_27]
      375 CAPTURE                          VAL R18
      376 CAPTURE                          VAL R2
      377 SETTABLEKS                       R23 R20 K106 ["_renderDraggingAxis"]
      379 DUPCLOSURE                       R23 K107 [PROTO_28]
      380 CAPTURE                          VAL R3
      381 CAPTURE                          VAL R2
      382 CAPTURE                          VAL R11
      383 SETTABLEKS                       R23 R20 K108 ["_renderHoveringHandles"]
      385 DUPCLOSURE                       R23 K109 [PROTO_31]
      386 CAPTURE                          VAL R2
      387 CAPTURE                          VAL R7
      388 CAPTURE                          VAL R9
      389 SETTABLEKS                       R23 R20 K110 ["_renderMeasurementInputBox"]
      391 DUPCLOSURE                       R23 K111 [PROTO_32]
      392 CAPTURE                          VAL R2
      393 SETTABLEKS                       R23 R20 K112 ["_renderPassiveMoveMeasurement"]
      395 DUPCLOSURE                       R23 K113 [PROTO_33]
      396 CAPTURE                          VAL R2
      397 SETTABLEKS                       R23 R20 K114 ["_renderHovering"]
      399 DUPCLOSURE                       R23 K115 [PROTO_34]
      400 CAPTURE                          VAL R2
      401 CAPTURE                          VAL R4
      402 SETTABLEKS                       R23 R20 K116 ["_renderBoundingBox"]
      404 DUPCLOSURE                       R23 K117 [PROTO_35]
      405 CAPTURE                          VAL R2
      406 CAPTURE                          VAL R15
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R12
      409 SETTABLEKS                       R23 R20 K118 ["_renderSummon"]
      411 DUPCLOSURE                       R23 K119 [PROTO_36]
      412 SETTABLEKS                       R23 R20 K120 ["_renderHoverOrDrag"]
      414 DUPCLOSURE                       R23 K121 [PROTO_37]
      415 CAPTURE                          VAL R2
      416 SETTABLEKS                       R23 R20 K122 ["renderNEW"]
      418 DUPCLOSURE                       R23 K123 [PROTO_38]
      419 CAPTURE                          VAL R18
      420 CAPTURE                          VAL R2
      421 CAPTURE                          VAL R11
      422 CAPTURE                          VAL R3
      423 CAPTURE                          VAL R4
      424 CAPTURE                          VAL R14
      425 CAPTURE                          VAL R13
      426 CAPTURE                          VAL R12
      427 SETTABLEKS                       R23 R20 K124 ["render"]
      429 DUPCLOSURE                       R23 K125 [PROTO_39]
      430 SETTABLEKS                       R23 R20 K126 ["selectionChanged"]
      432 DUPCLOSURE                       R23 K127 [PROTO_40]
      433 SETTABLEKS                       R23 R20 K128 ["_needsSoftSnaps"]
      435 DUPCLOSURE                       R23 K129 [PROTO_41]
      436 CAPTURE                          VAL R11
      437 CAPTURE                          VAL R18
      438 SETTABLEKS                       R23 R20 K130 ["mouseDown"]
      440 DUPCLOSURE                       R23 K131 [PROTO_42]
      441 CAPTURE                          VAL R21
      442 CAPTURE                          VAL R18
      443 SETTABLEKS                       R23 R20 K132 ["_setupMoveAtCurrentBoundingBox"]
      445 DUPCLOSURE                       R23 K133 [PROTO_43]
      446 SETTABLEKS                       R23 R20 K134 ["_setMidMoveBoundingBox"]
      448 DUPCLOSURE                       R23 K135 [PROTO_44]
      449 CAPTURE                          VAL R16
      450 SETTABLEKS                       R23 R20 K136 ["_getDistanceAlongAxis"]
      452 DUPCLOSURE                       R23 K137 [PROTO_48]
      453 CAPTURE                          VAL R18
      454 CAPTURE                          VAL R21
      455 CAPTURE                          VAL R11
      456 SETTABLEKS                       R23 R20 K138 ["_solveForAdjustedDistance"]
      458 DUPCLOSURE                       R23 K139 [PROTO_49]
      459 SETTABLEKS                       R23 R20 K140 ["_getSnappedDelta"]
      461 DUPCLOSURE                       R23 K141 [PROTO_50]
      462 CAPTURE                          VAL R17
      463 CAPTURE                          VAL R18
      464 SETTABLEKS                       R23 R20 K142 ["_mouseDragAxis"]
      466 MOVE                             R23 R18
      467 CALL                             R23 0 1
      468 JUMPIFNOT                        R23 ; [+4]
      469 DUPCLOSURE                       R23 K143 [PROTO_51]
      470 SETTABLEKS                       R23 R20 K144 ["mouseDrag"]
      472 JUMP                             ; [+3]
      473 DUPCLOSURE                       R23 K145 [PROTO_52]
      474 SETTABLEKS                       R23 R20 K144 ["mouseDrag"]
      476 DUPCLOSURE                       R23 K146 [PROTO_53]
      477 CAPTURE                          VAL R18
      478 SETTABLEKS                       R23 R20 K147 ["mouseUp"]
      480 DUPCLOSURE                       R23 K148 [PROTO_54]
      481 CAPTURE                          VAL R21
      482 SETTABLEKS                       R23 R20 K149 ["_updateHandles"]
      484 GETIMPORT                        R23 K30 [table.freeze]
      486 NEWTABLE                         R24 2 0
      488 GETIMPORT                        R25 K153 [Enum.KeyCode.RightShift]
      490 LOADB                            R26 1
      491 SETTABLE                         R26 R24 R25
      492 GETIMPORT                        R25 K155 [Enum.KeyCode.LeftShift]
      494 LOADB                            R26 1
      495 SETTABLE                         R26 R24 R25
      496 CALL                             R23 1 1
      497 GETIMPORT                        R24 K30 [table.freeze]
      499 NEWTABLE                         R25 8 0
      501 GETIMPORT                        R26 K157 [Enum.KeyCode.KeypadSeven]
      503 LOADK                            R27 K34 ["PlusY"]
      504 SETTABLE                         R27 R25 R26
      505 GETIMPORT                        R26 K159 [Enum.KeyCode.KeypadOne]
      507 LOADK                            R27 K33 ["MinusY"]
      508 SETTABLE                         R27 R25 R26
      509 GETIMPORT                        R26 K161 [Enum.KeyCode.KeypadFour]
      511 LOADK                            R27 K36 ["PlusX"]
      512 SETTABLE                         R27 R25 R26
      513 GETIMPORT                        R26 K163 [Enum.KeyCode.KeypadSix]
      515 LOADK                            R27 K35 ["MinusX"]
      516 SETTABLE                         R27 R25 R26
      517 GETIMPORT                        R26 K165 [Enum.KeyCode.KeypadEight]
      519 LOADK                            R27 K32 ["PlusZ"]
      520 SETTABLE                         R27 R25 R26
      521 GETIMPORT                        R26 K167 [Enum.KeyCode.KeypadTwo]
      523 LOADK                            R27 K31 ["MinusZ"]
      524 SETTABLE                         R27 R25 R26
      525 CALL                             R24 1 1
      526 DUPCLOSURE                       R25 K168 [PROTO_55]
      527 CAPTURE                          VAL R18
      528 CAPTURE                          VAL R23
      529 CAPTURE                          VAL R24
      530 SETTABLEKS                       R25 R20 K169 ["keyDown"]
      532 DUPCLOSURE                       R25 K170 [PROTO_56]
      533 CAPTURE                          VAL R18
      534 CAPTURE                          VAL R23
      535 SETTABLEKS                       R25 R20 K171 ["keyUp"]
      537 DUPCLOSURE                       R25 K172 [PROTO_57]
      538 SETTABLEKS                       R25 R20 K173 ["getPriority"]
      540 RETURN                           R20 1
