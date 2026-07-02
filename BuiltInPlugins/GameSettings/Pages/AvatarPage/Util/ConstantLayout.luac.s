MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 26
        4 SETTABLEKS                       R1 R0 K0 ["RowHeight"]
        6 LOADN                            R1 400
        7 SETTABLEKS                       R1 R0 K1 ["PlayerChoiceHorizontalOffset"]
        9 LOADN                            R1 100
       10 SETTABLEKS                       R1 R0 K2 ["TextLabelIdentifierWidth"]
       12 LOADN                            R1 200
       13 SETTABLEKS                       R1 R0 K3 ["InputWidgetWidth"]
       15 GETIMPORT                        R1 K6 [UDim.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 32
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K7 ["VirticalPadding"]
       22 RETURN                           R0 1
