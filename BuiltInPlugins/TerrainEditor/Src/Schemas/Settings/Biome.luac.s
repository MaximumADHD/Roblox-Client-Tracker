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
       26 DUPTABLE                         R10 K11 [{["Items"], ["Labels"], ["Type"] = "MultiSelection"}]
       27 GETUPVAL                         R11 0
       28 SETTABLEKS                       R11 R10 K7 ["Items"]
       30 SETTABLEKS                       R5 R10 K8 ["Labels"]
       32 SETTABLEKS                       R10 R9 K4 ["Schema"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R10 R9 K5 ["Validate"]
       38 DUPTABLE                         R10 K12 [{"Id", "Schema"}]
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R11 R11 K13 ["BiomeBlending"]
       42 SETTABLEKS                       R11 R10 K3 ["Id"]
       44 DUPTABLE                         R11 K23 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.001}]
       45 SETTABLEKS                       R11 R10 K4 ["Schema"]
       47 DUPTABLE                         R11 K12 [{"Id", "Schema"}]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R12 R12 K24 ["Caves"]
       51 SETTABLEKS                       R12 R11 K3 ["Id"]
       53 DUPTABLE                         R12 K26 [{["Type"] = "Checkbox"}]
       54 SETTABLEKS                       R12 R11 K4 ["Schema"]
       56 DUPTABLE                         R12 K6 [{"Id", "Schema", "Validate"}]
       57 GETUPVAL                         R13 2
       58 GETTABLEKS                       R13 R13 K27 ["BiomeSize"]
       60 SETTABLEKS                       R13 R12 K3 ["Id"]
       62 DUPTABLE                         R13 K29 [{["Type"] = "Number"}]
       63 SETTABLEKS                       R13 R12 K4 ["Schema"]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R13 R12 K5 ["Validate"]
       69 DUPTABLE                         R13 K6 [{"Id", "Schema", "Validate"}]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R14 R14 K30 ["Seed"]
       73 SETTABLEKS                       R14 R13 K3 ["Id"]
       75 DUPTABLE                         R14 K29 [{["Type"] = "Number"}]
       76 SETTABLEKS                       R14 R13 K4 ["Schema"]
       78 NEWCLOSURE                       R14 P2
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R14 R13 K5 ["Validate"]
       82 DUPTABLE                         R14 K32 [{"Id", "Layout", "Schema"}]
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K33 ["Generate"]
       86 SETTABLEKS                       R15 R14 K3 ["Id"]
       88 GETIMPORT                        R15 K37 [Enum.FillDirection.Vertical]
       90 SETTABLEKS                       R15 R14 K31 ["Layout"]
       92 DUPTABLE                         R15 K40 [{["Label"], ["Type"] = "Button"}]
       93 GETUPVAL                         R18 3
       94 GETUPVAL                         R19 2
       95 GETTABLEKS                       R19 R19 K33 ["Generate"]
       97 NAMECALL                         R16 R4 K2 ["getText"]
       99 CALL                             R16 3 1
      100 SETTABLEKS                       R16 R15 K38 ["Label"]
      102 SETTABLEKS                       R15 R14 K4 ["Schema"]
      104 SETLIST                          R8 R9 6 [1]
      106 DUPTABLE                         R9 K44 [{"Category", "Data", "Overrides"}]
      107 GETUPVAL                         R10 3
      108 SETTABLEKS                       R10 R9 K41 ["Category"]
      110 SETTABLEKS                       R1 R9 K42 ["Data"]
      112 SETTABLEKS                       R3 R9 K43 ["Overrides"]
      114 CALL                             R6 3 -1
      115 RETURN                           R6 -1

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
