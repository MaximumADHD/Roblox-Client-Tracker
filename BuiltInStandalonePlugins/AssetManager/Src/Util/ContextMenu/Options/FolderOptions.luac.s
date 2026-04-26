PROTO_0:
        0 NOT                              R2 R1
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 NOT                              R2 R3
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 LOADB                            R3 0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        9 GETTABLEKS                       R4 R5 K1 ["Sidebar"]
       11 JUMPIFNOTEQ                      R0 R4 ; [+22]
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R2 ; [+19]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R4 R2 K2 ["Scope"]
       19 JUMPIFEQKNIL                     R4 ; [+14]
       21 GETTABLEKS                       R5 R2 K2 ["Scope"]
       23 GETTABLEKS                       R4 R5 K3 ["Type"]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K4 ["ScopeType"]
       28 GETTABLEKS                       R5 R6 K5 ["Folder"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 LOADB                            R4 1
       36 RETURN                           R4 1
       37 LOADB                            R4 0
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
       41 GETTABLEKS                       R5 R6 K6 ["Asset"]
       43 JUMPIFNOTEQ                      R0 R5 ; [+11]
       45 GETTABLEKS                       R4 R1 K7 ["ItemsController"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R7 R8 K8 ["AssetType"]
       50 GETTABLEKS                       R6 R7 K5 ["Folder"]
       52 NAMECALL                         R4 R4 K9 ["getSingleItemSelected"]
       54 CALL                             R4 2 1
       55 JUMPIFNOT                        R4 ; [+2]
       56 LOADB                            R5 1
       57 RETURN                           R5 1
       58 LOADB                            R5 0
       59 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ItemsController"]
        2 NAMECALL                         R2 R1 K1 ["getSelection"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["count"]
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
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K6 ["AssetInfoField"]
       31 GETTABLEKS                       R14 R15 K7 ["AssetType"]
       33 NAMECALL                         R10 R3 K8 ["getItemField"]
       35 CALL                             R10 4 1
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R12 R13 K7 ["AssetType"]
       39 GETTABLEKS                       R11 R12 K9 ["Folder"]
       41 JUMPIFEQ                         R10 R11 ; [+3]
       43 LOADB                            R11 0
       44 RETURN                           R11 1
       45 FORGLOOP                         R5 2 ; [-21]
       47 LOADB                            R5 1
       48 RETURN                           R5 1

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"DraggedItems", "SourceZone"}]
        1 NEWTABLE                         R4 0 0
        3 SETTABLEKS                       R4 R3 K0 ["DraggedItems"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K3 ["UiZone"]
        8 GETTABLEKS                       R4 R5 K4 ["Browser"]
       10 SETTABLEKS                       R4 R3 K1 ["SourceZone"]
       12 LOADNIL                          R4
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K5 ["MenuContext"]
       16 GETTABLEKS                       R5 R6 K6 ["Sidebar"]
       18 JUMPIFNOTEQ                      R0 R5 ; [+41]
       20 JUMPIFEQKNIL                     R2 ; [+39]
       22 GETTABLEKS                       R5 R2 K7 ["Scope"]
       24 JUMPIFEQKNIL                     R5 ; [+35]
       26 GETTABLEKS                       R5 R2 K7 ["Scope"]
       28 SETTABLEKS                       R5 R3 K0 ["DraggedItems"]
       30 GETTABLEKS                       R5 R1 K8 ["ExplorerController"]
       32 GETTABLEKS                       R8 R2 K7 ["Scope"]
       34 GETTABLEKS                       R7 R8 K9 ["Parent"]
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
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K3 ["UiZone"]
       55 GETTABLEKS                       R6 R7 K6 ["Sidebar"]
       57 SETTABLEKS                       R6 R3 K1 ["SourceZone"]
       59 JUMP                             ; [+24]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K12 ["keys"]
       63 GETTABLEKS                       R6 R1 K13 ["ItemsController"]
       65 NAMECALL                         R6 R6 K14 ["getSelection"]
       67 CALL                             R6 1 -1
       68 CALL                             R5 -1 1
       69 SETTABLEKS                       R5 R3 K0 ["DraggedItems"]
       71 GETTABLEKS                       R5 R1 K13 ["ItemsController"]
       73 NAMECALL                         R5 R5 K15 ["getCurrentShownScope"]
       75 CALL                             R5 1 1
       76 MOVE                             R4 R5
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R6 R7 K3 ["UiZone"]
       80 GETTABLEKS                       R5 R6 K4 ["Browser"]
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

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        7 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       16 GETTABLEKS                       R3 R4 K3 ["Sidebar"]
       18 JUMPIFNOTEQ                      R0 R3 ; [+29]
       20 LOADB                            R3 0
       21 JUMPIFEQKNIL                     R2 ; [+25]
       23 LOADB                            R3 0
       24 GETTABLEKS                       R4 R2 K4 ["Scope"]
       26 JUMPIFEQKNIL                     R4 ; [+20]
       28 LOADB                            R3 0
       29 GETTABLEKS                       R5 R2 K4 ["Scope"]
       31 GETTABLEKS                       R4 R5 K5 ["Type"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R6 R7 K6 ["ScopeType"]
       36 GETTABLEKS                       R5 R6 K7 ["Folder"]
       38 JUMPIFNOTEQ                      R4 R5 ; [+8]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R7 R2 K4 ["Scope"]
       43 GETTABLEKS                       R6 R7 K5 ["Type"]
       45 GETTABLE                         R4 R5 R6
       46 NOT                              R3 R4
       47 RETURN                           R3 1
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       51 GETTABLEKS                       R3 R4 K8 ["Asset"]
       53 JUMPIFNOTEQ                      R0 R3 ; [+28]
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R4 R5 K9 ["count"]
       58 GETTABLEKS                       R5 R1 K10 ["ItemsController"]
       60 NAMECALL                         R5 R5 K11 ["getSelection"]
       62 CALL                             R5 1 -1
       63 CALL                             R4 -1 1
       64 LOADN                            R5 0
       65 JUMPIFLT                         R5 R4 ; [+2]
       67 LOADB                            R3 0 +1
       68 LOADB                            R3 1
       69 MOVE                             R4 R3
       70 JUMPIFNOT                        R4 ; [+10]
       71 GETUPVAL                         R6 2
       72 GETTABLEKS                       R8 R1 K10 ["ItemsController"]
       74 NAMECALL                         R8 R8 K12 ["getCurrentShownScope"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R7 R8 K5 ["Type"]
       79 GETTABLE                         R5 R6 R7
       80 NOT                              R4 R5
       81 RETURN                           R4 1
       82 LOADB                            R3 0
       83 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getLastUsedFolderName"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"folderName"}]
        6 SETTABLEKS                       R3 R4 K2 ["folderName"]
        8 RETURN                           R4 1

PROTO_6:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["TODO Move is not yet implemented"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K0 ["PluginController"]
       10 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       19 GETTABLEKS                       R3 R4 K3 ["Asset"]
       21 JUMPIFEQ                         R0 R3 ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R1 K4 ["ItemsController"]
       27 NAMECALL                         R3 R3 K5 ["getLastUsedFolderName"]
       29 CALL                             R3 1 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+3]
       32 LOADB                            R3 0
       33 RETURN                           R3 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K6 ["count"]
       37 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       39 NAMECALL                         R5 R5 K7 ["getSelection"]
       41 CALL                             R5 1 -1
       42 CALL                             R4 -1 1
       43 LOADN                            R5 0
       44 JUMPIFLT                         R5 R4 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 MOVE                             R4 R3
       49 JUMPIFNOT                        R4 ; [+17]
       50 GETTABLEKS                       R6 R1 K4 ["ItemsController"]
       52 NAMECALL                         R6 R6 K8 ["getCurrentShownScope"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R5 R6 K9 ["Type"]
       57 GETTABLEKS                       R6 R1 K10 ["SearchController"]
       59 NAMECALL                         R6 R6 K11 ["getShowSearchOptions"]
       61 CALL                             R6 1 1
       62 NOT                              R4 R6
       63 JUMPIFNOT                        R4 ; [+3]
       64 GETUPVAL                         R8 4
       65 GETTABLE                         R7 R8 R5
       66 NOT                              R4 R7
       67 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Sidebar"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+12]
        7 GETTABLEKS                       R3 R1 K2 ["ExplorerController"]
        9 LOADNIL                          R5
       10 MOVE                             R6 R2
       11 JUMPIFNOT                        R6 ; [+2]
       12 GETTABLEKS                       R6 R2 K3 ["Scope"]
       14 NAMECALL                         R3 R3 K4 ["stageFolder"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
       21 GETTABLEKS                       R3 R4 K5 ["Asset"]
       23 JUMPIFNOTEQ                      R0 R3 ; [+14]
       25 GETTABLEKS                       R3 R1 K6 ["Localization"]
       27 LOADK                            R5 K5 ["Asset"]
       28 LOADK                            R6 K7 ["NewFolder"]
       29 NAMECALL                         R3 R3 K8 ["getText"]
       31 CALL                             R3 3 1
       32 GETTABLEKS                       R4 R1 K9 ["ItemsController"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K10 ["stageNewFolder"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        7 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       16 GETTABLEKS                       R3 R4 K3 ["Sidebar"]
       18 JUMPIFEQ                         R0 R3 ; [+10]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       23 GETTABLEKS                       R3 R4 K4 ["Asset"]
       25 JUMPIFEQ                         R0 R3 ; [+3]
       27 LOADB                            R3 0
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K5 ["SearchController"]
       31 NAMECALL                         R3 R3 K6 ["getShowSearchOptions"]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K2 ["MenuContext"]
       37 GETTABLEKS                       R4 R5 K3 ["Sidebar"]
       39 JUMPIFNOTEQ                      R0 R4 ; [+19]
       41 LOADB                            R4 0
       42 JUMPIFEQKNIL                     R2 ; [+15]
       44 LOADB                            R4 0
       45 GETTABLEKS                       R5 R2 K7 ["Scope"]
       47 JUMPIFEQKNIL                     R5 ; [+10]
       49 GETTABLEKS                       R6 R2 K7 ["Scope"]
       51 GETTABLEKS                       R5 R6 K8 ["Type"]
       53 NOT                              R4 R3
       54 JUMPIFNOT                        R4 ; [+3]
       55 GETUPVAL                         R7 2
       56 GETTABLE                         R6 R7 R5
       57 NOT                              R4 R6
       58 RETURN                           R4 1
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R5 R6 K2 ["MenuContext"]
       62 GETTABLEKS                       R4 R5 K4 ["Asset"]
       64 JUMPIFNOTEQ                      R0 R4 ; [+14]
       66 GETTABLEKS                       R6 R1 K9 ["ItemsController"]
       68 NAMECALL                         R6 R6 K10 ["getCurrentShownScope"]
       70 CALL                             R6 1 1
       71 GETTABLEKS                       R5 R6 K8 ["Type"]
       73 NOT                              R4 R3
       74 JUMPIFNOT                        R4 ; [+3]
       75 GETUPVAL                         R7 2
       76 GETTABLE                         R6 R7 R5
       77 NOT                              R4 R6
       78 RETURN                           R4 1
       79 LOADB                            R4 0
       80 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        7 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["MenuContext"]
       16 GETTABLEKS                       R3 R4 K3 ["Asset"]
       18 JUMPIFEQ                         R0 R3 ; [+3]
       20 LOADB                            R3 0
       21 RETURN                           R3 1
       22 GETTABLEKS                       R3 R1 K4 ["SearchController"]
       24 NAMECALL                         R3 R3 K5 ["getShowSearchOptions"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K6 ["count"]
       30 GETTABLEKS                       R6 R1 K7 ["ItemsController"]
       32 NAMECALL                         R6 R6 K8 ["getSelection"]
       34 CALL                             R6 1 -1
       35 CALL                             R5 -1 1
       36 LOADN                            R6 0
       37 JUMPIFLT                         R6 R5 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 MOVE                             R5 R4
       42 JUMPIFNOT                        R5 ; [+12]
       43 GETTABLEKS                       R7 R1 K7 ["ItemsController"]
       45 NAMECALL                         R7 R7 K9 ["getCurrentShownScope"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R6 R7 K10 ["Type"]
       50 NOT                              R5 R3
       51 JUMPIFNOT                        R5 ; [+3]
       52 GETUPVAL                         R8 3
       53 GETTABLE                         R7 R8 R6
       54 NOT                              R5 R7
       55 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Sidebar"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+15]
        7 JUMPIFEQKNIL                     R2 ; [+13]
        9 GETTABLEKS                       R3 R2 K2 ["Scope"]
       11 JUMPIFEQKNIL                     R3 ; [+9]
       13 GETTABLEKS                       R3 R1 K3 ["ExplorerController"]
       15 GETTABLEKS                       R5 R2 K2 ["Scope"]
       17 NAMECALL                         R3 R3 K4 ["stageFolder"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
       24 GETTABLEKS                       R3 R4 K5 ["Asset"]
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

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        7 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 RETURN                           R3 1

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["MenuContext"]
        8 GETTABLEKS                       R4 R5 K2 ["Sidebar"]
       10 JUMPIFNOTEQ                      R0 R4 ; [+23]
       12 GETTABLEKS                       R4 R2 K3 ["Scope"]
       14 JUMPIFEQKNIL                     R4 ; [+19]
       16 GETTABLEKS                       R4 R1 K4 ["ExplorerController"]
       18 GETTABLEKS                       R7 R2 K3 ["Scope"]
       20 GETTABLEKS                       R6 R7 K5 ["Parent"]
       22 NAMECALL                         R4 R4 K6 ["getScopeWithUid"]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R8 R2 K3 ["Scope"]
       27 GETTABLEKS                       R7 R8 K7 ["Path"]
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R3 K8 ["requestDeleteFolder"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K1 ["MenuContext"]
       37 GETTABLEKS                       R4 R5 K9 ["Asset"]
       39 JUMPIFNOTEQ                      R0 R4 ; [+10]
       41 GETTABLEKS                       R4 R2 K7 ["Path"]
       43 JUMPIFEQKNIL                     R4 ; [+6]
       45 GETTABLEKS                       R6 R2 K7 ["Path"]
       47 NAMECALL                         R4 R3 K8 ["requestDeleteFolder"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        7 NAMECALL                         R3 R3 K1 ["isInventoryFolderReady"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+2]
       11 LOADB                            R3 0
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R3 3 1
       18 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R4 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["Dialogs"]
       29 GETTABLEKS                       R4 R5 K12 ["openMoveDialog"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Flags"]
       38 GETTABLEKS                       R5 R6 K14 ["getFFlagAmrOrganizationFoundation"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Flags"]
       47 GETTABLEKS                       R6 R7 K15 ["getFFlagAmrMoveToLastFolder"]
       49 CALL                             R5 1 1
       50 NEWTABLE                         R6 2 0
       52 GETTABLEKS                       R8 R2 K16 ["ScopeType"]
       54 GETTABLEKS                       R7 R8 K17 ["ProjectPlaces"]
       56 LOADB                            R8 1
       57 SETTABLE                         R8 R6 R7
       58 GETTABLEKS                       R8 R2 K16 ["ScopeType"]
       60 GETTABLEKS                       R7 R8 K18 ["RecentUploads"]
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R6 R7
       64 DUPCLOSURE                       R7 K19 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R8 K20 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R9 K21 [PROTO_2]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R2
       72 DUPTABLE                         R10 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       73 LOADK                            R11 K27 ["ContextMenu"]
       74 SETTABLEKS                       R11 R10 K22 ["TextKey"]
       76 LOADK                            R11 K28 ["Move"]
       77 SETTABLEKS                       R11 R10 K23 ["TextSubKey"]
       79 DUPCLOSURE                       R11 K29 [PROTO_3]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R11 R10 K24 ["OnItemClicked"]
       85 DUPCLOSURE                       R11 K30 [PROTO_4]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R11 R10 K25 ["ShouldRender"]
       92 DUPTABLE                         R11 K32 [{"TextKey", "TextSubKey", "GetSubkeyArgs", "OnItemClicked", "ShouldRender"}]
       93 LOADK                            R12 K27 ["ContextMenu"]
       94 SETTABLEKS                       R12 R11 K22 ["TextKey"]
       96 LOADK                            R12 K33 ["MoveToLastFolder"]
       97 SETTABLEKS                       R12 R11 K23 ["TextSubKey"]
       99 DUPCLOSURE                       R12 K34 [PROTO_5]
      100 SETTABLEKS                       R12 R11 K31 ["GetSubkeyArgs"]
      102 DUPCLOSURE                       R12 K35 [PROTO_6]
      103 SETTABLEKS                       R12 R11 K24 ["OnItemClicked"]
      105 DUPCLOSURE                       R12 K36 [PROTO_7]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R12 R11 K25 ["ShouldRender"]
      113 DUPTABLE                         R12 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      114 LOADK                            R13 K27 ["ContextMenu"]
      115 SETTABLEKS                       R13 R12 K22 ["TextKey"]
      117 LOADK                            R13 K37 ["CreateFolder"]
      118 SETTABLEKS                       R13 R12 K23 ["TextSubKey"]
      120 DUPCLOSURE                       R13 K38 [PROTO_8]
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R13 R12 K24 ["OnItemClicked"]
      124 DUPCLOSURE                       R13 K39 [PROTO_9]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R13 R12 K25 ["ShouldRender"]
      130 DUPTABLE                         R13 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      131 LOADK                            R14 K27 ["ContextMenu"]
      132 SETTABLEKS                       R14 R13 K22 ["TextKey"]
      134 LOADK                            R14 K40 ["GroupSelectionAsFolder"]
      135 SETTABLEKS                       R14 R13 K23 ["TextSubKey"]
      137 DUPCLOSURE                       R14 K41 [PROTO_10]
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R14 R13 K24 ["OnItemClicked"]
      141 DUPCLOSURE                       R14 K42 [PROTO_11]
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R6
      146 SETTABLEKS                       R14 R13 K25 ["ShouldRender"]
      148 DUPTABLE                         R14 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      149 LOADK                            R15 K27 ["ContextMenu"]
      150 SETTABLEKS                       R15 R14 K22 ["TextKey"]
      152 LOADK                            R15 K43 ["Rename"]
      153 SETTABLEKS                       R15 R14 K23 ["TextSubKey"]
      155 DUPCLOSURE                       R15 K44 [PROTO_12]
      156 CAPTURE                          VAL R2
      157 SETTABLEKS                       R15 R14 K24 ["OnItemClicked"]
      159 DUPCLOSURE                       R15 K45 [PROTO_13]
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R15 R14 K25 ["ShouldRender"]
      164 DUPTABLE                         R15 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      165 LOADK                            R16 K27 ["ContextMenu"]
      166 SETTABLEKS                       R16 R15 K22 ["TextKey"]
      168 LOADK                            R16 K46 ["DeleteFolder"]
      169 SETTABLEKS                       R16 R15 K23 ["TextSubKey"]
      171 DUPCLOSURE                       R16 K47 [PROTO_14]
      172 CAPTURE                          VAL R2
      173 SETTABLEKS                       R16 R15 K24 ["OnItemClicked"]
      175 DUPCLOSURE                       R16 K48 [PROTO_15]
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R8
      178 SETTABLEKS                       R16 R15 K25 ["ShouldRender"]
      180 DUPTABLE                         R16 K26 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      181 LOADK                            R17 K27 ["ContextMenu"]
      182 SETTABLEKS                       R17 R16 K22 ["TextKey"]
      184 LOADK                            R17 K49 ["DeleteFolders"]
      185 SETTABLEKS                       R17 R16 K23 ["TextSubKey"]
      187 DUPCLOSURE                       R17 K50 [PROTO_16]
      188 CAPTURE                          VAL R2
      189 SETTABLEKS                       R17 R16 K24 ["OnItemClicked"]
      191 DUPCLOSURE                       R17 K51 [PROTO_17]
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R9
      195 SETTABLEKS                       R17 R16 K25 ["ShouldRender"]
      197 NEWTABLE                         R17 0 7
      199 MOVE                             R18 R10
      200 MOVE                             R19 R11
      201 MOVE                             R20 R12
      202 MOVE                             R21 R13
      203 MOVE                             R22 R14
      204 MOVE                             R23 R15
      205 MOVE                             R24 R16
      206 SETLIST                          R17 R18 7 [1]
      208 RETURN                           R17 1
