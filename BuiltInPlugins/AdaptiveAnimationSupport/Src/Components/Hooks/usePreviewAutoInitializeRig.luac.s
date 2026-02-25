PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 ["preview"] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 LOADK                            R2 K1 ["RBX_AutoRun"]
       11 NAMECALL                         R0 R0 K2 ["GetAttribute"]
       13 CALL                             R0 2 1
       14 JUMPIFEQKNIL                     R0 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R0 R1 K3 ["autoAll"]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R2 2
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 1
       24 LOADK                            R2 K1 ["RBX_AutoRun"]
       25 LOADB                            R3 1
       26 NAMECALL                         R0 R0 K4 ["SetAttribute"]
       28 CALL                             R0 3 0
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R0 R1 K5 ["SIZE_ENABLED"]
       32 JUMPIFNOT                        R0 ; [+6]
       33 GETUPVAL                         R1 3
       34 GETTABLEKS                       R0 R1 K6 ["autoSize"]
       36 GETUPVAL                         R1 1
       37 GETUPVAL                         R2 2
       38 CALL                             R0 2 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R5 0 2
       11 MOVE                             R6 R0
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADK                            R7 K1 ["y"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K2 ["n"]
       16 SETLIST                          R5 R6 2 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
