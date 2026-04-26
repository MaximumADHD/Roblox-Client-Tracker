MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Api"]
       20 GETTABLEKS                       R4 R5 K9 ["Conversation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K8 ["Api"]
       29 GETTABLEKS                       R5 R6 K10 ["SubagentConversation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K8 ["Api"]
       38 GETTABLEKS                       R6 R7 K11 ["SystemPrompt"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K14 [table.freeze]
       43 DUPTABLE                         R7 K15 [{"Conversation", "SubagentConversation", "SystemPrompt"}]
       44 SETTABLEKS                       R3 R7 K9 ["Conversation"]
       46 SETTABLEKS                       R4 R7 K10 ["SubagentConversation"]
       48 SETTABLEKS                       R5 R7 K11 ["SystemPrompt"]
       50 CALL                             R6 1 -1
       51 RETURN                           R6 -1
