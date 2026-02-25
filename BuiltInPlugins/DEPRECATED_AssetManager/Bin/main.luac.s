PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Plugin handle already exists"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K13 [{"plugin", "analytics", "focusGui", "localization", "theme", "store", "mouse", "calloutController", "insertAsset"}]
       12 GETUPVAL                         R3 3
       13 SETTABLEKS                       R3 R2 K4 ["plugin"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K5 ["analytics"]
       18 GETUPVAL                         R3 5
       19 SETTABLEKS                       R3 R2 K6 ["focusGui"]
       21 GETUPVAL                         R3 6
       22 SETTABLEKS                       R3 R2 K7 ["localization"]
       24 GETUPVAL                         R3 7
       25 SETTABLEKS                       R3 R2 K8 ["theme"]
       27 GETUPVAL                         R3 8
       28 SETTABLEKS                       R3 R2 K9 ["store"]
       30 GETUPVAL                         R3 3
       31 NAMECALL                         R3 R3 K14 ["getMouse"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K10 ["mouse"]
       36 GETUPVAL                         R3 9
       37 SETTABLEKS                       R3 R2 K11 ["calloutController"]
       39 GETUPVAL                         R4 10
       40 GETTABLEKS                       R3 R4 K15 ["new"]
       42 GETUPVAL                         R4 3
       43 GETUPVAL                         R5 5
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K12 ["insertAsset"]
       47 DUPTABLE                         R3 K17 [{"MainView"}]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K3 ["createElement"]
       51 GETUPVAL                         R5 11
       52 NEWTABLE                         R6 0 0
       54 CALL                             R4 2 1
       55 SETTABLEKS                       R4 R3 K16 ["MainView"]
       57 CALL                             R0 3 1
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R1 R2 K18 ["mount"]
       61 MOVE                             R2 R0
       62 GETUPVAL                         R3 5
       63 CALL                             R1 2 1
       64 SETUPVAL                         R1 0
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Enabled"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K1 [ipairs]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 NAMECALL                         R5 R4 K2 ["disconnect"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 [inext] ; [-4]
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+7]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R0 R1 K3 ["unmount"]
       17 GETUPVAL                         R1 2
       18 CALL                             R0 1 0
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 2
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 0 0
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 LOADN                            R0 1
        9 SETUPVAL                         R0 2
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [next]
        6 GETTABLEKS                       R3 R0 K3 ["AssetManagerReducer"]
        8 GETTABLEKS                       R2 R3 K4 ["recentAssets"]
       10 CALL                             R1 1 1
       11 JUMPIFEQKNIL                     R1 ; [+8]
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R3 1
       15 LOADB                            R4 1
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K5 ["dispatch"]
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETIMPORT                        R2 K2 [string.gsub]
        5 MOVE                             R3 R1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R0
        8 LOADK                            R5 K3 [""]
        9 CALL                             R2 3 1
       10 JUMPIF                           R2 ; [+1]
       11 MOVE                             R2 R1
       12 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["getState"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R6 1
        5 GETTABLE                         R5 R6 R0
        6 JUMPIFNOT                        R5 ; [+8]
        7 GETIMPORT                        R4 K3 [string.gsub]
        9 MOVE                             R5 R1
       10 GETUPVAL                         R7 1
       11 GETTABLE                         R6 R7 R0
       12 LOADK                            R7 K4 [""]
       13 CALL                             R4 3 1
       14 JUMPIF                           R4 ; [+1]
       15 MOVE                             R4 R1
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       24 GETTABLEKS                       R6 R7 K8 ["join"]
       26 GETTABLEKS                       R8 R3 K9 ["AssetManagerReducer"]
       28 GETTABLEKS                       R7 R8 K10 ["recentAssets"]
       30 NEWTABLE                         R8 1 0
       32 DUPTABLE                         R9 K15 [{"key", "assetType", "name", "id"}]
       33 GETUPVAL                         R10 3
       34 SETTABLEKS                       R10 R9 K11 ["key"]
       36 SETTABLEKS                       R0 R9 K12 ["assetType"]
       38 SETTABLEKS                       R4 R9 K13 ["name"]
       40 SETTABLEKS                       R2 R9 K14 ["id"]
       42 SETTABLE                         R9 R8 R5
       43 CALL                             R6 2 1
       44 GETUPVAL                         R8 3
       45 ADDK                             R7 R8 K16 [1]
       46 SETUPVAL                         R7 3
       47 GETUPVAL                         R7 0
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R6
       50 CALL                             R9 1 -1
       51 NAMECALL                         R7 R7 K17 ["dispatch"]
       53 CALL                             R7 -1 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 2
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 -1
       12 NAMECALL                         R0 R0 K0 ["dispatch"]
       14 CALL                             R0 -1 0
       15 LOADN                            R0 1
       16 SETUPVAL                         R0 3
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K1 ["getState"]
       10 CALL                             R1 1 1
       11 GETIMPORT                        R2 K3 [next]
       13 GETTABLEKS                       R4 R1 K4 ["AssetManagerReducer"]
       15 GETTABLEKS                       R3 R4 K5 ["recentAssets"]
       17 CALL                             R2 1 1
       18 JUMPIFEQKNIL                     R2 ; [+8]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R4 2
       22 LOADB                            R5 1
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K0 ["dispatch"]
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["getState"]
        3 CALL                             R3 1 1
        4 LOADNIL                          R4
        5 GETIMPORT                        R5 K4 [Enum.AssetType.Image]
        7 JUMPIFNOTEQ                      R0 R5 ; [+15]
        9 GETIMPORT                        R5 K7 [string.find]
       11 MOVE                             R6 R1
       12 LOADK                            R7 K8 ["Images/"]
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R5 ; [+8]
       15 GETIMPORT                        R5 K10 [string.gsub]
       17 MOVE                             R6 R1
       18 LOADK                            R7 K8 ["Images/"]
       19 LOADK                            R8 K11 [""]
       20 CALL                             R5 3 1
       21 MOVE                             R4 R5
       22 JUMP                             ; [+77]
       23 GETIMPORT                        R5 K13 [Enum.AssetType.MeshPart]
       25 JUMPIFNOTEQ                      R0 R5 ; [+15]
       27 GETIMPORT                        R5 K7 [string.find]
       29 MOVE                             R6 R1
       30 LOADK                            R7 K14 ["Meshes/"]
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETIMPORT                        R5 K10 [string.gsub]
       35 MOVE                             R6 R1
       36 LOADK                            R7 K14 ["Meshes/"]
       37 LOADK                            R8 K11 [""]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 JUMP                             ; [+59]
       41 GETUPVAL                         R5 1
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+18]
       44 GETIMPORT                        R5 K16 [Enum.AssetType.Audio]
       46 JUMPIFNOTEQ                      R0 R5 ; [+15]
       48 GETIMPORT                        R5 K7 [string.find]
       50 MOVE                             R6 R1
       51 LOADK                            R7 K17 ["Audio/"]
       52 CALL                             R5 2 1
       53 JUMPIFNOT                        R5 ; [+8]
       54 GETIMPORT                        R5 K10 [string.gsub]
       56 MOVE                             R6 R1
       57 LOADK                            R7 K17 ["Audio/"]
       58 LOADK                            R8 K11 [""]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 JUMP                             ; [+38]
       62 GETUPVAL                         R5 2
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+18]
       65 GETIMPORT                        R5 K19 [Enum.AssetType.Video]
       67 JUMPIFNOTEQ                      R0 R5 ; [+15]
       69 GETIMPORT                        R5 K7 [string.find]
       71 MOVE                             R6 R1
       72 LOADK                            R7 K20 ["Video/"]
       73 CALL                             R5 2 1
       74 JUMPIFNOT                        R5 ; [+8]
       75 GETIMPORT                        R5 K10 [string.gsub]
       77 MOVE                             R6 R1
       78 LOADK                            R7 K20 ["Video/"]
       79 LOADK                            R8 K11 [""]
       80 CALL                             R5 3 1
       81 MOVE                             R4 R5
       82 JUMP                             ; [+17]
       83 GETIMPORT                        R5 K22 [Enum.AssetType.Model]
       85 JUMPIFNOTEQ                      R0 R5 ; [+14]
       87 GETIMPORT                        R5 K7 [string.find]
       89 MOVE                             R6 R1
       90 LOADK                            R7 K23 ["Models/"]
       91 CALL                             R5 2 1
       92 JUMPIFNOT                        R5 ; [+7]
       93 GETIMPORT                        R5 K10 [string.gsub]
       95 MOVE                             R6 R1
       96 LOADK                            R7 K23 ["Models/"]
       97 LOADK                            R8 K11 [""]
       98 CALL                             R5 3 1
       99 MOVE                             R4 R5
      100 FASTCALL1                        TOSTRING R2 ; [+3]
      101 MOVE                             R6 R2
      102 GETIMPORT                        R5 K25 [tostring]
      104 CALL                             R5 1 1
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R7 R8 K26 ["Dictionary"]
      108 GETTABLEKS                       R6 R7 K27 ["join"]
      110 GETTABLEKS                       R8 R3 K28 ["AssetManagerReducer"]
      112 GETTABLEKS                       R7 R8 K29 ["recentAssets"]
      114 NEWTABLE                         R8 1 0
      116 DUPTABLE                         R9 K34 [{"key", "assetType", "name", "id"}]
      117 GETUPVAL                         R10 4
      118 SETTABLEKS                       R10 R9 K30 ["key"]
      120 SETTABLEKS                       R0 R9 K31 ["assetType"]
      122 SETTABLEKS                       R4 R9 K32 ["name"]
      124 SETTABLEKS                       R2 R9 K33 ["id"]
      126 SETTABLE                         R9 R8 R5
      127 CALL                             R6 2 1
      128 GETUPVAL                         R8 4
      129 ADDK                             R7 R8 K35 [1]
      130 SETUPVAL                         R7 4
      131 GETUPVAL                         R7 0
      132 GETUPVAL                         R9 5
      133 MOVE                             R10 R6
      134 CALL                             R9 1 -1
      135 NAMECALL                         R7 R7 K36 ["dispatch"]
      137 CALL                             R7 -1 0
      138 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R1 4
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETUPVAL                         R3 5
        8 GETTABLEKS                       R2 R3 K1 ["signals"]
       10 GETTABLEKS                       R1 R2 K0 ["BulkImportService.BulkImportStarted"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["Connect"]
       15 CALL                             R1 2 0
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R2 6
       18 GETTABLEKS                       R1 R2 K3 ["BulkImportStarted"]
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K4 ["connect"]
       23 CALL                             R1 2 0
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U7
       28 GETUPVAL                         R2 4
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R3 R4 K1 ["signals"]
       33 GETTABLEKS                       R2 R3 K5 ["BulkImportService.BulkImportFinished"]
       35 MOVE                             R4 R1
       36 NAMECALL                         R2 R2 K2 ["Connect"]
       38 CALL                             R2 2 0
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R2 R3 K6 ["BulkImportFinished"]
       43 MOVE                             R4 R1
       44 NAMECALL                         R2 R2 K4 ["connect"]
       46 CALL                             R2 2 0
       47 NEWCLOSURE                       R2 P2
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U2
       54 GETUPVAL                         R3 4
       55 JUMPIFNOT                        R3 ; [+10]
       56 GETUPVAL                         R5 5
       57 GETTABLEKS                       R4 R5 K1 ["signals"]
       59 GETTABLEKS                       R3 R4 K7 ["BulkImportService.AssetImported"]
       61 MOVE                             R5 R2
       62 NAMECALL                         R3 R3 K2 ["Connect"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R4 6
       67 GETTABLEKS                       R3 R4 K8 ["AssetImported"]
       69 MOVE                             R5 R2
       70 NAMECALL                         R3 R3 K4 ["connect"]
       72 CALL                             R3 2 0
       73 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 JUMP                             ; [+9]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["unmount"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 4
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["Enabled"]
       20 NAMECALL                         R0 R0 K2 ["SetActive"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AssetManager"]
        2 SETTABLEKS                       R1 R0 K1 ["Name"]
        4 LOADNIL                          R0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K2 ["mainButton"]
       10 JUMP                             ; [+23]
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K3 ["assetManagerToolbar"]
       13 NAMECALL                         R1 R1 K4 ["CreateToolbar"]
       15 CALL                             R1 2 1
       16 LOADK                            R4 K5 ["assetManagerToolButton"]
       17 GETUPVAL                         R5 3
       18 LOADK                            R7 K6 ["Main"]
       19 LOADK                            R8 K7 ["Tooltip"]
       20 NAMECALL                         R5 R5 K8 ["getText"]
       22 CALL                             R5 3 1
       23 LOADK                            R6 K9 ["rbxlocaltheme://AssetManager"]
       24 GETUPVAL                         R7 3
       25 LOADK                            R9 K6 ["Main"]
       26 LOADK                            R10 K10 ["ToolbarButton"]
       27 NAMECALL                         R7 R7 K8 ["getText"]
       29 CALL                             R7 3 -1
       30 NAMECALL                         R2 R1 K11 ["CreateButton"]
       32 CALL                             R2 -1 1
       33 MOVE                             R0 R2
       34 NEWCLOSURE                       R1 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          REF R0
       40 GETUPVAL                         R2 1
       41 JUMPIFNOT                        R2 ; [+5]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R2 R3 K12 ["mainDockWidget"]
       45 SETUPVAL                         R2 4
       46 JUMP                             ; [+53]
       47 GETIMPORT                        R2 K14 [game]
       49 LOADK                            R4 K15 ["EnableAssetManagerSortButton"]
       50 NAMECALL                         R2 R2 K16 ["GetFastFlag"]
       52 CALL                             R2 2 1
       53 GETIMPORT                        R3 K19 [DockWidgetPluginGuiInfo.new]
       55 GETIMPORT                        R4 K23 [Enum.InitialDockState.Left]
       57 LOADB                            R5 0
       58 LOADB                            R6 0
       59 JUMPIFNOT                        R2 ; [+2]
       60 LOADN                            R7 94
       61 JUMP                             ; [+1]
       62 LOADN                            R7 44
       63 LOADN                            R8 88
       64 JUMPIFNOT                        R2 ; [+2]
       65 LOADN                            R9 94
       66 JUMP                             ; [+1]
       67 LOADN                            R9 14
       68 LOADN                            R10 0
       69 CALL                             R3 7 1
       70 GETUPVAL                         R4 0
       71 LOADK                            R6 K24 ["AssetManager_PluginGui"]
       72 MOVE                             R7 R3
       73 NAMECALL                         R4 R4 K25 ["CreateDockWidgetPluginGui"]
       75 CALL                             R4 3 1
       76 SETUPVAL                         R4 4
       77 GETUPVAL                         R4 4
       78 GETUPVAL                         R5 3
       79 LOADK                            R7 K26 ["Meta"]
       80 LOADK                            R8 K27 ["PluginName"]
       81 NAMECALL                         R5 R5 K8 ["getText"]
       83 CALL                             R5 3 1
       84 SETTABLEKS                       R5 R4 K1 ["Name"]
       86 GETUPVAL                         R4 4
       87 GETUPVAL                         R5 3
       88 LOADK                            R7 K6 ["Main"]
       89 LOADK                            R8 K28 ["Title"]
       90 NAMECALL                         R5 R5 K8 ["getText"]
       92 CALL                             R5 3 1
       93 SETTABLEKS                       R5 R4 K28 ["Title"]
       95 GETUPVAL                         R4 4
       96 GETIMPORT                        R5 K31 [Enum.ZIndexBehavior.Sibling]
       98 SETTABLEKS                       R5 R4 K29 ["ZIndexBehavior"]
      100 GETUPVAL                         R2 1
      101 JUMPIFNOT                        R2 ; [+8]
      102 GETUPVAL                         R3 2
      103 GETTABLEKS                       R2 R3 K32 ["mainButtonClickedSignal"]
      105 GETUPVAL                         R4 8
      106 NAMECALL                         R2 R2 K33 ["Connect"]
      108 CALL                             R2 2 0
      109 JUMP                             ; [+9]
      110 GETTABLEKS                       R2 R0 K34 ["Click"]
      112 GETUPVAL                         R4 8
      113 NAMECALL                         R2 R2 K35 ["connect"]
      115 CALL                             R2 2 0
      116 LOADB                            R2 1
      117 SETTABLEKS                       R2 R0 K36 ["ClickableWhenViewportHidden"]
      119 GETUPVAL                         R2 4
      120 LOADK                            R4 K37 ["Enabled"]
      121 NAMECALL                         R2 R2 K38 ["GetPropertyChangedSignal"]
      123 CALL                             R2 2 1
      124 MOVE                             R4 R1
      125 NAMECALL                         R2 R2 K35 ["connect"]
      127 CALL                             R2 2 0
      128 GETUPVAL                         R3 4
      129 GETTABLEKS                       R2 R3 K37 ["Enabled"]
      131 JUMPIFNOT                        R2 ; [+3]
      132 GETUPVAL                         R2 5
      133 CALL                             R2 0 0
      134 JUMP                             ; [+9]
      135 GETUPVAL                         R2 6
      136 JUMPIFNOT                        R2 ; [+7]
      137 GETUPVAL                         R3 7
      138 GETTABLEKS                       R2 R3 K39 ["unmount"]
      140 GETUPVAL                         R3 6
      141 CALL                             R2 1 0
      142 LOADNIL                          R2
      143 SETUPVAL                         R2 6
      144 GETUPVAL                         R5 4
      145 GETTABLEKS                       R4 R5 K37 ["Enabled"]
      147 NAMECALL                         R2 R0 K40 ["SetActive"]
      149 CALL                             R2 2 0
      150 GETUPVAL                         R3 0
      151 GETTABLEKS                       R2 R3 K41 ["Unloading"]
      153 GETUPVAL                         R4 9
      154 NAMECALL                         R2 R2 K33 ["Connect"]
      156 CALL                             R2 2 0
      157 GETUPVAL                         R2 10
      158 CALL                             R2 0 0
      159 NEWCLOSURE                       R2 P1
      160 CAPTURE                          UPVAL U11
      161 CAPTURE                          UPVAL U12
      162 GETUPVAL                         R3 1
      163 JUMPIFNOT                        R3 ; [+10]
      164 GETUPVAL                         R5 2
      165 GETTABLEKS                       R4 R5 K43 ["signals"]
      167 GETTABLEKS                       R3 R4 K42 ["StudioPublishService.GameNameUpdated"]
      169 MOVE                             R5 R2
      170 NAMECALL                         R3 R3 K33 ["Connect"]
      172 CALL                             R3 2 0
      173 JUMP                             ; [+7]
      174 GETUPVAL                         R4 13
      175 GETTABLEKS                       R3 R4 K44 ["GameNameUpdated"]
      177 MOVE                             R5 R2
      178 NAMECALL                         R3 R3 K35 ["connect"]
      180 CALL                             R3 2 0
      181 GETUPVAL                         R3 1
      182 JUMPIFNOT                        R3 ; [+28]
      183 GETUPVAL                         R5 2
      184 GETTABLEKS                       R4 R5 K43 ["signals"]
      186 GETTABLEKS                       R3 R4 K45 ["AssetManagerService.AssetImportedSignal"]
      188 GETUPVAL                         R5 14
      189 NAMECALL                         R3 R3 K33 ["Connect"]
      191 CALL                             R3 2 0
      192 GETUPVAL                         R5 2
      193 GETTABLEKS                       R4 R5 K43 ["signals"]
      195 GETTABLEKS                       R3 R4 K46 ["AssetManagerService.ImportSessionStarted"]
      197 GETUPVAL                         R5 15
      198 NAMECALL                         R3 R3 K33 ["Connect"]
      200 CALL                             R3 2 0
      201 GETUPVAL                         R5 2
      202 GETTABLEKS                       R4 R5 K43 ["signals"]
      204 GETTABLEKS                       R3 R4 K47 ["AssetManagerService.ImportSessionFinished"]
      206 GETUPVAL                         R5 16
      207 NAMECALL                         R3 R3 K33 ["Connect"]
      209 CALL                             R3 2 0
      210 JUMP                             ; [+42]
      211 GETUPVAL                         R4 17
      212 GETTABLEKS                       R3 R4 K48 ["AssetImportedSignal"]
      214 GETUPVAL                         R5 14
      215 NAMECALL                         R3 R3 K33 ["Connect"]
      217 CALL                             R3 2 1
      218 GETUPVAL                         R5 17
      219 GETTABLEKS                       R4 R5 K49 ["ImportSessionStarted"]
      221 GETUPVAL                         R6 15
      222 NAMECALL                         R4 R4 K33 ["Connect"]
      224 CALL                             R4 2 1
      225 GETUPVAL                         R6 17
      226 GETTABLEKS                       R5 R6 K50 ["ImportSessionFinished"]
      228 GETUPVAL                         R7 16
      229 NAMECALL                         R5 R5 K33 ["Connect"]
      231 CALL                             R5 2 1
      232 GETUPVAL                         R7 18
      233 FASTCALL2                        TABLE_INSERT R7 R3 ; [+4]
      235 MOVE                             R8 R3
      236 GETIMPORT                        R6 K53 [table.insert]
      238 CALL                             R6 2 0
      239 GETUPVAL                         R7 18
      240 FASTCALL2                        TABLE_INSERT R7 R4 ; [+4]
      242 MOVE                             R8 R4
      243 GETIMPORT                        R6 K53 [table.insert]
      245 CALL                             R6 2 0
      246 GETUPVAL                         R7 18
      247 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      249 MOVE                             R8 R5
      250 GETIMPORT                        R6 K53 [table.insert]
      252 CALL                             R6 2 0
      253 CLOSEUPVALS                      R0
      254 RETURN                           R0 0

PROTO_15:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["commonInit"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETIMPORT                        R3 K7 [game]
       15 LOADK                            R5 K8 ["ImprovePluginSpeed_AssetManager"]
       16 NAMECALL                         R3 R3 K9 ["GetFastFlag"]
       18 CALL                             R3 2 1
       19 JUMPIF                           R3 ; [+9]
       20 GETIMPORT                        R4 K1 [require]
       22 GETIMPORT                        R7 K3 [script]
       24 GETTABLEKS                       R6 R7 K4 ["Parent"]
       26 GETTABLEKS                       R5 R6 K10 ["defineLuaFlags"]
       28 CALL                             R4 1 0
       29 GETIMPORT                        R4 K7 [game]
       31 LOADK                            R6 K11 ["AssetManagerService"]
       32 NAMECALL                         R4 R4 K12 ["GetService"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K7 [game]
       37 LOADK                            R7 K13 ["BulkImportService"]
       38 NAMECALL                         R5 R5 K12 ["GetService"]
       40 CALL                             R5 2 1
       41 GETIMPORT                        R6 K7 [game]
       43 LOADK                            R8 K14 ["StudioPublishService"]
       44 NAMECALL                         R6 R6 K12 ["GetService"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R9 K3 [script]
       49 GETTABLEKS                       R8 R9 K4 ["Parent"]
       51 GETTABLEKS                       R7 R8 K4 ["Parent"]
       53 GETIMPORT                        R8 K1 [require]
       55 GETTABLEKS                       R10 R7 K15 ["Packages"]
       57 GETTABLEKS                       R9 R10 K16 ["Roact"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K1 [require]
       62 GETTABLEKS                       R11 R7 K15 ["Packages"]
       64 GETTABLEKS                       R10 R11 K17 ["Rodux"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K1 [require]
       69 GETTABLEKS                       R12 R7 K15 ["Packages"]
       71 GETTABLEKS                       R11 R12 K18 ["Cryo"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K1 [require]
       76 GETTABLEKS                       R13 R7 K15 ["Packages"]
       78 GETTABLEKS                       R12 R13 K19 ["Framework"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K1 [require]
       83 GETTABLEKS                       R14 R7 K15 ["Packages"]
       85 GETTABLEKS                       R13 R14 K20 ["InsertAsset"]
       87 CALL                             R12 1 1
       88 GETTABLEKS                       R13 R11 K21 ["ContextServices"]
       90 GETIMPORT                        R14 K1 [require]
       92 GETTABLEKS                       R17 R7 K22 ["Src"]
       94 GETTABLEKS                       R16 R17 K23 ["Components"]
       96 GETTABLEKS                       R15 R16 K24 ["ServiceWrapper"]
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R16 R12 K25 ["Context"]
      101 GETTABLEKS                       R15 R16 K26 ["InsertAssetContext"]
      103 GETIMPORT                        R16 K1 [require]
      105 GETTABLEKS                       R19 R7 K22 ["Src"]
      107 GETTABLEKS                       R18 R19 K27 ["Reducers"]
      109 GETTABLEKS                       R17 R18 K28 ["MainReducer"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K1 [require]
      114 GETTABLEKS                       R20 R7 K22 ["Src"]
      116 GETTABLEKS                       R19 R20 K29 ["Middleware"]
      118 GETTABLEKS                       R18 R19 K30 ["MainMiddleware"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K1 [require]
      123 GETTABLEKS                       R21 R7 K22 ["Src"]
      125 GETTABLEKS                       R20 R21 K31 ["Resources"]
      127 GETTABLEKS                       R19 R20 K32 ["AnalyticsHandlers"]
      129 CALL                             R18 1 1
      130 GETTABLEKS                       R21 R7 K22 ["Src"]
      132 GETTABLEKS                       R20 R21 K31 ["Resources"]
      134 GETTABLEKS                       R19 R20 K33 ["SourceStrings"]
      136 GETTABLEKS                       R22 R7 K22 ["Src"]
      138 GETTABLEKS                       R21 R22 K31 ["Resources"]
      140 GETTABLEKS                       R20 R21 K34 ["LocalizedStrings"]
      142 GETIMPORT                        R21 K1 [require]
      144 GETTABLEKS                       R24 R7 K22 ["Src"]
      146 GETTABLEKS                       R23 R24 K23 ["Components"]
      148 GETTABLEKS                       R22 R23 K35 ["MainView"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K1 [require]
      153 GETTABLEKS                       R25 R7 K22 ["Src"]
      155 GETTABLEKS                       R24 R25 K36 ["Util"]
      157 GETTABLEKS                       R23 R24 K37 ["AssetManagerUtilities"]
      159 CALL                             R22 1 1
      160 GETTABLEKS                       R23 R22 K38 ["enableAudioImport"]
      162 GETTABLEKS                       R24 R22 K39 ["enableVideoImport"]
      164 GETTABLEKS                       R25 R22 K40 ["enableBadgesCallout"]
      166 GETIMPORT                        R26 K1 [require]
      168 GETTABLEKS                       R29 R7 K22 ["Src"]
      170 GETTABLEKS                       R28 R29 K41 ["Actions"]
      172 GETTABLEKS                       R27 R28 K42 ["SetBulkImporterRunning"]
      174 CALL                             R26 1 1
      175 GETIMPORT                        R27 K1 [require]
      177 GETTABLEKS                       R30 R7 K22 ["Src"]
      179 GETTABLEKS                       R29 R30 K41 ["Actions"]
      181 GETTABLEKS                       R28 R29 K43 ["SetRecentAssets"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K1 [require]
      186 GETTABLEKS                       R31 R7 K22 ["Src"]
      188 GETTABLEKS                       R30 R31 K41 ["Actions"]
      190 GETTABLEKS                       R29 R30 K44 ["SetRecentViewToggled"]
      192 CALL                             R28 1 1
      193 GETIMPORT                        R29 K1 [require]
      195 GETTABLEKS                       R32 R7 K22 ["Src"]
      197 GETTABLEKS                       R31 R32 K41 ["Actions"]
      199 GETTABLEKS                       R30 R31 K45 ["SetUniverseName"]
      201 CALL                             R29 1 1
      202 GETTABLEKS                       R31 R9 K46 ["Store"]
      204 GETTABLEKS                       R30 R31 K47 ["new"]
      206 MOVE                             R31 R16
      207 NEWTABLE                         R32 0 0
      209 MOVE                             R33 R17
      210 CALL                             R30 3 1
      211 GETIMPORT                        R31 K1 [require]
      213 GETTABLEKS                       R34 R7 K22 ["Src"]
      215 GETTABLEKS                       R33 R34 K31 ["Resources"]
      217 GETTABLEKS                       R32 R33 K48 ["Theme"]
      219 CALL                             R31 1 1
      220 MOVE                             R32 R31
      221 CALL                             R32 0 1
      222 GETTABLEKS                       R34 R13 K49 ["Analytics"]
      224 GETTABLEKS                       R33 R34 K47 ["new"]
      226 MOVE                             R34 R18
      227 CALL                             R33 1 1
      228 GETTABLEKS                       R35 R13 K50 ["Localization"]
      230 GETTABLEKS                       R34 R35 K47 ["new"]
      232 DUPTABLE                         R35 K55 [{"pluginName", "stringResourceTable", "translationResourceTable", "libraries"}]
      233 LOADK                            R36 K56 ["AssetManager"]
      234 SETTABLEKS                       R36 R35 K51 ["pluginName"]
      236 SETTABLEKS                       R19 R35 K52 ["stringResourceTable"]
      238 SETTABLEKS                       R20 R35 K53 ["translationResourceTable"]
      240 NEWTABLE                         R36 1 0
      242 GETTABLEKS                       R38 R11 K31 ["Resources"]
      244 GETTABLEKS                       R37 R38 K57 ["LOCALIZATION_PROJECT_NAME"]
      246 DUPTABLE                         R38 K58 [{"stringResourceTable", "translationResourceTable"}]
      247 GETTABLEKS                       R40 R11 K31 ["Resources"]
      249 GETTABLEKS                       R39 R40 K33 ["SourceStrings"]
      251 SETTABLEKS                       R39 R38 K52 ["stringResourceTable"]
      253 GETTABLEKS                       R40 R11 K31 ["Resources"]
      255 GETTABLEKS                       R39 R40 K34 ["LocalizedStrings"]
      257 SETTABLEKS                       R39 R38 K53 ["translationResourceTable"]
      259 SETTABLE                         R38 R36 R37
      260 SETTABLEKS                       R36 R35 K54 ["libraries"]
      262 CALL                             R34 1 1
      263 LOADNIL                          R35
      264 MOVE                             R36 R25
      265 CALL                             R36 0 1
      266 JUMPIFNOT                        R36 ; [+25]
      267 GETIMPORT                        R36 K1 [require]
      269 GETTABLEKS                       R39 R7 K22 ["Src"]
      271 GETTABLEKS                       R38 R39 K36 ["Util"]
      273 GETTABLEKS                       R37 R38 K59 ["CalloutController"]
      275 CALL                             R36 1 1
      276 GETTABLEKS                       R37 R36 K47 ["new"]
      278 CALL                             R37 0 1
      279 MOVE                             R35 R37
      280 LOADK                            R39 K60 ["Callout"]
      281 LOADK                            R40 K61 ["BadgesDevProductsDescription"]
      282 NAMECALL                         R37 R34 K62 ["getText"]
      284 CALL                             R37 3 1
      285 LOADK                            R40 K63 ["AssetManagerBadgesDevProductCallout"]
      286 LOADK                            R41 K64 [""]
      287 MOVE                             R42 R37
      288 LOADK                            R43 K64 [""]
      289 NAMECALL                         R38 R35 K65 ["defineCallout"]
      291 CALL                             R38 5 0
      292 LOADNIL                          R36
      293 LOADNIL                          R37
      294 LOADN                            R38 1
      295 NEWTABLE                         R39 0 0
      297 NEWCLOSURE                       R40 P0
      298 CAPTURE                          REF R36
      299 CAPTURE                          VAL R8
      300 CAPTURE                          VAL R14
      301 CAPTURE                          VAL R0
      302 CAPTURE                          VAL R33
      303 CAPTURE                          REF R37
      304 CAPTURE                          VAL R34
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R30
      307 CAPTURE                          REF R35
      308 CAPTURE                          VAL R15
      309 CAPTURE                          VAL R21
      310 NEWCLOSURE                       R41 P1
      311 CAPTURE                          REF R36
      312 CAPTURE                          VAL R8
      313 NEWCLOSURE                       R42 P2
      314 CAPTURE                          REF R37
      315 NEWCLOSURE                       R43 P3
      316 CAPTURE                          VAL R3
      317 CAPTURE                          VAL R39
      318 CAPTURE                          REF R36
      319 CAPTURE                          VAL R8
      320 NEWCLOSURE                       R44 P4
      321 CAPTURE                          VAL R30
      322 CAPTURE                          VAL R27
      323 CAPTURE                          REF R38
      324 NEWCLOSURE                       R45 P5
      325 CAPTURE                          VAL R30
      326 CAPTURE                          VAL R28
      327 NEWTABLE                         R46 8 0
      329 GETIMPORT                        R47 K69 [Enum.AssetType.Image]
      331 LOADK                            R48 K70 ["Images/"]
      332 SETTABLE                         R48 R46 R47
      333 GETIMPORT                        R47 K72 [Enum.AssetType.MeshPart]
      335 LOADK                            R48 K73 ["Meshes/"]
      336 SETTABLE                         R48 R46 R47
      337 GETIMPORT                        R47 K75 [Enum.AssetType.Audio]
      339 LOADK                            R48 K76 ["Audio/"]
      340 SETTABLE                         R48 R46 R47
      341 GETIMPORT                        R47 K78 [Enum.AssetType.Video]
      343 LOADK                            R48 K79 ["Video/"]
      344 SETTABLE                         R48 R46 R47
      345 GETIMPORT                        R47 K81 [Enum.AssetType.Model]
      347 LOADK                            R48 K82 ["Models/"]
      348 SETTABLE                         R48 R46 R47
      349 NEWCLOSURE                       R47 P6
      350 CAPTURE                          VAL R46
      351 NEWCLOSURE                       R48 P7
      352 CAPTURE                          VAL R30
      353 CAPTURE                          VAL R46
      354 CAPTURE                          VAL R10
      355 CAPTURE                          REF R38
      356 CAPTURE                          VAL R27
      357 NEWCLOSURE                       R49 P8
      358 CAPTURE                          VAL R30
      359 CAPTURE                          VAL R26
      360 CAPTURE                          VAL R27
      361 CAPTURE                          REF R38
      362 CAPTURE                          VAL R3
      363 CAPTURE                          VAL R1
      364 CAPTURE                          VAL R5
      365 CAPTURE                          VAL R28
      366 CAPTURE                          VAL R23
      367 CAPTURE                          VAL R24
      368 CAPTURE                          VAL R10
      369 NEWCLOSURE                       R50 P9
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R1
      373 CAPTURE                          VAL R34
      374 CAPTURE                          REF R37
      375 CAPTURE                          VAL R40
      376 CAPTURE                          REF R36
      377 CAPTURE                          VAL R8
      378 CAPTURE                          VAL R42
      379 CAPTURE                          VAL R43
      380 CAPTURE                          VAL R49
      381 CAPTURE                          VAL R30
      382 CAPTURE                          VAL R29
      383 CAPTURE                          VAL R6
      384 CAPTURE                          VAL R48
      385 CAPTURE                          VAL R44
      386 CAPTURE                          VAL R45
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R39
      389 MOVE                             R51 R50
      390 CALL                             R51 0 0
      391 CLOSEUPVALS                      R35
      392 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_15]
        2 RETURN                           R0 1
