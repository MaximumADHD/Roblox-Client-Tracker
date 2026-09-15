PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getPayload"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 2 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MaterialSettings"]
        8 NEWTABLE                         R5 4 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["FillMode"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["Fill"]
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
       30 SETTABLE                         R5 R3 R4
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K11 ["SelectionSettings"]
       34 NEWTABLE                         R5 2 0
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K12 ["Size"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K11 ["SelectionSettings"]
       42 GETTABLE                         R8 R2 R9
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K12 ["Size"]
       46 GETTABLE                         R7 R8 R9
       47 SETTABLE                         R7 R5 R6
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K13 ["Transform"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K11 ["SelectionSettings"]
       54 GETTABLE                         R8 R2 R9
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R9 R9 K13 ["Transform"]
       58 GETTABLE                         R7 R8 R9
       59 SETTABLE                         R7 R5 R6
       60 SETTABLE                         R5 R3 R4
       61 MOVE                             R2 R3
       62 GETTABLEKS                       R3 R0 K14 ["_localization"]
       64 LOADK                            R5 K15 ["Operations"]
       65 LOADK                            R6 K16 ["%*Name"]
       66 MOVE                             R8 R1
       67 NAMECALL                         R6 R6 K17 ["format"]
       69 CALL                             R6 2 1
       70 NAMECALL                         R3 R3 K18 ["getText"]
       72 CALL                             R3 3 1
       73 GETTABLEKS                       R4 R0 K14 ["_localization"]
       75 LOADK                            R6 K15 ["Operations"]
       76 LOADK                            R7 K19 ["%*Description"]
       77 MOVE                             R9 R1
       78 NAMECALL                         R7 R7 K17 ["format"]
       80 CALL                             R7 2 1
       81 NAMECALL                         R4 R4 K18 ["getText"]
       83 CALL                             R4 3 1
       84 GETUPVAL                         R5 5
       85 MOVE                             R6 R3
       86 MOVE                             R7 R4
       87 GETTABLEKS                       R8 R0 K20 ["_services"]
       89 CALL                             R5 3 1
       90 SETTABLEKS                       R5 R0 K21 ["_operation"]
       92 GETTABLEKS                       R5 R0 K21 ["_operation"]
       94 DUPTABLE                         R7 K23 [{"Payload"}]
       95 SETTABLEKS                       R2 R7 K22 ["Payload"]
       97 NAMECALL                         R5 R5 K24 ["start"]
       99 CALL                             R5 2 0
      100 RETURN                           R0 0

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
       72 GETUPVAL                         R3 5
       73 CALL                             R3 0 1
       74 JUMPIFNOT                        R3 ; [+8]
       75 GETTABLEKS                       R3 R0 K9 ["_services"]
       77 GETTABLEKS                       R3 R3 K19 ["StudioService"]
       79 LOADK                            R5 K20 [""]
       80 NAMECALL                         R3 R3 K21 ["CopyToClipboard"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0

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
       64 GETIMPORT                        R17 K5 [require]
       66 GETTABLEKS                       R18 R13 K25 ["TerrainVoxelChannels"]
       68 CALL                             R17 1 1
       69 GETIMPORT                        R18 K5 [require]
       71 GETTABLEKS                       R19 R0 K8 ["Src"]
       73 GETTABLEKS                       R19 R19 K26 ["Flags"]
       75 GETTABLEKS                       R19 R19 K27 ["getFFlagTerrainEditorClearStudioClipboardOnCopy"]
       77 CALL                             R18 1 1
       78 NEWTABLE                         R19 0 1
       80 DUPTABLE                         R20 K30 [{"Defaults", "Id"}]
       81 NEWTABLE                         R21 0 0
       83 SETTABLEKS                       R21 R20 K28 ["Defaults"]
       85 GETTABLEKS                       R21 R3 K15 ["SelectionSettings"]
       87 SETTABLEKS                       R21 R20 K29 ["Id"]
       89 SETLIST                          R19 R20 1 [1]
       91 NEWTABLE                         R20 0 1
       93 DUPTABLE                         R21 K32 [{"Id", "Schema"}]
       94 GETTABLEKS                       R22 R5 K33 ["Region"]
       96 SETTABLEKS                       R22 R21 K29 ["Id"]
       98 DUPTABLE                         R22 K39 [{["Type"], ["Wireframe"] = True, ["Rotation"] = False}]
       99 GETTABLEKS                       R23 R5 K33 ["Region"]
      101 SETTABLEKS                       R23 R22 K34 ["Type"]
      103 SETTABLEKS                       R22 R21 K31 ["Schema"]
      105 SETLIST                          R20 R21 1 [1]
      107 GETTABLEKS                       R23 R10 K40 ["Select"]
      109 GETTABLEKS                       R24 R9 K41 ["Edit"]
      111 MOVE                             R25 R19
      112 MOVE                             R26 R20
      113 NAMECALL                         R21 R1 K42 ["new"]
      115 CALL                             R21 5 1
      116 DUPCLOSURE                       R22 K43 [PROTO_0]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R15
      123 SETTABLEKS                       R22 R21 K44 ["fillAir"]
      125 DUPCLOSURE                       R22 K45 [PROTO_1]
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R18
      132 SETTABLEKS                       R22 R21 K46 ["copy"]
      134 DUPCLOSURE                       R22 K47 [PROTO_2]
      135 SETTABLEKS                       R22 R21 K48 ["delete"]
      137 DUPCLOSURE                       R22 K49 [PROTO_3]
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R22 R21 K50 ["cut"]
      145 DUPCLOSURE                       R22 K51 [PROTO_4]
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R22 R21 K52 ["paste"]
      153 DUPCLOSURE                       R22 K53 [PROTO_5]
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R10
      161 SETTABLEKS                       R22 R21 K54 ["duplicate"]
      163 DUPCLOSURE                       R22 K55 [PROTO_6]
      164 SETTABLEKS                       R22 R21 K56 ["operation"]
      166 DUPCLOSURE                       R22 K57 [PROTO_14]
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R10
      170 SETTABLEKS                       R22 R21 K58 ["activate"]
      172 DUPCLOSURE                       R22 K59 [PROTO_15]
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R22 R21 K60 ["deactivate"]
      176 RETURN                           R21 1
