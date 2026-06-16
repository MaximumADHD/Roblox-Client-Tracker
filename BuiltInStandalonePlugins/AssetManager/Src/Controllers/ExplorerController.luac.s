PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+48]
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
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+27]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["ScopeType"]
       28 GETTABLEKS                       R3 R3 K6 ["ProjectShared"]
       30 GETTABLEKS                       R4 R0 K0 ["Id"]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R3 0
       34 NEWTABLE                         R5 0 1
       36 MOVE                             R6 R2
       37 SETLIST                          R5 R6 1 [1]
       39 NAMECALL                         R3 R3 K7 ["requestFolderReadiness"]
       41 CALL                             R3 2 0
       42 GETUPVAL                         R3 0
       43 NEWTABLE                         R5 0 1
       45 MOVE                             R6 R2
       46 SETLIST                          R5 R6 1 [1]
       48 NAMECALL                         R3 R3 K8 ["fetchFolders"]
       50 CALL                             R3 2 0
       51 GETUPVAL                         R2 1
       52 CALL                             R2 0 1
       53 JUMPIFNOT                        R2 ; [+5]
       54 GETUPVAL                         R2 0
       55 NAMECALL                         R2 R2 K9 ["_updateRenderTree"]
       57 CALL                             R2 1 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R2 0
       60 NAMECALL                         R2 R2 K10 ["_createExplorerItems"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

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
       24 GETUPVAL                         R3 3
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+4]
       27 JUMPIFNOT                        R1 ; [+3]
       28 GETTABLEKS                       R2 R1 K5 ["Uid"]
       30 JUMP                             ; [+4]
       31 GETTABLEKS                       R2 R0 K7 ["Creator"]
       33 GETTABLEKS                       R2 R2 K5 ["Uid"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["_pluginController"]
       38 NAMECALL                         R3 R3 K1 ["getCurrentScope"]
       40 CALL                             R3 1 1
       41 GETTABLEKS                       R3 R3 K5 ["Uid"]
       43 JUMPIFEQ                         R2 R3 ; [+6]
       45 GETUPVAL                         R3 0
       46 MOVE                             R5 R2
       47 NAMECALL                         R3 R3 K6 ["notifyNewItemsInScope"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_pluginController"]
        3 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+40]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["_scopes"]
       12 GETTABLEKS                       R4 R1 K3 ["Uid"]
       14 GETTABLE                         R2 R3 R4
       15 JUMPIF                           R2 ; [+28]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["_scopes"]
       19 GETTABLEKS                       R3 R1 K3 ["Uid"]
       21 SETTABLE                         R1 R2 R3
       22 GETTABLEKS                       R2 R1 K4 ["Parent"]
       24 JUMPIFNOT                        R2 ; [+19]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K2 ["_scopes"]
       28 GETTABLEKS                       R4 R1 K4 ["Parent"]
       30 GETTABLE                         R2 R3 R4
       31 JUMPIFNOT                        R2 ; [+12]
       32 GETUPVAL                         R2 0
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K2 ["_scopes"]
       36 GETTABLEKS                       R6 R1 K4 ["Parent"]
       38 GETTABLE                         R4 R5 R6
       39 GETTABLEKS                       R5 R1 K3 ["Uid"]
       41 NAMECALL                         R2 R2 K5 ["_addScopeToChildren"]
       43 CALL                             R2 3 0
       44 GETUPVAL                         R2 0
       45 MOVE                             R4 R1
       46 NAMECALL                         R2 R2 K6 ["_expandAncestorsRecursive"]
       48 CALL                             R2 2 0
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K7 ["_newItemNotifs"]
       52 GETTABLEKS                       R4 R1 K3 ["Uid"]
       54 GETTABLE                         R2 R3 R4
       55 JUMPIFNOT                        R2 ; [+6]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R4 R1 K3 ["Uid"]
       59 NAMECALL                         R2 R2 K8 ["_toggleNewItemNotif"]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R2 0
       63 DUPTABLE                         R4 K10 [{"ScopeUid"}]
       64 GETTABLEKS                       R5 R1 K3 ["Uid"]
       66 SETTABLEKS                       R5 R4 K9 ["ScopeUid"]
       68 NAMECALL                         R2 R2 K11 ["addToHistory"]
       70 CALL                             R2 2 0
       71 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K31 [{"_isMock", "_networking", "_pluginController", "_layoutController", "_explorerItems", "_scopes", "_headers", "_projectCustom", "_visibleInventories", "_stagedFolder", "_recentlyCreatedFolder", "_historyRingBuffer", "_historyBufferIndex", "_expansion", "_pendingFolderFetchCount", "_folderFetchEpoch", "_groupOptions", "_toggleSet", "_showScopeOptions", "_newItemNotifs", "_folderReadyMap", "_connections", "OnExplorerItemsChanged", "OnExpansionChanged", "OnGroupOptionsChanged", "OnShowScopeOptionsChanged", "OnToggleSetChanged", "OnScopeNotificationsChanged", "OnHistoryChanged", "OnRestoreSearchState", "OnFolderReadyMapChanged"}]
        1 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        3 GETTABLEKS                       R3 R0 K32 ["Networking"]
        5 SETTABLEKS                       R3 R2 K1 ["_networking"]
        7 GETTABLEKS                       R3 R0 K33 ["PluginController"]
        9 SETTABLEKS                       R3 R2 K2 ["_pluginController"]
       11 GETTABLEKS                       R3 R0 K34 ["LayoutController"]
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
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R2 K9 ["_stagedFolder"]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K10 ["_recentlyCreatedFolder"]
       41 NEWTABLE                         R3 0 1
       43 DUPTABLE                         R4 K36 [{"ScopeUid"}]
       44 GETTABLEKS                       R5 R0 K33 ["PluginController"]
       46 NAMECALL                         R5 R5 K37 ["getCurrentScope"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R5 R5 K38 ["Uid"]
       51 SETTABLEKS                       R5 R4 K35 ["ScopeUid"]
       53 SETLIST                          R3 R4 1 [1]
       55 SETTABLEKS                       R3 R2 K11 ["_historyRingBuffer"]
       57 LOADN                            R3 1
       58 SETTABLEKS                       R3 R2 K12 ["_historyBufferIndex"]
       60 NEWTABLE                         R3 0 0
       62 SETTABLEKS                       R3 R2 K13 ["_expansion"]
       64 LOADN                            R3 0
       65 SETTABLEKS                       R3 R2 K14 ["_pendingFolderFetchCount"]
       67 LOADN                            R3 0
       68 SETTABLEKS                       R3 R2 K15 ["_folderFetchEpoch"]
       70 NEWTABLE                         R3 0 0
       72 SETTABLEKS                       R3 R2 K16 ["_groupOptions"]
       74 NEWTABLE                         R3 0 0
       76 SETTABLEKS                       R3 R2 K17 ["_toggleSet"]
       78 LOADB                            R3 0
       79 SETTABLEKS                       R3 R2 K18 ["_showScopeOptions"]
       81 NEWTABLE                         R3 0 0
       83 SETTABLEKS                       R3 R2 K19 ["_newItemNotifs"]
       85 NEWTABLE                         R3 0 0
       87 SETTABLEKS                       R3 R2 K20 ["_folderReadyMap"]
       89 NEWTABLE                         R3 0 0
       91 SETTABLEKS                       R3 R2 K21 ["_connections"]
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K39 ["new"]
       96 CALL                             R3 0 1
       97 SETTABLEKS                       R3 R2 K22 ["OnExplorerItemsChanged"]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K39 ["new"]
      102 CALL                             R3 0 1
      103 SETTABLEKS                       R3 R2 K23 ["OnExpansionChanged"]
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R3 R3 K39 ["new"]
      108 CALL                             R3 0 1
      109 SETTABLEKS                       R3 R2 K24 ["OnGroupOptionsChanged"]
      111 GETUPVAL                         R3 0
      112 GETTABLEKS                       R3 R3 K39 ["new"]
      114 CALL                             R3 0 1
      115 SETTABLEKS                       R3 R2 K25 ["OnShowScopeOptionsChanged"]
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K39 ["new"]
      120 CALL                             R3 0 1
      121 SETTABLEKS                       R3 R2 K26 ["OnToggleSetChanged"]
      123 GETUPVAL                         R3 0
      124 GETTABLEKS                       R3 R3 K39 ["new"]
      126 CALL                             R3 0 1
      127 SETTABLEKS                       R3 R2 K27 ["OnScopeNotificationsChanged"]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K39 ["new"]
      132 CALL                             R3 0 1
      133 SETTABLEKS                       R3 R2 K28 ["OnHistoryChanged"]
      135 GETUPVAL                         R3 0
      136 GETTABLEKS                       R3 R3 K39 ["new"]
      138 CALL                             R3 0 1
      139 SETTABLEKS                       R3 R2 K29 ["OnRestoreSearchState"]
      141 GETUPVAL                         R3 0
      142 GETTABLEKS                       R3 R3 K39 ["new"]
      144 CALL                             R3 0 1
      145 SETTABLEKS                       R3 R2 K30 ["OnFolderReadyMapChanged"]
      147 GETUPVAL                         R5 1
      148 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      150 MOVE                             R4 R2
      151 GETIMPORT                        R3 K41 [setmetatable]
      153 CALL                             R3 2 0
      154 GETUPVAL                         R3 2
      155 CALL                             R3 0 1
      156 JUMPIFNOT                        R3 ; [+35]
      157 GETUPVAL                         R3 3
      158 GETTABLEKS                       R3 R3 K42 ["asList"]
      160 GETUPVAL                         R4 3
      161 GETTABLEKS                       R4 R4 K43 ["SidebarHeader"]
      163 CALL                             R3 1 3
      164 FORGPREP                         R3
      165 GETTABLEKS                       R8 R2 K6 ["_headers"]
      167 DUPTABLE                         R9 K47 [{"Type", "Name", "Id", "Uid"}]
      168 GETUPVAL                         R10 3
      169 GETTABLEKS                       R10 R10 K48 ["ScopeType"]
      171 GETTABLEKS                       R10 R10 K49 ["Header"]
      173 SETTABLEKS                       R10 R9 K44 ["Type"]
      175 SETTABLEKS                       R7 R9 K45 ["Name"]
      177 SETTABLEKS                       R6 R9 K46 ["Id"]
      179 GETUPVAL                         R10 4
      180 GETUPVAL                         R11 3
      181 GETTABLEKS                       R11 R11 K48 ["ScopeType"]
      183 GETTABLEKS                       R11 R11 K49 ["Header"]
      185 MOVE                             R12 R6
      186 CALL                             R10 2 1
      187 SETTABLEKS                       R10 R9 K38 ["Uid"]
      189 SETTABLE                         R9 R8 R7
      190 FORGLOOP                         R3 2 ; [-26]
      192 GETUPVAL                         R3 2
      193 CALL                             R3 0 1
      194 JUMPIFNOT                        R3 ; [+4]
      195 NAMECALL                         R3 R2 K50 ["_addUserAndExperienceScopes"]
      197 CALL                             R3 1 0
      198 JUMP                             ; [+12]
      199 GETTABLEKS                       R3 R2 K2 ["_pluginController"]
      201 NAMECALL                         R3 R3 K51 ["getGameInfo"]
      203 CALL                             R3 1 1
      204 GETTABLEKS                       R3 R3 K46 ["Id"]
      206 JUMPIFEQKN                       R3 K52 [0] ; [+4]
      208 NAMECALL                         R3 R2 K53 ["_generateProjectCustomScopes"]
      210 CALL                             R3 1 0
      211 NAMECALL                         R3 R2 K54 ["_addRecentUploads"]
      213 CALL                             R3 1 0
      214 GETUPVAL                         R3 2
      215 CALL                             R3 0 1
      216 JUMPIFNOT                        R3 ; [+4]
      217 NAMECALL                         R3 R2 K55 ["_updateRenderTree"]
      219 CALL                             R3 1 0
      220 JUMP                             ; [+3]
      221 NAMECALL                         R3 R2 K56 ["_createExplorerItems"]
      223 CALL                             R3 1 0
      224 GETTABLEKS                       R4 R2 K21 ["_connections"]
      226 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      228 GETTABLEKS                       R5 R5 K57 ["OnGameInfoFetched"]
      230 NEWCLOSURE                       R7 P0
      231 CAPTURE                          VAL R2
      232 CAPTURE                          UPVAL U2
      233 CAPTURE                          UPVAL U4
      234 CAPTURE                          UPVAL U3
      235 NAMECALL                         R5 R5 K58 ["Connect"]
      237 CALL                             R5 2 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R3 K61 [table.insert]
      241 CALL                             R3 -1 0
      242 GETTABLEKS                       R4 R2 K21 ["_connections"]
      244 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      246 GETTABLEKS                       R5 R5 K62 ["OnNewAssetFetched"]
      248 NEWCLOSURE                       R7 P1
      249 CAPTURE                          VAL R2
      250 CAPTURE                          UPVAL U3
      251 CAPTURE                          UPVAL U5
      252 CAPTURE                          UPVAL U2
      253 NAMECALL                         R5 R5 K58 ["Connect"]
      255 CALL                             R5 2 -1
      256 FASTCALL                         TABLE_INSERT ; [+2]
      257 GETIMPORT                        R3 K61 [table.insert]
      259 CALL                             R3 -1 0
      260 GETTABLEKS                       R4 R2 K21 ["_connections"]
      262 GETTABLEKS                       R5 R2 K2 ["_pluginController"]
      264 GETTABLEKS                       R5 R5 K63 ["OnCurrentScopeChanged"]
      266 NEWCLOSURE                       R7 P2
      267 CAPTURE                          VAL R2
      268 CAPTURE                          UPVAL U2
      269 NAMECALL                         R5 R5 K58 ["Connect"]
      271 CALL                             R5 2 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R3 K61 [table.insert]
      275 CALL                             R3 -1 0
      276 NAMECALL                         R3 R2 K64 ["refreshScopes"]
      278 CALL                             R3 1 0
      279 RETURN                           R2 1

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
      100 GETUPVAL                         R3 3
      101 CALL                             R3 0 1
      102 JUMPIFNOT                        R3 ; [+18]
      103 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
      105 NAMECALL                         R5 R5 K18 ["getUser"]
      107 CALL                             R5 1 1
      108 GETTABLEKS                       R5 R5 K9 ["Uid"]
      110 NAMECALL                         R3 R0 K10 ["getScopeWithUid"]
      112 CALL                             R3 2 1
      113 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      115 MOVE                             R5 R1
      116 MOVE                             R6 R3
      117 GETIMPORT                        R4 K7 [table.insert]
      119 CALL                             R4 2 0
      120 JUMP                             ; [+10]
      121 MOVE                             R4 R1
      122 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
      124 NAMECALL                         R5 R5 K18 ["getUser"]
      126 CALL                             R5 1 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R3 K7 [table.insert]
      130 CALL                             R3 -1 0
      131 NAMECALL                         R3 R0 K19 ["getVisibleInventories"]
      133 CALL                             R3 1 3
      134 FORGPREP                         R3
      135 MOVE                             R10 R7
      136 NAMECALL                         R8 R0 K10 ["getScopeWithUid"]
      138 CALL                             R8 2 1
      139 GETTABLEKS                       R9 R8 K20 ["Type"]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R10 R10 K14 ["ScopeType"]
      144 GETTABLEKS                       R10 R10 K21 ["Group"]
      146 JUMPIFNOTEQ                      R9 R10 ; [+8]
      148 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      150 MOVE                             R10 R1
      151 MOVE                             R11 R8
      152 GETIMPORT                        R9 K7 [table.insert]
      154 CALL                             R9 2 0
      155 FORGLOOP                         R3 2 ; [-21]
      157 SETTABLEKS                       R1 R0 K22 ["_explorerItems"]
      159 GETTABLEKS                       R3 R0 K23 ["OnExplorerItemsChanged"]
      161 GETTABLEKS                       R5 R0 K22 ["_explorerItems"]
      163 NAMECALL                         R3 R3 K24 ["Fire"]
      165 CALL                             R3 2 0
      166 RETURN                           R0 0

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
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_pluginController"]
        4 NAMECALL                         R2 R2 K1 ["getGameInfo"]
        6 CALL                             R2 1 1
        7 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K2 ["ExplorerHeader"]
       11 GETTABLEKS                       R6 R6 K4 ["Recent"]
       13 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [table.insert]
       20 CALL                             R3 2 0
       21 DUPTABLE                         R5 K9 [{"Scope"}]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K10 ["RecentUploads"]
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
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K14 ["ScopeType"]
       53 GETTABLEKS                       R9 R9 K15 ["ProjectShared"]
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
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K14 ["ScopeType"]
       74 GETTABLEKS                       R9 R9 K17 ["ProjectPlaces"]
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
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K2 ["ExplorerHeader"]
       94 GETTABLEKS                       R6 R6 K18 ["User"]
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
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R6 R6 K2 ["ExplorerHeader"]
      122 GETTABLEKS                       R6 R6 K20 ["Groups"]
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
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K14 ["ScopeType"]
      145 GETTABLEKS                       R10 R10 K23 ["Group"]
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

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_newItemNotifs"]
        2 RETURN                           R1 1

PROTO_18:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["_setNewItemNotif"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_visibleInventories"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["_scopes"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["RecentUploads"]
        5 GETTABLEKS                       R2 R2 K2 ["Uid"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        2 SUBK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        5 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        7 JUMPIFNOTEQKN                    R1 K2 [0] ; [+4]
        9 NAMECALL                         R1 R0 K3 ["_cleanStaleExpandedScopes"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       16 GETTABLEKS                       R6 R6 K12 ["Folder"]
       18 SETTABLEKS                       R6 R5 K3 ["Type"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K13 ["NewFolderId"]
       23 SETTABLEKS                       R6 R5 K4 ["Id"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K14 ["NewFolderUid"]
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

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        2 RETURN                           R1 1

PROTO_43:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        3 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["_removeScope"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_53:
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
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K5 ["filter"]
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
       61 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       63 NAMECALL                         R5 R5 K8 ["getCurrentScope"]
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R5 R5 K9 ["Uid"]
       68 JUMPIFEQ                         R5 R1 ; [+2]
       70 RETURN                           R0 0
       71 JUMPIFNOT                        R3 ; [+7]
       72 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       74 MOVE                             R7 R3
       75 NAMECALL                         R5 R5 K10 ["setCurrentScope"]
       77 CALL                             R5 2 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R6 R2 K11 ["Type"]
       81 GETUPVAL                         R7 3
       82 GETTABLEKS                       R7 R7 K12 ["ScopeType"]
       84 GETTABLEKS                       R7 R7 K13 ["Folder"]
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

PROTO_54:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K0 ["_resetScopes"]
        6 CALL                             R1 1 0
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K1 ["_scopes"]
       14 GETTABLEKS                       R7 R5 K2 ["Uid"]
       16 SETTABLE                         R5 R6 R7
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K3 ["_visibleInventories"]
       20 GETTABLEKS                       R8 R5 K2 ["Uid"]
       22 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       24 GETIMPORT                        R6 K6 [table.insert]
       26 CALL                             R6 2 0
       27 FORGLOOP                         R1 2 ; [-17]
       29 GETIMPORT                        R1 K8 [table.sort]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K3 ["_visibleInventories"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U1
       36 CALL                             R1 2 0
       37 GETUPVAL                         R1 0
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+43]
       40 GETUPVAL                         R1 1
       41 NAMECALL                         R1 R1 K9 ["_fetchFolderReadinessForAllInventories"]
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 2
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K10 ["ScopeType"]
       48 GETTABLEKS                       R2 R2 K11 ["ProjectShared"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K12 ["_pluginController"]
       53 NAMECALL                         R3 R3 K13 ["getGameInfo"]
       55 CALL                             R3 1 1
       56 GETTABLEKS                       R3 R3 K14 ["Id"]
       58 CALL                             R1 2 1
       59 GETUPVAL                         R2 1
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R4 R4 K15 ["append"]
       63 GETIMPORT                        R5 K17 [table.clone]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K3 ["_visibleInventories"]
       68 CALL                             R5 1 1
       69 NEWTABLE                         R6 0 1
       71 MOVE                             R7 R1
       72 SETLIST                          R6 R7 1 [1]
       74 CALL                             R4 2 -1
       75 NAMECALL                         R2 R2 K18 ["fetchFolders"]
       77 CALL                             R2 -1 0
       78 GETUPVAL                         R2 1
       79 NAMECALL                         R2 R2 K19 ["_updateRenderTree"]
       81 CALL                             R2 1 0
       82 JUMP                             ; [+4]
       83 GETUPVAL                         R1 1
       84 NAMECALL                         R1 R1 K20 ["_createExplorerItems"]
       86 CALL                             R1 1 0
       87 GETUPVAL                         R1 1
       88 NAMECALL                         R1 R1 K21 ["updateScopeOptions"]
       90 CALL                             R1 1 0
       91 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 NAMECALL                         R1 R0 K0 ["_resetScopes"]
        5 CALL                             R1 1 0
        6 NAMECALL                         R1 R0 K1 ["_clearHistory"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["_networking"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 DUPCLOSURE                       R4 K3 [PROTO_59]
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R1 R1 K4 ["fetchGroupsAsync"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_61:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_63:
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

PROTO_64:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_65:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_75:
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

PROTO_76:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_77:
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

PROTO_78:
        0 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
        2 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
        7 SETTABLE                         R1 R3 R2
        8 GETTABLEKS                       R3 R0 K3 ["OnHistoryChanged"]
       10 NAMECALL                         R3 R3 K4 ["Fire"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 255
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_83:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_84:
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

PROTO_85:
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
      114 GETTABLEKS                       R16 R16 K25 ["getFFlagAmrOrganizationFoundation"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K13 ["Src"]
      121 GETTABLEKS                       R17 R17 K24 ["Flags"]
      123 GETTABLEKS                       R17 R17 K26 ["getFFlagAmrNaturalSortOrder"]
      125 CALL                             R16 1 1
      126 LOADK                            R19 K27 ["ExplorerController"]
      127 NAMECALL                         R17 R4 K28 ["extend"]
      129 CALL                             R17 2 1
      130 NEWTABLE                         R18 0 2
      132 GETTABLEKS                       R19 R9 K29 ["ScopeType"]
      134 GETTABLEKS                       R19 R19 K30 ["ProjectShared"]
      136 GETTABLEKS                       R20 R9 K29 ["ScopeType"]
      138 GETTABLEKS                       R20 R20 K31 ["ProjectPlaces"]
      140 SETLIST                          R18 R19 2 [1]
      142 DUPCLOSURE                       R19 K32 [PROTO_3]
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R14
      149 SETTABLEKS                       R19 R17 K33 ["new"]
      151 DUPCLOSURE                       R19 K34 [PROTO_4]
      152 CAPTURE                          VAL R17
      153 SETTABLEKS                       R19 R17 K35 ["mock"]
      155 DUPCLOSURE                       R19 K36 [PROTO_5]
      156 SETTABLEKS                       R19 R17 K37 ["getIsMock"]
      158 DUPCLOSURE                       R19 K38 [PROTO_6]
      159 CAPTURE                          VAL R6
      160 SETTABLEKS                       R19 R17 K39 ["destroy"]
      162 DUPCLOSURE                       R19 K40 [PROTO_8]
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R19 R17 K41 ["_setExpansion"]
      166 DUPCLOSURE                       R19 K42 [PROTO_9]
      167 SETTABLEKS                       R19 R17 K43 ["_expandAncestorsRecursive"]
      169 DUPCLOSURE                       R19 K44 [PROTO_10]
      170 SETTABLEKS                       R19 R17 K45 ["_cleanStaleExpandedScopes"]
      172 DUPCLOSURE                       R19 K46 [PROTO_11]
      173 CAPTURE                          VAL R8
      174 SETTABLEKS                       R19 R17 K47 ["toggleExpansion"]
      176 DUPCLOSURE                       R19 K48 [PROTO_12]
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R15
      181 SETTABLEKS                       R19 R17 K49 ["_updateRenderTree"]
      183 DUPCLOSURE                       R19 K50 [PROTO_13]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R11
      186 SETTABLEKS                       R19 R17 K51 ["_generateProjectCustomScopes"]
      188 DUPCLOSURE                       R19 K52 [PROTO_14]
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R19 R17 K53 ["getProjectPlacesScope"]
      193 DUPCLOSURE                       R19 K54 [PROTO_15]
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R9
      196 SETTABLEKS                       R19 R17 K55 ["getProjectSharedScope"]
      198 DUPCLOSURE                       R19 K56 [PROTO_16]
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R11
      202 SETTABLEKS                       R19 R17 K57 ["_createExplorerItems"]
      204 DUPCLOSURE                       R19 K58 [PROTO_17]
      205 SETTABLEKS                       R19 R17 K59 ["getScopeNotifications"]
      207 DUPCLOSURE                       R19 K60 [PROTO_18]
      208 SETTABLEKS                       R19 R17 K61 ["notifyNewItemsInScope"]
      210 DUPCLOSURE                       R19 K62 [PROTO_19]
      211 SETTABLEKS                       R19 R17 K63 ["_setNewItemNotif"]
      213 DUPCLOSURE                       R19 K64 [PROTO_20]
      214 SETTABLEKS                       R19 R17 K65 ["_toggleNewItemNotif"]
      216 DUPCLOSURE                       R19 K66 [PROTO_21]
      217 SETTABLEKS                       R19 R17 K67 ["getScopeWithUid"]
      219 DUPCLOSURE                       R19 K68 [PROTO_22]
      220 SETTABLEKS                       R19 R17 K69 ["getVisibleInventories"]
      222 DUPCLOSURE                       R19 K70 [PROTO_23]
      223 CAPTURE                          VAL R14
      224 SETTABLEKS                       R19 R17 K71 ["_addRecentUploads"]
      226 DUPCLOSURE                       R19 K72 [PROTO_24]
      227 SETTABLEKS                       R19 R17 K73 ["_addUserAndExperienceScopes"]
      229 DUPCLOSURE                       R19 K74 [PROTO_25]
      230 CAPTURE                          VAL R12
      231 SETTABLEKS                       R19 R17 K75 ["convertFoldersToScopes"]
      233 DUPCLOSURE                       R19 K76 [PROTO_26]
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R7
      236 SETTABLEKS                       R19 R17 K77 ["getScopeRoot"]
      238 DUPCLOSURE                       R19 K78 [PROTO_28]
      239 SETTABLEKS                       R19 R17 K79 ["requestFolderReadiness"]
      241 DUPCLOSURE                       R19 K80 [PROTO_29]
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R9
      244 SETTABLEKS                       R19 R17 K81 ["_fetchFolderReadinessForAllInventories"]
      246 DUPCLOSURE                       R19 K82 [PROTO_30]
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R9
      249 SETTABLEKS                       R19 R17 K83 ["getFolderReadinessStatus"]
      251 DUPCLOSURE                       R19 K84 [PROTO_31]
      252 CAPTURE                          VAL R14
      253 CAPTURE                          VAL R9
      254 SETTABLEKS                       R19 R17 K85 ["isFolderReadyForScope"]
      256 DUPCLOSURE                       R19 K86 [PROTO_32]
      257 SETTABLEKS                       R19 R17 K87 ["isAncestor"]
      259 DUPCLOSURE                       R19 K88 [PROTO_33]
      260 SETTABLEKS                       R19 R17 K89 ["_decrementPendingFolderFetchCountAndCleanUp"]
      262 DUPCLOSURE                       R19 K90 [PROTO_38]
      263 CAPTURE                          VAL R1
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R8
      266 SETTABLEKS                       R19 R17 K91 ["fetchFolders"]
      268 DUPCLOSURE                       R19 K92 [PROTO_39]
      269 SETTABLEKS                       R19 R17 K93 ["getStagedFolder"]
      271 DUPCLOSURE                       R19 K94 [PROTO_40]
      272 CAPTURE                          VAL R14
      273 SETTABLEKS                       R19 R17 K95 ["removeStagedFolder"]
      275 DUPCLOSURE                       R19 K96 [PROTO_41]
      276 CAPTURE                          VAL R9
      277 CAPTURE                          VAL R14
      278 SETTABLEKS                       R19 R17 K97 ["stageFolder"]
      280 DUPCLOSURE                       R19 K98 [PROTO_42]
      281 SETTABLEKS                       R19 R17 K99 ["getRecentlyCreatedFolder"]
      283 DUPCLOSURE                       R19 K100 [PROTO_43]
      284 SETTABLEKS                       R19 R17 K101 ["clearRecentlyCreatedFolder"]
      286 DUPCLOSURE                       R19 K102 [PROTO_45]
      287 CAPTURE                          VAL R14
      288 SETTABLEKS                       R19 R17 K103 ["getFolderIndex"]
      290 DUPCLOSURE                       R19 K104 [PROTO_46]
      291 SETTABLEKS                       R19 R17 K105 ["handleCreatedFolder"]
      293 DUPCLOSURE                       R19 K106 [PROTO_47]
      294 SETTABLEKS                       R19 R17 K107 ["handleRenamedFolder"]
      296 DUPCLOSURE                       R19 K108 [PROTO_48]
      297 CAPTURE                          VAL R10
      298 SETTABLEKS                       R19 R17 K109 ["handleDeletedFolder"]
      300 DUPCLOSURE                       R19 K110 [PROTO_50]
      301 CAPTURE                          VAL R16
      302 CAPTURE                          VAL R13
      303 CAPTURE                          VAL R8
      304 SETTABLEKS                       R19 R17 K111 ["_sortChildrenByName"]
      306 DUPCLOSURE                       R19 K112 [PROTO_51]
      307 SETTABLEKS                       R19 R17 K113 ["_addScopeToChildren"]
      309 DUPCLOSURE                       R19 K114 [PROTO_53]
      310 CAPTURE                          VAL R8
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R9
      314 SETTABLEKS                       R19 R17 K115 ["_removeScope"]
      316 DUPCLOSURE                       R19 K116 [PROTO_55]
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R8
      319 CAPTURE                          VAL R1
      320 SETTABLEKS                       R19 R17 K117 ["moveScopes"]
      322 DUPCLOSURE                       R19 K118 [PROTO_56]
      323 SETTABLEKS                       R19 R17 K119 ["_resetScopes"]
      325 DUPCLOSURE                       R19 K120 [PROTO_60]
      326 CAPTURE                          VAL R15
      327 CAPTURE                          VAL R11
      328 CAPTURE                          VAL R9
      329 CAPTURE                          VAL R1
      330 CAPTURE                          VAL R8
      331 SETTABLEKS                       R19 R17 K121 ["refreshScopes"]
      333 DUPCLOSURE                       R19 K122 [PROTO_61]
      334 SETTABLEKS                       R19 R17 K123 ["getExplorerItems"]
      336 DUPCLOSURE                       R19 K124 [PROTO_62]
      337 SETTABLEKS                       R19 R17 K125 ["getExpansion"]
      339 DUPCLOSURE                       R19 K126 [PROTO_63]
      340 CAPTURE                          VAL R15
      341 SETTABLEKS                       R19 R17 K127 ["toggleVisibleInventory"]
      343 DUPCLOSURE                       R19 K128 [PROTO_64]
      344 SETTABLEKS                       R19 R17 K129 ["getShowScopeOptions"]
      346 DUPCLOSURE                       R19 K130 [PROTO_65]
      347 SETTABLEKS                       R19 R17 K131 ["enableScopeOptions"]
      349 DUPCLOSURE                       R19 K132 [PROTO_66]
      350 CAPTURE                          VAL R15
      351 SETTABLEKS                       R19 R17 K133 ["_saveGroupOptions"]
      353 DUPCLOSURE                       R19 K134 [PROTO_67]
      354 SETTABLEKS                       R19 R17 K135 ["closeScopeOptions"]
      356 DUPCLOSURE                       R19 K136 [PROTO_68]
      357 SETTABLEKS                       R19 R17 K137 ["getGroupOptions"]
      359 DUPCLOSURE                       R19 K138 [PROTO_69]
      360 SETTABLEKS                       R19 R17 K139 ["toggleScopeOption"]
      362 DUPCLOSURE                       R19 K140 [PROTO_71]
      363 CAPTURE                          VAL R9
      364 SETTABLEKS                       R19 R17 K141 ["updateScopeOptions"]
      366 DUPCLOSURE                       R19 K142 [PROTO_72]
      367 SETTABLEKS                       R19 R17 K143 ["isScopeOptionChecked"]
      369 DUPCLOSURE                       R19 K144 [PROTO_73]
      370 SETTABLEKS                       R19 R17 K145 ["hasAllOptionsChecked"]
      372 DUPCLOSURE                       R19 K146 [PROTO_74]
      373 SETTABLEKS                       R19 R17 K147 ["getToggleSet"]
      375 DUPCLOSURE                       R19 K148 [PROTO_75]
      376 SETTABLEKS                       R19 R17 K149 ["toggleSelectAllOptions"]
      378 DUPCLOSURE                       R19 K150 [PROTO_76]
      379 SETTABLEKS                       R19 R17 K151 ["_getHistoryRingIndex"]
      381 DUPCLOSURE                       R19 K152 [PROTO_77]
      382 SETTABLEKS                       R19 R17 K153 ["addToHistory"]
      384 DUPCLOSURE                       R19 K154 [PROTO_78]
      385 SETTABLEKS                       R19 R17 K155 ["updateCurrentHistoryItem"]
      387 DUPCLOSURE                       R19 K156 [PROTO_79]
      388 CAPTURE                          VAL R8
      389 SETTABLEKS                       R19 R17 K157 ["_goToHistory"]
      391 DUPCLOSURE                       R19 K158 [PROTO_80]
      392 SETTABLEKS                       R19 R17 K159 ["getHistoryAtStart"]
      394 DUPCLOSURE                       R19 K160 [PROTO_81]
      395 SETTABLEKS                       R19 R17 K161 ["getHistoryAtEnd"]
      397 DUPCLOSURE                       R19 K162 [PROTO_82]
      398 SETTABLEKS                       R19 R17 K163 ["backHistory"]
      400 DUPCLOSURE                       R19 K164 [PROTO_83]
      401 SETTABLEKS                       R19 R17 K165 ["forwardHistory"]
      403 DUPCLOSURE                       R19 K166 [PROTO_84]
      404 SETTABLEKS                       R19 R17 K167 ["_clearHistory"]
      406 DUPCLOSURE                       R19 K168 [PROTO_85]
      407 SETTABLEKS                       R19 R17 K169 ["getPlugin"]
      409 RETURN                           R17 1
