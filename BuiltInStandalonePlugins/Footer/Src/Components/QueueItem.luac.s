PROTO_0:
        0 DUPTABLE                         R0 K4 [{"id", "message", "status", "progress"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["session"]
        4 GETTABLEKS                       R1 R1 K0 ["id"]
        6 SETTABLEKS                       R1 R0 K0 ["id"]
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K1 ["message"]
       11 GETUPVAL                         R1 2
       12 SETTABLEKS                       R1 R0 K2 ["status"]
       14 GETUPVAL                         R1 3
       15 SETTABLEKS                       R1 R0 K3 ["progress"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["signals"]
        7 GETTABLEKS                       R2 R2 K3 ["getMessage"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useSignalState"]
       13 GETTABLEKS                       R3 R0 K1 ["session"]
       15 GETTABLEKS                       R3 R3 K2 ["signals"]
       17 GETTABLEKS                       R3 R3 K4 ["getStatus"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["useSignalState"]
       23 GETTABLEKS                       R4 R0 K1 ["session"]
       25 GETTABLEKS                       R4 R4 K2 ["signals"]
       27 GETTABLEKS                       R4 R4 K5 ["getProgress"]
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R6 0 4
       40 GETTABLEKS                       R7 R0 K1 ["session"]
       42 GETTABLEKS                       R7 R7 K7 ["id"]
       44 MOVE                             R8 R1
       45 MOVE                             R9 R2
       46 MOVE                             R10 R3
       47 SETLIST                          R6 R7 4 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 2
       51 GETUPVAL                         R6 3
       52 DUPTABLE                         R7 K11 [{"item", "onView", "LayoutOrder"}]
       53 SETTABLEKS                       R4 R7 K8 ["item"]
       55 GETTABLEKS                       R8 R0 K9 ["onView"]
       57 SETTABLEKS                       R8 R7 K9 ["onView"]
       59 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       61 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["QueueItemView"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["SignalsReact"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["createQueueItemSignals"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["createElement"]
       41 DUPCLOSURE                       R6 K15 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 GETTABLEKS                       R7 R2 K16 ["memo"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 -1
       50 RETURN                           R7 -1
