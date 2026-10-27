MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = 90, ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH"] = 66, ["WEIGHT_WIDTH"] = 35, ["PROPERTY_WIDTH_UDIM"], ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"], ["WEIGHT_WIDTH_UDIM"]}]
        2 GETIMPORT                        R1 K12 [UDim.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 90
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K6 ["PROPERTY_WIDTH_UDIM"]
        9 GETIMPORT                        R1 K12 [UDim.new]
       11 LOADN                            R2 0
       12 LOADN                            R3 66
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K7 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       16 GETIMPORT                        R1 K12 [UDim.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 35
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K8 ["WEIGHT_WIDTH_UDIM"]
       23 RETURN                           R0 1
