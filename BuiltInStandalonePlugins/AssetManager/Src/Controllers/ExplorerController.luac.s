PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIFEQKN                       R2 K1 [0] ; [+46]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["_scopes"]
        7 GETTABLEKS                       R3 R1 K3 ["Uid"]
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R2 R3
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["_scopes"]
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["ScopeType"]
       18 GETTABLEKS                       R4 R4 K5 ["ProjectPlaces"]
       20 GETTABLEKS                       R5 R1 K0 ["Id"]
       22 CALL                             R3 2 1
       23 LOADNIL                          R4
       24 SETTABLE                         R4 R2 R3
       25 GETUPVAL                         R2 0
       26 NAMECALL                         R2 R2 K6 ["_generateProjectCustomScopes"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 0
       30 NEWTABLE                         R4 0 1
       32 GETTABLEKS                       R5 R0 K3 ["Uid"]
       34 SETLIST                          R4 R5 1 [1]
       36 NAMECALL                         R2 R2 K7 ["requestFolderReadiness"]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 0
       40 NEWTABLE                         R4 0 1
       42 GETTABLEKS                       R5 R0 K3 ["Uid"]
       44 SETLIST                          R4 R5 1 [1]
       46 NAMECALL                         R2 R2 K8 ["fetchFolders"]
       48 CALL                             R2 2 0
       49 GETUPVAL                         R2 0
       50 NAMECALL                         R2 R2 K9 ["_updateRenderTree"]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

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
        0 NEWTABLE                         R2 64 0
        2 SETTABLEKS                       R1 R2 K0 ["_isMock"]
        4 GETTABLEKS                       R3 R0 K1 ["Networking"]
        6 SETTABLEKS                       R3 R2 K2 ["_networking"]
        8 GETTABLEKS                       R3 R0 K3 ["PluginController"]
       10 SETTABLEKS                       R3 R2 K4 ["_pluginController"]
       12 GETTABLEKS                       R3 R0 K5 ["LayoutController"]
       14 SETTABLEKS                       R3 R2 K6 ["_layoutController"]
       16 GETTABLEKS                       R3 R0 K7 ["IxpController"]
       18 SETTABLEKS                       R3 R2 K8 ["_ixpController"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K9 ["_explorerItems"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K10 ["_scopes"]
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K11 ["_groupsLoaded"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K12 ["_headers"]
       35 NEWTABLE                         R3 0 0
       37 SETTABLEKS                       R3 R2 K13 ["_visibleInventories"]
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K14 ["_stagedFolder"]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K15 ["_recentlyCreatedFolder"]
       45 NEWTABLE                         R3 0 1
       47 DUPTABLE                         R4 K17 [{"ScopeUid"}]
       48 GETTABLEKS                       R5 R0 K3 ["PluginController"]
       50 NAMECALL                         R5 R5 K18 ["getCurrentScope"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R5 R5 K19 ["Uid"]
       55 SETTABLEKS                       R5 R4 K16 ["ScopeUid"]
       57 SETLIST                          R3 R4 1 [1]
       59 SETTABLEKS                       R3 R2 K20 ["_historyRingBuffer"]
       61 LOADN                            R3 1
       62 SETTABLEKS                       R3 R2 K21 ["_historyBufferIndex"]
       64 NEWTABLE                         R3 0 0
       66 SETTABLEKS                       R3 R2 K22 ["_expansion"]
       68 LOADN                            R3 0
       69 SETTABLEKS                       R3 R2 K23 ["_pendingFolderFetchCount"]
       71 LOADN                            R3 0
       72 SETTABLEKS                       R3 R2 K24 ["_folderFetchEpoch"]
       74 NEWTABLE                         R3 0 0
       76 SETTABLEKS                       R3 R2 K25 ["_groupOptions"]
       78 NEWTABLE                         R3 0 0
       80 SETTABLEKS                       R3 R2 K26 ["_toggleSet"]
       82 LOADB                            R3 0
       83 SETTABLEKS                       R3 R2 K27 ["_showScopeOptions"]
       85 NEWTABLE                         R3 0 0
       87 SETTABLEKS                       R3 R2 K28 ["_hiddenInventories"]
       89 NEWTABLE                         R3 0 0
       91 SETTABLEKS                       R3 R2 K29 ["_newItemNotifs"]
       93 NEWTABLE                         R3 0 0
       95 SETTABLEKS                       R3 R2 K30 ["_folderReadyMap"]
       97 NEWTABLE                         R3 0 0
       99 SETTABLEKS                       R3 R2 K31 ["_connections"]
      101 GETUPVAL                         R3 0
      102 GETTABLEKS                       R3 R3 K32 ["new"]
      104 CALL                             R3 0 1
      105 SETTABLEKS                       R3 R2 K33 ["OnExplorerItemsChanged"]
      107 GETUPVAL                         R3 0
      108 GETTABLEKS                       R3 R3 K32 ["new"]
      110 CALL                             R3 0 1
      111 SETTABLEKS                       R3 R2 K34 ["OnExpansionChanged"]
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R3 R3 K32 ["new"]
      116 CALL                             R3 0 1
      117 SETTABLEKS                       R3 R2 K35 ["OnGroupOptionsChanged"]
      119 GETUPVAL                         R3 0
      120 GETTABLEKS                       R3 R3 K32 ["new"]
      122 CALL                             R3 0 1
      123 SETTABLEKS                       R3 R2 K36 ["OnShowScopeOptionsChanged"]
      125 GETUPVAL                         R3 0
      126 GETTABLEKS                       R3 R3 K32 ["new"]
      128 CALL                             R3 0 1
      129 SETTABLEKS                       R3 R2 K37 ["OnToggleSetChanged"]
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K32 ["new"]
      134 CALL                             R3 0 1
      135 SETTABLEKS                       R3 R2 K38 ["OnScopeNotificationsChanged"]
      137 GETUPVAL                         R3 0
      138 GETTABLEKS                       R3 R3 K32 ["new"]
      140 CALL                             R3 0 1
      141 SETTABLEKS                       R3 R2 K39 ["OnHistoryChanged"]
      143 GETUPVAL                         R3 0
      144 GETTABLEKS                       R3 R3 K32 ["new"]
      146 CALL                             R3 0 1
      147 SETTABLEKS                       R3 R2 K40 ["OnRestoreSearchState"]
      149 GETUPVAL                         R3 0
      150 GETTABLEKS                       R3 R3 K32 ["new"]
      152 CALL                             R3 0 1
      153 SETTABLEKS                       R3 R2 K41 ["OnFolderReadyMapChanged"]
      155 GETUPVAL                         R5 1
      156 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
      158 MOVE                             R4 R2
      159 GETIMPORT                        R3 K43 [setmetatable]
      161 CALL                             R3 2 0
      162 GETUPVAL                         R3 2
      163 GETTABLEKS                       R3 R3 K44 ["asList"]
      165 GETUPVAL                         R4 2
      166 GETTABLEKS                       R4 R4 K45 ["SidebarHeader"]
      168 CALL                             R3 1 3
      169 FORGPREP                         R3
      170 GETTABLEKS                       R8 R2 K12 ["_headers"]
      172 DUPTABLE                         R9 K49 [{"Type", "Name", "Id", "Uid"}]
      173 GETUPVAL                         R10 2
      174 GETTABLEKS                       R10 R10 K50 ["ScopeType"]
      176 GETTABLEKS                       R10 R10 K51 ["Header"]
      178 SETTABLEKS                       R10 R9 K46 ["Type"]
      180 SETTABLEKS                       R7 R9 K47 ["Name"]
      182 SETTABLEKS                       R6 R9 K48 ["Id"]
      184 GETUPVAL                         R10 3
      185 GETUPVAL                         R11 2
      186 GETTABLEKS                       R11 R11 K50 ["ScopeType"]
      188 GETTABLEKS                       R11 R11 K51 ["Header"]
      190 MOVE                             R12 R6
      191 CALL                             R10 2 1
      192 SETTABLEKS                       R10 R9 K19 ["Uid"]
      194 SETTABLE                         R9 R8 R7
      195 FORGLOOP                         R3 2 ; [-26]
      197 NAMECALL                         R3 R2 K52 ["_addUserAndExperienceScopes"]
      199 CALL                             R3 1 0
      200 NAMECALL                         R3 R2 K53 ["_addRecentUploads"]
      202 CALL                             R3 1 0
      203 NAMECALL                         R3 R2 K54 ["_updateRenderTree"]
      205 CALL                             R3 1 0
      206 GETTABLEKS                       R4 R2 K31 ["_connections"]
      208 GETTABLEKS                       R5 R2 K4 ["_pluginController"]
      210 GETTABLEKS                       R5 R5 K55 ["OnGameInfoFetched"]
      212 NEWCLOSURE                       R7 P0
      213 CAPTURE                          VAL R2
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          UPVAL U2
      216 NAMECALL                         R5 R5 K56 ["Connect"]
      218 CALL                             R5 2 -1
      219 FASTCALL                         TABLE_INSERT ; [+2]
      220 GETIMPORT                        R3 K59 [table.insert]
      222 CALL                             R3 -1 0
      223 GETTABLEKS                       R4 R2 K31 ["_connections"]
      225 GETTABLEKS                       R5 R2 K4 ["_pluginController"]
      227 GETTABLEKS                       R5 R5 K60 ["OnNewAssetFetched"]
      229 NEWCLOSURE                       R7 P1
      230 CAPTURE                          VAL R2
      231 CAPTURE                          UPVAL U2
      232 CAPTURE                          UPVAL U4
      233 NAMECALL                         R5 R5 K56 ["Connect"]
      235 CALL                             R5 2 -1
      236 FASTCALL                         TABLE_INSERT ; [+2]
      237 GETIMPORT                        R3 K59 [table.insert]
      239 CALL                             R3 -1 0
      240 GETTABLEKS                       R4 R2 K31 ["_connections"]
      242 GETTABLEKS                       R5 R2 K4 ["_pluginController"]
      244 GETTABLEKS                       R5 R5 K61 ["OnCurrentScopeChanged"]
      246 NEWCLOSURE                       R7 P2
      247 CAPTURE                          VAL R2
      248 NAMECALL                         R5 R5 K56 ["Connect"]
      250 CALL                             R5 2 -1
      251 FASTCALL                         TABLE_INSERT ; [+2]
      252 GETIMPORT                        R3 K59 [table.insert]
      254 CALL                             R3 -1 0
      255 NAMECALL                         R3 R2 K62 ["refreshScopes"]
      257 CALL                             R3 1 0
      258 RETURN                           R2 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_connections"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R1 K0 ["HiddenInventories"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R0 K1 ["_hiddenInventories"]
       13 LOADB                            R9 1
       14 SETTABLE                         R9 R8 R7
       15 FORGLOOP                         R3 2 ; [-5]
       17 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_ixpController"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["IxpVariable"]
        5 GETTABLEKS                       R4 R4 K2 ["Omnisearch"]
        7 NAMECALL                         R2 R2 K3 ["getValue"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["IxpValue"]
       13 GETTABLEKS                       R3 R3 K5 ["Experiment"]
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeWithUid"]
        4 CALL                             R1 2 1
        5 NOT                              R2 R1
        6 JUMPIF                           R2 ; [+3]
        7 GETTABLEKS                       R3 R1 K1 ["Children"]
        9 NOT                              R2 R3
       10 RETURN                           R2 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getScopeWithUid"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+9]
        5 GETUPVAL                         R3 0
        6 LOADK                            R4 K1 ["Cannot reveal scope %* in sidebar, it is not registered"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 2 1
       11 LOADK                            R5 K3 ["WARN"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R0 K4 ["_expandAncestorsRecursive"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_expansion"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+13]
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K1 ["Collapsing scope with ID %*"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 2 1
       10 CALL                             R2 1 0
       11 MOVE                             R4 R1
       12 LOADNIL                          R5
       13 NAMECALL                         R2 R0 K3 ["_setExpansion"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 LOADK                            R3 K4 ["Expanding scope with ID %*"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K2 ["format"]
       22 CALL                             R3 2 1
       23 CALL                             R2 1 0
       24 MOVE                             R4 R1
       25 LOADB                            R5 1
       26 NAMECALL                         R2 R0 K3 ["_setExpansion"]
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_15:
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
       36 JUMPIFEQKN                       R3 K12 [0] ; [+39]
       38 GETTABLEKS                       R6 R0 K2 ["_headers"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K3 ["SidebarHeader"]
       43 GETTABLEKS                       R7 R7 K13 ["Project"]
       45 GETTABLE                         R5 R6 R7
       46 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       48 MOVE                             R4 R1
       49 GETIMPORT                        R3 K7 [table.insert]
       51 CALL                             R3 2 0
       52 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       54 MOVE                             R4 R1
       55 MOVE                             R5 R2
       56 GETIMPORT                        R3 K7 [table.insert]
       58 CALL                             R3 2 0
       59 MOVE                             R4 R1
       60 GETUPVAL                         R7 2
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K14 ["ScopeType"]
       64 GETTABLEKS                       R8 R8 K15 ["ProjectPlaces"]
       66 GETTABLEKS                       R9 R2 K11 ["Id"]
       68 CALL                             R7 2 -1
       69 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       71 CALL                             R5 -1 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R3 K7 [table.insert]
       75 CALL                             R3 -1 0
       76 GETTABLEKS                       R6 R0 K2 ["_headers"]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K3 ["SidebarHeader"]
       81 GETTABLEKS                       R7 R7 K16 ["Inventories"]
       83 GETTABLE                         R5 R6 R7
       84 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       86 MOVE                             R4 R1
       87 GETIMPORT                        R3 K7 [table.insert]
       89 CALL                             R3 2 0
       90 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
       92 NAMECALL                         R5 R5 K17 ["getUser"]
       94 CALL                             R5 1 1
       95 GETTABLEKS                       R5 R5 K9 ["Uid"]
       97 NAMECALL                         R3 R0 K10 ["getScopeWithUid"]
       99 CALL                             R3 2 1
      100 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      102 MOVE                             R5 R1
      103 MOVE                             R6 R3
      104 GETIMPORT                        R4 K7 [table.insert]
      106 CALL                             R4 2 0
      107 NAMECALL                         R4 R0 K18 ["getVisibleInventories"]
      109 CALL                             R4 1 3
      110 FORGPREP                         R4
      111 MOVE                             R11 R8
      112 NAMECALL                         R9 R0 K10 ["getScopeWithUid"]
      114 CALL                             R9 2 1
      115 GETTABLEKS                       R10 R9 K19 ["Type"]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K14 ["ScopeType"]
      120 GETTABLEKS                       R11 R11 K20 ["Group"]
      122 JUMPIFNOTEQ                      R10 R11 ; [+8]
      124 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      126 MOVE                             R11 R1
      127 MOVE                             R12 R9
      128 GETIMPORT                        R10 K7 [table.insert]
      130 CALL                             R10 2 0
      131 FORGLOOP                         R4 2 ; [-21]
      133 SETTABLEKS                       R1 R0 K21 ["_explorerItems"]
      135 GETTABLEKS                       R4 R0 K22 ["OnExplorerItemsChanged"]
      137 GETTABLEKS                       R6 R0 K21 ["_explorerItems"]
      139 NAMECALL                         R4 R4 K23 ["Fire"]
      141 CALL                             R4 2 0
      142 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["_getAvailableInventories"]
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R0 K1 ["_pluginController"]
        6 NAMECALL                         R2 R2 K2 ["getUser"]
        8 CALL                             R2 1 1
        9 LOADN                            R5 1
       10 GETTABLEKS                       R6 R2 K3 ["Uid"]
       12 FASTCALL3                        TABLE_INSERT R1 R5 R6
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K6 [table.insert]
       17 CALL                             R3 3 0
       18 SETTABLEKS                       R1 R0 K7 ["_visibleInventories"]
       20 GETTABLEKS                       R3 R0 K8 ["_hiddenInventories"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R9 R0 K9 ["_scopes"]
       27 GETTABLE                         R8 R9 R6
       28 JUMPIF                           R8 ; [+4]
       29 GETTABLEKS                       R8 R0 K8 ["_hiddenInventories"]
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R8 R6
       33 FORGLOOP                         R3 2 ; [-9]
       35 RETURN                           R0 0

PROTO_17:
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
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K2 ["Utils"]
       17 GETTABLEKS                       R5 R5 K3 ["naturalCompare"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R3
       21 CALL                             R5 2 1
       22 LOADN                            R6 0
       23 JUMPIFLT                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 RETURN                           R4 1

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["_scopes"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETTABLEKS                       R10 R0 K1 ["_hiddenInventories"]
       10 GETTABLEKS                       R11 R8 K2 ["Uid"]
       12 GETTABLE                         R9 R10 R11
       13 JUMPIF                           R9 ; [+36]
       14 GETTABLEKS                       R9 R8 K3 ["Type"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K4 ["ScopeType"]
       19 GETTABLEKS                       R10 R10 K5 ["Group"]
       21 JUMPIFNOTEQ                      R9 R10 ; [+28]
       23 MOVE                             R9 R2
       24 JUMPIFNOT                        R9 ; [+4]
       25 JUMPIFNOTEQKS                    R2 K6 [""] ; [+2]
       27 LOADB                            R9 0 +1
       28 LOADB                            R9 1
       29 JUMPIFNOT                        R9 ; [+12]
       30 GETIMPORT                        R10 K9 [string.find]
       32 GETTABLEKS                       R11 R8 K10 ["Name"]
       34 NAMECALL                         R11 R11 K11 ["lower"]
       36 CALL                             R11 1 1
       37 NAMECALL                         R12 R2 K11 ["lower"]
       39 CALL                             R12 1 -1
       40 CALL                             R10 -1 1
       41 JUMPIFNOT                        R10 ; [+8]
       42 GETTABLEKS                       R12 R8 K2 ["Uid"]
       44 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       46 MOVE                             R11 R3
       47 GETIMPORT                        R10 K14 [table.insert]
       49 CALL                             R10 2 0
       50 FORGLOOP                         R4 2 ; [-44]
       52 GETIMPORT                        R4 K16 [table.sort]
       54 MOVE                             R5 R3
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 CALL                             R4 2 0
       59 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginController"]
        2 NAMECALL                         R1 R1 K1 ["getGameInfo"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["ScopeType"]
        9 GETTABLEKS                       R3 R3 K3 ["ProjectPlaces"]
       11 GETTABLEKS                       R4 R1 K4 ["Id"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R3 R0 K5 ["_scopes"]
       16 GETTABLEKS                       R4 R1 K6 ["Uid"]
       18 SETTABLE                         R1 R3 R4
       19 GETTABLEKS                       R3 R0 K5 ["_scopes"]
       21 DUPTABLE                         R4 K9 [{"Name", "Type", "Id", "Uid"}]
       22 GETTABLEKS                       R5 R1 K7 ["Name"]
       24 SETTABLEKS                       R5 R4 K7 ["Name"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       29 GETTABLEKS                       R5 R5 K3 ["ProjectPlaces"]
       31 SETTABLEKS                       R5 R4 K8 ["Type"]
       33 GETTABLEKS                       R5 R1 K4 ["Id"]
       35 SETTABLEKS                       R5 R4 K4 ["Id"]
       37 SETTABLEKS                       R2 R4 K6 ["Uid"]
       39 SETTABLE                         R4 R3 R2
       40 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_newItemNotifs"]
        2 RETURN                           R1 1

PROTO_22:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["_setNewItemNotif"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_groupsLoaded"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_visibleInventories"]
        2 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_scopes"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["RecentUploads"]
        5 GETTABLEKS                       R2 R2 K2 ["Uid"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_29:
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
       26 JUMPIFEQKN                       R3 K10 [0] ; [+4]
       28 NAMECALL                         R3 R0 K11 ["_generateProjectCustomScopes"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_visibleInventories"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K4 ["_pluginController"]
        7 NAMECALL                         R2 R2 K5 ["getGameInfo"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Id"]
       12 JUMPIFEQKN                       R3 K7 [0] ; [+9]
       14 GETTABLEKS                       R5 R2 K8 ["Uid"]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K10 [table.insert]
       21 CALL                             R3 2 0
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K11 ["requestFolderReadiness"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        2 SUBK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        5 GETTABLEKS                       R1 R0 K0 ["_pendingFolderFetchCount"]
        7 JUMPIFNOTEQKN                    R1 K2 [0] ; [+4]
        9 NAMECALL                         R1 R0 K3 ["_cleanStaleExpandedScopes"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_folderFetchEpoch"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K1 ["Error fetching folders: %*"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K2 ["format"]
       12 CALL                             R2 2 1
       13 LOADK                            R3 K3 ["WARN"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 NAMECALL                         R1 R1 K4 ["_decrementPendingFolderFetchCountAndCleanUp"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 RETURN                           R1 1

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        2 RETURN                           R1 1

PROTO_48:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_recentlyCreatedFolder"]
        3 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["_removeScope"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_scopes"]
        3 GETTABLE                         R2 R3 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["_scopes"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFNOT                        R2 ; [+35]
        9 JUMPIFNOT                        R3 ; [+34]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+16]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K1 ["Utils"]
       16 GETTABLEKS                       R5 R5 K2 ["naturalCompare"]
       18 GETTABLEKS                       R6 R2 K3 ["Name"]
       20 GETTABLEKS                       R7 R3 K3 ["Name"]
       22 CALL                             R5 2 1
       23 LOADN                            R6 0
       24 JUMPIFLT                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 GETTABLEKS                       R5 R2 K3 ["Name"]
       31 NAMECALL                         R5 R5 K4 ["lower"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R3 K3 ["Name"]
       36 NAMECALL                         R6 R6 K4 ["lower"]
       38 CALL                             R6 1 1
       39 JUMPIFLT                         R5 R6 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 RETURN                           R4 1
       44 GETUPVAL                         R4 3
       45 LOADK                            R5 K5 ["Cannot sort children because scope with UID $%* does not exist."]
       46 JUMPIF                           R2 ; [+2]
       47 MOVE                             R7 R0
       48 JUMP                             ; [+1]
       49 MOVE                             R7 R1
       50 NAMECALL                         R5 R5 K6 ["format"]
       52 CALL                             R5 2 1
       53 CALL                             R4 1 0
       54 LOADB                            R4 0
       55 RETURN                           R4 1

PROTO_55:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 2 0
        9 RETURN                           R1 1

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_58:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K1 ["Children"]
        8 JUMPIFNOT                        R3 ; [+13]
        9 GETTABLEKS                       R4 R2 K1 ["Children"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+8]
       15 GETUPVAL                         R3 0
       16 LOADK                            R4 K2 ["Remove scope %* even though it has children"]
       17 MOVE                             R6 R1
       18 NAMECALL                         R4 R4 K3 ["format"]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R4 R0 K0 ["_scopes"]
       24 GETTABLEKS                       R5 R2 K4 ["Parent"]
       26 GETTABLE                         R3 R4 R5
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R4 R3 K1 ["Children"]
       30 JUMPIF                           R4 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K5 ["filter"]
       35 GETTABLEKS                       R5 R3 K1 ["Children"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R1
       39 CALL                             R4 2 1
       40 LENGTH                           R6 R4
       41 LOADN                            R7 0
       42 JUMPIFNOTLT                      R7 R6 ; [+3]
       44 MOVE                             R5 R4
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R3 K1 ["Children"]
       49 GETTABLEKS                       R5 R0 K0 ["_scopes"]
       51 LOADNIL                          R6
       52 SETTABLE                         R6 R5 R1
       53 NAMECALL                         R5 R0 K6 ["_updateRenderTree"]
       55 CALL                             R5 1 0
       56 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       58 NAMECALL                         R5 R5 K8 ["getCurrentScope"]
       60 CALL                             R5 1 1
       61 GETTABLEKS                       R5 R5 K9 ["Uid"]
       63 JUMPIFEQ                         R5 R1 ; [+2]
       65 RETURN                           R0 0
       66 JUMPIFNOT                        R3 ; [+7]
       67 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       69 MOVE                             R7 R3
       70 NAMECALL                         R5 R5 K10 ["setCurrentScope"]
       72 CALL                             R5 2 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R6 R2 K11 ["Type"]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K12 ["ScopeType"]
       79 GETTABLEKS                       R7 R7 K13 ["Folder"]
       81 JUMPIFNOTEQ                      R6 R7 ; [+9]
       83 GETTABLEKS                       R6 R2 K14 ["Path"]
       85 JUMPIFNOT                        R6 ; [+5]
       86 MOVE                             R7 R2
       87 NAMECALL                         R5 R0 K15 ["getScopeRoot"]
       89 CALL                             R5 2 1
       90 JUMP                             ; [+5]
       91 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       93 NAMECALL                         R5 R5 K16 ["getUser"]
       95 CALL                             R5 1 1
       96 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
       98 MOVE                             R8 R5
       99 NAMECALL                         R6 R6 K10 ["setCurrentScope"]
      101 CALL                             R6 2 0
      102 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_60:
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
       14 JUMPIF                           R13 ; [+46]
       15 GETIMPORT                        R13 K3 [string.find]
       17 NAMECALL                         R14 R12 K4 ["lower"]
       19 CALL                             R14 1 1
       20 LOADK                            R15 K5 ["folder"]
       21 CALL                             R13 2 1
       22 JUMPIFNOT                        R13 ; [+38]
       23 GETUPVAL                         R13 0
       24 MOVE                             R14 R12
       25 CALL                             R13 1 1
       26 MOVE                             R16 R13
       27 NAMECALL                         R14 R0 K0 ["getScopeWithUid"]
       29 CALL                             R14 2 1
       30 JUMPIF                           R14 ; [+9]
       31 GETUPVAL                         R15 1
       32 LOADK                            R16 K6 ["No scope found for folder UID $%*, skipping move for path $%*"]
       33 MOVE                             R18 R13
       34 MOVE                             R19 R12
       35 NAMECALL                         R16 R16 K7 ["format"]
       37 CALL                             R16 3 1
       38 CALL                             R15 1 0
       39 JUMP                             ; [+21]
       40 GETUPVAL                         R15 2
       41 GETTABLEKS                       R15 R15 K8 ["filter"]
       43 GETTABLEKS                       R16 R5 K9 ["Children"]
       45 JUMPIF                           R16 ; [+2]
       46 NEWTABLE                         R16 0 0
       48 NEWCLOSURE                       R17 P0
       49 CAPTURE                          VAL R13
       50 CALL                             R15 2 1
       51 SETTABLEKS                       R15 R5 K9 ["Children"]
       53 MOVE                             R17 R6
       54 MOVE                             R18 R13
       55 NAMECALL                         R15 R0 K10 ["_addScopeToChildren"]
       57 CALL                             R15 3 0
       58 SETTABLEKS                       R2 R14 K11 ["Parent"]
       60 LOADB                            R7 1
       61 FORGLOOP                         R8 2 ; [-49]
       63 JUMPIFNOT                        R7 ; [+3]
       64 NAMECALL                         R8 R0 K12 ["_updateRenderTree"]
       66 CALL                             R8 1 0
       67 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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
       14 FORGLOOP                         R1 2 ; [-7]
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K3 ["_groupsLoaded"]
       20 GETUPVAL                         R1 0
       21 NAMECALL                         R1 R1 K4 ["_updateVisibleInventories"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K5 ["_fetchFolderReadinessForAllInventories"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K6 ["_pluginController"]
       31 NAMECALL                         R1 R1 K7 ["getGameInfo"]
       33 CALL                             R1 1 1
       34 GETTABLEKS                       R1 R1 K2 ["Uid"]
       36 GETUPVAL                         R2 0
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K8 ["append"]
       40 GETIMPORT                        R5 K11 [table.clone]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K12 ["_visibleInventories"]
       45 CALL                             R5 1 1
       46 NEWTABLE                         R6 0 1
       48 MOVE                             R7 R1
       49 SETLIST                          R6 R7 1 [1]
       51 CALL                             R4 2 -1
       52 NAMECALL                         R2 R2 K13 ["fetchFolders"]
       54 CALL                             R2 -1 0
       55 GETUPVAL                         R2 0
       56 NAMECALL                         R2 R2 K14 ["_updateRenderTree"]
       58 CALL                             R2 1 0
       59 GETUPVAL                         R2 0
       60 NAMECALL                         R2 R2 K15 ["updateScopeOptions"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Error fetching groups: %*"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_64:
        0 NAMECALL                         R1 R0 K0 ["_clearHistory"]
        2 CALL                             R1 1 0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 DUPCLOSURE                       R2 K1 [PROTO_63]
        7 CAPTURE                          UPVAL U1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["Networking"]
       14 GETTABLEKS                       R3 R3 K3 ["fetchGroupsAsync"]
       16 CALL                             R3 0 1
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 NAMECALL                         R3 R3 K4 ["andThen"]
       21 CALL                             R3 3 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R0 K5 ["_networking"]
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K3 ["fetchGroupsAsync"]
       29 CALL                             R3 3 0
       30 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_66:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_67:
        0 GETTABLEKS                       R3 R0 K0 ["_hiddenInventories"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["_hiddenInventories"]
        6 LOADB                            R3 1
        7 SETTABLE                         R3 R2 R1
        8 JUMP                             ; [+4]
        9 GETTABLEKS                       R2 R0 K0 ["_hiddenInventories"]
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R1
       13 NAMECALL                         R2 R0 K1 ["_updateVisibleInventories"]
       15 CALL                             R2 1 0
       16 NAMECALL                         R2 R0 K2 ["_updateRenderTree"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keys"]
        3 GETTABLEKS                       R2 R0 K1 ["_hiddenInventories"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_69:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_70:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K1 ["toggleVisibleInventory"]
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["count"]
       14 GETTABLEKS                       R2 R0 K0 ["_toggleSet"]
       16 CALL                             R1 1 1
       17 JUMPIFEQKN                       R1 K3 [0] ; [+4]
       19 NAMECALL                         R1 R0 K4 ["refreshScopes"]
       21 CALL                             R1 1 0
       22 NAMECALL                         R1 R0 K5 ["_updateRenderTree"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_74:
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

PROTO_75:
        0 LOADB                            R4 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K0 ["_getAvailableInventories"]
        4 CALL                             R2 3 1
        5 SETTABLEKS                       R2 R0 K1 ["_groupOptions"]
        7 GETTABLEKS                       R2 R0 K2 ["OnGroupOptionsChanged"]
        9 GETTABLEKS                       R4 R0 K1 ["_groupOptions"]
       11 NAMECALL                         R2 R2 K3 ["Fire"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
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

PROTO_78:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_79:
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

PROTO_80:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_81:
        0 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
        2 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+62]
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
       38 GETTABLEKS                       R5 R2 K3 ["SearchState"]
       40 JUMPIFNOT                        R5 ; [+15]
       41 GETTABLEKS                       R5 R1 K3 ["SearchState"]
       43 JUMPIFNOT                        R5 ; [+12]
       44 GETTABLEKS                       R6 R2 K3 ["SearchState"]
       46 GETTABLEKS                       R6 R6 K5 ["SearchTerm"]
       48 GETTABLEKS                       R7 R1 K3 ["SearchState"]
       50 GETTABLEKS                       R7 R7 K5 ["SearchTerm"]
       52 JUMPIFEQ                         R6 R7 ; [+2]
       54 LOADB                            R5 0 +1
       55 LOADB                            R5 1
       56 NAMECALL                         R6 R0 K6 ["_isOmnisearchEnabled"]
       58 CALL                             R6 1 1
       59 JUMPIFNOT                        R6 ; [+5]
       60 JUMPIF                           R3 ; [+2]
       61 JUMPIFNOT                        R5 ; [+6]
       62 JUMPIFNOT                        R4 ; [+5]
       63 RETURN                           R0 0
       64 JUMP                             ; [+3]
       65 JUMPIF                           R3 ; [+1]
       66 JUMPIFNOT                        R4 ; [+1]
       67 RETURN                           R0 0
       68 GETTABLEKS                       R6 R0 K1 ["_historyBufferIndex"]
       70 ADDK                             R5 R6 K7 [1]
       71 NAMECALL                         R3 R0 K8 ["_getHistoryRingIndex"]
       73 CALL                             R3 2 1
       74 GETTABLEKS                       R4 R0 K0 ["_historyRingBuffer"]
       76 SETTABLE                         R1 R4 R3
       77 SETTABLEKS                       R3 R0 K1 ["_historyBufferIndex"]
       79 GETTABLEKS                       R4 R0 K0 ["_historyRingBuffer"]
       81 GETTABLEKS                       R8 R0 K1 ["_historyBufferIndex"]
       83 ADDK                             R7 R8 K7 [1]
       84 NAMECALL                         R5 R0 K8 ["_getHistoryRingIndex"]
       86 CALL                             R5 2 1
       87 LOADNIL                          R6
       88 SETTABLE                         R6 R4 R5
       89 GETTABLEKS                       R4 R0 K9 ["OnHistoryChanged"]
       91 NAMECALL                         R4 R4 K10 ["Fire"]
       93 CALL                             R4 1 0
       94 RETURN                           R0 0

PROTO_82:
        0 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
        2 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
        7 SETTABLE                         R1 R3 R2
        8 GETTABLEKS                       R3 R0 K3 ["OnHistoryChanged"]
       10 NAMECALL                         R3 R3 K4 ["Fire"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_83:
        0 GETTABLEKS                       R5 R0 K0 ["_historyBufferIndex"]
        2 ADD                              R4 R5 R1
        3 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K0 ["_historyBufferIndex"]
        8 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
       10 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R3 R2 K3 ["ScopeUid"]
       15 JUMPIFNOT                        R3 ; [+29]
       16 GETTABLEKS                       R5 R2 K3 ["ScopeUid"]
       18 NAMECALL                         R3 R0 K4 ["getScopeWithUid"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+10]
       22 GETUPVAL                         R4 0
       23 LOADK                            R5 K5 ["Scope with UID %* not found in scopes"]
       24 GETTABLEKS                       R7 R2 K3 ["ScopeUid"]
       26 NAMECALL                         R5 R5 K6 ["format"]
       28 CALL                             R5 2 1
       29 LOADK                            R6 K7 ["WARN"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R4 R0 K8 ["_pluginController"]
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K9 ["setCurrentScope"]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R0 K10 ["OnRestoreSearchState"]
       40 LOADNIL                          R6
       41 NAMECALL                         R4 R4 K11 ["Fire"]
       43 CALL                             R4 2 0
       44 JUMP                             ; [+15]
       45 GETTABLEKS                       R3 R2 K12 ["SearchState"]
       47 JUMPIFNOT                        R3 ; [+8]
       48 GETTABLEKS                       R3 R0 K10 ["OnRestoreSearchState"]
       50 GETTABLEKS                       R5 R2 K12 ["SearchState"]
       52 NAMECALL                         R3 R3 K11 ["Fire"]
       54 CALL                             R3 2 0
       55 JUMP                             ; [+4]
       56 GETUPVAL                         R3 0
       57 LOADK                            R4 K13 ["Invalid history item, no scope or search state"]
       58 LOADK                            R5 K7 ["WARN"]
       59 CALL                             R3 2 0
       60 GETTABLEKS                       R3 R0 K14 ["OnHistoryChanged"]
       62 NAMECALL                         R3 R3 K11 ["Fire"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_84:
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

PROTO_85:
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

PROTO_86:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 -1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_87:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_88:
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

PROTO_89:
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
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Utils"]
       16 GETTABLEKS                       R2 R2 K9 ["createFolderUid"]
       18 GETTABLEKS                       R3 R1 K8 ["Utils"]
       20 GETTABLEKS                       R3 R3 K10 ["createScopeUid"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K6 ["Packages"]
       26 GETTABLEKS                       R5 R5 K11 ["Dash"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K6 ["Packages"]
       33 GETTABLEKS                       R6 R6 K12 ["Framework"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K14 ["ContextItem"]
       40 GETTABLEKS                       R8 R5 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["Signal"]
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R0 K17 ["Src"]
       48 GETTABLEKS                       R10 R10 K15 ["Util"]
       50 GETTABLEKS                       R10 R10 K18 ["cleanConnections"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R0 K17 ["Src"]
       57 GETTABLEKS                       R11 R11 K15 ["Util"]
       59 GETTABLEKS                       R11 R11 K19 ["createAccountUidFromPath"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K17 ["Src"]
       66 GETTABLEKS                       R12 R12 K15 ["Util"]
       68 GETTABLEKS                       R12 R12 K20 ["logIfDebug"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R0 K17 ["Src"]
       75 GETTABLEKS                       R13 R13 K21 ["Types"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K17 ["Src"]
       82 GETTABLEKS                       R14 R14 K15 ["Util"]
       84 GETTABLEKS                       R14 R14 K22 ["convertFolderItemToScope"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R0 K17 ["Src"]
       91 GETTABLEKS                       R15 R15 K23 ["Resources"]
       93 GETTABLEKS                       R15 R15 K24 ["Constants"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K17 ["Src"]
      100 GETTABLEKS                       R16 R16 K25 ["Flags"]
      102 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrNaturalSortOrder"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K17 ["Src"]
      109 GETTABLEKS                       R17 R17 K25 ["Flags"]
      111 GETTABLEKS                       R17 R17 K27 ["getFFlagAmrUseAssetManagementNetworking"]
      113 CALL                             R16 1 1
      114 LOADK                            R19 K28 ["ExplorerController"]
      115 NAMECALL                         R17 R7 K29 ["extend"]
      117 CALL                             R17 2 1
      118 DUPCLOSURE                       R18 K30 [PROTO_3]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R14
      124 SETTABLEKS                       R18 R17 K31 ["new"]
      126 DUPCLOSURE                       R18 K32 [PROTO_4]
      127 CAPTURE                          VAL R17
      128 SETTABLEKS                       R18 R17 K33 ["mock"]
      130 DUPCLOSURE                       R18 K34 [PROTO_5]
      131 SETTABLEKS                       R18 R17 K35 ["getIsMock"]
      133 DUPCLOSURE                       R18 K36 [PROTO_6]
      134 CAPTURE                          VAL R9
      135 SETTABLEKS                       R18 R17 K37 ["destroy"]
      137 DUPCLOSURE                       R18 K38 [PROTO_7]
      138 SETTABLEKS                       R18 R17 K39 ["populateSavedSettings"]
      140 DUPCLOSURE                       R18 K40 [PROTO_8]
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R18 R17 K41 ["_isOmnisearchEnabled"]
      144 DUPCLOSURE                       R18 K42 [PROTO_10]
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R18 R17 K43 ["_setExpansion"]
      148 DUPCLOSURE                       R18 K44 [PROTO_11]
      149 SETTABLEKS                       R18 R17 K45 ["_expandAncestorsRecursive"]
      151 DUPCLOSURE                       R18 K46 [PROTO_12]
      152 CAPTURE                          VAL R11
      153 SETTABLEKS                       R18 R17 K47 ["revealScope"]
      155 DUPCLOSURE                       R18 K48 [PROTO_13]
      156 SETTABLEKS                       R18 R17 K49 ["_cleanStaleExpandedScopes"]
      158 DUPCLOSURE                       R18 K50 [PROTO_14]
      159 CAPTURE                          VAL R11
      160 SETTABLEKS                       R18 R17 K51 ["toggleExpansion"]
      162 DUPCLOSURE                       R18 K52 [PROTO_15]
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R18 R17 K53 ["_updateRenderTree"]
      168 DUPCLOSURE                       R18 K54 [PROTO_16]
      169 SETTABLEKS                       R18 R17 K55 ["_updateVisibleInventories"]
      171 DUPCLOSURE                       R18 K56 [PROTO_18]
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R18 R17 K57 ["_getAvailableInventories"]
      176 DUPCLOSURE                       R18 K58 [PROTO_19]
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R12
      179 SETTABLEKS                       R18 R17 K59 ["_generateProjectCustomScopes"]
      181 DUPCLOSURE                       R18 K60 [PROTO_20]
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R18 R17 K61 ["getProjectPlacesScope"]
      186 DUPCLOSURE                       R18 K62 [PROTO_21]
      187 SETTABLEKS                       R18 R17 K63 ["getScopeNotifications"]
      189 DUPCLOSURE                       R18 K64 [PROTO_22]
      190 SETTABLEKS                       R18 R17 K65 ["notifyNewItemsInScope"]
      192 DUPCLOSURE                       R18 K66 [PROTO_23]
      193 SETTABLEKS                       R18 R17 K67 ["_setNewItemNotif"]
      195 DUPCLOSURE                       R18 K68 [PROTO_24]
      196 SETTABLEKS                       R18 R17 K69 ["_toggleNewItemNotif"]
      198 DUPCLOSURE                       R18 K70 [PROTO_25]
      199 SETTABLEKS                       R18 R17 K71 ["getScopeWithUid"]
      201 DUPCLOSURE                       R18 K72 [PROTO_26]
      202 SETTABLEKS                       R18 R17 K73 ["hasLoadedGroups"]
      204 DUPCLOSURE                       R18 K74 [PROTO_27]
      205 SETTABLEKS                       R18 R17 K75 ["getVisibleInventories"]
      207 DUPCLOSURE                       R18 K76 [PROTO_28]
      208 CAPTURE                          VAL R14
      209 SETTABLEKS                       R18 R17 K77 ["_addRecentUploads"]
      211 DUPCLOSURE                       R18 K78 [PROTO_29]
      212 SETTABLEKS                       R18 R17 K79 ["_addUserAndExperienceScopes"]
      214 DUPCLOSURE                       R18 K80 [PROTO_30]
      215 CAPTURE                          VAL R13
      216 SETTABLEKS                       R18 R17 K81 ["convertFoldersToScopes"]
      218 DUPCLOSURE                       R18 K82 [PROTO_31]
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R10
      221 SETTABLEKS                       R18 R17 K83 ["getScopeRoot"]
      223 DUPCLOSURE                       R18 K84 [PROTO_33]
      224 SETTABLEKS                       R18 R17 K85 ["requestFolderReadiness"]
      226 DUPCLOSURE                       R18 K86 [PROTO_34]
      227 SETTABLEKS                       R18 R17 K87 ["_fetchFolderReadinessForAllInventories"]
      229 DUPCLOSURE                       R18 K88 [PROTO_35]
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R12
      232 SETTABLEKS                       R18 R17 K89 ["getFolderReadinessStatus"]
      234 DUPCLOSURE                       R18 K90 [PROTO_36]
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R12
      237 SETTABLEKS                       R18 R17 K91 ["isFolderReadyForScope"]
      239 DUPCLOSURE                       R18 K92 [PROTO_37]
      240 SETTABLEKS                       R18 R17 K93 ["isAncestor"]
      242 DUPCLOSURE                       R18 K94 [PROTO_38]
      243 SETTABLEKS                       R18 R17 K95 ["_decrementPendingFolderFetchCountAndCleanUp"]
      245 DUPCLOSURE                       R18 K96 [PROTO_43]
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R11
      249 SETTABLEKS                       R18 R17 K97 ["fetchFolders"]
      251 DUPCLOSURE                       R18 K98 [PROTO_44]
      252 SETTABLEKS                       R18 R17 K99 ["getStagedFolder"]
      254 DUPCLOSURE                       R18 K100 [PROTO_45]
      255 CAPTURE                          VAL R14
      256 SETTABLEKS                       R18 R17 K101 ["removeStagedFolder"]
      258 DUPCLOSURE                       R18 K102 [PROTO_46]
      259 CAPTURE                          VAL R12
      260 CAPTURE                          VAL R14
      261 SETTABLEKS                       R18 R17 K103 ["stageFolder"]
      263 DUPCLOSURE                       R18 K104 [PROTO_47]
      264 SETTABLEKS                       R18 R17 K105 ["getRecentlyCreatedFolder"]
      266 DUPCLOSURE                       R18 K106 [PROTO_48]
      267 SETTABLEKS                       R18 R17 K107 ["clearRecentlyCreatedFolder"]
      269 DUPCLOSURE                       R18 K108 [PROTO_50]
      270 CAPTURE                          VAL R14
      271 SETTABLEKS                       R18 R17 K109 ["getFolderIndex"]
      273 DUPCLOSURE                       R18 K110 [PROTO_51]
      274 SETTABLEKS                       R18 R17 K111 ["handleCreatedFolder"]
      276 DUPCLOSURE                       R18 K112 [PROTO_52]
      277 SETTABLEKS                       R18 R17 K113 ["handleRenamedFolder"]
      279 DUPCLOSURE                       R18 K114 [PROTO_53]
      280 CAPTURE                          VAL R2
      281 SETTABLEKS                       R18 R17 K115 ["handleDeletedFolder"]
      283 DUPCLOSURE                       R18 K116 [PROTO_55]
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R1
      286 CAPTURE                          VAL R11
      287 SETTABLEKS                       R18 R17 K117 ["_sortChildrenByName"]
      289 DUPCLOSURE                       R18 K118 [PROTO_56]
      290 SETTABLEKS                       R18 R17 K119 ["_addScopeToChildren"]
      292 DUPCLOSURE                       R18 K120 [PROTO_58]
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R12
      296 SETTABLEKS                       R18 R17 K121 ["_removeScope"]
      298 DUPCLOSURE                       R18 K122 [PROTO_60]
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R11
      301 CAPTURE                          VAL R4
      302 SETTABLEKS                       R18 R17 K123 ["moveScopes"]
      304 DUPCLOSURE                       R18 K124 [PROTO_61]
      305 SETTABLEKS                       R18 R17 K125 ["_resetScopes"]
      307 DUPCLOSURE                       R18 K126 [PROTO_64]
      308 CAPTURE                          VAL R4
      309 CAPTURE                          VAL R11
      310 CAPTURE                          VAL R16
      311 CAPTURE                          VAL R1
      312 SETTABLEKS                       R18 R17 K127 ["refreshScopes"]
      314 DUPCLOSURE                       R18 K128 [PROTO_65]
      315 SETTABLEKS                       R18 R17 K129 ["getExplorerItems"]
      317 DUPCLOSURE                       R18 K130 [PROTO_66]
      318 SETTABLEKS                       R18 R17 K131 ["getExpansion"]
      320 DUPCLOSURE                       R18 K132 [PROTO_67]
      321 SETTABLEKS                       R18 R17 K133 ["toggleVisibleInventory"]
      323 DUPCLOSURE                       R18 K134 [PROTO_68]
      324 CAPTURE                          VAL R4
      325 SETTABLEKS                       R18 R17 K135 ["getHiddenInventories"]
      327 DUPCLOSURE                       R18 K136 [PROTO_69]
      328 SETTABLEKS                       R18 R17 K137 ["getShowScopeOptions"]
      330 DUPCLOSURE                       R18 K138 [PROTO_70]
      331 SETTABLEKS                       R18 R17 K139 ["enableScopeOptions"]
      333 DUPCLOSURE                       R18 K140 [PROTO_71]
      334 CAPTURE                          VAL R4
      335 SETTABLEKS                       R18 R17 K141 ["_saveGroupOptions"]
      337 DUPCLOSURE                       R18 K142 [PROTO_72]
      338 SETTABLEKS                       R18 R17 K143 ["closeScopeOptions"]
      340 DUPCLOSURE                       R18 K144 [PROTO_73]
      341 SETTABLEKS                       R18 R17 K145 ["getGroupOptions"]
      343 DUPCLOSURE                       R18 K146 [PROTO_74]
      344 SETTABLEKS                       R18 R17 K147 ["toggleScopeOption"]
      346 DUPCLOSURE                       R18 K148 [PROTO_75]
      347 SETTABLEKS                       R18 R17 K149 ["updateScopeOptions"]
      349 DUPCLOSURE                       R18 K150 [PROTO_76]
      350 SETTABLEKS                       R18 R17 K151 ["isScopeOptionChecked"]
      352 DUPCLOSURE                       R18 K152 [PROTO_77]
      353 SETTABLEKS                       R18 R17 K153 ["hasAllOptionsChecked"]
      355 DUPCLOSURE                       R18 K154 [PROTO_78]
      356 SETTABLEKS                       R18 R17 K155 ["getToggleSet"]
      358 DUPCLOSURE                       R18 K156 [PROTO_79]
      359 SETTABLEKS                       R18 R17 K157 ["toggleSelectAllOptions"]
      361 DUPCLOSURE                       R18 K158 [PROTO_80]
      362 SETTABLEKS                       R18 R17 K159 ["_getHistoryRingIndex"]
      364 DUPCLOSURE                       R18 K160 [PROTO_81]
      365 SETTABLEKS                       R18 R17 K161 ["addToHistory"]
      367 DUPCLOSURE                       R18 K162 [PROTO_82]
      368 SETTABLEKS                       R18 R17 K163 ["updateCurrentHistoryItem"]
      370 DUPCLOSURE                       R18 K164 [PROTO_83]
      371 CAPTURE                          VAL R11
      372 SETTABLEKS                       R18 R17 K165 ["_goToHistory"]
      374 DUPCLOSURE                       R18 K166 [PROTO_84]
      375 SETTABLEKS                       R18 R17 K167 ["getHistoryAtStart"]
      377 DUPCLOSURE                       R18 K168 [PROTO_85]
      378 SETTABLEKS                       R18 R17 K169 ["getHistoryAtEnd"]
      380 DUPCLOSURE                       R18 K170 [PROTO_86]
      381 SETTABLEKS                       R18 R17 K171 ["backHistory"]
      383 DUPCLOSURE                       R18 K172 [PROTO_87]
      384 SETTABLEKS                       R18 R17 K173 ["forwardHistory"]
      386 DUPCLOSURE                       R18 K174 [PROTO_88]
      387 SETTABLEKS                       R18 R17 K175 ["_clearHistory"]
      389 DUPCLOSURE                       R18 K176 [PROTO_89]
      390 SETTABLEKS                       R18 R17 K177 ["getPlugin"]
      392 RETURN                           R17 1
