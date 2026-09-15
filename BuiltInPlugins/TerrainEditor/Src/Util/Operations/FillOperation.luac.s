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
       25 GETUPVAL                         R8 4
       26 MOVE                             R9 R4
       27 MOVE                             R10 R5
       28 CALL                             R8 2 1
       29 DUPTABLE                         R9 K12 [{["BackupRegion"], ["BackupTerrainRegion"], ["CurrentIndex"] = 1, ["Regions"], ["StartTime"]}]
       30 SETTABLEKS                       R6 R9 K6 ["BackupRegion"]
       32 SETTABLEKS                       R7 R9 K7 ["BackupTerrainRegion"]
       34 SETTABLEKS                       R8 R9 K10 ["Regions"]
       36 GETIMPORT                        R10 K15 [os.clock]
       38 CALL                             R10 0 1
       39 SETTABLEKS                       R10 R9 K11 ["StartTime"]
       41 SETTABLEKS                       R9 R0 K16 ["State"]
       43 RETURN                           R0 0

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
       53 GETTABLEKS                       R14 R2 K15 ["Regions"]
       55 GETTABLEKS                       R15 R2 K16 ["CurrentIndex"]
       57 GETTABLE                         R13 R14 R15
       58 JUMPIF                           R13 ; [+3]
       59 LOADB                            R14 0
       60 LOADN                            R15 0
       61 RETURN                           R14 2
       62 GETUPVAL                         R14 4
       63 CALL                             R14 0 1
       64 JUMPIFNOT                        R14 ; [+36]
       65 FASTCALL1                        TYPEOF R9 ; [+3]
       66 MOVE                             R15 R9
       67 GETIMPORT                        R14 K18 [typeof]
       69 CALL                             R14 1 1
       70 JUMPIFNOTEQKS                    R14 K19 ["number"] ; [+27]
       72 GETUPVAL                         R14 5
       73 GETTABLEKS                       R14 R14 K20 ["isSlotValid"]
       75 MOVE                             R15 R3
       76 MOVE                             R16 R9
       77 CALL                             R14 2 1
       78 JUMPIFNOT                        R14 ; [+19]
       79 GETUPVAL                         R14 6
       80 GETTABLEKS                       R14 R14 K21 ["Replace"]
       82 JUMPIFNOTEQ                      R6 R14 ; [+18]
       84 FASTCALL1                        TYPEOF R11 ; [+3]
       85 MOVE                             R15 R11
       86 GETIMPORT                        R14 K18 [typeof]
       88 CALL                             R14 1 1
       89 JUMPIFNOTEQKS                    R14 K19 ["number"] ; [+8]
       91 GETUPVAL                         R14 5
       92 GETTABLEKS                       R14 R14 K20 ["isSlotValid"]
       94 MOVE                             R15 R3
       95 MOVE                             R16 R11
       96 CALL                             R14 2 1
       97 JUMPIF                           R14 ; [+3]
       98 LOADB                            R14 0
       99 LOADN                            R15 0
      100 RETURN                           R14 2
      101 GETUPVAL                         R14 4
      102 CALL                             R14 0 1
      103 JUMPIFNOT                        R14 ; [+14]
      104 GETUPVAL                         R14 6
      105 GETTABLEKS                       R14 R14 K21 ["Replace"]
      107 JUMPIFNOTEQ                      R6 R14 ; [+10]
      109 MOVE                             R16 R12
      110 MOVE                             R17 R7
      111 MOVE                             R18 R9
      112 MOVE                             R19 R11
      113 MOVE                             R20 R13
      114 NAMECALL                         R14 R3 K22 ["ReplaceMaterialInTransformSubregionSlot"]
      116 CALL                             R14 6 0
      117 JUMP                             ; [+32]
      118 GETUPVAL                         R14 4
      119 CALL                             R14 0 1
      120 JUMPIFNOT                        R14 ; [+8]
      121 MOVE                             R16 R12
      122 MOVE                             R17 R7
      123 MOVE                             R18 R9
      124 MOVE                             R19 R13
      125 NAMECALL                         R14 R3 K23 ["SetMaterialInTransformSubregionSlot"]
      127 CALL                             R14 5 0
      128 JUMP                             ; [+21]
      129 GETUPVAL                         R14 6
      130 GETTABLEKS                       R14 R14 K21 ["Replace"]
      132 JUMPIFNOTEQ                      R6 R14 ; [+10]
      134 MOVE                             R16 R12
      135 MOVE                             R17 R7
      136 MOVE                             R18 R8
      137 MOVE                             R19 R10
      138 MOVE                             R20 R13
      139 NAMECALL                         R14 R3 K24 ["ReplaceMaterialInTransformSubregion"]
      141 CALL                             R14 6 0
      142 JUMP                             ; [+7]
      143 MOVE                             R16 R12
      144 MOVE                             R17 R7
      145 MOVE                             R18 R8
      146 MOVE                             R19 R13
      147 NAMECALL                         R14 R3 K25 ["SetMaterialInTransformSubregion"]
      149 CALL                             R14 5 0
      150 GETTABLEKS                       R14 R2 K16 ["CurrentIndex"]
      152 GETTABLEKS                       R16 R2 K15 ["Regions"]
      154 LENGTH                           R15 R16
      155 JUMPIFNOTEQ                      R14 R15 ; [+4]
      157 LOADB                            R14 0
      158 LOADN                            R15 0
      159 RETURN                           R14 2
      160 GETTABLEKS                       R14 R2 K16 ["CurrentIndex"]
      162 ADDK                             R14 R14 K26 [1]
      163 SETTABLEKS                       R14 R2 K16 ["CurrentIndex"]
      165 LOADB                            R14 1
      166 GETTABLEKS                       R16 R2 K16 ["CurrentIndex"]
      168 GETTABLEKS                       R18 R2 K15 ["Regions"]
      170 LENGTH                           R17 R18
      171 DIV                              R15 R16 R17
      172 RETURN                           R14 2

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
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R2
       16 NEWCLOSURE                       R6 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          VAL R2
       21 GETUPVAL                         R7 9
       22 GETTABLEKS                       R7 R7 K0 ["new"]
       24 DUPTABLE                         R8 K10 [{["AllowPause"] = True, ["AllowCancel"] = True, ["Description"], ["Name"], ["OnCancel"], ["OnFinish"], ["OnStart"], ["OnStep"]}]
       25 SETTABLEKS                       R1 R8 K4 ["Description"]
       27 SETTABLEKS                       R0 R8 K5 ["Name"]
       29 SETTABLEKS                       R5 R8 K6 ["OnCancel"]
       31 SETTABLEKS                       R6 R8 K7 ["OnFinish"]
       33 SETTABLEKS                       R3 R8 K8 ["OnStart"]
       35 SETTABLEKS                       R4 R8 K9 ["OnStep"]
       37 CALL                             R7 1 -1
       38 RETURN                           R7 -1

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
       48 GETTABLEKS                       R8 R3 K15 ["TerrainVoxelChannels"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Src"]
       55 GETTABLEKS                       R9 R9 K16 ["Types"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R8 K17 ["Category"]
       60 GETTABLEKS                       R10 R8 K18 ["FillMode"]
       62 GETTABLEKS                       R11 R8 K19 ["MaterialSettings"]
       64 GETTABLEKS                       R12 R8 K20 ["SelectionSettings"]
       66 DUPCLOSURE                       R13 K21 [PROTO_4]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R1
       77 RETURN                           R13 1
