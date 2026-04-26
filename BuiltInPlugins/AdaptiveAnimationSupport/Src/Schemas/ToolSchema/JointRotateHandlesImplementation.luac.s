PROTO_0:
        0 DUPTABLE                         R5 K8 [{"_draggerContext", "_applyJointTransform", "_hrd", "_symmetryOn", "_initialTransform", "_initialJoint", "_initialWorldCFrame", "isDragging"}]
        1 SETTABLEKS                       R0 R5 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R5 K1 ["_applyJointTransform"]
        5 SETTABLEKS                       R2 R5 K2 ["_hrd"]
        7 SETTABLEKS                       R3 R5 K3 ["_symmetryOn"]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K4 ["_initialTransform"]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K5 ["_initialJoint"]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K6 ["_initialWorldCFrame"]
       18 LOADB                            R6 0
       19 SETTABLEKS                       R6 R5 K7 ["isDragging"]
       21 GETUPVAL                         R6 0
       22 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       24 GETIMPORT                        R4 K10 [setmetatable]
       26 CALL                             R4 2 1
       27 RETURN                           R4 1

PROTO_1:
        0 LOADB                            R3 1
        1 SETTABLEKS                       R3 R0 K0 ["isDragging"]
        3 LENGTH                           R3 R1
        4 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
        6 GETIMPORT                        R3 K4 [CFrame.new]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R0 K5 ["_initialTransform"]
       11 RETURN                           R0 0
       12 GETTABLEN                        R3 R1 1
       13 SETTABLEKS                       R3 R0 K6 ["_initialJoint"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K7 ["getJointTransform"]
       18 GETTABLEKS                       R4 R0 K6 ["_initialJoint"]
       20 CALL                             R3 1 1
       21 JUMPIF                           R3 ; [+2]
       22 GETIMPORT                        R3 K9 [CFrame.identity]
       24 SETTABLEKS                       R3 R0 K5 ["_initialTransform"]
       26 JUMPIFNOT                        R2 ; [+27]
       27 GETTABLEKS                       R3 R2 K10 ["Get"]
       29 JUMPIFNOT                        R3 ; [+24]
       30 NAMECALL                         R3 R2 K10 ["Get"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R3
       34 JUMPIFNOT                        R4 ; [+1]
       35 GETTABLEN                        R4 R3 1
       36 JUMPIFNOT                        R4 ; [+8]
       37 GETTABLEKS                       R5 R4 K11 ["Transform"]
       39 JUMPIFNOT                        R5 ; [+5]
       40 GETTABLEKS                       R5 R4 K11 ["Transform"]
       42 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       44 JUMP                             ; [+17]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K13 ["getGlobalCoordinateFrame"]
       48 GETTABLEKS                       R6 R0 K6 ["_initialJoint"]
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       53 JUMP                             ; [+8]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R3 R4 K13 ["getGlobalCoordinateFrame"]
       57 GETTABLEKS                       R4 R0 K6 ["_initialJoint"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R0 K12 ["_initialWorldCFrame"]
       62 GETIMPORT                        R3 K9 [CFrame.identity]
       64 GETTABLEKS                       R4 R0 K14 ["_hrd"]
       66 JUMPIFNOT                        R4 ; [+63]
       67 GETUPVAL                         R4 1
       68 CALL                             R4 0 1
       69 JUMPIFNOT                        R4 ; [+26]
       70 GETTABLEKS                       R4 R0 K14 ["_hrd"]
       72 LOADK                            R6 K15 ["DigitsRigDescription"]
       73 NAMECALL                         R4 R4 K16 ["IsA"]
       75 CALL                             R4 2 1
       76 JUMPIFNOT                        R4 ; [+19]
       77 GETTABLEKS                       R4 R0 K14 ["_hrd"]
       79 GETUPVAL                         R6 2
       80 GETTABLEKS                       R5 R6 K17 ["getRigLabelForJoint"]
       82 MOVE                             R6 R4
       83 GETTABLEKS                       R7 R0 K6 ["_initialJoint"]
       85 CALL                             R5 2 1
       86 JUMPIFNOT                        R5 ; [+43]
       87 MOVE                             R8 R5
       88 NAMECALL                         R6 R4 K18 ["GetTposeAdjustment"]
       90 CALL                             R6 2 1
       91 JUMPIF                           R6 ; [+2]
       92 GETIMPORT                        R6 K9 [CFrame.identity]
       94 MOVE                             R3 R6
       95 JUMP                             ; [+34]
       96 GETTABLEKS                       R4 R0 K14 ["_hrd"]
       98 LOADK                            R6 K19 ["HumanoidRigDescription"]
       99 NAMECALL                         R4 R4 K16 ["IsA"]
      101 CALL                             R4 2 1
      102 JUMPIFNOT                        R4 ; [+27]
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R4 R7 K20 ["bodyRigLabels"]
      106 LOADNIL                          R5
      107 LOADNIL                          R6
      108 FORGPREP                         R4
      109 GETTABLEKS                       R9 R0 K14 ["_hrd"]
      111 MOVE                             R12 R8
      112 NAMECALL                         R10 R9 K21 ["GetJoint"]
      114 CALL                             R10 2 1
      115 GETTABLEKS                       R11 R0 K6 ["_initialJoint"]
      117 JUMPIFNOTEQ                      R10 R11 ; [+10]
      119 MOVE                             R12 R8
      120 NAMECALL                         R10 R9 K18 ["GetTposeAdjustment"]
      122 CALL                             R10 2 1
      123 JUMPIF                           R10 ; [+2]
      124 GETIMPORT                        R10 K9 [CFrame.identity]
      126 MOVE                             R3 R10
      127 JUMP                             ; [+2]
      128 FORGLOOP                         R4 2 ; [-20]
      130 SETTABLEKS                       R3 R0 K22 ["_initialTPoseAdjustment"]
      132 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_initialJoint"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R1 1
        4 GETIMPORT                        R2 K3 [CFrame.fromMatrix]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R3 K6 [Vector3.new]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R1 K7 ["XVector"]
       12 GETTABLEKS                       R5 R1 K8 ["YVector"]
       14 GETTABLEKS                       R6 R1 K9 ["ZVector"]
       16 CALL                             R2 4 1
       17 GETTABLEKS                       R3 R0 K10 ["_applyJointTransform"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 GETTABLEKS                       R3 R0 K10 ["_applyJointTransform"]
       22 GETTABLEKS                       R4 R0 K0 ["_initialJoint"]
       24 MOVE                             R5 R2
       25 GETTABLEKS                       R6 R0 K11 ["_initialWorldCFrame"]
       27 GETTABLEKS                       R7 R0 K12 ["_initialTPoseAdjustment"]
       29 LOADB                            R8 1
       30 CALL                             R3 5 0
       31 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isDragging"]
        3 GETTABLEKS                       R1 R0 K1 ["_initialJoint"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K2 ["_hrd"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["addTPoseWaypoint"]
       12 LOADK                            R2 K4 ["Bone Rotate"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K5 ["_initialTransform"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K1 ["_initialJoint"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K6 ["_initialWorldCFrame"]
       23 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 [{0.1, 0.1, 0.1}]
        1 LOADK                            R5 K1 [{100, 100, 100}]
        2 RETURN                           R4 2

PROTO_5:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["UndoUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["AdaptiveAnimationTools"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K7 ["Utils"]
       29 GETTABLEKS                       R4 R5 K11 ["DigitsRigUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Flags"]
       38 GETTABLEKS                       R5 R6 K13 ["getFFlagAdaptiveAnimationHandRig"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 8 0
       43 SETTABLEKS                       R5 R5 K14 ["__index"]
       45 DUPCLOSURE                       R6 K15 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R6 R5 K16 ["new"]
       49 DUPCLOSURE                       R6 K17 [PROTO_1]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R6 R5 K18 ["beginDrag"]
       55 DUPCLOSURE                       R6 K19 [PROTO_2]
       56 SETTABLEKS                       R6 R5 K20 ["updateDrag"]
       58 DUPCLOSURE                       R6 K21 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R6 R5 K22 ["endDrag"]
       62 DUPCLOSURE                       R6 K23 [PROTO_4]
       63 SETTABLEKS                       R6 R5 K24 ["getMinMaxSizes"]
       65 DUPCLOSURE                       R6 K25 [PROTO_5]
       66 SETTABLEKS                       R6 R5 K26 ["render"]
       68 RETURN                           R5 1
