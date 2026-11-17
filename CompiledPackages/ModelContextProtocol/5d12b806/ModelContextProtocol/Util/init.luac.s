MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Json"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Logging"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["MultiplexUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Util"]
       32 GETTABLEKS                       R5 R5 K10 ["Observable"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Util"]
       39 GETTABLEKS                       R6 R6 K11 ["ToolBuilder"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K12 ["ToolResult"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Util"]
       53 GETTABLEKS                       R8 R8 K13 ["Url"]
       55 CALL                             R7 1 1
       56 DUPTABLE                         R8 K14 [{"ToolBuilder", "ToolResult", "MultiplexUtils", "Logging", "Observable", "Json", "Url"}]
       57 SETTABLEKS                       R5 R8 K11 ["ToolBuilder"]
       59 SETTABLEKS                       R6 R8 K12 ["ToolResult"]
       61 SETTABLEKS                       R3 R8 K9 ["MultiplexUtils"]
       63 SETTABLEKS                       R2 R8 K8 ["Logging"]
       65 SETTABLEKS                       R4 R8 K10 ["Observable"]
       67 SETTABLEKS                       R1 R8 K7 ["Json"]
       69 SETTABLEKS                       R7 R8 K13 ["Url"]
       71 RETURN                           R8 1
