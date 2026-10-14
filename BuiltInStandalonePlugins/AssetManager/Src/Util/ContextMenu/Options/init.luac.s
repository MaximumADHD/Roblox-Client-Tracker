PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["OpenAssetConfigurationKey"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R7 K3 [{"id", "assetType"}]
        6 SETTABLEKS                       R0 R7 K1 ["id"]
        8 SETTABLEKS                       R1 R7 K2 ["assetType"]
       10 NAMECALL                         R5 R5 K4 ["JSONEncode"]
       12 CALL                             R5 2 -1
       13 NAMECALL                         R2 R2 K5 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 NAMECALL                         R3 R3 K1 ["getGameInfo"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"gameName"}]
        6 GETTABLEKS                       R5 R3 K4 ["Name"]
        8 SETTABLEKS                       R5 R4 K2 ["gameName"]
       10 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getItemsCache"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getCurrentShownScope"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["keys"]
       11 NAMECALL                         R7 R3 K4 ["getSelection"]
       13 CALL                             R7 1 -1
       14 CALL                             R6 -1 1
       15 GETTABLEKS                       R9 R5 K5 ["Uid"]
       17 MOVE                             R10 R6
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R11 R11 K7 ["AssetId"]
       23 NAMECALL                         R7 R4 K8 ["getData"]
       25 CALL                             R7 4 1
       26 GETTABLEKS                       R10 R5 K5 ["Uid"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K6 ["AssetInfoField"]
       32 GETTABLEKS                       R12 R12 K9 ["AssetType"]
       34 NAMECALL                         R8 R4 K8 ["getData"]
       36 CALL                             R8 4 1
       37 GETUPVAL                         R9 2
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+12]
       40 GETTABLEKS                       R12 R5 K5 ["Uid"]
       42 MOVE                             R13 R6
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K6 ["AssetInfoField"]
       46 GETTABLEKS                       R14 R14 K10 ["Creator"]
       48 NAMECALL                         R10 R4 K8 ["getData"]
       50 CALL                             R10 4 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R10
       53 DUPTABLE                         R11 K14 [{"assetIds", "assetTypes", "creators"}]
       54 NEWTABLE                         R12 0 0
       56 SETTABLEKS                       R12 R11 K11 ["assetIds"]
       58 NEWTABLE                         R12 0 0
       60 SETTABLEKS                       R12 R11 K12 ["assetTypes"]
       62 JUMPIFNOT                        R9 ; [+3]
       63 NEWTABLE                         R12 0 0
       65 JUMP                             ; [+1]
       66 LOADNIL                          R12
       67 SETTABLEKS                       R12 R11 K13 ["creators"]
       69 MOVE                             R12 R8
       70 LOADNIL                          R13
       71 LOADNIL                          R14
       72 FORGPREP                         R12
       73 GETUPVAL                         R17 3
       74 MOVE                             R18 R16
       75 CALL                             R17 1 1
       76 JUMPIFNOT                        R17 ; [+30]
       77 GETTABLEKS                       R18 R11 K11 ["assetIds"]
       79 GETTABLE                         R19 R7 R15
       80 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
       82 GETIMPORT                        R17 K17 [table.insert]
       84 CALL                             R17 2 0
       85 GETTABLEKS                       R18 R11 K12 ["assetTypes"]
       87 FASTCALL2                        TABLE_INSERT R18 R16 ; [+4]
       89 MOVE                             R19 R16
       90 GETIMPORT                        R17 K17 [table.insert]
       92 CALL                             R17 2 0
       93 JUMPIFEQKNIL                     R10 ; [+13]
       95 GETTABLEKS                       R17 R11 K13 ["creators"]
       97 JUMPIFEQKNIL                     R17 ; [+9]
       99 GETTABLEKS                       R18 R11 K13 ["creators"]
      101 GETTABLE                         R19 R10 R15
      102 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      104 GETIMPORT                        R17 K17 [table.insert]
      106 CALL                             R17 2 0
      107 FORGLOOP                         R12 2 ; [-35]
      109 GETTABLEKS                       R13 R11 K11 ["assetIds"]
      111 LENGTH                           R12 R13
      112 JUMPIFNOTEQKN                    R12 K18 [0] ; [+2]
      114 RETURN                           R0 0
      115 GETTABLEKS                       R12 R1 K19 ["PluginController"]
      117 NAMECALL                         R12 R12 K20 ["getPlugin"]
      119 CALL                             R12 1 1
      120 LOADK                            R14 K21 ["OnAddToExperience"]
      121 MOVE                             R15 R11
      122 MOVE                             R16 R5
      123 NAMECALL                         R12 R12 K22 ["Invoke"]
      125 CALL                             R12 4 0
      126 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["PluginController"]
       16 NAMECALL                         R3 R3 K3 ["getGameInfo"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K4 ["Id"]
       21 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R1 K6 ["ItemsController"]
       27 NAMECALL                         R3 R3 K7 ["getCurrentShownScope"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K8 ["ExplorerController"]
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R4 K9 ["getScopeRoot"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+18]
       37 GETTABLEKS                       R5 R4 K10 ["Type"]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K12 ["Universe"]
       44 JUMPIFEQ                         R5 R6 ; [+8]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       49 GETTABLEKS                       R6 R6 K13 ["ProjectPlaces"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADB                            R6 0
       54 RETURN                           R6 1
       55 GETTABLEKS                       R5 R1 K6 ["ItemsController"]
       57 NAMECALL                         R5 R5 K14 ["selectionHasInsertableAssets"]
       59 CALL                             R5 1 -1
       60 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+21]
        7 GETTABLEKS                       R4 R3 K2 ["AssetId"]
        9 GETTABLEKS                       R5 R3 K3 ["AssetType"]
       11 GETUPVAL                         R6 0
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K4 ["OpenAssetConfigurationKey"]
       15 GETUPVAL                         R9 2
       16 DUPTABLE                         R11 K7 [{"id", "assetType"}]
       17 SETTABLEKS                       R4 R11 K5 ["id"]
       19 SETTABLEKS                       R5 R11 K6 ["assetType"]
       21 NAMECALL                         R9 R9 K8 ["JSONEncode"]
       23 CALL                             R9 2 -1
       24 NAMECALL                         R6 R6 K9 ["Fire"]
       26 CALL                             R6 -1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getCurrentShownScope"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K4 ["Type"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["ScopeType"]
       19 GETTABLEKS                       R5 R5 K6 ["ProjectPlaces"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+3]
       23 LOADB                            R4 0
       24 RETURN                           R4 1
       25 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       27 NAMECALL                         R4 R4 K7 ["getSingleItemSelected"]
       29 CALL                             R4 1 1
       30 LOADB                            R5 0
       31 JUMPIFEQKNIL                     R4 ; [+5]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R6 R4 K8 ["AssetType"]
       36 CALL                             R5 1 1
       37 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getCurrentShownScope"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getItemsCache"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["keys"]
       11 NAMECALL                         R7 R3 K4 ["getSelection"]
       13 CALL                             R7 1 -1
       14 CALL                             R6 -1 1
       15 GETTABLEKS                       R9 R4 K5 ["Uid"]
       17 MOVE                             R10 R6
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R11 R11 K7 ["AssetId"]
       23 NAMECALL                         R7 R5 K8 ["getData"]
       25 CALL                             R7 4 1
       26 GETTABLEKS                       R10 R4 K5 ["Uid"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K6 ["AssetInfoField"]
       32 GETTABLEKS                       R12 R12 K9 ["VersionNumber"]
       34 NAMECALL                         R8 R5 K8 ["getData"]
       36 CALL                             R8 4 1
       37 GETTABLEKS                       R11 R4 K5 ["Uid"]
       39 MOVE                             R12 R6
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K6 ["AssetInfoField"]
       43 GETTABLEKS                       R13 R13 K10 ["DraftStatus"]
       45 NAMECALL                         R9 R5 K8 ["getData"]
       47 CALL                             R9 4 1
       48 NEWTABLE                         R10 0 0
       50 NEWTABLE                         R11 0 0
       52 MOVE                             R12 R9
       53 LOADNIL                          R13
       54 LOADNIL                          R14
       55 FORGPREP                         R12
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K10 ["DraftStatus"]
       59 GETTABLEKS                       R17 R17 K11 ["Draft"]
       61 JUMPIFNOTEQ                      R16 R17 ; [+15]
       63 GETTABLE                         R19 R7 R15
       64 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
       66 MOVE                             R18 R10
       67 GETIMPORT                        R17 K14 [table.insert]
       69 CALL                             R17 2 0
       70 GETTABLE                         R19 R8 R15
       71 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       73 MOVE                             R18 R11
       74 GETIMPORT                        R17 K14 [table.insert]
       76 CALL                             R17 2 0
       77 FORGLOOP                         R12 2 ; [-22]
       79 LENGTH                           R12 R10
       80 JUMPIFNOTEQKN                    R12 K15 [0] ; [+2]
       82 RETURN                           R0 0
       83 GETTABLEKS                       R12 R1 K16 ["PluginController"]
       85 NAMECALL                         R12 R12 K17 ["getPlugin"]
       87 CALL                             R12 1 1
       88 LOADK                            R14 K18 ["OnPublishItems"]
       89 MOVE                             R15 R10
       90 MOVE                             R16 R11
       91 NAMECALL                         R12 R12 K19 ["Invoke"]
       93 CALL                             R12 4 0
       94 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R3 K3 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["Type"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       24 GETTABLEKS                       R6 R6 K6 ["ProjectPlaces"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+3]
       28 LOADB                            R5 0
       29 RETURN                           R5 1
       30 NAMECALL                         R5 R3 K7 ["selectionHasDraftAssets"]
       32 CALL                             R5 1 -1
       33 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
        4 NAMECALL                         R5 R5 K2 ["getSingleItemSelected"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K3 ["importAssetVersion"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+22]
        8 LOADB                            R4 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
       12 GETTABLEKS                       R5 R5 K3 ["Asset"]
       14 JUMPIFNOTEQ                      R0 R5 ; [+15]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+12]
       19 GETTABLEKS                       R5 R3 K4 ["AssetType"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       24 GETTABLEKS                       R6 R6 K5 ["Mesh"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETUPVAL                         R5 2
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+22]
       33 LOADB                            R5 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K2 ["MenuContext"]
       37 GETTABLEKS                       R6 R6 K3 ["Asset"]
       39 JUMPIFNOTEQ                      R0 R6 ; [+15]
       41 LOADB                            R5 0
       42 JUMPIFEQKNIL                     R3 ; [+12]
       44 GETTABLEKS                       R6 R3 K4 ["AssetType"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       49 GETTABLEKS                       R7 R7 K6 ["Image"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETUPVAL                         R6 3
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+22]
       58 LOADB                            R6 0
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K2 ["MenuContext"]
       62 GETTABLEKS                       R7 R7 K3 ["Asset"]
       64 JUMPIFNOTEQ                      R0 R7 ; [+15]
       66 LOADB                            R6 0
       67 JUMPIFEQKNIL                     R3 ; [+12]
       69 GETTABLEKS                       R7 R3 K4 ["AssetType"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K4 ["AssetType"]
       74 GETTABLEKS                       R8 R8 K7 ["Animation"]
       76 JUMPIFEQ                         R7 R8 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 MOVE                             R7 R4
       81 JUMPIF                           R7 ; [+3]
       82 MOVE                             R7 R5
       83 JUMPIF                           R7 ; [+1]
       84 MOVE                             R7 R6
       85 RETURN                           R7 1

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K2 ["PluginController"]
        7 NAMECALL                         R4 R4 K3 ["getPlugin"]
        9 CALL                             R4 1 1
       10 LOADK                            R6 K4 ["OnSelectItems"]
       11 GETUPVAL                         R7 0
       12 MOVE                             R9 R3
       13 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       15 CALL                             R7 2 -1
       16 NAMECALL                         R4 R4 K6 ["Invoke"]
       18 CALL                             R4 -1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["selectionHasInsertableAssets"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
        4 CALL                             R3 1 1
        5 LOADB                            R4 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
        9 GETTABLEKS                       R5 R5 K3 ["Asset"]
       11 JUMPIFNOTEQ                      R0 R5 ; [+12]
       13 GETTABLEKS                       R5 R3 K4 ["Type"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R6 K6 ["RecentUploads"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

PROTO_14:
        0 GETIMPORT                        R3 K1 [next]
        2 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
        4 NAMECALL                         R4 R4 K3 ["getSelection"]
        6 CALL                             R4 1 -1
        7 CALL                             R3 -1 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R1 K4 ["LayoutController"]
       13 NAMECALL                         R3 R3 K5 ["openDetailsDrawer"]
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        6 GETTABLEKS                       R3 R3 K1 ["Asset"]
        8 JUMPIFEQ                         R0 R3 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETIMPORT                        R4 K3 [next]
       14 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       16 NAMECALL                         R5 R5 K5 ["getSelection"]
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 1
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssetManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Resources"]
       39 GETTABLEKS                       R6 R6 K16 ["Constants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K13 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Flags"]
       48 GETTABLEKS                       R7 R7 K18 ["getFFlagAmrAssetDetailView"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETIMPORT                        R8 K6 [script]
       55 GETTABLEKS                       R8 R8 K19 ["FolderOptions"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETIMPORT                        R9 K6 [script]
       62 GETTABLEKS                       R9 R9 K20 ["GeneralOptions"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETIMPORT                        R10 K6 [script]
       69 GETTABLEKS                       R10 R10 K21 ["InsertOptions"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETIMPORT                        R11 K6 [script]
       76 GETTABLEKS                       R11 R11 K22 ["PlaceManagementOptions"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETIMPORT                        R12 K6 [script]
       83 GETTABLEKS                       R12 R12 K23 ["PluginManagementOptions"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETIMPORT                        R13 K6 [script]
       90 GETTABLEKS                       R13 R13 K24 ["SidebarOptions"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETIMPORT                        R14 K6 [script]
       97 GETTABLEKS                       R14 R14 K25 ["ShareOptions"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETIMPORT                        R15 K6 [script]
      104 GETTABLEKS                       R15 R15 K26 ["getListColumnOptions"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R2 K13 ["Src"]
      111 GETTABLEKS                       R16 R16 K27 ["Util"]
      113 GETTABLEKS                       R16 R16 K28 ["isInsertable"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R2 K13 ["Src"]
      120 GETTABLEKS                       R17 R17 K17 ["Flags"]
      122 GETTABLEKS                       R17 R17 K29 ["getEFCinMeshVersioning"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R18 R2 K13 ["Src"]
      129 GETTABLEKS                       R18 R18 K17 ["Flags"]
      131 GETTABLEKS                       R18 R18 K30 ["getEFImportAnimationVersions"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K10 [require]
      136 GETTABLEKS                       R19 R2 K13 ["Src"]
      138 GETTABLEKS                       R19 R19 K17 ["Flags"]
      140 GETTABLEKS                       R19 R19 K31 ["getFFlagAmrImageVersioning"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K10 [require]
      145 GETTABLEKS                       R20 R2 K13 ["Src"]
      147 GETTABLEKS                       R20 R20 K17 ["Flags"]
      149 GETTABLEKS                       R20 R20 K32 ["getFFlagAmrAddToExperience"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K10 [require]
      154 GETTABLEKS                       R21 R2 K13 ["Src"]
      156 GETTABLEKS                       R21 R21 K17 ["Flags"]
      158 GETTABLEKS                       R21 R21 K33 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K10 [require]
      163 GETTABLEKS                       R22 R2 K13 ["Src"]
      165 GETTABLEKS                       R22 R22 K17 ["Flags"]
      167 GETTABLEKS                       R22 R22 K34 ["getFFlagAmrEnablePublishOption"]
      169 CALL                             R21 1 1
      170 DUPCLOSURE                       R22 K35 [PROTO_0]
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R0
      174 DUPTABLE                         R23 K43 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddToExperience", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      175 DUPCLOSURE                       R24 K44 [PROTO_1]
      176 SETTABLEKS                       R24 R23 K40 ["GetSubkeyArgs"]
      178 DUPCLOSURE                       R24 K45 [PROTO_2]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R15
      183 SETTABLEKS                       R24 R23 K41 ["OnItemClicked"]
      185 DUPCLOSURE                       R24 K46 [PROTO_3]
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R4
      188 SETTABLEKS                       R24 R23 K42 ["ShouldRender"]
      190 DUPTABLE                         R24 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Edit", ["OnItemClicked"], ["ShouldRender"]}]
      191 DUPCLOSURE                       R25 K49 [PROTO_4]
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R25 R24 K41 ["OnItemClicked"]
      197 DUPCLOSURE                       R25 K50 [PROTO_5]
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R15
      200 SETTABLEKS                       R25 R24 K42 ["ShouldRender"]
      202 DUPTABLE                         R25 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Publish", ["OnItemClicked"], ["ShouldRender"]}]
      203 DUPCLOSURE                       R26 K53 [PROTO_6]
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R4
      206 SETTABLEKS                       R26 R25 K41 ["OnItemClicked"]
      208 DUPCLOSURE                       R26 K54 [PROTO_7]
      209 CAPTURE                          VAL R21
      210 CAPTURE                          VAL R4
      211 SETTABLEKS                       R26 R25 K42 ["ShouldRender"]
      213 DUPTABLE                         R26 K56 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ImportAssetVersion", ["OnItemClicked"], ["ShouldRender"]}]
      214 DUPCLOSURE                       R27 K57 [PROTO_8]
      215 SETTABLEKS                       R27 R26 K41 ["OnItemClicked"]
      217 DUPCLOSURE                       R27 K58 [PROTO_9]
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R17
      222 SETTABLEKS                       R27 R26 K42 ["ShouldRender"]
      224 DUPTABLE                         R27 K60 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "FindInExplorer", ["OnItemClicked"], ["ShouldRender"]}]
      225 DUPCLOSURE                       R28 K61 [PROTO_10]
      226 CAPTURE                          VAL R0
      227 SETTABLEKS                       R28 R27 K41 ["OnItemClicked"]
      229 DUPCLOSURE                       R28 K62 [PROTO_11]
      230 CAPTURE                          VAL R4
      231 SETTABLEKS                       R28 R27 K42 ["ShouldRender"]
      233 DUPTABLE                         R28 K64 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ClearRecent", ["OnItemClicked"], ["ShouldRender"]}]
      234 DUPCLOSURE                       R29 K65 [PROTO_12]
      235 SETTABLEKS                       R29 R28 K41 ["OnItemClicked"]
      237 DUPCLOSURE                       R29 K66 [PROTO_13]
      238 CAPTURE                          VAL R4
      239 SETTABLEKS                       R29 R28 K42 ["ShouldRender"]
      241 DUPTABLE                         R29 K68 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewDetails", ["OnItemClicked"], ["ShouldRender"]}]
      242 DUPCLOSURE                       R30 K69 [PROTO_14]
      243 SETTABLEKS                       R30 R29 K41 ["OnItemClicked"]
      245 DUPCLOSURE                       R30 K70 [PROTO_15]
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R4
      248 SETTABLEKS                       R30 R29 K42 ["ShouldRender"]
      250 NEWTABLE                         R30 0 5
      252 MOVE                             R31 R7
      253 GETTABLEKS                       R32 R3 K71 ["append"]
      255 MOVE                             R33 R10
      256 MOVE                             R34 R11
      257 MOVE                             R35 R12
      258 NEWTABLE                         R36 0 1
      260 MOVE                             R37 R23
      261 SETLIST                          R36 R37 1 [1]
      263 MOVE                             R37 R9
      264 NEWTABLE                         R38 0 1
      266 MOVE                             R39 R24
      267 SETLIST                          R38 R39 1 [1]
      269 NEWTABLE                         R39 0 1
      271 MOVE                             R40 R25
      272 SETLIST                          R39 R40 1 [1]
      274 MOVE                             R40 R13
      275 NEWTABLE                         R41 0 1
      277 MOVE                             R42 R27
      278 SETLIST                          R41 R42 1 [1]
      280 NEWTABLE                         R42 0 1
      282 MOVE                             R43 R26
      283 SETLIST                          R42 R43 1 [1]
      285 NEWTABLE                         R43 0 1
      287 MOVE                             R44 R29
      288 SETLIST                          R43 R44 1 [1]
      290 CALL                             R32 11 1
      291 MOVE                             R33 R8
      292 NEWTABLE                         R34 0 1
      294 MOVE                             R35 R28
      295 SETLIST                          R34 R35 1 [1]
      297 MOVE                             R35 R14
      298 CALL                             R35 0 -1
      299 SETLIST                          R30 R31 -1 [1]
      301 RETURN                           R30 1
