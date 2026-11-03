PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is used for testing if something is stubbed, do not specify it"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["Provider"]
       16 DUPTABLE                         R3 K6 [{"value"}]
       17 SETTABLEKS                       R0 R3 K5 ["value"]
       19 GETTABLEKS                       R4 R0 K7 ["children"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPTABLE                         R3 K13 [{["default"] = True, ["activeViewIdentifier"] = }]
       17 GETTABLEKS                       R4 R1 K14 ["createContext"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 LOADK                            R5 K15 ["ActiveViewContext"]
       22 SETTABLEKS                       R5 R4 K16 ["displayName"]
       24 DUPCLOSURE                       R5 K17 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 DUPTABLE                         R6 K20 [{"Context", "Provider"}]
       28 SETTABLEKS                       R4 R6 K18 ["Context"]
       30 SETTABLEKS                       R5 R6 K19 ["Provider"]
       32 RETURN                           R6 1
