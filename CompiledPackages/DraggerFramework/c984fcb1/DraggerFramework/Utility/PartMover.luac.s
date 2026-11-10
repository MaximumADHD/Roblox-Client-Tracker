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
       13 JUMPIFNOT                        R14 ; [+10]
       14 GETTABLEKS                       R14 R13 K6 ["AssemblyRootPart"]
       16 JUMPIFNOT                        R14 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       19 MOVE                             R15 R8
       20 MOVE                             R16 R13
       21 GETIMPORT                        R14 K8 [table.insert]
       23 CALL                             R14 2 0
       24 FORGLOOP                         R9 2 [inext] ; [-16]
       26 SETTABLEKS                       R8 R0 K9 ["_workspaceParts"]
       28 GETTABLEKS                       R11 R0 K10 ["_moving"]
       30 NOT                              R10 R11
       31 FASTCALL2K                       ASSERT R10 K11 ; [+4]
       33 LOADK                            R11 K11 ["Already moving"]
       34 GETIMPORT                        R9 K13 [assert]
       36 CALL                             R9 2 0
       37 LOADB                            R9 1
       38 SETTABLEKS                       R9 R0 K10 ["_moving"]
       40 SETTABLEKS                       R2 R0 K14 ["_originalCFrameMap"]
       42 GETUPVAL                         R9 1
       43 JUMPIFNOT                        R9 ; [+24]
       44 LOADN                            R9 0
       45 MOVE                             R10 R6
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 FORGPREP                         R10
       49 LOADK                            R17 K15 ["ProceduralModel"]
       50 NAMECALL                         R15 R14 K16 ["IsA"]
       52 CALL                             R15 2 1
       53 JUMPIFNOT                        R15 ; [+1]
       54 ADDK                             R9 R9 K17 [1]
       55 FORGLOOP                         R10 2 ; [-7]
       57 LENGTH                           R10 R1
       58 JUMPIFNOTEQKN                    R10 K18 [0] ; [+17]
       60 JUMPIFNOTEQKN                    R9 K18 [0] ; [+15]
       62 NEWTABLE                         R10 0 0
       64 SETTABLEKS                       R10 R0 K19 ["_parts"]
       66 RETURN                           R0 0
       67 JUMP                             ; [+8]
       68 LENGTH                           R9 R1
       69 JUMPIFNOTEQKN                    R9 K18 [0] ; [+6]
       71 NEWTABLE                         R9 0 0
       73 SETTABLEKS                       R9 R0 K19 ["_parts"]
       75 RETURN                           R0 0
       76 MOVE                             R11 R1
       77 NAMECALL                         R9 R0 K20 ["_initPartSet"]
       79 CALL                             R9 2 0
       80 MOVE                             R9 R4
       81 JUMPIF                           R9 ; [+4]
       82 FASTCALL                         VECTOR ; [+2]
       83 GETIMPORT                        R9 K23 [Vector3.new]
       85 CALL                             R9 0 1
       86 SETTABLEKS                       R9 R0 K24 ["_customCenter"]
       88 MOVE                             R11 R1
       89 MOVE                             R12 R3
       90 MOVE                             R13 R7
       91 NAMECALL                         R9 R0 K25 ["_prepareJoints"]
       93 CALL                             R9 4 0
       94 LOADB                            R9 0
       95 SETTABLEKS                       R9 R0 K26 ["_hasSetupGeometryTracking"]
       97 JUMPIFNOT                        R7 ; [+18]
       98 MOVE                             R11 R1
       99 MOVE                             R12 R7
      100 NEWTABLE                         R14 0 0
      102 GETIMPORT                        R15 K28 [pairs]
      104 MOVE                             R16 R5
      105 CALL                             R15 1 3
      106 FORGPREP_NEXT                    R15
      107 LOADB                            R20 1
      108 SETTABLE                         R20 R14 R19
      109 FORGLOOP                         R15 2 ; [-3]
      111 MOVE                             R13 R14
      112 NAMECALL                         R9 R0 K29 ["_setupRootMappingMove"]
      114 CALL                             R9 4 0
      115 JUMP                             ; [+16]
      116 MOVE                             R11 R1
      117 NEWTABLE                         R13 0 0
      119 GETIMPORT                        R14 K28 [pairs]
      121 MOVE                             R15 R5
      122 CALL                             R14 1 3
      123 FORGPREP_NEXT                    R14
      124 LOADB                            R19 1
      125 SETTABLE                         R19 R13 R18
      126 FORGLOOP                         R14 2 ; [-3]
      128 MOVE                             R12 R13
      129 NAMECALL                         R9 R0 K30 ["_setupBulkMove"]
      131 CALL                             R9 3 0
      132 NEWTABLE                         R9 0 0
      134 GETIMPORT                        R10 K4 [ipairs]
      136 MOVE                             R11 R6
      137 CALL                             R10 1 3
      138 FORGPREP_INEXT                   R10
      139 NAMECALL                         R15 R14 K31 ["GetPivot"]
      141 CALL                             R15 1 1
      142 SETTABLE                         R15 R9 R14
      143 FORGLOOP                         R10 2 [inext] ; [-5]
      145 SETTABLEKS                       R9 R0 K32 ["_originalModelPivotMap"]
      147 SETTABLEKS                       R1 R0 K19 ["_parts"]
      149 LOADB                            R10 0
      150 SETTABLEKS                       R10 R0 K33 ["_hasMovementWelds"]
      152 RETURN                           R0 0

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
       15 JUMPIFNOT                        R13 ; [+11]
       16 GETTABLEKS                       R14 R12 K3 ["AssemblyRootPart"]
       18 OR                               R13 R14 R12
       19 JUMPIFNOTEQ                      R13 R12 ; [+7]
       21 LOADB                            R13 1
       22 SETTABLE                         R13 R3 R12
       23 SETTABLE                         R12 R6 R7
       24 GETTABLE                         R13 R4 R12
       25 SETTABLE                         R13 R5 R7
       26 ADDK                             R7 R7 K4 [1]
       27 FORGLOOP                         R8 2 [inext] ; [-14]
       29 NEWTABLE                         R8 0 0
       31 NEWTABLE                         R9 0 0
       33 LOADN                            R10 1
       34 GETIMPORT                        R11 K2 [ipairs]
       36 MOVE                             R12 R1
       37 CALL                             R11 1 3
       38 FORGPREP_INEXT                   R11
       39 GETTABLEKS                       R17 R15 K3 ["AssemblyRootPart"]
       41 OR                               R16 R17 R15
       42 GETTABLE                         R17 R3 R16
       43 JUMPIF                           R17 ; [+6]
       44 LOADB                            R17 1
       45 SETTABLE                         R17 R3 R16
       46 SETTABLE                         R16 R8 R10
       47 GETTABLE                         R17 R4 R16
       48 SETTABLE                         R17 R9 R10
       49 ADDK                             R10 R10 K4 [1]
       50 FORGLOOP                         R11 2 [inext] ; [-12]
       52 GETUPVAL                         R11 0
       53 NAMECALL                         R11 R11 K5 ["IsRunning"]
       55 CALL                             R11 1 1
       56 JUMPIFNOT                        R11 ; [+17]
       57 GETIMPORT                        R11 K7 [pairs]
       59 MOVE                             R12 R3
       60 CALL                             R11 1 3
       61 FORGPREP_NEXT                    R11
       62 GETTABLEKS                       R16 R14 K8 ["Anchored"]
       64 JUMPIF                           R16 ; [+7]
       65 LOADB                            R16 1
       66 SETTABLEKS                       R16 R14 K8 ["Anchored"]
       68 GETTABLEKS                       R16 R0 K9 ["_toUnanchor"]
       70 LOADB                            R17 1
       71 SETTABLE                         R17 R16 R14
       72 FORGLOOP                         R11 2 ; [-11]
       74 SETTABLEKS                       R6 R0 K10 ["_moveWithCFrameChangeParts"]
       76 SETTABLEKS                       R5 R0 K11 ["_moveWithCFrameChangeOriginalCFrames"]
       78 GETIMPORT                        R11 K14 [table.create]
       80 LENGTH                           R12 R6
       81 CALL                             R11 1 1
       82 SETTABLEKS                       R11 R0 K15 ["_moveWithCFrameChangeTargetCFrames"]
       84 SETTABLEKS                       R8 R0 K16 ["_bulkMoveParts"]
       86 SETTABLEKS                       R9 R0 K17 ["_bulkMoveOriginalCFrames"]
       88 GETIMPORT                        R11 K14 [table.create]
       90 LENGTH                           R12 R8
       91 CALL                             R11 1 1
       92 SETTABLEKS                       R11 R0 K18 ["_bulkMoveTargetCFrames"]
       94 RETURN                           R0 0

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
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Already set up geometry tracking"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K4 ["_nearbyGeometry"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K5 ["_rootPartSet"]
       17 GETIMPORT                        R1 K7 [ipairs]
       19 GETTABLEKS                       R2 R0 K8 ["_workspaceParts"]
       21 CALL                             R1 1 3
       22 FORGPREP_INEXT                   R1
       23 GETTABLEKS                       R6 R5 K9 ["AssemblyRootPart"]
       25 JUMPIFNOT                        R6 ; [+4]
       26 GETTABLEKS                       R7 R0 K5 ["_rootPartSet"]
       28 LOADB                            R8 1
       29 SETTABLE                         R8 R7 R6
       30 FORGLOOP                         R1 2 [inext] ; [-8]
       32 RETURN                           R0 0

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
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K7 ["Terrain"]
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
       12 GETTABLEKS                       R4 R0 K0 ["_reenableJoints"]
       14 GETTABLEKS                       R5 R0 K1 ["_adjustAndReenableMotor6Ds"]
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R6 R3 K3 ["PartToRootMap"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 GETIMPORT                        R7 K5 [ipairs]
       23 MOVE                             R8 R1
       24 CALL                             R7 1 3
       25 FORGPREP_INEXT                   R7
       26 GETTABLEKS                       R12 R0 K2 ["_alreadyConnectedToSets"]
       28 NEWTABLE                         R13 0 0
       30 SETTABLE                         R13 R12 R11
       31 GETIMPORT                        R12 K5 [ipairs]
       33 NAMECALL                         R13 R11 K6 ["GetJoints"]
       35 CALL                             R13 1 -1
       36 CALL                             R12 -1 3
       37 FORGPREP_INEXT                   R12
       38 LOADK                            R19 K7 ["JointInstance"]
       39 NAMECALL                         R17 R16 K8 ["IsA"]
       41 CALL                             R17 2 1
       42 JUMPIFNOT                        R17 ; [+48]
       43 GETUPVAL                         R17 0
       44 GETTABLEKS                       R17 R17 K9 ["getJointInstanceCounterpart"]
       46 MOVE                             R18 R16
       47 MOVE                             R19 R11
       48 CALL                             R17 2 1
       49 JUMPIFNOT                        R2 ; [+35]
       50 GETTABLEKS                       R19 R0 K10 ["_partSet"]
       52 GETTABLE                         R18 R19 R17
       53 JUMPIFNOT                        R18 ; [+11]
       54 JUMPIFNOT                        R6 ; [+132]
       55 GETTABLE                         R18 R6 R11
       56 GETTABLE                         R19 R6 R17
       57 JUMPIFEQ                         R18 R19 ; [+129]
       59 LOADB                            R18 0
       60 SETTABLEKS                       R18 R16 K11 ["Enabled"]
       62 LOADB                            R18 1
       63 SETTABLE                         R18 R4 R16
       64 JUMP                             ; [+122]
       65 LOADK                            R20 K12 ["Motor6D"]
       66 NAMECALL                         R18 R16 K8 ["IsA"]
       68 CALL                             R18 2 1
       69 JUMPIFNOT                        R18 ; [+11]
       70 LOADB                            R18 0
       71 SETTABLEKS                       R18 R16 K11 ["Enabled"]
       73 LOADB                            R18 1
       74 SETTABLE                         R18 R5 R16
       75 GETTABLEKS                       R19 R0 K2 ["_alreadyConnectedToSets"]
       77 GETTABLE                         R18 R19 R11
       78 LOADB                            R19 1
       79 SETTABLE                         R19 R18 R17
       80 JUMP                             ; [+106]
       81 LOADNIL                          R18
       82 SETTABLEKS                       R18 R16 K13 ["Parent"]
       84 JUMP                             ; [+102]
       85 GETTABLEKS                       R19 R0 K2 ["_alreadyConnectedToSets"]
       87 GETTABLE                         R18 R19 R11
       88 LOADB                            R19 1
       89 SETTABLE                         R19 R18 R17
       90 JUMP                             ; [+96]
       91 LOADK                            R19 K14 ["Constraint"]
       92 NAMECALL                         R17 R16 K8 ["IsA"]
       94 CALL                             R17 2 1
       95 JUMPIFNOT                        R17 ; [+29]
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R17 R17 K15 ["getConstraintCounterpart"]
       99 MOVE                             R18 R16
      100 MOVE                             R19 R11
      101 CALL                             R17 2 1
      102 JUMPIFNOT                        R17 ; [+84]
      103 GETTABLEKS                       R19 R0 K2 ["_alreadyConnectedToSets"]
      105 GETTABLE                         R18 R19 R11
      106 LOADB                            R19 1
      107 SETTABLE                         R19 R18 R17
      108 LOADK                            R20 K16 ["RigidConstraint"]
      109 NAMECALL                         R18 R16 K8 ["IsA"]
      111 CALL                             R18 2 1
      112 JUMPIFNOT                        R18 ; [+74]
      113 JUMPIFNOT                        R6 ; [+73]
      114 GETTABLE                         R18 R6 R17
      115 GETTABLE                         R19 R6 R11
      116 JUMPIFEQ                         R19 R18 ; [+70]
      118 JUMPIFNOT                        R18 ; [+68]
      119 LOADB                            R19 0
      120 SETTABLEKS                       R19 R16 K11 ["Enabled"]
      122 LOADB                            R19 1
      123 SETTABLE                         R19 R4 R16
      124 JUMP                             ; [+62]
      125 LOADK                            R19 K17 ["WeldConstraint"]
      126 NAMECALL                         R17 R16 K8 ["IsA"]
      128 CALL                             R17 2 1
      129 JUMPIFNOT                        R17 ; [+33]
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R17 R17 K18 ["getWeldConstraintCounterpart"]
      133 MOVE                             R18 R16
      134 MOVE                             R19 R11
      135 CALL                             R17 2 1
      136 GETTABLEKS                       R19 R0 K2 ["_alreadyConnectedToSets"]
      138 GETTABLE                         R18 R19 R11
      139 LOADB                            R19 1
      140 SETTABLE                         R19 R18 R17
      141 JUMPIFNOT                        R2 ; [+45]
      142 GETTABLEKS                       R19 R0 K10 ["_partSet"]
      144 GETTABLE                         R18 R19 R17
      145 JUMPIFNOT                        R18 ; [+11]
      146 JUMPIFNOT                        R6 ; [+40]
      147 GETTABLE                         R18 R6 R11
      148 GETTABLE                         R19 R6 R17
      149 JUMPIFEQ                         R18 R19 ; [+37]
      151 LOADB                            R18 0
      152 SETTABLEKS                       R18 R16 K11 ["Enabled"]
      154 LOADB                            R18 1
      155 SETTABLE                         R18 R4 R16
      156 JUMP                             ; [+30]
      157 LOADB                            R18 0
      158 SETTABLEKS                       R18 R16 K11 ["Enabled"]
      160 LOADB                            R18 1
      161 SETTABLE                         R18 R4 R16
      162 JUMP                             ; [+24]
      163 LOADK                            R19 K19 ["NoCollisionConstraint"]
      164 NAMECALL                         R17 R16 K8 ["IsA"]
      166 CALL                             R17 2 1
      167 JUMPIFNOT                        R17 ; [+12]
      168 GETUPVAL                         R17 0
      169 GETTABLEKS                       R17 R17 K20 ["getNoCollisionConstraintCounterpart"]
      171 MOVE                             R18 R16
      172 MOVE                             R19 R11
      173 CALL                             R17 2 1
      174 GETTABLEKS                       R19 R0 K2 ["_alreadyConnectedToSets"]
      176 GETTABLE                         R18 R19 R11
      177 LOADB                            R19 1
      178 SETTABLE                         R19 R18 R17
      179 JUMP                             ; [+7]
      180 GETIMPORT                        R17 K22 [error]
      182 LOADK                            R19 K23 ["Unexpected Joint Type: "]
      183 GETTABLEKS                       R20 R16 K24 ["ClassName"]
      185 CONCAT                           R18 R19 R20
      186 CALL                             R17 1 0
      187 FORGLOOP                         R12 2 [inext] ; [-150]
      189 FORGLOOP                         R7 2 [inext] ; [-164]
      191 RETURN                           R0 0

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
       16 GETTABLEKS                       R1 R0 K3 ["_temporaryJoints"]
       18 GETTABLEKS                       R2 R0 K4 ["_originalMainPartCFrame"]
       20 NAMECALL                         R2 R2 K5 ["Inverse"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K7 [ipairs]
       25 GETTABLEKS                       R4 R0 K8 ["_parts"]
       27 CALL                             R3 1 3
       28 FORGPREP_INEXT                   R3
       29 GETIMPORT                        R8 K11 [Instance.new]
       31 LOADK                            R9 K12 ["Weld"]
       32 CALL                             R8 1 1
       33 LOADB                            R9 0
       34 SETTABLEKS                       R9 R8 K13 ["Archivable"]
       36 LOADK                            R9 K14 ["Temp Movement Weld"]
       37 SETTABLEKS                       R9 R8 K15 ["Name"]
       39 GETTABLEKS                       R9 R0 K16 ["_mainPart"]
       41 SETTABLEKS                       R9 R8 K17 ["Part0"]
       43 SETTABLEKS                       R7 R8 K18 ["Part1"]
       45 GETTABLEKS                       R10 R7 K19 ["CFrame"]
       47 MUL                              R9 R2 R10
       48 SETTABLEKS                       R9 R8 K20 ["C0"]
       50 GETTABLEKS                       R9 R0 K16 ["_mainPart"]
       52 SETTABLEKS                       R9 R8 K21 ["Parent"]
       54 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       56 MOVE                             R10 R1
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K24 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R3 2 [inext] ; [-33]
       63 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_originalCFrameMap"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K1 ["_getGeometry"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_moving"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Not moving yet"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R2 R0 K4 ["_ensureGeometryTrackingHasBeenSetup"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["new"]
       14 GETTABLEKS                       R3 R0 K6 ["_parts"]
       16 GETTABLEKS                       R4 R0 K7 ["_partSet"]
       18 GETTABLEKS                       R5 R0 K8 ["_rootPartSet"]
       20 MOVE                             R6 R1
       21 GETTABLEKS                       R7 R0 K9 ["_alreadyConnectedToSets"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R0
       25 CALL                             R2 6 1
       26 GETUPVAL                         R3 1
       27 NAMECALL                         R3 R3 K10 ["IsRunning"]
       29 CALL                             R3 1 1
       30 JUMPIFNOT                        R3 ; [+3]
       31 NAMECALL                         R3 R0 K11 ["_flushNonDraggedGeometryCache"]
       33 CALL                             R3 1 0
       34 RETURN                           R2 1

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
        2 JUMPIFNOT                        R3 ; [+46]
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
       25 GETTABLEKS                       R5 R0 K4 ["_moveWithCFrameChangeParts"]
       27 GETTABLEKS                       R3 R0 K5 ["_moveWithCFrameChangeTargetCFrames"]
       29 GETTABLEKS                       R4 R0 K6 ["_moveWithCFrameChangeOriginalCFrames"]
       31 LOADN                            R8 1
       32 LENGTH                           R6 R5
       33 LOADN                            R7 1
       34 FORNPREP                         R6
       35 GETUPVAL                         R9 1
       36 GETTABLE                         R11 R4 R8
       37 MUL                              R10 R1 R11
       38 CALL                             R9 1 1
       39 SETTABLE                         R9 R3 R8
       40 FORNLOOP                         R6
       41 GETUPVAL                         R6 0
       42 MOVE                             R8 R5
       43 MOVE                             R9 R3
       44 GETIMPORT                        R10 K10 [Enum.BulkMoveMode.FireAllEvents]
       46 NAMECALL                         R6 R6 K3 ["BulkMoveTo"]
       48 CALL                             R6 4 0
       49 GETTABLEKS                       R3 R0 K11 ["_pivotToMapping"]
       51 JUMPIFNOT                        R3 ; [+14]
       52 GETTABLEKS                       R3 R0 K11 ["_pivotToMapping"]
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 FORGPREP                         R3
       57 GETUPVAL                         R10 1
       58 MUL                              R11 R1 R7
       59 CALL                             R10 1 -1
       60 NAMECALL                         R8 R6 K12 ["PivotTo"]
       62 CALL                             R8 -1 0
       63 FORGLOOP                         R3 2 ; [-7]
       65 RETURN                           R0 0
       66 MOVE                             R5 R1
       67 NAMECALL                         R3 R0 K13 ["_transformModelPivots"]
       69 CALL                             R3 2 0
       70 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_moving"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Not moving yet"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K4 ["_lastTransform"]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R5 K8 [Enum.BulkMoveMode.FireCFrameChanged]
       13 NAMECALL                         R2 R0 K9 ["_transformToImpl"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_mainPart"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETUPVAL                         R6 5
        8 NAMECALL                         R0 R0 K1 ["IKMoveTo"]
       10 CALL                             R0 6 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R6 R0 K0 ["_moving"]
        2 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        4 LOADK                            R7 K1 ["Not moving yet"]
        5 GETIMPORT                        R5 K3 [assert]
        7 CALL                             R5 2 0
        8 GETTABLEKS                       R6 R0 K4 ["_parts"]
       10 LENGTH                           R5 R6
       11 JUMPIFNOTEQKN                    R5 K5 [0] ; [+6]
       13 MOVE                             R7 R1
       14 NAMECALL                         R5 R0 K6 ["transformTo"]
       16 CALL                             R5 2 0
       17 RETURN                           R1 1
       18 NAMECALL                         R5 R0 K7 ["_installMovementWelds"]
       20 CALL                             R5 1 0
       21 GETTABLEKS                       R6 R0 K8 ["_originalMainPartCFrame"]
       23 MUL                              R5 R1 R6
       24 GETIMPORT                        R6 K10 [pcall]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CALL                             R6 1 0
       34 GETTABLEKS                       R6 R0 K11 ["_mainPart"]
       36 GETTABLEKS                       R6 R6 K12 ["CFrame"]
       38 GETTABLEKS                       R8 R0 K8 ["_originalMainPartCFrame"]
       40 NAMECALL                         R8 R8 K13 ["Inverse"]
       42 CALL                             R8 1 1
       43 MUL                              R7 R6 R8
       44 MOVE                             R10 R7
       45 NAMECALL                         R8 R0 K14 ["_transformModelPivots"]
       47 CALL                             R8 2 0
       48 NAMECALL                         R8 R0 K15 ["_flushNonDraggedGeometryCache"]
       50 CALL                             R8 1 0
       51 RETURN                           R7 1

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
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Not moving yet"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R2 K5 [pcall]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["ArePartsTouchingOthers"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R0 K7 ["_workspaceParts"]
       16 ORK                              R6 R1 K8 [0.001]
       17 CALL                             R2 4 2
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R3 1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_moving"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["Not moving yet"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["_moving"]
       11 GETTABLEKS                       R1 R0 K4 ["_mainPart"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETTABLEKS                       R1 R0 K4 ["_mainPart"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["Parent"]
       19 GETTABLEKS                       R1 R0 K6 ["_reenableJoints"]
       21 JUMPIFNOT                        R1 ; [+14]
       22 GETIMPORT                        R1 K8 [pairs]
       24 GETTABLEKS                       R2 R0 K6 ["_reenableJoints"]
       26 CALL                             R1 1 3
       27 FORGPREP_NEXT                    R1
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R4 K9 ["Enabled"]
       31 FORGLOOP                         R1 2 ; [-4]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K6 ["_reenableJoints"]
       36 GETTABLEKS                       R1 R0 K10 ["_adjustAndReenableMotor6Ds"]
       38 JUMPIFNOT                        R1 ; [+53]
       39 GETIMPORT                        R1 K8 [pairs]
       41 GETTABLEKS                       R2 R0 K10 ["_adjustAndReenableMotor6Ds"]
       43 CALL                             R1 1 3
       44 FORGPREP_NEXT                    R1
       45 GETTABLEKS                       R7 R0 K11 ["_partSet"]
       47 GETTABLEKS                       R8 R4 K12 ["Part0"]
       49 GETTABLE                         R6 R7 R8
       50 JUMPIFNOT                        R6 ; [+17]
       51 GETTABLEKS                       R6 R4 K12 ["Part0"]
       53 GETTABLEKS                       R9 R6 K13 ["CFrame"]
       55 NAMECALL                         R9 R9 K14 ["Inverse"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R11 R0 K15 ["_originalCFrameMap"]
       60 GETTABLE                         R10 R11 R6
       61 MUL                              R8 R9 R10
       62 GETTABLEKS                       R9 R4 K16 ["C0"]
       64 MUL                              R7 R8 R9
       65 SETTABLEKS                       R7 R4 K16 ["C0"]
       67 JUMP                             ; [+16]
       68 GETTABLEKS                       R6 R4 K17 ["Part1"]
       70 GETTABLEKS                       R9 R6 K13 ["CFrame"]
       72 NAMECALL                         R9 R9 K14 ["Inverse"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R11 R0 K15 ["_originalCFrameMap"]
       77 GETTABLE                         R10 R11 R6
       78 MUL                              R8 R9 R10
       79 GETTABLEKS                       R9 R4 K18 ["C1"]
       81 MUL                              R7 R8 R9
       82 SETTABLEKS                       R7 R4 K18 ["C1"]
       84 LOADB                            R6 1
       85 SETTABLEKS                       R6 R4 K9 ["Enabled"]
       87 FORGLOOP                         R1 2 ; [-43]
       89 LOADNIL                          R1
       90 SETTABLEKS                       R1 R0 K10 ["_adjustAndReenableMotor6Ds"]
       92 NEWTABLE                         R1 0 0
       94 SETTABLEKS                       R1 R0 K19 ["_facesToHighlightSet"]
       96 GETTABLEKS                       R1 R0 K20 ["_temporaryJoints"]
       98 JUMPIFNOT                        R1 ; [+15]
       99 GETIMPORT                        R1 K22 [ipairs]
      101 GETTABLEKS                       R2 R0 K20 ["_temporaryJoints"]
      103 CALL                             R1 1 3
      104 FORGPREP_INEXT                   R1
      105 NAMECALL                         R6 R5 K23 ["Destroy"]
      107 CALL                             R6 1 0
      108 FORGLOOP                         R1 2 [inext] ; [-4]
      110 NEWTABLE                         R1 0 0
      112 SETTABLEKS                       R1 R0 K20 ["_temporaryJoints"]
      114 GETIMPORT                        R1 K8 [pairs]
      116 GETTABLEKS                       R2 R0 K24 ["_toUnanchor"]
      118 CALL                             R1 1 3
      119 FORGPREP_NEXT                    R1
      120 LOADB                            R6 0
      121 SETTABLEKS                       R6 R4 K25 ["Anchored"]
      123 FORGLOOP                         R1 2 ; [-4]
      125 NEWTABLE                         R1 0 0
      127 SETTABLEKS                       R1 R0 K24 ["_toUnanchor"]
      129 GETTABLEKS                       R1 R0 K26 ["_bulkMoveParts"]
      131 JUMPIFNOT                        R1 ; [+18]
      132 LOADNIL                          R1
      133 SETTABLEKS                       R1 R0 K27 ["_moveWithCFrameChangeParts"]
      135 LOADNIL                          R1
      136 SETTABLEKS                       R1 R0 K28 ["_moveWithCFrameChangeOriginalCFrames"]
      138 LOADNIL                          R1
      139 SETTABLEKS                       R1 R0 K29 ["_moveWithCFrameChangeTargetCFrames"]
      141 LOADNIL                          R1
      142 SETTABLEKS                       R1 R0 K26 ["_bulkMoveParts"]
      144 LOADNIL                          R1
      145 SETTABLEKS                       R1 R0 K30 ["_bulkMoveOriginalCFrames"]
      147 LOADNIL                          R1
      148 SETTABLEKS                       R1 R0 K31 ["_bulkMoveTargetCFrames"]
      150 GETTABLEKS                       R1 R0 K32 ["_pivotToMapping"]
      152 JUMPIFNOT                        R1 ; [+3]
      153 LOADNIL                          R1
      154 SETTABLEKS                       R1 R0 K32 ["_pivotToMapping"]
      156 GETUPVAL                         R1 0
      157 CALL                             R1 0 1
      158 JUMPIFNOT                        R1 ; [+3]
      159 LOADNIL                          R1
      160 SETTABLEKS                       R1 R0 K33 ["_originalModelPivotMap"]
      162 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Flags"]
       23 GETTABLEKS                       R4 R4 K11 ["getFFlagDraggerEditProcModels"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K10 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["getFFlagDraggerFixAttachmentModelDoubleMovement"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Utility"]
       37 GETTABLEKS                       R6 R6 K14 ["getGeometry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R2 K13 ["Utility"]
       44 GETTABLEKS                       R7 R7 K15 ["JointPairs"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R8 R2 K13 ["Utility"]
       51 GETTABLEKS                       R8 R8 K16 ["JointUtil"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R2 K13 ["Utility"]
       58 GETTABLEKS                       R9 R9 K17 ["fixSlightlyOffgridOrientation"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K9 [require]
       63 GETTABLEKS                       R10 R2 K18 ["Types"]
       65 CALL                             R9 1 1
       66 MOVE                             R10 R3
       67 CALL                             R10 0 1
       68 DUPCLOSURE                       R11 K19 [PROTO_0]
       69 NEWTABLE                         R12 32 0
       71 SETTABLEKS                       R12 R12 K20 ["__index"]
       73 DUPCLOSURE                       R13 K21 [PROTO_1]
       74 CAPTURE                          VAL R12
       75 SETTABLEKS                       R13 R12 K22 ["new"]
       77 DUPCLOSURE                       R13 K23 [PROTO_2]
       78 SETTABLEKS                       R13 R12 K24 ["getIgnorePart"]
       80 DUPCLOSURE                       R13 K25 [PROTO_3]
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R13 R12 K26 ["setDragged"]
       85 DUPCLOSURE                       R13 K27 [PROTO_4]
       86 SETTABLEKS                       R13 R12 K28 ["_setupRootMappingMove"]
       88 DUPCLOSURE                       R13 K29 [PROTO_5]
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R13 R12 K30 ["_setupBulkMove"]
       92 DUPCLOSURE                       R13 K31 [PROTO_6]
       93 SETTABLEKS                       R13 R12 K32 ["_initPartSet"]
       95 DUPCLOSURE                       R13 K33 [PROTO_7]
       96 SETTABLEKS                       R13 R12 K34 ["_setupGeometryTracking"]
       98 DUPCLOSURE                       R13 K35 [PROTO_8]
       99 SETTABLEKS                       R13 R12 K36 ["_ensureGeometryTrackingHasBeenSetup"]
      101 DUPCLOSURE                       R13 K37 [PROTO_9]
      102 SETTABLEKS                       R13 R12 K38 ["_createMainPart"]
      104 DUPCLOSURE                       R13 K39 [PROTO_10]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R13 R12 K40 ["_setupMainPart"]
      109 DUPCLOSURE                       R13 K41 [PROTO_11]
      110 CAPTURE                          VAL R7
      111 SETTABLEKS                       R13 R12 K42 ["_prepareJoints"]
      113 DUPCLOSURE                       R13 K43 [PROTO_12]
      114 SETTABLEKS                       R13 R12 K44 ["_installMovementWelds"]
      116 DUPCLOSURE                       R13 K45 [PROTO_14]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R13 R12 K46 ["computeJointPairs"]
      121 DUPCLOSURE                       R13 K47 [PROTO_15]
      122 SETTABLEKS                       R13 R12 K48 ["_transformModelPivots"]
      124 DUPCLOSURE                       R13 K49 [PROTO_16]
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R8
      127 SETTABLEKS                       R13 R12 K50 ["_transformToImpl"]
      129 DUPCLOSURE                       R13 K51 [PROTO_17]
      130 SETTABLEKS                       R13 R12 K52 ["transformTo"]
      132 DUPCLOSURE                       R13 K53 [PROTO_19]
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R13 R12 K54 ["transformToWithIk"]
      136 DUPCLOSURE                       R13 K55 [PROTO_20]
      137 SETTABLEKS                       R13 R12 K56 ["moveToWithIk"]
      139 DUPCLOSURE                       R13 K57 [PROTO_21]
      140 SETTABLEKS                       R13 R12 K58 ["rotateToWithIk"]
      142 DUPCLOSURE                       R13 K59 [PROTO_22]
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R13 R12 K60 ["isIntersectingOthers"]
      146 DUPCLOSURE                       R13 K61 [PROTO_23]
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R13 R12 K62 ["commit"]
      150 DUPCLOSURE                       R13 K63 [PROTO_24]
      151 DUPCLOSURE                       R14 K64 [PROTO_25]
      152 CAPTURE                          VAL R5
      153 SETTABLEKS                       R14 R12 K65 ["_getGeometry"]
      155 DUPCLOSURE                       R14 K66 [PROTO_26]
      156 SETTABLEKS                       R14 R12 K67 ["_flushNonDraggedGeometryCache"]
      158 RETURN                           R12 1
