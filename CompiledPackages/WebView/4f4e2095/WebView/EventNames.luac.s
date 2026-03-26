MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"INTERNAL_INIT_NAME", "SEND_ANALYTICS_COUNTER_EVENT_NAME", "SEND_ANALYTICS_EVENT_NAME"}]
        2 LOADK                            R1 K4 ["internal:init"]
        3 SETTABLEKS                       R1 R0 K0 ["INTERNAL_INIT_NAME"]
        5 LOADK                            R1 K5 ["sendAnalyticsCounterEvent"]
        6 SETTABLEKS                       R1 R0 K1 ["SEND_ANALYTICS_COUNTER_EVENT_NAME"]
        8 LOADK                            R1 K6 ["sendAnalyticsEvent"]
        9 SETTABLEKS                       R1 R0 K2 ["SEND_ANALYTICS_EVENT_NAME"]
       11 RETURN                           R0 1
