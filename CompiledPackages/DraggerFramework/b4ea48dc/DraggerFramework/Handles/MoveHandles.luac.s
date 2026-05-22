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
       31 JUMPIF                           R4 ; [+7]
       32 DUPTABLE                         R4 K7 [{"MustPositionAtPivot", "Summonable"}]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K5 ["MustPositionAtPivot"]
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K6 ["Summonable"]
       39 SETTABLEKS                       R4 R3 K8 ["_props"]
       41 SETTABLEKS                       R0 R3 K9 ["_draggerContext"]
       43 SETTABLEKS                       R2 R3 K10 ["_implementation"]
       45 LOADB                            R4 0
       46 SETTABLEKS                       R4 R3 K11 ["_tabKeyDown"]
       48 GETUPVAL                         R4 2
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+7]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K12 ["new"]
       54 MOVE                             R5 R0
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K13 ["_softSnapper"]
       58 GETUPVAL                         R6 4
       59 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       61 MOVE                             R5 R3
       62 GETIMPORT                        R4 K15 [setmetatable]
       64 CALL                             R4 2 1
       65 RETURN                           R4 1

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

PROTO_3:
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
       31 JUMPIFNOT                        R4 ; [+21]
       32 GETTABLEKS                       R6 R1 K9 ["Origin"]
       34 GETTABLEKS                       R8 R1 K10 ["Direction"]
       36 GETTABLEKS                       R8 R8 K11 ["Unit"]
       38 MUL                              R7 R8 R4
       39 ADD                              R5 R6 R7
       40 GETIMPORT                        R6 K14 [CFrame.new]
       42 GETTABLEKS                       R7 R0 K15 ["_boundingBox"]
       44 GETTABLEKS                       R7 R7 K12 ["CFrame"]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K16 ["PointToObjectSpace"]
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 1
       51 SETTABLEKS                       R6 R0 K17 ["_summonBasisOffset"]
       53 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       13 GETTABLEKS                       R2 R0 K3 ["_props"]
       15 GETTABLEKS                       R2 R2 K4 ["MustPositionAtPivot"]
       17 NOT                              R1 R2
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
       21 NAMECALL                         R1 R1 K1 ["useBoundingBoxMoveHandles"]
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+9]
       25 GETTABLEKS                       R2 R0 K5 ["_summonBasisOffset"]
       27 NOT                              R1 R2
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETTABLEKS                       R2 R0 K3 ["_props"]
       31 GETTABLEKS                       R2 R2 K4 ["MustPositionAtPivot"]
       33 NOT                              R1 R2
       34 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldPartSnap"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_15:
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

PROTO_16:
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
       52 JUMPIFNOT                        R9 ; [+10]
       53 LOADK                            R10 K14 [2.5]
       54 MUL                              R9 R10 R4
       55 GETTABLEKS                       R10 R2 K15 ["AxisOffset"]
       57 ADD                              R8 R9 R10
       58 GETTABLEKS                       R10 R1 K15 ["AxisOffset"]
       60 MUL                              R9 R5 R10
       61 SUB                              R7 R7 R9
       62 JUMP                             ; [+6]
       63 LOADK                            R10 K16 [3.5]
       64 GETTABLEKS                       R12 R2 K18 ["Outset"]
       66 ORK                              R11 R12 K17 [0]
       67 ADD                              R9 R10 R11
       68 MUL                              R8 R9 R4
       69 MUL                              R9 R6 R8
       70 ADD                              R10 R7 R9
       71 GETTABLEKS                       R14 R0 K8 ["_lastDelta"]
       73 MUL                              R13 R5 R14
       74 SUB                              R12 R7 R13
       75 ADD                              R11 R12 R9
       76 GETTABLEKS                       R12 R0 K8 ["_lastDelta"]
       78 LOADN                            R13 0
       79 JUMPIFNOTLT                      R12 R13 ; [+4]
       81 MOVE                             R12 R11
       82 MOVE                             R11 R10
       83 MOVE                             R10 R12
       84 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
       86 GETTABLEKS                       R14 R1 K6 ["Axis"]
       88 GETTABLEKS                       R14 R14 K10 ["Position"]
       90 NAMECALL                         R12 R12 K11 ["getHandleScale"]
       92 CALL                             R12 2 1
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K19 ["getHandleDimensionForScale"]
       96 MOVE                             R14 R12
       97 GETTABLEKS                       R15 R1 K18 ["Outset"]
       99 CALL                             R13 2 2
      100 GETUPVAL                         R15 2
      101 CALL                             R15 0 1
      102 JUMPIFNOT                        R15 ; [+7]
      103 GETTABLEKS                       R15 R0 K20 ["_draggingHandleFrac"]
      105 JUMPIFNOTEQKNIL                  R15 ; [+4]
      107 LOADK                            R15 K21 [0.5]
      108 SETTABLEKS                       R15 R0 K20 ["_draggingHandleFrac"]
      110 GETTABLEKS                       R16 R0 K20 ["_draggingHandleFrac"]
      112 LOADK                            R17 K22 [0.4]
      113 LOADN                            R18 1
      114 FASTCALL                         MATH_CLAMP ; [+2]
      115 GETIMPORT                        R15 K25 [math.clamp]
      117 CALL                             R15 3 1
      118 MUL                              R20 R15 R14
      119 ADD                              R19 R13 R20
      120 MUL                              R18 R5 R19
      121 ADD                              R17 R7 R18
      122 LOADK                            R19 K21 [0.5]
      123 MUL                              R18 R19 R9
      124 ADD                              R16 R17 R18
      125 GETTABLEKS                       R17 R0 K9 ["_draggerContext"]
      127 MOVE                             R19 R16
      128 NAMECALL                         R17 R17 K26 ["worldToViewportPoint"]
      130 CALL                             R17 2 2
      131 LOADNIL                          R19
      132 JUMPIFNOT                        R18 ; [+8]
      133 GETIMPORT                        R20 K29 [UDim2.fromOffset]
      135 GETTABLEKS                       R21 R17 K30 ["X"]
      137 GETTABLEKS                       R22 R17 K31 ["Y"]
      139 CALL                             R20 2 1
      140 MOVE                             R19 R20
      141 GETIMPORT                        R20 K34 [table.freeze]
      143 DUPTABLE                         R21 K42 [{"from", "to", "direction", "perpendicularDirection", "scale", "viewportPosition", "inBounds"}]
      144 SETTABLEKS                       R10 R21 K35 ["from"]
      146 SETTABLEKS                       R11 R21 K36 ["to"]
      148 SETTABLEKS                       R5 R21 K37 ["direction"]
      150 SETTABLEKS                       R6 R21 K38 ["perpendicularDirection"]
      152 SETTABLEKS                       R4 R21 K39 ["scale"]
      154 SETTABLEKS                       R19 R21 K40 ["viewportPosition"]
      156 SETTABLEKS                       R18 R21 K41 ["inBounds"]
      158 CALL                             R20 1 -1
      159 RETURN                           R20 -1

PROTO_17:
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
       23 LOADN                            R10 236
       24 CALL                             R6 4 1
       25 ADD                              R4 R5 R6
       26 DUPTABLE                         R5 K12 [{"viewportPosition"}]
       27 SETTABLEKS                       R4 R5 K11 ["viewportPosition"]
       29 RETURN                           R5 1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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

PROTO_20:
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
       39 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       16 LOADN                            R10 240
       17 LOADN                            R8 16
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_dragPlaneCf"]
        2 GETTABLEKS                       R3 R2 K1 ["Position"]
        4 GETTABLEKS                       R4 R2 K2 ["XVector"]
        6 GETTABLEKS                       R5 R2 K3 ["YVector"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["createElement"]
       11 GETUPVAL                         R7 1
       12 DUPTABLE                         R8 K8 [{"AlwaysOnTop", "Color3", "Render"}]
       13 LOADB                            R9 1
       14 SETTABLEKS                       R9 R8 K5 ["AlwaysOnTop"]
       16 GETTABLEKS                       R9 R0 K9 ["_draggerContext"]
       18 NAMECALL                         R9 R9 K10 ["getGridColor"]
       20 CALL                             R9 1 1
       21 SETTABLEKS                       R9 R8 K6 ["Color3"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 SETTABLEKS                       R9 R8 K7 ["Render"]
       30 CALL                             R6 2 -1
       31 RETURN                           R6 -1

PROTO_29:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 NAMECALL                         R2 R0 K1 ["_getLaggingHandleChoice"]
        6 CALL                             R2 1 3
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["createElement"]
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
       26 CALL                             R9 0 1
       27 JUMPIFNOT                        R9 ; [+3]
       28 GETTABLEKS                       R8 R4 K6 ["Color"]
       30 JUMP                             ; [+6]
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K11 ["makeDimmed"]
       34 GETTABLEKS                       R9 R4 K6 ["Color"]
       36 CALL                             R8 1 1
       37 SETTABLEKS                       R8 R7 K6 ["Color"]
       39 SETTABLEKS                       R3 R7 K7 ["Scale"]
       41 LOADB                            R8 1
       42 SETTABLEKS                       R8 R7 K8 ["AlwaysOnTop"]
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K9 ["Thin"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1

PROTO_30:
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
       94 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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
       12 GETTABLEKS                       R4 R0 K2 ["_handles"]
       14 GETTABLE                         R3 R4 R1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K13 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "Tail", "TailScale", "AlwaysOnTop", "Hovered"}]
       20 GETTABLEKS                       R7 R3 K4 ["Axis"]
       22 SETTABLEKS                       R7 R6 K4 ["Axis"]
       24 GETTABLEKS                       R7 R3 K5 ["AxisOffset"]
       26 SETTABLEKS                       R7 R6 K5 ["AxisOffset"]
       28 GETTABLEKS                       R7 R3 K6 ["Outset"]
       30 SETTABLEKS                       R7 R6 K6 ["Outset"]
       32 GETUPVAL                         R8 0
       33 CALL                             R8 0 1
       34 JUMPIFNOT                        R8 ; [+3]
       35 GETTABLEKS                       R7 R3 K14 ["HighlightColor"]
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R7 R3 K7 ["Color"]
       40 SETTABLEKS                       R7 R6 K7 ["Color"]
       42 GETTABLEKS                       R7 R3 K8 ["Scale"]
       44 SETTABLEKS                       R7 R6 K8 ["Scale"]
       46 GETTABLEKS                       R7 R0 K15 ["_lastDelta"]
       48 SETTABLEKS                       R7 R6 K9 ["Tail"]
       50 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       52 GETTABLEKS                       R10 R3 K4 ["Axis"]
       54 GETTABLEKS                       R10 R10 K16 ["Position"]
       56 GETTABLEKS                       R12 R0 K17 ["_axis"]
       58 GETTABLEKS                       R13 R0 K15 ["_lastDelta"]
       60 MUL                              R11 R12 R13
       61 SUB                              R9 R10 R11
       62 NAMECALL                         R7 R7 K18 ["getHandleScale"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K10 ["TailScale"]
       67 LOADB                            R7 1
       68 SETTABLEKS                       R7 R6 K11 ["AlwaysOnTop"]
       70 LOADB                            R7 0
       71 SETTABLEKS                       R7 R6 K12 ["Hovered"]
       73 CALL                             R4 2 1
       74 SETTABLE                         R4 R2 R1
       75 GETUPVAL                         R4 1
       76 GETTABLEKS                       R4 R4 K19 ["createFragment"]
       78 MOVE                             R5 R2
       79 CALL                             R4 1 -1
       80 RETURN                           R4 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 -1
       12 FASTCALL                         ASSERT ; [+2]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 -1 0
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R0 K4 ["_updateLaggingHandleChoice"]
       19 CALL                             R2 2 0
       20 NAMECALL                         R2 R0 K5 ["_lastTransformWasLinear"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["createFragment"]
       26 DUPTABLE                         R4 K13 [{"ChosenAxisDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
       27 JUMPIFNOT                        R2 ; [+5]
       28 MOVE                             R7 R1
       29 NAMECALL                         R5 R0 K14 ["_renderChosenAxisGuide"]
       31 CALL                             R5 2 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K7 ["ChosenAxisDisplay"]
       36 NAMECALL                         R6 R0 K15 ["_hasSoftSnap"]
       38 CALL                             R6 1 1
       39 JUMPIFNOT                        R6 ; [+7]
       40 GETTABLEKS                       R5 R0 K16 ["_softSnapper"]
       42 LOADB                            R7 1
       43 NAMECALL                         R5 R5 K17 ["render"]
       45 CALL                             R5 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R4 K8 ["SoftSnaps"]
       50 GETTABLEKS                       R5 R0 K18 ["_implementation"]
       52 GETTABLEKS                       R7 R0 K19 ["_lastGlobalTransformForRender"]
       54 NAMECALL                         R5 R5 K17 ["render"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K9 ["ImplementationRendered"]
       59 NAMECALL                         R5 R0 K20 ["_renderHotkeyHelp"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R4 K10 ["HotkeyHelp"]
       64 JUMPIFNOT                        R2 ; [+4]
       65 NAMECALL                         R5 R0 K21 ["_renderActiveMoveMeasurement"]
       67 CALL                             R5 1 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R5
       70 SETTABLEKS                       R5 R4 K11 ["MoveMeasurement"]
       72 MOVE                             R7 R1
       73 NAMECALL                         R5 R0 K22 ["_renderDraggingAxisHandles"]
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K12 ["Handles"]
       78 CALL                             R3 1 -1
       79 RETURN                           R3 -1

PROTO_35:
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
       40 DUPTABLE                         R8 K22 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "TailStart", "TailEnd", "TailScale", "PlaneCf", "PlaneColors", "LocalPlaneDelta", "AlwaysOnTop", "Hovered", "IsView"}]
       41 GETTABLEKS                       R11 R3 K8 ["Axis"]
       43 GETTABLEKS                       R12 R3 K21 ["IsView"]
       45 NAMECALL                         R9 R0 K23 ["_orient"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K8 ["Axis"]
       50 GETTABLEKS                       R9 R3 K9 ["AxisOffset"]
       52 SETTABLEKS                       R9 R8 K9 ["AxisOffset"]
       54 GETTABLEKS                       R9 R3 K10 ["Outset"]
       56 SETTABLEKS                       R9 R8 K10 ["Outset"]
       58 GETUPVAL                         R10 0
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+3]
       61 GETTABLEKS                       R9 R3 K24 ["HighlightColor"]
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R9 R3 K11 ["Color"]
       66 SETTABLEKS                       R9 R8 K11 ["Color"]
       68 GETTABLEKS                       R9 R3 K12 ["Scale"]
       70 SETTABLEKS                       R9 R8 K12 ["Scale"]
       72 SETTABLEKS                       R4 R8 K13 ["TailStart"]
       74 SETTABLEKS                       R5 R8 K14 ["TailEnd"]
       76 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
       78 MOVE                             R11 R4
       79 NAMECALL                         R9 R9 K25 ["getHandleScale"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K15 ["TailScale"]
       84 GETTABLEKS                       R9 R0 K3 ["_dragPlaneCf"]
       86 SETTABLEKS                       R9 R8 K16 ["PlaneCf"]
       88 GETTABLEKS                       R9 R3 K17 ["PlaneColors"]
       90 SETTABLEKS                       R9 R8 K17 ["PlaneColors"]
       92 GETTABLEKS                       R9 R0 K26 ["_localPlaneDelta"]
       94 SETTABLEKS                       R9 R8 K18 ["LocalPlaneDelta"]
       96 LOADB                            R9 1
       97 SETTABLEKS                       R9 R8 K19 ["AlwaysOnTop"]
       99 LOADB                            R9 0
      100 SETTABLEKS                       R9 R8 K20 ["Hovered"]
      102 GETTABLEKS                       R9 R3 K21 ["IsView"]
      104 SETTABLEKS                       R9 R8 K21 ["IsView"]
      106 CALL                             R6 2 1
      107 SETTABLE                         R6 R2 R1
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K27 ["createFragment"]
      111 MOVE                             R7 R2
      112 CALL                             R6 1 -1
      113 RETURN                           R6 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 NAMECALL                         R2 R2 K1 ["getDraggerShowWhileDragging"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 -1
       12 FASTCALL                         ASSERT ; [+2]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 -1 0
       16 NAMECALL                         R2 R0 K4 ["_lastTransformWasLinear"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K5 ["createFragment"]
       22 DUPTABLE                         R4 K12 [{"ChosenPlaneDisplay", "SoftSnaps", "ImplementationRendered", "HotkeyHelp", "MoveMeasurement", "Handles"}]
       23 JUMPIFNOT                        R2 ; [+5]
       24 MOVE                             R7 R1
       25 NAMECALL                         R5 R0 K13 ["_renderChosenPlaneGuide"]
       27 CALL                             R5 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K6 ["ChosenPlaneDisplay"]
       32 NAMECALL                         R6 R0 K14 ["_hasSoftSnap"]
       34 CALL                             R6 1 1
       35 JUMPIFNOT                        R6 ; [+7]
       36 GETTABLEKS                       R5 R0 K15 ["_softSnapper"]
       38 LOADB                            R7 1
       39 NAMECALL                         R5 R5 K16 ["render"]
       41 CALL                             R5 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K7 ["SoftSnaps"]
       46 GETTABLEKS                       R5 R0 K17 ["_implementation"]
       48 GETTABLEKS                       R7 R0 K18 ["_lastGlobalTransformForRender"]
       50 NAMECALL                         R5 R5 K16 ["render"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K8 ["ImplementationRendered"]
       55 NAMECALL                         R5 R0 K19 ["_renderHotkeyHelp"]
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K9 ["HotkeyHelp"]
       60 JUMPIFNOT                        R2 ; [+4]
       61 NAMECALL                         R5 R0 K20 ["_renderActiveMoveMeasurement"]
       63 CALL                             R5 1 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 SETTABLEKS                       R5 R4 K10 ["MoveMeasurement"]
       68 MOVE                             R7 R1
       69 NAMECALL                         R5 R0 K21 ["_renderDraggingPlaneHandles"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K11 ["Handles"]
       74 CALL                             R3 1 -1
       75 RETURN                           R3 -1

PROTO_37:
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

PROTO_38:
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
       44 JUMPIFLE                         R11 R13 ; [+42]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K7 ["createElement"]
       49 GETUPVAL                         R13 3
       50 DUPTABLE                         R14 K14 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered", "Transparency"}]
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
       72 LOADB                            R15 1
       73 SETTABLEKS                       R15 R14 K11 ["AlwaysOnTop"]
       75 SETTABLEKS                       R9 R14 K12 ["Hovered"]
       77 GETUPVAL                         R16 0
       78 CALL                             R16 0 1
       79 JUMPIFNOT                        R16 ; [+2]
       80 SUBRK                            R15 R15 K11 ["AlwaysOnTop"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R15
       83 SETTABLEKS                       R15 R14 K13 ["Transparency"]
       85 CALL                             R12 2 1
       86 SETTABLE                         R12 R2 R7
       87 FORGLOOP                         R4 2 ; [-77]
       89 GETUPVAL                         R4 0
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+64]
       92 GETTABLEKS                       R4 R0 K16 ["_planeHandles"]
       94 LOADNIL                          R5
       95 LOADNIL                          R6
       96 FORGPREP                         R4
       97 JUMPIFEQ                         R7 R1 ; [+2]
       99 LOADB                            R9 0 +1
      100 LOADB                            R9 1
      101 JUMPIFNOT                        R9 ; [+3]
      102 GETTABLEKS                       R10 R8 K3 ["HighlightColor"]
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R10 R8 K2 ["Color"]
      107 GETTABLEKS                       R13 R8 K5 ["Axis"]
      109 GETTABLEKS                       R14 R8 K17 ["IsView"]
      111 NAMECALL                         R11 R0 K18 ["_orient"]
      113 CALL                             R11 3 1
      114 MOVE                             R14 R11
      115 NAMECALL                         R12 R0 K6 ["_getGrazingAngleFactor"]
      117 CALL                             R12 2 1
      118 LOADN                            R13 0
      119 JUMPIFLE                         R12 R13 ; [+34]
      121 GETUPVAL                         R13 2
      122 GETTABLEKS                       R13 R13 K7 ["createElement"]
      124 GETUPVAL                         R14 4
      125 DUPTABLE                         R15 K19 [{"Axis", "AxisOffset", "Outset", "Color", "Scale", "AlwaysOnTop", "Hovered", "IsView", "Transparency"}]
      126 SETTABLEKS                       R11 R15 K5 ["Axis"]
      128 LOADNIL                          R16
      129 SETTABLEKS                       R16 R15 K8 ["AxisOffset"]
      131 LOADNIL                          R16
      132 SETTABLEKS                       R16 R15 K9 ["Outset"]
      134 SETTABLEKS                       R10 R15 K2 ["Color"]
      136 GETTABLEKS                       R16 R8 K10 ["Scale"]
      138 SETTABLEKS                       R16 R15 K10 ["Scale"]
      140 LOADB                            R16 1
      141 SETTABLEKS                       R16 R15 K11 ["AlwaysOnTop"]
      143 SETTABLEKS                       R9 R15 K12 ["Hovered"]
      145 GETTABLEKS                       R16 R8 K17 ["IsView"]
      147 SETTABLEKS                       R16 R15 K17 ["IsView"]
      149 SUBRK                            R16 R15 K12 ["Hovered"]
      150 SETTABLEKS                       R16 R15 K13 ["Transparency"]
      152 CALL                             R13 2 1
      153 SETTABLE                         R13 R2 R7
      154 FORGLOOP                         R4 2 ; [-58]
      156 GETUPVAL                         R4 2
      157 GETTABLEKS                       R4 R4 K20 ["createFragment"]
      159 MOVE                             R5 R2
      160 CALL                             R4 1 -1
      161 RETURN                           R4 -1

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        4 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
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
       24 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_props"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowBoundingBox"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 LOADN                            R2 1
       12 JUMPIFNOTLT                      R2 R1 ; [+41]
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

PROTO_45:
        0 NAMECALL                         R2 R0 K0 ["_useBoundingBoxMoveHandles"]
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 JUMPIFNOT                        R1 ; [+118]
        5 GETTABLEKS                       R2 R0 K1 ["_props"]
        7 GETTABLEKS                       R2 R2 K2 ["Summonable"]
        9 JUMPIFNOT                        R2 ; [+113]
       10 NEWTABLE                         R2 4 0
       12 GETTABLEKS                       R3 R0 K3 ["_summonOffsetInBasis"]
       14 JUMPIFNOT                        R3 ; [+33]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K9 [{"DraggerContext", "CFrame", "Dragging", "Hovered"}]
       20 GETTABLEKS                       R6 R0 K10 ["_draggerContext"]
       22 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       24 GETTABLEKS                       R7 R0 K11 ["_boundingBox"]
       26 GETTABLEKS                       R7 R7 K6 ["CFrame"]
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
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K4 ["createElement"]
       57 GETUPVAL                         R4 2
       58 DUPTABLE                         R5 K15 [{"DraggerContext"}]
       59 GETTABLEKS                       R6 R0 K10 ["_draggerContext"]
       61 SETTABLEKS                       R6 R5 K5 ["DraggerContext"]
       63 CALL                             R3 2 1
       64 SETTABLEKS                       R3 R2 K16 ["SummonHandlesHider"]
       66 JUMP                             ; [+50]
       67 GETUPVAL                         R3 2
       68 GETTABLEKS                       R3 R3 K17 ["hasSeenEnough"]
       70 GETTABLEKS                       R4 R0 K10 ["_draggerContext"]
       72 CALL                             R3 1 1
       73 JUMPIF                           R3 ; [+43]
       74 GETTABLEKS                       R4 R0 K11 ["_boundingBox"]
       76 GETTABLEKS                       R4 R4 K6 ["CFrame"]
       78 GETTABLEKS                       R5 R0 K18 ["_basisOffset"]
       80 MUL                              R3 R4 R5
       81 GETTABLEKS                       R3 R3 K19 ["Position"]
       83 GETTABLEKS                       R4 R0 K10 ["_draggerContext"]
       85 MOVE                             R6 R3
       86 NAMECALL                         R4 R4 K20 ["worldToViewportPoint"]
       88 CALL                             R4 2 2
       89 GETTABLEKS                       R6 R4 K21 ["Z"]
       91 LOADN                            R7 0
       92 JUMPIFNOTLT                      R7 R6 ; [+24]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K4 ["createElement"]
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
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K30 ["createFragment"]
      120 MOVE                             R4 R2
      121 CALL                             R3 1 -1
      122 RETURN                           R3 -1
      123 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K4 ["createElement"]
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
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R10 R10 K4 ["createElement"]
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
       96 GETUPVAL                         R13 3
       97 GETTABLEKS                       R13 R13 K17 ["makeDimmed"]
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
      141 GETUPVAL                         R11 3
      142 GETTABLEKS                       R11 R11 K17 ["makeDimmed"]
      144 MOVE                             R12 R9
      145 CALL                             R11 1 1
      146 MOVE                             R9 R11
      147 GETUPVAL                         R11 1
      148 GETTABLEKS                       R11 R11 K4 ["createElement"]
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
      182 GETTABLEKS                       R4 R0 K22 ["_props"]
      184 GETTABLEKS                       R4 R4 K23 ["ShowBoundingBox"]
      186 JUMPIFNOT                        R4 ; [+50]
      187 GETTABLEKS                       R5 R0 K24 ["_selectionWrapper"]
      189 NAMECALL                         R5 R5 K25 ["get"]
      191 CALL                             R5 1 1
      192 LENGTH                           R4 R5
      193 LOADN                            R5 1
      194 JUMPIFNOTLT                      R5 R4 ; [+42]
      196 GETUPVAL                         R4 1
      197 GETTABLEKS                       R4 R4 K4 ["createElement"]
      199 GETUPVAL                         R5 4
      200 DUPTABLE                         R6 K30 [{"CFrame", "Size", "Color", "LineThickness", "Container"}]
      201 GETTABLEKS                       R7 R0 K31 ["_boundingBox"]
      203 GETTABLEKS                       R7 R7 K26 ["CFrame"]
      205 SETTABLEKS                       R7 R6 K26 ["CFrame"]
      207 GETTABLEKS                       R7 R0 K31 ["_boundingBox"]
      209 GETTABLEKS                       R7 R7 K27 ["Size"]
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
      238 GETTABLEKS                       R4 R0 K22 ["_props"]
      240 GETTABLEKS                       R4 R4 K37 ["Summonable"]
      242 JUMPIFNOT                        R4 ; [+112]
      243 GETTABLEKS                       R4 R0 K38 ["_summonBasisOffset"]
      245 JUMPIFNOT                        R4 ; [+40]
      246 GETUPVAL                         R4 1
      247 GETTABLEKS                       R4 R4 K4 ["createElement"]
      249 GETUPVAL                         R5 5
      250 DUPTABLE                         R6 K41 [{"DraggerContext", "CFrame", "IsActive"}]
      251 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      253 SETTABLEKS                       R7 R6 K39 ["DraggerContext"]
      255 GETTABLEKS                       R8 R0 K31 ["_boundingBox"]
      257 GETTABLEKS                       R8 R8 K26 ["CFrame"]
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
      292 GETUPVAL                         R4 1
      293 GETTABLEKS                       R4 R4 K4 ["createElement"]
      295 GETUPVAL                         R5 6
      296 DUPTABLE                         R6 K46 [{"DraggerContext"}]
      297 GETTABLEKS                       R7 R0 K32 ["_draggerContext"]
      299 SETTABLEKS                       R7 R6 K39 ["DraggerContext"]
      301 CALL                             R4 2 1
      302 SETTABLEKS                       R4 R2 K47 ["SummonHandlesHider"]
      304 JUMP                             ; [+50]
      305 GETUPVAL                         R4 6
      306 GETTABLEKS                       R4 R4 K48 ["hasSeenEnough"]
      308 GETTABLEKS                       R5 R0 K32 ["_draggerContext"]
      310 CALL                             R4 1 1
      311 JUMPIF                           R4 ; [+43]
      312 GETTABLEKS                       R5 R0 K31 ["_boundingBox"]
      314 GETTABLEKS                       R5 R5 K26 ["CFrame"]
      316 GETTABLEKS                       R6 R0 K49 ["_basisOffset"]
      318 MUL                              R4 R5 R6
      319 GETTABLEKS                       R4 R4 K50 ["Position"]
      321 GETTABLEKS                       R5 R0 K32 ["_draggerContext"]
      323 MOVE                             R7 R4
      324 NAMECALL                         R5 R5 K51 ["worldToViewportPoint"]
      326 CALL                             R5 2 2
      327 GETTABLEKS                       R7 R5 K52 ["Z"]
      329 LOADN                            R8 0
      330 JUMPIFNOTLT                      R8 R7 ; [+24]
      332 GETUPVAL                         R7 1
      333 GETTABLEKS                       R7 R7 K4 ["createElement"]
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
      355 GETUPVAL                         R4 1
      356 GETTABLEKS                       R4 R4 K4 ["createElement"]
      358 LOADK                            R5 K61 ["Folder"]
      359 NEWTABLE                         R6 0 0
      361 MOVE                             R7 R2
      362 CALL                             R4 3 -1
      363 RETURN                           R4 -1

PROTO_49:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_laggingHandleId"]
        3 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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
       89 JUMP                             ; [+68]
       90 GETUPVAL                         R3 1
       91 CALL                             R3 0 1
       92 JUMPIFNOT                        R3 ; [+65]
       93 GETTABLEKS                       R4 R0 K25 ["_planeHandles"]
       95 GETTABLE                         R3 R4 R2
       96 JUMPIFNOT                        R3 ; [+61]
       97 GETTABLEKS                       R6 R0 K25 ["_planeHandles"]
       99 GETTABLE                         R5 R6 R2
      100 GETTABLEKS                       R5 R5 K20 ["Axis"]
      102 GETTABLEKS                       R7 R0 K25 ["_planeHandles"]
      104 GETTABLE                         R6 R7 R2
      105 GETTABLEKS                       R6 R6 K26 ["IsView"]
      107 NAMECALL                         R3 R0 K27 ["_orient"]
      109 CALL                             R3 3 1
      110 SETTABLEKS                       R3 R0 K28 ["_dragPlaneCf"]
      112 JUMPIFNOTEQKS                    R2 K29 ["PlaneY"] ; [+13]
      114 GETTABLEKS                       R3 R0 K28 ["_dragPlaneCf"]
      116 GETIMPORT                        R4 K31 [CFrame.fromOrientation]
      118 LOADN                            R5 0
      119 LOADN                            R6 0
      120 LOADK                            R7 K32 [-1.5707963267949]
      121 CALL                             R4 3 1
      122 MUL                              R3 R3 R4
      123 SETTABLEKS                       R3 R0 K28 ["_dragPlaneCf"]
      125 JUMP                             ; [+11]
      126 GETTABLEKS                       R3 R0 K28 ["_dragPlaneCf"]
      128 GETIMPORT                        R4 K31 [CFrame.fromOrientation]
      130 LOADK                            R5 K33 [3.14159265358979]
      131 LOADN                            R6 0
      132 LOADN                            R7 0
      133 CALL                             R4 3 1
      134 MUL                              R3 R3 R4
      135 SETTABLEKS                       R3 R0 K28 ["_dragPlaneCf"]
      137 GETUPVAL                         R3 2
      138 GETTABLEKS                       R3 R3 K34 ["_planePoint"]
      140 GETTABLEKS                       R4 R0 K28 ["_dragPlaneCf"]
      142 MOVE                             R5 R1
      143 CALL                             R3 2 1
      144 SETTABLEKS                       R3 R0 K35 ["_dragPlanePointStart"]
      146 GETTABLEKS                       R3 R0 K35 ["_dragPlanePointStart"]
      148 SETTABLEKS                       R3 R0 K36 ["_dragPlanePointEnd"]
      150 GETIMPORT                        R3 K39 [Vector2.zero]
      152 SETTABLEKS                       R3 R0 K40 ["_localPlaneDelta"]
      154 GETIMPORT                        R3 K39 [Vector2.zero]
      156 SETTABLEKS                       R3 R0 K41 ["_lastDelta"]
      158 GETUPVAL                         R3 3
      159 CALL                             R3 0 1
      160 JUMPIFNOT                        R3 ; [+5]
      161 GETIMPORT                        R3 K43 [CFrame.new]
      163 CALL                             R3 0 1
      164 SETTABLEKS                       R3 R0 K44 ["_lastGlobalTransformForRender"]
      166 GETTABLEKS                       R3 R0 K45 ["_implementation"]
      168 GETTABLEKS                       R5 R0 K46 ["_selectionWrapper"]
      170 NAMECALL                         R5 R5 K47 ["get"]
      172 CALL                             R5 1 1
      173 GETTABLEKS                       R6 R0 K48 ["_selectionInfo"]
      175 NAMECALL                         R3 R3 K49 ["beginDrag"]
      177 CALL                             R3 3 0
      178 GETUPVAL                         R3 3
      179 CALL                             R3 0 1
      180 JUMPIFNOT                        R3 ; [+30]
      181 GETTABLEKS                       R3 R0 K45 ["_implementation"]
      183 GETTABLEKS                       R3 R3 K50 ["getSoftSnaps"]
      185 JUMPIFNOT                        R3 ; [+20]
      186 MOVE                             R5 R2
      187 NAMECALL                         R3 R0 K51 ["_needsSoftSnaps"]
      189 CALL                             R3 2 1
      190 JUMPIFNOT                        R3 ; [+15]
      191 GETTABLEKS                       R3 R0 K52 ["_softSnapper"]
      193 GETTABLEKS                       R5 R0 K45 ["_implementation"]
      195 GETTABLEKS                       R7 R0 K23 ["_axis"]
      197 GETTABLEKS                       R8 R0 K53 ["_summonOffsetInBasis"]
      199 NAMECALL                         R5 R5 K50 ["getSoftSnaps"]
      201 CALL                             R5 3 -1
      202 NAMECALL                         R3 R3 K54 ["setSnaps"]
      204 CALL                             R3 -1 0
      205 RETURN                           R0 0
      206 GETTABLEKS                       R3 R0 K52 ["_softSnapper"]
      208 NAMECALL                         R3 R3 K55 ["clearSnaps"]
      210 CALL                             R3 1 0
      211 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_draggingHandleId"]
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R2 R2 K1 ["Offset"]
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETTABLEKS                       R6 R0 K2 ["_boundingBox"]
       12 GETTABLEKS                       R6 R6 K3 ["CFrame"]
       14 NAMECALL                         R7 R0 K4 ["_getBasisOffset"]
       16 CALL                             R7 1 1
       17 MUL                              R5 R6 R7
       18 MUL                              R4 R5 R2
       19 GETTABLEKS                       R3 R4 K5 ["LookVector"]
       21 JUMP                             ; [+7]
       22 GETTABLEKS                       R5 R0 K2 ["_boundingBox"]
       24 GETTABLEKS                       R5 R5 K3 ["CFrame"]
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

PROTO_53:
        0 GETTABLEKS                       R2 R0 K0 ["_boundingBox"]
        2 SETTABLEKS                       R1 R2 K1 ["CFrame"]
        4 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_draggingOriginalBoundingBoxCFrame"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["_axis"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["_startDistance"]
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
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K7 ["_draggerContext"]
       44 GETTABLEKS                       R5 R2 K8 ["Position"]
       46 NAMECALL                         R3 R3 K9 ["getHandleScale"]
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+19]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["getHandleDimensionForScale"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["_props"]
       12 GETTABLEKS                       R4 R4 K2 ["Outset"]
       14 CALL                             R2 2 2
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K3 ["_startDistance"]
       18 SUB                              R4 R0 R5
       19 ADD                              R5 R4 R2
       20 GETUPVAL                         R8 4
       21 SUB                              R7 R8 R5
       22 DIV                              R6 R7 R3
       23 RETURN                           R6 1
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K0 ["getHandleDimensionForScale"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 2
       29 GETUPVAL                         R6 4
       30 SUB                              R5 R6 R0
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K3 ["_startDistance"]
       34 ADD                              R4 R5 R6
       35 SUB                              R7 R4 R2
       36 GETUPVAL                         R8 5
       37 SUB                              R6 R7 R8
       38 DIV                              R5 R6 R3
       39 RETURN                           R5 1

PROTO_57:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["getHandleDimensionForScale"]
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K1 ["_props"]
       13 GETTABLEKS                       R5 R5 K2 ["Outset"]
       15 CALL                             R3 2 2
       16 MOVE                             R1 R3
       17 MOVE                             R2 R4
       18 RETURN                           R2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K0 ["getHandleDimensionForScale"]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R0
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 2
       26 MOVE                             R1 R3
       27 MOVE                             R2 R4
       28 RETURN                           R2 1

PROTO_58:
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
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R7 R0 K4 ["_draggingHandleId"]
       32 GETTABLE                         R5 R6 R7
       33 GETTABLEKS                       R5 R5 K7 ["Offset"]
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
       56 GETUPVAL                         R12 2
       57 GETTABLEKS                       R12 R12 K8 ["getHandleDimensionForScale"]
       59 MOVE                             R13 R6
       60 LOADN                            R14 0
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R0 K9 ["_props"]
       64 GETTABLEKS                       R14 R14 K10 ["Outset"]
       66 CALL                             R12 2 2
       67 MOVE                             R10 R12
       68 MOVE                             R11 R13
       69 JUMP                             ; [+9]
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K8 ["getHandleDimensionForScale"]
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
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K8 ["getHandleDimensionForScale"]
       86 MOVE                             R14 R6
       87 MOVE                             R15 R1
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R0 K9 ["_props"]
       91 GETTABLEKS                       R15 R15 K10 ["Outset"]
       93 CALL                             R13 2 2
       94 MOVE                             R11 R13
       95 MOVE                             R12 R14
       96 JUMP                             ; [+9]
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K8 ["getHandleDimensionForScale"]
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

PROTO_59:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["_implementation"]
        3 GETTABLEKS                       R3 R3 K1 ["getSnapPoints"]
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETTABLEKS                       R3 R0 K0 ["_implementation"]
        8 NAMECALL                         R3 R3 K1 ["getSnapPoints"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 JUMPIFNOT                        R2 ; [+72]
       13 GETTABLEKS                       R4 R0 K2 ["_draggingOriginalBoundingBoxCFrame"]
       15 GETTABLEKS                       R5 R0 K3 ["_basisOffset"]
       17 MUL                              R3 R4 R5
       18 GETTABLEKS                       R3 R3 K4 ["Position"]
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

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_planePoint"]
        3 GETTABLEKS                       R3 R0 K1 ["_dragPlaneCf"]
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+69]
        8 SETTABLEKS                       R2 R0 K2 ["_dragPlanePointEnd"]
       10 GETTABLEKS                       R4 R0 K2 ["_dragPlanePointEnd"]
       12 GETTABLEKS                       R5 R0 K3 ["_dragPlanePointStart"]
       14 SUB                              R3 R4 R5
       15 GETTABLEKS                       R4 R0 K1 ["_dragPlaneCf"]
       17 MOVE                             R6 R3
       18 NAMECALL                         R4 R4 K4 ["VectorToObjectSpace"]
       20 CALL                             R4 2 1
       21 GETTABLEKS                       R6 R0 K5 ["_draggerContext"]
       23 GETTABLEKS                       R8 R4 K6 ["X"]
       25 NAMECALL                         R6 R6 K7 ["snapToGridSize"]
       27 CALL                             R6 2 1
       28 GETTABLEKS                       R7 R0 K5 ["_draggerContext"]
       30 GETTABLEKS                       R9 R4 K8 ["Y"]
       32 NAMECALL                         R7 R7 K7 ["snapToGridSize"]
       34 CALL                             R7 2 1
       35 LOADN                            R8 0
       36 FASTCALL                         VECTOR ; [+2]
       37 GETIMPORT                        R5 K11 [Vector3.new]
       39 CALL                             R5 3 1
       40 MOVE                             R4 R5
       41 GETTABLEKS                       R5 R0 K1 ["_dragPlaneCf"]
       43 MOVE                             R7 R4
       44 NAMECALL                         R5 R5 K12 ["VectorToWorldSpace"]
       46 CALL                             R5 2 1
       47 MOVE                             R3 R5
       48 GETTABLEKS                       R6 R0 K3 ["_dragPlanePointStart"]
       50 ADD                              R5 R6 R3
       51 SETTABLEKS                       R5 R0 K2 ["_dragPlanePointEnd"]
       53 GETIMPORT                        R5 K14 [Vector2.new]
       55 GETTABLEKS                       R6 R4 K6 ["X"]
       57 GETTABLEKS                       R7 R4 K8 ["Y"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R0 K15 ["_localPlaneDelta"]
       62 GETTABLEKS                       R5 R0 K15 ["_localPlaneDelta"]
       64 SETTABLEKS                       R5 R0 K16 ["_lastDelta"]
       66 GETIMPORT                        R5 K18 [CFrame.new]
       68 MOVE                             R6 R3
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R0 K19 ["_implementation"]
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K20 ["updateDrag"]
       75 CALL                             R6 2 1
       76 RETURN                           R6 1
       77 LOADNIL                          R3
       78 RETURN                           R3 1

PROTO_61:
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
      109 GETUPVAL                         R11 2
      110 CALL                             R11 0 1
      111 JUMPIFNOT                        R11 ; [+21]
      112 NAMECALL                         R11 R0 K29 ["_lastTransformWasLinear"]
      114 CALL                             R11 1 1
      115 JUMPIFNOT                        R11 ; [+13]
      116 FASTCALL1                        MATH_SIGN R9 ; [+3]
      117 MOVE                             R13 R9
      118 GETIMPORT                        R12 K31 [math.sign]
      120 CALL                             R12 1 1
      121 GETTABLEKS                       R13 R10 K32 ["Position"]
      123 GETTABLEKS                       R13 R13 K10 ["Magnitude"]
      125 MUL                              R11 R12 R13
      126 SETTABLEKS                       R11 R0 K33 ["_lastDelta"]
      128 RETURN                           R10 1
      129 LOADN                            R11 0
      130 SETTABLEKS                       R11 R0 K33 ["_lastDelta"]
      132 RETURN                           R10 1
      133 FASTCALL1                        MATH_SIGN R9 ; [+3]
      134 MOVE                             R13 R9
      135 GETIMPORT                        R12 K31 [math.sign]
      137 CALL                             R12 1 1
      138 GETTABLEKS                       R13 R10 K32 ["Position"]
      140 GETTABLEKS                       R13 R13 K10 ["Magnitude"]
      142 MUL                              R11 R12 R13
      143 SETTABLEKS                       R11 R0 K33 ["_lastDelta"]
      145 RETURN                           R10 1

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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
       18 JUMPIF                           R3 ; [+6]
       19 GETTABLEKS                       R3 R0 K7 ["_tabKeyDown"]
       21 JUMPIF                           R3 ; [+3]
       22 NAMECALL                         R3 R0 K8 ["_endSummon"]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 1
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+12]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R0 K9 ["_dragPlaneCf"]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R0 K10 ["_dragPlanePointStart"]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R0 K11 ["_dragPlanePointEnd"]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R0 K12 ["_localPlaneDelta"]
       40 RETURN                           R2 1

PROTO_65:
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
       28 JUMPIF                           R6 ; [+105]
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
       53 JUMPIFNOT                        R6 ; [+75]
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
       79 DUPTABLE                         R10 K24 [{"Outset", "Axis", "AxisId", "Color", "HighlightColor", "Scale", "AlwaysOnTop", "Opposite"}]
       80 GETTABLEKS                       R11 R0 K25 ["_props"]
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
      103 GETTABLEKS                       R11 R11 K26 ["makeHighlighted"]
      105 MOVE                             R12 R8
      106 CALL                             R11 1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R11
      109 SETTABLEKS                       R11 R10 K20 ["HighlightColor"]
      111 GETTABLEKS                       R11 R0 K9 ["_draggerContext"]
      113 GETTABLEKS                       R13 R7 K27 ["Position"]
      115 NAMECALL                         R11 R11 K28 ["getHandleScale"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K21 ["Scale"]
      120 LOADB                            R11 1
      121 SETTABLEKS                       R11 R10 K22 ["AlwaysOnTop"]
      123 GETTABLEKS                       R11 R5 K23 ["Opposite"]
      125 SETTABLEKS                       R11 R10 K23 ["Opposite"]
      127 SETTABLE                         R10 R9 R4
      128 JUMP                             ; [+97]
      129 GETTABLEKS                       R7 R0 K2 ["_handles"]
      131 LOADNIL                          R8
      132 SETTABLE                         R8 R7 R4
      133 JUMP                             ; [+92]
      134 GETTABLEKS                       R6 R5 K14 ["Offset"]
      136 NAMECALL                         R6 R6 K29 ["Inverse"]
      138 CALL                             R6 1 1
      139 GETTABLEKS                       R8 R0 K11 ["_boundingBox"]
      141 GETTABLEKS                       R8 R8 K30 ["Size"]
      143 NAMECALL                         R6 R6 K31 ["VectorToWorldSpace"]
      145 CALL                             R6 2 1
      146 GETTABLEKS                       R9 R6 K33 ["Z"]
      148 FASTCALL1                        MATH_ABS R9 ; [+2]
      149 GETIMPORT                        R8 K36 [math.abs]
      151 CALL                             R8 1 1
      152 MULK                             R7 R8 K32 [0.5]
      153 GETTABLEKS                       R10 R0 K11 ["_boundingBox"]
      155 GETTABLEKS                       R10 R10 K12 ["CFrame"]
      157 GETTABLEKS                       R11 R5 K14 ["Offset"]
      159 MUL                              R9 R10 R11
      160 GETIMPORT                        R10 K38 [CFrame.new]
      162 LOADN                            R11 0
      163 LOADN                            R12 0
      164 MINUS                            R13 R7
      165 CALL                             R10 3 1
      166 MUL                              R8 R9 R10
      167 GETUPVAL                         R10 0
      168 CALL                             R10 0 1
      169 JUMPIFNOT                        R10 ; [+7]
      170 GETUPVAL                         R9 2
      171 GETTABLEKS                       R9 R9 K15 ["get"]
      173 GETTABLEKS                       R10 R5 K16 ["Axis"]
      175 CALL                             R9 1 1
      176 JUMP                             ; [+2]
      177 GETTABLEKS                       R9 R5 K17 ["Color"]
      179 GETTABLEKS                       R10 R0 K2 ["_handles"]
      181 DUPTABLE                         R11 K40 [{"AxisOffset", "Axis", "AxisId", "Color", "HighlightColor", "Scale", "AlwaysOnTop", "Opposite"}]
      182 SETTABLEKS                       R7 R11 K39 ["AxisOffset"]
      184 SETTABLEKS                       R8 R11 K16 ["Axis"]
      186 GETUPVAL                         R13 0
      187 CALL                             R13 0 1
      188 JUMPIFNOT                        R13 ; [+3]
      189 GETTABLEKS                       R12 R5 K16 ["Axis"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R12
      193 SETTABLEKS                       R12 R11 K19 ["AxisId"]
      195 SETTABLEKS                       R9 R11 K17 ["Color"]
      197 GETUPVAL                         R13 0
      198 CALL                             R13 0 1
      199 JUMPIFNOT                        R13 ; [+6]
      200 GETUPVAL                         R12 2
      201 GETTABLEKS                       R12 R12 K26 ["makeHighlighted"]
      203 MOVE                             R13 R9
      204 CALL                             R12 1 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R12
      207 SETTABLEKS                       R12 R11 K20 ["HighlightColor"]
      209 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
      211 GETTABLEKS                       R14 R8 K27 ["Position"]
      213 NAMECALL                         R12 R12 K28 ["getHandleScale"]
      215 CALL                             R12 2 1
      216 SETTABLEKS                       R12 R11 K21 ["Scale"]
      218 LOADB                            R12 1
      219 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
      221 GETTABLEKS                       R12 R5 K23 ["Opposite"]
      223 SETTABLEKS                       R12 R11 K23 ["Opposite"]
      225 SETTABLE                         R11 R10 R4
      226 FORGLOOP                         R1 2 ; [-202]
      228 GETUPVAL                         R1 0
      229 CALL                             R1 0 1
      230 JUMPIFNOT                        R1 ; [+114]
      231 GETTABLEKS                       R1 R0 K9 ["_draggerContext"]
      233 NAMECALL                         R1 R1 K41 ["getDraggerShowPlanes"]
      235 CALL                             R1 1 1
      236 JUMPIFNOT                        R1 ; [+108]
      237 GETIMPORT                        R1 K5 [pairs]
      239 GETUPVAL                         R2 3
      240 CALL                             R1 1 3
      241 FORGPREP_NEXT                    R1
      242 GETTABLEKS                       R8 R0 K11 ["_boundingBox"]
      244 GETTABLEKS                       R8 R8 K12 ["CFrame"]
      246 NAMECALL                         R9 R0 K13 ["_getBasisOffset"]
      248 CALL                             R9 1 1
      249 MUL                              R7 R8 R9
      250 GETTABLEKS                       R8 R5 K14 ["Offset"]
      252 MUL                              R6 R7 R8
      253 GETUPVAL                         R7 2
      254 GETTABLEKS                       R7 R7 K15 ["get"]
      256 GETTABLEKS                       R8 R5 K16 ["Axis"]
      258 CALL                             R7 1 1
      259 GETUPVAL                         R8 2
      260 GETTABLEKS                       R8 R8 K15 ["get"]
      262 GETTABLEKS                       R10 R5 K42 ["PlaneAxes"]
      264 GETTABLEN                        R9 R10 1
      265 CALL                             R8 1 1
      266 GETUPVAL                         R9 2
      267 GETTABLEKS                       R9 R9 K15 ["get"]
      269 GETTABLEKS                       R11 R5 K42 ["PlaneAxes"]
      271 GETTABLEN                        R10 R11 2
      272 CALL                             R9 1 1
      273 GETTABLEKS                       R10 R0 K3 ["_planeHandles"]
      275 DUPTABLE                         R11 K47 [{"Outset", "Axis", "Color", "HighlightColor", "AxisId", "Scale", "AlwaysOnTop", "IsView", "PlaneAxesIds", "PlaneColors", "PlaneHighlightColors"}]
      276 GETTABLEKS                       R12 R0 K25 ["_props"]
      278 GETTABLEKS                       R12 R12 K18 ["Outset"]
      280 SETTABLEKS                       R12 R11 K18 ["Outset"]
      282 SETTABLEKS                       R6 R11 K16 ["Axis"]
      284 SETTABLEKS                       R7 R11 K17 ["Color"]
      286 GETUPVAL                         R12 2
      287 GETTABLEKS                       R12 R12 K26 ["makeHighlighted"]
      289 MOVE                             R13 R7
      290 CALL                             R12 1 1
      291 SETTABLEKS                       R12 R11 K20 ["HighlightColor"]
      293 GETTABLEKS                       R12 R5 K16 ["Axis"]
      295 SETTABLEKS                       R12 R11 K19 ["AxisId"]
      297 GETTABLEKS                       R12 R0 K9 ["_draggerContext"]
      299 GETTABLEKS                       R14 R6 K27 ["Position"]
      301 NAMECALL                         R12 R12 K28 ["getHandleScale"]
      303 CALL                             R12 2 1
      304 SETTABLEKS                       R12 R11 K21 ["Scale"]
      306 LOADB                            R12 1
      307 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
      309 GETTABLEKS                       R12 R5 K43 ["IsView"]
      311 SETTABLEKS                       R12 R11 K43 ["IsView"]
      313 GETTABLEKS                       R12 R5 K42 ["PlaneAxes"]
      315 SETTABLEKS                       R12 R11 K44 ["PlaneAxesIds"]
      317 NEWTABLE                         R12 0 2
      319 MOVE                             R13 R8
      320 MOVE                             R14 R9
      321 SETLIST                          R12 R13 2 [1]
      323 SETTABLEKS                       R12 R11 K45 ["PlaneColors"]
      325 NEWTABLE                         R12 0 2
      327 GETUPVAL                         R13 2
      328 GETTABLEKS                       R13 R13 K26 ["makeHighlighted"]
      330 MOVE                             R14 R8
      331 CALL                             R13 1 1
      332 GETUPVAL                         R14 2
      333 GETTABLEKS                       R14 R14 K26 ["makeHighlighted"]
      335 MOVE                             R15 R9
      336 CALL                             R14 1 -1
      337 SETLIST                          R12 R13 -1 [1]
      339 SETTABLEKS                       R12 R11 K46 ["PlaneHighlightColors"]
      341 SETTABLE                         R11 R10 R4
      342 FORGLOOP                         R1 2 ; [-101]
      344 RETURN                           R0 0
      345 GETUPVAL                         R2 0
      346 CALL                             R2 0 1
      347 JUMPIFNOT                        R2 ; [+3]
      348 NEWTABLE                         R1 0 0
      350 JUMP                             ; [+1]
      351 LOADNIL                          R1
      352 SETTABLEKS                       R1 R0 K3 ["_planeHandles"]
      354 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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
      106 GETTABLEKS                       R16 R16 K21 ["DraggedPivot"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K9 ["Components"]
      113 GETTABLEKS                       R17 R17 K22 ["SummonedPivot"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R18 R0 K7 ["Utility"]
      120 GETTABLEKS                       R18 R18 K23 ["computeDraggedDistance"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K4 [require]
      125 GETTABLEKS                       R19 R0 K7 ["Utility"]
      127 GETTABLEKS                       R19 R19 K24 ["computeHandlePositionDistance"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K4 [require]
      132 GETTABLEKS                       R20 R0 K25 ["Flags"]
      134 GETTABLEKS                       R20 R20 K26 ["getFFlagDraggerImprovements"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K4 [require]
      139 GETTABLEKS                       R21 R0 K25 ["Flags"]
      141 GETTABLEKS                       R21 R21 K27 ["getFFlagNextGenDraggers"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K4 [require]
      146 GETTABLEKS                       R22 R0 K25 ["Flags"]
      148 GETTABLEKS                       R22 R22 K28 ["getFFlagSBT4896NudgingWithNumpad"]
      150 CALL                             R21 1 1
      151 NEWTABLE                         R22 64 0
      153 SETTABLEKS                       R22 R22 K29 ["__index"]
      155 GETIMPORT                        R23 K32 [table.freeze]
      157 DUPTABLE                         R24 K39 [{"MinusZ", "PlusZ", "MinusY", "PlusY", "MinusX", "PlusX"}]
      158 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      159 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      161 FASTCALL                         VECTOR ; [+2]
      162 GETIMPORT                        R27 K50 [Vector3.new]
      164 CALL                             R27 0 1
      165 LOADK                            R28 K51 [{1, 0, 0}]
      166 LOADK                            R29 K52 [{0, 1, 0}]
      167 CALL                             R26 3 1
      168 SETTABLEKS                       R26 R25 K40 ["Offset"]
      170 GETTABLEKS                       R26 R3 K53 ["Z_AXIS"]
      172 SETTABLEKS                       R26 R25 K41 ["Color"]
      174 LOADK                            R26 K54 ["Z"]
      175 SETTABLEKS                       R26 R25 K42 ["Axis"]
      177 LOADK                            R26 K34 ["PlusZ"]
      178 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      180 SETTABLEKS                       R25 R24 K33 ["MinusZ"]
      182 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      183 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      185 FASTCALL                         VECTOR ; [+2]
      186 GETIMPORT                        R27 K50 [Vector3.new]
      188 CALL                             R27 0 1
      189 LOADK                            R28 K51 [{1, 0, 0}]
      190 LOADK                            R29 K55 [{0, -1, 0}]
      191 CALL                             R26 3 1
      192 SETTABLEKS                       R26 R25 K40 ["Offset"]
      194 GETTABLEKS                       R26 R3 K53 ["Z_AXIS"]
      196 SETTABLEKS                       R26 R25 K41 ["Color"]
      198 LOADK                            R26 K54 ["Z"]
      199 SETTABLEKS                       R26 R25 K42 ["Axis"]
      201 LOADK                            R26 K33 ["MinusZ"]
      202 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      204 SETTABLEKS                       R25 R24 K34 ["PlusZ"]
      206 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      207 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      209 FASTCALL                         VECTOR ; [+2]
      210 GETIMPORT                        R27 K50 [Vector3.new]
      212 CALL                             R27 0 1
      213 LOADK                            R28 K56 [{0, 0, 1}]
      214 LOADK                            R29 K51 [{1, 0, 0}]
      215 CALL                             R26 3 1
      216 SETTABLEKS                       R26 R25 K40 ["Offset"]
      218 GETTABLEKS                       R26 R3 K57 ["Y_AXIS"]
      220 SETTABLEKS                       R26 R25 K41 ["Color"]
      222 LOADK                            R26 K58 ["Y"]
      223 SETTABLEKS                       R26 R25 K42 ["Axis"]
      225 LOADK                            R26 K36 ["PlusY"]
      226 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      228 SETTABLEKS                       R25 R24 K35 ["MinusY"]
      230 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      231 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      233 FASTCALL                         VECTOR ; [+2]
      234 GETIMPORT                        R27 K50 [Vector3.new]
      236 CALL                             R27 0 1
      237 LOADK                            R28 K56 [{0, 0, 1}]
      238 LOADK                            R29 K59 [{-1, 0, 0}]
      239 CALL                             R26 3 1
      240 SETTABLEKS                       R26 R25 K40 ["Offset"]
      242 GETTABLEKS                       R26 R3 K57 ["Y_AXIS"]
      244 SETTABLEKS                       R26 R25 K41 ["Color"]
      246 LOADK                            R26 K58 ["Y"]
      247 SETTABLEKS                       R26 R25 K42 ["Axis"]
      249 LOADK                            R26 K35 ["MinusY"]
      250 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      252 SETTABLEKS                       R25 R24 K36 ["PlusY"]
      254 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      255 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      257 FASTCALL                         VECTOR ; [+2]
      258 GETIMPORT                        R27 K50 [Vector3.new]
      260 CALL                             R27 0 1
      261 LOADK                            R28 K52 [{0, 1, 0}]
      262 LOADK                            R29 K56 [{0, 0, 1}]
      263 CALL                             R26 3 1
      264 SETTABLEKS                       R26 R25 K40 ["Offset"]
      266 GETTABLEKS                       R26 R3 K60 ["X_AXIS"]
      268 SETTABLEKS                       R26 R25 K41 ["Color"]
      270 LOADK                            R26 K61 ["X"]
      271 SETTABLEKS                       R26 R25 K42 ["Axis"]
      273 LOADK                            R26 K38 ["PlusX"]
      274 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      276 SETTABLEKS                       R25 R24 K37 ["MinusX"]
      278 DUPTABLE                         R25 K44 [{"Offset", "Color", "Axis", "Opposite"}]
      279 GETIMPORT                        R26 K47 [CFrame.fromMatrix]
      281 FASTCALL                         VECTOR ; [+2]
      282 GETIMPORT                        R27 K50 [Vector3.new]
      284 CALL                             R27 0 1
      285 LOADK                            R28 K52 [{0, 1, 0}]
      286 LOADK                            R29 K62 [{0, 0, -1}]
      287 CALL                             R26 3 1
      288 SETTABLEKS                       R26 R25 K40 ["Offset"]
      290 GETTABLEKS                       R26 R3 K60 ["X_AXIS"]
      292 SETTABLEKS                       R26 R25 K41 ["Color"]
      294 LOADK                            R26 K61 ["X"]
      295 SETTABLEKS                       R26 R25 K42 ["Axis"]
      297 LOADK                            R26 K37 ["MinusX"]
      298 SETTABLEKS                       R26 R25 K43 ["Opposite"]
      300 SETTABLEKS                       R25 R24 K38 ["PlusX"]
      302 CALL                             R23 1 1
      303 MOVE                             R25 R20
      304 CALL                             R25 0 1
      305 JUMPIF                           R25 ; [+2]
      306 LOADNIL                          R24
      307 JUMP                             ; [+100]
      308 GETIMPORT                        R24 K32 [table.freeze]
      310 DUPTABLE                         R25 K67 [{"PlaneX", "PlaneY", "PlaneZ", "PlaneV"}]
      311 DUPTABLE                         R26 K69 [{"Offset", "Axis", "PlaneAxes"}]
      312 GETIMPORT                        R27 K47 [CFrame.fromMatrix]
      314 FASTCALL                         VECTOR ; [+2]
      315 GETIMPORT                        R28 K50 [Vector3.new]
      317 CALL                             R28 0 1
      318 LOADK                            R29 K52 [{0, 1, 0}]
      319 LOADK                            R30 K62 [{0, 0, -1}]
      320 CALL                             R27 3 1
      321 SETTABLEKS                       R27 R26 K40 ["Offset"]
      323 LOADK                            R27 K61 ["X"]
      324 SETTABLEKS                       R27 R26 K42 ["Axis"]
      326 NEWTABLE                         R27 0 2
      328 LOADK                            R28 K58 ["Y"]
      329 LOADK                            R29 K54 ["Z"]
      330 SETLIST                          R27 R28 2 [1]
      332 SETTABLEKS                       R27 R26 K68 ["PlaneAxes"]
      334 SETTABLEKS                       R26 R25 K63 ["PlaneX"]
      336 DUPTABLE                         R26 K69 [{"Offset", "Axis", "PlaneAxes"}]
      337 GETIMPORT                        R27 K47 [CFrame.fromMatrix]
      339 FASTCALL                         VECTOR ; [+2]
      340 GETIMPORT                        R28 K50 [Vector3.new]
      342 CALL                             R28 0 1
      343 LOADK                            R29 K56 [{0, 0, 1}]
      344 LOADK                            R30 K59 [{-1, 0, 0}]
      345 CALL                             R27 3 1
      346 SETTABLEKS                       R27 R26 K40 ["Offset"]
      348 LOADK                            R27 K58 ["Y"]
      349 SETTABLEKS                       R27 R26 K42 ["Axis"]
      351 NEWTABLE                         R27 0 2
      353 LOADK                            R28 K61 ["X"]
      354 LOADK                            R29 K54 ["Z"]
      355 SETLIST                          R27 R28 2 [1]
      357 SETTABLEKS                       R27 R26 K68 ["PlaneAxes"]
      359 SETTABLEKS                       R26 R25 K64 ["PlaneY"]
      361 DUPTABLE                         R26 K69 [{"Offset", "Axis", "PlaneAxes"}]
      362 GETIMPORT                        R27 K47 [CFrame.fromMatrix]
      364 FASTCALL                         VECTOR ; [+2]
      365 GETIMPORT                        R28 K50 [Vector3.new]
      367 CALL                             R28 0 1
      368 LOADK                            R29 K51 [{1, 0, 0}]
      369 LOADK                            R30 K55 [{0, -1, 0}]
      370 CALL                             R27 3 1
      371 SETTABLEKS                       R27 R26 K40 ["Offset"]
      373 LOADK                            R27 K54 ["Z"]
      374 SETTABLEKS                       R27 R26 K42 ["Axis"]
      376 NEWTABLE                         R27 0 2
      378 LOADK                            R28 K61 ["X"]
      379 LOADK                            R29 K58 ["Y"]
      380 SETLIST                          R27 R28 2 [1]
      382 SETTABLEKS                       R27 R26 K68 ["PlaneAxes"]
      384 SETTABLEKS                       R26 R25 K65 ["PlaneZ"]
      386 DUPTABLE                         R26 K71 [{"Offset", "Axis", "PlaneAxes", "IsView"}]
      387 GETIMPORT                        R27 K73 [CFrame.identity]
      389 SETTABLEKS                       R27 R26 K40 ["Offset"]
      391 LOADK                            R27 K74 ["V"]
      392 SETTABLEKS                       R27 R26 K42 ["Axis"]
      394 NEWTABLE                         R27 0 2
      396 LOADK                            R28 K74 ["V"]
      397 LOADK                            R29 K74 ["V"]
      398 SETLIST                          R27 R28 2 [1]
      400 SETTABLEKS                       R27 R26 K68 ["PlaneAxes"]
      402 LOADB                            R27 1
      403 SETTABLEKS                       R27 R26 K70 ["IsView"]
      405 SETTABLEKS                       R26 R25 K66 ["PlaneV"]
      407 CALL                             R24 1 1
      408 DUPCLOSURE                       R25 K75 [PROTO_0]
      409 CAPTURE                          VAL R20
      410 CAPTURE                          VAL R3
      411 CAPTURE                          VAL R19
      412 CAPTURE                          VAL R10
      413 CAPTURE                          VAL R22
      414 SETTABLEKS                       R25 R22 K49 ["new"]
      416 DUPCLOSURE                       R25 K76 [PROTO_1]
      417 SETTABLEKS                       R25 R22 K77 ["_orient"]
      419 DUPCLOSURE                       R25 K78 [PROTO_2]
      420 CAPTURE                          VAL R19
      421 SETTABLEKS                       R25 R22 K79 ["update"]
      423 DUPCLOSURE                       R25 K80 [PROTO_3]
      424 CAPTURE                          VAL R19
      425 SETTABLEKS                       R25 R22 K81 ["_summonHandles"]
      427 DUPCLOSURE                       R25 K82 [PROTO_4]
      428 CAPTURE                          VAL R19
      429 SETTABLEKS                       R25 R22 K83 ["_endSummon"]
      431 DUPCLOSURE                       R25 K84 [PROTO_5]
      432 CAPTURE                          VAL R19
      433 SETTABLEKS                       R25 R22 K85 ["beginSummon"]
      435 DUPCLOSURE                       R25 K86 [PROTO_6]
      436 CAPTURE                          VAL R19
      437 SETTABLEKS                       R25 R22 K87 ["endSummon"]
      439 DUPCLOSURE                       R25 K88 [PROTO_7]
      440 CAPTURE                          VAL R19
      441 SETTABLEKS                       R25 R22 K89 ["_getBasisOffset"]
      443 DUPCLOSURE                       R25 K90 [PROTO_8]
      444 SETTABLEKS                       R25 R22 K91 ["shouldBiasTowardsObjects"]
      446 DUPCLOSURE                       R25 K92 [PROTO_9]
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R11
      449 CAPTURE                          VAL R12
      450 SETTABLEKS                       R25 R22 K93 ["hitTest"]
      452 DUPCLOSURE                       R25 K94 [PROTO_10]
      453 SETTABLEKS                       R25 R22 K95 ["_doMeasuredMove"]
      455 DUPCLOSURE                       R25 K96 [PROTO_11]
      456 CAPTURE                          VAL R23
      457 SETTABLEKS                       R25 R22 K97 ["_doBump"]
      459 DUPCLOSURE                       R25 K98 [PROTO_12]
      460 CAPTURE                          VAL R19
      461 SETTABLEKS                       R25 R22 K99 ["_useBoundingBoxMoveHandles"]
      463 DUPCLOSURE                       R25 K100 [PROTO_13]
      464 SETTABLEKS                       R25 R22 K101 ["_hasSoftSnap"]
      466 DUPCLOSURE                       R25 K102 [PROTO_14]
      467 DUPCLOSURE                       R26 K103 [PROTO_15]
      468 SETTABLEKS                       R26 R22 K104 ["_getHandleIdClosestToCenterOfScreen"]
      470 DUPCLOSURE                       R26 K105 [PROTO_16]
      471 CAPTURE                          VAL R20
      472 CAPTURE                          VAL R11
      473 CAPTURE                          VAL R21
      474 SETTABLEKS                       R26 R22 K106 ["_getMoveMeasurementArrowMetrics"]
      476 DUPCLOSURE                       R26 K107 [PROTO_17]
      477 SETTABLEKS                       R26 R22 K108 ["_calcPlaneDragViewportPosition"]
      479 DUPCLOSURE                       R26 K109 [PROTO_19]
      480 CAPTURE                          VAL R2
      481 CAPTURE                          VAL R5
      482 SETTABLEKS                       R26 R22 K110 ["_renderMoveMeasurementArrow"]
      484 DUPCLOSURE                       R26 K111 [PROTO_20]
      485 CAPTURE                          VAL R8
      486 CAPTURE                          VAL R2
      487 CAPTURE                          VAL R6
      488 SETTABLEKS                       R26 R22 K112 ["_renderHotkeyHelp"]
      490 DUPCLOSURE                       R26 K113 [PROTO_21]
      491 SETTABLEKS                       R26 R22 K114 ["_lastTransformWasLinear"]
      493 DUPCLOSURE                       R26 K115 [PROTO_22]
      494 SETTABLEKS                       R26 R22 K116 ["_getPerpendicularToDirAndCam"]
      496 DUPCLOSURE                       R26 K117 [PROTO_23]
      497 SETTABLEKS                       R26 R22 K118 ["_getMostPerpendicular"]
      499 DUPCLOSURE                       R26 K119 [PROTO_24]
      500 SETTABLEKS                       R26 R22 K120 ["_drawTicks"]
      502 DUPCLOSURE                       R26 K121 [PROTO_26]
      503 CAPTURE                          VAL R11
      504 CAPTURE                          VAL R2
      505 CAPTURE                          VAL R5
      506 CAPTURE                          VAL R20
      507 SETTABLEKS                       R26 R22 K122 ["_renderChosenAxisGuide"]
      509 DUPCLOSURE                       R26 K123 [PROTO_28]
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R5
      512 SETTABLEKS                       R26 R22 K124 ["_renderChosenPlaneGuide"]
      514 DUPCLOSURE                       R26 K125 [PROTO_29]
      515 CAPTURE                          VAL R2
      516 CAPTURE                          VAL R11
      517 CAPTURE                          VAL R20
      518 CAPTURE                          VAL R3
      519 SETTABLEKS                       R26 R22 K126 ["_renderPassiveLaggingHandle"]
      521 DUPCLOSURE                       R26 K127 [PROTO_30]
      522 CAPTURE                          VAL R20
      523 CAPTURE                          VAL R2
      524 CAPTURE                          VAL R7
      525 CAPTURE                          VAL R9
      526 SETTABLEKS                       R26 R22 K128 ["_renderActiveMoveMeasurement"]
      528 DUPCLOSURE                       R26 K129 [PROTO_31]
      529 SETTABLEKS                       R26 R22 K130 ["_updateLaggingHandleChoice"]
      531 DUPCLOSURE                       R26 K131 [PROTO_32]
      532 SETTABLEKS                       R26 R22 K132 ["_getLaggingHandleChoice"]
      534 DUPCLOSURE                       R26 K133 [PROTO_33]
      535 CAPTURE                          VAL R20
      536 CAPTURE                          VAL R2
      537 CAPTURE                          VAL R11
      538 SETTABLEKS                       R26 R22 K134 ["_renderDraggingAxisHandles"]
      540 DUPCLOSURE                       R26 K135 [PROTO_34]
      541 CAPTURE                          VAL R20
      542 CAPTURE                          VAL R19
      543 CAPTURE                          VAL R2
      544 SETTABLEKS                       R26 R22 K136 ["_renderDraggingAxis"]
      546 DUPCLOSURE                       R26 K137 [PROTO_35]
      547 CAPTURE                          VAL R20
      548 CAPTURE                          VAL R2
      549 CAPTURE                          VAL R12
      550 SETTABLEKS                       R26 R22 K138 ["_renderDraggingPlaneHandles"]
      552 DUPCLOSURE                       R26 K139 [PROTO_36]
      553 CAPTURE                          VAL R20
      554 CAPTURE                          VAL R19
      555 CAPTURE                          VAL R2
      556 SETTABLEKS                       R26 R22 K140 ["_renderDraggingPlane"]
      558 DUPCLOSURE                       R26 K141 [PROTO_37]
      559 SETTABLEKS                       R26 R22 K142 ["_getGrazingAngleFactor"]
      561 DUPCLOSURE                       R26 K143 [PROTO_38]
      562 CAPTURE                          VAL R20
      563 CAPTURE                          VAL R3
      564 CAPTURE                          VAL R2
      565 CAPTURE                          VAL R11
      566 CAPTURE                          VAL R12
      567 SETTABLEKS                       R26 R22 K144 ["_renderHoveringHandles"]
      569 DUPCLOSURE                       R26 K145 [PROTO_41]
      570 CAPTURE                          VAL R20
      571 CAPTURE                          VAL R2
      572 CAPTURE                          VAL R7
      573 CAPTURE                          VAL R9
      574 SETTABLEKS                       R26 R22 K146 ["_renderMeasurementInputBox"]
      576 DUPCLOSURE                       R26 K147 [PROTO_42]
      577 CAPTURE                          VAL R20
      578 CAPTURE                          VAL R2
      579 SETTABLEKS                       R26 R22 K148 ["_renderPassiveMoveMeasurement"]
      581 DUPCLOSURE                       R26 K149 [PROTO_43]
      582 CAPTURE                          VAL R2
      583 SETTABLEKS                       R26 R22 K150 ["_renderHovering"]
      585 DUPCLOSURE                       R26 K151 [PROTO_44]
      586 CAPTURE                          VAL R2
      587 CAPTURE                          VAL R4
      588 SETTABLEKS                       R26 R22 K152 ["_renderBoundingBox"]
      590 DUPCLOSURE                       R26 K153 [PROTO_45]
      591 CAPTURE                          VAL R2
      592 CAPTURE                          VAL R16
      593 CAPTURE                          VAL R14
      594 CAPTURE                          VAL R13
      595 SETTABLEKS                       R26 R22 K154 ["_renderSummon"]
      597 DUPCLOSURE                       R26 K155 [PROTO_46]
      598 CAPTURE                          VAL R20
      599 SETTABLEKS                       R26 R22 K156 ["_renderHoverOrDrag"]
      601 DUPCLOSURE                       R26 K157 [PROTO_47]
      602 CAPTURE                          VAL R2
      603 SETTABLEKS                       R26 R22 K158 ["renderNEW"]
      605 DUPCLOSURE                       R26 K159 [PROTO_48]
      606 CAPTURE                          VAL R19
      607 CAPTURE                          VAL R2
      608 CAPTURE                          VAL R11
      609 CAPTURE                          VAL R3
      610 CAPTURE                          VAL R4
      611 CAPTURE                          VAL R15
      612 CAPTURE                          VAL R14
      613 CAPTURE                          VAL R13
      614 SETTABLEKS                       R26 R22 K160 ["render"]
      616 DUPCLOSURE                       R26 K161 [PROTO_49]
      617 SETTABLEKS                       R26 R22 K162 ["selectionChanged"]
      619 DUPCLOSURE                       R26 K163 [PROTO_50]
      620 CAPTURE                          VAL R20
      621 SETTABLEKS                       R26 R22 K164 ["_needsSoftSnaps"]
      623 DUPCLOSURE                       R26 K165 [PROTO_51]
      624 CAPTURE                          VAL R11
      625 CAPTURE                          VAL R20
      626 CAPTURE                          VAL R12
      627 CAPTURE                          VAL R19
      628 SETTABLEKS                       R26 R22 K166 ["mouseDown"]
      630 DUPCLOSURE                       R26 K167 [PROTO_52]
      631 CAPTURE                          VAL R23
      632 CAPTURE                          VAL R19
      633 SETTABLEKS                       R26 R22 K168 ["_setupMoveAtCurrentBoundingBox"]
      635 DUPCLOSURE                       R26 K169 [PROTO_53]
      636 SETTABLEKS                       R26 R22 K170 ["_setMidMoveBoundingBox"]
      638 DUPCLOSURE                       R26 K171 [PROTO_54]
      639 CAPTURE                          VAL R17
      640 SETTABLEKS                       R26 R22 K172 ["_getDistanceAlongAxis"]
      642 DUPCLOSURE                       R26 K173 [PROTO_58]
      643 CAPTURE                          VAL R19
      644 CAPTURE                          VAL R23
      645 CAPTURE                          VAL R11
      646 SETTABLEKS                       R26 R22 K174 ["_solveForAdjustedDistance"]
      648 DUPCLOSURE                       R26 K175 [PROTO_59]
      649 SETTABLEKS                       R26 R22 K176 ["_getSnappedDelta"]
      651 DUPCLOSURE                       R26 K177 [PROTO_60]
      652 CAPTURE                          VAL R12
      653 SETTABLEKS                       R26 R22 K178 ["_mouseDragPlane"]
      655 DUPCLOSURE                       R26 K179 [PROTO_61]
      656 CAPTURE                          VAL R20
      657 CAPTURE                          VAL R18
      658 CAPTURE                          VAL R19
      659 SETTABLEKS                       R26 R22 K180 ["_mouseDragAxis"]
      661 MOVE                             R26 R19
      662 CALL                             R26 0 1
      663 JUMPIFNOT                        R26 ; [+5]
      664 DUPCLOSURE                       R26 K181 [PROTO_62]
      665 CAPTURE                          VAL R20
      666 SETTABLEKS                       R26 R22 K182 ["mouseDrag"]
      668 JUMP                             ; [+3]
      669 DUPCLOSURE                       R26 K183 [PROTO_63]
      670 SETTABLEKS                       R26 R22 K182 ["mouseDrag"]
      672 DUPCLOSURE                       R26 K184 [PROTO_64]
      673 CAPTURE                          VAL R19
      674 CAPTURE                          VAL R20
      675 SETTABLEKS                       R26 R22 K185 ["mouseUp"]
      677 DUPCLOSURE                       R26 K186 [PROTO_65]
      678 CAPTURE                          VAL R20
      679 CAPTURE                          VAL R23
      680 CAPTURE                          VAL R3
      681 CAPTURE                          VAL R24
      682 SETTABLEKS                       R26 R22 K187 ["_updateHandles"]
      684 GETIMPORT                        R26 K32 [table.freeze]
      686 NEWTABLE                         R27 2 0
      688 GETIMPORT                        R28 K191 [Enum.KeyCode.RightShift]
      690 LOADB                            R29 1
      691 SETTABLE                         R29 R27 R28
      692 GETIMPORT                        R28 K193 [Enum.KeyCode.LeftShift]
      694 LOADB                            R29 1
      695 SETTABLE                         R29 R27 R28
      696 CALL                             R26 1 1
      697 GETIMPORT                        R27 K32 [table.freeze]
      699 NEWTABLE                         R28 8 0
      701 GETIMPORT                        R29 K195 [Enum.KeyCode.KeypadSeven]
      703 LOADK                            R30 K36 ["PlusY"]
      704 SETTABLE                         R30 R28 R29
      705 GETIMPORT                        R29 K197 [Enum.KeyCode.KeypadOne]
      707 LOADK                            R30 K35 ["MinusY"]
      708 SETTABLE                         R30 R28 R29
      709 GETIMPORT                        R29 K199 [Enum.KeyCode.KeypadFour]
      711 LOADK                            R30 K38 ["PlusX"]
      712 SETTABLE                         R30 R28 R29
      713 GETIMPORT                        R29 K201 [Enum.KeyCode.KeypadSix]
      715 LOADK                            R30 K37 ["MinusX"]
      716 SETTABLE                         R30 R28 R29
      717 GETIMPORT                        R29 K203 [Enum.KeyCode.KeypadEight]
      719 LOADK                            R30 K34 ["PlusZ"]
      720 SETTABLE                         R30 R28 R29
      721 GETIMPORT                        R29 K205 [Enum.KeyCode.KeypadTwo]
      723 LOADK                            R30 K33 ["MinusZ"]
      724 SETTABLE                         R30 R28 R29
      725 CALL                             R27 1 1
      726 DUPCLOSURE                       R28 K206 [PROTO_66]
      727 CAPTURE                          VAL R19
      728 CAPTURE                          VAL R26
      729 CAPTURE                          VAL R27
      730 SETTABLEKS                       R28 R22 K207 ["keyDown"]
      732 DUPCLOSURE                       R28 K208 [PROTO_67]
      733 CAPTURE                          VAL R19
      734 CAPTURE                          VAL R26
      735 SETTABLEKS                       R28 R22 K209 ["keyUp"]
      737 DUPCLOSURE                       R28 K210 [PROTO_68]
      738 SETTABLEKS                       R28 R22 K211 ["getPriority"]
      740 RETURN                           R22 1
