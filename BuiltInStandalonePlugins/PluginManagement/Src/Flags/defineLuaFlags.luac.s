MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getFFlagStudioFixPluginManagementTitle"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 RETURN                           R0 1
