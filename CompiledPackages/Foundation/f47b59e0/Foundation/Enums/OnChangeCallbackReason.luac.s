MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Drag", "Activate", "Keyboard", "FocusLost"}]
        2 LOADK                            R1 K0 ["Drag"]
        3 SETTABLEKS                       R1 R0 K0 ["Drag"]
        5 LOADK                            R1 K1 ["Activate"]
        6 SETTABLEKS                       R1 R0 K1 ["Activate"]
        8 LOADK                            R1 K2 ["Keyboard"]
        9 SETTABLEKS                       R1 R0 K2 ["Keyboard"]
       11 LOADK                            R1 K3 ["FocusLost"]
       12 SETTABLEKS                       R1 R0 K3 ["FocusLost"]
       14 RETURN                           R0 1
