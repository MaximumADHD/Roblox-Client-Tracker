PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"observeOpenNodeId", "openStateMachine", "close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeOpenNodeId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["openStateMachine"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["close"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R2
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 1
       26 MOVE                             R7 R2
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       33 NEWCLOSURE                       R6 P3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 3
       39 MOVE                             R8 R1
       40 MOVE                             R9 R3
       41 MOVE                             R10 R4
       42 SETLIST                          R7 R8 3 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K3 ["createElement"]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K4 ["Provider"]
       51 DUPTABLE                         R8 K6 [{"value"}]
       52 SETTABLEKS                       R5 R8 K5 ["value"]
       54 GETTABLEKS                       R9 R0 K7 ["children"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K13 [{"observeOpenNodeId", "openStateMachine", "close"}]
       29 GETTABLEKS                       R5 R3 K14 ["createSignal"]
       31 LOADNIL                          R6
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K10 ["observeOpenNodeId"]
       35 GETTABLEKS                       R5 R2 K15 ["createUnimplemented"]
       37 LOADK                            R6 K11 ["openStateMachine"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K11 ["openStateMachine"]
       41 GETTABLEKS                       R5 R2 K15 ["createUnimplemented"]
       43 LOADK                            R6 K12 ["close"]
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K12 ["close"]
       47 GETTABLEKS                       R5 R1 K16 ["createContext"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 DUPCLOSURE                       R6 K17 [PROTO_4]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       56 SETTABLEKS                       R5 R7 K18 ["Context"]
       58 SETTABLEKS                       R6 R7 K19 ["Provider"]
       60 RETURN                           R7 1
