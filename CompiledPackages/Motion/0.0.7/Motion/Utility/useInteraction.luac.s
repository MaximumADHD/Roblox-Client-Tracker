PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 3
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 DUPTABLE                         R5 K5 [{"onInputBegan", "onInputEnded", "onMouseEnter", "onMouseLeave"}]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R6 R5 K1 ["onInputBegan"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R6 R5 K2 ["onInputEnded"]
       22 NEWCLOSURE                       R6 P2
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R6 R5 K3 ["onMouseEnter"]
       26 NEWCLOSURE                       R6 P3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R6 R5 K4 ["onMouseLeave"]
       31 MOVE                             R6 R5
       32 MOVE                             R7 R1
       33 MOVE                             R8 R3
       34 RETURN                           R6 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K6 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
