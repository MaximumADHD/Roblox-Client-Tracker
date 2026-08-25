PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableLoginPage2"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoginPageTelemetryThrottleHundredthsPercent"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableLoginPage2"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["LoginPageTelemetryThrottleHundredthsPercent"]
       11 LOADN                            R3 10000
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 DUPTABLE                         R0 K8 [{"getFFlagEnableLoginPage", "getFIntLoginPageTelemetryThrottleHundredthsPercent"}]
       16 DUPCLOSURE                       R1 K9 [PROTO_0]
       17 SETTABLEKS                       R1 R0 K6 ["getFFlagEnableLoginPage"]
       19 DUPCLOSURE                       R1 K10 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K7 ["getFIntLoginPageTelemetryThrottleHundredthsPercent"]
       22 RETURN                           R0 1
