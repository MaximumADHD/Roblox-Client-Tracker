PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 2 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Fill"]
       16 SETTABLE                         R7 R5 R6
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["SourceMaterial"]
       20 GETIMPORT                        R7 K8 [Enum.Material.Air]
       22 SETTABLE                         R7 R5 R6
       23 SETTABLE                         R5 R3 R4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["SelectionSettings"]
       27 NEWTABLE                         R5 2 0
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K10 ["Size"]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K9 ["SelectionSettings"]
       35 GETTABLE                         R8 R2 R9
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K10 ["Size"]
       39 GETTABLE                         R7 R8 R9
       40 SETTABLE                         R7 R5 R6
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K11 ["Transform"]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K9 ["SelectionSettings"]
       47 GETTABLE                         R8 R2 R9
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K11 ["Transform"]
       51 GETTABLE                         R7 R8 R9
       52 SETTABLE                         R7 R5 R6
       53 SETTABLE                         R5 R3 R4
       54 MOVE                             R2 R3
       55 GETTABLEKS                       R3 R0 K12 ["_localization"]
       57 LOADK                            R5 K13 ["Operations"]
       58 LOADK                            R7 K14 ["%*Name"]
       59 MOVE                             R9 R1
       60 NAMECALL                         R7 R7 K15 ["format"]
       62 CALL                             R7 2 1
       63 MOVE                             R6 R7
       64 NAMECALL                         R3 R3 K16 ["getText"]
       66 CALL                             R3 3 1
       67 GETTABLEKS                       R4 R0 K12 ["_localization"]
       69 LOADK                            R6 K13 ["Operations"]
       70 LOADK                            R8 K17 ["%*Description"]
       71 MOVE                             R10 R1
       72 NAMECALL                         R8 R8 K15 ["format"]
       74 CALL                             R8 2 1
       75 MOVE                             R7 R8
       76 NAMECALL                         R4 R4 K16 ["getText"]
       78 CALL                             R4 3 1
       79 GETUPVAL                         R5 4
       80 MOVE                             R6 R3
       81 MOVE                             R7 R4
       82 GETTABLEKS                       R8 R0 K18 ["_services"]
       84 CALL                             R5 3 1
       85 SETTABLEKS                       R5 R0 K19 ["_operation"]
       87 GETTABLEKS                       R5 R0 K19 ["_operation"]
       89 DUPTABLE                         R7 K21 [{"Payload"}]
       90 SETTABLEKS                       R2 R7 K20 ["Payload"]
       92 NAMECALL                         R5 R5 K22 ["start"]
       94 CALL                             R5 2 0
       95 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Get"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["SelectionSettings"]
       11 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       13 GETTABLEKS                       R4 R0 K4 ["_persistentUserSettings"]
       15 CALL                             R1 3 1
       16 GETTABLEKS                       R2 R0 K5 ["_analytics"]
       18 LOADK                            R4 K6 ["Activated"]
       19 LOADK                            R5 K7 ["Copy"]
       20 NAMECALL                         R2 R2 K8 ["report"]
       22 CALL                             R2 3 0
       23 GETTABLEKS                       R2 R0 K9 ["_services"]
       25 GETTABLEKS                       R2 R2 K10 ["Terrain"]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K11 ["Transform"]
       31 GETTABLE                         R5 R1 R6
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K12 ["Size"]
       35 GETTABLE                         R6 R1 R7
       36 LOADB                            R7 1
       37 CALL                             R4 3 -1
       38 NAMECALL                         R2 R2 K13 ["CopyRegion"]
       40 CALL                             R2 -1 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K14 ["Set"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K15 ["TransformSettings"]
       47 GETTABLEKS                       R5 R0 K3 ["_pluginController"]
       49 NEWTABLE                         R6 4 0
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K16 ["TerrainRegionBuffer"]
       54 SETTABLE                         R2 R6 R7
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K17 ["TerrainRegionBufferSize"]
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K12 ["Size"]
       61 GETTABLE                         R8 R1 R9
       62 SETTABLE                         R8 R6 R7
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R7 R7 K18 ["TerrainRegionBufferTransform"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K11 ["Transform"]
       69 GETTABLE                         R8 R1 R9
       70 SETTABLE                         R8 R6 R7
       71 CALL                             R3 3 0
       72 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["_analytics"]
        7 LOADK                            R3 K2 ["Activated"]
        8 LOADK                            R4 K3 ["Delete"]
        9 NAMECALL                         R1 R1 K4 ["report"]
       11 CALL                             R1 3 0
       12 LOADK                            R3 K3 ["Delete"]
       13 NAMECALL                         R1 R0 K5 ["fillAir"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Get"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["SelectionSettings"]
       11 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       13 GETTABLEKS                       R4 R0 K4 ["_persistentUserSettings"]
       15 CALL                             R1 3 1
       16 GETTABLEKS                       R2 R0 K5 ["_analytics"]
       18 LOADK                            R4 K6 ["Activated"]
       19 LOADK                            R5 K7 ["Cut"]
       20 NAMECALL                         R2 R2 K8 ["report"]
       22 CALL                             R2 3 0
       23 GETTABLEKS                       R2 R0 K9 ["_services"]
       25 GETTABLEKS                       R2 R2 K10 ["Terrain"]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K11 ["Transform"]
       31 GETTABLE                         R5 R1 R6
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K12 ["Size"]
       35 GETTABLE                         R6 R1 R7
       36 LOADB                            R7 1
       37 CALL                             R4 3 -1
       38 NAMECALL                         R2 R2 K13 ["CopyRegion"]
       40 CALL                             R2 -1 1
       41 LOADK                            R5 K7 ["Cut"]
       42 NAMECALL                         R3 R0 K14 ["fillAir"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K15 ["Set"]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K16 ["TransformSettings"]
       51 GETTABLEKS                       R5 R0 K3 ["_pluginController"]
       53 NEWTABLE                         R6 4 0
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K17 ["TerrainRegionBuffer"]
       58 SETTABLE                         R2 R6 R7
       59 GETUPVAL                         R7 4
       60 GETTABLEKS                       R7 R7 K18 ["TerrainRegionBufferSize"]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R9 R9 K12 ["Size"]
       65 GETTABLE                         R8 R1 R9
       66 SETTABLE                         R8 R6 R7
       67 GETUPVAL                         R7 4
       68 GETTABLEKS                       R7 R7 K19 ["TerrainRegionBufferTransform"]
       70 GETUPVAL                         R9 3
       71 GETTABLEKS                       R9 R9 K11 ["Transform"]
       73 GETTABLE                         R8 R1 R9
       74 SETTABLE                         R8 R6 R7
       75 CALL                             R3 3 0
       76 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Get"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["TransformSettings"]
       11 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       13 GETTABLEKS                       R4 R0 K4 ["_persistentUserSettings"]
       15 CALL                             R1 3 1
       16 GETTABLEKS                       R2 R0 K5 ["_analytics"]
       18 LOADK                            R4 K6 ["Activated"]
       19 LOADK                            R5 K7 ["Paste"]
       20 NAMECALL                         R2 R2 K8 ["report"]
       22 CALL                             R2 3 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K9 ["TerrainRegionBuffer"]
       26 GETTABLE                         R2 R1 R3
       27 JUMPIFNOT                        R2 ; [+26]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K10 ["Set"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K2 ["TransformSettings"]
       34 GETTABLEKS                       R4 R0 K3 ["_pluginController"]
       36 NEWTABLE                         R5 1 0
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K11 ["TransformMode"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K7 ["Paste"]
       44 SETTABLE                         R7 R5 R6
       45 CALL                             R2 3 0
       46 GETTABLEKS                       R2 R0 K12 ["_toolController"]
       48 GETTABLEKS                       R2 R2 K13 ["selectTool"]
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R3 R3 K14 ["Transform"]
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["hasError"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Get"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["SelectionSettings"]
       11 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       13 GETTABLEKS                       R4 R0 K4 ["_persistentUserSettings"]
       15 CALL                             R1 3 1
       16 GETTABLEKS                       R2 R0 K5 ["_analytics"]
       18 LOADK                            R4 K6 ["Activated"]
       19 LOADK                            R5 K7 ["Duplicate"]
       20 NAMECALL                         R2 R2 K8 ["report"]
       22 CALL                             R2 3 0
       23 GETTABLEKS                       R2 R0 K9 ["_services"]
       25 GETTABLEKS                       R2 R2 K10 ["Terrain"]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K11 ["Transform"]
       31 GETTABLE                         R5 R1 R6
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K12 ["Size"]
       35 GETTABLE                         R6 R1 R7
       36 LOADB                            R7 1
       37 CALL                             R4 3 -1
       38 NAMECALL                         R2 R2 K13 ["CopyRegion"]
       40 CALL                             R2 -1 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K14 ["Set"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K15 ["TransformSettings"]
       47 GETTABLEKS                       R5 R0 K3 ["_pluginController"]
       49 NEWTABLE                         R6 4 0
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K16 ["TerrainRegion"]
       54 SETTABLE                         R2 R6 R7
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K17 ["TerrainRegionSize"]
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R9 R9 K12 ["Size"]
       61 GETTABLE                         R8 R1 R9
       62 SETTABLE                         R8 R6 R7
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R7 R7 K18 ["TerrainRegionTransform"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K11 ["Transform"]
       69 GETTABLE                         R8 R1 R9
       70 SETTABLE                         R8 R6 R7
       71 GETUPVAL                         R7 4
       72 GETTABLEKS                       R7 R7 K19 ["TransformMode"]
       74 GETUPVAL                         R8 5
       75 GETTABLEKS                       R8 R8 K7 ["Duplicate"]
       77 SETTABLE                         R8 R6 R7
       78 CALL                             R3 3 0
       79 GETTABLEKS                       R3 R0 K20 ["_toolController"]
       81 GETTABLEKS                       R3 R3 K21 ["selectTool"]
       83 GETUPVAL                         R4 6
       84 GETTABLEKS                       R4 R4 K11 ["Transform"]
       86 CALL                             R3 1 0
       87 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_operation"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["copy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cut"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["delete"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["paste"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["duplicate"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_services"]
        3 GETTABLEKS                       R0 R0 K1 ["Selection"]
        5 NEWTABLE                         R2 0 0
        7 NAMECALL                         R0 R0 K2 ["Set"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pluginController"]
        3 NAMECALL                         R0 R0 K1 ["getEnabled"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETIMPORT                        R0 K4 [task.defer]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["_services"]
       17 GETTABLEKS                       R1 R1 K6 ["Selection"]
       19 NAMECALL                         R1 R1 K7 ["Get"]
       21 CALL                             R1 1 1
       22 JUMPIF                           R1 ; [+2]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K8 ["_selection"]
       27 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activate"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 NEWTABLE                         R1 8 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["CopySelected"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 SETTABLE                         R3 R1 R2
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["CutSelected"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["DeleteSelected"]
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          VAL R0
       24 SETTABLE                         R3 R1 R2
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K4 ["PasteSelected"]
       28 NEWCLOSURE                       R3 P3
       29 CAPTURE                          VAL R0
       30 SETTABLE                         R3 R1 R2
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K5 ["DuplicateSelected"]
       34 NEWCLOSURE                       R3 P4
       35 CAPTURE                          VAL R0
       36 SETTABLE                         R3 R1 R2
       37 SETTABLEKS                       R1 R0 K6 ["_pluginActions"]
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K7 ["_connections"]
       43 GETTABLEKS                       R1 R0 K6 ["_pluginActions"]
       45 LOADNIL                          R2
       46 LOADNIL                          R3
       47 FORGPREP                         R1
       48 GETTABLEKS                       R6 R0 K7 ["_connections"]
       50 GETTABLEKS                       R7 R0 K8 ["_shortcutController"]
       52 MOVE                             R9 R4
       53 MOVE                             R10 R5
       54 NAMECALL                         R7 R7 K9 ["Connect"]
       56 CALL                             R7 3 1
       57 SETTABLE                         R7 R6 R4
       58 GETTABLEKS                       R6 R0 K8 ["_shortcutController"]
       60 MOVE                             R8 R4
       61 NAMECALL                         R6 R6 K10 ["Enable"]
       63 CALL                             R6 2 0
       64 FORGLOOP                         R1 2 ; [-17]
       66 GETTABLEKS                       R1 R0 K11 ["_services"]
       68 GETTABLEKS                       R1 R1 K12 ["Selection"]
       70 NAMECALL                         R1 R1 K13 ["Get"]
       72 CALL                             R1 1 1
       73 JUMPIF                           R1 ; [+2]
       74 NEWTABLE                         R1 0 0
       76 SETTABLEKS                       R1 R0 K14 ["_selection"]
       78 GETTABLEKS                       R1 R0 K11 ["_services"]
       80 GETTABLEKS                       R1 R1 K12 ["Selection"]
       82 NEWTABLE                         R3 0 0
       84 NAMECALL                         R1 R1 K15 ["Set"]
       86 CALL                             R1 2 0
       87 GETTABLEKS                       R1 R0 K16 ["_onSelectionChanged"]
       89 JUMPIF                           R1 ; [+13]
       90 GETTABLEKS                       R1 R0 K11 ["_services"]
       92 GETTABLEKS                       R1 R1 K12 ["Selection"]
       94 GETTABLEKS                       R1 R1 K17 ["SelectionChanged"]
       96 NEWCLOSURE                       R3 P5
       97 CAPTURE                          VAL R0
       98 NAMECALL                         R1 R1 K9 ["Connect"]
      100 CALL                             R1 2 1
      101 SETTABLEKS                       R1 R0 K16 ["_onSelectionChanged"]
      103 GETTABLEKS                       R1 R0 K18 ["_analytics"]
      105 LOADK                            R3 K19 ["Activated"]
      106 GETUPVAL                         R4 2
      107 GETTABLEKS                       R4 R4 K20 ["Select"]
      109 NAMECALL                         R1 R1 K21 ["report"]
      111 CALL                             R1 3 0
      112 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_onSelectionChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_onSelectionChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_onSelectionChanged"]
       11 GETTABLEKS                       R1 R0 K2 ["_services"]
       13 GETTABLEKS                       R1 R1 K3 ["Selection"]
       15 GETTABLEKS                       R3 R0 K4 ["_selection"]
       17 NAMECALL                         R1 R1 K5 ["Set"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K6 ["deactivate"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K7 ["_pluginActions"]
       27 LOADNIL                          R2
       28 LOADNIL                          R3
       29 FORGPREP                         R1
       30 GETTABLEKS                       R6 R0 K8 ["_shortcutController"]
       32 MOVE                             R8 R4
       33 NAMECALL                         R6 R6 K9 ["Disable"]
       35 CALL                             R6 2 0
       36 FORGLOOP                         R1 1 ; [-7]
       38 GETTABLEKS                       R1 R0 K10 ["_connections"]
       40 LOADNIL                          R2
       41 LOADNIL                          R3
       42 FORGPREP                         R1
       43 NAMECALL                         R6 R5 K1 ["Disconnect"]
       45 CALL                             R6 1 0
       46 FORGLOOP                         R1 2 ; [-4]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K10 ["_connections"]
       51 RETURN                           R0 0

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
       31 GETTABLEKS                       R7 R2 K14 ["PluginAction"]
       33 GETTABLEKS                       R8 R2 K15 ["SelectionSettings"]
       35 GETTABLEKS                       R9 R2 K16 ["Tab"]
       37 GETTABLEKS                       R10 R2 K17 ["Tool"]
       39 GETTABLEKS                       R11 R2 K18 ["TransformMode"]
       41 GETTABLEKS                       R12 R2 K19 ["TransformSettings"]
       43 GETTABLEKS                       R13 R0 K8 ["Src"]
       45 GETTABLEKS                       R13 R13 K20 ["Util"]
       47 GETIMPORT                        R14 K5 [require]
       49 GETTABLEKS                       R15 R13 K21 ["ConvertTransformToRegion"]
       51 CALL                             R14 1 1
       52 GETIMPORT                        R15 K5 [require]
       54 GETTABLEKS                       R16 R13 K22 ["Operations"]
       56 GETTABLEKS                       R16 R16 K23 ["FillOperation"]
       58 CALL                             R15 1 1
       59 GETIMPORT                        R16 K5 [require]
       61 GETTABLEKS                       R17 R13 K24 ["SettingsHelper"]
       63 CALL                             R16 1 1
       64 NEWTABLE                         R17 0 1
       66 DUPTABLE                         R18 K27 [{"Defaults", "Id"}]
       67 NEWTABLE                         R19 0 0
       69 SETTABLEKS                       R19 R18 K25 ["Defaults"]
       71 GETTABLEKS                       R19 R3 K15 ["SelectionSettings"]
       73 SETTABLEKS                       R19 R18 K26 ["Id"]
       75 SETLIST                          R17 R18 1 [1]
       77 NEWTABLE                         R18 0 1
       79 DUPTABLE                         R19 K29 [{"Id", "Schema"}]
       80 GETTABLEKS                       R20 R5 K30 ["Region"]
       82 SETTABLEKS                       R20 R19 K26 ["Id"]
       84 DUPTABLE                         R20 K36 [{["Type"], ["Wireframe"] = True, ["Rotation"] = False}]
       85 GETTABLEKS                       R21 R5 K30 ["Region"]
       87 SETTABLEKS                       R21 R20 K31 ["Type"]
       89 SETTABLEKS                       R20 R19 K28 ["Schema"]
       91 SETLIST                          R18 R19 1 [1]
       93 GETTABLEKS                       R21 R10 K37 ["Select"]
       95 GETTABLEKS                       R22 R9 K38 ["Edit"]
       97 MOVE                             R23 R17
       98 MOVE                             R24 R18
       99 NAMECALL                         R19 R1 K39 ["new"]
      101 CALL                             R19 5 1
      102 DUPCLOSURE                       R20 K40 [PROTO_0]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R15
      108 SETTABLEKS                       R20 R19 K41 ["fillAir"]
      110 DUPCLOSURE                       R20 K42 [PROTO_1]
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R12
      116 SETTABLEKS                       R20 R19 K43 ["copy"]
      118 DUPCLOSURE                       R20 K44 [PROTO_2]
      119 SETTABLEKS                       R20 R19 K45 ["delete"]
      121 DUPCLOSURE                       R20 K46 [PROTO_3]
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R12
      127 SETTABLEKS                       R20 R19 K47 ["cut"]
      129 DUPCLOSURE                       R20 K48 [PROTO_4]
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R10
      135 SETTABLEKS                       R20 R19 K49 ["paste"]
      137 DUPCLOSURE                       R20 K50 [PROTO_5]
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R10
      145 SETTABLEKS                       R20 R19 K51 ["duplicate"]
      147 DUPCLOSURE                       R20 K52 [PROTO_6]
      148 SETTABLEKS                       R20 R19 K53 ["operation"]
      150 DUPCLOSURE                       R20 K54 [PROTO_14]
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R10
      154 SETTABLEKS                       R20 R19 K55 ["activate"]
      156 DUPCLOSURE                       R20 K56 [PROTO_15]
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R20 R19 K57 ["deactivate"]
      160 RETURN                           R19 1
