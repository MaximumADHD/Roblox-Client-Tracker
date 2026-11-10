MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Derives", "BackgroundColor3"}]
        2 NEWTABLE                         R1 0 1
        4 GETIMPORT                        R3 K5 [script]
        6 GETTABLEKS                       R3 R3 K6 ["Parent"]
        8 GETTABLEKS                       R2 R3 K3 ["Derives.style"]
       10 SETLIST                          R1 R2 1 [1]
       12 SETTABLEKS                       R1 R0 K0 ["Derives"]
       14 GETIMPORT                        R1 K9 [Color3.fromRGB]
       16 LOADN                            R2 0
       17 LOADN                            R3 0
       18 LOADN                            R4 255
       19 CALL                             R1 3 1
       20 SETTABLEKS                       R1 R0 K1 ["BackgroundColor3"]
       22 RETURN                           R0 1
