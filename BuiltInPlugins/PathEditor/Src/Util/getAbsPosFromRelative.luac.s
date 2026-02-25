PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["UDim2"] ; [+6]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 MOVE                             R0 R2
       12 LOADK                            R4 K3 ["GuiBase2d"]
       13 NAMECALL                         R2 R1 K4 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 1
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 LOADK                            R5 K5 [0.5]
       21 GETTABLEKS                       R6 R1 K6 ["AbsoluteSize"]
       23 MUL                              R4 R5 R6
       24 GETTABLEKS                       R5 R1 K7 ["AbsoluteRotation"]
       26 CALL                             R2 3 1
       27 MOVE                             R0 R2
       28 GETTABLEKS                       R2 R1 K8 ["AbsolutePosition"]
       30 ADD                              R0 R0 R2
       31 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["getVector2FromUDim2Scale"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["rotatePoint"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 SETGLOBAL                        R2 K8 ["getAbsPosFromRelative"]
       24 GETGLOBAL                        R2 K8 ["getAbsPosFromRelative"]
       26 RETURN                           R2 1
