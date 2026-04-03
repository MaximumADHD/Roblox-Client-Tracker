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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K0 ["ItemsController"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["AssetType"]
       10 GETTABLEKS                       R3 R4 K2 ["Animation"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["keys"]
       15 GETTABLEKS                       R5 R0 K0 ["ItemsController"]
       17 NAMECALL                         R5 R5 K4 ["getSelection"]
       19 CALL                             R5 1 -1
       20 CALL                             R4 -1 1
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R2 K5 ["getAssetTypes"]
       24 CALL                             R5 2 1
       25 GETTABLE                         R1 R5 R3
       26 JUMPIFNOT                        R1 ; [+9]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K6 ["count"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 JUMPIFEQKN                       R6 K7 [1] ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 RETURN                           R1 1

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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K1 ["AssetType"]
       10 GETTABLEKS                       R6 R7 K2 ["Animation"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K3 ["keys"]
       15 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       17 NAMECALL                         R8 R8 K4 ["getSelection"]
       19 CALL                             R8 1 -1
       20 CALL                             R7 -1 1
       21 MOVE                             R10 R7
       22 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       24 CALL                             R8 2 1
       25 GETTABLE                         R4 R8 R6
       26 JUMPIFNOT                        R4 ; [+9]
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R9 R10 K6 ["count"]
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 MOVE                             R3 R4
       37 RETURN                           R3 1

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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K1 ["AssetType"]
       10 GETTABLEKS                       R6 R7 K2 ["Animation"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K3 ["keys"]
       15 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       17 NAMECALL                         R8 R8 K4 ["getSelection"]
       19 CALL                             R8 1 -1
       20 CALL                             R7 -1 1
       21 MOVE                             R10 R7
       22 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       24 CALL                             R8 2 1
       25 GETTABLE                         R4 R8 R6
       26 JUMPIFNOT                        R4 ; [+9]
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R9 R10 K6 ["count"]
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 MOVE                             R3 R4
       37 RETURN                           R3 1

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
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+2]
        3 LOADB                            R4 0
        4 JUMP                             ; [+32]
        5 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R8 R9 K1 ["AssetType"]
       10 GETTABLEKS                       R7 R8 K2 ["Animation"]
       12 GETUPVAL                         R9 2
       13 GETTABLEKS                       R8 R9 K3 ["keys"]
       15 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       17 NAMECALL                         R9 R9 K4 ["getSelection"]
       19 CALL                             R9 1 -1
       20 CALL                             R8 -1 1
       21 MOVE                             R11 R8
       22 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       24 CALL                             R9 2 1
       25 GETTABLE                         R5 R9 R7
       26 JUMPIFNOT                        R5 ; [+9]
       27 GETUPVAL                         R11 2
       28 GETTABLEKS                       R10 R11 K6 ["count"]
       30 MOVE                             R11 R9
       31 CALL                             R10 1 1
       32 JUMPIFEQKN                       R10 K7 [1] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 MOVE                             R4 R5
       37 NOT                              R3 R4
       38 RETURN                           R3 1

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
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIF                           R5 ; [+2]
        3 LOADB                            R4 0
        4 JUMP                             ; [+32]
        5 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R8 R9 K1 ["AssetType"]
       10 GETTABLEKS                       R7 R8 K2 ["Animation"]
       12 GETUPVAL                         R9 2
       13 GETTABLEKS                       R8 R9 K3 ["keys"]
       15 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       17 NAMECALL                         R9 R9 K4 ["getSelection"]
       19 CALL                             R9 1 -1
       20 CALL                             R8 -1 1
       21 MOVE                             R11 R8
       22 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       24 CALL                             R9 2 1
       25 GETTABLE                         R5 R9 R7
       26 JUMPIFNOT                        R5 ; [+9]
       27 GETUPVAL                         R11 2
       28 GETTABLEKS                       R10 R11 K6 ["count"]
       30 MOVE                             R11 R9
       31 CALL                             R10 1 1
       32 JUMPIFEQKN                       R10 K7 [1] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 MOVE                             R4 R5
       37 NOT                              R3 R4
       38 RETURN                           R3 1

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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFFlagAmrInsertAnimationInstance"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 DUPCLOSURE                       R7 K16 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 DUPCLOSURE                       R8 K17 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 DUPTABLE                         R9 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       57 LOADK                            R10 K23 ["ContextMenu"]
       58 SETTABLEKS                       R10 R9 K18 ["TextKey"]
       60 LOADK                            R10 K24 ["InsertAsAnimation"]
       61 SETTABLEKS                       R10 R9 K19 ["TextSubKey"]
       63 DUPCLOSURE                       R10 K25 [PROTO_3]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R10 R9 K20 ["OnItemClicked"]
       67 DUPCLOSURE                       R10 K26 [PROTO_4]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R10 R9 K21 ["ShouldRender"]
       73 DUPTABLE                         R10 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       74 LOADK                            R11 K23 ["ContextMenu"]
       75 SETTABLEKS                       R11 R10 K18 ["TextKey"]
       77 LOADK                            R11 K27 ["InsertAsKeyframes"]
       78 SETTABLEKS                       R11 R10 K19 ["TextSubKey"]
       80 DUPCLOSURE                       R11 K28 [PROTO_5]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R11 R10 K20 ["OnItemClicked"]
       84 DUPCLOSURE                       R11 K29 [PROTO_6]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R11 R10 K21 ["ShouldRender"]
       90 DUPTABLE                         R11 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       91 LOADK                            R12 K23 ["ContextMenu"]
       92 SETTABLEKS                       R12 R11 K18 ["TextKey"]
       94 LOADK                            R12 K30 ["InsertAtCamera"]
       95 SETTABLEKS                       R12 R11 K19 ["TextSubKey"]
       97 DUPCLOSURE                       R12 K31 [PROTO_7]
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R12 R11 K20 ["OnItemClicked"]
      101 DUPCLOSURE                       R12 K32 [PROTO_8]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R1
      105 SETTABLEKS                       R12 R11 K21 ["ShouldRender"]
      107 DUPTABLE                         R12 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      108 LOADK                            R13 K23 ["ContextMenu"]
      109 SETTABLEKS                       R13 R12 K18 ["TextKey"]
      111 LOADK                            R13 K33 ["InsertAtAssetPosition"]
      112 SETTABLEKS                       R13 R12 K19 ["TextSubKey"]
      114 DUPCLOSURE                       R13 K34 [PROTO_9]
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R13 R12 K20 ["OnItemClicked"]
      118 DUPCLOSURE                       R13 K35 [PROTO_10]
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R13 R12 K21 ["ShouldRender"]
      124 NEWTABLE                         R13 0 4
      126 MOVE                             R14 R11
      127 MOVE                             R15 R12
      128 MOVE                             R16 R9
      129 MOVE                             R17 R10
      130 SETLIST                          R13 R14 4 [1]
      132 DUPTABLE                         R14 K37 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      133 LOADK                            R15 K23 ["ContextMenu"]
      134 SETTABLEKS                       R15 R14 K18 ["TextKey"]
      136 LOADK                            R15 K38 ["Insert"]
      137 SETTABLEKS                       R15 R14 K19 ["TextSubKey"]
      139 SETTABLEKS                       R13 R14 K36 ["Children"]
      141 DUPCLOSURE                       R15 K39 [PROTO_11]
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R15 R14 K21 ["ShouldRender"]
      147 DUPTABLE                         R15 K37 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      148 LOADK                            R16 K23 ["ContextMenu"]
      149 SETTABLEKS                       R16 R15 K18 ["TextKey"]
      151 LOADK                            R16 K40 ["InsertSelection"]
      152 SETTABLEKS                       R16 R15 K19 ["TextSubKey"]
      154 SETTABLEKS                       R13 R15 K36 ["Children"]
      156 DUPCLOSURE                       R16 K41 [PROTO_12]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R16 R15 K21 ["ShouldRender"]
      162 NEWTABLE                         R16 0 2
      164 MOVE                             R17 R14
      165 MOVE                             R18 R15
      166 SETLIST                          R16 R17 2 [1]
      168 RETURN                           R16 1
