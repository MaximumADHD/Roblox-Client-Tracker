PROTO_0:
        0 DUPTABLE                         R3 K4 [{"_draggerContext", "_ikTransformFunction", "_partMover", "_attachmentMover"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_ikTransformFunction"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K5 ["new"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K2 ["_partMover"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K5 ["new"]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K3 ["_attachmentMover"]
       17 GETUPVAL                         R4 2
       18 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       20 GETIMPORT                        R2 K7 [setmetatable]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R3 R2 K0 ["getObjectsToTransform"]
        2 CALL                             R3 1 3
        3 SETTABLEKS                       R2 R0 K1 ["_initialSelectionInfo"]
        5 GETIMPORT                        R6 K4 [CFrame.new]
        7 CALL                             R6 0 1
        8 SETTABLEKS                       R6 R0 K5 ["_lastGoodGeometricTransform"]
       10 GETIMPORT                        R6 K4 [CFrame.new]
       12 CALL                             R6 0 1
       13 SETTABLEKS                       R6 R0 K6 ["_lastAppliedTransform"]
       15 LENGTH                           R7 R3
       16 LOADN                            R8 0
       17 JUMPIFLT                         R8 R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 SETTABLEKS                       R6 R0 K7 ["_hasPartsToMove"]
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 NAMECALL                         R8 R2 K8 ["getBoundingBox"]
       27 CALL                             R8 1 3
       28 SETTABLEKS                       R10 R0 K9 ["_boundingBoxSize"]
       30 MOVE                             R6 R8
       31 MOVE                             R7 R9
       32 GETIMPORT                        R9 K4 [CFrame.new]
       34 MOVE                             R10 R7
       35 CALL                             R9 1 1
       36 MUL                              R8 R6 R9
       37 SETTABLEKS                       R8 R0 K10 ["_centerPoint"]
       39 NAMECALL                         R9 R0 K11 ["_shouldSolveConstraints"]
       41 CALL                             R9 1 1
       42 NOT                              R8 R9
       43 GETTABLEKS                       R9 R0 K12 ["_partMover"]
       45 MOVE                             R11 R3
       46 NAMECALL                         R12 R2 K13 ["getOriginalCFrameMap"]
       48 CALL                             R12 1 1
       49 MOVE                             R13 R8
       50 GETTABLEKS                       R15 R0 K10 ["_centerPoint"]
       52 GETTABLEKS                       R14 R15 K14 ["Position"]
       54 MOVE                             R15 R1
       55 MOVE                             R16 R5
       56 NAMECALL                         R17 R2 K15 ["getRootMapping"]
       58 CALL                             R17 1 -1
       59 NAMECALL                         R9 R9 K16 ["setDragged"]
       61 CALL                             R9 -1 0
       62 GETTABLEKS                       R9 R0 K17 ["_attachmentMover"]
       64 MOVE                             R11 R4
       65 NAMECALL                         R9 R9 K16 ["setDragged"]
       67 CALL                             R9 2 0
       68 GETTABLEKS                       R9 R0 K18 ["_draggerContext"]
       70 NAMECALL                         R9 R9 K19 ["areCollisionsEnabled"]
       72 CALL                             R9 1 1
       73 JUMPIF                           R9 ; [+7]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K3 ["new"]
       77 MOVE                             R10 R3
       78 CALL                             R9 1 1
       79 SETTABLEKS                       R9 R0 K20 ["_temporaryTransparency"]
       81 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["areCollisionsEnabled"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 NEWTABLE                         R3 0 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R0 K2 ["_initialSelectionInfo"]
       11 NAMECALL                         R3 R3 K3 ["getBoundingBox"]
       13 CALL                             R3 1 3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 JUMPIFNOT                        R2 ; [+3]
       17 MUL                              R6 R3 R2
       18 LOADK                            R7 K4 [{0.05, 0.05, 0.05}]
       19 JUMP                             ; [+13]
       20 MOVE                             R6 R3
       21 MOVE                             R10 R1
       22 NAMECALL                         R8 R3 K5 ["VectorToObjectSpace"]
       24 CALL                             R8 2 1
       25 LOADK                            R10 K6 [{0.2, 0.2, 0.2}]
       26 ADD                              R9 R5 R10
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K7 ["complimentDirection"]
       30 MOVE                             R11 R8
       31 CALL                             R10 1 1
       32 MUL                              R7 R9 R10
       33 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
       35 NAMECALL                         R8 R8 K8 ["getMaxSoftSnaps"]
       37 CALL                             R8 1 1
       38 NEWTABLE                         R9 0 2
       40 LOADN                            R10 255
       41 LOADN                            R11 1
       42 SETLIST                          R9 R10 2 [1]
       44 GETUPVAL                         R10 1
       45 MOVE                             R11 R6
       46 MOVE                             R12 R7
       47 MOVE                             R13 R1
       48 GETTABLEKS                       R14 R0 K2 ["_initialSelectionInfo"]
       50 NAMECALL                         R14 R14 K9 ["getObjectsToTransform"]
       52 CALL                             R14 1 1
       53 MOVE                             R15 R9
       54 MOVE                             R16 R9
       55 MOVE                             R17 R8
       56 CALL                             R10 7 -1
       57 RETURN                           R10 -1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["_shouldSolveConstraints"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+5]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["_transformInverseKinematics"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R0 K2 ["_transformGeometric"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["_pivotSnapTarget"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K1 ["_pivotSnapTo"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["_pivotSnapFrom"]
       12 GETTABLEKS                       R1 R0 K3 ["_draggerContext"]
       14 NAMECALL                         R1 R1 K4 ["shouldJoinSurfaces"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       23 NAMECALL                         R1 R1 K6 ["createJoints"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       29 GETTABLEKS                       R1 R0 K7 ["_partMover"]
       31 NAMECALL                         R1 R1 K8 ["commit"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K9 ["_attachmentMover"]
       36 NAMECALL                         R1 R1 K8 ["commit"]
       38 CALL                             R1 1 0
       39 GETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       41 JUMPIFNOT                        R1 ; [+8]
       42 GETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       44 NAMECALL                         R1 R1 K11 ["destroy"]
       46 CALL                             R1 1 0
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       50 GETTABLEKS                       R1 R0 K12 ["_initialSelectionInfo"]
       52 GETTABLEKS                       R3 R0 K13 ["_lastAppliedTransform"]
       54 NAMECALL                         R1 R1 K14 ["getTransformedCopy"]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_pivotSnapFrom"]
        3 GETTABLEKS                       R3 R4 K1 ["Position"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["_pivotSnapTo"]
        8 GETTABLEKS                       R4 R5 K1 ["Position"]
       10 NAMECALL                         R1 R0 K3 ["AddLine"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_pivotSnapTo"]
        3 GETTABLEKS                       R3 R4 K1 ["Position"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K2 ["_pivotSnapTarget"]
        8 GETTABLEKS                       R4 R5 K1 ["Position"]
       10 NAMECALL                         R1 R0 K3 ["AddLine"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+82]
        3 NEWTABLE                         R2 4 0
        5 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        7 MUL                              R3 R1 R4
        8 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
       10 NAMECALL                         R4 R4 K2 ["shouldJoinSurfaces"]
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+18]
       14 GETTABLEKS                       R4 R0 K3 ["_jointPairs"]
       16 JUMPIFNOT                        R4 ; [+15]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       20 MOVE                             R6 R3
       21 GETTABLEKS                       R7 R0 K4 ["_boundingBoxSize"]
       23 CALL                             R4 3 1
       24 GETTABLEKS                       R5 R0 K3 ["_jointPairs"]
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R5 K5 ["renderJoints"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R2 K6 ["JoinedSurfaces"]
       32 GETTABLEKS                       R4 R0 K7 ["_pivotSnapTarget"]
       34 JUMPIFNOT                        R4 ; [+44]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K8 ["createElement"]
       38 GETUPVAL                         R5 3
       39 DUPTABLE                         R6 K12 [{"Color3", "AlwaysOnTop", "Render"}]
       40 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       42 NAMECALL                         R7 R7 K13 ["getChosenColor"]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K9 ["Color3"]
       47 LOADB                            R7 1
       48 SETTABLEKS                       R7 R6 K10 ["AlwaysOnTop"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R7 R6 K11 ["Render"]
       54 CALL                             R4 2 1
       55 SETTABLEKS                       R4 R2 K14 ["SnapToLine"]
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R4 R5 K8 ["createElement"]
       60 GETUPVAL                         R5 3
       61 DUPTABLE                         R6 K12 [{"Color3", "AlwaysOnTop", "Render"}]
       62 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       64 NAMECALL                         R7 R7 K13 ["getChosenColor"]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K9 ["Color3"]
       69 LOADB                            R7 1
       70 SETTABLEKS                       R7 R6 K10 ["AlwaysOnTop"]
       72 NEWCLOSURE                       R7 P1
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R7 R6 K11 ["Render"]
       76 CALL                             R4 2 1
       77 SETTABLEKS                       R4 R2 K15 ["SnapBecauseLine"]
       79 GETUPVAL                         R5 2
       80 GETTABLEKS                       R4 R5 K16 ["createFragment"]
       82 MOVE                             R5 R2
       83 CALL                             R4 1 -1
       84 RETURN                           R4 -1
       85 GETTABLEKS                       R3 R0 K0 ["_centerPoint"]
       87 MUL                              R2 R1 R3
       88 GETTABLEKS                       R3 R0 K1 ["_draggerContext"]
       90 NAMECALL                         R3 R3 K2 ["shouldJoinSurfaces"]
       92 CALL                             R3 1 1
       93 JUMPIFNOT                        R3 ; [+17]
       94 GETTABLEKS                       R3 R0 K3 ["_jointPairs"]
       96 JUMPIFNOT                        R3 ; [+14]
       97 GETUPVAL                         R3 1
       98 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
      100 MOVE                             R5 R2
      101 GETTABLEKS                       R6 R0 K4 ["_boundingBoxSize"]
      103 CALL                             R3 3 1
      104 GETTABLEKS                       R4 R0 K3 ["_jointPairs"]
      106 MOVE                             R6 R3
      107 NAMECALL                         R4 R4 K5 ["renderJoints"]
      109 CALL                             R4 2 -1
      110 RETURN                           R4 -1
      111 LOADNIL                          R3
      112 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_lastGoodGeometricTransform"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R4 R0 K0 ["_lastGoodGeometricTransform"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R0 K1 ["_safelyTransformParts"]
       10 CALL                             R2 3 1
       11 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
       13 NAMECALL                         R3 R3 K3 ["shouldJoinSurfaces"]
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETTABLEKS                       R3 R0 K4 ["_partMover"]
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K5 ["computeJointPairs"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R0 K6 ["_jointPairs"]
       25 GETTABLEKS                       R3 R0 K7 ["_attachmentMover"]
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K8 ["transformTo"]
       30 CALL                             R3 2 0
       31 SETTABLEKS                       R2 R0 K0 ["_lastGoodGeometricTransform"]
       33 SETTABLEKS                       R2 R0 K9 ["_lastAppliedTransform"]
       35 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["areCollisionsEnabled"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETIMPORT                        R2 K5 [Enum.IKCollisionsMode.IncludeContactedMechanisms]
        8 JUMPIF                           R2 ; [+2]
        9 GETIMPORT                        R2 K7 [Enum.IKCollisionsMode.NoCollisions]
       11 GETTABLEKS                       R3 R0 K8 ["_ikTransformFunction"]
       13 GETTABLEKS                       R4 R0 K9 ["_partMover"]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       20 NAMECALL                         R4 R4 K10 ["shouldJoinSurfaces"]
       22 CALL                             R4 1 1
       23 JUMPIFNOT                        R4 ; [+8]
       24 GETTABLEKS                       R4 R0 K9 ["_partMover"]
       26 MOVE                             R6 R3
       27 NAMECALL                         R4 R4 K11 ["computeJointPairs"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R0 K12 ["_jointPairs"]
       32 GETTABLEKS                       R4 R0 K13 ["_attachmentMover"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K14 ["transformTo"]
       37 CALL                             R4 2 0
       38 SETTABLEKS                       R3 R0 K15 ["_lastAppliedTransform"]
       40 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["Position"]
        2 GETTABLEKS                       R6 R1 K0 ["Position"]
        4 SUB                              R4 R5 R6
        5 GETTABLEKS                       R3 R4 K1 ["Magnitude"]
        7 GETTABLEKS                       R7 R0 K2 ["XVector"]
        9 GETTABLEKS                       R8 R1 K2 ["XVector"]
       11 SUB                              R6 R7 R8
       12 GETTABLEKS                       R5 R6 K1 ["Magnitude"]
       14 GETTABLEKS                       R8 R0 K3 ["YVector"]
       16 GETTABLEKS                       R9 R1 K3 ["YVector"]
       18 SUB                              R7 R8 R9
       19 GETTABLEKS                       R6 R7 K1 ["Magnitude"]
       21 GETTABLEKS                       R9 R0 K4 ["ZVector"]
       23 GETTABLEKS                       R10 R1 K4 ["ZVector"]
       25 SUB                              R8 R9 R10
       26 GETTABLEKS                       R7 R8 K1 ["Magnitude"]
       28 FASTCALL                         MATH_MAX ; [+2]
       29 GETIMPORT                        R4 K7 [math.max]
       31 CALL                             R4 3 1
       32 LOADB                            R5 0
       33 JUMPIFNOTLT                      R3 R2 ; [+5]
       35 JUMPIFLT                         R4 R2 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 MOVE                             R6 R3
       40 MOVE                             R7 R4
       41 RETURN                           R5 3

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        2 NAMECALL                         R4 R4 K1 ["Inverse"]
        4 CALL                             R4 1 1
        5 MUL                              R3 R4 R1
        6 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        8 MUL                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        2 MUL                              R3 R4 R1
        3 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        5 NAMECALL                         R4 R4 K1 ["Inverse"]
        7 CALL                             R4 1 1
        8 MUL                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_partMover"]
        2 MOVE                             R5 R2
        3 NAMECALL                         R3 R3 K1 ["transformTo"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
        8 NAMECALL                         R3 R3 K3 ["areCollisionsEnabled"]
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETTABLEKS                       R3 R0 K0 ["_partMover"]
       14 NAMECALL                         R3 R3 K4 ["isIntersectingOthers"]
       16 CALL                             R3 1 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R2 1
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R0 K5 ["_toLocalTransform"]
       22 CALL                             R3 2 1
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R0 K5 ["_toLocalTransform"]
       26 CALL                             R4 2 1
       27 LOADB                            R5 1
       28 LOADN                            R6 0
       29 MOVE                             R8 R3
       30 MOVE                             R9 R4
       31 GETTABLEKS                       R12 R8 K6 ["Position"]
       33 GETTABLEKS                       R13 R9 K6 ["Position"]
       35 SUB                              R11 R12 R13
       36 GETTABLEKS                       R10 R11 K7 ["Magnitude"]
       38 GETTABLEKS                       R14 R8 K8 ["XVector"]
       40 GETTABLEKS                       R15 R9 K8 ["XVector"]
       42 SUB                              R13 R14 R15
       43 GETTABLEKS                       R12 R13 K7 ["Magnitude"]
       45 GETTABLEKS                       R15 R8 K9 ["YVector"]
       47 GETTABLEKS                       R16 R9 K9 ["YVector"]
       49 SUB                              R14 R15 R16
       50 GETTABLEKS                       R13 R14 K7 ["Magnitude"]
       52 GETTABLEKS                       R16 R8 K10 ["ZVector"]
       54 GETTABLEKS                       R17 R9 K10 ["ZVector"]
       56 SUB                              R15 R16 R17
       57 GETTABLEKS                       R14 R15 K7 ["Magnitude"]
       59 FASTCALL                         MATH_MAX ; [+2]
       60 GETIMPORT                        R11 K13 [math.max]
       62 CALL                             R11 3 1
       63 LOADB                            R7 0
       64 LOADK                            R12 K14 [0.0005]
       65 JUMPIFNOTLT                      R10 R12 ; [+6]
       67 LOADK                            R12 K14 [0.0005]
       68 JUMPIFLT                         R11 R12 ; [+2]
       70 LOADB                            R7 0 +1
       71 LOADB                            R7 1
       72 JUMPIF                           R7 ; [+35]
       73 MOVE                             R9 R4
       74 LOADK                            R10 K15 [0.5]
       75 NAMECALL                         R7 R3 K16 ["Lerp"]
       77 CALL                             R7 3 1
       78 GETTABLEKS                       R8 R0 K0 ["_partMover"]
       80 MOVE                             R12 R7
       81 NAMECALL                         R10 R0 K17 ["_toGlobalTransform"]
       83 CALL                             R10 2 -1
       84 NAMECALL                         R8 R8 K1 ["transformTo"]
       86 CALL                             R8 -1 0
       87 GETTABLEKS                       R8 R0 K0 ["_partMover"]
       89 NAMECALL                         R8 R8 K4 ["isIntersectingOthers"]
       91 CALL                             R8 1 1
       92 MOVE                             R5 R8
       93 JUMPIFNOT                        R5 ; [+2]
       94 MOVE                             R4 R7
       95 JUMP                             ; [+1]
       96 MOVE                             R3 R7
       97 ADDK                             R6 R6 K18 [1]
       98 LOADN                            R8 32
       99 JUMPIFNOTLT                      R8 R6 ; [+7]
      101 MOVE                             R10 R1
      102 NAMECALL                         R8 R0 K5 ["_toLocalTransform"]
      104 CALL                             R8 2 1
      105 MOVE                             R3 R8
      106 JUMP                             ; [+1]
      107 JUMPBACK                         ; [-79]
      108 MOVE                             R8 R3
      109 GETIMPORT                        R9 K21 [CFrame.new]
      111 CALL                             R9 0 1
      112 GETTABLEKS                       R12 R8 K6 ["Position"]
      114 GETTABLEKS                       R13 R9 K6 ["Position"]
      116 SUB                              R11 R12 R13
      117 GETTABLEKS                       R10 R11 K7 ["Magnitude"]
      119 GETTABLEKS                       R14 R8 K8 ["XVector"]
      121 GETTABLEKS                       R15 R9 K8 ["XVector"]
      123 SUB                              R13 R14 R15
      124 GETTABLEKS                       R12 R13 K7 ["Magnitude"]
      126 GETTABLEKS                       R15 R8 K9 ["YVector"]
      128 GETTABLEKS                       R16 R9 K9 ["YVector"]
      130 SUB                              R14 R15 R16
      131 GETTABLEKS                       R13 R14 K7 ["Magnitude"]
      133 GETTABLEKS                       R16 R8 K10 ["ZVector"]
      135 GETTABLEKS                       R17 R9 K10 ["ZVector"]
      137 SUB                              R15 R16 R17
      138 GETTABLEKS                       R14 R15 K7 ["Magnitude"]
      140 FASTCALL                         MATH_MAX ; [+2]
      141 GETIMPORT                        R11 K13 [math.max]
      143 CALL                             R11 3 1
      144 LOADB                            R7 0
      145 LOADK                            R12 K22 [0.001]
      146 JUMPIFNOTLT                      R10 R12 ; [+6]
      148 LOADK                            R12 K22 [0.001]
      149 JUMPIFLT                         R11 R12 ; [+2]
      151 LOADB                            R7 0 +1
      152 LOADB                            R7 1
      153 JUMPIFNOT                        R7 ; [+5]
      154 GETIMPORT                        R7 K21 [CFrame.new]
      156 CALL                             R7 0 1
      157 MOVE                             R3 R7
      158 LOADB                            R5 1
      159 MOVE                             R9 R3
      160 NAMECALL                         R7 R0 K17 ["_toGlobalTransform"]
      162 CALL                             R7 2 1
      163 MOVE                             R9 R7
      164 GETTABLEKS                       R12 R9 K6 ["Position"]
      166 GETTABLEKS                       R13 R1 K6 ["Position"]
      168 SUB                              R11 R12 R13
      169 GETTABLEKS                       R10 R11 K7 ["Magnitude"]
      171 GETTABLEKS                       R14 R9 K8 ["XVector"]
      173 GETTABLEKS                       R15 R1 K8 ["XVector"]
      175 SUB                              R13 R14 R15
      176 GETTABLEKS                       R12 R13 K7 ["Magnitude"]
      178 GETTABLEKS                       R15 R9 K9 ["YVector"]
      180 GETTABLEKS                       R16 R1 K9 ["YVector"]
      182 SUB                              R14 R15 R16
      183 GETTABLEKS                       R13 R14 K7 ["Magnitude"]
      185 GETTABLEKS                       R16 R9 K10 ["ZVector"]
      187 GETTABLEKS                       R17 R1 K10 ["ZVector"]
      189 SUB                              R15 R16 R17
      190 GETTABLEKS                       R14 R15 K7 ["Magnitude"]
      192 FASTCALL                         MATH_MAX ; [+2]
      193 GETIMPORT                        R11 K13 [math.max]
      195 CALL                             R11 3 1
      196 LOADB                            R8 0
      197 LOADK                            R12 K22 [0.001]
      198 JUMPIFNOTLT                      R10 R12 ; [+6]
      200 LOADK                            R12 K22 [0.001]
      201 JUMPIFLT                         R11 R12 ; [+2]
      203 LOADB                            R8 0 +1
      204 LOADB                            R8 1
      205 JUMPIFNOT                        R8 ; [+2]
      206 MOVE                             R7 R1
      207 LOADB                            R5 1
      208 JUMPIFNOT                        R5 ; [+6]
      209 GETTABLEKS                       R8 R0 K0 ["_partMover"]
      211 MOVE                             R10 R7
      212 NAMECALL                         R8 R8 K1 ["transformTo"]
      214 CALL                             R8 2 0
      215 RETURN                           R7 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["areConstraintsEnabled"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K2 ["_hasPartsToMove"]
        8 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["Wrong flag branching"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 LOADK                            R5 K3 ["Terrain"]
       10 NAMECALL                         R3 R2 K4 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 LOADK                            R5 K5 ["BasePart"]
       17 NAMECALL                         R3 R2 K4 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+2]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K6 ["shape"]
       28 JUMPIFEQKS                       R4 K7 ["Mesh"] ; [+3]
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 LOADNIL                          R4
       33 LOADK                            R5 K8 [∞]
       34 GETIMPORT                        R6 K10 [ipairs]
       36 GETTABLEKS                       R7 R3 K11 ["faces"]
       38 CALL                             R6 1 3
       39 FORGPREP_INEXT                   R6
       40 GETTABLEKS                       R15 R10 K12 ["vertices"]
       42 GETTABLEN                        R14 R15 1
       43 SUB                              R13 R1 R14
       44 GETTABLEKS                       R12 R13 K13 ["Unit"]
       46 GETTABLEKS                       R14 R10 K14 ["normal"]
       48 NAMECALL                         R12 R12 K15 ["Dot"]
       50 CALL                             R12 2 1
       51 FASTCALL1                        MATH_ABS R12 ; [+2]
       52 GETIMPORT                        R11 K18 [math.abs]
       54 CALL                             R11 1 1
       55 JUMPIFNOTLT                      R11 R5 ; [+3]
       57 MOVE                             R5 R11
       58 MOVE                             R4 R10
       59 FORGLOOP                         R6 2 [inext] ; [-20]
       61 GETTABLEKS                       R7 R0 K19 ["_draggerContext"]
       63 MOVE                             R9 R1
       64 NAMECALL                         R7 R7 K20 ["worldToViewportPoint"]
       66 CALL                             R7 2 1
       67 GETIMPORT                        R8 K23 [Vector2.new]
       69 GETTABLEKS                       R9 R7 K24 ["X"]
       71 GETTABLEKS                       R10 R7 K25 ["Y"]
       73 CALL                             R8 2 1
       74 MOVE                             R6 R8
       75 LOADNIL                          R7
       76 LOADN                            R8 16
       77 GETIMPORT                        R9 K10 [ipairs]
       79 GETTABLEKS                       R10 R4 K12 ["vertices"]
       81 CALL                             R9 1 3
       82 FORGPREP_INEXT                   R9
       83 GETTABLEKS                       R15 R0 K19 ["_draggerContext"]
       85 MOVE                             R17 R13
       86 NAMECALL                         R15 R15 K20 ["worldToViewportPoint"]
       88 CALL                             R15 2 1
       89 GETIMPORT                        R16 K23 [Vector2.new]
       91 GETTABLEKS                       R17 R15 K24 ["X"]
       93 GETTABLEKS                       R18 R15 K25 ["Y"]
       95 CALL                             R16 2 1
       96 MOVE                             R14 R16
       97 SUB                              R16 R14 R6
       98 GETTABLEKS                       R15 R16 K26 ["Magnitude"]
      100 JUMPIFNOTLT                      R15 R8 ; [+3]
      102 MOVE                             R8 R15
      103 MOVE                             R7 R13
      104 FORGLOOP                         R9 2 [inext] ; [-22]
      106 JUMPIFNOT                        R7 ; [+10]
      107 GETIMPORT                        R9 K29 [CFrame.fromMatrix]
      109 MOVE                             R10 R7
      110 GETTABLEKS                       R11 R4 K30 ["direction"]
      112 GETTABLEKS                       R12 R4 K14 ["normal"]
      114 CALL                             R9 3 1
      115 LOADB                            R10 1
      116 RETURN                           R9 2
      117 LOADNIL                          R9
      118 LOADNIL                          R10
      119 LOADN                            R11 16
      120 GETTABLEKS                       R13 R4 K12 ["vertices"]
      122 LENGTH                           R12 R13
      123 LOADN                            R15 1
      124 MOVE                             R13 R12
      125 LOADN                            R14 1
      126 FORNPREP                         R13
      127 GETTABLEKS                       R17 R4 K12 ["vertices"]
      129 GETTABLE                         R16 R17 R15
      130 GETTABLEKS                       R18 R4 K12 ["vertices"]
      132 MOD                              R20 R15 R12
      133 ADDK                             R19 R20 K31 [1]
      134 GETTABLE                         R17 R18 R19
      135 GETTABLEKS                       R19 R0 K19 ["_draggerContext"]
      137 MOVE                             R21 R16
      138 NAMECALL                         R19 R19 K20 ["worldToViewportPoint"]
      140 CALL                             R19 2 1
      141 GETIMPORT                        R20 K23 [Vector2.new]
      143 GETTABLEKS                       R21 R19 K24 ["X"]
      145 GETTABLEKS                       R22 R19 K25 ["Y"]
      147 CALL                             R20 2 1
      148 MOVE                             R18 R20
      149 GETTABLEKS                       R20 R0 K19 ["_draggerContext"]
      151 MOVE                             R22 R17
      152 NAMECALL                         R20 R20 K20 ["worldToViewportPoint"]
      154 CALL                             R20 2 1
      155 GETIMPORT                        R21 K23 [Vector2.new]
      157 GETTABLEKS                       R22 R20 K24 ["X"]
      159 GETTABLEKS                       R23 R20 K25 ["Y"]
      161 CALL                             R21 2 1
      162 MOVE                             R19 R21
      163 SUB                              R21 R19 R18
      164 GETTABLEKS                       R20 R21 K13 ["Unit"]
      166 SUB                              R21 R6 R18
      167 MOVE                             R25 R20
      168 NAMECALL                         R23 R21 K15 ["Dot"]
      170 CALL                             R23 2 1
      171 MUL                              R22 R20 R23
      172 SUB                              R24 R21 R22
      173 GETTABLEKS                       R23 R24 K26 ["Magnitude"]
      175 JUMPIFNOTLT                      R23 R11 ; [+13]
      177 MOVE                             R11 R23
      178 SUB                              R25 R17 R16
      179 GETTABLEKS                       R24 R25 K13 ["Unit"]
      181 SUB                              R25 R1 R16
      182 MOVE                             R29 R24
      183 NAMECALL                         R27 R25 K15 ["Dot"]
      185 CALL                             R27 2 1
      186 MUL                              R26 R24 R27
      187 ADD                              R9 R16 R26
      188 MOVE                             R10 R24
      189 FORNLOOP                         R13
      190 JUMPIFNOT                        R9 ; [+9]
      191 GETIMPORT                        R13 K29 [CFrame.fromMatrix]
      193 MOVE                             R14 R9
      194 MOVE                             R15 R10
      195 GETTABLEKS                       R16 R4 K14 ["normal"]
      197 CALL                             R13 3 1
      198 LOADB                            R14 1
      199 RETURN                           R13 2
      200 GETTABLEKS                       R13 R0 K19 ["_draggerContext"]
      202 NAMECALL                         R13 R13 K32 ["getMouseLocation"]
      204 CALL                             R13 1 1
      205 GETTABLEKS                       R15 R0 K19 ["_draggerContext"]
      207 GETTABLEKS                       R17 R2 K33 ["Position"]
      209 NAMECALL                         R15 R15 K20 ["worldToViewportPoint"]
      211 CALL                             R15 2 1
      212 GETIMPORT                        R16 K23 [Vector2.new]
      214 GETTABLEKS                       R17 R15 K24 ["X"]
      216 GETTABLEKS                       R18 R15 K25 ["Y"]
      218 CALL                             R16 2 1
      219 MOVE                             R14 R16
      220 SUB                              R16 R13 R14
      221 GETTABLEKS                       R15 R16 K26 ["Magnitude"]
      223 LOADN                            R16 20
      224 JUMPIFNOTLT                      R15 R16 ; [+5]
      226 GETTABLEKS                       R15 R2 K27 ["CFrame"]
      228 LOADB                            R16 0
      229 RETURN                           R15 2
      230 LOADNIL                          R15
      231 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETTABLEKS                       R3 R2 K4 ["Utility"]
       11 GETIMPORT                        R4 K6 [require]
       13 GETTABLEKS                       R5 R1 K7 ["Roact"]
       15 CALL                             R4 1 1
       16 GETIMPORT                        R5 K6 [require]
       18 GETTABLEKS                       R6 R3 K8 ["TemporaryTransparency"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K6 [require]
       23 GETTABLEKS                       R7 R3 K9 ["getBoundingBoxScale"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K6 [require]
       28 GETTABLEKS                       R8 R3 K10 ["PartMover"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K6 [require]
       33 GETTABLEKS                       R9 R3 K11 ["AttachmentMover"]
       35 CALL                             R8 1 1
       36 GETIMPORT                        R9 K6 [require]
       38 GETTABLEKS                       R10 R3 K12 ["getGeometry"]
       40 CALL                             R9 1 1
       41 GETIMPORT                        R10 K6 [require]
       43 GETTABLEKS                       R11 R3 K13 ["getSoftSnaps"]
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K6 [require]
       48 GETTABLEKS                       R12 R3 K14 ["Math"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K6 [require]
       53 GETTABLEKS                       R14 R2 K15 ["Components"]
       55 GETTABLEKS                       R13 R14 K16 ["WireframeHandleAdornment"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K6 [require]
       60 GETTABLEKS                       R15 R2 K17 ["Flags"]
       62 GETTABLEKS                       R14 R15 K18 ["getFFlagDraggerImprovements"]
       64 CALL                             R13 1 1
       65 NEWTABLE                         R14 16 0
       67 SETTABLEKS                       R14 R14 K19 ["__index"]
       69 DUPCLOSURE                       R15 K20 [PROTO_0]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R14
       73 SETTABLEKS                       R15 R14 K21 ["new"]
       75 DUPCLOSURE                       R15 K22 [PROTO_1]
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R15 R14 K23 ["beginDrag"]
       79 DUPCLOSURE                       R15 K24 [PROTO_2]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R15 R14 K13 ["getSoftSnaps"]
       84 DUPCLOSURE                       R15 K25 [PROTO_3]
       85 SETTABLEKS                       R15 R14 K26 ["updateDrag"]
       87 DUPCLOSURE                       R15 K27 [PROTO_4]
       88 CAPTURE                          VAL R13
       89 SETTABLEKS                       R15 R14 K28 ["endDrag"]
       91 DUPCLOSURE                       R15 K29 [PROTO_7]
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R12
       96 SETTABLEKS                       R15 R14 K30 ["render"]
       98 DUPCLOSURE                       R15 K31 [PROTO_8]
       99 SETTABLEKS                       R15 R14 K32 ["_transformGeometric"]
      101 DUPCLOSURE                       R15 K33 [PROTO_9]
      102 SETTABLEKS                       R15 R14 K34 ["_transformInverseKinematics"]
      104 DUPCLOSURE                       R15 K35 [PROTO_10]
      105 DUPCLOSURE                       R16 K36 [PROTO_11]
      106 SETTABLEKS                       R16 R14 K37 ["_toLocalTransform"]
      108 DUPCLOSURE                       R16 K38 [PROTO_12]
      109 SETTABLEKS                       R16 R14 K39 ["_toGlobalTransform"]
      111 DUPCLOSURE                       R16 K40 [PROTO_13]
      112 SETTABLEKS                       R16 R14 K41 ["_safelyTransformParts"]
      114 DUPCLOSURE                       R16 K42 [PROTO_14]
      115 SETTABLEKS                       R16 R14 K43 ["_shouldSolveConstraints"]
      117 DUPCLOSURE                       R16 K44 [PROTO_15]
      118 DUPCLOSURE                       R17 K45 [PROTO_16]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R9
      121 SETTABLEKS                       R17 R14 K46 ["findSummonSnap"]
      123 RETURN                           R14 1
