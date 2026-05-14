PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Terrain"]
        3 GETTABLEKS                       R4 R0 K1 ["Payload"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["SelectionSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R5 R0 K1 ["Payload"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K3 ["TransformSettings"]
       14 GETTABLE                         R4 R5 R6
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K4 ["Transform"]
       18 GETTABLE                         R5 R3 R6
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["Size"]
       22 GETTABLE                         R6 R3 R7
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K6 ["TransformMode"]
       28 GETTABLE                         R9 R4 R10
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K7 ["Move"]
       32 JUMPIFNOTEQ                      R9 R10 ; [+7]
       34 GETUPVAL                         R9 5
       35 MOVE                             R10 R5
       36 MOVE                             R11 R6
       37 CALL                             R9 2 1
       38 MOVE                             R7 R9
       39 LOADN                            R8 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K4 ["Transform"]
       43 GETTABLE                         R9 R4 R10
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R11 R11 K5 ["Size"]
       47 GETTABLE                         R10 R4 R11
       48 GETUPVAL                         R11 5
       49 MOVE                             R12 R9
       50 MOVE                             R13 R10
       51 CALL                             R11 2 2
       52 LOADNIL                          R13
       53 GETUPVAL                         R15 3
       54 GETTABLEKS                       R15 R15 K6 ["TransformMode"]
       56 GETTABLE                         R14 R4 R15
       57 GETUPVAL                         R15 4
       58 GETTABLEKS                       R15 R15 K8 ["Paste"]
       60 JUMPIFNOTEQ                      R14 R15 ; [+6]
       62 GETUPVAL                         R14 3
       63 GETTABLEKS                       R14 R14 K9 ["TerrainRegionBuffer"]
       65 GETTABLE                         R13 R4 R14
       66 JUMP                             ; [+4]
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K10 ["TerrainRegion"]
       70 GETTABLE                         R13 R4 R14
       71 GETUPVAL                         R14 6
       72 MOVE                             R15 R9
       73 MOVE                             R16 R10
       74 CALL                             R14 2 1
       75 MOVE                             R17 R14
       76 NAMECALL                         R15 R2 K11 ["CopyRegion"]
       78 CALL                             R15 2 1
       79 DUPTABLE                         R16 K21 [{"BackupRegion", "BackupTerrainRegion", "SourceCurrentIndex", "SourceRegions", "SourceTerrainRegion", "StartTime", "TargetCurrentIndex", "TargetOrigins", "TargetRegions"}]
       80 SETTABLEKS                       R14 R16 K12 ["BackupRegion"]
       82 SETTABLEKS                       R15 R16 K13 ["BackupTerrainRegion"]
       84 SETTABLEKS                       R8 R16 K14 ["SourceCurrentIndex"]
       86 SETTABLEKS                       R7 R16 K15 ["SourceRegions"]
       88 SETTABLEKS                       R13 R16 K16 ["SourceTerrainRegion"]
       90 GETIMPORT                        R17 K24 [os.clock]
       92 CALL                             R17 0 1
       93 SETTABLEKS                       R17 R16 K17 ["StartTime"]
       95 LOADN                            R17 1
       96 SETTABLEKS                       R17 R16 K18 ["TargetCurrentIndex"]
       98 SETTABLEKS                       R12 R16 K19 ["TargetOrigins"]
      100 SETTABLEKS                       R11 R16 K20 ["TargetRegions"]
      102 SETTABLEKS                       R16 R0 K25 ["State"]
      104 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETTABLEKS                       R4 R0 K4 ["Payload"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["SelectionSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETTABLEKS                       R5 R0 K4 ["Payload"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K6 ["TransformSettings"]
       21 GETTABLE                         R4 R5 R6
       22 GETTABLEKS                       R5 R2 K7 ["SourceTerrainRegion"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K8 ["Terrain"]
       27 GETTABLEKS                       R8 R2 K9 ["TargetOrigins"]
       29 GETTABLEKS                       R9 R2 K10 ["TargetCurrentIndex"]
       31 GETTABLE                         R7 R8 R9
       32 GETTABLEKS                       R9 R2 K11 ["TargetRegions"]
       34 GETTABLEKS                       R10 R2 K10 ["TargetCurrentIndex"]
       36 GETTABLE                         R8 R9 R10
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K12 ["Size"]
       40 GETTABLE                         R9 R4 R10
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K13 ["Transform"]
       44 GETTABLE                         R10 R4 R11
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K14 ["TransformMode"]
       48 GETTABLE                         R11 R4 R12
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R12 R12 K15 ["Move"]
       52 JUMPIFNOTEQ                      R11 R12 ; [+49]
       54 GETTABLEKS                       R11 R2 K16 ["SourceRegions"]
       56 JUMPIFNOT                        R11 ; [+45]
       57 GETTABLEKS                       R11 R2 K17 ["SourceCurrentIndex"]
       59 JUMPIFNOT                        R11 ; [+42]
       60 GETUPVAL                         R14 4
       61 GETTABLEKS                       R14 R14 K13 ["Transform"]
       63 GETTABLE                         R13 R3 R14
       64 GETUPVAL                         R15 4
       65 GETTABLEKS                       R15 R15 K12 ["Size"]
       67 GETTABLE                         R14 R3 R15
       68 GETIMPORT                        R15 K21 [Enum.Material.Air]
       70 GETTABLEKS                       R17 R2 K16 ["SourceRegions"]
       72 GETTABLEKS                       R18 R2 K17 ["SourceCurrentIndex"]
       74 GETTABLE                         R16 R17 R18
       75 NAMECALL                         R11 R6 K22 ["SetMaterialInTransformSubregion"]
       77 CALL                             R11 5 0
       78 GETTABLEKS                       R11 R2 K17 ["SourceCurrentIndex"]
       80 GETTABLEKS                       R13 R2 K16 ["SourceRegions"]
       82 LENGTH                           R12 R13
       83 JUMPIFEQ                         R11 R12 ; [+18]
       85 GETTABLEKS                       R11 R2 K17 ["SourceCurrentIndex"]
       87 ADDK                             R11 R11 K23 [1]
       88 SETTABLEKS                       R11 R2 K17 ["SourceCurrentIndex"]
       90 LOADB                            R11 1
       91 GETTABLEKS                       R13 R2 K17 ["SourceCurrentIndex"]
       93 GETTABLEKS                       R16 R2 K16 ["SourceRegions"]
       95 LENGTH                           R15 R16
       96 GETTABLEKS                       R17 R2 K11 ["TargetRegions"]
       98 LENGTH                           R16 R17
       99 ADD                              R14 R15 R16
      100 DIV                              R12 R13 R14
      101 RETURN                           R11 2
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K24 ["MergeEmpty"]
      105 GETTABLE                         R11 R4 R12
      106 JUMPIFNOT                        R11 ; [+8]
      107 MOVE                             R13 R10
      108 MOVE                             R14 R9
      109 GETIMPORT                        R15 K21 [Enum.Material.Air]
      111 MOVE                             R16 R8
      112 NAMECALL                         R11 R6 K22 ["SetMaterialInTransformSubregion"]
      114 CALL                             R11 5 0
      115 GETTABLEKS                       R13 R10 K25 ["Rotation"]
      117 MOVE                             R14 R9
      118 MOVE                             R15 R8
      119 NAMECALL                         R11 R5 K26 ["ApplyTransformSubregion"]
      121 CALL                             R11 4 1
      122 MOVE                             R14 R11
      123 MOVE                             R15 R7
      124 LOADB                            R16 0
      125 NAMECALL                         R12 R6 K27 ["PasteRegion"]
      127 CALL                             R12 4 0
      128 GETTABLEKS                       R12 R2 K10 ["TargetCurrentIndex"]
      130 GETTABLEKS                       R14 R2 K11 ["TargetRegions"]
      132 LENGTH                           R13 R14
      133 JUMPIFNOTEQ                      R12 R13 ; [+4]
      135 LOADB                            R12 0
      136 LOADN                            R13 0
      137 RETURN                           R12 2
      138 GETTABLEKS                       R12 R2 K10 ["TargetCurrentIndex"]
      140 ADDK                             R12 R12 K23 [1]
      141 SETTABLEKS                       R12 R2 K10 ["TargetCurrentIndex"]
      143 LOADB                            R12 1
      144 GETTABLEKS                       R15 R2 K10 ["TargetCurrentIndex"]
      146 GETTABLEKS                       R17 R2 K17 ["SourceCurrentIndex"]
      148 ORK                              R16 R17 K28 [0]
      149 ADD                              R14 R15 R16
      150 GETTABLEKS                       R17 R2 K11 ["TargetRegions"]
      152 LENGTH                           R16 R17
      153 GETTABLEKS                       R18 R2 K16 ["SourceRegions"]
      155 JUMPIFNOT                        R18 ; [+4]
      156 GETTABLEKS                       R18 R2 K16 ["SourceRegions"]
      158 LENGTH                           R17 R18
      159 JUMP                             ; [+1]
      160 LOADN                            R17 0
      161 ADD                              R15 R16 R17
      162 DIV                              R13 R14 R15
      163 RETURN                           R12 2

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to cancel without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       13 GETTABLEKS                       R5 R2 K5 ["BackupTerrainRegion"]
       15 GETTABLEKS                       R6 R2 K6 ["BackupRegion"]
       17 GETTABLEKS                       R6 R6 K7 ["Min"]
       19 LOADB                            R7 1
       20 NAMECALL                         R3 R3 K8 ["PasteRegion"]
       22 CALL                             R3 4 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Payload"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["TransformSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Size"]
        9 GETTABLE                         R3 R2 R4
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K3 ["NormalizeRegionTimer"]
       13 GETTABLEKS                       R7 R0 K4 ["State"]
       15 GETTABLEKS                       R7 R7 K5 ["StartTime"]
       17 MOVE                             R8 R3
       18 CALL                             R6 2 -1
       19 NAMECALL                         R4 R1 K6 ["addTimeStatistic"]
       21 CALL                             R4 -1 0
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K7 ["ChangeHistoryService"]
       25 LOADK                            R6 K8 ["TransformAction"]
       26 NAMECALL                         R4 R4 K9 ["SetWaypoint"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R2
       16 NEWCLOSURE                       R6 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          VAL R2
       21 GETUPVAL                         R7 7
       22 GETTABLEKS                       R7 R7 K0 ["new"]
       24 DUPTABLE                         R8 K9 [{"AllowPause", "AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnStart", "OnStep"}]
       25 LOADB                            R9 1
       26 SETTABLEKS                       R9 R8 K1 ["AllowPause"]
       28 LOADB                            R9 1
       29 SETTABLEKS                       R9 R8 K2 ["AllowCancel"]
       31 SETTABLEKS                       R1 R8 K3 ["Description"]
       33 SETTABLEKS                       R0 R8 K4 ["Name"]
       35 SETTABLEKS                       R5 R8 K5 ["OnCancel"]
       37 SETTABLEKS                       R6 R8 K6 ["OnFinish"]
       39 SETTABLEKS                       R3 R8 K7 ["OnStart"]
       41 SETTABLEKS                       R4 R8 K8 ["OnStep"]
       43 CALL                             R7 1 -1
       44 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Operations"]
       15 GETTABLEKS                       R2 R2 K9 ["BaseOperation"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
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
       39 GETTABLEKS                       R7 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Types"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R6 K14 ["Category"]
       46 GETTABLEKS                       R8 R6 K15 ["SelectionSettings"]
       48 GETTABLEKS                       R9 R6 K16 ["TransformMode"]
       50 GETTABLEKS                       R10 R6 K17 ["TransformSettings"]
       52 DUPCLOSURE                       R11 K18 [PROTO_4]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 RETURN                           R11 1
