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
       14 DUPTABLE                         R2 K14 [{"getIsAnimationGenEnabled", "getIsAssistantUseRemoteService", "getIsCreditMeteringEnabled", "getIsCreditMeteringLocalBackend", "getShouldRestoreMostRecentThread", "TestableFlags"}]
       15 GETIMPORT                        R3 K5 [require]
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K8 ["getIsAnimationGenEnabled"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K8 ["getIsAnimationGenEnabled"]
       24 GETIMPORT                        R3 K5 [require]
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K9 ["getIsAssistantUseRemoteService"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K9 ["getIsAssistantUseRemoteService"]
       33 GETIMPORT                        R3 K5 [require]
       35 GETIMPORT                        R4 K1 [script]
       37 GETTABLEKS                       R4 R4 K10 ["getIsCreditMeteringEnabled"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K10 ["getIsCreditMeteringEnabled"]
       42 GETIMPORT                        R3 K5 [require]
       44 GETIMPORT                        R4 K1 [script]
       46 GETTABLEKS                       R4 R4 K11 ["getIsCreditMeteringLocalBackend"]
       48 CALL                             R3 1 1
       49 SETTABLEKS                       R3 R2 K11 ["getIsCreditMeteringLocalBackend"]
       51 GETIMPORT                        R3 K5 [require]
       53 GETIMPORT                        R4 K1 [script]
       55 GETTABLEKS                       R4 R4 K12 ["getShouldRestoreMostRecentThread"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R2 K12 ["getShouldRestoreMostRecentThread"]
       60 GETTABLEKS                       R3 R1 K13 ["TestableFlags"]
       62 SETTABLEKS                       R3 R2 K13 ["TestableFlags"]
       64 RETURN                           R2 1
