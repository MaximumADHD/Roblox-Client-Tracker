PROTO_0:
        0 DUPTABLE                         R3 K4 [{"_draggerContext", "_ikTransformFunction", "_partMover", "_attachmentMover"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_ikTransformFunction"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K5 ["new"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K2 ["_partMover"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K5 ["new"]
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
       50 GETTABLEKS                       R14 R0 K10 ["_centerPoint"]
       52 GETTABLEKS                       R14 R14 K14 ["Position"]
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
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K3 ["new"]
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
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K7 ["complimentDirection"]
       30 MOVE                             R11 R8
       31 CALL                             R10 1 1
       32 MUL                              R7 R9 R10
       33 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
       35 NAMECALL                         R8 R8 K8 ["getMaxSoftSnaps"]
       37 CALL                             R8 1 1
       38 NEWTABLE                         R9 0 2
       40 LOADN                            R10 -1
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
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_pivotSnapTarget"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_pivotSnapTo"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_pivotSnapFrom"]
        9 GETTABLEKS                       R1 R0 K3 ["_draggerContext"]
       11 NAMECALL                         R1 R1 K4 ["shouldJoinSurfaces"]
       13 CALL                             R1 1 1
       14 JUMPIFNOT                        R1 ; [+8]
       15 GETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       20 NAMECALL                         R1 R1 K6 ["createJoints"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K5 ["_jointPairs"]
       26 GETTABLEKS                       R1 R0 K7 ["_partMover"]
       28 NAMECALL                         R1 R1 K8 ["commit"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K9 ["_attachmentMover"]
       33 NAMECALL                         R1 R1 K8 ["commit"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       41 NAMECALL                         R1 R1 K11 ["destroy"]
       43 CALL                             R1 1 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K10 ["_temporaryTransparency"]
       47 GETTABLEKS                       R1 R0 K12 ["_initialSelectionInfo"]
       49 GETTABLEKS                       R3 R0 K13 ["_lastAppliedTransform"]
       51 NAMECALL                         R1 R1 K14 ["getTransformedCopy"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_pivotSnapFrom"]
        3 GETTABLEKS                       R3 R3 K1 ["Position"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["_pivotSnapTo"]
        8 GETTABLEKS                       R4 R4 K1 ["Position"]
       10 NAMECALL                         R1 R0 K3 ["AddLine"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_pivotSnapTo"]
        3 GETTABLEKS                       R3 R3 K1 ["Position"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["_pivotSnapTarget"]
        8 GETTABLEKS                       R4 R4 K1 ["Position"]
       10 NAMECALL                         R1 R0 K3 ["AddLine"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 4 0
        2 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        4 MUL                              R3 R1 R4
        5 GETTABLEKS                       R4 R0 K1 ["_draggerContext"]
        7 NAMECALL                         R4 R4 K2 ["shouldJoinSurfaces"]
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+18]
       11 GETTABLEKS                       R4 R0 K3 ["_jointPairs"]
       13 JUMPIFNOT                        R4 ; [+15]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R5 R0 K1 ["_draggerContext"]
       17 MOVE                             R6 R3
       18 GETTABLEKS                       R7 R0 K4 ["_boundingBoxSize"]
       20 CALL                             R4 3 1
       21 GETTABLEKS                       R5 R0 K3 ["_jointPairs"]
       23 MOVE                             R7 R4
       24 NAMECALL                         R5 R5 K5 ["renderJoints"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R2 K6 ["JoinedSurfaces"]
       29 GETTABLEKS                       R4 R0 K7 ["_pivotSnapTarget"]
       31 JUMPIFNOT                        R4 ; [+38]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K8 ["createElement"]
       35 GETUPVAL                         R5 2
       36 DUPTABLE                         R6 K13 [{["Color3"], ["AlwaysOnTop"] = True, ["Render"]}]
       37 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       39 NAMECALL                         R7 R7 K14 ["getChosenColor"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K9 ["Color3"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R7 R6 K12 ["Render"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R2 K15 ["SnapToLine"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K8 ["createElement"]
       54 GETUPVAL                         R5 2
       55 DUPTABLE                         R6 K13 [{["Color3"], ["AlwaysOnTop"] = True, ["Render"]}]
       56 GETTABLEKS                       R7 R0 K1 ["_draggerContext"]
       58 NAMECALL                         R7 R7 K14 ["getChosenColor"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K9 ["Color3"]
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R7 R6 K12 ["Render"]
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R2 K16 ["SnapBecauseLine"]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K17 ["createFragment"]
       73 MOVE                             R5 R2
       74 CALL                             R4 1 -1
       75 RETURN                           R4 -1

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
        0 GETTABLEKS                       R4 R0 K0 ["Position"]
        2 GETTABLEKS                       R5 R1 K0 ["Position"]
        4 SUB                              R3 R4 R5
        5 GETTABLEKS                       R3 R3 K1 ["Magnitude"]
        7 GETTABLEKS                       R6 R0 K2 ["XVector"]
        9 GETTABLEKS                       R7 R1 K2 ["XVector"]
       11 SUB                              R5 R6 R7
       12 GETTABLEKS                       R5 R5 K1 ["Magnitude"]
       14 GETTABLEKS                       R7 R0 K3 ["YVector"]
       16 GETTABLEKS                       R8 R1 K3 ["YVector"]
       18 SUB                              R6 R7 R8
       19 GETTABLEKS                       R6 R6 K1 ["Magnitude"]
       21 GETTABLEKS                       R8 R0 K4 ["ZVector"]
       23 GETTABLEKS                       R9 R1 K4 ["ZVector"]
       25 SUB                              R7 R8 R9
       26 GETTABLEKS                       R7 R7 K1 ["Magnitude"]
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
       31 GETTABLEKS                       R11 R8 K6 ["Position"]
       33 GETTABLEKS                       R12 R9 K6 ["Position"]
       35 SUB                              R10 R11 R12
       36 GETTABLEKS                       R10 R10 K7 ["Magnitude"]
       38 GETTABLEKS                       R13 R8 K8 ["XVector"]
       40 GETTABLEKS                       R14 R9 K8 ["XVector"]
       42 SUB                              R12 R13 R14
       43 GETTABLEKS                       R12 R12 K7 ["Magnitude"]
       45 GETTABLEKS                       R14 R8 K9 ["YVector"]
       47 GETTABLEKS                       R15 R9 K9 ["YVector"]
       49 SUB                              R13 R14 R15
       50 GETTABLEKS                       R13 R13 K7 ["Magnitude"]
       52 GETTABLEKS                       R15 R8 K10 ["ZVector"]
       54 GETTABLEKS                       R16 R9 K10 ["ZVector"]
       56 SUB                              R14 R15 R16
       57 GETTABLEKS                       R14 R14 K7 ["Magnitude"]
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
      112 GETTABLEKS                       R11 R8 K6 ["Position"]
      114 GETTABLEKS                       R12 R9 K6 ["Position"]
      116 SUB                              R10 R11 R12
      117 GETTABLEKS                       R10 R10 K7 ["Magnitude"]
      119 GETTABLEKS                       R13 R8 K8 ["XVector"]
      121 GETTABLEKS                       R14 R9 K8 ["XVector"]
      123 SUB                              R12 R13 R14
      124 GETTABLEKS                       R12 R12 K7 ["Magnitude"]
      126 GETTABLEKS                       R14 R8 K9 ["YVector"]
      128 GETTABLEKS                       R15 R9 K9 ["YVector"]
      130 SUB                              R13 R14 R15
      131 GETTABLEKS                       R13 R13 K7 ["Magnitude"]
      133 GETTABLEKS                       R15 R8 K10 ["ZVector"]
      135 GETTABLEKS                       R16 R9 K10 ["ZVector"]
      137 SUB                              R14 R15 R16
      138 GETTABLEKS                       R14 R14 K7 ["Magnitude"]
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
      164 GETTABLEKS                       R11 R9 K6 ["Position"]
      166 GETTABLEKS                       R12 R1 K6 ["Position"]
      168 SUB                              R10 R11 R12
      169 GETTABLEKS                       R10 R10 K7 ["Magnitude"]
      171 GETTABLEKS                       R13 R9 K8 ["XVector"]
      173 GETTABLEKS                       R14 R1 K8 ["XVector"]
      175 SUB                              R12 R13 R14
      176 GETTABLEKS                       R12 R12 K7 ["Magnitude"]
      178 GETTABLEKS                       R14 R9 K9 ["YVector"]
      180 GETTABLEKS                       R15 R1 K9 ["YVector"]
      182 SUB                              R13 R14 R15
      183 GETTABLEKS                       R13 R13 K7 ["Magnitude"]
      185 GETTABLEKS                       R15 R9 K10 ["ZVector"]
      187 GETTABLEKS                       R16 R1 K10 ["ZVector"]
      189 SUB                              R14 R15 R16
      190 GETTABLEKS                       R14 R14 K7 ["Magnitude"]
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       38 GETTABLEKS                       R10 R3 K12 ["getSoftSnaps"]
       40 CALL                             R9 1 1
       41 GETIMPORT                        R10 K6 [require]
       43 GETTABLEKS                       R11 R3 K13 ["Math"]
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K6 [require]
       48 GETTABLEKS                       R12 R2 K14 ["Components"]
       50 GETTABLEKS                       R12 R12 K15 ["WireframeHandleAdornment"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K6 [require]
       55 GETTABLEKS                       R13 R0 K16 ["SelectionInfo"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K6 [require]
       60 GETTABLEKS                       R14 R2 K17 ["Types"]
       62 CALL                             R13 1 1
       63 NEWTABLE                         R14 16 0
       65 SETTABLEKS                       R14 R14 K18 ["__index"]
       67 DUPCLOSURE                       R15 K19 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R14
       71 SETTABLEKS                       R15 R14 K20 ["new"]
       73 DUPCLOSURE                       R15 K21 [PROTO_1]
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R15 R14 K22 ["beginDrag"]
       77 DUPCLOSURE                       R15 K23 [PROTO_2]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R15 R14 K12 ["getSoftSnaps"]
       82 DUPCLOSURE                       R15 K24 [PROTO_3]
       83 SETTABLEKS                       R15 R14 K25 ["updateDrag"]
       85 DUPCLOSURE                       R15 K26 [PROTO_4]
       86 SETTABLEKS                       R15 R14 K27 ["endDrag"]
       88 DUPCLOSURE                       R15 K28 [PROTO_7]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R15 R14 K29 ["render"]
       94 DUPCLOSURE                       R15 K30 [PROTO_8]
       95 SETTABLEKS                       R15 R14 K31 ["_transformGeometric"]
       97 DUPCLOSURE                       R15 K32 [PROTO_9]
       98 SETTABLEKS                       R15 R14 K33 ["_transformInverseKinematics"]
      100 DUPCLOSURE                       R15 K34 [PROTO_10]
      101 DUPCLOSURE                       R16 K35 [PROTO_11]
      102 SETTABLEKS                       R16 R14 K36 ["_toLocalTransform"]
      104 DUPCLOSURE                       R16 K37 [PROTO_12]
      105 SETTABLEKS                       R16 R14 K38 ["_toGlobalTransform"]
      107 DUPCLOSURE                       R16 K39 [PROTO_13]
      108 SETTABLEKS                       R16 R14 K40 ["_safelyTransformParts"]
      110 DUPCLOSURE                       R16 K41 [PROTO_14]
      111 SETTABLEKS                       R16 R14 K42 ["_shouldSolveConstraints"]
      113 RETURN                           R14 1
