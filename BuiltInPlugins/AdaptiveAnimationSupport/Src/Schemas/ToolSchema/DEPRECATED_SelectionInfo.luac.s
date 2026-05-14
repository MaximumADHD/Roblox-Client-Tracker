PROTO_0:
        0 MOVE                             R2 R1
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R4 R2
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEN                        R3 R2 1
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 LENGTH                           R3 R2
       13 GETTABLE                         R2 R2 R3
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R5 K1 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+21]
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R6 R5 K3 ["joint"]
       26 JUMPIFEQKNIL                     R6 ; [+4]
       28 GETTABLEKS                       R3 R5 K3 ["joint"]
       30 JUMP                             ; [+6]
       31 GETTABLEKS                       R6 R5 K4 ["_bone"]
       33 JUMPIFEQKNIL                     R6 ; [+3]
       35 GETTABLEKS                       R3 R5 K4 ["_bone"]
       37 GETTABLEKS                       R6 R5 K5 ["Transform"]
       39 JUMPIFEQKNIL                     R6 ; [+3]
       41 GETTABLEKS                       R4 R5 K5 ["Transform"]
       43 JUMPIFNOTEQKNIL                  R4 ; [+15]
       45 JUMPIFNOT                        R3 ; [+9]
       46 GETIMPORT                        R5 K8 [CFrame.new]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K9 ["getJointPosition"]
       51 MOVE                             R7 R3
       52 CALL                             R6 1 -1
       53 CALL                             R5 -1 1
       54 JUMPIF                           R5 ; [+3]
       55 GETIMPORT                        R5 K8 [CFrame.new]
       57 CALL                             R5 0 1
       58 MOVE                             R4 R5
       59 DUPTABLE                         R6 K12 [{"_selectionItem", "_draggerContext"}]
       60 DUPTABLE                         R7 K13 [{"Transform", "_bone"}]
       61 SETTABLEKS                       R4 R7 K5 ["Transform"]
       63 SETTABLEKS                       R3 R7 K4 ["_bone"]
       65 SETTABLEKS                       R7 R6 K10 ["_selectionItem"]
       67 SETTABLEKS                       R0 R6 K11 ["_draggerContext"]
       69 GETUPVAL                         R7 1
       70 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       72 GETIMPORT                        R5 K15 [setmetatable]
       74 CALL                             R5 2 1
       75 GETUPVAL                         R6 2
       76 GETTABLEKS                       R6 R6 K7 ["new"]
       78 CALL                             R6 0 1
       79 SETTABLEKS                       R6 R5 K16 ["SelectionChanged"]
       81 RETURN                           R5 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 SETTABLEKS                       R1 R2 K1 ["_bone"]
        4 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETIMPORT                        R3 K4 [CFrame.new]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K5 ["getJointPosition"]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 -1
       14 CALL                             R3 -1 1
       15 JUMPIF                           R3 ; [+3]
       16 GETIMPORT                        R3 K4 [CFrame.new]
       18 CALL                             R3 0 1
       19 SETTABLEKS                       R3 R2 K6 ["Transform"]
       21 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R2 R2 K1 ["_bone"]
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R1 K1 ["Transform"]
        4 JUMPIF                           R1 ; [+3]
        5 GETIMPORT                        R1 K4 [CFrame.new]
        7 CALL                             R1 0 1
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R2 K6 [Vector3.new]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R3 R0 K7 ["_draggerContext"]
       14 JUMPIFNOT                        R3 ; [+10]
       15 GETTABLEKS                       R3 R0 K7 ["_draggerContext"]
       17 NAMECALL                         R3 R3 K8 ["shouldUseLocalSpace"]
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+4]
       21 MOVE                             R3 R1
       22 MOVE                             R4 R2
       23 LOADK                            R5 K9 [{0.8, 0.8, 0.8}]
       24 RETURN                           R3 3
       25 GETIMPORT                        R3 K4 [CFrame.new]
       27 GETTABLEKS                       R4 R1 K10 ["Position"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R2
       31 LOADK                            R5 K9 [{0.8, 0.8, 0.8}]
       32 RETURN                           R3 3

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R1 K1 ["Transform"]
        4 JUMPIF                           R1 ; [+3]
        5 GETIMPORT                        R1 K4 [CFrame.new]
        7 CALL                             R1 0 1
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R2 K6 [Vector3.new]
       11 CALL                             R2 0 1
       12 MOVE                             R3 R1
       13 MOVE                             R4 R2
       14 LOADK                            R5 K7 [{0.2, 0.2, 0.2}]
       15 RETURN                           R3 3

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R1 R1 K1 ["_bone"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 NEWTABLE                         R1 0 1
        7 GETTABLEKS                       R2 R0 K0 ["_selectionItem"]
        9 GETTABLEKS                       R2 R2 K1 ["_bone"]
       11 SETLIST                          R1 R2 1 [1]
       13 RETURN                           R1 1
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1

PROTO_12:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionItem"]
        2 GETTABLEKS                       R3 R3 K1 ["_bone"]
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
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Utility"]
       15 GETTABLEKS                       R3 R3 K9 ["Signal"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["AdaptiveAnimationTools"]
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
       61 SETTABLEKS                       R5 R4 K31 ["getBoundingBox"]
       63 DUPCLOSURE                       R5 K32 [PROTO_10]
       64 SETTABLEKS                       R5 R4 K33 ["getLocalBoundingBox"]
       66 DUPCLOSURE                       R5 K34 [PROTO_11]
       67 SETTABLEKS                       R5 R4 K35 ["getObjects"]
       69 DUPCLOSURE                       R5 K36 [PROTO_12]
       70 SETTABLEKS                       R5 R4 K37 ["isDynamic"]
       72 DUPCLOSURE                       R5 K38 [PROTO_13]
       73 SETTABLEKS                       R5 R4 K39 ["doesContainItem"]
       75 RETURN                           R4 1
