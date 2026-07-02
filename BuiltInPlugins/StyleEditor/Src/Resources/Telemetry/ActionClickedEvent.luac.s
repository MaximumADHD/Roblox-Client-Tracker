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
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K18 ["Flags"]
       56 GETIMPORT                        R9 K4 [require]
       58 GETTABLEKS                       R10 R8 K19 ["getFFlagStyleEditorThrottleHundrethsPercent"]
       60 CALL                             R9 1 1
       61 CALL                             R9 0 1
       62 GETTABLEKS                       R10 R2 K20 ["interface"]
       64 DUPTABLE                         R11 K24 [{"eventType", "path", "data"}]
       65 GETTABLEKS                       R12 R2 K25 ["string"]
       67 SETTABLEKS                       R12 R11 K21 ["eventType"]
       69 GETTABLEKS                       R12 R2 K25 ["string"]
       71 SETTABLEKS                       R12 R11 K22 ["path"]
       73 GETTABLEKS                       R12 R2 K26 ["optional"]
       75 GETTABLEKS                       R13 R2 K25 ["string"]
       77 CALL                             R12 1 1
       78 SETTABLEKS                       R12 R11 K23 ["data"]
       80 CALL                             R10 1 1
       81 DUPTABLE                         R11 K36 [{["eventName"] = "StyleEditor_ActionClicked", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "ContextMenu, onboarding link, button pressed, token/property created, or property created in the StyleEditor.", ["links"] = ""}]
       82 NEWTABLE                         R12 0 2
       84 GETTABLEKS                       R13 R5 K37 ["Points"]
       86 GETTABLEKS                       R14 R5 K38 ["EventIngest"]
       88 SETLIST                          R12 R13 2 [1]
       90 SETTABLEKS                       R12 R11 K29 ["backends"]
       92 SETTABLEKS                       R9 R11 K30 ["throttlingPercentage"]
       94 NEWTABLE                         R12 0 3
       96 LOADN                            R13 2
       97 LOADN                            R14 25
       98 LOADN                            R15 26
       99 SETLIST                          R12 R13 3 [1]
      101 SETTABLEKS                       R12 R11 K31 ["lastUpdated"]
      103 DUPCLOSURE                       R12 K39 [PROTO_0]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R6
      108 RETURN                           R12 1
