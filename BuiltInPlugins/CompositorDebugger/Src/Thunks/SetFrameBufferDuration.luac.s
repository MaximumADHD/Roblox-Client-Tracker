PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["DebugData"]
        5 GETTABLEKS                       R2 R1 K2 ["FrameBuffer"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K3 ["FRAMERATE"]
       11 MUL                              R3 R4 R5
       12 LOADNIL                          R4
       13 JUMPIFNOT                        R2 ; [+12]
       14 NAMECALL                         R5 R2 K4 ["getSize"]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQ                      R5 R3 ; [+2]
       19 RETURN                           R0 0
       20 MOVE                             R7 R3
       21 NAMECALL                         R5 R2 K5 ["resize"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 JUMP                             ; [+6]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K6 ["new"]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 MOVE                             R4 R5
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R4
       34 CALL                             R7 1 -1
       35 NAMECALL                         R5 R0 K7 ["dispatch"]
       37 CALL                             R5 -1 0
       38 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetFrameBuffer"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["CircularBuffer"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R3 K11 ["Constants"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 RETURN                           R6 1
