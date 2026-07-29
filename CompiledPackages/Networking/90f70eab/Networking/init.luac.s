MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Util"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K9 [{"Http", "RobloxAPI", "Types", "Flags"}]
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R3 K3 [script]
       15 GETTABLEKS                       R3 R3 K6 ["Http"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K6 ["Http"]
       20 GETIMPORT                        R2 K1 [require]
       22 GETIMPORT                        R3 K3 [script]
       24 GETTABLEKS                       R3 R3 K7 ["RobloxAPI"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K7 ["RobloxAPI"]
       29 GETIMPORT                        R2 K1 [require]
       31 GETIMPORT                        R3 K3 [script]
       33 GETTABLEKS                       R3 R3 K4 ["Util"]
       35 GETTABLEKS                       R3 R3 K5 ["Types"]
       37 CALL                             R2 1 1
       38 SETTABLEKS                       R2 R1 K5 ["Types"]
       40 DUPTABLE                         R2 K11 [{"getFFlagCreatorInventorySearchSupportsSourcesFilter"}]
       41 GETIMPORT                        R3 K1 [require]
       43 GETIMPORT                        R4 K3 [script]
       45 GETTABLEKS                       R4 R4 K8 ["Flags"]
       47 GETTABLEKS                       R4 R4 K10 ["getFFlagCreatorInventorySearchSupportsSourcesFilter"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["getFFlagCreatorInventorySearchSupportsSourcesFilter"]
       52 SETTABLEKS                       R2 R1 K8 ["Flags"]
       54 RETURN                           R1 1
