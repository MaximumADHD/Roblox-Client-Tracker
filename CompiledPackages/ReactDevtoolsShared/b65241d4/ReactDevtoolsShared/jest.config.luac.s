MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"setupFilesAfterEnv", "testMatch"}]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R5 K4 [script]
        6 GETTABLEKS                       R4 R5 K5 ["Parent"]
        8 GETTABLEKS                       R3 R4 K6 ["__tests__"]
       10 GETTABLEKS                       R2 R3 K7 ["setupTests"]
       12 SETLIST                          R1 R2 1 [1]
       14 SETTABLEKS                       R1 R0 K0 ["setupFilesAfterEnv"]
       16 NEWTABLE                         R1 0 1
       18 LOADK                            R2 K8 ["**/*.(spec|test)"]
       19 SETLIST                          R1 R2 1 [1]
       21 SETTABLEKS                       R1 R0 K1 ["testMatch"]
       23 RETURN                           R0 1
