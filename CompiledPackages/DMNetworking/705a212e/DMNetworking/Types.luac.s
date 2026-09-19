MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["UI_EVENT"]
        4 SETTABLEKS                       R1 R0 K1 ["TAG_UI_EVENT"]
        6 LOADK                            R1 K2 ["EDITABLE_EVENT"]
        7 SETTABLEKS                       R1 R0 K3 ["TAG_EDITABLE_EVENT"]
        9 LOADK                            R1 K4 ["UI_INVOKE"]
       10 SETTABLEKS                       R1 R0 K5 ["TAG_UI_INVOKE"]
       12 LOADK                            R1 K6 ["EDITABLE_INVOKE"]
       13 SETTABLEKS                       R1 R0 K7 ["TAG_EDITABLE_INVOKE"]
       15 RETURN                           R0 1
