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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 DUPTABLE                         R3 K11 [{"default", "activeViewIdentifier"}]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K9 ["default"]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K10 ["activeViewIdentifier"]
       23 GETTABLEKS                       R4 R1 K12 ["createContext"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 DUPTABLE                         R6 K16 [{"Context", "Provider"}]
       31 SETTABLEKS                       R4 R6 K14 ["Context"]
       33 SETTABLEKS                       R5 R6 K15 ["Provider"]
       35 RETURN                           R6 1
