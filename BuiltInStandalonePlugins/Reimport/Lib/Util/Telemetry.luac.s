PROTO_0:
        0 DUPTABLE                         R2 K1 [{"customFields"}]
        1 DUPTABLE                         R3 K8 [{"usedStudioDefaultPreset", "wasReimportRelativeToThis", "targetType", "creatorId", "wasAutoReimport", "success"}]
        2 GETTABLEKS                       R4 R0 K2 ["usedStudioDefaultPreset"]
        4 SETTABLEKS                       R4 R3 K2 ["usedStudioDefaultPreset"]
        6 GETTABLEKS                       R4 R0 K3 ["wasReimportRelativeToThis"]
        8 SETTABLEKS                       R4 R3 K3 ["wasReimportRelativeToThis"]
       10 GETTABLEKS                       R4 R0 K4 ["targetType"]
       12 SETTABLEKS                       R4 R3 K4 ["targetType"]
       14 GETTABLEKS                       R4 R0 K5 ["creatorId"]
       16 SETTABLEKS                       R4 R3 K5 ["creatorId"]
       18 GETTABLEKS                       R4 R0 K6 ["wasAutoReimport"]
       20 SETTABLEKS                       R4 R3 K6 ["wasAutoReimport"]
       22 SETTABLEKS                       R1 R3 K7 ["success"]
       24 SETTABLEKS                       R3 R2 K0 ["customFields"]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R2
       29 NAMECALL                         R3 R3 K9 ["LogCounter"]
       31 CALL                             R3 3 0
       32 JUMPIFNOT                        R1 ; [+12]
       33 GETTABLEKS                       R3 R2 K0 ["customFields"]
       35 GETTABLEKS                       R4 R0 K10 ["configId"]
       37 SETTABLEKS                       R4 R3 K10 ["configId"]
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R5 2
       41 MOVE                             R6 R2
       42 NAMECALL                         R3 R3 K11 ["LogEvent"]
       44 CALL                             R3 3 0
       45 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"customFields"}]
        1 DUPTABLE                         R2 K3 [{"configCount"}]
        2 GETTABLEKS                       R3 R0 K2 ["configCount"]
        4 SETTABLEKS                       R3 R2 K2 ["configCount"]
        6 SETTABLEKS                       R2 R1 K0 ["customFields"]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K4 ["LogEvent"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"customFields"}]
        1 DUPTABLE                         R2 K4 [{"clickTarget", "clickValue"}]
        2 GETTABLEKS                       R3 R0 K2 ["clickTarget"]
        4 SETTABLEKS                       R3 R2 K2 ["clickTarget"]
        6 GETTABLEKS                       R3 R0 K3 ["clickValue"]
        8 SETTABLEKS                       R3 R2 K3 ["clickValue"]
       10 SETTABLEKS                       R2 R1 K0 ["customFields"]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R2 K5 ["LogEvent"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
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
        8 DUPTABLE                         R2 K10 [{["Counter"] = "RobloxTelemetryCounter", ["Stat"] = "RobloxTelemetryStat", ["EventIngest"] = "EventIngest", ["Points"] = "Points"}]
        9 DUPTABLE                         R3 K12 [{"Backends"}]
       10 SETTABLEKS                       R2 R3 K11 ["Backends"]
       12 DUPTABLE                         R4 K22 [{["eventName"] = "Reimport", ["eventContext"] = "Reimport", ["backends"], ["lastUpdated"], ["description"] = "Logs data related to the asset reimport process.", ["throttlingPercentage"] = 10000}]
       13 NEWTABLE                         R5 0 2
       15 GETTABLEKS                       R6 R3 K11 ["Backends"]
       17 GETTABLEKS                       R6 R6 K8 ["EventIngest"]
       19 GETTABLEKS                       R7 R3 K11 ["Backends"]
       21 GETTABLEKS                       R7 R7 K9 ["Points"]
       23 SETLIST                          R5 R6 2 [1]
       25 SETTABLEKS                       R5 R4 K16 ["backends"]
       27 NEWTABLE                         R5 0 3
       29 LOADN                            R6 2025
       30 LOADN                            R7 11
       31 LOADN                            R8 4
       32 SETLIST                          R5 R6 3 [1]
       34 SETTABLEKS                       R5 R4 K17 ["lastUpdated"]
       36 DUPTABLE                         R5 K25 [{["eventName"] = "ReimportAttempt", ["backends"], ["lastUpdated"], ["description"] = "Tracks every time a user attempts to reimport an asset", ["throttlingPercentage"] = 10000}]
       37 NEWTABLE                         R6 0 1
       39 GETTABLEKS                       R7 R3 K11 ["Backends"]
       41 GETTABLEKS                       R7 R7 K4 ["Counter"]
       43 SETLIST                          R6 R7 1 [1]
       45 SETTABLEKS                       R6 R5 K16 ["backends"]
       47 NEWTABLE                         R6 0 3
       49 LOADN                            R7 2026
       50 LOADN                            R8 4
       51 LOADN                            R9 3
       52 SETLIST                          R6 R7 3 [1]
       54 SETTABLEKS                       R6 R5 K17 ["lastUpdated"]
       56 DUPTABLE                         R6 K28 [{["eventName"] = "ReimportInit", ["backends"], ["lastUpdated"], ["description"] = "Logs data on initialization of the Reimport plugin", ["throttlingPercentage"] = 10000}]
       57 NEWTABLE                         R7 0 2
       59 GETTABLEKS                       R8 R3 K11 ["Backends"]
       61 GETTABLEKS                       R8 R8 K8 ["EventIngest"]
       63 GETTABLEKS                       R9 R3 K11 ["Backends"]
       65 GETTABLEKS                       R9 R9 K9 ["Points"]
       67 SETLIST                          R7 R8 2 [1]
       69 SETTABLEKS                       R7 R6 K16 ["backends"]
       71 NEWTABLE                         R7 0 3
       73 LOADN                            R8 2026
       74 LOADN                            R9 5
       75 LOADN                            R10 8
       76 SETLIST                          R7 R8 3 [1]
       78 SETTABLEKS                       R7 R6 K17 ["lastUpdated"]
       80 DUPTABLE                         R7 K31 [{["eventName"] = "ReimportClick", ["backends"], ["lastUpdated"], ["description"] = "Logs clicks on controls in the Reimport UI.", ["throttlingPercentage"] = 10000}]
       81 NEWTABLE                         R8 0 2
       83 GETTABLEKS                       R9 R3 K11 ["Backends"]
       85 GETTABLEKS                       R9 R9 K8 ["EventIngest"]
       87 GETTABLEKS                       R10 R3 K11 ["Backends"]
       89 GETTABLEKS                       R10 R10 K9 ["Points"]
       91 SETLIST                          R8 R9 2 [1]
       93 SETTABLEKS                       R8 R7 K16 ["backends"]
       95 NEWTABLE                         R8 0 3
       97 LOADN                            R9 2026
       98 LOADN                            R10 7
       99 LOADN                            R11 30
      100 SETLIST                          R8 R9 3 [1]
      102 SETTABLEKS                       R8 R7 K17 ["lastUpdated"]
      104 NEWCLOSURE                       R8 P0
      105 CAPTURE                          REF R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R8 R3 K32 ["logReimportAttempt"]
      110 NEWCLOSURE                       R8 P1
      111 CAPTURE                          REF R1
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R8 R3 K33 ["logInitEvent"]
      115 NEWCLOSURE                       R8 P2
      116 CAPTURE                          REF R1
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R8 R3 K34 ["logClick"]
      120 NEWCLOSURE                       R8 P3
      121 CAPTURE                          REF R1
      122 SETTABLEKS                       R8 R3 K35 ["mock"]
      124 NEWCLOSURE                       R8 P4
      125 CAPTURE                          REF R1
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R8 R3 K36 ["reset"]
      129 CLOSEUPVALS                      R1
      130 RETURN                           R3 1
