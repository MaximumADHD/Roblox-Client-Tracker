MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K7 [{"OpenPublishModal", "OpenPublishAsModal", "StartPublishWorkflow", "StartPublishAsWorkflow", "CancelPublishModal", "CancelPublishWorkflow", "PublishCompleted"}]
        4 LOADK                            R2 K0 ["OpenPublishModal"]
        5 SETTABLEKS                       R2 R1 K0 ["OpenPublishModal"]
        7 LOADK                            R2 K1 ["OpenPublishAsModal"]
        8 SETTABLEKS                       R2 R1 K1 ["OpenPublishAsModal"]
       10 LOADK                            R2 K2 ["StartPublishWorkflow"]
       11 SETTABLEKS                       R2 R1 K2 ["StartPublishWorkflow"]
       13 LOADK                            R2 K3 ["StartPublishAsWorkflow"]
       14 SETTABLEKS                       R2 R1 K3 ["StartPublishAsWorkflow"]
       16 LOADK                            R2 K4 ["CancelPublishModal"]
       17 SETTABLEKS                       R2 R1 K4 ["CancelPublishModal"]
       19 LOADK                            R2 K5 ["CancelPublishWorkflow"]
       20 SETTABLEKS                       R2 R1 K5 ["CancelPublishWorkflow"]
       22 LOADK                            R2 K6 ["PublishCompleted"]
       23 SETTABLEKS                       R2 R1 K6 ["PublishCompleted"]
       25 SETTABLEKS                       R1 R0 K8 ["WebEvents"]
       27 RETURN                           R0 1
