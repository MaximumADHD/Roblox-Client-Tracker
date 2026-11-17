PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["versionId"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R1
        5 NAMECALL                         R3 R3 K1 ["TryInstallPlugin"]
        7 CALL                             R3 3 -1
        8 FASTPCALL                        pcall 0 ; [+2]
        9 GETIMPORT                        R2 K3 [pcall]
       11 CALL                             R2 -1 2
       12 JUMPIF                           R2 ; [+8]
       13 GETIMPORT                        R4 K5 [warn]
       15 LOADK                            R5 K6 ["Failed to install plugin: %*"]
       16 MOVE                             R7 R3
       17 NAMECALL                         R5 R5 K7 ["format"]
       19 CALL                             R5 2 1
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["message"]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R3 K3 ["Error fetching plugin info for install: %*"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R3 K0 [PROTO_1]
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+13]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Networking"]
       10 GETTABLEKS                       R4 R4 K2 ["fetchPluginInfoAsync"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 MOVE                             R6 R2
       15 DUPCLOSURE                       R7 K3 [PROTO_2]
       16 NAMECALL                         R4 R4 K4 ["andThen"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0
       20 MOVE                             R6 R0
       21 MOVE                             R7 R2
       22 MOVE                             R8 R3
       23 NAMECALL                         R4 R1 K2 ["fetchPluginInfoAsync"]
       25 CALL                             R4 4 0
       26 RETURN                           R0 0

PROTO_4:
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
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K6 ["AssetId"]
       24 GETTABLEKS                       R6 R1 K7 ["Networking"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

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
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R6 R3 K6 ["AssetId"]
       25 NAMECALL                         R4 R4 K7 ["IsPluginInstalled"]
       27 CALL                             R4 2 1
       28 RETURN                           R4 1

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
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R3 K6 ["AssetId"]
       24 GETTABLEKS                       R6 R1 K7 ["Networking"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

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
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+8]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R7 R3 K6 ["AssetId"]
       25 NAMECALL                         R5 R5 K7 ["IsPluginInstalled"]
       27 CALL                             R5 2 1
       28 NOT                              R4 R5
       29 RETURN                           R4 1

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
       19 JUMPIFEQKNIL                     R3 ; [+9]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["Utils"]
       24 GETTABLEKS                       R4 R4 K7 ["reportInBrowser"]
       26 GETTABLEKS                       R5 R3 K8 ["AssetId"]
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_10:
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
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Flags"]
       49 GETTABLEKS                       R7 R7 K16 ["getFFlagAmrUseAssetManagementNetworking"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K17 [PROTO_3]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 DUPCLOSURE                       R8 K18 [PROTO_4]
       57 CAPTURE                          VAL R4
       58 DUPTABLE                         R9 K25 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginUpdate", ["OnItemClicked"], ["ShouldRender"]}]
       59 DUPCLOSURE                       R10 K26 [PROTO_5]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R10 R9 K23 ["OnItemClicked"]
       64 DUPCLOSURE                       R10 K27 [PROTO_6]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R10 R9 K24 ["ShouldRender"]
       69 DUPTABLE                         R10 K29 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginInstall", ["OnItemClicked"], ["ShouldRender"]}]
       70 DUPCLOSURE                       R11 K30 [PROTO_7]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R11 R10 K23 ["OnItemClicked"]
       75 DUPCLOSURE                       R11 K31 [PROTO_8]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R11 R10 K24 ["ShouldRender"]
       80 DUPTABLE                         R11 K33 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginReport", ["OnItemClicked"], ["ShouldRender"]}]
       81 DUPCLOSURE                       R12 K34 [PROTO_9]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R12 R11 K23 ["OnItemClicked"]
       86 DUPCLOSURE                       R12 K35 [PROTO_10]
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R12 R11 K24 ["ShouldRender"]
       90 NEWTABLE                         R12 0 3
       92 MOVE                             R13 R9
       93 MOVE                             R14 R10
       94 MOVE                             R15 R11
       95 SETLIST                          R12 R13 3 [1]
       97 RETURN                           R12 1
