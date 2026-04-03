MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["GUEST_EVENT"]
        4 SETTABLEKS                       R1 R0 K1 ["TAG_GUEST_EVENT"]
        6 LOADK                            R1 K2 ["HOST_EVENT"]
        7 SETTABLEKS                       R1 R0 K3 ["TAG_HOST_EVENT"]
        9 LOADK                            R1 K4 ["GUEST_INVOKE"]
       10 SETTABLEKS                       R1 R0 K5 ["TAG_GUEST_INVOKE"]
       12 LOADK                            R1 K6 ["HOST_INVOKE"]
       13 SETTABLEKS                       R1 R0 K7 ["TAG_HOST_INVOKE"]
       15 RETURN                           R0 1
