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
       16 GETTABLEKS                       R2 R2 K7 ["McpAssistantStorage"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K10 [table.freeze]
       21 DUPTABLE                         R3 K11 [{"McpAssistantStorage"}]
       22 SETTABLEKS                       R1 R3 K7 ["McpAssistantStorage"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
