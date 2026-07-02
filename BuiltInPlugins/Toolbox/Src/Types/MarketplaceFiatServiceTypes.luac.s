MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K16 [{[1] = "SELLER_STATUS_COMPLETE", ["Enabled"] = "SELLER_STATUS_ENABLED", ["Invalid"] = "SELLER_STATUS_INVALID", ["NotStarted"] = "SELLER_STATUS_NOT_STARTED", ["Pending"] = "SELLER_STATUS_PENDING", ["Rejected"] = "SELLER_STATUS_REJECTED", ["Restricted"] = "SELLER_STATUS_RESTRICTED", ["RestrictedSoon"] = "SELLER_STATUS_RESTRICTED_SOON"}]
        2 DUPTABLE                         R1 K18 [{"SellerStatusEnum"}]
        3 SETTABLEKS                       R0 R1 K17 ["SellerStatusEnum"]
        5 RETURN                           R1 1
