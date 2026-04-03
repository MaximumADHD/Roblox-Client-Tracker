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
       32 GETIMPORT                        R5 K13 [table.freeze]
       34 DUPTABLE                         R6 K14 [{"Conversation", "SubagentConversation"}]
       35 SETTABLEKS                       R3 R6 K9 ["Conversation"]
       37 SETTABLEKS                       R4 R6 K10 ["SubagentConversation"]
       39 CALL                             R5 1 -1
       40 RETURN                           R5 -1
