PROTO_0:
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
       33 GETTABLEKS                       R6 R3 K11 ["Backends"]
       35 GETTABLEKS                       R6 R6 K6 ["EventIngest"]
       37 GETTABLEKS                       R7 R3 K11 ["Backends"]
       39 GETTABLEKS                       R7 R7 K7 ["Points"]
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
       60 DUPTABLE                         R5 K22 [{"eventName", "backends", "lastUpdated", "description", "throttlingPercentage"}]
       61 LOADK                            R6 K23 ["ReimportAttempt"]
       62 SETTABLEKS                       R6 R5 K13 ["eventName"]
       64 NEWTABLE                         R6 0 1
       66 GETTABLEKS                       R7 R3 K11 ["Backends"]
       68 GETTABLEKS                       R7 R7 K4 ["Counter"]
       70 SETLIST                          R6 R7 1 [1]
       72 SETTABLEKS                       R6 R5 K15 ["backends"]
       74 NEWTABLE                         R6 0 3
       76 LOADN                            R7 234
       77 LOADN                            R8 4
       78 LOADN                            R9 3
       79 SETLIST                          R6 R7 3 [1]
       81 SETTABLEKS                       R6 R5 K16 ["lastUpdated"]
       83 LOADK                            R6 K24 ["Tracks every time a user attempts to reimport an asset"]
       84 SETTABLEKS                       R6 R5 K17 ["description"]
       86 LOADN                            R6 16
       87 SETTABLEKS                       R6 R5 K18 ["throttlingPercentage"]
       89 DUPTABLE                         R6 K22 [{"eventName", "backends", "lastUpdated", "description", "throttlingPercentage"}]
       90 LOADK                            R7 K25 ["ReimportInit"]
       91 SETTABLEKS                       R7 R6 K13 ["eventName"]
       93 NEWTABLE                         R7 0 2
       95 GETTABLEKS                       R8 R3 K11 ["Backends"]
       97 GETTABLEKS                       R8 R8 K6 ["EventIngest"]
       99 GETTABLEKS                       R9 R3 K11 ["Backends"]
      101 GETTABLEKS                       R9 R9 K7 ["Points"]
      103 SETLIST                          R7 R8 2 [1]
      105 SETTABLEKS                       R7 R6 K15 ["backends"]
      107 NEWTABLE                         R7 0 3
      109 LOADN                            R8 234
      110 LOADN                            R9 5
      111 LOADN                            R10 8
      112 SETLIST                          R7 R8 3 [1]
      114 SETTABLEKS                       R7 R6 K16 ["lastUpdated"]
      116 LOADK                            R7 K26 ["Logs data on initialization of the Reimport plugin"]
      117 SETTABLEKS                       R7 R6 K17 ["description"]
      119 LOADN                            R7 16
      120 SETTABLEKS                       R7 R6 K18 ["throttlingPercentage"]
      122 NEWCLOSURE                       R7 P0
      123 CAPTURE                          REF R1
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R7 R3 K27 ["logReimportAttempt"]
      128 NEWCLOSURE                       R7 P1
      129 CAPTURE                          REF R1
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R7 R3 K28 ["logInitEvent"]
      133 NEWCLOSURE                       R7 P2
      134 CAPTURE                          REF R1
      135 SETTABLEKS                       R7 R3 K29 ["mock"]
      137 NEWCLOSURE                       R7 P3
      138 CAPTURE                          REF R1
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R7 R3 K30 ["reset"]
      142 CLOSEUPVALS                      R1
      143 RETURN                           R3 1
