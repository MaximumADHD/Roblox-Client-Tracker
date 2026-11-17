PROTO_0:
        0 DUPTABLE                         R2 K3 [{"studioSid", "placeId", "userId"}]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K4 ["GetSessionId"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R2 K0 ["studioSid"]
        7 GETIMPORT                        R3 K6 [game]
        9 GETTABLEKS                       R3 R3 K7 ["PlaceId"]
       11 SETTABLEKS                       R3 R2 K1 ["placeId"]
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K8 ["GetUserId"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K2 ["userId"]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R2
       22 MOVE                             R6 R1
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 1
       25 MOVE                             R1 R3
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K9 ["LogAnalytics"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+17]
       31 GETIMPORT                        R3 K11 [print]
       33 LOADK                            R4 K12 ["(EVENT) TerrainEditor reported event %* with payload %*"]
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R7 R0
       36 GETIMPORT                        R6 K14 [tostring]
       38 CALL                             R6 1 1
       39 GETUPVAL                         R7 5
       40 MOVE                             R9 R1
       41 NAMECALL                         R7 R7 K15 ["JSONEncode"]
       43 CALL                             R7 2 1
       44 NAMECALL                         R4 R4 K16 ["format"]
       46 CALL                             R4 3 1
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 0
       49 LOADK                            R5 K17 ["studio"]
       50 LOADK                            R6 K18 ["TerrainEditor"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R1
       53 NAMECALL                         R3 R3 K19 ["SendEventDeferred"]
       55 CALL                             R3 5 0
       56 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["Terrain ReportCounter counterName=%* count=%*"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 3 1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K6 ["ReportCounter"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LogAnalytics"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["Terrain ReportCounter counterName=%* count=%*"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 3 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 1
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 NAMECALL                         R2 R2 K5 ["ReportStats"]
       19 CALL                             R2 3 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R3 K0 ["reportToolActivated"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+27]
       12 LOADK                            R3 K1 ["%*ToolActivated"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R4 R2
       18 ORK                              R4 R4 K3 [1]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["LogAnalytics"]
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+9]
       24 GETIMPORT                        R5 K6 [print]
       26 LOADK                            R6 K7 ["Terrain ReportCounter counterName=%* count=%*"]
       27 MOVE                             R8 R3
       28 MOVE                             R9 R4
       29 NAMECALL                         R6 R6 K2 ["format"]
       31 CALL                             R6 3 1
       32 CALL                             R5 1 0
       33 GETUPVAL                         R5 4
       34 MOVE                             R7 R3
       35 MOVE                             R8 R4
       36 NAMECALL                         R5 R5 K8 ["ReportCounter"]
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 NAMECALL                         R3 R3 K0 ["reportToolUsage"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+27]
       12 LOADK                            R3 K1 ["%*ToolUsage"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R4 R2
       18 ORK                              R4 R4 K3 [1]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K4 ["LogAnalytics"]
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+9]
       24 GETIMPORT                        R5 K6 [print]
       26 LOADK                            R6 K7 ["Terrain ReportCounter counterName=%* count=%*"]
       27 MOVE                             R8 R3
       28 MOVE                             R9 R4
       29 NAMECALL                         R6 R6 K2 ["format"]
       31 CALL                             R6 3 1
       32 CALL                             R5 1 0
       33 GETUPVAL                         R5 4
       34 MOVE                             R7 R3
       35 MOVE                             R8 R4
       36 NAMECALL                         R5 R5 K8 ["ReportCounter"]
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["reportInvalidMaterialSlot"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isMaterialTool"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+20]
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R1
        8 GETUPVAL                         R6 2
        9 CALL                             R6 0 1
       10 MOVE                             R7 R2
       11 NAMECALL                         R3 R3 K1 ["reportToolPerformance"]
       13 CALL                             R3 4 0
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+20]
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R1
       19 GETUPVAL                         R6 2
       20 CALL                             R6 0 1
       21 MOVE                             R7 R2
       22 NAMECALL                         R3 R3 K2 ["reportToolPerformanceEvent"]
       24 CALL                             R3 4 0
       25 JUMP                             ; [+11]
       26 GETUPVAL                         R3 3
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+8]
       29 GETUPVAL                         R3 1
       30 MOVE                             R5 R1
       31 GETUPVAL                         R6 2
       32 CALL                             R6 0 1
       33 MOVE                             R7 R2
       34 NAMECALL                         R3 R3 K3 ["reportMigratedToolPerformance"]
       36 CALL                             R3 4 0
       37 GETUPVAL                         R3 4
       38 CALL                             R3 0 1
       39 JUMPIF                           R3 ; [+25]
       40 LOADK                            R3 K4 ["%*ToolPerformance"]
       41 MOVE                             R5 R1
       42 NAMECALL                         R3 R3 K5 ["format"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R4 5
       46 GETTABLEKS                       R4 R4 K6 ["LogAnalytics"]
       48 CALL                             R4 0 1
       49 JUMPIFNOT                        R4 ; [+9]
       50 GETIMPORT                        R4 K8 [print]
       52 LOADK                            R5 K9 ["Terrain ReportCounter counterName=%* count=%*"]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R2
       55 NAMECALL                         R5 R5 K5 ["format"]
       57 CALL                             R5 3 1
       58 CALL                             R4 1 0
       59 GETUPVAL                         R4 6
       60 MOVE                             R6 R3
       61 MOVE                             R7 R2
       62 NAMECALL                         R4 R4 K10 ["ReportStats"]
       64 CALL                             R4 3 0
       65 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorBrushProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorRegionProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorMaterialProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["reportMaterialProperties"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 DUPTABLE                         R5 K7 [{"Activated", "Usage", "InvalidMaterialSlot", "Performance", "BrushProperties", "RegionProperties", "MaterialProperties"}]
       14 NEWCLOSURE                       R6 P3
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R6 R5 K0 ["Activated"]
       22 NEWCLOSURE                       R6 P4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R6 R5 K1 ["Usage"]
       30 NEWCLOSURE                       R6 P5
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K2 ["InvalidMaterialSlot"]
       34 NEWCLOSURE                       R6 P6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R6 R5 K3 ["Performance"]
       44 NEWCLOSURE                       R6 P7
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K4 ["BrushProperties"]
       48 NEWCLOSURE                       R6 P8
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R6 R5 K5 ["RegionProperties"]
       52 NEWCLOSURE                       R6 P9
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R6 R5 K6 ["MaterialProperties"]
       57 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Util"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["ConvertForAnalytics"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R3 K12 ["DebugFlags"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R7 R3 K13 ["TerrainMaterialTelemetry"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R0 K9 ["Src"]
       39 GETTABLEKS                       R8 R8 K14 ["Flags"]
       41 GETTABLEKS                       R8 R8 K15 ["getFFlagEnableTerrainPalette"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K9 ["Src"]
       48 GETTABLEKS                       R9 R9 K14 ["Flags"]
       50 GETTABLEKS                       R9 R9 K16 ["getFFlagDisableTerrainEditorLegacyTelemetryMetrics"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K9 ["Src"]
       57 GETTABLEKS                       R10 R10 K14 ["Flags"]
       59 GETTABLEKS                       R10 R10 K17 ["getFFlagMigrateTerrainEditorTelemetryToV2"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K9 ["Src"]
       66 GETTABLEKS                       R11 R11 K18 ["Types"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K20 [game]
       71 LOADK                            R13 K21 ["HttpService"]
       72 NAMECALL                         R11 R11 K22 ["GetService"]
       74 CALL                             R11 2 1
       75 GETIMPORT                        R12 K20 [game]
       77 LOADK                            R14 K23 ["StudioService"]
       78 NAMECALL                         R12 R12 K22 ["GetService"]
       80 CALL                             R12 2 1
       81 DUPCLOSURE                       R13 K24 [PROTO_10]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R7
       91 RETURN                           R13 1
