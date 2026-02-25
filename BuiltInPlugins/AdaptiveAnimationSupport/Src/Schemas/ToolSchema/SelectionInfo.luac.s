PROTO_0:
        0 GETTABLEN                        R2 R1 1
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["getGlobalCoordinateFrame"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+3]
        8 GETIMPORT                        R3 K3 [CFrame.new]
       10 CALL                             R3 0 1
       11 DUPTABLE                         R5 K6 [{"_selectionItem", "_draggerContext"}]
       12 DUPTABLE                         R6 K9 [{"joint", "Transform"}]
       13 SETTABLEKS                       R2 R6 K7 ["joint"]
       15 SETTABLEKS                       R3 R6 K8 ["Transform"]
       17 SETTABLEKS                       R6 R5 K4 ["_selectionItem"]
       19 SETTABLEKS                       R0 R5 K5 ["_draggerContext"]
       21 GETUPVAL                         R6 1
       22 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       24 GETIMPORT                        R4 K11 [setmetatable]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K2 ["new"]
       30 CALL                             R5 0 1
       31 SETTABLEKS                       R5 R4 K12 ["SelectionChanged"]
       33 RETURN                           R4 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 SETTABLEKS                       R1 R2 K1 ["joint"]
        4 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["getGlobalCoordinateFrame"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+3]
       13 GETIMPORT                        R3 K5 [CFrame.new]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K6 ["Transform"]
       18 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["SetJoint"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 SETTABLEKS                       R1 R2 K1 ["Transform"]
        4 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["SetTransform"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["SelectionChanged"]
        6 NAMECALL                         R2 R2 K2 ["Fire"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R2 R3 K1 ["joint"]
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R2 K1 ["joint"]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["getGlobalCoordinateFrame"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 JUMP                             ; [+4]
       13 GETIMPORT                        R3 K5 [CFrame.new]
       15 CALL                             R3 0 1
       16 MOVE                             R2 R3
       17 MOVE                             R3 R2
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R4 K7 [Vector3.new]
       21 CALL                             R4 0 1
       22 LOADK                            R5 K8 [{0.8, 0.8, 0.8}]
       23 RETURN                           R3 3

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R2 K1 ["joint"]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R1 ; [+25]
        6 LOADK                            R5 K2 ["Motor6D"]
        7 NAMECALL                         R3 R1 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+20]
       11 GETTABLEKS                       R3 R1 K4 ["Part0"]
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETTABLEKS                       R5 R3 K5 ["CFrame"]
       16 GETTABLEKS                       R6 R1 K6 ["C0"]
       18 MUL                              R4 R5 R6
       19 GETIMPORT                        R5 K8 [CFrame.new]
       21 GETTABLEKS                       R6 R4 K9 ["Position"]
       23 CALL                             R5 1 1
       24 MOVE                             R2 R5
       25 JUMP                             ; [+17]
       26 GETIMPORT                        R4 K8 [CFrame.new]
       28 CALL                             R4 0 1
       29 MOVE                             R2 R4
       30 JUMP                             ; [+12]
       31 JUMPIFNOT                        R1 ; [+7]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K10 ["getGlobalCoordinateFrame"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 MOVE                             R2 R3
       38 JUMP                             ; [+4]
       39 GETIMPORT                        R3 K8 [CFrame.new]
       41 CALL                             R3 0 1
       42 MOVE                             R2 R3
       43 MOVE                             R3 R2
       44 FASTCALL                         VECTOR ; [+2]
       45 GETIMPORT                        R4 K12 [Vector3.new]
       47 CALL                             R4 0 1
       48 LOADK                            R5 K13 [{0.2, 0.2, 0.2}]
       49 RETURN                           R3 3

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R2 K1 ["joint"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 NEWTABLE                         R1 0 1
        7 GETTABLEKS                       R3 R0 K0 ["_selectionItem"]
        9 GETTABLEKS                       R2 R3 K1 ["joint"]
       11 SETLIST                          R1 R2 1 [1]
       13 RETURN                           R1 1
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1

PROTO_12:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R3 R4 K1 ["joint"]
        4 JUMPIFEQ                         R1 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R2 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R4 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["AdaptiveAnimationTools"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 16 0
       27 SETTABLEKS                       R4 R4 K11 ["__index"]
       29 DUPCLOSURE                       R5 K12 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R4 K13 ["new"]
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 SETTABLEKS                       R5 R4 K15 ["SetDraggerContext"]
       38 DUPCLOSURE                       R5 K16 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K17 ["SetJoint"]
       42 DUPCLOSURE                       R5 K18 [PROTO_3]
       43 SETTABLEKS                       R5 R4 K19 ["SetJointSignal"]
       45 DUPCLOSURE                       R5 K20 [PROTO_4]
       46 SETTABLEKS                       R5 R4 K21 ["SetTransform"]
       48 DUPCLOSURE                       R5 K22 [PROTO_5]
       49 SETTABLEKS                       R5 R4 K23 ["SetTransformSignal"]
       51 DUPCLOSURE                       R5 K24 [PROTO_6]
       52 SETTABLEKS                       R5 R4 K25 ["Set"]
       54 DUPCLOSURE                       R5 K26 [PROTO_7]
       55 SETTABLEKS                       R5 R4 K27 ["Get"]
       57 DUPCLOSURE                       R5 K28 [PROTO_8]
       58 SETTABLEKS                       R5 R4 K29 ["isEmpty"]
       60 DUPCLOSURE                       R5 K30 [PROTO_9]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R5 R4 K31 ["getBoundingBox"]
       64 DUPCLOSURE                       R5 K32 [PROTO_10]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R5 R4 K33 ["getLocalBoundingBox"]
       68 DUPCLOSURE                       R5 K34 [PROTO_11]
       69 SETTABLEKS                       R5 R4 K35 ["getObjects"]
       71 DUPCLOSURE                       R5 K36 [PROTO_12]
       72 SETTABLEKS                       R5 R4 K37 ["isDynamic"]
       74 DUPCLOSURE                       R5 K38 [PROTO_13]
       75 SETTABLEKS                       R5 R4 K39 ["doesContainItem"]
       77 RETURN                           R4 1
