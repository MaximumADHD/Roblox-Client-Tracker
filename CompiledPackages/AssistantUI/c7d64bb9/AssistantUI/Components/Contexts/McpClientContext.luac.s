PROTO_0:
        0 DUPTABLE                         R0 K1 [{"runWithClient"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["runWithClient"]
        4 SETTABLEKS                       R1 R0 K0 ["runWithClient"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 0
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+14]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 1
       23 GETTABLEKS                       R5 R0 K5 ["runWithClient"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 JUMP                             ; [+6]
       30 DUPTABLE                         R2 K6 [{"runWithClient"}]
       31 GETTABLEKS                       R3 R0 K5 ["runWithClient"]
       33 SETTABLEKS                       R3 R2 K5 ["runWithClient"]
       35 MOVE                             R1 R2
       36 GETUPVAL                         R2 2
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K7 ["Provider"]
       40 DUPTABLE                         R4 K9 [{"value"}]
       41 SETTABLEKS                       R1 R4 K8 ["value"]
       43 GETTABLEKS                       R5 R0 K10 ["children"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantUseMemoizedContextValues"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["createElement"]
       30 DUPTABLE                         R5 K14 [{"default", "runWithClient"}]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K12 ["default"]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K13 ["runWithClient"]
       37 GETTABLEKS                       R6 R2 K15 ["createContext"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K16 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R8 K19 [{"Context", "Provider"}]
       47 SETTABLEKS                       R6 R8 K17 ["Context"]
       49 SETTABLEKS                       R7 R8 K18 ["Provider"]
       51 RETURN                           R8 1
