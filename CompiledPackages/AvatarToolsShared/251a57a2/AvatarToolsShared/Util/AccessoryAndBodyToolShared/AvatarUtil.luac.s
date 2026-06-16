PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Size"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["GetExtentsSize"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R1 K0 ["PrimaryPart"]
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R2 R1 K0 ["PrimaryPart"]
        7 RETURN                           R2 1
        8 LOADK                            R4 K1 ["HumanoidRootPart"]
        9 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getRootPart"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K1 ["CFrame"]
        7 RETURN                           R3 1
        8 GETIMPORT                        R3 K3 [CFrame.new]
       10 CALL                             R3 0 -1
       11 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MoveTo"]
        4 CALL                             R0 2 0
        5 GETIMPORT                        R0 K3 [task.wait]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R2 ; [+78]
        1 JUMPIFNOT                        R1 ; [+77]
        2 LOADK                            R8 K0 ["BasePart"]
        3 NAMECALL                         R6 R2 K1 ["IsA"]
        5 CALL                             R6 2 1
        6 JUMPIFNOT                        R6 ; [+3]
        7 GETTABLEKS                       R5 R2 K2 ["Size"]
        9 JUMP                             ; [+10]
       10 LOADK                            R8 K3 ["Model"]
       11 NAMECALL                         R6 R2 K1 ["IsA"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+4]
       15 NAMECALL                         R5 R2 K4 ["GetExtentsSize"]
       17 CALL                             R5 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R5
       20 NAMECALL                         R6 R1 K4 ["GetExtentsSize"]
       22 CALL                             R6 1 1
       23 LOADNIL                          R7
       24 LOADK                            R10 K0 ["BasePart"]
       25 NAMECALL                         R8 R2 K1 ["IsA"]
       27 CALL                             R8 2 1
       28 JUMPIFNOT                        R8 ; [+3]
       29 GETTABLEKS                       R7 R2 K5 ["CFrame"]
       31 JUMP                             ; [+6]
       32 MOVE                             R10 R2
       33 NAMECALL                         R8 R0 K6 ["getRootPart"]
       35 CALL                             R8 2 1
       36 GETTABLEKS                       R7 R8 K5 ["CFrame"]
       38 GETTABLEKS                       R8 R7 K7 ["Position"]
       40 GETTABLEKS                       R10 R7 K7 ["Position"]
       42 SUB                              R9 R7 R10
       43 GETTABLEKS                       R12 R5 K8 ["X"]
       45 LOADN                            R13 0
       46 LOADN                            R14 0
       47 FASTCALL                         VECTOR ; [+2]
       48 GETIMPORT                        R11 K11 [Vector3.new]
       50 CALL                             R11 3 1
       51 SUB                              R10 R8 R11
       52 GETTABLEKS                       R12 R6 K8 ["X"]
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R11 K11 [Vector3.new]
       59 CALL                             R11 3 1
       60 SUB                              R8 R10 R11
       61 MUL                              R8 R9 R8
       62 JUMPIFNOT                        R3 ; [+8]
       63 GETIMPORT                        R10 K14 [task.spawn]
       65 NEWCLOSURE                       R11 P0
       66 CAPTURE                          VAL R1
       67 CAPTURE                          REF R8
       68 CAPTURE                          VAL R4
       69 CALL                             R10 1 0
       70 JUMP                             ; [+7]
       71 GETIMPORT                        R12 K15 [CFrame.new]
       73 MOVE                             R13 R8
       74 CALL                             R12 1 -1
       75 NAMECALL                         R10 R1 K16 ["SetPrimaryPartCFrame"]
       77 CALL                             R10 -1 0
       78 CLOSEUPVALS                      R8
       79 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["MoveTo"]
        4 CALL                             R0 2 0
        5 GETIMPORT                        R0 K3 [task.wait]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K4 ["GetPrimaryPartCFrame"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R0 R0 K5 ["p"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K6 ["CFrame"]
       17 GETTABLEKS                       R2 R2 K5 ["p"]
       19 SUB                              R1 R0 R2
       20 LOADK                            R2 K7 [{1, 0, 1}]
       21 MUL                              R1 R2 R1
       22 GETTABLEKS                       R2 R1 K8 ["Unit"]
       24 LOADK                            R3 K9 [{0, 1, 0}]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R2 K10 ["FuzzyEq"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+1]
       30 LOADK                            R3 K11 [{1, 0, 0}]
       31 MOVE                             R6 R2
       32 NAMECALL                         R4 R3 K12 ["Cross"]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 0
       36 GETIMPORT                        R7 K14 [CFrame.fromMatrix]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R4
       40 MOVE                             R10 R3
       41 MOVE                             R11 R2
       42 CALL                             R7 4 -1
       43 NAMECALL                         R5 R5 K15 ["SetPrimaryPartCFrame"]
       45 CALL                             R5 -1 0
       46 GETUPVAL                         R5 3
       47 GETUPVAL                         R7 0
       48 NAMECALL                         R5 R5 K16 ["focusCameraOnAvatar"]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R5 4
       52 JUMPIFNOT                        R5 ; [+2]
       53 GETUPVAL                         R5 4
       54 CALL                             R5 0 0
       55 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["workspace"]
        4 LOADK                            R5 K3 ["Camera"]
        5 NAMECALL                         R3 R3 K4 ["FindFirstChildOfClass"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+40]
        9 LOADK                            R7 K5 ["BasePart"]
       10 NAMECALL                         R5 R1 K6 ["IsA"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETTABLEKS                       R4 R1 K7 ["Size"]
       16 JUMP                             ; [+10]
       17 LOADK                            R7 K8 ["Model"]
       18 NAMECALL                         R5 R1 K6 ["IsA"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+4]
       22 NAMECALL                         R4 R1 K9 ["GetExtentsSize"]
       24 CALL                             R4 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 GETTABLEKS                       R6 R3 K10 ["CFrame"]
       29 GETTABLEKS                       R6 R6 K11 ["Position"]
       31 GETTABLEKS                       R8 R3 K10 ["CFrame"]
       33 GETTABLEKS                       R8 R8 K12 ["LookVector"]
       35 GETTABLEKS                       R10 R4 K14 ["X"]
       37 MULK                             R9 R10 K13 [2]
       38 MUL                              R7 R8 R9
       39 ADD                              R5 R6 R7
       40 GETIMPORT                        R6 K17 [task.spawn]
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CALL                             R6 1 0
       49 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["workspace"]
        4 LOADK                            R4 K3 ["Camera"]
        5 NAMECALL                         R2 R2 K4 ["FindFirstChildOfClass"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+52]
        9 LOADK                            R6 K5 ["BasePart"]
       10 NAMECALL                         R4 R1 K6 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R1 K7 ["Size"]
       16 JUMP                             ; [+10]
       17 LOADK                            R6 K8 ["Model"]
       18 NAMECALL                         R4 R1 K6 ["IsA"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+4]
       22 NAMECALL                         R3 R1 K9 ["GetExtentsSize"]
       24 CALL                             R3 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 GETTABLEKS                       R5 R3 K10 ["X"]
       29 GETTABLEKS                       R6 R3 K11 ["Z"]
       31 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       33 GETIMPORT                        R4 K14 [math.max]
       35 CALL                             R4 2 1
       36 MOVE                             R7 R1
       37 NAMECALL                         R5 R0 K15 ["getRootPart"]
       39 CALL                             R5 2 1
       40 JUMPIFNOT                        R3 ; [+20]
       41 JUMPIFNOT                        R5 ; [+19]
       42 GETTABLEKS                       R6 R5 K16 ["CFrame"]
       44 GETTABLEKS                       R8 R6 K17 ["Position"]
       46 GETTABLEKS                       R10 R6 K18 ["LookVector"]
       48 MULK                             R11 R4 K19 [2]
       49 MUL                              R9 R10 R11
       50 ADD                              R7 R8 R9
       51 GETIMPORT                        R8 K21 [CFrame.new]
       53 MOVE                             R9 R7
       54 GETTABLEKS                       R10 R6 K17 ["Position"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R2 K16 ["CFrame"]
       59 SETTABLEKS                       R6 R2 K22 ["Focus"]
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 NEWTABLE                         R1 8 0
       11 DUPCLOSURE                       R2 K3 [PROTO_0]
       12 DUPCLOSURE                       R3 K4 [PROTO_1]
       13 SETTABLEKS                       R3 R1 K5 ["getRootPart"]
       15 DUPCLOSURE                       R3 K6 [PROTO_2]
       16 SETTABLEKS                       R3 R1 K7 ["getRootCFrame"]
       18 DUPCLOSURE                       R3 K8 [PROTO_4]
       19 SETTABLEKS                       R3 R1 K9 ["positionAvatarNextTo"]
       21 DUPCLOSURE                       R3 K10 [PROTO_6]
       22 SETTABLEKS                       R3 R1 K11 ["bringAvatarToView"]
       24 DUPCLOSURE                       R3 K12 [PROTO_7]
       25 SETTABLEKS                       R3 R1 K13 ["focusCameraOnAvatar"]
       27 RETURN                           R1 1
