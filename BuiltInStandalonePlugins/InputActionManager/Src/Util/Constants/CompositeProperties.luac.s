MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 6
        3 LOADK                            R1 K0 ["up"]
        4 LOADK                            R2 K1 ["down"]
        5 LOADK                            R3 K2 ["left"]
        6 LOADK                            R4 K3 ["right"]
        7 LOADK                            R5 K4 ["forward"]
        8 LOADK                            R6 K5 ["backward"]
        9 SETLIST                          R0 R1 6 [1]
       11 RETURN                           R0 1
