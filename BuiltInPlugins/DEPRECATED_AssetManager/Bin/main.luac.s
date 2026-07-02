PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Plugin handle already exists"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
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
       39 GETUPVAL                         R3 10
       40 GETTABLEKS                       R3 R3 K15 ["new"]
       42 GETUPVAL                         R4 3
       43 GETUPVAL                         R5 5
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K12 ["insertAsset"]
       47 DUPTABLE                         R3 K17 [{"MainView"}]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K3 ["createElement"]
       51 GETUPVAL                         R5 11
       52 NEWTABLE                         R6 0 0
       54 CALL                             R4 2 1
       55 SETTABLEKS                       R4 R3 K16 ["MainView"]
       57 CALL                             R0 3 1
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K18 ["mount"]
       61 MOVE                             R2 R0
       62 GETUPVAL                         R3 5
       63 CALL                             R1 2 1
       64 SETUPVAL                         R1 0
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

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
        6 GETTABLEKS                       R2 R0 K3 ["AssetManagerReducer"]
        8 GETTABLEKS                       R2 R2 K4 ["recentAssets"]
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
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       24 GETTABLEKS                       R6 R6 K8 ["join"]
       26 GETTABLEKS                       R7 R3 K9 ["AssetManagerReducer"]
       28 GETTABLEKS                       R7 R7 K10 ["recentAssets"]
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
       13 GETTABLEKS                       R3 R1 K4 ["AssetManagerReducer"]
       15 GETTABLEKS                       R3 R3 K5 ["recentAssets"]
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
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R6 R6 K26 ["Dictionary"]
      108 GETTABLEKS                       R6 R6 K27 ["join"]
      110 GETTABLEKS                       R7 R3 K28 ["AssetManagerReducer"]
      112 GETTABLEKS                       R7 R7 K29 ["recentAssets"]
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
        5 GETUPVAL                         R2 4
        6 GETTABLEKS                       R2 R2 K1 ["signals"]
        8 GETTABLEKS                       R1 R2 K0 ["BulkImportService.BulkImportStarted"]
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K2 ["Connect"]
       13 CALL                             R1 2 0
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U5
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K1 ["signals"]
       21 GETTABLEKS                       R2 R3 K3 ["BulkImportService.BulkImportFinished"]
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R2 K2 ["Connect"]
       26 CALL                             R2 2 0
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U2
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K1 ["signals"]
       37 GETTABLEKS                       R3 R4 K4 ["BulkImportService.AssetImported"]
       39 MOVE                             R5 R2
       40 NAMECALL                         R3 R3 K2 ["Connect"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 JUMP                             ; [+9]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["unmount"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 4
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["Enabled"]
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
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K2 ["mainButton"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K3 ["mainDockWidget"]
       16 SETUPVAL                         R2 2
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["mainButtonClickedSignal"]
       20 GETUPVAL                         R4 6
       21 NAMECALL                         R2 R2 K5 ["Connect"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 2
       25 LOADK                            R4 K6 ["Enabled"]
       26 NAMECALL                         R2 R2 K7 ["GetPropertyChangedSignal"]
       28 CALL                             R2 2 1
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R2 K8 ["connect"]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K6 ["Enabled"]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETUPVAL                         R2 3
       38 CALL                             R2 0 0
       39 JUMP                             ; [+9]
       40 GETUPVAL                         R2 4
       41 JUMPIFNOT                        R2 ; [+7]
       42 GETUPVAL                         R2 5
       43 GETTABLEKS                       R2 R2 K9 ["unmount"]
       45 GETUPVAL                         R3 4
       46 CALL                             R2 1 0
       47 LOADNIL                          R2
       48 SETUPVAL                         R2 4
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K6 ["Enabled"]
       52 NAMECALL                         R2 R0 K10 ["SetActive"]
       54 CALL                             R2 2 0
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K11 ["Unloading"]
       58 GETUPVAL                         R4 7
       59 NAMECALL                         R2 R2 K5 ["Connect"]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R2 8
       63 CALL                             R2 0 0
       64 NEWCLOSURE                       R2 P1
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          UPVAL U10
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K13 ["signals"]
       70 GETTABLEKS                       R3 R4 K12 ["StudioPublishService.GameNameUpdated"]
       72 MOVE                             R5 R2
       73 NAMECALL                         R3 R3 K5 ["Connect"]
       75 CALL                             R3 2 0
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R4 R4 K13 ["signals"]
       79 GETTABLEKS                       R3 R4 K14 ["AssetManagerService.AssetImportedSignal"]
       81 GETUPVAL                         R5 11
       82 NAMECALL                         R3 R3 K5 ["Connect"]
       84 CALL                             R3 2 0
       85 GETUPVAL                         R4 1
       86 GETTABLEKS                       R4 R4 K13 ["signals"]
       88 GETTABLEKS                       R3 R4 K15 ["AssetManagerService.ImportSessionStarted"]
       90 GETUPVAL                         R5 12
       91 NAMECALL                         R3 R3 K5 ["Connect"]
       93 CALL                             R3 2 0
       94 GETUPVAL                         R4 1
       95 GETTABLEKS                       R4 R4 K13 ["signals"]
       97 GETTABLEKS                       R3 R4 K16 ["AssetManagerService.ImportSessionFinished"]
       99 GETUPVAL                         R5 13
      100 NAMECALL                         R3 R3 K5 ["Connect"]
      102 CALL                             R3 2 0
      103 RETURN                           R0 0

PROTO_15:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R3 K3 [script]
        6 GETTABLEKS                       R3 R3 K4 ["Parent"]
        8 GETTABLEKS                       R3 R3 K5 ["commonInit"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETIMPORT                        R3 K3 [script]
       15 GETTABLEKS                       R3 R3 K4 ["Parent"]
       17 GETTABLEKS                       R3 R3 K4 ["Parent"]
       19 GETIMPORT                        R4 K1 [require]
       21 GETTABLEKS                       R5 R3 K6 ["Packages"]
       23 GETTABLEKS                       R5 R5 K7 ["Roact"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K1 [require]
       28 GETTABLEKS                       R6 R3 K6 ["Packages"]
       30 GETTABLEKS                       R6 R6 K8 ["Rodux"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K1 [require]
       35 GETTABLEKS                       R7 R3 K6 ["Packages"]
       37 GETTABLEKS                       R7 R7 K9 ["Cryo"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K1 [require]
       42 GETTABLEKS                       R8 R3 K6 ["Packages"]
       44 GETTABLEKS                       R8 R8 K10 ["Framework"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K1 [require]
       49 GETTABLEKS                       R9 R3 K6 ["Packages"]
       51 GETTABLEKS                       R9 R9 K11 ["InsertAsset"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R7 K12 ["ContextServices"]
       56 GETIMPORT                        R10 K1 [require]
       58 GETTABLEKS                       R11 R3 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K14 ["Components"]
       62 GETTABLEKS                       R11 R11 K15 ["ServiceWrapper"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R8 K16 ["Context"]
       67 GETTABLEKS                       R11 R11 K17 ["InsertAssetContext"]
       69 GETIMPORT                        R12 K1 [require]
       71 GETTABLEKS                       R13 R3 K13 ["Src"]
       73 GETTABLEKS                       R13 R13 K18 ["Reducers"]
       75 GETTABLEKS                       R13 R13 K19 ["MainReducer"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K1 [require]
       80 GETTABLEKS                       R14 R3 K13 ["Src"]
       82 GETTABLEKS                       R14 R14 K20 ["Middleware"]
       84 GETTABLEKS                       R14 R14 K21 ["MainMiddleware"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K1 [require]
       89 GETTABLEKS                       R15 R3 K13 ["Src"]
       91 GETTABLEKS                       R15 R15 K22 ["Resources"]
       93 GETTABLEKS                       R15 R15 K23 ["AnalyticsHandlers"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R3 K13 ["Src"]
       98 GETTABLEKS                       R15 R15 K22 ["Resources"]
      100 GETTABLEKS                       R15 R15 K24 ["SourceStrings"]
      102 GETTABLEKS                       R16 R3 K13 ["Src"]
      104 GETTABLEKS                       R16 R16 K22 ["Resources"]
      106 GETTABLEKS                       R16 R16 K25 ["LocalizedStrings"]
      108 GETIMPORT                        R17 K1 [require]
      110 GETTABLEKS                       R18 R3 K13 ["Src"]
      112 GETTABLEKS                       R18 R18 K14 ["Components"]
      114 GETTABLEKS                       R18 R18 K26 ["MainView"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K1 [require]
      119 GETTABLEKS                       R19 R3 K13 ["Src"]
      121 GETTABLEKS                       R19 R19 K27 ["Util"]
      123 GETTABLEKS                       R19 R19 K28 ["AssetManagerUtilities"]
      125 CALL                             R18 1 1
      126 GETTABLEKS                       R19 R18 K29 ["enableAudioImport"]
      128 GETTABLEKS                       R20 R18 K30 ["enableVideoImport"]
      130 GETTABLEKS                       R21 R18 K31 ["enableBadgesCallout"]
      132 GETIMPORT                        R22 K1 [require]
      134 GETTABLEKS                       R23 R3 K13 ["Src"]
      136 GETTABLEKS                       R23 R23 K32 ["Actions"]
      138 GETTABLEKS                       R23 R23 K33 ["SetBulkImporterRunning"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K1 [require]
      143 GETTABLEKS                       R24 R3 K13 ["Src"]
      145 GETTABLEKS                       R24 R24 K32 ["Actions"]
      147 GETTABLEKS                       R24 R24 K34 ["SetRecentAssets"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K1 [require]
      152 GETTABLEKS                       R25 R3 K13 ["Src"]
      154 GETTABLEKS                       R25 R25 K32 ["Actions"]
      156 GETTABLEKS                       R25 R25 K35 ["SetRecentViewToggled"]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K1 [require]
      161 GETTABLEKS                       R26 R3 K13 ["Src"]
      163 GETTABLEKS                       R26 R26 K32 ["Actions"]
      165 GETTABLEKS                       R26 R26 K36 ["SetUniverseName"]
      167 CALL                             R25 1 1
      168 GETTABLEKS                       R26 R5 K37 ["Store"]
      170 GETTABLEKS                       R26 R26 K38 ["new"]
      172 MOVE                             R27 R12
      173 NEWTABLE                         R28 0 0
      175 MOVE                             R29 R13
      176 CALL                             R26 3 1
      177 GETIMPORT                        R27 K1 [require]
      179 GETTABLEKS                       R28 R3 K13 ["Src"]
      181 GETTABLEKS                       R28 R28 K22 ["Resources"]
      183 GETTABLEKS                       R28 R28 K39 ["Theme"]
      185 CALL                             R27 1 1
      186 MOVE                             R28 R27
      187 CALL                             R28 0 1
      188 GETTABLEKS                       R29 R9 K40 ["Analytics"]
      190 GETTABLEKS                       R29 R29 K38 ["new"]
      192 MOVE                             R30 R14
      193 CALL                             R29 1 1
      194 GETTABLEKS                       R30 R9 K41 ["Localization"]
      196 GETTABLEKS                       R30 R30 K38 ["new"]
      198 DUPTABLE                         R31 K47 [{["pluginName"] = "AssetManager", ["stringResourceTable"], ["translationResourceTable"], ["libraries"]}]
      199 SETTABLEKS                       R15 R31 K44 ["stringResourceTable"]
      201 SETTABLEKS                       R16 R31 K45 ["translationResourceTable"]
      203 NEWTABLE                         R32 1 0
      205 GETTABLEKS                       R33 R7 K22 ["Resources"]
      207 GETTABLEKS                       R33 R33 K48 ["LOCALIZATION_PROJECT_NAME"]
      209 DUPTABLE                         R34 K49 [{"stringResourceTable", "translationResourceTable"}]
      210 GETTABLEKS                       R35 R7 K22 ["Resources"]
      212 GETTABLEKS                       R35 R35 K24 ["SourceStrings"]
      214 SETTABLEKS                       R35 R34 K44 ["stringResourceTable"]
      216 GETTABLEKS                       R35 R7 K22 ["Resources"]
      218 GETTABLEKS                       R35 R35 K25 ["LocalizedStrings"]
      220 SETTABLEKS                       R35 R34 K45 ["translationResourceTable"]
      222 SETTABLE                         R34 R32 R33
      223 SETTABLEKS                       R32 R31 K46 ["libraries"]
      225 CALL                             R30 1 1
      226 LOADNIL                          R31
      227 MOVE                             R32 R21
      228 CALL                             R32 0 1
      229 JUMPIFNOT                        R32 ; [+25]
      230 GETIMPORT                        R32 K1 [require]
      232 GETTABLEKS                       R33 R3 K13 ["Src"]
      234 GETTABLEKS                       R33 R33 K27 ["Util"]
      236 GETTABLEKS                       R33 R33 K50 ["CalloutController"]
      238 CALL                             R32 1 1
      239 GETTABLEKS                       R33 R32 K38 ["new"]
      241 CALL                             R33 0 1
      242 MOVE                             R31 R33
      243 LOADK                            R35 K51 ["Callout"]
      244 LOADK                            R36 K52 ["BadgesDevProductsDescription"]
      245 NAMECALL                         R33 R30 K53 ["getText"]
      247 CALL                             R33 3 1
      248 LOADK                            R36 K54 ["AssetManagerBadgesDevProductCallout"]
      249 LOADK                            R37 K55 [""]
      250 MOVE                             R38 R33
      251 LOADK                            R39 K55 [""]
      252 NAMECALL                         R34 R31 K56 ["defineCallout"]
      254 CALL                             R34 5 0
      255 LOADNIL                          R32
      256 LOADNIL                          R33
      257 LOADN                            R34 1
      258 NEWCLOSURE                       R35 P0
      259 CAPTURE                          REF R32
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R0
      263 CAPTURE                          VAL R29
      264 CAPTURE                          REF R33
      265 CAPTURE                          VAL R30
      266 CAPTURE                          VAL R28
      267 CAPTURE                          VAL R26
      268 CAPTURE                          REF R31
      269 CAPTURE                          VAL R11
      270 CAPTURE                          VAL R17
      271 NEWCLOSURE                       R36 P1
      272 CAPTURE                          REF R32
      273 CAPTURE                          VAL R4
      274 NEWCLOSURE                       R37 P2
      275 CAPTURE                          REF R33
      276 NEWCLOSURE                       R38 P3
      277 CAPTURE                          REF R32
      278 CAPTURE                          VAL R4
      279 NEWCLOSURE                       R39 P4
      280 CAPTURE                          VAL R26
      281 CAPTURE                          VAL R23
      282 CAPTURE                          REF R34
      283 NEWCLOSURE                       R40 P5
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R24
      286 NEWTABLE                         R41 8 0
      288 GETIMPORT                        R42 K60 [Enum.AssetType.Image]
      290 LOADK                            R43 K61 ["Images/"]
      291 SETTABLE                         R43 R41 R42
      292 GETIMPORT                        R42 K63 [Enum.AssetType.MeshPart]
      294 LOADK                            R43 K64 ["Meshes/"]
      295 SETTABLE                         R43 R41 R42
      296 GETIMPORT                        R42 K66 [Enum.AssetType.Audio]
      298 LOADK                            R43 K67 ["Audio/"]
      299 SETTABLE                         R43 R41 R42
      300 GETIMPORT                        R42 K69 [Enum.AssetType.Video]
      302 LOADK                            R43 K70 ["Video/"]
      303 SETTABLE                         R43 R41 R42
      304 GETIMPORT                        R42 K72 [Enum.AssetType.Model]
      306 LOADK                            R43 K73 ["Models/"]
      307 SETTABLE                         R43 R41 R42
      308 NEWCLOSURE                       R42 P6
      309 CAPTURE                          VAL R41
      310 NEWCLOSURE                       R43 P7
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R6
      314 CAPTURE                          REF R34
      315 CAPTURE                          VAL R23
      316 NEWCLOSURE                       R44 P8
      317 CAPTURE                          VAL R26
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R23
      320 CAPTURE                          REF R34
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R19
      324 CAPTURE                          VAL R20
      325 CAPTURE                          VAL R6
      326 NEWCLOSURE                       R45 P9
      327 CAPTURE                          VAL R0
      328 CAPTURE                          VAL R1
      329 CAPTURE                          REF R33
      330 CAPTURE                          VAL R35
      331 CAPTURE                          REF R32
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R37
      334 CAPTURE                          VAL R38
      335 CAPTURE                          VAL R44
      336 CAPTURE                          VAL R26
      337 CAPTURE                          VAL R25
      338 CAPTURE                          VAL R43
      339 CAPTURE                          VAL R39
      340 CAPTURE                          VAL R40
      341 MOVE                             R46 R45
      342 CALL                             R46 0 0
      343 CLOSEUPVALS                      R31
      344 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_15]
        2 RETURN                           R0 1
