PROTO_0:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["telemetry event"]
        3 GETTABLEKS                       R5 R1 K3 ["eventName"]
        5 CALL                             R3 2 0
        6 GETIMPORT                        R3 K1 [print]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"columnName", "isEnabled"}]
        1 SETTABLEKS                       R0 R2 K0 ["columnName"]
        3 SETTABLEKS                       R1 R2 K1 ["isEnabled"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K3 ["logRobloxTelemetryEvent"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"columnName", "isAscending"}]
        1 SETTABLEKS                       R0 R2 K0 ["columnName"]
        3 SETTABLEKS                       R1 R2 K1 ["isAscending"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K3 ["logRobloxTelemetryEvent"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"columnName", "width"}]
        1 SETTABLEKS                       R0 R2 K0 ["columnName"]
        3 SETTABLEKS                       R1 R2 K1 ["width"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K3 ["logRobloxTelemetryEvent"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"meteringMode"}]
        1 SETTABLEKS                       R0 R1 K0 ["meteringMode"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K2 ["logRobloxTelemetryEvent"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"isPaused", "frameOffset"}]
        1 SETTABLEKS                       R0 R2 K0 ["isPaused"]
        3 SETTABLEKS                       R1 R2 K1 ["frameOffset"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K3 ["logRobloxTelemetryEvent"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 0 0
        4 NAMECALL                         R0 R0 K0 ["logRobloxTelemetryEvent"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TelemetryProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["getFIntAudioActivityMonitorTelemetryThrottleHundredthsPercent"]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R4 R1 K12 ["new"]
       28 CALL                             R4 0 1
       29 DUPTABLE                         R5 K22 [{["eventName"] = "AudioActivityMonitorColumnToggled", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when a column in the monitor is shown or hidden.", ["links"] = "TODO"}]
       30 NEWTABLE                         R6 0 2
       32 LOADK                            R7 K23 ["EventIngest"]
       33 LOADK                            R8 K24 ["Points"]
       34 SETLIST                          R6 R7 2 [1]
       36 SETTABLEKS                       R6 R5 K15 ["backends"]
       38 SETTABLEKS                       R3 R5 K16 ["throttlingPercentage"]
       40 NEWTABLE                         R6 0 3
       42 LOADN                            R7 26
       43 LOADN                            R8 22
       44 LOADN                            R9 9
       45 SETLIST                          R6 R7 3 [1]
       47 SETTABLEKS                       R6 R5 K17 ["lastUpdated"]
       49 DUPTABLE                         R6 K27 [{["eventName"] = "AudioActivityMonitorColumnSorted", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when a column in the monitor is sorted.", ["links"] = "TODO"}]
       50 NEWTABLE                         R7 0 2
       52 LOADK                            R8 K23 ["EventIngest"]
       53 LOADK                            R9 K24 ["Points"]
       54 SETLIST                          R7 R8 2 [1]
       56 SETTABLEKS                       R7 R6 K15 ["backends"]
       58 SETTABLEKS                       R3 R6 K16 ["throttlingPercentage"]
       60 NEWTABLE                         R7 0 3
       62 LOADN                            R8 26
       63 LOADN                            R9 22
       64 LOADN                            R10 9
       65 SETLIST                          R7 R8 3 [1]
       67 SETTABLEKS                       R7 R6 K17 ["lastUpdated"]
       69 DUPTABLE                         R7 K30 [{["eventName"] = "AudioActivityMonitorColumnResized", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when a column in the monitor is resized.", ["links"] = "TODO"}]
       70 NEWTABLE                         R8 0 2
       72 LOADK                            R9 K23 ["EventIngest"]
       73 LOADK                            R10 K24 ["Points"]
       74 SETLIST                          R8 R9 2 [1]
       76 SETTABLEKS                       R8 R7 K15 ["backends"]
       78 SETTABLEKS                       R3 R7 K16 ["throttlingPercentage"]
       80 NEWTABLE                         R8 0 3
       82 LOADN                            R9 26
       83 LOADN                            R10 22
       84 LOADN                            R11 9
       85 SETLIST                          R8 R9 3 [1]
       87 SETTABLEKS                       R8 R7 K17 ["lastUpdated"]
       89 DUPTABLE                         R8 K33 [{["eventName"] = "AudioActivityMonitorMeteringModeSelected", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when a metering mode in the monitor is selected.", ["links"] = "TODO"}]
       90 NEWTABLE                         R9 0 2
       92 LOADK                            R10 K23 ["EventIngest"]
       93 LOADK                            R11 K24 ["Points"]
       94 SETLIST                          R9 R10 2 [1]
       96 SETTABLEKS                       R9 R8 K15 ["backends"]
       98 SETTABLEKS                       R3 R8 K16 ["throttlingPercentage"]
      100 NEWTABLE                         R9 0 3
      102 LOADN                            R10 26
      103 LOADN                            R11 22
      104 LOADN                            R12 9
      105 SETLIST                          R9 R10 3 [1]
      107 SETTABLEKS                       R9 R8 K17 ["lastUpdated"]
      109 DUPTABLE                         R9 K36 [{["eventName"] = "AudioActivityMonitorLookbackChanged", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when the lookback bar is paused, unpaused, or scrubbed.", ["links"] = "TODO"}]
      110 NEWTABLE                         R10 0 2
      112 LOADK                            R11 K23 ["EventIngest"]
      113 LOADK                            R12 K24 ["Points"]
      114 SETLIST                          R10 R11 2 [1]
      116 SETTABLEKS                       R10 R9 K15 ["backends"]
      118 SETTABLEKS                       R3 R9 K16 ["throttlingPercentage"]
      120 NEWTABLE                         R10 0 3
      122 LOADN                            R11 26
      123 LOADN                            R12 22
      124 LOADN                            R13 9
      125 SETLIST                          R10 R11 3 [1]
      127 SETTABLEKS                       R10 R9 K17 ["lastUpdated"]
      129 DUPTABLE                         R10 K39 [{["eventName"] = "AudioActivityMonitorSettingsReset", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when the monitor's settings are reset to their defaults.", ["links"] = "TODO"}]
      130 NEWTABLE                         R11 0 2
      132 LOADK                            R12 K23 ["EventIngest"]
      133 LOADK                            R13 K24 ["Points"]
      134 SETLIST                          R11 R12 2 [1]
      136 SETTABLEKS                       R11 R10 K15 ["backends"]
      138 SETTABLEKS                       R3 R10 K16 ["throttlingPercentage"]
      140 NEWTABLE                         R11 0 3
      142 LOADN                            R12 26
      143 LOADN                            R13 23
      144 LOADN                            R14 9
      145 SETLIST                          R11 R12 3 [1]
      147 SETTABLEKS                       R11 R10 K17 ["lastUpdated"]
      149 NEWTABLE                         R11 8 0
      151 DUPCLOSURE                       R12 K40 [PROTO_1]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R5
      154 SETTABLEKS                       R12 R11 K41 ["reportColumnToggled"]
      156 DUPCLOSURE                       R12 K42 [PROTO_2]
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R6
      159 SETTABLEKS                       R12 R11 K43 ["reportColumnSorted"]
      161 DUPCLOSURE                       R12 K44 [PROTO_3]
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R7
      164 SETTABLEKS                       R12 R11 K45 ["reportColumnResized"]
      166 DUPCLOSURE                       R12 K46 [PROTO_4]
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R8
      169 SETTABLEKS                       R12 R11 K47 ["reportMeteringModeSelected"]
      171 DUPCLOSURE                       R12 K48 [PROTO_5]
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R9
      174 SETTABLEKS                       R12 R11 K49 ["reportLookbackChanged"]
      176 DUPCLOSURE                       R12 K50 [PROTO_6]
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R10
      179 SETTABLEKS                       R12 R11 K51 ["reportSettingsReset"]
      181 RETURN                           R11 1
