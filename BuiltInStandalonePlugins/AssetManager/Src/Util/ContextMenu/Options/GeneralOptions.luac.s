PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+8]
        3 GETTABLEN                        R1 R0 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["JSONEncode"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 LENGTH                           R4 R3
        6 JUMPIFNOTEQKN                    R4 K2 [1] ; [+8]
        8 GETTABLEN                        R4 R3 1
        9 GETUPVAL                         R5 0
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K3 ["CopyToClipboard"]
       13 CALL                             R5 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R6 R3
       17 NAMECALL                         R4 R4 K4 ["JSONEncode"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K3 ["CopyToClipboard"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 LENGTH                           R4 R3
        6 JUMPIFNOTEQKN                    R4 K2 [1] ; [+8]
        8 GETTABLEN                        R4 R3 1
        9 GETUPVAL                         R5 0
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K3 ["CopyToClipboard"]
       13 CALL                             R5 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 1
       16 MOVE                             R6 R3
       17 NAMECALL                         R4 R4 K4 ["JSONEncode"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R5 K3 ["CopyToClipboard"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R6 R3 K1 ["getRenderItems"]
        4 CALL                             R6 1 -1
        5 NAMECALL                         R4 R3 K2 ["setSelection"]
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Services"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K3 ["GetService"]
       24 LOADK                            R4 K13 ["StudioService"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R1 K14 ["Packages"]
       30 GETTABLEKS                       R5 R5 K15 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R1 K10 ["Src"]
       37 GETTABLEKS                       R6 R6 K16 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R1 K10 ["Src"]
       44 GETTABLEKS                       R7 R7 K17 ["Resources"]
       46 GETTABLEKS                       R7 R7 K18 ["Constants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R8 R1 K10 ["Src"]
       53 GETTABLEKS                       R8 R8 K11 ["Util"]
       55 GETTABLEKS                       R8 R8 K19 ["copyAssetInfosToClipboard"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K9 [require]
       60 GETTABLEKS                       R9 R1 K10 ["Src"]
       62 GETTABLEKS                       R9 R9 K11 ["Util"]
       64 GETTABLEKS                       R9 R9 K20 ["Dialogs"]
       66 GETTABLEKS                       R9 R9 K21 ["openConfirmBulkOpenBrowser"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K9 [require]
       71 GETTABLEKS                       R10 R1 K10 ["Src"]
       73 GETTABLEKS                       R10 R10 K11 ["Util"]
       75 GETTABLEKS                       R10 R10 K22 ["openItemsInBrowser"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K23 [PROTO_0]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R0
       81 DUPTABLE                         R11 K30 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyId", ["OnItemClicked"], ["ShouldRender"]}]
       82 DUPCLOSURE                       R12 K31 [PROTO_1]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R12 R11 K28 ["OnItemClicked"]
       87 DUPCLOSURE                       R12 K32 [PROTO_2]
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R12 R11 K29 ["ShouldRender"]
       91 DUPTABLE                         R12 K34 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyIds", ["OnItemClicked"], ["ShouldRender"]}]
       92 DUPCLOSURE                       R13 K35 [PROTO_3]
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R13 R12 K28 ["OnItemClicked"]
       97 DUPCLOSURE                       R13 K36 [PROTO_4]
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R13 R12 K29 ["ShouldRender"]
      101 DUPTABLE                         R13 K38 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyInfo", ["OnItemClicked"], ["ShouldRender"]}]
      102 DUPCLOSURE                       R14 K39 [PROTO_5]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R14 R13 K28 ["OnItemClicked"]
      107 DUPCLOSURE                       R14 K40 [PROTO_6]
      108 SETTABLEKS                       R14 R13 K29 ["ShouldRender"]
      110 DUPTABLE                         R14 K43 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Copy", ["Children"], ["ShouldRender"]}]
      111 NEWTABLE                         R15 0 3
      113 MOVE                             R16 R11
      114 MOVE                             R17 R12
      115 MOVE                             R18 R13
      116 SETLIST                          R15 R16 3 [1]
      118 SETTABLEKS                       R15 R14 K42 ["Children"]
      120 DUPCLOSURE                       R15 K44 [PROTO_7]
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R15 R14 K29 ["ShouldRender"]
      124 DUPTABLE                         R15 K47 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "SelectAll", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
      125 DUPCLOSURE                       R16 K48 [PROTO_8]
      126 SETTABLEKS                       R16 R15 K28 ["OnItemClicked"]
      128 DUPCLOSURE                       R16 K49 [PROTO_9]
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R16 R15 K29 ["ShouldRender"]
      132 DUPCLOSURE                       R16 K50 [PROTO_10]
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R16 R15 K46 ["ShouldDisable"]
      136 DUPTABLE                         R16 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewInBrowser", ["OnItemClicked"], ["ShouldRender"]}]
      137 DUPCLOSURE                       R17 K53 [PROTO_11]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R9
      143 SETTABLEKS                       R17 R16 K28 ["OnItemClicked"]
      145 DUPCLOSURE                       R17 K54 [PROTO_12]
      146 CAPTURE                          VAL R5
      147 SETTABLEKS                       R17 R16 K29 ["ShouldRender"]
      149 NEWTABLE                         R17 0 3
      151 MOVE                             R18 R14
      152 MOVE                             R19 R15
      153 MOVE                             R20 R16
      154 SETLIST                          R17 R18 3 [1]
      156 RETURN                           R17 1
