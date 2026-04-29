MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"PROPERTY_WIDTH", "PROPERTY_PARAMETER_OVERRIDDEN_WIDTH", "PROPERTY_WIDTH_UDIM", "PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"}]
        2 LOADN                            R1 90
        3 SETTABLEKS                       R1 R0 K0 ["PROPERTY_WIDTH"]
        5 LOADN                            R1 66
        6 SETTABLEKS                       R1 R0 K1 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH"]
        8 GETIMPORT                        R1 K7 [UDim.new]
       10 LOADN                            R2 0
       11 LOADN                            R3 90
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["PROPERTY_WIDTH_UDIM"]
       15 GETIMPORT                        R1 K7 [UDim.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 66
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K3 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       22 RETURN                           R0 1
