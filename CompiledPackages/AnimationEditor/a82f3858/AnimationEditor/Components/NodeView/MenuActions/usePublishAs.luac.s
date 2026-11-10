PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishSelectedGraphAsNewAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R4 0 1
       21 GETTABLEKS                       R5 R0 K3 ["publishSelectedGraphAsNewAsync"]
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETTABLEKS                       R3 R1 K4 ["isPreviewRunning"]
       28 JUMPIFNOT                        R3 ; [+2]
       29 LOADNIL                          R3
       30 RETURN                           R3 1
       31 RETURN                           R2 1

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
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R4 1
