MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Json"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["Logging"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K9 ["MultiplexUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Util"]
       32 GETTABLEKS                       R5 R6 K10 ["Observable"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Util"]
       39 GETTABLEKS                       R6 R7 K11 ["ToolBuilder"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R8 K12 ["ToolResult"]
       48 CALL                             R6 1 1
       49 DUPTABLE                         R7 K13 [{"ToolBuilder", "ToolResult", "MultiplexUtils", "Logging", "Observable", "Json"}]
       50 SETTABLEKS                       R5 R7 K11 ["ToolBuilder"]
       52 SETTABLEKS                       R6 R7 K12 ["ToolResult"]
       54 SETTABLEKS                       R3 R7 K9 ["MultiplexUtils"]
       56 SETTABLEKS                       R2 R7 K8 ["Logging"]
       58 SETTABLEKS                       R4 R7 K10 ["Observable"]
       60 SETTABLEKS                       R1 R7 K7 ["Json"]
       62 RETURN                           R7 1
