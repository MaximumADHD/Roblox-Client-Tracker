PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNewGraphAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+11]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["setViewportPosition"]
        9 GETIMPORT                        R1 K4 [Vector2.zero]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K5 ["setZoomRatio"]
       15 LOADN                            R1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["ViewportRectContext"]
       13 GETTABLEKS                       R2 R2 K1 ["Context"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 3
       25 GETTABLEKS                       R5 R0 K4 ["createNewGraphAsync"]
       27 GETUPVAL                         R7 3
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADNIL                          R6
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R6 R1 K5 ["setViewportPosition"]
       33 GETUPVAL                         R8 3
       34 JUMPIFNOT                        R8 ; [+2]
       35 LOADNIL                          R7
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R7 R1 K6 ["setZoomRatio"]
       39 SETLIST                          R4 R5 3 [1]
       41 CALL                             R2 2 1
       42 GETTABLEKS                       R4 R0 K7 ["canCreateGraph"]
       44 JUMPIFNOT                        R4 ; [+2]
       45 MOVE                             R3 R2
       46 RETURN                           R3 1
       47 LOADNIL                          R3
       48 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimationEditorFixViewportRectError"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
