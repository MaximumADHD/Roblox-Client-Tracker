PROTO_0:
        0 DUPTABLE                         R1 K1 [{"customFields"}]
        1 DUPTABLE                         R2 K6 [{"configId", "usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType"}]
        2 GETTABLEKS                       R3 R0 K2 ["configId"]
        4 SETTABLEKS                       R3 R2 K2 ["configId"]
        6 GETTABLEKS                       R3 R0 K3 ["usedStudioDefaultPreset"]
        8 SETTABLEKS                       R3 R2 K3 ["usedStudioDefaultPreset"]
       10 GETTABLEKS                       R3 R0 K4 ["wasReimportRelativeToThis"]
       12 SETTABLEKS                       R3 R2 K4 ["wasReimportRelativeToThis"]
       14 GETTABLEKS                       R3 R0 K5 ["targetType"]
       16 SETTABLEKS                       R3 R2 K5 ["targetType"]
       18 SETTABLEKS                       R2 R1 K0 ["customFields"]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R5 R1
       23 NAMECALL                         R2 R2 K7 ["LogEvent"]
       25 CALL                             R2 3 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K6 [{"EventIngest", "Points"}]
        8 LOADK                            R2 K4 ["EventIngest"]
        9 SETTABLEKS                       R2 R1 K4 ["EventIngest"]
       11 LOADK                            R2 K5 ["Points"]
       12 SETTABLEKS                       R2 R1 K5 ["Points"]
       14 DUPTABLE                         R2 K8 [{"Backends"}]
       15 SETTABLEKS                       R1 R2 K7 ["Backends"]
       17 DUPTABLE                         R3 K15 [{"eventName", "eventContext", "backends", "lastUpdated", "description", "throttlingPercentage"}]
       18 LOADK                            R4 K16 ["Reimport"]
       19 SETTABLEKS                       R4 R3 K9 ["eventName"]
       21 LOADK                            R4 K16 ["Reimport"]
       22 SETTABLEKS                       R4 R3 K10 ["eventContext"]
       24 NEWTABLE                         R4 0 2
       26 GETTABLEKS                       R6 R2 K7 ["Backends"]
       28 GETTABLEKS                       R5 R6 K4 ["EventIngest"]
       30 GETTABLEKS                       R7 R2 K7 ["Backends"]
       32 GETTABLEKS                       R6 R7 K5 ["Points"]
       34 SETLIST                          R4 R5 2 [1]
       36 SETTABLEKS                       R4 R3 K11 ["backends"]
       38 NEWTABLE                         R4 0 3
       40 LOADN                            R5 233
       41 LOADN                            R6 11
       42 LOADN                            R7 4
       43 SETLIST                          R4 R5 3 [1]
       45 SETTABLEKS                       R4 R3 K12 ["lastUpdated"]
       47 LOADK                            R4 K17 ["Logs data related to the asset reimport process."]
       48 SETTABLEKS                       R4 R3 K13 ["description"]
       50 LOADN                            R4 16
       51 SETTABLEKS                       R4 R3 K14 ["throttlingPercentage"]
       53 DUPCLOSURE                       R4 K18 [PROTO_0]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R4 R2 K19 ["logReimportEvent"]
       58 RETURN                           R2 1
