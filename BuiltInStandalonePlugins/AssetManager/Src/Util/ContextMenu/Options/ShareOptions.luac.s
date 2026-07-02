PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getAssetTypes"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R6
        9 JUMPIFNOT                        R8 ; [+2]
       10 LOADB                            R8 1
       11 RETURN                           R8 1
       12 FORGLOOP                         R3 2 ; [-5]
       14 LOADB                            R3 0
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R2 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["keys"]
       14 NAMECALL                         R4 R2 K4 ["getSelection"]
       16 CALL                             R4 1 -1
       17 CALL                             R3 -1 1
       18 NAMECALL                         R4 R2 K5 ["selectionHasInsertableAssets"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R4
       22 JUMPIFNOT                        R5 ; [+6]
       23 LENGTH                           R6 R3
       24 LOADN                            R7 50
       25 JUMPIFLE                         R6 R7 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keys"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K3 ["PluginController"]
       12 GETTABLEKS                       R6 R1 K4 ["Networking"]
       14 GETTABLEKS                       R7 R1 K5 ["Localization"]
       16 MOVE                             R8 R3
       17 CALL                             R4 4 0
       18 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keys"]
        3 GETTABLEKS                       R4 R1 K1 ["ItemsController"]
        5 NAMECALL                         R4 R4 K2 ["getSelection"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
       12 GETTABLEKS                       R6 R1 K3 ["PluginController"]
       14 GETTABLEKS                       R7 R1 K4 ["Networking"]
       16 GETTABLEKS                       R8 R1 K5 ["Localization"]
       18 MOVE                             R9 R3
       19 CALL                             R4 5 0
       20 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["keys"]
        5 NAMECALL                         R5 R3 K2 ["getSelection"]
        7 CALL                             R5 1 -1
        8 CALL                             R4 -1 1
        9 MOVE                             R9 R4
       10 NAMECALL                         R7 R3 K3 ["getAssetTypes"]
       12 CALL                             R7 2 1
       13 GETUPVAL                         R8 1
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETTABLE                         R13 R7 R11
       18 JUMPIFNOT                        R13 ; [+2]
       19 LOADB                            R6 1
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R8 2 ; [-5]
       23 LOADB                            R6 0
       24 NOT                              R5 R6
       25 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["keys"]
       14 NAMECALL                         R6 R4 K4 ["getSelection"]
       16 CALL                             R6 1 -1
       17 CALL                             R5 -1 1
       18 NAMECALL                         R6 R4 K5 ["selectionHasInsertableAssets"]
       20 CALL                             R6 1 1
       21 MOVE                             R3 R6
       22 JUMPIFNOT                        R3 ; [+6]
       23 LENGTH                           R7 R5
       24 LOADN                            R8 50
       25 JUMPIFLE                         R7 R8 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Dialogs"]
       29 GETTABLEKS                       R4 R4 K12 ["openConfirmShareOpenUse"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Dialogs"]
       40 GETTABLEKS                       R5 R5 K13 ["openQuickShare"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R5 4 0
       45 GETTABLEKS                       R6 R2 K14 ["AssetType"]
       47 GETTABLEKS                       R6 R6 K15 ["Mesh"]
       49 LOADB                            R7 1
       50 SETTABLE                         R7 R5 R6
       51 GETTABLEKS                       R6 R2 K14 ["AssetType"]
       53 GETTABLEKS                       R6 R6 K16 ["Image"]
       55 LOADB                            R7 1
       56 SETTABLE                         R7 R5 R6
       57 GETTABLEKS                       R6 R2 K14 ["AssetType"]
       59 GETTABLEKS                       R6 R6 K17 ["Decal"]
       61 LOADB                            R7 1
       62 SETTABLE                         R7 R5 R6
       63 DUPCLOSURE                       R6 K18 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R7 K19 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 DUPTABLE                         R8 K26 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "WithCollaborators", ["OnItemClicked"], ["ShouldRender"]}]
       69 DUPCLOSURE                       R9 K27 [PROTO_2]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R9 R8 K24 ["OnItemClicked"]
       74 DUPCLOSURE                       R9 K28 [PROTO_3]
       75 SETTABLEKS                       R9 R8 K25 ["ShouldRender"]
       77 DUPTABLE                         R9 K31 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "OpenUse", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
       78 DUPCLOSURE                       R10 K32 [PROTO_4]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R10 R9 K24 ["OnItemClicked"]
       83 DUPCLOSURE                       R10 K33 [PROTO_5]
       84 SETTABLEKS                       R10 R9 K25 ["ShouldRender"]
       86 DUPCLOSURE                       R10 K34 [PROTO_6]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R10 R9 K30 ["ShouldDisable"]
       91 DUPTABLE                         R10 K37 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "QuickShare", ["Children"], ["ShouldRender"]}]
       92 NEWTABLE                         R11 0 2
       94 MOVE                             R12 R8
       95 MOVE                             R13 R9
       96 SETLIST                          R11 R12 2 [1]
       98 SETTABLEKS                       R11 R10 K36 ["Children"]
      100 DUPCLOSURE                       R11 K38 [PROTO_7]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R11 R10 K25 ["ShouldRender"]
      105 NEWTABLE                         R11 0 1
      107 MOVE                             R12 R10
      108 SETLIST                          R11 R12 1 [1]
      110 RETURN                           R11 1
