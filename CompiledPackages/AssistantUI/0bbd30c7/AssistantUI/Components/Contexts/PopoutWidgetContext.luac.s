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
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["option"]
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
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useMemo"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R3 0 1
       19 GETTABLEKS                       R4 R0 K5 ["option"]
       21 SETLIST                          R3 R4 1 [1]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 1
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K6 ["Provider"]
       28 DUPTABLE                         R4 K8 [{"value"}]
       29 SETTABLEKS                       R1 R4 K7 ["value"]
       31 GETTABLEKS                       R5 R0 K9 ["children"]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 NEWTABLE                         R3 2 0
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 SETTABLEKS                       R4 R3 K10 ["getDialogWidget"]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K12 ["getPopoutMenu"]
       24 DUPTABLE                         R4 K16 [{["default"] = True, ["option"]}]
       25 SETTABLEKS                       R3 R4 K15 ["option"]
       27 GETTABLEKS                       R5 R1 K17 ["createContext"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 DUPCLOSURE                       R6 K18 [PROTO_3]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R5
       35 DUPTABLE                         R7 K21 [{"Context", "Provider"}]
       36 SETTABLEKS                       R5 R7 K19 ["Context"]
       38 SETTABLEKS                       R6 R7 K20 ["Provider"]
       40 RETURN                           R7 1
