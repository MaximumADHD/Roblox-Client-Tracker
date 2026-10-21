PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["versionId"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K3 ["TryInstallPlugin"]
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 2
       11 JUMPIF                           R2 ; [+8]
       12 GETIMPORT                        R4 K5 [warn]
       14 LOADK                            R5 K6 ["Failed to install plugin: %*"]
       15 MOVE                             R7 R3
       16 NAMECALL                         R5 R5 K7 ["format"]
       18 CALL                             R5 2 1
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R2 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["AssetType"]
       14 GETTABLEKS                       R4 R4 K4 ["Plugin"]
       16 NAMECALL                         R2 R2 K5 ["getSingleItemSelected"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K6 ["AssetId"]
       24 GETTABLEKS                       R6 R1 K7 ["Networking"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+9]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["Utils"]
       24 GETTABLEKS                       R4 R4 K7 ["reportInBrowser"]
       26 GETTABLEKS                       R5 R3 K8 ["AssetId"]
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Plugin"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["GetService"]
       25 LOADK                            R4 K12 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Util"]
       40 GETTABLEKS                       R6 R6 K14 ["updatePlugin"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K15 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R7 K16 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 DUPTABLE                         R8 K23 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginUpdate", ["OnItemClicked"], ["ShouldRender"]}]
       48 DUPCLOSURE                       R9 K24 [PROTO_4]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R9 R8 K21 ["OnItemClicked"]
       53 DUPCLOSURE                       R9 K25 [PROTO_5]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R9 R8 K22 ["ShouldRender"]
       58 DUPTABLE                         R9 K27 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginInstall", ["OnItemClicked"], ["ShouldRender"]}]
       59 DUPCLOSURE                       R10 K28 [PROTO_6]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R10 R9 K21 ["OnItemClicked"]
       64 DUPCLOSURE                       R10 K29 [PROTO_7]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R10 R9 K22 ["ShouldRender"]
       69 DUPTABLE                         R10 K31 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginReport", ["OnItemClicked"], ["ShouldRender"]}]
       70 DUPCLOSURE                       R11 K32 [PROTO_8]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R11 R10 K21 ["OnItemClicked"]
       75 DUPCLOSURE                       R11 K33 [PROTO_9]
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R11 R10 K22 ["ShouldRender"]
       79 NEWTABLE                         R11 0 3
       81 MOVE                             R12 R8
       82 MOVE                             R13 R9
       83 MOVE                             R14 R10
       84 SETLIST                          R11 R12 3 [1]
       86 RETURN                           R11 1
