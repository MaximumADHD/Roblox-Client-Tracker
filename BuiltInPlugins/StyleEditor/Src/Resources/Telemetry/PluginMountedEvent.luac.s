PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 -1 0
        7 DUPTABLE                         R1 K5 [{"eventType", "config", "data"}]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K6 ["RobloxTelemetry"]
       11 SETTABLEKS                       R2 R1 K2 ["eventType"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K3 ["config"]
       16 DUPTABLE                         R2 K9 [{"customFields", "standardizedFields"}]
       17 SETTABLEKS                       R0 R2 K7 ["customFields"]
       19 NEWTABLE                         R3 0 2
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K10 ["addPlaceId"]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K11 ["addSessionId"]
       27 SETLIST                          R3 R4 2 [1]
       29 SETTABLEKS                       R3 R2 K8 ["standardizedFields"]
       31 SETTABLEKS                       R2 R1 K4 ["data"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R4 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R4 K8 ["Typecheck"]
       22 GETTABLEKS                       R2 R3 K9 ["t"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K12 ["Telemetry"]
       32 GETTABLEKS                       R4 R5 K13 ["TelemetryProtocol"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K14 ["EventTypes"]
       37 GETTABLEKS                       R5 R3 K15 ["Backends"]
       39 GETTABLEKS                       R6 R3 K16 ["StandardizedFields"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R11 R0 K10 ["Src"]
       45 GETTABLEKS                       R10 R11 K11 ["Contexts"]
       47 GETTABLEKS                       R9 R10 K12 ["Telemetry"]
       49 GETTABLEKS                       R8 R9 K17 ["Types"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R9 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R9 K18 ["Flags"]
       56 GETIMPORT                        R9 K4 [require]
       58 GETTABLEKS                       R10 R8 K19 ["getFFlagStyleEditorThrottleHundrethsPercent"]
       60 CALL                             R9 1 1
       61 CALL                             R9 0 1
       62 GETTABLEKS                       R10 R2 K20 ["interface"]
       64 DUPTABLE                         R11 K22 [{"loadTimeMillis"}]
       65 GETTABLEKS                       R12 R2 K23 ["number"]
       67 SETTABLEKS                       R12 R11 K21 ["loadTimeMillis"]
       69 CALL                             R10 1 1
       70 DUPTABLE                         R11 K30 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       71 LOADK                            R12 K31 ["StyleEditor_PluginMounted"]
       72 SETTABLEKS                       R12 R11 K24 ["eventName"]
       74 NEWTABLE                         R12 0 2
       76 GETTABLEKS                       R13 R5 K32 ["Points"]
       78 GETTABLEKS                       R14 R5 K33 ["EventIngest"]
       80 SETLIST                          R12 R13 2 [1]
       82 SETTABLEKS                       R12 R11 K25 ["backends"]
       84 SETTABLEKS                       R9 R11 K26 ["throttlingPercentage"]
       86 NEWTABLE                         R12 0 3
       88 LOADN                            R13 24
       89 LOADN                            R14 3
       90 LOADN                            R15 11
       91 SETLIST                          R12 R13 3 [1]
       93 SETTABLEKS                       R12 R11 K27 ["lastUpdated"]
       95 LOADK                            R12 K34 ["Root Roact component mounted."]
       96 SETTABLEKS                       R12 R11 K28 ["description"]
       98 LOADK                            R12 K35 [""]
       99 SETTABLEKS                       R12 R11 K29 ["links"]
      101 DUPCLOSURE                       R12 K36 [PROTO_0]
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R6
      106 RETURN                           R12 1
