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
       16 GETTABLEKS                       R2 R2 K7 ["Acp"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["Api"]
       25 GETTABLEKS                       R3 R3 K8 ["Admin"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K6 ["Api"]
       34 GETTABLEKS                       R4 R4 K9 ["JwtMint"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K6 ["Api"]
       43 GETTABLEKS                       R5 R5 K10 ["LiveActivity"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K6 ["Api"]
       52 GETTABLEKS                       R6 R6 K11 ["WellKnown"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K14 [table.freeze]
       57 DUPTABLE                         R7 K15 [{"Acp", "Admin", "JwtMint", "LiveActivity", "WellKnown"}]
       58 SETTABLEKS                       R1 R7 K7 ["Acp"]
       60 SETTABLEKS                       R2 R7 K8 ["Admin"]
       62 SETTABLEKS                       R3 R7 K9 ["JwtMint"]
       64 SETTABLEKS                       R4 R7 K10 ["LiveActivity"]
       66 SETTABLEKS                       R5 R7 K11 ["WellKnown"]
       68 CALL                             R6 1 -1
       69 RETURN                           R6 -1
