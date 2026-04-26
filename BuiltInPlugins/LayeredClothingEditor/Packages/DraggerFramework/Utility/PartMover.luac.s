PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 ; [-3]
       11 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"_partSet", "_toUnanchor", "_facesToHighlightSet", "_nearbyGeometry"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_partSet"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["_toUnanchor"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["_facesToHighlightSet"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["_nearbyGeometry"]
       17 GETUPVAL                         R2 0
       18 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       20 GETIMPORT                        R0 K6 [setmetatable]
       22 CALL                             R0 2 1
       23 NAMECALL                         R1 R0 K7 ["_createMainPart"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_mainPart"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R8 K2 [table.create]
        2 LOADN                            R9 16
        3 CALL                             R8 1 1
        4 GETIMPORT                        R9 K4 [ipairs]
        6 MOVE                             R10 R1
        7 CALL                             R9 1 3
        8 FORGPREP_INEXT                   R9
        9 GETUPVAL                         R16 0
       10 NAMECALL                         R14 R13 K5 ["IsDescendantOf"]
       12 CALL                             R14 2 1
       13 JUMPIFNOT                        R14 ; [+11]
       14 NAMECALL                         R14 R13 K6 ["GetRootPart"]
       16 CALL                             R14 1 1
       17 JUMPIFNOT                        R14 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       20 MOVE                             R15 R8
       21 MOVE                             R16 R13
       22 GETIMPORT                        R14 K8 [table.insert]
       24 CALL                             R14 2 0
       25 FORGLOOP                         R9 2 [inext] ; [-17]
       27 SETTABLEKS                       R8 R0 K9 ["_workspaceParts"]
       29 GETTABLEKS                       R11 R0 K10 ["_moving"]
       31 NOT                              R10 R11
       32 FASTCALL1                        ASSERT R10 ; [+2]
       33 GETIMPORT                        R9 K12 [assert]
       35 CALL                             R9 1 0
       36 LOADB                            R9 1
       37 SETTABLEKS                       R9 R0 K10 ["_moving"]
       39 SETTABLEKS                       R2 R0 K13 ["_originalCFrameMap"]
       41 GETUPVAL                         R9 1
       42 JUMPIFNOT                        R9 ; [+24]
       43 LOADN                            R9 0
       44 MOVE                             R10 R6
       45 LOADNIL                          R11
       46 LOADNIL                          R12
       47 FORGPREP                         R10
       48 LOADK                            R17 K14 ["ProceduralModel"]
       49 NAMECALL                         R15 R14 K15 ["IsA"]
       51 CALL                             R15 2 1
       52 JUMPIFNOT                        R15 ; [+1]
       53 ADDK                             R9 R9 K16 [1]
       54 FORGLOOP                         R10 2 ; [-7]
       56 LENGTH                           R10 R1
       57 JUMPIFNOTEQKN                    R10 K17 [0] ; [+17]
       59 JUMPIFNOTEQKN                    R9 K17 [0] ; [+15]
       61 NEWTABLE                         R10 0 0
       63 SETTABLEKS                       R10 R0 K18 ["_parts"]
       65 RETURN                           R0 0
       66 JUMP                             ; [+8]
       67 LENGTH                           R9 R1
       68 JUMPIFNOTEQKN                    R9 K17 [0] ; [+6]
       70 NEWTABLE                         R9 0 0
       72 SETTABLEKS                       R9 R0 K18 ["_parts"]
       74 RETURN                           R0 0
       75 MOVE                             R11 R1
       76 NAMECALL                         R9 R0 K19 ["_initPartSet"]
       78 CALL                             R9 2 0
       79 MOVE                             R9 R4
       80 JUMPIF                           R9 ; [+4]
       81 FASTCALL                         VECTOR ; [+2]
       82 GETIMPORT                        R9 K22 [Vector3.new]
       84 CALL                             R9 0 1
       85 SETTABLEKS                       R9 R0 K23 ["_customCenter"]
       87 MOVE                             R11 R1
       88 MOVE                             R12 R3
       89 MOVE                             R13 R7
       90 NAMECALL                         R9 R0 K24 ["_prepareJoints"]
       92 CALL                             R9 4 0
       93 LOADB                            R9 0
       94 SETTABLEKS                       R9 R0 K25 ["_hasSetupGeometryTracking"]
       96 JUMPIFNOT                        R7 ; [+18]
       97 MOVE                             R11 R1
       98 MOVE                             R12 R7
       99 NEWTABLE                         R14 0 0
      101 GETIMPORT                        R15 K27 [pairs]
      103 MOVE                             R16 R5
      104 CALL                             R15 1 3
      105 FORGPREP_NEXT                    R15
      106 LOADB                            R20 1
      107 SETTABLE                         R20 R14 R19
      108 FORGLOOP                         R15 2 ; [-3]
      110 MOVE                             R13 R14
      111 NAMECALL                         R9 R0 K28 ["_setupRootMappingMove"]
      113 CALL                             R9 4 0
      114 JUMP                             ; [+16]
      115 MOVE                             R11 R1
      116 NEWTABLE                         R13 0 0
      118 GETIMPORT                        R14 K27 [pairs]
      120 MOVE                             R15 R5
      121 CALL                             R14 1 3
      122 FORGPREP_NEXT                    R14
      123 LOADB                            R19 1
      124 SETTABLE                         R19 R13 R18
      125 FORGLOOP                         R14 2 ; [-3]
      127 MOVE                             R12 R13
      128 NAMECALL                         R9 R0 K29 ["_setupBulkMove"]
      130 CALL                             R9 3 0
      131 NEWTABLE                         R9 0 0
      133 GETIMPORT                        R10 K4 [ipairs]
      135 MOVE                             R11 R6
      136 CALL                             R10 1 3
      137 FORGPREP_INEXT                   R10
      138 NAMECALL                         R15 R14 K30 ["GetPivot"]
      140 CALL                             R15 1 1
      141 SETTABLE                         R15 R9 R14
      142 FORGLOOP                         R10 2 [inext] ; [-5]
      144 SETTABLEKS                       R9 R0 K31 ["_originalModelPivotMap"]
      146 SETTABLEKS                       R1 R0 K18 ["_parts"]
      148 LOADB                            R10 0
      149 SETTABLEKS                       R10 R0 K32 ["_hasMovementWelds"]
      151 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 GETTABLEKS                       R5 R0 K0 ["_originalCFrameMap"]
        4 LOADN                            R6 1
        5 NEWTABLE                         R7 0 0
        7 NEWTABLE                         R8 0 0
        9 GETTABLEKS                       R9 R2 K1 ["RootToDescendantCountMap"]
       11 LOADNIL                          R10
       12 LOADNIL                          R11
       13 FORGPREP                         R9
       14 JUMPIFNOTEQKN                    R13 K2 [0] ; [+19]
       16 GETTABLEKS                       R15 R0 K3 ["_partSet"]
       18 GETTABLE                         R14 R15 R12
       19 JUMPIFNOT                        R14 ; [+14]
       20 GETTABLEKS                       R14 R12 K4 ["AssemblyRootPart"]
       22 JUMPIFEQ                         R14 R12 ; [+6]
       24 JUMPIFNOT                        R14 ; [+4]
       25 MOVE                             R12 R14
       26 GETTABLEKS                       R15 R14 K5 ["CFrame"]
       28 SETTABLE                         R15 R5 R14
       29 SETTABLE                         R12 R7 R6
       30 GETTABLE                         R15 R5 R12
       31 SETTABLE                         R15 R8 R6
       32 ADDK                             R6 R6 K6 [1]
       33 JUMP                             ; [+4]
       34 NAMECALL                         R14 R12 K7 ["GetPivot"]
       36 CALL                             R14 1 1
       37 SETTABLE                         R14 R4 R12
       38 FORGLOOP                         R9 2 ; [-25]
       40 SETTABLEKS                       R4 R0 K8 ["_pivotToMapping"]
       42 SETTABLEKS                       R7 R0 K9 ["_moveWithCFrameChangeParts"]
       44 SETTABLEKS                       R8 R0 K10 ["_moveWithCFrameChangeOriginalCFrames"]
       46 GETIMPORT                        R9 K13 [table.create]
       48 LENGTH                           R10 R7
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R0 K14 ["_moveWithCFrameChangeTargetCFrames"]
       52 NEWTABLE                         R9 0 0
       54 SETTABLEKS                       R9 R0 K15 ["_bulkMoveParts"]
       56 NEWTABLE                         R9 0 0
       58 SETTABLEKS                       R9 R0 K16 ["_bulkMoveOriginalCFrames"]
       60 NEWTABLE                         R9 0 0
       62 SETTABLEKS                       R9 R0 K17 ["_bulkMoveTargetCFrames"]
       64 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["_originalCFrameMap"]
        4 NEWTABLE                         R5 0 0
        6 NEWTABLE                         R6 0 0
        8 LOADN                            R7 1
        9 GETIMPORT                        R8 K2 [ipairs]
       11 MOVE                             R9 R1
       12 CALL                             R8 1 3
       13 FORGPREP_INEXT                   R8
       14 GETTABLE                         R13 R2 R12
       15 JUMPIFNOT                        R13 ; [+12]
       16 NAMECALL                         R14 R12 K3 ["GetRootPart"]
       18 CALL                             R14 1 1
       19 OR                               R13 R14 R12
       20 JUMPIFNOTEQ                      R13 R12 ; [+7]
       22 LOADB                            R13 1
       23 SETTABLE                         R13 R3 R12
       24 SETTABLE                         R12 R6 R7
       25 GETTABLE                         R13 R4 R12
       26 SETTABLE                         R13 R5 R7
       27 ADDK                             R7 R7 K4 [1]
       28 FORGLOOP                         R8 2 [inext] ; [-15]
       30 NEWTABLE                         R8 0 0
       32 NEWTABLE                         R9 0 0
       34 LOADN                            R10 1
       35 GETIMPORT                        R11 K2 [ipairs]
       37 MOVE                             R12 R1
       38 CALL                             R11 1 3
       39 FORGPREP_INEXT                   R11
       40 NAMECALL                         R17 R15 K3 ["GetRootPart"]
       42 CALL                             R17 1 1
       43 OR                               R16 R17 R15
       44 GETTABLE                         R17 R3 R16
       45 JUMPIF                           R17 ; [+6]
       46 LOADB                            R17 1
       47 SETTABLE                         R17 R3 R16
       48 SETTABLE                         R16 R8 R10
       49 GETTABLE                         R17 R4 R16
       50 SETTABLE                         R17 R9 R10
       51 ADDK                             R10 R10 K4 [1]
       52 FORGLOOP                         R11 2 [inext] ; [-13]
       54 GETUPVAL                         R11 0
       55 NAMECALL                         R11 R11 K5 ["IsRunning"]
       57 CALL                             R11 1 1
       58 JUMPIFNOT                        R11 ; [+17]
       59 GETIMPORT                        R11 K7 [pairs]
       61 MOVE                             R12 R3
       62 CALL                             R11 1 3
       63 FORGPREP_NEXT                    R11
       64 GETTABLEKS                       R16 R14 K8 ["Anchored"]
       66 JUMPIF                           R16 ; [+7]
       67 LOADB                            R16 1
       68 SETTABLEKS                       R16 R14 K8 ["Anchored"]
       70 GETTABLEKS                       R16 R0 K9 ["_toUnanchor"]
       72 LOADB                            R17 1
       73 SETTABLE                         R17 R16 R14
       74 FORGLOOP                         R11 2 ; [-11]
       76 SETTABLEKS                       R6 R0 K10 ["_moveWithCFrameChangeParts"]
       78 SETTABLEKS                       R5 R0 K11 ["_moveWithCFrameChangeOriginalCFrames"]
       80 GETIMPORT                        R11 K14 [table.create]
       82 LENGTH                           R12 R6
       83 CALL                             R11 1 1
       84 SETTABLEKS                       R11 R0 K15 ["_moveWithCFrameChangeTargetCFrames"]
       86 SETTABLEKS                       R8 R0 K16 ["_bulkMoveParts"]
       88 SETTABLEKS                       R9 R0 K17 ["_bulkMoveOriginalCFrames"]
       90 GETIMPORT                        R11 K14 [table.create]
       92 LENGTH                           R12 R8
       93 CALL                             R11 1 1
       94 SETTABLEKS                       R11 R0 K18 ["_bulkMoveTargetCFrames"]
       96 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_partSet"]
        4 GETIMPORT                        R2 K2 [ipairs]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 3
        8 FORGPREP_INEXT                   R2
        9 GETTABLEKS                       R7 R0 K0 ["_partSet"]
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R7 R6
       13 FORGLOOP                         R2 2 [inext] ; [-5]
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_hasSetupGeometryTracking"]
        2 NOT                              R2 R3
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 1 0
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K3 ["_nearbyGeometry"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K4 ["_rootPartSet"]
       15 GETIMPORT                        R1 K6 [ipairs]
       17 GETTABLEKS                       R2 R0 K7 ["_workspaceParts"]
       19 CALL                             R1 1 3
       20 FORGPREP_INEXT                   R1
       21 NAMECALL                         R6 R5 K8 ["GetRootPart"]
       23 CALL                             R6 1 1
       24 JUMPIFNOT                        R6 ; [+4]
       25 GETTABLEKS                       R7 R0 K4 ["_rootPartSet"]
       27 LOADB                            R8 1
       28 SETTABLE                         R8 R7 R6
       29 FORGLOOP                         R1 2 [inext] ; [-9]
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_hasSetupGeometryTracking"]
        2 JUMPIF                           R1 ; [+6]
        3 NAMECALL                         R1 R0 K1 ["_setupGeometryTracking"]
        5 CALL                             R1 1 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["_hasSetupGeometryTracking"]
        9 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Part"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["PartDragMover"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K6 ["Transparency"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K7 ["Archivable"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K8 ["CanCollide"]
       16 GETIMPORT                        R2 K10 [PhysicalProperties.new]
       18 LOADK                            R3 K11 [0.01]
       19 LOADK                            R4 K12 [0.3]
       20 LOADK                            R5 K13 [0.5]
       21 CALL                             R2 3 1
       22 SETTABLEKS                       R2 R1 K14 ["CustomPhysicalProperties"]
       24 SETTABLEKS                       R1 R0 K15 ["_mainPart"]
       26 GETTABLEKS                       R2 R1 K16 ["CFrame"]
       28 SETTABLEKS                       R2 R0 K17 ["_originalMainPartCFrame"]
       30 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_mainPart"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K1 ["IsRunning"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K2 ["Anchored"]
        8 GETIMPORT                        R2 K5 [CFrame.new]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R0 K6 ["_originalMainPartCFrame"]
       14 GETTABLEKS                       R2 R0 K0 ["_mainPart"]
       16 GETTABLEKS                       R3 R0 K6 ["_originalMainPartCFrame"]
       18 SETTABLEKS                       R3 R2 K3 ["CFrame"]
       20 GETTABLEKS                       R2 R0 K0 ["_mainPart"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K7 ["Terrain"]
       25 SETTABLEKS                       R3 R2 K8 ["Parent"]
       27 GETTABLEKS                       R2 R0 K9 ["_partSet"]
       29 GETTABLEKS                       R3 R0 K0 ["_mainPart"]
       31 LOADB                            R4 1
       32 SETTABLE                         R4 R2 R3
       33 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R4 0 0
        2 SETTABLEKS                       R4 R0 K0 ["_reenableJoints"]
        4 NEWTABLE                         R4 0 0
        6 SETTABLEKS                       R4 R0 K1 ["_adjustAndReenableMotor6Ds"]
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R0 K2 ["_alreadyConnectedToSets"]
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R4 R3 K3 ["PartToRootMap"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETIMPORT                        R5 K5 [ipairs]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 3
       21 FORGPREP_INEXT                   R5
       22 GETTABLEKS                       R10 R0 K2 ["_alreadyConnectedToSets"]
       24 NEWTABLE                         R11 0 0
       26 SETTABLE                         R11 R10 R9
       27 GETIMPORT                        R10 K5 [ipairs]
       29 NAMECALL                         R11 R9 K6 ["GetJoints"]
       31 CALL                             R11 1 -1
       32 CALL                             R10 -1 3
       33 FORGPREP_INEXT                   R10
       34 LOADK                            R17 K7 ["JointInstance"]
       35 NAMECALL                         R15 R14 K8 ["IsA"]
       37 CALL                             R15 2 1
       38 JUMPIFNOT                        R15 ; [+52]
       39 GETUPVAL                         R16 0
       40 GETTABLEKS                       R15 R16 K9 ["getJointInstanceCounterpart"]
       42 MOVE                             R16 R14
       43 MOVE                             R17 R9
       44 CALL                             R15 2 1
       45 JUMPIFNOT                        R2 ; [+39]
       46 GETTABLEKS                       R17 R0 K10 ["_partSet"]
       48 GETTABLE                         R16 R17 R15
       49 JUMPIFNOT                        R16 ; [+13]
       50 JUMPIFNOT                        R4 ; [+142]
       51 GETTABLE                         R16 R4 R9
       52 GETTABLE                         R17 R4 R15
       53 JUMPIFEQ                         R16 R17 ; [+139]
       55 LOADB                            R16 0
       56 SETTABLEKS                       R16 R14 K11 ["Enabled"]
       58 GETTABLEKS                       R16 R0 K0 ["_reenableJoints"]
       60 LOADB                            R17 1
       61 SETTABLE                         R17 R16 R14
       62 JUMP                             ; [+130]
       63 LOADK                            R18 K12 ["Motor6D"]
       64 NAMECALL                         R16 R14 K8 ["IsA"]
       66 CALL                             R16 2 1
       67 JUMPIFNOT                        R16 ; [+13]
       68 LOADB                            R16 0
       69 SETTABLEKS                       R16 R14 K11 ["Enabled"]
       71 GETTABLEKS                       R16 R0 K1 ["_adjustAndReenableMotor6Ds"]
       73 LOADB                            R17 1
       74 SETTABLE                         R17 R16 R14
       75 GETTABLEKS                       R17 R0 K2 ["_alreadyConnectedToSets"]
       77 GETTABLE                         R16 R17 R9
       78 LOADB                            R17 1
       79 SETTABLE                         R17 R16 R15
       80 JUMP                             ; [+112]
       81 LOADNIL                          R16
       82 SETTABLEKS                       R16 R14 K13 ["Parent"]
       84 JUMP                             ; [+108]
       85 GETTABLEKS                       R17 R0 K2 ["_alreadyConnectedToSets"]
       87 GETTABLE                         R16 R17 R9
       88 LOADB                            R17 1
       89 SETTABLE                         R17 R16 R15
       90 JUMP                             ; [+102]
       91 LOADK                            R17 K14 ["Constraint"]
       92 NAMECALL                         R15 R14 K8 ["IsA"]
       94 CALL                             R15 2 1
       95 JUMPIFNOT                        R15 ; [+31]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R15 R16 K15 ["getConstraintCounterpart"]
       99 MOVE                             R16 R14
      100 MOVE                             R17 R9
      101 CALL                             R15 2 1
      102 JUMPIFNOT                        R15 ; [+90]
      103 GETTABLEKS                       R17 R0 K2 ["_alreadyConnectedToSets"]
      105 GETTABLE                         R16 R17 R9
      106 LOADB                            R17 1
      107 SETTABLE                         R17 R16 R15
      108 LOADK                            R18 K16 ["RigidConstraint"]
      109 NAMECALL                         R16 R14 K8 ["IsA"]
      111 CALL                             R16 2 1
      112 JUMPIFNOT                        R16 ; [+80]
      113 JUMPIFNOT                        R4 ; [+79]
      114 GETTABLE                         R16 R4 R15
      115 GETTABLE                         R17 R4 R9
      116 JUMPIFEQ                         R17 R16 ; [+76]
      118 JUMPIFNOT                        R16 ; [+74]
      119 LOADB                            R17 0
      120 SETTABLEKS                       R17 R14 K11 ["Enabled"]
      122 GETTABLEKS                       R17 R0 K0 ["_reenableJoints"]
      124 LOADB                            R18 1
      125 SETTABLE                         R18 R17 R14
      126 JUMP                             ; [+66]
      127 LOADK                            R17 K17 ["WeldConstraint"]
      128 NAMECALL                         R15 R14 K8 ["IsA"]
      130 CALL                             R15 2 1
      131 JUMPIFNOT                        R15 ; [+37]
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R15 R16 K18 ["getWeldConstraintCounterpart"]
      135 MOVE                             R16 R14
      136 MOVE                             R17 R9
      137 CALL                             R15 2 1
      138 GETTABLEKS                       R17 R0 K2 ["_alreadyConnectedToSets"]
      140 GETTABLE                         R16 R17 R9
      141 LOADB                            R17 1
      142 SETTABLE                         R17 R16 R15
      143 JUMPIFNOT                        R2 ; [+49]
      144 GETTABLEKS                       R17 R0 K10 ["_partSet"]
      146 GETTABLE                         R16 R17 R15
      147 JUMPIFNOT                        R16 ; [+13]
      148 JUMPIFNOT                        R4 ; [+44]
      149 GETTABLE                         R16 R4 R9
      150 GETTABLE                         R17 R4 R15
      151 JUMPIFEQ                         R16 R17 ; [+41]
      153 LOADB                            R16 0
      154 SETTABLEKS                       R16 R14 K11 ["Enabled"]
      156 GETTABLEKS                       R16 R0 K0 ["_reenableJoints"]
      158 LOADB                            R17 1
      159 SETTABLE                         R17 R16 R14
      160 JUMP                             ; [+32]
      161 LOADB                            R16 0
      162 SETTABLEKS                       R16 R14 K11 ["Enabled"]
      164 GETTABLEKS                       R16 R0 K0 ["_reenableJoints"]
      166 LOADB                            R17 1
      167 SETTABLE                         R17 R16 R14
      168 JUMP                             ; [+24]
      169 LOADK                            R17 K19 ["NoCollisionConstraint"]
      170 NAMECALL                         R15 R14 K8 ["IsA"]
      172 CALL                             R15 2 1
      173 JUMPIFNOT                        R15 ; [+12]
      174 GETUPVAL                         R16 0
      175 GETTABLEKS                       R15 R16 K20 ["getNoCollisionConstraintCounterpart"]
      177 MOVE                             R16 R14
      178 MOVE                             R17 R9
      179 CALL                             R15 2 1
      180 GETTABLEKS                       R17 R0 K2 ["_alreadyConnectedToSets"]
      182 GETTABLE                         R16 R17 R9
      183 LOADB                            R17 1
      184 SETTABLE                         R17 R16 R15
      185 JUMP                             ; [+7]
      186 GETIMPORT                        R15 K22 [error]
      188 LOADK                            R17 K23 ["Unexpected Joint Type: "]
      189 GETTABLEKS                       R18 R14 K24 ["ClassName"]
      191 CONCAT                           R16 R17 R18
      192 CALL                             R15 1 0
      193 FORGLOOP                         R10 2 [inext] ; [-160]
      195 FORGLOOP                         R5 2 [inext] ; [-174]
      197 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_hasMovementWelds"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["_customCenter"]
        6 NAMECALL                         R1 R0 K2 ["_setupMainPart"]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["_hasMovementWelds"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["_temporaryJoints"]
       16 GETTABLEKS                       R1 R0 K4 ["_originalMainPartCFrame"]
       18 NAMECALL                         R1 R1 K5 ["Inverse"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K7 [ipairs]
       23 GETTABLEKS                       R3 R0 K8 ["_parts"]
       25 CALL                             R2 1 3
       26 FORGPREP_INEXT                   R2
       27 GETIMPORT                        R7 K11 [Instance.new]
       29 LOADK                            R8 K12 ["Weld"]
       30 CALL                             R7 1 1
       31 LOADB                            R8 0
       32 SETTABLEKS                       R8 R7 K13 ["Archivable"]
       34 LOADK                            R8 K14 ["Temp Movement Weld"]
       35 SETTABLEKS                       R8 R7 K15 ["Name"]
       37 GETTABLEKS                       R8 R0 K16 ["_mainPart"]
       39 SETTABLEKS                       R8 R7 K17 ["Part0"]
       41 SETTABLEKS                       R6 R7 K18 ["Part1"]
       43 GETTABLEKS                       R9 R6 K19 ["CFrame"]
       45 MUL                              R8 R1 R9
       46 SETTABLEKS                       R8 R7 K20 ["C0"]
       48 GETTABLEKS                       R8 R0 K16 ["_mainPart"]
       50 SETTABLEKS                       R8 R7 K21 ["Parent"]
       52 GETTABLEKS                       R9 R0 K3 ["_temporaryJoints"]
       54 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       56 MOVE                             R10 R7
       57 GETIMPORT                        R8 K24 [table.insert]
       59 CALL                             R8 2 0
       60 FORGLOOP                         R2 2 [inext] ; [-34]
       62 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_originalCFrameMap"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K1 ["_getGeometry"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_moving"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 NAMECALL                         R2 R0 K3 ["_ensureGeometryTrackingHasBeenSetup"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K4 ["new"]
       12 GETTABLEKS                       R3 R0 K5 ["_parts"]
       14 GETTABLEKS                       R4 R0 K6 ["_partSet"]
       16 GETTABLEKS                       R5 R0 K7 ["_rootPartSet"]
       18 MOVE                             R6 R1
       19 GETTABLEKS                       R7 R0 K8 ["_alreadyConnectedToSets"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R0
       23 CALL                             R2 6 1
       24 GETUPVAL                         R3 1
       25 NAMECALL                         R3 R3 K9 ["IsRunning"]
       27 CALL                             R3 1 1
       28 JUMPIFNOT                        R3 ; [+3]
       29 NAMECALL                         R3 R0 K10 ["_flushNonDraggedGeometryCache"]
       31 CALL                             R3 1 0
       32 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_originalModelPivotMap"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETIMPORT                        R2 K2 [pairs]
        5 GETTABLEKS                       R3 R0 K0 ["_originalModelPivotMap"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 MUL                              R7 R1 R6
       10 SETTABLEKS                       R7 R5 K3 ["WorldPivot"]
       12 FORGLOOP                         R2 2 ; [-4]
       14 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_bulkMoveParts"]
        2 JUMPIFNOT                        R3 ; [+47]
        3 GETTABLEKS                       R3 R0 K1 ["_bulkMoveTargetCFrames"]
        5 GETTABLEKS                       R4 R0 K2 ["_bulkMoveOriginalCFrames"]
        7 LOADN                            R7 1
        8 GETTABLEKS                       R8 R0 K0 ["_bulkMoveParts"]
       10 LENGTH                           R5 R8
       11 LOADN                            R6 1
       12 FORNPREP                         R5
       13 GETTABLE                         R9 R4 R7
       14 MUL                              R8 R1 R9
       15 SETTABLE                         R8 R3 R7
       16 FORNLOOP                         R5
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R7 R0 K0 ["_bulkMoveParts"]
       20 MOVE                             R8 R3
       21 MOVE                             R9 R2
       22 NAMECALL                         R5 R5 K3 ["BulkMoveTo"]
       24 CALL                             R5 4 0
       25 GETTABLEKS                       R3 R0 K4 ["_moveWithCFrameChangeTargetCFrames"]
       27 GETTABLEKS                       R4 R0 K5 ["_moveWithCFrameChangeOriginalCFrames"]
       29 LOADN                            R7 1
       30 GETTABLEKS                       R8 R0 K6 ["_moveWithCFrameChangeParts"]
       32 LENGTH                           R5 R8
       33 LOADN                            R6 1
       34 FORNPREP                         R5
       35 GETUPVAL                         R8 1
       36 GETTABLE                         R10 R4 R7
       37 MUL                              R9 R1 R10
       38 CALL                             R8 1 1
       39 SETTABLE                         R8 R3 R7
       40 FORNLOOP                         R5
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R7 R0 K6 ["_moveWithCFrameChangeParts"]
       44 MOVE                             R8 R3
       45 GETIMPORT                        R9 K10 [Enum.BulkMoveMode.FireAllEvents]
       47 NAMECALL                         R5 R5 K3 ["BulkMoveTo"]
       49 CALL                             R5 4 0
       50 GETTABLEKS                       R3 R0 K11 ["_pivotToMapping"]
       52 JUMPIFNOT                        R3 ; [+14]
       53 GETTABLEKS                       R3 R0 K11 ["_pivotToMapping"]
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETUPVAL                         R10 1
       59 MUL                              R11 R1 R7
       60 CALL                             R10 1 -1
       61 NAMECALL                         R8 R6 K12 ["PivotTo"]
       63 CALL                             R8 -1 0
       64 FORGLOOP                         R3 2 ; [-7]
       66 RETURN                           R0 0
       67 MOVE                             R5 R1
       68 NAMECALL                         R3 R0 K13 ["_transformModelPivots"]
       70 CALL                             R3 2 0
       71 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_moving"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 SETTABLEKS                       R1 R0 K3 ["_lastTransform"]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R5 K7 [Enum.BulkMoveMode.FireCFrameChanged]
       11 NAMECALL                         R2 R0 K8 ["_transformToImpl"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["_mainPart"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETUPVAL                         R6 5
        8 NAMECALL                         R0 R0 K1 ["IKMoveTo"]
       10 CALL                             R0 6 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["_moving"]
        2 FASTCALL1                        ASSERT R6 ; [+2]
        3 GETIMPORT                        R5 K2 [assert]
        5 CALL                             R5 1 0
        6 GETTABLEKS                       R6 R0 K3 ["_parts"]
        8 LENGTH                           R5 R6
        9 JUMPIFNOTEQKN                    R5 K4 [0] ; [+6]
       11 MOVE                             R7 R1
       12 NAMECALL                         R5 R0 K5 ["transformTo"]
       14 CALL                             R5 2 0
       15 RETURN                           R1 1
       16 NAMECALL                         R5 R0 K6 ["_installMovementWelds"]
       18 CALL                             R5 1 0
       19 GETTABLEKS                       R6 R0 K7 ["_originalMainPartCFrame"]
       21 MUL                              R5 R1 R6
       22 GETIMPORT                        R6 K9 [pcall]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CALL                             R6 1 0
       32 GETTABLEKS                       R7 R0 K10 ["_mainPart"]
       34 GETTABLEKS                       R6 R7 K11 ["CFrame"]
       36 GETTABLEKS                       R8 R0 K7 ["_originalMainPartCFrame"]
       38 NAMECALL                         R8 R8 K12 ["Inverse"]
       40 CALL                             R8 1 1
       41 MUL                              R7 R6 R8
       42 MOVE                             R10 R7
       43 NAMECALL                         R8 R0 K13 ["_transformModelPivots"]
       45 CALL                             R8 2 0
       46 NAMECALL                         R8 R0 K14 ["_flushNonDraggedGeometryCache"]
       48 CALL                             R8 1 0
       49 RETURN                           R7 1

PROTO_20:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 [0.85]
        2 LOADK                            R7 K1 [0.4]
        3 MOVE                             R8 R2
        4 NAMECALL                         R3 R0 K2 ["transformToWithIk"]
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_21:
        0 MOVE                             R5 R1
        1 LOADK                            R6 K0 [0.4]
        2 LOADK                            R7 K1 [0.85]
        3 MOVE                             R8 R2
        4 NAMECALL                         R3 R0 K2 ["transformToWithIk"]
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_moving"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 GETIMPORT                        R2 K4 [pcall]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["ArePartsTouchingOthers"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R5 R0 K6 ["_workspaceParts"]
       14 ORK                              R6 R1 K7 [0.001]
       15 CALL                             R2 4 2
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R3 1
       18 LOADB                            R4 1
       19 RETURN                           R4 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_moving"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K0 ["_moving"]
        9 GETTABLEKS                       R1 R0 K3 ["_mainPart"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETTABLEKS                       R1 R0 K3 ["_mainPart"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K4 ["Parent"]
       17 GETTABLEKS                       R1 R0 K5 ["_reenableJoints"]
       19 JUMPIFNOT                        R1 ; [+14]
       20 GETIMPORT                        R1 K7 [pairs]
       22 GETTABLEKS                       R2 R0 K5 ["_reenableJoints"]
       24 CALL                             R1 1 3
       25 FORGPREP_NEXT                    R1
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R4 K8 ["Enabled"]
       29 FORGLOOP                         R1 2 ; [-4]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K5 ["_reenableJoints"]
       34 GETTABLEKS                       R1 R0 K9 ["_adjustAndReenableMotor6Ds"]
       36 JUMPIFNOT                        R1 ; [+53]
       37 GETIMPORT                        R1 K7 [pairs]
       39 GETTABLEKS                       R2 R0 K9 ["_adjustAndReenableMotor6Ds"]
       41 CALL                             R1 1 3
       42 FORGPREP_NEXT                    R1
       43 GETTABLEKS                       R7 R0 K10 ["_partSet"]
       45 GETTABLEKS                       R8 R4 K11 ["Part0"]
       47 GETTABLE                         R6 R7 R8
       48 JUMPIFNOT                        R6 ; [+17]
       49 GETTABLEKS                       R6 R4 K11 ["Part0"]
       51 GETTABLEKS                       R9 R6 K12 ["CFrame"]
       53 NAMECALL                         R9 R9 K13 ["Inverse"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R11 R0 K14 ["_originalCFrameMap"]
       58 GETTABLE                         R10 R11 R6
       59 MUL                              R8 R9 R10
       60 GETTABLEKS                       R9 R4 K15 ["C0"]
       62 MUL                              R7 R8 R9
       63 SETTABLEKS                       R7 R4 K15 ["C0"]
       65 JUMP                             ; [+16]
       66 GETTABLEKS                       R6 R4 K16 ["Part1"]
       68 GETTABLEKS                       R9 R6 K12 ["CFrame"]
       70 NAMECALL                         R9 R9 K13 ["Inverse"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R11 R0 K14 ["_originalCFrameMap"]
       75 GETTABLE                         R10 R11 R6
       76 MUL                              R8 R9 R10
       77 GETTABLEKS                       R9 R4 K17 ["C1"]
       79 MUL                              R7 R8 R9
       80 SETTABLEKS                       R7 R4 K17 ["C1"]
       82 LOADB                            R6 1
       83 SETTABLEKS                       R6 R4 K8 ["Enabled"]
       85 FORGLOOP                         R1 2 ; [-43]
       87 LOADNIL                          R1
       88 SETTABLEKS                       R1 R0 K9 ["_adjustAndReenableMotor6Ds"]
       90 NEWTABLE                         R1 0 0
       92 SETTABLEKS                       R1 R0 K18 ["_facesToHighlightSet"]
       94 GETTABLEKS                       R1 R0 K19 ["_temporaryJoints"]
       96 JUMPIFNOT                        R1 ; [+15]
       97 GETIMPORT                        R1 K21 [ipairs]
       99 GETTABLEKS                       R2 R0 K19 ["_temporaryJoints"]
      101 CALL                             R1 1 3
      102 FORGPREP_INEXT                   R1
      103 NAMECALL                         R6 R5 K22 ["Destroy"]
      105 CALL                             R6 1 0
      106 FORGLOOP                         R1 2 [inext] ; [-4]
      108 NEWTABLE                         R1 0 0
      110 SETTABLEKS                       R1 R0 K19 ["_temporaryJoints"]
      112 GETIMPORT                        R1 K7 [pairs]
      114 GETTABLEKS                       R2 R0 K23 ["_toUnanchor"]
      116 CALL                             R1 1 3
      117 FORGPREP_NEXT                    R1
      118 LOADB                            R6 0
      119 SETTABLEKS                       R6 R4 K24 ["Anchored"]
      121 FORGLOOP                         R1 2 ; [-4]
      123 NEWTABLE                         R1 0 0
      125 SETTABLEKS                       R1 R0 K23 ["_toUnanchor"]
      127 GETTABLEKS                       R1 R0 K25 ["_bulkMoveParts"]
      129 JUMPIFNOT                        R1 ; [+18]
      130 LOADNIL                          R1
      131 SETTABLEKS                       R1 R0 K26 ["_moveWithCFrameChangeParts"]
      133 LOADNIL                          R1
      134 SETTABLEKS                       R1 R0 K27 ["_moveWithCFrameChangeOriginalCFrames"]
      136 LOADNIL                          R1
      137 SETTABLEKS                       R1 R0 K28 ["_moveWithCFrameChangeTargetCFrames"]
      139 LOADNIL                          R1
      140 SETTABLEKS                       R1 R0 K25 ["_bulkMoveParts"]
      142 LOADNIL                          R1
      143 SETTABLEKS                       R1 R0 K29 ["_bulkMoveOriginalCFrames"]
      145 LOADNIL                          R1
      146 SETTABLEKS                       R1 R0 K30 ["_bulkMoveTargetCFrames"]
      148 GETTABLEKS                       R1 R0 K31 ["_pivotToMapping"]
      150 JUMPIFNOT                        R1 ; [+3]
      151 LOADNIL                          R1
      152 SETTABLEKS                       R1 R0 K31 ["_pivotToMapping"]
      154 GETUPVAL                         R1 0
      155 CALL                             R1 0 1
      156 JUMPIFNOT                        R1 ; [+3]
      157 LOADNIL                          R1
      158 SETTABLEKS                       R1 R0 K32 ["_originalModelPivotMap"]
      160 RETURN                           R0 0

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R4 R0 K0 ["_nearbyGeometry"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+13]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R6 K3 [Vector3.new]
        9 CALL                             R6 0 1
       10 MOVE                             R7 R2
       11 CALL                             R4 3 1
       12 MOVE                             R3 R4
       13 GETTABLEKS                       R4 R0 K0 ["_nearbyGeometry"]
       15 SETTABLE                         R3 R4 R1
       16 MOVE                             R4 R3
       17 RETURN                           R3 1

PROTO_26:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_nearbyGeometry"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETTABLEKS                       R7 R0 K3 ["_partSet"]
        8 GETTABLE                         R6 R7 R4
        9 JUMPIF                           R6 ; [+4]
       10 GETTABLEKS                       R6 R0 K2 ["_nearbyGeometry"]
       12 LOADNIL                          R7
       13 SETTABLE                         R7 R6 R4
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R5 R2 K10 ["Flags"]
       23 GETTABLEKS                       R4 R5 K11 ["getFFlagDraggerEditProcModels"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R6 R2 K10 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["getFFlagDraggerFixAttachmentModelDoubleMovement"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R7 R2 K13 ["Utility"]
       37 GETTABLEKS                       R6 R7 K14 ["getGeometry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R8 R2 K13 ["Utility"]
       44 GETTABLEKS                       R7 R8 K15 ["JointPairs"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R9 R2 K13 ["Utility"]
       51 GETTABLEKS                       R8 R9 K16 ["JointUtil"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R10 R2 K13 ["Utility"]
       58 GETTABLEKS                       R9 R10 K17 ["fixSlightlyOffgridOrientation"]
       60 CALL                             R8 1 1
       61 MOVE                             R9 R3
       62 CALL                             R9 0 1
       63 DUPCLOSURE                       R10 K18 [PROTO_0]
       64 NEWTABLE                         R11 32 0
       66 SETTABLEKS                       R11 R11 K19 ["__index"]
       68 DUPCLOSURE                       R12 K20 [PROTO_1]
       69 CAPTURE                          VAL R11
       70 SETTABLEKS                       R12 R11 K21 ["new"]
       72 DUPCLOSURE                       R12 K22 [PROTO_2]
       73 SETTABLEKS                       R12 R11 K23 ["getIgnorePart"]
       75 DUPCLOSURE                       R12 K24 [PROTO_3]
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R12 R11 K25 ["setDragged"]
       80 DUPCLOSURE                       R12 K26 [PROTO_4]
       81 SETTABLEKS                       R12 R11 K27 ["_setupRootMappingMove"]
       83 DUPCLOSURE                       R12 K28 [PROTO_5]
       84 CAPTURE                          VAL R1
       85 SETTABLEKS                       R12 R11 K29 ["_setupBulkMove"]
       87 DUPCLOSURE                       R12 K30 [PROTO_6]
       88 SETTABLEKS                       R12 R11 K31 ["_initPartSet"]
       90 DUPCLOSURE                       R12 K32 [PROTO_7]
       91 SETTABLEKS                       R12 R11 K33 ["_setupGeometryTracking"]
       93 DUPCLOSURE                       R12 K34 [PROTO_8]
       94 SETTABLEKS                       R12 R11 K35 ["_ensureGeometryTrackingHasBeenSetup"]
       96 DUPCLOSURE                       R12 K36 [PROTO_9]
       97 SETTABLEKS                       R12 R11 K37 ["_createMainPart"]
       99 DUPCLOSURE                       R12 K38 [PROTO_10]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R12 R11 K39 ["_setupMainPart"]
      104 DUPCLOSURE                       R12 K40 [PROTO_11]
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R12 R11 K41 ["_prepareJoints"]
      108 DUPCLOSURE                       R12 K42 [PROTO_12]
      109 SETTABLEKS                       R12 R11 K43 ["_installMovementWelds"]
      111 DUPCLOSURE                       R12 K44 [PROTO_14]
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R12 R11 K45 ["computeJointPairs"]
      116 DUPCLOSURE                       R12 K46 [PROTO_15]
      117 SETTABLEKS                       R12 R11 K47 ["_transformModelPivots"]
      119 DUPCLOSURE                       R12 K48 [PROTO_16]
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R12 R11 K49 ["_transformToImpl"]
      124 DUPCLOSURE                       R12 K50 [PROTO_17]
      125 SETTABLEKS                       R12 R11 K51 ["transformTo"]
      127 DUPCLOSURE                       R12 K52 [PROTO_19]
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R12 R11 K53 ["transformToWithIk"]
      131 DUPCLOSURE                       R12 K54 [PROTO_20]
      132 SETTABLEKS                       R12 R11 K55 ["moveToWithIk"]
      134 DUPCLOSURE                       R12 K56 [PROTO_21]
      135 SETTABLEKS                       R12 R11 K57 ["rotateToWithIk"]
      137 DUPCLOSURE                       R12 K58 [PROTO_22]
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R12 R11 K59 ["isIntersectingOthers"]
      141 DUPCLOSURE                       R12 K60 [PROTO_23]
      142 CAPTURE                          VAL R4
      143 SETTABLEKS                       R12 R11 K61 ["commit"]
      145 DUPCLOSURE                       R12 K62 [PROTO_24]
      146 DUPCLOSURE                       R13 K63 [PROTO_25]
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R13 R11 K64 ["_getGeometry"]
      150 DUPCLOSURE                       R13 K65 [PROTO_26]
      151 SETTABLEKS                       R13 R11 K66 ["_flushNonDraggedGeometryCache"]
      153 RETURN                           R11 1
