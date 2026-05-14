PROTO_0:
        0 LOADK                            R4 K0 ["Settings"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["PlaceVersionHistoryPlaceIdUri"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R2 K3 ["SetNumberAsync"]
       10 CALL                             R3 3 0
       11 LOADK                            R5 K4 ["Actions"]
       12 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       14 CALL                             R3 2 1
       15 DUPTABLE                         R6 K7 [{"Uri", "Checked"}]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K8 ["PlaceVersionHistoryToggle"]
       19 SETTABLEKS                       R7 R6 K5 ["Uri"]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K6 ["Checked"]
       24 NAMECALL                         R4 R3 K9 ["UpdateAsync"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MenuContext"]
        3 GETTABLEKS                       R2 R2 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["AssetType"]
       14 GETTABLEKS                       R4 R4 K4 ["Place"]
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
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
        9 GETTABLEKS                       R5 R5 K3 ["Asset"]
       11 JUMPIFNOTEQ                      R0 R5 ; [+12]
       13 GETTABLEKS                       R5 R3 K4 ["Type"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R6 K6 ["ProjectPlaces"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

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
       14 GETTABLEKS                       R5 R5 K4 ["Place"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R6 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

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
       14 GETTABLEKS                       R5 R5 K4 ["Place"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R6 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

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
       14 GETTABLEKS                       R5 R5 K4 ["Place"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R5 R5 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R5 ; [+3]
        7 LOADNIL                          R4
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["AssetType"]
       14 GETTABLEKS                       R6 R6 K4 ["Place"]
       16 NAMECALL                         R4 R4 K5 ["getSingleItemSelected"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

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
       14 GETTABLEKS                       R5 R5 K4 ["Place"]
       16 NAMECALL                         R3 R3 K5 ["getSingleItemSelected"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+12]
       21 GETTABLEKS                       R4 R1 K6 ["PluginController"]
       23 GETTABLEKS                       R5 R1 K7 ["Localization"]
       25 GETTABLEKS                       R6 R3 K8 ["AssetId"]
       27 GETUPVAL                         R7 1
       28 MOVE                             R8 R4
       29 MOVE                             R9 R5
       30 MOVE                             R10 R6
       31 CALL                             R7 3 0
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        3 GETTABLEKS                       R4 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R4 ; [+3]
        7 LOADNIL                          R3
        8 JUMP                             ; [+10]
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["AssetType"]
       14 GETTABLEKS                       R5 R5 K4 ["Place"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Dialogs"]
       31 GETTABLEKS                       R4 R4 K12 ["openConfirmPlaceRemoval"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Flags"]
       40 GETTABLEKS                       R5 R5 K14 ["getFFlagAmrRefactorEditNameInput"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K15 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R6 K16 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 DUPTABLE                         R7 K21 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       48 LOADK                            R8 K22 ["ContextMenu"]
       49 SETTABLEKS                       R8 R7 K17 ["TextKey"]
       51 LOADK                            R8 K23 ["AddNewPlace"]
       52 SETTABLEKS                       R8 R7 K18 ["TextSubKey"]
       54 DUPCLOSURE                       R8 K24 [PROTO_2]
       55 SETTABLEKS                       R8 R7 K19 ["OnItemClicked"]
       57 DUPCLOSURE                       R8 K25 [PROTO_3]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R8 R7 K20 ["ShouldRender"]
       61 DUPTABLE                         R8 K21 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       62 LOADK                            R9 K22 ["ContextMenu"]
       63 SETTABLEKS                       R9 R8 K17 ["TextKey"]
       65 LOADK                            R9 K26 ["OpenFolder"]
       66 SETTABLEKS                       R9 R8 K18 ["TextSubKey"]
       68 DUPCLOSURE                       R9 K27 [PROTO_4]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R9 R8 K19 ["OnItemClicked"]
       72 DUPCLOSURE                       R9 K28 [PROTO_5]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R9 R8 K20 ["ShouldRender"]
       76 DUPTABLE                         R9 K21 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       77 LOADK                            R10 K22 ["ContextMenu"]
       78 SETTABLEKS                       R10 R9 K17 ["TextKey"]
       80 LOADK                            R10 K29 ["Rename"]
       81 SETTABLEKS                       R10 R9 K18 ["TextSubKey"]
       83 DUPCLOSURE                       R10 K30 [PROTO_6]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R10 R9 K19 ["OnItemClicked"]
       88 DUPCLOSURE                       R10 K31 [PROTO_7]
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R10 R9 K20 ["ShouldRender"]
       92 DUPTABLE                         R10 K21 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
       93 LOADK                            R11 K22 ["ContextMenu"]
       94 SETTABLEKS                       R11 R10 K17 ["TextKey"]
       96 LOADK                            R11 K32 ["ViewPlaceHistory"]
       97 SETTABLEKS                       R11 R10 K18 ["TextSubKey"]
       99 DUPCLOSURE                       R11 K33 [PROTO_8]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R5
      102 SETTABLEKS                       R11 R10 K19 ["OnItemClicked"]
      104 DUPCLOSURE                       R11 K34 [PROTO_9]
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R11 R10 K20 ["ShouldRender"]
      108 DUPTABLE                         R11 K21 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      109 LOADK                            R12 K22 ["ContextMenu"]
      110 SETTABLEKS                       R12 R11 K17 ["TextKey"]
      112 LOADK                            R12 K35 ["RemoveFromExperience"]
      113 SETTABLEKS                       R12 R11 K18 ["TextSubKey"]
      115 DUPCLOSURE                       R12 K36 [PROTO_10]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R12 R11 K19 ["OnItemClicked"]
      120 DUPCLOSURE                       R12 K37 [PROTO_11]
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R12 R11 K20 ["ShouldRender"]
      124 NEWTABLE                         R12 0 5
      126 MOVE                             R13 R8
      127 MOVE                             R14 R9
      128 MOVE                             R15 R10
      129 MOVE                             R16 R11
      130 MOVE                             R17 R7
      131 SETLIST                          R12 R13 5 [1]
      133 RETURN                           R12 1
