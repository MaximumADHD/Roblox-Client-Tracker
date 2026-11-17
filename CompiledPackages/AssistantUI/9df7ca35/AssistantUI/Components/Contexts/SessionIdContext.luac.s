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
       12 GETTABLEKS                       R2 R0 K5 ["sessionId"]
       14 ORK                              R1 R2 K4 [""]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K7 ["Provider"]
       30 DUPTABLE                         R5 K9 [{"value"}]
       31 SETTABLEKS                       R2 R5 K8 ["value"]
       33 GETTABLEKS                       R6 R0 K10 ["children"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

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
       16 DUPTABLE                         R3 K13 [{["default"] = True, ["sessionId"] = ""}]
       17 GETTABLEKS                       R4 R1 K14 ["createContext"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K15 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 DUPTABLE                         R6 K18 [{"Context", "Provider"}]
       26 SETTABLEKS                       R4 R6 K16 ["Context"]
       28 SETTABLEKS                       R5 R6 K17 ["Provider"]
       30 RETURN                           R6 1
