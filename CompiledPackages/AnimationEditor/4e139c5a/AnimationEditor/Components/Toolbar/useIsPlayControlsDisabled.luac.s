PROTO_0:
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
       14 GETTABLEKS                       R2 R0 K2 ["isPreviewRunning"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R1 K3 ["selectedRigId"]
       21 JUMPIFNOTEQKNIL                  R2 ; [+3]
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 LOADB                            R2 0
       26 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["RigListContext"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
