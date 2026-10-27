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
       15 DUPTABLE                         R6 K8 [{["Uri"], ["Checked"] = True}]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K9 ["PlaceVersionHistoryToggle"]
       19 SETTABLEKS                       R7 R6 K5 ["Uri"]
       21 NAMECALL                         R4 R3 K10 ["UpdateAsync"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

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
        2 NAMECALL                         R3 R3 K1 ["getGameInfo"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["Id"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R3
        9 DUPTABLE                         R6 K5 [{"Networking", "ItemsController"}]
       10 GETTABLEKS                       R7 R1 K3 ["Networking"]
       12 SETTABLEKS                       R7 R6 K3 ["Networking"]
       14 GETTABLEKS                       R7 R1 K4 ["ItemsController"]
       16 SETTABLEKS                       R7 R6 K4 ["ItemsController"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       24 GETTABLEKS                       R6 R3 K6 ["Path"]
       26 NAMECALL                         R4 R4 K7 ["setStagedEditItemPath"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

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
       19 JUMPIFEQKNIL                     R3 ; [+26]
       21 GETTABLEKS                       R4 R1 K6 ["PluginController"]
       23 GETTABLEKS                       R5 R1 K7 ["Localization"]
       25 GETTABLEKS                       R6 R3 K8 ["AssetId"]
       27 GETUPVAL                         R7 1
       28 DUPTABLE                         R8 K11 [{"PluginController", "ExplorerController", "ItemsController", "Networking"}]
       29 SETTABLEKS                       R4 R8 K6 ["PluginController"]
       31 GETTABLEKS                       R9 R1 K9 ["ExplorerController"]
       33 SETTABLEKS                       R9 R8 K9 ["ExplorerController"]
       35 GETTABLEKS                       R9 R1 K2 ["ItemsController"]
       37 SETTABLEKS                       R9 R8 K2 ["ItemsController"]
       39 GETTABLEKS                       R9 R1 K10 ["Networking"]
       41 SETTABLEKS                       R9 R8 K10 ["Networking"]
       43 MOVE                             R9 R5
       44 MOVE                             R10 R6
       45 CALL                             R7 3 0
       46 RETURN                           R0 0

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
       38 GETTABLEKS                       R5 R5 K10 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["PlaceManagement"]
       42 GETTABLEKS                       R5 R5 K14 ["addNewPlace"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K15 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R6 K16 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 DUPTABLE                         R7 K23 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddNewPlace", ["OnItemClicked"], ["ShouldRender"]}]
       50 DUPCLOSURE                       R8 K24 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R8 R7 K21 ["OnItemClicked"]
       54 DUPCLOSURE                       R8 K25 [PROTO_3]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R8 R7 K22 ["ShouldRender"]
       58 DUPTABLE                         R8 K27 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "OpenFolder", ["OnItemClicked"], ["ShouldRender"]}]
       59 DUPCLOSURE                       R9 K28 [PROTO_4]
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R9 R8 K21 ["OnItemClicked"]
       63 DUPCLOSURE                       R9 K29 [PROTO_5]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R9 R8 K22 ["ShouldRender"]
       67 DUPTABLE                         R9 K31 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Rename", ["OnItemClicked"], ["ShouldRender"]}]
       68 DUPCLOSURE                       R10 K32 [PROTO_6]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R10 R9 K21 ["OnItemClicked"]
       72 DUPCLOSURE                       R10 K33 [PROTO_7]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R10 R9 K22 ["ShouldRender"]
       76 DUPTABLE                         R10 K35 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ViewPlaceHistory", ["OnItemClicked"], ["ShouldRender"]}]
       77 DUPCLOSURE                       R11 K36 [PROTO_8]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R11 R10 K21 ["OnItemClicked"]
       82 DUPCLOSURE                       R11 K37 [PROTO_9]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R11 R10 K22 ["ShouldRender"]
       86 DUPTABLE                         R11 K39 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "RemoveFromExperience", ["OnItemClicked"], ["ShouldRender"]}]
       87 DUPCLOSURE                       R12 K40 [PROTO_10]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R12 R11 K21 ["OnItemClicked"]
       92 DUPCLOSURE                       R12 K41 [PROTO_11]
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R12 R11 K22 ["ShouldRender"]
       96 NEWTABLE                         R12 0 5
       98 MOVE                             R13 R8
       99 MOVE                             R14 R9
      100 MOVE                             R15 R10
      101 MOVE                             R16 R11
      102 MOVE                             R17 R7
      103 SETLIST                          R12 R13 5 [1]
      105 RETURN                           R12 1
