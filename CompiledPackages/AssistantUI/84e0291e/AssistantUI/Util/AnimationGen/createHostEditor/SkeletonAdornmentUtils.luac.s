PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Part0"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["AnimationConstraint"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+22]
       13 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       15 JUMPIFNOT                        R1 ; [+19]
       16 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       18 GETTABLEKS                       R1 R1 K5 ["Parent"]
       20 JUMPIFNOT                        R1 ; [+14]
       21 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       23 GETTABLEKS                       R1 R1 K5 ["Parent"]
       25 LOADK                            R3 K6 ["BasePart"]
       26 NAMECALL                         R1 R1 K1 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+5]
       30 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       32 GETTABLEKS                       R1 R1 K5 ["Parent"]
       34 RETURN                           R1 1
       35 GETTABLEKS                       R1 R0 K5 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 LOADK                            R4 K6 ["BasePart"]
       39 NAMECALL                         R2 R1 K1 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R1 1
       44 GETTABLEKS                       R1 R1 K5 ["Parent"]
       46 JUMPBACK                         ; [-10]
       47 LOADNIL                          R2
       48 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R4 K0 ["Motor6D"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 LOADK                            R4 K0 ["Motor6D"]
        6 NAMECALL                         R2 R1 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+20]
       10 GETTABLEKS                       R2 R0 K2 ["Part1"]
       12 GETTABLEKS                       R3 R1 K3 ["Part0"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+32]
       16 GETTABLEKS                       R3 R0 K4 ["C1"]
       18 NAMECALL                         R3 R3 K5 ["Inverse"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R1 K6 ["C0"]
       23 MUL                              R2 R3 R4
       24 GETTABLEKS                       R2 R2 K7 ["Position"]
       26 GETTABLEKS                       R2 R2 K8 ["Magnitude"]
       28 RETURN                           R2 1
       29 JUMP                             ; [+17]
       30 LOADK                            R4 K9 ["Bone"]
       31 NAMECALL                         R2 R0 K1 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+12]
       35 LOADK                            R4 K9 ["Bone"]
       36 NAMECALL                         R2 R1 K1 ["IsA"]
       38 CALL                             R2 2 1
       39 JUMPIFNOT                        R2 ; [+7]
       40 GETTABLEKS                       R2 R1 K10 ["CFrame"]
       42 GETTABLEKS                       R2 R2 K7 ["Position"]
       44 GETTABLEKS                       R2 R2 K8 ["Magnitude"]
       46 RETURN                           R2 1
       47 GETUPVAL                         R3 0
       48 MOVE                             R4 R1
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R3 R3 K7 ["Position"]
       52 GETUPVAL                         R4 0
       53 MOVE                             R5 R0
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R4 R4 K7 ["Position"]
       57 SUB                              R2 R3 R4
       58 GETTABLEKS                       R2 R2 K8 ["Magnitude"]
       60 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["Bone"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 JUMPIFNOT                        R2 ; [+80]
        8 GETTABLEKS                       R2 R0 K2 ["Parent"]
       10 LOADK                            R4 K0 ["Bone"]
       11 NAMECALL                         R2 R2 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+73]
       15 GETTABLEKS                       R2 R0 K2 ["Parent"]
       17 RETURN                           R2 1
       18 JUMP                             ; [+69]
       19 LOADK                            R4 K3 ["AnimationConstraint"]
       20 NAMECALL                         R2 R0 K1 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+36]
       24 GETTABLEKS                       R2 R0 K4 ["Attachment0"]
       26 JUMPIFNOT                        R2 ; [+61]
       27 GETTABLEKS                       R2 R0 K4 ["Attachment0"]
       29 GETTABLEKS                       R2 R2 K2 ["Parent"]
       31 JUMPIFNOT                        R2 ; [+56]
       32 GETTABLEKS                       R2 R0 K4 ["Attachment0"]
       34 GETTABLEKS                       R2 R2 K2 ["Parent"]
       36 MOVE                             R3 R1
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 JUMPIFEQ                         R7 R0 ; [+16]
       42 LOADK                            R10 K3 ["AnimationConstraint"]
       43 NAMECALL                         R8 R7 K1 ["IsA"]
       45 CALL                             R8 2 1
       46 JUMPIFNOT                        R8 ; [+10]
       47 GETTABLEKS                       R8 R7 K5 ["Attachment1"]
       49 JUMPIFNOT                        R8 ; [+7]
       50 GETTABLEKS                       R8 R7 K5 ["Attachment1"]
       52 GETTABLEKS                       R8 R8 K2 ["Parent"]
       54 JUMPIFNOTEQ                      R8 R2 ; [+2]
       56 RETURN                           R7 1
       57 FORGLOOP                         R3 2 ; [-18]
       59 JUMP                             ; [+28]
       60 LOADK                            R4 K6 ["Motor6D"]
       61 NAMECALL                         R2 R0 K1 ["IsA"]
       63 CALL                             R2 2 1
       64 JUMPIFNOT                        R2 ; [+23]
       65 GETTABLEKS                       R2 R0 K7 ["Part0"]
       67 JUMPIF                           R2 ; [+2]
       68 LOADNIL                          R3
       69 RETURN                           R3 1
       70 MOVE                             R3 R1
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 JUMPIFEQ                         R7 R0 ; [+11]
       76 LOADK                            R10 K6 ["Motor6D"]
       77 NAMECALL                         R8 R7 K1 ["IsA"]
       79 CALL                             R8 2 1
       80 JUMPIFNOT                        R8 ; [+5]
       81 GETTABLEKS                       R8 R7 K8 ["Part1"]
       83 JUMPIFNOTEQ                      R8 R2 ; [+2]
       85 RETURN                           R7 1
       86 FORGLOOP                         R3 2 ; [-13]
       88 LOADNIL                          R2
       89 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Motor6D"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIF                           R7 ; [+10]
       11 LOADK                            R9 K3 ["Bone"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+5]
       16 LOADK                            R9 K4 ["AnimationConstraint"]
       17 NAMECALL                         R7 R6 K2 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K7 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-23]
       30 NEWTABLE                         R2 0 0
       32 MOVE                             R3 R1
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 DUPTABLE                         R8 K10 [{"joint", "children"}]
       37 SETTABLEKS                       R7 R8 K8 ["joint"]
       39 NEWTABLE                         R9 0 0
       41 SETTABLEKS                       R9 R8 K9 ["children"]
       43 SETTABLE                         R8 R2 R7
       44 FORGLOOP                         R3 2 ; [-9]
       46 NEWTABLE                         R3 0 0
       48 MOVE                             R4 R1
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 GETUPVAL                         R9 0
       53 MOVE                             R10 R8
       54 MOVE                             R11 R1
       55 CALL                             R9 2 1
       56 JUMPIFNOT                        R9 ; [+12]
       57 GETTABLE                         R10 R2 R9
       58 JUMPIFNOT                        R10 ; [+10]
       59 GETTABLE                         R11 R2 R9
       60 GETTABLEKS                       R11 R11 K9 ["children"]
       62 GETTABLE                         R12 R2 R8
       63 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       65 GETIMPORT                        R10 K7 [table.insert]
       67 CALL                             R10 2 0
       68 JUMP                             ; [+7]
       69 GETTABLE                         R12 R2 R8
       70 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       72 MOVE                             R11 R3
       73 GETIMPORT                        R10 K7 [table.insert]
       75 CALL                             R10 2 0
       76 FORGLOOP                         R4 2 ; [-25]
       78 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R10 K3 [{[1], ["parentJoint"] = }]
        9 SETTABLEKS                       R7 R10 K0 ["node"]
       11 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K6 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-10]
       19 LENGTH                           R3 R2
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R3 ; [+62]
       23 GETIMPORT                        R3 K8 [table.remove]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+55]
       28 GETTABLEKS                       R4 R3 K0 ["node"]
       30 NEWTABLE                         R5 0 0
       32 GETTABLEKS                       R6 R4 K9 ["children"]
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 GETTABLEKS                       R13 R10 K10 ["joint"]
       39 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       41 MOVE                             R12 R5
       42 GETIMPORT                        R11 K6 [table.insert]
       44 CALL                             R11 2 0
       45 DUPTABLE                         R13 K11 [{"node", "parentJoint"}]
       46 SETTABLEKS                       R10 R13 K0 ["node"]
       48 GETTABLEKS                       R14 R4 K10 ["joint"]
       50 SETTABLEKS                       R14 R13 K1 ["parentJoint"]
       52 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       54 MOVE                             R12 R2
       55 GETIMPORT                        R11 K6 [table.insert]
       57 CALL                             R11 2 0
       58 FORGLOOP                         R6 2 ; [-22]
       60 DUPTABLE                         R8 K14 [{"joint", "parentJoint", "childJoints", "adornee"}]
       61 GETTABLEKS                       R9 R4 K10 ["joint"]
       63 SETTABLEKS                       R9 R8 K10 ["joint"]
       65 GETTABLEKS                       R9 R3 K1 ["parentJoint"]
       67 SETTABLEKS                       R9 R8 K1 ["parentJoint"]
       69 SETTABLEKS                       R5 R8 K12 ["childJoints"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R10 R4 K10 ["joint"]
       74 CALL                             R9 1 1
       75 SETTABLEKS                       R9 R8 K13 ["adornee"]
       77 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       79 MOVE                             R7 R1
       80 GETIMPORT                        R6 K6 [table.insert]
       82 CALL                             R6 2 0
       83 JUMPBACK                         ; [-65]
       84 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 0
        3 SUBK                             R3 R0 K0 [1]
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 DIV                              R8 R5 R0
        7 MULK                             R7 R8 K2 [3.141592653589793]
        8 MULK                             R6 R7 K1 [2]
        9 FASTCALL1                        MATH_COS R6 ; [+3]
       10 MOVE                             R12 R6
       11 GETIMPORT                        R11 K5 [math.cos]
       13 CALL                             R11 1 1
       14 MUL                              R10 R11 R1
       15 FASTCALL1                        MATH_SIN R6 ; [+3]
       16 MOVE                             R13 R6
       17 GETIMPORT                        R12 K7 [math.sin]
       19 CALL                             R12 1 1
       20 MUL                              R11 R12 R1
       21 LOADN                            R12 0
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R9 K10 [Vector3.new]
       25 CALL                             R9 3 1
       26 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       28 MOVE                             R8 R2
       29 GETIMPORT                        R7 K13 [table.insert]
       31 CALL                             R7 2 0
       32 FORNLOOP                         R3
       33 RETURN                           R2 1

PROTO_6:
        0 SUB                              R5 R1 R0
        1 SUB                              R7 R2 R0
        2 NAMECALL                         R5 R5 K0 ["Cross"]
        4 CALL                             R5 2 1
        5 ADD                              R8 R0 R1
        6 ADD                              R7 R8 R2
        7 DIVK                             R6 R7 K1 [3]
        8 SUB                              R9 R6 R3
        9 NAMECALL                         R7 R5 K2 ["Dot"]
       11 CALL                             R7 2 1
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R7 R8 ; [+2]
       15 MINUS                            R5 R5
       16 SUB                              R10 R4 R6
       17 NAMECALL                         R8 R5 K2 ["Dot"]
       19 CALL                             R8 2 1
       20 LOADN                            R9 0
       21 JUMPIFLT                         R9 R8 ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 RETURN                           R7 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["ToHSV"]
        2 CALL                             R1 1 3
        3 GETIMPORT                        R4 K3 [Color3.fromHSV]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 MULK                             R8 R3 K4 [0.6]
        8 FASTCALL2K                       MATH_MAX R8 K5 ; [+4]
       10 LOADK                            R9 K5 [0]
       11 GETIMPORT                        R7 K8 [math.max]
       13 CALL                             R7 2 1
       14 CALL                             R4 3 -1
       15 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["JointFrames"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["getJointWorldCFrame"]
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 CAPTURE                          VAL R1
       15 DUPCLOSURE                       R4 K9 [PROTO_2]
       16 DUPCLOSURE                       R5 K10 [PROTO_3]
       17 CAPTURE                          VAL R4
       18 DUPCLOSURE                       R6 K11 [PROTO_4]
       19 CAPTURE                          VAL R2
       20 DUPCLOSURE                       R7 K12 [PROTO_5]
       21 DUPCLOSURE                       R8 K13 [PROTO_6]
       22 DUPCLOSURE                       R9 K14 [PROTO_7]
       23 DUPTABLE                         R10 K22 [{"getAdornee", "getRestBoneLength", "buildSkeleton", "buildSkeletonEntries", "buildCircle", "isTriangleFrontFacing", "darkenColor"}]
       24 SETTABLEKS                       R2 R10 K15 ["getAdornee"]
       26 SETTABLEKS                       R3 R10 K16 ["getRestBoneLength"]
       28 SETTABLEKS                       R5 R10 K17 ["buildSkeleton"]
       30 SETTABLEKS                       R6 R10 K18 ["buildSkeletonEntries"]
       32 SETTABLEKS                       R7 R10 K19 ["buildCircle"]
       34 SETTABLEKS                       R8 R10 K20 ["isTriangleFrontFacing"]
       36 SETTABLEKS                       R9 R10 K21 ["darkenColor"]
       38 RETURN                           R10 1
