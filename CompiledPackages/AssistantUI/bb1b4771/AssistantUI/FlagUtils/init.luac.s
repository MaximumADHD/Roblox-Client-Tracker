MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K12 [{"getIsAssistantBackgroundDataModelToolCall", "getIsAssistantHarnessSplit", "getIsSlashCommandViaAcp", "TestableFlags"}]
       15 GETIMPORT                        R3 K5 [require]
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K8 ["getIsAssistantBackgroundDataModelToolCall"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["getIsAssistantBackgroundDataModelToolCall"]
       24 GETIMPORT                        R3 K5 [require]
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K9 ["getIsAssistantHarnessSplit"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K9 ["getIsAssistantHarnessSplit"]
       33 GETIMPORT                        R3 K5 [require]
       35 GETIMPORT                        R4 K1 [script]
       37 GETTABLEKS                       R4 R4 K10 ["getIsSlashCommandViaAcp"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K10 ["getIsSlashCommandViaAcp"]
       42 GETTABLEKS                       R3 R1 K11 ["TestableFlags"]
       44 SETTABLEKS                       R3 R2 K11 ["TestableFlags"]
       46 RETURN                           R2 1
