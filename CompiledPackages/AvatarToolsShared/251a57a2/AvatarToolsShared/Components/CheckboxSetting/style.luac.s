MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"BoxSize", "FramePadding"}]
        2 GETIMPORT                        R1 K5 [UDim2.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 20
        6 LOADN                            R4 0
        7 LOADN                            R5 20
        8 CALL                             R1 4 1
        9 SETTABLEKS                       R1 R0 K0 ["BoxSize"]
       11 LOADN                            R1 96
       12 SETTABLEKS                       R1 R0 K1 ["FramePadding"]
       14 RETURN                           R0 1
