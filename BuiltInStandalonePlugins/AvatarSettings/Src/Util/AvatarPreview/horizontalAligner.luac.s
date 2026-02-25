PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Position"]
        2 GETTABLEKS                       R3 R4 K1 ["Y"]
        4 GETTABLEKS                       R5 R1 K1 ["Y"]
        6 DIVK                             R4 R5 K2 [2]
        7 SUB                              R2 R3 R4
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 2
        4 GETTABLEKS                       R6 R3 K0 ["Position"]
        6 GETTABLEKS                       R5 R6 K1 ["Y"]
        8 GETTABLEKS                       R7 R4 K1 ["Y"]
       10 DIVK                             R6 R7 K2 [2]
       11 SUB                              R2 R5 R6
       12 SETTABLE                         R2 R1 R0
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 LOADK                            R5 K1 ["Model"]
        5 NAMECALL                         R3 R1 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       10 LOADK                            R4 K3 ["Humanoid must be a child of a Model"]
       11 GETIMPORT                        R2 K5 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLE                         R2 R3 R0
       16 JUMPIF                           R2 ; [+5]
       17 GETIMPORT                        R2 K7 [error]
       19 LOADK                            R3 K8 ["Humanoid alignment data not found for the given humanoid."]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 GETTABLE                         R3 R4 R0
       24 GETUPVAL                         R5 1
       25 MOVE                             R6 R0
       26 CALL                             R5 1 2
       27 GETTABLEKS                       R8 R5 K9 ["Position"]
       29 GETTABLEKS                       R7 R8 K10 ["Y"]
       31 GETTABLEKS                       R9 R6 K10 ["Y"]
       33 DIVK                             R8 R9 K11 [2]
       34 SUB                              R4 R7 R8
       35 SUB                              R2 R3 R4
       36 NAMECALL                         R6 R1 K12 ["GetPivot"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K15 [CFrame.new]
       41 LOADN                            R9 0
       42 LOADN                            R11 0
       43 FASTCALL3                        VECTOR R9 R2 R11
       45 MOVE                             R10 R2
       46 GETIMPORT                        R8 K17 [Vector3.new]
       48 CALL                             R8 3 1
       49 CALL                             R7 1 1
       50 MUL                              R5 R6 R7
       51 NAMECALL                         R3 R1 K18 ["PivotTo"]
       53 CALL                             R3 2 0
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R3 K9 ["getHumanoidBoundingBox"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 4 0
       20 NEWTABLE                         R3 0 0
       22 DUPCLOSURE                       R4 K10 [PROTO_0]
       23 DUPCLOSURE                       R5 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R5 R2 K12 ["clearHumanoidData"]
       27 DUPCLOSURE                       R5 K13 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R5 R2 K14 ["saveHumanoidAlignmentData"]
       32 DUPCLOSURE                       R5 K15 [PROTO_3]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R5 R2 K16 ["alignHumanoid"]
       37 RETURN                           R2 1
