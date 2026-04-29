MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"MAX_THREAD_NAME_LENGTH", "ROBLOX_ENGINE_DOCS_BASE_URL", "USE_ELEVATED_CAPABILITIES_KEY"}]
        2 LOADN                            R1 30
        3 SETTABLEKS                       R1 R0 K0 ["MAX_THREAD_NAME_LENGTH"]
        5 LOADK                            R1 K4 ["https://create.roblox.com/docs/reference/engine"]
        6 SETTABLEKS                       R1 R0 K1 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
        8 LOADK                            R1 K5 ["UseElevatedCapabilities"]
        9 SETTABLEKS                       R1 R0 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
       11 RETURN                           R0 1
