PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K2 ["isPreviewButton"]
       23 JUMPIF                           R4 ; [+5]
       24 GETTABLEKS                       R4 R3 K3 ["isPreviewEnabled"]
       26 JUMPIF                           R4 ; [+2]
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 GETTABLEKS                       R4 R1 K4 ["isPreviewRunning"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADB                            R4 1
       33 RETURN                           R4 1
       34 GETTABLEKS                       R4 R2 K5 ["selectedRigId"]
       36 JUMPIFNOTEQKNIL                  R4 ; [+3]
       38 LOADB                            R4 1
       39 RETURN                           R4 1
       40 LOADB                            R4 0
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphPlayedContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["PlayStateContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["RigListContext"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
