MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["FFlagAssistantPlanMode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K8 ["useToolsChangedSystemReminders"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K9 [{"useToolsChangedSystemReminders"}]
       22 SETTABLEKS                       R2 R3 K8 ["useToolsChangedSystemReminders"]
       24 MOVE                             R4 R1
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+18]
       27 GETIMPORT                        R4 K5 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R5 R6 K10 ["usePersistentPlanSystemReminder"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K10 ["usePersistentPlanSystemReminder"]
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R6 K1 [script]
       40 GETTABLEKS                       R5 R6 K11 ["usePlanModeSystemReminder"]
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K11 ["usePlanModeSystemReminder"]
       45 RETURN                           R3 1
