PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FOLDERS"]
        5 GETTABLEKS                       R3 R3 K1 ["CompositorDebugger"]
        7 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 MOVE                             R2 R1
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["FOLDERS"]
       15 GETTABLEKS                       R4 R4 K3 ["Gizmos"]
       17 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 MOVE                             R4 R0
        9 JUMPIFNOT                        R4 ; [+8]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FOLDERS"]
       13 GETTABLEKS                       R6 R6 K3 ["CompositorDebugger"]
       15 NAMECALL                         R4 R0 K4 ["FindFirstChild"]
       17 CALL                             R4 2 1
       18 MOVE                             R5 R4
       19 JUMPIFNOT                        R5 ; [+8]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K2 ["FOLDERS"]
       23 GETTABLEKS                       R7 R7 K5 ["Gizmos"]
       25 NAMECALL                         R5 R4 K4 ["FindFirstChild"]
       27 CALL                             R5 2 1
       28 MOVE                             R3 R5
       29 MOVE                             R4 R0
       30 JUMPIFNOT                        R4 ; [+4]
       31 LOADK                            R6 K6 ["HumanoidRootPart"]
       32 NAMECALL                         R4 R0 K4 ["FindFirstChild"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R3 ; [+1]
       36 JUMPIF                           R4 ; [+2]
       37 LOADNIL                          R5
       38 RETURN                           R5 1
       39 JUMPIFNOT                        R3 ; [+5]
       40 MOVE                             R7 R1
       41 NAMECALL                         R5 R3 K4 ["FindFirstChild"]
       43 CALL                             R5 2 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R2 K7 ["gizmoInstance"]
       48 GETTABLEKS                       R5 R2 K7 ["gizmoInstance"]
       50 JUMPIF                           R5 ; [+15]
       51 GETIMPORT                        R5 K10 [Instance.new]
       53 LOADK                            R6 K11 ["WireframeHandleAdornment"]
       54 CALL                             R5 1 1
       55 SETTABLEKS                       R1 R5 K12 ["Name"]
       57 SETTABLEKS                       R3 R5 K13 ["Parent"]
       59 SETTABLEKS                       R4 R5 K14 ["Adornee"]
       61 LOADB                            R6 1
       62 SETTABLEKS                       R6 R5 K15 ["AlwaysOnTop"]
       64 SETTABLEKS                       R5 R2 K7 ["gizmoInstance"]
       66 NEWTABLE                         R5 0 0
       68 SETTABLEKS                       R5 R2 K16 ["commands"]
       70 RETURN                           R2 1

PROTO_2:
        0 ORK                              R4 R3 K0 [{0, 1, 0}]
        1 GETIMPORT                        R5 K3 [CFrame.lookAlong]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R4
        5 CALL                             R5 2 1
        6 NEWTABLE                         R6 0 0
        8 LOADN                            R9 1
        9 LOADN                            R7 12
       10 LOADN                            R8 1
       11 FORNPREP                         R7
       12 MULK                             R13 R9 K4 [0.523598775598299]
       13 FASTCALL1                        MATH_COS R13 ; [+2]
       14 GETIMPORT                        R12 K7 [math.cos]
       16 CALL                             R12 1 1
       17 MULK                             R14 R9 K4 [0.523598775598299]
       18 FASTCALL1                        MATH_SIN R14 ; [+2]
       19 GETIMPORT                        R13 K9 [math.sin]
       21 CALL                             R13 1 1
       22 LOADN                            R14 0
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R11 K12 [Vector3.new]
       26 CALL                             R11 3 1
       27 MUL                              R10 R11 R2
       28 MOVE                             R13 R10
       29 NAMECALL                         R11 R5 K13 ["PointToWorldSpace"]
       31 CALL                             R11 2 1
       32 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       34 MOVE                             R13 R6
       35 MOVE                             R14 R11
       36 GETIMPORT                        R12 K16 [table.insert]
       38 CALL                             R12 2 0
       39 FORNLOOP                         R7
       40 MOVE                             R9 R6
       41 LOADB                            R10 1
       42 NAMECALL                         R7 R0 K17 ["AddPath"]
       44 CALL                             R7 3 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gizmoInstance"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["AddLine"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["commands"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Vector3"] ; [+6]
        7 GETIMPORT                        R0 K5 [CFrame.new]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 1
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K6 ["gizmoInstance"]
       17 GETTABLEKS                       R3 R0 K7 ["Position"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R6 R0 K8 ["Rotation"]
       22 LOADK                            R7 K9 [{1, 0, 0}]
       23 MUL                              R5 R6 R7
       24 CALL                             R1 4 0
       25 GETUPVAL                         R1 1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K6 ["gizmoInstance"]
       29 GETTABLEKS                       R3 R0 K7 ["Position"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R6 R0 K8 ["Rotation"]
       34 LOADK                            R7 K10 [{0, 1, 0}]
       35 MUL                              R5 R6 R7
       36 CALL                             R1 4 0
       37 GETUPVAL                         R1 1
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K6 ["gizmoInstance"]
       41 GETTABLEKS                       R3 R0 K7 ["Position"]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R6 R0 K8 ["Rotation"]
       46 LOADK                            R7 K11 [{0, 0, 1}]
       47 MUL                              R5 R6 R7
       48 CALL                             R1 4 0
       49 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["commands"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
        9 GETIMPORT                        R3 K3 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R10 R7
        7 MOVE                             R11 R2
        8 NAMECALL                         R8 R1 K0 ["GetArticulatedJoint"]
       10 CALL                             R8 3 1
       11 JUMPIFNOT                        R8 ; [+10]
       12 GETTABLEKS                       R11 R8 K1 ["ModelCFrame"]
       14 GETUPVAL                         R12 1
       15 GETTABLEKS                       R12 R12 K2 ["GIZMOS"]
       17 GETTABLEKS                       R12 R12 K3 ["SphereRadius"]
       19 NAMECALL                         R9 R0 K4 ["DrawSphere"]
       21 CALL                             R9 3 0
       22 FORGLOOP                         R3 2 ; [-17]
       24 GETUPVAL                         R3 2
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 MOVE                             R10 R6
       29 MOVE                             R11 R2
       30 NAMECALL                         R8 R1 K0 ["GetArticulatedJoint"]
       32 CALL                             R8 3 1
       33 MOVE                             R11 R7
       34 MOVE                             R12 R2
       35 NAMECALL                         R9 R1 K0 ["GetArticulatedJoint"]
       37 CALL                             R9 3 1
       38 JUMPIFNOT                        R8 ; [+12]
       39 JUMPIFNOT                        R9 ; [+11]
       40 GETTABLEKS                       R12 R8 K1 ["ModelCFrame"]
       42 GETTABLEKS                       R12 R12 K5 ["Position"]
       44 GETTABLEKS                       R13 R9 K1 ["ModelCFrame"]
       46 GETTABLEKS                       R13 R13 K5 ["Position"]
       48 NAMECALL                         R10 R0 K6 ["DrawLine"]
       50 CALL                             R10 3 0
       51 FORGLOOP                         R3 2 ; [-24]
       53 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["gizmoInstance"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["gizmoInstance"]
        5 SETTABLEKS                       R1 R2 K1 ["Color3"]
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["gizmoInstance"]
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETTABLEKS                       R1 R0 K0 ["gizmoInstance"]
        5 NAMECALL                         R1 R1 K1 ["Clear"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["commands"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 MOVE                             R6 R5
       14 CALL                             R6 0 0
       15 FORGLOOP                         R1 2 ; [-3]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K2 ["commands"]
       21 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["gizmoInstance"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gizmoInstance"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["gizmoInstance"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 15
       18 LOADK                            R3 K9 ["Head"]
       19 LOADK                            R4 K10 ["UpperTorso"]
       20 LOADK                            R5 K11 ["LowerTorso"]
       21 LOADK                            R6 K12 ["LeftHand"]
       22 LOADK                            R7 K13 ["LeftLowerArm"]
       23 LOADK                            R8 K14 ["LeftUpperArm"]
       24 LOADK                            R9 K15 ["RightHand"]
       25 LOADK                            R10 K16 ["RightLowerArm"]
       26 LOADK                            R11 K17 ["RightUpperArm"]
       27 LOADK                            R12 K18 ["LeftFoot"]
       28 LOADK                            R13 K19 ["LeftLowerLeg"]
       29 LOADK                            R14 K20 ["LeftUpperLeg"]
       30 LOADK                            R15 K21 ["RightFoot"]
       31 LOADK                            R16 K22 ["RightLowerLeg"]
       32 LOADK                            R17 K23 ["RightUpperLeg"]
       33 SETLIST                          R2 R3 15 [1]
       35 DUPTABLE                         R3 K24 [{"Head", "UpperTorso", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "RightUpperLeg"}]
       36 LOADK                            R4 K10 ["UpperTorso"]
       37 SETTABLEKS                       R4 R3 K9 ["Head"]
       39 LOADK                            R4 K11 ["LowerTorso"]
       40 SETTABLEKS                       R4 R3 K10 ["UpperTorso"]
       42 LOADK                            R4 K13 ["LeftLowerArm"]
       43 SETTABLEKS                       R4 R3 K12 ["LeftHand"]
       45 LOADK                            R4 K14 ["LeftUpperArm"]
       46 SETTABLEKS                       R4 R3 K13 ["LeftLowerArm"]
       48 LOADK                            R4 K10 ["UpperTorso"]
       49 SETTABLEKS                       R4 R3 K14 ["LeftUpperArm"]
       51 LOADK                            R4 K16 ["RightLowerArm"]
       52 SETTABLEKS                       R4 R3 K15 ["RightHand"]
       54 LOADK                            R4 K17 ["RightUpperArm"]
       55 SETTABLEKS                       R4 R3 K16 ["RightLowerArm"]
       57 LOADK                            R4 K10 ["UpperTorso"]
       58 SETTABLEKS                       R4 R3 K17 ["RightUpperArm"]
       60 LOADK                            R4 K19 ["LeftLowerLeg"]
       61 SETTABLEKS                       R4 R3 K18 ["LeftFoot"]
       63 LOADK                            R4 K20 ["LeftUpperLeg"]
       64 SETTABLEKS                       R4 R3 K19 ["LeftLowerLeg"]
       66 LOADK                            R4 K11 ["LowerTorso"]
       67 SETTABLEKS                       R4 R3 K20 ["LeftUpperLeg"]
       69 LOADK                            R4 K22 ["RightLowerLeg"]
       70 SETTABLEKS                       R4 R3 K21 ["RightFoot"]
       72 LOADK                            R4 K23 ["RightUpperLeg"]
       73 SETTABLEKS                       R4 R3 K22 ["RightLowerLeg"]
       75 LOADK                            R4 K11 ["LowerTorso"]
       76 SETTABLEKS                       R4 R3 K23 ["RightUpperLeg"]
       78 NEWTABLE                         R4 8 0
       80 SETTABLEKS                       R4 R4 K25 ["__index"]
       82 DUPCLOSURE                       R5 K26 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 DUPCLOSURE                       R6 K27 [PROTO_1]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R6 R4 K28 ["new"]
       89 DUPCLOSURE                       R6 K29 [PROTO_2]
       90 DUPCLOSURE                       R7 K30 [PROTO_4]
       91 SETTABLEKS                       R7 R4 K31 ["DrawLine"]
       93 DUPCLOSURE                       R7 K32 [PROTO_6]
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R7 R4 K33 ["DrawSphere"]
       97 DUPCLOSURE                       R7 K34 [PROTO_7]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R7 R4 K35 ["DrawPose"]
      103 DUPCLOSURE                       R7 K36 [PROTO_8]
      104 SETTABLEKS                       R7 R4 K37 ["SetColor"]
      106 DUPCLOSURE                       R7 K38 [PROTO_9]
      107 SETTABLEKS                       R7 R4 K39 ["Update"]
      109 DUPCLOSURE                       R7 K40 [PROTO_10]
      110 SETTABLEKS                       R7 R4 K41 ["Destroy"]
      112 RETURN                           R4 1
