PROTO_0:
        0 LOADK                            R1 K0 [0.5]
        1 JUMPIFNOTLT                      R0 R1 ; [+5]
        3 DIVK                             R3 R0 K0 [0.5]
        4 POWK                             R2 R3 K1 [4]
        5 MULK                             R1 R2 K0 [0.5]
        6 RETURN                           R1 1
        7 SUBRK                            R5 R2 K0 [0.5]
        8 DIVK                             R4 R5 K0 [0.5]
        9 POWK                             R3 R4 K1 [4]
       10 MULK                             R2 R3 K0 [0.5]
       11 SUBRK                            R1 R2 K2 [1]
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
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K10 ["new"]
       13 CALL                             R6 0 1
       14 SETTABLEKS                       R6 R5 K5 ["_partMover"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K10 ["new"]
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
       39 CALL                             R5 0 1
       40 JUMPIFNOT                        R5 ; [+8]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R5 R6 K10 ["new"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          VAL R4
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K15 ["_animationTask"]
       49 NAMECALL                         R5 R4 K16 ["_init"]
       51 CALL                             R5 1 0
       52 GETIMPORT                        R6 K1 [tick]
       54 CALL                             R6 0 1
       55 SUB                              R5 R6 R3
       56 MOVE                             R8 R5
       57 NAMECALL                         R6 R4 K17 ["_analyticsRecordFreeformDragBegin"]
       59 CALL                             R6 2 0
       60 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R3 R4 K1 ["_selectionInfo"]
        4 NAMECALL                         R3 R3 K2 ["getObjectsToTransform"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K3 ["_initIgnoreList"]
        9 CALL                             R1 -1 0
       10 NAMECALL                         R1 R0 K4 ["_initMovers"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R3 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 NOT                              R1 R2
        8 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       10 GETTABLEKS                       R2 R3 K3 ["_selectionInfo"]
       12 NAMECALL                         R2 R2 K4 ["getObjectsToTransform"]
       14 CALL                             R2 1 3
       15 GETTABLEKS                       R5 R0 K5 ["_partMover"]
       17 MOVE                             R7 R2
       18 GETTABLEKS                       R9 R0 K0 ["_draggerToolModel"]
       20 GETTABLEKS                       R8 R9 K3 ["_selectionInfo"]
       22 NAMECALL                         R8 R8 K6 ["getOriginalCFrameMap"]
       24 CALL                             R8 1 1
       25 MOVE                             R9 R1
       26 GETTABLEKS                       R12 R0 K0 ["_draggerToolModel"]
       28 GETTABLEKS                       R11 R12 K3 ["_selectionInfo"]
       30 NAMECALL                         R11 R11 K7 ["getBoundingBox"]
       32 CALL                             R11 1 1
       33 GETTABLEKS                       R10 R11 K8 ["Position"]
       35 GETTABLEKS                       R11 R0 K0 ["_draggerToolModel"]
       37 NAMECALL                         R11 R11 K9 ["getSelectionWrapper"]
       39 CALL                             R11 1 1
       40 NAMECALL                         R11 R11 K10 ["get"]
       42 CALL                             R11 1 1
       43 MOVE                             R12 R4
       44 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       46 GETTABLEKS                       R13 R14 K3 ["_selectionInfo"]
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
        0 GETIMPORT                        R2 K2 [table.create]
        2 LENGTH                           R4 R1
        3 ADDK                             R3 R4 K3 [1]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K5 [ipairs]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 SETTABLE                         R7 R2 R6
       11 FORGLOOP                         R3 2 [inext] ; [-2]
       13 MOVE                             R4 R2
       14 GETTABLEKS                       R5 R0 K6 ["_partMover"]
       16 NAMECALL                         R5 R5 K7 ["getIgnorePart"]
       18 CALL                             R5 1 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R3 K9 [table.insert]
       22 CALL                             R3 -1 0
       23 SETTABLEKS                       R2 R0 K10 ["_raycastFilter"]
       25 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       17 GETTABLEKS                       R3 R4 K5 ["_draggerContext"]
       19 NAMECALL                         R3 R3 K6 ["shouldJoinSurfaces"]
       21 CALL                             R3 1 1
       22 JUMPIFNOT                        R3 ; [+78]
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
       39 JUMP                             ; [+6]
       40 SUBRK                            R7 R11 K1 ["_lastAppliedTransform"]
       41 DIVK                             R6 R7 K9 [0.5]
       42 POWK                             R5 R6 K10 [4]
       43 MULK                             R4 R5 K9 [0.5]
       44 SUBRK                            R3 R11 K4 ["_draggerToolModel"]
       45 JUMP                             ; [0]
       46 GETTABLEKS                       R4 R0 K12 ["_animateFrom"]
       48 GETTABLEKS                       R5 R4 K13 ["baseCFrame"]
       50 GETTABLEKS                       R8 R0 K14 ["_lastDragTarget"]
       52 GETTABLEKS                       R7 R8 K13 ["baseCFrame"]
       54 MOVE                             R8 R3
       55 NAMECALL                         R5 R5 K15 ["Lerp"]
       57 CALL                             R5 3 1
       58 GETTABLEKS                       R6 R4 K16 ["offsetCFrame"]
       60 GETTABLEKS                       R9 R0 K14 ["_lastDragTarget"]
       62 GETTABLEKS                       R8 R9 K16 ["offsetCFrame"]
       64 MOVE                             R9 R3
       65 NAMECALL                         R6 R6 K15 ["Lerp"]
       67 CALL                             R6 3 1
       68 GETTABLEKS                       R7 R4 K17 ["tiltRotate"]
       70 GETTABLEKS                       R9 R0 K18 ["_tiltRotate"]
       72 MOVE                             R10 R3
       73 NAMECALL                         R7 R7 K15 ["Lerp"]
       75 CALL                             R7 3 1
       76 MUL                              R9 R5 R7
       77 MUL                              R8 R9 R6
       78 GETTABLEKS                       R10 R0 K4 ["_draggerToolModel"]
       80 GETTABLEKS                       R9 R10 K19 ["_selectionInfo"]
       82 NAMECALL                         R9 R9 K20 ["getLocalBoundingBox"]
       84 CALL                             R9 1 1
       85 NAMECALL                         R11 R9 K21 ["Inverse"]
       87 CALL                             R11 1 1
       88 MUL                              R10 R8 R11
       89 GETTABLEKS                       R11 R0 K0 ["_partMover"]
       91 MOVE                             R13 R10
       92 NAMECALL                         R11 R11 K2 ["transformTo"]
       94 CALL                             R11 2 0
       95 GETTABLEKS                       R11 R0 K3 ["_attachmentMover"]
       97 MOVE                             R13 R10
       98 NAMECALL                         R11 R11 K2 ["transformTo"]
      100 CALL                             R11 2 0
      101 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 DUPTABLE                         R3 K6 [{"tiltRotate", "baseCFrame", "offsetCFrame"}]
        3 GETTABLEKS                       R4 R0 K7 ["_tiltRotate"]
        5 SETTABLEKS                       R4 R3 K3 ["tiltRotate"]
        7 GETTABLEKS                       R5 R0 K8 ["_lastDragTarget"]
        9 GETTABLEKS                       R4 R5 K4 ["baseCFrame"]
       11 SETTABLEKS                       R4 R3 K4 ["baseCFrame"]
       13 GETTABLEKS                       R5 R0 K8 ["_lastDragTarget"]
       15 GETTABLEKS                       R4 R5 K5 ["offsetCFrame"]
       17 SETTABLEKS                       R4 R3 K5 ["offsetCFrame"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R0 K9 ["_animateFrom"]
       22 SETTABLEKS                       R1 R0 K7 ["_tiltRotate"]
       24 GETTABLEKS                       R2 R0 K10 ["_animationTask"]
       26 GETTABLEKS                       R5 R0 K11 ["_draggerToolModel"]
       28 GETTABLEKS                       R4 R5 K12 ["_draggerContext"]
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
       37 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R0 K1 ["_lastDragTarget"]
        4 NAMECALL                         R3 R1 K2 ["shouldShowTargetGrids"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+73]
        8 GETTABLEKS                       R5 R2 K3 ["softSnaps"]
       10 LENGTH                           R4 R5
       11 LOADN                            R5 0
       12 JUMPIFLT                         R5 R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 JUMPIFNOT                        R3 ; [+11]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["createElement"]
       20 GETUPVAL                         R5 1
       21 DUPTABLE                         R6 K7 [{"DragTarget", "DraggerContext"}]
       22 SETTABLEKS                       R2 R6 K5 ["DragTarget"]
       24 SETTABLEKS                       R1 R6 K6 ["DraggerContext"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 NAMECALL                         R5 R1 K8 ["shouldGridSnap"]
       30 CALL                             R5 1 1
       31 JUMPIFNOT                        R5 ; [+4]
       32 NAMECALL                         R4 R1 K9 ["getGridSize"]
       34 CALL                             R4 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R4
       37 GETTABLEKS                       R6 R0 K10 ["_draggerToolModel"]
       39 GETTABLEKS                       R5 R6 K11 ["_selectionInfo"]
       41 NAMECALL                         R5 R5 K12 ["getLocalBoundingBox"]
       43 CALL                             R5 1 3
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K4 ["createElement"]
       47 GETUPVAL                         R9 2
       48 DUPTABLE                         R10 K19 [{"DragTarget", "SourceSize", "Scale", "GridSize", "MajorStep", "Color", "PrimaryColor"}]
       49 SETTABLEKS                       R2 R10 K5 ["DragTarget"]
       51 SETTABLEKS                       R7 R10 K13 ["SourceSize"]
       53 GETTABLEKS                       R14 R2 K20 ["targetMatrix"]
       55 GETTABLEKS                       R13 R14 K21 ["Position"]
       57 NAMECALL                         R11 R1 K22 ["getHandleScale"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K14 ["Scale"]
       62 SETTABLEKS                       R4 R10 K15 ["GridSize"]
       64 NAMECALL                         R11 R1 K23 ["getMajorGridIncrement"]
       66 CALL                             R11 1 1
       67 SETTABLEKS                       R11 R10 K16 ["MajorStep"]
       69 NAMECALL                         R11 R1 K24 ["getGridColor"]
       71 CALL                             R11 1 1
       72 SETTABLEKS                       R11 R10 K17 ["Color"]
       74 NAMECALL                         R11 R1 K25 ["getChosenColor"]
       76 CALL                             R11 1 1
       77 SETTABLEKS                       R11 R10 K18 ["PrimaryColor"]
       79 CALL                             R8 2 -1
       80 RETURN                           R8 -1
       81 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R0 K1 ["_lastDragTarget"]
        4 NAMECALL                         R3 R1 K2 ["shouldGridSnap"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+132]
        8 GETTABLEKS                       R4 R2 K3 ["softSnaps"]
       10 LENGTH                           R3 R4
       11 JUMPIFNOTEQKN                    R3 K4 [0] ; [+128]
       13 GETTABLEKS                       R3 R2 K5 ["mainCFrame"]
       15 GETTABLEKS                       R7 R0 K6 ["_dragInfo"]
       17 GETTABLEKS                       R6 R7 K7 ["draggedPoint"]
       19 NAMECALL                         R4 R3 K8 ["PointToWorldSpace"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R5 R2 K9 ["targetMatrix"]
       24 GETTABLEKS                       R6 R5 K10 ["Position"]
       26 GETTABLEKS                       R7 R5 K11 ["YVector"]
       28 SUB                              R8 R4 R6
       29 MOVE                             R10 R7
       30 NAMECALL                         R8 R8 K12 ["Dot"]
       32 CALL                             R8 2 1
       33 MUL                              R10 R7 R8
       34 SUB                              R9 R4 R10
       35 MOVE                             R12 R4
       36 NAMECALL                         R10 R1 K13 ["getHandleScale"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R11 R12 K14 ["createFragment"]
       42 DUPTABLE                         R12 K17 [{"SnapFrom", "SnapTo"}]
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R13 R14 K18 ["createElement"]
       46 LOADK                            R14 K19 ["SphereHandleAdornment"]
       47 DUPTABLE                         R15 K27 [{"Radius", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Adornee", "ZIndex"}]
       48 MULK                             R16 R10 K28 [0.15]
       49 SETTABLEKS                       R16 R15 K20 ["Radius"]
       51 GETTABLEKS                       R17 R3 K29 ["Rotation"]
       53 ADD                              R16 R17 R4
       54 SETTABLEKS                       R16 R15 K21 ["CFrame"]
       56 NAMECALL                         R16 R1 K30 ["getChosenColor"]
       58 CALL                             R16 1 1
       59 SETTABLEKS                       R16 R15 K22 ["Color3"]
       61 LOADB                            R16 1
       62 SETTABLEKS                       R16 R15 K23 ["AlwaysOnTop"]
       64 GETIMPORT                        R16 K33 [Enum.AdornCullingMode.Never]
       66 SETTABLEKS                       R16 R15 K24 ["AdornCullingMode"]
       68 GETIMPORT                        R17 K35 [workspace]
       70 GETTABLEKS                       R16 R17 K36 ["Terrain"]
       72 SETTABLEKS                       R16 R15 K25 ["Adornee"]
       74 LOADN                            R16 0
       75 SETTABLEKS                       R16 R15 K26 ["ZIndex"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K15 ["SnapFrom"]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R13 R14 K18 ["createElement"]
       83 LOADK                            R14 K37 ["BoxHandleAdornment"]
       84 DUPTABLE                         R15 K39 [{"Size", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Adornee", "ZIndex"}]
       85 LOADK                            R18 K40 [0.05]
       86 MUL                              R17 R18 R10
       87 LOADK                            R20 K40 [0.05]
       88 MUL                              R19 R20 R10
       89 FASTCALL3                        VECTOR R17 R8 R19
       91 MOVE                             R18 R8
       92 GETIMPORT                        R16 K43 [Vector3.new]
       94 CALL                             R16 3 1
       95 SETTABLEKS                       R16 R15 K38 ["Size"]
       97 GETIMPORT                        R16 K45 [CFrame.fromMatrix]
       99 LOADK                            R20 K46 [0.5]
      100 MUL                              R19 R20 R7
      101 MUL                              R18 R19 R8
      102 ADD                              R17 R9 R18
      103 GETTABLEKS                       R21 R5 K47 ["ZVector"]
      105 NAMECALL                         R19 R7 K48 ["Cross"]
      107 CALL                             R19 2 1
      108 GETTABLEKS                       R18 R19 K49 ["Unit"]
      110 MOVE                             R19 R7
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K21 ["CFrame"]
      114 NAMECALL                         R16 R1 K30 ["getChosenColor"]
      116 CALL                             R16 1 1
      117 SETTABLEKS                       R16 R15 K22 ["Color3"]
      119 LOADB                            R16 1
      120 SETTABLEKS                       R16 R15 K23 ["AlwaysOnTop"]
      122 GETIMPORT                        R16 K33 [Enum.AdornCullingMode.Never]
      124 SETTABLEKS                       R16 R15 K24 ["AdornCullingMode"]
      126 GETIMPORT                        R17 K35 [workspace]
      128 GETTABLEKS                       R16 R17 K36 ["Terrain"]
      130 SETTABLEKS                       R16 R15 K25 ["Adornee"]
      132 LOADN                            R16 0
      133 SETTABLEKS                       R16 R15 K26 ["ZIndex"]
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R12 K16 ["SnapTo"]
      138 CALL                             R11 1 -1
      139 RETURN                           R11 -1
      140 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R1 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+19]
        8 GETTABLEKS                       R2 R0 K3 ["_lastDragTarget"]
       10 JUMPIFNOT                        R2 ; [+16]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["createFragment"]
       14 DUPTABLE                         R3 K7 [{"SnapConnection", "SnapTarget"}]
       15 NAMECALL                         R4 R0 K8 ["_renderSnapRelation"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K5 ["SnapConnection"]
       20 NAMECALL                         R4 R0 K9 ["_renderSnapTarget"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K6 ["SnapTarget"]
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["createFragment"]
        6 DUPTABLE                         R2 K3 [{"SurfaceJoints", "Snap"}]
        7 NAMECALL                         R3 R0 K4 ["_renderSurfaceJoints"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["SurfaceJoints"]
       12 NAMECALL                         R3 R0 K5 ["_renderSnap"]
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["Snap"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETTABLEKS                       R2 R0 K6 ["_draggerToolModel"]
       21 GETTABLEKS                       R1 R2 K7 ["_draggerContext"]
       23 NAMECALL                         R1 R1 K8 ["shouldJoinSurfaces"]
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+25]
       27 GETTABLEKS                       R1 R0 K9 ["_jointPairs"]
       29 JUMPIFNOT                        R1 ; [+22]
       30 GETTABLEKS                       R2 R0 K6 ["_draggerToolModel"]
       32 GETTABLEKS                       R1 R2 K10 ["_selectionInfo"]
       34 NAMECALL                         R1 R1 K11 ["getBoundingBox"]
       36 CALL                             R1 1 2
       37 MUL                              R3 R1 R2
       38 GETTABLEKS                       R4 R0 K9 ["_jointPairs"]
       40 GETTABLEKS                       R7 R0 K6 ["_draggerToolModel"]
       42 GETTABLEKS                       R6 R7 K7 ["_draggerContext"]
       44 MOVE                             R8 R3
       45 NAMECALL                         R6 R6 K12 ["getHandleScale"]
       47 CALL                             R6 2 -1
       48 NAMECALL                         R4 R4 K13 ["renderJoints"]
       50 CALL                             R4 -1 -1
       51 RETURN                           R4 -1
       52 RETURN                           R0 0

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
        0 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R3 K1 ["_draggerContext"]
        4 NAMECALL                         R2 R2 K2 ["areConstraintsEnabled"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADK                            R2 K3 [{0, 1, 0}]
       10 JUMPIFNOTEQ                      R1 R2 ; [+11]
       12 GETTABLEKS                       R2 R0 K4 ["_dragAnalytics"]
       14 GETTABLEKS                       R5 R0 K4 ["_dragAnalytics"]
       16 GETTABLEKS                       R4 R5 K6 ["dragRotates"]
       18 ADDK                             R3 R4 K5 [1]
       19 SETTABLEKS                       R3 R2 K6 ["dragRotates"]
       21 JUMP                             ; [+9]
       22 GETTABLEKS                       R2 R0 K4 ["_dragAnalytics"]
       24 GETTABLEKS                       R5 R0 K4 ["_dragAnalytics"]
       26 GETTABLEKS                       R4 R5 K7 ["dragTilts"]
       28 ADDK                             R3 R4 K5 [1]
       29 SETTABLEKS                       R3 R2 K7 ["dragTilts"]
       31 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
       33 GETTABLEKS                       R2 R3 K8 ["_selectionInfo"]
       35 NAMECALL                         R2 R2 K9 ["getLocalBoundingBox"]
       37 CALL                             R2 1 1
       38 LOADNIL                          R3
       39 GETTABLEKS                       R4 R0 K10 ["_lastDragTarget"]
       41 JUMPIFNOT                        R4 ; [+4]
       42 GETTABLEKS                       R4 R0 K10 ["_lastDragTarget"]
       44 GETTABLEKS                       R3 R4 K11 ["targetMatrix"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K12 ["updateTiltRotate"]
       49 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       51 GETTABLEKS                       R5 R6 K1 ["_draggerContext"]
       53 NAMECALL                         R5 R5 K13 ["getCameraCFrame"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       58 GETTABLEKS                       R6 R7 K1 ["_draggerContext"]
       60 NAMECALL                         R6 R6 K14 ["getMouseRay"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R0 K15 ["_raycastFilter"]
       65 MOVE                             R8 R2
       66 MOVE                             R9 R3
       67 GETTABLEKS                       R10 R0 K16 ["_tiltRotate"]
       69 MOVE                             R11 R1
       70 GETUPVAL                         R13 1
       71 CALL                             R13 0 1
       72 JUMPIFNOT                        R13 ; [+4]
       73 NAMECALL                         R12 R0 K17 ["_shouldAlignDraggedObjects"]
       75 CALL                             R12 1 1
       76 JUMP                             ; [+5]
       77 GETTABLEKS                       R12 R0 K0 ["_draggerToolModel"]
       79 NAMECALL                         R12 R12 K18 ["shouldAlignDraggedObjects"]
       81 CALL                             R12 1 1
       82 GETUPVAL                         R14 1
       83 CALL                             R14 0 1
       84 JUMPIFNOT                        R14 ; [+12]
       85 GETTABLEKS                       R14 R0 K1 ["_draggerContext"]
       87 NAMECALL                         R14 R14 K19 ["shouldGridSnap"]
       89 CALL                             R14 1 1
       90 JUMPIFNOT                        R14 ; [+6]
       91 GETTABLEKS                       R13 R0 K1 ["_draggerContext"]
       93 NAMECALL                         R13 R13 K20 ["getGridSize"]
       95 CALL                             R13 1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R13
       98 CALL                             R4 9 1
       99 GETUPVAL                         R5 1
      100 CALL                             R5 0 1
      101 JUMPIFNOT                        R5 ; [+11]
      102 GETTABLEKS                       R5 R0 K10 ["_lastDragTarget"]
      104 JUMPIFNOT                        R5 ; [+5]
      105 MOVE                             R7 R4
      106 NAMECALL                         R5 R0 K21 ["_beginAnimation"]
      108 CALL                             R5 2 0
      109 RETURN                           R0 0
      110 SETTABLEKS                       R4 R0 K16 ["_tiltRotate"]
      112 RETURN                           R0 0
      113 SETTABLEKS                       R4 R0 K16 ["_tiltRotate"]
      115 RETURN                           R0 0

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
        0 GETTABLEKS                       R3 R0 K0 ["targetMatrix"]
        2 GETTABLEKS                       R2 R3 K1 ["YVector"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_draggerContext"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["snapToGridSize"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_19:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R2 R0 K0 ["_lastDragTarget"]
        6 GETTABLEKS                       R1 R2 K1 ["targetMatrix"]
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+142]
       11 GETTABLEKS                       R3 R0 K2 ["_draggerToolModel"]
       13 GETTABLEKS                       R2 R3 K3 ["_draggerContext"]
       15 NAMECALL                         R2 R2 K4 ["getMouseRay"]
       17 CALL                             R2 1 1
       18 NAMECALL                         R3 R0 K5 ["_shouldAlignDraggedObjects"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K2 ["_draggerToolModel"]
       23 GETTABLEKS                       R4 R5 K6 ["_selectionInfo"]
       25 NAMECALL                         R4 R4 K7 ["getLocalBoundingBox"]
       27 CALL                             R4 1 3
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K8 ["getDragTarget"]
       31 GETTABLEKS                       R8 R0 K9 ["_raycastFilter"]
       33 MOVE                             R9 R4
       34 MOVE                             R10 R5
       35 MOVE                             R11 R6
       36 GETTABLEKS                       R13 R0 K10 ["_dragInfo"]
       38 GETTABLEKS                       R12 R13 K11 ["draggedPoint"]
       40 MOVE                             R13 R2
       41 GETTABLEKS                       R15 R0 K3 ["_draggerContext"]
       43 NAMECALL                         R15 R15 K12 ["shouldGridSnap"]
       45 CALL                             R15 1 1
       46 JUMPIFNOT                        R15 ; [+6]
       47 GETTABLEKS                       R14 R0 K3 ["_draggerContext"]
       49 NAMECALL                         R14 R14 K13 ["getGridSize"]
       51 CALL                             R14 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R14
       54 GETTABLEKS                       R15 R0 K14 ["_tiltRotate"]
       56 MOVE                             R16 R1
       57 MOVE                             R17 R3
       58 GETTABLEKS                       R20 R0 K10 ["_dragInfo"]
       60 GETTABLEKS                       R19 R20 K15 ["clickedMetadata"]
       62 GETTABLEKS                       R18 R19 K16 ["IsPivot"]
       64 GETTABLEKS                       R19 R0 K3 ["_draggerContext"]
       66 NAMECALL                         R19 R19 K17 ["getSoftSnapMarginFactor"]
       68 CALL                             R19 1 1
       69 GETTABLEKS                       R20 R0 K3 ["_draggerContext"]
       71 NAMECALL                         R20 R20 K18 ["shouldPartSnap"]
       73 CALL                             R20 1 -1
       74 CALL                             R7 -1 1
       75 GETUPVAL                         R8 2
       76 CALL                             R8 0 1
       77 JUMPIFNOT                        R8 ; [+17]
       78 JUMPIFNOT                        R7 ; [+16]
       79 JUMPIF                           R3 ; [+15]
       80 GETTABLEKS                       R10 R0 K10 ["_dragInfo"]
       82 GETTABLEKS                       R9 R10 K15 ["clickedMetadata"]
       84 GETTABLEKS                       R8 R9 K16 ["IsPivot"]
       86 JUMPIF                           R8 ; [+8]
       87 GETUPVAL                         R8 3
       88 MOVE                             R9 R7
       89 GETTABLEKS                       R11 R0 K2 ["_draggerToolModel"]
       91 GETTABLEKS                       R10 R11 K6 ["_selectionInfo"]
       93 CALL                             R8 2 1
       94 MOVE                             R7 R8
       95 MOVE                             R10 R7
       96 NAMECALL                         R8 R0 K19 ["_analyticsRecordFreeformDragUpdate"]
       98 CALL                             R8 2 0
       99 JUMPIFNOT                        R7 ; [+138]
      100 SETTABLEKS                       R7 R0 K0 ["_lastDragTarget"]
      102 GETTABLEKS                       R8 R7 K20 ["mainCFrame"]
      104 GETTABLEKS                       R10 R0 K2 ["_draggerToolModel"]
      106 GETTABLEKS                       R9 R10 K6 ["_selectionInfo"]
      108 NAMECALL                         R9 R9 K7 ["getLocalBoundingBox"]
      110 CALL                             R9 1 1
      111 NAMECALL                         R11 R9 K21 ["Inverse"]
      113 CALL                             R11 1 1
      114 MUL                              R10 R8 R11
      115 GETTABLEKS                       R11 R0 K22 ["_animationTask"]
      117 NAMECALL                         R11 R11 K23 ["inProgress"]
      119 CALL                             R11 1 1
      120 JUMPIFNOT                        R11 ; [+1]
      121 JUMP                             ; [+28]
      122 GETTABLEKS                       R11 R0 K24 ["_partMover"]
      124 MOVE                             R13 R10
      125 NAMECALL                         R11 R11 K25 ["transformTo"]
      127 CALL                             R11 2 0
      128 GETTABLEKS                       R11 R0 K26 ["_attachmentMover"]
      130 MOVE                             R13 R10
      131 NAMECALL                         R11 R11 K25 ["transformTo"]
      133 CALL                             R11 2 0
      134 GETTABLEKS                       R12 R0 K2 ["_draggerToolModel"]
      136 GETTABLEKS                       R11 R12 K3 ["_draggerContext"]
      138 NAMECALL                         R11 R11 K27 ["shouldJoinSurfaces"]
      140 CALL                             R11 1 1
      141 JUMPIFNOT                        R11 ; [+8]
      142 GETTABLEKS                       R11 R0 K24 ["_partMover"]
      144 MOVE                             R13 R10
      145 NAMECALL                         R11 R11 K28 ["computeJointPairs"]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R0 K29 ["_jointPairs"]
      150 SETTABLEKS                       R10 R0 K30 ["_lastAppliedTransform"]
      152 RETURN                           R0 0
      153 NEWCLOSURE                       R2 P0
      154 CAPTURE                          VAL R0
      155 GETTABLEKS                       R4 R0 K2 ["_draggerToolModel"]
      157 GETTABLEKS                       R3 R4 K6 ["_selectionInfo"]
      159 NAMECALL                         R3 R3 K7 ["getLocalBoundingBox"]
      161 CALL                             R3 1 3
      162 GETUPVAL                         R7 1
      163 GETTABLEKS                       R6 R7 K8 ["getDragTarget"]
      165 GETTABLEKS                       R8 R0 K2 ["_draggerToolModel"]
      167 GETTABLEKS                       R7 R8 K3 ["_draggerContext"]
      169 NAMECALL                         R7 R7 K4 ["getMouseRay"]
      171 CALL                             R7 1 1
      172 MOVE                             R8 R2
      173 GETTABLEKS                       R10 R0 K10 ["_dragInfo"]
      175 GETTABLEKS                       R9 R10 K31 ["clickPoint"]
      177 GETTABLEKS                       R10 R0 K9 ["_raycastFilter"]
      179 MOVE                             R11 R3
      180 GETTABLEKS                       R13 R0 K10 ["_dragInfo"]
      182 GETTABLEKS                       R12 R13 K32 ["basisPoint"]
      184 MOVE                             R13 R5
      185 MOVE                             R14 R4
      186 GETTABLEKS                       R15 R0 K14 ["_tiltRotate"]
      188 MOVE                             R16 R1
      189 GETTABLEKS                       R17 R0 K2 ["_draggerToolModel"]
      191 NAMECALL                         R17 R17 K33 ["shouldAlignDraggedObjects"]
      193 CALL                             R17 1 -1
      194 CALL                             R6 -1 1
      195 MOVE                             R9 R6
      196 NAMECALL                         R7 R0 K19 ["_analyticsRecordFreeformDragUpdate"]
      198 CALL                             R7 2 0
      199 JUMPIFNOT                        R6 ; [+38]
      200 SETTABLEKS                       R6 R0 K0 ["_lastDragTarget"]
      202 GETTABLEKS                       R7 R6 K20 ["mainCFrame"]
      204 NAMECALL                         R9 R3 K21 ["Inverse"]
      206 CALL                             R9 1 1
      207 MUL                              R8 R7 R9
      208 GETTABLEKS                       R9 R0 K24 ["_partMover"]
      210 MOVE                             R11 R8
      211 NAMECALL                         R9 R9 K25 ["transformTo"]
      213 CALL                             R9 2 0
      214 GETTABLEKS                       R9 R0 K26 ["_attachmentMover"]
      216 MOVE                             R11 R8
      217 NAMECALL                         R9 R9 K25 ["transformTo"]
      219 CALL                             R9 2 0
      220 SETTABLEKS                       R8 R0 K30 ["_lastAppliedTransform"]
      222 GETTABLEKS                       R10 R0 K2 ["_draggerToolModel"]
      224 GETTABLEKS                       R9 R10 K3 ["_draggerContext"]
      226 NAMECALL                         R9 R9 K27 ["shouldJoinSurfaces"]
      228 CALL                             R9 1 1
      229 JUMPIFNOT                        R9 ; [+8]
      230 GETTABLEKS                       R9 R0 K24 ["_partMover"]
      232 MOVE                             R11 R8
      233 NAMECALL                         R9 R9 K28 ["computeJointPairs"]
      235 CALL                             R9 2 1
      236 SETTABLEKS                       R9 R0 K29 ["_jointPairs"]
      238 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_selectionInfo"]
        4 NAMECALL                         R1 R1 K2 ["getLocalBoundingBox"]
        6 CALL                             R1 1 3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+35]
       11 GETTABLEKS                       R6 R0 K3 ["_dragInfo"]
       13 GETTABLEKS                       R5 R6 K4 ["draggedPoint"]
       15 JUMPIF                           R5 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["getCameraPlaneDragTarget"]
       20 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       22 GETTABLEKS                       R6 R7 K6 ["_draggerContext"]
       24 NAMECALL                         R6 R6 K7 ["getMouseRay"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R9 R0 K0 ["_draggerToolModel"]
       29 GETTABLEKS                       R8 R9 K6 ["_draggerContext"]
       31 NAMECALL                         R8 R8 K8 ["getCameraCFrame"]
       33 CALL                             R8 1 1
       34 GETTABLEKS                       R7 R8 K9 ["LookVector"]
       36 GETTABLEKS                       R11 R0 K3 ["_dragInfo"]
       38 GETTABLEKS                       R10 R11 K4 ["draggedPoint"]
       40 NAMECALL                         R8 R1 K10 ["pointToWorldSpace"]
       42 CALL                             R8 2 -1
       43 CALL                             R5 -1 1
       44 MOVE                             R4 R5
       45 JUMP                             ; [+34]
       46 GETTABLEKS                       R6 R0 K3 ["_dragInfo"]
       48 GETTABLEKS                       R5 R6 K11 ["clickPoint"]
       50 JUMPIF                           R5 ; [+1]
       51 RETURN                           R0 0
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K5 ["getCameraPlaneDragTarget"]
       55 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       57 GETTABLEKS                       R6 R7 K6 ["_draggerContext"]
       59 NAMECALL                         R6 R6 K7 ["getMouseRay"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R9 R0 K0 ["_draggerToolModel"]
       64 GETTABLEKS                       R8 R9 K6 ["_draggerContext"]
       66 NAMECALL                         R8 R8 K8 ["getCameraCFrame"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R7 R8 K9 ["LookVector"]
       71 GETTABLEKS                       R11 R0 K3 ["_dragInfo"]
       73 GETTABLEKS                       R10 R11 K11 ["clickPoint"]
       75 NAMECALL                         R8 R1 K10 ["pointToWorldSpace"]
       77 CALL                             R8 2 -1
       78 CALL                             R5 -1 1
       79 MOVE                             R4 R5
       80 MOVE                             R7 R4
       81 NAMECALL                         R5 R0 K12 ["_analyticsRecordFreeformDragUpdate"]
       83 CALL                             R5 2 0
       84 JUMPIFNOT                        R4 ; [+29]
       85 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       87 GETTABLEKS                       R6 R7 K6 ["_draggerContext"]
       89 NAMECALL                         R6 R6 K13 ["areCollisionsEnabled"]
       91 CALL                             R6 1 1
       92 JUMPIFNOT                        R6 ; [+3]
       93 GETIMPORT                        R5 K17 [Enum.IKCollisionsMode.IncludeContactedMechanisms]
       95 JUMPIF                           R5 ; [+2]
       96 GETIMPORT                        R5 K19 [Enum.IKCollisionsMode.NoCollisions]
       98 GETTABLEKS                       R6 R0 K20 ["_partMover"]
      100 GETTABLEKS                       R8 R4 K21 ["mainCFrame"]
      102 MOVE                             R9 R5
      103 NAMECALL                         R6 R6 K22 ["moveToWithIk"]
      105 CALL                             R6 3 1
      106 GETTABLEKS                       R7 R0 K23 ["_attachmentMover"]
      108 MOVE                             R9 R6
      109 NAMECALL                         R7 R7 K24 ["transformTo"]
      111 CALL                             R7 2 0
      112 SETTABLEKS                       R6 R0 K25 ["_lastAppliedTransform"]
      114 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
        4 NAMECALL                         R1 R1 K2 ["areConstraintsEnabled"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R1 R0 K3 ["_updatePhysical"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 NAMECALL                         R1 R0 K4 ["_updateGeometric"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Position"]
        4 SETTABLEKS                       R1 R0 K1 ["Parent"]
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_animationTask"]
        5 NAMECALL                         R1 R1 K1 ["commit"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R2 R0 K2 ["_dragInfo"]
       10 GETTABLEKS                       R1 R2 K3 ["attachmentBeingDragged"]
       12 JUMPIFNOT                        R1 ; [+51]
       13 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       15 GETTABLEKS                       R2 R3 K5 ["_draggerContext"]
       17 NAMECALL                         R2 R2 K6 ["getMouseRay"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [RaycastParams.new]
       22 CALL                             R3 0 1
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K10 ["BruteForceAllSlow"]
       26 GETUPVAL                         R4 1
       27 SETTABLEKS                       R4 R3 K11 ["CollisionGroup"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R6 R2 K12 ["Origin"]
       32 GETTABLEKS                       R7 R2 K13 ["Direction"]
       34 MOVE                             R8 R3
       35 NAMECALL                         R4 R4 K14 ["Raycast"]
       37 CALL                             R4 4 1
       38 JUMPIFNOT                        R4 ; [+17]
       39 GETTABLEKS                       R5 R1 K15 ["WorldCFrame"]
       41 GETTABLEKS                       R6 R1 K16 ["Parent"]
       43 GETTABLEKS                       R7 R4 K17 ["Instance"]
       45 JUMPIFEQ                         R6 R7 ; [+18]
       47 GETIMPORT                        R6 K19 [pcall]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CALL                             R6 1 0
       53 SETTABLEKS                       R5 R1 K15 ["WorldCFrame"]
       55 JUMP                             ; [+8]
       56 GETTABLEKS                       R5 R0 K20 ["_attachmentMover"]
       58 GETIMPORT                        R7 K22 [CFrame.new]
       60 CALL                             R7 0 -1
       61 NAMECALL                         R5 R5 K23 ["transformTo"]
       63 CALL                             R5 -1 0
       64 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       66 GETTABLEKS                       R2 R3 K5 ["_draggerContext"]
       68 NAMECALL                         R2 R2 K24 ["shouldJoinSurfaces"]
       70 CALL                             R2 1 1
       71 JUMPIFNOT                        R2 ; [+8]
       72 GETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       74 JUMPIFNOT                        R2 ; [+5]
       75 GETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       77 NAMECALL                         R2 R2 K26 ["createJoints"]
       79 CALL                             R2 1 0
       80 LOADNIL                          R2
       81 SETTABLEKS                       R2 R0 K25 ["_jointPairs"]
       83 GETTABLEKS                       R2 R0 K27 ["_partMover"]
       85 NAMECALL                         R2 R2 K1 ["commit"]
       87 CALL                             R2 1 0
       88 GETTABLEKS                       R2 R0 K20 ["_attachmentMover"]
       90 NAMECALL                         R2 R2 K1 ["commit"]
       92 CALL                             R2 1 0
       93 NAMECALL                         R2 R0 K28 ["_analyticsSendFreeformDragged"]
       95 CALL                             R2 1 0
       96 GETTABLEKS                       R2 R0 K5 ["_draggerContext"]
       98 NAMECALL                         R2 R2 K29 ["shouldUseLocalSpace"]
      100 CALL                             R2 1 1
      101 JUMPIFNOT                        R2 ; [+10]
      102 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
      104 GETTABLEKS                       R2 R3 K30 ["_selectionInfo"]
      106 GETTABLEKS                       R4 R0 K31 ["_lastAppliedTransform"]
      108 NAMECALL                         R2 R2 K32 ["getTransformedCopy"]
      110 CALL                             R2 2 -1
      111 RETURN                           R2 -1
      112 GETTABLEKS                       R2 R0 K31 ["_lastAppliedTransform"]
      114 NAMECALL                         R2 R2 K33 ["ToOrientation"]
      116 CALL                             R2 1 3
      117 FASTCALL1                        MATH_ABS R2 ; [+3]
      118 MOVE                             R6 R2
      119 GETIMPORT                        R5 K36 [math.abs]
      121 CALL                             R5 1 1
      122 LOADK                            R6 K37 [1E-05]
      123 JUMPIFLT                         R6 R5 ; [+17]
      125 FASTCALL1                        MATH_ABS R3 ; [+3]
      126 MOVE                             R6 R3
      127 GETIMPORT                        R5 K36 [math.abs]
      129 CALL                             R5 1 1
      130 LOADK                            R6 K37 [1E-05]
      131 JUMPIFLT                         R6 R5 ; [+9]
      133 FASTCALL1                        MATH_ABS R4 ; [+3]
      134 MOVE                             R6 R4
      135 GETIMPORT                        R5 K36 [math.abs]
      137 CALL                             R5 1 1
      138 LOADK                            R6 K37 [1E-05]
      139 JUMPIFNOTLT                      R6 R5 ; [+3]
      141 LOADNIL                          R5
      142 RETURN                           R5 1
      143 GETTABLEKS                       R6 R0 K4 ["_draggerToolModel"]
      145 GETTABLEKS                       R5 R6 K30 ["_selectionInfo"]
      147 GETTABLEKS                       R7 R0 K31 ["_lastAppliedTransform"]
      149 NAMECALL                         R5 R5 K32 ["getTransformedCopy"]
      151 CALL                             R5 2 -1
      152 RETURN                           R5 -1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R3 K1 ["_selectionInfo"]
        4 NAMECALL                         R2 R2 K2 ["getObjectsToTransform"]
        6 CALL                             R2 1 2
        7 DUPTABLE                         R4 K8 [{"dragTilts", "dragRotates", "partCount", "attachmentCount", "timeToStartDrag"}]
        8 LOADN                            R5 0
        9 SETTABLEKS                       R5 R4 K3 ["dragTilts"]
       11 LOADN                            R5 0
       12 SETTABLEKS                       R5 R4 K4 ["dragRotates"]
       14 LENGTH                           R5 R2
       15 SETTABLEKS                       R5 R4 K5 ["partCount"]
       17 LENGTH                           R5 R3
       18 SETTABLEKS                       R5 R4 K6 ["attachmentCount"]
       20 SETTABLEKS                       R1 R4 K7 ["timeToStartDrag"]
       22 SETTABLEKS                       R4 R0 K9 ["_dragAnalytics"]
       24 LOADNIL                          R4
       25 SETTABLEKS                       R4 R0 K10 ["_dragStartLocation"]
       27 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOT                        R1 ; [+55]
        1 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
        3 GETTABLEKS                       R3 R1 K1 ["dragTargetType"]
        5 SETTABLEKS                       R3 R2 K1 ["dragTargetType"]
        7 GETTABLEKS                       R2 R0 K2 ["_dragStartLocation"]
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       12 GETTABLEKS                       R6 R1 K3 ["mainCFrame"]
       14 GETTABLEKS                       R5 R6 K4 ["Position"]
       16 GETTABLEKS                       R6 R0 K2 ["_dragStartLocation"]
       18 SUB                              R4 R5 R6
       19 GETTABLEKS                       R3 R4 K5 ["Magnitude"]
       21 SETTABLEKS                       R3 R2 K6 ["dragDistance"]
       23 JUMP                             ; [+11]
       24 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       26 LOADN                            R3 0
       27 SETTABLEKS                       R3 R2 K6 ["dragDistance"]
       29 GETTABLEKS                       R3 R1 K3 ["mainCFrame"]
       31 GETTABLEKS                       R2 R3 K4 ["Position"]
       33 SETTABLEKS                       R2 R0 K2 ["_dragStartLocation"]
       35 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       37 GETTABLEKS                       R7 R0 K7 ["_draggerToolModel"]
       39 GETTABLEKS                       R6 R7 K8 ["_draggerContext"]
       41 NAMECALL                         R6 R6 K9 ["getCameraCFrame"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R5 R6 K4 ["Position"]
       46 GETTABLEKS                       R7 R1 K3 ["mainCFrame"]
       48 GETTABLEKS                       R6 R7 K4 ["Position"]
       50 SUB                              R4 R5 R6
       51 GETTABLEKS                       R3 R4 K5 ["Magnitude"]
       53 SETTABLEKS                       R3 R2 K10 ["distanceToCamera"]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R2 R0 K0 ["_dragAnalytics"]
       58 LOADK                            R3 K11 ["Failed"]
       59 SETTABLEKS                       R3 R2 K1 ["dragTargetType"]
       61 RETURN                           R0 0

PROTO_26:
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
       63 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       65 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
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
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K7 ["DraggerFramework"]
       15 GETIMPORT                        R4 K9 [require]
       17 GETTABLEKS                       R5 R2 K10 ["Roact"]
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K9 [require]
       22 GETTABLEKS                       R7 R3 K11 ["Utility"]
       24 GETTABLEKS                       R6 R7 K12 ["DragHelper"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K9 [require]
       29 GETTABLEKS                       R8 R3 K11 ["Utility"]
       31 GETTABLEKS                       R7 R8 K13 ["PartMover"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K9 [require]
       36 GETTABLEKS                       R9 R3 K11 ["Utility"]
       38 GETTABLEKS                       R8 R9 K14 ["AttachmentMover"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K9 [require]
       43 GETTABLEKS                       R10 R3 K15 ["Components"]
       45 GETTABLEKS                       R9 R10 K16 ["TargetGridView"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K9 [require]
       50 GETTABLEKS                       R11 R3 K15 ["Components"]
       52 GETTABLEKS                       R10 R11 K17 ["TargetSoftSnapView"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R12 R3 K11 ["Utility"]
       59 GETTABLEKS                       R11 R12 K18 ["AnimationTask"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K9 [require]
       64 GETTABLEKS                       R13 R3 K11 ["Utility"]
       66 GETTABLEKS                       R12 R13 K19 ["Analytics"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K9 [require]
       71 GETTABLEKS                       R14 R3 K20 ["Flags"]
       73 GETTABLEKS                       R13 R14 K21 ["getFFlagDraggerImprovements"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K9 [require]
       78 GETTABLEKS                       R15 R3 K20 ["Flags"]
       80 GETTABLEKS                       R14 R15 K22 ["getFFlagDraggerBetterAlignOrientationFalse"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K9 [require]
       85 GETTABLEKS                       R16 R3 K11 ["Utility"]
       87 GETTABLEKS                       R15 R16 K23 ["CursorGroupName"]
       89 CALL                             R14 1 1
       90 DUPTABLE                         R15 K29 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       91 LOADK                            R16 K30 ["SBT_DraggerFreeformDragCompleted"]
       92 SETTABLEKS                       R16 R15 K24 ["eventName"]
       94 NEWTABLE                         R16 0 3
       96 LOADN                            R17 232
       97 LOADN                            R18 10
       98 LOADN                            R19 14
       99 SETLIST                          R16 R17 3 [1]
      101 SETTABLEKS                       R16 R15 K25 ["lastUpdated"]
      103 LOADK                            R16 K31 ["The user successfully dragged the selection via freeform drag."]
      104 SETTABLEKS                       R16 R15 K26 ["description"]
      106 LOADK                            R16 K32 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
      107 SETTABLEKS                       R16 R15 K27 ["links"]
      109 NEWTABLE                         R16 0 1
      111 LOADK                            R17 K33 ["RobloxTelemetryCounter"]
      112 SETLIST                          R16 R17 1 [1]
      114 SETTABLEKS                       R16 R15 K28 ["backends"]
      116 NEWTABLE                         R16 32 0
      118 SETTABLEKS                       R16 R16 K34 ["__index"]
      120 DUPCLOSURE                       R17 K35 [PROTO_0]
      121 DUPCLOSURE                       R18 K36 [PROTO_2]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R10
      127 SETTABLEKS                       R18 R16 K37 ["new"]
      129 DUPCLOSURE                       R18 K38 [PROTO_3]
      130 SETTABLEKS                       R18 R16 K39 ["_init"]
      132 DUPCLOSURE                       R18 K40 [PROTO_4]
      133 SETTABLEKS                       R18 R16 K41 ["_initMovers"]
      135 DUPCLOSURE                       R18 K42 [PROTO_5]
      136 SETTABLEKS                       R18 R16 K43 ["_initIgnoreList"]
      138 DUPCLOSURE                       R18 K44 [PROTO_6]
      139 SETTABLEKS                       R18 R16 K45 ["_animationCallback"]
      141 DUPCLOSURE                       R18 K46 [PROTO_7]
      142 SETTABLEKS                       R18 R16 K47 ["_beginAnimation"]
      144 DUPCLOSURE                       R18 K48 [PROTO_8]
      145 SETTABLEKS                       R18 R16 K49 ["canHoldOrientation"]
      147 DUPCLOSURE                       R18 K50 [PROTO_9]
      148 SETTABLEKS                       R18 R16 K51 ["_renderSurfaceJoints"]
      150 DUPCLOSURE                       R18 K52 [PROTO_10]
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R8
      154 SETTABLEKS                       R18 R16 K53 ["_renderSnapTarget"]
      156 DUPCLOSURE                       R18 K54 [PROTO_11]
      157 CAPTURE                          VAL R4
      158 SETTABLEKS                       R18 R16 K55 ["_renderSnapRelation"]
      160 DUPCLOSURE                       R18 K56 [PROTO_12]
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R18 R16 K57 ["_renderSnap"]
      164 DUPCLOSURE                       R18 K58 [PROTO_13]
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R4
      167 SETTABLEKS                       R18 R16 K59 ["render"]
      169 DUPCLOSURE                       R18 K60 [PROTO_14]
      170 SETTABLEKS                       R18 R16 K61 ["_shouldAlignDraggedObjects"]
      172 DUPCLOSURE                       R18 K62 [PROTO_15]
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R12
      175 SETTABLEKS                       R18 R16 K63 ["rotate"]
      177 DUPCLOSURE                       R18 K64 [PROTO_16]
      178 DUPCLOSURE                       R19 K65 [PROTO_17]
      179 CAPTURE                          VAL R18
      180 DUPCLOSURE                       R20 K66 [PROTO_19]
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R19
      185 SETTABLEKS                       R20 R16 K67 ["_updateGeometric"]
      187 DUPCLOSURE                       R20 K68 [PROTO_20]
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R5
      190 SETTABLEKS                       R20 R16 K69 ["_updatePhysical"]
      192 DUPCLOSURE                       R20 K70 [PROTO_21]
      193 SETTABLEKS                       R20 R16 K71 ["update"]
      195 DUPCLOSURE                       R20 K72 [PROTO_23]
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R20 R16 K73 ["destroy"]
      201 DUPCLOSURE                       R20 K74 [PROTO_24]
      202 SETTABLEKS                       R20 R16 K75 ["_analyticsRecordFreeformDragBegin"]
      204 DUPCLOSURE                       R20 K76 [PROTO_25]
      205 SETTABLEKS                       R20 R16 K77 ["_analyticsRecordFreeformDragUpdate"]
      207 DUPCLOSURE                       R20 K78 [PROTO_26]
      208 CAPTURE                          VAL R15
      209 SETTABLEKS                       R20 R16 K79 ["_analyticsSendFreeformDragged"]
      211 RETURN                           R16 1
