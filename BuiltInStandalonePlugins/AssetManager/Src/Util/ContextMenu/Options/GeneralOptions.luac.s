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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["count"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["count"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["keys"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       12 GETTABLEKS                       R6 R1 K3 ["PluginController"]
       14 GETTABLEKS                       R7 R1 K4 ["Localization"]
       16 MOVE                             R8 R3
       17 GETTABLEKS                       R9 R1 K5 ["LayoutController"]
       19 NAMECALL                         R9 R9 K6 ["getColumns"]
       21 CALL                             R9 1 -1
       22 CALL                             R4 -1 0
       23 RETURN                           R0 0

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
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["MenuContext"]
       16 GETTABLEKS                       R5 R6 K5 ["Asset"]
       18 JUMPIFNOTEQ                      R0 R5 ; [+2]
       20 MOVE                             R4 R3
       21 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["keys"]
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
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R11 R12 K6 ["AssetInfoField"]
       25 GETTABLEKS                       R10 R11 K7 ["AssetId"]
       27 NAMECALL                         R6 R4 K8 ["getData"]
       29 CALL                             R6 4 1
       30 GETTABLEKS                       R9 R5 K5 ["Uid"]
       32 MOVE                             R10 R3
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R12 R13 K6 ["AssetInfoField"]
       36 GETTABLEKS                       R11 R12 K9 ["AssetType"]
       38 NAMECALL                         R7 R4 K8 ["getData"]
       40 CALL                             R7 4 1
       41 GETUPVAL                         R8 2
       42 MOVE                             R9 R6
       43 MOVE                             R10 R7
       44 MOVE                             R11 R5
       45 CALL                             R8 3 0
       46 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R4 K1 [next]
        2 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
        4 NAMECALL                         R5 R5 K3 ["getSelection"]
        6 CALL                             R5 1 -1
        7 CALL                             R4 -1 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADB                            R4 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["MenuContext"]
       16 GETTABLEKS                       R5 R6 K5 ["Asset"]
       18 JUMPIFNOTEQ                      R0 R5 ; [+2]
       20 MOVE                             R4 R3
       21 RETURN                           R4 1

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
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Services"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K3 ["GetService"]
       24 LOADK                            R4 K13 ["StudioService"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R6 R1 K14 ["Packages"]
       30 GETTABLEKS                       R5 R6 K15 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R7 R1 K10 ["Src"]
       37 GETTABLEKS                       R6 R7 K16 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R9 R1 K10 ["Src"]
       44 GETTABLEKS                       R8 R9 K11 ["Util"]
       46 GETTABLEKS                       R7 R8 K17 ["copyAssetInfosToClipboard"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R10 R1 K10 ["Src"]
       53 GETTABLEKS                       R9 R10 K11 ["Util"]
       55 GETTABLEKS                       R8 R9 K18 ["openItemsInBrowser"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K19 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 DUPTABLE                         R9 K24 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       62 LOADK                            R10 K25 ["ContextMenu"]
       63 SETTABLEKS                       R10 R9 K20 ["TextKey"]
       65 LOADK                            R10 K26 ["CopyId"]
       66 SETTABLEKS                       R10 R9 K21 ["TextSubKey"]
       68 DUPCLOSURE                       R10 K27 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R10 R9 K22 ["OnItemClicked"]
       73 DUPCLOSURE                       R10 K28 [PROTO_2]
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R10 R9 K23 ["ShouldRender"]
       77 DUPTABLE                         R10 K24 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       78 LOADK                            R11 K25 ["ContextMenu"]
       79 SETTABLEKS                       R11 R10 K20 ["TextKey"]
       81 LOADK                            R11 K29 ["CopyIds"]
       82 SETTABLEKS                       R11 R10 K21 ["TextSubKey"]
       84 DUPCLOSURE                       R11 K30 [PROTO_3]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R11 R10 K22 ["OnItemClicked"]
       89 DUPCLOSURE                       R11 K31 [PROTO_4]
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R11 R10 K23 ["ShouldRender"]
       93 DUPTABLE                         R11 K24 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       94 LOADK                            R12 K25 ["ContextMenu"]
       95 SETTABLEKS                       R12 R11 K20 ["TextKey"]
       97 LOADK                            R12 K32 ["CopyInfo"]
       98 SETTABLEKS                       R12 R11 K21 ["TextSubKey"]
      100 DUPCLOSURE                       R12 K33 [PROTO_5]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R12 R11 K22 ["OnItemClicked"]
      105 DUPCLOSURE                       R12 K34 [PROTO_6]
      106 SETTABLEKS                       R12 R11 K23 ["ShouldRender"]
      108 DUPTABLE                         R12 K36 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      109 LOADK                            R13 K25 ["ContextMenu"]
      110 SETTABLEKS                       R13 R12 K20 ["TextKey"]
      112 LOADK                            R13 K37 ["Copy"]
      113 SETTABLEKS                       R13 R12 K21 ["TextSubKey"]
      115 NEWTABLE                         R13 0 3
      117 MOVE                             R14 R9
      118 MOVE                             R15 R10
      119 MOVE                             R16 R11
      120 SETLIST                          R13 R14 3 [1]
      122 SETTABLEKS                       R13 R12 K35 ["Children"]
      124 DUPCLOSURE                       R13 K38 [PROTO_7]
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R13 R12 K23 ["ShouldRender"]
      128 DUPTABLE                         R13 K24 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      129 LOADK                            R14 K25 ["ContextMenu"]
      130 SETTABLEKS                       R14 R13 K20 ["TextKey"]
      132 LOADK                            R14 K39 ["ViewInBrowser"]
      133 SETTABLEKS                       R14 R13 K21 ["TextSubKey"]
      135 DUPCLOSURE                       R14 K40 [PROTO_8]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R14 R13 K22 ["OnItemClicked"]
      141 DUPCLOSURE                       R14 K41 [PROTO_9]
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R14 R13 K23 ["ShouldRender"]
      145 NEWTABLE                         R14 0 2
      147 MOVE                             R15 R12
      148 MOVE                             R16 R13
      149 SETLIST                          R14 R15 2 [1]
      151 RETURN                           R14 1
