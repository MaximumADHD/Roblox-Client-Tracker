PROTO_0:
        0 DUPTABLE                         R0 K1 [{"options"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["options"]
        4 SETTABLEKS                       R1 R0 K0 ["options"]
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
       23 GETTABLEKS                       R5 R0 K5 ["options"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 JUMP                             ; [+6]
       30 DUPTABLE                         R2 K6 [{"options"}]
       31 GETTABLEKS                       R3 R0 K5 ["options"]
       33 SETTABLEKS                       R3 R2 K5 ["options"]
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
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantUseMemoizedContextValues"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createElement"]
       23 DUPTABLE                         R4 K13 [{"default", "options"}]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K11 ["default"]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K12 ["options"]
       30 GETTABLEKS                       R5 R1 K14 ["createContext"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K15 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPTABLE                         R7 K18 [{"Context", "Provider"}]
       40 SETTABLEKS                       R5 R7 K16 ["Context"]
       42 SETTABLEKS                       R6 R7 K17 ["Provider"]
       44 RETURN                           R7 1
