PROTO_0:
        0 LOADK                            R4 K0 ["GuiBase2d"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+13]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K3 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K4 ["Vector2"] ; [+6]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 MOVE                             R0 R2
       17 RETURN                           R0 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K3 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K5 ["UDim2"] ; [+6]
       25 GETUPVAL                         R2 1
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 1
       29 MOVE                             R0 R2
       30 GETTABLEKS                       R2 R1 K6 ["AbsolutePosition"]
       32 SUB                              R0 R0 R2
       33 GETUPVAL                         R2 2
       34 MOVE                             R3 R0
       35 LOADK                            R5 K7 [0.5]
       36 GETTABLEKS                       R6 R1 K8 ["AbsoluteSize"]
       38 MUL                              R4 R5 R6
       39 LOADN                            R6 255
       40 GETTABLEKS                       R7 R1 K9 ["AbsoluteRotation"]
       42 MUL                              R5 R6 R7
       43 CALL                             R2 3 1
       44 MOVE                             R0 R2
       45 GETUPVAL                         R2 0
       46 MOVE                             R3 R0
       47 MOVE                             R4 R1
       48 CALL                             R2 2 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getUDim2ScaleFromVector2"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["getVector2FromUDim2Scale"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["rotatePoint"]
       27 CALL                             R2 1 1
       28 DUPCLOSURE                       R3 K8 [PROTO_0]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETGLOBAL                        R3 K9 ["getRelativePosFromAbsPos"]
       34 GETGLOBAL                        R3 K9 ["getRelativePosFromAbsPos"]
       36 RETURN                           R3 1
