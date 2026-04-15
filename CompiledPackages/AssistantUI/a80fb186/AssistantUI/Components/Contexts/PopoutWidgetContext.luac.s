PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["getDialogWidget is not implemented"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["getPopoutMenu is not implemented"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"option"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["option"]
        4 SETTABLEKS                       R1 R0 K0 ["option"]
        6 RETURN                           R0 1

PROTO_3:
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
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K4 ["useMemo"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 1
       23 GETTABLEKS                       R5 R0 K5 ["option"]
       25 SETLIST                          R4 R5 1 [1]
       27 CALL                             R2 2 1
       28 MOVE                             R1 R2
       29 JUMP                             ; [+6]
       30 DUPTABLE                         R2 K6 [{"option"}]
       31 GETTABLEKS                       R3 R0 K5 ["option"]
       33 SETTABLEKS                       R3 R2 K5 ["option"]
       35 MOVE                             R1 R2
       36 GETUPVAL                         R2 2
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R3 R4 K7 ["Provider"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["FFlagAssistantUseMemoizedContextValues"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createElement"]
       23 NEWTABLE                         R4 2 0
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 SETTABLEKS                       R5 R4 K12 ["getDialogWidget"]
       28 DUPCLOSURE                       R5 K13 [PROTO_1]
       29 SETTABLEKS                       R5 R4 K14 ["getPopoutMenu"]
       31 DUPTABLE                         R5 K17 [{"default", "option"}]
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K15 ["default"]
       35 SETTABLEKS                       R4 R5 K16 ["option"]
       37 GETTABLEKS                       R6 R1 K18 ["createContext"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K19 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R8 K22 [{"Context", "Provider"}]
       47 SETTABLEKS                       R6 R8 K20 ["Context"]
       49 SETTABLEKS                       R7 R8 K21 ["Provider"]
       51 RETURN                           R8 1
