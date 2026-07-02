PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+45]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["_scopes"]
        7 GETTABLEKS                       R3 R1 K3 ["Uid"]
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R2 R3
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["_scopes"]
       14 GETTABLEKS                       R3 R0 K3 ["Uid"]
       16 SETTABLE                         R0 R2 R3
       17 GETUPVAL                         R2 0
       18 NAMECALL                         R2 R2 K4 ["_generateProjectCustomScopes"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["ScopeType"]
       25 GETTABLEKS                       R3 R3 K6 ["ProjectShared"]
       27 GETTABLEKS                       R4 R0 K0 ["Id"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 0
       31 NEWTABLE                         R5 0 1
       33 MOVE                             R6 R2
       34 SETLIST                          R5 R6 1 [1]
       36 NAMECALL                         R3 R3 K7 ["requestFolderReadiness"]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 0
       40 NEWTABLE                         R5 0 1
       42 MOVE                             R6 R2
       43 SETLIST                          R5 R6 1 [1]
       45 NAMECALL                         R3 R3 K8 ["fetchFolders"]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R2 0
       49 NAMECALL                         R2 R2 K9 ["_updateRenderTree"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_pluginController"]
        3 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K2 ["Type"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       11 GETTABLEKS                       R3 R3 K4 ["RecentUploads"]
       13 JUMPIFEQ                         R2 R3 ; [+10]
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["RecentUploads"]
       19 GETTABLEKS                       R4 R4 K5 ["Uid"]
       21 NAMECALL                         R2 R2 K6 ["notifyNewItemsInScope"]
       23 CALL                             R2 2 0
       24 JUMPIFNOT                        R1 ; [+3]
       25 GETTABLEKS                       R2 R1 K5 ["Uid"]
       27 JUMP                             ; [+4]
       28 GETTABLEKS                       R2 R0 K7 ["Creator"]
       30 GETTABLEKS                       R2 R2 K5 ["Uid"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K0 ["_pluginController"]
       35 NAMECALL                         R3 R3 K1 ["getCurrentScope"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K5 ["Uid"]
       40 JUMPIFEQ                         R2 R3 ; [+6]
       42 GETUPVAL                         R3 0
       43 MOVE                             R5 R2
       44 NAMECALL                         R3 R3 K6 ["notifyNewItemsInScope"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["_scopes"]
        9 GETTABLEKS                       R4 R1 K3 ["Uid"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIF                           R2 ; [+28]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["_scopes"]
       16 GETTABLEKS                       R3 R1 K3 ["Uid"]
       18 SETTABLE                         R1 R2 R3
       19 GETTABLEKS                       R2 R1 K4 ["Parent"]
       21 JUMPIFNOT                        R2 ; [+19]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K2 ["_scopes"]
       25 GETTABLEKS                       R4 R1 K4 ["Parent"]
       27 GETTABLE                         R2 R3 R4
       28 JUMPIFNOT                        R2 ; [+12]
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K2 ["_scopes"]
       33 GETTABLEKS                       R6 R1 K4 ["Parent"]
       35 GETTABLE                         R4 R5 R6
       36 GETTABLEKS                       R5 R1 K3 ["Uid"]
       38 NAMECALL                         R2 R2 K5 ["_addScopeToChildren"]
       40 CALL                             R2 3 0
       41 GETUPVAL                         R2 0
       42 MOVE                             R4 R1
       43 NAMECALL                         R2 R2 K6 ["_expandAncestorsRecursive"]
       45 CALL                             R2 2 0
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K7 ["_newItemNotifs"]
       49 GETTABLEKS                       R4 R1 K3 ["Uid"]
       51 GETTABLE                         R2 R3 R4
       52 JUMPIFNOT                        R2 ; [+6]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R4 R1 K3 ["Uid"]
       56 NAMECALL                         R2 R2 K8 ["_toggleNewItemNotif"]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 0
       60 DUPTABLE                         R4 K10 [{"ScopeUid"}]
       61 GETTABLEKS                       R5 R1 K3 ["Uid"]
       63 SETTABLEKS                       R5 R4 K9 ["ScopeUid"]
       65 NAMECALL                         R2 R2 K11 ["addToHistory"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K35 [{[1], ["_networking"], ["_pluginController"], ["_layoutController"], ["_explorerItems"], ["_scopes"], ["_headers"], ["_projectCustom"], ["_visibleInventories"], ["_stagedFolder"] = , ["_recentlyCreatedFolder"] = , ["_historyRingBuffer"], ["_historyBufferIndex"] = 1, ["_expansion"], ["_pendingFolderFetchCount"] = 0, ["_folderFetchEpoch"] = 0, ["_groupOptions"], ["_toggleSet"], ["_showScopeOptions"] = False, ["_newItemNotifs"], ["_folderReadyMap"], ["_connections"], ["OnExplorerItemsChanged"], ["OnExpansionChanged"], ["OnGroupOptionsChanged"], ["OnShowScopeOptionsChanged"], ["OnToggleSetChanged"], ["OnScopeNotificationsChanged"], ["OnHistoryChanged"], ["OnRestoreSearchState"], ["OnFolderReadyMapChanged"]}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K36 ["Networking"]
        5 SETTABLEKS                       R3 R2 K1 ["_networking"]
        7 GETTABLEKS                       R3 R0 K37 ["PluginController"]
        9 SETTABLEKS                       R3 R2 K2 ["_pluginController"]
       11 GETTABLEKS                       R3 R0 K38 ["LayoutController"]
       13 SETTABLEKS                       R3 R2 K3 ["_layoutController"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K4 ["_explorerItems"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K5 ["_scopes"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K6 ["_headers"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K7 ["_projectCustom"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K8 ["_visibleInventories"]
       35 NEWTABLE                         R3 0 1
       37 DUPTABLE                         R4 K40 [{"ScopeUid"}]
       38 GETTABLEKS                       R5 R0 K37 ["PluginController"]
       40 NAMECALL                         R5 R5 K41 ["getCurrentScope"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K42 ["Uid"]
       45 SETTABLEKS                       R5 R4 K39 ["ScopeUid"]
       47 SETLIST                          R3 R4 1 [1]
       49 SETTABLEKS                       R3 R2 K12 ["_historyRingBuffer"]
       51 NEWTABLE                         R3 0 0
       53 SETTABLEKS                       R3 R2 K15 ["_expansion"]
       55 NEWTABLE                         R3 0 0
       57 SETTABLEKS                       R3 R2 K19 ["_groupOptions"]
       59 NEWTABLE                         R3 0 0
       61 SETTABLEKS                       R3 R2 K20 ["_toggleSet"]
       63 NEWTABLE                         R3 0 0
       65 SETTABLEKS                       R3 R2 K23 ["_newItemNotifs"]
       67 NEWTABLE                         R3 0 0
       69 SETTABLEKS                       R3 R2 K24 ["_folderReadyMap"]
       71 NEWTABLE                         R3 0 0
       73 SETTABLEKS                       R3 R2 K25 ["_connections"]
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K43 ["new"]
       78 CALL                             R3 0 1
       79 SETTABLEKS                       R3 R2 K26 ["OnExplorerItemsChanged"]
       81 GETUPVAL                         R3 0
       82 GETTABLEKS                       R3 R3 K43 ["new"]
       84 CALL                             R3 0 1
       85 SETTABLEKS                       R3 R2 K27 ["OnExpansionChanged"]
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R3 R3 K43 ["new"]
       90 CALL                             R3 0 1
       91 SETTABLEKS                       R3 R2 K28 ["OnGroupOptionsChanged"]
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K43 ["new"]
       96 CALL                             R3 0 1
       97 SETTABLEKS                       R3 R2 K29 ["OnShowScopeOptionsChanged"]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K43 ["new"]
      102 CALL                             R3 0 1
      103 SETTABLEKS                       R3 R2 K30 ["OnToggleSetChanged"]
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R3 R3 K43 ["new"]
      108 CALL                             R3 0 1
      109 SETTABLEKS                       R3 R2 K31 ["OnScopeNotificationsChanged"]
      111 GETUPVAL                         R3 0
      112 GETTABLEKS                       R3 R3 K43 ["new"]
      114 CALL                             R3 0 1
      115 SETTABLEKS                       R3 R2 K32 ["OnHistoryChanged"]
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K43 ["new"]
      120 CALL                             R3 0 1
      121 SETTABLEKS                       R3 R2 K33 ["OnRestoreSearchState"]
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R3 R3 K43 ["new"]
      126 CALL                             R3 0 1
      127 SETTABLEKS                       R3 R2 K34 ["OnFolderReadyMapChanged"]
      129 GETUPVAL                         R5 1
      130 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      132 MOVE                             R4 R2
      133 GETIMPORT                        R3 K45 [setmetatable]
      135 CALL                             R3 2 0
      136 GETUPVAL                         R3 2
      137 GETTABLEKS                       R3 R3 K46 ["asList"]
      139 GETUPVAL                         R4 2
      140 GETTABLEKS                       R4 R4 K47 ["SidebarHeader"]
      142 CALL                             R3 1 3
      143 FORGPREP                         R3
      144 GETTABLEKS                       R8 R2 K6 ["_headers"]
      146 DUPTABLE                         R9 K51 [{"Type", "Name", "Id", "Uid"}]
      147 GETUPVAL                         R10 2
      148 GETTABLEKS                       R10 R10 K52 ["ScopeType"]
      150 GETTABLEKS                       R10 R10 K53 ["Header"]
      152 SETTABLEKS                       R10 R9 K48 ["Type"]
      154 SETTABLEKS                       R7 R9 K49 ["Name"]
      156 SETTABLEKS                       R6 R9 K50 ["Id"]
      158 GETUPVAL                         R10 3
      159 GETUPVAL                         R11 2
      160 GETTABLEKS                       R11 R11 K52 ["ScopeType"]
      162 GETTABLEKS                       R11 R11 K53 ["Header"]
      164 MOVE                             R12 R6
      165 CALL                             R10 2 1
      166 SETTABLEKS                       R10 R9 K42 ["Uid"]
      168 SETTABLE                         R9 R8 R7
      169 FORGLOOP                         R3 2 ; [-26]
      171 NAMECALL                         R3 R2 K54 ["_addUserAndExperienceScopes"]
      173 CALL                             R3 1 0
      174 NAMECALL                         R3 R2 K55 ["_addRecentUploads"]
      176 CALL                             R3 1 0
      177 NAMECALL                         R3 R2 K56 ["_updateRenderTree"]
      179 CALL                             R3 1 0
      180 GETTABLEKS                       R4 R2 K25 ["_connections"]
      182 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      184 GETTABLEKS                       R5 R5 K57 ["OnGameInfoFetched"]
      186 NEWCLOSURE                       R7 P0
      187 CAPTURE                          VAL R2
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          UPVAL U2
      190 NAMECALL                         R5 R5 K58 ["Connect"]
      192 CALL                             R5 2 -1
      193 FASTCALL                         TABLE_INSERT ; [+2]
      194 GETIMPORT                        R3 K61 [table.insert]
      196 CALL                             R3 -1 0
      197 GETTABLEKS                       R4 R2 K25 ["_connections"]
      199 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      201 GETTABLEKS                       R5 R5 K62 ["OnNewAssetFetched"]
      203 NEWCLOSURE                       R7 P1
      204 CAPTURE                          VAL R2
      205 CAPTURE                          UPVAL U2
      206 CAPTURE                          UPVAL U4
      207 NAMECALL                         R5 R5 K58 ["Connect"]
      209 CALL                             R5 2 -1
      210 FASTCALL                         TABLE_INSERT ; [+2]
      211 GETIMPORT                        R3 K61 [table.insert]
      213 CALL                             R3 -1 0
      214 GETTABLEKS                       R4 R2 K25 ["_connections"]
      216 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      218 GETTABLEKS                       R5 R5 K63 ["OnCurrentScopeChanged"]
      220 NEWCLOSURE                       R7 P2
      221 CAPTURE                          VAL R2
      222 NAMECALL                         R5 R5 K58 ["Connect"]
      224 CALL                             R5 2 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R3 K61 [table.insert]
      228 CALL                             R3 -1 0
      229 NAMECALL                         R3 R2 K64 ["refreshScopes"]
      231 CALL                             R3 1 0
      232 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

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
       16 SETTABLEKS                       R1 R0 K5 ["_stagedFolder"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["_recentlyCreatedFolder"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnExplorerItemsChanged"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnGroupOptionsChanged"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["OnExpansionChanged"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["OnShowScopeOptionsChanged"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K11 ["OnToggleSetChanged"]
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K12 ["OnScopeNotificationsChanged"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K13 ["OnHistoryChanged"]
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K14 ["OnRestoreSearchState"]
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K15 ["OnFolderReadyMapChanged"]
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R2 R0 K16 ["_connections"]
       51 CALL                             R1 1 0
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K16 ["_connections"]
       55 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeWithUid"]
        4 CALL                             R1 2 1
        5 NOT                              R2 R1
        6 JUMPIF                           R2 ; [+3]
        7 GETTABLEKS                       R3 R1 K1 ["Children"]
        9 NOT                              R2 R3
       10 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_expansion"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQ                      R2 R3 ; [+2]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R2 ; [+19]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R0 K1 ["getScopeWithUid"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+14]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["filter"]
       15 GETTABLEKS                       R7 R3 K3 ["Children"]
       17 JUMPIF                           R7 ; [+2]
       18 NEWTABLE                         R7 0 0
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R0
       22 CALL                             R6 2 -1
       23 NAMECALL                         R4 R0 K4 ["fetchFolders"]
       25 CALL                             R4 -1 0
       26 GETTABLEKS                       R3 R0 K0 ["_expansion"]
       28 SETTABLE                         R2 R3 R1
       29 GETTABLEKS                       R3 R0 K5 ["OnExpansionChanged"]
       31 GETIMPORT                        R5 K8 [table.clone]
       33 GETTABLEKS                       R6 R0 K0 ["_expansion"]
       35 CALL                             R5 1 -1
       36 NAMECALL                         R3 R3 K9 ["Fire"]
       38 CALL                             R3 -1 0
       39 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R7 R0 K1 ["_scopes"]
        7 GETTABLE                         R6 R7 R4
        8 JUMPIF                           R6 ; [+4]
        9 GETTABLEKS                       R6 R0 K0 ["_expansion"]
       11 LOADNIL                          R7
       12 SETTABLE                         R7 R6 R4
       13 FORGLOOP                         R1 2 ; [-9]
       15 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        4 NAMECALL                         R2 R2 K1 ["getGameInfo"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R6 R0 K2 ["_headers"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K3 ["SidebarHeader"]
       12 GETTABLEKS                       R7 R7 K4 ["Recent"]
       14 GETTABLE                         R5 R6 R7
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [table.insert]
       20 CALL                             R3 2 0
       21 MOVE                             R4 R1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K8 ["RecentUploads"]
       25 GETTABLEKS                       R7 R7 K9 ["Uid"]
       27 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       29 CALL                             R5 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R3 K7 [table.insert]
       33 CALL                             R3 -1 0
       34 GETTABLEKS                       R3 R2 K11 ["Id"]
       36 JUMPIFEQKN                       R3 K12 [0] ; [+49]
       38 GETTABLEKS                       R6 R0 K2 ["_headers"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K3 ["SidebarHeader"]
       43 GETTABLEKS                       R7 R7 K13 ["Project"]
       45 GETTABLE                         R5 R6 R7
       46 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       48 MOVE                             R4 R1
       49 GETIMPORT                        R3 K7 [table.insert]
       51 CALL                             R3 2 0
       52 MOVE                             R4 R1
       53 GETUPVAL                         R7 2
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K14 ["ScopeType"]
       57 GETTABLEKS                       R8 R8 K15 ["ProjectShared"]
       59 GETTABLEKS                       R9 R2 K11 ["Id"]
       61 CALL                             R7 2 -1
       62 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       64 CALL                             R5 -1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R3 K7 [table.insert]
       68 CALL                             R3 -1 0
       69 MOVE                             R4 R1
       70 GETUPVAL                         R7 2
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K14 ["ScopeType"]
       74 GETTABLEKS                       R8 R8 K16 ["ProjectPlaces"]
       76 GETTABLEKS                       R9 R2 K11 ["Id"]
       78 CALL                             R7 2 -1
       79 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       81 CALL                             R5 -1 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R3 K7 [table.insert]
       85 CALL                             R3 -1 0
       86 GETTABLEKS                       R6 R0 K2 ["_headers"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K3 ["SidebarHeader"]
       91 GETTABLEKS                       R7 R7 K17 ["Inventories"]
       93 GETTABLE                         R5 R6 R7
       94 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       96 MOVE                             R4 R1
       97 GETIMPORT                        R3 K7 [table.insert]
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
      102 NAMECALL                         R5 R5 K18 ["getUser"]
      104 CALL                             R5 1 1
      105 GETTABLEKS                       R5 R5 K9 ["Uid"]
      107 NAMECALL                         R3 R0 K10 ["getScopeWithUid"]
      109 CALL                             R3 2 1
      110 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      112 MOVE                             R5 R1
      113 MOVE                             R6 R3
      114 GETIMPORT                        R4 K7 [table.insert]
      116 CALL                             R4 2 0
      117 NAMECALL                         R4 R0 K19 ["getVisibleInventories"]
      119 CALL                             R4 1 3
      120 FORGPREP                         R4
      121 MOVE                             R11 R8
      122 NAMECALL                         R9 R0 K10 ["getScopeWithUid"]
      124 CALL                             R9 2 1
      125 GETTABLEKS                       R10 R9 K20 ["Type"]
      127 GETUPVAL                         R11 0
      128 GETTABLEKS                       R11 R11 K14 ["ScopeType"]
      130 GETTABLEKS                       R11 R11 K21 ["Group"]
      132 JUMPIFNOTEQ                      R10 R11 ; [+8]
      134 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      136 MOVE                             R11 R1
      137 MOVE                             R12 R9
      138 GETIMPORT                        R10 K7 [table.insert]
      140 CALL                             R10 2 0
      141 FORGLOOP                         R4 2 ; [-21]
      143 SETTABLEKS                       R1 R0 K22 ["_explorerItems"]
      145 GETTABLEKS                       R4 R0 K23 ["OnExplorerItemsChanged"]
      147 GETTABLEKS                       R6 R0 K22 ["_explorerItems"]
      149 NAMECALL                         R4 R4 K24 ["Fire"]
      151 CALL                             R4 2 0
      152 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
        9 GETTABLEKS                       R5 R5 K3 ["ProjectPlaces"]
       11 GETTABLEKS                       R6 R1 K4 ["Id"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R2 R0 K5 ["getScopeWithUid"]
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
        9 GETTABLEKS                       R5 R5 K3 ["ProjectShared"]
       11 GETTABLEKS                       R6 R1 K4 ["Id"]
       13 CALL                             R4 2 -1
       14 NAMECALL                         R2 R0 K5 ["getScopeWithUid"]
       16 CALL                             R2 -1 -1
       17 RETURN                           R2 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_newItemNotifs"]
        2 RETURN                           R1 1

PROTO_17:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["_setNewItemNotif"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_visibleInventories"]
        2 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_scopes"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["RecentUploads"]
        5 GETTABLEKS                       R2 R2 K2 ["Uid"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ScopeType"]
        5 GETTABLEKS                       R3 R3 K2 ["Folder"]
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

PROTO_26:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["_folderReadyMap"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R0 R1 R2
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K3 ["_folderReadyMap"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["OnFolderReadyMapChanged"]
       14 NAMECALL                         R2 R2 K5 ["Fire"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["_scopes"]
        6 GETTABLE                         R7 R8 R6
        7 JUMPIFNOT                        R7 ; [+21]
        8 GETTABLEKS                       R8 R0 K1 ["_folderReadyMap"]
       10 LOADNIL                          R9
       11 SETTABLE                         R9 R8 R6
       12 GETTABLEKS                       R8 R0 K2 ["OnFolderReadyMapChanged"]
       14 NAMECALL                         R8 R8 K3 ["Fire"]
       16 CALL                             R8 1 0
       17 GETTABLEKS                       R8 R0 K4 ["_networking"]
       19 MOVE                             R10 R7
       20 NAMECALL                         R8 R8 K5 ["fetchInventoryFolderReadyAsync"]
       22 CALL                             R8 2 1
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R6
       26 NAMECALL                         R8 R8 K6 ["andThen"]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R2 2 ; [-26]
       31 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_visibleInventories"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K4 ["_pluginController"]
        7 NAMECALL                         R2 R2 K5 ["getGameInfo"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Id"]
       12 JUMPIFEQKN                       R3 K7 [0] ; [+15]
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K8 ["ScopeType"]
       19 GETTABLEKS                       R6 R6 K9 ["ProjectShared"]
       21 GETTABLEKS                       R7 R2 K6 ["Id"]
       23 CALL                             R5 2 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R3 K11 [table.insert]
       27 CALL                             R3 -1 0
       28 MOVE                             R5 R1
       29 NAMECALL                         R3 R0 K12 ["requestFolderReadiness"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["RootAccountScopeTypes"]
        5 GETTABLEKS                       R4 R1 K4 ["Type"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K5 ["InventoryFolderStatus"]
       12 GETTABLEKS                       R2 R2 K6 ["FoldersReady"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K7 ["_folderReadyMap"]
       17 GETTABLEKS                       R4 R1 K8 ["Uid"]
       19 GETTABLE                         R2 R3 R4
       20 RETURN                           R2 1

PROTO_30:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETIMPORT                        R2 K2 [table.find]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["RootAccountScopeTypes"]
        8 GETTABLEKS                       R4 R1 K4 ["Type"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 GETTABLEKS                       R4 R0 K5 ["_folderReadyMap"]
       16 GETTABLEKS                       R5 R1 K6 ["Uid"]
       18 GETTABLE                         R3 R4 R5
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["InventoryFolderStatus"]
       22 GETTABLEKS                       R4 R4 K8 ["FoldersReady"]
       24 JUMPIFEQ                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_31:
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

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        2 SUBK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        5 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        7 JUMPIFNOTEQKN                    R1 K2 [0] ; [+4]
        9 NAMECALL                         R1 R0 K3 ["_cleanStaleExpandedScopes"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NewFolderUid"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["getScopeWithUid"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeRoot"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_pluginController"]
        9 NAMECALL                         R1 R1 K2 ["getUser"]
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_folderFetchEpoch"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 1
       12 MOVE                             R8 R5
       13 MOVE                             R9 R4
       14 NAMECALL                         R6 R6 K1 ["convertFoldersToScopes"]
       16 CALL                             R6 3 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K2 ["_expansion"]
       20 GETTABLE                         R6 R7 R4
       21 JUMPIFNOT                        R6 ; [+14]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K3 ["_scopes"]
       25 GETTABLE                         R6 R7 R4
       26 GETTABLEKS                       R6 R6 K4 ["Children"]
       28 JUMPIF                           R6 ; [+2]
       29 NEWTABLE                         R6 0 0
       31 GETUPVAL                         R7 1
       32 MOVE                             R9 R6
       33 NAMECALL                         R7 R7 K5 ["fetchFolders"]
       35 CALL                             R7 2 0
       36 FORGLOOP                         R1 2 ; [-26]
       38 GETUPVAL                         R1 1
       39 NAMECALL                         R1 R1 K6 ["_updateRenderTree"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 1
       43 NAMECALL                         R1 R1 K7 ["_decrementPendingFolderFetchCountAndCleanUp"]
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_folderFetchEpoch"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K1 ["Error fetching folders: %*"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K2 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 LOADK                            R3 K3 ["WARN"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 1
       17 NAMECALL                         R1 R1 K4 ["_decrementPendingFolderFetchCountAndCleanUp"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["collectArray"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["map"]
       11 MOVE                             R4 R2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R0 K2 ["_folderFetchEpoch"]
       17 GETTABLEKS                       R5 R0 K3 ["_pendingFolderFetchCount"]
       19 LENGTH                           R6 R2
       20 ADD                              R5 R5 R6
       21 SETTABLEKS                       R5 R0 K3 ["_pendingFolderFetchCount"]
       23 GETTABLEKS                       R5 R0 K4 ["_networking"]
       25 DUPTABLE                         R7 K7 [{"Scopes", "Roots"}]
       26 SETTABLEKS                       R2 R7 K5 ["Scopes"]
       28 SETTABLEKS                       R3 R7 K6 ["Roots"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R0
       33 NEWCLOSURE                       R9 P3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 NAMECALL                         R5 R5 K8 ["fetchFoldersAsync"]
       39 CALL                             R5 4 0
       40 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["NewFolderUid"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+8]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["NewFolderUid"]
       18 NAMECALL                         R2 R0 K2 ["_removeScope"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0
       22 NAMECALL                         R2 R0 K3 ["_updateRenderTree"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_40:
        0 LOADNIL                          R3
        1 JUMPIF                           R1 ; [+46]
        2 MOVE                             R4 R2
        3 JUMPIF                           R4 ; [+5]
        4 GETTABLEKS                       R4 R0 K0 ["_pluginController"]
        6 NAMECALL                         R4 R4 K1 ["getCurrentScope"]
        8 CALL                             R4 1 1
        9 DUPTABLE                         R5 K10 [{["Name"] = "", ["Type"], ["Id"], ["Uid"], ["Path"] = "", ["Parent"], ["Children"]}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       13 GETTABLEKS                       R6 R6 K12 ["Folder"]
       15 SETTABLEKS                       R6 R5 K4 ["Type"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K13 ["NewFolderId"]
       20 SETTABLEKS                       R6 R5 K5 ["Id"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K14 ["NewFolderUid"]
       25 SETTABLEKS                       R6 R5 K6 ["Uid"]
       27 GETTABLEKS                       R6 R4 K6 ["Uid"]
       29 SETTABLEKS                       R6 R5 K8 ["Parent"]
       31 NEWTABLE                         R6 0 0
       33 SETTABLEKS                       R6 R5 K9 ["Children"]
       35 MOVE                             R3 R5
       36 GETTABLEKS                       R5 R0 K15 ["_scopes"]
       38 GETTABLEKS                       R6 R3 K6 ["Uid"]
       40 SETTABLE                         R3 R5 R6
       41 MOVE                             R7 R4
       42 GETTABLEKS                       R8 R3 K6 ["Uid"]
       44 NAMECALL                         R5 R0 K16 ["_addScopeToChildren"]
       46 CALL                             R5 3 0
       47 JUMP                             ; [+1]
       48 MOVE                             R3 R1
       49 GETTABLEKS                       R5 R0 K17 ["_expansion"]
       51 GETTABLEKS                       R6 R3 K8 ["Parent"]
       53 GETTABLE                         R4 R5 R6
       54 JUMPIF                           R4 ; [+6]
       55 GETTABLEKS                       R6 R3 K8 ["Parent"]
       57 LOADB                            R7 1
       58 NAMECALL                         R4 R0 K18 ["_setExpansion"]
       60 CALL                             R4 3 0
       61 GETTABLEKS                       R4 R3 K6 ["Uid"]
       63 SETTABLEKS                       R4 R0 K19 ["_stagedFolder"]
       65 NAMECALL                         R4 R0 K20 ["_updateRenderTree"]
       67 CALL                             R4 1 0
       68 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        2 RETURN                           R1 1

PROTO_42:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        3 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R0 K1 ["Uid"]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTEQ                      R1 R2 ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["Children"]
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["_expansion"]
       16 GETTABLEKS                       R3 R0 K1 ["Uid"]
       18 GETTABLE                         R1 R2 R3
       19 JUMPIF                           R1 ; [+2]
       20 LOADB                            R1 0
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K2 ["Children"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETUPVAL                         R6 2
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K4 ["getScopeWithUid"]
       31 CALL                             R6 2 1
       32 JUMPIFEQKNIL                     R6 ; [+7]
       34 GETUPVAL                         R7 3
       35 MOVE                             R8 R6
       36 CALL                             R7 1 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 LOADB                            R7 1
       39 RETURN                           R7 1
       40 FORGLOOP                         R1 2 ; [-14]
       42 LOADB                            R1 0
       43 RETURN                           R1 1

PROTO_44:
        0 LOADN                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R3
        6 NAMECALL                         R4 R0 K0 ["getExplorerItems"]
        8 CALL                             R4 1 3
        9 FORGPREP                         R4
       10 GETIMPORT                        R9 K3 [table.find]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K4 ["RootAccountScopeTypes"]
       15 GETTABLEKS                       R11 R8 K5 ["Type"]
       17 CALL                             R9 2 1
       18 JUMPIF                           R9 ; [+2]
       19 ADDK                             R2 R2 K6 [1]
       20 JUMP                             ; [+6]
       21 MOVE                             R9 R3
       22 MOVE                             R10 R8
       23 CALL                             R9 1 1
       24 JUMPIFNOT                        R9 ; [+2]
       25 CLOSEUPVALS                      R2
       26 RETURN                           R2 1
       27 FORGLOOP                         R4 2 ; [-18]
       29 LOADNIL                          R4
       30 CLOSEUPVALS                      R2
       31 RETURN                           R4 1

PROTO_45:
        0 GETTABLEKS                       R2 R0 K0 ["_scopes"]
        2 GETTABLEKS                       R3 R1 K1 ["Uid"]
        4 SETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        7 GETTABLEKS                       R4 R1 K2 ["Parent"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 MOVE                             R5 R2
       13 GETTABLEKS                       R6 R1 K1 ["Uid"]
       15 NAMECALL                         R3 R0 K3 ["_addScopeToChildren"]
       17 CALL                             R3 3 0
       18 GETTABLEKS                       R5 R2 K1 ["Uid"]
       20 LOADB                            R6 1
       21 NAMECALL                         R3 R0 K4 ["_setExpansion"]
       23 CALL                             R3 3 0
       24 NAMECALL                         R3 R0 K5 ["_updateRenderTree"]
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R3 R0 K6 ["_layoutController"]
       29 NAMECALL                         R3 R3 K7 ["getShowSidebar"]
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R3 ; [+17]
       33 GETTABLEKS                       R3 R1 K1 ["Uid"]
       35 SETTABLEKS                       R3 R0 K8 ["_recentlyCreatedFolder"]
       37 GETTABLEKS                       R5 R1 K1 ["Uid"]
       39 NAMECALL                         R3 R0 K9 ["getFolderIndex"]
       41 CALL                             R3 2 1
       42 JUMPIFEQKNIL                     R3 ; [+7]
       44 GETTABLEKS                       R4 R0 K6 ["_layoutController"]
       46 MOVE                             R6 R3
       47 NAMECALL                         R4 R4 K10 ["scrollToSidebarItem"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_46:
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
       20 GETTABLEKS                       R6 R0 K0 ["_scopes"]
       22 GETTABLEKS                       R7 R2 K3 ["Parent"]
       24 GETTABLE                         R5 R6 R7
       25 GETTABLEKS                       R5 R5 K4 ["Children"]
       27 NAMECALL                         R3 R0 K5 ["_sortChildrenByName"]
       29 CALL                             R3 2 0
       30 NAMECALL                         R3 R0 K6 ["_updateRenderTree"]
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["_removeScope"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_scopes"]
        3 GETTABLE                         R2 R3 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["_scopes"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFNOT                        R2 ; [+31]
        9 JUMPIFNOT                        R3 ; [+30]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+12]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R2 K1 ["Name"]
       16 GETTABLEKS                       R7 R3 K1 ["Name"]
       18 CALL                             R5 2 1
       19 LOADN                            R6 0
       20 JUMPIFLT                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1
       25 GETTABLEKS                       R5 R2 K1 ["Name"]
       27 NAMECALL                         R5 R5 K2 ["lower"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R3 K1 ["Name"]
       32 NAMECALL                         R6 R6 K2 ["lower"]
       34 CALL                             R6 1 1
       35 JUMPIFLT                         R5 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 3
       41 LOADK                            R6 K3 ["Cannot sort children because scope with UID $%* does not exist."]
       42 JUMPIF                           R2 ; [+2]
       43 MOVE                             R8 R0
       44 JUMP                             ; [+1]
       45 MOVE                             R8 R1
       46 NAMECALL                         R6 R6 K4 ["format"]
       48 CALL                             R6 2 1
       49 MOVE                             R5 R6
       50 CALL                             R4 1 0
       51 LOADB                            R4 0
       52 RETURN                           R4 1

PROTO_49:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_52:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K1 ["Children"]
        8 JUMPIFNOT                        R3 ; [+14]
        9 GETTABLEKS                       R4 R2 K1 ["Children"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+9]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K2 ["Remove scope %* even though it has children"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K3 ["format"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R4 R0 K0 ["_scopes"]
       25 GETTABLEKS                       R5 R2 K4 ["Parent"]
       27 GETTABLE                         R3 R4 R5
       28 JUMPIFNOT                        R3 ; [+3]
       29 GETTABLEKS                       R4 R3 K1 ["Children"]
       31 JUMPIF                           R4 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K5 ["filter"]
       36 GETTABLEKS                       R5 R3 K1 ["Children"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R1
       40 CALL                             R4 2 1
       41 LENGTH                           R6 R4
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R7 R6 ; [+3]
       45 MOVE                             R5 R4
       46 JUMP                             ; [+1]
       47 LOADNIL                          R5
       48 SETTABLEKS                       R5 R3 K1 ["Children"]
       50 GETTABLEKS                       R5 R0 K0 ["_scopes"]
       52 LOADNIL                          R6
       53 SETTABLE                         R6 R5 R1
       54 NAMECALL                         R5 R0 K6 ["_updateRenderTree"]
       56 CALL                             R5 1 0
       57 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       59 NAMECALL                         R5 R5 K8 ["getCurrentScope"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R5 R5 K9 ["Uid"]
       64 JUMPIFEQ                         R5 R1 ; [+2]
       66 RETURN                           R0 0
       67 JUMPIFNOT                        R3 ; [+7]
       68 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       70 MOVE                             R7 R3
       71 NAMECALL                         R5 R5 K10 ["setCurrentScope"]
       73 CALL                             R5 2 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R6 R2 K11 ["Type"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K12 ["ScopeType"]
       80 GETTABLEKS                       R7 R7 K13 ["Folder"]
       82 JUMPIFNOTEQ                      R6 R7 ; [+9]
       84 GETTABLEKS                       R6 R2 K14 ["Path"]
       86 JUMPIFNOT                        R6 ; [+5]
       87 MOVE                             R7 R2
       88 NAMECALL                         R5 R0 K15 ["getScopeRoot"]
       90 CALL                             R5 2 1
       91 JUMP                             ; [+5]
       92 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       94 NAMECALL                         R5 R5 K16 ["getUser"]
       96 CALL                             R5 1 1
       97 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
       99 MOVE                             R8 R5
      100 NAMECALL                         R6 R6 K10 ["setCurrentScope"]
      102 CALL                             R6 2 0
      103 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_54:
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
       41 GETUPVAL                         R15 2
       42 GETTABLEKS                       R15 R15 K8 ["filter"]
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

PROTO_55:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_scopes"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_visibleInventories"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["_pendingFolderFetchCount"]
       11 GETTABLEKS                       R1 R0 K3 ["_folderFetchEpoch"]
       13 ADDK                             R1 R1 K4 [1]
       14 SETTABLEKS                       R1 R0 K3 ["_folderFetchEpoch"]
       16 NAMECALL                         R1 R0 K5 ["_addRecentUploads"]
       18 CALL                             R1 1 0
       19 NAMECALL                         R1 R0 K6 ["_addUserAndExperienceScopes"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["getScopeWithUid"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R2 R2 K1 ["Name"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K0 ["getScopeWithUid"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R3 R3 K1 ["Name"]
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

PROTO_57:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_resetScopes"]
        3 CALL                             R1 1 0
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["_scopes"]
       11 GETTABLEKS                       R7 R5 K2 ["Uid"]
       13 SETTABLE                         R5 R6 R7
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K3 ["_visibleInventories"]
       17 GETTABLEKS                       R8 R5 K2 ["Uid"]
       19 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       21 GETIMPORT                        R6 K6 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-17]
       26 GETIMPORT                        R1 K8 [table.sort]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["_visibleInventories"]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U0
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 0
       35 NAMECALL                         R1 R1 K9 ["_fetchFolderReadinessForAllInventories"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 1
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K10 ["ScopeType"]
       42 GETTABLEKS                       R2 R2 K11 ["ProjectShared"]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K12 ["_pluginController"]
       47 NAMECALL                         R3 R3 K13 ["getGameInfo"]
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R3 R3 K14 ["Id"]
       52 CALL                             R1 2 1
       53 GETUPVAL                         R2 0
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R4 R4 K15 ["append"]
       57 GETIMPORT                        R5 K17 [table.clone]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K3 ["_visibleInventories"]
       62 CALL                             R5 1 1
       63 NEWTABLE                         R6 0 1
       65 MOVE                             R7 R1
       66 SETLIST                          R6 R7 1 [1]
       68 CALL                             R4 2 -1
       69 NAMECALL                         R2 R2 K18 ["fetchFolders"]
       71 CALL                             R2 -1 0
       72 GETUPVAL                         R2 0
       73 NAMECALL                         R2 R2 K19 ["_updateRenderTree"]
       75 CALL                             R2 1 0
       76 GETUPVAL                         R2 0
       77 NAMECALL                         R2 R2 K20 ["updateScopeOptions"]
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_59:
        0 NAMECALL                         R1 R0 K0 ["_clearHistory"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_networking"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 DUPCLOSURE                       R4 K2 [PROTO_58]
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R1 K3 ["fetchGroupsAsync"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_62:
        0 NAMECALL                         R2 R0 K0 ["getVisibleInventories"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 JUMPIFNOTEQ                      R6 R1 ; [+11]
        6 GETIMPORT                        R7 K3 [table.remove]
        8 GETTABLEKS                       R8 R0 K4 ["_visibleInventories"]
       10 MOVE                             R9 R5
       11 CALL                             R7 2 0
       12 NAMECALL                         R7 R0 K5 ["_updateRenderTree"]
       14 CALL                             R7 1 0
       15 RETURN                           R0 0
       16 FORGLOOP                         R2 2 ; [-13]
       18 GETTABLEKS                       R3 R0 K4 ["_visibleInventories"]
       20 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R2 K7 [table.insert]
       25 CALL                             R2 2 0
       26 NAMECALL                         R2 R0 K5 ["_updateRenderTree"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_64:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K1 ["toggleVisibleInventory"]
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 NAMECALL                         R1 R0 K2 ["_updateRenderTree"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_68:
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

PROTO_69:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["getScopeWithUid"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R2 R2 K1 ["Name"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K0 ["getScopeWithUid"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R3 R3 K1 ["Name"]
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

PROTO_70:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_groupOptions"]
        4 GETTABLEKS                       R2 R0 K1 ["_scopes"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K2 ["Type"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K3 ["ScopeType"]
       14 GETTABLEKS                       R8 R8 K4 ["Group"]
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_74:
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

PROTO_75:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_76:
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
       26 GETTABLEKS                       R5 R2 K3 ["SearchState"]
       28 GETTABLEKS                       R5 R5 K4 ["SearchSessionId"]
       30 GETTABLEKS                       R6 R1 K3 ["SearchState"]
       32 GETTABLEKS                       R6 R6 K4 ["SearchSessionId"]
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

PROTO_77:
        0 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
        2 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
        7 SETTABLE                         R1 R3 R2
        8 GETTABLEKS                       R3 R0 K3 ["OnHistoryChanged"]
       10 NAMECALL                         R3 R3 K4 ["Fire"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 -1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_82:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_83:
        0 GETTABLEKS                       R2 R0 K0 ["_historyRingBuffer"]
        2 GETTABLEKS                       R3 R0 K1 ["_historyBufferIndex"]
        4 GETTABLE                         R1 R2 R3
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R0 K0 ["_historyRingBuffer"]
        9 LOADN                            R2 1
       10 SETTABLEKS                       R2 R0 K1 ["_historyBufferIndex"]
       12 GETTABLEKS                       R2 R0 K0 ["_historyRingBuffer"]
       14 SETTABLEN                        R1 R2 1
       15 GETTABLEKS                       R2 R0 K2 ["OnHistoryChanged"]
       17 NAMECALL                         R2 R2 K3 ["Fire"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_84:
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETTABLEKS                       R5 R2 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["Signal"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K11 ["Util"]
       35 GETTABLEKS                       R7 R7 K14 ["cleanConnections"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R8 K11 ["Util"]
       44 GETTABLEKS                       R8 R8 K15 ["createAccountUidFromPath"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Src"]
       51 GETTABLEKS                       R9 R9 K11 ["Util"]
       53 GETTABLEKS                       R9 R9 K16 ["logIfDebug"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K13 ["Src"]
       60 GETTABLEKS                       R10 R10 K17 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K13 ["Src"]
       67 GETTABLEKS                       R11 R11 K11 ["Util"]
       69 GETTABLEKS                       R11 R11 K18 ["createFolderUid"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Src"]
       76 GETTABLEKS                       R12 R12 K11 ["Util"]
       78 GETTABLEKS                       R12 R12 K19 ["createScopeUid"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K13 ["Src"]
       85 GETTABLEKS                       R13 R13 K11 ["Util"]
       87 GETTABLEKS                       R13 R13 K20 ["convertFolderItemToScope"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K13 ["Src"]
       94 GETTABLEKS                       R14 R14 K11 ["Util"]
       96 GETTABLEKS                       R14 R14 K21 ["naturalCompare"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K13 ["Src"]
      103 GETTABLEKS                       R15 R15 K22 ["Resources"]
      105 GETTABLEKS                       R15 R15 K23 ["Constants"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K13 ["Src"]
      112 GETTABLEKS                       R16 R16 K24 ["Flags"]
      114 GETTABLEKS                       R16 R16 K25 ["getFFlagAmrNaturalSortOrder"]
      116 CALL                             R15 1 1
      117 LOADK                            R18 K26 ["ExplorerController"]
      118 NAMECALL                         R16 R4 K27 ["extend"]
      120 CALL                             R16 2 1
      121 NEWTABLE                         R17 0 2
      123 GETTABLEKS                       R18 R9 K28 ["ScopeType"]
      125 GETTABLEKS                       R18 R18 K29 ["ProjectShared"]
      127 GETTABLEKS                       R19 R9 K28 ["ScopeType"]
      129 GETTABLEKS                       R19 R19 K30 ["ProjectPlaces"]
      131 SETLIST                          R17 R18 2 [1]
      133 DUPCLOSURE                       R18 K31 [PROTO_3]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R14
      139 SETTABLEKS                       R18 R16 K32 ["new"]
      141 DUPCLOSURE                       R18 K33 [PROTO_4]
      142 CAPTURE                          VAL R16
      143 SETTABLEKS                       R18 R16 K34 ["mock"]
      145 DUPCLOSURE                       R18 K35 [PROTO_5]
      146 SETTABLEKS                       R18 R16 K36 ["getIsMock"]
      148 DUPCLOSURE                       R18 K37 [PROTO_6]
      149 CAPTURE                          VAL R6
      150 SETTABLEKS                       R18 R16 K38 ["destroy"]
      152 DUPCLOSURE                       R18 K39 [PROTO_8]
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R18 R16 K40 ["_setExpansion"]
      156 DUPCLOSURE                       R18 K41 [PROTO_9]
      157 SETTABLEKS                       R18 R16 K42 ["_expandAncestorsRecursive"]
      159 DUPCLOSURE                       R18 K43 [PROTO_10]
      160 SETTABLEKS                       R18 R16 K44 ["_cleanStaleExpandedScopes"]
      162 DUPCLOSURE                       R18 K45 [PROTO_11]
      163 CAPTURE                          VAL R8
      164 SETTABLEKS                       R18 R16 K46 ["toggleExpansion"]
      166 DUPCLOSURE                       R18 K47 [PROTO_12]
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R11
      170 SETTABLEKS                       R18 R16 K48 ["_updateRenderTree"]
      172 DUPCLOSURE                       R18 K49 [PROTO_13]
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R11
      175 SETTABLEKS                       R18 R16 K50 ["_generateProjectCustomScopes"]
      177 DUPCLOSURE                       R18 K51 [PROTO_14]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R9
      180 SETTABLEKS                       R18 R16 K52 ["getProjectPlacesScope"]
      182 DUPCLOSURE                       R18 K53 [PROTO_15]
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R18 R16 K54 ["getProjectSharedScope"]
      187 DUPCLOSURE                       R18 K55 [PROTO_16]
      188 SETTABLEKS                       R18 R16 K56 ["getScopeNotifications"]
      190 DUPCLOSURE                       R18 K57 [PROTO_17]
      191 SETTABLEKS                       R18 R16 K58 ["notifyNewItemsInScope"]
      193 DUPCLOSURE                       R18 K59 [PROTO_18]
      194 SETTABLEKS                       R18 R16 K60 ["_setNewItemNotif"]
      196 DUPCLOSURE                       R18 K61 [PROTO_19]
      197 SETTABLEKS                       R18 R16 K62 ["_toggleNewItemNotif"]
      199 DUPCLOSURE                       R18 K63 [PROTO_20]
      200 SETTABLEKS                       R18 R16 K64 ["getScopeWithUid"]
      202 DUPCLOSURE                       R18 K65 [PROTO_21]
      203 SETTABLEKS                       R18 R16 K66 ["getVisibleInventories"]
      205 DUPCLOSURE                       R18 K67 [PROTO_22]
      206 CAPTURE                          VAL R14
      207 SETTABLEKS                       R18 R16 K68 ["_addRecentUploads"]
      209 DUPCLOSURE                       R18 K69 [PROTO_23]
      210 SETTABLEKS                       R18 R16 K70 ["_addUserAndExperienceScopes"]
      212 DUPCLOSURE                       R18 K71 [PROTO_24]
      213 CAPTURE                          VAL R12
      214 SETTABLEKS                       R18 R16 K72 ["convertFoldersToScopes"]
      216 DUPCLOSURE                       R18 K73 [PROTO_25]
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R7
      219 SETTABLEKS                       R18 R16 K74 ["getScopeRoot"]
      221 DUPCLOSURE                       R18 K75 [PROTO_27]
      222 SETTABLEKS                       R18 R16 K76 ["requestFolderReadiness"]
      224 DUPCLOSURE                       R18 K77 [PROTO_28]
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R9
      227 SETTABLEKS                       R18 R16 K78 ["_fetchFolderReadinessForAllInventories"]
      229 DUPCLOSURE                       R18 K79 [PROTO_29]
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R9
      232 SETTABLEKS                       R18 R16 K80 ["getFolderReadinessStatus"]
      234 DUPCLOSURE                       R18 K81 [PROTO_30]
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R9
      237 SETTABLEKS                       R18 R16 K82 ["isFolderReadyForScope"]
      239 DUPCLOSURE                       R18 K83 [PROTO_31]
      240 SETTABLEKS                       R18 R16 K84 ["isAncestor"]
      242 DUPCLOSURE                       R18 K85 [PROTO_32]
      243 SETTABLEKS                       R18 R16 K86 ["_decrementPendingFolderFetchCountAndCleanUp"]
      245 DUPCLOSURE                       R18 K87 [PROTO_37]
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R8
      249 SETTABLEKS                       R18 R16 K88 ["fetchFolders"]
      251 DUPCLOSURE                       R18 K89 [PROTO_38]
      252 SETTABLEKS                       R18 R16 K90 ["getStagedFolder"]
      254 DUPCLOSURE                       R18 K91 [PROTO_39]
      255 CAPTURE                          VAL R14
      256 SETTABLEKS                       R18 R16 K92 ["removeStagedFolder"]
      258 DUPCLOSURE                       R18 K93 [PROTO_40]
      259 CAPTURE                          VAL R9
      260 CAPTURE                          VAL R14
      261 SETTABLEKS                       R18 R16 K94 ["stageFolder"]
      263 DUPCLOSURE                       R18 K95 [PROTO_41]
      264 SETTABLEKS                       R18 R16 K96 ["getRecentlyCreatedFolder"]
      266 DUPCLOSURE                       R18 K97 [PROTO_42]
      267 SETTABLEKS                       R18 R16 K98 ["clearRecentlyCreatedFolder"]
      269 DUPCLOSURE                       R18 K99 [PROTO_44]
      270 CAPTURE                          VAL R14
      271 SETTABLEKS                       R18 R16 K100 ["getFolderIndex"]
      273 DUPCLOSURE                       R18 K101 [PROTO_45]
      274 SETTABLEKS                       R18 R16 K102 ["handleCreatedFolder"]
      276 DUPCLOSURE                       R18 K103 [PROTO_46]
      277 SETTABLEKS                       R18 R16 K104 ["handleRenamedFolder"]
      279 DUPCLOSURE                       R18 K105 [PROTO_47]
      280 CAPTURE                          VAL R10
      281 SETTABLEKS                       R18 R16 K106 ["handleDeletedFolder"]
      283 DUPCLOSURE                       R18 K107 [PROTO_49]
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R13
      286 CAPTURE                          VAL R8
      287 SETTABLEKS                       R18 R16 K108 ["_sortChildrenByName"]
      289 DUPCLOSURE                       R18 K109 [PROTO_50]
      290 SETTABLEKS                       R18 R16 K110 ["_addScopeToChildren"]
      292 DUPCLOSURE                       R18 K111 [PROTO_52]
      293 CAPTURE                          VAL R8
      294 CAPTURE                          VAL R1
      295 CAPTURE                          VAL R9
      296 SETTABLEKS                       R18 R16 K112 ["_removeScope"]
      298 DUPCLOSURE                       R18 K113 [PROTO_54]
      299 CAPTURE                          VAL R10
      300 CAPTURE                          VAL R8
      301 CAPTURE                          VAL R1
      302 SETTABLEKS                       R18 R16 K114 ["moveScopes"]
      304 DUPCLOSURE                       R18 K115 [PROTO_55]
      305 SETTABLEKS                       R18 R16 K116 ["_resetScopes"]
      307 DUPCLOSURE                       R18 K117 [PROTO_59]
      308 CAPTURE                          VAL R11
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R1
      311 CAPTURE                          VAL R8
      312 SETTABLEKS                       R18 R16 K118 ["refreshScopes"]
      314 DUPCLOSURE                       R18 K119 [PROTO_60]
      315 SETTABLEKS                       R18 R16 K120 ["getExplorerItems"]
      317 DUPCLOSURE                       R18 K121 [PROTO_61]
      318 SETTABLEKS                       R18 R16 K122 ["getExpansion"]
      320 DUPCLOSURE                       R18 K123 [PROTO_62]
      321 SETTABLEKS                       R18 R16 K124 ["toggleVisibleInventory"]
      323 DUPCLOSURE                       R18 K125 [PROTO_63]
      324 SETTABLEKS                       R18 R16 K126 ["getShowScopeOptions"]
      326 DUPCLOSURE                       R18 K127 [PROTO_64]
      327 SETTABLEKS                       R18 R16 K128 ["enableScopeOptions"]
      329 DUPCLOSURE                       R18 K129 [PROTO_65]
      330 SETTABLEKS                       R18 R16 K130 ["_saveGroupOptions"]
      332 DUPCLOSURE                       R18 K131 [PROTO_66]
      333 SETTABLEKS                       R18 R16 K132 ["closeScopeOptions"]
      335 DUPCLOSURE                       R18 K133 [PROTO_67]
      336 SETTABLEKS                       R18 R16 K134 ["getGroupOptions"]
      338 DUPCLOSURE                       R18 K135 [PROTO_68]
      339 SETTABLEKS                       R18 R16 K136 ["toggleScopeOption"]
      341 DUPCLOSURE                       R18 K137 [PROTO_70]
      342 CAPTURE                          VAL R9
      343 SETTABLEKS                       R18 R16 K138 ["updateScopeOptions"]
      345 DUPCLOSURE                       R18 K139 [PROTO_71]
      346 SETTABLEKS                       R18 R16 K140 ["isScopeOptionChecked"]
      348 DUPCLOSURE                       R18 K141 [PROTO_72]
      349 SETTABLEKS                       R18 R16 K142 ["hasAllOptionsChecked"]
      351 DUPCLOSURE                       R18 K143 [PROTO_73]
      352 SETTABLEKS                       R18 R16 K144 ["getToggleSet"]
      354 DUPCLOSURE                       R18 K145 [PROTO_74]
      355 SETTABLEKS                       R18 R16 K146 ["toggleSelectAllOptions"]
      357 DUPCLOSURE                       R18 K147 [PROTO_75]
      358 SETTABLEKS                       R18 R16 K148 ["_getHistoryRingIndex"]
      360 DUPCLOSURE                       R18 K149 [PROTO_76]
      361 SETTABLEKS                       R18 R16 K150 ["addToHistory"]
      363 DUPCLOSURE                       R18 K151 [PROTO_77]
      364 SETTABLEKS                       R18 R16 K152 ["updateCurrentHistoryItem"]
      366 DUPCLOSURE                       R18 K153 [PROTO_78]
      367 CAPTURE                          VAL R8
      368 SETTABLEKS                       R18 R16 K154 ["_goToHistory"]
      370 DUPCLOSURE                       R18 K155 [PROTO_79]
      371 SETTABLEKS                       R18 R16 K156 ["getHistoryAtStart"]
      373 DUPCLOSURE                       R18 K157 [PROTO_80]
      374 SETTABLEKS                       R18 R16 K158 ["getHistoryAtEnd"]
      376 DUPCLOSURE                       R18 K159 [PROTO_81]
      377 SETTABLEKS                       R18 R16 K160 ["backHistory"]
      379 DUPCLOSURE                       R18 K161 [PROTO_82]
      380 SETTABLEKS                       R18 R16 K162 ["forwardHistory"]
      382 DUPCLOSURE                       R18 K163 [PROTO_83]
      383 SETTABLEKS                       R18 R16 K164 ["_clearHistory"]
      385 DUPCLOSURE                       R18 K165 [PROTO_84]
      386 SETTABLEKS                       R18 R16 K166 ["getPlugin"]
      388 RETURN                           R16 1
