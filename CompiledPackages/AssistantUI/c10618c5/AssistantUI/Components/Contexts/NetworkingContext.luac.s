PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["net"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["NetworkingContext.Provider requires a net"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["Provider"]
       12 DUPTABLE                         R3 K6 [{"value"}]
       13 GETTABLEKS                       R4 R0 K0 ["net"]
       15 SETTABLEKS                       R4 R3 K5 ["value"]
       17 GETTABLEKS                       R4 R0 K7 ["children"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["createElement"]
       21 GETTABLEKS                       R5 R3 K10 ["createContext"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 1
       25 DUPCLOSURE                       R6 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R5
       28 DUPTABLE                         R7 K14 [{"Context", "Provider"}]
       29 SETTABLEKS                       R5 R7 K12 ["Context"]
       31 SETTABLEKS                       R6 R7 K13 ["Provider"]
       33 RETURN                           R7 1
