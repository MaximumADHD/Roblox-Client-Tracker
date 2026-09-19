MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1], ["Spacing"] = 15, ["Padding"]}]
        2 GETIMPORT                        R1 K7 [Vector2.new]
        4 LOADN                            R2 200
        5 LOADN                            R3 100
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["PopupMessageSize"]
        9 DUPTABLE                         R1 K11 [{["Left"] = 12, ["Right"] = 12}]
       10 SETTABLEKS                       R1 R0 K3 ["Padding"]
       12 RETURN                           R0 1
