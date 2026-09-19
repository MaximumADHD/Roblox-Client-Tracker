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
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["NetworkingTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["createUnimplemented"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPTABLE                         R5 K16 [{["default"] = True, ["registerOnConnect"]}]
       31 MOVE                             R6 R3
       32 LOADK                            R7 K15 ["registerOnConnect"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K15 ["registerOnConnect"]
       36 GETTABLEKS                       R6 R2 K17 ["createContext"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K18 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R6
       43 DUPTABLE                         R8 K21 [{"Context", "Provider"}]
       44 SETTABLEKS                       R6 R8 K19 ["Context"]
       46 SETTABLEKS                       R7 R8 K20 ["Provider"]
       48 RETURN                           R8 1
