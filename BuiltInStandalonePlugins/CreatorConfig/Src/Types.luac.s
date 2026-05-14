MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K4 [{"OpenPublishModal", "StartPublishWorkflow", "CancelPublishModal", "CancelPublishWorkflow"}]
        4 LOADK                            R2 K0 ["OpenPublishModal"]
        5 SETTABLEKS                       R2 R1 K0 ["OpenPublishModal"]
        7 LOADK                            R2 K1 ["StartPublishWorkflow"]
        8 SETTABLEKS                       R2 R1 K1 ["StartPublishWorkflow"]
       10 LOADK                            R2 K2 ["CancelPublishModal"]
       11 SETTABLEKS                       R2 R1 K2 ["CancelPublishModal"]
       13 LOADK                            R2 K3 ["CancelPublishWorkflow"]
       14 SETTABLEKS                       R2 R1 K3 ["CancelPublishWorkflow"]
       16 SETTABLEKS                       R1 R0 K5 ["WebEvents"]
       18 RETURN                           R0 1
