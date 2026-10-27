MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["coreItems"]
        7 GETTABLEKS                       R1 R0 K0 ["coreItems"]
        9 LOADK                            R2 K1 ["collapseAll"]
       10 SETTABLEKS                       R2 R1 K1 ["collapseAll"]
       12 GETTABLEKS                       R1 R0 K0 ["coreItems"]
       14 LOADK                            R2 K2 ["expandAll"]
       15 SETTABLEKS                       R2 R1 K2 ["expandAll"]
       17 GETTABLEKS                       R1 R0 K0 ["coreItems"]
       19 LOADK                            R2 K3 ["rename"]
       20 SETTABLEKS                       R2 R1 K3 ["rename"]
       22 RETURN                           R0 1
