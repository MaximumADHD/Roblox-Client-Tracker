MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADN                            R1 3
        4 SETTABLEKS                       R1 R0 K0 ["SCROLL_RATE"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["EXTRA_NODES"]
        9 LOADK                            R1 K2 ["NIL_NODE"]
       10 SETTABLEKS                       R1 R0 K2 ["NIL_NODE"]
       12 RETURN                           R0 1
