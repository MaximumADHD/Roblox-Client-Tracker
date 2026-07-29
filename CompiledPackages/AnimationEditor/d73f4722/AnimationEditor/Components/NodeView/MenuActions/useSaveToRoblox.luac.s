PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["saveSelectedGraphToRobloxAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["useContext"]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K1 ["Context"]
       16 CALL                             R1 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R4 0 1
       26 GETTABLEKS                       R5 R0 K3 ["saveSelectedGraphToRobloxAsync"]
       28 SETLIST                          R4 R5 1 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 2
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+5]
       34 GETTABLEKS                       R3 R1 K4 ["isPreviewRunning"]
       36 JUMPIFNOT                        R3 ; [+2]
       37 LOADNIL                          R3
       38 RETURN                           R3 1
       39 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDirtyStateContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["GraphPlayedContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagAnimGraphUI_RunTimeDebug"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K13 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
