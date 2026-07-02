PROTO_0:
        0 DUPTABLE                         R5 K10 [{[1], ["_applyJointTransform"], ["_hrd"], ["_symmetryOn"], ["_initialTransform"] = , ["_initialJoint"] = , ["_initialWorldCFrame"] = , ["isDragging"] = False}]
        1 SETTABLEKS                       R0 R5 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R5 K1 ["_applyJointTransform"]
        5 SETTABLEKS                       R2 R5 K2 ["_hrd"]
        7 SETTABLEKS                       R3 R5 K3 ["_symmetryOn"]
        9 GETUPVAL                         R6 0
       10 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       12 GETIMPORT                        R4 K12 [setmetatable]
       14 CALL                             R4 2 1
       15 RETURN                           R4 1

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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K7 ["getJointTransform"]
       18 GETTABLEKS                       R4 R0 K6 ["_initialJoint"]
       20 CALL                             R3 1 1
       21 JUMPIF                           R3 ; [+2]
       22 GETIMPORT                        R3 K9 [CFrame.identity]
       24 SETTABLEKS                       R3 R0 K5 ["_initialTransform"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K10 ["getGlobalCoordinateFrame"]
       29 GETTABLEKS                       R4 R0 K6 ["_initialJoint"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R0 K11 ["_initialWorldCFrame"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_initialJoint"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K1 ["_applyJointTransform"]
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETTABLEKS                       R2 R0 K1 ["_applyJointTransform"]
        9 GETTABLEKS                       R3 R0 K0 ["_initialJoint"]
       11 MOVE                             R4 R1
       12 GETTABLEKS                       R5 R0 K2 ["_initialWorldCFrame"]
       14 GETTABLEKS                       R6 R0 K3 ["_initialTransform"]
       16 LOADB                            R7 0
       17 CALL                             R2 5 0
       18 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isDragging"]
        3 GETTABLEKS                       R1 R0 K1 ["_initialJoint"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K2 ["_hrd"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["addTPoseWaypoint"]
       12 LOADK                            R2 K4 ["Bone Translate"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utils"]
       13 GETTABLEKS                       R2 R2 K8 ["UndoUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["AdaptiveAnimationTools"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 SETTABLEKS                       R3 R3 K11 ["__index"]
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K13 ["new"]
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K15 ["beginDrag"]
       35 DUPCLOSURE                       R4 K16 [PROTO_2]
       36 SETTABLEKS                       R4 R3 K17 ["updateDrag"]
       38 DUPCLOSURE                       R4 K18 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R4 R3 K19 ["endDrag"]
       42 DUPCLOSURE                       R4 K20 [PROTO_4]
       43 SETTABLEKS                       R4 R3 K21 ["getMinMaxSizes"]
       45 DUPCLOSURE                       R4 K22 [PROTO_5]
       46 SETTABLEKS                       R4 R3 K23 ["render"]
       48 RETURN                           R3 1
