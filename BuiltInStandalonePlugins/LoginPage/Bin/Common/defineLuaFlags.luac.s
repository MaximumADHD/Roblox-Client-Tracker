PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableLoginPage3"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoginPageEnableWatchdogTimeoutFallback"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoginPageEnableBlankImageFallback"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoginPageRequestTimeoutSeconds"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["LoginPageTelemetryThrottleHundredthsPercent"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableLoginPage3"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["LoginPageEnableWatchdogTimeoutFallback"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["LoginPageEnableBlankImageFallback"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["LoginPageRequestTimeoutSeconds"]
       25 LOADN                            R3 15
       26 NAMECALL                         R0 R0 K7 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["LoginPageTelemetryThrottleHundredthsPercent"]
       32 LOADN                            R3 10000
       33 NAMECALL                         R0 R0 K7 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 DUPTABLE                         R0 K14 [{"getFFlagEnableLoginPage", "getFFlagLoginPageEnableWatchdogTimeoutFallback", "getFFlagLoginPageEnableBlankImageFallback", "getFIntLoginPageRequestTimeoutSeconds", "getFIntLoginPageTelemetryThrottleHundredthsPercent"}]
       37 DUPCLOSURE                       R1 K15 [PROTO_0]
       38 SETTABLEKS                       R1 R0 K9 ["getFFlagEnableLoginPage"]
       40 DUPCLOSURE                       R1 K16 [PROTO_1]
       41 SETTABLEKS                       R1 R0 K10 ["getFFlagLoginPageEnableWatchdogTimeoutFallback"]
       43 DUPCLOSURE                       R1 K17 [PROTO_2]
       44 SETTABLEKS                       R1 R0 K11 ["getFFlagLoginPageEnableBlankImageFallback"]
       46 DUPCLOSURE                       R1 K18 [PROTO_3]
       47 SETTABLEKS                       R1 R0 K12 ["getFIntLoginPageRequestTimeoutSeconds"]
       49 DUPCLOSURE                       R1 K19 [PROTO_4]
       50 SETTABLEKS                       R1 R0 K13 ["getFIntLoginPageTelemetryThrottleHundredthsPercent"]
       52 RETURN                           R0 1
