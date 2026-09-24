PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["MaterialSettings"]
       12 GETTABLE                         R5 R2 R6
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K3 ["FillMode"]
       16 GETTABLE                         R4 R5 R6
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["Fill"]
       20 JUMPIFNOTEQ                      R4 R5 ; [+28]
       22 GETTABLEKS                       R3 R0 K5 ["_localization"]
       24 LOADK                            R5 K6 ["Operations"]
       25 LOADK                            R6 K7 ["FillDescription"]
       26 DUPTABLE                         R7 K9 [{"material"}]
       27 GETTABLEKS                       R8 R0 K5 ["_localization"]
       29 LOADK                            R10 K10 ["Materials"]
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       33 GETTABLE                         R12 R2 R13
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R13 R13 K11 ["SourceMaterial"]
       37 GETTABLE                         R11 R12 R13
       38 GETTABLEKS                       R11 R11 K12 ["Name"]
       40 NAMECALL                         R8 R8 K13 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K8 ["material"]
       45 NAMECALL                         R3 R3 K13 ["getText"]
       47 CALL                             R3 4 1
       48 JUMP                             ; [+44]
       49 GETTABLEKS                       R3 R0 K5 ["_localization"]
       51 LOADK                            R5 K6 ["Operations"]
       52 LOADK                            R6 K14 ["ReplaceDescription"]
       53 DUPTABLE                         R7 K17 [{"source", "target"}]
       54 GETTABLEKS                       R8 R0 K5 ["_localization"]
       56 LOADK                            R10 K10 ["Materials"]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       60 GETTABLE                         R12 R2 R13
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K11 ["SourceMaterial"]
       64 GETTABLE                         R11 R12 R13
       65 GETTABLEKS                       R11 R11 K12 ["Name"]
       67 NAMECALL                         R8 R8 K13 ["getText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K15 ["source"]
       72 GETTABLEKS                       R8 R0 K5 ["_localization"]
       74 LOADK                            R10 K10 ["Materials"]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K2 ["MaterialSettings"]
       78 GETTABLE                         R12 R2 R13
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K18 ["TargetMaterial"]
       82 GETTABLE                         R11 R12 R13
       83 GETTABLEKS                       R11 R11 K12 ["Name"]
       85 NAMECALL                         R8 R8 K13 ["getText"]
       87 CALL                             R8 3 1
       88 SETTABLEKS                       R8 R7 K16 ["target"]
       90 NAMECALL                         R3 R3 K13 ["getText"]
       92 CALL                             R3 4 1
       93 GETUPVAL                         R4 4
       94 GETTABLEKS                       R5 R0 K5 ["_localization"]
       96 LOADK                            R7 K6 ["Operations"]
       97 LOADK                            R8 K19 ["%*Name"]
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K2 ["MaterialSettings"]
      101 GETTABLE                         R11 R2 R12
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K3 ["FillMode"]
      105 GETTABLE                         R10 R11 R12
      106 NAMECALL                         R8 R8 K20 ["format"]
      108 CALL                             R8 2 1
      109 NAMECALL                         R5 R5 K13 ["getText"]
      111 CALL                             R5 3 1
      112 MOVE                             R6 R3
      113 GETTABLEKS                       R7 R0 K21 ["_services"]
      115 CALL                             R4 3 1
      116 SETTABLEKS                       R4 R0 K22 ["_operation"]
      118 GETTABLEKS                       R4 R0 K22 ["_operation"]
      120 GETTABLEKS                       R4 R4 K23 ["Finished"]
      122 NEWCLOSURE                       R6 P0
      123 CAPTURE                          VAL R0
      124 NAMECALL                         R4 R4 K24 ["Connect"]
      126 CALL                             R4 2 1
      127 SETTABLEKS                       R4 R0 K25 ["_operationFinishedConnection"]
      129 GETTABLEKS                       R6 R0 K22 ["_operation"]
      131 MOVE                             R7 R2
      132 MOVE                             R8 R1
      133 NAMECALL                         R4 R0 K26 ["startMaterialOperation"]
      135 CALL                             R4 4 0
      136 GETTABLEKS                       R4 R0 K27 ["OnOperationChanged"]
      138 NAMECALL                         R4 R4 K28 ["Fire"]
      140 CALL                             R4 1 0
      141 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_overrides"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["MaterialSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Apply"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["MaterialSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["Apply"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 SETTABLE                         R0 R5 R6
       10 SETTABLE                         R5 R3 R4
       11 NAMECALL                         R1 R1 K1 ["setPayload"]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K4 [task.spawn]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["MaterialSettings"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K2 ["PlacePersistent"]
       10 NAMECALL                         R0 R0 K3 ["clearGlobal"]
       12 CALL                             R0 4 0
       13 GETIMPORT                        R0 K6 [task.spawn]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["MaterialSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R4 K7 [{["allowAir"] = True, ["allowWater"] = True, ["anchorWidgetUri"], ["selectedSlotIndex"]}]
       10 SETTABLEKS                       R0 R4 K5 ["anchorWidgetUri"]
       12 GETUPVAL                         R6 3
       13 GETTABLE                         R5 R1 R6
       14 SETTABLEKS                       R5 R4 K6 ["selectedSlotIndex"]
       16 NAMECALL                         R2 R2 K8 ["request"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["_terrainMaterialPickerRequesters"]
       11 SETTABLE                         R3 R4 R0
       12 DUPTABLE                         R4 K7 [{["DataId"], ["Height"] = 24, ["Layout"], ["Schema"]}]
       13 SETTABLEKS                       R1 R4 K2 ["DataId"]
       15 GETIMPORT                        R5 K11 [Enum.FillDirection.Horizontal]
       17 SETTABLEKS                       R5 R4 K5 ["Layout"]
       19 DUPTABLE                         R5 K20 [{["AllowAir"] = True, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"], ["Type"] = "TerrainMaterialPicker"}]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R6 R5 K15 ["OnClear"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K16 ["OnActivated"]
       34 SETTABLEKS                       R2 R5 K17 ["PickerId"]
       36 SETTABLEKS                       R5 R4 K6 ["Schema"]
       38 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 NAMECALL                         R8 R7 K2 ["destroy"]
       17 CALL                             R8 1 0
       18 FORGLOOP                         R3 2 ; [-4]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequesters"]
       23 NEWTABLE                         R3 0 0
       25 GETUPVAL                         R4 1
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+38]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequesters"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R5 2 0
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K3 ["SourceMaterial"]
       42 MOVE                             R7 R4
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R8 R8 K3 ["SourceMaterial"]
       46 GETUPVAL                         R9 5
       47 GETTABLEKS                       R9 R9 K4 ["SourceMaterialSlot"]
       49 LOADK                            R10 K5 ["Fill/SourceMaterial"]
       50 CALL                             R7 3 1
       51 SETTABLE                         R7 R5 R6
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K6 ["TargetMaterial"]
       55 MOVE                             R7 R4
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R8 R8 K6 ["TargetMaterial"]
       59 GETUPVAL                         R9 5
       60 GETTABLEKS                       R9 R9 K7 ["TargetMaterialSlot"]
       62 LOADK                            R10 K8 ["Fill/TargetMaterial"]
       63 CALL                             R7 3 1
       64 SETTABLE                         R7 R5 R6
       65 MOVE                             R3 R5
       66 NEWTABLE                         R4 1 0
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R5 R5 K9 ["MaterialSettings"]
       71 NEWTABLE                         R6 4 0
       73 GETUPVAL                         R7 5
       74 GETTABLEKS                       R7 R7 K10 ["Apply"]
       76 DUPTABLE                         R8 K18 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       77 DUPTABLE                         R9 K20 [{"OnClick"}]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R10 R9 K19 ["OnClick"]
       82 SETTABLEKS                       R9 R8 K15 ["Schema"]
       84 SETTABLE                         R8 R6 R7
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K3 ["SourceMaterial"]
       88 GETUPVAL                         R9 5
       89 GETTABLEKS                       R9 R9 K3 ["SourceMaterial"]
       91 GETTABLE                         R8 R3 R9
       92 JUMPIF                           R8 ; [+4]
       93 DUPTABLE                         R8 K21 [{"Schema"}]
       94 DUPTABLE                         R9 K23 [{["AllowAir"] = True}]
       95 SETTABLEKS                       R9 R8 K15 ["Schema"]
       97 SETTABLE                         R8 R6 R7
       98 GETUPVAL                         R7 5
       99 GETTABLEKS                       R7 R7 K6 ["TargetMaterial"]
      101 GETUPVAL                         R9 5
      102 GETTABLEKS                       R9 R9 K6 ["TargetMaterial"]
      104 GETTABLE                         R8 R3 R9
      105 JUMPIF                           R8 ; [+4]
      106 DUPTABLE                         R8 K21 [{"Schema"}]
      107 DUPTABLE                         R9 K23 [{["AllowAir"] = True}]
      108 SETTABLEKS                       R9 R8 K15 ["Schema"]
      110 SETTABLE                         R8 R6 R7
      111 SETTABLE                         R6 R4 R5
      112 SETTABLEKS                       R4 R0 K24 ["_overrides"]
      114 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequesters"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequesters"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NAMECALL                         R6 R5 K1 ["cancel"]
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["deactivate"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["Fill"]
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
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["BaseTool"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["FillMode"]
       27 GETTABLEKS                       R5 R2 K12 ["Gizmo"]
       29 GETTABLEKS                       R6 R2 K13 ["MaterialSettings"]
       31 GETTABLEKS                       R7 R2 K14 ["Storage"]
       33 GETTABLEKS                       R8 R2 K15 ["Tab"]
       35 GETTABLEKS                       R9 R2 K16 ["Tool"]
       37 GETTABLEKS                       R10 R0 K8 ["Src"]
       39 GETTABLEKS                       R10 R10 K17 ["Util"]
       41 GETIMPORT                        R11 K5 [require]
       43 GETTABLEKS                       R12 R10 K18 ["Operations"]
       45 GETTABLEKS                       R12 R12 K19 ["FillOperation"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R13 R10 K20 ["TerrainMaterialPickerRequester"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R0 K8 ["Src"]
       57 GETTABLEKS                       R14 R14 K21 ["Flags"]
       59 GETTABLEKS                       R14 R14 K22 ["getFFlagEnableTerrainPalette"]
       61 CALL                             R13 1 1
       62 NEWTABLE                         R14 0 2
       64 DUPTABLE                         R15 K25 [{"Defaults", "Id"}]
       65 NEWTABLE                         R16 0 0
       67 SETTABLEKS                       R16 R15 K23 ["Defaults"]
       69 GETTABLEKS                       R16 R3 K26 ["SelectionSettings"]
       71 SETTABLEKS                       R16 R15 K24 ["Id"]
       73 DUPTABLE                         R16 K25 [{"Defaults", "Id"}]
       74 NEWTABLE                         R17 4 0
       76 GETTABLEKS                       R18 R6 K11 ["FillMode"]
       78 GETTABLEKS                       R19 R4 K27 ["Fill"]
       80 SETTABLE                         R19 R17 R18
       81 GETTABLEKS                       R18 R6 K28 ["SourceMaterial"]
       83 GETIMPORT                        R19 K32 [Enum.Material.Grass]
       85 SETTABLE                         R19 R17 R18
       86 GETTABLEKS                       R18 R6 K33 ["TargetMaterial"]
       88 GETIMPORT                        R19 K32 [Enum.Material.Grass]
       90 SETTABLE                         R19 R17 R18
       91 SETTABLEKS                       R17 R16 K23 ["Defaults"]
       93 GETTABLEKS                       R17 R3 K13 ["MaterialSettings"]
       95 SETTABLEKS                       R17 R16 K24 ["Id"]
       97 SETLIST                          R14 R15 2 [1]
       99 NEWTABLE                         R15 0 1
      101 DUPTABLE                         R16 K35 [{"Id", "Schema"}]
      102 GETTABLEKS                       R17 R5 K36 ["Region"]
      104 SETTABLEKS                       R17 R16 K24 ["Id"]
      106 DUPTABLE                         R17 K41 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
      107 GETTABLEKS                       R18 R5 K36 ["Region"]
      109 SETTABLEKS                       R18 R17 K37 ["Type"]
      111 SETTABLEKS                       R17 R16 K34 ["Schema"]
      113 SETLIST                          R15 R16 1 [1]
      115 GETTABLEKS                       R18 R9 K27 ["Fill"]
      117 GETTABLEKS                       R19 R8 K42 ["Edit"]
      119 MOVE                             R20 R14
      120 MOVE                             R21 R15
      121 NAMECALL                         R16 R1 K43 ["new"]
      123 CALL                             R16 5 1
      124 DUPCLOSURE                       R17 K44 [PROTO_1]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R11
      130 SETTABLEKS                       R17 R16 K45 ["startOperation"]
      132 DUPCLOSURE                       R17 K46 [PROTO_2]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R17 R16 K47 ["setDisabledState"]
      137 DUPCLOSURE                       R17 K48 [PROTO_10]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R17 R16 K49 ["init"]
      146 DUPCLOSURE                       R17 K50 [PROTO_11]
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R17 R16 K51 ["deactivate"]
      150 DUPCLOSURE                       R17 K52 [PROTO_12]
      151 SETTABLEKS                       R17 R16 K53 ["operation"]
      153 DUPCLOSURE                       R17 K54 [PROTO_13]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R17 R16 K55 ["activate"]
      158 RETURN                           R16 1
