PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 DUPCLOSURE                       R1 K0 [PROTO_0]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 LOADK                            R2 K1 ["Humanoid"]
        9 NAMECALL                         R0 R0 K2 ["FindFirstChildOfClass"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 0
       13 LOADK                            R3 K3 ["AnimationController"]
       14 NAMECALL                         R1 R1 K2 ["FindFirstChildOfClass"]
       16 CALL                             R1 2 1
       17 OR                               R2 R0 R1
       18 JUMPIFEQKNIL                     R2 ; [+23]
       20 LOADK                            R5 K4 ["Animator"]
       21 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
       23 CALL                             R3 2 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+8]
       26 GETIMPORT                        R4 K7 [Instance.new]
       28 LOADK                            R5 K4 ["Animator"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R2 R4 K8 ["Parent"]
       32 MOVE                             R3 R4
       33 MOVE                             R4 R3
       34 GETUPVAL                         R5 1
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R4
       37 CALL                             R5 1 0
       38 GETUPVAL                         R5 2
       39 SETTABLEKS                       R3 R5 K9 ["current"]
       41 RETURN                           R0 0
       42 GETUPVAL                         R3 1
       43 DUPCLOSURE                       R4 K10 [PROTO_2]
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R0
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 0
       23 MOVE                             R4 R1
       24 JUMPIF                           R4 ; [+2]
       25 GETTABLEKS                       R4 R3 K3 ["current"]
       27 RETURN                           R4 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
