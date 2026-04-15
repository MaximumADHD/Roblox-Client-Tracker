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
       25 JUMPIFLE                         R6 R7 ; [+2]
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
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["keys"]
        5 NAMECALL                         R5 R3 K2 ["getSelection"]
        7 CALL                             R5 1 -1
        8 CALL                             R4 -1 1
        9 GETUPVAL                         R6 1
       10 CALL                             R6 0 1
       11 NOT                              R5 R6
       12 JUMPIF                           R5 ; [+16]
       13 MOVE                             R9 R4
       14 NAMECALL                         R7 R3 K3 ["getAssetTypes"]
       16 CALL                             R7 2 1
       17 GETUPVAL                         R8 2
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 GETTABLE                         R13 R7 R11
       22 JUMPIFNOT                        R13 ; [+2]
       23 LOADB                            R6 1
       24 JUMP                             ; [+3]
       25 FORGLOOP                         R8 2 ; [-5]
       27 LOADB                            R6 0
       28 NOT                              R5 R6
       29 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+5]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
       11 GETTABLEKS                       R4 R5 K1 ["Asset"]
       13 JUMPIFEQ                         R0 R4 ; [+3]
       15 LOADB                            R3 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K3 ["keys"]
       22 NAMECALL                         R6 R4 K4 ["getSelection"]
       24 CALL                             R6 1 -1
       25 CALL                             R5 -1 1
       26 NAMECALL                         R6 R4 K5 ["selectionHasInsertableAssets"]
       28 CALL                             R6 1 1
       29 MOVE                             R3 R6
       30 JUMPIFNOT                        R3 ; [+6]
       31 LENGTH                           R7 R5
       32 LOADN                            R8 50
       33 JUMPIFLE                         R7 R8 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 RETURN                           R3 1

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
       86 DUPTABLE                         R10 K28 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender", "ShouldDisable"}]
       87 LOADK                            R11 K29 ["ContextMenu"]
       88 SETTABLEKS                       R11 R10 K23 ["TextKey"]
       90 LOADK                            R11 K30 ["WithCollaborators"]
       91 SETTABLEKS                       R11 R10 K24 ["TextSubKey"]
       93 DUPCLOSURE                       R11 K31 [PROTO_2]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R11 R10 K25 ["OnItemClicked"]
       98 DUPCLOSURE                       R11 K32 [PROTO_3]
       99 SETTABLEKS                       R11 R10 K26 ["ShouldRender"]
      101 DUPCLOSURE                       R11 K33 [PROTO_4]
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R11 R10 K27 ["ShouldDisable"]
      105 DUPTABLE                         R11 K28 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender", "ShouldDisable"}]
      106 LOADK                            R12 K29 ["ContextMenu"]
      107 SETTABLEKS                       R12 R11 K23 ["TextKey"]
      109 LOADK                            R12 K34 ["OpenUse"]
      110 SETTABLEKS                       R12 R11 K24 ["TextSubKey"]
      112 DUPCLOSURE                       R12 K35 [PROTO_5]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 SETTABLEKS                       R12 R11 K25 ["OnItemClicked"]
      117 DUPCLOSURE                       R12 K36 [PROTO_6]
      118 SETTABLEKS                       R12 R11 K26 ["ShouldRender"]
      120 DUPCLOSURE                       R12 K37 [PROTO_7]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 SETTABLEKS                       R12 R11 K27 ["ShouldDisable"]
      126 DUPTABLE                         R12 K39 [{"TextKey", "TextSubKey", "Children", "ShouldRender"}]
      127 LOADK                            R13 K29 ["ContextMenu"]
      128 SETTABLEKS                       R13 R12 K23 ["TextKey"]
      130 LOADK                            R13 K40 ["QuickShare"]
      131 SETTABLEKS                       R13 R12 K24 ["TextSubKey"]
      133 NEWTABLE                         R13 0 2
      135 MOVE                             R14 R10
      136 MOVE                             R15 R11
      137 SETLIST                          R13 R14 2 [1]
      139 SETTABLEKS                       R13 R12 K38 ["Children"]
      141 DUPCLOSURE                       R13 K41 [PROTO_8]
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R13 R12 K26 ["ShouldRender"]
      148 NEWTABLE                         R13 0 1
      150 MOVE                             R14 R12
      151 SETLIST                          R13 R14 1 [1]
      153 RETURN                           R13 1
