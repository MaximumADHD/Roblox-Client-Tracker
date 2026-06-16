MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"PercentageLabelWidth", "ValueTextBoxPadding", "SliderContainerPadding", "DefaultSnap", "LabelWidth", "InputWidth", "InputHeight", "SliderWidth"}]
        2 LOADN                            R1 10
        3 SETTABLEKS                       R1 R0 K0 ["PercentageLabelWidth"]
        5 LOADN                            R1 5
        6 SETTABLEKS                       R1 R0 K1 ["ValueTextBoxPadding"]
        8 LOADN                            R1 10
        9 SETTABLEKS                       R1 R0 K2 ["SliderContainerPadding"]
       11 LOADN                            R1 1
       12 SETTABLEKS                       R1 R0 K3 ["DefaultSnap"]
       14 LOADN                            R1 80
       15 SETTABLEKS                       R1 R0 K4 ["LabelWidth"]
       17 LOADN                            R1 60
       18 SETTABLEKS                       R1 R0 K5 ["InputWidth"]
       20 LOADN                            R1 22
       21 SETTABLEKS                       R1 R0 K6 ["InputHeight"]
       23 LOADN                            R1 100
       24 SETTABLEKS                       R1 R0 K7 ["SliderWidth"]
       26 RETURN                           R0 1
