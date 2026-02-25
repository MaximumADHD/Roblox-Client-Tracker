PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+31]
        7 GETUPVAL                         R2 2
        8 JUMPIFEQ                         R0 R2 ; [+29]
       10 GETTABLEKS                       R2 R0 K1 ["Parent"]
       12 JUMPIFNOT                        R2 ; [+8]
       13 LOADK                            R5 K2 ["Model"]
       14 NAMECALL                         R3 R2 K3 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+3]
       18 GETTABLEKS                       R2 R2 K1 ["Parent"]
       20 JUMPBACK                         ; [-9]
       21 JUMPIFNOT                        R2 ; [+16]
       22 LOADK                            R5 K2 ["Model"]
       23 NAMECALL                         R3 R2 K3 ["IsA"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+11]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R3 R4 K4 ["clearTransforms"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R2
       32 CALL                             R3 2 0
       33 JUMPIFNOT                        R1 ; [+4]
       34 LOADN                            R5 0
       35 NAMECALL                         R3 R1 K5 ["StepAnimations"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R2 0
       39 GETUPVAL                         R3 2
       40 SETTABLEKS                       R3 R2 K0 ["current"]
       42 GETUPVAL                         R2 1
       43 GETUPVAL                         R3 4
       44 SETTABLEKS                       R3 R2 K0 ["current"]
       46 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useRef"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 SETLIST                          R6 R7 2 [1]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
