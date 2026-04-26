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
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["Provider"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R3 K7 ["NetworkingTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["createUnimplemented"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPTABLE                         R5 K15 [{"default", "registerOnConnect"}]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K13 ["default"]
       34 MOVE                             R6 R3
       35 LOADK                            R7 K14 ["registerOnConnect"]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R5 K14 ["registerOnConnect"]
       39 GETTABLEKS                       R6 R2 K16 ["createContext"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K17 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 DUPTABLE                         R8 K20 [{"Context", "Provider"}]
       47 SETTABLEKS                       R6 R8 K18 ["Context"]
       49 SETTABLEKS                       R7 R8 K19 ["Provider"]
       51 RETURN                           R8 1
