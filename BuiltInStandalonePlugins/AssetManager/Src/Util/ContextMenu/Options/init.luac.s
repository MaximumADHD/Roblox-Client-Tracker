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
       43 GETTABLEKS                       R13 R13 K10 ["ModerationStatus"]
       45 NAMECALL                         R9 R5 K8 ["getData"]
       47 CALL                             R9 4 1
       48 GETTABLEKS                       R12 R4 K5 ["Uid"]
       50 MOVE                             R13 R6
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K6 ["AssetInfoField"]
       54 GETTABLEKS                       R14 R14 K11 ["DraftStatus"]
       56 NAMECALL                         R10 R5 K8 ["getData"]
       58 CALL                             R10 4 1
       59 NEWTABLE                         R11 0 0
       61 NEWTABLE                         R12 0 0
       63 LOADN                            R15 1
       64 LENGTH                           R13 R6
       65 LOADN                            R14 1
       66 FORNPREP                         R13
       67 GETTABLE                         R16 R9 R15
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R17 R17 K10 ["ModerationStatus"]
       71 GETTABLEKS                       R17 R17 K12 ["Rejected"]
       73 JUMPIFEQ                         R16 R17 ; [+23]
       75 GETTABLE                         R17 R10 R15
       76 GETUPVAL                         R18 1
       77 GETTABLEKS                       R18 R18 K11 ["DraftStatus"]
       79 GETTABLEKS                       R18 R18 K13 ["Draft"]
       81 JUMPIFNOTEQ                      R17 R18 ; [+15]
       83 GETTABLE                         R20 R7 R15
       84 FASTCALL2                        TABLE_INSERT R11 R20 ; [+4]
       86 MOVE                             R19 R11
       87 GETIMPORT                        R18 K16 [table.insert]
       89 CALL                             R18 2 0
       90 GETTABLE                         R20 R8 R15
       91 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       93 MOVE                             R19 R12
       94 GETIMPORT                        R18 K16 [table.insert]
       96 CALL                             R18 2 0
       97 FORNLOOP                         R13
       98 LENGTH                           R13 R11
       99 JUMPIFNOTEQKN                    R13 K17 [0] ; [+2]
      101 RETURN                           R0 0
      102 GETTABLEKS                       R13 R1 K18 ["PluginController"]
      104 NAMECALL                         R13 R13 K19 ["getPlugin"]
      106 CALL                             R13 1 1
      107 LOADK                            R15 K20 ["OnPublishItems"]
      108 MOVE                             R16 R11
      109 MOVE                             R17 R12
      110 NAMECALL                         R13 R13 K21 ["Invoke"]
      112 CALL                             R13 4 0
      113 RETURN                           R0 0

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
       30 NAMECALL                         R5 R3 K7 ["getSelectionDraftCount"]
       32 CALL                             R5 1 1
       33 LOADB                            R6 0
       34 LOADN                            R7 0
       35 JUMPIFNOTLT                      R7 R5 ; [+7]
       37 GETUPVAL                         R7 2
       38 CALL                             R7 0 1
       39 JUMPIFLE                         R5 R7 ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 RETURN                           R6 1

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
      189 GETIMPORT                        R24 K9 [require]
      191 GETTABLEKS                       R25 R1 K13 ["Src"]
      193 GETTABLEKS                       R25 R25 K15 ["Flags"]
      195 GETTABLEKS                       R25 R25 K36 ["getFIntAmrPublishItemsMax"]
      197 CALL                             R24 1 1
      198 DUPTABLE                         R25 K44 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddToExperience", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      199 DUPCLOSURE                       R26 K45 [PROTO_0]
      200 SETTABLEKS                       R26 R25 K41 ["GetSubkeyArgs"]
      202 DUPCLOSURE                       R26 K46 [PROTO_1]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R14
      207 SETTABLEKS                       R26 R25 K42 ["OnItemClicked"]
      209 DUPCLOSURE                       R26 K47 [PROTO_2]
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R4
      212 SETTABLEKS                       R26 R25 K43 ["ShouldRender"]
      214 DUPTABLE                         R26 K49 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Edit", ["OnItemClicked"], ["ShouldRender"]}]
      215 DUPCLOSURE                       R27 K50 [PROTO_3]
      216 CAPTURE                          VAL R15
      217 SETTABLEKS                       R27 R26 K42 ["OnItemClicked"]
      219 DUPCLOSURE                       R27 K51 [PROTO_4]
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R14
      222 SETTABLEKS                       R27 R26 K43 ["ShouldRender"]
      224 DUPTABLE                         R27 K53 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Publish", ["OnItemClicked"], ["ShouldRender"]}]
      225 DUPCLOSURE                       R28 K54 [PROTO_5]
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R4
      228 SETTABLEKS                       R28 R27 K42 ["OnItemClicked"]
      230 DUPCLOSURE                       R28 K55 [PROTO_6]
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R24
      234 SETTABLEKS                       R28 R27 K43 ["ShouldRender"]
      236 DUPTABLE                         R28 K57 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ImportAssetVersion", ["OnItemClicked"], ["ShouldRender"]}]
      237 DUPCLOSURE                       R29 K58 [PROTO_7]
      238 SETTABLEKS                       R29 R28 K42 ["OnItemClicked"]
      240 DUPCLOSURE                       R29 K59 [PROTO_8]
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R18
      244 CAPTURE                          VAL R17
      245 SETTABLEKS                       R29 R28 K43 ["ShouldRender"]
      247 DUPTABLE                         R29 K61 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "FindInExplorer", ["OnItemClicked"], ["ShouldRender"]}]
      248 DUPCLOSURE                       R30 K62 [PROTO_9]
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R0
      251 SETTABLEKS                       R30 R29 K42 ["OnItemClicked"]
      253 DUPCLOSURE                       R30 K63 [PROTO_10]
      254 CAPTURE                          VAL R4
      255 SETTABLEKS                       R30 R29 K43 ["ShouldRender"]
      257 DUPTABLE                         R30 K65 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ShowInFolder", ["OnItemClicked"], ["ShouldRender"]}]
      258 DUPCLOSURE                       R31 K66 [PROTO_11]
      259 SETTABLEKS                       R31 R30 K42 ["OnItemClicked"]
      261 DUPCLOSURE                       R31 K67 [PROTO_12]
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R4
      264 SETTABLEKS                       R31 R30 K43 ["ShouldRender"]
      266 DUPTABLE                         R31 K69 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ClearRecent", ["OnItemClicked"], ["ShouldRender"]}]
      267 DUPCLOSURE                       R32 K70 [PROTO_13]
      268 SETTABLEKS                       R32 R31 K42 ["OnItemClicked"]
      270 DUPCLOSURE                       R32 K71 [PROTO_14]
      271 CAPTURE                          VAL R4
      272 SETTABLEKS                       R32 R31 K43 ["ShouldRender"]
      274 NEWTABLE                         R32 16 0
      276 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      278 GETTABLEKS                       R33 R33 K73 ["Animation"]
      280 LOADB                            R34 1
      281 SETTABLE                         R34 R32 R33
      282 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      284 GETTABLEKS                       R33 R33 K74 ["Audio"]
      286 LOADB                            R34 1
      287 SETTABLE                         R34 R32 R33
      288 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      290 GETTABLEKS                       R33 R33 K75 ["Decal"]
      292 LOADB                            R34 1
      293 SETTABLE                         R34 R32 R33
      294 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      296 GETTABLEKS                       R33 R33 K76 ["FontFamily"]
      298 LOADB                            R34 1
      299 SETTABLE                         R34 R32 R33
      300 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      302 GETTABLEKS                       R33 R33 K77 ["Image"]
      304 LOADB                            R34 1
      305 SETTABLE                         R34 R32 R33
      306 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      308 GETTABLEKS                       R33 R33 K78 ["Mesh"]
      310 LOADB                            R34 1
      311 SETTABLE                         R34 R32 R33
      312 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      314 GETTABLEKS                       R33 R33 K79 ["MeshPart"]
      316 LOADB                            R34 1
      317 SETTABLE                         R34 R32 R33
      318 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      320 GETTABLEKS                       R33 R33 K80 ["Model"]
      322 LOADB                            R34 1
      323 SETTABLE                         R34 R32 R33
      324 GETTABLEKS                       R33 R4 K72 ["AssetType"]
      326 GETTABLEKS                       R33 R33 K81 ["Video"]
      328 LOADB                            R34 1
      329 SETTABLE                         R34 R32 R33
      330 DUPTABLE                         R33 K83 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginReport", ["OnItemClicked"], ["ShouldRender"]}]
      331 DUPCLOSURE                       R34 K84 [PROTO_15]
      332 CAPTURE                          VAL R2
      333 SETTABLEKS                       R34 R33 K42 ["OnItemClicked"]
      335 DUPCLOSURE                       R34 K85 [PROTO_16]
      336 CAPTURE                          VAL R5
      337 CAPTURE                          VAL R4
      338 CAPTURE                          VAL R32
      339 SETTABLEKS                       R34 R33 K43 ["ShouldRender"]
      341 NEWTABLE                         R34 0 5
      343 MOVE                             R35 R6
      344 GETTABLEKS                       R36 R3 K86 ["append"]
      346 MOVE                             R37 R9
      347 MOVE                             R38 R10
      348 MOVE                             R39 R11
      349 NEWTABLE                         R40 0 1
      351 MOVE                             R41 R25
      352 SETLIST                          R40 R41 1 [1]
      354 MOVE                             R41 R8
      355 NEWTABLE                         R42 0 1
      357 MOVE                             R43 R26
      358 SETLIST                          R42 R43 1 [1]
      360 NEWTABLE                         R43 0 1
      362 MOVE                             R44 R27
      363 SETLIST                          R43 R44 1 [1]
      365 MOVE                             R44 R12
      366 NEWTABLE                         R45 0 1
      368 MOVE                             R46 R29
      369 SETLIST                          R45 R46 1 [1]
      371 NEWTABLE                         R46 0 1
      373 MOVE                             R47 R30
      374 SETLIST                          R46 R47 1 [1]
      376 NEWTABLE                         R47 0 1
      378 MOVE                             R48 R28
      379 SETLIST                          R47 R48 1 [1]
      381 NEWTABLE                         R48 0 1
      383 MOVE                             R49 R33
      384 SETLIST                          R48 R49 1 [1]
      386 CALL                             R36 12 1
      387 MOVE                             R37 R7
      388 NEWTABLE                         R38 0 1
      390 MOVE                             R39 R31
      391 SETLIST                          R38 R39 1 [1]
      393 MOVE                             R39 R13
      394 CALL                             R39 0 -1
      395 SETLIST                          R34 R35 -1 [1]
      397 RETURN                           R34 1
