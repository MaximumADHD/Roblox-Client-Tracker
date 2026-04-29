PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R0 R1 K2 ["Id"]
        8 JUMPIFEQKN                       R0 K3 [0] ; [+5]
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K4 ["_generateProjectCustomScopes"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETUPVAL                         R0 0
       18 NAMECALL                         R0 R0 K5 ["_updateRenderTree"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 NAMECALL                         R0 R0 K6 ["_createExplorerItems"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_pluginController"]
        3 NAMECALL                         R3 R3 K1 ["getCurrentScope"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R2 R3 K2 ["Type"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["ScopeType"]
       11 GETTABLEKS                       R3 R4 K4 ["RecentUploads"]
       13 JUMPIFEQ                         R2 R3 ; [+11]
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["RecentUploads"]
       19 GETTABLEKS                       R4 R5 K5 ["Uid"]
       21 LOADB                            R5 1
       22 NAMECALL                         R2 R2 K6 ["_setNewItemNotif"]
       24 CALL                             R2 3 0
       25 GETUPVAL                         R3 3
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+4]
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R2 R1 K5 ["Uid"]
       31 JUMP                             ; [+4]
       32 GETTABLEKS                       R3 R0 K7 ["Creator"]
       34 GETTABLEKS                       R2 R3 K5 ["Uid"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K0 ["_pluginController"]
       39 NAMECALL                         R4 R4 K1 ["getCurrentScope"]
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K5 ["Uid"]
       44 JUMPIFEQ                         R2 R3 ; [+7]
       46 GETUPVAL                         R3 0
       47 MOVE                             R5 R2
       48 LOADB                            R6 1
       49 NAMECALL                         R3 R3 K6 ["_setNewItemNotif"]
       51 CALL                             R3 3 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+42]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["_scopes"]
       12 GETTABLEKS                       R4 R1 K3 ["Uid"]
       14 GETTABLE                         R2 R3 R4
       15 JUMPIF                           R2 ; [+24]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K2 ["_scopes"]
       19 GETTABLEKS                       R3 R1 K3 ["Uid"]
       21 SETTABLE                         R1 R2 R3
       22 GETTABLEKS                       R2 R1 K4 ["Parent"]
       24 JUMPIFNOT                        R2 ; [+15]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["_scopes"]
       28 GETTABLEKS                       R4 R1 K4 ["Parent"]
       30 GETTABLE                         R2 R3 R4
       31 JUMPIF                           R2 ; [+8]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R4 R1 K4 ["Parent"]
       35 GETTABLEKS                       R5 R1 K3 ["Uid"]
       37 NAMECALL                         R2 R2 K5 ["_addScopeToChildren"]
       39 CALL                             R2 3 0
       40 GETUPVAL                         R2 0
       41 MOVE                             R4 R1
       42 NAMECALL                         R2 R2 K6 ["_expandAncestorsRecursive"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 0
       46 MOVE                             R4 R0
       47 MOVE                             R5 R1
       48 NAMECALL                         R2 R2 K7 ["tryUpdateInventoryFolderReady"]
       50 CALL                             R2 3 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K8 ["_newItemNotifs"]
       54 GETTABLEKS                       R4 R1 K3 ["Uid"]
       56 GETTABLE                         R2 R3 R4
       57 JUMPIFNOT                        R2 ; [+6]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R4 R1 K3 ["Uid"]
       61 NAMECALL                         R2 R2 K9 ["_toggleNewItemNotif"]
       63 CALL                             R2 2 0
       64 GETUPVAL                         R2 0
       65 DUPTABLE                         R4 K11 [{"ScopeUid"}]
       66 GETTABLEKS                       R5 R1 K3 ["Uid"]
       68 SETTABLEKS                       R5 R4 K10 ["ScopeUid"]
       70 NAMECALL                         R2 R2 K12 ["addToHistory"]
       72 CALL                             R2 2 0
       73 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K25 [{"_isMock", "_networking", "_pluginController", "_explorerItems", "_scopes", "_headers", "_projectCustom", "_visibleInventories", "_stagedFolder", "_historyRingBuffer", "_historyBufferIndex", "_expansion", "_groupOptions", "_toggleSet", "_showScopeOptions", "_newItemNotifs", "_connections", "OnExplorerItemsChanged", "OnExpansionChanged", "OnGroupOptionsChanged", "OnShowScopeOptionsChanged", "OnToggleSetChanged", "OnScopeNotificationsChanged", "OnHistoryChanged", "OnRestoreSearchState"}]
        1 SETTABLEKS                       R2 R3 K0 ["_isMock"]
        3 SETTABLEKS                       R1 R3 K1 ["_networking"]
        5 SETTABLEKS                       R0 R3 K2 ["_pluginController"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["_explorerItems"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["_scopes"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K5 ["_headers"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K6 ["_projectCustom"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K7 ["_visibleInventories"]
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K8 ["_stagedFolder"]
       30 NEWTABLE                         R4 0 1
       32 DUPTABLE                         R5 K27 [{"ScopeUid"}]
       33 NAMECALL                         R7 R0 K28 ["getCurrentScope"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R6 R7 K29 ["Uid"]
       38 SETTABLEKS                       R6 R5 K26 ["ScopeUid"]
       40 SETLIST                          R4 R5 1 [1]
       42 SETTABLEKS                       R4 R3 K9 ["_historyRingBuffer"]
       44 LOADN                            R4 1
       45 SETTABLEKS                       R4 R3 K10 ["_historyBufferIndex"]
       47 NEWTABLE                         R4 0 0
       49 SETTABLEKS                       R4 R3 K11 ["_expansion"]
       51 NEWTABLE                         R4 0 0
       53 SETTABLEKS                       R4 R3 K12 ["_groupOptions"]
       55 NEWTABLE                         R4 0 0
       57 SETTABLEKS                       R4 R3 K13 ["_toggleSet"]
       59 LOADB                            R4 0
       60 SETTABLEKS                       R4 R3 K14 ["_showScopeOptions"]
       62 NEWTABLE                         R4 0 0
       64 SETTABLEKS                       R4 R3 K15 ["_newItemNotifs"]
       66 NEWTABLE                         R4 0 0
       68 SETTABLEKS                       R4 R3 K16 ["_connections"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K30 ["new"]
       73 CALL                             R4 0 1
       74 SETTABLEKS                       R4 R3 K17 ["OnExplorerItemsChanged"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R4 R5 K30 ["new"]
       79 CALL                             R4 0 1
       80 SETTABLEKS                       R4 R3 K18 ["OnExpansionChanged"]
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R4 R5 K30 ["new"]
       85 CALL                             R4 0 1
       86 SETTABLEKS                       R4 R3 K19 ["OnGroupOptionsChanged"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R4 R5 K30 ["new"]
       91 CALL                             R4 0 1
       92 SETTABLEKS                       R4 R3 K20 ["OnShowScopeOptionsChanged"]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R4 R5 K30 ["new"]
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K21 ["OnToggleSetChanged"]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R4 R5 K30 ["new"]
      103 CALL                             R4 0 1
      104 SETTABLEKS                       R4 R3 K22 ["OnScopeNotificationsChanged"]
      106 GETUPVAL                         R5 0
      107 GETTABLEKS                       R4 R5 K30 ["new"]
      109 CALL                             R4 0 1
      110 SETTABLEKS                       R4 R3 K23 ["OnHistoryChanged"]
      112 GETUPVAL                         R5 0
      113 GETTABLEKS                       R4 R5 K30 ["new"]
      115 CALL                             R4 0 1
      116 SETTABLEKS                       R4 R3 K24 ["OnRestoreSearchState"]
      118 GETUPVAL                         R6 1
      119 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      121 MOVE                             R5 R3
      122 GETIMPORT                        R4 K32 [setmetatable]
      124 CALL                             R4 2 0
      125 GETUPVAL                         R4 2
      126 CALL                             R4 0 1
      127 JUMPIFNOT                        R4 ; [+35]
      128 GETUPVAL                         R5 3
      129 GETTABLEKS                       R4 R5 K33 ["asList"]
      131 GETUPVAL                         R7 3
      132 GETTABLEKS                       R5 R7 K34 ["SidebarHeader"]
      134 CALL                             R4 1 3
      135 FORGPREP                         R4
      136 GETTABLEKS                       R9 R3 K5 ["_headers"]
      138 DUPTABLE                         R10 K38 [{"Type", "Name", "Id", "Uid"}]
      139 GETUPVAL                         R13 3
      140 GETTABLEKS                       R12 R13 K39 ["ScopeType"]
      142 GETTABLEKS                       R11 R12 K40 ["Header"]
      144 SETTABLEKS                       R11 R10 K35 ["Type"]
      146 SETTABLEKS                       R8 R10 K36 ["Name"]
      148 SETTABLEKS                       R7 R10 K37 ["Id"]
      150 GETUPVAL                         R11 4
      151 GETUPVAL                         R14 3
      152 GETTABLEKS                       R13 R14 K39 ["ScopeType"]
      154 GETTABLEKS                       R12 R13 K40 ["Header"]
      156 MOVE                             R13 R7
      157 CALL                             R11 2 1
      158 SETTABLEKS                       R11 R10 K29 ["Uid"]
      160 SETTABLE                         R10 R9 R8
      161 FORGLOOP                         R4 2 ; [-26]
      163 GETTABLEKS                       R5 R3 K2 ["_pluginController"]
      165 NAMECALL                         R5 R5 K41 ["getGameInfo"]
      167 CALL                             R5 1 1
      168 GETTABLEKS                       R4 R5 K37 ["Id"]
      170 JUMPIFEQKN                       R4 K42 [0] ; [+4]
      172 NAMECALL                         R4 R3 K43 ["_generateProjectCustomScopes"]
      174 CALL                             R4 1 0
      175 NAMECALL                         R4 R3 K44 ["_addRecentUploads"]
      177 CALL                             R4 1 0
      178 GETUPVAL                         R4 2
      179 CALL                             R4 0 1
      180 JUMPIFNOT                        R4 ; [+4]
      181 NAMECALL                         R4 R3 K45 ["_updateRenderTree"]
      183 CALL                             R4 1 0
      184 JUMP                             ; [+3]
      185 NAMECALL                         R4 R3 K46 ["_createExplorerItems"]
      187 CALL                             R4 1 0
      188 GETTABLEKS                       R5 R3 K16 ["_connections"]
      190 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      192 GETTABLEKS                       R6 R7 K47 ["OnGameInfoFetched"]
      194 NEWCLOSURE                       R8 P0
      195 CAPTURE                          VAL R3
      196 CAPTURE                          UPVAL U2
      197 NAMECALL                         R6 R6 K48 ["Connect"]
      199 CALL                             R6 2 -1
      200 FASTCALL                         TABLE_INSERT ; [+2]
      201 GETIMPORT                        R4 K51 [table.insert]
      203 CALL                             R4 -1 0
      204 GETTABLEKS                       R5 R3 K16 ["_connections"]
      206 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      208 GETTABLEKS                       R6 R7 K52 ["OnNewAssetFetched"]
      210 NEWCLOSURE                       R8 P1
      211 CAPTURE                          VAL R3
      212 CAPTURE                          UPVAL U3
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          UPVAL U2
      215 NAMECALL                         R6 R6 K48 ["Connect"]
      217 CALL                             R6 2 -1
      218 FASTCALL                         TABLE_INSERT ; [+2]
      219 GETIMPORT                        R4 K51 [table.insert]
      221 CALL                             R4 -1 0
      222 GETTABLEKS                       R5 R3 K16 ["_connections"]
      224 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      226 GETTABLEKS                       R6 R7 K53 ["OnCurrentScopeChanged"]
      228 NEWCLOSURE                       R8 P2
      229 CAPTURE                          VAL R3
      230 CAPTURE                          UPVAL U2
      231 NAMECALL                         R6 R6 K48 ["Connect"]
      233 CALL                             R6 2 -1
      234 FASTCALL                         TABLE_INSERT ; [+2]
      235 GETIMPORT                        R4 K51 [table.insert]
      237 CALL                             R4 -1 0
      238 NAMECALL                         R4 R3 K54 ["refreshScopes"]
      240 CALL                             R4 1 0
      241 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADB                            R5 1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 RETURN                           R1 1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_scopes"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_visibleInventories"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_selection"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["_expansion"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnExplorerItemsChanged"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["OnGroupOptionsChanged"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnExpansionChanged"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnHistoryChanged"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["OnRestoreSearchState"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R2 R0 K10 ["_connections"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K10 ["_connections"]
       37 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_expansion"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQ                      R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R2 ; [+13]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K1 ["getScopeWithUid"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETTABLEKS                       R6 R3 K2 ["Children"]
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 NAMECALL                         R4 R0 K3 ["fetchFolders"]
       19 CALL                             R4 2 0
       20 GETTABLEKS                       R3 R0 K0 ["_expansion"]
       22 SETTABLE                         R2 R3 R1
       23 GETTABLEKS                       R3 R0 K4 ["OnExpansionChanged"]
       25 GETIMPORT                        R5 K7 [table.clone]
       27 GETTABLEKS                       R6 R0 K0 ["_expansion"]
       29 CALL                             R5 1 -1
       30 NAMECALL                         R3 R3 K8 ["Fire"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["Parent"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R0 K1 ["_scopes"]
        5 GETTABLEKS                       R4 R1 K0 ["Parent"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R4 R1 K0 ["Parent"]
       12 LOADB                            R5 1
       13 NAMECALL                         R2 R0 K2 ["_setExpansion"]
       15 CALL                             R2 3 0
       16 GETTABLEKS                       R3 R0 K1 ["_scopes"]
       18 GETTABLEKS                       R4 R1 K0 ["Parent"]
       20 GETTABLE                         R2 R3 R4
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R0 K3 ["_expandAncestorsRecursive"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_expansion"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K1 ["Collapsing scope with ID %*"]
        6 MOVE                             R6 R1
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 CALL                             R2 1 0
       12 MOVE                             R4 R1
       13 LOADNIL                          R5
       14 NAMECALL                         R2 R0 K3 ["_setExpansion"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 0
       19 LOADK                            R4 K4 ["Expanding scope with ID %*"]
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R4 K2 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 MOVE                             R4 R1
       27 LOADB                            R5 1
       28 NAMECALL                         R2 R0 K3 ["_setExpansion"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        4 NAMECALL                         R2 R2 K1 ["getGameInfo"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R6 R0 K2 ["_headers"]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       12 GETTABLEKS                       R7 R8 K4 ["Recent"]
       14 GETTABLE                         R5 R6 R7
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [table.insert]
       20 CALL                             R3 2 0
       21 MOVE                             R4 R1
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K8 ["RecentUploads"]
       25 GETTABLEKS                       R7 R8 K9 ["Uid"]
       27 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       29 CALL                             R5 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R3 K7 [table.insert]
       33 CALL                             R3 -1 0
       34 GETTABLEKS                       R3 R2 K11 ["Id"]
       36 JUMPIFEQKN                       R3 K12 [0] ; [+49]
       38 GETTABLEKS                       R6 R0 K2 ["_headers"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       43 GETTABLEKS                       R7 R8 K13 ["Project"]
       45 GETTABLE                         R5 R6 R7
       46 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       48 MOVE                             R4 R1
       49 GETIMPORT                        R3 K7 [table.insert]
       51 CALL                             R3 2 0
       52 MOVE                             R4 R1
       53 GETUPVAL                         R7 2
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       57 GETTABLEKS                       R8 R9 K15 ["ProjectShared"]
       59 GETTABLEKS                       R9 R2 K11 ["Id"]
       61 CALL                             R7 2 -1
       62 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       64 CALL                             R5 -1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R3 K7 [table.insert]
       68 CALL                             R3 -1 0
       69 MOVE                             R4 R1
       70 GETUPVAL                         R7 2
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       74 GETTABLEKS                       R8 R9 K16 ["ProjectPlaces"]
       76 GETTABLEKS                       R9 R2 K11 ["Id"]
       78 CALL                             R7 2 -1
       79 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       81 CALL                             R5 -1 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R3 K7 [table.insert]
       85 CALL                             R3 -1 0
       86 GETTABLEKS                       R6 R0 K2 ["_headers"]
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       91 GETTABLEKS                       R7 R8 K17 ["Inventories"]
       93 GETTABLE                         R5 R6 R7
       94 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       96 MOVE                             R4 R1
       97 GETIMPORT                        R3 K7 [table.insert]
       99 CALL                             R3 2 0
      100 MOVE                             R4 R1
      101 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
      103 NAMECALL                         R5 R5 K18 ["getUser"]
      105 CALL                             R5 1 -1
      106 FASTCALL                         TABLE_INSERT ; [+2]
      107 GETIMPORT                        R3 K7 [table.insert]
      109 CALL                             R3 -1 0
      110 NAMECALL                         R3 R0 K19 ["getVisibleInventories"]
      112 CALL                             R3 1 3
      113 FORGPREP                         R3
      114 MOVE                             R10 R7
      115 NAMECALL                         R8 R0 K10 ["getScopeWithUid"]
      117 CALL                             R8 2 1
      118 GETTABLEKS                       R9 R8 K20 ["Type"]
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R11 R12 K14 ["ScopeType"]
      123 GETTABLEKS                       R10 R11 K21 ["Group"]
      125 JUMPIFNOTEQ                      R9 R10 ; [+8]
      127 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      129 MOVE                             R10 R1
      130 MOVE                             R11 R8
      131 GETIMPORT                        R9 K7 [table.insert]
      133 CALL                             R9 2 0
      134 FORGLOOP                         R3 2 ; [-21]
      136 SETTABLEKS                       R1 R0 K22 ["_explorerItems"]
      138 GETTABLEKS                       R3 R0 K23 ["OnExplorerItemsChanged"]
      140 GETTABLEKS                       R5 R0 K22 ["_explorerItems"]
      142 NAMECALL                         R3 R3 K24 ["Fire"]
      144 CALL                             R3 2 0
      145 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["_projectCustom"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R0 K3 ["_scopes"]
       12 LOADNIL                          R8
       13 SETTABLE                         R8 R7 R5
       14 FORGLOOP                         R2 2 ; [-5]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R0 K2 ["_projectCustom"]
       20 GETUPVAL                         R2 0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 DUPTABLE                         R7 K8 [{"Name", "Type", "Id", "Uid"}]
       25 GETTABLEKS                       R8 R1 K4 ["Name"]
       27 SETTABLEKS                       R8 R7 K4 ["Name"]
       29 SETTABLEKS                       R6 R7 K5 ["Type"]
       31 GETTABLEKS                       R8 R1 K6 ["Id"]
       33 SETTABLEKS                       R8 R7 K6 ["Id"]
       35 GETUPVAL                         R8 1
       36 MOVE                             R9 R6
       37 GETTABLEKS                       R10 R1 K6 ["Id"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K7 ["Uid"]
       42 GETTABLEKS                       R8 R0 K2 ["_projectCustom"]
       44 GETTABLEKS                       R9 R7 K7 ["Uid"]
       46 LOADB                            R10 1
       47 SETTABLE                         R10 R8 R9
       48 GETTABLEKS                       R8 R0 K3 ["_scopes"]
       50 GETTABLEKS                       R9 R7 K7 ["Uid"]
       52 SETTABLE                         R7 R8 R9
       53 FORGLOOP                         R2 2 ; [-30]
       55 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K2 ["ScopeType"]
        9 GETTABLEKS                       R5 R6 K3 ["ProjectPlaces"]
       11 GETTABLEKS                       R6 R1 K4 ["Id"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R2 R0 K5 ["getScopeWithUid"]
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        4 NAMECALL                         R2 R2 K1 ["getGameInfo"]
        6 CALL                             R2 1 1
        7 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
       11 GETTABLEKS                       R6 R7 K4 ["Recent"]
       13 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [table.insert]
       20 CALL                             R3 2 0
       21 DUPTABLE                         R5 K9 [{"Scope"}]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K10 ["RecentUploads"]
       25 SETTABLEKS                       R6 R5 K8 ["Scope"]
       27 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R3 K7 [table.insert]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R2 K11 ["Id"]
       35 JUMPIFEQKN                       R3 K12 [0] ; [+54]
       37 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
       38 GETTABLEKS                       R6 R2 K13 ["Name"]
       40 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       42 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       44 MOVE                             R4 R1
       45 GETIMPORT                        R3 K7 [table.insert]
       47 CALL                             R3 2 0
       48 DUPTABLE                         R5 K9 [{"Scope"}]
       49 GETUPVAL                         R8 2
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K14 ["ScopeType"]
       53 GETTABLEKS                       R9 R10 K15 ["ProjectShared"]
       55 GETTABLEKS                       R10 R2 K11 ["Id"]
       57 CALL                             R8 2 -1
       58 NAMECALL                         R6 R0 K16 ["getScopeWithUid"]
       60 CALL                             R6 -1 1
       61 SETTABLEKS                       R6 R5 K8 ["Scope"]
       63 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       65 MOVE                             R4 R1
       66 GETIMPORT                        R3 K7 [table.insert]
       68 CALL                             R3 2 0
       69 DUPTABLE                         R5 K9 [{"Scope"}]
       70 GETUPVAL                         R8 2
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R10 R11 K14 ["ScopeType"]
       74 GETTABLEKS                       R9 R10 K17 ["ProjectPlaces"]
       76 GETTABLEKS                       R10 R2 K11 ["Id"]
       78 CALL                             R8 2 -1
       79 NAMECALL                         R6 R0 K16 ["getScopeWithUid"]
       81 CALL                             R6 -1 1
       82 SETTABLEKS                       R6 R5 K8 ["Scope"]
       84 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       86 MOVE                             R4 R1
       87 GETIMPORT                        R3 K7 [table.insert]
       89 CALL                             R3 2 0
       90 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
       94 GETTABLEKS                       R6 R7 K18 ["User"]
       96 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       98 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      100 MOVE                             R4 R1
      101 GETIMPORT                        R3 K7 [table.insert]
      103 CALL                             R3 2 0
      104 DUPTABLE                         R5 K9 [{"Scope"}]
      105 GETTABLEKS                       R6 R0 K0 ["_pluginController"]
      107 NAMECALL                         R6 R6 K19 ["getUser"]
      109 CALL                             R6 1 1
      110 SETTABLEKS                       R6 R5 K8 ["Scope"]
      112 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      114 MOVE                             R4 R1
      115 GETIMPORT                        R3 K7 [table.insert]
      117 CALL                             R3 2 0
      118 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
      119 GETUPVAL                         R8 0
      120 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
      122 GETTABLEKS                       R6 R7 K20 ["Groups"]
      124 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
      126 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      128 MOVE                             R4 R1
      129 GETIMPORT                        R3 K7 [table.insert]
      131 CALL                             R3 2 0
      132 NAMECALL                         R3 R0 K21 ["getVisibleInventories"]
      134 CALL                             R3 1 3
      135 FORGPREP                         R3
      136 MOVE                             R10 R7
      137 NAMECALL                         R8 R0 K16 ["getScopeWithUid"]
      139 CALL                             R8 2 1
      140 GETTABLEKS                       R9 R8 K22 ["Type"]
      142 GETUPVAL                         R12 0
      143 GETTABLEKS                       R11 R12 K14 ["ScopeType"]
      145 GETTABLEKS                       R10 R11 K23 ["Group"]
      147 JUMPIFNOTEQ                      R9 R10 ; [+10]
      149 DUPTABLE                         R11 K9 [{"Scope"}]
      150 SETTABLEKS                       R8 R11 K8 ["Scope"]
      152 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      154 MOVE                             R10 R1
      155 GETIMPORT                        R9 K7 [table.insert]
      157 CALL                             R9 2 0
      158 FORGLOOP                         R3 2 ; [-23]
      160 SETTABLEKS                       R1 R0 K24 ["_explorerItems"]
      162 GETTABLEKS                       R3 R0 K25 ["OnExplorerItemsChanged"]
      164 GETTABLEKS                       R5 R0 K24 ["_explorerItems"]
      166 NAMECALL                         R3 R3 K26 ["Fire"]
      168 CALL                             R3 2 0
      169 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R4 1
        1 JUMPIFEQKNIL                     R2 ; [+5]
        3 JUMPIFEQKB                       R2 TRUE ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["hasNotif must be true or nil"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETTABLEKS                       R4 R0 K3 ["_newItemNotifs"]
       15 GETTABLE                         R3 R4 R1
       16 JUMPIFEQ                         R2 R3 ; [+14]
       18 GETTABLEKS                       R3 R0 K3 ["_newItemNotifs"]
       20 SETTABLE                         R2 R3 R1
       21 GETTABLEKS                       R3 R0 K4 ["OnScopeNotificationsChanged"]
       23 GETIMPORT                        R5 K7 [table.clone]
       25 GETTABLEKS                       R6 R0 K3 ["_newItemNotifs"]
       27 CALL                             R5 1 -1
       28 NAMECALL                         R3 R3 K8 ["Fire"]
       30 CALL                             R3 -1 0
       31 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_newItemNotifs"]
        2 GETTABLE                         R2 R3 R1
        3 MOVE                             R5 R1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R6
        6 JUMP                             ; [+1]
        7 LOADB                            R6 1
        8 NAMECALL                         R3 R0 K1 ["_setNewItemNotif"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_visibleInventories"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_scopes"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["RecentUploads"]
        5 GETTABLEKS                       R2 R3 K2 ["Uid"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["RecentUploads"]
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getUser"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K2 ["_scopes"]
        7 GETTABLEKS                       R3 R1 K3 ["Uid"]
        9 SETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R3 R0 K4 ["_visibleInventories"]
       12 GETTABLEKS                       R4 R1 K3 ["Uid"]
       14 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       16 GETIMPORT                        R2 K7 [table.insert]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
       21 NAMECALL                         R2 R2 K8 ["getGameInfo"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R2 K9 ["Id"]
       26 JUMPIFEQKN                       R3 K10 [0] ; [+9]
       28 GETTABLEKS                       R3 R0 K2 ["_scopes"]
       30 GETTABLEKS                       R4 R2 K3 ["Uid"]
       32 SETTABLE                         R2 R3 R4
       33 NAMECALL                         R3 R0 K11 ["_generateProjectCustomScopes"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R8
        8 MOVE                             R11 R2
        9 CALL                             R9 2 1
       10 GETTABLEKS                       R12 R9 K0 ["Uid"]
       12 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       14 MOVE                             R11 R3
       15 GETIMPORT                        R10 K3 [table.insert]
       17 CALL                             R10 2 0
       18 GETTABLEKS                       R10 R0 K4 ["_scopes"]
       20 GETTABLEKS                       R11 R9 K0 ["Uid"]
       22 SETTABLE                         R9 R10 R11
       23 FORGLOOP                         R4 2 ; [-18]
       25 MOVE                             R6 R3
       26 NAMECALL                         R4 R0 K5 ["_sortChildrenByName"]
       28 CALL                             R4 2 0
       29 JUMPIFNOT                        R2 ; [+9]
       30 GETTABLEKS                       R5 R0 K4 ["_scopes"]
       32 GETTABLE                         R4 R5 R2
       33 JUMPIFNOT                        R4 ; [+5]
       34 GETTABLEKS                       R5 R0 K4 ["_scopes"]
       36 GETTABLE                         R4 R5 R2
       37 SETTABLEKS                       R3 R4 K6 ["Children"]
       39 RETURN                           R0 0

PROTO_21:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getScopeRoot"]
        3 CALL                             R3 2 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R0 K0 ["getScopeRoot"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R3 ; [+13]
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETTABLEKS                       R5 R3 K1 ["Uid"]
       12 GETTABLEKS                       R6 R4 K1 ["Uid"]
       14 JUMPIFEQ                         R5 R6 ; [+7]
       16 GETTABLEKS                       R5 R0 K2 ["_pluginController"]
       18 MOVE                             R7 R4
       19 NAMECALL                         R5 R5 K3 ["updateInventoryFolderReady"]
       21 CALL                             R5 2 0
       22 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["ScopeType"]
        5 GETTABLEKS                       R3 R4 K2 ["Folder"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETTABLEKS                       R2 R1 K3 ["Path"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R1 K3 ["Path"]
       16 CALL                             R2 1 1
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R0 K4 ["getScopeWithUid"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_23:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["getScopeWithUid"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+16]
        5 GETTABLEKS                       R4 R3 K1 ["Parent"]
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETTABLEKS                       R4 R3 K1 ["Parent"]
       10 JUMPIFNOTEQ                      R4 R1 ; [+3]
       12 LOADB                            R4 1
       13 RETURN                           R4 1
       14 GETTABLEKS                       R6 R3 K1 ["Parent"]
       16 NAMECALL                         R4 R0 K0 ["getScopeWithUid"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 JUMPBACK                         ; [-17]
       21 LOADB                            R4 0
       22 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NewFolderUid"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K1 ["Trying to fetch $%* folder children."]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K2 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 2
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K3 ["getScopeWithUid"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeRoot"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["_pluginController"]
        9 NAMECALL                         R1 R1 K2 ["getUser"]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_26:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R8 R5
        6 MOVE                             R9 R4
        7 NAMECALL                         R6 R6 K0 ["convertFoldersToScopes"]
        9 CALL                             R6 3 0
       10 FORGLOOP                         R1 2 ; [-7]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K1 ["_updateRenderTree"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching folders: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 LOADK                            R3 K2 ["WARN"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["collectArray"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K1 ["map"]
       12 MOVE                             R4 R2
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R0 K2 ["_networking"]
       18 DUPTABLE                         R6 K5 [{"Scopes", "Roots"}]
       19 SETTABLEKS                       R2 R6 K3 ["Scopes"]
       21 SETTABLEKS                       R3 R6 K4 ["Roots"]
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R0
       25 DUPCLOSURE                       R8 K6 [PROTO_27]
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R4 R4 K7 ["fetchFoldersAsync"]
       29 CALL                             R4 4 0
       30 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["NewFolderUid"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+8]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K1 ["NewFolderUid"]
       18 NAMECALL                         R2 R0 K2 ["_removeScope"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0
       22 NAMECALL                         R2 R0 K3 ["_updateRenderTree"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_31:
        0 LOADNIL                          R3
        1 JUMPIF                           R1 ; [+52]
        2 MOVE                             R4 R2
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R0 K0 ["_pluginController"]
        6 NAMECALL                         R4 R4 K1 ["getCurrentScope"]
        8 CALL                             R4 1 1
        9 DUPTABLE                         R5 K9 [{"Name", "Type", "Id", "Uid", "Path", "Parent", "Children"}]
       10 LOADK                            R6 K10 [""]
       11 SETTABLEKS                       R6 R5 K2 ["Name"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K11 ["ScopeType"]
       16 GETTABLEKS                       R6 R7 K12 ["Folder"]
       18 SETTABLEKS                       R6 R5 K3 ["Type"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K13 ["NewFolderId"]
       23 SETTABLEKS                       R6 R5 K4 ["Id"]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K14 ["NewFolderUid"]
       28 SETTABLEKS                       R6 R5 K5 ["Uid"]
       30 LOADK                            R6 K10 [""]
       31 SETTABLEKS                       R6 R5 K6 ["Path"]
       33 GETTABLEKS                       R6 R4 K5 ["Uid"]
       35 SETTABLEKS                       R6 R5 K7 ["Parent"]
       37 NEWTABLE                         R6 0 0
       39 SETTABLEKS                       R6 R5 K8 ["Children"]
       41 MOVE                             R3 R5
       42 GETTABLEKS                       R5 R0 K15 ["_scopes"]
       44 GETTABLEKS                       R6 R3 K5 ["Uid"]
       46 SETTABLE                         R3 R5 R6
       47 MOVE                             R7 R4
       48 GETTABLEKS                       R8 R3 K5 ["Uid"]
       50 NAMECALL                         R5 R0 K16 ["_addScopeToChildren"]
       52 CALL                             R5 3 0
       53 JUMP                             ; [+1]
       54 MOVE                             R3 R1
       55 GETTABLEKS                       R5 R0 K17 ["_expansion"]
       57 GETTABLEKS                       R6 R3 K7 ["Parent"]
       59 GETTABLE                         R4 R5 R6
       60 JUMPIF                           R4 ; [+6]
       61 GETTABLEKS                       R6 R3 K7 ["Parent"]
       63 LOADB                            R7 1
       64 NAMECALL                         R4 R0 K18 ["_setExpansion"]
       66 CALL                             R4 3 0
       67 GETTABLEKS                       R4 R3 K5 ["Uid"]
       69 SETTABLEKS                       R4 R0 K19 ["_stagedFolder"]
       71 NAMECALL                         R4 R0 K20 ["_updateRenderTree"]
       73 CALL                             R4 1 0
       74 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["_scopes"]
        2 GETTABLEKS                       R3 R1 K1 ["Uid"]
        4 SETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        7 GETTABLEKS                       R4 R1 K2 ["Parent"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIFNOT                        R2 ; [+6]
       11 MOVE                             R5 R2
       12 GETTABLEKS                       R6 R1 K1 ["Uid"]
       14 NAMECALL                         R3 R0 K3 ["_addScopeToChildren"]
       16 CALL                             R3 3 0
       17 NAMECALL                         R3 R0 K4 ["_updateRenderTree"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLEKS                       R4 R1 K1 ["Uid"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R1 K2 ["Name"]
        9 SETTABLEKS                       R3 R2 K2 ["Name"]
       11 GETTABLEKS                       R3 R2 K3 ["Parent"]
       13 JUMPIFNOT                        R3 ; [+16]
       14 GETTABLEKS                       R4 R0 K0 ["_scopes"]
       16 GETTABLEKS                       R5 R2 K3 ["Parent"]
       18 GETTABLE                         R3 R4 R5
       19 JUMPIFNOT                        R3 ; [+10]
       20 GETTABLEKS                       R7 R0 K0 ["_scopes"]
       22 GETTABLEKS                       R8 R2 K3 ["Parent"]
       24 GETTABLE                         R6 R7 R8
       25 GETTABLEKS                       R5 R6 K4 ["Children"]
       27 NAMECALL                         R3 R0 K5 ["_sortChildrenByName"]
       29 CALL                             R3 2 0
       30 NAMECALL                         R3 R0 K6 ["_updateRenderTree"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["_removeScope"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_scopes"]
        3 GETTABLE                         R2 R3 R0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["_scopes"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFNOT                        R2 ; [+16]
        9 JUMPIFNOT                        R3 ; [+15]
       10 GETTABLEKS                       R5 R2 K1 ["Name"]
       12 NAMECALL                         R5 R5 K2 ["lower"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R6 R3 K1 ["Name"]
       17 NAMECALL                         R6 R6 K2 ["lower"]
       19 CALL                             R6 1 1
       20 JUMPIFLT                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 GETUPVAL                         R4 1
       26 LOADK                            R6 K3 ["Cannot sort children because scope with UID $%* does not exist."]
       27 JUMPIF                           R2 ; [+2]
       28 MOVE                             R8 R0
       29 JUMP                             ; [+1]
       30 MOVE                             R8 R1
       31 NAMECALL                         R6 R6 K4 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 CALL                             R4 1 0
       36 LOADB                            R4 0
       37 RETURN                           R4 1

PROTO_36:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 0
        7 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R3 R1 K0 ["Children"]
        2 JUMPIF                           R3 ; [+4]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R1 K0 ["Children"]
        7 GETTABLEKS                       R4 R1 K0 ["Children"]
        9 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       11 MOVE                             R5 R2
       12 GETIMPORT                        R3 K3 [table.insert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R5 R1 K0 ["Children"]
       17 NAMECALL                         R3 R0 K4 ["_sortChildrenByName"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K1 ["Children"]
        8 JUMPIFNOT                        R3 ; [+18]
        9 GETTABLEKS                       R4 R2 K1 ["Children"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+13]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K2 ["Remove scope %* even though it has children"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K3 ["format"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 1
       24 CALL                             R3 0 1
       25 JUMPIF                           R3 ; [+1]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R0 K0 ["_scopes"]
       29 GETTABLEKS                       R5 R2 K4 ["Parent"]
       31 GETTABLE                         R3 R4 R5
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETTABLEKS                       R4 R3 K1 ["Children"]
       35 JUMPIF                           R4 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K5 ["filter"]
       40 GETTABLEKS                       R5 R3 K1 ["Children"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R1
       44 CALL                             R4 2 1
       45 LENGTH                           R6 R4
       46 LOADN                            R7 0
       47 JUMPIFNOTLT                      R7 R6 ; [+3]
       49 MOVE                             R5 R4
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 SETTABLEKS                       R5 R3 K1 ["Children"]
       54 GETTABLEKS                       R5 R0 K0 ["_scopes"]
       56 LOADNIL                          R6
       57 SETTABLE                         R6 R5 R1
       58 NAMECALL                         R5 R0 K6 ["_updateRenderTree"]
       60 CALL                             R5 1 0
       61 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
       63 NAMECALL                         R6 R6 K8 ["getCurrentScope"]
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R5 R6 K9 ["Uid"]
       68 JUMPIFEQ                         R5 R1 ; [+2]
       70 RETURN                           R0 0
       71 JUMPIFNOT                        R3 ; [+7]
       72 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       74 MOVE                             R7 R3
       75 NAMECALL                         R5 R5 K10 ["setCurrentScope"]
       77 CALL                             R5 2 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R6 R2 K11 ["Type"]
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R8 R9 K12 ["ScopeType"]
       84 GETTABLEKS                       R7 R8 K13 ["Folder"]
       86 JUMPIFNOTEQ                      R6 R7 ; [+9]
       88 GETTABLEKS                       R6 R2 K14 ["Path"]
       90 JUMPIFNOT                        R6 ; [+5]
       91 MOVE                             R7 R2
       92 NAMECALL                         R5 R0 K15 ["getScopeRoot"]
       94 CALL                             R5 2 1
       95 JUMP                             ; [+5]
       96 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       98 NAMECALL                         R5 R5 K16 ["getUser"]
      100 CALL                             R5 1 1
      101 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
      103 MOVE                             R8 R5
      104 NAMECALL                         R6 R6 K10 ["setCurrentScope"]
      106 CALL                             R6 2 0
      107 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_41:
        0 MOVE                             R7 R1
        1 NAMECALL                         R5 R0 K0 ["getScopeWithUid"]
        3 CALL                             R5 2 1
        4 MOVE                             R8 R2
        5 NAMECALL                         R6 R0 K0 ["getScopeWithUid"]
        7 CALL                             R6 2 1
        8 LOADB                            R7 0
        9 MOVE                             R8 R3
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 GETTABLE                         R13 R4 R12
       14 JUMPIF                           R13 ; [+47]
       15 GETIMPORT                        R13 K3 [string.find]
       17 NAMECALL                         R14 R12 K4 ["lower"]
       19 CALL                             R14 1 1
       20 LOADK                            R15 K5 ["folder"]
       21 CALL                             R13 2 1
       22 JUMPIFNOT                        R13 ; [+39]
       23 GETUPVAL                         R13 0
       24 MOVE                             R14 R12
       25 CALL                             R13 1 1
       26 MOVE                             R16 R13
       27 NAMECALL                         R14 R0 K0 ["getScopeWithUid"]
       29 CALL                             R14 2 1
       30 JUMPIF                           R14 ; [+10]
       31 GETUPVAL                         R15 1
       32 LOADK                            R17 K6 ["No scope found for folder UID $%*, skipping move for path $%*"]
       33 MOVE                             R19 R13
       34 MOVE                             R20 R12
       35 NAMECALL                         R17 R17 K7 ["format"]
       37 CALL                             R17 3 1
       38 MOVE                             R16 R17
       39 CALL                             R15 1 0
       40 JUMP                             ; [+21]
       41 GETUPVAL                         R16 2
       42 GETTABLEKS                       R15 R16 K8 ["filter"]
       44 GETTABLEKS                       R16 R5 K9 ["Children"]
       46 JUMPIF                           R16 ; [+2]
       47 NEWTABLE                         R16 0 0
       49 NEWCLOSURE                       R17 P0
       50 CAPTURE                          VAL R13
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R5 K9 ["Children"]
       54 MOVE                             R17 R6
       55 MOVE                             R18 R13
       56 NAMECALL                         R15 R0 K10 ["_addScopeToChildren"]
       58 CALL                             R15 3 0
       59 SETTABLEKS                       R2 R14 K11 ["Parent"]
       61 LOADB                            R7 1
       62 FORGLOOP                         R8 2 ; [-50]
       64 JUMPIFNOT                        R7 ; [+3]
       65 NAMECALL                         R8 R0 K12 ["_updateRenderTree"]
       67 CALL                             R8 1 0
       68 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["getScopeWithUid"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R2 R3 K1 ["Name"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K0 ["getScopeWithUid"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R3 R4 K1 ["Name"]
       14 GETIMPORT                        R5 K4 [string.lower]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 GETIMPORT                        R6 K4 [string.lower]
       20 MOVE                             R7 R3
       21 CALL                             R6 1 1
       22 JUMPIFLT                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1

PROTO_43:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K0 ["_scopes"]
        7 GETTABLEKS                       R7 R5 K1 ["Uid"]
        9 SETTABLE                         R5 R6 R7
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K2 ["_visibleInventories"]
       13 GETTABLEKS                       R8 R5 K1 ["Uid"]
       15 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       17 GETIMPORT                        R6 K5 [table.insert]
       19 CALL                             R6 2 0
       20 FORGLOOP                         R1 2 ; [-17]
       22 GETIMPORT                        R1 K7 [table.sort]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K2 ["_visibleInventories"]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U0
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 1
       31 CALL                             R1 0 1
       32 JUMPIFNOT                        R1 ; [+39]
       33 GETUPVAL                         R1 0
       34 NAMECALL                         R1 R1 K8 ["_updateRenderTree"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 2
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K9 ["ScopeType"]
       41 GETTABLEKS                       R2 R3 K10 ["ProjectShared"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K11 ["_pluginController"]
       46 NAMECALL                         R4 R4 K12 ["getGameInfo"]
       48 CALL                             R4 1 1
       49 GETTABLEKS                       R3 R4 K13 ["Id"]
       51 CALL                             R1 2 1
       52 GETUPVAL                         R2 0
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R4 R5 K14 ["append"]
       56 GETIMPORT                        R5 K16 [table.clone]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K2 ["_visibleInventories"]
       61 CALL                             R5 1 1
       62 NEWTABLE                         R6 0 1
       64 MOVE                             R7 R1
       65 SETLIST                          R6 R7 1 [1]
       67 CALL                             R4 2 -1
       68 NAMECALL                         R2 R2 K17 ["fetchFolders"]
       70 CALL                             R2 -1 0
       71 JUMP                             ; [+4]
       72 GETUPVAL                         R1 0
       73 NAMECALL                         R1 R1 K18 ["_createExplorerItems"]
       75 CALL                             R1 1 0
       76 GETUPVAL                         R1 0
       77 NAMECALL                         R1 R1 K19 ["updateScopeOptions"]
       79 CALL                             R1 1 0
       80 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_45:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_scopes"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_visibleInventories"]
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+14]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["_expansion"]
       15 GETTABLEKS                       R1 R0 K3 ["OnExpansionChanged"]
       17 GETIMPORT                        R3 K6 [table.clone]
       19 GETTABLEKS                       R4 R0 K2 ["_expansion"]
       21 CALL                             R3 1 -1
       22 NAMECALL                         R1 R1 K7 ["Fire"]
       24 CALL                             R1 -1 0
       25 NAMECALL                         R1 R0 K8 ["_addRecentUploads"]
       27 CALL                             R1 1 0
       28 NAMECALL                         R1 R0 K9 ["_addUserAndExperienceScopes"]
       30 CALL                             R1 1 0
       31 GETTABLEKS                       R1 R0 K10 ["_networking"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 DUPCLOSURE                       R4 K11 [PROTO_44]
       40 CAPTURE                          UPVAL U4
       41 NAMECALL                         R1 R1 K12 ["fetchGroupsAsync"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_48:
        0 NAMECALL                         R2 R0 K0 ["getVisibleInventories"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 JUMPIFNOTEQ                      R6 R1 ; [+18]
        6 GETIMPORT                        R7 K3 [table.remove]
        8 GETTABLEKS                       R8 R0 K4 ["_visibleInventories"]
       10 MOVE                             R9 R5
       11 CALL                             R7 2 0
       12 GETUPVAL                         R7 0
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+4]
       15 NAMECALL                         R7 R0 K5 ["_updateRenderTree"]
       17 CALL                             R7 1 0
       18 RETURN                           R0 0
       19 NAMECALL                         R7 R0 K6 ["_createExplorerItems"]
       21 CALL                             R7 1 0
       22 RETURN                           R0 0
       23 FORGLOOP                         R2 2 ; [-20]
       25 GETTABLEKS                       R3 R0 K4 ["_visibleInventories"]
       27 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R2 K8 [table.insert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+4]
       36 NAMECALL                         R2 R0 K5 ["_updateRenderTree"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 NAMECALL                         R2 R0 K6 ["_createExplorerItems"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_50:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K1 ["toggleVisibleInventory"]
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 NAMECALL                         R1 R0 K2 ["_updateRenderTree"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 NAMECALL                         R1 R0 K3 ["_createExplorerItems"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_52:
        0 JUMPIFNOT                        R1 ; [+3]
        1 NAMECALL                         R2 R0 K0 ["_saveGroupOptions"]
        3 CALL                             R2 1 0
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R0 K1 ["_showScopeOptions"]
        7 GETTABLEKS                       R2 R0 K2 ["OnShowScopeOptionsChanged"]
        9 LOADB                            R4 0
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 2 0
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R0 K4 ["_toggleSet"]
       17 GETTABLEKS                       R2 R0 K5 ["OnToggleSetChanged"]
       19 GETIMPORT                        R4 K8 [table.clone]
       21 GETTABLEKS                       R5 R0 K4 ["_toggleSet"]
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K3 ["Fire"]
       26 CALL                             R2 -1 0
       27 NAMECALL                         R2 R0 K9 ["updateScopeOptions"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_54:
        0 GETTABLEKS                       R3 R0 K0 ["_toggleSet"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["_toggleSet"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 JUMP                             ; [+4]
        9 GETTABLEKS                       R2 R0 K0 ["_toggleSet"]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 GETTABLEKS                       R2 R0 K1 ["OnToggleSetChanged"]
       15 GETIMPORT                        R4 K4 [table.clone]
       17 GETTABLEKS                       R5 R0 K0 ["_toggleSet"]
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K5 ["Fire"]
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["getScopeWithUid"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R2 R3 K1 ["Name"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R4 K0 ["getScopeWithUid"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R3 R4 K1 ["Name"]
       14 GETIMPORT                        R5 K4 [string.lower]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 GETIMPORT                        R6 K4 [string.lower]
       20 MOVE                             R7 R3
       21 CALL                             R6 1 1
       22 JUMPIFLT                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1

PROTO_56:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_groupOptions"]
        4 GETTABLEKS                       R2 R0 K1 ["_scopes"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K2 ["Type"]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K3 ["ScopeType"]
       14 GETTABLEKS                       R8 R9 K4 ["Group"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+29]
       18 MOVE                             R7 R1
       19 JUMPIFNOT                        R7 ; [+4]
       20 JUMPIFNOTEQKS                    R1 K5 [""] ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 JUMPIFNOT                        R7 ; [+12]
       25 GETIMPORT                        R8 K8 [string.find]
       27 GETTABLEKS                       R9 R6 K9 ["Name"]
       29 NAMECALL                         R9 R9 K10 ["lower"]
       31 CALL                             R9 1 1
       32 NAMECALL                         R10 R1 K10 ["lower"]
       34 CALL                             R10 1 -1
       35 CALL                             R8 -1 1
       36 JUMPIFNOT                        R8 ; [+9]
       37 GETTABLEKS                       R9 R0 K0 ["_groupOptions"]
       39 GETTABLEKS                       R10 R6 K11 ["Uid"]
       41 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       43 GETIMPORT                        R8 K14 [table.insert]
       45 CALL                             R8 2 0
       46 FORGLOOP                         R2 2 ; [-38]
       48 GETIMPORT                        R2 K16 [table.sort]
       50 GETTABLEKS                       R3 R0 K0 ["_groupOptions"]
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          VAL R0
       54 CALL                             R2 2 0
       55 GETTABLEKS                       R2 R0 K17 ["OnGroupOptionsChanged"]
       57 GETTABLEKS                       R4 R0 K0 ["_groupOptions"]
       59 NAMECALL                         R2 R2 K18 ["Fire"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_57:
        0 NAMECALL                         R2 R0 K0 ["getVisibleInventories"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 JUMPIFNOTEQ                      R1 R6 ; [+9]
        6 GETTABLEKS                       R9 R0 K1 ["_toggleSet"]
        8 GETTABLE                         R8 R9 R1
        9 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 RETURN                           R7 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 GETTABLEKS                       R4 R0 K1 ["_toggleSet"]
       18 GETTABLE                         R3 R4 R1
       19 JUMPIFEQKB                       R3 TRUE ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R5
        6 NAMECALL                         R6 R0 K1 ["isScopeOptionChecked"]
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+2]
       10 LOADB                            R6 0
       11 RETURN                           R6 1
       12 FORGLOOP                         R1 2 ; [-8]
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_59:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_60:
        0 NAMECALL                         R1 R0 K0 ["hasAllOptionsChecked"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["_groupOptions"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R10 R6
        9 NAMECALL                         R8 R0 K2 ["isScopeOptionChecked"]
       11 CALL                             R8 2 1
       12 JUMPIFEQ                         R1 R8 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 JUMPIFNOT                        R7 ; [+13]
       17 GETTABLEKS                       R9 R0 K3 ["_toggleSet"]
       19 GETTABLE                         R8 R9 R6
       20 JUMPIFNOT                        R8 ; [+5]
       21 GETTABLEKS                       R8 R0 K3 ["_toggleSet"]
       23 LOADNIL                          R9
       24 SETTABLE                         R9 R8 R6
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R8 R0 K3 ["_toggleSet"]
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R8 R6
       30 FORGLOOP                         R2 2 ; [-23]
       32 GETTABLEKS                       R2 R0 K4 ["OnToggleSetChanged"]
       34 GETIMPORT                        R4 K7 [table.clone]
       36 GETTABLEKS                       R5 R0 K3 ["_toggleSet"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K8 ["Fire"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_61:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_62:
        0 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
        2 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+35]
        6 GETTABLEKS                       R3 R2 K2 ["ScopeUid"]
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETTABLEKS                       R3 R1 K2 ["ScopeUid"]
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETTABLEKS                       R4 R2 K2 ["ScopeUid"]
       14 GETTABLEKS                       R5 R1 K2 ["ScopeUid"]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETTABLEKS                       R4 R2 K3 ["SearchState"]
       22 JUMPIFNOT                        R4 ; [+15]
       23 GETTABLEKS                       R4 R1 K3 ["SearchState"]
       25 JUMPIFNOT                        R4 ; [+12]
       26 GETTABLEKS                       R6 R2 K3 ["SearchState"]
       28 GETTABLEKS                       R5 R6 K4 ["SearchSessionId"]
       30 GETTABLEKS                       R7 R1 K3 ["SearchState"]
       32 GETTABLEKS                       R6 R7 K4 ["SearchSessionId"]
       34 JUMPIFEQ                         R5 R6 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIF                           R3 ; [+1]
       39 JUMPIFNOT                        R4 ; [+1]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R6 R0 K1 ["_historyBufferIndex"]
       43 ADDK                             R5 R6 K5 [1]
       44 NAMECALL                         R3 R0 K6 ["_getHistoryRingIndex"]
       46 CALL                             R3 2 1
       47 GETTABLEKS                       R4 R0 K0 ["_historyRingBuffer"]
       49 SETTABLE                         R1 R4 R3
       50 SETTABLEKS                       R3 R0 K1 ["_historyBufferIndex"]
       52 GETTABLEKS                       R4 R0 K0 ["_historyRingBuffer"]
       54 GETTABLEKS                       R8 R0 K1 ["_historyBufferIndex"]
       56 ADDK                             R7 R8 K5 [1]
       57 NAMECALL                         R5 R0 K6 ["_getHistoryRingIndex"]
       59 CALL                             R5 2 1
       60 LOADNIL                          R6
       61 SETTABLE                         R6 R4 R5
       62 GETTABLEKS                       R4 R0 K7 ["OnHistoryChanged"]
       64 NAMECALL                         R4 R4 K8 ["Fire"]
       66 CALL                             R4 1 0
       67 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
        2 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
        7 SETTABLE                         R1 R3 R2
        8 GETTABLEKS                       R3 R0 K3 ["OnHistoryChanged"]
       10 NAMECALL                         R3 R3 K4 ["Fire"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_64:
        0 GETTABLEKS                       R5 R0 K0 ["_historyBufferIndex"]
        2 ADD                              R4 R5 R1
        3 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K0 ["_historyBufferIndex"]
        8 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
       10 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R3 R2 K3 ["ScopeUid"]
       15 JUMPIFNOT                        R3 ; [+30]
       16 GETTABLEKS                       R5 R2 K3 ["ScopeUid"]
       18 NAMECALL                         R3 R0 K4 ["getScopeWithUid"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+11]
       22 GETUPVAL                         R4 0
       23 LOADK                            R6 K5 ["Scope with UID %* not found in scopes"]
       24 GETTABLEKS                       R8 R2 K3 ["ScopeUid"]
       26 NAMECALL                         R6 R6 K6 ["format"]
       28 CALL                             R6 2 1
       29 MOVE                             R5 R6
       30 LOADK                            R6 K7 ["WARN"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R0 K8 ["_pluginController"]
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R4 K9 ["setCurrentScope"]
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R4 R0 K10 ["OnRestoreSearchState"]
       41 LOADNIL                          R6
       42 NAMECALL                         R4 R4 K11 ["Fire"]
       44 CALL                             R4 2 0
       45 JUMP                             ; [+15]
       46 GETTABLEKS                       R3 R2 K12 ["SearchState"]
       48 JUMPIFNOT                        R3 ; [+8]
       49 GETTABLEKS                       R3 R0 K10 ["OnRestoreSearchState"]
       51 GETTABLEKS                       R5 R2 K12 ["SearchState"]
       53 NAMECALL                         R3 R3 K11 ["Fire"]
       55 CALL                             R3 2 0
       56 JUMP                             ; [+4]
       57 GETUPVAL                         R3 0
       58 LOADK                            R4 K13 ["Invalid history item, no scope or search state"]
       59 LOADK                            R5 K7 ["WARN"]
       60 CALL                             R3 2 0
       61 GETTABLEKS                       R3 R0 K14 ["OnHistoryChanged"]
       63 NAMECALL                         R3 R3 K11 ["Fire"]
       65 CALL                             R3 1 0
       66 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        2 SUBK                             R3 R4 K0 [1]
        3 NAMECALL                         R1 R0 K2 ["_getHistoryRingIndex"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R4 R0 K3 ["_historyRingBuffer"]
        8 GETTABLE                         R3 R4 R1
        9 JUMPIFEQKNIL                     R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_66:
        0 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        2 ADDK                             R3 R4 K0 [1]
        3 NAMECALL                         R1 R0 K2 ["_getHistoryRingIndex"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R4 R0 K3 ["_historyRingBuffer"]
        8 GETTABLE                         R3 R4 R1
        9 JUMPIFEQKNIL                     R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_67:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 255
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_68:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getPlugin"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETTABLEKS                       R6 R2 K11 ["Util"]
       27 GETTABLEKS                       R5 R6 K12 ["Signal"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K11 ["Util"]
       35 GETTABLEKS                       R7 R8 K14 ["cleanConnections"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R10 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R10 K11 ["Util"]
       44 GETTABLEKS                       R8 R9 K15 ["createAccountUidFromPath"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R11 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R11 K11 ["Util"]
       53 GETTABLEKS                       R9 R10 K16 ["logIfDebug"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R10 R11 K17 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K13 ["Src"]
       67 GETTABLEKS                       R12 R13 K11 ["Util"]
       69 GETTABLEKS                       R11 R12 K18 ["createFolderUid"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K13 ["Src"]
       76 GETTABLEKS                       R13 R14 K11 ["Util"]
       78 GETTABLEKS                       R12 R13 K19 ["createScopeUid"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K13 ["Src"]
       85 GETTABLEKS                       R14 R15 K11 ["Util"]
       87 GETTABLEKS                       R13 R14 K20 ["convertFolderItemToScope"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R16 R0 K13 ["Src"]
       94 GETTABLEKS                       R15 R16 K21 ["Resources"]
       96 GETTABLEKS                       R14 R15 K22 ["Constants"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R17 R0 K13 ["Src"]
      103 GETTABLEKS                       R16 R17 K23 ["Flags"]
      105 GETTABLEKS                       R15 R16 K24 ["getFFlagAmrOrganizationFoundation"]
      107 CALL                             R14 1 1
      108 LOADK                            R17 K25 ["ExplorerController"]
      109 NAMECALL                         R15 R4 K26 ["extend"]
      111 CALL                             R15 2 1
      112 NEWTABLE                         R16 0 2
      114 GETTABLEKS                       R18 R9 K27 ["ScopeType"]
      116 GETTABLEKS                       R17 R18 K28 ["ProjectShared"]
      118 GETTABLEKS                       R19 R9 K27 ["ScopeType"]
      120 GETTABLEKS                       R18 R19 K29 ["ProjectPlaces"]
      122 SETLIST                          R16 R17 2 [1]
      124 DUPCLOSURE                       R17 K30 [PROTO_3]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R13
      131 SETTABLEKS                       R17 R15 K31 ["new"]
      133 DUPCLOSURE                       R17 K32 [PROTO_4]
      134 CAPTURE                          VAL R15
      135 SETTABLEKS                       R17 R15 K33 ["mock"]
      137 DUPCLOSURE                       R17 K34 [PROTO_5]
      138 SETTABLEKS                       R17 R15 K35 ["getIsMock"]
      140 DUPCLOSURE                       R17 K36 [PROTO_6]
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R17 R15 K37 ["destroy"]
      144 DUPCLOSURE                       R17 K38 [PROTO_7]
      145 SETTABLEKS                       R17 R15 K39 ["_setExpansion"]
      147 DUPCLOSURE                       R17 K40 [PROTO_8]
      148 SETTABLEKS                       R17 R15 K41 ["_expandAncestorsRecursive"]
      150 DUPCLOSURE                       R17 K42 [PROTO_9]
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R17 R15 K43 ["toggleExpansion"]
      154 DUPCLOSURE                       R17 K44 [PROTO_10]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R11
      158 SETTABLEKS                       R17 R15 K45 ["_updateRenderTree"]
      160 DUPCLOSURE                       R17 K46 [PROTO_11]
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R11
      163 SETTABLEKS                       R17 R15 K47 ["_generateProjectCustomScopes"]
      165 DUPCLOSURE                       R17 K48 [PROTO_12]
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R9
      168 SETTABLEKS                       R17 R15 K49 ["getProjectPlacesScope"]
      170 DUPCLOSURE                       R17 K50 [PROTO_13]
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R11
      174 SETTABLEKS                       R17 R15 K51 ["_createExplorerItems"]
      176 DUPCLOSURE                       R17 K52 [PROTO_14]
      177 SETTABLEKS                       R17 R15 K53 ["_setNewItemNotif"]
      179 DUPCLOSURE                       R17 K54 [PROTO_15]
      180 SETTABLEKS                       R17 R15 K55 ["_toggleNewItemNotif"]
      182 DUPCLOSURE                       R17 K56 [PROTO_16]
      183 SETTABLEKS                       R17 R15 K57 ["getScopeWithUid"]
      185 DUPCLOSURE                       R17 K58 [PROTO_17]
      186 SETTABLEKS                       R17 R15 K59 ["getVisibleInventories"]
      188 DUPCLOSURE                       R17 K60 [PROTO_18]
      189 CAPTURE                          VAL R13
      190 SETTABLEKS                       R17 R15 K61 ["_addRecentUploads"]
      192 DUPCLOSURE                       R17 K62 [PROTO_19]
      193 SETTABLEKS                       R17 R15 K63 ["_addUserAndExperienceScopes"]
      195 DUPCLOSURE                       R17 K64 [PROTO_20]
      196 CAPTURE                          VAL R12
      197 SETTABLEKS                       R17 R15 K65 ["convertFoldersToScopes"]
      199 DUPCLOSURE                       R17 K66 [PROTO_21]
      200 SETTABLEKS                       R17 R15 K67 ["tryUpdateInventoryFolderReady"]
      202 DUPCLOSURE                       R17 K68 [PROTO_22]
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R7
      205 SETTABLEKS                       R17 R15 K69 ["getScopeRoot"]
      207 DUPCLOSURE                       R17 K70 [PROTO_23]
      208 SETTABLEKS                       R17 R15 K71 ["isAncestor"]
      210 DUPCLOSURE                       R17 K72 [PROTO_28]
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R8
      214 SETTABLEKS                       R17 R15 K73 ["fetchFolders"]
      216 DUPCLOSURE                       R17 K74 [PROTO_29]
      217 SETTABLEKS                       R17 R15 K75 ["getStagedFolder"]
      219 DUPCLOSURE                       R17 K76 [PROTO_30]
      220 CAPTURE                          VAL R13
      221 SETTABLEKS                       R17 R15 K77 ["removeStagedFolder"]
      223 DUPCLOSURE                       R17 K78 [PROTO_31]
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R13
      226 SETTABLEKS                       R17 R15 K79 ["stageFolder"]
      228 DUPCLOSURE                       R17 K80 [PROTO_32]
      229 SETTABLEKS                       R17 R15 K81 ["handleCreatedFolder"]
      231 DUPCLOSURE                       R17 K82 [PROTO_33]
      232 SETTABLEKS                       R17 R15 K83 ["handleRenamedFolder"]
      234 DUPCLOSURE                       R17 K84 [PROTO_34]
      235 CAPTURE                          VAL R10
      236 SETTABLEKS                       R17 R15 K85 ["handleDeletedFolder"]
      238 DUPCLOSURE                       R17 K86 [PROTO_36]
      239 CAPTURE                          VAL R8
      240 SETTABLEKS                       R17 R15 K87 ["_sortChildrenByName"]
      242 DUPCLOSURE                       R17 K88 [PROTO_37]
      243 SETTABLEKS                       R17 R15 K89 ["_addScopeToChildren"]
      245 DUPCLOSURE                       R17 K90 [PROTO_39]
      246 CAPTURE                          VAL R8
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R9
      250 SETTABLEKS                       R17 R15 K91 ["_removeScope"]
      252 DUPCLOSURE                       R17 K92 [PROTO_41]
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R8
      255 CAPTURE                          VAL R1
      256 SETTABLEKS                       R17 R15 K93 ["moveScopes"]
      258 DUPCLOSURE                       R17 K94 [PROTO_45]
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R9
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R8
      264 SETTABLEKS                       R17 R15 K95 ["refreshScopes"]
      266 DUPCLOSURE                       R17 K96 [PROTO_46]
      267 SETTABLEKS                       R17 R15 K97 ["getExplorerItems"]
      269 DUPCLOSURE                       R17 K98 [PROTO_47]
      270 SETTABLEKS                       R17 R15 K99 ["getExpansion"]
      272 DUPCLOSURE                       R17 K100 [PROTO_48]
      273 CAPTURE                          VAL R14
      274 SETTABLEKS                       R17 R15 K101 ["toggleVisibleInventory"]
      276 DUPCLOSURE                       R17 K102 [PROTO_49]
      277 SETTABLEKS                       R17 R15 K103 ["getShowScopeOptions"]
      279 DUPCLOSURE                       R17 K104 [PROTO_50]
      280 SETTABLEKS                       R17 R15 K105 ["enableScopeOptions"]
      282 DUPCLOSURE                       R17 K106 [PROTO_51]
      283 CAPTURE                          VAL R14
      284 SETTABLEKS                       R17 R15 K107 ["_saveGroupOptions"]
      286 DUPCLOSURE                       R17 K108 [PROTO_52]
      287 SETTABLEKS                       R17 R15 K109 ["closeScopeOptions"]
      289 DUPCLOSURE                       R17 K110 [PROTO_53]
      290 SETTABLEKS                       R17 R15 K111 ["getGroupOptions"]
      292 DUPCLOSURE                       R17 K112 [PROTO_54]
      293 SETTABLEKS                       R17 R15 K113 ["toggleScopeOption"]
      295 DUPCLOSURE                       R17 K114 [PROTO_56]
      296 CAPTURE                          VAL R9
      297 SETTABLEKS                       R17 R15 K115 ["updateScopeOptions"]
      299 DUPCLOSURE                       R17 K116 [PROTO_57]
      300 SETTABLEKS                       R17 R15 K117 ["isScopeOptionChecked"]
      302 DUPCLOSURE                       R17 K118 [PROTO_58]
      303 SETTABLEKS                       R17 R15 K119 ["hasAllOptionsChecked"]
      305 DUPCLOSURE                       R17 K120 [PROTO_59]
      306 SETTABLEKS                       R17 R15 K121 ["getToggleSet"]
      308 DUPCLOSURE                       R17 K122 [PROTO_60]
      309 SETTABLEKS                       R17 R15 K123 ["toggleSelectAllOptions"]
      311 DUPCLOSURE                       R17 K124 [PROTO_61]
      312 SETTABLEKS                       R17 R15 K125 ["_getHistoryRingIndex"]
      314 DUPCLOSURE                       R17 K126 [PROTO_62]
      315 SETTABLEKS                       R17 R15 K127 ["addToHistory"]
      317 DUPCLOSURE                       R17 K128 [PROTO_63]
      318 SETTABLEKS                       R17 R15 K129 ["updateCurrentHistoryItem"]
      320 DUPCLOSURE                       R17 K130 [PROTO_64]
      321 CAPTURE                          VAL R8
      322 SETTABLEKS                       R17 R15 K131 ["_goToHistory"]
      324 DUPCLOSURE                       R17 K132 [PROTO_65]
      325 SETTABLEKS                       R17 R15 K133 ["getHistoryAtStart"]
      327 DUPCLOSURE                       R17 K134 [PROTO_66]
      328 SETTABLEKS                       R17 R15 K135 ["getHistoryAtEnd"]
      330 DUPCLOSURE                       R17 K136 [PROTO_67]
      331 SETTABLEKS                       R17 R15 K137 ["backHistory"]
      333 DUPCLOSURE                       R17 K138 [PROTO_68]
      334 SETTABLEKS                       R17 R15 K139 ["forwardHistory"]
      336 DUPCLOSURE                       R17 K140 [PROTO_69]
      337 SETTABLEKS                       R17 R15 K141 ["getPlugin"]
      339 RETURN                           R15 1
