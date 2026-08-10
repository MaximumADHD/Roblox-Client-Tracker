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
       22 JUMPIFNOT                        R5 ; [+12]
       23 LENGTH                           R6 R3
       24 GETUPVAL                         R8 2
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 JUMP                             ; [+1]
       30 LOADN                            R7 50
       31 JUMPIFLE                         R6 R7 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 RETURN                           R5 1

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
       19 GETTABLEKS                       R10 R1 K6 ["LayoutController"]
       21 GETTABLEKS                       R11 R1 K7 ["ExplorerController"]
       23 CALL                             R4 7 0
       24 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

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
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Flags"]
       49 GETTABLEKS                       R6 R6 K15 ["getFFlagAmrRaiseShareLimits"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K14 ["Flags"]
       58 GETTABLEKS                       R7 R7 K16 ["getFIntAmrShareAssetMax"]
       60 CALL                             R6 1 1
       61 NEWTABLE                         R7 4 0
       63 GETTABLEKS                       R8 R2 K17 ["AssetType"]
       65 GETTABLEKS                       R8 R8 K18 ["Mesh"]
       67 LOADB                            R9 1
       68 SETTABLE                         R9 R7 R8
       69 GETTABLEKS                       R8 R2 K17 ["AssetType"]
       71 GETTABLEKS                       R8 R8 K19 ["Image"]
       73 LOADB                            R9 1
       74 SETTABLE                         R9 R7 R8
       75 GETTABLEKS                       R8 R2 K17 ["AssetType"]
       77 GETTABLEKS                       R8 R8 K20 ["Decal"]
       79 LOADB                            R9 1
       80 SETTABLE                         R9 R7 R8
       81 DUPCLOSURE                       R8 K21 [PROTO_0]
       82 CAPTURE                          VAL R7
       83 DUPCLOSURE                       R9 K22 [PROTO_1]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 DUPTABLE                         R10 K29 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "WithCollaborators", ["OnItemClicked"], ["ShouldRender"]}]
       89 DUPCLOSURE                       R11 K30 [PROTO_2]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R11 R10 K27 ["OnItemClicked"]
       94 DUPCLOSURE                       R11 K31 [PROTO_3]
       95 SETTABLEKS                       R11 R10 K28 ["ShouldRender"]
       97 DUPTABLE                         R11 K34 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "OpenUse", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
       98 DUPCLOSURE                       R12 K35 [PROTO_4]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R12 R11 K27 ["OnItemClicked"]
      103 DUPCLOSURE                       R12 K36 [PROTO_5]
      104 SETTABLEKS                       R12 R11 K28 ["ShouldRender"]
      106 DUPCLOSURE                       R12 K37 [PROTO_6]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R7
      109 SETTABLEKS                       R12 R11 K33 ["ShouldDisable"]
      111 DUPTABLE                         R12 K40 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "QuickShare", ["Children"], ["ShouldRender"]}]
      112 NEWTABLE                         R13 0 2
      114 MOVE                             R14 R10
      115 MOVE                             R15 R11
      116 SETLIST                          R13 R14 2 [1]
      118 SETTABLEKS                       R13 R12 K39 ["Children"]
      120 DUPCLOSURE                       R13 K41 [PROTO_7]
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R13 R12 K28 ["ShouldRender"]
      124 NEWTABLE                         R13 0 1
      126 MOVE                             R14 R12
      127 SETLIST                          R13 R14 1 [1]
      129 RETURN                           R13 1
