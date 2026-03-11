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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["_pluginController"]
        6 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R1 R2 K2 ["Type"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["ScopeType"]
       14 GETTABLEKS                       R2 R3 K4 ["RecentUploads"]
       16 JUMPIFEQ                         R1 R2 ; [+11]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K4 ["RecentUploads"]
       22 GETTABLEKS                       R3 R4 K5 ["Uid"]
       24 LOADB                            R4 1
       25 NAMECALL                         R1 R1 K6 ["_setNewItemNotif"]
       27 CALL                             R1 3 0
       28 GETTABLEKS                       R2 R0 K7 ["Creator"]
       30 GETTABLEKS                       R1 R2 K5 ["Uid"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K0 ["_pluginController"]
       35 NAMECALL                         R3 R3 K1 ["getCurrentScope"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R2 R3 K5 ["Uid"]
       40 JUMPIFEQ                         R1 R2 ; [+10]
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R4 R0 K7 ["Creator"]
       45 GETTABLEKS                       R3 R4 K5 ["Uid"]
       47 LOADB                            R4 1
       48 NAMECALL                         R1 R1 K6 ["_setNewItemNotif"]
       50 CALL                             R1 3 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_newItemNotifs"]
        3 GETTABLEKS                       R3 R0 K1 ["Uid"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K1 ["Uid"]
       10 NAMECALL                         R1 R1 K2 ["_toggleNewItemNotif"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R3 R0 K1 ["Uid"]
       16 NAMECALL                         R1 R1 K3 ["_addToHistory"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K23 [{"_isMock", "_networking", "_pluginController", "_explorerItems", "_scopes", "_headers", "_projectCustom", "_visibleInventories", "_historyRingBuffer", "_historyBufferIndex", "_expansion", "_groupOptions", "_toggleSet", "_showScopeOptions", "_newItemNotifs", "_connections", "OnExplorerItemsChanged", "OnExpansionChanged", "OnGroupOptionsChanged", "OnShowScopeOptionsChanged", "OnToggleSetChanged", "OnScopeNotificationsChanged", "OnHistoryChanged"}]
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
       27 NEWTABLE                         R4 0 1
       29 NAMECALL                         R6 R0 K24 ["getCurrentScope"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R5 R6 K25 ["Uid"]
       34 SETLIST                          R4 R5 1 [1]
       36 SETTABLEKS                       R4 R3 K8 ["_historyRingBuffer"]
       38 LOADN                            R4 1
       39 SETTABLEKS                       R4 R3 K9 ["_historyBufferIndex"]
       41 NEWTABLE                         R4 0 0
       43 SETTABLEKS                       R4 R3 K10 ["_expansion"]
       45 NEWTABLE                         R4 0 0
       47 SETTABLEKS                       R4 R3 K11 ["_groupOptions"]
       49 NEWTABLE                         R4 0 0
       51 SETTABLEKS                       R4 R3 K12 ["_toggleSet"]
       53 LOADB                            R4 0
       54 SETTABLEKS                       R4 R3 K13 ["_showScopeOptions"]
       56 NEWTABLE                         R4 0 0
       58 SETTABLEKS                       R4 R3 K14 ["_newItemNotifs"]
       60 NEWTABLE                         R4 0 0
       62 SETTABLEKS                       R4 R3 K15 ["_connections"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R4 R5 K26 ["new"]
       67 CALL                             R4 0 1
       68 SETTABLEKS                       R4 R3 K16 ["OnExplorerItemsChanged"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K26 ["new"]
       73 CALL                             R4 0 1
       74 SETTABLEKS                       R4 R3 K17 ["OnExpansionChanged"]
       76 GETUPVAL                         R5 0
       77 GETTABLEKS                       R4 R5 K26 ["new"]
       79 CALL                             R4 0 1
       80 SETTABLEKS                       R4 R3 K18 ["OnGroupOptionsChanged"]
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R4 R5 K26 ["new"]
       85 CALL                             R4 0 1
       86 SETTABLEKS                       R4 R3 K19 ["OnShowScopeOptionsChanged"]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R4 R5 K26 ["new"]
       91 CALL                             R4 0 1
       92 SETTABLEKS                       R4 R3 K20 ["OnToggleSetChanged"]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R4 R5 K26 ["new"]
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R3 K21 ["OnScopeNotificationsChanged"]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R4 R5 K26 ["new"]
      103 CALL                             R4 0 1
      104 SETTABLEKS                       R4 R3 K22 ["OnHistoryChanged"]
      106 GETUPVAL                         R6 1
      107 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      109 MOVE                             R5 R3
      110 GETIMPORT                        R4 K28 [setmetatable]
      112 CALL                             R4 2 0
      113 GETUPVAL                         R4 2
      114 CALL                             R4 0 1
      115 JUMPIFNOT                        R4 ; [+35]
      116 GETUPVAL                         R5 3
      117 GETTABLEKS                       R4 R5 K29 ["getEnumAsList"]
      119 GETUPVAL                         R7 3
      120 GETTABLEKS                       R5 R7 K30 ["SidebarHeader"]
      122 CALL                             R4 1 3
      123 FORGPREP                         R4
      124 GETTABLEKS                       R9 R3 K5 ["_headers"]
      126 DUPTABLE                         R10 K34 [{"Type", "Name", "Id", "Uid"}]
      127 GETUPVAL                         R13 3
      128 GETTABLEKS                       R12 R13 K35 ["ScopeType"]
      130 GETTABLEKS                       R11 R12 K36 ["Header"]
      132 SETTABLEKS                       R11 R10 K31 ["Type"]
      134 SETTABLEKS                       R8 R10 K32 ["Name"]
      136 SETTABLEKS                       R7 R10 K33 ["Id"]
      138 GETUPVAL                         R11 4
      139 GETUPVAL                         R14 3
      140 GETTABLEKS                       R13 R14 K35 ["ScopeType"]
      142 GETTABLEKS                       R12 R13 K36 ["Header"]
      144 MOVE                             R13 R7
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K25 ["Uid"]
      148 SETTABLE                         R10 R9 R8
      149 FORGLOOP                         R4 2 ; [-26]
      151 GETTABLEKS                       R5 R3 K2 ["_pluginController"]
      153 NAMECALL                         R5 R5 K37 ["getGameInfo"]
      155 CALL                             R5 1 1
      156 GETTABLEKS                       R4 R5 K33 ["Id"]
      158 JUMPIFEQKN                       R4 K38 [0] ; [+4]
      160 NAMECALL                         R4 R3 K39 ["_generateProjectCustomScopes"]
      162 CALL                             R4 1 0
      163 GETUPVAL                         R4 5
      164 CALL                             R4 0 1
      165 JUMPIFNOT                        R4 ; [+3]
      166 NAMECALL                         R4 R3 K40 ["_addRecentUploads"]
      168 CALL                             R4 1 0
      169 GETUPVAL                         R4 2
      170 CALL                             R4 0 1
      171 JUMPIFNOT                        R4 ; [+4]
      172 NAMECALL                         R4 R3 K41 ["_updateRenderTree"]
      174 CALL                             R4 1 0
      175 JUMP                             ; [+3]
      176 NAMECALL                         R4 R3 K42 ["_createExplorerItems"]
      178 CALL                             R4 1 0
      179 GETTABLEKS                       R5 R3 K15 ["_connections"]
      181 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      183 GETTABLEKS                       R6 R7 K43 ["OnGameInfoFetched"]
      185 NEWCLOSURE                       R8 P0
      186 CAPTURE                          VAL R3
      187 CAPTURE                          UPVAL U2
      188 NAMECALL                         R6 R6 K44 ["Connect"]
      190 CALL                             R6 2 -1
      191 FASTCALL                         TABLE_INSERT ; [+2]
      192 GETIMPORT                        R4 K47 [table.insert]
      194 CALL                             R4 -1 0
      195 GETTABLEKS                       R5 R3 K15 ["_connections"]
      197 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      199 GETTABLEKS                       R6 R7 K48 ["OnNewAssetFetched"]
      201 NEWCLOSURE                       R8 P1
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          VAL R3
      204 CAPTURE                          UPVAL U3
      205 CAPTURE                          UPVAL U6
      206 NAMECALL                         R6 R6 K44 ["Connect"]
      208 CALL                             R6 2 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R4 K47 [table.insert]
      212 CALL                             R4 -1 0
      213 GETTABLEKS                       R5 R3 K15 ["_connections"]
      215 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      217 GETTABLEKS                       R6 R7 K49 ["OnCurrentScopeChanged"]
      219 NEWCLOSURE                       R8 P2
      220 CAPTURE                          VAL R3
      221 NAMECALL                         R6 R6 K44 ["Connect"]
      223 CALL                             R6 2 -1
      224 FASTCALL                         TABLE_INSERT ; [+2]
      225 GETIMPORT                        R4 K47 [table.insert]
      227 CALL                             R4 -1 0
      228 NAMECALL                         R4 R3 K50 ["refreshScopes"]
      230 CALL                             R4 1 0
      231 RETURN                           R3 1

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
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R2 R0 K9 ["_connections"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K9 ["_connections"]
       34 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_expansion"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["_expansion"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 JUMP                             ; [+16]
        9 GETTABLEKS                       R2 R0 K0 ["_expansion"]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R0 K1 ["getScopeWithUid"]
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R5 R2 K2 ["Children"]
       19 JUMPIF                           R5 ; [+2]
       20 NEWTABLE                         R5 0 0
       22 NAMECALL                         R3 R0 K3 ["fetchFolders"]
       24 CALL                             R3 2 0
       25 GETTABLEKS                       R2 R0 K4 ["OnExpansionChanged"]
       27 GETIMPORT                        R4 K7 [table.clone]
       29 GETTABLEKS                       R5 R0 K0 ["_expansion"]
       31 CALL                             R4 1 -1
       32 NAMECALL                         R2 R2 K8 ["Fire"]
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_scopes"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_visibleInventories"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_scopes"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["RecentUploads"]
        5 GETTABLEKS                       R2 R3 K2 ["Uid"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["RecentUploads"]
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 DUPTABLE                         R9 K5 [{"Name", "Type", "Id", "Uid", "Parent"}]
        7 GETTABLEKS                       R10 R8 K6 ["DisplayName"]
        9 SETTABLEKS                       R10 R9 K0 ["Name"]
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R11 R12 K7 ["ScopeType"]
       14 GETTABLEKS                       R10 R11 K8 ["Folder"]
       16 SETTABLEKS                       R10 R9 K1 ["Type"]
       18 GETTABLEKS                       R10 R8 K9 ["AssetId"]
       20 SETTABLEKS                       R10 R9 K2 ["Id"]
       22 GETUPVAL                         R10 1
       23 GETUPVAL                         R13 0
       24 GETTABLEKS                       R12 R13 K7 ["ScopeType"]
       26 GETTABLEKS                       R11 R12 K8 ["Folder"]
       28 GETTABLEKS                       R12 R8 K9 ["AssetId"]
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K3 ["Uid"]
       33 SETTABLEKS                       R2 R9 K4 ["Parent"]
       35 GETTABLEKS                       R12 R9 K3 ["Uid"]
       37 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       39 MOVE                             R11 R3
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 2 0
       43 GETTABLEKS                       R10 R0 K13 ["_scopes"]
       45 GETTABLEKS                       R11 R9 K3 ["Uid"]
       47 SETTABLE                         R9 R10 R11
       48 FORGLOOP                         R4 2 ; [-43]
       50 GETTABLEKS                       R5 R0 K13 ["_scopes"]
       52 GETTABLE                         R4 R5 R2
       53 SETTABLEKS                       R3 R4 K14 ["Children"]
       55 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeWithUid"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R8 R5
        6 MOVE                             R9 R4
        7 NAMECALL                         R6 R6 K0 ["_convertFolders"]
        9 CALL                             R6 3 0
       10 FORGLOOP                         R1 2 ; [-7]
       12 GETUPVAL                         R1 0
       13 NAMECALL                         R1 R1 K1 ["_updateRenderTree"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching folders: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["map"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R0 K1 ["_networking"]
        9 DUPTABLE                         R5 K3 [{"Scopes"}]
       10 SETTABLEKS                       R2 R5 K2 ["Scopes"]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R0
       14 DUPCLOSURE                       R7 K4 [PROTO_20]
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R3 R3 K5 ["fetchFoldersAsync"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_scopes"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_visibleInventories"]
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 NAMECALL                         R1 R0 K2 ["_addRecentUploads"]
       13 CALL                             R1 1 0
       14 NAMECALL                         R1 R0 K3 ["_addUserAndExperienceScopes"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K4 ["_networking"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 DUPCLOSURE                       R4 K5 [PROTO_24]
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R1 R1 K6 ["fetchGroupsAsync"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_28:
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

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_30:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_40:
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

PROTO_41:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_42:
        0 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
        2 GETTABLEKS                       R4 R0 K1 ["_historyBufferIndex"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOTEQ                      R2 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R5 R0 K1 ["_historyBufferIndex"]
       10 ADDK                             R4 R5 K2 [1]
       11 NAMECALL                         R2 R0 K3 ["_getHistoryRingIndex"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
       16 SETTABLE                         R1 R3 R2
       17 SETTABLEKS                       R2 R0 K1 ["_historyBufferIndex"]
       19 GETTABLEKS                       R3 R0 K0 ["_historyRingBuffer"]
       21 GETTABLEKS                       R7 R0 K1 ["_historyBufferIndex"]
       23 ADDK                             R6 R7 K2 [1]
       24 NAMECALL                         R4 R0 K3 ["_getHistoryRingIndex"]
       26 CALL                             R4 2 1
       27 LOADNIL                          R5
       28 SETTABLE                         R5 R3 R4
       29 GETTABLEKS                       R3 R0 K4 ["OnHistoryChanged"]
       31 NAMECALL                         R3 R3 K5 ["Fire"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R5 R0 K0 ["_historyBufferIndex"]
        2 ADD                              R4 R5 R1
        3 NAMECALL                         R2 R0 K1 ["_getHistoryRingIndex"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K0 ["_historyBufferIndex"]
        8 GETTABLEKS                       R3 R0 K2 ["_historyRingBuffer"]
       10 GETTABLEKS                       R4 R0 K0 ["_historyBufferIndex"]
       12 GETTABLE                         R2 R3 R4
       13 GETTABLEKS                       R3 R0 K3 ["_pluginController"]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R0 K4 ["getScopeWithUid"]
       18 CALL                             R5 2 -1
       19 NAMECALL                         R3 R3 K5 ["setCurrentScope"]
       21 CALL                             R3 -1 0
       22 GETTABLEKS                       R3 R0 K6 ["OnHistoryChanged"]
       24 NAMECALL                         R3 R3 K7 ["Fire"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 255
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_47:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_48:
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
       44 GETTABLEKS                       R8 R9 K15 ["logIfDebug"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R9 R10 K16 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K13 ["Src"]
       58 GETTABLEKS                       R11 R12 K11 ["Util"]
       60 GETTABLEKS                       R10 R11 K17 ["createScopeUid"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K13 ["Src"]
       67 GETTABLEKS                       R12 R13 K18 ["Resources"]
       69 GETTABLEKS                       R11 R12 K19 ["Constants"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K13 ["Src"]
       76 GETTABLEKS                       R13 R14 K20 ["Flags"]
       78 GETTABLEKS                       R12 R13 K21 ["getFFlagAmrOrganizationFoundation"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R15 R0 K13 ["Src"]
       85 GETTABLEKS                       R14 R15 K20 ["Flags"]
       87 GETTABLEKS                       R13 R14 K22 ["getFFlagAmrRecents"]
       89 CALL                             R12 1 1
       90 LOADK                            R15 K23 ["ExplorerController"]
       91 NAMECALL                         R13 R4 K24 ["extend"]
       93 CALL                             R13 2 1
       94 NEWTABLE                         R14 0 2
       96 GETTABLEKS                       R16 R8 K25 ["ScopeType"]
       98 GETTABLEKS                       R15 R16 K26 ["ProjectShared"]
      100 GETTABLEKS                       R17 R8 K25 ["ScopeType"]
      102 GETTABLEKS                       R16 R17 K27 ["ProjectPlaces"]
      104 SETLIST                          R14 R15 2 [1]
      106 DUPCLOSURE                       R15 K28 [PROTO_3]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R10
      114 SETTABLEKS                       R15 R13 K29 ["new"]
      116 DUPCLOSURE                       R15 K30 [PROTO_4]
      117 CAPTURE                          VAL R13
      118 SETTABLEKS                       R15 R13 K31 ["mock"]
      120 DUPCLOSURE                       R15 K32 [PROTO_5]
      121 SETTABLEKS                       R15 R13 K33 ["getIsMock"]
      123 DUPCLOSURE                       R15 K34 [PROTO_6]
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R15 R13 K35 ["destroy"]
      127 DUPCLOSURE                       R15 K36 [PROTO_7]
      128 SETTABLEKS                       R15 R13 K37 ["toggleExpansion"]
      130 DUPCLOSURE                       R15 K38 [PROTO_8]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 SETTABLEKS                       R15 R13 K39 ["_updateRenderTree"]
      137 DUPCLOSURE                       R15 K40 [PROTO_9]
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R15 R13 K41 ["_generateProjectCustomScopes"]
      142 DUPCLOSURE                       R15 K42 [PROTO_10]
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 SETTABLEKS                       R15 R13 K43 ["_createExplorerItems"]
      149 DUPCLOSURE                       R15 K44 [PROTO_11]
      150 SETTABLEKS                       R15 R13 K45 ["_setNewItemNotif"]
      152 DUPCLOSURE                       R15 K46 [PROTO_12]
      153 SETTABLEKS                       R15 R13 K47 ["_toggleNewItemNotif"]
      155 DUPCLOSURE                       R15 K48 [PROTO_13]
      156 SETTABLEKS                       R15 R13 K49 ["getScopeWithUid"]
      158 DUPCLOSURE                       R15 K50 [PROTO_14]
      159 SETTABLEKS                       R15 R13 K51 ["getVisibleInventories"]
      161 DUPCLOSURE                       R15 K52 [PROTO_15]
      162 CAPTURE                          VAL R10
      163 SETTABLEKS                       R15 R13 K53 ["_addRecentUploads"]
      165 DUPCLOSURE                       R15 K54 [PROTO_16]
      166 SETTABLEKS                       R15 R13 K55 ["_addUserAndExperienceScopes"]
      168 DUPCLOSURE                       R15 K56 [PROTO_17]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 SETTABLEKS                       R15 R13 K57 ["_convertFolders"]
      173 DUPCLOSURE                       R15 K58 [PROTO_21]
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R7
      176 SETTABLEKS                       R15 R13 K59 ["fetchFolders"]
      178 DUPCLOSURE                       R15 K60 [PROTO_25]
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R7
      182 SETTABLEKS                       R15 R13 K61 ["refreshScopes"]
      184 DUPCLOSURE                       R15 K62 [PROTO_26]
      185 SETTABLEKS                       R15 R13 K63 ["getExplorerItems"]
      187 DUPCLOSURE                       R15 K64 [PROTO_27]
      188 SETTABLEKS                       R15 R13 K65 ["getExpansion"]
      190 DUPCLOSURE                       R15 K66 [PROTO_28]
      191 CAPTURE                          VAL R11
      192 SETTABLEKS                       R15 R13 K67 ["toggleVisibleInventory"]
      194 DUPCLOSURE                       R15 K68 [PROTO_29]
      195 SETTABLEKS                       R15 R13 K69 ["getShowScopeOptions"]
      197 DUPCLOSURE                       R15 K70 [PROTO_30]
      198 SETTABLEKS                       R15 R13 K71 ["enableScopeOptions"]
      200 DUPCLOSURE                       R15 K72 [PROTO_31]
      201 CAPTURE                          VAL R11
      202 SETTABLEKS                       R15 R13 K73 ["_saveGroupOptions"]
      204 DUPCLOSURE                       R15 K74 [PROTO_32]
      205 SETTABLEKS                       R15 R13 K75 ["closeScopeOptions"]
      207 DUPCLOSURE                       R15 K76 [PROTO_33]
      208 SETTABLEKS                       R15 R13 K77 ["getGroupOptions"]
      210 DUPCLOSURE                       R15 K78 [PROTO_34]
      211 SETTABLEKS                       R15 R13 K79 ["toggleScopeOption"]
      213 DUPCLOSURE                       R15 K80 [PROTO_36]
      214 CAPTURE                          VAL R8
      215 SETTABLEKS                       R15 R13 K81 ["updateScopeOptions"]
      217 DUPCLOSURE                       R15 K82 [PROTO_37]
      218 SETTABLEKS                       R15 R13 K83 ["isScopeOptionChecked"]
      220 DUPCLOSURE                       R15 K84 [PROTO_38]
      221 SETTABLEKS                       R15 R13 K85 ["hasAllOptionsChecked"]
      223 DUPCLOSURE                       R15 K86 [PROTO_39]
      224 SETTABLEKS                       R15 R13 K87 ["getToggleSet"]
      226 DUPCLOSURE                       R15 K88 [PROTO_40]
      227 SETTABLEKS                       R15 R13 K89 ["toggleSelectAllOptions"]
      229 DUPCLOSURE                       R15 K90 [PROTO_41]
      230 SETTABLEKS                       R15 R13 K91 ["_getHistoryRingIndex"]
      232 DUPCLOSURE                       R15 K92 [PROTO_42]
      233 SETTABLEKS                       R15 R13 K93 ["_addToHistory"]
      235 DUPCLOSURE                       R15 K94 [PROTO_43]
      236 SETTABLEKS                       R15 R13 K95 ["_goToHistory"]
      238 DUPCLOSURE                       R15 K96 [PROTO_44]
      239 SETTABLEKS                       R15 R13 K97 ["getHistoryAtStart"]
      241 DUPCLOSURE                       R15 K98 [PROTO_45]
      242 SETTABLEKS                       R15 R13 K99 ["getHistoryAtEnd"]
      244 DUPCLOSURE                       R15 K100 [PROTO_46]
      245 SETTABLEKS                       R15 R13 K101 ["backHistory"]
      247 DUPCLOSURE                       R15 K102 [PROTO_47]
      248 SETTABLEKS                       R15 R13 K103 ["forwardHistory"]
      250 DUPCLOSURE                       R15 K104 [PROTO_48]
      251 SETTABLEKS                       R15 R13 K105 ["getPlugin"]
      253 RETURN                           R13 1
