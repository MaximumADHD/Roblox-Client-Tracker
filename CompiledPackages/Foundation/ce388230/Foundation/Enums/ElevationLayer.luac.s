MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"Popover", "Drawer", "Sheet", "Dialog", "Notification"}]
        2 LOADK                            R1 K0 ["Popover"]
        3 SETTABLEKS                       R1 R0 K0 ["Popover"]
        5 LOADK                            R1 K1 ["Drawer"]
        6 SETTABLEKS                       R1 R0 K1 ["Drawer"]
        8 LOADK                            R1 K2 ["Sheet"]
        9 SETTABLEKS                       R1 R0 K2 ["Sheet"]
       11 LOADK                            R1 K3 ["Dialog"]
       12 SETTABLEKS                       R1 R0 K3 ["Dialog"]
       14 LOADK                            R1 K4 ["Notification"]
       15 SETTABLEKS                       R1 R0 K4 ["Notification"]
       17 RETURN                           R0 1
