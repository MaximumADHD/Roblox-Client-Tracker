MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["0.1.11"]
        4 SETTABLEKS                       R1 R0 K1 ["UserVersion"]
        6 LOADK                            R1 K2 ["Studio Default"]
        7 SETTABLEKS                       R1 R0 K3 ["StudioDefaultPreset"]
        9 GETIMPORT                        R1 K6 [Vector2.new]
       11 LOADN                            R2 550
       12 LOADN                            R3 194
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K7 ["DialogMinSize"]
       16 RETURN                           R0 1
