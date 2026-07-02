MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Acp"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Tools"]
       14 GETTABLEKS                       R2 R2 K6 ["HarnessRegistry"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K7 ["LocalAssistantService"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K1 [require]
       26 GETIMPORT                        R4 K3 [script]
       28 GETTABLEKS                       R4 R4 K8 ["Permissioning"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K1 [require]
       33 GETIMPORT                        R5 K3 [script]
       35 GETTABLEKS                       R5 R5 K8 ["Permissioning"]
       37 GETTABLEKS                       R5 R5 K9 ["PermissionStorageProvider"]
       39 CALL                             R4 1 1
       40 DUPTABLE                         R5 K10 [{"Acp", "HarnessRegistry", "LocalAssistantService", "Permissioning"}]
       41 SETTABLEKS                       R0 R5 K4 ["Acp"]
       43 SETTABLEKS                       R1 R5 K6 ["HarnessRegistry"]
       45 SETTABLEKS                       R2 R5 K7 ["LocalAssistantService"]
       47 SETTABLEKS                       R3 R5 K8 ["Permissioning"]
       49 RETURN                           R5 1
