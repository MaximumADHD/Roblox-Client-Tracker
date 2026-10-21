PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 NAMECALL                         R3 R3 K1 ["getGameInfo"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"gameName"}]
        6 GETTABLEKS                       R5 R3 K4 ["Name"]
        8 SETTABLEKS                       R5 R4 K2 ["gameName"]
       10 RETURN                           R4 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+7]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R3 K2 ["AssetId"]
       10 GETTABLEKS                       R6 R3 K3 ["AssetType"]
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
        4 NAMECALL                         R5 R5 K2 ["getSingleItemSelected"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K3 ["importAssetVersion"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+20]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R1 K2 ["PluginController"]
       10 NAMECALL                         R4 R4 K3 ["getPlugin"]
       12 CALL                             R4 1 1
       13 LOADK                            R6 K4 ["OnSelectItems"]
       14 GETUPVAL                         R7 1
       15 MOVE                             R9 R3
       16 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       18 CALL                             R7 2 -1
       19 NAMECALL                         R4 R4 K6 ["Invoke"]
       21 CALL                             R4 -1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       25 NAMECALL                         R3 R3 K7 ["DEPRECATED_getSelectionIdsHelper"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K2 ["PluginController"]
       30 NAMECALL                         R4 R4 K3 ["getPlugin"]
       32 CALL                             R4 1 1
       33 LOADK                            R6 K4 ["OnSelectItems"]
       34 GETUPVAL                         R7 1
       35 MOVE                             R9 R3
       36 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       38 CALL                             R7 2 -1
       39 NAMECALL                         R4 R4 K6 ["Invoke"]
       41 CALL                             R4 -1 0
       42 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+8]
        7 GETTABLEKS                       R4 R1 K0 ["ItemsController"]
        9 GETTABLEKS                       R6 R3 K2 ["Path"]
       11 NAMECALL                         R4 R4 K3 ["showItemInFolder"]
       13 CALL                             R4 2 0
       14 RETURN                           R0 0

PROTO_12:
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
       14 GETTABLEKS                       R3 R1 K2 ["SearchController"]
       16 NAMECALL                         R3 R3 K3 ["getIsSearchInitiated"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       21 NAMECALL                         R5 R5 K5 ["getCurrentShownScope"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R5 R5 K6 ["Type"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["ScopeType"]
       29 GETTABLEKS                       R6 R6 K8 ["RecentUploads"]
       31 JUMPIFEQ                         R5 R6 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 JUMPIF                           R3 ; [+3]
       36 JUMPIF                           R4 ; [+2]
       37 LOADB                            R5 0
       38 RETURN                           R5 1
       39 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       41 NAMECALL                         R5 R5 K9 ["getSingleItemSelected"]
       43 CALL                             R5 1 1
       44 LOADB                            R6 0
       45 JUMPIFEQKNIL                     R5 ; [+22]
       47 LOADB                            R6 0
       48 GETTABLEKS                       R7 R5 K10 ["AssetType"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K10 ["AssetType"]
       53 GETTABLEKS                       R8 R8 K11 ["Place"]
       55 JUMPIFEQ                         R7 R8 ; [+12]
       57 GETTABLEKS                       R7 R5 K10 ["AssetType"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K10 ["AssetType"]
       62 GETTABLEKS                       R8 R8 K12 ["Folder"]
       64 JUMPIFNOTEQ                      R7 R8 ; [+2]
       66 LOADB                            R6 0 +1
       67 LOADB                            R6 1
       68 RETURN                           R6 1

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+9]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Utils"]
       10 GETTABLEKS                       R4 R4 K3 ["reportInBrowser"]
       12 GETTABLEKS                       R5 R3 K4 ["AssetId"]
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        6 GETTABLEKS                       R3 R3 K1 ["Asset"]
        8 JUMPIFEQ                         R0 R3 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       14 NAMECALL                         R3 R3 K3 ["getSingleItemSelected"]
       16 CALL                             R3 1 1
       17 LOADB                            R4 0
       18 JUMPIFEQKNIL                     R3 ; [+19]
       20 LOADB                            R4 0
       21 GETTABLEKS                       R5 R3 K4 ["Source"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["AssetSource"]
       26 GETTABLEKS                       R6 R6 K6 ["Uploaded"]
       28 JUMPIFEQ                         R5 R6 ; [+9]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R7 R3 K7 ["AssetType"]
       33 GETTABLE                         R5 R6 R7
       34 JUMPIFEQKB                       R5 TRUE ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssetManagement"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Flags"]
       40 GETTABLEKS                       R6 R6 K16 ["getFFlagAmrAssetDetailView"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETIMPORT                        R7 K5 [script]
       47 GETTABLEKS                       R7 R7 K17 ["FolderOptions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K5 [script]
       54 GETTABLEKS                       R8 R8 K18 ["GeneralOptions"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R9 K5 [script]
       61 GETTABLEKS                       R9 R9 K19 ["InsertOptions"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETIMPORT                        R10 K5 [script]
       68 GETTABLEKS                       R10 R10 K20 ["PlaceManagementOptions"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETIMPORT                        R11 K5 [script]
       75 GETTABLEKS                       R11 R11 K21 ["PluginManagementOptions"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETIMPORT                        R12 K5 [script]
       82 GETTABLEKS                       R12 R12 K22 ["SidebarOptions"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETIMPORT                        R13 K5 [script]
       89 GETTABLEKS                       R13 R13 K23 ["ShareOptions"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETIMPORT                        R14 K5 [script]
       96 GETTABLEKS                       R14 R14 K24 ["getListColumnOptions"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R1 K13 ["Src"]
      103 GETTABLEKS                       R15 R15 K25 ["Util"]
      105 GETTABLEKS                       R15 R15 K26 ["isInsertable"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R16 R1 K13 ["Src"]
      112 GETTABLEKS                       R16 R16 K25 ["Util"]
      114 GETTABLEKS                       R16 R16 K27 ["openAssetConfig"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R1 K13 ["Src"]
      121 GETTABLEKS                       R17 R17 K15 ["Flags"]
      123 GETTABLEKS                       R17 R17 K28 ["getEFCinMeshVersioning"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R1 K13 ["Src"]
      130 GETTABLEKS                       R18 R18 K15 ["Flags"]
      132 GETTABLEKS                       R18 R18 K29 ["getEFImportAnimationVersions"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R1 K13 ["Src"]
      139 GETTABLEKS                       R19 R19 K15 ["Flags"]
      141 GETTABLEKS                       R19 R19 K30 ["getFFlagAmrImageVersioning"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R1 K13 ["Src"]
      148 GETTABLEKS                       R20 R20 K15 ["Flags"]
      150 GETTABLEKS                       R20 R20 K31 ["getFFlagAmrAddToExperience"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K9 [require]
      155 GETTABLEKS                       R21 R1 K13 ["Src"]
      157 GETTABLEKS                       R21 R21 K15 ["Flags"]
      159 GETTABLEKS                       R21 R21 K32 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R1 K13 ["Src"]
      166 GETTABLEKS                       R22 R22 K15 ["Flags"]
      168 GETTABLEKS                       R22 R22 K33 ["getFFlagAmrShowInFolder"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R23 R1 K13 ["Src"]
      175 GETTABLEKS                       R23 R23 K15 ["Flags"]
      177 GETTABLEKS                       R23 R23 K34 ["getFFlagAmrEnablePublishOption"]
      179 CALL                             R22 1 1
      180 GETIMPORT                        R23 K9 [require]
      182 GETTABLEKS                       R24 R1 K13 ["Src"]
      184 GETTABLEKS                       R24 R24 K15 ["Flags"]
      186 GETTABLEKS                       R24 R24 K35 ["getFFlagAmrCopyVersionedUri"]
      188 CALL                             R23 1 1
      189 DUPTABLE                         R24 K43 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddToExperience", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      190 DUPCLOSURE                       R25 K44 [PROTO_0]
      191 SETTABLEKS                       R25 R24 K40 ["GetSubkeyArgs"]
      193 DUPCLOSURE                       R25 K45 [PROTO_1]
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R14
      198 SETTABLEKS                       R25 R24 K41 ["OnItemClicked"]
      200 DUPCLOSURE                       R25 K46 [PROTO_2]
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R4
      203 SETTABLEKS                       R25 R24 K42 ["ShouldRender"]
      205 DUPTABLE                         R25 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Edit", ["OnItemClicked"], ["ShouldRender"]}]
      206 DUPCLOSURE                       R26 K49 [PROTO_3]
      207 CAPTURE                          VAL R15
      208 SETTABLEKS                       R26 R25 K41 ["OnItemClicked"]
      210 DUPCLOSURE                       R26 K50 [PROTO_4]
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R14
      213 SETTABLEKS                       R26 R25 K42 ["ShouldRender"]
      215 DUPTABLE                         R26 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Publish", ["OnItemClicked"], ["ShouldRender"]}]
      216 DUPCLOSURE                       R27 K53 [PROTO_5]
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R4
      219 SETTABLEKS                       R27 R26 K41 ["OnItemClicked"]
      221 DUPCLOSURE                       R27 K54 [PROTO_6]
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R4
      224 SETTABLEKS                       R27 R26 K42 ["ShouldRender"]
      226 DUPTABLE                         R27 K56 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ImportAssetVersion", ["OnItemClicked"], ["ShouldRender"]}]
      227 DUPCLOSURE                       R28 K57 [PROTO_7]
      228 SETTABLEKS                       R28 R27 K41 ["OnItemClicked"]
      230 DUPCLOSURE                       R28 K58 [PROTO_8]
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R17
      235 SETTABLEKS                       R28 R27 K42 ["ShouldRender"]
      237 DUPTABLE                         R28 K60 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "FindInExplorer", ["OnItemClicked"], ["ShouldRender"]}]
      238 DUPCLOSURE                       R29 K61 [PROTO_9]
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R0
      241 SETTABLEKS                       R29 R28 K41 ["OnItemClicked"]
      243 DUPCLOSURE                       R29 K62 [PROTO_10]
      244 CAPTURE                          VAL R4
      245 SETTABLEKS                       R29 R28 K42 ["ShouldRender"]
      247 DUPTABLE                         R29 K64 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ShowInFolder", ["OnItemClicked"], ["ShouldRender"]}]
      248 DUPCLOSURE                       R30 K65 [PROTO_11]
      249 SETTABLEKS                       R30 R29 K41 ["OnItemClicked"]
      251 DUPCLOSURE                       R30 K66 [PROTO_12]
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R4
      254 SETTABLEKS                       R30 R29 K42 ["ShouldRender"]
      256 DUPTABLE                         R30 K68 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ClearRecent", ["OnItemClicked"], ["ShouldRender"]}]
      257 DUPCLOSURE                       R31 K69 [PROTO_13]
      258 SETTABLEKS                       R31 R30 K41 ["OnItemClicked"]
      260 DUPCLOSURE                       R31 K70 [PROTO_14]
      261 CAPTURE                          VAL R4
      262 SETTABLEKS                       R31 R30 K42 ["ShouldRender"]
      264 DUPTABLE                         R31 K72 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewDetails", ["OnItemClicked"], ["ShouldRender"]}]
      265 DUPCLOSURE                       R32 K73 [PROTO_15]
      266 SETTABLEKS                       R32 R31 K41 ["OnItemClicked"]
      268 DUPCLOSURE                       R32 K74 [PROTO_16]
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R4
      271 SETTABLEKS                       R32 R31 K42 ["ShouldRender"]
      273 NEWTABLE                         R32 16 0
      275 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      277 GETTABLEKS                       R33 R33 K76 ["Animation"]
      279 LOADB                            R34 1
      280 SETTABLE                         R34 R32 R33
      281 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      283 GETTABLEKS                       R33 R33 K77 ["Audio"]
      285 LOADB                            R34 1
      286 SETTABLE                         R34 R32 R33
      287 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      289 GETTABLEKS                       R33 R33 K78 ["Decal"]
      291 LOADB                            R34 1
      292 SETTABLE                         R34 R32 R33
      293 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      295 GETTABLEKS                       R33 R33 K79 ["FontFamily"]
      297 LOADB                            R34 1
      298 SETTABLE                         R34 R32 R33
      299 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      301 GETTABLEKS                       R33 R33 K80 ["Image"]
      303 LOADB                            R34 1
      304 SETTABLE                         R34 R32 R33
      305 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      307 GETTABLEKS                       R33 R33 K81 ["Mesh"]
      309 LOADB                            R34 1
      310 SETTABLE                         R34 R32 R33
      311 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      313 GETTABLEKS                       R33 R33 K82 ["MeshPart"]
      315 LOADB                            R34 1
      316 SETTABLE                         R34 R32 R33
      317 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      319 GETTABLEKS                       R33 R33 K83 ["Model"]
      321 LOADB                            R34 1
      322 SETTABLE                         R34 R32 R33
      323 GETTABLEKS                       R33 R4 K75 ["AssetType"]
      325 GETTABLEKS                       R33 R33 K84 ["Video"]
      327 LOADB                            R34 1
      328 SETTABLE                         R34 R32 R33
      329 DUPTABLE                         R33 K86 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginReport", ["OnItemClicked"], ["ShouldRender"]}]
      330 DUPCLOSURE                       R34 K87 [PROTO_17]
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R34 R33 K41 ["OnItemClicked"]
      334 DUPCLOSURE                       R34 K88 [PROTO_18]
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R32
      338 SETTABLEKS                       R34 R33 K42 ["ShouldRender"]
      340 NEWTABLE                         R34 0 5
      342 MOVE                             R35 R6
      343 GETTABLEKS                       R36 R3 K89 ["append"]
      345 MOVE                             R37 R9
      346 MOVE                             R38 R10
      347 MOVE                             R39 R11
      348 NEWTABLE                         R40 0 1
      350 MOVE                             R41 R24
      351 SETLIST                          R40 R41 1 [1]
      353 MOVE                             R41 R8
      354 NEWTABLE                         R42 0 1
      356 MOVE                             R43 R25
      357 SETLIST                          R42 R43 1 [1]
      359 NEWTABLE                         R43 0 1
      361 MOVE                             R44 R26
      362 SETLIST                          R43 R44 1 [1]
      364 MOVE                             R44 R12
      365 NEWTABLE                         R45 0 1
      367 MOVE                             R46 R28
      368 SETLIST                          R45 R46 1 [1]
      370 NEWTABLE                         R46 0 1
      372 MOVE                             R47 R29
      373 SETLIST                          R46 R47 1 [1]
      375 NEWTABLE                         R47 0 1
      377 MOVE                             R48 R27
      378 SETLIST                          R47 R48 1 [1]
      380 NEWTABLE                         R48 0 1
      382 MOVE                             R49 R31
      383 SETLIST                          R48 R49 1 [1]
      385 NEWTABLE                         R49 0 1
      387 MOVE                             R50 R33
      388 SETLIST                          R49 R50 1 [1]
      390 CALL                             R36 13 1
      391 MOVE                             R37 R7
      392 NEWTABLE                         R38 0 1
      394 MOVE                             R39 R30
      395 SETLIST                          R38 R39 1 [1]
      397 MOVE                             R39 R13
      398 CALL                             R39 0 -1
      399 SETLIST                          R34 R35 -1 [1]
      401 RETURN                           R34 1
