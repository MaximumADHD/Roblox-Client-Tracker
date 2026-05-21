PROTO_0:
        0 DUPTABLE                         R0 K1 [{"sessionId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["sessionId"]
        4 RETURN                           R0 1

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
       15 JUMPIFNOT                        R2 ; [+16]
       16 GETTABLEKS                       R3 R0 K5 ["sessionId"]
       18 ORK                              R2 R3 K4 [""]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["useMemo"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R5 0 1
       26 MOVE                             R6 R2
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 MOVE                             R1 R3
       31 JUMP                             ; [+7]
       32 DUPTABLE                         R2 K7 [{"sessionId"}]
       33 GETTABLEKS                       R4 R0 K5 ["sessionId"]
       35 ORK                              R3 R4 K4 [""]
       36 SETTABLEKS                       R3 R2 K5 ["sessionId"]
       38 MOVE                             R1 R2
       39 GETUPVAL                         R2 2
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K8 ["Provider"]
       43 DUPTABLE                         R4 K10 [{"value"}]
       44 SETTABLEKS                       R1 R4 K9 ["value"]
       46 GETTABLEKS                       R5 R0 K11 ["children"]
       48 CALL                             R2 3 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantUseMemoizedContextValues"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createElement"]
       23 DUPTABLE                         R4 K13 [{"default", "sessionId"}]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K11 ["default"]
       27 LOADK                            R5 K14 [""]
       28 SETTABLEKS                       R5 R4 K12 ["sessionId"]
       30 GETTABLEKS                       R5 R1 K15 ["createContext"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K16 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       40 SETTABLEKS                       R5 R7 K17 ["Context"]
       42 SETTABLEKS                       R6 R7 K18 ["Provider"]
       44 RETURN                           R7 1
