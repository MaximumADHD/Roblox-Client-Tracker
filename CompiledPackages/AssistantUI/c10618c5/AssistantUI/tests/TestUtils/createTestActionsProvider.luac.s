PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R4 ; [+15]
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["Provider"]
        8 DUPTABLE                         R6 K3 [{"net"}]
        9 SETTABLEKS                       R2 R6 K2 ["net"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R0 K1 ["Provider"]
       14 LOADNIL                          R9
       15 MOVE                             R10 R3
       16 CALL                             R7 3 -1
       17 CALL                             R4 -1 -1
       18 RETURN                           R4 -1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R5 R0 K4 ["ProviderOLD"]
       22 DUPTABLE                         R6 K6 [{"value"}]
       23 SETTABLEKS                       R1 R6 K5 ["value"]
       25 MOVE                             R7 R3
       26 CALL                             R4 3 -1
       27 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K11 ["NetworkingContext"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 RETURN                           R6 1
