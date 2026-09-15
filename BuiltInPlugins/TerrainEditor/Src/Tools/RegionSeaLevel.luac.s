PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K1 ["_operation"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["start"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K3 ["OnOperationChanged"]
       14 NAMECALL                         R2 R2 K4 ["Fire"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 8 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Replace"]
       16 SETTABLE                         R7 R5 R6
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["SourceMaterial"]
       20 GETIMPORT                        R7 K8 [Enum.Material.Air]
       22 SETTABLE                         R7 R5 R6
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K9 ["SourceMaterialSlot"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K10 ["AIR_SLOT_INDEX"]
       29 SETTABLE                         R7 R5 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K11 ["TargetMaterial"]
       33 GETIMPORT                        R7 K13 [Enum.Material.Water]
       35 SETTABLE                         R7 R5 R6
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K14 ["TargetMaterialSlot"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K15 ["WATER_SLOT_INDEX"]
       42 SETTABLE                         R7 R5 R6
       43 SETTABLE                         R5 R3 R4
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K16 ["SelectionSettings"]
       47 NEWTABLE                         R5 2 0
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K17 ["Size"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K18 ["SeaLevelSettings"]
       55 GETTABLE                         R8 R2 R9
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K17 ["Size"]
       59 GETTABLE                         R7 R8 R9
       60 SETTABLE                         R7 R5 R6
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K19 ["Transform"]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K18 ["SeaLevelSettings"]
       67 GETTABLE                         R8 R2 R9
       68 GETUPVAL                         R9 5
       69 GETTABLEKS                       R9 R9 K19 ["Transform"]
       71 GETTABLE                         R7 R8 R9
       72 SETTABLE                         R7 R5 R6
       73 SETTABLE                         R5 R3 R4
       74 MOVE                             R2 R3
       75 GETTABLEKS                       R3 R0 K20 ["_localization"]
       77 LOADK                            R5 K21 ["Operations"]
       78 LOADK                            R6 K22 ["CreateName"]
       79 NAMECALL                         R3 R3 K23 ["getText"]
       81 CALL                             R3 3 1
       82 GETTABLEKS                       R4 R0 K20 ["_localization"]
       84 LOADK                            R6 K21 ["Operations"]
       85 LOADK                            R7 K24 ["CreateDescription"]
       86 NAMECALL                         R4 R4 K23 ["getText"]
       88 CALL                             R4 3 1
       89 GETUPVAL                         R5 6
       90 MOVE                             R6 R3
       91 MOVE                             R7 R4
       92 GETTABLEKS                       R8 R0 K25 ["_services"]
       94 CALL                             R5 3 1
       95 SETTABLEKS                       R5 R0 K26 ["_operation"]
       97 GETTABLEKS                       R5 R0 K26 ["_operation"]
       99 GETTABLEKS                       R5 R5 K27 ["Finished"]
      101 NEWCLOSURE                       R7 P0
      102 CAPTURE                          VAL R0
      103 NAMECALL                         R5 R5 K28 ["Connect"]
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R0 K29 ["_operationFinishedConnection"]
      108 GETUPVAL                         R7 7
      109 GETTABLEKS                       R7 R7 K30 ["join"]
      111 DUPTABLE                         R8 K32 [{"Payload"}]
      112 SETTABLEKS                       R2 R8 K31 ["Payload"]
      114 MOVE                             R9 R1
      115 CALL                             R7 2 -1
      116 NAMECALL                         R5 R0 K33 ["startOperation"]
      118 CALL                             R5 -1 0
      119 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 8 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Replace"]
       16 SETTABLE                         R7 R5 R6
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["SourceMaterial"]
       20 GETIMPORT                        R7 K8 [Enum.Material.Water]
       22 SETTABLE                         R7 R5 R6
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K9 ["SourceMaterialSlot"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K10 ["WATER_SLOT_INDEX"]
       29 SETTABLE                         R7 R5 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K11 ["TargetMaterial"]
       33 GETIMPORT                        R7 K13 [Enum.Material.Air]
       35 SETTABLE                         R7 R5 R6
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K14 ["TargetMaterialSlot"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K15 ["AIR_SLOT_INDEX"]
       42 SETTABLE                         R7 R5 R6
       43 SETTABLE                         R5 R3 R4
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K16 ["SelectionSettings"]
       47 NEWTABLE                         R5 2 0
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K17 ["Size"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K18 ["SeaLevelSettings"]
       55 GETTABLE                         R8 R2 R9
       56 GETUPVAL                         R9 5
       57 GETTABLEKS                       R9 R9 K17 ["Size"]
       59 GETTABLE                         R7 R8 R9
       60 SETTABLE                         R7 R5 R6
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K19 ["Transform"]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K18 ["SeaLevelSettings"]
       67 GETTABLE                         R8 R2 R9
       68 GETUPVAL                         R9 5
       69 GETTABLEKS                       R9 R9 K19 ["Transform"]
       71 GETTABLE                         R7 R8 R9
       72 SETTABLE                         R7 R5 R6
       73 SETTABLE                         R5 R3 R4
       74 MOVE                             R2 R3
       75 GETTABLEKS                       R3 R0 K20 ["_localization"]
       77 LOADK                            R5 K21 ["Operations"]
       78 LOADK                            R6 K22 ["EvaporateName"]
       79 NAMECALL                         R3 R3 K23 ["getText"]
       81 CALL                             R3 3 1
       82 GETTABLEKS                       R4 R0 K20 ["_localization"]
       84 LOADK                            R6 K21 ["Operations"]
       85 LOADK                            R7 K24 ["EvaporateDescription"]
       86 NAMECALL                         R4 R4 K23 ["getText"]
       88 CALL                             R4 3 1
       89 GETUPVAL                         R5 6
       90 MOVE                             R6 R3
       91 MOVE                             R7 R4
       92 GETTABLEKS                       R8 R0 K25 ["_services"]
       94 CALL                             R5 3 1
       95 SETTABLEKS                       R5 R0 K26 ["_operation"]
       97 GETTABLEKS                       R5 R0 K26 ["_operation"]
       99 GETTABLEKS                       R5 R5 K27 ["Finished"]
      101 NEWCLOSURE                       R7 P0
      102 CAPTURE                          VAL R0
      103 NAMECALL                         R5 R5 K28 ["Connect"]
      105 CALL                             R5 2 1
      106 SETTABLEKS                       R5 R0 K29 ["_operationFinishedConnection"]
      108 GETUPVAL                         R7 7
      109 GETTABLEKS                       R7 R7 K30 ["join"]
      111 DUPTABLE                         R8 K32 [{"Payload"}]
      112 SETTABLEKS                       R2 R8 K31 ["Payload"]
      114 MOVE                             R9 R1
      115 CALL                             R7 2 -1
      116 NAMECALL                         R5 R0 K33 ["startOperation"]
      118 CALL                             R5 -1 0
      119 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["evaporate"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["create"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K1 ["SeaLevelSettings"]
       12 NEWTABLE                         R5 2 0
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["Evaporate"]
       17 DUPTABLE                         R7 K10 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       18 DUPTABLE                         R8 K12 [{"OnClick"}]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       23 SETTABLEKS                       R8 R7 K7 ["Schema"]
       25 SETTABLE                         R7 R5 R6
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K13 ["Create"]
       29 DUPTABLE                         R7 K10 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       30 DUPTABLE                         R8 K12 [{"OnClick"}]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R9 R8 K11 ["OnClick"]
       35 SETTABLEKS                       R8 R7 K7 ["Schema"]
       37 SETTABLE                         R7 R5 R6
       38 SETTABLE                         R5 R3 R4
       39 SETTABLEKS                       R3 R0 K14 ["_overrides"]
       41 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_overrides"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Evaporate"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+44]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["Create"]
       26 GETTABLE                         R2 R3 R4
       27 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       29 JUMPIFEQ                         R2 R1 ; [+30]
       31 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       36 GETTABLE                         R3 R4 R5
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K3 ["Evaporate"]
       40 GETTABLE                         R2 R3 R4
       41 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       43 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K2 ["SeaLevelSettings"]
       48 GETTABLE                         R3 R4 R5
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K5 ["Create"]
       52 GETTABLE                         R2 R3 R4
       53 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       55 GETTABLEKS                       R2 R0 K6 ["OnInternalsChanged"]
       57 NAMECALL                         R2 R2 K7 ["Fire"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["SeaLevel"]
       11 NAMECALL                         R1 R1 K4 ["report"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["Category"]
       32 GETTABLEKS                       R5 R3 K13 ["FillMode"]
       34 GETTABLEKS                       R6 R3 K14 ["Gizmo"]
       36 GETTABLEKS                       R7 R3 K15 ["MaterialSettings"]
       38 GETTABLEKS                       R8 R3 K16 ["SeaLevelSettings"]
       40 GETTABLEKS                       R9 R3 K17 ["SelectionSettings"]
       42 GETTABLEKS                       R10 R3 K18 ["Tab"]
       44 GETTABLEKS                       R11 R3 K19 ["Tool"]
       46 GETTABLEKS                       R12 R0 K10 ["Src"]
       48 GETTABLEKS                       R12 R12 K20 ["Util"]
       50 GETIMPORT                        R13 K5 [require]
       52 GETTABLEKS                       R14 R12 K21 ["Operations"]
       54 GETTABLEKS                       R14 R14 K22 ["FillOperation"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K5 [require]
       59 GETTABLEKS                       R15 R12 K23 ["TerrainVoxelChannels"]
       61 CALL                             R14 1 1
       62 NEWTABLE                         R15 0 1
       64 DUPTABLE                         R16 K26 [{"Defaults", "Id"}]
       65 NEWTABLE                         R17 4 0
       67 GETTABLEKS                       R18 R8 K27 ["Size"]
       69 LOADK                            R19 K28 [{64, 32, 64}]
       70 SETTABLE                         R19 R17 R18
       71 GETTABLEKS                       R18 R8 K29 ["SnapToVoxels"]
       73 LOADB                            R19 1
       74 SETTABLE                         R19 R17 R18
       75 GETTABLEKS                       R18 R8 K30 ["Transform"]
       77 GETIMPORT                        R19 K33 [CFrame.new]
       79 CALL                             R19 0 1
       80 SETTABLE                         R19 R17 R18
       81 SETTABLEKS                       R17 R16 K24 ["Defaults"]
       83 GETTABLEKS                       R17 R4 K16 ["SeaLevelSettings"]
       85 SETTABLEKS                       R17 R16 K25 ["Id"]
       87 SETLIST                          R15 R16 1 [1]
       89 NEWTABLE                         R16 0 1
       91 DUPTABLE                         R17 K35 [{"Id", "Schema"}]
       92 GETTABLEKS                       R18 R6 K36 ["Region"]
       94 SETTABLEKS                       R18 R17 K25 ["Id"]
       96 DUPTABLE                         R18 K41 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
       97 GETTABLEKS                       R19 R6 K36 ["Region"]
       99 SETTABLEKS                       R19 R18 K37 ["Type"]
      101 SETTABLEKS                       R18 R17 K34 ["Schema"]
      103 SETLIST                          R16 R17 1 [1]
      105 GETTABLEKS                       R19 R11 K42 ["SeaLevel"]
      107 GETTABLEKS                       R20 R10 K43 ["Edit"]
      109 MOVE                             R21 R15
      110 MOVE                             R22 R16
      111 NAMECALL                         R17 R2 K32 ["new"]
      113 CALL                             R17 5 1
      114 DUPCLOSURE                       R18 K44 [PROTO_0]
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R18 R17 K45 ["startOperation"]
      118 DUPCLOSURE                       R18 K46 [PROTO_2]
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R18 R17 K47 ["create"]
      129 DUPCLOSURE                       R18 K48 [PROTO_4]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R18 R17 K49 ["evaporate"]
      140 DUPCLOSURE                       R18 K50 [PROTO_7]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R18 R17 K51 ["init"]
      146 DUPCLOSURE                       R18 K52 [PROTO_8]
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R18 R17 K53 ["setDisabledState"]
      151 DUPCLOSURE                       R18 K54 [PROTO_9]
      152 SETTABLEKS                       R18 R17 K55 ["operation"]
      154 DUPCLOSURE                       R18 K56 [PROTO_10]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R11
      157 SETTABLEKS                       R18 R17 K57 ["activate"]
      159 RETURN                           R17 1
