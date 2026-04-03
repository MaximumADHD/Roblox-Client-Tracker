MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"PopupMessageSize", "Spacing", "Padding"}]
        2 GETIMPORT                        R1 K6 [Vector2.new]
        4 LOADN                            R2 200
        5 LOADN                            R3 100
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["PopupMessageSize"]
        9 LOADN                            R1 15
       10 SETTABLEKS                       R1 R0 K1 ["Spacing"]
       12 DUPTABLE                         R1 K9 [{"Left", "Right"}]
       13 LOADN                            R2 12
       14 SETTABLEKS                       R2 R1 K7 ["Left"]
       16 LOADN                            R2 12
       17 SETTABLEKS                       R2 R1 K8 ["Right"]
       19 SETTABLEKS                       R1 R0 K2 ["Padding"]
       21 RETURN                           R0 1
