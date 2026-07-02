PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 ["preview"] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 3
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K1 ["RBX_AutoRun"]
       14 NAMECALL                         R0 R0 K2 ["GetAttribute"]
       16 CALL                             R0 2 1
       17 JUMPIFEQKNIL                     R0 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K3 ["autoAll"]
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 3
       25 GETUPVAL                         R3 0
       26 CALL                             R3 0 -1
       27 CALL                             R0 -1 0
       28 GETUPVAL                         R0 2
       29 LOADK                            R2 K1 ["RBX_AutoRun"]
       30 LOADB                            R3 1
       31 NAMECALL                         R0 R0 K4 ["SetAttribute"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAdaptiveAnimationHandRig"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
