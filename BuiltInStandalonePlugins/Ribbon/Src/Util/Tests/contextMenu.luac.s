PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R1 K2 ["X"]
        6 GETTABLEKS                       R6 R2 K2 ["X"]
        8 DIVK                             R5 R6 K3 [2]
        9 ADD                              R3 R4 R5
       10 GETTABLEKS                       R5 R1 K4 ["Y"]
       12 GETTABLEKS                       R7 R2 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R4 R5 R6
       16 RETURN                           R3 2

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R3 K2 ["X"]
        6 GETTABLEKS                       R7 R4 K2 ["X"]
        8 DIVK                             R6 R7 K3 [2]
        9 ADD                              R1 R5 R6
       10 GETTABLEKS                       R5 R3 K4 ["Y"]
       12 GETTABLEKS                       R7 R4 K4 ["Y"]
       14 DIVK                             R6 R7 K3 [2]
       15 ADD                              R2 R5 R6
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 LOADN                            R7 1
       20 LOADB                            R8 1
       21 LOADNIL                          R9
       22 LOADN                            R10 1
       23 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       25 CALL                             R3 7 0
       26 GETUPVAL                         R3 0
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 LOADN                            R7 1
       30 LOADB                            R8 0
       31 LOADNIL                          R9
       32 LOADN                            R10 1
       33 NAMECALL                         R3 R3 K5 ["SendMouseButtonEvent"]
       35 CALL                             R3 7 0
       36 GETUPVAL                         R3 0
       37 NAMECALL                         R3 R3 K6 ["WaitForInputEventsProcessed"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 CAPTURE                          VAL R0
       10 RETURN                           R2 1
