MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"WHITE", "BLACK", "CORNER_RADIUS"}]
        2 GETIMPORT                        R1 K6 [Color3.fromRGB]
        4 LOADN                            R2 255
        5 LOADN                            R3 255
        6 LOADN                            R4 255
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["WHITE"]
       10 GETIMPORT                        R1 K6 [Color3.fromRGB]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 LOADN                            R4 0
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["BLACK"]
       18 GETIMPORT                        R1 K9 [UDim.new]
       20 LOADN                            R2 0
       21 LOADN                            R3 5
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K2 ["CORNER_RADIUS"]
       25 RETURN                           R0 1
