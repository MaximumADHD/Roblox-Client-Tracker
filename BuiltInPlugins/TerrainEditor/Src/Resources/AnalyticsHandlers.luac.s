PROTO_0:
        0 DUPTABLE                         R2 K3 [{"studioSid", "placeId", "userId"}]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K4 ["GetSessionId"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R2 K0 ["studioSid"]
        7 GETIMPORT                        R4 K6 [game]
        9 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
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
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R3 R4 K9 ["LogAnalytics"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+18]
       31 GETIMPORT                        R3 K11 [print]
       33 LOADK                            R5 K12 ["(EVENT) TerrainEditor reported event %* with payload %*"]
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R8 R0
       36 GETIMPORT                        R7 K14 [tostring]
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 5
       40 MOVE                             R10 R1
       41 NAMECALL                         R8 R8 K15 ["JSONEncode"]
       43 CALL                             R8 2 1
       44 NAMECALL                         R5 R5 K16 ["format"]
       46 CALL                             R5 3 1
       47 MOVE                             R4 R5
       48 CALL                             R3 1 0
       49 GETUPVAL                         R3 0
       50 LOADK                            R5 K17 ["studio"]
       51 LOADK                            R6 K18 ["TerrainEditor"]
       52 MOVE                             R7 R0
       53 MOVE                             R8 R1
       54 NAMECALL                         R3 R3 K19 ["SendEventDeferred"]
       56 CALL                             R3 5 0
       57 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R4 K4 ["Terrain ReportCounter counterName=%* count=%*"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 NAMECALL                         R2 R2 K6 ["ReportCounter"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["LogAnalytics"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R4 K3 ["Terrain ReportCounter counterName=%* count=%*"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 3 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K5 ["ReportStats"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["%*ToolActivated"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 MOVE                             R4 R2
        7 ORK                              R4 R4 K2 [1]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["LogAnalytics"]
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+10]
       13 GETIMPORT                        R5 K5 [print]
       15 LOADK                            R7 K6 ["Terrain ReportCounter counterName=%* count=%*"]
       16 MOVE                             R9 R3
       17 MOVE                             R10 R4
       18 NAMECALL                         R7 R7 K1 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 GETUPVAL                         R5 1
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 NAMECALL                         R5 R5 K7 ["ReportCounter"]
       28 CALL                             R5 3 0
       29 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["%*ToolUsage"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 MOVE                             R4 R2
        7 ORK                              R4 R4 K2 [1]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["LogAnalytics"]
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+10]
       13 GETIMPORT                        R5 K5 [print]
       15 LOADK                            R7 K6 ["Terrain ReportCounter counterName=%* count=%*"]
       16 MOVE                             R9 R3
       17 MOVE                             R10 R4
       18 NAMECALL                         R7 R7 K1 ["format"]
       20 CALL                             R7 3 1
       21 MOVE                             R6 R7
       22 CALL                             R5 1 0
       23 GETUPVAL                         R5 1
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 NAMECALL                         R5 R5 K7 ["ReportCounter"]
       28 CALL                             R5 3 0
       29 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["%*ToolPerformance"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["LogAnalytics"]
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETIMPORT                        R4 K4 [print]
       13 LOADK                            R6 K5 ["Terrain ReportCounter counterName=%* count=%*"]
       14 MOVE                             R8 R3
       15 MOVE                             R9 R2
       16 NAMECALL                         R6 R6 K1 ["format"]
       18 CALL                             R6 3 1
       19 MOVE                             R5 R6
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R6 R3
       23 MOVE                             R7 R2
       24 NAMECALL                         R4 R4 K6 ["ReportStats"]
       26 CALL                             R4 3 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorBrushProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorRegionProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["terrainEditorMaterialProperties"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 DUPTABLE                         R4 K6 [{"Activated", "Usage", "Performance", "BrushProperties", "RegionProperties", "MaterialProperties"}]
       14 NEWCLOSURE                       R5 P3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K0 ["Activated"]
       19 NEWCLOSURE                       R5 P4
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R5 R4 K1 ["Usage"]
       24 NEWCLOSURE                       R5 P5
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R5 R4 K2 ["Performance"]
       29 NEWCLOSURE                       R5 P6
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R5 R4 K3 ["BrushProperties"]
       33 NEWCLOSURE                       R5 P7
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R5 R4 K4 ["RegionProperties"]
       37 NEWCLOSURE                       R5 P8
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R4 K5 ["MaterialProperties"]
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETTABLEKS                       R4 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R4 K10 ["Util"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["ConvertForAnalytics"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R3 K12 ["DebugFlags"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K5 [require]
       32 GETTABLEKS                       R8 R0 K9 ["Src"]
       34 GETTABLEKS                       R7 R8 K13 ["Types"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K15 [game]
       39 LOADK                            R9 K16 ["HttpService"]
       40 NAMECALL                         R7 R7 K17 ["GetService"]
       42 CALL                             R7 2 1
       43 GETIMPORT                        R8 K15 [game]
       45 LOADK                            R10 K18 ["StudioService"]
       46 NAMECALL                         R8 R8 K17 ["GetService"]
       48 CALL                             R8 2 1
       49 DUPCLOSURE                       R9 K19 [PROTO_9]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 RETURN                           R9 1
