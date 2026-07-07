MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"getIsAssistantBackgroundDataModelToolCall", "TestableFlags"}]
        2 GETIMPORT                        R1 K4 [require]
        4 GETIMPORT                        R2 K6 [script]
        6 GETTABLEKS                       R2 R2 K0 ["getIsAssistantBackgroundDataModelToolCall"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["getIsAssistantBackgroundDataModelToolCall"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K1 ["TestableFlags"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["TestableFlags"]
       20 RETURN                           R0 1
