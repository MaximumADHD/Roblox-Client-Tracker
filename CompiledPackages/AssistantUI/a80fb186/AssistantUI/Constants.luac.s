MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"MAX_THREAD_NAME_LENGTH", "ROBLOX_ENGINE_DOCS_BASE_URL"}]
        2 LOADN                            R1 30
        3 SETTABLEKS                       R1 R0 K0 ["MAX_THREAD_NAME_LENGTH"]
        5 LOADK                            R1 K3 ["https://create.roblox.com/docs/reference/engine"]
        6 SETTABLEKS                       R1 R0 K1 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
        8 RETURN                           R0 1
