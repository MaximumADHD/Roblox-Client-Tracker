PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"customFields", "standardizedFields"}]
        3 DUPTABLE                         R4 K5 [{["someField"] = "meow"}]
        4 SETTABLEKS                       R4 R3 K0 ["customFields"]
        6 NEWTABLE                         R4 0 1
        8 GETIMPORT                        R5 K9 [Enum.TelemetryStandardizedField.AddOsInfo]
       10 SETLIST                          R4 R5 1 [1]
       12 SETTABLEKS                       R4 R3 K1 ["standardizedFields"]
       14 NAMECALL                         R0 R0 K10 ["LogCounter"]
       16 CALL                             R0 3 1
       17 FASTCALL1                        ASSERT R0 ; [+3]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K12 [assert]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETUPVAL                         R3 2
       24 DUPTABLE                         R4 K15 [{[1], ["standardizedFields"], ["eventContext"] = "my_context"}]
       25 DUPTABLE                         R5 K22 [{["customField1"] = "meow meow", ["customField2"] = 123, ["customField3"] = True}]
       26 SETTABLEKS                       R5 R4 K0 ["customFields"]
       28 NEWTABLE                         R5 0 3
       30 GETIMPORT                        R6 K9 [Enum.TelemetryStandardizedField.AddOsInfo]
       32 GETIMPORT                        R7 K24 [Enum.TelemetryStandardizedField.AddSessionInfo]
       34 GETIMPORT                        R8 K26 [Enum.TelemetryStandardizedField.AddUniverseId]
       36 SETLIST                          R5 R6 3 [1]
       38 SETTABLEKS                       R5 R4 K1 ["standardizedFields"]
       40 NAMECALL                         R1 R1 K27 ["LogEvent"]
       42 CALL                             R1 3 1
       43 FASTCALL1                        ASSERT R1 ; [+3]
       44 MOVE                             R3 R1
       45 GETIMPORT                        R2 K12 [assert]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 0
       49 GETUPVAL                         R4 3
       50 DUPTABLE                         R5 K2 [{"customFields", "standardizedFields"}]
       51 DUPTABLE                         R6 K30 [{["exampleField"] = "throttled"}]
       52 SETTABLEKS                       R6 R5 K0 ["customFields"]
       54 NEWTABLE                         R6 0 1
       56 GETIMPORT                        R7 K24 [Enum.TelemetryStandardizedField.AddSessionInfo]
       58 SETLIST                          R6 R7 1 [1]
       60 SETTABLEKS                       R6 R5 K1 ["standardizedFields"]
       62 NAMECALL                         R2 R2 K27 ["LogEvent"]
       64 CALL                             R2 3 1
       65 FASTCALL1                        ASSERT R2 ; [+3]
       66 MOVE                             R4 R2
       67 GETIMPORT                        R3 K12 [assert]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K12 [{["eventName"] = "SomeV2CounterChangeMePlease", ["backends"], ["lastUpdated"], ["description"] = "meow meow TODO make this a real example", ["links"] = "https://TODO.meowmeow"}]
        8 NEWTABLE                         R2 0 1
       10 GETIMPORT                        R3 K16 [Enum.TelemetryBackend.Counter]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K6 ["backends"]
       16 NEWTABLE                         R2 0 3
       18 LOADN                            R3 2025
       19 LOADN                            R4 10
       20 LOADN                            R5 16
       21 SETLIST                          R2 R3 3 [1]
       23 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       25 DUPTABLE                         R2 K18 [{["eventName"] = "SomeEventChangeMePlease", ["backends"], ["lastUpdated"], ["description"] = "meow meow TODO make this a real example", ["links"] = "https://TODO.meowmeow"}]
       26 NEWTABLE                         R3 0 2
       28 GETIMPORT                        R4 K20 [Enum.TelemetryBackend.EventIngest]
       30 GETIMPORT                        R5 K22 [Enum.TelemetryBackend.Points]
       32 SETLIST                          R3 R4 2 [1]
       34 SETTABLEKS                       R3 R2 K6 ["backends"]
       36 NEWTABLE                         R3 0 3
       38 LOADN                            R4 2025
       39 LOADN                            R5 10
       40 LOADN                            R6 16
       41 SETLIST                          R3 R4 3 [1]
       43 SETTABLEKS                       R3 R2 K7 ["lastUpdated"]
       45 DUPTABLE                         R3 K28 [{["eventName"] = "ThrottledEventExample", ["backends"], ["throttlingPercentage"] = 5000, ["lastUpdated"], ["description"] = "Example event with throttling", ["links"] = "https://example.com/throttled-event"}]
       46 NEWTABLE                         R4 0 1
       48 GETIMPORT                        R5 K20 [Enum.TelemetryBackend.EventIngest]
       50 SETLIST                          R4 R5 1 [1]
       52 SETTABLEKS                       R4 R3 K6 ["backends"]
       54 NEWTABLE                         R4 0 3
       56 LOADN                            R5 2026
       57 LOADN                            R6 5
       58 LOADN                            R7 14
       59 SETLIST                          R4 R5 3 [1]
       61 SETTABLEKS                       R4 R3 K7 ["lastUpdated"]
       63 DUPCLOSURE                       R4 K29 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 DUPTABLE                         R5 K31 [{"sendTelemetryExamples"}]
       69 SETTABLEKS                       R4 R5 K30 ["sendTelemetryExamples"]
       71 RETURN                           R5 1
