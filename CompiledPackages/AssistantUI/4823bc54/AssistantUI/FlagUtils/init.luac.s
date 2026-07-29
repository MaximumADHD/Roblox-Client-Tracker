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
       14 DUPTABLE                         R2 K10 [{"getIsAssistantBackgroundDataModelToolCall", "TestableFlags"}]
       15 GETIMPORT                        R3 K5 [require]
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K8 ["getIsAssistantBackgroundDataModelToolCall"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["getIsAssistantBackgroundDataModelToolCall"]
       24 GETTABLEKS                       R3 R1 K9 ["TestableFlags"]
       26 SETTABLEKS                       R3 R2 K9 ["TestableFlags"]
       28 RETURN                           R2 1
