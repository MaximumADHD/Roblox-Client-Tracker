PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.MouseBehavior.LockCurrentPosition]
        3 SETTABLEKS                       R1 R0 K1 ["MouseBehavior"]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K4 ["current"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.MouseBehavior.Default]
        3 SETTABLEKS                       R1 R0 K1 ["MouseBehavior"]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K4 ["current"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R2 K6 [Enum.KeyCode.RightShift]
       10 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 ADD                              R2 R0 R3
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         MATH_CLAMP ; [+2]
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_5:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        5 JUMPIFNOTEQ                      R2 R3 ; [+8]
        7 GETTABLEKS                       R2 R0 K4 ["Delta"]
        9 GETTABLEKS                       R2 R2 K5 ["X"]
       11 GETUPVAL                         R3 0
       12 MUL                              R1 R2 R3
       13 JUMP                             ; [+15]
       14 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       16 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseWheel]
       18 JUMPIFNOTEQ                      R2 R3 ; [+8]
       20 GETTABLEKS                       R2 R0 K8 ["Position"]
       22 GETTABLEKS                       R2 R2 K9 ["Z"]
       24 GETUPVAL                         R3 0
       25 MUL                              R1 R2 R3
       26 JUMP                             ; [+2]
       27 CLOSEUPVALS                      R1
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 1
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          REF R1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CALL                             R2 1 0
       35 CLOSEUPVALS                      R1
       36 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["setValue"]
        2 GETTABLEKS                       R2 R0 K1 ["min"]
        4 GETTABLEKS                       R3 R0 K2 ["max"]
        6 SUB                              R5 R3 R2
        7 MULK                             R4 R5 K3 [0.005]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R1 K4 [Enum.MouseBehavior.Default]
        7 SETTABLEKS                       R1 R0 K2 ["MouseBehavior"]
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K5 ["current"]
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K0 ["InputChanged"]
       16 GETUPVAL                         R2 5
       17 GETUPVAL                         R3 6
       18 CALL                             R2 1 -1
       19 NAMECALL                         R0 R0 K1 ["Connect"]
       21 CALL                             R0 -1 1
       22 GETUPVAL                         R1 4
       23 GETIMPORT                        R2 K5 [Enum.MouseBehavior.LockCurrentPosition]
       25 SETTABLEKS                       R2 R1 K3 ["MouseBehavior"]
       27 GETUPVAL                         R1 7
       28 LOADB                            R2 1
       29 SETTABLEKS                       R2 R1 K6 ["current"]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U7
       35 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R1 K4 [Enum.MouseBehavior.Default]
        7 SETTABLEKS                       R1 R0 K2 ["MouseBehavior"]
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K5 ["current"]
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+4]
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K0 ["InputChanged"]
       16 GETUPVAL                         R2 5
       17 GETUPVAL                         R3 6
       18 CALL                             R2 1 -1
       19 NAMECALL                         R0 R0 K1 ["Connect"]
       21 CALL                             R0 -1 1
       22 GETUPVAL                         R1 4
       23 GETIMPORT                        R2 K5 [Enum.MouseBehavior.LockCurrentPosition]
       25 SETTABLEKS                       R2 R1 K3 ["MouseBehavior"]
       27 GETUPVAL                         R1 7
       28 LOADB                            R2 1
       29 SETTABLEKS                       R2 R1 K6 ["current"]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U7
       35 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETIMPORT                        R0 K4 [Enum.ContextActionResult.Sink]
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K6 [Enum.ContextActionResult.Pass]
        9 RETURN                           R0 1

PROTO_12:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R2 2
        9 LOADB                            R3 1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 LOADB                            R3 0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETUPVAL                         R2 3
       19 LOADB                            R3 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 JUMPIF                           R1 ; [+9]
       13 GETUPVAL                         R1 1
       14 LOADB                            R2 0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETUPVAL                         R1 2
       20 LOADB                            R2 1
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["UnbindAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Disconnect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 NAMECALL                         R0 R0 K1 ["Disconnect"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R1 K0 ["CageTool_LockMouse_"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 CONCAT                           R0 R1 R2
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 LOADB                            R5 0
       11 GETIMPORT                        R6 K5 [Enum.UserInputType.MouseWheel]
       13 NAMECALL                         R1 R1 K6 ["BindAction"]
       15 CALL                             R1 5 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K7 ["InputBegan"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 NAMECALL                         R1 R1 K8 ["Connect"]
       26 CALL                             R1 2 1
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K9 ["InputEnded"]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U5
       35 NAMECALL                         R2 R2 K8 ["Connect"]
       37 CALL                             R2 2 1
       38 NEWCLOSURE                       R3 P3
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       14 DUPCLOSURE                       R6 K2 [PROTO_2]
       15 CAPTURE                          UPVAL U1
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       22 DUPCLOSURE                       R7 K3 [PROTO_3]
       23 CAPTURE                          UPVAL U1
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       30 DUPCLOSURE                       R8 K4 [PROTO_6]
       31 NEWTABLE                         R9 0 0
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["useState"]
       37 LOADB                            R9 0
       38 CALL                             R8 1 2
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K5 ["useState"]
       42 LOADB                            R11 0
       43 CALL                             R10 1 2
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K6 ["useEffect"]
       47 NEWCLOSURE                       R13 P5
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R9
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R14 0 1
       58 MOVE                             R15 R8
       59 SETLIST                          R14 R15 1 [1]
       61 CALL                             R12 2 0
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K6 ["useEffect"]
       65 NEWCLOSURE                       R13 P6
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R14 0 1
       76 MOVE                             R15 R10
       77 SETLIST                          R14 R15 1 [1]
       79 CALL                             R12 2 0
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K6 ["useEffect"]
       83 NEWCLOSURE                       R13 P7
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R9
       92 NEWTABLE                         R14 0 0
       94 CALL                             R12 2 0
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["UserInputService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AvatarCompatibilityPreviewer"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Src"]
       36 GETTABLEKS                       R6 R6 K15 ["Types"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K16 [PROTO_16]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 RETURN                           R6 1
