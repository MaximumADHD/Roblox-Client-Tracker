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

PROTO_16:
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
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K18 ["Flags"]
       74 GETTABLEKS                       R9 R9 K19 ["getFFlagAmrAddCopyUriOption"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K8 ["Src"]
       81 GETTABLEKS                       R10 R10 K18 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagAmrCopyVersionedUri"]
       85 CALL                             R9 1 1
       86 DUPTABLE                         R10 K27 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyId", ["OnItemClicked"], ["ShouldRender"]}]
       87 DUPCLOSURE                       R11 K28 [PROTO_0]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R11 R10 K25 ["OnItemClicked"]
       92 DUPCLOSURE                       R11 K29 [PROTO_1]
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R11 R10 K26 ["ShouldRender"]
       96 DUPTABLE                         R11 K31 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyUri", ["OnItemClicked"], ["ShouldRender"]}]
       97 DUPCLOSURE                       R12 K32 [PROTO_2]
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R12 R11 K25 ["OnItemClicked"]
      102 DUPCLOSURE                       R12 K33 [PROTO_3]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R12 R11 K26 ["ShouldRender"]
      108 DUPTABLE                         R12 K35 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyIds", ["OnItemClicked"], ["ShouldRender"]}]
      109 DUPCLOSURE                       R13 K36 [PROTO_4]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R13 R12 K25 ["OnItemClicked"]
      114 DUPCLOSURE                       R13 K37 [PROTO_5]
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R13 R12 K26 ["ShouldRender"]
      118 DUPTABLE                         R13 K39 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyUris", ["OnItemClicked"], ["ShouldRender"]}]
      119 DUPCLOSURE                       R14 K40 [PROTO_6]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R4
      122 SETTABLEKS                       R14 R13 K25 ["OnItemClicked"]
      124 DUPCLOSURE                       R14 K41 [PROTO_8]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R14 R13 K26 ["ShouldRender"]
      130 DUPTABLE                         R14 K43 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "CopyInfo", ["OnItemClicked"], ["ShouldRender"]}]
      131 DUPCLOSURE                       R15 K44 [PROTO_9]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R15 R14 K25 ["OnItemClicked"]
      136 DUPCLOSURE                       R15 K45 [PROTO_10]
      137 SETTABLEKS                       R15 R14 K26 ["ShouldRender"]
      139 DUPTABLE                         R15 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Copy", ["Children"], ["ShouldRender"]}]
      140 NEWTABLE                         R16 0 5
      142 MOVE                             R17 R10
      143 MOVE                             R18 R11
      144 MOVE                             R19 R12
      145 MOVE                             R20 R13
      146 MOVE                             R21 R14
      147 SETLIST                          R16 R17 5 [1]
      149 SETTABLEKS                       R16 R15 K47 ["Children"]
      151 DUPCLOSURE                       R16 K49 [PROTO_11]
      152 CAPTURE                          VAL R2
      153 SETTABLEKS                       R16 R15 K26 ["ShouldRender"]
      155 DUPTABLE                         R16 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "SelectAll", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
      156 DUPCLOSURE                       R17 K53 [PROTO_12]
      157 SETTABLEKS                       R17 R16 K25 ["OnItemClicked"]
      159 DUPCLOSURE                       R17 K54 [PROTO_13]
      160 CAPTURE                          VAL R2
      161 SETTABLEKS                       R17 R16 K26 ["ShouldRender"]
      163 DUPCLOSURE                       R17 K55 [PROTO_14]
      164 CAPTURE                          VAL R1
      165 SETTABLEKS                       R17 R16 K51 ["ShouldDisable"]
      167 DUPTABLE                         R17 K57 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewInBrowser", ["OnItemClicked"], ["ShouldRender"]}]
      168 DUPCLOSURE                       R18 K58 [PROTO_15]
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R7
      174 SETTABLEKS                       R18 R17 K25 ["OnItemClicked"]
      176 DUPCLOSURE                       R18 K59 [PROTO_16]
      177 CAPTURE                          VAL R2
      178 SETTABLEKS                       R18 R17 K26 ["ShouldRender"]
      180 NEWTABLE                         R18 0 3
      182 MOVE                             R19 R15
      183 MOVE                             R20 R16
      184 MOVE                             R21 R17
      185 SETLIST                          R18 R19 3 [1]
      187 RETURN                           R18 1
