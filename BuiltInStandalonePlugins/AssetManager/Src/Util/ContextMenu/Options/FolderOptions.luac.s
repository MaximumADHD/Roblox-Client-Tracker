PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       55 JUMPIFNOTEQ                      R0 R4 ; [+38]
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
       71 MOVE                             R5 R4
       72 JUMPIFNOT                        R5 ; [+20]
       73 GETTABLEKS                       R6 R1 K12 ["ItemsController"]
       75 NAMECALL                         R6 R6 K14 ["getCurrentShownScope"]
       77 CALL                             R6 1 1
       78 GETTABLEKS                       R7 R1 K8 ["ExplorerController"]
       80 NOT                              R5 R3
       81 JUMPIFNOT                        R5 ; [+11]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R10 R6 K5 ["Type"]
       85 GETTABLE                         R8 R9 R10
       86 NOT                              R5 R8
       87 JUMPIFNOT                        R5 ; [+5]
       88 MOVE                             R10 R6
       89 NAMECALL                         R8 R7 K9 ["isFolderReadyForScope"]
       91 CALL                             R8 2 1
       92 MOVE                             R5 R8
       93 RETURN                           R5 1
       94 LOADB                            R4 0
       95 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getLastUsedFolderName"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"folderName"}]
        6 SETTABLEKS                       R3 R4 K2 ["folderName"]
        8 RETURN                           R4 1

PROTO_7:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["TODO Move is not yet implemented"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 JUMPIFNOT                        R2 ; [+25]
        1 GETTABLEKS                       R3 R2 K0 ["Depth"]
        3 JUMPIFNOT                        R3 ; [+22]
        4 GETTABLEKS                       R3 R2 K0 ["Depth"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["FolderDepthMax"]
        9 JUMPIFNOTLE                      R4 R3 ; [+16]
       11 GETTABLEKS                       R3 R1 K2 ["PluginController"]
       13 DUPTABLE                         R5 K6 [{["Key"] = "Toast", ["SubKey"]}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K7 ["ErrorTypeLookup"]
       17 GETTABLEKS                       R7 R7 K8 ["CreateFolder"]
       19 GETTABLEN                        R6 R7 1
       20 SETTABLEKS                       R6 R5 K5 ["SubKey"]
       22 NAMECALL                         R3 R3 K9 ["showToast"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K10 ["MenuContext"]
       29 GETTABLEKS                       R3 R3 K11 ["Sidebar"]
       31 JUMPIFNOTEQ                      R0 R3 ; [+12]
       33 GETTABLEKS                       R3 R1 K12 ["ExplorerController"]
       35 LOADNIL                          R5
       36 MOVE                             R6 R2
       37 JUMPIFNOT                        R6 ; [+2]
       38 GETTABLEKS                       R6 R2 K13 ["Scope"]
       40 NAMECALL                         R3 R3 K14 ["stageFolder"]
       42 CALL                             R3 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K10 ["MenuContext"]
       47 GETTABLEKS                       R3 R3 K15 ["Asset"]
       49 JUMPIFNOTEQ                      R0 R3 ; [+14]
       51 GETTABLEKS                       R3 R1 K16 ["Localization"]
       53 LOADK                            R5 K15 ["Asset"]
       54 LOADK                            R6 K17 ["NewFolder"]
       55 NAMECALL                         R3 R3 K18 ["getText"]
       57 CALL                             R3 3 1
       58 GETTABLEKS                       R4 R1 K19 ["ItemsController"]
       60 MOVE                             R6 R3
       61 NAMECALL                         R4 R4 K20 ["stageNewFolder"]
       63 CALL                             R4 2 0
       64 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_18:
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
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAmrMoveToLastFolder"]
       49 CALL                             R5 1 1
       50 NEWTABLE                         R6 2 0
       52 GETTABLEKS                       R7 R3 K17 ["ScopeType"]
       54 GETTABLEKS                       R7 R7 K18 ["ProjectPlaces"]
       56 LOADB                            R8 1
       57 SETTABLE                         R8 R6 R7
       58 GETTABLEKS                       R7 R3 K17 ["ScopeType"]
       60 GETTABLEKS                       R7 R7 K19 ["RecentUploads"]
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R6 R7
       64 DUPCLOSURE                       R7 K20 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R8 K21 [PROTO_1]
       67 DUPCLOSURE                       R9 K22 [PROTO_2]
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R10 K23 [PROTO_3]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 DUPTABLE                         R11 K30 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Move", ["OnItemClicked"], ["ShouldRender"]}]
       73 DUPCLOSURE                       R12 K31 [PROTO_4]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R12 R11 K28 ["OnItemClicked"]
       79 DUPCLOSURE                       R12 K32 [PROTO_5]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R12 R11 K29 ["ShouldRender"]
       85 DUPTABLE                         R12 K35 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "MoveToLastFolder", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
       86 DUPCLOSURE                       R13 K36 [PROTO_6]
       87 SETTABLEKS                       R13 R12 K34 ["GetSubkeyArgs"]
       89 DUPCLOSURE                       R13 K37 [PROTO_7]
       90 SETTABLEKS                       R13 R12 K28 ["OnItemClicked"]
       92 DUPCLOSURE                       R13 K38 [PROTO_8]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R13 R12 K29 ["ShouldRender"]
       99 DUPTABLE                         R13 K40 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CreateFolder", ["OnItemClicked"], ["ShouldRender"]}]
      100 DUPCLOSURE                       R14 K41 [PROTO_9]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R14 R13 K28 ["OnItemClicked"]
      105 DUPCLOSURE                       R14 K42 [PROTO_10]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R14 R13 K29 ["ShouldRender"]
      110 DUPTABLE                         R14 K44 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "GroupSelectionAsFolder", ["OnItemClicked"], ["ShouldRender"]}]
      111 DUPCLOSURE                       R15 K45 [PROTO_11]
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R15 R14 K28 ["OnItemClicked"]
      115 DUPCLOSURE                       R15 K46 [PROTO_12]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R15 R14 K29 ["ShouldRender"]
      121 DUPTABLE                         R15 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Rename", ["OnItemClicked"], ["ShouldRender"]}]
      122 DUPCLOSURE                       R16 K49 [PROTO_13]
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R16 R15 K28 ["OnItemClicked"]
      126 DUPCLOSURE                       R16 K50 [PROTO_14]
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R16 R15 K29 ["ShouldRender"]
      130 DUPTABLE                         R16 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "DeleteFolder", ["OnItemClicked"], ["ShouldRender"]}]
      131 DUPCLOSURE                       R17 K53 [PROTO_15]
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R17 R16 K28 ["OnItemClicked"]
      135 DUPCLOSURE                       R17 K54 [PROTO_16]
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R17 R16 K29 ["ShouldRender"]
      139 DUPTABLE                         R17 K56 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "DeleteFolders", ["OnItemClicked"], ["ShouldRender"]}]
      140 DUPCLOSURE                       R18 K57 [PROTO_17]
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R18 R17 K28 ["OnItemClicked"]
      144 DUPCLOSURE                       R18 K58 [PROTO_18]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R10
      147 SETTABLEKS                       R18 R17 K29 ["ShouldRender"]
      149 NEWTABLE                         R18 0 7
      151 MOVE                             R19 R11
      152 MOVE                             R20 R12
      153 MOVE                             R21 R13
      154 MOVE                             R22 R14
      155 MOVE                             R23 R15
      156 MOVE                             R24 R16
      157 MOVE                             R25 R17
      158 SETLIST                          R18 R19 7 [1]
      160 RETURN                           R18 1
