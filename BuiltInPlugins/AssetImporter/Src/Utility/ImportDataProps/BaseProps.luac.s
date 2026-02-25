MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 DUPTABLE                         R1 K2 [{"Section", "Properties"}]
        4 LOADK                            R2 K3 ["ObjectGeneral"]
        5 SETTABLEKS                       R2 R1 K0 ["Section"]
        7 NEWTABLE                         R2 0 1
        9 DUPTABLE                         R3 K6 [{"Name", "Editable"}]
       10 LOADK                            R4 K7 ["ImportName"]
       11 SETTABLEKS                       R4 R3 K4 ["Name"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K5 ["Editable"]
       16 SETLIST                          R2 R3 1 [1]
       18 SETTABLEKS                       R2 R1 K1 ["Properties"]
       20 SETLIST                          R0 R1 1 [1]
       22 RETURN                           R0 1
