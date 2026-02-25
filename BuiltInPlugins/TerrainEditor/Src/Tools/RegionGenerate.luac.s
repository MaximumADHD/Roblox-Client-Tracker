PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["finishOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["startOperation"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NAMECALL                         R2 R0 K1 ["getPayload"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K2 ["_localization"]
       11 LOADK                            R5 K3 ["Operations"]
       12 LOADK                            R6 K4 ["GenerateName"]
       13 NAMECALL                         R3 R3 K5 ["getText"]
       15 CALL                             R3 3 1
       16 GETTABLEKS                       R4 R0 K2 ["_localization"]
       18 LOADK                            R6 K3 ["Operations"]
       19 LOADK                            R7 K6 ["GenerateDescription"]
       20 NAMECALL                         R4 R4 K5 ["getText"]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K7 ["SelectionSettings"]
       27 GETTABLE                         R7 R2 R8
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R8 R9 K8 ["Transform"]
       31 GETTABLE                         R6 R7 R8
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R9 R10 K7 ["SelectionSettings"]
       35 GETTABLE                         R8 R2 R9
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R9 R10 K9 ["Size"]
       39 GETTABLE                         R7 R8 R9
       40 LOADB                            R8 1
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R0 K10 ["_region"]
       44 GETTABLEKS                       R6 R0 K11 ["_services"]
       46 GETTABLEKS                       R5 R6 K12 ["Terrain"]
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
       63 GETTABLEKS                       R6 R0 K15 ["_operation"]
       65 GETTABLEKS                       R5 R6 K16 ["Finished"]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R5 R5 K17 ["Connect"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R0 K18 ["_operationFinishedConnection"]
       74 GETTABLEKS                       R5 R0 K15 ["_operation"]
       76 GETUPVAL                         R8 5
       77 GETTABLEKS                       R7 R8 K19 ["join"]
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
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R5 R0 K1 ["_overrides"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["BiomeSettings"]
        8 GETTABLE                         R4 R5 R6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["Generate"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["Disabled"]
       15 JUMPIFEQ                         R2 R1 ; [+18]
       17 GETTABLEKS                       R4 R0 K1 ["_overrides"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K2 ["BiomeSettings"]
       22 GETTABLE                         R3 R4 R5
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K3 ["Generate"]
       26 GETTABLE                         R2 R3 R4
       27 SETTABLEKS                       R1 R2 K4 ["Disabled"]
       29 GETTABLEKS                       R2 R0 K5 ["OnInternalsChanged"]
       31 NAMECALL                         R2 R2 K6 ["Fire"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["_localization"]
        9 LOADK                            R4 K5 ["SelectionWarning"]
       10 LOADK                            R5 K6 ["NaN"]
       11 NAMECALL                         R2 R2 K7 ["getText"]
       13 CALL                             R2 3 -1
       14 RETURN                           R1 -1
       15 GETTABLEKS                       R1 R0 K8 ["X"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K9 ["VoxelResolution"]
       20 JUMPIFLT                         R1 R2 ; [+15]
       22 GETTABLEKS                       R1 R0 K10 ["Y"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K9 ["VoxelResolution"]
       27 JUMPIFLT                         R1 R2 ; [+8]
       29 GETTABLEKS                       R1 R0 K11 ["Z"]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K9 ["VoxelResolution"]
       34 JUMPIFNOTLT                      R1 R2 ; [+12]
       36 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K4 ["_localization"]
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
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R2 R3 K13 ["MaxImportVolume"]
       58 JUMPIFNOTLT                      R2 R1 ; [+12]
       60 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R2 R3 K4 ["_localization"]
       65 LOADK                            R4 K14 ["ImportWarning"]
       66 LOADK                            R5 K15 ["Volume"]
       67 NAMECALL                         R2 R2 K7 ["getText"]
       69 CALL                             R2 3 -1
       70 RETURN                           R1 -1
       71 GETIMPORT                        R1 K17 [Enum.PropertyStatus.Ok]
       73 LOADK                            R2 K18 [""]
       74 RETURN                           R1 2

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["startOperation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 NEWTABLE                         R3 2 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["SelectionSettings"]
       12 NEWTABLE                         R5 1 0
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K2 ["Size"]
       17 DUPTABLE                         R7 K4 [{"Validate"}]
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R8 R7 K3 ["Validate"]
       24 SETTABLE                         R7 R5 R6
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K5 ["BiomeSettings"]
       29 NEWTABLE                         R5 1 0
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K6 ["Generate"]
       34 DUPTABLE                         R7 K11 [{"Hidden", "Label", "Schema", "Value"}]
       35 LOADB                            R8 0
       36 SETTABLEKS                       R8 R7 K7 ["Hidden"]
       38 LOADK                            R8 K12 [""]
       39 SETTABLEKS                       R8 R7 K8 ["Label"]
       41 DUPTABLE                         R8 K14 [{"OnClick"}]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R9 R8 K13 ["OnClick"]
       46 SETTABLEKS                       R8 R7 K9 ["Schema"]
       48 LOADB                            R8 1
       49 SETTABLEKS                       R8 R7 K10 ["Value"]
       51 SETTABLE                         R7 R5 R6
       52 SETTABLE                         R5 R3 R4
       53 SETTABLEKS                       R3 R0 K15 ["_overrides"]
       55 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["saveForm"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["Generate"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["BaseTool"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K10 ["Src"]
       25 GETTABLEKS                       R3 R4 K11 ["Util"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["ConvertTransformToRegion"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Resources"]
       38 GETTABLEKS                       R6 R7 K14 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R10 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R10 K11 ["Util"]
       47 GETTABLEKS                       R8 R9 K15 ["Operations"]
       49 GETTABLEKS                       R7 R8 K16 ["GenerateOperation"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Src"]
       56 GETTABLEKS                       R9 R10 K11 ["Util"]
       58 GETTABLEKS                       R8 R9 K17 ["isVectorNaNOrInf"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R10 R0 K10 ["Src"]
       65 GETTABLEKS                       R9 R10 K18 ["Types"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R8 K19 ["Biome"]
       70 GETTABLEKS                       R10 R8 K20 ["BiomeSettings"]
       72 GETTABLEKS                       R11 R8 K21 ["Category"]
       74 GETTABLEKS                       R12 R8 K22 ["Gizmo"]
       76 GETTABLEKS                       R13 R8 K23 ["SelectionSettings"]
       78 GETTABLEKS                       R14 R8 K24 ["Tab"]
       80 GETTABLEKS                       R15 R8 K25 ["Tool"]
       82 NEWTABLE                         R16 0 2
       84 DUPTABLE                         R17 K28 [{"Defaults", "Id"}]
       85 NEWTABLE                         R18 0 0
       87 SETTABLEKS                       R18 R17 K26 ["Defaults"]
       89 GETTABLEKS                       R18 R11 K23 ["SelectionSettings"]
       91 SETTABLEKS                       R18 R17 K27 ["Id"]
       93 DUPTABLE                         R18 K28 [{"Defaults", "Id"}]
       94 NEWTABLE                         R19 8 0
       96 GETTABLEKS                       R20 R10 K29 ["Biomes"]
       98 NEWTABLE                         R21 4 0
      100 GETTABLEKS                       R22 R9 K30 ["Mountains"]
      102 LOADB                            R23 1
      103 SETTABLE                         R23 R21 R22
      104 GETTABLEKS                       R22 R9 K31 ["Hills"]
      106 LOADB                            R23 1
      107 SETTABLE                         R23 R21 R22
      108 GETTABLEKS                       R22 R9 K32 ["Plains"]
      110 LOADB                            R23 1
      111 SETTABLE                         R23 R21 R22
      112 SETTABLE                         R21 R19 R20
      113 GETTABLEKS                       R20 R10 K33 ["BiomeBlending"]
      115 LOADK                            R21 K34 [0.25]
      116 SETTABLE                         R21 R19 R20
      117 GETTABLEKS                       R20 R10 K35 ["BiomeSize"]
      119 LOADN                            R21 100
      120 SETTABLE                         R21 R19 R20
      121 GETTABLEKS                       R20 R10 K36 ["Caves"]
      123 LOADB                            R21 0
      124 SETTABLE                         R21 R19 R20
      125 GETTABLEKS                       R20 R10 K37 ["Seed"]
      127 LOADK                            R21 K38 [618033988]
      128 SETTABLE                         R21 R19 R20
      129 SETTABLEKS                       R19 R18 K26 ["Defaults"]
      131 GETTABLEKS                       R19 R11 K20 ["BiomeSettings"]
      133 SETTABLEKS                       R19 R18 K27 ["Id"]
      135 SETLIST                          R16 R17 2 [1]
      137 NEWTABLE                         R17 0 1
      139 DUPTABLE                         R18 K40 [{"Id", "Schema"}]
      140 GETTABLEKS                       R19 R12 K41 ["Region"]
      142 SETTABLEKS                       R19 R18 K27 ["Id"]
      144 DUPTABLE                         R19 K45 [{"Type", "Wireframe", "Rotation"}]
      145 GETTABLEKS                       R20 R12 K41 ["Region"]
      147 SETTABLEKS                       R20 R19 K42 ["Type"]
      149 LOADB                            R20 0
      150 SETTABLEKS                       R20 R19 K43 ["Wireframe"]
      152 LOADB                            R20 0
      153 SETTABLEKS                       R20 R19 K44 ["Rotation"]
      155 SETTABLEKS                       R19 R18 K39 ["Schema"]
      157 SETLIST                          R17 R18 1 [1]
      159 GETTABLEKS                       R20 R15 K46 ["Generate"]
      161 GETTABLEKS                       R21 R14 K47 ["Create"]
      163 MOVE                             R22 R16
      164 MOVE                             R23 R17
      165 NAMECALL                         R18 R2 K48 ["new"]
      167 CALL                             R18 5 1
      168 DUPCLOSURE                       R19 K49 [PROTO_1]
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R1
      175 SETTABLEKS                       R19 R18 K50 ["startOperation"]
      177 DUPCLOSURE                       R19 K51 [PROTO_2]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R10
      180 SETTABLEKS                       R19 R18 K52 ["setDisabledState"]
      182 DUPCLOSURE                       R19 K53 [PROTO_5]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R10
      189 SETTABLEKS                       R19 R18 K54 ["init"]
      191 DUPCLOSURE                       R19 K55 [PROTO_6]
      192 CAPTURE                          VAL R2
      193 SETTABLEKS                       R19 R18 K56 ["saveForm"]
      195 DUPCLOSURE                       R19 K57 [PROTO_7]
      196 SETTABLEKS                       R19 R18 K58 ["operation"]
      198 DUPCLOSURE                       R19 K59 [PROTO_8]
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R15
      201 SETTABLEKS                       R19 R18 K60 ["activate"]
      203 RETURN                           R18 1
