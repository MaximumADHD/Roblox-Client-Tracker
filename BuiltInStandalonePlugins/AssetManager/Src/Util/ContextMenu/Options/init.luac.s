PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["OpenAssetConfigurationKey"]
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
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K4 ["OpenAssetConfigurationKey"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["getCurrentShownScope"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K4 ["Type"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["ScopeType"]
       19 GETTABLEKS                       R5 R5 K6 ["ProjectPlaces"]
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
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
        4 NAMECALL                         R5 R5 K2 ["getSingleItemSelected"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K3 ["importAssetVersion"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+32]
        8 LOADB                            R4 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
       12 GETTABLEKS                       R5 R5 K3 ["Asset"]
       14 JUMPIFNOTEQ                      R0 R5 ; [+25]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+22]
       19 LOADB                            R4 1
       20 GETTABLEKS                       R5 R3 K4 ["AssetType"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       25 GETTABLEKS                       R6 R6 K5 ["Mesh"]
       27 JUMPIFEQ                         R5 R6 ; [+12]
       29 GETTABLEKS                       R5 R3 K4 ["AssetType"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       34 GETTABLEKS                       R6 R6 K6 ["Image"]
       36 JUMPIFEQ                         R5 R6 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 RETURN                           R4 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["selectionHasInsertableAssets"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_8:
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
       18 GETTABLEKS                       R6 R6 K6 ["RecentUploads"]
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
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Resources"]
       39 GETTABLEKS                       R6 R6 K16 ["Constants"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETIMPORT                        R7 K6 [script]
       46 GETTABLEKS                       R7 R7 K17 ["FolderOptions"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETIMPORT                        R8 K6 [script]
       53 GETTABLEKS                       R8 R8 K18 ["GeneralOptions"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETIMPORT                        R9 K6 [script]
       60 GETTABLEKS                       R9 R9 K19 ["InsertOptions"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETIMPORT                        R10 K6 [script]
       67 GETTABLEKS                       R10 R10 K20 ["PlaceManagementOptions"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETIMPORT                        R11 K6 [script]
       74 GETTABLEKS                       R11 R11 K21 ["PluginManagementOptions"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETIMPORT                        R12 K6 [script]
       81 GETTABLEKS                       R12 R12 K22 ["SidebarOptions"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETIMPORT                        R13 K6 [script]
       88 GETTABLEKS                       R13 R13 K23 ["ShareOptions"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETIMPORT                        R14 K6 [script]
       95 GETTABLEKS                       R14 R14 K24 ["getListColumnOptions"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K10 [require]
      100 GETTABLEKS                       R15 R2 K13 ["Src"]
      102 GETTABLEKS                       R15 R15 K25 ["Util"]
      104 GETTABLEKS                       R15 R15 K26 ["isInsertable"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R2 K13 ["Src"]
      111 GETTABLEKS                       R16 R16 K27 ["Flags"]
      113 GETTABLEKS                       R16 R16 K28 ["getEFCinMeshVersioning"]
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
      142 LOADK                            R19 K39 ["ImportAssetVersion"]
      143 SETTABLEKS                       R19 R18 K31 ["TextSubKey"]
      145 DUPCLOSURE                       R19 K40 [PROTO_3]
      146 SETTABLEKS                       R19 R18 K32 ["OnItemClicked"]
      148 DUPCLOSURE                       R19 K41 [PROTO_4]
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R19 R18 K33 ["ShouldRender"]
      153 DUPTABLE                         R19 K34 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      154 LOADK                            R20 K35 ["ContextMenu"]
      155 SETTABLEKS                       R20 R19 K30 ["TextKey"]
      157 LOADK                            R20 K42 ["FindInExplorer"]
      158 SETTABLEKS                       R20 R19 K31 ["TextSubKey"]
      160 DUPCLOSURE                       R20 K43 [PROTO_5]
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R20 R19 K32 ["OnItemClicked"]
      164 DUPCLOSURE                       R20 K44 [PROTO_6]
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R20 R19 K33 ["ShouldRender"]
      168 DUPTABLE                         R20 K34 [{"TextKey", "TextSubKey", "OnItemClicked", "ShouldRender"}]
      169 LOADK                            R21 K35 ["ContextMenu"]
      170 SETTABLEKS                       R21 R20 K30 ["TextKey"]
      172 LOADK                            R21 K45 ["ClearRecent"]
      173 SETTABLEKS                       R21 R20 K31 ["TextSubKey"]
      175 DUPCLOSURE                       R21 K46 [PROTO_7]
      176 SETTABLEKS                       R21 R20 K32 ["OnItemClicked"]
      178 DUPCLOSURE                       R21 K47 [PROTO_8]
      179 CAPTURE                          VAL R4
      180 SETTABLEKS                       R21 R20 K33 ["ShouldRender"]
      182 NEWTABLE                         R21 0 5
      184 MOVE                             R22 R6
      185 GETTABLEKS                       R23 R3 K48 ["append"]
      187 MOVE                             R24 R9
      188 MOVE                             R25 R10
      189 MOVE                             R26 R11
      190 MOVE                             R27 R8
      191 NEWTABLE                         R28 0 1
      193 MOVE                             R29 R17
      194 SETLIST                          R28 R29 1 [1]
      196 MOVE                             R29 R12
      197 NEWTABLE                         R30 0 1
      199 MOVE                             R31 R19
      200 SETLIST                          R30 R31 1 [1]
      202 NEWTABLE                         R31 0 1
      204 MOVE                             R32 R18
      205 SETLIST                          R31 R32 1 [1]
      207 CALL                             R23 8 1
      208 MOVE                             R24 R7
      209 NEWTABLE                         R25 0 1
      211 MOVE                             R26 R20
      212 SETLIST                          R25 R26 1 [1]
      214 MOVE                             R26 R13
      215 CALL                             R26 0 -1
      216 SETLIST                          R21 R22 -1 [1]
      218 RETURN                           R21 1
