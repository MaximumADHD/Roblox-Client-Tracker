PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Context"]
        4 CALL                             R0 1 1
        5 DUPTABLE                         R1 K5 [{"Focus", "Localization", "Plugin", "Telemetry"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["Focus"]
        9 GETTABLEKS                       R3 R3 K6 ["Key"]
       11 GETTABLE                         R2 R0 R3
       12 SETTABLEKS                       R2 R1 K1 ["Focus"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["Localization"]
       17 GETTABLEKS                       R3 R3 K6 ["Key"]
       19 GETTABLE                         R2 R0 R3
       20 SETTABLEKS                       R2 R1 K2 ["Localization"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["Plugin"]
       25 GETTABLEKS                       R3 R3 K6 ["Key"]
       27 GETTABLE                         R2 R0 R3
       28 SETTABLEKS                       R2 R1 K3 ["Plugin"]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K6 ["Key"]
       33 GETTABLE                         R2 R0 R3
       34 SETTABLEKS                       R2 R1 K4 ["Telemetry"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useContext"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R4 R4 K8 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K12 ["Telemetry"]
       35 GETTABLEKS                       R6 R6 K13 ["TelemetryContext"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K10 ["Src"]
       42 GETTABLEKS                       R7 R7 K11 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K12 ["Telemetry"]
       46 GETTABLEKS                       R7 R7 K14 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K10 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Types"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 RETURN                           R8 1
