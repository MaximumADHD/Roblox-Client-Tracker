MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1], ["UnselectedBorderColor"], ["SelectedBorderMode"], ["UnselectedBorderMode"], ["BorderSizePixel"] = 2}]
        2 GETIMPORT                        R1 K9 [Color3.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 LOADN                            R4 1
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["SelectedBorderColor"]
       10 GETIMPORT                        R1 K9 [Color3.new]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 LOADN                            R4 0
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["UnselectedBorderColor"]
       18 GETIMPORT                        R1 K13 [Enum.BorderMode.Middle]
       20 SETTABLEKS                       R1 R0 K2 ["SelectedBorderMode"]
       22 GETIMPORT                        R1 K15 [Enum.BorderMode.Inset]
       24 SETTABLEKS                       R1 R0 K3 ["UnselectedBorderMode"]
       26 RETURN                           R0 1
