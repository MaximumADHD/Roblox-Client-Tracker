PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETIMPORT                        R0 K2 [task.wait]
        5 LOADK                            R1 K3 [0.015625]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETIMPORT                        R0 K2 [task.wait]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"waitForNextSearchAsync"}]
        1 GETTABLEKS                       R2 R0 K0 ["waitForNextSearchAsync"]
        3 SETTABLEKS                       R2 R1 K0 ["waitForNextSearchAsync"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Provider"]
        9 DUPTABLE                         R4 K4 [{"value"}]
       10 SETTABLEKS                       R1 R4 K3 ["value"]
       12 GETTABLEKS                       R5 R0 K5 ["children"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagExplorerFastSearch"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["createElement"]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 DUPTABLE                         R5 K13 [{"waitForNextSearchAsync"}]
       26 SETTABLEKS                       R4 R5 K12 ["waitForNextSearchAsync"]
       28 GETTABLEKS                       R6 R2 K14 ["createContext"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 DUPCLOSURE                       R7 K15 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R6
       35 DUPTABLE                         R8 K18 [{"Context", "Provider"}]
       36 SETTABLEKS                       R6 R8 K16 ["Context"]
       38 SETTABLEKS                       R7 R8 K17 ["Provider"]
       40 RETURN                           R8 1
