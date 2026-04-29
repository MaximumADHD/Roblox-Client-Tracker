MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["DiscreteEvent"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["UserBlockingEvent"]
        9 LOADN                            R1 2
       10 SETTABLEKS                       R1 R0 K2 ["ContinuousEvent"]
       12 RETURN                           R0 1
