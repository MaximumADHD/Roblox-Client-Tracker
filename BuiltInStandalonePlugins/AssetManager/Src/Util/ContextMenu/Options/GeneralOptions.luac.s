PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+9]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 CALL                             R4 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       14 NAMECALL                         R3 R3 K2 ["DEPRECATED_getSelectionIdsHelper"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 2
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R3
       10 LOADB                            R7 1
       11 MOVE                             R8 R4
       12 CALL                             R5 3 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       16 NAMECALL                         R3 R3 K2 ["DEPRECATED_getSelectionIdsHelper"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R3
       21 LOADB                            R6 1
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        7 NAMECALL                         R3 R3 K1 ["getSelection"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["count"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 JUMPIFEQKN                       R4 K3 [1] ; [+3]
       17 LOADB                            R5 0
       18 RETURN                           R5 1
       19 GETIMPORT                        R5 K5 [next]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
       25 NAMECALL                         R6 R6 K6 ["getItemsCache"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R1 K0 ["ItemsController"]
       30 NAMECALL                         R7 R7 K7 ["getCurrentShownScope"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R10 R7 K8 ["Uid"]
       35 MOVE                             R11 R5
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R12 R12 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R12 R12 K10 ["AssetType"]
       41 NAMECALL                         R8 R6 K11 ["getItemField"]
       43 CALL                             R8 4 1
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K10 ["AssetType"]
       47 GETTABLEKS                       R10 R10 K12 ["Folder"]
       49 JUMPIFNOTEQ                      R8 R10 ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 RETURN                           R9 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+9]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 CALL                             R4 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       14 NAMECALL                         R3 R3 K2 ["DEPRECATED_getSelectionIdsHelper"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 2
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R3
       10 LOADB                            R7 1
       11 MOVE                             R8 R4
       12 CALL                             R5 3 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       16 NAMECALL                         R3 R3 K2 ["DEPRECATED_getSelectionIdsHelper"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R3
       21 LOADB                            R6 1
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["Uid"]
        4 MOVE                             R5 R1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K1 ["AssetInfoField"]
        8 GETTABLEKS                       R6 R6 K2 ["AssetType"]
       10 NAMECALL                         R2 R2 K3 ["getItemField"]
       12 CALL                             R2 4 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["AssetType"]
       16 GETTABLEKS                       R4 R4 K4 ["Folder"]
       18 JUMPIFNOTEQ                      R2 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        7 NAMECALL                         R3 R3 K1 ["getSelection"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["count"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 LOADN                            R5 1
       16 JUMPIFNOTLE                      R4 R5 ; [+3]
       18 LOADB                            R5 0
       19 RETURN                           R5 1
       20 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
       22 NAMECALL                         R5 R5 K3 ["getItemsCache"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
       27 NAMECALL                         R6 R6 K4 ["getCurrentShownScope"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K5 ["all"]
       33 MOVE                             R8 R3
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U2
       38 CALL                             R7 2 1
       39 RETURN                           R7 1

PROTO_9:
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

PROTO_10:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R6 R3 K1 ["getRenderItems"]
        4 CALL                             R6 1 -1
        5 NAMECALL                         R4 R3 K2 ["setSelection"]
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
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
       32 MOVE                             R6 R3
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R13 R5 K8 ["Uid"]
       38 MOVE                             R14 R9
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K9 ["AssetInfoField"]
       42 GETTABLEKS                       R15 R15 K10 ["AssetType"]
       44 NAMECALL                         R11 R4 K11 ["getItemField"]
       46 CALL                             R11 4 1
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K10 ["AssetType"]
       50 GETTABLEKS                       R12 R12 K12 ["Folder"]
       52 JUMPIFEQ                         R11 R12 ; [+3]
       54 LOADB                            R12 1
       55 RETURN                           R12 1
       56 FORGLOOP                         R6 2 ; [-21]
       58 LOADB                            R6 0
       59 RETURN                           R6 1

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 GETTABLEKS                       R4 R1 K1 ["LayoutController"]
        4 GETIMPORT                        R5 K3 [next]
        6 NAMECALL                         R6 R3 K4 ["getSelection"]
        8 CALL                             R6 1 -1
        9 CALL                             R5 -1 1
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 RETURN                           R0 0
       13 NAMECALL                         R5 R3 K5 ["consumeRightClickChangedSelection"]
       15 CALL                             R5 1 1
       16 NAMECALL                         R6 R4 K6 ["getShowDetailsDrawer"]
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+5]
       20 JUMPIF                           R5 ; [+4]
       21 NAMECALL                         R6 R4 K7 ["closeDetailsDrawer"]
       23 CALL                             R6 1 0
       24 RETURN                           R0 0
       25 NAMECALL                         R6 R4 K8 ["openDetailsDrawer"]
       27 CALL                             R6 1 0
       28 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R4 R4 K1 ["Asset"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+13]
        8 GETIMPORT                        R4 K3 [next]
       10 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       12 NAMECALL                         R5 R5 K5 ["getSelection"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 1
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+25]
        3 LOADB                            R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        7 GETTABLEKS                       R4 R4 K1 ["Asset"]
        9 JUMPIFNOTEQ                      R0 R4 ; [+18]
       11 LOADB                            R3 0
       12 GETIMPORT                        R4 K3 [next]
       14 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       16 NAMECALL                         R5 R5 K5 ["getSelection"]
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 1
       20 JUMPIFEQKNIL                     R4 ; [+7]
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 CALL                             R4 3 1
       27 NOT                              R3 R4
       28 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 1
        9 RETURN                           R3 1

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
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K18 ["Flags"]
       74 GETTABLEKS                       R9 R9 K19 ["getFFlagAmrAddCopyUriOption"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K8 ["Src"]
       81 GETTABLEKS                       R10 R10 K18 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagAmrAssetDetailView"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K8 ["Src"]
       90 GETTABLEKS                       R11 R11 K18 ["Flags"]
       92 GETTABLEKS                       R11 R11 K21 ["getFFlagAmrCopyVersionedUri"]
       94 CALL                             R10 1 1
       95 DUPTABLE                         R11 K28 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyId", ["OnItemClicked"], ["ShouldRender"]}]
       96 DUPCLOSURE                       R12 K29 [PROTO_0]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R12 R11 K26 ["OnItemClicked"]
      101 DUPCLOSURE                       R12 K30 [PROTO_1]
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R12 R11 K27 ["ShouldRender"]
      105 DUPTABLE                         R12 K32 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyUri", ["OnItemClicked"], ["ShouldRender"]}]
      106 DUPCLOSURE                       R13 K33 [PROTO_2]
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R4
      109 SETTABLEKS                       R13 R12 K26 ["OnItemClicked"]
      111 DUPCLOSURE                       R13 K34 [PROTO_3]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R13 R12 K27 ["ShouldRender"]
      117 DUPTABLE                         R13 K36 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyIds", ["OnItemClicked"], ["ShouldRender"]}]
      118 DUPCLOSURE                       R14 K37 [PROTO_4]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R14 R13 K26 ["OnItemClicked"]
      123 DUPCLOSURE                       R14 K38 [PROTO_5]
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R14 R13 K27 ["ShouldRender"]
      127 DUPTABLE                         R14 K40 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyUris", ["OnItemClicked"], ["ShouldRender"]}]
      128 DUPCLOSURE                       R15 K41 [PROTO_6]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R4
      131 SETTABLEKS                       R15 R14 K26 ["OnItemClicked"]
      133 DUPCLOSURE                       R15 K42 [PROTO_8]
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R15 R14 K27 ["ShouldRender"]
      139 DUPTABLE                         R15 K44 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyInfo", ["OnItemClicked"], ["ShouldRender"]}]
      140 DUPCLOSURE                       R16 K45 [PROTO_9]
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R5
      143 SETTABLEKS                       R16 R15 K26 ["OnItemClicked"]
      145 DUPCLOSURE                       R16 K46 [PROTO_10]
      146 SETTABLEKS                       R16 R15 K27 ["ShouldRender"]
      148 DUPTABLE                         R16 K49 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Copy", ["Children"], ["ShouldRender"]}]
      149 NEWTABLE                         R17 0 5
      151 MOVE                             R18 R11
      152 MOVE                             R19 R12
      153 MOVE                             R20 R13
      154 MOVE                             R21 R14
      155 MOVE                             R22 R15
      156 SETLIST                          R17 R18 5 [1]
      158 SETTABLEKS                       R17 R16 K48 ["Children"]
      160 DUPCLOSURE                       R17 K50 [PROTO_11]
      161 CAPTURE                          VAL R2
      162 SETTABLEKS                       R17 R16 K27 ["ShouldRender"]
      164 DUPTABLE                         R17 K53 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "SelectAll", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
      165 DUPCLOSURE                       R18 K54 [PROTO_12]
      166 SETTABLEKS                       R18 R17 K26 ["OnItemClicked"]
      168 DUPCLOSURE                       R18 K55 [PROTO_13]
      169 CAPTURE                          VAL R2
      170 SETTABLEKS                       R18 R17 K27 ["ShouldRender"]
      172 DUPCLOSURE                       R18 K56 [PROTO_14]
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R18 R17 K52 ["ShouldDisable"]
      176 DUPCLOSURE                       R18 K57 [PROTO_15]
      177 CAPTURE                          VAL R2
      178 DUPTABLE                         R19 K59 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewInBrowser", ["OnItemClicked"], ["ShouldRender"]}]
      179 DUPCLOSURE                       R20 K60 [PROTO_16]
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R7
      185 SETTABLEKS                       R20 R19 K26 ["OnItemClicked"]
      187 SETTABLEKS                       R18 R19 K27 ["ShouldRender"]
      189 DUPTABLE                         R20 K62 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewDetails", ["OnItemClicked"], ["ShouldRender"]}]
      190 DUPCLOSURE                       R21 K63 [PROTO_17]
      191 SETTABLEKS                       R21 R20 K26 ["OnItemClicked"]
      193 DUPCLOSURE                       R21 K64 [PROTO_18]
      194 CAPTURE                          VAL R2
      195 SETTABLEKS                       R21 R20 K27 ["ShouldRender"]
      197 DUPTABLE                         R21 K66 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "View", ["Children"], ["ShouldRender"]}]
      198 NEWTABLE                         R22 0 2
      200 MOVE                             R23 R20
      201 MOVE                             R24 R19
      202 SETLIST                          R22 R23 2 [1]
      204 SETTABLEKS                       R22 R21 K48 ["Children"]
      206 DUPCLOSURE                       R22 K67 [PROTO_19]
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R18
      209 SETTABLEKS                       R22 R21 K27 ["ShouldRender"]
      211 GETTABLEKS                       R22 R1 K68 ["join"]
      213 MOVE                             R23 R20
      214 DUPTABLE                         R24 K69 [{"ShouldRender"}]
      215 DUPCLOSURE                       R25 K70 [PROTO_20]
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R18
      219 SETTABLEKS                       R25 R24 K27 ["ShouldRender"]
      221 CALL                             R22 2 1
      222 GETTABLEKS                       R23 R1 K68 ["join"]
      224 MOVE                             R24 R19
      225 DUPTABLE                         R25 K69 [{"ShouldRender"}]
      226 DUPCLOSURE                       R26 K71 [PROTO_21]
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R18
      229 SETTABLEKS                       R26 R25 K27 ["ShouldRender"]
      231 CALL                             R23 2 1
      232 NEWTABLE                         R24 0 5
      234 MOVE                             R25 R16
      235 MOVE                             R26 R17
      236 MOVE                             R27 R21
      237 MOVE                             R28 R22
      238 MOVE                             R29 R23
      239 SETLIST                          R24 R25 5 [1]
      241 RETURN                           R24 1
