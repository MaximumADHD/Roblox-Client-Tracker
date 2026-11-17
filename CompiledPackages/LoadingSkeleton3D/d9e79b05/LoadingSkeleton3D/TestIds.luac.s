MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"StatusLabel"}]
        2 DUPTABLE                         R1 K20 [{["Container"] = "loading-skeleton-status-label", ["Message"] = "loading-skeleton-status-message", ["Close"] = "loading-skeleton-status-close", ["Revert"] = "loading-skeleton-status-revert", ["Action"] = "loading-skeleton-status-action", ["Corner"] = "loading-skeleton-status-corner", ["Details"] = "loading-skeleton-status-details", ["Step"] = "loading-skeleton-status-step", ["Cancel"] = "loading-skeleton-status-cancel"}]
        3 SETTABLEKS                       R1 R0 K0 ["StatusLabel"]
        5 RETURN                           R0 1
