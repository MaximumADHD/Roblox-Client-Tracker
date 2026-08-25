PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 CALL                             R4 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["count"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 JUMPIFEQKN                       R3 K3 [1] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 CALL                             R4 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["count"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 LOADN                            R5 1
       10 JUMPIFLT                         R5 R3 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keys"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       12 GETTABLEKS                       R6 R1 K3 ["Localization"]
       14 MOVE                             R7 R3
       15 GETTABLEKS                       R8 R1 K4 ["LayoutController"]
       17 NAMECALL                         R8 R8 K5 ["getColumns"]
       19 CALL                             R8 1 -1
       20 CALL                             R4 -1 0
       21 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R4 K1 [next]
        2 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
        4 NAMECALL                         R5 R5 K3 ["getSelection"]
        6 CALL                             R5 1 -1
        7 CALL                             R4 -1 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADB                            R4 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["MenuContext"]
       16 GETTABLEKS                       R5 R5 K5 ["Asset"]
       18 JUMPIFNOTEQ                      R0 R5 ; [+2]
       20 MOVE                             R4 R3
       21 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R6 R3 K1 ["getRenderItems"]
        4 CALL                             R6 1 -1
        5 NAMECALL                         R4 R3 K2 ["setSelection"]
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getItemsCache"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getCurrentShownScope"]
        7 CALL                             R5 1 1
        8 GETTABLEKS                       R5 R5 K3 ["Uid"]
       10 MOVE                             R8 R5
       11 NAMECALL                         R6 R4 K4 ["getScope"]
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+3]
       15 GETTABLEKS                       R7 R6 K5 ["Loading"]
       17 JUMPIFNOT                        R7 ; [+2]
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K6 ["count"]
       23 NAMECALL                         R8 R3 K7 ["getRenderItems"]
       25 CALL                             R8 1 -1
       26 CALL                             R7 -1 1
       27 JUMPIFNOTEQKN                    R7 K8 [0] ; [+3]
       29 LOADB                            R7 1
       30 RETURN                           R7 1
       31 LOADB                            R7 0
       32 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keys"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
       11 NAMECALL                         R4 R4 K3 ["getItemsCache"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       16 NAMECALL                         R5 R5 K4 ["getCurrentShownScope"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R8 R5 K5 ["Uid"]
       21 MOVE                             R9 R3
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["AssetInfoField"]
       25 GETTABLEKS                       R10 R10 K7 ["AssetId"]
       27 NAMECALL                         R6 R4 K8 ["getData"]
       29 CALL                             R6 4 1
       30 GETTABLEKS                       R9 R5 K5 ["Uid"]
       32 MOVE                             R10 R3
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       36 GETTABLEKS                       R11 R11 K9 ["AssetType"]
       38 NAMECALL                         R7 R4 K8 ["getData"]
       40 CALL                             R7 4 1
       41 LOADN                            R8 0
       42 MOVE                             R9 R7
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 FORGPREP                         R9
       46 GETUPVAL                         R14 1
       47 GETTABLEKS                       R14 R14 K9 ["AssetType"]
       49 GETTABLEKS                       R14 R14 K10 ["Folder"]
       51 JUMPIFEQ                         R13 R14 ; [+2]
       53 ADDK                             R8 R8 K11 [1]
       54 FORGLOOP                         R9 2 ; [-9]
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K12 ["OpenInBrowserWarningThreshold"]
       59 JUMPIFNOTLT                      R9 R8 ; [+12]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R10 R1 K13 ["PluginController"]
       64 GETTABLEKS                       R11 R1 K14 ["Localization"]
       66 MOVE                             R12 R6
       67 MOVE                             R13 R7
       68 MOVE                             R14 R5
       69 MOVE                             R15 R8
       70 CALL                             R9 6 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R9 4
       73 MOVE                             R10 R6
       74 MOVE                             R11 R7
       75 MOVE                             R12 R5
       76 CALL                             R9 3 0
       77 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getSelection"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K5 [next]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADB                            R4 0
       21 RETURN                           R4 1
       22 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       24 NAMECALL                         R4 R4 K6 ["getItemsCache"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       29 NAMECALL                         R5 R5 K7 ["getCurrentShownScope"]
       31 CALL                             R5 1 1
       32 LOADB                            R6 0
       33 MOVE                             R7 R3
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETTABLEKS                       R14 R5 K8 ["Uid"]
       39 MOVE                             R15 R10
       40 GETUPVAL                         R16 0
       41 GETTABLEKS                       R16 R16 K9 ["AssetInfoField"]
       43 GETTABLEKS                       R16 R16 K10 ["AssetType"]
       45 NAMECALL                         R12 R4 K11 ["getItemField"]
       47 CALL                             R12 4 1
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K10 ["AssetType"]
       51 GETTABLEKS                       R13 R13 K12 ["Folder"]
       53 JUMPIFEQ                         R12 R13 ; [+3]
       55 LOADB                            R6 1
       56 RETURN                           R6 1
       57 FORGLOOP                         R7 2 ; [-21]
       59 RETURN                           R6 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["copyAssetId"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["copyAssetInfosToClipboard"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["Dialogs"]
       56 GETTABLEKS                       R7 R7 K16 ["openConfirmBulkOpenBrowser"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K12 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["openItemsInBrowser"]
       67 CALL                             R7 1 1
       68 DUPTABLE                         R8 K24 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyId", ["OnItemClicked"], ["ShouldRender"]}]
       69 DUPCLOSURE                       R9 K25 [PROTO_0]
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R9 R8 K22 ["OnItemClicked"]
       73 DUPCLOSURE                       R9 K26 [PROTO_1]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R9 R8 K23 ["ShouldRender"]
       77 DUPTABLE                         R9 K28 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyIds", ["OnItemClicked"], ["ShouldRender"]}]
       78 DUPCLOSURE                       R10 K29 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R10 R9 K22 ["OnItemClicked"]
       82 DUPCLOSURE                       R10 K30 [PROTO_3]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R10 R9 K23 ["ShouldRender"]
       86 DUPTABLE                         R10 K32 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyInfo", ["OnItemClicked"], ["ShouldRender"]}]
       87 DUPCLOSURE                       R11 K33 [PROTO_4]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
       92 DUPCLOSURE                       R11 K34 [PROTO_5]
       93 SETTABLEKS                       R11 R10 K23 ["ShouldRender"]
       95 DUPTABLE                         R11 K37 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Copy", ["Children"], ["ShouldRender"]}]
       96 NEWTABLE                         R12 0 3
       98 MOVE                             R13 R8
       99 MOVE                             R14 R9
      100 MOVE                             R15 R10
      101 SETLIST                          R12 R13 3 [1]
      103 SETTABLEKS                       R12 R11 K36 ["Children"]
      105 DUPCLOSURE                       R12 K38 [PROTO_6]
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R12 R11 K23 ["ShouldRender"]
      109 DUPTABLE                         R12 K41 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "SelectAll", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
      110 DUPCLOSURE                       R13 K42 [PROTO_7]
      111 SETTABLEKS                       R13 R12 K22 ["OnItemClicked"]
      113 DUPCLOSURE                       R13 K43 [PROTO_8]
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R13 R12 K23 ["ShouldRender"]
      117 DUPCLOSURE                       R13 K44 [PROTO_9]
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R13 R12 K40 ["ShouldDisable"]
      121 DUPTABLE                         R13 K46 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewInBrowser", ["OnItemClicked"], ["ShouldRender"]}]
      122 DUPCLOSURE                       R14 K47 [PROTO_10]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R14 R13 K22 ["OnItemClicked"]
      130 DUPCLOSURE                       R14 K48 [PROTO_11]
      131 CAPTURE                          VAL R2
      132 SETTABLEKS                       R14 R13 K23 ["ShouldRender"]
      134 NEWTABLE                         R14 0 3
      136 MOVE                             R15 R11
      137 MOVE                             R16 R12
      138 MOVE                             R17 R13
      139 SETLIST                          R14 R15 3 [1]
      141 RETURN                           R14 1
