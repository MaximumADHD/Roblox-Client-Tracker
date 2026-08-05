PROTO_0:
        0 LOADK                            R1 K0 [0.5]
        1 JUMPIFNOTLT                      R0 R1 ; [+5]
        3 DIVK                             R3 R0 K0 [0.5]
        4 POWK                             R2 R3 K1 [4]
        5 MULK                             R1 R2 K0 [0.5]
        6 RETURN                           R1 1
        7 SUBRK                            R5 K2 [1] R0
        8 DIVK                             R4 R5 K0 [0.5]
        9 POWK                             R3 R4 K1 [4]
       10 MULK                             R2 R3 K0 [0.5]
       11 SUBRK                            R1 K2 [1] R2
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_animationCallback"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 DUPTABLE                         R5 K9 [{"_draggerContext", "_draggerToolModel", "_dragInfo", "_partMover", "_attachmentMover", "_tiltRotate", "_lastAppliedTransform"}]
        4 SETTABLEKS                       R0 R5 K2 ["_draggerContext"]
        6 SETTABLEKS                       R1 R5 K3 ["_draggerToolModel"]
        8 SETTABLEKS                       R2 R5 K4 ["_dragInfo"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K10 ["new"]
       13 CALL                             R6 0 1
       14 SETTABLEKS                       R6 R5 K5 ["_partMover"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K10 ["new"]
       19 CALL                             R6 0 1
       20 SETTABLEKS                       R6 R5 K6 ["_attachmentMover"]
       22 GETIMPORT                        R6 K12 [CFrame.new]
       24 CALL                             R6 0 1
       25 SETTABLEKS                       R6 R5 K7 ["_tiltRotate"]
       27 GETIMPORT                        R6 K12 [CFrame.new]
       29 CALL                             R6 0 1
       30 SETTABLEKS                       R6 R5 K8 ["_lastAppliedTransform"]
       32 GETUPVAL                         R6 2
       33 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       35 GETIMPORT                        R4 K14 [setmetatable]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K10 ["new"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R4
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K15 ["_animationTask"]
       46 NAMECALL                         R5 R4 K16 ["_init"]
       48 CALL                             R5 1 0
       49 GETIMPORT                        R6 K1 [tick]
       51 CALL                             R6 0 1
       52 SUB                              R5 R6 R3
       53 MOVE                             R8 R5
       54 NAMECALL                         R6 R4 K17 ["_analyticsRecordFreeformDragBegin"]
       56 CALL                             R6 2 0
       57 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R3 R3 K1 ["_selectionInfo"]
        4 NAMECALL                         R3 R3 K2 ["getObjectsToTransform"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K3 ["_initIgnoreList"]
        9 CALL                             R1 -1 0
       10 NAMECALL                         R1 R0 K4 ["_initMovers"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       10 GETTABLEKS                       R2 R2 K3 ["_selectionInfo"]
       12 NAMECALL                         R2 R2 K4 ["getObjectsToTransform"]
       14 CALL                             R2 1 3
       15 GETTABLEKS                       R5 R0 K5 ["_partMover"]
       17 MOVE                             R7 R2
       18 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
       20 GETTABLEKS                       R8 R8 K3 ["_selectionInfo"]
       22 NAMECALL                         R8 R8 K6 ["getOriginalCFrameMap"]
       24 CALL                             R8 1 1
       25 MOVE                             R9 R1
       26 GETTABLEKS                       R10 R0 K0 ["_draggerToolModel"]
       28 GETTABLEKS                       R10 R10 K3 ["_selectionInfo"]
       30 NAMECALL                         R10 R10 K7 ["getBoundingBox"]
       32 CALL                             R10 1 1
       33 GETTABLEKS                       R10 R10 K8 ["Position"]
       35 GETTABLEKS                       R11 R0 K0 ["_draggerToolModel"]
       37 NAMECALL                         R11 R11 K9 ["getSelectionWrapper"]
       39 CALL                             R11 1 1
       40 NAMECALL                         R11 R11 K10 ["get"]
       42 CALL                             R11 1 1
       43 MOVE                             R12 R4
       44 GETTABLEKS                       R13 R0 K0 ["_draggerToolModel"]
       46 GETTABLEKS                       R13 R13 K3 ["_selectionInfo"]
       48 NAMECALL                         R13 R13 K11 ["getRootMapping"]
       50 CALL                             R13 1 -1
       51 NAMECALL                         R5 R5 K12 ["setDragged"]
       53 CALL                             R5 -1 0
       54 GETTABLEKS                       R5 R0 K13 ["_attachmentMover"]
       56 MOVE                             R7 R3
       57 NAMECALL                         R5 R5 K12 ["setDragged"]
       59 CALL                             R5 2 0
       60 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 CALL                             R5 0 1
        3 JUMPIFNOT                        R5 ; [+29]
        4 GETIMPORT                        R5 K2 [table.create]
        6 LENGTH                           R8 R1
        7 LENGTH                           R9 R3
        8 ADD                              R7 R8 R9
        9 ADDK                             R6 R7 K3 [1]
       10 CALL                             R5 1 1
       11 MOVE                             R4 R5
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 SETTABLE                         R9 R4 R8
       17 FORGLOOP                         R5 2 ; [-2]
       19 MOVE                             R5 R3
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       25 MOVE                             R11 R4
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K5 [table.insert]
       29 CALL                             R10 2 0
       30 FORGLOOP                         R5 2 ; [-8]
       32 JUMP                             ; [+14]
       33 GETIMPORT                        R5 K2 [table.create]
       35 LENGTH                           R7 R1
       36 ADDK                             R6 R7 K3 [1]
       37 CALL                             R5 1 1
       38 MOVE                             R4 R5
       39 GETIMPORT                        R5 K7 [ipairs]
       41 MOVE                             R6 R1
       42 CALL                             R5 1 3
       43 FORGPREP_INEXT                   R5
       44 SETTABLE                         R9 R4 R8
       45 FORGLOOP                         R5 2 [inext] ; [-2]
       47 MOVE                             R6 R4
       48 GETTABLEKS                       R7 R0 K8 ["_partMover"]
       50 NAMECALL                         R7 R7 K9 ["getIgnorePart"]
       52 CALL                             R7 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R5 K5 [table.insert]
       56 CALL                             R5 -1 0
       57 SETTABLEKS                       R4 R0 K10 ["_raycastFilter"]
       59 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R2 ; [+32]
        1 GETTABLEKS                       R3 R0 K0 ["_partMover"]
        3 GETTABLEKS                       R5 R0 K1 ["_lastAppliedTransform"]
        5 NAMECALL                         R3 R3 K2 ["transformTo"]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R3 R0 K3 ["_attachmentMover"]
       10 GETTABLEKS                       R5 R0 K1 ["_lastAppliedTransform"]
       12 NAMECALL                         R3 R3 K2 ["transformTo"]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       17 GETTABLEKS                       R3 R3 K5 ["_draggerContext"]
       19 NAMECALL                         R3 R3 K6 ["shouldJoinSurfaces"]
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+77]
       23 GETTABLEKS                       R3 R0 K0 ["_partMover"]
       25 GETTABLEKS                       R5 R0 K1 ["_lastAppliedTransform"]
       27 NAMECALL                         R3 R3 K7 ["computeJointPairs"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K8 ["_jointPairs"]
       32 RETURN                           R0 0
       33 LOADK                            R4 K9 [0.5]
       34 JUMPIFNOTLT                      R1 R4 ; [+5]
       36 DIVK                             R5 R1 K9 [0.5]
       37 POWK                             R4 R5 K10 [4]
       38 MULK                             R3 R4 K9 [0.5]
       39 JUMP                             ; [+5]
       40 SUBRK                            R7 K11 [1] R1
       41 DIVK                             R6 R7 K9 [0.5]
       42 POWK                             R5 R6 K10 [4]
       43 MULK                             R4 R5 K9 [0.5]
       44 SUBRK                            R3 K11 [1] R4
       45 GETTABLEKS                       R4 R0 K12 ["_animateFrom"]
       47 GETTABLEKS                       R5 R4 K13 ["baseCFrame"]
       49 GETTABLEKS                       R7 R0 K14 ["_lastDragTarget"]
       51 GETTABLEKS                       R7 R7 K13 ["baseCFrame"]
       53 MOVE                             R8 R3
       54 NAMECALL                         R5 R5 K15 ["Lerp"]
       56 CALL                             R5 3 1
       57 GETTABLEKS                       R6 R4 K16 ["offsetCFrame"]
       59 GETTABLEKS                       R8 R0 K14 ["_lastDragTarget"]
       61 GETTABLEKS                       R8 R8 K16 ["offsetCFrame"]
       63 MOVE                             R9 R3
       64 NAMECALL                         R6 R6 K15 ["Lerp"]
       66 CALL                             R6 3 1
       67 GETTABLEKS                       R7 R4 K17 ["tiltRotate"]
       69 GETTABLEKS                       R9 R0 K18 ["_tiltRotate"]
       71 MOVE                             R10 R3
       72 NAMECALL                         R7 R7 K15 ["Lerp"]
       74 CALL                             R7 3 1
       75 MUL                              R9 R5 R7
       76 MUL                              R8 R9 R6
       77 GETTABLEKS                       R9 R0 K4 ["_draggerToolModel"]
       79 GETTABLEKS                       R9 R9 K19 ["_selectionInfo"]
       81 NAMECALL                         R9 R9 K20 ["getLocalBoundingBox"]
       83 CALL                             R9 1 1
       84 NAMECALL                         R11 R9 K21 ["Inverse"]
       86 CALL                             R11 1 1
       87 MUL                              R10 R8 R11
       88 GETTABLEKS                       R11 R0 K0 ["_partMover"]
       90 MOVE                             R13 R10
       91 NAMECALL                         R11 R11 K2 ["transformTo"]
       93 CALL                             R11 2 0
       94 GETTABLEKS                       R11 R0 K3 ["_attachmentMover"]
       96 MOVE                             R13 R10
       97 NAMECALL                         R11 R11 K2 ["transformTo"]
       99 CALL                             R11 2 0
      100 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 DUPTABLE                         R3 K6 [{"tiltRotate", "baseCFrame", "offsetCFrame"}]
        3 GETTABLEKS                       R4 R0 K7 ["_tiltRotate"]
        5 SETTABLEKS                       R4 R3 K3 ["tiltRotate"]
        7 GETTABLEKS                       R4 R0 K8 ["_lastDragTarget"]
        9 GETTABLEKS                       R4 R4 K4 ["baseCFrame"]
       11 SETTABLEKS                       R4 R3 K4 ["baseCFrame"]
       13 GETTABLEKS                       R4 R0 K8 ["_lastDragTarget"]
       15 GETTABLEKS                       R4 R4 K5 ["offsetCFrame"]
       17 SETTABLEKS                       R4 R3 K5 ["offsetCFrame"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R0 K9 ["_animateFrom"]
       22 SETTABLEKS                       R1 R0 K7 ["_tiltRotate"]
       24 GETTABLEKS                       R2 R0 K10 ["_animationTask"]
       26 GETTABLEKS                       R4 R0 K11 ["_draggerToolModel"]
       28 GETTABLEKS                       R4 R4 K12 ["_draggerContext"]
       30 NAMECALL                         R4 R4 K13 ["getTiltRotateDuration"]
       32 CALL                             R4 1 -1
       33 NAMECALL                         R2 R2 K14 ["animate"]
       35 CALL                             R2 -1 0
       36 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_animationTask"]
        2 NAMECALL                         R1 R1 K1 ["inProgress"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
       10 GETTABLEKS                       R2 R1 K3 ["_draggerContext"]
       12 NAMECALL                         R2 R2 K4 ["shouldJoinSurfaces"]
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+21]
       16 GETTABLEKS                       R2 R0 K5 ["_jointPairs"]
       18 JUMPIFNOT                        R2 ; [+18]
       19 GETTABLEKS                       R2 R1 K6 ["_selectionInfo"]
       21 NAMECALL                         R2 R2 K7 ["getBoundingBox"]
       23 CALL                             R2 1 2
       24 MUL                              R4 R2 R3
       25 GETTABLEKS                       R5 R0 K5 ["_jointPairs"]
       27 GETTABLEKS                       R7 R1 K3 ["_draggerContext"]
       29 MOVE                             R9 R4
       30 NAMECALL                         R7 R7 K8 ["getHandleScale"]
       32 CALL                             R7 2 -1
       33 NAMECALL                         R5 R5 K9 ["renderJoints"]
       35 CALL                             R5 -1 -1
       36 RETURN                           R5 -1
       37 LOADNIL                          R2
       38 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R0 K1 ["_lastDragTarget"]
        4 NAMECALL                         R3 R1 K2 ["shouldShowTargetGrids"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+93]
        8 GETTABLEKS                       R5 R2 K3 ["softSnaps"]
       10 LENGTH                           R4 R5
       11 LOADN                            R5 0
       12 JUMPIFLT                         R5 R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 JUMPIFNOT                        R3 ; [+21]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["createElement"]
       20 GETUPVAL                         R5 1
       21 DUPTABLE                         R6 K8 [{"DragTarget", "DraggerContext", "UseBoundingBoxes"}]
       22 SETTABLEKS                       R2 R6 K5 ["DragTarget"]
       24 SETTABLEKS                       R1 R6 K6 ["DraggerContext"]
       26 GETUPVAL                         R8 2
       27 CALL                             R8 0 1
       28 JUMPIFNOT                        R8 ; [+4]
       29 NAMECALL                         R7 R1 K9 ["shouldUseBoundingBoxes"]
       31 CALL                             R7 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 SETTABLEKS                       R7 R6 K7 ["UseBoundingBoxes"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1
       38 NAMECALL                         R5 R1 K10 ["shouldGridSnap"]
       40 CALL                             R5 1 1
       41 JUMPIFNOT                        R5 ; [+4]
       42 NAMECALL                         R4 R1 K11 ["getGridSize"]
       44 CALL                             R4 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 GETTABLEKS                       R5 R0 K12 ["_draggerToolModel"]
       49 GETTABLEKS                       R5 R5 K13 ["_selectionInfo"]
       51 NAMECALL                         R5 R5 K14 ["getLocalBoundingBox"]
       53 CALL                             R5 1 3
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K4 ["createElement"]
       57 GETUPVAL                         R9 3
       58 DUPTABLE                         R10 K21 [{"DragTarget", "SourceSize", "Scale", "GridSize", "MajorStep", "Color", "PrimaryColor", "UseBoundingBoxes"}]
       59 SETTABLEKS                       R2 R10 K5 ["DragTarget"]
       61 SETTABLEKS                       R7 R10 K15 ["SourceSize"]
       63 GETTABLEKS                       R13 R2 K22 ["targetMatrix"]
       65 GETTABLEKS                       R13 R13 K23 ["Position"]
       67 NAMECALL                         R11 R1 K24 ["getHandleScale"]
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K16 ["Scale"]
       72 SETTABLEKS                       R4 R10 K17 ["GridSize"]
       74 NAMECALL                         R11 R1 K25 ["getMajorGridIncrement"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K18 ["MajorStep"]
       79 NAMECALL                         R11 R1 K26 ["getGridColor"]
       81 CALL                             R11 1 1
       82 SETTABLEKS                       R11 R10 K19 ["Color"]
       84 NAMECALL                         R11 R1 K27 ["getChosenColor"]
       86 CALL                             R11 1 1
       87 SETTABLEKS                       R11 R10 K20 ["PrimaryColor"]
       89 GETUPVAL                         R12 2
       90 CALL                             R12 0 1
       91 JUMPIFNOT                        R12 ; [+4]
       92 NAMECALL                         R11 R1 K9 ["shouldUseBoundingBoxes"]
       94 CALL                             R11 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R11
       97 SETTABLEKS                       R11 R10 K7 ["UseBoundingBoxes"]
       99 CALL                             R8 2 -1
      100 RETURN                           R8 -1
      101 LOADNIL                          R3
      102 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R0 K1 ["_lastDragTarget"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 NAMECALL                         R3 R1 K2 ["shouldShowDraggedPoint"]
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+124]
       11 NAMECALL                         R3 R1 K3 ["shouldGridSnap"]
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+120]
       15 GETTABLEKS                       R4 R2 K4 ["softSnaps"]
       17 LENGTH                           R3 R4
       18 JUMPIFNOTEQKN                    R3 K5 [0] ; [+116]
       20 GETTABLEKS                       R3 R2 K6 ["mainCFrame"]
       22 GETTABLEKS                       R6 R0 K7 ["_dragInfo"]
       24 GETTABLEKS                       R6 R6 K8 ["draggedPoint"]
       26 NAMECALL                         R4 R3 K9 ["PointToWorldSpace"]
       28 CALL                             R4 2 1
       29 GETTABLEKS                       R5 R2 K10 ["targetMatrix"]
       31 GETTABLEKS                       R6 R5 K11 ["Position"]
       33 GETTABLEKS                       R7 R5 K12 ["YVector"]
       35 SUB                              R8 R4 R6
       36 MOVE                             R10 R7
       37 NAMECALL                         R8 R8 K13 ["Dot"]
       39 CALL                             R8 2 1
       40 MUL                              R10 R7 R8
       41 SUB                              R9 R4 R10
       42 MOVE                             R12 R4
       43 NAMECALL                         R10 R1 K14 ["getHandleScale"]
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R11 R11 K15 ["createFragment"]
       49 DUPTABLE                         R12 K18 [{"SnapFrom", "SnapTo"}]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K19 ["createElement"]
       53 LOADK                            R14 K20 ["SphereHandleAdornment"]
       54 DUPTABLE                         R15 K29 [{["Radius"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["AdornCullingMode"], ["Adornee"], ["ZIndex"] = 0}]
       55 MULK                             R16 R10 K30 [0.15]
       56 SETTABLEKS                       R16 R15 K21 ["Radius"]
       58 GETTABLEKS                       R17 R3 K31 ["Rotation"]
       60 ADD                              R16 R17 R4
       61 SETTABLEKS                       R16 R15 K22 ["CFrame"]
       63 NAMECALL                         R16 R1 K32 ["getChosenColor"]
       65 CALL                             R16 1 1
       66 SETTABLEKS                       R16 R15 K23 ["Color3"]
       68 GETIMPORT                        R16 K35 [Enum.AdornCullingMode.Never]
       70 SETTABLEKS                       R16 R15 K26 ["AdornCullingMode"]
       72 GETIMPORT                        R16 K37 [workspace]
       74 GETTABLEKS                       R16 R16 K38 ["Terrain"]
       76 SETTABLEKS                       R16 R15 K27 ["Adornee"]
       78 CALL                             R13 2 1
       79 SETTABLEKS                       R13 R12 K16 ["SnapFrom"]
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R13 R13 K19 ["createElement"]
       84 LOADK                            R14 K39 ["BoxHandleAdornment"]
       85 DUPTABLE                         R15 K41 [{["Size"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["AdornCullingMode"], ["Adornee"], ["ZIndex"] = 0}]
       86 LOADK                            R18 K42 [0.05]
       87 MUL                              R17 R18 R10
       88 LOADK                            R20 K42 [0.05]
       89 MUL                              R19 R20 R10
       90 FASTCALL3                        VECTOR R17 R8 R19
       92 MOVE                             R18 R8
       93 GETIMPORT                        R16 K45 [Vector3.new]
       95 CALL                             R16 3 1
       96 SETTABLEKS                       R16 R15 K40 ["Size"]
       98 GETIMPORT                        R16 K47 [CFrame.fromMatrix]
      100 LOADK                            R20 K48 [0.5]
      101 MUL                              R19 R20 R7
      102 MUL                              R18 R19 R8
      103 ADD                              R17 R9 R18
      104 GETTABLEKS                       R20 R5 K49 ["ZVector"]
      106 NAMECALL                         R18 R7 K50 ["Cross"]
      108 CALL                             R18 2 1
      109 GETTABLEKS                       R18 R18 K51 ["Unit"]
      111 MOVE                             R19 R7
      112 CALL                             R16 3 1
      113 SETTABLEKS                       R16 R15 K22 ["CFrame"]
      115 NAMECALL                         R16 R1 K32 ["getChosenColor"]
      117 CALL                             R16 1 1
      118 SETTABLEKS                       R16 R15 K23 ["Color3"]
      120 GETIMPORT                        R16 K35 [Enum.AdornCullingMode.Never]
      122 SETTABLEKS                       R16 R15 K26 ["AdornCullingMode"]
      124 GETIMPORT                        R16 K37 [workspace]
      126 GETTABLEKS                       R16 R16 K38 ["Terrain"]
      128 SETTABLEKS                       R16 R15 K27 ["Adornee"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K17 ["SnapTo"]
      133 CALL                             R11 1 -1
      134 RETURN                           R11 -1
      135 LOADNIL                          R3
      136 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R1 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+19]
        8 GETTABLEKS                       R2 R0 K3 ["_lastDragTarget"]
       10 JUMPIFNOT                        R2 ; [+16]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["createFragment"]
       14 DUPTABLE                         R3 K7 [{"SnapConnection", "SnapTarget"}]
       15 NAMECALL                         R4 R0 K8 ["_renderSnapRelation"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K5 ["SnapConnection"]
       20 NAMECALL                         R4 R0 K9 ["_renderSnapTarget"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K6 ["SnapTarget"]
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"SurfaceJoints", "Snap"}]
        4 NAMECALL                         R3 R0 K4 ["_renderSurfaceJoints"]
        6 CALL                             R3 1 1
        7 SETTABLEKS                       R3 R2 K1 ["SurfaceJoints"]
        9 NAMECALL                         R3 R0 K5 ["_renderSnap"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K2 ["Snap"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 NAMECALL                         R1 R1 K1 ["shouldAlignDraggedObjects"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
        8 NAMECALL                         R2 R2 K3 ["isAltKeyDown"]
       10 CALL                             R2 1 1
       11 NOT                              R1 R2
       12 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADK                            R2 K3 [{0, 1, 0}]
       10 JUMPIFNOTEQ                      R1 R2 ; [+11]
       12 GETTABLEKS                       R2 R0 K4 ["_dragAnalytics"]
       14 GETTABLEKS                       R4 R0 K4 ["_dragAnalytics"]
       16 GETTABLEKS                       R4 R4 K6 ["dragRotates"]
       18 ADDK                             R3 R4 K5 [1]
       19 SETTABLEKS                       R3 R2 K6 ["dragRotates"]
       21 JUMP                             ; [+9]
       22 GETTABLEKS                       R2 R0 K4 ["_dragAnalytics"]
       24 GETTABLEKS                       R4 R0 K4 ["_dragAnalytics"]
       26 GETTABLEKS                       R4 R4 K7 ["dragTilts"]
       28 ADDK                             R3 R4 K5 [1]
       29 SETTABLEKS                       R3 R2 K7 ["dragTilts"]
       31 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
       33 GETTABLEKS                       R2 R2 K8 ["_selectionInfo"]
       35 NAMECALL                         R2 R2 K9 ["getLocalBoundingBox"]
       37 CALL                             R2 1 1
       38 LOADNIL                          R3
       39 GETTABLEKS                       R4 R0 K10 ["_lastDragTarget"]
       41 JUMPIFNOT                        R4 ; [+4]
       42 GETTABLEKS                       R4 R0 K10 ["_lastDragTarget"]
       44 GETTABLEKS                       R3 R4 K11 ["targetMatrix"]
       46 LOADNIL                          R4
       47 GETUPVAL                         R5 0
       48 CALL                             R5 0 1
       49 JUMPIFNOT                        R5 ; [+65]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K12 ["updateTiltRotateNew"]
       53 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       55 GETTABLEKS                       R6 R6 K1 ["_draggerContext"]
       57 NAMECALL                         R6 R6 K13 ["getMouseRay"]
       59 CALL                             R6 1 1
       60 DUPTABLE                         R7 K23 [{"cameraCFrame", "selection", "mainCFrame", "lastTargetMat", "tiltRotate", "axis", "alignRotation", "gridSnap", "useBoundingBoxes"}]
       61 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
       63 GETTABLEKS                       R8 R8 K1 ["_draggerContext"]
       65 NAMECALL                         R8 R8 K24 ["getCameraCFrame"]
       67 CALL                             R8 1 1
       68 SETTABLEKS                       R8 R7 K14 ["cameraCFrame"]
       70 GETTABLEKS                       R8 R0 K25 ["_raycastFilter"]
       72 SETTABLEKS                       R8 R7 K15 ["selection"]
       74 SETTABLEKS                       R2 R7 K16 ["mainCFrame"]
       76 SETTABLEKS                       R3 R7 K17 ["lastTargetMat"]
       78 GETTABLEKS                       R8 R0 K26 ["_tiltRotate"]
       80 SETTABLEKS                       R8 R7 K18 ["tiltRotate"]
       82 SETTABLEKS                       R1 R7 K19 ["axis"]
       84 NAMECALL                         R8 R0 K27 ["_shouldAlignDraggedObjects"]
       86 CALL                             R8 1 1
       87 SETTABLEKS                       R8 R7 K20 ["alignRotation"]
       89 GETTABLEKS                       R9 R0 K1 ["_draggerContext"]
       91 NAMECALL                         R9 R9 K28 ["shouldGridSnap"]
       93 CALL                             R9 1 1
       94 JUMPIFNOT                        R9 ; [+6]
       95 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       97 NAMECALL                         R8 R8 K29 ["getGridSize"]
       99 CALL                             R8 1 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R8
      102 SETTABLEKS                       R8 R7 K21 ["gridSnap"]
      104 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
      106 NAMECALL                         R8 R8 K30 ["shouldUseBoundingBoxes"]
      108 CALL                             R8 1 1
      109 SETTABLEKS                       R8 R7 K22 ["useBoundingBoxes"]
      111 CALL                             R5 2 1
      112 GETTABLEKS                       R4 R5 K18 ["tiltRotate"]
      114 JUMP                             ; [+42]
      115 GETUPVAL                         R5 1
      116 GETTABLEKS                       R5 R5 K31 ["DEPRECATED_updateTiltRotate"]
      118 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
      120 GETTABLEKS                       R6 R6 K1 ["_draggerContext"]
      122 NAMECALL                         R6 R6 K24 ["getCameraCFrame"]
      124 CALL                             R6 1 1
      125 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
      127 GETTABLEKS                       R7 R7 K1 ["_draggerContext"]
      129 NAMECALL                         R7 R7 K13 ["getMouseRay"]
      131 CALL                             R7 1 1
      132 GETTABLEKS                       R8 R0 K25 ["_raycastFilter"]
      134 MOVE                             R9 R2
      135 MOVE                             R10 R3
      136 GETTABLEKS                       R11 R0 K26 ["_tiltRotate"]
      138 MOVE                             R12 R1
      139 NAMECALL                         R13 R0 K27 ["_shouldAlignDraggedObjects"]
      141 CALL                             R13 1 1
      142 GETTABLEKS                       R15 R0 K1 ["_draggerContext"]
      144 NAMECALL                         R15 R15 K28 ["shouldGridSnap"]
      146 CALL                             R15 1 1
      147 JUMPIFNOT                        R15 ; [+6]
      148 GETTABLEKS                       R14 R0 K1 ["_draggerContext"]
      150 NAMECALL                         R14 R14 K29 ["getGridSize"]
      152 CALL                             R14 1 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R14
      155 CALL                             R5 9 1
      156 MOVE                             R4 R5
      157 GETTABLEKS                       R5 R0 K10 ["_lastDragTarget"]
      159 JUMPIFNOT                        R5 ; [+5]
      160 MOVE                             R7 R4
      161 NAMECALL                         R5 R0 K32 ["_beginAnimation"]
      163 CALL                             R5 2 0
      164 RETURN                           R0 0
      165 SETTABLEKS                       R4 R0 K26 ["_tiltRotate"]
      167 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["XVector"]
        2 GETTABLEKS                       R3 R1 K1 ["YVector"]
        4 GETTABLEKS                       R4 R1 K2 ["ZVector"]
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+24]
       11 MOVE                             R7 R3
       12 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+19]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
       19 CALL                             R5 2 1
       20 JUMPIF                           R5 ; [+14]
       21 MINUS                            R7 R2
       22 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
       24 CALL                             R5 2 1
       25 JUMPIF                           R5 ; [+9]
       26 MINUS                            R7 R3
       27 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
       29 CALL                             R5 2 1
       30 JUMPIF                           R5 ; [+4]
       31 MINUS                            R7 R4
       32 NAMECALL                         R5 R0 K3 ["FuzzyEq"]
       34 CALL                             R5 2 1
       35 RETURN                           R5 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["targetMatrix"]
        2 GETTABLEKS                       R2 R2 K1 ["YVector"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 NAMECALL                         R5 R1 K2 ["getLocalBoundingBox"]
        8 CALL                             R5 1 -1
        9 CALL                             R3 -1 1
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 1
       12 GETTABLEKS                       R5 R0 K3 ["offsetCFrame"]
       14 NAMECALL                         R5 R5 K4 ["Inverse"]
       16 CALL                             R5 1 1
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R1 K5 ["getBoundingBoxDiscrepancy"]
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K8 [table.clone]
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K9 ["mainCFrame"]
       27 MUL                              R6 R2 R3
       28 SUB                              R5 R5 R6
       29 SETTABLEKS                       R5 R4 K9 ["mainCFrame"]
       31 GETTABLEKS                       R5 R4 K10 ["baseCFrame"]
       33 MUL                              R6 R2 R3
       34 SUB                              R5 R5 R6
       35 SETTABLEKS                       R5 R4 K10 ["baseCFrame"]
       37 GETIMPORT                        R5 K12 [table.freeze]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 -1
       41 RETURN                           R5 -1

PROTO_18:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        6 GETTABLEKS                       R1 R2 K1 ["targetMatrix"]
        8 GETTABLEKS                       R2 R0 K2 ["_draggerToolModel"]
       10 GETTABLEKS                       R2 R2 K3 ["_draggerContext"]
       12 NAMECALL                         R2 R2 K4 ["getMouseRay"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R3 R0 K5 ["_shouldAlignDraggedObjects"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
       20 GETTABLEKS                       R4 R4 K6 ["_selectionInfo"]
       22 NAMECALL                         R4 R4 K7 ["getLocalBoundingBox"]
       24 CALL                             R4 1 3
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 0
       27 CALL                             R8 0 1
       28 JUMPIFNOT                        R8 ; [+76]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K8 ["getDragTargetNew"]
       32 MOVE                             R9 R2
       33 DUPTABLE                         R10 K22 [{"selection", "selectionBoundsCFrame", "selectionBoundsOffset", "selectionBoundsSize", "draggedPoint", "gridSnap", "tiltRotate", "lastTargetMat", "alignRotation", "draggingByPivot", "softSnapMarginFactor", "partSnap", "useBoundingBoxes"}]
       34 GETTABLEKS                       R11 R0 K23 ["_raycastFilter"]
       36 SETTABLEKS                       R11 R10 K9 ["selection"]
       38 SETTABLEKS                       R4 R10 K10 ["selectionBoundsCFrame"]
       40 SETTABLEKS                       R5 R10 K11 ["selectionBoundsOffset"]
       42 SETTABLEKS                       R6 R10 K12 ["selectionBoundsSize"]
       44 GETTABLEKS                       R11 R0 K24 ["_dragInfo"]
       46 GETTABLEKS                       R11 R11 K13 ["draggedPoint"]
       48 SETTABLEKS                       R11 R10 K13 ["draggedPoint"]
       50 GETTABLEKS                       R12 R0 K3 ["_draggerContext"]
       52 NAMECALL                         R12 R12 K25 ["shouldGridSnap"]
       54 CALL                             R12 1 1
       55 JUMPIFNOT                        R12 ; [+6]
       56 GETTABLEKS                       R11 R0 K3 ["_draggerContext"]
       58 NAMECALL                         R11 R11 K26 ["getGridSize"]
       60 CALL                             R11 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R11
       63 SETTABLEKS                       R11 R10 K14 ["gridSnap"]
       65 GETTABLEKS                       R11 R0 K27 ["_tiltRotate"]
       67 SETTABLEKS                       R11 R10 K15 ["tiltRotate"]
       69 SETTABLEKS                       R1 R10 K16 ["lastTargetMat"]
       71 SETTABLEKS                       R3 R10 K17 ["alignRotation"]
       73 GETTABLEKS                       R11 R0 K24 ["_dragInfo"]
       75 GETTABLEKS                       R11 R11 K28 ["clickedMetadata"]
       77 GETTABLEKS                       R11 R11 K29 ["IsPivot"]
       79 SETTABLEKS                       R11 R10 K18 ["draggingByPivot"]
       81 GETTABLEKS                       R11 R0 K3 ["_draggerContext"]
       83 NAMECALL                         R11 R11 K30 ["getSoftSnapMarginFactor"]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K19 ["softSnapMarginFactor"]
       88 GETTABLEKS                       R11 R0 K3 ["_draggerContext"]
       90 NAMECALL                         R11 R11 K31 ["shouldPartSnap"]
       92 CALL                             R11 1 1
       93 SETTABLEKS                       R11 R10 K20 ["partSnap"]
       95 GETTABLEKS                       R11 R0 K3 ["_draggerContext"]
       97 NAMECALL                         R11 R11 K32 ["shouldUseBoundingBoxes"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K21 ["useBoundingBoxes"]
      102 CALL                             R8 2 1
      103 MOVE                             R7 R8
      104 JUMP                             ; [+48]
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R8 R8 K33 ["DEPRECATED_getDragTarget"]
      108 GETTABLEKS                       R9 R0 K23 ["_raycastFilter"]
      110 MOVE                             R10 R4
      111 MOVE                             R11 R5
      112 MOVE                             R12 R6
      113 GETTABLEKS                       R13 R0 K24 ["_dragInfo"]
      115 GETTABLEKS                       R13 R13 K13 ["draggedPoint"]
      117 MOVE                             R14 R2
      118 GETTABLEKS                       R16 R0 K3 ["_draggerContext"]
      120 NAMECALL                         R16 R16 K25 ["shouldGridSnap"]
      122 CALL                             R16 1 1
      123 JUMPIFNOT                        R16 ; [+6]
      124 GETTABLEKS                       R15 R0 K3 ["_draggerContext"]
      126 NAMECALL                         R15 R15 K26 ["getGridSize"]
      128 CALL                             R15 1 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R15
      131 GETTABLEKS                       R16 R0 K27 ["_tiltRotate"]
      133 MOVE                             R17 R1
      134 MOVE                             R18 R3
      135 GETTABLEKS                       R19 R0 K24 ["_dragInfo"]
      137 GETTABLEKS                       R19 R19 K28 ["clickedMetadata"]
      139 GETTABLEKS                       R19 R19 K29 ["IsPivot"]
      141 GETTABLEKS                       R20 R0 K3 ["_draggerContext"]
      143 NAMECALL                         R20 R20 K30 ["getSoftSnapMarginFactor"]
      145 CALL                             R20 1 1
      146 GETTABLEKS                       R21 R0 K3 ["_draggerContext"]
      148 NAMECALL                         R21 R21 K31 ["shouldPartSnap"]
      150 CALL                             R21 1 -1
      151 CALL                             R8 -1 1
      152 MOVE                             R7 R8
      153 GETUPVAL                         R8 2
      154 CALL                             R8 0 1
      155 JUMPIFNOT                        R8 ; [+17]
      156 JUMPIFNOT                        R7 ; [+16]
      157 JUMPIF                           R3 ; [+15]
      158 GETTABLEKS                       R8 R0 K24 ["_dragInfo"]
      160 GETTABLEKS                       R8 R8 K28 ["clickedMetadata"]
      162 GETTABLEKS                       R8 R8 K29 ["IsPivot"]
      164 JUMPIF                           R8 ; [+8]
      165 GETUPVAL                         R8 3
      166 MOVE                             R9 R7
      167 GETTABLEKS                       R10 R0 K2 ["_draggerToolModel"]
      169 GETTABLEKS                       R10 R10 K6 ["_selectionInfo"]
      171 CALL                             R8 2 1
      172 MOVE                             R7 R8
      173 MOVE                             R10 R7
      174 NAMECALL                         R8 R0 K34 ["_analyticsRecordFreeformDragUpdate"]
      176 CALL                             R8 2 0
      177 JUMPIFNOT                        R7 ; [+52]
      178 SETTABLEKS                       R7 R0 K0 ["_lastDragTarget"]
      180 GETTABLEKS                       R8 R7 K35 ["mainCFrame"]
      182 GETTABLEKS                       R9 R0 K2 ["_draggerToolModel"]
      184 GETTABLEKS                       R9 R9 K6 ["_selectionInfo"]
      186 NAMECALL                         R9 R9 K7 ["getLocalBoundingBox"]
      188 CALL                             R9 1 1
      189 NAMECALL                         R11 R9 K36 ["Inverse"]
      191 CALL                             R11 1 1
      192 MUL                              R10 R8 R11
      193 GETTABLEKS                       R11 R0 K37 ["_animationTask"]
      195 NAMECALL                         R11 R11 K38 ["inProgress"]
      197 CALL                             R11 1 1
      198 JUMPIFNOT                        R11 ; [+1]
      199 JUMP                             ; [+28]
      200 GETTABLEKS                       R11 R0 K39 ["_partMover"]
      202 MOVE                             R13 R10
      203 NAMECALL                         R11 R11 K40 ["transformTo"]
      205 CALL                             R11 2 0
      206 GETTABLEKS                       R11 R0 K41 ["_attachmentMover"]
      208 MOVE                             R13 R10
      209 NAMECALL                         R11 R11 K40 ["transformTo"]
      211 CALL                             R11 2 0
      212 GETTABLEKS                       R11 R0 K2 ["_draggerToolModel"]
      214 GETTABLEKS                       R11 R11 K3 ["_draggerContext"]
      216 NAMECALL                         R11 R11 K42 ["shouldJoinSurfaces"]
      218 CALL                             R11 1 1
      219 JUMPIFNOT                        R11 ; [+8]
      220 GETTABLEKS                       R11 R0 K39 ["_partMover"]
      222 MOVE                             R13 R10
      223 NAMECALL                         R11 R11 K43 ["computeJointPairs"]
      225 CALL                             R11 2 1
      226 SETTABLEKS                       R11 R0 K44 ["_jointPairs"]
      228 SETTABLEKS                       R10 R0 K45 ["_lastAppliedTransform"]
      230 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_selectionInfo"]
        4 NAMECALL                         R1 R1 K2 ["getLocalBoundingBox"]
        6 CALL                             R1 1 3
        7 GETTABLEKS                       R4 R0 K3 ["_dragInfo"]
        9 GETTABLEKS                       R4 R4 K4 ["draggedPoint"]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["getCameraPlaneDragTarget"]
       16 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
       18 GETTABLEKS                       R5 R5 K6 ["_draggerContext"]
       20 NAMECALL                         R5 R5 K7 ["getMouseRay"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       25 GETTABLEKS                       R6 R6 K6 ["_draggerContext"]
       27 NAMECALL                         R6 R6 K8 ["getCameraCFrame"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R6 R6 K9 ["LookVector"]
       32 GETTABLEKS                       R9 R0 K3 ["_dragInfo"]
       34 GETTABLEKS                       R9 R9 K4 ["draggedPoint"]
       36 NAMECALL                         R7 R1 K10 ["PointToWorldSpace"]
       38 CALL                             R7 2 -1
       39 CALL                             R4 -1 1
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R0 K11 ["_analyticsRecordFreeformDragUpdate"]
       43 CALL                             R5 2 0
       44 JUMPIFNOT                        R4 ; [+29]
       45 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       47 GETTABLEKS                       R6 R6 K6 ["_draggerContext"]
       49 NAMECALL                         R6 R6 K12 ["areCollisionsEnabled"]
       51 CALL                             R6 1 1
       52 JUMPIFNOT                        R6 ; [+3]
       53 GETIMPORT                        R5 K16 [Enum.IKCollisionsMode.IncludeContactedMechanisms]
       55 JUMPIF                           R5 ; [+2]
       56 GETIMPORT                        R5 K18 [Enum.IKCollisionsMode.NoCollisions]
       58 GETTABLEKS                       R6 R0 K19 ["_partMover"]
       60 GETTABLEKS                       R8 R4 K20 ["mainCFrame"]
       62 MOVE                             R9 R5
       63 NAMECALL                         R6 R6 K21 ["moveToWithIk"]
       65 CALL                             R6 3 1
       66 GETTABLEKS                       R7 R0 K22 ["_attachmentMover"]
       68 MOVE                             R9 R6
       69 NAMECALL                         R7 R7 K23 ["transformTo"]
       71 CALL                             R7 2 0
       72 SETTABLEKS                       R6 R0 K24 ["_lastAppliedTransform"]
       74 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["areConstraintsEnabled"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R1 R0 K3 ["_updatePhysical"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 NAMECALL                         R1 R0 K4 ["_updateGeometric"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Position"]
        4 SETTABLEKS                       R1 R0 K1 ["Parent"]
        6 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_animationTask"]
        2 NAMECALL                         R1 R1 K1 ["commit"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_dragInfo"]
        7 GETTABLEKS                       R1 R1 K3 ["attachmentBeingDragged"]
        9 JUMPIFNOT                        R1 ; [+51]
       10 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       12 GETTABLEKS                       R2 R2 K5 ["_draggerContext"]
       14 NAMECALL                         R2 R2 K6 ["getMouseRay"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K9 [RaycastParams.new]
       19 CALL                             R3 0 1
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K10 ["BruteForceAllSlow"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K11 ["CollisionGroup"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R6 R2 K12 ["Origin"]
       29 GETTABLEKS                       R7 R2 K13 ["Direction"]
       31 MOVE                             R8 R3
       32 NAMECALL                         R4 R4 K14 ["Raycast"]
       34 CALL                             R4 4 1
       35 JUMPIFNOT                        R4 ; [+17]
       36 GETTABLEKS                       R5 R1 K15 ["WorldCFrame"]
       38 GETTABLEKS                       R6 R1 K16 ["Parent"]
       40 GETTABLEKS                       R7 R4 K17 ["Instance"]
       42 JUMPIFEQ                         R6 R7 ; [+18]
       44 GETIMPORT                        R6 K19 [pcall]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CALL                             R6 1 0
       50 SETTABLEKS                       R5 R1 K15 ["WorldCFrame"]
       52 JUMP                             ; [+8]
       53 GETTABLEKS                       R5 R0 K20 ["_attachmentMover"]
       55 GETIMPORT                        R7 K22 [CFrame.new]
       57 CALL                             R7 0 -1
       58 NAMECALL                         R5 R5 K23 ["transformTo"]
       60 CALL                             R5 -1 0
       61 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       63 GETTABLEKS                       R2 R2 K5 ["_draggerContext"]
       65 NAMECALL                         R2 R2 K24 ["shouldJoinSurfaces"]
       67 CALL                             R2 1 1
       68 JUMPIFNOT                        R2 ; [+8]
       69 GETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       71 JUMPIFNOT                        R2 ; [+5]
       72 GETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       74 NAMECALL                         R2 R2 K26 ["createJoints"]
       76 CALL                             R2 1 0
       77 LOADNIL                          R2
       78 SETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       80 GETTABLEKS                       R2 R0 K27 ["_partMover"]
       82 NAMECALL                         R2 R2 K1 ["commit"]
       84 CALL                             R2 1 0
       85 GETTABLEKS                       R2 R0 K20 ["_attachmentMover"]
       87 NAMECALL                         R2 R2 K1 ["commit"]
       89 CALL                             R2 1 0
       90 NAMECALL                         R2 R0 K28 ["_analyticsSendFreeformDragged"]
       92 CALL                             R2 1 0
       93 GETTABLEKS                       R2 R0 K5 ["_draggerContext"]
       95 NAMECALL                         R2 R2 K29 ["shouldUseLocalSpace"]
       97 CALL                             R2 1 1
       98 JUMPIFNOT                        R2 ; [+10]
       99 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
      101 GETTABLEKS                       R2 R2 K30 ["_selectionInfo"]
      103 GETTABLEKS                       R4 R0 K31 ["_lastAppliedTransform"]
      105 NAMECALL                         R2 R2 K32 ["getTransformedCopy"]
      107 CALL                             R2 2 -1
      108 RETURN                           R2 -1
      109 GETTABLEKS                       R2 R0 K31 ["_lastAppliedTransform"]
      111 NAMECALL                         R2 R2 K33 ["ToOrientation"]
      113 CALL                             R2 1 3
      114 FASTCALL1                        MATH_ABS R2 ; [+3]
      115 MOVE                             R6 R2
      116 GETIMPORT                        R5 K36 [math.abs]
      118 CALL                             R5 1 1
      119 LOADK                            R6 K37 [1E-05]
      120 JUMPIFLT                         R6 R5 ; [+17]
      122 FASTCALL1                        MATH_ABS R3 ; [+3]
      123 MOVE                             R6 R3
      124 GETIMPORT                        R5 K36 [math.abs]
      126 CALL                             R5 1 1
      127 LOADK                            R6 K37 [1E-05]
      128 JUMPIFLT                         R6 R5 ; [+9]
      130 FASTCALL1                        MATH_ABS R4 ; [+3]
      131 MOVE                             R6 R4
      132 GETIMPORT                        R5 K36 [math.abs]
      134 CALL                             R5 1 1
      135 LOADK                            R6 K37 [1E-05]
      136 JUMPIFNOTLT                      R6 R5 ; [+3]
      138 LOADNIL                          R5
      139 RETURN                           R5 1
      140 GETTABLEKS                       R5 R0 K4 ["_draggerToolModel"]
      142 GETTABLEKS                       R5 R5 K30 ["_selectionInfo"]
      144 GETTABLEKS                       R7 R0 K31 ["_lastAppliedTransform"]
      146 NAMECALL                         R5 R5 K32 ["getTransformedCopy"]
      148 CALL                             R5 2 -1
      149 RETURN                           R5 -1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_selectionInfo"]
        4 NAMECALL                         R2 R2 K2 ["getObjectsToTransform"]
        6 CALL                             R2 1 2
        7 DUPTABLE                         R4 K9 [{["dragTilts"] = 0, ["dragRotates"] = 0, ["partCount"], ["attachmentCount"], ["timeToStartDrag"]}]
        8 LENGTH                           R5 R2
        9 SETTABLEKS                       R5 R4 K6 ["partCount"]
       11 LENGTH                           R5 R3
       12 SETTABLEKS                       R5 R4 K7 ["attachmentCount"]
       14 SETTABLEKS                       R1 R4 K8 ["timeToStartDrag"]
       16 SETTABLEKS                       R4 R0 K10 ["_dragAnalytics"]
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R0 K11 ["_dragStartLocation"]
       21 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOT                        R1 ; [+55]
        1 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
        3 GETTABLEKS                       R3 R1 K1 ["dragTargetType"]
        5 SETTABLEKS                       R3 R2 K1 ["dragTargetType"]
        7 GETTABLEKS                       R2 R0 K2 ["_dragStartLocation"]
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       12 GETTABLEKS                       R4 R1 K3 ["mainCFrame"]
       14 GETTABLEKS                       R4 R4 K4 ["Position"]
       16 GETTABLEKS                       R5 R0 K2 ["_dragStartLocation"]
       18 SUB                              R3 R4 R5
       19 GETTABLEKS                       R3 R3 K5 ["Magnitude"]
       21 SETTABLEKS                       R3 R2 K6 ["dragDistance"]
       23 JUMP                             ; [+11]
       24 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       26 LOADN                            R3 0
       27 SETTABLEKS                       R3 R2 K6 ["dragDistance"]
       29 GETTABLEKS                       R2 R1 K3 ["mainCFrame"]
       31 GETTABLEKS                       R2 R2 K4 ["Position"]
       33 SETTABLEKS                       R2 R0 K2 ["_dragStartLocation"]
       35 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       37 GETTABLEKS                       R4 R0 K7 ["_draggerToolModel"]
       39 GETTABLEKS                       R4 R4 K8 ["_draggerContext"]
       41 NAMECALL                         R4 R4 K9 ["getCameraCFrame"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R4 R4 K4 ["Position"]
       46 GETTABLEKS                       R5 R1 K3 ["mainCFrame"]
       48 GETTABLEKS                       R5 R5 K4 ["Position"]
       50 SUB                              R3 R4 R5
       51 GETTABLEKS                       R3 R3 K5 ["Magnitude"]
       53 SETTABLEKS                       R3 R2 K10 ["distanceToCamera"]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       58 LOADK                            R3 K11 ["Failed"]
       59 SETTABLEKS                       R3 R2 K1 ["dragTargetType"]
       61 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
        2 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["getGridSize"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K3 ["gridSize"]
        9 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       11 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       13 NAMECALL                         R2 R2 K5 ["getAnalyticsName"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K6 ["toolName"]
       18 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       20 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       22 NAMECALL                         R2 R2 K7 ["wasAutoSelected"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K7 ["wasAutoSelected"]
       27 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       29 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
       31 NAMECALL                         R2 R2 K8 ["shouldJoinSurfaces"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K9 ["joinSurfaces"]
       36 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       38 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
       40 NAMECALL                         R2 R2 K10 ["areConstraintsEnabled"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K11 ["useConstraints"]
       45 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       47 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
       49 NAMECALL                         R2 R2 K12 ["areCollisionsEnabled"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R1 K13 ["haveCollisions"]
       54 GETTABLEKS                       R1 R0 K0 ["_dragAnalytics"]
       56 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       58 NAMECALL                         R2 R2 K14 ["classifySelectionPivot"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K15 ["pivotType"]
       63 GETTABLEKS                       R1 R0 K4 ["_draggerToolModel"]
       65 GETTABLEKS                       R1 R1 K1 ["_draggerContext"]
       67 NAMECALL                         R1 R1 K16 ["getAnalytics"]
       69 CALL                             R1 1 1
       70 LOADK                            R3 K17 ["freeformDragged"]
       71 GETTABLEKS                       R4 R0 K0 ["_dragAnalytics"]
       73 NAMECALL                         R1 R1 K18 ["sendEvent"]
       75 CALL                             R1 3 0
       76 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
       78 NAMECALL                         R1 R1 K16 ["getAnalytics"]
       80 CALL                             R1 1 1
       81 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       83 NAMECALL                         R3 R3 K5 ["getAnalyticsName"]
       85 CALL                             R3 1 1
       86 GETUPVAL                         R4 0
       87 NAMECALL                         R1 R1 K19 ["logTelemetryCounter"]
       89 CALL                             R1 3 0
       90 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETTABLEKS                       R5 R2 K10 ["Roact"]
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K9 [require]
       22 GETTABLEKS                       R6 R3 K11 ["Utility"]
       24 GETTABLEKS                       R6 R6 K12 ["DragHelper"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K9 [require]
       29 GETTABLEKS                       R7 R3 K11 ["Utility"]
       31 GETTABLEKS                       R7 R7 K13 ["PartMover"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K9 [require]
       36 GETTABLEKS                       R8 R3 K11 ["Utility"]
       38 GETTABLEKS                       R8 R8 K14 ["AttachmentMover"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K9 [require]
       43 GETTABLEKS                       R9 R3 K15 ["Components"]
       45 GETTABLEKS                       R9 R9 K16 ["TargetGridView"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K9 [require]
       50 GETTABLEKS                       R10 R3 K15 ["Components"]
       52 GETTABLEKS                       R10 R10 K17 ["TargetSoftSnapView"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R11 R3 K11 ["Utility"]
       59 GETTABLEKS                       R11 R11 K18 ["AnimationTask"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K9 [require]
       64 GETTABLEKS                       R12 R3 K11 ["Utility"]
       66 GETTABLEKS                       R12 R12 K19 ["Analytics"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K9 [require]
       71 GETTABLEKS                       R13 R3 K20 ["Types"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K9 [require]
       76 GETTABLEKS                       R14 R1 K21 ["SelectionInfo"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K9 [require]
       81 GETTABLEKS                       R15 R3 K22 ["Flags"]
       83 GETTABLEKS                       R15 R15 K23 ["getFFlagDraggerEditProcModels"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K9 [require]
       88 GETTABLEKS                       R16 R3 K22 ["Flags"]
       90 GETTABLEKS                       R16 R16 K24 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K9 [require]
       95 GETTABLEKS                       R17 R3 K22 ["Flags"]
       97 GETTABLEKS                       R17 R17 K25 ["getFFlagDraggerBetterAlignOrientationFalse"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K9 [require]
      102 GETTABLEKS                       R18 R3 K11 ["Utility"]
      104 GETTABLEKS                       R18 R18 K26 ["CursorGroupName"]
      106 CALL                             R17 1 1
      107 DUPTABLE                         R18 K35 [{["eventName"] = "SBT_DraggerFreeformDragCompleted", ["lastUpdated"], ["description"] = "The user successfully dragged the selection via freeform drag.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
      108 NEWTABLE                         R19 0 3
      110 LOADN                            R20 2024
      111 LOADN                            R21 10
      112 LOADN                            R22 14
      113 SETLIST                          R19 R20 3 [1]
      115 SETTABLEKS                       R19 R18 K29 ["lastUpdated"]
      117 NEWTABLE                         R19 0 1
      119 LOADK                            R20 K36 ["RobloxTelemetryCounter"]
      120 SETLIST                          R19 R20 1 [1]
      122 SETTABLEKS                       R19 R18 K34 ["backends"]
      124 NEWTABLE                         R19 32 0
      126 SETTABLEKS                       R19 R19 K37 ["__index"]
      128 DUPCLOSURE                       R20 K38 [PROTO_0]
      129 DUPCLOSURE                       R21 K39 [PROTO_2]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R10
      134 SETTABLEKS                       R21 R19 K40 ["new"]
      136 DUPCLOSURE                       R21 K41 [PROTO_3]
      137 SETTABLEKS                       R21 R19 K42 ["_init"]
      139 DUPCLOSURE                       R21 K43 [PROTO_4]
      140 SETTABLEKS                       R21 R19 K44 ["_initMovers"]
      142 DUPCLOSURE                       R21 K45 [PROTO_5]
      143 CAPTURE                          VAL R14
      144 SETTABLEKS                       R21 R19 K46 ["_initIgnoreList"]
      146 DUPCLOSURE                       R21 K47 [PROTO_6]
      147 SETTABLEKS                       R21 R19 K48 ["_animationCallback"]
      149 DUPCLOSURE                       R21 K49 [PROTO_7]
      150 SETTABLEKS                       R21 R19 K50 ["_beginAnimation"]
      152 DUPCLOSURE                       R21 K51 [PROTO_8]
      153 SETTABLEKS                       R21 R19 K52 ["canHoldOrientation"]
      155 DUPCLOSURE                       R21 K53 [PROTO_9]
      156 SETTABLEKS                       R21 R19 K54 ["_renderSurfaceJoints"]
      158 DUPCLOSURE                       R21 K55 [PROTO_10]
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R8
      163 SETTABLEKS                       R21 R19 K56 ["_renderSnapTarget"]
      165 DUPCLOSURE                       R21 K57 [PROTO_11]
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R21 R19 K58 ["_renderSnapRelation"]
      170 DUPCLOSURE                       R21 K59 [PROTO_12]
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R21 R19 K60 ["_renderSnap"]
      174 DUPCLOSURE                       R21 K61 [PROTO_13]
      175 CAPTURE                          VAL R4
      176 SETTABLEKS                       R21 R19 K62 ["render"]
      178 DUPCLOSURE                       R21 K63 [PROTO_14]
      179 SETTABLEKS                       R21 R19 K64 ["_shouldAlignDraggedObjects"]
      181 DUPCLOSURE                       R21 K65 [PROTO_15]
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R21 R19 K66 ["rotate"]
      186 DUPCLOSURE                       R21 K67 [PROTO_16]
      187 DUPCLOSURE                       R22 K68 [PROTO_17]
      188 CAPTURE                          VAL R21
      189 DUPCLOSURE                       R23 K69 [PROTO_18]
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R22
      194 SETTABLEKS                       R23 R19 K70 ["_updateGeometric"]
      196 DUPCLOSURE                       R23 K71 [PROTO_19]
      197 CAPTURE                          VAL R5
      198 SETTABLEKS                       R23 R19 K72 ["_updatePhysical"]
      200 DUPCLOSURE                       R23 K73 [PROTO_20]
      201 SETTABLEKS                       R23 R19 K74 ["update"]
      203 DUPCLOSURE                       R23 K75 [PROTO_22]
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R23 R19 K76 ["destroy"]
      208 DUPCLOSURE                       R23 K77 [PROTO_23]
      209 SETTABLEKS                       R23 R19 K78 ["_analyticsRecordFreeformDragBegin"]
      211 DUPCLOSURE                       R23 K79 [PROTO_24]
      212 SETTABLEKS                       R23 R19 K80 ["_analyticsRecordFreeformDragUpdate"]
      214 DUPCLOSURE                       R23 K81 [PROTO_25]
      215 CAPTURE                          VAL R18
      216 SETTABLEKS                       R23 R19 K82 ["_analyticsSendFreeformDragged"]
      218 RETURN                           R19 1
