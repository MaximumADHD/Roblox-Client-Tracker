PROTO_0:
        0 NEWTABLE                         R4 1 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["HeightmapSettings"]
        5 NEWTABLE                         R6 1 0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K1 ["DefaultMaterialSlot"]
       10 SETTABLE                         R1 R6 R7
       11 SETTABLE                         R6 R4 R5
       12 NAMECALL                         R2 R0 K2 ["setPayload"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ensure"]
        6 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["DefaultMaterialSlot"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R4 R0 K0 ["X"]
        3 GETTABLEKS                       R5 R0 K1 ["Y"]
        5 MUL                              R3 R4 R5
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 MUL                              R2 R3 R4
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["MaxImportVolume"]
       12 JUMPIFNOTLE                      R2 R3 ; [+26]
       14 LOADB                            R1 0
       15 GETTABLEKS                       R2 R0 K0 ["X"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       20 JUMPIFNOTLE                      R3 R2 ; [+18]
       22 LOADB                            R1 0
       23 GETTABLEKS                       R2 R0 K1 ["Y"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       28 JUMPIFNOTLE                      R3 R2 ; [+10]
       30 GETTABLEKS                       R2 R0 K2 ["Z"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K4 ["VoxelResolution"]
       35 JUMPIFLE                         R3 R2 ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K2 ["_localization"]
       11 LOADK                            R5 K3 ["Operations"]
       12 LOADK                            R6 K4 ["ImportName"]
       13 NAMECALL                         R3 R3 K5 ["getText"]
       15 CALL                             R3 3 1
       16 GETTABLEKS                       R4 R0 K2 ["_localization"]
       18 LOADK                            R6 K3 ["Operations"]
       19 LOADK                            R7 K6 ["ImportDescription"]
       20 NAMECALL                         R4 R4 K5 ["getText"]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K7 ["SelectionSettings"]
       27 GETTABLE                         R7 R2 R8
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K8 ["Transform"]
       31 GETTABLE                         R6 R7 R8
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R9 R9 K7 ["SelectionSettings"]
       35 GETTABLE                         R8 R2 R9
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K9 ["Size"]
       39 GETTABLE                         R7 R8 R9
       40 LOADB                            R8 1
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R0 K10 ["_region"]
       44 GETTABLEKS                       R5 R0 K11 ["_services"]
       46 GETTABLEKS                       R5 R5 K12 ["Terrain"]
       48 GETTABLEKS                       R7 R0 K10 ["_region"]
       50 NAMECALL                         R5 R5 K13 ["CopyRegion"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R0 K14 ["_terrainRegion"]
       55 GETUPVAL                         R5 4
       56 MOVE                             R6 R3
       57 MOVE                             R7 R4
       58 GETTABLEKS                       R8 R0 K11 ["_services"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R0 K15 ["_operation"]
       63 GETTABLEKS                       R5 R0 K15 ["_operation"]
       65 GETTABLEKS                       R5 R5 K16 ["Finished"]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R5 R5 K17 ["Connect"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R0 K18 ["_operationFinishedConnection"]
       74 GETTABLEKS                       R5 R0 K15 ["_operation"]
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K19 ["join"]
       79 DUPTABLE                         R8 K21 [{"Payload"}]
       80 SETTABLEKS                       R2 R8 K20 ["Payload"]
       82 MOVE                             R9 R1
       83 CALL                             R7 2 -1
       84 NAMECALL                         R5 R5 K22 ["start"]
       86 CALL                             R5 -1 0
       87 GETTABLEKS                       R5 R0 K23 ["OnOperationChanged"]
       89 NAMECALL                         R5 R5 K24 ["Fire"]
       91 CALL                             R5 1 0
       92 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnInternalsChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETIMPORT                        R1 K2 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setDisabledState"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnInternalsChanged"]
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["HeightmapSettings"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["DefaultMaterialSlot"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K3 ["PlacePersistent"]
       12 NAMECALL                         R0 R0 K4 ["clearGlobal"]
       14 CALL                             R0 4 0
       15 GETIMPORT                        R0 K7 [task.spawn]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["ensure"]
        7 GETTABLEKS                       R3 R1 K1 ["_pluginController"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["HeightmapSettings"]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K3 ["DefaultMaterialSlot"]
       15 CALL                             R2 3 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K4 ["getPayload"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       23 GETTABLE                         R1 R2 R3
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K5 ["_terrainMaterialPickerRequester"]
       27 DUPTABLE                         R4 K14 [{["allowAir"] = False, ["allowInvalidSource"] = False, ["allowWater"] = True, ["anchorWidgetUri"], ["invalidSourceSelected"] = False, ["selectedSlotIndex"]}]
       28 SETTABLEKS                       R0 R4 K11 ["anchorWidgetUri"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K3 ["DefaultMaterialSlot"]
       33 GETTABLE                         R5 R1 R6
       34 SETTABLEKS                       R5 R4 K13 ["selectedSlotIndex"]
       36 NAMECALL                         R2 R2 K15 ["request"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K4 ["_localization"]
        9 LOADK                            R4 K5 ["SelectionWarning"]
       10 LOADK                            R5 K6 ["NaN"]
       11 NAMECALL                         R2 R2 K7 ["getText"]
       13 CALL                             R2 3 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K8 ["X"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       20 JUMPIFLT                         R1 R2 ; [+15]
       22 GETTABLEKS                       R1 R0 K10 ["Y"]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       27 JUMPIFLT                         R1 R2 ; [+8]
       29 GETTABLEKS                       R1 R0 K11 ["Z"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K9 ["VoxelResolution"]
       34 JUMPIFNOTLT                      R1 R2 ; [+12]
       36 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K4 ["_localization"]
       41 LOADK                            R4 K5 ["SelectionWarning"]
       42 LOADK                            R5 K12 ["Size"]
       43 NAMECALL                         R2 R2 K7 ["getText"]
       45 CALL                             R2 3 -1
       46 RETURN                           R1 -1
       47 GETTABLEKS                       R3 R0 K8 ["X"]
       49 GETTABLEKS                       R4 R0 K10 ["Y"]
       51 MUL                              R2 R3 R4
       52 GETTABLEKS                       R3 R0 K11 ["Z"]
       54 MUL                              R1 R2 R3
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K13 ["MaxImportVolume"]
       58 JUMPIFNOTLT                      R2 R1 ; [+12]
       60 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K4 ["_localization"]
       65 LOADK                            R4 K14 ["ImportWarning"]
       66 LOADK                            R5 K15 ["Volume"]
       67 NAMECALL                         R2 R2 K7 ["getText"]
       69 CALL                             R2 3 -1
       70 RETURN                           R1 -1
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K16 ["_sessionUserSettings"]
       74 GETUPVAL                         R4 3
       75 GETTABLEKS                       R4 R4 K17 ["HeightmapSettings"]
       77 GETTABLE                         R2 R3 R4
       78 GETUPVAL                         R3 4
       79 GETTABLEKS                       R3 R3 K18 ["Heightmap"]
       81 GETTABLE                         R1 R2 R3
       82 GETTABLEKS                       R1 R1 K19 ["Image"]
       84 JUMPIF                           R1 ; [+4]
       85 GETIMPORT                        R2 K21 [Enum.PropertyStatus.Ok]
       87 LOADK                            R3 K22 [""]
       88 RETURN                           R2 2
       89 GETUPVAL                         R2 5
       90 MOVE                             R3 R1
       91 MOVE                             R4 R0
       92 CALL                             R2 2 2
       93 JUMPIF                           R2 ; [+22]
       94 GETIMPORT                        R4 K24 [Enum.PropertyStatus.Warning]
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K4 ["_localization"]
       99 LOADK                            R7 K14 ["ImportWarning"]
      100 LOADK                            R8 K25 ["AspectRatio"]
      101 DUPTABLE                         R9 K29 [{"ImageAspectRatio", "RegionWidth", "RegionHeight"}]
      102 SETTABLEKS                       R3 R9 K26 ["ImageAspectRatio"]
      104 GETTABLEKS                       R10 R0 K8 ["X"]
      106 SETTABLEKS                       R10 R9 K27 ["RegionWidth"]
      108 GETTABLEKS                       R10 R0 K11 ["Z"]
      110 SETTABLEKS                       R10 R9 K28 ["RegionHeight"]
      112 NAMECALL                         R5 R5 K7 ["getText"]
      114 CALL                             R5 4 -1
      115 RETURN                           R4 -1
      116 GETUPVAL                         R4 6
      117 MOVE                             R5 R1
      118 MOVE                             R6 R0
      119 CALL                             R4 2 1
      120 JUMPIF                           R4 ; [+28]
      121 GETIMPORT                        R5 K24 [Enum.PropertyStatus.Warning]
      123 GETUPVAL                         R6 1
      124 GETTABLEKS                       R6 R6 K4 ["_localization"]
      126 LOADK                            R8 K14 ["ImportWarning"]
      127 LOADK                            R9 K30 ["Scaling"]
      128 DUPTABLE                         R10 K33 [{"ImageWidth", "ImageHeight", "RegionWidth", "RegionHeight"}]
      129 GETTABLEKS                       R11 R1 K34 ["Width"]
      131 SETTABLEKS                       R11 R10 K31 ["ImageWidth"]
      133 GETTABLEKS                       R11 R1 K35 ["Height"]
      135 SETTABLEKS                       R11 R10 K32 ["ImageHeight"]
      137 GETTABLEKS                       R11 R0 K8 ["X"]
      139 SETTABLEKS                       R11 R10 K27 ["RegionWidth"]
      141 GETTABLEKS                       R11 R0 K11 ["Z"]
      143 SETTABLEKS                       R11 R10 K28 ["RegionHeight"]
      145 NAMECALL                         R6 R6 K7 ["getText"]
      147 CALL                             R6 4 -1
      148 RETURN                           R5 -1
      149 GETIMPORT                        R5 K21 [Enum.PropertyStatus.Ok]
      151 LOADK                            R6 K22 [""]
      152 RETURN                           R5 2

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       12 NAMECALL                         R3 R3 K2 ["destroy"]
       14 CALL                             R3 1 0
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R0 K1 ["_terrainMaterialPickerRequester"]
       18 NAMECALL                         R3 R0 K3 ["getPayload"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["SelectionSettings"]
       24 GETTABLE                         R5 R3 R6
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K5 ["Size"]
       28 GETTABLE                         R4 R5 R6
       29 LOADNIL                          R5
       30 GETUPVAL                         R6 3
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+38]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K6 ["new"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R0
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R0 K1 ["_terrainMaterialPickerRequester"]
       42 DUPTABLE                         R6 K16 [{["DataId"], ["UseDataIdValueOnly"] = True, ["ValueWhenNil"] = False, ["Height"] = 24, ["Layout"], ["Schema"]}]
       43 GETUPVAL                         R7 6
       44 GETTABLEKS                       R7 R7 K17 ["DefaultMaterialSlot"]
       46 SETTABLEKS                       R7 R6 K7 ["DataId"]
       48 GETIMPORT                        R7 K21 [Enum.FillDirection.Horizontal]
       50 SETTABLEKS                       R7 R6 K14 ["Layout"]
       52 DUPTABLE                         R7 K30 [{["AllowAir"] = False, ["AllowWater"] = True, ["OnClear"], ["OnActivated"], ["PickerId"] = "Import/DefaultMaterial", ["Type"] = "TerrainMaterialPicker"}]
       53 NEWCLOSURE                       R8 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 SETTABLEKS                       R8 R7 K24 ["OnClear"]
       60 NEWCLOSURE                       R8 P2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U6
       66 SETTABLEKS                       R8 R7 K25 ["OnActivated"]
       68 SETTABLEKS                       R7 R6 K15 ["Schema"]
       70 MOVE                             R5 R6
       71 NEWTABLE                         R6 2 0
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K4 ["SelectionSettings"]
       76 NEWTABLE                         R8 1 0
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R9 R9 K5 ["Size"]
       81 DUPTABLE                         R10 K32 [{"Validate"}]
       82 NEWCLOSURE                       R11 P3
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          UPVAL U12
       90 SETTABLEKS                       R11 R10 K31 ["Validate"]
       92 SETTABLE                         R10 R8 R9
       93 SETTABLE                         R8 R6 R7
       94 GETUPVAL                         R7 1
       95 GETTABLEKS                       R7 R7 K33 ["HeightmapSettings"]
       97 NEWTABLE                         R8 2 0
       99 GETUPVAL                         R9 6
      100 GETTABLEKS                       R9 R9 K34 ["DefaultMaterial"]
      102 SETTABLE                         R5 R8 R9
      103 GETUPVAL                         R9 6
      104 GETTABLEKS                       R9 R9 K35 ["Import"]
      106 DUPTABLE                         R10 K39 [{["Hidden"] = False, ["Label"] = "", ["Schema"]}]
      107 DUPTABLE                         R11 K41 [{"OnClick"}]
      108 NEWCLOSURE                       R12 P4
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R12 R11 K40 ["OnClick"]
      112 SETTABLEKS                       R11 R10 K15 ["Schema"]
      114 SETTABLE                         R10 R8 R9
      115 SETTABLE                         R8 R6 R7
      116 SETTABLEKS                       R6 R0 K42 ["_overrides"]
      118 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+93]
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["HeightmapSettings"]
       12 GETTABLE                         R3 R2 R4
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["SelectionSettings"]
       16 GETTABLE                         R5 R2 R6
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Size"]
       20 GETTABLE                         R4 R5 R6
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K5 ["DefaultMaterialSlot"]
       24 GETTABLE                         R5 R3 R6
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K6 ["Heightmap"]
       28 GETTABLE                         R7 R3 R8
       29 GETTABLEKS                       R7 R7 K7 ["Image"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 LOADB                            R7 0
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R9 R5
       38 GETIMPORT                        R8 K9 [typeof]
       40 CALL                             R8 1 1
       41 JUMPIFNOTEQKS                    R8 K10 ["number"] ; [+10]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K11 ["isSlotValid"]
       46 GETTABLEKS                       R8 R0 K12 ["_services"]
       48 GETTABLEKS                       R8 R8 K13 ["Terrain"]
       50 MOVE                             R9 R5
       51 CALL                             R7 2 1
       52 MOVE                             R8 R1
       53 JUMPIF                           R8 ; [+44]
       54 NOT                              R8 R6
       55 JUMPIF                           R8 ; [+42]
       56 LOADB                            R9 0
       57 GETTABLEKS                       R12 R4 K14 ["X"]
       59 GETTABLEKS                       R13 R4 K15 ["Y"]
       61 MUL                              R11 R12 R13
       62 GETTABLEKS                       R12 R4 K16 ["Z"]
       64 MUL                              R10 R11 R12
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R11 R11 K17 ["MaxImportVolume"]
       68 JUMPIFNOTLE                      R10 R11 ; [+26]
       70 LOADB                            R9 0
       71 GETTABLEKS                       R10 R4 K14 ["X"]
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       76 JUMPIFNOTLE                      R11 R10 ; [+18]
       78 LOADB                            R9 0
       79 GETTABLEKS                       R10 R4 K15 ["Y"]
       81 GETUPVAL                         R11 5
       82 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       84 JUMPIFNOTLE                      R11 R10 ; [+10]
       86 GETTABLEKS                       R10 R4 K16 ["Z"]
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K18 ["VoxelResolution"]
       91 JUMPIFLE                         R11 R10 ; [+2]
       93 LOADB                            R9 0 +1
       94 LOADB                            R9 1
       95 NOT                              R8 R9
       96 JUMPIF                           R8 ; [+1]
       97 NOT                              R8 R7
       98 MOVE                             R1 R8
       99 GETTABLEKS                       R4 R0 K19 ["_overrides"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
      104 GETTABLE                         R3 R4 R5
      105 GETUPVAL                         R4 3
      106 GETTABLEKS                       R4 R4 K20 ["Import"]
      108 GETTABLE                         R2 R3 R4
      109 GETTABLEKS                       R2 R2 K21 ["Disabled"]
      111 JUMPIFEQ                         R2 R1 ; [+18]
      113 GETTABLEKS                       R4 R0 K19 ["_overrides"]
      115 GETUPVAL                         R5 1
      116 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
      118 GETTABLE                         R3 R4 R5
      119 GETUPVAL                         R4 3
      120 GETTABLEKS                       R4 R4 K20 ["Import"]
      122 GETTABLE                         R2 R3 R4
      123 SETTABLEKS                       R1 R2 K21 ["Disabled"]
      125 GETTABLEKS                       R2 R0 K22 ["OnInternalsChanged"]
      127 NAMECALL                         R2 R2 K23 ["Fire"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ensure"]
        6 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["DefaultMaterialSlot"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K4 ["activate"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 0
       21 CALL                             R1 0 1
       22 JUMPIF                           R1 ; [+79]
       23 NAMECALL                         R1 R0 K5 ["getPayload"]
       25 CALL                             R1 1 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K2 ["HeightmapSettings"]
       29 GETTABLE                         R2 R1 R3
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K6 ["SelectionSettings"]
       33 GETTABLE                         R4 R1 R5
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K7 ["Size"]
       37 GETTABLE                         R3 R4 R5
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K8 ["Heightmap"]
       41 GETTABLE                         R5 R2 R6
       42 GETTABLEKS                       R5 R5 K9 ["Image"]
       44 JUMPIFNOTEQKNIL                  R5 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 GETTABLEKS                       R7 R0 K10 ["_overrides"]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K2 ["HeightmapSettings"]
       53 GETTABLE                         R6 R7 R8
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R7 R7 K11 ["Import"]
       57 GETTABLE                         R5 R6 R7
       58 NOT                              R6 R4
       59 JUMPIF                           R6 ; [+40]
       60 LOADB                            R7 0
       61 GETTABLEKS                       R10 R3 K12 ["X"]
       63 GETTABLEKS                       R11 R3 K13 ["Y"]
       65 MUL                              R9 R10 R11
       66 GETTABLEKS                       R10 R3 K14 ["Z"]
       68 MUL                              R8 R9 R10
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K15 ["MaxImportVolume"]
       72 JUMPIFNOTLE                      R8 R9 ; [+26]
       74 LOADB                            R7 0
       75 GETTABLEKS                       R8 R3 K12 ["X"]
       77 GETUPVAL                         R9 6
       78 GETTABLEKS                       R9 R9 K16 ["VoxelResolution"]
       80 JUMPIFNOTLE                      R9 R8 ; [+18]
       82 LOADB                            R7 0
       83 GETTABLEKS                       R8 R3 K13 ["Y"]
       85 GETUPVAL                         R9 6
       86 GETTABLEKS                       R9 R9 K16 ["VoxelResolution"]
       88 JUMPIFNOTLE                      R9 R8 ; [+10]
       90 GETTABLEKS                       R8 R3 K14 ["Z"]
       92 GETUPVAL                         R9 6
       93 GETTABLEKS                       R9 R9 K16 ["VoxelResolution"]
       95 JUMPIFLE                         R9 R8 ; [+2]
       97 LOADB                            R7 0 +1
       98 LOADB                            R7 1
       99 NOT                              R6 R7
      100 SETTABLEKS                       R6 R5 K17 ["Disabled"]
      102 GETTABLEKS                       R1 R0 K18 ["OnGizmoChanged"]
      104 NAMECALL                         R1 R1 K19 ["Fire"]
      106 CALL                             R1 1 0
      107 GETTABLEKS                       R1 R0 K20 ["_analytics"]
      109 LOADK                            R3 K21 ["Activated"]
      110 GETUPVAL                         R4 7
      111 GETTABLEKS                       R4 R4 K11 ["Import"]
      113 NAMECALL                         R1 R1 K22 ["report"]
      115 CALL                             R1 3 0
      116 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_terrainMaterialPickerRequester"]
        5 NAMECALL                         R1 R1 K1 ["cancel"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["deactivate"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
       23 GETTABLEKS                       R3 R0 K10 ["Src"]
       25 GETTABLEKS                       R3 R3 K11 ["Util"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["ConvertTransformToRegion"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R3 K13 ["hasCorrectAspectRatio"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R3 K14 ["hasCorrectScaling"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R3 K15 ["TerrainMaterialPickerRequester"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R3 K16 ["TerrainVoxelChannels"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R3 K17 ["DefaultTerrainMaterialSlot"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R11 R11 K11 ["Util"]
       63 GETTABLEKS                       R11 R11 K18 ["Operations"]
       65 GETTABLEKS                       R11 R11 K19 ["ImportOperation"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R12 R12 K11 ["Util"]
       74 GETTABLEKS                       R12 R12 K20 ["isVectorNaNOrInf"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R13 R13 K21 ["Resources"]
       83 GETTABLEKS                       R13 R13 K22 ["Constants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R14 R14 K23 ["Types"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R13 K24 ["Category"]
       95 GETTABLEKS                       R15 R13 K25 ["Gizmo"]
       97 GETTABLEKS                       R16 R13 K26 ["HeightmapSettings"]
       99 GETTABLEKS                       R17 R13 K27 ["SelectionSettings"]
      101 GETTABLEKS                       R18 R13 K28 ["Storage"]
      103 GETTABLEKS                       R19 R13 K29 ["Tab"]
      105 GETTABLEKS                       R20 R13 K30 ["Tool"]
      107 GETIMPORT                        R21 K5 [require]
      109 GETTABLEKS                       R22 R0 K10 ["Src"]
      111 GETTABLEKS                       R22 R22 K31 ["Flags"]
      113 GETTABLEKS                       R22 R22 K32 ["getFFlagEnableTerrainPalette"]
      115 CALL                             R21 1 1
      116 NEWTABLE                         R22 0 2
      118 DUPTABLE                         R23 K35 [{"Defaults", "Id"}]
      119 NEWTABLE                         R24 0 0
      121 SETTABLEKS                       R24 R23 K33 ["Defaults"]
      123 GETTABLEKS                       R24 R14 K27 ["SelectionSettings"]
      125 SETTABLEKS                       R24 R23 K34 ["Id"]
      127 DUPTABLE                         R24 K35 [{"Defaults", "Id"}]
      128 NEWTABLE                         R25 4 0
      130 GETTABLEKS                       R26 R16 K36 ["Colormap"]
      132 DUPTABLE                         R27 K39 [{["Error"] = ""}]
      133 SETTABLE                         R27 R25 R26
      134 GETTABLEKS                       R26 R16 K40 ["DefaultMaterial"]
      136 GETIMPORT                        R27 K44 [Enum.Material.Grass]
      138 SETTABLE                         R27 R25 R26
      139 GETTABLEKS                       R26 R16 K45 ["Heightmap"]
      141 DUPTABLE                         R27 K39 [{["Error"] = ""}]
      142 SETTABLE                         R27 R25 R26
      143 GETTABLEKS                       R26 R16 K46 ["Import"]
      145 LOADB                            R27 1
      146 SETTABLE                         R27 R25 R26
      147 SETTABLEKS                       R25 R24 K33 ["Defaults"]
      149 GETTABLEKS                       R25 R14 K26 ["HeightmapSettings"]
      151 SETTABLEKS                       R25 R24 K34 ["Id"]
      153 SETLIST                          R22 R23 2 [1]
      155 NEWTABLE                         R23 0 1
      157 DUPTABLE                         R24 K48 [{"Id", "Schema"}]
      158 GETTABLEKS                       R25 R15 K49 ["Region"]
      160 SETTABLEKS                       R25 R24 K34 ["Id"]
      162 DUPTABLE                         R25 K54 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
      163 GETTABLEKS                       R26 R15 K49 ["Region"]
      165 SETTABLEKS                       R26 R25 K50 ["Type"]
      167 SETTABLEKS                       R25 R24 K47 ["Schema"]
      169 SETLIST                          R23 R24 1 [1]
      171 GETTABLEKS                       R26 R20 K46 ["Import"]
      173 GETTABLEKS                       R27 R19 K55 ["Create"]
      175 MOVE                             R28 R22
      176 MOVE                             R29 R23
      177 NAMECALL                         R24 R2 K56 ["new"]
      179 CALL                             R24 5 1
      180 DUPCLOSURE                       R25 K57 [PROTO_0]
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R16
      183 DUPCLOSURE                       R26 K58 [PROTO_1]
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R16
      188 DUPCLOSURE                       R27 K59 [PROTO_2]
      189 CAPTURE                          VAL R12
      190 DUPCLOSURE                       R28 K60 [PROTO_4]
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R1
      197 SETTABLEKS                       R28 R24 K61 ["startOperation"]
      199 DUPCLOSURE                       R28 K62 [PROTO_12]
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R6
      213 SETTABLEKS                       R28 R24 K63 ["init"]
      215 DUPCLOSURE                       R28 K64 [PROTO_13]
      216 SETTABLEKS                       R28 R24 K65 ["operation"]
      218 DUPCLOSURE                       R28 K66 [PROTO_14]
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R12
      225 SETTABLEKS                       R28 R24 K67 ["setDisabledState"]
      227 DUPCLOSURE                       R28 K68 [PROTO_15]
      228 CAPTURE                          VAL R2
      229 SETTABLEKS                       R28 R24 K69 ["saveForm"]
      231 DUPCLOSURE                       R28 K70 [PROTO_16]
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R12
      239 CAPTURE                          VAL R20
      240 SETTABLEKS                       R28 R24 K71 ["activate"]
      242 DUPCLOSURE                       R28 K72 [PROTO_17]
      243 CAPTURE                          VAL R2
      244 SETTABLEKS                       R28 R24 K73 ["deactivate"]
      246 RETURN                           R24 1
