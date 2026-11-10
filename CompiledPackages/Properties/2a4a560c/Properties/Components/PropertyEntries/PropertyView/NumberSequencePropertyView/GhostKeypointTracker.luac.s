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
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R1 K3 ["Position"]
        4 GETTABLEKS                       R3 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R4 R4 K5 ["Y"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R0 R3 K6 ["current"]
       14 GETUPVAL                         R3 1
       15 SETTABLEKS                       R2 R3 K6 ["current"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K7 ["Enabled"]
       20 JUMPIFNOT                        R3 ; [+12]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["SetGhostKeypoint"]
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R0
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K9 ["Keypoints"]
       29 CALL                             R4 2 1
       30 MOVE                             R5 R2
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K8 ["SetGhostKeypoint"]
       36 LOADN                            R4 -1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        9 JUMPIFNOT                        R2 ; [+14]
       10 JUMPIFNOT                        R0 ; [+13]
       11 JUMPIFNOT                        R1 ; [+12]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["SetGhostKeypoint"]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K3 ["Keypoints"]
       20 CALL                             R3 2 1
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K1 ["Enabled"]
       27 JUMPIF                           R2 ; [+13]
       28 GETUPVAL                         R2 0
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K0 ["current"]
       32 GETUPVAL                         R2 1
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R2 K0 ["current"]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K2 ["SetGhostKeypoint"]
       39 LOADN                            R3 -1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["current"]
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K0 ["current"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["SetGhostKeypoint"]
       11 LOADN                            R3 -1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 NEWTABLE                         R6 0 3
       25 GETTABLEKS                       R7 R0 K2 ["Enabled"]
       27 GETTABLEKS                       R8 R0 K3 ["Keypoints"]
       29 GETTABLEKS                       R9 R0 K4 ["SetGhostKeypoint"]
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 2
       35 GETUPVAL                         R5 3
       36 DUPTABLE                         R6 K9 [{"ZIndex", "OnHoverStart", "OnHoverMoved", "OnHoverEnded"}]
       37 GETTABLEKS                       R7 R0 K5 ["ZIndex"]
       39 SETTABLEKS                       R7 R6 K5 ["ZIndex"]
       41 SETTABLEKS                       R3 R6 K6 ["OnHoverStart"]
       43 SETTABLEKS                       R3 R6 K7 ["OnHoverMoved"]
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R7 R6 K8 ["OnHoverEnded"]
       51 CALL                             R4 2 -1
       52 RETURN                           R4 -1

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
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 RETURN                           R7 1
