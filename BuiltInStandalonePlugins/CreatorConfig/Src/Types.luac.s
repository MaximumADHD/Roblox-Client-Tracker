MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K7 [{[1] = "OpenPublishModal", ["OpenPublishAsModal"] = "OpenPublishAsModal", ["StartPublishWorkflow"] = "StartPublishWorkflow", ["StartPublishAsWorkflow"] = "StartPublishAsWorkflow", ["CancelPublishModal"] = "CancelPublishModal", ["CancelPublishWorkflow"] = "CancelPublishWorkflow", ["PublishCompleted"] = "PublishCompleted"}]
        4 SETTABLEKS                       R1 R0 K8 ["WebEvents"]
        6 RETURN                           R0 1
