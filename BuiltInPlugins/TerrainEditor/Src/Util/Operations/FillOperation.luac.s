PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Terrain"]
        3 GETTABLEKS                       R4 R0 K1 ["Payload"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["SelectionSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K3 ["Transform"]
       12 GETTABLE                         R4 R3 R5
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["Size"]
       16 GETTABLE                         R5 R3 R6
       17 GETUPVAL                         R6 3
       18 MOVE                             R7 R4
       19 MOVE                             R8 R5
       20 CALL                             R6 2 1
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R2 K5 ["CopyRegion"]
       24 CALL                             R7 2 1
       25 GETUPVAL                         R9 4
       26 CALL                             R9 0 1
       27 JUMPIFNOT                        R9 ; [+9]
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R8 R8 K6 ["new"]
       31 MOVE                             R9 R2
       32 MOVE                             R10 R4
       33 MOVE                             R11 R5
       34 MOVE                             R12 R6
       35 CALL                             R8 4 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 JUMPIFNOT                        R8 ; [+20]
       39 GETUPVAL                         R9 6
       40 GETTABLEKS                       R9 R9 K6 ["new"]
       42 GETIMPORT                        R10 K8 [Region3int16.new]
       44 GETIMPORT                        R11 K10 [Vector3int16.new]
       46 LOADN                            R12 0
       47 LOADN                            R13 0
       48 LOADN                            R14 0
       49 CALL                             R11 3 1
       50 GETTABLEKS                       R13 R6 K11 ["Max"]
       52 GETTABLEKS                       R14 R6 K12 ["Min"]
       54 SUB                              R12 R13 R14
       55 CALL                             R10 2 1
       56 LOADN                            R11 32
       57 CALL                             R9 2 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 JUMPIFNOT                        R8 ; [+3]
       61 NEWTABLE                         R10 0 0
       63 JUMP                             ; [+4]
       64 GETUPVAL                         R10 7
       65 MOVE                             R11 R4
       66 MOVE                             R12 R5
       67 CALL                             R10 2 1
       68 DUPTABLE                         R11 K21 [{["BackupRegion"], ["BackupTerrainRegion"], ["CurrentIndex"] = 1, ["MaterialBackend"], ["RegionIterator"], ["Regions"], ["StartTime"]}]
       69 SETTABLEKS                       R6 R11 K13 ["BackupRegion"]
       71 SETTABLEKS                       R7 R11 K14 ["BackupTerrainRegion"]
       73 SETTABLEKS                       R8 R11 K17 ["MaterialBackend"]
       75 SETTABLEKS                       R9 R11 K18 ["RegionIterator"]
       77 SETTABLEKS                       R10 R11 K19 ["Regions"]
       79 GETIMPORT                        R12 K24 [os.clock]
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K20 ["StartTime"]
       84 SETTABLEKS                       R11 R0 K25 ["State"]
       86 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["Terrain"]
       13 GETTABLEKS                       R5 R0 K5 ["Payload"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K6 ["MaterialSettings"]
       18 GETTABLE                         R4 R5 R6
       19 GETTABLEKS                       R6 R0 K5 ["Payload"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K7 ["SelectionSettings"]
       24 GETTABLE                         R5 R6 R7
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K8 ["FillMode"]
       28 GETTABLE                         R6 R4 R7
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K9 ["Size"]
       32 GETTABLE                         R7 R5 R8
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K10 ["SourceMaterial"]
       36 GETTABLE                         R8 R4 R9
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K11 ["SourceMaterialSlot"]
       40 GETTABLE                         R9 R4 R10
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K12 ["TargetMaterial"]
       44 GETTABLE                         R10 R4 R11
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K13 ["TargetMaterialSlot"]
       48 GETTABLE                         R11 R4 R12
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R13 R13 K14 ["Transform"]
       52 GETTABLE                         R12 R5 R13
       53 GETTABLEKS                       R13 R2 K15 ["MaterialBackend"]
       55 GETTABLEKS                       R14 R2 K16 ["RegionIterator"]
       57 LOADNIL                          R15
       58 LOADNIL                          R16
       59 JUMPIFNOT                        R14 ; [+6]
       60 GETTABLEKS                       R17 R14 K17 ["next"]
       62 CALL                             R17 0 2
       63 MOVE                             R15 R17
       64 MOVE                             R16 R18
       65 JUMP                             ; [+5]
       66 GETTABLEKS                       R17 R2 K18 ["Regions"]
       68 GETTABLEKS                       R18 R2 K19 ["CurrentIndex"]
       70 GETTABLE                         R15 R17 R18
       71 JUMPIF                           R15 ; [+3]
       72 LOADB                            R17 0
       73 LOADN                            R18 0
       74 RETURN                           R17 2
       75 JUMPIFNOT                        R13 ; [+18]
       76 MOVE                             R19 R9
       77 NAMECALL                         R17 R13 K20 ["isMaterialValid"]
       79 CALL                             R17 2 1
       80 JUMPIFNOT                        R17 ; [+10]
       81 GETUPVAL                         R17 4
       82 GETTABLEKS                       R17 R17 K21 ["Replace"]
       84 JUMPIFNOTEQ                      R6 R17 ; [+9]
       86 MOVE                             R19 R11
       87 NAMECALL                         R17 R13 K20 ["isMaterialValid"]
       89 CALL                             R17 2 1
       90 JUMPIF                           R17 ; [+3]
       91 LOADB                            R17 0
       92 LOADN                            R18 0
       93 RETURN                           R17 2
       94 JUMPIFNOT                        R13 ; [+12]
       95 GETUPVAL                         R17 4
       96 GETTABLEKS                       R17 R17 K21 ["Replace"]
       98 JUMPIFNOTEQ                      R6 R17 ; [+8]
      100 MOVE                             R19 R15
      101 MOVE                             R20 R9
      102 MOVE                             R21 R11
      103 NAMECALL                         R17 R13 K22 ["replace"]
      105 CALL                             R17 4 0
      106 JUMP                             ; [+28]
      107 JUMPIFNOT                        R13 ; [+6]
      108 MOVE                             R19 R15
      109 MOVE                             R20 R9
      110 NAMECALL                         R17 R13 K23 ["fill"]
      112 CALL                             R17 3 0
      113 JUMP                             ; [+21]
      114 GETUPVAL                         R17 4
      115 GETTABLEKS                       R17 R17 K21 ["Replace"]
      117 JUMPIFNOTEQ                      R6 R17 ; [+10]
      119 MOVE                             R19 R12
      120 MOVE                             R20 R7
      121 MOVE                             R21 R8
      122 MOVE                             R22 R10
      123 MOVE                             R23 R15
      124 NAMECALL                         R17 R3 K24 ["ReplaceMaterialInTransformSubregion"]
      126 CALL                             R17 6 0
      127 JUMP                             ; [+7]
      128 MOVE                             R19 R12
      129 MOVE                             R20 R7
      130 MOVE                             R21 R8
      131 MOVE                             R22 R15
      132 NAMECALL                         R17 R3 K25 ["SetMaterialInTransformSubregion"]
      134 CALL                             R17 5 0
      135 JUMPIFNOT                        R14 ; [+7]
      136 LOADN                            R18 1
      137 JUMPIFLT                         R16 R18 ; [+2]
      139 LOADB                            R17 0 +1
      140 LOADB                            R17 1
      141 MOVE                             R18 R16
      142 RETURN                           R17 2
      143 GETTABLEKS                       R17 R2 K19 ["CurrentIndex"]
      145 GETTABLEKS                       R19 R2 K18 ["Regions"]
      147 LENGTH                           R18 R19
      148 JUMPIFNOTEQ                      R17 R18 ; [+4]
      150 LOADB                            R17 0
      151 LOADN                            R18 0
      152 RETURN                           R17 2
      153 GETTABLEKS                       R17 R2 K19 ["CurrentIndex"]
      155 ADDK                             R17 R17 K26 [1]
      156 SETTABLEKS                       R17 R2 K19 ["CurrentIndex"]
      158 LOADB                            R17 1
      159 GETTABLEKS                       R19 R2 K19 ["CurrentIndex"]
      161 GETTABLEKS                       R21 R2 K18 ["Regions"]
      163 LENGTH                           R20 R21
      164 DIV                              R18 R19 R20
      165 RETURN                           R17 2

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
        0 GETTABLEKS                       R2 R0 K0 ["State"]
        2 JUMPIFNOT                        R2 ; [+27]
        3 GETTABLEKS                       R2 R0 K0 ["State"]
        5 GETTABLEKS                       R2 R2 K1 ["StartTime"]
        7 JUMPIFNOT                        R2 ; [+22]
        8 GETTABLEKS                       R3 R0 K2 ["Payload"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["SelectionSettings"]
       13 GETTABLE                         R2 R3 R4
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["Size"]
       17 GETTABLE                         R3 R2 R4
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["NormalizeRegionTimer"]
       21 GETTABLEKS                       R7 R0 K0 ["State"]
       23 GETTABLEKS                       R7 R7 K1 ["StartTime"]
       25 MOVE                             R8 R3
       26 CALL                             R6 2 -1
       27 NAMECALL                         R4 R1 K6 ["addTimeStatistic"]
       29 CALL                             R4 -1 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K7 ["ChangeHistoryService"]
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
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U8
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R6 P3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          VAL R2
       22 GETUPVAL                         R7 10
       23 GETTABLEKS                       R7 R7 K0 ["new"]
       25 DUPTABLE                         R8 K10 [{["AllowPause"] = True, ["AllowCancel"] = True, ["Description"], ["Name"], ["OnCancel"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       26 SETTABLEKS                       R1 R8 K4 ["Description"]
       28 SETTABLEKS                       R0 R8 K5 ["Name"]
       30 SETTABLEKS                       R5 R8 K6 ["OnCancel"]
       32 SETTABLEKS                       R6 R8 K7 ["OnFinish"]
       34 SETTABLEKS                       R3 R8 K8 ["OnStart"]
       36 SETTABLEKS                       R4 R8 K9 ["OnStep"]
       38 CALL                             R7 1 -1
       39 RETURN                           R7 -1

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
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Flags"]
       24 GETTABLEKS                       R3 R3 K11 ["getFFlagEnableTerrainPalette"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R0 K6 ["Src"]
       29 GETTABLEKS                       R3 R3 K7 ["Util"]
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R3 K12 ["AnalyticsHelper"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R3 K13 ["ConvertTransformToRegion"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R3 K14 ["CreateSubregions"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R3 K8 ["Operations"]
       50 GETTABLEKS                       R8 R8 K15 ["FillMaterialBackend"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R3 K16 ["Region3int16ChunkIterator"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Src"]
       62 GETTABLEKS                       R10 R10 K17 ["Types"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R9 K18 ["Category"]
       67 GETTABLEKS                       R11 R9 K19 ["FillMode"]
       69 GETTABLEKS                       R12 R9 K20 ["MaterialSettings"]
       71 GETTABLEKS                       R13 R9 K21 ["SelectionSettings"]
       73 DUPCLOSURE                       R14 K22 [PROTO_4]
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R1
       85 RETURN                           R14 1
