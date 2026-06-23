MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"Desktop", "Tablet", "Phone", "Console", "VR", "Unknown"}]
        2 LOADK                            R1 K0 ["Desktop"]
        3 SETTABLEKS                       R1 R0 K0 ["Desktop"]
        5 LOADK                            R1 K1 ["Tablet"]
        6 SETTABLEKS                       R1 R0 K1 ["Tablet"]
        8 LOADK                            R1 K2 ["Phone"]
        9 SETTABLEKS                       R1 R0 K2 ["Phone"]
       11 LOADK                            R1 K3 ["Console"]
       12 SETTABLEKS                       R1 R0 K3 ["Console"]
       14 LOADK                            R1 K4 ["VR"]
       15 SETTABLEKS                       R1 R0 K4 ["VR"]
       17 LOADK                            R1 K5 ["Unknown"]
       18 SETTABLEKS                       R1 R0 K5 ["Unknown"]
       20 RETURN                           R0 1
