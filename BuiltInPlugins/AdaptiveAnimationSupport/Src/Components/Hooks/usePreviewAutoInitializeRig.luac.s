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
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R0 R1 K3 ["autoMap"]
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R2 3
       25 CALL                             R0 2 0
       26 GETUPVAL                         R1 4
       27 GETTABLEKS                       R0 R1 K4 ["enforceTpose"]
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 3
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R0 R1 K5 ["applyTposeAdjustment"]
       35 GETUPVAL                         R1 2
       36 GETUPVAL                         R2 3
       37 CALL                             R0 2 0
       38 GETUPVAL                         R0 2
       39 LOADK                            R2 K1 ["RBX_AutoRun"]
       40 LOADB                            R3 1
       41 NAMECALL                         R0 R0 K6 ["SetAttribute"]
       43 CALL                             R0 3 0
       44 GETUPVAL                         R0 1
       45 JUMPIFNOTEQKS                    R0 K0 ["preview"] ; [+11]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R0 R1 K7 ["SIZE_ENABLED"]
       50 JUMPIFNOT                        R0 ; [+6]
       51 GETUPVAL                         R1 4
       52 GETTABLEKS                       R0 R1 K8 ["autoSize"]
       54 GETUPVAL                         R1 2
       55 GETUPVAL                         R2 3
       56 CALL                             R0 2 0
       57 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R5 0 2
       12 MOVE                             R6 R0
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADK                            R7 K1 ["y"]
       15 JUMP                             ; [+1]
       16 LOADK                            R7 K2 ["n"]
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAdaptiveAnimationHandRig"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
