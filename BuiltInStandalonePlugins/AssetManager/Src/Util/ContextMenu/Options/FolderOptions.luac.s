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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        9 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
       11 JUMPIFNOTEQ                      R0 R4 ; [+22]
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R2 ; [+19]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R4 R2 K2 ["Scope"]
       19 JUMPIFEQKNIL                     R4 ; [+14]
       21 GETTABLEKS                       R4 R2 K2 ["Scope"]
       23 GETTABLEKS                       R4 R4 K3 ["Type"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K4 ["ScopeType"]
       28 GETTABLEKS                       R5 R5 K5 ["Folder"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADB                            R4 1
       36 RETURN                           R4 1
       37 LOADB                            R4 0
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["MenuContext"]
       41 GETTABLEKS                       R5 R5 K6 ["Asset"]
       43 JUMPIFNOTEQ                      R0 R5 ; [+11]
       45 GETTABLEKS                       R4 R1 K7 ["ItemsController"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K8 ["AssetType"]
       50 GETTABLEKS                       R6 R6 K5 ["Folder"]
       52 NAMECALL                         R4 R4 K9 ["getSingleItemSelected"]
       54 CALL                             R4 2 1
       55 JUMPIFNOT                        R4 ; [+2]
       56 LOADB                            R5 1
       57 RETURN                           R5 1
       58 LOADB                            R5 0
       59 RETURN                           R5 1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["SearchController"]
        7 NAMECALL                         R3 R3 K1 ["getShowSearchOptions"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["MenuContext"]
       13 GETTABLEKS                       R4 R4 K3 ["Sidebar"]
       15 JUMPIFNOTEQ                      R0 R4 ; [+39]
       17 LOADB                            R4 0
       18 JUMPIFEQKNIL                     R2 ; [+35]
       20 LOADB                            R4 0
       21 GETTABLEKS                       R5 R2 K4 ["Scope"]
       23 JUMPIFEQKNIL                     R5 ; [+30]
       25 LOADB                            R4 0
       26 GETTABLEKS                       R5 R2 K4 ["Scope"]
       28 GETTABLEKS                       R5 R5 K5 ["Type"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K6 ["ScopeType"]
       33 GETTABLEKS                       R6 R6 K7 ["Folder"]
       35 JUMPIFNOTEQ                      R5 R6 ; [+18]
       37 GETTABLEKS                       R5 R2 K4 ["Scope"]
       39 GETTABLEKS                       R6 R1 K8 ["ExplorerController"]
       41 NOT                              R4 R3
       42 JUMPIFNOT                        R4 ; [+11]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R9 R5 K5 ["Type"]
       46 GETTABLE                         R7 R8 R9
       47 NOT                              R4 R7
       48 JUMPIFNOT                        R4 ; [+5]
       49 MOVE                             R9 R5
       50 NAMECALL                         R7 R6 K9 ["isFolderReadyForScope"]
       52 CALL                             R7 2 1
       53 MOVE                             R4 R7
       54 RETURN                           R4 1
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K2 ["MenuContext"]
       58 GETTABLEKS                       R4 R4 K10 ["Asset"]
       60 JUMPIFNOTEQ                      R0 R4 ; [+38]
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K11 ["count"]
       65 GETTABLEKS                       R6 R1 K12 ["ItemsController"]
       67 NAMECALL                         R6 R6 K13 ["getSelection"]
       69 CALL                             R6 1 -1
       70 CALL                             R5 -1 1
       71 LOADN                            R6 0
       72 JUMPIFLT                         R6 R5 ; [+2]
       74 LOADB                            R4 0 +1
       75 LOADB                            R4 1
       76 MOVE                             R5 R4
       77 JUMPIFNOT                        R5 ; [+20]
       78 GETTABLEKS                       R6 R1 K12 ["ItemsController"]
       80 NAMECALL                         R6 R6 K14 ["getCurrentShownScope"]
       82 CALL                             R6 1 1
       83 GETTABLEKS                       R7 R1 K8 ["ExplorerController"]
       85 NOT                              R5 R3
       86 JUMPIFNOT                        R5 ; [+11]
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R10 R6 K5 ["Type"]
       90 GETTABLE                         R8 R9 R10
       91 NOT                              R5 R8
       92 JUMPIFNOT                        R5 ; [+5]
       93 MOVE                             R10 R6
       94 NAMECALL                         R8 R7 K9 ["isFolderReadyForScope"]
       96 CALL                             R8 2 1
       97 MOVE                             R5 R8
       98 RETURN                           R5 1
       99 LOADB                            R4 0
      100 RETURN                           R4 1

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
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
       11 GETTABLEKS                       R3 R3 K1 ["Asset"]
       13 JUMPIFEQ                         R0 R3 ; [+3]
       15 LOADB                            R3 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       19 NAMECALL                         R3 R3 K3 ["getLastUsedFolderName"]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADB                            R3 0
       25 RETURN                           R3 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K4 ["count"]
       29 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       31 NAMECALL                         R5 R5 K5 ["getSelection"]
       33 CALL                             R5 1 -1
       34 CALL                             R4 -1 1
       35 LOADN                            R5 0
       36 JUMPIFLT                         R5 R4 ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 MOVE                             R4 R3
       41 JUMPIFNOT                        R4 ; [+25]
       42 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       44 NAMECALL                         R5 R5 K6 ["getCurrentShownScope"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R1 K7 ["SearchController"]
       49 NAMECALL                         R6 R6 K8 ["getShowSearchOptions"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R1 K9 ["ExplorerController"]
       54 NOT                              R4 R6
       55 JUMPIFNOT                        R4 ; [+11]
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R10 R5 K10 ["Type"]
       59 GETTABLE                         R8 R9 R10
       60 NOT                              R4 R8
       61 JUMPIFNOT                        R4 ; [+5]
       62 MOVE                             R10 R5
       63 NAMECALL                         R8 R7 K11 ["isFolderReadyForScope"]
       65 CALL                             R8 2 1
       66 MOVE                             R4 R8
       67 RETURN                           R4 1

PROTO_9:
        0 JUMPIFNOT                        R2 ; [+28]
        1 GETTABLEKS                       R3 R2 K0 ["Depth"]
        3 JUMPIFNOT                        R3 ; [+25]
        4 GETTABLEKS                       R3 R2 K0 ["Depth"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["FolderDepthMax"]
        9 JUMPIFNOTLE                      R4 R3 ; [+19]
       11 GETTABLEKS                       R3 R1 K2 ["PluginController"]
       13 DUPTABLE                         R5 K5 [{"Key", "SubKey"}]
       14 LOADK                            R6 K6 ["Toast"]
       15 SETTABLEKS                       R6 R5 K3 ["Key"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K7 ["ErrorTypeLookup"]
       20 GETTABLEKS                       R7 R7 K8 ["CreateFolder"]
       22 GETTABLEN                        R6 R7 1
       23 SETTABLEKS                       R6 R5 K4 ["SubKey"]
       25 NAMECALL                         R3 R3 K9 ["showToast"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K10 ["MenuContext"]
       32 GETTABLEKS                       R3 R3 K11 ["Sidebar"]
       34 JUMPIFNOTEQ                      R0 R3 ; [+12]
       36 GETTABLEKS                       R3 R1 K12 ["ExplorerController"]
       38 LOADNIL                          R5
       39 MOVE                             R6 R2
       40 JUMPIFNOT                        R6 ; [+2]
       41 GETTABLEKS                       R6 R2 K13 ["Scope"]
       43 NAMECALL                         R3 R3 K14 ["stageFolder"]
       45 CALL                             R3 3 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K10 ["MenuContext"]
       50 GETTABLEKS                       R3 R3 K15 ["Asset"]
       52 JUMPIFNOTEQ                      R0 R3 ; [+14]
       54 GETTABLEKS                       R3 R1 K16 ["Localization"]
       56 LOADK                            R5 K15 ["Asset"]
       57 LOADK                            R6 K17 ["NewFolder"]
       58 NAMECALL                         R3 R3 K18 ["getText"]
       60 CALL                             R3 3 1
       61 GETTABLEKS                       R4 R1 K19 ["ItemsController"]
       63 MOVE                             R6 R3
       64 NAMECALL                         R4 R4 K20 ["stageNewFolder"]
       66 CALL                             R4 2 0
       67 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Sidebar"]
       10 JUMPIFEQ                         R0 R3 ; [+10]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
       15 GETTABLEKS                       R3 R3 K2 ["Asset"]
       17 JUMPIFEQ                         R0 R3 ; [+3]
       19 LOADB                            R3 0
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K3 ["SearchController"]
       23 NAMECALL                         R3 R3 K4 ["getShowSearchOptions"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
       29 GETTABLEKS                       R4 R4 K1 ["Sidebar"]
       31 JUMPIFNOTEQ                      R0 R4 ; [+27]
       33 LOADB                            R4 0
       34 JUMPIFEQKNIL                     R2 ; [+23]
       36 LOADB                            R4 0
       37 GETTABLEKS                       R5 R2 K5 ["Scope"]
       39 JUMPIFEQKNIL                     R5 ; [+18]
       41 GETTABLEKS                       R5 R2 K5 ["Scope"]
       43 GETTABLEKS                       R6 R1 K6 ["ExplorerController"]
       45 NOT                              R4 R3
       46 JUMPIFNOT                        R4 ; [+11]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R9 R5 K7 ["Type"]
       50 GETTABLE                         R7 R8 R9
       51 NOT                              R4 R7
       52 JUMPIFNOT                        R4 ; [+5]
       53 MOVE                             R9 R5
       54 NAMECALL                         R7 R6 K8 ["isFolderReadyForScope"]
       56 CALL                             R7 2 1
       57 MOVE                             R4 R7
       58 RETURN                           R4 1
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
       62 GETTABLEKS                       R4 R4 K2 ["Asset"]
       64 JUMPIFNOTEQ                      R0 R4 ; [+22]
       66 GETTABLEKS                       R5 R1 K9 ["ItemsController"]
       68 NAMECALL                         R5 R5 K10 ["getCurrentShownScope"]
       70 CALL                             R5 1 1
       71 GETTABLEKS                       R6 R1 K6 ["ExplorerController"]
       73 NOT                              R4 R3
       74 JUMPIFNOT                        R4 ; [+11]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R9 R5 K7 ["Type"]
       78 GETTABLE                         R7 R8 R9
       79 NOT                              R4 R7
       80 JUMPIFNOT                        R4 ; [+5]
       81 MOVE                             R9 R5
       82 NAMECALL                         R7 R6 K8 ["isFolderReadyForScope"]
       84 CALL                             R7 2 1
       85 MOVE                             R4 R7
       86 RETURN                           R4 1
       87 LOADB                            R4 0
       88 RETURN                           R4 1

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
       16 NAMECALL                         R3 R3 K3 ["getShowSearchOptions"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K4 ["count"]
       22 GETTABLEKS                       R6 R1 K5 ["ItemsController"]
       24 NAMECALL                         R6 R6 K6 ["getSelection"]
       26 CALL                             R6 1 -1
       27 CALL                             R5 -1 1
       28 LOADN                            R6 0
       29 JUMPIFLT                         R6 R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 MOVE                             R5 R4
       34 JUMPIFNOT                        R5 ; [+20]
       35 GETTABLEKS                       R6 R1 K5 ["ItemsController"]
       37 NAMECALL                         R6 R6 K7 ["getCurrentShownScope"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R1 K8 ["ExplorerController"]
       42 NOT                              R5 R3
       43 JUMPIFNOT                        R5 ; [+11]
       44 GETUPVAL                         R9 3
       45 GETTABLEKS                       R10 R6 K9 ["Type"]
       47 GETTABLE                         R8 R9 R10
       48 NOT                              R5 R8
       49 JUMPIFNOT                        R5 ; [+5]
       50 MOVE                             R10 R6
       51 NAMECALL                         R8 R7 K10 ["isFolderReadyForScope"]
       53 CALL                             R8 2 1
       54 MOVE                             R5 R8
       55 RETURN                           R5 1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R4 R2 K0 ["Scope"]
        8 JUMPIF                           R4 ; [+5]
        9 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
       11 NAMECALL                         R4 R4 K2 ["getCurrentShownScope"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R1 K3 ["ExplorerController"]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K4 ["isFolderReadyForScope"]
       19 CALL                             R5 2 1
       20 MOVE                             R3 R5
       21 JUMPIF                           R3 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 CALL                             R3 3 1
       29 RETURN                           R3 1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R4 R2 K0 ["Scope"]
        8 JUMPIF                           R4 ; [+5]
        9 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
       11 NAMECALL                         R4 R4 K2 ["getCurrentShownScope"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R1 K3 ["ExplorerController"]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K4 ["isFolderReadyForScope"]
       19 CALL                             R5 2 1
       20 MOVE                             R3 R5
       21 JUMPIF                           R3 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 CALL                             R3 3 1
       29 RETURN                           R3 1

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
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R4 R2 K2 ["Scope"]
       17 JUMPIF                           R4 ; [+5]
       18 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
       20 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R1 K5 ["ExplorerController"]
       25 MOVE                             R7 R4
       26 NAMECALL                         R5 R5 K6 ["isFolderReadyForScope"]
       28 CALL                             R5 2 1
       29 MOVE                             R3 R5
       30 JUMPIF                           R3 ; [+2]
       31 LOADB                            R3 0
       32 RETURN                           R3 1
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 RETURN                           R3 1

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
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAmrOrganizationFoundation"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K17 ["getFFlagAmrMoveToLastFolder"]
       58 CALL                             R6 1 1
       59 NEWTABLE                         R7 2 0
       61 GETTABLEKS                       R8 R3 K18 ["ScopeType"]
       63 GETTABLEKS                       R8 R8 K19 ["ProjectPlaces"]
       65 LOADB                            R9 1
       66 SETTABLE                         R9 R7 R8
       67 GETTABLEKS                       R8 R3 K18 ["ScopeType"]
       69 GETTABLEKS                       R8 R8 K20 ["RecentUploads"]
       71 LOADB                            R9 1
       72 SETTABLE                         R9 R7 R8
       73 DUPCLOSURE                       R8 K21 [PROTO_0]
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R9 K22 [PROTO_1]
       76 DUPCLOSURE                       R10 K23 [PROTO_2]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R3
       79 DUPCLOSURE                       R11 K24 [PROTO_3]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 DUPTABLE                         R12 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       83 LOADK                            R13 K30 ["ContextMenu"]
       84 SETTABLEKS                       R13 R12 K25 ["TextKey"]
       86 LOADK                            R13 K31 ["Move"]
       87 SETTABLEKS                       R13 R12 K26 ["TextSubKey"]
       89 DUPCLOSURE                       R13 K32 [PROTO_4]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R13 R12 K27 ["OnItemClicked"]
       95 DUPCLOSURE                       R13 K33 [PROTO_5]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R13 R12 K28 ["ShouldRender"]
      102 DUPTABLE                         R13 K35 [{"TextKey", "TextSubKey", "GetSubkeyArgs", "OnItemClicked", "ShouldRender"}]
      103 LOADK                            R14 K30 ["ContextMenu"]
      104 SETTABLEKS                       R14 R13 K25 ["TextKey"]
      106 LOADK                            R14 K36 ["MoveToLastFolder"]
      107 SETTABLEKS                       R14 R13 K26 ["TextSubKey"]
      109 DUPCLOSURE                       R14 K37 [PROTO_6]
      110 SETTABLEKS                       R14 R13 K34 ["GetSubkeyArgs"]
      112 DUPCLOSURE                       R14 K38 [PROTO_7]
      113 SETTABLEKS                       R14 R13 K27 ["OnItemClicked"]
      115 DUPCLOSURE                       R14 K39 [PROTO_8]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R7
      121 SETTABLEKS                       R14 R13 K28 ["ShouldRender"]
      123 DUPTABLE                         R14 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      124 LOADK                            R15 K30 ["ContextMenu"]
      125 SETTABLEKS                       R15 R14 K25 ["TextKey"]
      127 LOADK                            R15 K40 ["CreateFolder"]
      128 SETTABLEKS                       R15 R14 K26 ["TextSubKey"]
      130 DUPCLOSURE                       R15 K41 [PROTO_9]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R15 R14 K27 ["OnItemClicked"]
      135 DUPCLOSURE                       R15 K42 [PROTO_10]
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R15 R14 K28 ["ShouldRender"]
      141 DUPTABLE                         R15 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      142 LOADK                            R16 K30 ["ContextMenu"]
      143 SETTABLEKS                       R16 R15 K25 ["TextKey"]
      145 LOADK                            R16 K43 ["GroupSelectionAsFolder"]
      146 SETTABLEKS                       R16 R15 K26 ["TextSubKey"]
      148 DUPCLOSURE                       R16 K44 [PROTO_11]
      149 CAPTURE                          VAL R3
      150 SETTABLEKS                       R16 R15 K27 ["OnItemClicked"]
      152 DUPCLOSURE                       R16 K45 [PROTO_12]
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R7
      157 SETTABLEKS                       R16 R15 K28 ["ShouldRender"]
      159 DUPTABLE                         R16 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      160 LOADK                            R17 K30 ["ContextMenu"]
      161 SETTABLEKS                       R17 R16 K25 ["TextKey"]
      163 LOADK                            R17 K46 ["Rename"]
      164 SETTABLEKS                       R17 R16 K26 ["TextSubKey"]
      166 DUPCLOSURE                       R17 K47 [PROTO_13]
      167 CAPTURE                          VAL R3
      168 SETTABLEKS                       R17 R16 K27 ["OnItemClicked"]
      170 DUPCLOSURE                       R17 K48 [PROTO_14]
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R10
      173 SETTABLEKS                       R17 R16 K28 ["ShouldRender"]
      175 DUPTABLE                         R17 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      176 LOADK                            R18 K30 ["ContextMenu"]
      177 SETTABLEKS                       R18 R17 K25 ["TextKey"]
      179 LOADK                            R18 K49 ["DeleteFolder"]
      180 SETTABLEKS                       R18 R17 K26 ["TextSubKey"]
      182 DUPCLOSURE                       R18 K50 [PROTO_15]
      183 CAPTURE                          VAL R3
      184 SETTABLEKS                       R18 R17 K27 ["OnItemClicked"]
      186 DUPCLOSURE                       R18 K51 [PROTO_16]
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R10
      189 SETTABLEKS                       R18 R17 K28 ["ShouldRender"]
      191 DUPTABLE                         R18 K29 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      192 LOADK                            R19 K30 ["ContextMenu"]
      193 SETTABLEKS                       R19 R18 K25 ["TextKey"]
      195 LOADK                            R19 K52 ["DeleteFolders"]
      196 SETTABLEKS                       R19 R18 K26 ["TextSubKey"]
      198 DUPCLOSURE                       R19 K53 [PROTO_17]
      199 CAPTURE                          VAL R3
      200 SETTABLEKS                       R19 R18 K27 ["OnItemClicked"]
      202 DUPCLOSURE                       R19 K54 [PROTO_18]
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R11
      206 SETTABLEKS                       R19 R18 K28 ["ShouldRender"]
      208 NEWTABLE                         R19 0 7
      210 MOVE                             R20 R12
      211 MOVE                             R21 R13
      212 MOVE                             R22 R14
      213 MOVE                             R23 R15
      214 MOVE                             R24 R16
      215 MOVE                             R25 R17
      216 MOVE                             R26 R18
      217 SETLIST                          R19 R20 7 [1]
      219 RETURN                           R19 1
