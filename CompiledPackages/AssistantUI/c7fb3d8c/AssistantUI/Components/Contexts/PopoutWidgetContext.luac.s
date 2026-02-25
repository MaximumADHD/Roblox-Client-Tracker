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
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 DUPTABLE                         R1 K5 [{"option"}]
       13 GETTABLEKS                       R2 R0 K4 ["option"]
       15 SETTABLEKS                       R2 R1 K4 ["option"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K6 ["Provider"]
       21 DUPTABLE                         R4 K8 [{"value"}]
       22 SETTABLEKS                       R1 R4 K7 ["value"]
       24 GETTABLEKS                       R5 R0 K9 ["children"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 NEWTABLE                         R3 2 0
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 SETTABLEKS                       R4 R3 K10 ["getDialogWidget"]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K12 ["getPopoutMenu"]
       24 DUPTABLE                         R4 K15 [{"default", "option"}]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K13 ["default"]
       28 SETTABLEKS                       R3 R4 K14 ["option"]
       30 GETTABLEKS                       R5 R1 K16 ["createContext"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K17 [PROTO_2]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 DUPTABLE                         R7 K20 [{"Context", "Provider"}]
       38 SETTABLEKS                       R5 R7 K18 ["Context"]
       40 SETTABLEKS                       R6 R7 K19 ["Provider"]
       42 RETURN                           R7 1
