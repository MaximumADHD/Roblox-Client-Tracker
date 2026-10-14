PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["ensure"]
        7 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["ensure"]
       19 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["TargetMaterialSlot"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 SETTABLE                         R0 R1 R2
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["InvalidSourceMode"]
        9 LOADB                            R3 0
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R2 3
       12 NEWTABLE                         R4 1 0
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K1 ["MaterialSettings"]
       17 SETTABLE                         R1 R4 R5
       18 NAMECALL                         R2 R2 K2 ["setPayload"]
       20 CALL                             R2 2 0
       21 GETIMPORT                        R2 K5 [task.spawn]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U3
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["MaterialSettings"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K1 ["InvalidSourceMode"]
       11 SETTABLE                         R0 R5 R6
       12 SETTABLE                         R5 R3 R4
       13 NAMECALL                         R1 R1 K2 ["setPayload"]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K5 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnInternalsChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getPayload"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["MaterialSettings"]
        7 GETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+11]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["FillMode"]
       13 GETTABLE                         R3 R1 R4
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K3 ["Replace"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 MOVE                             R3 R2
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["InvalidSourceMode"]
       26 GETTABLE                         R4 R1 R5
       27 JUMPIFEQKB                       R4 TRUE ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 GETUPVAL                         R4 5
       32 DUPTABLE                         R6 K12 [{["allowAir"] = True, ["allowInvalidSource"], ["allowWater"] = True, ["anchorWidgetUri"], ["invalidSourceSelected"], ["selectedSlotIndex"]}]
       33 SETTABLEKS                       R2 R6 K7 ["allowInvalidSource"]
       35 SETTABLEKS                       R0 R6 K9 ["anchorWidgetUri"]
       37 SETTABLEKS                       R3 R6 K10 ["invalidSourceSelected"]
       39 GETUPVAL                         R8 6
       40 GETTABLE                         R7 R1 R8
       41 SETTABLEKS                       R7 R6 K11 ["selectedSlotIndex"]
       43 NAMECALL                         R4 R4 K13 ["request"]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 LOADNIL                          R6
       10 JUMPIFNOT                        R3 ; [+5]
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R7
       17 CALL                             R4 3 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K1 ["_terrainMaterialPickerRequesters"]
       21 SETTABLE                         R4 R5 R0
       22 DUPTABLE                         R5 K11 [{["DataId"], ["UseDataIdValueOnly"] = True, ["ValueWhenNil"] = False, ["Height"] = 24, ["Layout"], ["Schema"]}]
       23 SETTABLEKS                       R1 R5 K2 ["DataId"]
       25 GETIMPORT                        R6 K15 [Enum.FillDirection.Horizontal]
       27 SETTABLEKS                       R6 R5 K9 ["Layout"]
       29 DUPTABLE                         R6 K23 [{["AllowAir"] = True, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"], ["Type"] = "TerrainMaterialPicker"}]
       30 NEWCLOSURE                       R7 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R7 R6 K18 ["OnClear"]
       37 NEWCLOSURE                       R7 P3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R7 R6 K19 ["OnActivated"]
       47 SETTABLEKS                       R2 R6 K20 ["PickerId"]
       49 SETTABLEKS                       R6 R5 K10 ["Schema"]
       51 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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
       27 JUMPIFNOT                        R4 ; [+42]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R0 K1 ["_terrainMaterialPickerRequesters"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NEWTABLE                         R5 2 0
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K3 ["SourceMaterial"]
       44 MOVE                             R7 R4
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R8 R8 K3 ["SourceMaterial"]
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K4 ["SourceMaterialSlot"]
       51 LOADK                            R10 K5 ["Fill/SourceMaterial"]
       52 LOADB                            R11 1
       53 CALL                             R7 4 1
       54 SETTABLE                         R7 R5 R6
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K6 ["TargetMaterial"]
       58 MOVE                             R7 R4
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R8 R8 K6 ["TargetMaterial"]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R9 R9 K7 ["TargetMaterialSlot"]
       65 LOADK                            R10 K8 ["Fill/TargetMaterial"]
       66 LOADB                            R11 0
       67 CALL                             R7 4 1
       68 SETTABLE                         R7 R5 R6
       69 MOVE                             R3 R5
       70 NEWTABLE                         R4 1 0
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R5 R5 K9 ["MaterialSettings"]
       75 NEWTABLE                         R6 4 0
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R7 R7 K10 ["Apply"]
       80 DUPTABLE                         R8 K18 [{["Hidden"] = False, ["Label"] = "", ["Schema"], ["Value"] = True}]
       81 DUPTABLE                         R9 K20 [{"OnClick"}]
       82 NEWCLOSURE                       R10 P1
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R10 R9 K19 ["OnClick"]
       86 SETTABLEKS                       R9 R8 K15 ["Schema"]
       88 SETTABLE                         R8 R6 R7
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K3 ["SourceMaterial"]
       92 GETUPVAL                         R9 3
       93 GETTABLEKS                       R9 R9 K3 ["SourceMaterial"]
       95 GETTABLE                         R8 R3 R9
       96 JUMPIF                           R8 ; [+4]
       97 DUPTABLE                         R8 K21 [{"Schema"}]
       98 DUPTABLE                         R9 K23 [{["AllowAir"] = True}]
       99 SETTABLEKS                       R9 R8 K15 ["Schema"]
      101 SETTABLE                         R8 R6 R7
      102 GETUPVAL                         R7 3
      103 GETTABLEKS                       R7 R7 K6 ["TargetMaterial"]
      105 GETUPVAL                         R9 3
      106 GETTABLEKS                       R9 R9 K6 ["TargetMaterial"]
      108 GETTABLE                         R8 R3 R9
      109 JUMPIF                           R8 ; [+4]
      110 DUPTABLE                         R8 K21 [{"Schema"}]
      111 DUPTABLE                         R9 K23 [{["AllowAir"] = True}]
      112 SETTABLEKS                       R9 R8 K15 ["Schema"]
      114 SETTABLE                         R8 R6 R7
      115 SETTABLE                         R6 R4 R5
      116 SETTABLEKS                       R4 R0 K24 ["_overrides"]
      118 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MaterialSettings"]
        3 GETTABLE                         R2 R1 R3
        4 JUMPIFNOT                        R2 ; [+32]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["FillMode"]
        8 GETTABLE                         R3 R2 R4
        9 JUMPIFEQKNIL                     R3 ; [+27]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["FillMode"]
       14 GETTABLE                         R3 R2 R4
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["Replace"]
       18 JUMPIFEQ                         R3 R4 ; [+18]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["InvalidSourceMode"]
       23 LOADB                            R4 0
       24 SETTABLE                         R4 R2 R3
       25 GETTABLEKS                       R3 R0 K4 ["_terrainMaterialPickerRequesters"]
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETTABLEKS                       R4 R0 K4 ["_terrainMaterialPickerRequesters"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K5 ["SourceMaterial"]
       33 GETTABLE                         R3 R4 R5
       34 NAMECALL                         R3 R3 K6 ["cancel"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K7 ["saveForm"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R1
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 JUMP                             ; [+24]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["ensure"]
        7 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["SourceMaterialSlot"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["ensure"]
       19 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K2 ["MaterialSettings"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["TargetMaterialSlot"]
       27 CALL                             R1 3 0
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K5 ["activate"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 GETTABLEKS                       R1 R0 K6 ["_analytics"]
       35 LOADK                            R3 K7 ["Activated"]
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R4 R4 K8 ["Fill"]
       39 NAMECALL                         R1 R1 K9 ["report"]
       41 CALL                             R1 3 0
       42 RETURN                           R0 0

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
       50 GETTABLEKS                       R13 R10 K20 ["DefaultTerrainMaterialSlot"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R10 K21 ["TerrainMaterialPickerRequester"]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R0 K8 ["Src"]
       62 GETTABLEKS                       R15 R15 K22 ["Flags"]
       64 GETTABLEKS                       R15 R15 K23 ["getFFlagEnableTerrainPalette"]
       66 CALL                             R14 1 1
       67 NEWTABLE                         R15 0 2
       69 DUPTABLE                         R16 K26 [{"Defaults", "Id"}]
       70 NEWTABLE                         R17 0 0
       72 SETTABLEKS                       R17 R16 K24 ["Defaults"]
       74 GETTABLEKS                       R17 R3 K27 ["SelectionSettings"]
       76 SETTABLEKS                       R17 R16 K25 ["Id"]
       78 DUPTABLE                         R17 K26 [{"Defaults", "Id"}]
       79 NEWTABLE                         R18 4 0
       81 GETTABLEKS                       R19 R6 K11 ["FillMode"]
       83 GETTABLEKS                       R20 R4 K28 ["Fill"]
       85 SETTABLE                         R20 R18 R19
       86 GETTABLEKS                       R19 R6 K29 ["InvalidSourceMode"]
       88 LOADB                            R20 0
       89 SETTABLE                         R20 R18 R19
       90 GETTABLEKS                       R19 R6 K30 ["SourceMaterial"]
       92 GETIMPORT                        R20 K34 [Enum.Material.Grass]
       94 SETTABLE                         R20 R18 R19
       95 GETTABLEKS                       R19 R6 K35 ["TargetMaterial"]
       97 GETIMPORT                        R20 K34 [Enum.Material.Grass]
       99 SETTABLE                         R20 R18 R19
      100 SETTABLEKS                       R18 R17 K24 ["Defaults"]
      102 GETTABLEKS                       R18 R3 K13 ["MaterialSettings"]
      104 SETTABLEKS                       R18 R17 K25 ["Id"]
      106 SETLIST                          R15 R16 2 [1]
      108 NEWTABLE                         R16 0 1
      110 DUPTABLE                         R17 K37 [{"Id", "Schema"}]
      111 GETTABLEKS                       R18 R5 K38 ["Region"]
      113 SETTABLEKS                       R18 R17 K25 ["Id"]
      115 DUPTABLE                         R18 K43 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
      116 GETTABLEKS                       R19 R5 K38 ["Region"]
      118 SETTABLEKS                       R19 R18 K39 ["Type"]
      120 SETTABLEKS                       R18 R17 K36 ["Schema"]
      122 SETLIST                          R16 R17 1 [1]
      124 GETTABLEKS                       R19 R9 K28 ["Fill"]
      126 GETTABLEKS                       R20 R8 K44 ["Edit"]
      128 MOVE                             R21 R15
      129 MOVE                             R22 R16
      130 NAMECALL                         R17 R1 K45 ["new"]
      132 CALL                             R17 5 1
      133 DUPCLOSURE                       R18 K46 [PROTO_0]
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R6
      138 DUPCLOSURE                       R19 K47 [PROTO_2]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R11
      144 SETTABLEKS                       R19 R17 K48 ["startOperation"]
      146 DUPCLOSURE                       R19 K49 [PROTO_3]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R19 R17 K50 ["setDisabledState"]
      151 DUPCLOSURE                       R19 K51 [PROTO_13]
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R4
      159 SETTABLEKS                       R19 R17 K52 ["init"]
      161 DUPCLOSURE                       R19 K53 [PROTO_14]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R19 R17 K54 ["saveForm"]
      168 DUPCLOSURE                       R19 K55 [PROTO_15]
      169 CAPTURE                          VAL R1
      170 SETTABLEKS                       R19 R17 K56 ["deactivate"]
      172 DUPCLOSURE                       R19 K57 [PROTO_16]
      173 SETTABLEKS                       R19 R17 K58 ["operation"]
      175 DUPCLOSURE                       R19 K59 [PROTO_17]
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R9
      182 SETTABLEKS                       R19 R17 K60 ["activate"]
      184 RETURN                           R17 1
