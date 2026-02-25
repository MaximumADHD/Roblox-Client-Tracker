PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 ORK                              R2 R0 K1 [False]
        7 JUMP                             ; [+1]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 GETUPVAL                         R6 1
       27 CALL                             R6 0 1
       28 JUMPIFNOT                        R6 ; [+9]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R7 0 0
       36 CALL                             R5 2 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R5
       39 DUPTABLE                         R6 K7 [{"enabled", "enable", "disable", "toggle"}]
       40 SETTABLEKS                       R1 R6 K3 ["enabled"]
       42 SETTABLEKS                       R3 R6 K4 ["enable"]
       44 SETTABLEKS                       R4 R6 K5 ["disable"]
       46 SETTABLEKS                       R5 R6 K6 ["toggle"]
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["getFFlagViewportToolingFrameworkSplitButtons"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_4]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
