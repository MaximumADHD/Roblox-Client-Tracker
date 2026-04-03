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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["keys"]
       14 NAMECALL                         R4 R2 K4 ["getSelection"]
       16 CALL                             R4 1 -1
       17 CALL                             R3 -1 1
       18 NAMECALL                         R4 R2 K5 ["selectionHasInsertableAssets"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R4
       22 JUMPIFNOT                        R5 ; [+6]
       23 LENGTH                           R6 R3
       24 LOADN                            R7 50
       25 JUMPIFLT                         R6 R7 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["keys"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["keys"]
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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K1 ["keys"]
       13 NAMECALL                         R5 R3 K2 ["getSelection"]
       15 CALL                             R5 1 -1
       16 CALL                             R4 -1 1
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R7 R8 K3 ["MenuContext"]
       20 GETTABLEKS                       R6 R7 K4 ["Asset"]
       22 JUMPIFEQ                         R0 R6 ; [+3]
       24 LOADB                            R5 0
       25 JUMP                             ; [+20]
       26 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K1 ["keys"]
       31 NAMECALL                         R8 R6 K2 ["getSelection"]
       33 CALL                             R8 1 -1
       34 CALL                             R7 -1 1
       35 NAMECALL                         R8 R6 K5 ["selectionHasInsertableAssets"]
       37 CALL                             R8 1 1
       38 MOVE                             R5 R8
       39 JUMPIFNOT                        R5 ; [+6]
       40 LENGTH                           R9 R7
       41 LOADN                            R10 50
       42 JUMPIFLT                         R9 R10 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 JUMPIFNOT                        R5 ; [+15]
       47 MOVE                             R8 R4
       48 NAMECALL                         R6 R3 K6 ["getAssetTypes"]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 4
       52 LOADNIL                          R8
       53 LOADNIL                          R9
       54 FORGPREP                         R7
       55 GETTABLE                         R12 R6 R10
       56 JUMPIFNOT                        R12 ; [+2]
       57 LOADB                            R5 1
       58 RETURN                           R5 1
       59 FORGLOOP                         R7 2 ; [-5]
       61 LOADB                            R5 0
       62 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["PluginController"]
        3 GETTABLEKS                       R5 R1 K1 ["Localization"]
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R6 R7 K2 ["keys"]
        8 GETTABLEKS                       R7 R1 K3 ["ItemsController"]
       10 NAMECALL                         R7 R7 K4 ["getSelection"]
       12 CALL                             R7 1 -1
       13 CALL                             R6 -1 -1
       14 CALL                             R3 -1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["keys"]
       10 NAMECALL                         R5 R3 K2 ["getSelection"]
       12 CALL                             R5 1 -1
       13 CALL                             R4 -1 1
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R7 R8 K3 ["MenuContext"]
       17 GETTABLEKS                       R6 R7 K4 ["Asset"]
       19 JUMPIFEQ                         R0 R6 ; [+3]
       21 LOADB                            R5 0
       22 JUMP                             ; [+20]
       23 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K1 ["keys"]
       28 NAMECALL                         R8 R6 K2 ["getSelection"]
       30 CALL                             R8 1 -1
       31 CALL                             R7 -1 1
       32 NAMECALL                         R8 R6 K5 ["selectionHasInsertableAssets"]
       34 CALL                             R8 1 1
       35 MOVE                             R5 R8
       36 JUMPIFNOT                        R5 ; [+6]
       37 LENGTH                           R9 R7
       38 LOADN                            R10 50
       39 JUMPIFLT                         R9 R10 ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 JUMPIFNOT                        R5 ; [+19]
       44 GETUPVAL                         R6 3
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+15]
       47 MOVE                             R9 R4
       48 NAMECALL                         R7 R3 K6 ["getAssetTypes"]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R8 4
       52 LOADNIL                          R9
       53 LOADNIL                          R10
       54 FORGPREP                         R8
       55 GETTABLE                         R13 R7 R11
       56 JUMPIFNOT                        R13 ; [+2]
       57 LOADB                            R6 1
       58 JUMP                             ; [+3]
       59 FORGLOOP                         R8 2 ; [-5]
       61 LOADB                            R6 0
       62 NOT                              R5 R6
       63 RETURN                           R5 1

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
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["Dialogs"]
       29 GETTABLEKS                       R4 R5 K12 ["openConfirmShareOpenUse"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Util"]
       38 GETTABLEKS                       R6 R7 K11 ["Dialogs"]
       40 GETTABLEKS                       R5 R6 K13 ["openQuickShare"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R8 K14 ["Flags"]
       49 GETTABLEKS                       R6 R7 K15 ["getFFlagAmrQuickShare"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R9 K14 ["Flags"]
       58 GETTABLEKS                       R7 R8 K16 ["getFFlagAmrOpenUseShare"]
       60 CALL                             R6 1 1
       61 NEWTABLE                         R7 4 0
       63 GETTABLEKS                       R9 R2 K17 ["AssetType"]
       65 GETTABLEKS                       R8 R9 K18 ["Mesh"]
       67 LOADB                            R9 1
       68 SETTABLE                         R9 R7 R8
       69 GETTABLEKS                       R9 R2 K17 ["AssetType"]
       71 GETTABLEKS                       R8 R9 K19 ["Image"]
       73 LOADB                            R9 1
       74 SETTABLE                         R9 R7 R8
       75 GETTABLEKS                       R9 R2 K17 ["AssetType"]
       77 GETTABLEKS                       R8 R9 K20 ["Decal"]
       79 LOADB                            R9 1
       80 SETTABLE                         R9 R7 R8
       81 DUPCLOSURE                       R8 K21 [PROTO_0]
       82 CAPTURE                          VAL R7
       83 DUPCLOSURE                       R9 K22 [PROTO_1]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 DUPTABLE                         R10 K27 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       87 LOADK                            R11 K28 ["ContextMenu"]
       88 SETTABLEKS                       R11 R10 K23 ["TextKey"]
       90 LOADK                            R11 K29 ["WithCollaborators"]
       91 SETTABLEKS                       R11 R10 K24 ["TextSubKey"]
       93 DUPCLOSURE                       R11 K30 [PROTO_2]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R11 R10 K25 ["OnItemClicked"]
       98 DUPCLOSURE                       R11 K31 [PROTO_3]
       99 SETTABLEKS                       R11 R10 K26 ["ShouldRender"]
      101 DUPTABLE                         R11 K27 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      102 LOADK                            R12 K28 ["ContextMenu"]
      103 SETTABLEKS                       R12 R11 K23 ["TextKey"]
      105 LOADK                            R12 K32 ["OpenUse"]
      106 SETTABLEKS                       R12 R11 K24 ["TextSubKey"]
      108 DUPCLOSURE                       R12 K33 [PROTO_4]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R3
      111 SETTABLEKS                       R12 R11 K25 ["OnItemClicked"]
      113 DUPCLOSURE                       R12 K34 [PROTO_5]
      114 SETTABLEKS                       R12 R11 K26 ["ShouldRender"]
      116 DUPTABLE                         R12 K36 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      117 LOADK                            R13 K28 ["ContextMenu"]
      118 SETTABLEKS                       R13 R12 K23 ["TextKey"]
      120 LOADK                            R13 K37 ["QuickShare"]
      121 SETTABLEKS                       R13 R12 K24 ["TextSubKey"]
      123 NEWTABLE                         R13 0 2
      125 MOVE                             R14 R10
      126 MOVE                             R15 R11
      127 SETLIST                          R13 R14 2 [1]
      129 SETTABLEKS                       R13 R12 K35 ["Children"]
      131 DUPCLOSURE                       R13 K38 [PROTO_6]
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R7
      137 SETTABLEKS                       R13 R12 K26 ["ShouldRender"]
      139 DUPTABLE                         R13 K27 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      140 LOADK                            R14 K28 ["ContextMenu"]
      141 SETTABLEKS                       R14 R13 K23 ["TextKey"]
      143 LOADK                            R14 K37 ["QuickShare"]
      144 SETTABLEKS                       R14 R13 K24 ["TextSubKey"]
      146 DUPCLOSURE                       R14 K39 [PROTO_7]
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R14 R13 K25 ["OnItemClicked"]
      151 DUPCLOSURE                       R14 K40 [PROTO_8]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R7
      157 SETTABLEKS                       R14 R13 K26 ["ShouldRender"]
      159 NEWTABLE                         R14 0 2
      161 MOVE                             R15 R12
      162 MOVE                             R16 R13
      163 SETLIST                          R14 R15 2 [1]
      165 RETURN                           R14 1
