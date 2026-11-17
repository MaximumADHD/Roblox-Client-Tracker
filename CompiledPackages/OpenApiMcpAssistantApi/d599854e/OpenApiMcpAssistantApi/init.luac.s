MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HttpWrapper"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["Api"]
       16 GETTABLEKS                       R2 R2 K7 ["Conversation"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["Api"]
       25 GETTABLEKS                       R3 R3 K8 ["SubagentConversation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K6 ["Api"]
       34 GETTABLEKS                       R4 R4 K9 ["SystemPrompt"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K12 [table.freeze]
       39 DUPTABLE                         R5 K13 [{"Conversation", "SubagentConversation", "SystemPrompt"}]
       40 SETTABLEKS                       R1 R5 K7 ["Conversation"]
       42 SETTABLEKS                       R2 R5 K8 ["SubagentConversation"]
       44 SETTABLEKS                       R3 R5 K9 ["SystemPrompt"]
       46 CALL                             R4 1 -1
       47 RETURN                           R4 -1
