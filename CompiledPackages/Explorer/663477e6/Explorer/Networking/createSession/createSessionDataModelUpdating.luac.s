PROTO_0:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["instanceAdded"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["rootState"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["rootState"]
       16 GETTABLEKS                       R1 R1 K5 ["queueRootChanged"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 LOADK                            R2 K3 ["%s (%s, ID = %s) replaced"]
        7 GETTABLEKS                       R3 R0 K4 ["name"]
        9 GETTABLEKS                       R4 R0 K5 ["className"]
       11 GETTABLEKS                       R5 R0 K6 ["id"]
       13 CALL                             R1 4 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K7 ["instanceReplaced"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K8 ["rootState"]
       20 MOVE                             R3 R0
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K8 ["rootState"]
       25 GETTABLEKS                       R1 R1 K9 ["queueRootChanged"]
       27 CALL                             R1 0 0
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R1 R1 K10 ["searchRootState"]
       31 JUMPIFEQKNIL                     R1 ; [+4]
       33 GETUPVAL                         R1 3
       34 MOVE                             R2 R0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["rootState"]
        3 GETTABLEKS                       R2 R2 K1 ["instanceIdsToNodes"]
        5 GETTABLEKS                       R3 R0 K2 ["id"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOTEQKNIL                  R1 ; [+22]
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K5 [table.freeze]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 MOVE                             R1 R2
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["instanceAdded"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["rootState"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["rootState"]
       27 GETTABLEKS                       R2 R2 K7 ["queueRootChanged"]
       29 CALL                             R2 0 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 2
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R4 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R3
       12 DUPTABLE                         R5 K2 [{"instanceAdded", "instanceReplaced"}]
       13 GETUPVAL                         R7 2
       14 CALL                             R7 0 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 MOVE                             R6 R4
       17 JUMP                             ; [+1]
       18 MOVE                             R6 R2
       19 SETTABLEKS                       R6 R5 K0 ["instanceAdded"]
       21 GETUPVAL                         R7 2
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+2]
       24 MOVE                             R6 R4
       25 JUMP                             ; [+1]
       26 MOVE                             R6 R3
       27 SETTABLEKS                       R6 R5 K1 ["instanceReplaced"]
       29 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["createSession"]
       13 GETTABLEKS                       R2 R2 K8 ["RootStateUpdating"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["createDebugLogger"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Networking"]
       32 GETTABLEKS                       R5 R5 K7 ["createSession"]
       34 GETTABLEKS                       R5 R5 K12 ["createSessionTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 GETTABLEKS                       R6 R6 K14 ["getFFlagExplorerStreaming"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R3
       45 LOADK                            R7 K8 ["RootStateUpdating"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_3]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 RETURN                           R7 1
