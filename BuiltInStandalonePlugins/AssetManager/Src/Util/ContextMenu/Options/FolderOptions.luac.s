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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R4 K1 ["Sidebar"]
       10 JUMPIFEQ                         R0 R3 ; [+10]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
       15 GETTABLEKS                       R3 R4 K2 ["Asset"]
       17 JUMPIFEQ                         R0 R3 ; [+3]
       19 LOADB                            R3 0
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K3 ["SearchController"]
       23 NAMECALL                         R3 R3 K4 ["getShowSearchOptions"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
       29 GETTABLEKS                       R4 R5 K1 ["Sidebar"]
       31 JUMPIFNOTEQ                      R0 R4 ; [+19]
       33 LOADB                            R4 0
       34 JUMPIFEQKNIL                     R2 ; [+15]
       36 LOADB                            R4 0
       37 GETTABLEKS                       R5 R2 K5 ["Scope"]
       39 JUMPIFEQKNIL                     R5 ; [+10]
       41 GETTABLEKS                       R6 R2 K5 ["Scope"]
       43 GETTABLEKS                       R5 R6 K6 ["Type"]
       45 NOT                              R4 R3
       46 JUMPIFNOT                        R4 ; [+3]
       47 GETUPVAL                         R7 2
       48 GETTABLE                         R6 R7 R5
       49 NOT                              R4 R6
       50 RETURN                           R4 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
       54 GETTABLEKS                       R4 R5 K2 ["Asset"]
       56 JUMPIFNOTEQ                      R0 R4 ; [+14]
       58 GETTABLEKS                       R6 R1 K7 ["ItemsController"]
       60 NAMECALL                         R6 R6 K8 ["getCurrentShownScope"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R5 R6 K6 ["Type"]
       65 NOT                              R4 R3
       66 JUMPIFNOT                        R4 ; [+3]
       67 GETUPVAL                         R7 2
       68 GETTABLE                         R6 R7 R5
       69 NOT                              R4 R6
       70 RETURN                           R4 1
       71 LOADB                            R4 0
       72 RETURN                           R4 1

PROTO_4:
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

PROTO_5:
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
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
       17 GETTABLEKS                       R3 R4 K1 ["Asset"]
       19 JUMPIFNOTEQ                      R0 R3 ; [+35]
       21 GETTABLEKS                       R3 R1 K2 ["SearchController"]
       23 NAMECALL                         R3 R3 K3 ["getShowSearchOptions"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K4 ["count"]
       29 GETTABLEKS                       R6 R1 K5 ["ItemsController"]
       31 NAMECALL                         R6 R6 K6 ["getSelection"]
       33 CALL                             R6 1 -1
       34 CALL                             R5 -1 1
       35 LOADN                            R6 0
       36 JUMPIFLT                         R6 R5 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 MOVE                             R5 R4
       41 JUMPIFNOT                        R5 ; [+12]
       42 GETTABLEKS                       R7 R1 K5 ["ItemsController"]
       44 NAMECALL                         R7 R7 K7 ["getCurrentShownScope"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R6 R7 K8 ["Type"]
       49 NOT                              R5 R3
       50 JUMPIFNOT                        R5 ; [+3]
       51 GETUPVAL                         R8 3
       52 GETTABLE                         R7 R8 R6
       53 NOT                              R5 R7
       54 RETURN                           R5 1
       55 LOADB                            R3 0
       56 RETURN                           R3 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 1
       10 RETURN                           R3 1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 1
       10 RETURN                           R3 1

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
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["getFFlagAmrOrganizationFoundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Flags"]
       36 GETTABLEKS                       R5 R6 K12 ["getFFlagAmrRecents"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 1 0
       41 GETTABLEKS                       R7 R2 K13 ["ScopeType"]
       43 GETTABLEKS                       R6 R7 K14 ["ProjectPlaces"]
       45 LOADB                            R7 1
       46 SETTABLE                         R7 R5 R6
       47 MOVE                             R6 R4
       48 CALL                             R6 0 1
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETTABLEKS                       R7 R2 K13 ["ScopeType"]
       52 GETTABLEKS                       R6 R7 K15 ["RecentUploads"]
       54 LOADB                            R7 1
       55 SETTABLE                         R7 R5 R6
       56 DUPCLOSURE                       R6 K16 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R7 K17 [PROTO_1]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 DUPTABLE                         R8 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       62 LOADK                            R9 K23 ["ContextMenu"]
       63 SETTABLEKS                       R9 R8 K18 ["TextKey"]
       65 LOADK                            R9 K24 ["CreateFolder"]
       66 SETTABLEKS                       R9 R8 K19 ["TextSubKey"]
       68 DUPCLOSURE                       R9 K25 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R9 R8 K20 ["OnItemClicked"]
       72 DUPCLOSURE                       R9 K26 [PROTO_3]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R9 R8 K21 ["ShouldRender"]
       78 DUPTABLE                         R9 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       79 LOADK                            R10 K23 ["ContextMenu"]
       80 SETTABLEKS                       R10 R9 K18 ["TextKey"]
       82 LOADK                            R10 K27 ["GroupSelectionAsFolder"]
       83 SETTABLEKS                       R10 R9 K19 ["TextSubKey"]
       85 DUPCLOSURE                       R10 K28 [PROTO_4]
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R10 R9 K20 ["OnItemClicked"]
       89 DUPCLOSURE                       R10 K29 [PROTO_5]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R10 R9 K21 ["ShouldRender"]
       96 DUPTABLE                         R10 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       97 LOADK                            R11 K23 ["ContextMenu"]
       98 SETTABLEKS                       R11 R10 K18 ["TextKey"]
      100 LOADK                            R11 K30 ["Rename"]
      101 SETTABLEKS                       R11 R10 K19 ["TextSubKey"]
      103 DUPCLOSURE                       R11 K31 [PROTO_6]
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R11 R10 K20 ["OnItemClicked"]
      107 DUPCLOSURE                       R11 K32 [PROTO_7]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R11 R10 K21 ["ShouldRender"]
      112 DUPTABLE                         R11 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      113 LOADK                            R12 K23 ["ContextMenu"]
      114 SETTABLEKS                       R12 R11 K18 ["TextKey"]
      116 LOADK                            R12 K33 ["DeleteFolder"]
      117 SETTABLEKS                       R12 R11 K19 ["TextSubKey"]
      119 DUPCLOSURE                       R12 K34 [PROTO_8]
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R12 R11 K20 ["OnItemClicked"]
      123 DUPCLOSURE                       R12 K35 [PROTO_9]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R12 R11 K21 ["ShouldRender"]
      128 NEWTABLE                         R12 0 4
      130 MOVE                             R13 R8
      131 MOVE                             R14 R9
      132 MOVE                             R15 R10
      133 MOVE                             R16 R11
      134 SETLIST                          R12 R13 4 [1]
      136 RETURN                           R12 1
