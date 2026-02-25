MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 DUPTABLE                         R1 K2 [{"Section", "Properties"}]
        4 LOADK                            R2 K3 ["ObjectGeneral"]
        5 SETTABLEKS                       R2 R1 K0 ["Section"]
        7 NEWTABLE                         R2 0 2
        9 DUPTABLE                         R3 K6 [{"Name", "Editable"}]
       10 LOADK                            R4 K7 ["ImportName"]
       11 SETTABLEKS                       R4 R3 K4 ["Name"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K5 ["Editable"]
       16 DUPTABLE                         R4 K6 [{"Name", "Editable"}]
       17 LOADK                            R5 K8 ["Anchored"]
       18 SETTABLEKS                       R5 R4 K4 ["Name"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K5 ["Editable"]
       23 SETLIST                          R2 R3 2 [1]
       25 SETTABLEKS                       R2 R1 K1 ["Properties"]
       27 SETLIST                          R0 R1 1 [1]
       29 RETURN                           R0 1
