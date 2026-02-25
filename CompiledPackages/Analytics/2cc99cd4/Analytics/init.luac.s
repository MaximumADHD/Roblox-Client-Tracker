MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["AnalyticsContext"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["AnalyticsTelemetryServiceProvider"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["AnalyticsTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["TelemetryServiceInterface"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["createMockTelemetryInterface"]
       35 CALL                             R4 1 1
       36 DUPTABLE                         R5 K9 [{"AnalyticsContext", "TelemetryServiceInterface", "AnalyticsTelemetryServiceProvider", "createMockTelemetryInterface"}]
       37 SETTABLEKS                       R0 R5 K4 ["AnalyticsContext"]
       39 SETTABLEKS                       R3 R5 K7 ["TelemetryServiceInterface"]
       41 SETTABLEKS                       R1 R5 K5 ["AnalyticsTelemetryServiceProvider"]
       43 SETTABLEKS                       R4 R5 K8 ["createMockTelemetryInterface"]
       45 RETURN                           R5 1
