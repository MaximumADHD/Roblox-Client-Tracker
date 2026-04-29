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
        3 ORK                              R2 R0 K1 [False]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 LOADNIL                          R5
       22 GETUPVAL                         R6 1
       23 JUMPIFNOT                        R6 ; [+9]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 0
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 DUPTABLE                         R6 K8 [{"enabled", "enable", "disable", "toggle", "set"}]
       34 SETTABLEKS                       R1 R6 K3 ["enabled"]
       36 SETTABLEKS                       R3 R6 K4 ["enable"]
       38 SETTABLEKS                       R4 R6 K5 ["disable"]
       40 GETUPVAL                         R8 1
       41 JUMPIFNOT                        R8 ; [+2]
       42 MOVE                             R7 R5
       43 JUMP                             ; [+1]
       44 LOADNIL                          R7
       45 SETTABLEKS                       R7 R6 K6 ["toggle"]
       47 GETUPVAL                         R8 1
       48 JUMPIFNOT                        R8 ; [+2]
       49 MOVE                             R7 R2
       50 JUMP                             ; [+1]
       51 LOADNIL                          R7
       52 SETTABLEKS                       R7 R6 K7 ["set"]
       54 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Flags"]
       18 GETTABLEKS                       R4 R5 K9 ["getFFlagUseToggleStateImprovements"]
       20 CALL                             R3 1 1
       21 MOVE                             R4 R3
       22 CALL                             R4 0 1
       23 DUPCLOSURE                       R5 K10 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 RETURN                           R5 1
