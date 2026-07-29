MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1] = 90, ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH"] = 66, ["PROPERTY_WIDTH_UDIM"], ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]}]
        2 GETIMPORT                        R1 K9 [UDim.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 90
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K4 ["PROPERTY_WIDTH_UDIM"]
        9 GETIMPORT                        R1 K9 [UDim.new]
       11 LOADN                            R2 0
       12 LOADN                            R3 66
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       16 RETURN                           R0 1
