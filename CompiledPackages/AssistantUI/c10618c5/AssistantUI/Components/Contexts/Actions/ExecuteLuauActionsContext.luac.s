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
        1 GETTABLEKS                       R1 R1 K0 ["resolveTargetAsync"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["loadCode"]
        8 MOVE                             R4 R1
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
       12 CALL                             R2 3 1
       13 DUPTABLE                         R3 K5 [{"id", "targetId"}]
       14 GETTABLEKS                       R4 R2 K3 ["id"]
       16 SETTABLEKS                       R4 R3 K3 ["id"]
       18 SETTABLEKS                       R1 R3 K4 ["targetId"]
       20 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["targetId"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["FOCUSED"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["runCode"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 NAMECALL                         R2 R2 K3 ["InvokeAsync"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["targetId"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["FOCUSED"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["stopCode"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 NAMECALL                         R2 R2 K3 ["Fire"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"loadCodeAsync", "runCodeAsync", "stopCode"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["loadCodeAsync"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R1 R0 K1 ["runCodeAsync"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R1 R0 K2 ["stopCode"]
       17 RETURN                           R0 1

PROTO_7:
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
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R5 0 2
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 5
       30 GETUPVAL                         R5 6
       31 GETTABLEKS                       R5 R5 K1 ["Provider"]
       33 DUPTABLE                         R6 K3 [{"value"}]
       34 SETTABLEKS                       R3 R6 K2 ["value"]
       36 GETTABLEKS                       R7 R0 K4 ["children"]
       38 CALL                             R4 3 -1
       39 RETURN                           R4 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["ExecuteLuauRemotes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["NetworkingIdentity"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       37 GETTABLEKS                       R7 R7 K14 ["useNetworking"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["createElement"]
       42 GETTABLEKS                       R8 R3 K16 ["createContext"]
       44 LOADNIL                          R9
       45 CALL                             R8 1 1
       46 DUPCLOSURE                       R9 K17 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 DUPCLOSURE                       R10 K18 [PROTO_7]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 DUPTABLE                         R11 K22 [{"Context", "ProviderOLD", "Provider"}]
       59 SETTABLEKS                       R8 R11 K19 ["Context"]
       61 SETTABLEKS                       R9 R11 K20 ["ProviderOLD"]
       63 SETTABLEKS                       R10 R11 K21 ["Provider"]
       65 RETURN                           R11 1
