MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"testMatch", "setupFilesAfterEnv"}]
        2 NEWTABLE                         R1 0 1
        4 LOADK                            R2 K3 ["**/*.spec"]
        5 SETLIST                          R1 R2 1 [1]
        7 SETTABLEKS                       R1 R0 K0 ["testMatch"]
        9 NEWTABLE                         R1 0 1
       11 GETIMPORT                        R2 K5 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K1 ["setupFilesAfterEnv"]
       17 SETLIST                          R1 R2 1 [1]
       19 SETTABLEKS                       R1 R0 K1 ["setupFilesAfterEnv"]
       21 RETURN                           R0 1
