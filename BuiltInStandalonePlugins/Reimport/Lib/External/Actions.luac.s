MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 LOADK                            R3 K5 ["Actions"]
       10 NAMECALL                         R1 R1 K6 ["GetPluginComponent"]
       12 CALL                             R1 2 1
       13 RETURN                           R1 1
