MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 DUPTABLE                         R1 K3 [{[1] = "ObjectGeneral", ["Properties"]}]
        4 NEWTABLE                         R2 0 2
        6 DUPTABLE                         R3 K8 [{["Name"] = "ImportName", ["Editable"] = True}]
        7 DUPTABLE                         R4 K10 [{["Name"] = "Anchored", ["Editable"] = True}]
        8 SETLIST                          R2 R3 2 [1]
       10 SETTABLEKS                       R2 R1 K2 ["Properties"]
       12 SETLIST                          R0 R1 1 [1]
       14 RETURN                           R0 1
