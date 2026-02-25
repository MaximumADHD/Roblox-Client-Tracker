PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Terrain"]
        3 GETTABLEKS                       R4 R0 K1 ["Payload"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K2 ["SelectionSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["Transform"]
       12 GETTABLE                         R4 R3 R5
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["Size"]
       16 GETTABLE                         R5 R3 R6
       17 GETUPVAL                         R6 3
       18 MOVE                             R7 R4
       19 MOVE                             R8 R5
       20 CALL                             R6 2 1
       21 GETUPVAL                         R7 4
       22 MOVE                             R8 R4
       23 MOVE                             R9 R5
       24 CALL                             R7 2 1
       25 MOVE                             R10 R7
       26 NAMECALL                         R8 R2 K5 ["CopyRegion"]
       28 CALL                             R8 2 1
       29 DUPTABLE                         R9 K11 [{"BackupRegion", "BackupTerrainRegion", "CurrentIndex", "Regions", "StartTime"}]
       30 SETTABLEKS                       R7 R9 K6 ["BackupRegion"]
       32 SETTABLEKS                       R8 R9 K7 ["BackupTerrainRegion"]
       34 LOADN                            R10 1
       35 SETTABLEKS                       R10 R9 K8 ["CurrentIndex"]
       37 SETTABLEKS                       R6 R9 K9 ["Regions"]
       39 GETIMPORT                        R10 K14 [os.clock]
       41 CALL                             R10 0 1
       42 SETTABLEKS                       R10 R9 K10 ["StartTime"]
       44 SETTABLEKS                       R9 R0 K15 ["State"]
       46 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["Terrain"]
       13 GETTABLEKS                       R5 R0 K5 ["Payload"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K6 ["MaterialSettings"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R6 R0 K5 ["Payload"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K7 ["SelectionSettings"]
       24 GETTABLE                         R5 R6 R7
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K8 ["FillMode"]
       28 GETTABLE                         R6 R4 R7
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R8 R9 K9 ["Size"]
       32 GETTABLE                         R7 R5 R8
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R9 R10 K10 ["SourceMaterial"]
       36 GETTABLE                         R8 R4 R9
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R10 R11 K11 ["TargetMaterial"]
       40 GETTABLE                         R9 R4 R10
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K12 ["Transform"]
       44 GETTABLE                         R10 R5 R11
       45 GETTABLEKS                       R12 R2 K13 ["Regions"]
       47 GETTABLEKS                       R13 R2 K14 ["CurrentIndex"]
       49 GETTABLE                         R11 R12 R13
       50 JUMPIF                           R11 ; [+3]
       51 LOADB                            R12 0
       52 LOADN                            R13 0
       53 RETURN                           R12 2
       54 GETUPVAL                         R13 4
       55 GETTABLEKS                       R12 R13 K15 ["Replace"]
       57 JUMPIFNOTEQ                      R6 R12 ; [+10]
       59 MOVE                             R14 R10
       60 MOVE                             R15 R7
       61 MOVE                             R16 R8
       62 MOVE                             R17 R9
       63 MOVE                             R18 R11
       64 NAMECALL                         R12 R3 K16 ["ReplaceMaterialInTransformSubregion"]
       66 CALL                             R12 6 0
       67 JUMP                             ; [+7]
       68 MOVE                             R14 R10
       69 MOVE                             R15 R7
       70 MOVE                             R16 R8
       71 MOVE                             R17 R11
       72 NAMECALL                         R12 R3 K17 ["SetMaterialInTransformSubregion"]
       74 CALL                             R12 5 0
       75 GETTABLEKS                       R12 R2 K14 ["CurrentIndex"]
       77 GETTABLEKS                       R14 R2 K13 ["Regions"]
       79 LENGTH                           R13 R14
       80 JUMPIFNOTEQ                      R12 R13 ; [+4]
       82 LOADB                            R12 0
       83 LOADN                            R13 0
       84 RETURN                           R12 2
       85 GETTABLEKS                       R12 R2 K14 ["CurrentIndex"]
       87 ADDK                             R12 R12 K18 [1]
       88 SETTABLEKS                       R12 R2 K14 ["CurrentIndex"]
       90 LOADB                            R12 1
       91 GETTABLEKS                       R14 R2 K14 ["CurrentIndex"]
       93 GETTABLEKS                       R16 R2 K13 ["Regions"]
       95 LENGTH                           R15 R16
       96 DIV                              R13 R14 R15
       97 RETURN                           R12 2

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to cancel without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["Terrain"]
       13 GETTABLEKS                       R5 R2 K5 ["BackupTerrainRegion"]
       15 GETTABLEKS                       R7 R2 K6 ["BackupRegion"]
       17 GETTABLEKS                       R6 R7 K7 ["Min"]
       19 LOADB                            R7 1
       20 NAMECALL                         R3 R3 K8 ["PasteRegion"]
       22 CALL                             R3 4 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["State"]
        2 JUMPIFNOT                        R2 ; [+27]
        3 GETTABLEKS                       R3 R0 K0 ["State"]
        5 GETTABLEKS                       R2 R3 K1 ["StartTime"]
        7 JUMPIFNOT                        R2 ; [+22]
        8 GETTABLEKS                       R3 R0 K2 ["Payload"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["SelectionSettings"]
       13 GETTABLE                         R2 R3 R4
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K4 ["Size"]
       17 GETTABLE                         R3 R2 R4
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K5 ["NormalizeRegionTimer"]
       21 GETTABLEKS                       R8 R0 K0 ["State"]
       23 GETTABLEKS                       R7 R8 K1 ["StartTime"]
       25 MOVE                             R8 R3
       26 CALL                             R6 2 -1
       27 NAMECALL                         R4 R1 K6 ["addTimeStatistic"]
       29 CALL                             R4 -1 0
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R2 R3 K7 ["ChangeHistoryService"]
       33 LOADK                            R4 K8 ["FillAction"]
       34 NAMECALL                         R2 R2 K9 ["SetWaypoint"]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U5
       12 NEWCLOSURE                       R5 P2
       13 CAPTURE                          VAL R2
       14 NEWCLOSURE                       R6 P3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R2
       19 GETUPVAL                         R8 7
       20 GETTABLEKS                       R7 R8 K0 ["new"]
       22 DUPTABLE                         R8 K9 [{"AllowPause", "AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnStart", "OnStep"}]
       23 LOADB                            R9 1
       24 SETTABLEKS                       R9 R8 K1 ["AllowPause"]
       26 LOADB                            R9 1
       27 SETTABLEKS                       R9 R8 K2 ["AllowCancel"]
       29 SETTABLEKS                       R1 R8 K3 ["Description"]
       31 SETTABLEKS                       R0 R8 K4 ["Name"]
       33 SETTABLEKS                       R5 R8 K5 ["OnCancel"]
       35 SETTABLEKS                       R6 R8 K6 ["OnFinish"]
       37 SETTABLEKS                       R3 R8 K7 ["OnStart"]
       39 SETTABLEKS                       R4 R8 K8 ["OnStep"]
       41 CALL                             R7 1 -1
       42 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Operations"]
       15 GETTABLEKS                       R2 R3 K9 ["BaseOperation"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R3 K7 ["Util"]
       22 GETIMPORT                        R3 K5 [require]
       24 GETTABLEKS                       R4 R2 K10 ["AnalyticsHelper"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R2 K11 ["ConvertTransformToRegion"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R2 K12 ["CreateSubregions"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Types"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R6 K14 ["Category"]
       46 GETTABLEKS                       R8 R6 K15 ["FillMode"]
       48 GETTABLEKS                       R9 R6 K16 ["MaterialSettings"]
       50 GETTABLEKS                       R10 R6 K17 ["SelectionSettings"]
       52 DUPCLOSURE                       R11 K18 [PROTO_4]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 RETURN                           R11 1
