PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["DebugData"]
        5 GETTABLEKS                       R2 R1 K2 ["FrameBuffer"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K3 ["FRAMERATE"]
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
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K6 ["new"]
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R3 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetFrameBuffer"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R5 K11 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["CircularBuffer"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R1 K13 ["Constants"]
       34 DUPCLOSURE                       R7 K14 [PROTO_1]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 RETURN                           R7 1
