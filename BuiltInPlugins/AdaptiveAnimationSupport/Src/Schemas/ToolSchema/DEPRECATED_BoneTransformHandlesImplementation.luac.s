PROTO_0:
        0 DUPTABLE                         R5 K8 [{"_draggerContext", "_applyBoneTransform", "_hrd", "_symmetryOn", "_initialTransform", "_initialBone", "_initialWorldCFrame", "isDragging"}]
        1 SETTABLEKS                       R0 R5 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R5 K1 ["_applyBoneTransform"]
        5 SETTABLEKS                       R2 R5 K2 ["_hrd"]
        7 SETTABLEKS                       R3 R5 K3 ["_symmetryOn"]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K4 ["_initialTransform"]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K5 ["_initialBone"]
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
       13 GETTABLEKS                       R4 R3 K6 ["_bone"]
       15 SETTABLEKS                       R4 R0 K7 ["_initialBone"]
       17 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       19 LOADK                            R6 K8 ["Motor6D"]
       20 NAMECALL                         R4 R4 K9 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+24]
       24 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       26 GETTABLEKS                       R5 R4 K10 ["Part0"]
       28 JUMPIFNOT                        R5 ; [+10]
       29 GETTABLEKS                       R7 R4 K10 ["Part0"]
       31 GETTABLEKS                       R6 R7 K2 ["CFrame"]
       33 GETTABLEKS                       R7 R4 K11 ["C0"]
       35 MUL                              R5 R6 R7
       36 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       38 JUMP                             ; [+4]
       39 GETTABLEKS                       R5 R4 K11 ["C0"]
       41 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       43 GETTABLEKS                       R5 R4 K11 ["C0"]
       45 SETTABLEKS                       R5 R0 K5 ["_initialTransform"]
       47 RETURN                           R0 0
       48 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       50 LOADK                            R6 K13 ["Bone"]
       51 NAMECALL                         R4 R4 K9 ["IsA"]
       53 CALL                             R4 2 1
       54 JUMPIFNOT                        R4 ; [+11]
       55 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       57 GETTABLEKS                       R5 R4 K14 ["TransformedWorldCFrame"]
       59 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       61 GETTABLEKS                       R5 R4 K15 ["Transform"]
       63 SETTABLEKS                       R5 R0 K5 ["_initialTransform"]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       68 LOADK                            R6 K16 ["AnimationConstraint"]
       69 NAMECALL                         R4 R4 K9 ["IsA"]
       71 CALL                             R4 2 1
       72 JUMPIFNOT                        R4 ; [+24]
       73 GETTABLEKS                       R4 R0 K7 ["_initialBone"]
       75 GETTABLEKS                       R5 R4 K17 ["Attachment1"]
       77 JUMPIFNOT                        R5 ; [+10]
       78 GETTABLEKS                       R7 R4 K17 ["Attachment1"]
       80 GETTABLEKS                       R6 R7 K18 ["WorldCFrame"]
       82 GETTABLEKS                       R7 R4 K15 ["Transform"]
       84 MUL                              R5 R6 R7
       85 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       87 JUMP                             ; [+4]
       88 GETTABLEKS                       R5 R4 K15 ["Transform"]
       90 SETTABLEKS                       R5 R0 K12 ["_initialWorldCFrame"]
       92 GETTABLEKS                       R5 R4 K15 ["Transform"]
       94 SETTABLEKS                       R5 R0 K5 ["_initialTransform"]
       96 RETURN                           R0 0
       97 GETIMPORT                        R4 K4 [CFrame.new]
       99 CALL                             R4 0 1
      100 SETTABLEKS                       R4 R0 K12 ["_initialWorldCFrame"]
      102 GETIMPORT                        R4 K20 [CFrame.identity]
      104 SETTABLEKS                       R4 R0 K5 ["_initialTransform"]
      106 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_applyBoneTransform"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["_applyBoneTransform"]
        5 GETTABLEKS                       R3 R0 K1 ["_initialBone"]
        7 MOVE                             R4 R1
        8 GETTABLEKS                       R5 R0 K2 ["_initialWorldCFrame"]
       10 GETTABLEKS                       R6 R0 K3 ["_initialTransform"]
       12 CALL                             R2 4 0
       13 GETTABLEKS                       R2 R0 K4 ["_draggerContext"]
       15 JUMPIFNOT                        R2 ; [+19]
       16 GETTABLEKS                       R3 R0 K4 ["_draggerContext"]
       18 GETTABLEKS                       R2 R3 K5 ["_selection"]
       20 JUMPIFNOT                        R2 ; [+14]
       21 GETTABLEKS                       R2 R0 K2 ["_initialWorldCFrame"]
       23 JUMPIFNOT                        R2 ; [+11]
       24 GETTABLEKS                       R3 R0 K2 ["_initialWorldCFrame"]
       26 MUL                              R2 R1 R3
       27 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       29 GETTABLEKS                       R3 R4 K5 ["_selection"]
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K6 ["SetTransform"]
       34 CALL                             R3 2 0
       35 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isDragging"]
        3 GETTABLEKS                       R1 R0 K1 ["_initialBone"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R1 R0 K2 ["_draggerContext"]
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       11 GETTABLEKS                       R1 R2 K3 ["_selection"]
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
       16 GETTABLEKS                       R1 R2 K3 ["_selection"]
       18 GETTABLEKS                       R3 R0 K1 ["_initialBone"]
       20 NAMECALL                         R1 R1 K4 ["SetJoint"]
       22 CALL                             R1 2 0
       23 GETTABLEKS                       R1 R0 K1 ["_initialBone"]
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETTABLEKS                       R1 R0 K5 ["_hrd"]
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K6 ["addTPoseWaypoint"]
       32 LOADK                            R2 K7 ["Bone Transform"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K8 ["_initialTransform"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K1 ["_initialBone"]
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K9 ["_initialWorldCFrame"]
       43 RETURN                           R0 0

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
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K11 ["new"]
       24 DUPCLOSURE                       R3 K12 [PROTO_1]
       25 SETTABLEKS                       R3 R2 K13 ["beginDrag"]
       27 DUPCLOSURE                       R3 K14 [PROTO_2]
       28 SETTABLEKS                       R3 R2 K15 ["updateDrag"]
       30 DUPCLOSURE                       R3 K16 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R3 R2 K17 ["endDrag"]
       34 DUPCLOSURE                       R3 K18 [PROTO_4]
       35 SETTABLEKS                       R3 R2 K19 ["getMinMaxSizes"]
       37 DUPCLOSURE                       R3 K20 [PROTO_5]
       38 SETTABLEKS                       R3 R2 K21 ["render"]
       40 RETURN                           R2 1
