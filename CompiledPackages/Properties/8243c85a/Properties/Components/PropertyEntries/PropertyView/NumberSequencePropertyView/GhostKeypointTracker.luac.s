PROTO_0:
        0 LOADN                            R2 1
        1 LENGTH                           R3 R1
        2 JUMPIFNOTLE                      R2 R3 ; [+28]
        4 ADD                              R6 R2 R3
        5 DIVK                             R5 R6 K0 [2]
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K3 [math.floor]
        9 CALL                             R4 1 1
       10 GETTABLE                         R5 R1 R4
       11 GETTABLEKS                       R5 R5 K4 ["Time"]
       13 GETTABLEKS                       R6 R0 K5 ["X"]
       15 JUMPIFNOTLT                      R5 R6 ; [+3]
       17 ADDK                             R2 R4 K6 [1]
       18 JUMP                             ; [+11]
       19 GETTABLE                         R5 R1 R4
       20 GETTABLEKS                       R5 R5 K4 ["Time"]
       22 GETTABLEKS                       R6 R0 K5 ["X"]
       24 JUMPIFNOTLT                      R6 R5 ; [+3]
       26 SUBK                             R3 R4 K6 [1]
       27 JUMP                             ; [+2]
       28 MOVE                             R2 R4
       29 SUBK                             R3 R4 K6 [1]
       30 JUMPBACK                         ; [-29]
       31 LOADN                            R5 2
       32 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       34 MOVE                             R6 R2
       35 GETIMPORT                        R4 K8 [math.max]
       37 CALL                             R4 2 1
       38 MOVE                             R2 R4
       39 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["SetGhostKeypoint"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["Keypoints"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["SetGhostKeypoint"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["Keypoints"]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K1 ["SetGhostKeypoint"]
       18 LOADN                            R2 -1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetGhostKeypoint"]
        3 LOADN                            R2 -1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"ZIndex", "OnHoverStart", "OnHoverMoved", "OnHoverEnded"}]
        3 GETTABLEKS                       R4 R0 K0 ["ZIndex"]
        5 SETTABLEKS                       R4 R3 K0 ["ZIndex"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R4 R3 K1 ["OnHoverStart"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R4 R3 K2 ["OnHoverMoved"]
       17 NEWCLOSURE                       R4 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R4 R3 K3 ["OnHoverEnded"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Graphing"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["InputDetector"]
       21 GETTABLEKS                       R5 R3 K10 ["createElement"]
       23 DUPCLOSURE                       R6 K11 [PROTO_0]
       24 DUPCLOSURE                       R7 K12 [PROTO_4]
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R6
       28 RETURN                           R7 1
