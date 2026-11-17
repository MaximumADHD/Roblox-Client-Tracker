PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETTABLEKS                       R2 R0 K2 ["Part0"]
        7 JUMPIFEQKNIL                     R2 ; [+9]
        9 GETTABLEKS                       R2 R0 K2 ["Part0"]
       11 GETTABLEKS                       R2 R2 K3 ["CFrame"]
       13 GETTABLEKS                       R3 R0 K4 ["C0"]
       15 MUL                              R1 R2 R3
       16 RETURN                           R1 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1
       19 LOADK                            R3 K5 ["AnimationConstraint"]
       20 NAMECALL                         R1 R0 K1 ["IsA"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+11]
       24 GETTABLEKS                       R2 R0 K6 ["Attachment0"]
       26 JUMPIFEQKNIL                     R2 ; [+6]
       28 GETTABLEKS                       R1 R0 K6 ["Attachment0"]
       30 GETTABLEKS                       R1 R1 K7 ["WorldCFrame"]
       32 RETURN                           R1 1
       33 LOADNIL                          R1
       34 RETURN                           R1 1
       35 GETTABLEKS                       R1 R0 K3 ["CFrame"]
       37 GETTABLEKS                       R2 R0 K8 ["Parent"]
       39 JUMPIFEQKNIL                     R2 ; [+16]
       41 LOADK                            R5 K9 ["Bone"]
       42 NAMECALL                         R3 R2 K1 ["IsA"]
       44 CALL                             R3 2 1
       45 JUMPIFNOT                        R3 ; [+10]
       46 MOVE                             R3 R2
       47 GETTABLEKS                       R5 R3 K3 ["CFrame"]
       49 GETTABLEKS                       R6 R3 K10 ["Transform"]
       51 MUL                              R4 R5 R6
       52 MUL                              R1 R4 R1
       53 GETTABLEKS                       R2 R3 K8 ["Parent"]
       55 JUMPBACK                         ; [-17]
       56 JUMPIFEQKNIL                     R2 ; [+9]
       58 LOADK                            R5 K11 ["BasePart"]
       59 NAMECALL                         R3 R2 K1 ["IsA"]
       61 CALL                             R3 2 1
       62 JUMPIFNOT                        R3 ; [+3]
       63 GETTABLEKS                       R3 R2 K3 ["CFrame"]
       65 MUL                              R1 R3 R1
       66 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETTABLEKS                       R3 R0 K0 ["Transform"]
        7 MUL                              R2 R1 R3
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K3 [CFrame.identity]
       11 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKNIL                     R2 ; [+7]
        5 NAMECALL                         R4 R2 K0 ["Inverse"]
        7 CALL                             R4 1 1
        8 MUL                              R3 R4 R1
        9 SETTABLEKS                       R3 R0 K1 ["Transform"]
       11 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Motor6D"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+10]
       11 GETTABLEKS                       R7 R6 K3 ["Part1"]
       13 JUMPIFEQKNIL                     R7 ; [+38]
       15 GETTABLEKS                       R7 R6 K3 ["Part1"]
       17 GETTABLEKS                       R7 R7 K4 ["Name"]
       19 SETTABLE                         R6 R1 R7
       20 JUMP                             ; [+31]
       21 LOADK                            R9 K5 ["AnimationConstraint"]
       22 NAMECALL                         R7 R6 K2 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+18]
       26 GETTABLEKS                       R7 R6 K6 ["Attachment1"]
       28 JUMPIFEQKNIL                     R7 ; [+23]
       30 GETTABLEKS                       R7 R6 K6 ["Attachment1"]
       32 GETTABLEKS                       R7 R7 K7 ["Parent"]
       34 JUMPIFEQKNIL                     R7 ; [+17]
       36 GETTABLEKS                       R7 R6 K6 ["Attachment1"]
       38 GETTABLEKS                       R7 R7 K7 ["Parent"]
       40 GETTABLEKS                       R7 R7 K4 ["Name"]
       42 SETTABLE                         R6 R1 R7
       43 JUMP                             ; [+8]
       44 LOADK                            R9 K8 ["Bone"]
       45 NAMECALL                         R7 R6 K2 ["IsA"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+3]
       49 GETTABLEKS                       R7 R6 K4 ["Name"]
       51 SETTABLE                         R6 R1 R7
       52 FORGLOOP                         R2 2 ; [-47]
       54 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R2 K2 [PROTO_2]
        5 CAPTURE                          VAL R0
        6 DUPCLOSURE                       R3 K3 [PROTO_3]
        7 DUPTABLE                         R4 K7 [{"indexJointsByPoseName", "getJointWorldCFrame", "setJointWorldCFrame"}]
        8 SETTABLEKS                       R3 R4 K4 ["indexJointsByPoseName"]
       10 SETTABLEKS                       R1 R4 K5 ["getJointWorldCFrame"]
       12 SETTABLEKS                       R2 R4 K6 ["setJointWorldCFrame"]
       14 RETURN                           R4 1
