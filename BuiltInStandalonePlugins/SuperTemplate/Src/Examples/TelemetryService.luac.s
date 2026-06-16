PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"customFields", "standardizedFields"}]
        3 DUPTABLE                         R4 K4 [{"someField"}]
        4 LOADK                            R5 K5 ["meow"]
        5 SETTABLEKS                       R5 R4 K3 ["someField"]
        7 SETTABLEKS                       R4 R3 K0 ["customFields"]
        9 NEWTABLE                         R4 0 1
       11 GETIMPORT                        R5 K9 [Enum.TelemetryStandardizedField.AddOsInfo]
       13 SETLIST                          R4 R5 1 [1]
       15 SETTABLEKS                       R4 R3 K1 ["standardizedFields"]
       17 NAMECALL                         R0 R0 K10 ["LogCounter"]
       19 CALL                             R0 3 1
       20 FASTCALL1                        ASSERT R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K12 [assert]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 GETUPVAL                         R3 2
       27 DUPTABLE                         R4 K14 [{"customFields", "standardizedFields", "eventContext"}]
       28 DUPTABLE                         R5 K18 [{"customField1", "customField2", "customField3"}]
       29 LOADK                            R6 K19 ["meow meow"]
       30 SETTABLEKS                       R6 R5 K15 ["customField1"]
       32 LOADN                            R6 123
       33 SETTABLEKS                       R6 R5 K16 ["customField2"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K17 ["customField3"]
       38 SETTABLEKS                       R5 R4 K0 ["customFields"]
       40 NEWTABLE                         R5 0 3
       42 GETIMPORT                        R6 K9 [Enum.TelemetryStandardizedField.AddOsInfo]
       44 GETIMPORT                        R7 K21 [Enum.TelemetryStandardizedField.AddSessionInfo]
       46 GETIMPORT                        R8 K23 [Enum.TelemetryStandardizedField.AddUniverseId]
       48 SETLIST                          R5 R6 3 [1]
       50 SETTABLEKS                       R5 R4 K1 ["standardizedFields"]
       52 LOADK                            R5 K24 ["my_context"]
       53 SETTABLEKS                       R5 R4 K13 ["eventContext"]
       55 NAMECALL                         R1 R1 K25 ["LogEvent"]
       57 CALL                             R1 3 1
       58 FASTCALL1                        ASSERT R1 ; [+3]
       59 MOVE                             R3 R1
       60 GETIMPORT                        R2 K12 [assert]
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 0
       64 GETUPVAL                         R4 3
       65 DUPTABLE                         R5 K2 [{"customFields", "standardizedFields"}]
       66 DUPTABLE                         R6 K27 [{"exampleField"}]
       67 LOADK                            R7 K28 ["throttled"]
       68 SETTABLEKS                       R7 R6 K26 ["exampleField"]
       70 SETTABLEKS                       R6 R5 K0 ["customFields"]
       72 NEWTABLE                         R6 0 1
       74 GETIMPORT                        R7 K21 [Enum.TelemetryStandardizedField.AddSessionInfo]
       76 SETLIST                          R6 R7 1 [1]
       78 SETTABLEKS                       R6 R5 K1 ["standardizedFields"]
       80 NAMECALL                         R2 R2 K25 ["LogEvent"]
       82 CALL                             R2 3 1
       83 FASTCALL1                        ASSERT R2 ; [+3]
       84 MOVE                             R4 R2
       85 GETIMPORT                        R3 K12 [assert]
       87 CALL                             R3 1 0
       88 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K9 [{"eventName", "backends", "lastUpdated", "description", "links"}]
        8 LOADK                            R2 K10 ["SomeV2CounterChangeMePlease"]
        9 SETTABLEKS                       R2 R1 K4 ["eventName"]
       11 NEWTABLE                         R2 0 1
       13 GETIMPORT                        R3 K14 [Enum.TelemetryBackend.Counter]
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K5 ["backends"]
       19 NEWTABLE                         R2 0 3
       21 LOADN                            R3 233
       22 LOADN                            R4 10
       23 LOADN                            R5 16
       24 SETLIST                          R2 R3 3 [1]
       26 SETTABLEKS                       R2 R1 K6 ["lastUpdated"]
       28 LOADK                            R2 K15 ["meow meow TODO make this a real example"]
       29 SETTABLEKS                       R2 R1 K7 ["description"]
       31 LOADK                            R2 K16 ["https://TODO.meowmeow"]
       32 SETTABLEKS                       R2 R1 K8 ["links"]
       34 DUPTABLE                         R2 K9 [{"eventName", "backends", "lastUpdated", "description", "links"}]
       35 LOADK                            R3 K17 ["SomeEventChangeMePlease"]
       36 SETTABLEKS                       R3 R2 K4 ["eventName"]
       38 NEWTABLE                         R3 0 2
       40 GETIMPORT                        R4 K19 [Enum.TelemetryBackend.EventIngest]
       42 GETIMPORT                        R5 K21 [Enum.TelemetryBackend.Points]
       44 SETLIST                          R3 R4 2 [1]
       46 SETTABLEKS                       R3 R2 K5 ["backends"]
       48 NEWTABLE                         R3 0 3
       50 LOADN                            R4 233
       51 LOADN                            R5 10
       52 LOADN                            R6 16
       53 SETLIST                          R3 R4 3 [1]
       55 SETTABLEKS                       R3 R2 K6 ["lastUpdated"]
       57 LOADK                            R3 K15 ["meow meow TODO make this a real example"]
       58 SETTABLEKS                       R3 R2 K7 ["description"]
       60 LOADK                            R3 K16 ["https://TODO.meowmeow"]
       61 SETTABLEKS                       R3 R2 K8 ["links"]
       63 DUPTABLE                         R3 K23 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       64 LOADK                            R4 K24 ["ThrottledEventExample"]
       65 SETTABLEKS                       R4 R3 K4 ["eventName"]
       67 NEWTABLE                         R4 0 1
       69 GETIMPORT                        R5 K19 [Enum.TelemetryBackend.EventIngest]
       71 SETLIST                          R4 R5 1 [1]
       73 SETTABLEKS                       R4 R3 K5 ["backends"]
       75 LOADN                            R4 136
       76 SETTABLEKS                       R4 R3 K22 ["throttlingPercentage"]
       78 NEWTABLE                         R4 0 3
       80 LOADN                            R5 234
       81 LOADN                            R6 5
       82 LOADN                            R7 14
       83 SETLIST                          R4 R5 3 [1]
       85 SETTABLEKS                       R4 R3 K6 ["lastUpdated"]
       87 LOADK                            R4 K25 ["Example event with throttling"]
       88 SETTABLEKS                       R4 R3 K7 ["description"]
       90 LOADK                            R4 K26 ["https://example.com/throttled-event"]
       91 SETTABLEKS                       R4 R3 K8 ["links"]
       93 DUPCLOSURE                       R4 K27 [PROTO_0]
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 DUPTABLE                         R5 K29 [{"sendTelemetryExamples"}]
       99 SETTABLEKS                       R4 R5 K28 ["sendTelemetryExamples"]
      101 RETURN                           R5 1
