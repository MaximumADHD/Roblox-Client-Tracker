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
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useMemo"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R3 0 1
       19 GETTABLEKS                       R4 R0 K5 ["runWithClient"]
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
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 DUPTABLE                         R4 K14 [{["default"] = True, ["runWithClient"] = }]
       24 GETTABLEKS                       R5 R2 K15 ["createContext"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 1
       28 DUPCLOSURE                       R6 K16 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       33 SETTABLEKS                       R5 R7 K17 ["Context"]
       35 SETTABLEKS                       R6 R7 K18 ["Provider"]
       37 RETURN                           R7 1
