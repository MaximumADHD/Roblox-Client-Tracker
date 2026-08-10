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
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 NAMECALL                         R3 R3 K1 ["getGameInfo"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"gameName"}]
        6 GETTABLEKS                       R5 R3 K4 ["Name"]
        8 SETTABLEKS                       R5 R4 K2 ["gameName"]
       10 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getItemsCache"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getCurrentShownScope"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["keys"]
       11 NAMECALL                         R7 R3 K4 ["getSelection"]
       13 CALL                             R7 1 -1
       14 CALL                             R6 -1 1
       15 GETTABLEKS                       R9 R5 K5 ["Uid"]
       17 MOVE                             R10 R6
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R11 R11 K7 ["AssetId"]
       23 NAMECALL                         R7 R4 K8 ["getData"]
       25 CALL                             R7 4 1
       26 GETTABLEKS                       R10 R5 K5 ["Uid"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K6 ["AssetInfoField"]
       32 GETTABLEKS                       R12 R12 K9 ["AssetType"]
       34 NAMECALL                         R8 R4 K8 ["getData"]
       36 CALL                             R8 4 1
       37 DUPTABLE                         R9 K12 [{"assetIds", "assetTypes"}]
       38 NEWTABLE                         R10 0 0
       40 SETTABLEKS                       R10 R9 K10 ["assetIds"]
       42 NEWTABLE                         R10 0 0
       44 SETTABLEKS                       R10 R9 K11 ["assetTypes"]
       46 MOVE                             R10 R8
       47 LOADNIL                          R11
       48 LOADNIL                          R12
       49 FORGPREP                         R10
       50 GETUPVAL                         R15 2
       51 MOVE                             R16 R14
       52 CALL                             R15 1 1
       53 JUMPIFNOT                        R15 ; [+16]
       54 GETTABLEKS                       R16 R9 K10 ["assetIds"]
       56 GETTABLE                         R17 R7 R13
       57 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
       59 GETIMPORT                        R15 K15 [table.insert]
       61 CALL                             R15 2 0
       62 GETTABLEKS                       R16 R9 K11 ["assetTypes"]
       64 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       66 MOVE                             R17 R14
       67 GETIMPORT                        R15 K15 [table.insert]
       69 CALL                             R15 2 0
       70 FORGLOOP                         R10 2 ; [-21]
       72 GETTABLEKS                       R11 R9 K10 ["assetIds"]
       74 LENGTH                           R10 R11
       75 JUMPIFNOTEQKN                    R10 K16 [0] ; [+2]
       77 RETURN                           R0 0
       78 GETTABLEKS                       R10 R1 K17 ["PluginController"]
       80 NAMECALL                         R10 R10 K18 ["getPlugin"]
       82 CALL                             R10 1 1
       83 LOADK                            R12 K19 ["OnAddToExperience"]
       84 MOVE                             R13 R9
       85 MOVE                             R14 R5
       86 NAMECALL                         R10 R10 K20 ["Invoke"]
       88 CALL                             R10 4 0
       89 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["PluginController"]
       16 NAMECALL                         R3 R3 K3 ["getGameInfo"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K4 ["Id"]
       21 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R1 K6 ["ItemsController"]
       27 NAMECALL                         R3 R3 K7 ["getCurrentShownScope"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K8 ["ExplorerController"]
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R4 K9 ["getScopeRoot"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+18]
       37 GETTABLEKS                       R5 R4 K10 ["Type"]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K12 ["Universe"]
       44 JUMPIFEQ                         R5 R6 ; [+8]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       49 GETTABLEKS                       R6 R6 K13 ["ProjectPlaces"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADB                            R6 0
       54 RETURN                           R6 1
       55 GETTABLEKS                       R5 R1 K6 ["ItemsController"]
       57 NAMECALL                         R5 R5 K14 ["selectionHasInsertableAssets"]
       59 CALL                             R5 1 -1
       60 RETURN                           R5 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
        4 NAMECALL                         R5 R5 K2 ["getSingleItemSelected"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K3 ["importAssetVersion"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+22]
        8 LOADB                            R4 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
       12 GETTABLEKS                       R5 R5 K3 ["Asset"]
       14 JUMPIFNOTEQ                      R0 R5 ; [+15]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+12]
       19 GETTABLEKS                       R5 R3 K4 ["AssetType"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       24 GETTABLEKS                       R6 R6 K5 ["Mesh"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETUPVAL                         R5 2
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+22]
       33 LOADB                            R5 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K2 ["MenuContext"]
       37 GETTABLEKS                       R6 R6 K3 ["Asset"]
       39 JUMPIFNOTEQ                      R0 R6 ; [+15]
       41 LOADB                            R5 0
       42 JUMPIFEQKNIL                     R3 ; [+12]
       44 GETTABLEKS                       R6 R3 K4 ["AssetType"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       49 GETTABLEKS                       R7 R7 K6 ["Image"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 OR                               R6 R4 R5
       56 RETURN                           R6 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_11:
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
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R2 K13 ["Src"]
      120 GETTABLEKS                       R17 R17 K27 ["Flags"]
      122 GETTABLEKS                       R17 R17 K29 ["getFFlagAmrImageVersioning"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R18 R2 K13 ["Src"]
      129 GETTABLEKS                       R18 R18 K27 ["Flags"]
      131 GETTABLEKS                       R18 R18 K30 ["getFFlagAmrAddToExperience"]
      133 CALL                             R17 1 1
      134 DUPCLOSURE                       R18 K31 [PROTO_0]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R0
      138 DUPTABLE                         R19 K39 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddToExperience", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      139 DUPCLOSURE                       R20 K40 [PROTO_1]
      140 SETTABLEKS                       R20 R19 K36 ["GetSubkeyArgs"]
      142 DUPCLOSURE                       R20 K41 [PROTO_2]
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R14
      146 SETTABLEKS                       R20 R19 K37 ["OnItemClicked"]
      148 DUPCLOSURE                       R20 K42 [PROTO_3]
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R20 R19 K38 ["ShouldRender"]
      153 DUPTABLE                         R20 K44 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Edit", ["OnItemClicked"], ["ShouldRender"]}]
      154 DUPCLOSURE                       R21 K45 [PROTO_4]
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R21 R20 K37 ["OnItemClicked"]
      160 DUPCLOSURE                       R21 K46 [PROTO_5]
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R14
      163 SETTABLEKS                       R21 R20 K38 ["ShouldRender"]
      165 DUPTABLE                         R21 K48 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ImportAssetVersion", ["OnItemClicked"], ["ShouldRender"]}]
      166 DUPCLOSURE                       R22 K49 [PROTO_6]
      167 SETTABLEKS                       R22 R21 K37 ["OnItemClicked"]
      169 DUPCLOSURE                       R22 K50 [PROTO_7]
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R16
      173 SETTABLEKS                       R22 R21 K38 ["ShouldRender"]
      175 DUPTABLE                         R22 K52 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "FindInExplorer", ["OnItemClicked"], ["ShouldRender"]}]
      176 DUPCLOSURE                       R23 K53 [PROTO_8]
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R23 R22 K37 ["OnItemClicked"]
      180 DUPCLOSURE                       R23 K54 [PROTO_9]
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R23 R22 K38 ["ShouldRender"]
      184 DUPTABLE                         R23 K56 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ClearRecent", ["OnItemClicked"], ["ShouldRender"]}]
      185 DUPCLOSURE                       R24 K57 [PROTO_10]
      186 SETTABLEKS                       R24 R23 K37 ["OnItemClicked"]
      188 DUPCLOSURE                       R24 K58 [PROTO_11]
      189 CAPTURE                          VAL R4
      190 SETTABLEKS                       R24 R23 K38 ["ShouldRender"]
      192 NEWTABLE                         R24 0 5
      194 MOVE                             R25 R6
      195 GETTABLEKS                       R26 R3 K59 ["append"]
      197 MOVE                             R27 R9
      198 MOVE                             R28 R10
      199 MOVE                             R29 R11
      200 NEWTABLE                         R30 0 1
      202 MOVE                             R31 R19
      203 SETLIST                          R30 R31 1 [1]
      205 MOVE                             R31 R8
      206 NEWTABLE                         R32 0 1
      208 MOVE                             R33 R20
      209 SETLIST                          R32 R33 1 [1]
      211 MOVE                             R33 R12
      212 NEWTABLE                         R34 0 1
      214 MOVE                             R35 R22
      215 SETLIST                          R34 R35 1 [1]
      217 NEWTABLE                         R35 0 1
      219 MOVE                             R36 R21
      220 SETLIST                          R35 R36 1 [1]
      222 CALL                             R26 9 1
      223 MOVE                             R27 R7
      224 NEWTABLE                         R28 0 1
      226 MOVE                             R29 R23
      227 SETLIST                          R28 R29 1 [1]
      229 MOVE                             R29 R13
      230 CALL                             R29 0 -1
      231 SETLIST                          R24 R25 -1 [1]
      233 RETURN                           R24 1
