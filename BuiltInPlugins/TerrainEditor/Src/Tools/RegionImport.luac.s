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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NAMECALL                         R3 R0 K1 ["getPayload"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["SelectionSettings"]
       13 GETTABLE                         R5 R3 R6
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["Size"]
       17 GETTABLE                         R4 R5 R6
       18 NEWTABLE                         R5 2 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K2 ["SelectionSettings"]
       23 NEWTABLE                         R7 1 0
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K3 ["Size"]
       28 DUPTABLE                         R9 K5 [{"Validate"}]
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R10 R9 K4 ["Validate"]
       39 SETTABLE                         R9 R7 R8
       40 SETTABLE                         R7 R5 R6
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K6 ["HeightmapSettings"]
       44 NEWTABLE                         R7 1 0
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K7 ["Import"]
       49 DUPTABLE                         R9 K13 [{["Hidden"] = False, ["Label"] = "", ["Schema"]}]
       50 DUPTABLE                         R10 K15 [{"OnClick"}]
       51 NEWCLOSURE                       R11 P1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R11 R10 K14 ["OnClick"]
       55 SETTABLEKS                       R10 R9 K12 ["Schema"]
       57 SETTABLE                         R9 R7 R8
       58 SETTABLE                         R7 R5 R6
       59 SETTABLEKS                       R5 R0 K16 ["_overrides"]
       61 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["_overrides"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["Import"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["HeightmapSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["Import"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["setDisabledState"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NAMECALL                         R1 R0 K1 ["getPayload"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["SelectionSettings"]
       11 GETTABLE                         R3 R1 R4
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["Size"]
       15 GETTABLE                         R2 R3 R4
       16 GETTABLEKS                       R5 R0 K4 ["_overrides"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["HeightmapSettings"]
       21 GETTABLE                         R4 R5 R6
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K6 ["Import"]
       25 GETTABLE                         R3 R4 R5
       26 GETTABLEKS                       R7 R0 K7 ["_sessionUserSettings"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K5 ["HeightmapSettings"]
       31 GETTABLE                         R6 R7 R8
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K8 ["Heightmap"]
       35 GETTABLE                         R5 R6 R7
       36 GETTABLEKS                       R5 R5 K9 ["Image"]
       38 NOT                              R4 R5
       39 JUMPIF                           R4 ; [+39]
       40 LOADB                            R4 1
       41 GETTABLEKS                       R7 R2 K10 ["X"]
       43 GETTABLEKS                       R8 R2 K11 ["Y"]
       45 MUL                              R6 R7 R8
       46 GETTABLEKS                       R7 R2 K12 ["Z"]
       48 MUL                              R5 R6 R7
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K13 ["MaxImportVolume"]
       52 JUMPIFLT                         R6 R5 ; [+26]
       54 LOADB                            R4 1
       55 GETTABLEKS                       R5 R2 K10 ["X"]
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K14 ["VoxelResolution"]
       60 JUMPIFLT                         R5 R6 ; [+18]
       62 LOADB                            R4 1
       63 GETTABLEKS                       R5 R2 K11 ["Y"]
       65 GETUPVAL                         R6 4
       66 GETTABLEKS                       R6 R6 K14 ["VoxelResolution"]
       68 JUMPIFLT                         R5 R6 ; [+10]
       70 GETTABLEKS                       R5 R2 K12 ["Z"]
       72 GETUPVAL                         R6 4
       73 GETTABLEKS                       R6 R6 K14 ["VoxelResolution"]
       75 JUMPIFLT                         R5 R6 ; [+2]
       77 LOADB                            R4 0 +1
       78 LOADB                            R4 1
       79 SETTABLEKS                       R4 R3 K15 ["Disabled"]
       81 GETTABLEKS                       R3 R0 K16 ["OnGizmoChanged"]
       83 NAMECALL                         R3 R3 K17 ["Fire"]
       85 CALL                             R3 1 0
       86 GETTABLEKS                       R3 R0 K18 ["_analytics"]
       88 LOADK                            R5 K19 ["Activated"]
       89 GETUPVAL                         R6 5
       90 GETTABLEKS                       R6 R6 K6 ["Import"]
       92 NAMECALL                         R3 R3 K20 ["report"]
       94 CALL                             R3 3 0
       95 RETURN                           R0 0

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
       44 GETTABLEKS                       R8 R0 K10 ["Src"]
       46 GETTABLEKS                       R8 R8 K11 ["Util"]
       48 GETTABLEKS                       R8 R8 K15 ["Operations"]
       50 GETTABLEKS                       R8 R8 K16 ["ImportOperation"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Src"]
       57 GETTABLEKS                       R9 R9 K11 ["Util"]
       59 GETTABLEKS                       R9 R9 K17 ["isVectorNaNOrInf"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Src"]
       66 GETTABLEKS                       R10 R10 K18 ["Resources"]
       68 GETTABLEKS                       R10 R10 K19 ["Constants"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K10 ["Src"]
       75 GETTABLEKS                       R11 R11 K20 ["Types"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R10 K21 ["Category"]
       80 GETTABLEKS                       R12 R10 K22 ["Gizmo"]
       82 GETTABLEKS                       R13 R10 K23 ["HeightmapSettings"]
       84 GETTABLEKS                       R14 R10 K24 ["SelectionSettings"]
       86 GETTABLEKS                       R15 R10 K25 ["Tab"]
       88 GETTABLEKS                       R16 R10 K26 ["Tool"]
       90 NEWTABLE                         R17 0 2
       92 DUPTABLE                         R18 K29 [{"Defaults", "Id"}]
       93 NEWTABLE                         R19 0 0
       95 SETTABLEKS                       R19 R18 K27 ["Defaults"]
       97 GETTABLEKS                       R19 R11 K24 ["SelectionSettings"]
       99 SETTABLEKS                       R19 R18 K28 ["Id"]
      101 DUPTABLE                         R19 K29 [{"Defaults", "Id"}]
      102 NEWTABLE                         R20 4 0
      104 GETTABLEKS                       R21 R13 K30 ["Colormap"]
      106 DUPTABLE                         R22 K33 [{["Error"] = ""}]
      107 SETTABLE                         R22 R20 R21
      108 GETTABLEKS                       R21 R13 K34 ["DefaultMaterial"]
      110 GETIMPORT                        R22 K38 [Enum.Material.Grass]
      112 SETTABLE                         R22 R20 R21
      113 GETTABLEKS                       R21 R13 K39 ["Heightmap"]
      115 DUPTABLE                         R22 K33 [{["Error"] = ""}]
      116 SETTABLE                         R22 R20 R21
      117 GETTABLEKS                       R21 R13 K40 ["Import"]
      119 LOADB                            R22 1
      120 SETTABLE                         R22 R20 R21
      121 SETTABLEKS                       R20 R19 K27 ["Defaults"]
      123 GETTABLEKS                       R20 R11 K23 ["HeightmapSettings"]
      125 SETTABLEKS                       R20 R19 K28 ["Id"]
      127 SETLIST                          R17 R18 2 [1]
      129 NEWTABLE                         R18 0 1
      131 DUPTABLE                         R19 K42 [{"Id", "Schema"}]
      132 GETTABLEKS                       R20 R12 K43 ["Region"]
      134 SETTABLEKS                       R20 R19 K28 ["Id"]
      136 DUPTABLE                         R20 K48 [{["Type"], ["Wireframe"] = False, ["Rotation"] = False}]
      137 GETTABLEKS                       R21 R12 K43 ["Region"]
      139 SETTABLEKS                       R21 R20 K44 ["Type"]
      141 SETTABLEKS                       R20 R19 K41 ["Schema"]
      143 SETLIST                          R18 R19 1 [1]
      145 GETTABLEKS                       R21 R16 K40 ["Import"]
      147 GETTABLEKS                       R22 R15 K49 ["Create"]
      149 MOVE                             R23 R17
      150 MOVE                             R24 R18
      151 NAMECALL                         R19 R2 K50 ["new"]
      153 CALL                             R19 5 1
      154 DUPCLOSURE                       R20 K51 [PROTO_1]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R1
      161 SETTABLEKS                       R20 R19 K52 ["startOperation"]
      163 DUPCLOSURE                       R20 K53 [PROTO_4]
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R6
      172 SETTABLEKS                       R20 R19 K54 ["init"]
      174 DUPCLOSURE                       R20 K55 [PROTO_5]
      175 SETTABLEKS                       R20 R19 K56 ["operation"]
      177 DUPCLOSURE                       R20 K57 [PROTO_6]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R13
      180 SETTABLEKS                       R20 R19 K58 ["setDisabledState"]
      182 DUPCLOSURE                       R20 K59 [PROTO_7]
      183 CAPTURE                          VAL R2
      184 SETTABLEKS                       R20 R19 K60 ["saveForm"]
      186 DUPCLOSURE                       R20 K61 [PROTO_8]
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R16
      193 SETTABLEKS                       R20 R19 K62 ["activate"]
      195 RETURN                           R19 1
