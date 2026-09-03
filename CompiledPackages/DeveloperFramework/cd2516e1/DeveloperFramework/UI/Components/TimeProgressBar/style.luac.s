MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1] = 40, ["LoadingBarSize"], ["Size"], ["Spacing"] = 10}]
        2 GETIMPORT                        R1 K9 [UDim2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 -100
        6 LOADN                            R4 0
        7 LOADN                            R5 12
        8 CALL                             R1 4 1
        9 SETTABLEKS                       R1 R0 K2 ["LoadingBarSize"]
       11 GETIMPORT                        R1 K9 [UDim2.new]
       13 LOADN                            R2 1
       14 LOADN                            R3 0
       15 LOADN                            R4 0
       16 LOADN                            R5 32
       17 CALL                             R1 4 1
       18 SETTABLEKS                       R1 R0 K3 ["Size"]
       20 RETURN                           R0 1
