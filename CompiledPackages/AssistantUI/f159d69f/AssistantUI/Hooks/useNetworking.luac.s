PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K2 ["useNetworking must be called under a NetworkingContext.Provider"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K11 ["NetworkingContext"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
