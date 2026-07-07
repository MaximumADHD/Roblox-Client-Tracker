PROTO_0:
        0 DUPTABLE                         R4 K7 [{"_draggerContext", "_ikTransformFunction", "_partMover", "_attachmentMover", "_motorData", "_animConstraintData", "_tool"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R4 K1 ["_ikTransformFunction"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K8 ["new"]
        8 CALL                             R5 0 1
        9 SETTABLEKS                       R5 R4 K2 ["_partMover"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K8 ["new"]
       14 CALL                             R5 0 1
       15 SETTABLEKS                       R5 R4 K3 ["_attachmentMover"]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K4 ["_motorData"]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K5 ["_animConstraintData"]
       25 SETTABLEKS                       R2 R4 K6 ["_tool"]
       27 GETUPVAL                         R5 2
       28 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       30 GETIMPORT                        R3 K10 [setmetatable]
       32 CALL                             R3 2 1
       33 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R2 R0
        2 GETTABLE                         R1 R0 R2
        3 RETURN                           R1 1
        4 LOADNIL                          R1
        5 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R3 R2 K0 ["getObjectsToTransform"]
        2 CALL                             R3 1 1
        3 LENGTH                           R5 R3
        4 LOADN                            R6 0
        5 JUMPIFLT                         R6 R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R0 K1 ["_hasPartsToMove"]
       11 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
       13 GETTABLEKS                       R4 R4 K3 ["AddWaypoint"]
       15 CALL                             R4 0 0
       16 SETTABLEKS                       R3 R0 K4 ["_partsToMove"]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R0 K5 ["_jointsToOrigPart1CFrame"]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R0 K6 ["_jointsToOrigBoneTransformedWorldCFrame"]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R0 K7 ["_jointsToOrigBoneCFrame"]
       30 NEWTABLE                         R4 0 0
       32 SETTABLEKS                       R4 R0 K8 ["_originalTransform"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K9 ["getJoints"]
       37 GETTABLEKS                       R5 R0 K4 ["_partsToMove"]
       39 GETTABLEKS                       R6 R0 K2 ["_draggerContext"]
       41 GETTABLEKS                       R6 R6 K10 ["RootInstance"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R0 K11 ["_joints"]
       46 GETIMPORT                        R4 K13 [ipairs]
       48 GETTABLEKS                       R5 R0 K11 ["_joints"]
       50 CALL                             R4 1 3
       51 FORGPREP_INEXT                   R4
       52 GETTABLEKS                       R9 R8 K14 ["Type"]
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
       57 GETTABLEKS                       R10 R10 K16 ["Bone"]
       59 JUMPIFNOTEQ                      R9 R10 ; [+23]
       61 GETTABLEKS                       R9 R0 K6 ["_jointsToOrigBoneTransformedWorldCFrame"]
       63 GETTABLEKS                       R10 R8 K16 ["Bone"]
       65 GETTABLEKS                       R10 R10 K17 ["TransformedWorldCFrame"]
       67 SETTABLE                         R10 R9 R8
       68 GETTABLEKS                       R9 R0 K7 ["_jointsToOrigBoneCFrame"]
       70 GETTABLEKS                       R10 R8 K16 ["Bone"]
       72 GETTABLEKS                       R10 R10 K18 ["CFrame"]
       74 SETTABLE                         R10 R9 R8
       75 GETTABLEKS                       R9 R0 K8 ["_originalTransform"]
       77 GETTABLEKS                       R10 R8 K16 ["Bone"]
       79 GETTABLEKS                       R10 R10 K19 ["Transform"]
       81 SETTABLE                         R10 R9 R8
       82 JUMP                             ; [+61]
       83 GETTABLEKS                       R9 R8 K14 ["Type"]
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
       88 GETTABLEKS                       R10 R10 K20 ["AnimationConstraint"]
       90 JUMPIFNOTEQ                      R9 R10 ; [+37]
       92 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
       94 GETTABLEKS                       R10 R8 K21 ["Part1"]
       96 GETTABLEKS                       R10 R10 K18 ["CFrame"]
       98 SETTABLE                         R10 R9 R8
       99 GETTABLEKS                       R9 R8 K22 ["Part0"]
      101 LOADK                            R11 K16 ["Bone"]
      102 NAMECALL                         R9 R9 K23 ["IsA"]
      104 CALL                             R9 2 1
      105 JUMPIFNOT                        R9 ; [+38]
      106 GETTABLEKS                       R9 R0 K6 ["_jointsToOrigBoneTransformedWorldCFrame"]
      108 GETTABLEKS                       R10 R8 K22 ["Part0"]
      110 GETTABLEKS                       R10 R10 K17 ["TransformedWorldCFrame"]
      112 SETTABLE                         R10 R9 R8
      113 GETTABLEKS                       R9 R0 K7 ["_jointsToOrigBoneCFrame"]
      115 GETTABLEKS                       R10 R8 K22 ["Part0"]
      117 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      119 SETTABLE                         R10 R9 R8
      120 GETTABLEKS                       R9 R0 K8 ["_originalTransform"]
      122 GETTABLEKS                       R10 R8 K22 ["Part0"]
      124 GETTABLEKS                       R10 R10 K19 ["Transform"]
      126 SETTABLE                         R10 R9 R8
      127 JUMP                             ; [+16]
      128 GETTABLEKS                       R9 R8 K14 ["Type"]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
      133 GETTABLEKS                       R10 R10 K24 ["Motor6D"]
      135 JUMPIFNOTEQ                      R9 R10 ; [+8]
      137 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
      139 GETTABLEKS                       R10 R8 K21 ["Part1"]
      141 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      143 SETTABLE                         R10 R9 R8
      144 FORGLOOP                         R4 2 [inext] ; [-93]
      146 NAMECALL                         R4 R0 K25 ["_shouldSolveConstraints"]
      148 CALL                             R4 1 1
      149 JUMPIFNOT                        R4 ; [+93]
      150 NAMECALL                         R4 R0 K26 ["_useFFlagUseIKControls"]
      152 CALL                             R4 1 1
      153 JUMPIFNOT                        R4 ; [+30]
      154 LENGTH                           R6 R1
      155 JUMPIFEQKN                       R6 K27 [1] ; [+2]
      157 LOADB                            R5 0 +1
      158 LOADB                            R5 1
      159 FASTCALL2K                       ASSERT R5 K28 ; [+4]
      161 LOADK                            R6 K28 ["Must have exactly one part selected to use IK controls"]
      162 GETIMPORT                        R4 K30 [assert]
      164 CALL                             R4 2 0
      165 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
      167 GETTABLEKS                       R4 R4 K31 ["ikControlManager"]
      169 GETTABLEN                        R6 R1 1
      170 NAMECALL                         R4 R4 K32 ["setupIKControl"]
      172 CALL                             R4 2 1
      173 JUMPIF                           R4 ; [+4]
      174 LOADNIL                          R5
      175 SETTABLEKS                       R5 R0 K33 ["_effectorCFrame"]
      177 RETURN                           R0 0
      178 GETTABLEN                        R5 R1 1
      179 GETTABLEKS                       R5 R5 K18 ["CFrame"]
      181 SETTABLEKS                       R5 R0 K33 ["_effectorCFrame"]
      183 JUMP                             ; [+59]
      184 GETUPVAL                         R4 2
      185 CALL                             R4 0 1
      186 JUMPIFNOT                        R4 ; [+9]
      187 GETTABLEKS                       R5 R0 K11 ["_joints"]
      189 LENGTH                           R4 R5
      190 JUMPIFNOTEQKN                    R4 K34 [0] ; [+5]
      192 LOADNIL                          R4
      193 SETTABLEKS                       R4 R0 K33 ["_effectorCFrame"]
      195 RETURN                           R0 0
      196 GETTABLEKS                       R5 R0 K11 ["_joints"]
      198 JUMPIFNOT                        R5 ; [+3]
      199 LENGTH                           R6 R5
      200 GETTABLE                         R4 R5 R6
      201 JUMP                             ; [+1]
      202 LOADNIL                          R4
      203 GETTABLEKS                       R4 R4 K21 ["Part1"]
      205 GETTABLEKS                       R4 R4 K18 ["CFrame"]
      207 SETTABLEKS                       R4 R0 K33 ["_effectorCFrame"]
      209 GETUPVAL                         R4 3
      210 GETTABLEKS                       R4 R4 K35 ["ikDragStart"]
      212 GETTABLEKS                       R5 R0 K2 ["_draggerContext"]
      214 GETTABLEKS                       R5 R5 K10 ["RootInstance"]
      216 GETTABLEN                        R6 R3 1
      217 GETTABLEKS                       R8 R0 K2 ["_draggerContext"]
      219 GETTABLEKS                       R8 R8 K36 ["IKMode"]
      221 GETUPVAL                         R9 1
      222 GETTABLEKS                       R9 R9 K37 ["IK_MODE"]
      224 GETTABLEKS                       R9 R9 K38 ["BodyPart"]
      226 JUMPIFEQ                         R8 R9 ; [+2]
      228 LOADB                            R7 0 +1
      229 LOADB                            R7 1
      230 GETTABLEKS                       R8 R0 K2 ["_draggerContext"]
      232 GETTABLEKS                       R8 R8 K39 ["StartingPose"]
      234 GETTABLEKS                       R9 R0 K2 ["_draggerContext"]
      236 GETTABLEKS                       R9 R9 K40 ["PinnedParts"]
      238 CALL                             R4 5 2
      239 SETTABLEKS                       R4 R0 K41 ["_motorData"]
      241 SETTABLEKS                       R5 R0 K42 ["_animConstraintData"]
      243 GETIMPORT                        R4 K44 [CFrame.new]
      245 CALL                             R4 0 1
      246 SETTABLEKS                       R4 R0 K45 ["_lastGoodGeometricTransform"]
      248 LOADNIL                          R4
      249 LOADNIL                          R5
      250 NAMECALL                         R6 R2 K46 ["getBoundingBox"]
      252 CALL                             R6 1 3
      253 SETTABLEKS                       R8 R0 K47 ["_boundingBoxSize"]
      255 MOVE                             R4 R6
      256 MOVE                             R5 R7
      257 GETIMPORT                        R7 K44 [CFrame.new]
      259 MOVE                             R8 R5
      260 CALL                             R7 1 1
      261 MUL                              R6 R4 R7
      262 SETTABLEKS                       R6 R0 K48 ["_centerPoint"]
      264 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 LOADK                            R4 K1 ["Bone"]
        4 NAMECALL                         R2 R1 K2 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["TransformedWorldCFrame"]
       10 RETURN                           R2 1
       11 LOADK                            R4 K4 ["BasePart"]
       12 NAMECALL                         R2 R1 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R2 R1 K5 ["CFrame"]
       18 RETURN                           R2 1
       19 GETIMPORT                        R2 K7 [CFrame.new]
       21 CALL                             R2 0 -1
       22 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["Bone"]
        2 JUMPIF                           R4 ; [+2]
        3 GETTABLEKS                       R4 R0 K1 ["Part0"]
        5 GETTABLEKS                       R5 R4 K2 ["Parent"]
        7 JUMPIFNOT                        R5 ; [+16]
        8 LOADK                            R8 K0 ["Bone"]
        9 NAMECALL                         R6 R5 K3 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+3]
       13 GETTABLEKS                       R3 R5 K4 ["TransformedWorldCFrame"]
       15 JUMP                             ; [+12]
       16 LOADK                            R8 K5 ["BasePart"]
       17 NAMECALL                         R6 R5 K3 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+3]
       21 GETTABLEKS                       R3 R5 K6 ["CFrame"]
       23 JUMP                             ; [+4]
       24 GETIMPORT                        R6 K8 [CFrame.new]
       26 CALL                             R6 0 1
       27 MOVE                             R3 R6
       28 MUL                              R2 R3 R1
       29 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R4 R2 K0 ["Part0"]
        2 GETTABLEKS                       R4 R4 K1 ["CFrame"]
        4 GETTABLEKS                       R5 R2 K2 ["C0"]
        6 MUL                              R3 R4 R5
        7 GETTABLEKS                       R6 R0 K3 ["_jointsToOrigPart1CFrame"]
        9 GETTABLE                         R5 R6 R2
       10 GETTABLEKS                       R6 R2 K4 ["C1"]
       12 MUL                              R4 R5 R6
       13 MUL                              R4 R1 R4
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R3 K5 ["toObjectSpace"]
       17 CALL                             R5 2 -1
       18 RETURN                           R5 -1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["_jointsToOrigBoneCFrame"]
        2 GETTABLE                         R4 R5 R2
        3 GETTABLEKS                       R6 R2 K1 ["Bone"]
        5 JUMPIF                           R6 ; [+2]
        6 GETTABLEKS                       R6 R2 K2 ["Part0"]
        8 GETTABLEKS                       R7 R6 K3 ["Parent"]
       10 JUMPIFNOT                        R7 ; [+16]
       11 LOADK                            R10 K1 ["Bone"]
       12 NAMECALL                         R8 R7 K4 ["IsA"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+3]
       16 GETTABLEKS                       R5 R7 K5 ["TransformedWorldCFrame"]
       18 JUMP                             ; [+12]
       19 LOADK                            R10 K6 ["BasePart"]
       20 NAMECALL                         R8 R7 K4 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+3]
       24 GETTABLEKS                       R5 R7 K7 ["CFrame"]
       26 JUMP                             ; [+4]
       27 GETIMPORT                        R8 K9 [CFrame.new]
       29 CALL                             R8 0 1
       30 MOVE                             R5 R8
       31 MUL                              R3 R5 R4
       32 GETTABLEKS                       R5 R0 K10 ["_jointsToOrigBoneTransformedWorldCFrame"]
       34 GETTABLE                         R4 R5 R2
       35 MUL                              R4 R1 R4
       36 MOVE                             R7 R4
       37 NAMECALL                         R5 R3 K11 ["toObjectSpace"]
       39 CALL                             R5 2 -1
       40 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R5 R2 K0 ["Part0"]
        2 LOADK                            R7 K1 ["Bone"]
        3 NAMECALL                         R5 R5 K2 ["IsA"]
        5 CALL                             R5 2 1
        6 JUMPIFNOT                        R5 ; [+33]
        7 GETTABLEKS                       R6 R0 K3 ["_jointsToOrigBoneCFrame"]
        9 GETTABLE                         R5 R6 R2
       10 GETTABLEKS                       R7 R2 K1 ["Bone"]
       12 JUMPIF                           R7 ; [+2]
       13 GETTABLEKS                       R7 R2 K0 ["Part0"]
       15 GETTABLEKS                       R8 R7 K4 ["Parent"]
       17 JUMPIFNOT                        R8 ; [+16]
       18 LOADK                            R11 K1 ["Bone"]
       19 NAMECALL                         R9 R8 K2 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+3]
       23 GETTABLEKS                       R6 R8 K5 ["TransformedWorldCFrame"]
       25 JUMP                             ; [+12]
       26 LOADK                            R11 K6 ["BasePart"]
       27 NAMECALL                         R9 R8 K2 ["IsA"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+3]
       31 GETTABLEKS                       R6 R8 K7 ["CFrame"]
       33 JUMP                             ; [+4]
       34 GETIMPORT                        R9 K9 [CFrame.new]
       36 CALL                             R9 0 1
       37 MOVE                             R6 R9
       38 MUL                              R4 R6 R5
       39 JUMP                             ; [+4]
       40 GETTABLEKS                       R4 R2 K0 ["Part0"]
       42 GETTABLEKS                       R4 R4 K7 ["CFrame"]
       44 GETTABLEKS                       R5 R2 K10 ["C0"]
       46 MUL                              R3 R4 R5
       47 GETTABLEKS                       R6 R2 K11 ["Part1"]
       49 LOADK                            R8 K1 ["Bone"]
       50 NAMECALL                         R6 R6 K2 ["IsA"]
       52 CALL                             R6 2 1
       53 JUMPIFNOT                        R6 ; [+4]
       54 GETTABLEKS                       R6 R0 K12 ["_jointsToOrigBoneTransformedWorldCFrame"]
       56 GETTABLE                         R5 R6 R2
       57 JUMP                             ; [+3]
       58 GETTABLEKS                       R6 R0 K13 ["_jointsToOrigPart1CFrame"]
       60 GETTABLE                         R5 R6 R2
       61 GETTABLEKS                       R6 R2 K14 ["C1"]
       63 MUL                              R4 R5 R6
       64 MUL                              R4 R1 R4
       65 MOVE                             R7 R4
       66 NAMECALL                         R5 R3 K15 ["toObjectSpace"]
       68 CALL                             R5 2 -1
       69 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R2 K1 ["IsPlaying"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETIMPORT                        R2 K4 [CFrame.new]
        7 CALL                             R2 0 -1
        8 RETURN                           R2 -1
        9 SETTABLEKS                       R1 R0 K5 ["_globalTransform"]
       11 NAMECALL                         R2 R0 K6 ["_shouldSolveConstraints"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+74]
       15 LOADNIL                          R2
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K8 [ipairs]
       20 GETTABLEKS                       R5 R0 K9 ["_joints"]
       22 CALL                             R4 1 3
       23 FORGPREP_INEXT                   R4
       24 GETTABLEKS                       R9 R8 K10 ["Type"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K11 ["JOINT_TYPES"]
       29 GETTABLEKS                       R10 R10 K12 ["Bone"]
       31 JUMPIFNOTEQ                      R9 R10 ; [+13]
       33 MOVE                             R11 R1
       34 MOVE                             R12 R8
       35 NAMECALL                         R9 R0 K13 ["applyWorldTransformToBone"]
       37 CALL                             R9 3 1
       38 MOVE                             R2 R9
       39 GETTABLEKS                       R9 R8 K12 ["Bone"]
       41 GETTABLEKS                       R9 R9 K14 ["Name"]
       43 SETTABLE                         R2 R3 R9
       44 JUMP                             ; [+32]
       45 GETTABLEKS                       R9 R8 K10 ["Type"]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K11 ["JOINT_TYPES"]
       50 GETTABLEKS                       R10 R10 K15 ["AnimationConstraint"]
       52 JUMPIFNOTEQ                      R9 R10 ; [+13]
       54 MOVE                             R11 R1
       55 MOVE                             R12 R8
       56 NAMECALL                         R9 R0 K16 ["applyWorldTransformToAnimConstraint"]
       58 CALL                             R9 3 1
       59 MOVE                             R2 R9
       60 GETTABLEKS                       R9 R8 K17 ["Part1"]
       62 GETTABLEKS                       R9 R9 K14 ["Name"]
       64 SETTABLE                         R2 R3 R9
       65 JUMP                             ; [+11]
       66 MOVE                             R11 R1
       67 MOVE                             R12 R8
       68 NAMECALL                         R9 R0 K18 ["applyWorldTransformToPart"]
       70 CALL                             R9 3 1
       71 MOVE                             R2 R9
       72 GETTABLEKS                       R9 R8 K17 ["Part1"]
       74 GETTABLEKS                       R9 R9 K14 ["Name"]
       76 SETTABLE                         R2 R3 R9
       77 FORGLOOP                         R4 2 [inext] ; [-54]
       79 JUMPIFEQKNIL                     R3 ; [+193]
       81 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       83 GETTABLEKS                       R4 R4 K19 ["OnManipulateJoints"]
       85 LOADK                            R5 K20 ["Root"]
       86 MOVE                             R6 R3
       87 CALL                             R4 2 0
       88 RETURN                           R1 1
       89 GETTABLEKS                       R2 R0 K21 ["_tool"]
       91 GETIMPORT                        R3 K25 [Enum.RibbonTool.Move]
       93 JUMPIFNOTEQ                      R2 R3 ; [+111]
       95 GETTABLEKS                       R2 R0 K26 ["_effectorCFrame"]
       97 JUMPIFNOT                        R2 ; [+107]
       98 GETTABLEKS                       R3 R0 K26 ["_effectorCFrame"]
      100 MUL                              R2 R1 R3
      101 LOADNIL                          R3
      102 NAMECALL                         R4 R0 K27 ["_useFFlagUseIKControls"]
      104 CALL                             R4 1 1
      105 JUMPIFNOT                        R4 ; [+18]
      106 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      108 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      110 MOVE                             R6 R2
      111 NAMECALL                         R4 R4 K29 ["solve"]
      113 CALL                             R4 2 0
      114 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      116 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      118 NAMECALL                         R4 R4 K30 ["getSelectedPart"]
      120 CALL                             R4 1 1
      121 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      123 JUMP                             ; [+74]
      124 GETTABLEKS                       R5 R0 K9 ["_joints"]
      126 JUMPIFNOT                        R5 ; [+3]
      127 LENGTH                           R6 R5
      128 GETTABLE                         R4 R5 R6
      129 JUMP                             ; [+1]
      130 LOADNIL                          R4
      131 GETUPVAL                         R6 1
      132 CALL                             R6 0 1
      133 JUMPIFNOT                        R6 ; [+9]
      134 GETUPVAL                         R5 2
      135 GETTABLEKS                       R5 R5 K31 ["getRootPart"]
      137 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
      139 GETTABLEKS                       R6 R6 K32 ["RootInstance"]
      141 CALL                             R5 1 1
      142 JUMP                             ; [+8]
      143 GETUPVAL                         R5 2
      144 GETTABLEKS                       R5 R5 K33 ["findRootPart"]
      146 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
      148 GETTABLEKS                       R6 R6 K32 ["RootInstance"]
      150 CALL                             R5 1 1
      151 GETTABLEKS                       R8 R5 K2 ["CFrame"]
      153 GETTABLEKS                       R8 R8 K34 ["p"]
      155 GETTABLEKS                       R9 R2 K34 ["p"]
      157 SUB                              R7 R8 R9
      158 GETTABLEKS                       R7 R7 K35 ["Magnitude"]
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R8 R8 K36 ["MIN_EFFECTOR_DISTANCE"]
      163 JUMPIFLE                         R7 R8 ; [+2]
      165 LOADB                            R6 0 +1
      166 LOADB                            R6 1
      167 JUMPIFNOT                        R6 ; [+4]
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R7 R7 K37 ["MIN_TRANSLATION_STIFFNESS"]
      171 JUMPIF                           R7 ; [+3]
      172 GETUPVAL                         R7 0
      173 GETTABLEKS                       R7 R7 K37 ["MIN_TRANSLATION_STIFFNESS"]
      175 JUMPIFNOT                        R6 ; [+4]
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K38 ["MIN_ROTATION_STIFFNESS"]
      179 JUMPIF                           R8 ; [+3]
      180 GETUPVAL                         R8 0
      181 GETTABLEKS                       R8 R8 K38 ["MIN_ROTATION_STIFFNESS"]
      183 GETUPVAL                         R9 3
      184 GETTABLEKS                       R11 R4 K17 ["Part1"]
      186 MOVE                             R12 R2
      187 MOVE                             R13 R7
      188 MOVE                             R14 R8
      189 GETIMPORT                        R15 K41 [Enum.IKCollisionsMode.NoCollisions]
      191 NAMECALL                         R9 R9 K42 ["IKMoveTo"]
      193 CALL                             R9 6 0
      194 GETTABLEKS                       R9 R4 K17 ["Part1"]
      196 GETTABLEKS                       R3 R9 K2 ["CFrame"]
      198 GETTABLEKS                       R5 R0 K26 ["_effectorCFrame"]
      200 NAMECALL                         R5 R5 K43 ["Inverse"]
      202 CALL                             R5 1 1
      203 MUL                              R4 R3 R5
      204 RETURN                           R4 1
      205 GETTABLEKS                       R2 R0 K21 ["_tool"]
      207 GETIMPORT                        R3 K45 [Enum.RibbonTool.Rotate]
      209 JUMPIFNOTEQ                      R2 R3 ; [+63]
      211 GETTABLEKS                       R2 R0 K26 ["_effectorCFrame"]
      213 JUMPIFNOT                        R2 ; [+59]
      214 GETTABLEKS                       R3 R0 K26 ["_effectorCFrame"]
      216 MUL                              R2 R1 R3
      217 LOADNIL                          R3
      218 NAMECALL                         R4 R0 K27 ["_useFFlagUseIKControls"]
      220 CALL                             R4 1 1
      221 JUMPIFNOT                        R4 ; [+18]
      222 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      224 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      226 MOVE                             R6 R2
      227 NAMECALL                         R4 R4 K29 ["solve"]
      229 CALL                             R4 2 0
      230 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      232 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      234 NAMECALL                         R4 R4 K30 ["getSelectedPart"]
      236 CALL                             R4 1 1
      237 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      239 JUMP                             ; [+26]
      240 GETTABLEKS                       R5 R0 K9 ["_joints"]
      242 JUMPIFNOT                        R5 ; [+3]
      243 LENGTH                           R6 R5
      244 GETTABLE                         R4 R5 R6
      245 JUMP                             ; [+1]
      246 LOADNIL                          R4
      247 GETUPVAL                         R5 3
      248 GETTABLEKS                       R7 R4 K17 ["Part1"]
      250 MOVE                             R8 R2
      251 GETUPVAL                         R9 0
      252 GETTABLEKS                       R9 R9 K46 ["TRANSLATION_STIFFNESS"]
      254 GETUPVAL                         R10 0
      255 GETTABLEKS                       R10 R10 K47 ["ROTATION_STIFFNESS"]
      257 GETIMPORT                        R11 K41 [Enum.IKCollisionsMode.NoCollisions]
      259 NAMECALL                         R5 R5 K42 ["IKMoveTo"]
      261 CALL                             R5 6 0
      262 GETTABLEKS                       R5 R4 K17 ["Part1"]
      264 GETTABLEKS                       R3 R5 K2 ["CFrame"]
      266 GETTABLEKS                       R5 R0 K26 ["_effectorCFrame"]
      268 NAMECALL                         R5 R5 K43 ["Inverse"]
      270 CALL                             R5 1 1
      271 MUL                              R4 R3 R5
      272 RETURN                           R4 1
      273 RETURN                           R1 1

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["_shouldSolveConstraints"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+38]
        4 NAMECALL                         R1 R0 K1 ["_useFFlagUseIKControls"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETTABLEKS                       R1 R0 K2 ["_draggerContext"]
       10 GETTABLEKS                       R1 R1 K3 ["ikControlManager"]
       12 NAMECALL                         R1 R1 K4 ["getTransforms"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       17 GETTABLEKS                       R2 R2 K5 ["OnManipulateJoints"]
       19 LOADK                            R3 K6 ["Root"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K7 ["ikDragEnd"]
       26 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       28 GETTABLEKS                       R2 R2 K8 ["RootInstance"]
       30 GETTABLEKS                       R3 R0 K9 ["_motorData"]
       32 GETTABLEKS                       R4 R0 K10 ["_animConstraintData"]
       34 CALL                             R1 3 1
       35 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       37 GETTABLEKS                       R2 R2 K5 ["OnManipulateJoints"]
       39 LOADK                            R3 K6 ["Root"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        2 NAMECALL                         R4 R4 K1 ["Inverse"]
        4 CALL                             R4 1 1
        5 MUL                              R3 R4 R1
        6 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        8 MUL                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R1 K1 ["IKEnabled"]
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLEKS                       R1 R0 K2 ["_hasPartsToMove"]
        7 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        5 GETTABLEKS                       R2 R2 K1 ["IKMode"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["IK_MODE"]
       10 GETTABLEKS                       R3 R3 K3 ["BodyPart"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Src"]
       15 GETTABLEKS                       R3 R3 K9 ["Util"]
       17 GETTABLEKS                       R3 R3 K10 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Utility"]
       24 GETTABLEKS                       R4 R4 K12 ["PartMover"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K7 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Utility"]
       31 GETTABLEKS                       R5 R5 K13 ["AttachmentMover"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K7 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Util"]
       40 GETTABLEKS                       R6 R6 K14 ["RigIK"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K7 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K9 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["RigUtils"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K7 [require]
       54 GETTABLEKS                       R8 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R8 K9 ["Util"]
       58 GETTABLEKS                       R8 R8 K16 ["RigInfo"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K18 [game]
       63 LOADK                            R10 K19 ["Workspace"]
       64 NAMECALL                         R8 R8 K20 ["GetService"]
       66 CALL                             R8 2 1
       67 GETIMPORT                        R9 K7 [require]
       69 GETTABLEKS                       R10 R0 K21 ["LuaFlags"]
       71 GETTABLEKS                       R10 R10 K22 ["GetFFlagUseIKControls"]
       73 CALL                             R9 1 1
       74 NEWTABLE                         R10 16 0
       76 SETTABLEKS                       R10 R10 K23 ["__index"]
       78 GETIMPORT                        R11 K7 [require]
       80 GETTABLEKS                       R12 R0 K21 ["LuaFlags"]
       82 GETTABLEKS                       R12 R12 K24 ["GetFFlagRootMotion"]
       84 CALL                             R11 1 1
       85 DUPCLOSURE                       R12 K25 [PROTO_0]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R12 R10 K26 ["new"]
       91 DUPCLOSURE                       R12 K27 [PROTO_1]
       92 DUPCLOSURE                       R13 K28 [PROTO_2]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R13 R10 K29 ["beginDrag"]
       99 DUPCLOSURE                       R13 K30 [PROTO_3]
      100 DUPCLOSURE                       R14 K31 [PROTO_4]
      101 DUPCLOSURE                       R15 K32 [PROTO_5]
      102 SETTABLEKS                       R15 R10 K33 ["applyWorldTransformToPart"]
      104 DUPCLOSURE                       R15 K34 [PROTO_6]
      105 SETTABLEKS                       R15 R10 K35 ["applyWorldTransformToBone"]
      107 DUPCLOSURE                       R15 K36 [PROTO_7]
      108 SETTABLEKS                       R15 R10 K37 ["applyWorldTransformToAnimConstraint"]
      110 DUPCLOSURE                       R15 K38 [PROTO_8]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 SETTABLEKS                       R15 R10 K39 ["updateDrag"]
      117 DUPCLOSURE                       R15 K40 [PROTO_9]
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R15 R10 K41 ["endDrag"]
      121 DUPCLOSURE                       R15 K42 [PROTO_10]
      122 SETTABLEKS                       R15 R10 K43 ["render"]
      124 DUPCLOSURE                       R15 K44 [PROTO_11]
      125 SETTABLEKS                       R15 R10 K45 ["_toLocalTransform"]
      127 DUPCLOSURE                       R15 K46 [PROTO_12]
      128 SETTABLEKS                       R15 R10 K47 ["_shouldSolveConstraints"]
      130 DUPCLOSURE                       R15 K48 [PROTO_13]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R15 R10 K49 ["_useFFlagUseIKControls"]
      135 RETURN                           R10 1
