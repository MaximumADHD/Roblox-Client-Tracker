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

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"customFields"}]
        1 DUPTABLE                         R3 K6 [{"usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType", "success"}]
        2 GETTABLEKS                       R4 R0 K2 ["usedStudioDefaultPreset"]
        4 SETTABLEKS                       R4 R3 K2 ["usedStudioDefaultPreset"]
        6 GETTABLEKS                       R4 R0 K3 ["wasReimportRelativeToThis"]
        8 SETTABLEKS                       R4 R3 K3 ["wasReimportRelativeToThis"]
       10 GETTABLEKS                       R4 R0 K4 ["targetType"]
       12 SETTABLEKS                       R4 R3 K4 ["targetType"]
       14 SETTABLEKS                       R1 R3 K5 ["success"]
       16 SETTABLEKS                       R3 R2 K0 ["customFields"]
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R2
       21 NAMECALL                         R3 R3 K7 ["LogCounter"]
       23 CALL                             R3 3 0
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETTABLEKS                       R3 R2 K0 ["customFields"]
       27 GETTABLEKS                       R4 R0 K8 ["configId"]
       29 SETTABLEKS                       R4 R3 K8 ["configId"]
       31 GETUPVAL                         R3 0
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R2
       34 NAMECALL                         R3 R3 K9 ["LogEvent"]
       36 CALL                             R3 3 0
       37 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 MOVE                             R1 R0
        8 DUPTABLE                         R2 K8 [{"Counter", "Stat", "EventIngest", "Points"}]
        9 LOADK                            R3 K9 ["RobloxTelemetryCounter"]
       10 SETTABLEKS                       R3 R2 K4 ["Counter"]
       12 LOADK                            R3 K10 ["RobloxTelemetryStat"]
       13 SETTABLEKS                       R3 R2 K5 ["Stat"]
       15 LOADK                            R3 K6 ["EventIngest"]
       16 SETTABLEKS                       R3 R2 K6 ["EventIngest"]
       18 LOADK                            R3 K7 ["Points"]
       19 SETTABLEKS                       R3 R2 K7 ["Points"]
       21 DUPTABLE                         R3 K12 [{"Backends"}]
       22 SETTABLEKS                       R2 R3 K11 ["Backends"]
       24 DUPTABLE                         R4 K19 [{"eventName", "eventContext", "backends", "lastUpdated", "description", "throttlingPercentage"}]
       25 LOADK                            R5 K20 ["Reimport"]
       26 SETTABLEKS                       R5 R4 K13 ["eventName"]
       28 LOADK                            R5 K20 ["Reimport"]
       29 SETTABLEKS                       R5 R4 K14 ["eventContext"]
       31 NEWTABLE                         R5 0 2
       33 GETTABLEKS                       R7 R3 K11 ["Backends"]
       35 GETTABLEKS                       R6 R7 K6 ["EventIngest"]
       37 GETTABLEKS                       R8 R3 K11 ["Backends"]
       39 GETTABLEKS                       R7 R8 K7 ["Points"]
       41 SETLIST                          R5 R6 2 [1]
       43 SETTABLEKS                       R5 R4 K15 ["backends"]
       45 NEWTABLE                         R5 0 3
       47 LOADN                            R6 233
       48 LOADN                            R7 11
       49 LOADN                            R8 4
       50 SETLIST                          R5 R6 3 [1]
       52 SETTABLEKS                       R5 R4 K16 ["lastUpdated"]
       54 LOADK                            R5 K21 ["Logs data related to the asset reimport process."]
       55 SETTABLEKS                       R5 R4 K17 ["description"]
       57 LOADN                            R5 16
       58 SETTABLEKS                       R5 R4 K18 ["throttlingPercentage"]
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          REF R1
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R5 R3 K22 ["logReimportEvent"]
       65 DUPTABLE                         R5 K23 [{"eventName", "backends", "lastUpdated", "description", "throttlingPercentage"}]
       66 LOADK                            R6 K24 ["ReimportAttempt"]
       67 SETTABLEKS                       R6 R5 K13 ["eventName"]
       69 NEWTABLE                         R6 0 1
       71 GETTABLEKS                       R8 R3 K11 ["Backends"]
       73 GETTABLEKS                       R7 R8 K4 ["Counter"]
       75 SETLIST                          R6 R7 1 [1]
       77 SETTABLEKS                       R6 R5 K15 ["backends"]
       79 NEWTABLE                         R6 0 3
       81 LOADN                            R7 234
       82 LOADN                            R8 4
       83 LOADN                            R9 3
       84 SETLIST                          R6 R7 3 [1]
       86 SETTABLEKS                       R6 R5 K16 ["lastUpdated"]
       88 LOADK                            R6 K25 ["Tracks every time a user attempts to reimport an asset"]
       89 SETTABLEKS                       R6 R5 K17 ["description"]
       91 LOADN                            R6 16
       92 SETTABLEKS                       R6 R5 K18 ["throttlingPercentage"]
       94 NEWCLOSURE                       R6 P1
       95 CAPTURE                          REF R1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R6 R3 K26 ["logReimportAttempt"]
      100 NEWCLOSURE                       R6 P2
      101 CAPTURE                          REF R1
      102 SETTABLEKS                       R6 R3 K27 ["mock"]
      104 NEWCLOSURE                       R6 P3
      105 CAPTURE                          REF R1
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R6 R3 K28 ["reset"]
      109 CLOSEUPVALS                      R1
      110 RETURN                           R3 1
