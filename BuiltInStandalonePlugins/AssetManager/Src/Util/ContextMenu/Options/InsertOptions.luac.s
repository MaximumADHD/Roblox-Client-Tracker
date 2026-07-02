PROTO_0:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["getAssetTypes"]
        3 CALL                             R3 2 1
        4 GETTABLE                         R4 R3 R1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["count"]
        9 MOVE                             R6 R3
       10 CALL                             R5 1 1
       11 JUMPIFEQKN                       R5 K2 [1] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["ItemsController"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AssetType"]
        5 GETTABLEKS                       R3 R3 K2 ["Animation"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["keys"]
       10 GETTABLEKS                       R5 R0 K0 ["ItemsController"]
       12 NAMECALL                         R5 R5 K4 ["getSelection"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R2 K5 ["getAssetTypes"]
       19 CALL                             R5 2 1
       20 GETTABLE                         R1 R5 R3
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K6 ["count"]
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
        0 DUPTABLE                         R3 K2 [{[1] = True}]
        1 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
        3 LOADK                            R6 K4 ["right_click_position"]
        4 NAMECALL                         R4 R4 K5 ["setAnalyticsInsertAction"]
        6 CALL                             R4 2 0
        7 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R4
       11 NAMECALL                         R7 R4 K6 ["getCurrentShownScope"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R8 R1 K7 ["Networking"]
       16 MOVE                             R9 R3
       17 CALL                             R5 4 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["AssetType"]
        5 GETTABLEKS                       R6 R6 K2 ["Animation"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["keys"]
       10 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       12 NAMECALL                         R8 R8 K4 ["getSelection"]
       14 CALL                             R8 1 -1
       15 CALL                             R7 -1 1
       16 MOVE                             R10 R7
       17 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       19 CALL                             R8 2 1
       20 GETTABLE                         R4 R8 R6
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K6 ["count"]
       25 MOVE                             R10 R8
       26 CALL                             R9 1 1
       27 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 MOVE                             R3 R4
       32 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R3 K2 [{[1] = False}]
        1 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
        3 LOADK                            R6 K4 ["right_click_position"]
        4 NAMECALL                         R4 R4 K5 ["setAnalyticsInsertAction"]
        6 CALL                             R4 2 0
        7 GETTABLEKS                       R4 R1 K3 ["ItemsController"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R4
       11 NAMECALL                         R7 R4 K6 ["getCurrentShownScope"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R8 R1 K7 ["Networking"]
       16 MOVE                             R9 R3
       17 CALL                             R5 4 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["AssetType"]
        5 GETTABLEKS                       R6 R6 K2 ["Animation"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["keys"]
       10 GETTABLEKS                       R8 R1 K0 ["ItemsController"]
       12 NAMECALL                         R8 R8 K4 ["getSelection"]
       14 CALL                             R8 1 -1
       15 CALL                             R7 -1 1
       16 MOVE                             R10 R7
       17 NAMECALL                         R8 R5 K5 ["getAssetTypes"]
       19 CALL                             R8 2 1
       20 GETTABLE                         R4 R8 R6
       21 JUMPIFNOT                        R4 ; [+9]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K6 ["count"]
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
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["AssetType"]
        5 GETTABLEKS                       R7 R7 K2 ["Animation"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K3 ["keys"]
       10 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       12 NAMECALL                         R9 R9 K4 ["getSelection"]
       14 CALL                             R9 1 -1
       15 CALL                             R8 -1 1
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       19 CALL                             R9 2 1
       20 GETTABLE                         R5 R9 R7
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["count"]
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
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["AssetType"]
        5 GETTABLEKS                       R7 R7 K2 ["Animation"]
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K3 ["keys"]
       10 GETTABLEKS                       R9 R1 K0 ["ItemsController"]
       12 NAMECALL                         R9 R9 K4 ["getSelection"]
       14 CALL                             R9 1 -1
       15 CALL                             R8 -1 1
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R6 K5 ["getAssetTypes"]
       19 CALL                             R9 2 1
       20 GETTABLE                         R5 R9 R7
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["count"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 JUMPIFEQKN                       R10 K7 [1] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R4 R5
       32 NOT                              R3 R4
       33 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getItemsCache"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K5 ["keys"]
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
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R10 R10 K10 ["AssetType"]
       41 NAMECALL                         R6 R3 K11 ["getItemField"]
       43 CALL                             R6 4 1
       44 LOADB                            R7 0
       45 JUMPIFEQKNIL                     R6 ; [+4]
       47 GETUPVAL                         R7 2
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 RETURN                           R7 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getItemsCache"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R4 K4 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K5 ["keys"]
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
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K8 ["AssetInfoField"]
       40 GETTABLEKS                       R10 R10 K9 ["AssetType"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["insertItems"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["isInsertable"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R6 K14 [PROTO_1]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 DUPCLOSURE                       R7 K15 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 DUPTABLE                         R8 K22 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "InsertAsAnimation", ["OnItemClicked"], ["ShouldRender"]}]
       47 DUPCLOSURE                       R9 K23 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R9 R8 K20 ["OnItemClicked"]
       51 DUPCLOSURE                       R9 K24 [PROTO_4]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R9 R8 K21 ["ShouldRender"]
       56 DUPTABLE                         R9 K26 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "InsertAsKeyframes", ["OnItemClicked"], ["ShouldRender"]}]
       57 DUPCLOSURE                       R10 K27 [PROTO_5]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R10 R9 K20 ["OnItemClicked"]
       61 DUPCLOSURE                       R10 K28 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R10 R9 K21 ["ShouldRender"]
       66 DUPTABLE                         R10 K30 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "InsertAtCamera", ["OnItemClicked"], ["ShouldRender"]}]
       67 DUPCLOSURE                       R11 K31 [PROTO_7]
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R11 R10 K20 ["OnItemClicked"]
       71 DUPCLOSURE                       R11 K32 [PROTO_8]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R11 R10 K21 ["ShouldRender"]
       76 DUPTABLE                         R11 K34 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "InsertAtAssetPosition", ["OnItemClicked"], ["ShouldRender"]}]
       77 DUPCLOSURE                       R12 K35 [PROTO_9]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R12 R11 K20 ["OnItemClicked"]
       81 DUPCLOSURE                       R12 K36 [PROTO_10]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R12 R11 K21 ["ShouldRender"]
       86 NEWTABLE                         R12 0 4
       88 MOVE                             R13 R10
       89 MOVE                             R14 R11
       90 MOVE                             R15 R8
       91 MOVE                             R16 R9
       92 SETLIST                          R12 R13 4 [1]
       94 DUPTABLE                         R13 K39 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Insert", ["Children"], ["ShouldRender"]}]
       95 SETTABLEKS                       R12 R13 K38 ["Children"]
       97 DUPCLOSURE                       R14 K40 [PROTO_11]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R14 R13 K21 ["ShouldRender"]
      103 DUPTABLE                         R14 K42 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "InsertSelection", ["Children"], ["ShouldRender"]}]
      104 SETTABLEKS                       R12 R14 K38 ["Children"]
      106 DUPCLOSURE                       R15 K43 [PROTO_12]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R15 R14 K21 ["ShouldRender"]
      112 NEWTABLE                         R15 0 2
      114 MOVE                             R16 R13
      115 MOVE                             R17 R14
      116 SETLIST                          R15 R16 2 [1]
      118 RETURN                           R15 1
