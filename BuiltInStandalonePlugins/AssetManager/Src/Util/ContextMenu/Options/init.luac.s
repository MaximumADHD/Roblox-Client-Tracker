PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["OpenAssetConfigurationKey"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R7 K3 [{"id", "assetType"}]
        6 SETTABLEKS                       R0 R7 K1 ["id"]
        8 SETTABLEKS                       R1 R7 K2 ["assetType"]
       10 NAMECALL                         R5 R5 K4 ["JSONEncode"]
       12 CALL                             R5 2 -1
       13 NAMECALL                         R2 R2 K5 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+21]
        7 GETTABLEKS                       R4 R3 K2 ["AssetId"]
        9 GETTABLEKS                       R5 R3 K3 ["AssetType"]
       11 GETUPVAL                         R6 0
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R8 R9 K4 ["OpenAssetConfigurationKey"]
       15 GETUPVAL                         R9 2
       16 DUPTABLE                         R11 K7 [{"id", "assetType"}]
       17 SETTABLEKS                       R4 R11 K5 ["id"]
       19 SETTABLEKS                       R5 R11 K6 ["assetType"]
       21 NAMECALL                         R9 R9 K8 ["JSONEncode"]
       23 CALL                             R9 2 -1
       24 NAMECALL                         R6 R6 K9 ["Fire"]
       26 CALL                             R6 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getCurrentShownScope"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K4 ["Type"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K5 ["ScopeType"]
       19 GETTABLEKS                       R5 R6 K6 ["ProjectPlaces"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+3]
       23 LOADB                            R4 0
       24 RETURN                           R4 1
       25 GETTABLEKS                       R4 R1 K2 ["ItemsController"]
       27 NAMECALL                         R4 R4 K7 ["getSingleItemSelected"]
       29 CALL                             R4 1 1
       30 LOADB                            R5 0
       31 JUMPIFEQKNIL                     R4 ; [+5]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R6 R4 K8 ["AssetType"]
       36 CALL                             R5 1 1
       37 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSelectionIdsHelper"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K2 ["PluginController"]
        7 NAMECALL                         R4 R4 K3 ["getPlugin"]
        9 CALL                             R4 1 1
       10 LOADK                            R6 K4 ["OnSelectItems"]
       11 GETUPVAL                         R7 0
       12 MOVE                             R9 R3
       13 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       15 CALL                             R7 2 -1
       16 NAMECALL                         R4 R4 K6 ["Invoke"]
       18 CALL                             R4 -1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R4 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["selectionHasInsertableAssets"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        7 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
        9 CALL                             R3 1 1
       10 LOADB                            R4 0
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["MenuContext"]
       14 GETTABLEKS                       R5 R6 K3 ["Asset"]
       16 JUMPIFNOTEQ                      R0 R5 ; [+12]
       18 GETTABLEKS                       R5 R3 K4 ["Type"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K5 ["ScopeType"]
       23 GETTABLEKS                       R6 R7 K6 ["RecentUploads"]
       25 JUMPIFEQ                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssetManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R6 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R2 K13 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Resources"]
       39 GETTABLEKS                       R6 R7 K16 ["Constants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETIMPORT                        R8 K6 [script]
       46 GETTABLEKS                       R7 R8 K17 ["FolderOptions"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETIMPORT                        R9 K6 [script]
       53 GETTABLEKS                       R8 R9 K18 ["GeneralOptions"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETIMPORT                        R10 K6 [script]
       60 GETTABLEKS                       R9 R10 K19 ["InsertOptions"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETIMPORT                        R11 K6 [script]
       67 GETTABLEKS                       R10 R11 K20 ["PlaceManagementOptions"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETIMPORT                        R12 K6 [script]
       74 GETTABLEKS                       R11 R12 K21 ["PluginManagementOptions"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETIMPORT                        R13 K6 [script]
       81 GETTABLEKS                       R12 R13 K22 ["SidebarOptions"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETIMPORT                        R14 K6 [script]
       88 GETTABLEKS                       R13 R14 K23 ["ShareOptions"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETIMPORT                        R15 K6 [script]
       95 GETTABLEKS                       R14 R15 K24 ["getListColumnOptions"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R17 R2 K13 ["Src"]
      102 GETTABLEKS                       R16 R17 K25 ["Util"]
      104 GETTABLEKS                       R15 R16 K26 ["isInsertable"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R18 R2 K13 ["Src"]
      111 GETTABLEKS                       R17 R18 K27 ["Flags"]
      113 GETTABLEKS                       R16 R17 K28 ["getFFlagAmrRecents"]
      115 CALL                             R15 1 1
      116 DUPCLOSURE                       R16 K29 [PROTO_0]
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R0
      120 DUPTABLE                         R17 K34 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      121 LOADK                            R18 K35 ["ContextMenu"]
      122 SETTABLEKS                       R18 R17 K30 ["TextKey"]
      124 LOADK                            R18 K36 ["Edit"]
      125 SETTABLEKS                       R18 R17 K31 ["TextSubKey"]
      127 DUPCLOSURE                       R18 K37 [PROTO_1]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R18 R17 K32 ["OnItemClicked"]
      133 DUPCLOSURE                       R18 K38 [PROTO_2]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R14
      136 SETTABLEKS                       R18 R17 K33 ["ShouldRender"]
      138 DUPTABLE                         R18 K34 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      139 LOADK                            R19 K35 ["ContextMenu"]
      140 SETTABLEKS                       R19 R18 K30 ["TextKey"]
      142 LOADK                            R19 K39 ["FindInExplorer"]
      143 SETTABLEKS                       R19 R18 K31 ["TextSubKey"]
      145 DUPCLOSURE                       R19 K40 [PROTO_3]
      146 CAPTURE                          VAL R0
      147 SETTABLEKS                       R19 R18 K32 ["OnItemClicked"]
      149 DUPCLOSURE                       R19 K41 [PROTO_4]
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R19 R18 K33 ["ShouldRender"]
      153 DUPTABLE                         R19 K34 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      154 LOADK                            R20 K35 ["ContextMenu"]
      155 SETTABLEKS                       R20 R19 K30 ["TextKey"]
      157 LOADK                            R20 K42 ["ClearRecent"]
      158 SETTABLEKS                       R20 R19 K31 ["TextSubKey"]
      160 DUPCLOSURE                       R20 K43 [PROTO_5]
      161 SETTABLEKS                       R20 R19 K32 ["OnItemClicked"]
      163 DUPCLOSURE                       R20 K44 [PROTO_6]
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R20 R19 K33 ["ShouldRender"]
      168 NEWTABLE                         R20 0 5
      170 MOVE                             R21 R6
      171 GETTABLEKS                       R22 R3 K45 ["append"]
      173 MOVE                             R23 R9
      174 MOVE                             R24 R10
      175 MOVE                             R25 R11
      176 MOVE                             R26 R8
      177 NEWTABLE                         R27 0 1
      179 MOVE                             R28 R17
      180 SETLIST                          R27 R28 1 [1]
      182 MOVE                             R28 R12
      183 NEWTABLE                         R29 0 1
      185 MOVE                             R30 R18
      186 SETLIST                          R29 R30 1 [1]
      188 CALL                             R22 7 1
      189 MOVE                             R23 R7
      190 NEWTABLE                         R24 0 1
      192 MOVE                             R25 R19
      193 SETLIST                          R24 R25 1 [1]
      195 MOVE                             R25 R13
      196 CALL                             R25 0 -1
      197 SETLIST                          R20 R21 -1 [1]
      199 RETURN                           R20 1
