PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"scrollToBottom"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["scrollToBottom"]
        4 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["scrollToBottom"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["Provider"]
       17 DUPTABLE                         R5 K4 [{"value"}]
       18 SETTABLEKS                       R2 R5 K3 ["value"]
       20 GETTABLEKS                       R6 R0 K5 ["children"]
       22 CALL                             R3 3 -1
       23 RETURN                           R3 -1

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
       16 DUPTABLE                         R3 K10 [{"scrollToBottom"}]
       17 DUPCLOSURE                       R4 K11 [PROTO_0]
       18 SETTABLEKS                       R4 R3 K9 ["scrollToBottom"]
       20 GETTABLEKS                       R4 R1 K12 ["createContext"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K13 [PROTO_2]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 DUPTABLE                         R6 K16 [{"Context", "Provider"}]
       29 SETTABLEKS                       R4 R6 K14 ["Context"]
       31 SETTABLEKS                       R5 R6 K15 ["Provider"]
       33 RETURN                           R6 1
