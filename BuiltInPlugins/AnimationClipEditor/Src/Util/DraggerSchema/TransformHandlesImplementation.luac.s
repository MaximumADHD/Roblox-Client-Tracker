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
       82 JUMP                             ; [+89]
       83 GETUPVAL                         R9 2
       84 JUMPIFNOT                        R9 ; [+62]
       85 GETTABLEKS                       R9 R8 K14 ["Type"]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
       90 GETTABLEKS                       R10 R10 K20 ["AnimationConstraint"]
       92 JUMPIFNOTEQ                      R9 R10 ; [+37]
       94 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
       96 GETTABLEKS                       R10 R8 K21 ["Part1"]
       98 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      100 SETTABLE                         R10 R9 R8
      101 GETTABLEKS                       R9 R8 K22 ["Part0"]
      103 LOADK                            R11 K16 ["Bone"]
      104 NAMECALL                         R9 R9 K23 ["IsA"]
      106 CALL                             R9 2 1
      107 JUMPIFNOT                        R9 ; [+64]
      108 GETTABLEKS                       R9 R0 K6 ["_jointsToOrigBoneTransformedWorldCFrame"]
      110 GETTABLEKS                       R10 R8 K22 ["Part0"]
      112 GETTABLEKS                       R10 R10 K17 ["TransformedWorldCFrame"]
      114 SETTABLE                         R10 R9 R8
      115 GETTABLEKS                       R9 R0 K7 ["_jointsToOrigBoneCFrame"]
      117 GETTABLEKS                       R10 R8 K22 ["Part0"]
      119 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      121 SETTABLE                         R10 R9 R8
      122 GETTABLEKS                       R9 R0 K8 ["_originalTransform"]
      124 GETTABLEKS                       R10 R8 K22 ["Part0"]
      126 GETTABLEKS                       R10 R10 K19 ["Transform"]
      128 SETTABLE                         R10 R9 R8
      129 JUMP                             ; [+42]
      130 GETTABLEKS                       R9 R8 K14 ["Type"]
      132 GETUPVAL                         R10 1
      133 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
      135 GETTABLEKS                       R10 R10 K24 ["Motor6D"]
      137 JUMPIFNOTEQ                      R9 R10 ; [+34]
      139 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
      141 GETTABLEKS                       R10 R8 K21 ["Part1"]
      143 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      145 SETTABLE                         R10 R9 R8
      146 JUMP                             ; [+25]
      147 GETTABLEKS                       R9 R8 K14 ["Type"]
      149 GETUPVAL                         R10 1
      150 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
      152 GETTABLEKS                       R10 R10 K24 ["Motor6D"]
      154 JUMPIFEQ                         R9 R10 ; [+10]
      156 GETTABLEKS                       R9 R8 K14 ["Type"]
      158 GETUPVAL                         R10 1
      159 GETTABLEKS                       R10 R10 K15 ["JOINT_TYPES"]
      161 GETTABLEKS                       R10 R10 K20 ["AnimationConstraint"]
      163 JUMPIFNOTEQ                      R9 R10 ; [+8]
      165 GETTABLEKS                       R9 R0 K5 ["_jointsToOrigPart1CFrame"]
      167 GETTABLEKS                       R10 R8 K21 ["Part1"]
      169 GETTABLEKS                       R10 R10 K18 ["CFrame"]
      171 SETTABLE                         R10 R9 R8
      172 FORGLOOP                         R4 2 [inext] ; [-121]
      174 NAMECALL                         R4 R0 K25 ["_shouldSolveConstraints"]
      176 CALL                             R4 1 1
      177 JUMPIFNOT                        R4 ; [+81]
      178 NAMECALL                         R4 R0 K26 ["_useFFlagUseIKControls"]
      180 CALL                             R4 1 1
      181 JUMPIFNOT                        R4 ; [+30]
      182 LENGTH                           R6 R1
      183 JUMPIFEQKN                       R6 K27 [1] ; [+2]
      185 LOADB                            R5 0 +1
      186 LOADB                            R5 1
      187 FASTCALL2K                       ASSERT R5 K28 ; [+4]
      189 LOADK                            R6 K28 ["Must have exactly one part selected to use IK controls"]
      190 GETIMPORT                        R4 K30 [assert]
      192 CALL                             R4 2 0
      193 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
      195 GETTABLEKS                       R4 R4 K31 ["ikControlManager"]
      197 GETTABLEN                        R6 R1 1
      198 NAMECALL                         R4 R4 K32 ["setupIKControl"]
      200 CALL                             R4 2 1
      201 JUMPIF                           R4 ; [+4]
      202 LOADNIL                          R5
      203 SETTABLEKS                       R5 R0 K33 ["_effectorCFrame"]
      205 RETURN                           R0 0
      206 GETTABLEN                        R5 R1 1
      207 GETTABLEKS                       R5 R5 K18 ["CFrame"]
      209 SETTABLEKS                       R5 R0 K33 ["_effectorCFrame"]
      211 JUMP                             ; [+47]
      212 GETTABLEKS                       R5 R0 K11 ["_joints"]
      214 JUMPIFNOT                        R5 ; [+3]
      215 LENGTH                           R6 R5
      216 GETTABLE                         R4 R5 R6
      217 JUMP                             ; [+1]
      218 LOADNIL                          R4
      219 GETTABLEKS                       R4 R4 K21 ["Part1"]
      221 GETTABLEKS                       R4 R4 K18 ["CFrame"]
      223 SETTABLEKS                       R4 R0 K33 ["_effectorCFrame"]
      225 GETUPVAL                         R4 3
      226 GETTABLEKS                       R4 R4 K34 ["ikDragStart"]
      228 GETTABLEKS                       R5 R0 K2 ["_draggerContext"]
      230 GETTABLEKS                       R5 R5 K10 ["RootInstance"]
      232 GETTABLEN                        R6 R3 1
      233 GETTABLEKS                       R8 R0 K2 ["_draggerContext"]
      235 GETTABLEKS                       R8 R8 K35 ["IKMode"]
      237 GETUPVAL                         R9 1
      238 GETTABLEKS                       R9 R9 K36 ["IK_MODE"]
      240 GETTABLEKS                       R9 R9 K37 ["BodyPart"]
      242 JUMPIFEQ                         R8 R9 ; [+2]
      244 LOADB                            R7 0 +1
      245 LOADB                            R7 1
      246 GETTABLEKS                       R8 R0 K2 ["_draggerContext"]
      248 GETTABLEKS                       R8 R8 K38 ["StartingPose"]
      250 GETTABLEKS                       R9 R0 K2 ["_draggerContext"]
      252 GETTABLEKS                       R9 R9 K39 ["PinnedParts"]
      254 CALL                             R4 5 2
      255 SETTABLEKS                       R4 R0 K40 ["_motorData"]
      257 SETTABLEKS                       R5 R0 K41 ["_animConstraintData"]
      259 GETIMPORT                        R4 K43 [CFrame.new]
      261 CALL                             R4 0 1
      262 SETTABLEKS                       R4 R0 K44 ["_lastGoodGeometricTransform"]
      264 LOADNIL                          R4
      265 LOADNIL                          R5
      266 NAMECALL                         R6 R2 K45 ["getBoundingBox"]
      268 CALL                             R6 1 3
      269 SETTABLEKS                       R8 R0 K46 ["_boundingBoxSize"]
      271 MOVE                             R4 R6
      272 MOVE                             R5 R7
      273 GETIMPORT                        R7 K43 [CFrame.new]
      275 MOVE                             R8 R5
      276 CALL                             R7 1 1
      277 MUL                              R6 R4 R7
      278 SETTABLEKS                       R6 R0 K47 ["_centerPoint"]
      280 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+30]
        2 GETTABLEKS                       R4 R0 K0 ["Bone"]
        4 JUMPIF                           R4 ; [+2]
        5 GETTABLEKS                       R4 R0 K1 ["Part0"]
        7 GETTABLEKS                       R5 R4 K2 ["Parent"]
        9 JUMPIFNOT                        R5 ; [+16]
       10 LOADK                            R8 K0 ["Bone"]
       11 NAMECALL                         R6 R5 K3 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+3]
       15 GETTABLEKS                       R3 R5 K4 ["TransformedWorldCFrame"]
       17 JUMP                             ; [+12]
       18 LOADK                            R8 K5 ["BasePart"]
       19 NAMECALL                         R6 R5 K3 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIFNOT                        R6 ; [+3]
       23 GETTABLEKS                       R3 R5 K6 ["CFrame"]
       25 JUMP                             ; [+4]
       26 GETIMPORT                        R6 K8 [CFrame.new]
       28 CALL                             R6 0 1
       29 MOVE                             R3 R6
       30 MUL                              R2 R3 R1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R4 R0 K0 ["Bone"]
       34 GETTABLEKS                       R5 R4 K2 ["Parent"]
       36 JUMPIFNOT                        R5 ; [+16]
       37 LOADK                            R8 K0 ["Bone"]
       38 NAMECALL                         R6 R5 K3 ["IsA"]
       40 CALL                             R6 2 1
       41 JUMPIFNOT                        R6 ; [+3]
       42 GETTABLEKS                       R3 R5 K4 ["TransformedWorldCFrame"]
       44 JUMP                             ; [+12]
       45 LOADK                            R8 K5 ["BasePart"]
       46 NAMECALL                         R6 R5 K3 ["IsA"]
       48 CALL                             R6 2 1
       49 JUMPIFNOT                        R6 ; [+3]
       50 GETTABLEKS                       R3 R5 K6 ["CFrame"]
       52 JUMP                             ; [+4]
       53 GETIMPORT                        R6 K8 [CFrame.new]
       55 CALL                             R6 0 1
       56 MOVE                             R3 R6
       57 MUL                              R2 R3 R1
       58 RETURN                           R2 1

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
        3 GETUPVAL                         R5 0
        4 JUMPIFNOT                        R5 ; [+30]
        5 GETTABLEKS                       R6 R2 K1 ["Bone"]
        7 JUMPIF                           R6 ; [+2]
        8 GETTABLEKS                       R6 R2 K2 ["Part0"]
       10 GETTABLEKS                       R7 R6 K3 ["Parent"]
       12 JUMPIFNOT                        R7 ; [+16]
       13 LOADK                            R10 K1 ["Bone"]
       14 NAMECALL                         R8 R7 K4 ["IsA"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+3]
       18 GETTABLEKS                       R5 R7 K5 ["TransformedWorldCFrame"]
       20 JUMP                             ; [+12]
       21 LOADK                            R10 K6 ["BasePart"]
       22 NAMECALL                         R8 R7 K4 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+3]
       26 GETTABLEKS                       R5 R7 K7 ["CFrame"]
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R8 K9 [CFrame.new]
       31 CALL                             R8 0 1
       32 MOVE                             R5 R8
       33 MUL                              R3 R5 R4
       34 JUMP                             ; [+26]
       35 GETTABLEKS                       R6 R2 K1 ["Bone"]
       37 GETTABLEKS                       R7 R6 K3 ["Parent"]
       39 JUMPIFNOT                        R7 ; [+16]
       40 LOADK                            R10 K1 ["Bone"]
       41 NAMECALL                         R8 R7 K4 ["IsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+3]
       45 GETTABLEKS                       R5 R7 K5 ["TransformedWorldCFrame"]
       47 JUMP                             ; [+12]
       48 LOADK                            R10 K6 ["BasePart"]
       49 NAMECALL                         R8 R7 K4 ["IsA"]
       51 CALL                             R8 2 1
       52 JUMPIFNOT                        R8 ; [+3]
       53 GETTABLEKS                       R5 R7 K7 ["CFrame"]
       55 JUMP                             ; [+4]
       56 GETIMPORT                        R8 K9 [CFrame.new]
       58 CALL                             R8 0 1
       59 MOVE                             R5 R8
       60 MUL                              R3 R5 R4
       61 GETTABLEKS                       R5 R0 K10 ["_jointsToOrigBoneTransformedWorldCFrame"]
       63 GETTABLE                         R4 R5 R2
       64 MUL                              R4 R1 R4
       65 MOVE                             R7 R4
       66 NAMECALL                         R5 R3 K11 ["toObjectSpace"]
       68 CALL                             R5 2 -1
       69 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R5 R2 K0 ["Part0"]
        2 LOADK                            R7 K1 ["Bone"]
        3 NAMECALL                         R5 R5 K2 ["IsA"]
        5 CALL                             R5 2 1
        6 JUMPIFNOT                        R5 ; [+62]
        7 GETTABLEKS                       R6 R0 K3 ["_jointsToOrigBoneCFrame"]
        9 GETTABLE                         R5 R6 R2
       10 GETUPVAL                         R6 0
       11 JUMPIFNOT                        R6 ; [+30]
       12 GETTABLEKS                       R7 R2 K1 ["Bone"]
       14 JUMPIF                           R7 ; [+2]
       15 GETTABLEKS                       R7 R2 K0 ["Part0"]
       17 GETTABLEKS                       R8 R7 K4 ["Parent"]
       19 JUMPIFNOT                        R8 ; [+16]
       20 LOADK                            R11 K1 ["Bone"]
       21 NAMECALL                         R9 R8 K2 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+3]
       25 GETTABLEKS                       R6 R8 K5 ["TransformedWorldCFrame"]
       27 JUMP                             ; [+12]
       28 LOADK                            R11 K6 ["BasePart"]
       29 NAMECALL                         R9 R8 K2 ["IsA"]
       31 CALL                             R9 2 1
       32 JUMPIFNOT                        R9 ; [+3]
       33 GETTABLEKS                       R6 R8 K7 ["CFrame"]
       35 JUMP                             ; [+4]
       36 GETIMPORT                        R9 K9 [CFrame.new]
       38 CALL                             R9 0 1
       39 MOVE                             R6 R9
       40 MUL                              R4 R6 R5
       41 JUMP                             ; [+31]
       42 GETTABLEKS                       R7 R2 K1 ["Bone"]
       44 GETTABLEKS                       R8 R7 K4 ["Parent"]
       46 JUMPIFNOT                        R8 ; [+16]
       47 LOADK                            R11 K1 ["Bone"]
       48 NAMECALL                         R9 R8 K2 ["IsA"]
       50 CALL                             R9 2 1
       51 JUMPIFNOT                        R9 ; [+3]
       52 GETTABLEKS                       R6 R8 K5 ["TransformedWorldCFrame"]
       54 JUMP                             ; [+12]
       55 LOADK                            R11 K6 ["BasePart"]
       56 NAMECALL                         R9 R8 K2 ["IsA"]
       58 CALL                             R9 2 1
       59 JUMPIFNOT                        R9 ; [+3]
       60 GETTABLEKS                       R6 R8 K7 ["CFrame"]
       62 JUMP                             ; [+4]
       63 GETIMPORT                        R9 K9 [CFrame.new]
       65 CALL                             R9 0 1
       66 MOVE                             R6 R9
       67 MUL                              R4 R6 R5
       68 JUMP                             ; [+4]
       69 GETTABLEKS                       R4 R2 K0 ["Part0"]
       71 GETTABLEKS                       R4 R4 K7 ["CFrame"]
       73 GETTABLEKS                       R5 R2 K10 ["C0"]
       75 MUL                              R3 R4 R5
       76 GETTABLEKS                       R6 R2 K11 ["Part1"]
       78 LOADK                            R8 K1 ["Bone"]
       79 NAMECALL                         R6 R6 K2 ["IsA"]
       81 CALL                             R6 2 1
       82 JUMPIFNOT                        R6 ; [+4]
       83 GETTABLEKS                       R6 R0 K12 ["_jointsToOrigBoneTransformedWorldCFrame"]
       85 GETTABLE                         R5 R6 R2
       86 JUMP                             ; [+3]
       87 GETTABLEKS                       R6 R0 K13 ["_jointsToOrigPart1CFrame"]
       89 GETTABLE                         R5 R6 R2
       90 GETTABLEKS                       R6 R2 K14 ["C1"]
       92 MUL                              R4 R5 R6
       93 MUL                              R4 R1 R4
       94 MOVE                             R7 R4
       95 NAMECALL                         R5 R3 K15 ["toObjectSpace"]
       97 CALL                             R5 2 -1
       98 RETURN                           R5 -1

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
       14 JUMPIF                           R2 ; [+76]
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
       44 JUMP                             ; [+34]
       45 GETUPVAL                         R9 1
       46 JUMPIFNOT                        R9 ; [+21]
       47 GETTABLEKS                       R9 R8 K10 ["Type"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K11 ["JOINT_TYPES"]
       52 GETTABLEKS                       R10 R10 K15 ["AnimationConstraint"]
       54 JUMPIFNOTEQ                      R9 R10 ; [+13]
       56 MOVE                             R11 R1
       57 MOVE                             R12 R8
       58 NAMECALL                         R9 R0 K16 ["applyWorldTransformToAnimConstraint"]
       60 CALL                             R9 3 1
       61 MOVE                             R2 R9
       62 GETTABLEKS                       R9 R8 K17 ["Part1"]
       64 GETTABLEKS                       R9 R9 K14 ["Name"]
       66 SETTABLE                         R2 R3 R9
       67 JUMP                             ; [+11]
       68 MOVE                             R11 R1
       69 MOVE                             R12 R8
       70 NAMECALL                         R9 R0 K18 ["applyWorldTransformToPart"]
       72 CALL                             R9 3 1
       73 MOVE                             R2 R9
       74 GETTABLEKS                       R9 R8 K17 ["Part1"]
       76 GETTABLEKS                       R9 R9 K14 ["Name"]
       78 SETTABLE                         R2 R3 R9
       79 FORGLOOP                         R4 2 [inext] ; [-56]
       81 JUMPIFEQKNIL                     R3 ; [+181]
       83 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
       85 GETTABLEKS                       R4 R4 K19 ["OnManipulateJoints"]
       87 LOADK                            R5 K20 ["Root"]
       88 MOVE                             R6 R3
       89 CALL                             R4 2 0
       90 RETURN                           R1 1
       91 GETTABLEKS                       R2 R0 K21 ["_tool"]
       93 GETIMPORT                        R3 K25 [Enum.RibbonTool.Move]
       95 JUMPIFNOTEQ                      R2 R3 ; [+99]
       97 GETTABLEKS                       R2 R0 K26 ["_effectorCFrame"]
       99 JUMPIFNOT                        R2 ; [+95]
      100 GETTABLEKS                       R3 R0 K26 ["_effectorCFrame"]
      102 MUL                              R2 R1 R3
      103 LOADNIL                          R3
      104 NAMECALL                         R4 R0 K27 ["_useFFlagUseIKControls"]
      106 CALL                             R4 1 1
      107 JUMPIFNOT                        R4 ; [+18]
      108 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      110 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      112 MOVE                             R6 R2
      113 NAMECALL                         R4 R4 K29 ["solve"]
      115 CALL                             R4 2 0
      116 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      118 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      120 NAMECALL                         R4 R4 K30 ["getSelectedPart"]
      122 CALL                             R4 1 1
      123 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      125 JUMP                             ; [+62]
      126 GETTABLEKS                       R5 R0 K9 ["_joints"]
      128 JUMPIFNOT                        R5 ; [+3]
      129 LENGTH                           R6 R5
      130 GETTABLE                         R4 R5 R6
      131 JUMP                             ; [+1]
      132 LOADNIL                          R4
      133 GETUPVAL                         R5 2
      134 GETTABLEKS                       R5 R5 K31 ["findRootPart"]
      136 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
      138 GETTABLEKS                       R6 R6 K32 ["RootInstance"]
      140 CALL                             R5 1 1
      141 GETTABLEKS                       R8 R5 K2 ["CFrame"]
      143 GETTABLEKS                       R8 R8 K33 ["p"]
      145 GETTABLEKS                       R9 R2 K33 ["p"]
      147 SUB                              R7 R8 R9
      148 GETTABLEKS                       R7 R7 K34 ["Magnitude"]
      150 GETUPVAL                         R8 0
      151 GETTABLEKS                       R8 R8 K35 ["MIN_EFFECTOR_DISTANCE"]
      153 JUMPIFLE                         R7 R8 ; [+2]
      155 LOADB                            R6 0 +1
      156 LOADB                            R6 1
      157 JUMPIFNOT                        R6 ; [+4]
      158 GETUPVAL                         R7 0
      159 GETTABLEKS                       R7 R7 K36 ["MIN_TRANSLATION_STIFFNESS"]
      161 JUMPIF                           R7 ; [+3]
      162 GETUPVAL                         R7 0
      163 GETTABLEKS                       R7 R7 K36 ["MIN_TRANSLATION_STIFFNESS"]
      165 JUMPIFNOT                        R6 ; [+4]
      166 GETUPVAL                         R8 0
      167 GETTABLEKS                       R8 R8 K37 ["MIN_ROTATION_STIFFNESS"]
      169 JUMPIF                           R8 ; [+3]
      170 GETUPVAL                         R8 0
      171 GETTABLEKS                       R8 R8 K37 ["MIN_ROTATION_STIFFNESS"]
      173 GETUPVAL                         R9 3
      174 GETTABLEKS                       R11 R4 K17 ["Part1"]
      176 MOVE                             R12 R2
      177 MOVE                             R13 R7
      178 MOVE                             R14 R8
      179 GETIMPORT                        R15 K40 [Enum.IKCollisionsMode.NoCollisions]
      181 NAMECALL                         R9 R9 K41 ["IKMoveTo"]
      183 CALL                             R9 6 0
      184 GETTABLEKS                       R9 R4 K17 ["Part1"]
      186 GETTABLEKS                       R3 R9 K2 ["CFrame"]
      188 GETTABLEKS                       R5 R0 K26 ["_effectorCFrame"]
      190 NAMECALL                         R5 R5 K42 ["Inverse"]
      192 CALL                             R5 1 1
      193 MUL                              R4 R3 R5
      194 RETURN                           R4 1
      195 GETTABLEKS                       R2 R0 K21 ["_tool"]
      197 GETIMPORT                        R3 K44 [Enum.RibbonTool.Rotate]
      199 JUMPIFNOTEQ                      R2 R3 ; [+63]
      201 GETTABLEKS                       R2 R0 K26 ["_effectorCFrame"]
      203 JUMPIFNOT                        R2 ; [+59]
      204 GETTABLEKS                       R3 R0 K26 ["_effectorCFrame"]
      206 MUL                              R2 R1 R3
      207 LOADNIL                          R3
      208 NAMECALL                         R4 R0 K27 ["_useFFlagUseIKControls"]
      210 CALL                             R4 1 1
      211 JUMPIFNOT                        R4 ; [+18]
      212 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      214 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      216 MOVE                             R6 R2
      217 NAMECALL                         R4 R4 K29 ["solve"]
      219 CALL                             R4 2 0
      220 GETTABLEKS                       R4 R0 K0 ["_draggerContext"]
      222 GETTABLEKS                       R4 R4 K28 ["ikControlManager"]
      224 NAMECALL                         R4 R4 K30 ["getSelectedPart"]
      226 CALL                             R4 1 1
      227 GETTABLEKS                       R3 R4 K2 ["CFrame"]
      229 JUMP                             ; [+26]
      230 GETTABLEKS                       R5 R0 K9 ["_joints"]
      232 JUMPIFNOT                        R5 ; [+3]
      233 LENGTH                           R6 R5
      234 GETTABLE                         R4 R5 R6
      235 JUMP                             ; [+1]
      236 LOADNIL                          R4
      237 GETUPVAL                         R5 3
      238 GETTABLEKS                       R7 R4 K17 ["Part1"]
      240 MOVE                             R8 R2
      241 GETUPVAL                         R9 0
      242 GETTABLEKS                       R9 R9 K45 ["TRANSLATION_STIFFNESS"]
      244 GETUPVAL                         R10 0
      245 GETTABLEKS                       R10 R10 K46 ["ROTATION_STIFFNESS"]
      247 GETIMPORT                        R11 K40 [Enum.IKCollisionsMode.NoCollisions]
      249 NAMECALL                         R5 R5 K41 ["IKMoveTo"]
      251 CALL                             R5 6 0
      252 GETTABLEKS                       R5 R4 K17 ["Part1"]
      254 GETTABLEKS                       R3 R5 K2 ["CFrame"]
      256 GETTABLEKS                       R5 R0 K26 ["_effectorCFrame"]
      258 NAMECALL                         R5 R5 K42 ["Inverse"]
      260 CALL                             R5 1 1
      261 MUL                              R4 R3 R5
      262 RETURN                           R4 1
      263 RETURN                           R1 1

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
       78 GETIMPORT                        R11 K18 [game]
       80 LOADK                            R13 K24 ["ACEAnimConstraintsBones"]
       81 LOADB                            R14 0
       82 NAMECALL                         R11 R11 K25 ["DefineFastFlag"]
       84 CALL                             R11 3 1
       85 DUPCLOSURE                       R12 K26 [PROTO_0]
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R12 R10 K27 ["new"]
       91 DUPCLOSURE                       R12 K28 [PROTO_1]
       92 DUPCLOSURE                       R13 K29 [PROTO_2]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R13 R10 K30 ["beginDrag"]
       99 DUPCLOSURE                       R13 K31 [PROTO_3]
      100 DUPCLOSURE                       R14 K32 [PROTO_4]
      101 CAPTURE                          VAL R11
      102 DUPCLOSURE                       R15 K33 [PROTO_5]
      103 SETTABLEKS                       R15 R10 K34 ["applyWorldTransformToPart"]
      105 DUPCLOSURE                       R15 K35 [PROTO_6]
      106 CAPTURE                          VAL R11
      107 SETTABLEKS                       R15 R10 K36 ["applyWorldTransformToBone"]
      109 DUPCLOSURE                       R15 K37 [PROTO_7]
      110 CAPTURE                          VAL R11
      111 SETTABLEKS                       R15 R10 K38 ["applyWorldTransformToAnimConstraint"]
      113 DUPCLOSURE                       R15 K39 [PROTO_8]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 SETTABLEKS                       R15 R10 K40 ["updateDrag"]
      120 DUPCLOSURE                       R15 K41 [PROTO_9]
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R15 R10 K42 ["endDrag"]
      124 DUPCLOSURE                       R15 K43 [PROTO_10]
      125 SETTABLEKS                       R15 R10 K44 ["render"]
      127 DUPCLOSURE                       R15 K45 [PROTO_11]
      128 SETTABLEKS                       R15 R10 K46 ["_toLocalTransform"]
      130 DUPCLOSURE                       R15 K47 [PROTO_12]
      131 SETTABLEKS                       R15 R10 K48 ["_shouldSolveConstraints"]
      133 DUPCLOSURE                       R15 K49 [PROTO_13]
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R15 R10 K50 ["_useFFlagUseIKControls"]
      138 RETURN                           R10 1
