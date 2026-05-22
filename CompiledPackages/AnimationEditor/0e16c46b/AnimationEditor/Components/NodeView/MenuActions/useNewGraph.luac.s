PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNewGraphAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setViewportPosition"]
        7 GETIMPORT                        R1 K4 [Vector2.zero]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K5 ["setZoomRatio"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["useContext"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K5 ["Context"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K4 ["useContext"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["ViewportRectContext"]
       24 GETTABLEKS                       R3 R3 K5 ["Context"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K7 ["useCallback"]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R5 0 2
       35 MOVE                             R6 R0
       36 GETTABLEKS                       R7 R1 K8 ["createNewGraphAsync"]
       38 SETLIST                          R5 R6 2 [1]
       40 CALL                             R3 2 1
       41 GETTABLEKS                       R5 R1 K9 ["canCreateGraph"]
       43 JUMPIFNOT                        R5 ; [+2]
       44 MOVE                             R4 R3
       45 RETURN                           R4 1
       46 LOADNIL                          R4
       47 RETURN                           R4 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R3
       40 RETURN                           R5 1
