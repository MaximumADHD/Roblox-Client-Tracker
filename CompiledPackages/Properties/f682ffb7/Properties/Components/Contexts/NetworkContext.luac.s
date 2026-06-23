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
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["NetworkingTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["createUnimplemented"]
       30 GETTABLEKS                       R5 R2 K12 ["createElement"]
       32 DUPTABLE                         R6 K15 [{"default", "registerOnConnect"}]
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K13 ["default"]
       36 MOVE                             R7 R4
       37 LOADK                            R8 K14 ["registerOnConnect"]
       38 CALL                             R7 1 1
       39 SETTABLEKS                       R7 R6 K14 ["registerOnConnect"]
       41 GETTABLEKS                       R7 R2 K16 ["createContext"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K17 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 DUPTABLE                         R9 K20 [{"Context", "Provider"}]
       49 SETTABLEKS                       R7 R9 K18 ["Context"]
       51 SETTABLEKS                       R8 R9 K19 ["Provider"]
       53 RETURN                           R9 1
