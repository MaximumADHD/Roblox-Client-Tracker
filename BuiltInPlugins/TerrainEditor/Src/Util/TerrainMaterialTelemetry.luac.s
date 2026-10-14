PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["logEvent"]
        2 GETTABLEKS                       R4 R1 K1 ["RobloxTelemetry"]
        4 MOVE                             R5 R2
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R0 K2 ["logCounter"]
        8 GETTABLEKS                       R4 R1 K3 ["RobloxTelemetryCounter"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R4 K2 [table.clone]
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 ORK                              R5 R3 K3 [1]
        5 SETTABLEKS                       R5 R4 K4 ["count"]
        7 GETTABLEKS                       R5 R0 K5 ["logEvent"]
        9 GETTABLEKS                       R6 R1 K6 ["RobloxTelemetry"]
       11 MOVE                             R7 R4
       12 CALL                             R5 2 0
       13 GETTABLEKS                       R5 R0 K7 ["logCounter"]
       15 GETTABLEKS                       R6 R1 K8 ["RobloxTelemetryCounter"]
       17 MOVE                             R7 R2
       18 MOVE                             R8 R3
       19 CALL                             R5 3 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K2 [table.clone]
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R3 R4 K3 ["value"]
        6 GETTABLEKS                       R5 R0 K4 ["logEvent"]
        8 GETTABLEKS                       R6 R1 K5 ["RobloxTelemetry"]
       10 MOVE                             R7 R4
       11 CALL                             R5 2 0
       12 GETTABLEKS                       R5 R0 K6 ["logStat"]
       14 GETTABLEKS                       R6 R1 K7 ["RobloxTelemetryStat"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 CALL                             R5 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R5 K2 [{"tool"}]
        4 SETTABLEKS                       R1 R5 K1 ["tool"]
        6 GETIMPORT                        R6 K5 [table.clone]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 ORK                              R7 R2 K6 [1]
       11 SETTABLEKS                       R7 R6 K7 ["count"]
       13 GETTABLEKS                       R7 R3 K8 ["logEvent"]
       15 GETTABLEKS                       R8 R4 K9 ["RobloxTelemetry"]
       17 MOVE                             R9 R6
       18 CALL                             R7 2 0
       19 GETTABLEKS                       R7 R3 K10 ["logCounter"]
       21 GETTABLEKS                       R8 R4 K11 ["RobloxTelemetryCounter"]
       23 MOVE                             R9 R5
       24 MOVE                             R10 R2
       25 CALL                             R7 3 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R5 K2 [{"tool"}]
        4 SETTABLEKS                       R1 R5 K1 ["tool"]
        6 GETIMPORT                        R6 K5 [table.clone]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 ORK                              R7 R2 K6 [1]
       11 SETTABLEKS                       R7 R6 K7 ["count"]
       13 GETTABLEKS                       R7 R3 K8 ["logEvent"]
       15 GETTABLEKS                       R8 R4 K9 ["RobloxTelemetry"]
       17 MOVE                             R9 R6
       18 CALL                             R7 2 0
       19 GETTABLEKS                       R7 R3 K10 ["logCounter"]
       21 GETTABLEKS                       R8 R4 K11 ["RobloxTelemetryCounter"]
       23 MOVE                             R9 R5
       24 MOVE                             R10 R2
       25 CALL                             R7 3 0
       26 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["telemetry"]}]
        1 SETTABLEKS                       R0 R2 K2 ["telemetry"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K5 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["telemetry"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K2 [{"firstOpenInSession"}]
        4 GETTABLEKS                       R5 R0 K3 ["hasReportedEditorOpened"]
        6 NOT                              R4 R5
        7 SETTABLEKS                       R4 R3 K1 ["firstOpenInSession"]
        9 GETIMPORT                        R4 K6 [table.clone]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 LOADN                            R5 1
       14 SETTABLEKS                       R5 R4 K7 ["count"]
       16 GETTABLEKS                       R5 R1 K8 ["logEvent"]
       18 GETTABLEKS                       R6 R2 K9 ["RobloxTelemetry"]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 GETTABLEKS                       R5 R1 K10 ["logCounter"]
       24 GETTABLEKS                       R6 R2 K11 ["RobloxTelemetryCounter"]
       26 MOVE                             R7 R3
       27 LOADNIL                          R8
       28 CALL                             R5 3 0
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K3 ["hasReportedEditorOpened"]
       32 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["telemetry"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K2 [{"tool"}]
        4 SETTABLEKS                       R1 R4 K1 ["tool"]
        6 GETTABLEKS                       R5 R2 K3 ["logEvent"]
        8 GETTABLEKS                       R6 R3 K4 ["RobloxTelemetry"]
       10 MOVE                             R7 R4
       11 CALL                             R5 2 0
       12 GETTABLEKS                       R5 R2 K5 ["logCounter"]
       14 GETTABLEKS                       R6 R3 K6 ["RobloxTelemetryCounter"]
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Name"]
        3 RETURN                           R1 1
        4 LOADNIL                          R1
        5 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["usingSlots"]
        2 JUMPIFNOT                        R1 ; [+48]
        3 DUPTABLE                         R1 K11 [{["autoMaterial"], ["baseMaterial"], ["isVariant"], ["replace"], ["secondaryBaseMaterial"], ["secondaryIsVariant"], ["secondarySlotIndex"], ["slotIndex"], ["tool"], [10] = True}]
        4 GETTABLEKS                       R2 R0 K1 ["autoMaterial"]
        6 SETTABLEKS                       R2 R1 K1 ["autoMaterial"]
        8 GETTABLEKS                       R3 R0 K2 ["baseMaterial"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R3 K12 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["baseMaterial"]
       17 GETTABLEKS                       R2 R0 K3 ["isVariant"]
       19 SETTABLEKS                       R2 R1 K3 ["isVariant"]
       21 GETTABLEKS                       R2 R0 K4 ["replace"]
       23 SETTABLEKS                       R2 R1 K4 ["replace"]
       25 GETTABLEKS                       R3 R0 K5 ["secondaryBaseMaterial"]
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R2 R3 K12 ["Name"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K5 ["secondaryBaseMaterial"]
       34 GETTABLEKS                       R2 R0 K6 ["secondaryIsVariant"]
       36 SETTABLEKS                       R2 R1 K6 ["secondaryIsVariant"]
       38 GETTABLEKS                       R2 R0 K7 ["secondarySlotIndex"]
       40 SETTABLEKS                       R2 R1 K7 ["secondarySlotIndex"]
       42 GETTABLEKS                       R2 R0 K8 ["slotIndex"]
       44 SETTABLEKS                       R2 R1 K8 ["slotIndex"]
       46 GETTABLEKS                       R2 R0 K9 ["tool"]
       48 SETTABLEKS                       R2 R1 K9 ["tool"]
       50 RETURN                           R1 1
       51 DUPTABLE                         R1 K16 [{["autoMaterial"], ["material"], ["replace"], ["secondaryMaterial"], ["tool"], [6] = False}]
       52 GETTABLEKS                       R2 R0 K1 ["autoMaterial"]
       54 SETTABLEKS                       R2 R1 K1 ["autoMaterial"]
       56 GETTABLEKS                       R3 R0 K13 ["material"]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETTABLEKS                       R2 R3 K12 ["Name"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 SETTABLEKS                       R2 R1 K13 ["material"]
       65 GETTABLEKS                       R2 R0 K4 ["replace"]
       67 SETTABLEKS                       R2 R1 K4 ["replace"]
       69 GETTABLEKS                       R3 R0 K14 ["secondaryMaterial"]
       71 JUMPIFNOT                        R3 ; [+3]
       72 GETTABLEKS                       R2 R3 K12 ["Name"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R2
       76 SETTABLEKS                       R2 R1 K14 ["secondaryMaterial"]
       78 GETTABLEKS                       R2 R0 K9 ["tool"]
       80 SETTABLEKS                       R2 R1 K9 ["tool"]
       82 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["telemetry"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R5 R2 K1 ["logEvent"]
        8 GETTABLEKS                       R6 R3 K2 ["RobloxTelemetry"]
       10 MOVE                             R7 R4
       11 CALL                             R5 2 0
       12 GETTABLEKS                       R5 R2 K3 ["logCounter"]
       14 GETTABLEKS                       R6 R3 K4 ["RobloxTelemetryCounter"]
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isMaterialTool"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R0 K1 ["telemetry"]
        9 GETTABLEKS                       R4 R4 K2 ["logStat"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["RobloxTelemetryStat"]
       14 DUPTABLE                         R6 K6 [{"tool", "usingSlots"}]
       15 SETTABLEKS                       R1 R6 K4 ["tool"]
       17 SETTABLEKS                       R2 R6 K5 ["usingSlots"]
       19 MOVE                             R7 R3
       20 CALL                             R4 3 0
       21 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Draw"]
        4 JUMPIFEQ                         R0 R2 ; [+20]
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Fill"]
       10 JUMPIFEQ                         R0 R2 ; [+14]
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["Paint"]
       16 JUMPIFEQ                         R0 R2 ; [+8]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["Sculpt"]
       21 JUMPIFEQ                         R0 R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["telemetry"]
        2 GETUPVAL                         R5 0
        3 DUPTABLE                         R6 K3 [{"tool", "usingSlots"}]
        4 SETTABLEKS                       R1 R6 K1 ["tool"]
        6 SETTABLEKS                       R2 R6 K2 ["usingSlots"]
        8 GETIMPORT                        R7 K6 [table.clone]
       10 MOVE                             R8 R6
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R3 R7 K7 ["value"]
       14 GETTABLEKS                       R8 R4 K8 ["logEvent"]
       16 GETTABLEKS                       R9 R5 K9 ["RobloxTelemetry"]
       18 MOVE                             R10 R7
       19 CALL                             R8 2 0
       20 GETTABLEKS                       R8 R4 K10 ["logStat"]
       22 GETTABLEKS                       R9 R5 K11 ["RobloxTelemetryStat"]
       24 MOVE                             R10 R6
       25 MOVE                             R11 R3
       26 CALL                             R8 3 0
       27 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["telemetry"]
        2 GETTABLEKS                       R4 R4 K1 ["logEvent"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["RobloxTelemetry"]
        7 DUPTABLE                         R6 K6 [{"tool", "usingSlots", "value"}]
        8 SETTABLEKS                       R1 R6 K3 ["tool"]
       10 SETTABLEKS                       R2 R6 K4 ["usingSlots"]
       12 SETTABLEKS                       R3 R6 K5 ["value"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Telemetry"]
       22 GETTABLEKS                       R3 R3 K10 ["TerrainInvalidMaterialSlot"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K8 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["Telemetry"]
       33 GETTABLEKS                       R4 R4 K11 ["TerrainMaterialProperties"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K8 ["Parent"]
       42 GETTABLEKS                       R5 R5 K9 ["Telemetry"]
       44 GETTABLEKS                       R5 R5 K12 ["TerrainEditorOpened"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETIMPORT                        R6 K1 [script]
       51 GETTABLEKS                       R6 R6 K8 ["Parent"]
       53 GETTABLEKS                       R6 R6 K9 ["Telemetry"]
       55 GETTABLEKS                       R6 R6 K13 ["TerrainToolActivated"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETIMPORT                        R7 K1 [script]
       62 GETTABLEKS                       R7 R7 K8 ["Parent"]
       64 GETTABLEKS                       R7 R7 K9 ["Telemetry"]
       66 GETTABLEKS                       R7 R7 K14 ["TerrainToolUsage"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETIMPORT                        R8 K1 [script]
       73 GETTABLEKS                       R8 R8 K8 ["Parent"]
       75 GETTABLEKS                       R8 R8 K9 ["Telemetry"]
       77 GETTABLEKS                       R8 R8 K15 ["TerrainToolPerformance"]
       79 CALL                             R7 1 1
       80 GETIMPORT                        R8 K5 [require]
       82 GETTABLEKS                       R9 R0 K16 ["Src"]
       84 GETTABLEKS                       R9 R9 K17 ["Types"]
       86 CALL                             R8 1 1
       87 GETTABLEKS                       R9 R8 K18 ["Tool"]
       89 NEWTABLE                         R10 16 0
       91 SETTABLEKS                       R10 R10 K19 ["__index"]
       93 DUPCLOSURE                       R11 K20 [PROTO_0]
       94 DUPCLOSURE                       R12 K21 [PROTO_1]
       95 DUPCLOSURE                       R13 K22 [PROTO_2]
       96 DUPCLOSURE                       R14 K23 [PROTO_3]
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R14 R10 K24 ["reportToolActivated"]
      100 DUPCLOSURE                       R14 K25 [PROTO_4]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R14 R10 K26 ["reportToolUsage"]
      104 DUPCLOSURE                       R14 K27 [PROTO_5]
      105 CAPTURE                          VAL R10
      106 SETTABLEKS                       R14 R10 K28 ["new"]
      108 DUPCLOSURE                       R14 K29 [PROTO_6]
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R14 R10 K30 ["reportEditorOpened"]
      112 DUPCLOSURE                       R14 K31 [PROTO_7]
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R14 R10 K32 ["reportInvalidMaterialSlot"]
      116 DUPCLOSURE                       R14 K33 [PROTO_8]
      117 DUPCLOSURE                       R15 K34 [PROTO_9]
      118 DUPCLOSURE                       R16 K35 [PROTO_10]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R15
      121 SETTABLEKS                       R16 R10 K36 ["reportMaterialProperties"]
      123 DUPCLOSURE                       R16 K37 [PROTO_11]
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R16 R10 K38 ["reportToolPerformance"]
      128 DUPCLOSURE                       R16 K39 [PROTO_12]
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R16 R10 K40 ["isMaterialTool"]
      132 DUPCLOSURE                       R16 K41 [PROTO_13]
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R16 R10 K42 ["reportMigratedToolPerformance"]
      136 DUPCLOSURE                       R16 K43 [PROTO_14]
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R16 R10 K44 ["reportToolPerformanceEvent"]
      140 RETURN                           R10 1
