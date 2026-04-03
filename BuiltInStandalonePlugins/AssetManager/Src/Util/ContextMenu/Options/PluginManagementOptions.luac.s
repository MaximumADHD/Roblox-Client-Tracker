PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["versionId"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K3 ["TryInstallPlugin"]
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 2
       11 JUMPIF                           R2 ; [+9]
       12 GETIMPORT                        R4 K5 [warn]
       14 LOADK                            R6 K6 ["Failed to install plugin: %*"]
       15 MOVE                             R8 R3
       16 NAMECALL                         R6 R6 K7 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R6 K0 [PROTO_1]
        5 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["AssetType"]
       14 GETTABLEKS                       R4 R5 K4 ["Plugin"]
       16 NAMECALL                         R2 R2 K5 ["getSingleItemSelected"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K6 ["AssetId"]
       24 GETTABLEKS                       R6 R1 K7 ["Networking"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R6 R3 K6 ["AssetId"]
       25 NAMECALL                         R4 R4 K7 ["IsPluginInstalled"]
       27 CALL                             R4 2 1
       28 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+13]
       21 GETTABLEKS                       R4 R3 K6 ["AssetId"]
       23 GETTABLEKS                       R5 R1 K7 ["Networking"]
       25 MOVE                             R8 R4
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R10 K8 [PROTO_1]
       30 NAMECALL                         R6 R5 K9 ["fetchPluginInfoAsync"]
       32 CALL                             R6 4 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+8]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R7 R3 K6 ["AssetId"]
       25 NAMECALL                         R5 R5 K7 ["IsPluginInstalled"]
       27 CALL                             R5 2 1
       28 NOT                              R4 R5
       29 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+5]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K6 ["AssetId"]
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R5 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K12 ["reportInBrowser"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K7 ["Util"]
       42 GETTABLEKS                       R6 R7 K13 ["updatePlugin"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K14 [PROTO_2]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R7 K15 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 DUPTABLE                         R8 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       50 LOADK                            R9 K21 ["ContextMenu"]
       51 SETTABLEKS                       R9 R8 K16 ["TextKey"]
       53 LOADK                            R9 K22 ["PluginUpdate"]
       54 SETTABLEKS                       R9 R8 K17 ["TextSubKey"]
       56 DUPCLOSURE                       R9 K23 [PROTO_4]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R9 R8 K18 ["OnItemClicked"]
       61 DUPCLOSURE                       R9 K24 [PROTO_5]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R9 R8 K19 ["ShouldRender"]
       66 DUPTABLE                         R9 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       67 LOADK                            R10 K21 ["ContextMenu"]
       68 SETTABLEKS                       R10 R9 K16 ["TextKey"]
       70 LOADK                            R10 K25 ["PluginInstall"]
       71 SETTABLEKS                       R10 R9 K17 ["TextSubKey"]
       73 DUPCLOSURE                       R10 K26 [PROTO_6]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R10 R9 K18 ["OnItemClicked"]
       78 DUPCLOSURE                       R10 K27 [PROTO_7]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R10 R9 K19 ["ShouldRender"]
       83 DUPTABLE                         R10 K20 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       84 LOADK                            R11 K21 ["ContextMenu"]
       85 SETTABLEKS                       R11 R10 K16 ["TextKey"]
       87 LOADK                            R11 K28 ["PluginReport"]
       88 SETTABLEKS                       R11 R10 K17 ["TextSubKey"]
       90 DUPCLOSURE                       R11 K29 [PROTO_8]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R11 R10 K18 ["OnItemClicked"]
       95 DUPCLOSURE                       R11 K30 [PROTO_9]
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R11 R10 K19 ["ShouldRender"]
       99 NEWTABLE                         R11 0 3
      101 MOVE                             R12 R8
      102 MOVE                             R13 R9
      103 MOVE                             R14 R10
      104 SETLIST                          R11 R12 3 [1]
      106 RETURN                           R11 1
