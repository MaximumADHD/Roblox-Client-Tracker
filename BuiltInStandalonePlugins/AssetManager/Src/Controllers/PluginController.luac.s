PROTO_0:
        0 ORK                              R1 R0 K0 [0]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R3 K5 [{"Id", "Name", "Type", "Uid"}]
        3 SETTABLEKS                       R1 R3 K1 ["Id"]
        5 GETUPVAL                         R4 1
        6 LOADK                            R6 K6 ["Plugin"]
        7 LOADK                            R7 K7 ["PlaceholderGameName"]
        8 NAMECALL                         R4 R4 K8 ["getText"]
       10 CALL                             R4 3 1
       11 SETTABLEKS                       R4 R3 K2 ["Name"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K9 ["ScopeType"]
       16 GETTABLEKS                       R4 R5 K10 ["Universe"]
       18 SETTABLEKS                       R4 R3 K3 ["Type"]
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K9 ["ScopeType"]
       24 GETTABLEKS                       R5 R6 K10 ["Universe"]
       26 MOVE                             R6 R1
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K4 ["Uid"]
       30 SETTABLEKS                       R3 R2 K11 ["_gameInfo"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K12 ["OnGameInfoFetched"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K11 ["_gameInfo"]
       38 NAMECALL                         R2 R2 K13 ["Fire"]
       40 CALL                             R2 2 0
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K11 ["_gameInfo"]
       44 GETTABLEKS                       R2 R3 K1 ["Id"]
       46 JUMPIFEQKN                       R2 K0 [0] ; [+5]
       48 GETUPVAL                         R2 0
       49 NAMECALL                         R2 R2 K14 ["refreshUniverseInfo"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+34]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["PluginErrors"]
        4 LOADK                            R6 K1 ["ErrorFetchUsername"]
        5 NAMECALL                         R3 R3 K2 ["getText"]
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K3 ["Plugin"]
       11 LOADK                            R5 K4 ["PlaceholderUsername"]
       12 NAMECALL                         R2 R2 K2 ["getText"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K5 ["_user"]
       18 GETTABLEKS                       R3 R4 K6 ["Name"]
       20 JUMPIFEQ                         R3 R2 ; [+26]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K5 ["_user"]
       25 SETTABLEKS                       R2 R3 K6 ["Name"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K7 ["OnUsernameFetched"]
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K8 ["Fire"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R2 R3 K5 ["_user"]
       38 SETTABLEKS                       R0 R2 K6 ["Name"]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R2 R3 K7 ["OnUsernameFetched"]
       43 MOVE                             R4 R0
       44 NAMECALL                         R2 R2 K8 ["Fire"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K0 ["processNewAsset"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 LOADB                            R2 0
        6 MOVE                             R3 R1
        7 GETTABLEKS                       R4 R1 K1 ["Source"]
        9 JUMPIFNOTEQKS                    R4 K2 ["Import"] ; [+4]
       11 LOADB                            R2 1
       12 GETTABLEKS                       R3 R1 K3 ["AssetIds"]
       14 GETIMPORT                        R4 K5 [next]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 2
       18 JUMPIFNOT                        R3 ; [+9]
       19 JUMPIFEQKNIL                     R5 ; [+8]
       21 FASTCALL1                        TYPE R5 ; [+3]
       22 MOVE                             R7 R5
       23 GETIMPORT                        R6 K7 [type]
       25 CALL                             R6 1 1
       26 JUMPIFEQKS                       R6 K8 ["number"] ; [+5]
       28 GETUPVAL                         R6 1
       29 LOADK                            R7 K9 ["Invalid result received from AssetsUploaded"]
       30 CALL                             R6 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K10 ["values"]
       35 MOVE                             R7 R3
       36 CALL                             R6 1 1
       37 MOVE                             R7 R6
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 GETUPVAL                         R12 3
       42 MOVE                             R14 R11
       43 MOVE                             R15 R2
       44 NAMECALL                         R12 R12 K11 ["processNewAsset"]
       46 CALL                             R12 3 0
       47 FORGLOOP                         R7 2 ; [-7]
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_currentScope"]
        3 GETTABLEKS                       R1 R2 K1 ["Type"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["ScopeType"]
        8 GETTABLEKS                       R2 R3 K3 ["ProjectPlaces"]
       10 JUMPIFEQ                         R1 R2 ; [+13]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["_currentScope"]
       15 GETTABLEKS                       R1 R2 K1 ["Type"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K2 ["ScopeType"]
       20 GETTABLEKS                       R2 R3 K4 ["ProjectShared"]
       22 JUMPIFNOTEQ                      R1 R2 ; [+8]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K5 ["_user"]
       28 NAMECALL                         R1 R1 K6 ["setCurrentScope"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["GetUserId"]
        3 CALL                             R4 1 1
        4 DUPTABLE                         R5 K5 [{"Id", "Name", "Type", "Uid"}]
        5 SETTABLEKS                       R4 R5 K1 ["Id"]
        7 LOADK                            R8 K6 ["Plugin"]
        8 LOADK                            R9 K7 ["PlaceholderUsername"]
        9 NAMECALL                         R6 R2 K8 ["getText"]
       11 CALL                             R6 3 1
       12 SETTABLEKS                       R6 R5 K2 ["Name"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K9 ["ScopeType"]
       17 GETTABLEKS                       R6 R7 K10 ["User"]
       19 SETTABLEKS                       R6 R5 K3 ["Type"]
       21 GETUPVAL                         R6 2
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K9 ["ScopeType"]
       25 GETTABLEKS                       R7 R8 K10 ["User"]
       27 MOVE                             R8 R4
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K4 ["Uid"]
       31 LOADK                            R9 K12 ["GameId"]
       32 NAMECALL                         R7 R0 K13 ["GetItem"]
       34 CALL                             R7 2 1
       35 ORK                              R6 R7 K11 [0]
       36 DUPTABLE                         R7 K5 [{"Id", "Name", "Type", "Uid"}]
       37 SETTABLEKS                       R6 R7 K1 ["Id"]
       39 LOADK                            R10 K6 ["Plugin"]
       40 LOADK                            R11 K14 ["PlaceholderGameName"]
       41 NAMECALL                         R8 R2 K8 ["getText"]
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K2 ["Name"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K9 ["ScopeType"]
       49 GETTABLEKS                       R8 R9 K15 ["Universe"]
       51 SETTABLEKS                       R8 R7 K3 ["Type"]
       53 GETUPVAL                         R8 2
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R10 R11 K9 ["ScopeType"]
       57 GETTABLEKS                       R9 R10 K15 ["Universe"]
       59 MOVE                             R10 R6
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K4 ["Uid"]
       63 DUPTABLE                         R8 K41 [{"_isMock", "_networking", "_localization", "_plugin", "_user", "_gameInfo", "_rootPlace", "_stagedPlace", "_currentScope", "_dialogs", "_currentDialog", "_contextMenuItems", "_toast", "_toastCancelToken", "_connections", "_isInventoryFolderReady", "OnUsernameFetched", "OnGameInfoFetched", "OnCurrentScopeChanged", "OnRenamePlaceIdChanged", "OnNewAssetFetched", "OnDialogChanged", "OnContextMenuChanged", "OnInventoryFolderReadyChanged", "OnToastChanged"}]
       64 SETTABLEKS                       R3 R8 K16 ["_isMock"]
       66 SETTABLEKS                       R1 R8 K17 ["_networking"]
       68 SETTABLEKS                       R2 R8 K18 ["_localization"]
       70 SETTABLEKS                       R0 R8 K19 ["_plugin"]
       72 SETTABLEKS                       R5 R8 K20 ["_user"]
       74 SETTABLEKS                       R7 R8 K21 ["_gameInfo"]
       76 LOADN                            R9 0
       77 SETTABLEKS                       R9 R8 K22 ["_rootPlace"]
       79 LOADN                            R9 0
       80 SETTABLEKS                       R9 R8 K23 ["_stagedPlace"]
       82 SETTABLEKS                       R5 R8 K24 ["_currentScope"]
       84 NEWTABLE                         R9 0 0
       86 SETTABLEKS                       R9 R8 K25 ["_dialogs"]
       88 LOADNIL                          R9
       89 SETTABLEKS                       R9 R8 K26 ["_currentDialog"]
       91 NEWTABLE                         R9 0 0
       93 SETTABLEKS                       R9 R8 K27 ["_contextMenuItems"]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K28 ["_toast"]
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K29 ["_toastCancelToken"]
      101 NEWTABLE                         R9 0 0
      103 SETTABLEKS                       R9 R8 K30 ["_connections"]
      105 LOADB                            R9 0
      106 SETTABLEKS                       R9 R8 K31 ["_isInventoryFolderReady"]
      108 GETUPVAL                         R10 3
      109 GETTABLEKS                       R9 R10 K42 ["new"]
      111 CALL                             R9 0 1
      112 SETTABLEKS                       R9 R8 K32 ["OnUsernameFetched"]
      114 GETUPVAL                         R10 3
      115 GETTABLEKS                       R9 R10 K42 ["new"]
      117 CALL                             R9 0 1
      118 SETTABLEKS                       R9 R8 K33 ["OnGameInfoFetched"]
      120 GETUPVAL                         R10 3
      121 GETTABLEKS                       R9 R10 K42 ["new"]
      123 CALL                             R9 0 1
      124 SETTABLEKS                       R9 R8 K34 ["OnCurrentScopeChanged"]
      126 GETUPVAL                         R10 3
      127 GETTABLEKS                       R9 R10 K42 ["new"]
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K35 ["OnRenamePlaceIdChanged"]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R9 R10 K42 ["new"]
      135 CALL                             R9 0 1
      136 SETTABLEKS                       R9 R8 K36 ["OnNewAssetFetched"]
      138 GETUPVAL                         R10 3
      139 GETTABLEKS                       R9 R10 K42 ["new"]
      141 CALL                             R9 0 1
      142 SETTABLEKS                       R9 R8 K37 ["OnDialogChanged"]
      144 GETUPVAL                         R10 4
      145 CALL                             R10 0 1
      146 JUMPIFNOT                        R10 ; [+5]
      147 GETUPVAL                         R10 3
      148 GETTABLEKS                       R9 R10 K42 ["new"]
      150 CALL                             R9 0 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R9
      153 SETTABLEKS                       R9 R8 K38 ["OnContextMenuChanged"]
      155 GETUPVAL                         R10 3
      156 GETTABLEKS                       R9 R10 K42 ["new"]
      158 CALL                             R9 0 1
      159 SETTABLEKS                       R9 R8 K39 ["OnInventoryFolderReadyChanged"]
      161 GETUPVAL                         R10 3
      162 GETTABLEKS                       R9 R10 K42 ["new"]
      164 CALL                             R9 0 1
      165 SETTABLEKS                       R9 R8 K40 ["OnToastChanged"]
      167 GETUPVAL                         R11 5
      168 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
      170 MOVE                             R10 R8
      171 GETIMPORT                        R9 K44 [setmetatable]
      173 CALL                             R9 2 0
      174 NAMECALL                         R9 R8 K45 ["updateInventoryFolderReady"]
      176 CALL                             R9 1 0
      177 JUMPIFEQKN                       R6 K11 [0] ; [+4]
      179 NAMECALL                         R9 R8 K46 ["refreshUniverseInfo"]
      181 CALL                             R9 1 0
      182 GETTABLEKS                       R10 R8 K30 ["_connections"]
      184 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      186 LOADK                            R13 K12 ["GameId"]
      187 NEWCLOSURE                       R14 P0
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R2
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          UPVAL U2
      192 NAMECALL                         R11 R11 K47 ["OnSetItem"]
      194 CALL                             R11 3 -1
      195 FASTCALL                         TABLE_INSERT ; [+2]
      196 GETIMPORT                        R9 K50 [table.insert]
      198 CALL                             R9 -1 0
      199 NEWCLOSURE                       R11 P1
      200 CAPTURE                          UPVAL U6
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R8
      203 NAMECALL                         R9 R1 K51 ["fetchUsername"]
      205 CALL                             R9 2 0
      206 GETUPVAL                         R9 7
      207 CALL                             R9 0 1
      208 JUMPIF                           R9 ; [+14]
      209 GETTABLEKS                       R10 R8 K30 ["_connections"]
      211 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      213 LOADK                            R13 K52 ["BulkImportAssetImported"]
      214 NEWCLOSURE                       R14 P2
      215 CAPTURE                          VAL R8
      216 NAMECALL                         R11 R11 K53 ["OnInvoke"]
      218 CALL                             R11 3 -1
      219 FASTCALL                         TABLE_INSERT ; [+2]
      220 GETIMPORT                        R9 K50 [table.insert]
      222 CALL                             R9 -1 0
      223 GETTABLEKS                       R10 R8 K30 ["_connections"]
      225 GETUPVAL                         R11 8
      226 LOADK                            R13 K54 ["AssetsUploaded"]
      227 NEWCLOSURE                       R14 P3
      228 CAPTURE                          UPVAL U9
      229 CAPTURE                          UPVAL U6
      230 CAPTURE                          UPVAL U10
      231 CAPTURE                          VAL R8
      232 NAMECALL                         R11 R11 K55 ["Bind"]
      234 CALL                             R11 3 -1
      235 FASTCALL                         TABLE_INSERT ; [+2]
      236 GETIMPORT                        R9 K50 [table.insert]
      238 CALL                             R9 -1 0
      239 GETTABLEKS                       R10 R8 K30 ["_connections"]
      241 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      243 LOADK                            R13 K12 ["GameId"]
      244 NEWCLOSURE                       R14 P4
      245 CAPTURE                          VAL R8
      246 CAPTURE                          UPVAL U1
      247 NAMECALL                         R11 R11 K47 ["OnSetItem"]
      249 CALL                             R11 3 -1
      250 FASTCALL                         TABLE_INSERT ; [+2]
      251 GETIMPORT                        R9 K50 [table.insert]
      253 CALL                             R9 -1 0
      254 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 LOADB                            R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_user"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_gameInfo"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["OnUsernameFetched"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["OnGameInfoFetched"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["OnSelectionChanged"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["OnCurrentScopeChanged"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["OnDialogChanged"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnContextMenuChanged"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnRenamePlaceIdChanged"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K9 ["OnInventoryFolderReadyChanged"]
       30 GETTABLEKS                       R1 R0 K10 ["_toastCancelToken"]
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETTABLEKS                       R1 R0 K10 ["_toastCancelToken"]
       35 CALL                             R1 0 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K10 ["_toastCancelToken"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K11 ["OnToastChanged"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R2 R0 K12 ["_connections"]
       45 CALL                             R1 1 0
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K12 ["_connections"]
       49 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_user"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_currentScope"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_currentScope"]
        2 GETTABLEKS                       R2 R3 K1 ["Uid"]
        4 GETTABLEKS                       R3 R1 K1 ["Uid"]
        6 JUMPIFEQ                         R2 R3 ; [+11]
        8 GETTABLEKS                       R2 R0 K0 ["_currentScope"]
       10 SETTABLEKS                       R1 R0 K0 ["_currentScope"]
       12 GETTABLEKS                       R3 R0 K2 ["OnCurrentScopeChanged"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K3 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["Util"]
        6 GETTABLEKS                       R2 R3 K1 ["StudioUri"]
        8 GETTABLEKS                       R1 R2 K2 ["fromAction"]
       10 LOADK                            R2 K3 ["MeshImporter"]
       11 LOADK                            R3 K4 ["Toggle"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["_plugin"]
       15 LOADK                            R4 K6 ["Actions"]
       16 NAMECALL                         R2 R2 K7 ["GetPluginComponent"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [task.spawn]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CALL                             R3 1 0
       25 JUMP                             ; [+6]
       26 GETTABLEKS                       R1 R0 K5 ["_plugin"]
       28 LOADK                            R3 K11 ["OnOpenBulkImport"]
       29 NAMECALL                         R1 R1 K12 ["Invoke"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R1 R2 K13 ["sendUploadEvent"]
       35 CALL                             R1 0 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnNewAssetFetched"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [warn]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["_localization"]
        5 LOADK                            R4 K3 ["PluginErrors"]
        6 LOADK                            R5 K4 ["ErrorFetchAssetInfo"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_networking"]
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R0 K1 ["_user"]
        5 MOVE                             R7 R2
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R9 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R3 R3 K2 ["fetchAssetInfoAsync"]
       13 CALL                             R3 6 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["rootPlaceId"]
        3 SETTABLEKS                       R2 R1 K1 ["_rootPlace"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["_gameInfo"]
        8 GETTABLEKS                       R2 R0 K3 ["name"]
       10 SETTABLEKS                       R2 R1 K4 ["Name"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K5 ["OnGameInfoFetched"]
       15 GETIMPORT                        R3 K8 [table.clone]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K2 ["_gameInfo"]
       20 CALL                             R3 1 -1
       21 NAMECALL                         R1 R1 K9 ["Fire"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["_localization"]
        4 LOADK                            R4 K1 ["PluginErrors"]
        5 LOADK                            R5 K2 ["ErrorFetchGameName"]
        6 NAMECALL                         R2 R2 K3 ["getText"]
        8 CALL                             R2 3 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R1 K4 ["_rootPlace"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K5 ["_gameInfo"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K0 ["_localization"]
       23 LOADK                            R4 K6 ["Plugin"]
       24 LOADK                            R5 K7 ["PlaceholderGameName"]
       25 NAMECALL                         R2 R2 K3 ["getText"]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K8 ["Name"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K9 ["OnGameInfoFetched"]
       33 GETIMPORT                        R3 K12 [table.clone]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K5 ["_gameInfo"]
       38 CALL                             R3 1 -1
       39 NAMECALL                         R1 R1 K13 ["Fire"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_networking"]
        2 GETTABLEKS                       R4 R0 K1 ["_gameInfo"]
        4 GETTABLEKS                       R3 R4 K2 ["Id"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K3 ["fetchUniverseInfoAsync"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_21:
        0 SETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["_rootPlace"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["Deprecated with this flag"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 SETTABLEKS                       R1 R0 K3 ["_stagedPlace"]
       11 GETTABLEKS                       R2 R0 K4 ["OnRenamePlaceIdChanged"]
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K5 ["Fire"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["Deprecated with this flag"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R4 R0 K3 ["_stagedPlace"]
       11 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       17 LOADK                            R4 K5 ["No place staged for rename"]
       18 GETIMPORT                        R2 K2 [assert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K6 ["_plugin"]
       23 LOADK                            R4 K7 ["OnRenamePlace"]
       24 DUPTABLE                         R5 K10 [{"Id", "Name"}]
       25 GETTABLEKS                       R6 R0 K3 ["_stagedPlace"]
       27 SETTABLEKS                       R6 R5 K8 ["Id"]
       29 SETTABLEKS                       R1 R5 K9 ["Name"]
       31 NAMECALL                         R2 R2 K11 ["Invoke"]
       33 CALL                             R2 3 0
       34 LOADN                            R2 0
       35 SETTABLEKS                       R2 R0 K3 ["_stagedPlace"]
       37 GETTABLEKS                       R2 R0 K12 ["OnRenamePlaceIdChanged"]
       39 LOADN                            R4 0
       40 NAMECALL                         R2 R2 K13 ["Fire"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_26:
        0 SETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 GETTABLEKS                       R2 R0 K1 ["OnContextMenuChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 RETURN                           R1 1

PROTO_28:
        0 NAMECALL                         R4 R0 K0 ["closeDialog"]
        2 CALL                             R4 1 0
        3 DUPTABLE                         R4 K5 [{"Type", "Data", "Props", "Controller"}]
        4 GETTABLEKS                       R5 R1 K1 ["Type"]
        6 SETTABLEKS                       R5 R4 K1 ["Type"]
        8 SETTABLEKS                       R1 R4 K2 ["Data"]
       10 SETTABLEKS                       R2 R4 K3 ["Props"]
       12 SETTABLEKS                       R3 R4 K4 ["Controller"]
       14 GETTABLEKS                       R5 R1 K1 ["Type"]
       16 SETTABLEKS                       R5 R0 K6 ["_currentDialog"]
       18 GETTABLEKS                       R5 R0 K7 ["_dialogs"]
       20 GETTABLEKS                       R6 R1 K1 ["Type"]
       22 SETTABLE                         R4 R5 R6
       23 NAMECALL                         R5 R0 K8 ["_dialogUpdated"]
       25 CALL                             R5 1 0
       26 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_currentDialog"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["_dialogs"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R2 K2 ["Controller"]
       11 JUMPIFEQKNIL                     R3 ; [+7]
       13 GETTABLEKS                       R4 R3 K3 ["destroy"]
       15 JUMPIFNOT                        R4 ; [+3]
       16 NAMECALL                         R4 R3 K3 ["destroy"]
       18 CALL                             R4 1 0
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R0 K0 ["_currentDialog"]
       22 GETTABLEKS                       R4 R0 K1 ["_dialogs"]
       24 LOADNIL                          R5
       25 SETTABLE                         R5 R4 R1
       26 NAMECALL                         R4 R0 K4 ["_dialogUpdated"]
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_dialogs"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K3 ["_dialogs"]
        7 GETTABLEKS                       R1 R0 K4 ["OnDialogChanged"]
        9 GETTABLEKS                       R3 R0 K3 ["_dialogs"]
       11 NAMECALL                         R1 R1 K5 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_dialogs"]
        2 RETURN                           R1 1

PROTO_32:
        0 GETTABLEKS                       R3 R0 K0 ["_dialogs"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+4]
        5 GETTABLEKS                       R3 R2 K1 ["Controller"]
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_isInventoryFolderReady"]
        2 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["_isInventoryFolderReady"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_isInventoryFolderReady"]
        6 GETTABLEKS                       R2 R0 K1 ["OnInventoryFolderReadyChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setInventoryFolderReady"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 NAMECALL                         R2 R0 K0 ["getCurrentScope"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["_networking"]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K2 ["fetchInventoryFolderReadyAsync"]
       10 CALL                             R3 2 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R3 K3 ["andThen"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_37:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["_clearToast"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["_toastCancelToken"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_toastCancelToken"]
        5 CALL                             R2 0 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K0 ["_toastCancelToken"]
        9 SETTABLEKS                       R1 R0 K1 ["_toast"]
       11 GETTABLEKS                       R2 R0 K2 ["OnToastChanged"]
       13 GETTABLEKS                       R4 R0 K1 ["_toast"]
       15 NAMECALL                         R2 R2 K3 ["Fire"]
       17 CALL                             R2 2 0
       18 LOADB                            R2 0
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          REF R2
       21 SETTABLEKS                       R3 R0 K0 ["_toastCancelToken"]
       23 GETIMPORT                        R3 K6 [task.delay]
       25 LOADN                            R4 2
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 CALL                             R3 2 0
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 0

PROTO_40:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_toast"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_toastCancelToken"]
        6 GETTABLEKS                       R1 R0 K2 ["OnToastChanged"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R1 R0 K2 ["OnToastChanged"]
       11 LOADNIL                          R3
       12 NAMECALL                         R1 R1 K3 ["Fire"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_toast"]
        2 RETURN                           R1 1

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
       21 GETTABLEKS                       R6 R2 K11 ["Src"]
       23 GETTABLEKS                       R5 R6 K12 ["Util"]
       25 GETTABLEKS                       R4 R5 K13 ["Services"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K3 ["GetService"]
       30 LOADK                            R5 K14 ["StudioService"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R7 R2 K15 ["Packages"]
       36 GETTABLEKS                       R6 R7 K16 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K17 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K18 ["ContextItem"]
       43 GETIMPORT                        R8 K10 [require]
       45 GETTABLEKS                       R10 R2 K15 ["Packages"]
       47 GETTABLEKS                       R9 R10 K19 ["Dash"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R10 R5 K12 ["Util"]
       52 GETTABLEKS                       R9 R10 K20 ["Signal"]
       54 GETIMPORT                        R10 K10 [require]
       56 GETTABLEKS                       R12 R2 K11 ["Src"]
       58 GETTABLEKS                       R11 R12 K21 ["Types"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K10 [require]
       63 GETTABLEKS                       R13 R2 K11 ["Src"]
       65 GETTABLEKS                       R12 R13 K22 ["Analytics"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K10 [require]
       70 GETTABLEKS                       R15 R2 K11 ["Src"]
       72 GETTABLEKS                       R14 R15 K12 ["Util"]
       74 GETTABLEKS                       R13 R14 K23 ["cleanConnections"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K10 [require]
       79 GETTABLEKS                       R16 R2 K11 ["Src"]
       81 GETTABLEKS                       R15 R16 K12 ["Util"]
       83 GETTABLEKS                       R14 R15 K24 ["createScopeUid"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R17 R2 K11 ["Src"]
       90 GETTABLEKS                       R16 R17 K12 ["Util"]
       92 GETTABLEKS                       R15 R16 K25 ["logIfDebug"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K10 [require]
       97 GETTABLEKS                       R18 R2 K11 ["Src"]
       99 GETTABLEKS                       R17 R18 K26 ["Flags"]
      101 GETTABLEKS                       R16 R17 K27 ["getEFCinUnifiedImportQueue"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R19 R2 K11 ["Src"]
      108 GETTABLEKS                       R18 R19 K26 ["Flags"]
      110 GETTABLEKS                       R17 R18 K28 ["getFFlagAmrRefactorEditNameInput"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K10 [require]
      115 GETTABLEKS                       R20 R2 K11 ["Src"]
      117 GETTABLEKS                       R19 R20 K26 ["Flags"]
      119 GETTABLEKS                       R18 R19 K29 ["getFFlagAmrFoundationifyContextMenu"]
      121 CALL                             R17 1 1
      122 LOADK                            R20 K30 ["PluginController"]
      123 NAMECALL                         R18 R7 K31 ["extend"]
      125 CALL                             R18 2 1
      126 DUPCLOSURE                       R19 K32 [PROTO_5]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R8
      138 SETTABLEKS                       R19 R18 K33 ["new"]
      140 DUPCLOSURE                       R19 K34 [PROTO_6]
      141 CAPTURE                          VAL R18
      142 SETTABLEKS                       R19 R18 K35 ["mock"]
      144 DUPCLOSURE                       R19 K36 [PROTO_7]
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R19 R18 K37 ["destroy"]
      148 DUPCLOSURE                       R19 K38 [PROTO_8]
      149 SETTABLEKS                       R19 R18 K39 ["getPlugin"]
      151 DUPCLOSURE                       R19 K40 [PROTO_9]
      152 SETTABLEKS                       R19 R18 K41 ["getUser"]
      154 DUPCLOSURE                       R19 K42 [PROTO_10]
      155 SETTABLEKS                       R19 R18 K43 ["getGameInfo"]
      157 DUPCLOSURE                       R19 K44 [PROTO_11]
      158 SETTABLEKS                       R19 R18 K45 ["getCurrentScope"]
      160 DUPCLOSURE                       R19 K46 [PROTO_12]
      161 SETTABLEKS                       R19 R18 K47 ["setCurrentScope"]
      163 DUPCLOSURE                       R19 K48 [PROTO_14]
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R11
      167 SETTABLEKS                       R19 R18 K49 ["launchBulkImport"]
      169 DUPCLOSURE                       R19 K50 [PROTO_17]
      170 CAPTURE                          VAL R14
      171 SETTABLEKS                       R19 R18 K51 ["processNewAsset"]
      173 DUPCLOSURE                       R19 K52 [PROTO_20]
      174 CAPTURE                          VAL R14
      175 SETTABLEKS                       R19 R18 K53 ["refreshUniverseInfo"]
      177 DUPCLOSURE                       R19 K54 [PROTO_21]
      178 SETTABLEKS                       R19 R18 K55 ["setRootPlace"]
      180 DUPCLOSURE                       R19 K56 [PROTO_22]
      181 SETTABLEKS                       R19 R18 K57 ["getRootPlace"]
      183 DUPCLOSURE                       R19 K58 [PROTO_23]
      184 SETTABLEKS                       R19 R18 K59 ["isRootPlace"]
      186 DUPCLOSURE                       R19 K60 [PROTO_24]
      187 CAPTURE                          VAL R16
      188 SETTABLEKS                       R19 R18 K61 ["stagePlaceForRename"]
      190 DUPCLOSURE                       R19 K62 [PROTO_25]
      191 CAPTURE                          VAL R16
      192 SETTABLEKS                       R19 R18 K63 ["renamePlace"]
      194 DUPCLOSURE                       R19 K64 [PROTO_26]
      195 SETTABLEKS                       R19 R18 K65 ["setContextMenuItems"]
      197 DUPCLOSURE                       R19 K66 [PROTO_27]
      198 SETTABLEKS                       R19 R18 K67 ["getContextMenuItems"]
      200 DUPCLOSURE                       R19 K68 [PROTO_28]
      201 SETTABLEKS                       R19 R18 K69 ["setDialog"]
      203 DUPCLOSURE                       R19 K70 [PROTO_29]
      204 SETTABLEKS                       R19 R18 K71 ["closeDialog"]
      206 DUPCLOSURE                       R19 K72 [PROTO_30]
      207 SETTABLEKS                       R19 R18 K73 ["_dialogUpdated"]
      209 DUPCLOSURE                       R19 K74 [PROTO_31]
      210 SETTABLEKS                       R19 R18 K75 ["getDialogs"]
      212 DUPCLOSURE                       R19 K76 [PROTO_32]
      213 SETTABLEKS                       R19 R18 K77 ["getDialogController"]
      215 DUPCLOSURE                       R19 K78 [PROTO_33]
      216 SETTABLEKS                       R19 R18 K79 ["isInventoryFolderReady"]
      218 DUPCLOSURE                       R19 K80 [PROTO_34]
      219 SETTABLEKS                       R19 R18 K81 ["setInventoryFolderReady"]
      221 DUPCLOSURE                       R19 K82 [PROTO_36]
      222 SETTABLEKS                       R19 R18 K83 ["updateInventoryFolderReady"]
      224 DUPCLOSURE                       R19 K84 [PROTO_39]
      225 SETTABLEKS                       R19 R18 K85 ["showToast"]
      227 DUPCLOSURE                       R19 K86 [PROTO_40]
      228 SETTABLEKS                       R19 R18 K87 ["_clearToast"]
      230 DUPCLOSURE                       R19 K88 [PROTO_41]
      231 SETTABLEKS                       R19 R18 K89 ["getToast"]
      233 RETURN                           R18 1
