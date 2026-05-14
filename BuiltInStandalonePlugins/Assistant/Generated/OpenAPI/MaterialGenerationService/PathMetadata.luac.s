MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K6 [{"host", "baseUrl", "pathPrefix"}]
        4 LOADK                            R2 K7 ["apis"]
        5 SETTABLEKS                       R2 R1 K3 ["host"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K4 ["baseUrl"]
       10 LOADK                            R2 K8 ["material-generation"]
       11 SETTABLEKS                       R2 R1 K5 ["pathPrefix"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
