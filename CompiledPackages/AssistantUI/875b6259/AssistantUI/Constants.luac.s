PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"MAX_THREAD_NAME_LENGTH", "ROBLOX_ENGINE_DOCS_BASE_URL", "USE_ELEVATED_CAPABILITIES_KEY", "MESSAGES_LOAD_TRIGGER_DISTANCE", "THREADS_LOAD_TRIGGER_DISTANCE", "MultiChatExperimentEnabledFn"}]
        2 LOADN                            R1 50
        3 SETTABLEKS                       R1 R0 K0 ["MAX_THREAD_NAME_LENGTH"]
        5 LOADK                            R1 K7 ["https://create.roblox.com/docs/reference/engine"]
        6 SETTABLEKS                       R1 R0 K1 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
        8 LOADK                            R1 K8 ["UseElevatedCapabilities"]
        9 SETTABLEKS                       R1 R0 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
       11 LOADN                            R1 50
       12 SETTABLEKS                       R1 R0 K3 ["MESSAGES_LOAD_TRIGGER_DISTANCE"]
       14 LOADN                            R1 20
       15 SETTABLEKS                       R1 R0 K4 ["THREADS_LOAD_TRIGGER_DISTANCE"]
       17 DUPCLOSURE                       R1 K9 [PROTO_0]
       18 SETTABLEKS                       R1 R0 K5 ["MultiChatExperimentEnabledFn"]
       20 RETURN                           R0 1
