PROTO_0:
        0 LOADB                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 OR                               R1 R1 R6
        6 FORGLOOP                         R2 2 ; [-2]
        8 JUMPIF                           R1 ; [+9]
        9 GETIMPORT                        R2 K3 [Enum.PropertyStatus.Error]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K4 ["BiomeWarning"]
       13 LOADK                            R6 K5 ["NoBiomesSelected"]
       14 NAMECALL                         R3 R3 K6 ["getText"]
       16 CALL                             R3 3 -1
       17 RETURN                           R2 -1
       18 GETIMPORT                        R2 K8 [Enum.PropertyStatus.Ok]
       20 LOADK                            R3 K9 [""]
       21 RETURN                           R2 2

PROTO_1:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+9]
        6 GETIMPORT                        R2 K5 [Enum.PropertyStatus.Error]
        8 GETUPVAL                         R3 0
        9 LOADK                            R5 K6 ["NumberWarning"]
       10 LOADK                            R6 K7 ["InvalidNumber"]
       11 NAMECALL                         R3 R3 K8 ["getText"]
       13 CALL                             R3 3 -1
       14 RETURN                           R2 -1
       15 LOADN                            R2 0
       16 JUMPIFNOTLE                      R1 R2 ; [+10]
       18 GETIMPORT                        R2 K5 [Enum.PropertyStatus.Error]
       20 GETUPVAL                         R3 0
       21 LOADK                            R5 K6 ["NumberWarning"]
       22 LOADK                            R6 K9 ["Minimum"]
       23 NAMECALL                         R3 R3 K8 ["getText"]
       25 CALL                             R3 3 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K11 [Enum.PropertyStatus.Ok]
       29 LOADK                            R3 K12 [""]
       30 RETURN                           R2 2

PROTO_2:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+9]
        6 GETIMPORT                        R2 K5 [Enum.PropertyStatus.Error]
        8 GETUPVAL                         R3 0
        9 LOADK                            R5 K6 ["NumberWarning"]
       10 LOADK                            R6 K7 ["InvalidNumber"]
       11 NAMECALL                         R3 R3 K8 ["getText"]
       13 CALL                             R3 3 -1
       14 RETURN                           R2 -1
       15 GETIMPORT                        R2 K10 [Enum.PropertyStatus.Ok]
       17 LOADK                            R3 K11 [""]
       18 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 NEWTABLE                         R5 0 0
        4 GETUPVAL                         R6 0
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 LOADK                            R13 K1 ["Biomes"]
        9 MOVE                             R14 R9
       10 NAMECALL                         R11 R4 K2 ["getText"]
       12 CALL                             R11 3 1
       13 SETTABLE                         R11 R5 R9
       14 FORGLOOP                         R6 2 ; [-7]
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R0
       18 NEWTABLE                         R8 0 6
       20 DUPTABLE                         R9 K6 [{"Id", "Schema", "Validate"}]
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R10 R10 K1 ["Biomes"]
       24 SETTABLEKS                       R10 R9 K3 ["Id"]
       26 DUPTABLE                         R10 K10 [{"Items", "Labels", "Type"}]
       27 GETUPVAL                         R11 0
       28 SETTABLEKS                       R11 R10 K7 ["Items"]
       30 SETTABLEKS                       R5 R10 K8 ["Labels"]
       32 LOADK                            R11 K11 ["MultiSelection"]
       33 SETTABLEKS                       R11 R10 K9 ["Type"]
       35 SETTABLEKS                       R10 R9 K4 ["Schema"]
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R10 R9 K5 ["Validate"]
       41 DUPTABLE                         R10 K12 [{"Id", "Schema"}]
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K13 ["BiomeBlending"]
       45 SETTABLEKS                       R11 R10 K3 ["Id"]
       47 DUPTABLE                         R11 K18 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
       48 LOADK                            R12 K19 ["Slider"]
       49 SETTABLEKS                       R12 R11 K9 ["Type"]
       51 LOADN                            R12 0
       52 SETTABLEKS                       R12 R11 K14 ["Min"]
       54 LOADN                            R12 1
       55 SETTABLEKS                       R12 R11 K15 ["Max"]
       57 LOADB                            R12 1
       58 SETTABLEKS                       R12 R11 K16 ["ShowInput"]
       60 LOADK                            R12 K20 [0.001]
       61 SETTABLEKS                       R12 R11 K17 ["SnapIncrement"]
       63 SETTABLEKS                       R11 R10 K4 ["Schema"]
       65 DUPTABLE                         R11 K12 [{"Id", "Schema"}]
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R12 R12 K21 ["Caves"]
       69 SETTABLEKS                       R12 R11 K3 ["Id"]
       71 DUPTABLE                         R12 K22 [{"Type"}]
       72 LOADK                            R13 K23 ["Checkbox"]
       73 SETTABLEKS                       R13 R12 K9 ["Type"]
       75 SETTABLEKS                       R12 R11 K4 ["Schema"]
       77 DUPTABLE                         R12 K6 [{"Id", "Schema", "Validate"}]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R13 R13 K24 ["BiomeSize"]
       81 SETTABLEKS                       R13 R12 K3 ["Id"]
       83 DUPTABLE                         R13 K22 [{"Type"}]
       84 LOADK                            R14 K25 ["Number"]
       85 SETTABLEKS                       R14 R13 K9 ["Type"]
       87 SETTABLEKS                       R13 R12 K4 ["Schema"]
       89 NEWCLOSURE                       R13 P1
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R13 R12 K5 ["Validate"]
       93 DUPTABLE                         R13 K6 [{"Id", "Schema", "Validate"}]
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R14 R14 K26 ["Seed"]
       97 SETTABLEKS                       R14 R13 K3 ["Id"]
       99 DUPTABLE                         R14 K22 [{"Type"}]
      100 LOADK                            R15 K25 ["Number"]
      101 SETTABLEKS                       R15 R14 K9 ["Type"]
      103 SETTABLEKS                       R14 R13 K4 ["Schema"]
      105 NEWCLOSURE                       R14 P2
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R14 R13 K5 ["Validate"]
      109 DUPTABLE                         R14 K28 [{"Id", "Layout", "Schema"}]
      110 GETUPVAL                         R15 2
      111 GETTABLEKS                       R15 R15 K29 ["Generate"]
      113 SETTABLEKS                       R15 R14 K3 ["Id"]
      115 GETIMPORT                        R15 K33 [Enum.FillDirection.Vertical]
      117 SETTABLEKS                       R15 R14 K27 ["Layout"]
      119 DUPTABLE                         R15 K35 [{"Label", "Type"}]
      120 GETUPVAL                         R18 3
      121 GETUPVAL                         R19 2
      122 GETTABLEKS                       R19 R19 K29 ["Generate"]
      124 NAMECALL                         R16 R4 K2 ["getText"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K34 ["Label"]
      129 LOADK                            R16 K36 ["Button"]
      130 SETTABLEKS                       R16 R15 K9 ["Type"]
      132 SETTABLEKS                       R15 R14 K4 ["Schema"]
      134 SETLIST                          R8 R9 6 [1]
      136 DUPTABLE                         R9 K40 [{"Category", "Data", "Overrides"}]
      137 GETUPVAL                         R10 3
      138 SETTABLEKS                       R10 R9 K37 ["Category"]
      140 SETTABLEKS                       R1 R9 K38 ["Data"]
      142 SETTABLEKS                       R3 R9 K39 ["Overrides"]
      144 CALL                             R6 3 -1
      145 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["Biome"]
       27 GETTABLEKS                       R5 R2 K12 ["BiomeSettings"]
       29 GETTABLEKS                       R6 R2 K13 ["Storage"]
       31 GETTABLEKS                       R7 R3 K12 ["BiomeSettings"]
       33 NEWTABLE                         R8 2 0
       35 NEWTABLE                         R9 8 0
       37 GETTABLEKS                       R10 R5 K14 ["Biomes"]
       39 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       41 SETTABLE                         R11 R9 R10
       42 GETTABLEKS                       R10 R5 K16 ["BiomeBlending"]
       44 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       46 SETTABLE                         R11 R9 R10
       47 GETTABLEKS                       R10 R5 K17 ["BiomeSize"]
       49 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       51 SETTABLE                         R11 R9 R10
       52 GETTABLEKS                       R10 R5 K18 ["Caves"]
       54 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       56 SETTABLE                         R11 R9 R10
       57 GETTABLEKS                       R10 R5 K19 ["Seed"]
       59 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       61 SETTABLE                         R11 R9 R10
       62 GETTABLEKS                       R10 R5 K20 ["Generate"]
       64 GETTABLEKS                       R11 R6 K15 ["LocalPersistent"]
       66 SETTABLE                         R11 R9 R10
       67 SETTABLEKS                       R9 R8 K13 ["Storage"]
       69 DUPCLOSURE                       R9 K21 [PROTO_3]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R9 R8 K22 ["Generator"]
       76 RETURN                           R8 1
