PROTO_0:
        0 LOADK                            R4 K0 ["Settings"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["PlaceVersionHistoryPlaceIdUri"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R2 K3 ["SetNumberAsync"]
       10 CALL                             R3 3 0
       11 LOADK                            R5 K4 ["Actions"]
       12 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       14 CALL                             R3 2 1
       15 DUPTABLE                         R6 K7 [{"Uri", "Checked"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K8 ["PlaceVersionHistoryToggle"]
       19 SETTABLEKS                       R7 R6 K5 ["Uri"]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K6 ["Checked"]
       24 NAMECALL                         R4 R3 K9 ["UpdateAsync"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["AssetType"]
       14 GETTABLEKS                       R4 R5 K4 ["Place"]
       16 NAMECALL                         R2 R2 K5 ["getSingleItemSelected"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 NAMECALL                         R4 R3 K1 ["getPlugin"]
        4 CALL                             R4 1 1
        5 LOADK                            R6 K2 ["OnAddPlace"]
        6 NAMECALL                         R4 R4 K3 ["Invoke"]
        8 CALL                             R4 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
        4 CALL                             R3 1 1
        5 LOADB                            R4 0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K2 ["MenuContext"]
        9 GETTABLEKS                       R5 R6 K3 ["Asset"]
       11 JUMPIFNOTEQ                      R0 R5 ; [+12]
       13 GETTABLEKS                       R5 R3 K4 ["Type"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R7 K6 ["ProjectPlaces"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

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
       14 GETTABLEKS                       R5 R6 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+12]
       21 GETTABLEKS                       R4 R1 K6 ["PluginController"]
       23 NAMECALL                         R4 R4 K7 ["getPlugin"]
       25 CALL                             R4 1 1
       26 LOADK                            R6 K8 ["OnOpenPlace"]
       27 GETTABLEKS                       R7 R3 K9 ["AssetId"]
       29 NAMECALL                         R4 R4 K10 ["Invoke"]
       31 CALL                             R4 3 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R6 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R7 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

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
       14 GETTABLEKS                       R5 R6 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 1
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+8]
       25 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       27 GETTABLEKS                       R6 R3 K6 ["Path"]
       29 NAMECALL                         R4 R4 K7 ["setStagedEditItemPath"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R1 K8 ["PluginController"]
       35 GETTABLEKS                       R6 R3 K9 ["AssetId"]
       37 NAMECALL                         R4 R4 K10 ["stagePlaceForRename"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R6 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R7 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

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
       14 GETTABLEKS                       R5 R6 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+10]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R1 K6 ["PluginController"]
       24 NAMECALL                         R5 R5 K7 ["getPlugin"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R3 K8 ["AssetId"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R6 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R7 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+20]
       21 GETTABLEKS                       R4 R1 K6 ["PluginController"]
       23 GETTABLEKS                       R5 R1 K7 ["Localization"]
       25 GETTABLEKS                       R6 R3 K8 ["AssetId"]
       27 GETUPVAL                         R7 1
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+6]
       30 GETUPVAL                         R7 2
       31 MOVE                             R8 R4
       32 MOVE                             R9 R5
       33 MOVE                             R10 R6
       34 CALL                             R7 3 0
       35 RETURN                           R0 0
       36 MOVE                             R9 R6
       37 NAMECALL                         R7 R4 K9 ["DEPRECATED_stageRemovePlace"]
       39 CALL                             R7 2 0
       40 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R6 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 LOADB                            R4 0
       20 JUMPIFEQKNIL                     R3 ; [+9]
       22 GETTABLEKS                       R5 R1 K6 ["PluginController"]
       24 GETTABLEKS                       R7 R3 K7 ["AssetId"]
       26 NAMECALL                         R5 R5 K8 ["isRootPlace"]
       28 CALL                             R5 2 1
       29 NOT                              R4 R5
       30 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K6 ["Src"]
       27 GETTABLEKS                       R6 R7 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["Dialogs"]
       31 GETTABLEKS                       R4 R5 K12 ["openConfirmPlaceRemoval"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K13 ["Flags"]
       40 GETTABLEKS                       R5 R6 K14 ["getFFlagAmrRefactorEditNameInput"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K13 ["Flags"]
       49 GETTABLEKS                       R6 R7 K15 ["getFFlagAmrUseDialogComponent"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_0]
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R7 K17 [PROTO_1]
       55 CAPTURE                          VAL R1
       56 DUPTABLE                         R8 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       57 LOADK                            R9 K23 ["ContextMenu"]
       58 SETTABLEKS                       R9 R8 K18 ["TextKey"]
       60 LOADK                            R9 K24 ["AddNewPlace"]
       61 SETTABLEKS                       R9 R8 K19 ["TextSubKey"]
       63 DUPCLOSURE                       R9 K25 [PROTO_2]
       64 SETTABLEKS                       R9 R8 K20 ["OnItemClicked"]
       66 DUPCLOSURE                       R9 K26 [PROTO_3]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R9 R8 K21 ["ShouldRender"]
       70 DUPTABLE                         R9 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       71 LOADK                            R10 K23 ["ContextMenu"]
       72 SETTABLEKS                       R10 R9 K18 ["TextKey"]
       74 LOADK                            R10 K27 ["OpenFolder"]
       75 SETTABLEKS                       R10 R9 K19 ["TextSubKey"]
       77 DUPCLOSURE                       R10 K28 [PROTO_4]
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R10 R9 K20 ["OnItemClicked"]
       81 DUPCLOSURE                       R10 K29 [PROTO_5]
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R10 R9 K21 ["ShouldRender"]
       85 DUPTABLE                         R10 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       86 LOADK                            R11 K23 ["ContextMenu"]
       87 SETTABLEKS                       R11 R10 K18 ["TextKey"]
       89 LOADK                            R11 K30 ["Rename"]
       90 SETTABLEKS                       R11 R10 K19 ["TextSubKey"]
       92 DUPCLOSURE                       R11 K31 [PROTO_6]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R11 R10 K20 ["OnItemClicked"]
       97 DUPCLOSURE                       R11 K32 [PROTO_7]
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R11 R10 K21 ["ShouldRender"]
      101 DUPTABLE                         R11 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      102 LOADK                            R12 K23 ["ContextMenu"]
      103 SETTABLEKS                       R12 R11 K18 ["TextKey"]
      105 LOADK                            R12 K33 ["ViewPlaceHistory"]
      106 SETTABLEKS                       R12 R11 K19 ["TextSubKey"]
      108 DUPCLOSURE                       R12 K34 [PROTO_8]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R12 R11 K20 ["OnItemClicked"]
      113 DUPCLOSURE                       R12 K35 [PROTO_9]
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R12 R11 K21 ["ShouldRender"]
      117 DUPTABLE                         R12 K22 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      118 LOADK                            R13 K23 ["ContextMenu"]
      119 SETTABLEKS                       R13 R12 K18 ["TextKey"]
      121 LOADK                            R13 K36 ["RemoveFromExperience"]
      122 SETTABLEKS                       R13 R12 K19 ["TextSubKey"]
      124 DUPCLOSURE                       R13 K37 [PROTO_10]
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R13 R12 K20 ["OnItemClicked"]
      130 DUPCLOSURE                       R13 K38 [PROTO_11]
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R13 R12 K21 ["ShouldRender"]
      134 NEWTABLE                         R13 0 5
      136 MOVE                             R14 R9
      137 MOVE                             R15 R10
      138 MOVE                             R16 R11
      139 MOVE                             R17 R12
      140 MOVE                             R18 R8
      141 SETLIST                          R13 R14 5 [1]
      143 RETURN                           R13 1
