PROTO_0:
        0 DUPTABLE                         R4 K7 [{"_draggerContext", "_ikTransformFunction", "_partMover", "_attachmentMover", "_motorData", "_animConstraintData", "_tool"}]
        1 SETTABLEKS                       R0 R4 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R4 K1 ["_ikTransformFunction"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K8 ["new"]
        8 CALL                             R5 0 1
        9 SETTABLEKS                       R5 R4 K2 ["_partMover"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K8 ["new"]
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
       11 GETTABLEKS                       R5 R0 K2 ["_draggerContext"]
       13 GETTABLEKS                       R4 R5 K3 ["AddWaypoint"]
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
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K9 ["getJoints"]
       37 GETTABLEKS                       R5 R0 K4 ["_partsToMove"]
       39 GETTABLEKS                       R7 R0 K2 ["_draggerContext"]
       41 GETTABLEKS                       R6 R7 K10 ["RootInstance"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R0 K11 ["_joints"]
       46 GETIMPORT                        R4 K13 [ipairs]
       48 GETTABLEKS                       R5 R0 K11 ["_joints"]
       50 CALL                             R4 1 3
       51 FORGPREP_INEXT                   R4
       52 GETTABLEKS                       R9 R8 K14 ["Type"]
       54 GETUPVAL                         R12 1
       55 GETTABLEKS                       R11 R12 K15 ["JOINT_TYPES"]
       57 GETTABLEKS                       R10 R11 K16 ["Bone"]
       59 JUMPIFNOTEQ                      R9 R10 ; [+23]
       61 GETTABLEKS                       R9 R0 K6 ["_jointsToOrigBoneTransformedWorldCFrame"]
       63 GETTABLEKS                       R11 R8 K16 ["Bone"]
       65 GETTABLEKS                       R10 R11 K17 ["TransformedWorldCFrame"]
       67 SETTABLE                         R10 R9 R8
       68 GETTABLEKS                       R9 R0 K7 ["_jointsToOrigBoneCFrame"]
       70 GETTABLEKS                       R11 R8 K16 ["Bone"]
       72 GETTABLEKS                       R10 R11 K18 ["CFrame"]
       74 SETTABLE                         R10 R9 R8
       75 GETTABLEKS                       R9 R0 K8 ["_originalTransform"]
       77 GETTABLEKS                       R11 R8 K16 ["Bone"]
       79 GETTABLEKS                       R10 R11 K19 ["Transform"]
       81 SETTABLE                         R10 R9 R8
       82 JUMP                             ; [+25]
       83 GETTABLEKS                       R9 R8 K14 ["Type"]
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R11 R12 K15 ["JOINT_TYPES"]
       88 GETTABLEKS                       R10 R11 K20 ["Motor6D"]
       90 JUMPIFEQ                         R9 R10 ; [+10]
       92 GETTABLEKS                       R9 R8 K14 ["Type"]
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R11 R12 K15 ["JOINT_TYPES"]
       97 GETTABLEKS                       R10 R11 K21 ["AnimationConstraint"]
       99 JUMPIFNOTEQ                      R9 R10 ; [+8]
      101 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
      103 GETTABLEKS                       R11 R8 K22 ["Part1"]
      105 GETTABLEKS                       R10 R11 K18 ["CFrame"]
      107 SETTABLE                         R10 R9 R8
      108 FORGLOOP                         R4 2 [inext] ; [-57]
      110 NAMECALL                         R4 R0 K23 ["_shouldSolveConstraints"]
      112 CALL                             R4 1 1
      113 JUMPIFNOT                        R4 ; [+81]
      114 NAMECALL                         R4 R0 K24 ["_useFFlagUseIKControls"]
      116 CALL                             R4 1 1
      117 JUMPIFNOT                        R4 ; [+30]
      118 LENGTH                           R6 R1
      119 JUMPIFEQKN                       R6 K25 [1] ; [+2]
      121 LOADB                            R5 0 +1
      122 LOADB                            R5 1
      123 FASTCALL2K                       ASSERT R5 K26 ; [+4]
      125 LOADK                            R6 K26 ["Must have exactly one part selected to use IK controls"]
      126 GETIMPORT                        R4 K28 [assert]
      128 CALL                             R4 2 0
      129 GETTABLEKS                       R5 R0 K2 ["_draggerContext"]
      131 GETTABLEKS                       R4 R5 K29 ["ikControlManager"]
      133 GETTABLEN                        R6 R1 1
      134 NAMECALL                         R4 R4 K30 ["setupIKControl"]
      136 CALL                             R4 2 1
      137 JUMPIF                           R4 ; [+4]
      138 LOADNIL                          R5
      139 SETTABLEKS                       R5 R0 K31 ["_effectorCFrame"]
      141 RETURN                           R0 0
      142 GETTABLEN                        R6 R1 1
      143 GETTABLEKS                       R5 R6 K18 ["CFrame"]
      145 SETTABLEKS                       R5 R0 K31 ["_effectorCFrame"]
      147 JUMP                             ; [+47]
      148 GETTABLEKS                       R7 R0 K11 ["_joints"]
      150 JUMPIFNOT                        R7 ; [+3]
      151 LENGTH                           R8 R7
      152 GETTABLE                         R6 R7 R8
      153 JUMP                             ; [+1]
      154 LOADNIL                          R6
      155 GETTABLEKS                       R5 R6 K22 ["Part1"]
      157 GETTABLEKS                       R4 R5 K18 ["CFrame"]
      159 SETTABLEKS                       R4 R0 K31 ["_effectorCFrame"]
      161 GETUPVAL                         R5 2
      162 GETTABLEKS                       R4 R5 K32 ["ikDragStart"]
      164 GETTABLEKS                       R6 R0 K2 ["_draggerContext"]
      166 GETTABLEKS                       R5 R6 K10 ["RootInstance"]
      168 GETTABLEN                        R6 R3 1
      169 GETTABLEKS                       R9 R0 K2 ["_draggerContext"]
      171 GETTABLEKS                       R8 R9 K33 ["IKMode"]
      173 GETUPVAL                         R11 1
      174 GETTABLEKS                       R10 R11 K34 ["IK_MODE"]
      176 GETTABLEKS                       R9 R10 K35 ["BodyPart"]
      178 JUMPIFEQ                         R8 R9 ; [+2]
      180 LOADB                            R7 0 +1
      181 LOADB                            R7 1
      182 GETTABLEKS                       R9 R0 K2 ["_draggerContext"]
      184 GETTABLEKS                       R8 R9 K36 ["StartingPose"]
      186 GETTABLEKS                       R10 R0 K2 ["_draggerContext"]
      188 GETTABLEKS                       R9 R10 K37 ["PinnedParts"]
      190 CALL                             R4 5 2
      191 SETTABLEKS                       R4 R0 K38 ["_motorData"]
      193 SETTABLEKS                       R5 R0 K39 ["_animConstraintData"]
      195 GETIMPORT                        R4 K41 [CFrame.new]
      197 CALL                             R4 0 1
      198 SETTABLEKS                       R4 R0 K42 ["_lastGoodGeometricTransform"]
      200 LOADNIL                          R4
      201 LOADNIL                          R5
      202 NAMECALL                         R6 R2 K43 ["getBoundingBox"]
      204 CALL                             R6 1 3
      205 SETTABLEKS                       R8 R0 K44 ["_boundingBoxSize"]
      207 MOVE                             R4 R6
      208 MOVE                             R5 R7
      209 GETIMPORT                        R7 K41 [CFrame.new]
      211 MOVE                             R8 R5
      212 CALL                             R7 1 1
      213 MUL                              R6 R4 R7
      214 SETTABLEKS                       R6 R0 K45 ["_centerPoint"]
      216 RETURN                           R0 0

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
        2 GETTABLEKS                       R5 R4 K1 ["Parent"]
        4 JUMPIFNOT                        R5 ; [+16]
        5 LOADK                            R8 K0 ["Bone"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+3]
       10 GETTABLEKS                       R3 R5 K3 ["TransformedWorldCFrame"]
       12 JUMP                             ; [+12]
       13 LOADK                            R8 K4 ["BasePart"]
       14 NAMECALL                         R6 R5 K2 ["IsA"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+3]
       18 GETTABLEKS                       R3 R5 K5 ["CFrame"]
       20 JUMP                             ; [+4]
       21 GETIMPORT                        R6 K7 [CFrame.new]
       23 CALL                             R6 0 1
       24 MOVE                             R3 R6
       25 MUL                              R2 R3 R1
       26 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R5 R2 K0 ["Part0"]
        2 GETTABLEKS                       R4 R5 K1 ["CFrame"]
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
        5 GETTABLEKS                       R7 R6 K2 ["Parent"]
        7 JUMPIFNOT                        R7 ; [+16]
        8 LOADK                            R10 K1 ["Bone"]
        9 NAMECALL                         R8 R7 K3 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+3]
       13 GETTABLEKS                       R5 R7 K4 ["TransformedWorldCFrame"]
       15 JUMP                             ; [+12]
       16 LOADK                            R10 K5 ["BasePart"]
       17 NAMECALL                         R8 R7 K3 ["IsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R5 R7 K6 ["CFrame"]
       23 JUMP                             ; [+4]
       24 GETIMPORT                        R8 K8 [CFrame.new]
       26 CALL                             R8 0 1
       27 MOVE                             R5 R8
       28 MUL                              R3 R5 R4
       29 GETTABLEKS                       R5 R0 K9 ["_jointsToOrigBoneTransformedWorldCFrame"]
       31 GETTABLE                         R4 R5 R2
       32 MUL                              R4 R1 R4
       33 MOVE                             R7 R4
       34 NAMECALL                         R5 R3 K10 ["toObjectSpace"]
       36 CALL                             R5 2 -1
       37 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R3 K1 ["IsPlaying"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETIMPORT                        R2 K4 [CFrame.new]
        7 CALL                             R2 0 -1
        8 RETURN                           R2 -1
        9 SETTABLEKS                       R1 R0 K5 ["_globalTransform"]
       11 NAMECALL                         R2 R0 K6 ["_shouldSolveConstraints"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+53]
       15 LOADNIL                          R2
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K8 [ipairs]
       20 GETTABLEKS                       R5 R0 K9 ["_joints"]
       22 CALL                             R4 1 3
       23 FORGPREP_INEXT                   R4
       24 GETTABLEKS                       R9 R8 K10 ["Type"]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K11 ["JOINT_TYPES"]
       29 GETTABLEKS                       R10 R11 K12 ["Bone"]
       31 JUMPIFNOTEQ                      R9 R10 ; [+13]
       33 MOVE                             R11 R1
       34 MOVE                             R12 R8
       35 NAMECALL                         R9 R0 K13 ["applyWorldTransformToBone"]
       37 CALL                             R9 3 1
       38 MOVE                             R2 R9
       39 GETTABLEKS                       R10 R8 K12 ["Bone"]
       41 GETTABLEKS                       R9 R10 K14 ["Name"]
       43 SETTABLE                         R2 R3 R9
       44 JUMP                             ; [+11]
       45 MOVE                             R11 R1
       46 MOVE                             R12 R8
       47 NAMECALL                         R9 R0 K15 ["applyWorldTransformToPart"]
       49 CALL                             R9 3 1
       50 MOVE                             R2 R9
       51 GETTABLEKS                       R10 R8 K16 ["Part1"]
       53 GETTABLEKS                       R9 R10 K14 ["Name"]
       55 SETTABLE                         R2 R3 R9
       56 FORGLOOP                         R4 2 [inext] ; [-33]
       58 JUMPIFEQKNIL                     R3 ; [+181]
       60 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       62 GETTABLEKS                       R4 R5 K17 ["OnManipulateJoints"]
       64 LOADK                            R5 K18 ["Root"]
       65 MOVE                             R6 R3
       66 CALL                             R4 2 0
       67 RETURN                           R1 1
       68 GETTABLEKS                       R2 R0 K19 ["_tool"]
       70 GETIMPORT                        R3 K23 [Enum.RibbonTool.Move]
       72 JUMPIFNOTEQ                      R2 R3 ; [+99]
       74 GETTABLEKS                       R2 R0 K24 ["_effectorCFrame"]
       76 JUMPIFNOT                        R2 ; [+95]
       77 GETTABLEKS                       R3 R0 K24 ["_effectorCFrame"]
       79 MUL                              R2 R1 R3
       80 LOADNIL                          R3
       81 NAMECALL                         R4 R0 K25 ["_useFFlagUseIKControls"]
       83 CALL                             R4 1 1
       84 JUMPIFNOT                        R4 ; [+18]
       85 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       87 GETTABLEKS                       R4 R5 K26 ["ikControlManager"]
       89 MOVE                             R6 R2
       90 NAMECALL                         R4 R4 K27 ["solve"]
       92 CALL                             R4 2 0
       93 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       95 GETTABLEKS                       R4 R5 K26 ["ikControlManager"]
       97 NAMECALL                         R4 R4 K28 ["getSelectedPart"]
       99 CALL                             R4 1 1
      100 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      102 JUMP                             ; [+62]
      103 GETTABLEKS                       R5 R0 K9 ["_joints"]
      105 JUMPIFNOT                        R5 ; [+3]
      106 LENGTH                           R6 R5
      107 GETTABLE                         R4 R5 R6
      108 JUMP                             ; [+1]
      109 LOADNIL                          R4
      110 GETUPVAL                         R6 1
      111 GETTABLEKS                       R5 R6 K29 ["findRootPart"]
      113 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
      115 GETTABLEKS                       R6 R7 K30 ["RootInstance"]
      117 CALL                             R5 1 1
      118 GETTABLEKS                       R10 R5 K2 ["CFrame"]
      120 GETTABLEKS                       R9 R10 K31 ["p"]
      122 GETTABLEKS                       R10 R2 K31 ["p"]
      124 SUB                              R8 R9 R10
      125 GETTABLEKS                       R7 R8 K32 ["Magnitude"]
      127 GETUPVAL                         R9 0
      128 GETTABLEKS                       R8 R9 K33 ["MIN_EFFECTOR_DISTANCE"]
      130 JUMPIFLE                         R7 R8 ; [+2]
      132 LOADB                            R6 0 +1
      133 LOADB                            R6 1
      134 JUMPIFNOT                        R6 ; [+4]
      135 GETUPVAL                         R8 0
      136 GETTABLEKS                       R7 R8 K34 ["MIN_TRANSLATION_STIFFNESS"]
      138 JUMPIF                           R7 ; [+3]
      139 GETUPVAL                         R8 0
      140 GETTABLEKS                       R7 R8 K34 ["MIN_TRANSLATION_STIFFNESS"]
      142 JUMPIFNOT                        R6 ; [+4]
      143 GETUPVAL                         R9 0
      144 GETTABLEKS                       R8 R9 K35 ["MIN_ROTATION_STIFFNESS"]
      146 JUMPIF                           R8 ; [+3]
      147 GETUPVAL                         R9 0
      148 GETTABLEKS                       R8 R9 K35 ["MIN_ROTATION_STIFFNESS"]
      150 GETUPVAL                         R9 2
      151 GETTABLEKS                       R11 R4 K16 ["Part1"]
      153 MOVE                             R12 R2
      154 MOVE                             R13 R7
      155 MOVE                             R14 R8
      156 GETIMPORT                        R15 K38 [Enum.IKCollisionsMode.NoCollisions]
      158 NAMECALL                         R9 R9 K39 ["IKMoveTo"]
      160 CALL                             R9 6 0
      161 GETTABLEKS                       R9 R4 K16 ["Part1"]
      163 GETTABLEKS                       R3 R9 K2 ["CFrame"]
      165 GETTABLEKS                       R5 R0 K24 ["_effectorCFrame"]
      167 NAMECALL                         R5 R5 K40 ["Inverse"]
      169 CALL                             R5 1 1
      170 MUL                              R4 R3 R5
      171 RETURN                           R4 1
      172 GETTABLEKS                       R2 R0 K19 ["_tool"]
      174 GETIMPORT                        R3 K42 [Enum.RibbonTool.Rotate]
      176 JUMPIFNOTEQ                      R2 R3 ; [+63]
      178 GETTABLEKS                       R2 R0 K24 ["_effectorCFrame"]
      180 JUMPIFNOT                        R2 ; [+59]
      181 GETTABLEKS                       R3 R0 K24 ["_effectorCFrame"]
      183 MUL                              R2 R1 R3
      184 LOADNIL                          R3
      185 NAMECALL                         R4 R0 K25 ["_useFFlagUseIKControls"]
      187 CALL                             R4 1 1
      188 JUMPIFNOT                        R4 ; [+18]
      189 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
      191 GETTABLEKS                       R4 R5 K26 ["ikControlManager"]
      193 MOVE                             R6 R2
      194 NAMECALL                         R4 R4 K27 ["solve"]
      196 CALL                             R4 2 0
      197 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
      199 GETTABLEKS                       R4 R5 K26 ["ikControlManager"]
      201 NAMECALL                         R4 R4 K28 ["getSelectedPart"]
      203 CALL                             R4 1 1
      204 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      206 JUMP                             ; [+26]
      207 GETTABLEKS                       R5 R0 K9 ["_joints"]
      209 JUMPIFNOT                        R5 ; [+3]
      210 LENGTH                           R6 R5
      211 GETTABLE                         R4 R5 R6
      212 JUMP                             ; [+1]
      213 LOADNIL                          R4
      214 GETUPVAL                         R5 2
      215 GETTABLEKS                       R7 R4 K16 ["Part1"]
      217 MOVE                             R8 R2
      218 GETUPVAL                         R10 0
      219 GETTABLEKS                       R9 R10 K43 ["TRANSLATION_STIFFNESS"]
      221 GETUPVAL                         R11 0
      222 GETTABLEKS                       R10 R11 K44 ["ROTATION_STIFFNESS"]
      224 GETIMPORT                        R11 K38 [Enum.IKCollisionsMode.NoCollisions]
      226 NAMECALL                         R5 R5 K39 ["IKMoveTo"]
      228 CALL                             R5 6 0
      229 GETTABLEKS                       R5 R4 K16 ["Part1"]
      231 GETTABLEKS                       R3 R5 K2 ["CFrame"]
      233 GETTABLEKS                       R5 R0 K24 ["_effectorCFrame"]
      235 NAMECALL                         R5 R5 K40 ["Inverse"]
      237 CALL                             R5 1 1
      238 MUL                              R4 R3 R5
      239 RETURN                           R4 1
      240 RETURN                           R1 1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["_shouldSolveConstraints"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+38]
        4 NAMECALL                         R1 R0 K1 ["_useFFlagUseIKControls"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       10 GETTABLEKS                       R1 R2 K3 ["ikControlManager"]
       12 NAMECALL                         R1 R1 K4 ["getTransforms"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
       17 GETTABLEKS                       R2 R3 K5 ["OnManipulateJoints"]
       19 LOADK                            R3 K6 ["Root"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K7 ["ikDragEnd"]
       26 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
       28 GETTABLEKS                       R2 R3 K8 ["RootInstance"]
       30 GETTABLEKS                       R3 R0 K9 ["_motorData"]
       32 GETTABLEKS                       R4 R0 K10 ["_animConstraintData"]
       34 CALL                             R1 3 1
       35 GETTABLEKS                       R3 R0 K2 ["_draggerContext"]
       37 GETTABLEKS                       R2 R3 K5 ["OnManipulateJoints"]
       39 LOADK                            R3 K6 ["Root"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        2 NAMECALL                         R4 R4 K1 ["Inverse"]
        4 CALL                             R4 1 1
        5 MUL                              R3 R4 R1
        6 GETTABLEKS                       R4 R0 K0 ["_centerPoint"]
        8 MUL                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R2 K1 ["IKEnabled"]
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLEKS                       R1 R0 K2 ["_hasPartsToMove"]
        7 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        5 GETTABLEKS                       R2 R3 K1 ["IKMode"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["IK_MODE"]
       10 GETTABLEKS                       R3 R4 K3 ["BodyPart"]
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
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R5 R0 K8 ["Src"]
       15 GETTABLEKS                       R4 R5 K9 ["Util"]
       17 GETTABLEKS                       R3 R4 K10 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R5 R1 K11 ["Utility"]
       24 GETTABLEKS                       R4 R5 K12 ["PartMover"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K7 [require]
       29 GETTABLEKS                       R6 R1 K11 ["Utility"]
       31 GETTABLEKS                       R5 R6 K13 ["AttachmentMover"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K7 [require]
       36 GETTABLEKS                       R8 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R8 K9 ["Util"]
       40 GETTABLEKS                       R6 R7 K14 ["RigIK"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K7 [require]
       45 GETTABLEKS                       R9 R0 K8 ["Src"]
       47 GETTABLEKS                       R8 R9 K9 ["Util"]
       49 GETTABLEKS                       R7 R8 K15 ["RigUtils"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K7 [require]
       54 GETTABLEKS                       R10 R0 K8 ["Src"]
       56 GETTABLEKS                       R9 R10 K9 ["Util"]
       58 GETTABLEKS                       R8 R9 K16 ["RigInfo"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K18 [game]
       63 LOADK                            R10 K19 ["Workspace"]
       64 NAMECALL                         R8 R8 K20 ["GetService"]
       66 CALL                             R8 2 1
       67 GETIMPORT                        R9 K7 [require]
       69 GETTABLEKS                       R11 R0 K21 ["LuaFlags"]
       71 GETTABLEKS                       R10 R11 K22 ["GetFFlagUseIKControls"]
       73 CALL                             R9 1 1
       74 NEWTABLE                         R10 16 0
       76 SETTABLEKS                       R10 R10 K23 ["__index"]
       78 DUPCLOSURE                       R11 K24 [PROTO_0]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R11 R10 K25 ["new"]
       84 DUPCLOSURE                       R11 K26 [PROTO_1]
       85 DUPCLOSURE                       R12 K27 [PROTO_2]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R12 R10 K28 ["beginDrag"]
       91 DUPCLOSURE                       R12 K29 [PROTO_3]
       92 DUPCLOSURE                       R13 K30 [PROTO_4]
       93 DUPCLOSURE                       R14 K31 [PROTO_5]
       94 SETTABLEKS                       R14 R10 K32 ["applyWorldTransformToPart"]
       96 DUPCLOSURE                       R14 K33 [PROTO_6]
       97 SETTABLEKS                       R14 R10 K34 ["applyWorldTransformToBone"]
       99 DUPCLOSURE                       R14 K35 [PROTO_7]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 SETTABLEKS                       R14 R10 K36 ["updateDrag"]
      105 DUPCLOSURE                       R14 K37 [PROTO_8]
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R14 R10 K38 ["endDrag"]
      109 DUPCLOSURE                       R14 K39 [PROTO_9]
      110 SETTABLEKS                       R14 R10 K40 ["render"]
      112 DUPCLOSURE                       R14 K41 [PROTO_10]
      113 SETTABLEKS                       R14 R10 K42 ["_toLocalTransform"]
      115 DUPCLOSURE                       R14 K43 [PROTO_11]
      116 SETTABLEKS                       R14 R10 K44 ["_shouldSolveConstraints"]
      118 DUPCLOSURE                       R14 K45 [PROTO_12]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R14 R10 K46 ["_useFFlagUseIKControls"]
      123 RETURN                           R10 1
