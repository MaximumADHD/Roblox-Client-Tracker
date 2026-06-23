MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["usePersistentPlanSystemReminder"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["usePlanModeSystemReminder"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["useToolsChangedSystemReminders"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K7 [{"usePersistentPlanSystemReminder", "usePlanModeSystemReminder", "useToolsChangedSystemReminders"}]
       23 SETTABLEKS                       R0 R3 K4 ["usePersistentPlanSystemReminder"]
       25 SETTABLEKS                       R1 R3 K5 ["usePlanModeSystemReminder"]
       27 SETTABLEKS                       R2 R3 K6 ["useToolsChangedSystemReminders"]
       29 RETURN                           R3 1
