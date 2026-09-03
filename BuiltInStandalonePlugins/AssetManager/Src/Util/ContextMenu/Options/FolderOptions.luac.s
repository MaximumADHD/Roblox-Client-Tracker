PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R6 R0 K0 ["Type"]
        3 GETTABLE                         R4 R5 R6
        4 NOT                              R3 R4
        5 JUMPIFNOT                        R3 ; [+4]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R2 K1 ["isFolderReadyForScope"]
        9 CALL                             R3 2 1
       10 RETURN                           R3 1

PROTO_1:
        0 NOT                              R3 R1
        1 JUMPIFNOT                        R3 ; [+10]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R0 K0 ["Type"]
        5 GETTABLE                         R4 R5 R6
        6 NOT                              R3 R4
        7 JUMPIFNOT                        R3 ; [+4]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R2 K1 ["isFolderReadyForScope"]
       11 CALL                             R3 2 1
       12 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["Scope"]
        3 JUMPIF                           R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K1 ["ItemsController"]
        6 NAMECALL                         R2 R2 K2 ["getCurrentShownScope"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K3 ["ExplorerController"]
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K4 ["isFolderReadyForScope"]
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_3:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+22]
        8 LOADB                            R3 0
        9 JUMPIFEQKNIL                     R2 ; [+19]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R2 K2 ["Scope"]
       14 JUMPIFEQKNIL                     R4 ; [+14]
       16 GETTABLEKS                       R4 R2 K2 ["Scope"]
       18 GETTABLEKS                       R4 R4 K3 ["Type"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["ScopeType"]
       23 GETTABLEKS                       R5 R5 K5 ["Folder"]
       25 JUMPIFEQ                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADB                            R4 1
       31 RETURN                           R4 1
       32 LOADB                            R4 0
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["MenuContext"]
       36 GETTABLEKS                       R5 R5 K6 ["Asset"]
       38 JUMPIFNOTEQ                      R0 R5 ; [+11]
       40 GETTABLEKS                       R4 R1 K7 ["ItemsController"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K8 ["AssetType"]
       45 GETTABLEKS                       R6 R6 K5 ["Folder"]
       47 NAMECALL                         R4 R4 K9 ["getSingleItemSelected"]
       49 CALL                             R4 2 1
       50 JUMPIFNOT                        R4 ; [+2]
       51 LOADB                            R5 1
       52 RETURN                           R5 1
       53 LOADB                            R5 0
       54 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["ItemsController"]
        2 NAMECALL                         R2 R1 K1 ["getSelection"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["count"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 LOADN                            R4 2
       11 JUMPIFNOTLT                      R3 R4 ; [+3]
       13 LOADB                            R3 0
       14 RETURN                           R3 1
       15 NAMECALL                         R3 R1 K3 ["getItemsCache"]
       17 CALL                             R3 1 1
       18 NAMECALL                         R4 R1 K4 ["getCurrentShownScope"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETTABLEKS                       R12 R4 K5 ["Uid"]
       27 MOVE                             R13 R8
       28 GETUPVAL                         R14 1
       29 GETTABLEKS                       R14 R14 K6 ["AssetInfoField"]
       31 GETTABLEKS                       R14 R14 K7 ["AssetType"]
       33 NAMECALL                         R10 R3 K8 ["getItemField"]
       35 CALL                             R10 4 1
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K7 ["AssetType"]
       39 GETTABLEKS                       R11 R11 K9 ["Folder"]
       41 JUMPIFEQ                         R10 R11 ; [+3]
       43 LOADB                            R11 0
       44 RETURN                           R11 1
       45 FORGLOOP                         R5 2 ; [-21]
       47 LOADB                            R5 1
       48 RETURN                           R5 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["ItemsController"]
        2 NAMECALL                         R2 R1 K1 ["getSelection"]
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K2 ["getItemsCache"]
        7 CALL                             R3 1 1
        8 NAMECALL                         R4 R1 K3 ["getCurrentShownScope"]
       10 CALL                             R4 1 1
       11 MOVE                             R5 R2
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R12 R4 K4 ["Uid"]
       17 MOVE                             R13 R8
       18 GETUPVAL                         R14 0
       19 GETTABLEKS                       R14 R14 K5 ["AssetInfoField"]
       21 GETTABLEKS                       R14 R14 K6 ["AssetType"]
       23 NAMECALL                         R10 R3 K7 ["getItemField"]
       25 CALL                             R10 4 1
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K6 ["AssetType"]
       29 GETTABLEKS                       R11 R11 K8 ["Folder"]
       31 JUMPIFNOTEQ                      R10 R11 ; [+3]
       33 LOADB                            R11 1
       34 RETURN                           R11 1
       35 FORGLOOP                         R5 2 ; [-21]
       37 LOADB                            R5 0
       38 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R3 K2 [{"DraggedItems", "SourceZone"}]
        1 NEWTABLE                         R4 0 0
        3 SETTABLEKS                       R4 R3 K0 ["DraggedItems"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["UiZone"]
        8 GETTABLEKS                       R4 R4 K4 ["Browser"]
       10 SETTABLEKS                       R4 R3 K1 ["SourceZone"]
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["MenuContext"]
       16 GETTABLEKS                       R5 R5 K6 ["Sidebar"]
       18 JUMPIFNOTEQ                      R0 R5 ; [+41]
       20 JUMPIFEQKNIL                     R2 ; [+39]
       22 GETTABLEKS                       R5 R2 K7 ["Scope"]
       24 JUMPIFEQKNIL                     R5 ; [+35]
       26 GETTABLEKS                       R5 R2 K7 ["Scope"]
       28 SETTABLEKS                       R5 R3 K0 ["DraggedItems"]
       30 GETTABLEKS                       R5 R1 K8 ["ExplorerController"]
       32 GETTABLEKS                       R7 R2 K7 ["Scope"]
       34 GETTABLEKS                       R7 R7 K9 ["Parent"]
       36 NAMECALL                         R5 R5 K10 ["getScopeWithUid"]
       38 CALL                             R5 2 1
       39 MOVE                             R6 R5
       40 JUMPIF                           R6 ; [+10]
       41 GETTABLEKS                       R6 R1 K8 ["ExplorerController"]
       43 GETTABLEKS                       R8 R2 K7 ["Scope"]
       45 NAMECALL                         R6 R6 K11 ["getScopeRoot"]
       47 CALL                             R6 2 1
       48 JUMPIF                           R6 ; [+2]
       49 GETTABLEKS                       R6 R2 K7 ["Scope"]
       51 MOVE                             R4 R6
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K3 ["UiZone"]
       55 GETTABLEKS                       R6 R6 K6 ["Sidebar"]
       57 SETTABLEKS                       R6 R3 K1 ["SourceZone"]
       59 JUMP                             ; [+24]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K12 ["keys"]
       63 GETTABLEKS                       R6 R1 K13 ["ItemsController"]
       65 NAMECALL                         R6 R6 K14 ["getSelection"]
       67 CALL                             R6 1 -1
       68 CALL                             R5 -1 1
       69 SETTABLEKS                       R5 R3 K0 ["DraggedItems"]
       71 GETTABLEKS                       R5 R1 K13 ["ItemsController"]
       73 NAMECALL                         R5 R5 K15 ["getCurrentShownScope"]
       75 CALL                             R5 1 1
       76 MOVE                             R4 R5
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K3 ["UiZone"]
       80 GETTABLEKS                       R5 R5 K4 ["Browser"]
       82 SETTABLEKS                       R5 R3 K1 ["SourceZone"]
       84 GETTABLEKS                       R6 R1 K8 ["ExplorerController"]
       86 MOVE                             R8 R4
       87 NAMECALL                         R6 R6 K11 ["getScopeRoot"]
       89 CALL                             R6 2 1
       90 OR                               R5 R6 R4
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R7 R1 K16 ["PluginController"]
       94 GETTABLEKS                       R8 R1 K17 ["Localization"]
       96 MOVE                             R9 R3
       97 MOVE                             R10 R5
       98 MOVE                             R11 R4
       99 CALL                             R6 5 0
      100 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["SearchController"]
        2 NAMECALL                         R3 R3 K1 ["getShowSearchOptions"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["MenuContext"]
        8 GETTABLEKS                       R4 R4 K3 ["Sidebar"]
       10 JUMPIFNOTEQ                      R0 R4 ; [+39]
       12 LOADB                            R4 0
       13 JUMPIFEQKNIL                     R2 ; [+35]
       15 LOADB                            R4 0
       16 GETTABLEKS                       R5 R2 K4 ["Scope"]
       18 JUMPIFEQKNIL                     R5 ; [+30]
       20 LOADB                            R4 0
       21 GETTABLEKS                       R5 R2 K4 ["Scope"]
       23 GETTABLEKS                       R5 R5 K5 ["Type"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K6 ["ScopeType"]
       28 GETTABLEKS                       R6 R6 K7 ["Folder"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+18]
       32 GETTABLEKS                       R5 R2 K4 ["Scope"]
       34 GETTABLEKS                       R6 R1 K8 ["ExplorerController"]
       36 NOT                              R4 R3
       37 JUMPIFNOT                        R4 ; [+11]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R9 R5 K5 ["Type"]
       41 GETTABLE                         R7 R8 R9
       42 NOT                              R4 R7
       43 JUMPIFNOT                        R4 ; [+5]
       44 MOVE                             R9 R5
       45 NAMECALL                         R7 R6 K9 ["isFolderReadyForScope"]
       47 CALL                             R7 2 1
       48 MOVE                             R4 R7
       49 RETURN                           R4 1
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K2 ["MenuContext"]
       53 GETTABLEKS                       R4 R4 K10 ["Asset"]
       55 JUMPIFNOTEQ                      R0 R4 ; [+44]
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R5 R5 K11 ["count"]
       60 GETTABLEKS                       R6 R1 K12 ["ItemsController"]
       62 NAMECALL                         R6 R6 K13 ["getSelection"]
       64 CALL                             R6 1 -1
       65 CALL                             R5 -1 1
       66 LOADN                            R6 0
       67 JUMPIFLT                         R6 R5 ; [+2]
       69 LOADB                            R4 0 +1
       70 LOADB                            R4 1
       71 JUMPIF                           R4 ; [+2]
       72 LOADB                            R5 0
       73 RETURN                           R5 1
       74 GETTABLEKS                       R5 R1 K12 ["ItemsController"]
       76 NAMECALL                         R5 R5 K14 ["getCurrentShownScope"]
       78 CALL                             R5 1 1
       79 GETTABLEKS                       R7 R1 K8 ["ExplorerController"]
       81 GETUPVAL                         R9 1
       82 GETTABLEKS                       R10 R5 K5 ["Type"]
       84 GETTABLE                         R8 R9 R10
       85 NOT                              R6 R8
       86 JUMPIFNOT                        R6 ; [+5]
       87 MOVE                             R10 R5
       88 NAMECALL                         R8 R7 K9 ["isFolderReadyForScope"]
       90 CALL                             R8 2 1
       91 MOVE                             R6 R8
       92 JUMPIFNOT                        R6 ; [+6]
       93 NOT                              R6 R3
       94 JUMPIF                           R6 ; [+4]
       95 GETUPVAL                         R7 3
       96 MOVE                             R8 R1
       97 CALL                             R7 1 1
       98 NOT                              R6 R7
       99 RETURN                           R6 1
      100 LOADB                            R4 0
      101 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getLastUsedFolderName"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"folderName"}]
        6 SETTABLEKS                       R3 R4 K2 ["folderName"]
        8 RETURN                           R4 1

PROTO_9:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["TODO Move is not yet implemented"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_10:
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
       16 NAMECALL                         R3 R3 K3 ["getLastUsedFolderName"]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 LOADB                            R3 0
       22 RETURN                           R3 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K4 ["count"]
       26 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       28 NAMECALL                         R5 R5 K5 ["getSelection"]
       30 CALL                             R5 1 -1
       31 CALL                             R4 -1 1
       32 LOADN                            R5 0
       33 JUMPIFLT                         R5 R4 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 MOVE                             R4 R3
       38 JUMPIFNOT                        R4 ; [+25]
       39 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       41 NAMECALL                         R5 R5 K6 ["getCurrentShownScope"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K7 ["SearchController"]
       46 NAMECALL                         R6 R6 K8 ["getShowSearchOptions"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K9 ["ExplorerController"]
       51 NOT                              R4 R6
       52 JUMPIFNOT                        R4 ; [+11]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R10 R5 K10 ["Type"]
       56 GETTABLE                         R8 R9 R10
       57 NOT                              R4 R8
       58 JUMPIFNOT                        R4 ; [+5]
       59 MOVE                             R10 R5
       60 NAMECALL                         R8 R7 K11 ["isFolderReadyForScope"]
       62 CALL                             R8 2 1
       63 MOVE                             R4 R8
       64 RETURN                           R4 1

PROTO_11:
        0 JUMPIFNOT                        R2 ; [+83]
        1 GETTABLEKS                       R3 R2 K0 ["Depth"]
        3 JUMPIFNOT                        R3 ; [+80]
        4 GETTABLEKS                       R3 R2 K0 ["Depth"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["FolderDepthMax"]
        9 JUMPIFNOTLE                      R4 R3 ; [+74]
       11 GETUPVAL                         R3 1
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+55]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["MenuContext"]
       17 GETTABLEKS                       R4 R4 K3 ["Sidebar"]
       19 JUMPIFNOTEQ                      R0 R4 ; [+11]
       21 MOVE                             R3 R2
       22 JUMPIFNOT                        R3 ; [+15]
       23 GETTABLEKS                       R3 R2 K4 ["Scope"]
       25 JUMPIFNOT                        R3 ; [+12]
       26 GETTABLEKS                       R3 R2 K4 ["Scope"]
       28 GETTABLEKS                       R3 R3 K5 ["Name"]
       30 JUMP                             ; [+7]
       31 GETTABLEKS                       R3 R1 K6 ["ItemsController"]
       33 NAMECALL                         R3 R3 K7 ["getCurrentShownScope"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R3 R3 K5 ["Name"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K8 ["showSnackbar"]
       41 DUPTABLE                         R5 K11 [{"LocalizableMessage", "Type"}]
       42 DUPTABLE                         R6 K17 [{["Key"] = "FolderCreate", ["SubKey"] = "ExceedMaxFolderDepth", ["Args"]}]
       43 DUPTABLE                         R7 K20 [{"location", "maxFolderDepth"}]
       44 ORK                              R8 R3 K21 [""]
       45 SETTABLEKS                       R8 R7 K18 ["location"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K1 ["FolderDepthMax"]
       50 FASTCALL1                        TOSTRING R9 ; [+2]
       51 GETIMPORT                        R8 K23 [tostring]
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K19 ["maxFolderDepth"]
       56 SETTABLEKS                       R7 R6 K16 ["Args"]
       58 SETTABLEKS                       R6 R5 K9 ["LocalizableMessage"]
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K24 ["SnackbarType"]
       63 GETTABLEKS                       R6 R6 K25 ["Error"]
       65 SETTABLEKS                       R6 R5 K10 ["Type"]
       67 CALL                             R4 1 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R3 R1 K26 ["PluginController"]
       71 DUPTABLE                         R5 K28 [{["Key"] = "Toast", ["SubKey"]}]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K29 ["ErrorTypeLookup"]
       75 GETTABLEKS                       R7 R7 K30 ["CreateFolder"]
       77 GETTABLEN                        R6 R7 1
       78 SETTABLEKS                       R6 R5 K14 ["SubKey"]
       80 NAMECALL                         R3 R3 K31 ["showToast"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0
       84 GETUPVAL                         R3 2
       85 GETTABLEKS                       R3 R3 K2 ["MenuContext"]
       87 GETTABLEKS                       R3 R3 K3 ["Sidebar"]
       89 JUMPIFNOTEQ                      R0 R3 ; [+12]
       91 GETTABLEKS                       R3 R1 K32 ["ExplorerController"]
       93 LOADNIL                          R5
       94 MOVE                             R6 R2
       95 JUMPIFNOT                        R6 ; [+2]
       96 GETTABLEKS                       R6 R2 K4 ["Scope"]
       98 NAMECALL                         R3 R3 K33 ["stageFolder"]
      100 CALL                             R3 3 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R3 2
      103 GETTABLEKS                       R3 R3 K2 ["MenuContext"]
      105 GETTABLEKS                       R3 R3 K34 ["Asset"]
      107 JUMPIFNOTEQ                      R0 R3 ; [+14]
      109 GETTABLEKS                       R3 R1 K35 ["Localization"]
      111 LOADK                            R5 K34 ["Asset"]
      112 LOADK                            R6 K36 ["NewFolder"]
      113 NAMECALL                         R3 R3 K37 ["getText"]
      115 CALL                             R3 3 1
      116 GETTABLEKS                       R4 R1 K6 ["ItemsController"]
      118 MOVE                             R6 R3
      119 NAMECALL                         R4 R4 K38 ["stageNewFolder"]
      121 CALL                             R4 2 0
      122 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Sidebar"]
        5 JUMPIFEQ                         R0 R3 ; [+10]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
       10 GETTABLEKS                       R3 R3 K2 ["Asset"]
       12 JUMPIFEQ                         R0 R3 ; [+3]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETTABLEKS                       R3 R1 K3 ["SearchController"]
       18 NAMECALL                         R3 R3 K4 ["getShowSearchOptions"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
       24 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
       26 JUMPIFNOTEQ                      R0 R4 ; [+27]
       28 LOADB                            R4 0
       29 JUMPIFEQKNIL                     R2 ; [+23]
       31 LOADB                            R4 0
       32 GETTABLEKS                       R5 R2 K5 ["Scope"]
       34 JUMPIFEQKNIL                     R5 ; [+18]
       36 GETTABLEKS                       R5 R2 K5 ["Scope"]
       38 GETTABLEKS                       R6 R1 K6 ["ExplorerController"]
       40 NOT                              R4 R3
       41 JUMPIFNOT                        R4 ; [+11]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R9 R5 K7 ["Type"]
       45 GETTABLE                         R7 R8 R9
       46 NOT                              R4 R7
       47 JUMPIFNOT                        R4 ; [+5]
       48 MOVE                             R9 R5
       49 NAMECALL                         R7 R6 K8 ["isFolderReadyForScope"]
       51 CALL                             R7 2 1
       52 MOVE                             R4 R7
       53 RETURN                           R4 1
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
       57 GETTABLEKS                       R4 R4 K2 ["Asset"]
       59 JUMPIFNOTEQ                      R0 R4 ; [+22]
       61 GETTABLEKS                       R5 R1 K9 ["ItemsController"]
       63 NAMECALL                         R5 R5 K10 ["getCurrentShownScope"]
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R6 R1 K6 ["ExplorerController"]
       68 NOT                              R4 R3
       69 JUMPIFNOT                        R4 ; [+11]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R9 R5 K7 ["Type"]
       73 GETTABLE                         R7 R8 R9
       74 NOT                              R4 R7
       75 JUMPIFNOT                        R4 ; [+5]
       76 MOVE                             R9 R5
       77 NAMECALL                         R7 R6 K8 ["isFolderReadyForScope"]
       79 CALL                             R7 2 1
       80 MOVE                             R4 R7
       81 RETURN                           R4 1
       82 LOADB                            R4 0
       83 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+15]
        7 GETTABLEKS                       R3 R1 K2 ["Localization"]
        9 LOADK                            R5 K1 ["Asset"]
       10 LOADK                            R6 K3 ["NewFolder"]
       11 NAMECALL                         R3 R3 K4 ["getText"]
       13 CALL                             R3 3 1
       14 GETTABLEKS                       R4 R1 K5 ["ItemsController"]
       16 MOVE                             R6 R3
       17 LOADB                            R7 1
       18 NAMECALL                         R4 R4 K6 ["stageNewFolder"]
       20 CALL                             R4 3 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["SearchController"]
       11 NAMECALL                         R3 R3 K3 ["getShowSearchOptions"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["count"]
       17 GETTABLEKS                       R6 R1 K5 ["ItemsController"]
       19 NAMECALL                         R6 R6 K6 ["getSelection"]
       21 CALL                             R6 1 -1
       22 CALL                             R5 -1 1
       23 LOADN                            R6 0
       24 JUMPIFLT                         R6 R5 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 MOVE                             R5 R4
       29 JUMPIFNOT                        R5 ; [+20]
       30 GETTABLEKS                       R6 R1 K5 ["ItemsController"]
       32 NAMECALL                         R6 R6 K7 ["getCurrentShownScope"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R1 K8 ["ExplorerController"]
       37 NOT                              R5 R3
       38 JUMPIFNOT                        R5 ; [+11]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R10 R6 K9 ["Type"]
       42 GETTABLE                         R8 R9 R10
       43 NOT                              R5 R8
       44 JUMPIFNOT                        R5 ; [+5]
       45 MOVE                             R10 R6
       46 NAMECALL                         R8 R7 K10 ["isFolderReadyForScope"]
       48 CALL                             R8 2 1
       49 MOVE                             R5 R8
       50 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Sidebar"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+15]
        7 JUMPIFEQKNIL                     R2 ; [+13]
        9 GETTABLEKS                       R3 R2 K2 ["Scope"]
       11 JUMPIFEQKNIL                     R3 ; [+9]
       13 GETTABLEKS                       R3 R1 K3 ["ExplorerController"]
       15 GETTABLEKS                       R5 R2 K2 ["Scope"]
       17 NAMECALL                         R3 R3 K4 ["stageFolder"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
       24 GETTABLEKS                       R3 R3 K5 ["Asset"]
       26 JUMPIFNOTEQ                      R0 R3 ; [+15]
       28 GETIMPORT                        R3 K7 [next]
       30 GETTABLEKS                       R4 R1 K8 ["ItemsController"]
       32 NAMECALL                         R4 R4 K9 ["getSelection"]
       34 CALL                             R4 1 -1
       35 CALL                             R3 -1 1
       36 GETTABLEKS                       R4 R1 K8 ["ItemsController"]
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K10 ["setStagedEditItemPath"]
       41 CALL                             R4 2 0
       42 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R2 ; [+3]
        1 GETTABLEKS                       R4 R2 K0 ["Scope"]
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        6 NAMECALL                         R4 R4 K2 ["getCurrentShownScope"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R1 K3 ["ExplorerController"]
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R5 K4 ["isFolderReadyForScope"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 LOADB                            R4 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["MenuContext"]
       23 GETTABLEKS                       R5 R5 K6 ["Sidebar"]
       25 JUMPIFNOTEQ                      R0 R5 ; [+22]
       27 LOADB                            R4 0
       28 JUMPIFEQKNIL                     R2 ; [+19]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R2 K0 ["Scope"]
       33 JUMPIFEQKNIL                     R5 ; [+14]
       35 GETTABLEKS                       R5 R2 K0 ["Scope"]
       37 GETTABLEKS                       R5 R5 K7 ["Type"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K8 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K9 ["Folder"]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 JUMPIFNOT                        R4 ; [+2]
       49 LOADB                            R3 1
       50 RETURN                           R3 1
       51 LOADB                            R5 0
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K5 ["MenuContext"]
       55 GETTABLEKS                       R6 R6 K10 ["Asset"]
       57 JUMPIFNOTEQ                      R0 R6 ; [+11]
       59 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K11 ["AssetType"]
       64 GETTABLEKS                       R7 R7 K9 ["Folder"]
       66 NAMECALL                         R5 R5 K12 ["getSingleItemSelected"]
       68 CALL                             R5 2 1
       69 JUMPIFNOT                        R5 ; [+2]
       70 LOADB                            R3 1
       71 RETURN                           R3 1
       72 LOADB                            R3 0
       73 RETURN                           R3 1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["MenuContext"]
        8 GETTABLEKS                       R4 R4 K2 ["Sidebar"]
       10 JUMPIFNOTEQ                      R0 R4 ; [+23]
       12 GETTABLEKS                       R4 R2 K3 ["Scope"]
       14 JUMPIFEQKNIL                     R4 ; [+19]
       16 GETTABLEKS                       R4 R1 K4 ["ExplorerController"]
       18 GETTABLEKS                       R6 R2 K3 ["Scope"]
       20 GETTABLEKS                       R6 R6 K5 ["Parent"]
       22 NAMECALL                         R4 R4 K6 ["getScopeWithUid"]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R7 R2 K3 ["Scope"]
       27 GETTABLEKS                       R7 R7 K7 ["Path"]
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R3 K8 ["requestDeleteFolder"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K1 ["MenuContext"]
       37 GETTABLEKS                       R4 R4 K9 ["Asset"]
       39 JUMPIFNOTEQ                      R0 R4 ; [+10]
       41 GETTABLEKS                       R4 R2 K7 ["Path"]
       43 JUMPIFEQKNIL                     R4 ; [+6]
       45 GETTABLEKS                       R6 R2 K7 ["Path"]
       47 NAMECALL                         R4 R3 K8 ["requestDeleteFolder"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOT                        R2 ; [+3]
        1 GETTABLEKS                       R4 R2 K0 ["Scope"]
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        6 NAMECALL                         R4 R4 K2 ["getCurrentShownScope"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R1 K3 ["ExplorerController"]
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R5 K4 ["isFolderReadyForScope"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 LOADB                            R4 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["MenuContext"]
       23 GETTABLEKS                       R5 R5 K6 ["Sidebar"]
       25 JUMPIFNOTEQ                      R0 R5 ; [+22]
       27 LOADB                            R4 0
       28 JUMPIFEQKNIL                     R2 ; [+19]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R2 K0 ["Scope"]
       33 JUMPIFEQKNIL                     R5 ; [+14]
       35 GETTABLEKS                       R5 R2 K0 ["Scope"]
       37 GETTABLEKS                       R5 R5 K7 ["Type"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K8 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K9 ["Folder"]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 JUMPIFNOT                        R4 ; [+2]
       49 LOADB                            R3 1
       50 RETURN                           R3 1
       51 LOADB                            R5 0
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K5 ["MenuContext"]
       55 GETTABLEKS                       R6 R6 K10 ["Asset"]
       57 JUMPIFNOTEQ                      R0 R6 ; [+11]
       59 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K11 ["AssetType"]
       64 GETTABLEKS                       R7 R7 K9 ["Folder"]
       66 NAMECALL                         R5 R5 K12 ["getSingleItemSelected"]
       68 CALL                             R5 2 1
       69 JUMPIFNOT                        R5 ; [+2]
       70 LOADB                            R3 1
       71 RETURN                           R3 1
       72 LOADB                            R3 0
       73 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       10 NAMECALL                         R4 R3 K3 ["getSelection"]
       12 CALL                             R4 1 3
       13 FORGPREP                         R4
       14 MOVE                             R11 R7
       15 NAMECALL                         R9 R3 K4 ["requestDeleteFolder"]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 2 ; [-5]
       20 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R4 R2 K2 ["Scope"]
       12 JUMPIF                           R4 ; [+5]
       13 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
       15 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R1 K5 ["ExplorerController"]
       20 MOVE                             R7 R4
       21 NAMECALL                         R5 R5 K6 ["isFolderReadyForScope"]
       23 CALL                             R5 2 1
       24 MOVE                             R3 R5
       25 JUMPIF                           R3 ; [+2]
       26 LOADB                            R3 0
       27 RETURN                           R3 1
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Dialogs"]
       38 GETTABLEKS                       R5 R5 K14 ["openMoveDialog"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Util"]
       47 GETTABLEKS                       R6 R6 K15 ["Notifications"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K16 ["Flags"]
       56 GETTABLEKS                       R7 R7 K17 ["getFFlagAmrMoveToLastFolder"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Flags"]
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagAmrStudioToastsIntegration"]
       67 CALL                             R7 1 1
       68 NEWTABLE                         R8 2 0
       70 GETTABLEKS                       R9 R3 K19 ["ScopeType"]
       72 GETTABLEKS                       R9 R9 K20 ["ProjectPlaces"]
       74 LOADB                            R10 1
       75 SETTABLE                         R10 R8 R9
       76 GETTABLEKS                       R9 R3 K19 ["ScopeType"]
       78 GETTABLEKS                       R9 R9 K21 ["RecentUploads"]
       80 LOADB                            R10 1
       81 SETTABLE                         R10 R8 R9
       82 DUPCLOSURE                       R9 K22 [PROTO_0]
       83 CAPTURE                          VAL R8
       84 DUPCLOSURE                       R10 K23 [PROTO_1]
       85 CAPTURE                          VAL R8
       86 DUPCLOSURE                       R11 K24 [PROTO_2]
       87 DUPCLOSURE                       R12 K25 [PROTO_3]
       88 CAPTURE                          VAL R3
       89 DUPCLOSURE                       R13 K26 [PROTO_4]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 DUPCLOSURE                       R14 K27 [PROTO_5]
       93 CAPTURE                          VAL R3
       94 DUPTABLE                         R15 K34 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Move", ["OnItemClicked"], ["ShouldRender"]}]
       95 DUPCLOSURE                       R16 K35 [PROTO_6]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R16 R15 K32 ["OnItemClicked"]
      101 DUPCLOSURE                       R16 K36 [PROTO_7]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R14
      106 SETTABLEKS                       R16 R15 K33 ["ShouldRender"]
      108 DUPTABLE                         R16 K39 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "MoveToLastFolder", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      109 DUPCLOSURE                       R17 K40 [PROTO_8]
      110 SETTABLEKS                       R17 R16 K38 ["GetSubkeyArgs"]
      112 DUPCLOSURE                       R17 K41 [PROTO_9]
      113 SETTABLEKS                       R17 R16 K32 ["OnItemClicked"]
      115 DUPCLOSURE                       R17 K42 [PROTO_10]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R17 R16 K33 ["ShouldRender"]
      122 DUPTABLE                         R17 K44 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CreateFolder", ["OnItemClicked"], ["ShouldRender"]}]
      123 DUPCLOSURE                       R18 K45 [PROTO_11]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R5
      128 SETTABLEKS                       R18 R17 K32 ["OnItemClicked"]
      130 DUPCLOSURE                       R18 K46 [PROTO_12]
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R8
      133 SETTABLEKS                       R18 R17 K33 ["ShouldRender"]
      135 DUPTABLE                         R18 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "GroupSelectionAsFolder", ["OnItemClicked"], ["ShouldRender"]}]
      136 DUPCLOSURE                       R19 K49 [PROTO_13]
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R19 R18 K32 ["OnItemClicked"]
      140 DUPCLOSURE                       R19 K50 [PROTO_14]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R19 R18 K33 ["ShouldRender"]
      146 DUPTABLE                         R19 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Rename", ["OnItemClicked"], ["ShouldRender"]}]
      147 DUPCLOSURE                       R20 K53 [PROTO_15]
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R20 R19 K32 ["OnItemClicked"]
      151 DUPCLOSURE                       R20 K54 [PROTO_16]
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R20 R19 K33 ["ShouldRender"]
      155 DUPTABLE                         R20 K56 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "DeleteFolder", ["OnItemClicked"], ["ShouldRender"]}]
      156 DUPCLOSURE                       R21 K57 [PROTO_17]
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R21 R20 K32 ["OnItemClicked"]
      160 DUPCLOSURE                       R21 K58 [PROTO_18]
      161 CAPTURE                          VAL R3
      162 SETTABLEKS                       R21 R20 K33 ["ShouldRender"]
      164 DUPTABLE                         R21 K60 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "DeleteFolders", ["OnItemClicked"], ["ShouldRender"]}]
      165 DUPCLOSURE                       R22 K61 [PROTO_19]
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R22 R21 K32 ["OnItemClicked"]
      169 DUPCLOSURE                       R22 K62 [PROTO_20]
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R13
      172 SETTABLEKS                       R22 R21 K33 ["ShouldRender"]
      174 NEWTABLE                         R22 0 7
      176 MOVE                             R23 R15
      177 MOVE                             R24 R16
      178 MOVE                             R25 R17
      179 MOVE                             R26 R18
      180 MOVE                             R27 R19
      181 MOVE                             R28 R20
      182 MOVE                             R29 R21
      183 SETLIST                          R22 R23 7 [1]
      185 RETURN                           R22 1
