PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 -1 0
        7 DUPTABLE                         R1 K5 [{"eventType", "config", "data"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K6 ["RobloxTelemetry"]
       11 SETTABLEKS                       R2 R1 K2 ["eventType"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K3 ["config"]
       16 DUPTABLE                         R2 K9 [{"customFields", "standardizedFields"}]
       17 SETTABLEKS                       R0 R2 K7 ["customFields"]
       19 NEWTABLE                         R3 0 2
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K10 ["addPlaceId"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K11 ["addSessionId"]
       27 SETLIST                          R3 R4 2 [1]
       29 SETTABLEKS                       R3 R2 K8 ["standardizedFields"]
       31 SETTABLEKS                       R2 R1 K4 ["data"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K8 ["Typecheck"]
       22 GETTABLEKS                       R2 R2 K9 ["t"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K12 ["Telemetry"]
       32 GETTABLEKS                       R4 R4 K13 ["TelemetryProtocol"]
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R4 R3 K14 ["EventTypes"]
       37 GETTABLEKS                       R5 R3 K15 ["Backends"]
       39 GETTABLEKS                       R6 R3 K16 ["StandardizedFields"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R8 K11 ["Contexts"]
       47 GETTABLEKS                       R8 R8 K12 ["Telemetry"]
       49 GETTABLEKS                       R8 R8 K17 ["Types"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R0 K10 ["Src"]
       56 GETTABLEKS                       R9 R9 K17 ["Types"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R9 K18 ["Flags"]
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R11 R9 K19 ["getFFlagStyleEditorThrottleHundrethsPercent"]
       67 CALL                             R10 1 1
       68 CALL                             R10 0 1
       69 GETTABLEKS                       R11 R2 K20 ["interface"]
       71 DUPTABLE                         R12 K24 [{"sessionLengthSeconds", "focusTimeSeconds", "unmatchedFocusEndCount"}]
       72 GETTABLEKS                       R13 R2 K25 ["number"]
       74 SETTABLEKS                       R13 R12 K21 ["sessionLengthSeconds"]
       76 GETTABLEKS                       R13 R2 K25 ["number"]
       78 SETTABLEKS                       R13 R12 K22 ["focusTimeSeconds"]
       80 GETTABLEKS                       R13 R2 K25 ["number"]
       82 SETTABLEKS                       R13 R12 K23 ["unmatchedFocusEndCount"]
       84 CALL                             R11 1 1
       85 DUPTABLE                         R12 K35 [{["eventName"] = "StyleEditor_PluginUnmounted", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Root Roact component unmounted.", ["links"] = ""}]
       86 NEWTABLE                         R13 0 2
       88 GETTABLEKS                       R14 R5 K36 ["Points"]
       90 GETTABLEKS                       R15 R5 K37 ["EventIngest"]
       92 SETLIST                          R13 R14 2 [1]
       94 SETTABLEKS                       R13 R12 K28 ["backends"]
       96 SETTABLEKS                       R10 R12 K29 ["throttlingPercentage"]
       98 NEWTABLE                         R13 0 3
      100 LOADN                            R14 24
      101 LOADN                            R15 3
      102 LOADN                            R16 20
      103 SETLIST                          R13 R14 3 [1]
      105 SETTABLEKS                       R13 R12 K30 ["lastUpdated"]
      107 DUPCLOSURE                       R13 K38 [PROTO_0]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R6
      112 RETURN                           R13 1
