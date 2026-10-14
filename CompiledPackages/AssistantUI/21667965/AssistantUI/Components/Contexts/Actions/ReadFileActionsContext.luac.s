PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K3 [{"value"}]
       17 SETTABLEKS                       R1 R4 K1 ["value"]
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openScript"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"openScriptAsync"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["openScriptAsync"]
        6 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R1
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R2
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R5 R5 K1 ["Provider"]
       30 DUPTABLE                         R6 K3 [{"value"}]
       31 SETTABLEKS                       R3 R6 K2 ["value"]
       33 GETTABLEKS                       R7 R0 K4 ["children"]
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Remotes"]
       23 GETTABLEKS                       R5 R5 K10 ["ReadFileRemotes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R6 R6 K12 ["useNetworking"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R3 K13 ["createElement"]
       35 GETTABLEKS                       R7 R3 K14 ["createContext"]
       37 LOADNIL                          R8
       38 CALL                             R7 1 1
       39 DUPCLOSURE                       R8 K15 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 DUPCLOSURE                       R9 K16 [PROTO_5]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 DUPTABLE                         R10 K20 [{"Context", "ProviderOLD", "Provider"}]
       51 SETTABLEKS                       R7 R10 K17 ["Context"]
       53 SETTABLEKS                       R8 R10 K18 ["ProviderOLD"]
       55 SETTABLEKS                       R9 R10 K19 ["Provider"]
       57 RETURN                           R10 1
