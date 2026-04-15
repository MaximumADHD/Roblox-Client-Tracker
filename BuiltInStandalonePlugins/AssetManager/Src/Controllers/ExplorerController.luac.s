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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+25]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["_pluginController"]
        6 NAMECALL                         R3 R3 K1 ["getCurrentScope"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R2 R3 K2 ["Type"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K3 ["ScopeType"]
       14 GETTABLEKS                       R3 R4 K4 ["RecentUploads"]
       16 JUMPIFEQ                         R2 R3 ; [+11]
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K4 ["RecentUploads"]
       22 GETTABLEKS                       R4 R5 K5 ["Uid"]
       24 LOADB                            R5 1
       25 NAMECALL                         R2 R2 K6 ["_setNewItemNotif"]
       27 CALL                             R2 3 0
       28 GETUPVAL                         R3 4
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+4]
       31 JUMPIFNOT                        R1 ; [+3]
       32 GETTABLEKS                       R2 R1 K5 ["Uid"]
       34 JUMP                             ; [+4]
       35 GETTABLEKS                       R3 R0 K7 ["Creator"]
       37 GETTABLEKS                       R2 R3 K5 ["Uid"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K0 ["_pluginController"]
       42 NAMECALL                         R4 R4 K1 ["getCurrentScope"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R3 R4 K5 ["Uid"]
       47 JUMPIFEQ                         R2 R3 ; [+7]
       49 GETUPVAL                         R3 1
       50 MOVE                             R5 R2
       51 LOADB                            R6 1
       52 NAMECALL                         R3 R3 K6 ["_setNewItemNotif"]
       54 CALL                             R3 3 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["_scopes"]
        6 GETTABLEKS                       R3 R0 K1 ["Uid"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["_scopes"]
       13 GETTABLEKS                       R2 R0 K1 ["Uid"]
       15 SETTABLE                         R0 R1 R2
       16 GETUPVAL                         R1 1
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K2 ["_expandAncestorsRecursive"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K3 ["_newItemNotifs"]
       24 GETTABLEKS                       R3 R0 K1 ["Uid"]
       26 GETTABLE                         R1 R2 R3
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R3 R0 K1 ["Uid"]
       31 NAMECALL                         R1 R1 K4 ["_toggleNewItemNotif"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 2
       35 CALL                             R1 0 1
       36 JUMPIFNOT                        R1 ; [+10]
       37 GETUPVAL                         R1 1
       38 DUPTABLE                         R3 K6 [{"ScopeUid"}]
       39 GETTABLEKS                       R4 R0 K1 ["Uid"]
       41 SETTABLEKS                       R4 R3 K5 ["ScopeUid"]
       43 NAMECALL                         R1 R1 K7 ["addToHistory"]
       45 CALL                             R1 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R3 R0 K1 ["Uid"]
       50 NAMECALL                         R1 R1 K7 ["addToHistory"]
       52 CALL                             R1 2 0
       53 RETURN                           R0 0

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
       30 GETUPVAL                         R5 0
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+13]
       33 NEWTABLE                         R4 0 1
       35 DUPTABLE                         R5 K27 [{"ScopeUid"}]
       36 NAMECALL                         R7 R0 K28 ["getCurrentScope"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R6 R7 K29 ["Uid"]
       41 SETTABLEKS                       R6 R5 K26 ["ScopeUid"]
       43 SETLIST                          R4 R5 1 [1]
       45 JUMP                             ; [+9]
       46 NEWTABLE                         R4 0 1
       48 NAMECALL                         R6 R0 K28 ["getCurrentScope"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R5 R6 K29 ["Uid"]
       53 SETLIST                          R4 R5 1 [1]
       55 SETTABLEKS                       R4 R3 K9 ["_historyRingBuffer"]
       57 LOADN                            R4 1
       58 SETTABLEKS                       R4 R3 K10 ["_historyBufferIndex"]
       60 NEWTABLE                         R4 0 0
       62 SETTABLEKS                       R4 R3 K11 ["_expansion"]
       64 NEWTABLE                         R4 0 0
       66 SETTABLEKS                       R4 R3 K12 ["_groupOptions"]
       68 NEWTABLE                         R4 0 0
       70 SETTABLEKS                       R4 R3 K13 ["_toggleSet"]
       72 LOADB                            R4 0
       73 SETTABLEKS                       R4 R3 K14 ["_showScopeOptions"]
       75 NEWTABLE                         R4 0 0
       77 SETTABLEKS                       R4 R3 K15 ["_newItemNotifs"]
       79 NEWTABLE                         R4 0 0
       81 SETTABLEKS                       R4 R3 K16 ["_connections"]
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R4 R5 K30 ["new"]
       86 CALL                             R4 0 1
       87 SETTABLEKS                       R4 R3 K17 ["OnExplorerItemsChanged"]
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R4 R5 K30 ["new"]
       92 CALL                             R4 0 1
       93 SETTABLEKS                       R4 R3 K18 ["OnExpansionChanged"]
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R4 R5 K30 ["new"]
       98 CALL                             R4 0 1
       99 SETTABLEKS                       R4 R3 K19 ["OnGroupOptionsChanged"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R4 R5 K30 ["new"]
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R3 K20 ["OnShowScopeOptionsChanged"]
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R4 R5 K30 ["new"]
      110 CALL                             R4 0 1
      111 SETTABLEKS                       R4 R3 K21 ["OnToggleSetChanged"]
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R4 R5 K30 ["new"]
      116 CALL                             R4 0 1
      117 SETTABLEKS                       R4 R3 K22 ["OnScopeNotificationsChanged"]
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R4 R5 K30 ["new"]
      122 CALL                             R4 0 1
      123 SETTABLEKS                       R4 R3 K23 ["OnHistoryChanged"]
      125 GETUPVAL                         R5 1
      126 GETTABLEKS                       R4 R5 K30 ["new"]
      128 CALL                             R4 0 1
      129 SETTABLEKS                       R4 R3 K24 ["OnRestoreSearchState"]
      131 GETUPVAL                         R6 2
      132 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      134 MOVE                             R5 R3
      135 GETIMPORT                        R4 K32 [setmetatable]
      137 CALL                             R4 2 0
      138 GETUPVAL                         R4 3
      139 CALL                             R4 0 1
      140 JUMPIFNOT                        R4 ; [+35]
      141 GETUPVAL                         R5 4
      142 GETTABLEKS                       R4 R5 K33 ["asList"]
      144 GETUPVAL                         R7 4
      145 GETTABLEKS                       R5 R7 K34 ["SidebarHeader"]
      147 CALL                             R4 1 3
      148 FORGPREP                         R4
      149 GETTABLEKS                       R9 R3 K5 ["_headers"]
      151 DUPTABLE                         R10 K38 [{"Type", "Name", "Id", "Uid"}]
      152 GETUPVAL                         R13 4
      153 GETTABLEKS                       R12 R13 K39 ["ScopeType"]
      155 GETTABLEKS                       R11 R12 K40 ["Header"]
      157 SETTABLEKS                       R11 R10 K35 ["Type"]
      159 SETTABLEKS                       R8 R10 K36 ["Name"]
      161 SETTABLEKS                       R7 R10 K37 ["Id"]
      163 GETUPVAL                         R11 5
      164 GETUPVAL                         R14 4
      165 GETTABLEKS                       R13 R14 K39 ["ScopeType"]
      167 GETTABLEKS                       R12 R13 K40 ["Header"]
      169 MOVE                             R13 R7
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R10 K29 ["Uid"]
      173 SETTABLE                         R10 R9 R8
      174 FORGLOOP                         R4 2 ; [-26]
      176 GETTABLEKS                       R5 R3 K2 ["_pluginController"]
      178 NAMECALL                         R5 R5 K41 ["getGameInfo"]
      180 CALL                             R5 1 1
      181 GETTABLEKS                       R4 R5 K37 ["Id"]
      183 JUMPIFEQKN                       R4 K42 [0] ; [+4]
      185 NAMECALL                         R4 R3 K43 ["_generateProjectCustomScopes"]
      187 CALL                             R4 1 0
      188 GETUPVAL                         R4 6
      189 CALL                             R4 0 1
      190 JUMPIFNOT                        R4 ; [+3]
      191 NAMECALL                         R4 R3 K44 ["_addRecentUploads"]
      193 CALL                             R4 1 0
      194 GETUPVAL                         R4 3
      195 CALL                             R4 0 1
      196 JUMPIFNOT                        R4 ; [+4]
      197 NAMECALL                         R4 R3 K45 ["_updateRenderTree"]
      199 CALL                             R4 1 0
      200 JUMP                             ; [+3]
      201 NAMECALL                         R4 R3 K46 ["_createExplorerItems"]
      203 CALL                             R4 1 0
      204 GETTABLEKS                       R5 R3 K16 ["_connections"]
      206 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      208 GETTABLEKS                       R6 R7 K47 ["OnGameInfoFetched"]
      210 NEWCLOSURE                       R8 P0
      211 CAPTURE                          VAL R3
      212 CAPTURE                          UPVAL U3
      213 NAMECALL                         R6 R6 K48 ["Connect"]
      215 CALL                             R6 2 -1
      216 FASTCALL                         TABLE_INSERT ; [+2]
      217 GETIMPORT                        R4 K51 [table.insert]
      219 CALL                             R4 -1 0
      220 GETTABLEKS                       R5 R3 K16 ["_connections"]
      222 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      224 GETTABLEKS                       R6 R7 K52 ["OnNewAssetFetched"]
      226 NEWCLOSURE                       R8 P1
      227 CAPTURE                          UPVAL U6
      228 CAPTURE                          VAL R3
      229 CAPTURE                          UPVAL U4
      230 CAPTURE                          UPVAL U7
      231 CAPTURE                          UPVAL U3
      232 NAMECALL                         R6 R6 K48 ["Connect"]
      234 CALL                             R6 2 -1
      235 FASTCALL                         TABLE_INSERT ; [+2]
      236 GETIMPORT                        R4 K51 [table.insert]
      238 CALL                             R4 -1 0
      239 GETTABLEKS                       R5 R3 K16 ["_connections"]
      241 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      243 GETTABLEKS                       R6 R7 K53 ["OnCurrentScopeChanged"]
      245 NEWCLOSURE                       R8 P2
      246 CAPTURE                          UPVAL U3
      247 CAPTURE                          VAL R3
      248 CAPTURE                          UPVAL U0
      249 NAMECALL                         R6 R6 K48 ["Connect"]
      251 CALL                             R6 2 -1
      252 FASTCALL                         TABLE_INSERT ; [+2]
      253 GETIMPORT                        R4 K51 [table.insert]
      255 CALL                             R4 -1 0
      256 NAMECALL                         R4 R3 K54 ["refreshScopes"]
      258 CALL                             R4 1 0
      259 RETURN                           R3 1

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
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+27]
       10 GETTABLEKS                       R6 R0 K2 ["_headers"]
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       15 GETTABLEKS                       R7 R8 K4 ["Recent"]
       17 GETTABLE                         R5 R6 R7
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 MOVE                             R4 R1
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K8 ["RecentUploads"]
       28 GETTABLEKS                       R7 R8 K9 ["Uid"]
       30 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       32 CALL                             R5 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R3 K7 [table.insert]
       36 CALL                             R3 -1 0
       37 GETTABLEKS                       R3 R2 K11 ["Id"]
       39 JUMPIFEQKN                       R3 K12 [0] ; [+49]
       41 GETTABLEKS                       R6 R0 K2 ["_headers"]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       46 GETTABLEKS                       R7 R8 K13 ["Project"]
       48 GETTABLE                         R5 R6 R7
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K7 [table.insert]
       54 CALL                             R3 2 0
       55 MOVE                             R4 R1
       56 GETUPVAL                         R7 3
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       60 GETTABLEKS                       R8 R9 K15 ["ProjectShared"]
       62 GETTABLEKS                       R9 R2 K11 ["Id"]
       64 CALL                             R7 2 -1
       65 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       67 CALL                             R5 -1 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R3 K7 [table.insert]
       71 CALL                             R3 -1 0
       72 MOVE                             R4 R1
       73 GETUPVAL                         R7 3
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R9 R10 K14 ["ScopeType"]
       77 GETTABLEKS                       R8 R9 K16 ["ProjectPlaces"]
       79 GETTABLEKS                       R9 R2 K11 ["Id"]
       81 CALL                             R7 2 -1
       82 NAMECALL                         R5 R0 K10 ["getScopeWithUid"]
       84 CALL                             R5 -1 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R3 K7 [table.insert]
       88 CALL                             R3 -1 0
       89 GETTABLEKS                       R6 R0 K2 ["_headers"]
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R8 R9 K3 ["SidebarHeader"]
       94 GETTABLEKS                       R7 R8 K17 ["Inventories"]
       96 GETTABLE                         R5 R6 R7
       97 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       99 MOVE                             R4 R1
      100 GETIMPORT                        R3 K7 [table.insert]
      102 CALL                             R3 2 0
      103 MOVE                             R4 R1
      104 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
      106 NAMECALL                         R5 R5 K18 ["getUser"]
      108 CALL                             R5 1 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R3 K7 [table.insert]
      112 CALL                             R3 -1 0
      113 NAMECALL                         R3 R0 K19 ["getVisibleInventories"]
      115 CALL                             R3 1 3
      116 FORGPREP                         R3
      117 MOVE                             R10 R7
      118 NAMECALL                         R8 R0 K10 ["getScopeWithUid"]
      120 CALL                             R8 2 1
      121 GETTABLEKS                       R9 R8 K20 ["Type"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R11 R12 K14 ["ScopeType"]
      126 GETTABLEKS                       R10 R11 K21 ["Group"]
      128 JUMPIFNOTEQ                      R9 R10 ; [+8]
      130 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      132 MOVE                             R10 R1
      133 MOVE                             R11 R8
      134 GETIMPORT                        R9 K7 [table.insert]
      136 CALL                             R9 2 0
      137 FORGLOOP                         R3 2 ; [-21]
      139 SETTABLEKS                       R1 R0 K22 ["_explorerItems"]
      141 GETTABLEKS                       R3 R0 K23 ["OnExplorerItemsChanged"]
      143 GETTABLEKS                       R5 R0 K22 ["_explorerItems"]
      145 NAMECALL                         R3 R3 K24 ["Fire"]
      147 CALL                             R3 2 0
      148 RETURN                           R0 0

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
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+26]
       10 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
       14 GETTABLEKS                       R6 R7 K4 ["Recent"]
       16 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 DUPTABLE                         R5 K9 [{"Scope"}]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K10 ["RecentUploads"]
       28 SETTABLEKS                       R6 R5 K8 ["Scope"]
       30 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       32 MOVE                             R4 R1
       33 GETIMPORT                        R3 K7 [table.insert]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R3 R2 K11 ["Id"]
       38 JUMPIFEQKN                       R3 K12 [0] ; [+54]
       40 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
       41 GETTABLEKS                       R6 R2 K13 ["Name"]
       43 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
       45 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       47 MOVE                             R4 R1
       48 GETIMPORT                        R3 K7 [table.insert]
       50 CALL                             R3 2 0
       51 DUPTABLE                         R5 K9 [{"Scope"}]
       52 GETUPVAL                         R8 3
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R10 R11 K14 ["ScopeType"]
       56 GETTABLEKS                       R9 R10 K15 ["ProjectShared"]
       58 GETTABLEKS                       R10 R2 K11 ["Id"]
       60 CALL                             R8 2 -1
       61 NAMECALL                         R6 R0 K16 ["getScopeWithUid"]
       63 CALL                             R6 -1 1
       64 SETTABLEKS                       R6 R5 K8 ["Scope"]
       66 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       68 MOVE                             R4 R1
       69 GETIMPORT                        R3 K7 [table.insert]
       71 CALL                             R3 2 0
       72 DUPTABLE                         R5 K9 [{"Scope"}]
       73 GETUPVAL                         R8 3
       74 GETUPVAL                         R11 1
       75 GETTABLEKS                       R10 R11 K14 ["ScopeType"]
       77 GETTABLEKS                       R9 R10 K17 ["ProjectPlaces"]
       79 GETTABLEKS                       R10 R2 K11 ["Id"]
       81 CALL                             R8 2 -1
       82 NAMECALL                         R6 R0 K16 ["getScopeWithUid"]
       84 CALL                             R6 -1 1
       85 SETTABLEKS                       R6 R5 K8 ["Scope"]
       87 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       89 MOVE                             R4 R1
       90 GETIMPORT                        R3 K7 [table.insert]
       92 CALL                             R3 2 0
       93 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
       94 GETUPVAL                         R8 1
       95 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
       97 GETTABLEKS                       R6 R7 K18 ["User"]
       99 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
      101 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      103 MOVE                             R4 R1
      104 GETIMPORT                        R3 K7 [table.insert]
      106 CALL                             R3 2 0
      107 DUPTABLE                         R5 K9 [{"Scope"}]
      108 GETTABLEKS                       R6 R0 K0 ["_pluginController"]
      110 NAMECALL                         R6 R6 K19 ["getUser"]
      112 CALL                             R6 1 1
      113 SETTABLEKS                       R6 R5 K8 ["Scope"]
      115 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      117 MOVE                             R4 R1
      118 GETIMPORT                        R3 K7 [table.insert]
      120 CALL                             R3 2 0
      121 DUPTABLE                         R5 K3 [{"ExplorerHeader"}]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R7 R8 K2 ["ExplorerHeader"]
      125 GETTABLEKS                       R6 R7 K20 ["Groups"]
      127 SETTABLEKS                       R6 R5 K2 ["ExplorerHeader"]
      129 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      131 MOVE                             R4 R1
      132 GETIMPORT                        R3 K7 [table.insert]
      134 CALL                             R3 2 0
      135 NAMECALL                         R3 R0 K21 ["getVisibleInventories"]
      137 CALL                             R3 1 3
      138 FORGPREP                         R3
      139 MOVE                             R10 R7
      140 NAMECALL                         R8 R0 K16 ["getScopeWithUid"]
      142 CALL                             R8 2 1
      143 GETTABLEKS                       R9 R8 K22 ["Type"]
      145 GETUPVAL                         R12 1
      146 GETTABLEKS                       R11 R12 K14 ["ScopeType"]
      148 GETTABLEKS                       R10 R11 K23 ["Group"]
      150 JUMPIFNOTEQ                      R9 R10 ; [+10]
      152 DUPTABLE                         R11 K9 [{"Scope"}]
      153 SETTABLEKS                       R8 R11 K8 ["Scope"]
      155 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      157 MOVE                             R10 R1
      158 GETIMPORT                        R9 K7 [table.insert]
      160 CALL                             R9 2 0
      161 FORGLOOP                         R3 2 ; [-23]
      163 SETTABLEKS                       R1 R0 K24 ["_explorerItems"]
      165 GETTABLEKS                       R3 R0 K25 ["OnExplorerItemsChanged"]
      167 GETTABLEKS                       R5 R0 K24 ["_explorerItems"]
      169 NAMECALL                         R3 R3 K26 ["Fire"]
      171 CALL                             R3 2 0
      172 RETURN                           R0 0

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
        6 DUPTABLE                         R9 K6 [{"Name", "Type", "Id", "Uid", "Parent", "Path"}]
        7 GETTABLEKS                       R10 R8 K7 ["DisplayName"]
        9 SETTABLEKS                       R10 R9 K0 ["Name"]
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R11 R12 K8 ["ScopeType"]
       14 GETTABLEKS                       R10 R11 K9 ["Folder"]
       16 SETTABLEKS                       R10 R9 K1 ["Type"]
       18 GETTABLEKS                       R10 R8 K10 ["AssetId"]
       20 SETTABLEKS                       R10 R9 K2 ["Id"]
       22 GETUPVAL                         R10 1
       23 GETUPVAL                         R13 0
       24 GETTABLEKS                       R12 R13 K8 ["ScopeType"]
       26 GETTABLEKS                       R11 R12 K9 ["Folder"]
       28 GETTABLEKS                       R12 R8 K10 ["AssetId"]
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K3 ["Uid"]
       33 SETTABLEKS                       R2 R9 K4 ["Parent"]
       35 GETTABLEKS                       R10 R8 K5 ["Path"]
       37 SETTABLEKS                       R10 R9 K5 ["Path"]
       39 GETTABLEKS                       R12 R9 K3 ["Uid"]
       41 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       43 MOVE                             R11 R3
       44 GETIMPORT                        R10 K13 [table.insert]
       46 CALL                             R10 2 0
       47 GETTABLEKS                       R10 R0 K14 ["_scopes"]
       49 GETTABLEKS                       R11 R9 K3 ["Uid"]
       51 SETTABLE                         R9 R10 R11
       52 FORGLOOP                         R4 2 ; [-47]
       54 MOVE                             R6 R3
       55 NAMECALL                         R4 R0 K15 ["_sortChildrenByName"]
       57 CALL                             R4 2 0
       58 JUMPIFNOT                        R2 ; [+9]
       59 GETTABLEKS                       R5 R0 K14 ["_scopes"]
       61 GETTABLE                         R4 R5 R2
       62 JUMPIFNOT                        R4 ; [+5]
       63 GETTABLEKS                       R5 R0 K14 ["_scopes"]
       65 GETTABLE                         R4 R5 R2
       66 SETTABLEKS                       R3 R4 K16 ["Children"]
       68 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching folders: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 LOADK                            R3 K2 ["WARN"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_27:
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
       25 DUPCLOSURE                       R8 K6 [PROTO_26]
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R4 R4 K7 ["fetchFoldersAsync"]
       29 CALL                             R4 4 0
       30 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_stagedFolder"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["NewFolderUid"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+8]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["NewFolderUid"]
       13 NAMECALL                         R2 R0 K2 ["_removeScope"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 NAMECALL                         R2 R0 K3 ["_updateRenderTree"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R4 R0 K0 ["_stagedFolder"]
        5 NAMECALL                         R2 R0 K1 ["_removeScope"]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
       11 GETTABLEKS                       R2 R0 K2 ["_scopes"]
       13 GETTABLEKS                       R3 R1 K3 ["Uid"]
       15 SETTABLE                         R1 R2 R3
       16 GETTABLEKS                       R3 R0 K2 ["_scopes"]
       18 GETTABLEKS                       R4 R1 K4 ["Parent"]
       20 GETTABLE                         R2 R3 R4
       21 JUMPIFNOT                        R2 ; [+6]
       22 MOVE                             R5 R2
       23 GETTABLEKS                       R6 R1 K3 ["Uid"]
       25 NAMECALL                         R3 R0 K5 ["_addScopeToChildren"]
       27 CALL                             R3 3 0
       28 NAMECALL                         R3 R0 K6 ["_updateRenderTree"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_32:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["_stagedFolder"]
        3 GETTABLEKS                       R3 R0 K1 ["_scopes"]
        5 GETTABLEKS                       R4 R1 K2 ["Uid"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["Name"]
       12 SETTABLEKS                       R3 R2 K3 ["Name"]
       14 GETTABLEKS                       R3 R2 K4 ["Parent"]
       16 JUMPIFNOT                        R3 ; [+16]
       17 GETTABLEKS                       R4 R0 K1 ["_scopes"]
       19 GETTABLEKS                       R5 R2 K4 ["Parent"]
       21 GETTABLE                         R3 R4 R5
       22 JUMPIFNOT                        R3 ; [+10]
       23 GETTABLEKS                       R7 R0 K1 ["_scopes"]
       25 GETTABLEKS                       R8 R2 K4 ["Parent"]
       27 GETTABLE                         R6 R7 R8
       28 GETTABLEKS                       R5 R6 K5 ["Children"]
       30 NAMECALL                         R3 R0 K6 ["_sortChildrenByName"]
       32 CALL                             R3 2 0
       33 NAMECALL                         R3 R0 K7 ["_updateRenderTree"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R5 R2
        4 NAMECALL                         R3 R0 K0 ["_removeScope"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 2 0
        7 RETURN                           R1 1

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K1 ["Children"]
        8 JUMPIFNOT                        R3 ; [+15]
        9 GETTABLEKS                       R4 R2 K1 ["Children"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+10]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K2 ["Cannot remove scope %* because it has children"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K3 ["format"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R0 K0 ["_scopes"]
       26 GETTABLEKS                       R5 R2 K4 ["Parent"]
       28 GETTABLE                         R3 R4 R5
       29 JUMPIFNOT                        R3 ; [+3]
       30 GETTABLEKS                       R4 R3 K1 ["Children"]
       32 JUMPIF                           R4 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K5 ["filter"]
       37 GETTABLEKS                       R5 R3 K1 ["Children"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R1
       41 CALL                             R4 2 1
       42 LENGTH                           R6 R4
       43 LOADN                            R7 0
       44 JUMPIFNOTLT                      R7 R6 ; [+3]
       46 MOVE                             R5 R4
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 SETTABLEKS                       R5 R3 K1 ["Children"]
       51 GETTABLEKS                       R5 R0 K0 ["_scopes"]
       53 LOADNIL                          R6
       54 SETTABLE                         R6 R5 R1
       55 NAMECALL                         R5 R0 K6 ["_updateRenderTree"]
       57 CALL                             R5 1 0
       58 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
       60 NAMECALL                         R6 R6 K8 ["getCurrentScope"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R5 R6 K9 ["Uid"]
       65 JUMPIFEQ                         R5 R1 ; [+2]
       67 RETURN                           R0 0
       68 JUMPIFNOT                        R3 ; [+7]
       69 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       71 MOVE                             R7 R3
       72 NAMECALL                         R5 R5 K10 ["setCurrentScope"]
       74 CALL                             R5 2 0
       75 RETURN                           R0 0
       76 GETTABLEKS                       R6 R2 K11 ["Type"]
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R8 R9 K12 ["ScopeType"]
       81 GETTABLEKS                       R7 R8 K13 ["Folder"]
       83 JUMPIFNOTEQ                      R6 R7 ; [+9]
       85 GETTABLEKS                       R6 R2 K14 ["Path"]
       87 JUMPIFNOT                        R6 ; [+5]
       88 MOVE                             R7 R2
       89 NAMECALL                         R5 R0 K15 ["getScopeRoot"]
       91 CALL                             R5 2 1
       92 JUMP                             ; [+5]
       93 GETTABLEKS                       R5 R0 K7 ["_pluginController"]
       95 NAMECALL                         R5 R5 K16 ["getUser"]
       97 CALL                             R5 1 1
       98 GETTABLEKS                       R6 R0 K7 ["_pluginController"]
      100 MOVE                             R8 R5
      101 NAMECALL                         R6 R6 K10 ["setCurrentScope"]
      103 CALL                             R6 2 0
      104 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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
       32 JUMPIFNOT                        R1 ; [+12]
       33 GETUPVAL                         R1 0
       34 NAMECALL                         R1 R1 K8 ["_updateRenderTree"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 0
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K2 ["_visibleInventories"]
       41 NAMECALL                         R1 R1 K9 ["fetchFolders"]
       43 CALL                             R1 2 0
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R1 0
       46 NAMECALL                         R1 R1 K10 ["_createExplorerItems"]
       48 CALL                             R1 1 0
       49 GETUPVAL                         R1 0
       50 NAMECALL                         R1 R1 K11 ["updateScopeOptions"]
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_44:
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
       25 GETUPVAL                         R1 1
       26 CALL                             R1 0 1
       27 JUMPIFNOT                        R1 ; [+3]
       28 NAMECALL                         R1 R0 K8 ["_addRecentUploads"]
       30 CALL                             R1 1 0
       31 NAMECALL                         R1 R0 K9 ["_addUserAndExperienceScopes"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K10 ["_networking"]
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 DUPCLOSURE                       R4 K11 [PROTO_43]
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R1 R1 K12 ["fetchGroupsAsync"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_47:
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

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_49:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_59:
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

PROTO_60:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+53]
        3 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
        5 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOT                        R2 ; [+35]
        9 GETTABLEKS                       R3 R2 K2 ["ScopeUid"]
       11 JUMPIFNOT                        R3 ; [+11]
       12 GETTABLEKS                       R3 R1 K2 ["ScopeUid"]
       14 JUMPIFNOT                        R3 ; [+8]
       15 GETTABLEKS                       R4 R2 K2 ["ScopeUid"]
       17 GETTABLEKS                       R5 R1 K2 ["ScopeUid"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETTABLEKS                       R4 R2 K3 ["SearchState"]
       25 JUMPIFNOT                        R4 ; [+15]
       26 GETTABLEKS                       R4 R1 K3 ["SearchState"]
       28 JUMPIFNOT                        R4 ; [+12]
       29 GETTABLEKS                       R6 R2 K3 ["SearchState"]
       31 GETTABLEKS                       R5 R6 K4 ["SearchSessionId"]
       33 GETTABLEKS                       R7 R1 K3 ["SearchState"]
       35 GETTABLEKS                       R6 R7 K4 ["SearchSessionId"]
       37 JUMPIFEQ                         R5 R6 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 JUMPIF                           R3 ; [+1]
       42 JUMPIFNOT                        R4 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R6 R0 K1 ["_historyBufferIndex"]
       46 ADDK                             R5 R6 K5 [1]
       47 NAMECALL                         R3 R0 K6 ["_getHistoryRingIndex"]
       49 CALL                             R3 2 1
       50 GETTABLEKS                       R4 R0 K0 ["_historyRingBuffer"]
       52 SETTABLE                         R1 R4 R3
       53 SETTABLEKS                       R3 R0 K1 ["_historyBufferIndex"]
       55 JUMP                             ; [+19]
       56 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
       58 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
       60 GETTABLE                         R2 R3 R4
       61 JUMPIFNOTEQ                      R2 R1 ; [+2]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R5 R0 K1 ["_historyBufferIndex"]
       66 ADDK                             R4 R5 K5 [1]
       67 NAMECALL                         R2 R0 K6 ["_getHistoryRingIndex"]
       69 CALL                             R2 2 1
       70 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
       72 SETTABLE                         R1 R3 R2
       73 SETTABLEKS                       R2 R0 K1 ["_historyBufferIndex"]
       75 GETTABLEKS                       R2 R0 K0 ["_historyRingBuffer"]
       77 GETTABLEKS                       R6 R0 K1 ["_historyBufferIndex"]
       79 ADDK                             R5 R6 K5 [1]
       80 NAMECALL                         R3 R0 K6 ["_getHistoryRingIndex"]
       82 CALL                             R3 2 1
       83 LOADNIL                          R4
       84 SETTABLE                         R4 R2 R3
       85 GETTABLEKS                       R2 R0 K7 ["OnHistoryChanged"]
       87 NAMECALL                         R2 R2 K8 ["Fire"]
       89 CALL                             R2 1 0
       90 RETURN                           R0 0

PROTO_62:
        0 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
        2 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
        7 SETTABLE                         R1 R3 R2
        8 GETTABLEKS                       R3 R0 K3 ["OnHistoryChanged"]
       10 NAMECALL                         R3 R3 K4 ["Fire"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_63:
        0 GETTABLEKS                       R5 R0 K0 ["_historyBufferIndex"]
        2 ADD                              R4 R5 R1
        3 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K0 ["_historyBufferIndex"]
        8 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
       10 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
       12 GETTABLE                         R2 R3 R4
       13 GETUPVAL                         R3 0
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+49]
       16 GETTABLEKS                       R3 R2 K3 ["ScopeUid"]
       18 JUMPIFNOT                        R3 ; [+30]
       19 GETTABLEKS                       R5 R2 K3 ["ScopeUid"]
       21 NAMECALL                         R3 R0 K4 ["getScopeWithUid"]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+11]
       25 GETUPVAL                         R4 1
       26 LOADK                            R6 K5 ["Scope with UID %* not found in scopes"]
       27 GETTABLEKS                       R8 R2 K3 ["ScopeUid"]
       29 NAMECALL                         R6 R6 K6 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 LOADK                            R6 K7 ["WARN"]
       34 CALL                             R4 2 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K8 ["_pluginController"]
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K9 ["setCurrentScope"]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R4 R0 K10 ["OnRestoreSearchState"]
       44 LOADNIL                          R6
       45 NAMECALL                         R4 R4 K11 ["Fire"]
       47 CALL                             R4 2 0
       48 JUMP                             ; [+25]
       49 GETTABLEKS                       R3 R2 K12 ["SearchState"]
       51 JUMPIFNOT                        R3 ; [+8]
       52 GETTABLEKS                       R3 R0 K10 ["OnRestoreSearchState"]
       54 GETTABLEKS                       R5 R2 K12 ["SearchState"]
       56 NAMECALL                         R3 R3 K11 ["Fire"]
       58 CALL                             R3 2 0
       59 JUMP                             ; [+14]
       60 GETUPVAL                         R3 1
       61 LOADK                            R4 K13 ["Invalid history item, no scope or search state"]
       62 LOADK                            R5 K7 ["WARN"]
       63 CALL                             R3 2 0
       64 JUMP                             ; [+9]
       65 GETTABLEKS                       R3 R0 K8 ["_pluginController"]
       67 MOVE                             R7 R2
       68 NAMECALL                         R5 R0 K4 ["getScopeWithUid"]
       70 CALL                             R5 2 -1
       71 NAMECALL                         R3 R3 K9 ["setCurrentScope"]
       73 CALL                             R3 -1 0
       74 GETTABLEKS                       R3 R0 K14 ["OnHistoryChanged"]
       76 NAMECALL                         R3 R3 K11 ["Fire"]
       78 CALL                             R3 1 0
       79 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
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

PROTO_66:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 255
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_67:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_68:
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
       85 GETTABLEKS                       R14 R15 K20 ["Resources"]
       87 GETTABLEKS                       R13 R14 K21 ["Constants"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R16 R0 K13 ["Src"]
       94 GETTABLEKS                       R15 R16 K22 ["Flags"]
       96 GETTABLEKS                       R14 R15 K23 ["getFFlagAmrOrganizationFoundation"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R17 R0 K13 ["Src"]
      103 GETTABLEKS                       R16 R17 K22 ["Flags"]
      105 GETTABLEKS                       R15 R16 K24 ["getFFlagAmrRecents"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R18 R0 K13 ["Src"]
      112 GETTABLEKS                       R17 R18 K22 ["Flags"]
      114 GETTABLEKS                       R16 R17 K25 ["getFFlagAmrSearchAndHistory"]
      116 CALL                             R15 1 1
      117 LOADK                            R18 K26 ["ExplorerController"]
      118 NAMECALL                         R16 R4 K27 ["extend"]
      120 CALL                             R16 2 1
      121 NEWTABLE                         R17 0 2
      123 GETTABLEKS                       R19 R9 K28 ["ScopeType"]
      125 GETTABLEKS                       R18 R19 K29 ["ProjectShared"]
      127 GETTABLEKS                       R20 R9 K28 ["ScopeType"]
      129 GETTABLEKS                       R19 R20 K30 ["ProjectPlaces"]
      131 SETLIST                          R17 R18 2 [1]
      133 DUPCLOSURE                       R18 K31 [PROTO_3]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R18 R16 K32 ["new"]
      144 DUPCLOSURE                       R18 K33 [PROTO_4]
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R18 R16 K34 ["mock"]
      148 DUPCLOSURE                       R18 K35 [PROTO_5]
      149 SETTABLEKS                       R18 R16 K36 ["getIsMock"]
      151 DUPCLOSURE                       R18 K37 [PROTO_6]
      152 CAPTURE                          VAL R6
      153 SETTABLEKS                       R18 R16 K38 ["destroy"]
      155 DUPCLOSURE                       R18 K39 [PROTO_7]
      156 SETTABLEKS                       R18 R16 K40 ["_setExpansion"]
      158 DUPCLOSURE                       R18 K41 [PROTO_8]
      159 SETTABLEKS                       R18 R16 K42 ["_expandAncestorsRecursive"]
      161 DUPCLOSURE                       R18 K43 [PROTO_9]
      162 CAPTURE                          VAL R8
      163 SETTABLEKS                       R18 R16 K44 ["toggleExpansion"]
      165 DUPCLOSURE                       R18 K45 [PROTO_10]
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R11
      170 SETTABLEKS                       R18 R16 K46 ["_updateRenderTree"]
      172 DUPCLOSURE                       R18 K47 [PROTO_11]
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R11
      175 SETTABLEKS                       R18 R16 K48 ["_generateProjectCustomScopes"]
      177 DUPCLOSURE                       R18 K49 [PROTO_12]
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R9
      180 SETTABLEKS                       R18 R16 K50 ["getProjectPlacesScope"]
      182 DUPCLOSURE                       R18 K51 [PROTO_13]
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R11
      187 SETTABLEKS                       R18 R16 K52 ["_createExplorerItems"]
      189 DUPCLOSURE                       R18 K53 [PROTO_14]
      190 SETTABLEKS                       R18 R16 K54 ["_setNewItemNotif"]
      192 DUPCLOSURE                       R18 K55 [PROTO_15]
      193 SETTABLEKS                       R18 R16 K56 ["_toggleNewItemNotif"]
      195 DUPCLOSURE                       R18 K57 [PROTO_16]
      196 SETTABLEKS                       R18 R16 K58 ["getScopeWithUid"]
      198 DUPCLOSURE                       R18 K59 [PROTO_17]
      199 SETTABLEKS                       R18 R16 K60 ["getVisibleInventories"]
      201 DUPCLOSURE                       R18 K61 [PROTO_18]
      202 CAPTURE                          VAL R12
      203 SETTABLEKS                       R18 R16 K62 ["_addRecentUploads"]
      205 DUPCLOSURE                       R18 K63 [PROTO_19]
      206 SETTABLEKS                       R18 R16 K64 ["_addUserAndExperienceScopes"]
      208 DUPCLOSURE                       R18 K65 [PROTO_20]
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R11
      211 SETTABLEKS                       R18 R16 K66 ["convertFoldersToScopes"]
      213 DUPCLOSURE                       R18 K67 [PROTO_21]
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 SETTABLEKS                       R18 R16 K68 ["getScopeRoot"]
      218 DUPCLOSURE                       R18 K69 [PROTO_22]
      219 SETTABLEKS                       R18 R16 K70 ["isAncestor"]
      221 DUPCLOSURE                       R18 K71 [PROTO_27]
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R8
      225 SETTABLEKS                       R18 R16 K72 ["fetchFolders"]
      227 DUPCLOSURE                       R18 K73 [PROTO_28]
      228 SETTABLEKS                       R18 R16 K74 ["getStagedFolder"]
      230 DUPCLOSURE                       R18 K75 [PROTO_29]
      231 CAPTURE                          VAL R12
      232 SETTABLEKS                       R18 R16 K76 ["removeStagedFolder"]
      234 DUPCLOSURE                       R18 K77 [PROTO_30]
      235 CAPTURE                          VAL R9
      236 CAPTURE                          VAL R12
      237 SETTABLEKS                       R18 R16 K78 ["stageFolder"]
      239 DUPCLOSURE                       R18 K79 [PROTO_31]
      240 SETTABLEKS                       R18 R16 K80 ["handleCreatedFolder"]
      242 DUPCLOSURE                       R18 K81 [PROTO_32]
      243 SETTABLEKS                       R18 R16 K82 ["handleRenamedFolder"]
      245 DUPCLOSURE                       R18 K83 [PROTO_33]
      246 CAPTURE                          VAL R10
      247 SETTABLEKS                       R18 R16 K84 ["handleDeletedFolder"]
      249 DUPCLOSURE                       R18 K85 [PROTO_35]
      250 CAPTURE                          VAL R8
      251 SETTABLEKS                       R18 R16 K86 ["_sortChildrenByName"]
      253 DUPCLOSURE                       R18 K87 [PROTO_36]
      254 SETTABLEKS                       R18 R16 K88 ["_addScopeToChildren"]
      256 DUPCLOSURE                       R18 K89 [PROTO_38]
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R9
      260 SETTABLEKS                       R18 R16 K90 ["_removeScope"]
      262 DUPCLOSURE                       R18 K91 [PROTO_40]
      263 CAPTURE                          VAL R10
      264 CAPTURE                          VAL R8
      265 CAPTURE                          VAL R1
      266 SETTABLEKS                       R18 R16 K92 ["moveScopes"]
      268 DUPCLOSURE                       R18 K93 [PROTO_44]
      269 CAPTURE                          VAL R13
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R8
      272 SETTABLEKS                       R18 R16 K94 ["refreshScopes"]
      274 DUPCLOSURE                       R18 K95 [PROTO_45]
      275 SETTABLEKS                       R18 R16 K96 ["getExplorerItems"]
      277 DUPCLOSURE                       R18 K97 [PROTO_46]
      278 SETTABLEKS                       R18 R16 K98 ["getExpansion"]
      280 DUPCLOSURE                       R18 K99 [PROTO_47]
      281 CAPTURE                          VAL R13
      282 SETTABLEKS                       R18 R16 K100 ["toggleVisibleInventory"]
      284 DUPCLOSURE                       R18 K101 [PROTO_48]
      285 SETTABLEKS                       R18 R16 K102 ["getShowScopeOptions"]
      287 DUPCLOSURE                       R18 K103 [PROTO_49]
      288 SETTABLEKS                       R18 R16 K104 ["enableScopeOptions"]
      290 DUPCLOSURE                       R18 K105 [PROTO_50]
      291 CAPTURE                          VAL R13
      292 SETTABLEKS                       R18 R16 K106 ["_saveGroupOptions"]
      294 DUPCLOSURE                       R18 K107 [PROTO_51]
      295 SETTABLEKS                       R18 R16 K108 ["closeScopeOptions"]
      297 DUPCLOSURE                       R18 K109 [PROTO_52]
      298 SETTABLEKS                       R18 R16 K110 ["getGroupOptions"]
      300 DUPCLOSURE                       R18 K111 [PROTO_53]
      301 SETTABLEKS                       R18 R16 K112 ["toggleScopeOption"]
      303 DUPCLOSURE                       R18 K113 [PROTO_55]
      304 CAPTURE                          VAL R9
      305 SETTABLEKS                       R18 R16 K114 ["updateScopeOptions"]
      307 DUPCLOSURE                       R18 K115 [PROTO_56]
      308 SETTABLEKS                       R18 R16 K116 ["isScopeOptionChecked"]
      310 DUPCLOSURE                       R18 K117 [PROTO_57]
      311 SETTABLEKS                       R18 R16 K118 ["hasAllOptionsChecked"]
      313 DUPCLOSURE                       R18 K119 [PROTO_58]
      314 SETTABLEKS                       R18 R16 K120 ["getToggleSet"]
      316 DUPCLOSURE                       R18 K121 [PROTO_59]
      317 SETTABLEKS                       R18 R16 K122 ["toggleSelectAllOptions"]
      319 DUPCLOSURE                       R18 K123 [PROTO_60]
      320 SETTABLEKS                       R18 R16 K124 ["_getHistoryRingIndex"]
      322 DUPCLOSURE                       R18 K125 [PROTO_61]
      323 CAPTURE                          VAL R15
      324 SETTABLEKS                       R18 R16 K126 ["addToHistory"]
      326 DUPCLOSURE                       R18 K127 [PROTO_62]
      327 SETTABLEKS                       R18 R16 K128 ["updateCurrentHistoryItem"]
      329 DUPCLOSURE                       R18 K129 [PROTO_63]
      330 CAPTURE                          VAL R15
      331 CAPTURE                          VAL R8
      332 SETTABLEKS                       R18 R16 K130 ["_goToHistory"]
      334 DUPCLOSURE                       R18 K131 [PROTO_64]
      335 SETTABLEKS                       R18 R16 K132 ["getHistoryAtStart"]
      337 DUPCLOSURE                       R18 K133 [PROTO_65]
      338 SETTABLEKS                       R18 R16 K134 ["getHistoryAtEnd"]
      340 DUPCLOSURE                       R18 K135 [PROTO_66]
      341 SETTABLEKS                       R18 R16 K136 ["backHistory"]
      343 DUPCLOSURE                       R18 K137 [PROTO_67]
      344 SETTABLEKS                       R18 R16 K138 ["forwardHistory"]
      346 DUPCLOSURE                       R18 K139 [PROTO_68]
      347 SETTABLEKS                       R18 R16 K140 ["getPlugin"]
      349 RETURN                           R16 1
