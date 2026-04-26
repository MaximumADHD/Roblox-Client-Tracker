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
       18 GETTABLEKS                       R6 R7 K6 ["RecentUploads"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

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
      107 DUPCLOSURE                       R15 K27 [PROTO_0]
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R0
      111 DUPTABLE                         R16 K32 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      112 LOADK                            R17 K33 ["ContextMenu"]
      113 SETTABLEKS                       R17 R16 K28 ["TextKey"]
      115 LOADK                            R17 K34 ["Edit"]
      116 SETTABLEKS                       R17 R16 K29 ["TextSubKey"]
      118 DUPCLOSURE                       R17 K35 [PROTO_1]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R17 R16 K30 ["OnItemClicked"]
      124 DUPCLOSURE                       R17 K36 [PROTO_2]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R14
      127 SETTABLEKS                       R17 R16 K31 ["ShouldRender"]
      129 DUPTABLE                         R17 K32 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      130 LOADK                            R18 K33 ["ContextMenu"]
      131 SETTABLEKS                       R18 R17 K28 ["TextKey"]
      133 LOADK                            R18 K37 ["FindInExplorer"]
      134 SETTABLEKS                       R18 R17 K29 ["TextSubKey"]
      136 DUPCLOSURE                       R18 K38 [PROTO_3]
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R18 R17 K30 ["OnItemClicked"]
      140 DUPCLOSURE                       R18 K39 [PROTO_4]
      141 CAPTURE                          VAL R4
      142 SETTABLEKS                       R18 R17 K31 ["ShouldRender"]
      144 DUPTABLE                         R18 K32 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      145 LOADK                            R19 K33 ["ContextMenu"]
      146 SETTABLEKS                       R19 R18 K28 ["TextKey"]
      148 LOADK                            R19 K40 ["ClearRecent"]
      149 SETTABLEKS                       R19 R18 K29 ["TextSubKey"]
      151 DUPCLOSURE                       R19 K41 [PROTO_5]
      152 SETTABLEKS                       R19 R18 K30 ["OnItemClicked"]
      154 DUPCLOSURE                       R19 K42 [PROTO_6]
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R19 R18 K31 ["ShouldRender"]
      158 NEWTABLE                         R19 0 5
      160 MOVE                             R20 R6
      161 GETTABLEKS                       R21 R3 K43 ["append"]
      163 MOVE                             R22 R9
      164 MOVE                             R23 R10
      165 MOVE                             R24 R11
      166 MOVE                             R25 R8
      167 NEWTABLE                         R26 0 1
      169 MOVE                             R27 R16
      170 SETLIST                          R26 R27 1 [1]
      172 MOVE                             R27 R12
      173 NEWTABLE                         R28 0 1
      175 MOVE                             R29 R17
      176 SETLIST                          R28 R29 1 [1]
      178 CALL                             R21 7 1
      179 MOVE                             R22 R7
      180 NEWTABLE                         R23 0 1
      182 MOVE                             R24 R18
      183 SETLIST                          R23 R24 1 [1]
      185 MOVE                             R24 R13
      186 CALL                             R24 0 -1
      187 SETLIST                          R19 R20 -1 [1]
      189 RETURN                           R19 1
