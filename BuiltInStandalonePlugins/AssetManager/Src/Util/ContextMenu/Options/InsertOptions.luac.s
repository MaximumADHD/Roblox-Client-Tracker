PROTO_0:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["getAssetTypes"]
        3 CALL                             R3 2 1
        4 GETTABLE                         R4 R3 R1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["count"]
        9 MOVE                             R6 R3
       10 CALL                             R5 1 1
       11 JUMPIFEQKN                       R5 K2 [1] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["ItemsController"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["AssetType"]
        5 GETTABLEKS                       R3 R4 K2 ["Animation"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["keys"]
       10 GETTABLEKS                       R5 R0 K0 ["ItemsController"]
       12 NAMECALL                         R5 R5 K4 ["getSelection"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R2 K5 ["getAssetTypes"]
       19 CALL                             R5 2 1
       20 GETTABLE                         R1 R5 R3
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K6 ["count"]
       25 MOVE                             R7 R5
       26 CALL                             R6 1 1
       27 JUMPIFEQKN                       R6 K7 [1] ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["ItemsController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["setAnalyticsInsertAction"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R0 K0 ["ItemsController"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 NAMECALL                         R6 R3 K2 ["getCurrentShownScope"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R0 K3 ["Networking"]
       15 MOVE                             R8 R2
       16 CALL                             R4 4 0
       17 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K1 [{"UseAnimationInstance"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["UseAnimationInstance"]
        4 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
        6 LOADK                            R6 K3 ["right_click_position"]
        7 NAMECALL                         R4 R4 K4 ["setAnalyticsInsertAction"]
        9 CALL                             R4 2 0
       10 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R4
       14 NAMECALL                         R7 R4 K5 ["getCurrentShownScope"]
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R8 R1 K6 ["Networking"]
       19 MOVE                             R9 R3
       20 CALL                             R5 4 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K1 ["AssetType"]
        5 GETTABLEKS                       R6 R7 K2 ["Animation"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K3 ["keys"]
       10 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       12 NAMECALL                         R8 R8 K4 ["getSelection"]
       14 CALL                             R8 1 -1
       15 CALL                             R7 -1 1
       16 MOVE                             R10 R7
       17 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       19 CALL                             R8 2 1
       20 GETTABLE                         R4 R8 R6
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K6 ["count"]
       25 MOVE                             R10 R8
       26 CALL                             R9 1 1
       27 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 MOVE                             R3 R4
       32 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R3 K1 [{"UseAnimationInstance"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["UseAnimationInstance"]
        4 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
        6 LOADK                            R6 K3 ["right_click_position"]
        7 NAMECALL                         R4 R4 K4 ["setAnalyticsInsertAction"]
        9 CALL                             R4 2 0
       10 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R4
       14 NAMECALL                         R7 R4 K5 ["getCurrentShownScope"]
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R8 R1 K6 ["Networking"]
       19 MOVE                             R9 R3
       20 CALL                             R5 4 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K1 ["AssetType"]
        5 GETTABLEKS                       R6 R7 K2 ["Animation"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K3 ["keys"]
       10 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       12 NAMECALL                         R8 R8 K4 ["getSelection"]
       14 CALL                             R8 1 -1
       15 CALL                             R7 -1 1
       16 MOVE                             R10 R7
       17 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       19 CALL                             R8 2 1
       20 GETTABLE                         R4 R8 R6
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K6 ["count"]
       25 MOVE                             R10 R8
       26 CALL                             R9 1 1
       27 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 MOVE                             R3 R4
       32 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 LOADK                            R5 K1 ["right_click_camera"]
        3 NAMECALL                         R3 R3 K2 ["setAnalyticsInsertAction"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 NAMECALL                         R6 R3 K3 ["getCurrentShownScope"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R1 K4 ["Networking"]
       15 LOADNIL                          R8
       16 CALL                             R4 4 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R8 R9 K1 ["AssetType"]
        5 GETTABLEKS                       R7 R8 K2 ["Animation"]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R8 R9 K3 ["keys"]
       10 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       12 NAMECALL                         R9 R9 K4 ["getSelection"]
       14 CALL                             R9 1 -1
       15 CALL                             R8 -1 1
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       19 CALL                             R9 2 1
       20 GETTABLE                         R5 R9 R7
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K6 ["count"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 JUMPIFEQKN                       R10 K7 [1] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R4 R5
       32 NOT                              R3 R4
       33 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 LOADK                            R5 K1 ["right_click_position"]
        3 NAMECALL                         R3 R3 K2 ["setAnalyticsInsertAction"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 NAMECALL                         R6 R3 K3 ["getCurrentShownScope"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R1 K4 ["Networking"]
       15 LOADNIL                          R8
       16 CALL                             R4 4 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R8 R9 K1 ["AssetType"]
        5 GETTABLEKS                       R7 R8 K2 ["Animation"]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R8 R9 K3 ["keys"]
       10 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       12 NAMECALL                         R9 R9 K4 ["getSelection"]
       14 CALL                             R9 1 -1
       15 CALL                             R8 -1 1
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       19 CALL                             R9 2 1
       20 GETTABLE                         R5 R9 R7
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K6 ["count"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 JUMPIFEQKN                       R10 K7 [1] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R4 R5
       32 NOT                              R3 R4
       33 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getItemsCache"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K5 ["keys"]
       22 GETTABLEKS                       R6 R1 K2 ["ItemsController"]
       24 NAMECALL                         R6 R6 K6 ["getSelection"]
       26 CALL                             R6 1 -1
       27 CALL                             R5 -1 1
       28 LENGTH                           R6 R5
       29 JUMPIFEQKN                       R6 K7 [1] ; [+3]
       31 LOADB                            R6 0
       32 RETURN                           R6 1
       33 GETTABLEKS                       R8 R4 K8 ["Uid"]
       35 GETTABLEN                        R9 R5 1
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R11 R12 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R10 R11 K10 ["AssetType"]
       41 NAMECALL                         R6 R3 K11 ["getItemField"]
       43 CALL                             R6 4 1
       44 LOADB                            R7 0
       45 JUMPIFEQKNIL                     R6 ; [+4]
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 RETURN                           R7 1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getItemsCache"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K5 ["keys"]
       22 GETTABLEKS                       R6 R1 K2 ["ItemsController"]
       24 NAMECALL                         R6 R6 K6 ["getSelection"]
       26 CALL                             R6 1 -1
       27 CALL                             R5 -1 1
       28 LENGTH                           R6 R5
       29 LOADN                            R7 1
       30 JUMPIFNOTLE                      R6 R7 ; [+3]
       32 LOADB                            R6 0
       33 RETURN                           R6 1
       34 GETTABLEKS                       R8 R4 K7 ["Uid"]
       36 MOVE                             R9 R5
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R11 R12 K8 ["AssetInfoField"]
       40 GETTABLEKS                       R10 R11 K9 ["AssetType"]
       42 NAMECALL                         R6 R3 K10 ["getData"]
       44 CALL                             R6 4 1
       45 MOVE                             R7 R6
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 GETUPVAL                         R12 2
       50 MOVE                             R13 R11
       51 CALL                             R12 1 1
       52 JUMPIFNOT                        R12 ; [+2]
       53 LOADB                            R12 1
       54 RETURN                           R12 1
       55 FORGLOOP                         R7 2 ; [-7]
       57 LOADB                            R7 0
       58 RETURN                           R7 1

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
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["insertItems"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["isInsertable"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K14 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 DUPCLOSURE                       R7 K15 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 DUPTABLE                         R8 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       47 LOADK                            R9 K21 ["ContextMenu"]
       48 SETTABLEKS                       R9 R8 K16 ["TextKey"]
       50 LOADK                            R9 K22 ["InsertAsAnimation"]
       51 SETTABLEKS                       R9 R8 K17 ["TextSubKey"]
       53 DUPCLOSURE                       R9 K23 [PROTO_3]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R9 R8 K18 ["OnItemClicked"]
       57 DUPCLOSURE                       R9 K24 [PROTO_4]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R9 R8 K19 ["ShouldRender"]
       62 DUPTABLE                         R9 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       63 LOADK                            R10 K21 ["ContextMenu"]
       64 SETTABLEKS                       R10 R9 K16 ["TextKey"]
       66 LOADK                            R10 K25 ["InsertAsKeyframes"]
       67 SETTABLEKS                       R10 R9 K17 ["TextSubKey"]
       69 DUPCLOSURE                       R10 K26 [PROTO_5]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R10 R9 K18 ["OnItemClicked"]
       73 DUPCLOSURE                       R10 K27 [PROTO_6]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R10 R9 K19 ["ShouldRender"]
       78 DUPTABLE                         R10 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       79 LOADK                            R11 K21 ["ContextMenu"]
       80 SETTABLEKS                       R11 R10 K16 ["TextKey"]
       82 LOADK                            R11 K28 ["InsertAtCamera"]
       83 SETTABLEKS                       R11 R10 K17 ["TextSubKey"]
       85 DUPCLOSURE                       R11 K29 [PROTO_7]
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R11 R10 K18 ["OnItemClicked"]
       89 DUPCLOSURE                       R11 K30 [PROTO_8]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R11 R10 K19 ["ShouldRender"]
       94 DUPTABLE                         R11 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       95 LOADK                            R12 K21 ["ContextMenu"]
       96 SETTABLEKS                       R12 R11 K16 ["TextKey"]
       98 LOADK                            R12 K31 ["InsertAtAssetPosition"]
       99 SETTABLEKS                       R12 R11 K17 ["TextSubKey"]
      101 DUPCLOSURE                       R12 K32 [PROTO_9]
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R12 R11 K18 ["OnItemClicked"]
      105 DUPCLOSURE                       R12 K33 [PROTO_10]
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R12 R11 K19 ["ShouldRender"]
      110 NEWTABLE                         R12 0 4
      112 MOVE                             R13 R10
      113 MOVE                             R14 R11
      114 MOVE                             R15 R8
      115 MOVE                             R16 R9
      116 SETLIST                          R12 R13 4 [1]
      118 DUPTABLE                         R13 K35 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      119 LOADK                            R14 K21 ["ContextMenu"]
      120 SETTABLEKS                       R14 R13 K16 ["TextKey"]
      122 LOADK                            R14 K36 ["Insert"]
      123 SETTABLEKS                       R14 R13 K17 ["TextSubKey"]
      125 SETTABLEKS                       R12 R13 K34 ["Children"]
      127 DUPCLOSURE                       R14 K37 [PROTO_11]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R14 R13 K19 ["ShouldRender"]
      133 DUPTABLE                         R14 K35 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      134 LOADK                            R15 K21 ["ContextMenu"]
      135 SETTABLEKS                       R15 R14 K16 ["TextKey"]
      137 LOADK                            R15 K38 ["InsertSelection"]
      138 SETTABLEKS                       R15 R14 K17 ["TextSubKey"]
      140 SETTABLEKS                       R12 R14 K34 ["Children"]
      142 DUPCLOSURE                       R15 K39 [PROTO_12]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R15 R14 K19 ["ShouldRender"]
      148 NEWTABLE                         R15 0 2
      150 MOVE                             R16 R13
      151 MOVE                             R17 R14
      152 SETLIST                          R15 R16 2 [1]
      154 RETURN                           R15 1
