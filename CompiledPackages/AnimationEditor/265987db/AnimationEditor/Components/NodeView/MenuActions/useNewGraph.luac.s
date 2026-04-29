PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createNewGraphAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setViewportPosition"]
        7 GETIMPORT                        R1 K4 [Vector2.zero]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K5 ["setZoomRatio"]
       13 LOADN                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K4 ["useContext"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K5 ["Context"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K4 ["useContext"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["Context"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R5 0 2
       33 MOVE                             R6 R0
       34 GETTABLEKS                       R7 R1 K7 ["createNewGraphAsync"]
       36 SETLIST                          R5 R6 2 [1]
       38 CALL                             R3 2 1
       39 GETTABLEKS                       R5 R1 K8 ["canCreateGraph"]
       41 JUMPIFNOT                        R5 ; [+2]
       42 MOVE                             R4 R3
       43 RETURN                           R4 1
       44 LOADNIL                          R4
       45 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["ViewportRectContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 RETURN                           R5 1
