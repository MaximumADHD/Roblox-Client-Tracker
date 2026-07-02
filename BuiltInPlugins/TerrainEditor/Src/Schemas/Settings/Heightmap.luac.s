PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Error"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+15]
        4 GETIMPORT                        R1 K4 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K5 ["ImportWarning"]
        8 LOADK                            R5 K6 ["FailedImport"]
        9 DUPTABLE                         R6 K7 [{"Error"}]
       10 GETTABLEKS                       R7 R0 K0 ["Error"]
       12 SETTABLEKS                       R7 R6 K0 ["Error"]
       14 NAMECALL                         R2 R2 K8 ["getText"]
       16 CALL                             R2 4 -1
       17 RETURN                           R1 -1
       18 GETTABLEKS                       R1 R0 K9 ["Image"]
       20 JUMPIFNOT                        R1 ; [+41]
       21 GETTABLEKS                       R1 R0 K9 ["Image"]
       23 GETTABLEKS                       R1 R1 K10 ["ChannelInfo"]
       25 GETTABLEKS                       R1 R1 K11 ["DiscardedChannels"]
       27 JUMPIFNOT                        R1 ; [+9]
       28 GETIMPORT                        R1 K13 [Enum.PropertyStatus.Warning]
       30 GETUPVAL                         R2 0
       31 LOADK                            R4 K5 ["ImportWarning"]
       32 LOADK                            R5 K11 ["DiscardedChannels"]
       33 NAMECALL                         R2 R2 K8 ["getText"]
       35 CALL                             R2 3 -1
       36 RETURN                           R1 -1
       37 GETTABLEKS                       R1 R0 K9 ["Image"]
       39 GETTABLEKS                       R1 R1 K14 ["Preview"]
       41 GETTABLEKS                       R1 R1 K0 ["Error"]
       43 JUMPIFNOT                        R1 ; [+18]
       44 GETIMPORT                        R1 K13 [Enum.PropertyStatus.Warning]
       46 GETUPVAL                         R2 0
       47 LOADK                            R4 K5 ["ImportWarning"]
       48 LOADK                            R5 K15 ["FailedPreview"]
       49 DUPTABLE                         R6 K7 [{"Error"}]
       50 GETTABLEKS                       R7 R0 K9 ["Image"]
       52 GETTABLEKS                       R7 R7 K14 ["Preview"]
       54 GETTABLEKS                       R7 R7 K0 ["Error"]
       56 SETTABLEKS                       R7 R6 K0 ["Error"]
       58 NAMECALL                         R2 R2 K8 ["getText"]
       60 CALL                             R2 4 -1
       61 RETURN                           R1 -1
       62 GETIMPORT                        R1 K17 [Enum.PropertyStatus.Ok]
       64 LOADK                            R2 K1 [""]
       65 RETURN                           R1 2

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Error"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+15]
        4 GETIMPORT                        R1 K4 [Enum.PropertyStatus.Error]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K5 ["ImportWarning"]
        8 LOADK                            R5 K6 ["FailedImport"]
        9 DUPTABLE                         R6 K7 [{"Error"}]
       10 GETTABLEKS                       R7 R0 K0 ["Error"]
       12 SETTABLEKS                       R7 R6 K0 ["Error"]
       14 NAMECALL                         R2 R2 K8 ["getText"]
       16 CALL                             R2 4 -1
       17 RETURN                           R1 -1
       18 GETTABLEKS                       R1 R0 K9 ["Image"]
       20 JUMPIFNOT                        R1 ; [+25]
       21 GETTABLEKS                       R1 R0 K9 ["Image"]
       23 GETTABLEKS                       R1 R1 K10 ["Preview"]
       25 GETTABLEKS                       R1 R1 K0 ["Error"]
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETIMPORT                        R1 K12 [Enum.PropertyStatus.Warning]
       30 GETUPVAL                         R2 0
       31 LOADK                            R4 K5 ["ImportWarning"]
       32 LOADK                            R5 K13 ["FailedPreview"]
       33 DUPTABLE                         R6 K7 [{"Error"}]
       34 GETTABLEKS                       R7 R0 K9 ["Image"]
       36 GETTABLEKS                       R7 R7 K10 ["Preview"]
       38 GETTABLEKS                       R7 R7 K0 ["Error"]
       40 SETTABLEKS                       R7 R6 K0 ["Error"]
       42 NAMECALL                         R2 R2 K8 ["getText"]
       44 CALL                             R2 4 -1
       45 RETURN                           R1 -1
       46 GETIMPORT                        R1 K15 [Enum.PropertyStatus.Ok]
       48 LOADK                            R2 K1 [""]
       49 RETURN                           R1 2

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 4
        6 DUPTABLE                         R8 K4 [{"Id", "Schema", "Validate"}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K5 ["Heightmap"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 DUPTABLE                         R9 K9 [{["ImageType"], ["Type"] = "Image"}]
       13 GETUPVAL                         R10 2
       14 GETTABLEKS                       R10 R10 K5 ["Heightmap"]
       16 SETTABLEKS                       R10 R9 K6 ["ImageType"]
       18 SETTABLEKS                       R9 R8 K2 ["Schema"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R4
       22 SETTABLEKS                       R9 R8 K3 ["Validate"]
       24 DUPTABLE                         R9 K4 [{"Id", "Schema", "Validate"}]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K10 ["Colormap"]
       28 SETTABLEKS                       R10 R9 K1 ["Id"]
       30 DUPTABLE                         R10 K9 [{["ImageType"], ["Type"] = "Image"}]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K10 ["Colormap"]
       34 SETTABLEKS                       R11 R10 K6 ["ImageType"]
       36 SETTABLEKS                       R10 R9 K2 ["Schema"]
       38 NEWCLOSURE                       R10 P1
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R10 R9 K3 ["Validate"]
       42 DUPTABLE                         R10 K12 [{"Id", "Layout", "Schema"}]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K13 ["DefaultMaterial"]
       46 SETTABLEKS                       R11 R10 K1 ["Id"]
       48 GETIMPORT                        R11 K17 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R11 R10 K11 ["Layout"]
       52 DUPTABLE                         R11 K21 [{["AllowAir"] = False, ["Type"] = "Material"}]
       53 SETTABLEKS                       R11 R10 K2 ["Schema"]
       55 DUPTABLE                         R11 K23 [{"Disabled", "Id", "Layout", "Schema"}]
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K5 ["Heightmap"]
       59 GETTABLE                         R13 R1 R14
       60 NOT                              R12 R13
       61 JUMPIF                           R12 ; [+7]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R14 R14 K5 ["Heightmap"]
       65 GETTABLE                         R13 R1 R14
       66 GETTABLEKS                       R13 R13 K8 ["Image"]
       68 NOT                              R12 R13
       69 SETTABLEKS                       R12 R11 K22 ["Disabled"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K24 ["Import"]
       74 SETTABLEKS                       R12 R11 K1 ["Id"]
       76 GETIMPORT                        R12 K17 [Enum.FillDirection.Vertical]
       78 SETTABLEKS                       R12 R11 K11 ["Layout"]
       80 DUPTABLE                         R12 K27 [{["Label"], ["Type"] = "Button"}]
       81 GETUPVAL                         R15 3
       82 GETUPVAL                         R16 1
       83 GETTABLEKS                       R16 R16 K24 ["Import"]
       85 NAMECALL                         R13 R4 K28 ["getText"]
       87 CALL                             R13 3 1
       88 SETTABLEKS                       R13 R12 K25 ["Label"]
       90 SETTABLEKS                       R12 R11 K2 ["Schema"]
       92 SETLIST                          R7 R8 4 [1]
       94 DUPTABLE                         R8 K32 [{"Category", "Data", "Overrides"}]
       95 GETUPVAL                         R9 3
       96 SETTABLEKS                       R9 R8 K29 ["Category"]
       98 SETTABLEKS                       R1 R8 K30 ["Data"]
      100 SETTABLEKS                       R3 R8 K31 ["Overrides"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["ApplyById"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K10 ["Category"]
       25 GETTABLEKS                       R4 R1 K11 ["HeightmapSettings"]
       27 GETTABLEKS                       R5 R1 K12 ["ImageType"]
       29 GETTABLEKS                       R6 R1 K13 ["Storage"]
       31 GETTABLEKS                       R7 R3 K11 ["HeightmapSettings"]
       33 NEWTABLE                         R8 2 0
       35 NEWTABLE                         R9 4 0
       37 GETTABLEKS                       R10 R4 K14 ["Colormap"]
       39 GETTABLEKS                       R11 R6 K15 ["LocalSession"]
       41 SETTABLE                         R11 R9 R10
       42 GETTABLEKS                       R10 R4 K16 ["Heightmap"]
       44 GETTABLEKS                       R11 R6 K15 ["LocalSession"]
       46 SETTABLE                         R11 R9 R10
       47 GETTABLEKS                       R10 R4 K17 ["Import"]
       49 GETTABLEKS                       R11 R6 K15 ["LocalSession"]
       51 SETTABLE                         R11 R9 R10
       52 GETTABLEKS                       R10 R4 K18 ["DefaultMaterial"]
       54 GETTABLEKS                       R11 R6 K19 ["LocalPersistent"]
       56 SETTABLE                         R11 R9 R10
       57 SETTABLEKS                       R9 R8 K13 ["Storage"]
       59 DUPCLOSURE                       R9 K20 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R9 R8 K21 ["Generator"]
       66 RETURN                           R8 1
