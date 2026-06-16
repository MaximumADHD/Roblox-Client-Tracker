MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K5 [{"host", "pathPrefix"}]
        4 LOADK                            R2 K6 ["gamejoin"]
        5 SETTABLEKS                       R2 R1 K3 ["host"]
        7 LOADK                            R2 K7 [""]
        8 SETTABLEKS                       R2 R1 K4 ["pathPrefix"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
