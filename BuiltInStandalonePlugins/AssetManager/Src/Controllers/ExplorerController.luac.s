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
        0 GETTABLEKS                       R2 R0 K0 ["Creator"]
        2 GETTABLEKS                       R1 R2 K1 ["Uid"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["_pluginController"]
        7 NAMECALL                         R3 R3 K3 ["getCurrentScope"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K1 ["Uid"]
       12 JUMPIFEQ                         R1 R2 ; [+10]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R4 R0 K0 ["Creator"]
       17 GETTABLEKS                       R3 R4 K1 ["Uid"]
       19 LOADB                            R4 1
       20 NAMECALL                         R1 R1 K4 ["_setNewItemNotif"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

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
        0 DUPTABLE                         R3 K24 [{"_isMock", "_networking", "_pluginController", "_explorerItems", "_scopes", "_headers", "_projectCustom", "_visibleInventories", "_historyRingBuffer", "_historyBufferIndex", "_expansion", "_groupOptions", "_toggleSet", "_showScopeOptions", "_scopeNotifications", "_newItemNotifs", "_connections", "OnExplorerItemsChanged", "OnExpansionChanged", "OnGroupOptionsChanged", "OnShowScopeOptionsChanged", "OnToggleSetChanged", "OnScopeNotificationsChanged", "OnHistoryChanged"}]
        1 SETTABLEKS                       R2 R3 K0 ["_isMock"]
        3 SETTABLEKS                       R1 R3 K1 ["_networking"]
        5 SETTABLEKS                       R0 R3 K2 ["_pluginController"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["_explorerItems"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["_scopes"]
       15 GETUPVAL                         R5 0
       16 CALL                             R5 0 1
       17 JUMPIFNOT                        R5 ; [+85]
       18 NEWTABLE                         R4 2 0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K25 ["ExplorerHeader"]
       23 GETTABLEKS                       R5 R6 K26 ["Project"]
       25 DUPTABLE                         R6 K31 [{"Type", "Name", "Id", "Uid"}]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K32 ["ScopeType"]
       29 GETTABLEKS                       R7 R8 K33 ["Header"]
       31 SETTABLEKS                       R7 R6 K27 ["Type"]
       33 LOADK                            R7 K34 [""]
       34 SETTABLEKS                       R7 R6 K28 ["Name"]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R9 R10 K25 ["ExplorerHeader"]
       39 GETTABLEKS                       R8 R9 K26 ["Project"]
       41 GETTABLEKS                       R7 R8 K35 ["rawValue"]
       43 CALL                             R7 0 1
       44 SETTABLEKS                       R7 R6 K29 ["Id"]
       46 GETUPVAL                         R7 2
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R9 R10 K32 ["ScopeType"]
       50 GETTABLEKS                       R8 R9 K33 ["Header"]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K25 ["ExplorerHeader"]
       55 GETTABLEKS                       R9 R10 K26 ["Project"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K30 ["Uid"]
       60 SETTABLE                         R6 R4 R5
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R6 R7 K25 ["ExplorerHeader"]
       64 GETTABLEKS                       R5 R6 K36 ["Library"]
       66 DUPTABLE                         R6 K31 [{"Type", "Name", "Id", "Uid"}]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K32 ["ScopeType"]
       70 GETTABLEKS                       R7 R8 K33 ["Header"]
       72 SETTABLEKS                       R7 R6 K27 ["Type"]
       74 LOADK                            R7 K34 [""]
       75 SETTABLEKS                       R7 R6 K28 ["Name"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R9 R10 K25 ["ExplorerHeader"]
       80 GETTABLEKS                       R8 R9 K36 ["Library"]
       82 GETTABLEKS                       R7 R8 K35 ["rawValue"]
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R6 K29 ["Id"]
       87 GETUPVAL                         R7 2
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R9 R10 K32 ["ScopeType"]
       91 GETTABLEKS                       R8 R9 K33 ["Header"]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R10 R11 K25 ["ExplorerHeader"]
       96 GETTABLEKS                       R9 R10 K36 ["Library"]
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K30 ["Uid"]
      101 SETTABLE                         R6 R4 R5
      102 JUMP                             ; [+1]
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R3 K5 ["_headers"]
      106 NEWTABLE                         R4 0 0
      108 SETTABLEKS                       R4 R3 K6 ["_projectCustom"]
      110 NEWTABLE                         R4 0 0
      112 SETTABLEKS                       R4 R3 K7 ["_visibleInventories"]
      114 NEWTABLE                         R4 0 1
      116 NAMECALL                         R6 R0 K37 ["getCurrentScope"]
      118 CALL                             R6 1 1
      119 GETTABLEKS                       R5 R6 K30 ["Uid"]
      121 SETLIST                          R4 R5 1 [1]
      123 SETTABLEKS                       R4 R3 K8 ["_historyRingBuffer"]
      125 LOADN                            R4 1
      126 SETTABLEKS                       R4 R3 K9 ["_historyBufferIndex"]
      128 NEWTABLE                         R4 0 0
      130 SETTABLEKS                       R4 R3 K10 ["_expansion"]
      132 NEWTABLE                         R4 0 0
      134 SETTABLEKS                       R4 R3 K11 ["_groupOptions"]
      136 NEWTABLE                         R4 0 0
      138 SETTABLEKS                       R4 R3 K12 ["_toggleSet"]
      140 LOADB                            R4 0
      141 SETTABLEKS                       R4 R3 K13 ["_showScopeOptions"]
      143 NEWTABLE                         R4 0 0
      145 SETTABLEKS                       R4 R3 K14 ["_scopeNotifications"]
      147 NEWTABLE                         R4 0 0
      149 SETTABLEKS                       R4 R3 K15 ["_newItemNotifs"]
      151 NEWTABLE                         R4 0 0
      153 SETTABLEKS                       R4 R3 K16 ["_connections"]
      155 GETUPVAL                         R5 3
      156 GETTABLEKS                       R4 R5 K38 ["new"]
      158 CALL                             R4 0 1
      159 SETTABLEKS                       R4 R3 K17 ["OnExplorerItemsChanged"]
      161 GETUPVAL                         R5 3
      162 GETTABLEKS                       R4 R5 K38 ["new"]
      164 CALL                             R4 0 1
      165 SETTABLEKS                       R4 R3 K18 ["OnExpansionChanged"]
      167 GETUPVAL                         R5 3
      168 GETTABLEKS                       R4 R5 K38 ["new"]
      170 CALL                             R4 0 1
      171 SETTABLEKS                       R4 R3 K19 ["OnGroupOptionsChanged"]
      173 GETUPVAL                         R5 3
      174 GETTABLEKS                       R4 R5 K38 ["new"]
      176 CALL                             R4 0 1
      177 SETTABLEKS                       R4 R3 K20 ["OnShowScopeOptionsChanged"]
      179 GETUPVAL                         R5 3
      180 GETTABLEKS                       R4 R5 K38 ["new"]
      182 CALL                             R4 0 1
      183 SETTABLEKS                       R4 R3 K21 ["OnToggleSetChanged"]
      185 GETUPVAL                         R5 3
      186 GETTABLEKS                       R4 R5 K38 ["new"]
      188 CALL                             R4 0 1
      189 SETTABLEKS                       R4 R3 K22 ["OnScopeNotificationsChanged"]
      191 GETUPVAL                         R5 3
      192 GETTABLEKS                       R4 R5 K38 ["new"]
      194 CALL                             R4 0 1
      195 SETTABLEKS                       R4 R3 K23 ["OnHistoryChanged"]
      197 GETUPVAL                         R6 4
      198 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      200 MOVE                             R5 R3
      201 GETIMPORT                        R4 K40 [setmetatable]
      203 CALL                             R4 2 0
      204 GETTABLEKS                       R5 R3 K2 ["_pluginController"]
      206 NAMECALL                         R5 R5 K41 ["getGameInfo"]
      208 CALL                             R5 1 1
      209 GETTABLEKS                       R4 R5 K29 ["Id"]
      211 JUMPIFEQKN                       R4 K42 [0] ; [+4]
      213 NAMECALL                         R4 R3 K43 ["_generateProjectCustomScopes"]
      215 CALL                             R4 1 0
      216 GETUPVAL                         R4 0
      217 CALL                             R4 0 1
      218 JUMPIFNOT                        R4 ; [+4]
      219 NAMECALL                         R4 R3 K44 ["_updateRenderTree"]
      221 CALL                             R4 1 0
      222 JUMP                             ; [+3]
      223 NAMECALL                         R4 R3 K45 ["_createExplorerItems"]
      225 CALL                             R4 1 0
      226 GETTABLEKS                       R5 R3 K16 ["_connections"]
      228 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      230 GETTABLEKS                       R6 R7 K46 ["OnGameInfoFetched"]
      232 NEWCLOSURE                       R8 P0
      233 CAPTURE                          VAL R3
      234 CAPTURE                          UPVAL U0
      235 NAMECALL                         R6 R6 K47 ["Connect"]
      237 CALL                             R6 2 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R4 K50 [table.insert]
      241 CALL                             R4 -1 0
      242 GETTABLEKS                       R5 R3 K16 ["_connections"]
      244 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      246 GETTABLEKS                       R6 R7 K51 ["OnNewAssetFetched"]
      248 NEWCLOSURE                       R8 P1
      249 CAPTURE                          VAL R3
      250 NAMECALL                         R6 R6 K47 ["Connect"]
      252 CALL                             R6 2 -1
      253 FASTCALL                         TABLE_INSERT ; [+2]
      254 GETIMPORT                        R4 K50 [table.insert]
      256 CALL                             R4 -1 0
      257 GETTABLEKS                       R5 R3 K16 ["_connections"]
      259 GETTABLEKS                       R7 R3 K2 ["_pluginController"]
      261 GETTABLEKS                       R6 R7 K52 ["OnCurrentScopeChanged"]
      263 NEWCLOSURE                       R8 P2
      264 CAPTURE                          VAL R3
      265 NAMECALL                         R6 R6 K47 ["Connect"]
      267 CALL                             R6 2 -1
      268 FASTCALL                         TABLE_INSERT ; [+2]
      269 GETIMPORT                        R4 K50 [table.insert]
      271 CALL                             R4 -1 0
      272 NAMECALL                         R4 R3 K53 ["refreshScopes"]
      274 CALL                             R4 1 0
      275 RETURN                           R3 1

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
        7 GETTABLEKS                       R3 R2 K2 ["Id"]
        9 JUMPIFEQKN                       R3 K3 [0] ; [+49]
       11 GETTABLEKS                       R6 R0 K4 ["_headers"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K5 ["ExplorerHeader"]
       16 GETTABLEKS                       R7 R8 K6 ["Project"]
       18 GETTABLE                         R5 R6 R7
       19 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K9 [table.insert]
       24 CALL                             R3 2 0
       25 MOVE                             R4 R1
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K10 ["ScopeType"]
       30 GETTABLEKS                       R8 R9 K11 ["ProjectShared"]
       32 GETTABLEKS                       R9 R2 K2 ["Id"]
       34 CALL                             R7 2 -1
       35 NAMECALL                         R5 R0 K12 ["getScopeWithUid"]
       37 CALL                             R5 -1 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R3 K9 [table.insert]
       41 CALL                             R3 -1 0
       42 MOVE                             R4 R1
       43 GETUPVAL                         R7 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K10 ["ScopeType"]
       47 GETTABLEKS                       R8 R9 K13 ["ProjectPlaces"]
       49 GETTABLEKS                       R9 R2 K2 ["Id"]
       51 CALL                             R7 2 -1
       52 NAMECALL                         R5 R0 K12 ["getScopeWithUid"]
       54 CALL                             R5 -1 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R3 K9 [table.insert]
       58 CALL                             R3 -1 0
       59 GETTABLEKS                       R6 R0 K4 ["_headers"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K5 ["ExplorerHeader"]
       64 GETTABLEKS                       R7 R8 K14 ["Library"]
       66 GETTABLE                         R5 R6 R7
       67 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       69 MOVE                             R4 R1
       70 GETIMPORT                        R3 K9 [table.insert]
       72 CALL                             R3 2 0
       73 MOVE                             R4 R1
       74 GETTABLEKS                       R5 R0 K0 ["_pluginController"]
       76 NAMECALL                         R5 R5 K15 ["getUser"]
       78 CALL                             R5 1 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R3 K9 [table.insert]
       82 CALL                             R3 -1 0
       83 NAMECALL                         R3 R0 K16 ["getVisibleInventories"]
       85 CALL                             R3 1 3
       86 FORGPREP                         R3
       87 MOVE                             R10 R7
       88 NAMECALL                         R8 R0 K12 ["getScopeWithUid"]
       90 CALL                             R8 2 1
       91 GETTABLEKS                       R9 R8 K17 ["Type"]
       93 GETUPVAL                         R12 0
       94 GETTABLEKS                       R11 R12 K10 ["ScopeType"]
       96 GETTABLEKS                       R10 R11 K18 ["Group"]
       98 JUMPIFNOTEQ                      R9 R10 ; [+8]
      100 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      102 MOVE                             R10 R1
      103 MOVE                             R11 R8
      104 GETIMPORT                        R9 K9 [table.insert]
      106 CALL                             R9 2 0
      107 FORGLOOP                         R3 2 ; [-21]
      109 SETTABLEKS                       R1 R0 K19 ["_explorerItems"]
      111 GETTABLEKS                       R3 R0 K20 ["OnExplorerItemsChanged"]
      113 GETTABLEKS                       R5 R0 K19 ["_explorerItems"]
      115 NAMECALL                         R3 R3 K21 ["Fire"]
      117 CALL                             R3 2 0
      118 RETURN                           R0 0

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
        7 GETTABLEKS                       R3 R2 K2 ["Id"]
        9 JUMPIFEQKN                       R3 K3 [0] ; [+54]
       11 DUPTABLE                         R5 K5 [{"ExplorerHeader"}]
       12 GETTABLEKS                       R6 R2 K6 ["Name"]
       14 SETTABLEKS                       R6 R5 K4 ["ExplorerHeader"]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K9 [table.insert]
       21 CALL                             R3 2 0
       22 DUPTABLE                         R5 K11 [{"Scope"}]
       23 GETUPVAL                         R8 0
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R10 R11 K12 ["ScopeType"]
       27 GETTABLEKS                       R9 R10 K13 ["ProjectShared"]
       29 GETTABLEKS                       R10 R2 K2 ["Id"]
       31 CALL                             R8 2 -1
       32 NAMECALL                         R6 R0 K14 ["getScopeWithUid"]
       34 CALL                             R6 -1 1
       35 SETTABLEKS                       R6 R5 K10 ["Scope"]
       37 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       39 MOVE                             R4 R1
       40 GETIMPORT                        R3 K9 [table.insert]
       42 CALL                             R3 2 0
       43 DUPTABLE                         R5 K11 [{"Scope"}]
       44 GETUPVAL                         R8 0
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K12 ["ScopeType"]
       48 GETTABLEKS                       R9 R10 K15 ["ProjectPlaces"]
       50 GETTABLEKS                       R10 R2 K2 ["Id"]
       52 CALL                             R8 2 -1
       53 NAMECALL                         R6 R0 K14 ["getScopeWithUid"]
       55 CALL                             R6 -1 1
       56 SETTABLEKS                       R6 R5 K10 ["Scope"]
       58 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       60 MOVE                             R4 R1
       61 GETIMPORT                        R3 K9 [table.insert]
       63 CALL                             R3 2 0
       64 DUPTABLE                         R5 K5 [{"ExplorerHeader"}]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R7 R8 K4 ["ExplorerHeader"]
       68 GETTABLEKS                       R6 R7 K16 ["User"]
       70 SETTABLEKS                       R6 R5 K4 ["ExplorerHeader"]
       72 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       74 MOVE                             R4 R1
       75 GETIMPORT                        R3 K9 [table.insert]
       77 CALL                             R3 2 0
       78 DUPTABLE                         R5 K11 [{"Scope"}]
       79 GETTABLEKS                       R6 R0 K0 ["_pluginController"]
       81 NAMECALL                         R6 R6 K17 ["getUser"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K10 ["Scope"]
       86 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       88 MOVE                             R4 R1
       89 GETIMPORT                        R3 K9 [table.insert]
       91 CALL                             R3 2 0
       92 DUPTABLE                         R5 K5 [{"ExplorerHeader"}]
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R7 R8 K4 ["ExplorerHeader"]
       96 GETTABLEKS                       R6 R7 K18 ["Groups"]
       98 SETTABLEKS                       R6 R5 K4 ["ExplorerHeader"]
      100 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      102 MOVE                             R4 R1
      103 GETIMPORT                        R3 K9 [table.insert]
      105 CALL                             R3 2 0
      106 NAMECALL                         R3 R0 K19 ["getVisibleInventories"]
      108 CALL                             R3 1 3
      109 FORGPREP                         R3
      110 MOVE                             R10 R7
      111 NAMECALL                         R8 R0 K14 ["getScopeWithUid"]
      113 CALL                             R8 2 1
      114 GETTABLEKS                       R9 R8 K20 ["Type"]
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R11 R12 K12 ["ScopeType"]
      119 GETTABLEKS                       R10 R11 K21 ["Group"]
      121 JUMPIFNOTEQ                      R9 R10 ; [+10]
      123 DUPTABLE                         R11 K11 [{"Scope"}]
      124 SETTABLEKS                       R8 R11 K10 ["Scope"]
      126 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      128 MOVE                             R10 R1
      129 GETIMPORT                        R9 K9 [table.insert]
      131 CALL                             R9 2 0
      132 FORGLOOP                         R3 2 ; [-23]
      134 SETTABLEKS                       R1 R0 K22 ["_explorerItems"]
      136 GETTABLEKS                       R3 R0 K23 ["OnExplorerItemsChanged"]
      138 GETTABLEKS                       R5 R0 K22 ["_explorerItems"]
      140 NAMECALL                         R3 R3 K24 ["Fire"]
      142 CALL                             R3 2 0
      143 RETURN                           R0 0

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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeWithUid"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching folders: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_20:
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
       14 DUPCLOSURE                       R7 K4 [PROTO_19]
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R3 R3 K5 ["fetchFoldersAsync"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Error fetching groups: %*"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_scopes"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_visibleInventories"]
        8 NAMECALL                         R1 R0 K2 ["_addUserAndExperienceScopes"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K3 ["_networking"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 DUPCLOSURE                       R4 K4 [PROTO_23]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R1 R1 K5 ["fetchGroupsAsync"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_explorerItems"]
        2 RETURN                           R1 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_expansion"]
        2 RETURN                           R1 1

PROTO_27:
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

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        2 RETURN                           R1 1

PROTO_29:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_showScopeOptions"]
        3 GETTABLEKS                       R1 R0 K1 ["OnShowScopeOptionsChanged"]
        5 LOADB                            R3 1
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_groupOptions"]
        2 RETURN                           R1 1

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_toggleSet"]
        2 RETURN                           R1 1

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["This function should not be called when FFlagAmrOrganizationFoundation is true"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["MenuContext"]
       13 GETTABLEKS                       R4 R5 K4 ["Sidebar"]
       15 GETTABLE                         R2 R3 R4
       16 MOVE                             R3 R1
       17 MOVE                             R4 R0
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["This function should not be called when FFlagAmrOrganizationFoundation is true"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K3 ["MenuContext"]
       13 GETTABLEKS                       R5 R6 K4 ["Scope"]
       15 GETTABLE                         R3 R4 R5
       16 MOVE                             R4 R1
       17 MOVE                             R5 R2
       18 MOVE                             R6 R0
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_42:
        0 SUBK                             R4 R1 K0 [1]
        1 MODK                             R3 R4 K1 [502]
        2 ADDK                             R2 R3 K0 [1]
        3 RETURN                           R2 1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtStart"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 255
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_48:
        0 NAMECALL                         R1 R0 K0 ["getHistoryAtEnd"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+4]
        4 LOADN                            R3 1
        5 NAMECALL                         R1 R0 K1 ["_goToHistory"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_49:
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
       44 GETTABLEKS                       R8 R9 K15 ["renderContextMenu"]
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
       69 GETTABLEKS                       R11 R12 K18 ["createScopeUid"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R14 R0 K13 ["Src"]
       76 GETTABLEKS                       R13 R14 K19 ["Flags"]
       78 GETTABLEKS                       R12 R13 K20 ["getFFlagAmrOrganizationFoundation"]
       80 CALL                             R11 1 1
       81 LOADK                            R14 K21 ["ExplorerController"]
       82 NAMECALL                         R12 R4 K22 ["extend"]
       84 CALL                             R12 2 1
       85 NEWTABLE                         R13 0 2
       87 GETTABLEKS                       R15 R9 K23 ["ScopeType"]
       89 GETTABLEKS                       R14 R15 K24 ["ProjectShared"]
       91 GETTABLEKS                       R16 R9 K23 ["ScopeType"]
       93 GETTABLEKS                       R15 R16 K25 ["ProjectPlaces"]
       95 SETLIST                          R13 R14 2 [1]
       97 DUPCLOSURE                       R14 K26 [PROTO_3]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R14 R12 K27 ["new"]
      105 DUPCLOSURE                       R14 K28 [PROTO_4]
      106 CAPTURE                          VAL R12
      107 SETTABLEKS                       R14 R12 K29 ["mock"]
      109 DUPCLOSURE                       R14 K30 [PROTO_5]
      110 SETTABLEKS                       R14 R12 K31 ["getIsMock"]
      112 DUPCLOSURE                       R14 K32 [PROTO_6]
      113 CAPTURE                          VAL R6
      114 SETTABLEKS                       R14 R12 K33 ["destroy"]
      116 DUPCLOSURE                       R14 K34 [PROTO_7]
      117 SETTABLEKS                       R14 R12 K35 ["toggleExpansion"]
      119 DUPCLOSURE                       R14 K36 [PROTO_8]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R10
      122 SETTABLEKS                       R14 R12 K37 ["_updateRenderTree"]
      124 DUPCLOSURE                       R14 K38 [PROTO_9]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R10
      127 SETTABLEKS                       R14 R12 K39 ["_generateProjectCustomScopes"]
      129 DUPCLOSURE                       R14 K40 [PROTO_10]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 SETTABLEKS                       R14 R12 K41 ["_createExplorerItems"]
      134 DUPCLOSURE                       R14 K42 [PROTO_11]
      135 SETTABLEKS                       R14 R12 K43 ["_setNewItemNotif"]
      137 DUPCLOSURE                       R14 K44 [PROTO_12]
      138 SETTABLEKS                       R14 R12 K45 ["_toggleNewItemNotif"]
      140 DUPCLOSURE                       R14 K46 [PROTO_13]
      141 SETTABLEKS                       R14 R12 K47 ["getScopeWithUid"]
      143 DUPCLOSURE                       R14 K48 [PROTO_14]
      144 SETTABLEKS                       R14 R12 K49 ["getVisibleInventories"]
      146 DUPCLOSURE                       R14 K50 [PROTO_15]
      147 SETTABLEKS                       R14 R12 K51 ["_addUserAndExperienceScopes"]
      149 DUPCLOSURE                       R14 K52 [PROTO_16]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 SETTABLEKS                       R14 R12 K53 ["_convertFolders"]
      154 DUPCLOSURE                       R14 K54 [PROTO_20]
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R8
      157 SETTABLEKS                       R14 R12 K55 ["fetchFolders"]
      159 DUPCLOSURE                       R14 K56 [PROTO_24]
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R14 R12 K57 ["refreshScopes"]
      164 DUPCLOSURE                       R14 K58 [PROTO_25]
      165 SETTABLEKS                       R14 R12 K59 ["getExplorerItems"]
      167 DUPCLOSURE                       R14 K60 [PROTO_26]
      168 SETTABLEKS                       R14 R12 K61 ["getExpansion"]
      170 DUPCLOSURE                       R14 K62 [PROTO_27]
      171 CAPTURE                          VAL R11
      172 SETTABLEKS                       R14 R12 K63 ["toggleVisibleInventory"]
      174 DUPCLOSURE                       R14 K64 [PROTO_28]
      175 SETTABLEKS                       R14 R12 K65 ["getShowScopeOptions"]
      177 DUPCLOSURE                       R14 K66 [PROTO_29]
      178 SETTABLEKS                       R14 R12 K67 ["enableScopeOptions"]
      180 DUPCLOSURE                       R14 K68 [PROTO_30]
      181 CAPTURE                          VAL R11
      182 SETTABLEKS                       R14 R12 K69 ["_saveGroupOptions"]
      184 DUPCLOSURE                       R14 K70 [PROTO_31]
      185 SETTABLEKS                       R14 R12 K71 ["closeScopeOptions"]
      187 DUPCLOSURE                       R14 K72 [PROTO_32]
      188 SETTABLEKS                       R14 R12 K73 ["getGroupOptions"]
      190 DUPCLOSURE                       R14 K74 [PROTO_33]
      191 SETTABLEKS                       R14 R12 K75 ["toggleScopeOption"]
      193 DUPCLOSURE                       R14 K76 [PROTO_35]
      194 CAPTURE                          VAL R9
      195 SETTABLEKS                       R14 R12 K77 ["updateScopeOptions"]
      197 DUPCLOSURE                       R14 K78 [PROTO_36]
      198 SETTABLEKS                       R14 R12 K79 ["isScopeOptionChecked"]
      200 DUPCLOSURE                       R14 K80 [PROTO_37]
      201 SETTABLEKS                       R14 R12 K81 ["hasAllOptionsChecked"]
      203 DUPCLOSURE                       R14 K82 [PROTO_38]
      204 SETTABLEKS                       R14 R12 K83 ["getToggleSet"]
      206 DUPCLOSURE                       R14 K84 [PROTO_39]
      207 SETTABLEKS                       R14 R12 K85 ["toggleSelectAllOptions"]
      209 DUPCLOSURE                       R14 K86 [PROTO_40]
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R9
      213 SETTABLEKS                       R14 R12 K87 ["handleRightClick_DEPRECATED"]
      215 DUPCLOSURE                       R14 K88 [PROTO_41]
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R9
      219 SETTABLEKS                       R14 R12 K89 ["handleRowRightClick_DEPRECATED"]
      221 DUPCLOSURE                       R14 K90 [PROTO_42]
      222 SETTABLEKS                       R14 R12 K91 ["_getHistoryRingIndex"]
      224 DUPCLOSURE                       R14 K92 [PROTO_43]
      225 SETTABLEKS                       R14 R12 K93 ["_addToHistory"]
      227 DUPCLOSURE                       R14 K94 [PROTO_44]
      228 SETTABLEKS                       R14 R12 K95 ["_goToHistory"]
      230 DUPCLOSURE                       R14 K96 [PROTO_45]
      231 SETTABLEKS                       R14 R12 K97 ["getHistoryAtStart"]
      233 DUPCLOSURE                       R14 K98 [PROTO_46]
      234 SETTABLEKS                       R14 R12 K99 ["getHistoryAtEnd"]
      236 DUPCLOSURE                       R14 K100 [PROTO_47]
      237 SETTABLEKS                       R14 R12 K101 ["backHistory"]
      239 DUPCLOSURE                       R14 K102 [PROTO_48]
      240 SETTABLEKS                       R14 R12 K103 ["forwardHistory"]
      242 DUPCLOSURE                       R14 K104 [PROTO_49]
      243 SETTABLEKS                       R14 R12 K105 ["getPlugin"]
      245 RETURN                           R12 1
