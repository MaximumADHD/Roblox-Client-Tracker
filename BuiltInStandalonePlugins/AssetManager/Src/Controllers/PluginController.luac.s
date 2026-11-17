PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["AssetType"]
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_user"]
        4 NAMECALL                         R0 R0 K1 ["setCurrentScope"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 ORK                              R1 R0 K0 [0]
        1 GETIMPORT                        R2 K3 [table.clone]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["_gameInfo"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 DUPTABLE                         R4 K9 [{"Id", "Name", "Type", "Uid"}]
        9 SETTABLEKS                       R1 R4 K5 ["Id"]
       11 GETUPVAL                         R5 1
       12 LOADK                            R7 K10 ["Plugin"]
       13 LOADK                            R8 K11 ["PlaceholderGameName"]
       14 NAMECALL                         R5 R5 K12 ["getText"]
       16 CALL                             R5 3 1
       17 SETTABLEKS                       R5 R4 K6 ["Name"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K13 ["ScopeType"]
       22 GETTABLEKS                       R5 R5 K14 ["Universe"]
       24 SETTABLEKS                       R5 R4 K7 ["Type"]
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K13 ["ScopeType"]
       30 GETTABLEKS                       R6 R6 K14 ["Universe"]
       32 MOVE                             R7 R1
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K8 ["Uid"]
       36 SETTABLEKS                       R4 R3 K4 ["_gameInfo"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K15 ["OnGameInfoFetched"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K4 ["_gameInfo"]
       44 MOVE                             R6 R2
       45 NAMECALL                         R3 R3 K16 ["Fire"]
       47 CALL                             R3 3 0
       48 GETUPVAL                         R3 0
       49 NAMECALL                         R3 R3 K17 ["refreshUniverseInfo"]
       51 CALL                             R3 1 0
       52 JUMPIFEQKN                       R1 K0 [0] ; [+9]
       54 GETUPVAL                         R3 0
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K4 ["_gameInfo"]
       58 NAMECALL                         R3 R3 K18 ["setCurrentScope"]
       60 CALL                             R3 2 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 0
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R5 R5 K19 ["_user"]
       66 NAMECALL                         R3 R3 K18 ["setCurrentScope"]
       68 CALL                             R3 2 0
       69 RETURN                           R0 0

PROTO_4:
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
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["_user"]
       18 GETTABLEKS                       R3 R3 K6 ["Name"]
       20 JUMPIFEQ                         R3 R2 ; [+26]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["_user"]
       25 SETTABLEKS                       R2 R3 K6 ["Name"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K7 ["OnUsernameFetched"]
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K8 ["Fire"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K5 ["_user"]
       38 SETTABLEKS                       R0 R2 K6 ["Name"]
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K7 ["OnUsernameFetched"]
       43 MOVE                             R4 R0
       44 NAMECALL                         R2 R2 K8 ["Fire"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["showSnackbar"]
        6 DUPTABLE                         R2 K2 [{"LocalizableMessage"}]
        7 DUPTABLE                         R3 K6 [{"Key", "SubKey", "Args"}]
        8 GETTABLEKS                       R4 R0 K3 ["Key"]
       10 SETTABLEKS                       R4 R3 K3 ["Key"]
       12 GETTABLEKS                       R4 R0 K4 ["SubKey"]
       14 SETTABLEKS                       R4 R3 K4 ["SubKey"]
       16 GETTABLEKS                       R4 R0 K5 ["Args"]
       18 SETTABLEKS                       R4 R3 K5 ["Args"]
       20 SETTABLEKS                       R3 R2 K1 ["LocalizableMessage"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 2
       25 MOVE                             R3 R0
       26 NAMECALL                         R1 R1 K7 ["showToast"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_6:
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
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K10 ["values"]
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

PROTO_7:
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
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K9 ["ScopeType"]
       17 GETTABLEKS                       R6 R6 K10 ["User"]
       19 SETTABLEKS                       R6 R5 K3 ["Type"]
       21 GETUPVAL                         R6 2
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K9 ["ScopeType"]
       25 GETTABLEKS                       R7 R7 K10 ["User"]
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
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K9 ["ScopeType"]
       49 GETTABLEKS                       R8 R8 K15 ["Universe"]
       51 SETTABLEKS                       R8 R7 K3 ["Type"]
       53 GETUPVAL                         R8 2
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K9 ["ScopeType"]
       57 GETTABLEKS                       R9 R9 K15 ["Universe"]
       59 MOVE                             R10 R6
       60 CALL                             R8 2 1
       61 SETTABLEKS                       R8 R7 K4 ["Uid"]
       63 JUMPIFEQKN                       R6 K11 [0] ; [+3]
       65 MOVE                             R8 R7
       66 JUMP                             ; [+1]
       67 MOVE                             R8 R5
       68 DUPTABLE                         R9 K40 [{["_isMock"], ["_pluginSessionId"], ["_networking"], ["_localization"], ["_plugin"], ["_user"], ["_gameInfo"], ["_rootPlace"] = 0, ["_currentScope"], ["_dialogs"], ["_currentDialog"] = , ["_contextMenuItems"], ["_toast"] = , ["_toastCancelToken"] = , ["_tutorialController"] = , ["_connections"], ["OnUsernameFetched"], ["OnGameInfoFetched"], ["OnCurrentScopeChanged"], ["OnNewAssetFetched"], ["OnDialogChanged"], ["OnContextMenuChanged"], ["OnToastChanged"]}]
       69 SETTABLEKS                       R3 R9 K16 ["_isMock"]
       71 GETUPVAL                         R10 3
       72 LOADB                            R12 0
       73 NAMECALL                         R10 R10 K41 ["GenerateGUID"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K17 ["_pluginSessionId"]
       78 SETTABLEKS                       R1 R9 K18 ["_networking"]
       80 SETTABLEKS                       R2 R9 K19 ["_localization"]
       82 SETTABLEKS                       R0 R9 K20 ["_plugin"]
       84 SETTABLEKS                       R5 R9 K21 ["_user"]
       86 SETTABLEKS                       R7 R9 K22 ["_gameInfo"]
       88 SETTABLEKS                       R8 R9 K24 ["_currentScope"]
       90 NEWTABLE                         R10 0 0
       92 SETTABLEKS                       R10 R9 K25 ["_dialogs"]
       94 NEWTABLE                         R10 0 0
       96 SETTABLEKS                       R10 R9 K28 ["_contextMenuItems"]
       98 NEWTABLE                         R10 0 0
      100 SETTABLEKS                       R10 R9 K32 ["_connections"]
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K42 ["new"]
      105 CALL                             R10 0 1
      106 SETTABLEKS                       R10 R9 K33 ["OnUsernameFetched"]
      108 GETUPVAL                         R10 4
      109 GETTABLEKS                       R10 R10 K42 ["new"]
      111 CALL                             R10 0 1
      112 SETTABLEKS                       R10 R9 K34 ["OnGameInfoFetched"]
      114 GETUPVAL                         R10 4
      115 GETTABLEKS                       R10 R10 K42 ["new"]
      117 CALL                             R10 0 1
      118 SETTABLEKS                       R10 R9 K35 ["OnCurrentScopeChanged"]
      120 GETUPVAL                         R10 4
      121 GETTABLEKS                       R10 R10 K42 ["new"]
      123 CALL                             R10 0 1
      124 SETTABLEKS                       R10 R9 K36 ["OnNewAssetFetched"]
      126 GETUPVAL                         R10 4
      127 GETTABLEKS                       R10 R10 K42 ["new"]
      129 CALL                             R10 0 1
      130 SETTABLEKS                       R10 R9 K37 ["OnDialogChanged"]
      132 GETUPVAL                         R10 4
      133 GETTABLEKS                       R10 R10 K42 ["new"]
      135 CALL                             R10 0 1
      136 SETTABLEKS                       R10 R9 K38 ["OnContextMenuChanged"]
      138 GETUPVAL                         R10 4
      139 GETTABLEKS                       R10 R10 K42 ["new"]
      141 CALL                             R10 0 1
      142 SETTABLEKS                       R10 R9 K39 ["OnToastChanged"]
      144 GETUPVAL                         R12 5
      145 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
      147 MOVE                             R11 R9
      148 GETIMPORT                        R10 K44 [setmetatable]
      150 CALL                             R10 2 0
      151 NEWCLOSURE                       R11 P0
      152 CAPTURE                          VAL R0
      153 FASTPCALL                        pcall 1 ; [+2]
      154 GETIMPORT                        R10 K46 [pcall]
      156 CALL                             R10 1 2
      157 JUMPIFNOT                        R10 ; [+14]
      158 JUMPIFNOT                        R11 ; [+13]
      159 GETTABLEKS                       R13 R9 K32 ["_connections"]
      161 GETTABLEKS                       R14 R11 K47 ["PlaceDocPanelClosed"]
      163 NEWCLOSURE                       R16 P1
      164 CAPTURE                          VAL R9
      165 NAMECALL                         R14 R14 K48 ["Connect"]
      167 CALL                             R14 2 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R12 K51 [table.insert]
      171 CALL                             R12 -1 0
      172 NAMECALL                         R12 R9 K52 ["refreshUniverseInfo"]
      174 CALL                             R12 1 0
      175 GETTABLEKS                       R13 R9 K32 ["_connections"]
      177 GETTABLEKS                       R14 R9 K20 ["_plugin"]
      179 LOADK                            R16 K12 ["GameId"]
      180 NEWCLOSURE                       R17 P2
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R2
      183 CAPTURE                          UPVAL U1
      184 CAPTURE                          UPVAL U2
      185 NAMECALL                         R14 R14 K53 ["OnSetItem"]
      187 CALL                             R14 3 -1
      188 FASTCALL                         TABLE_INSERT ; [+2]
      189 GETIMPORT                        R12 K51 [table.insert]
      191 CALL                             R12 -1 0
      192 NEWCLOSURE                       R12 P3
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R9
      196 GETUPVAL                         R13 7
      197 CALL                             R13 0 1
      198 JUMPIFNOT                        R13 ; [+8]
      199 GETUPVAL                         R13 8
      200 GETTABLEKS                       R13 R13 K54 ["Utils"]
      202 GETTABLEKS                       R13 R13 K55 ["fetchUsernameAsync"]
      204 MOVE                             R14 R12
      205 CALL                             R13 1 0
      206 JUMP                             ; [+4]
      207 MOVE                             R15 R12
      208 NAMECALL                         R13 R1 K56 ["fetchUsername"]
      210 CALL                             R13 2 0
      211 GETTABLEKS                       R14 R9 K32 ["_connections"]
      213 GETTABLEKS                       R15 R9 K20 ["_plugin"]
      215 LOADK                            R17 K57 ["ShowToast"]
      216 NEWCLOSURE                       R18 P4
      217 CAPTURE                          UPVAL U9
      218 CAPTURE                          UPVAL U10
      219 CAPTURE                          VAL R9
      220 NAMECALL                         R15 R15 K58 ["OnInvoke"]
      222 CALL                             R15 3 -1
      223 FASTCALL                         TABLE_INSERT ; [+2]
      224 GETIMPORT                        R13 K51 [table.insert]
      226 CALL                             R13 -1 0
      227 GETTABLEKS                       R14 R9 K32 ["_connections"]
      229 GETUPVAL                         R15 11
      230 LOADK                            R17 K59 ["AssetsUploaded"]
      231 NEWCLOSURE                       R18 P5
      232 CAPTURE                          UPVAL U3
      233 CAPTURE                          UPVAL U6
      234 CAPTURE                          UPVAL U12
      235 CAPTURE                          VAL R9
      236 NAMECALL                         R15 R15 K60 ["Bind"]
      238 CALL                             R15 3 -1
      239 FASTCALL                         TABLE_INSERT ; [+2]
      240 GETIMPORT                        R13 K51 [table.insert]
      242 CALL                             R13 -1 0
      243 RETURN                           R9 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 LOADB                            R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_toastCancelToken"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_toastCancelToken"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K1 ["_connections"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_user"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_currentScope"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_currentScope"]
        2 GETTABLEKS                       R2 R2 K1 ["Uid"]
        4 GETTABLEKS                       R3 R1 K1 ["Uid"]
        6 JUMPIFEQ                         R2 R3 ; [+11]
        8 GETTABLEKS                       R2 R0 K0 ["_currentScope"]
       10 SETTABLEKS                       R1 R0 K0 ["_currentScope"]
       12 GETTABLEKS                       R3 R0 K2 ["OnCurrentScopeChanged"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K3 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Util"]
        3 GETTABLEKS                       R1 R1 K1 ["StudioUri"]
        5 GETTABLEKS                       R1 R1 K2 ["fromAction"]
        7 LOADK                            R2 K3 ["MeshImporter"]
        8 LOADK                            R3 K4 ["Toggle"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R2 R0 K5 ["_plugin"]
       12 LOADK                            R4 K6 ["Actions"]
       13 NAMECALL                         R2 R2 K7 ["GetPluginComponent"]
       15 CALL                             R2 2 1
       16 GETIMPORT                        R3 K10 [task.spawn]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R3 R1
        1 JUMPIFNOT                        R3 ; [+2]
        2 GETTABLEKS                       R3 R1 K0 ["AssetId"]
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["Asset must exist to be versioned"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETTABLEKS                       R3 R1 K4 ["AssetType"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["AssetType"]
       18 GETTABLEKS                       R4 R4 K5 ["Animation"]
       20 JUMPIFEQ                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+11]
       27 GETTABLEKS                       R4 R1 K4 ["AssetType"]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K4 ["AssetType"]
       32 GETTABLEKS                       R5 R5 K6 ["TextDocument"]
       34 JUMPIFEQ                         R4 R5 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 LOADB                            R5 1
       39 GETTABLEKS                       R6 R1 K4 ["AssetType"]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       44 GETTABLEKS                       R7 R7 K7 ["Mesh"]
       46 JUMPIFEQ                         R6 R7 ; [+14]
       48 LOADB                            R5 1
       49 GETTABLEKS                       R6 R1 K4 ["AssetType"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       54 GETTABLEKS                       R7 R7 K8 ["Image"]
       56 JUMPIFEQ                         R6 R7 ; [+4]
       58 MOVE                             R5 R2
       59 JUMPIF                           R5 ; [+1]
       60 MOVE                             R5 R3
       61 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       63 LOADK                            R6 K9 ["Asset must be image, mesh, animation, or text document to be versioned"]
       64 GETIMPORT                        R4 K3 [assert]
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R0 K10 ["_plugin"]
       69 LOADK                            R6 K11 ["ImportAssetVersion"]
       70 GETTABLEKS                       R7 R1 K0 ["AssetId"]
       72 GETUPVAL                         R8 3
       73 GETTABLEKS                       R9 R1 K4 ["AssetType"]
       75 CALL                             R8 1 -1
       76 NAMECALL                         R4 R4 K12 ["Invoke"]
       78 CALL                             R4 -1 0
       79 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnNewAssetFetched"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R1 K1 [warn]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["_localization"]
        5 LOADK                            R4 K3 ["PluginErrors"]
        6 LOADK                            R5 K4 ["ErrorFetchAssetInfo"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["AssetInfos"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R8 R5 K1 ["AssetType"]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 JUMPIFNOT                        R6 ; [+7]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K2 ["OnNewAssetFetched"]
       17 MOVE                             R8 R5
       18 NAMECALL                         R6 R6 K3 ["Fire"]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-17]
       23 GETTABLEKS                       R1 R0 K4 ["FailedAssetIds"]
       25 LOADNIL                          R2
       26 LOADNIL                          R3
       27 FORGPREP                         R1
       28 LOADK                            R6 K5 ["Failed to fetch asset info for asset %*"]
       29 MOVE                             R8 R5
       30 NAMECALL                         R6 R6 K6 ["format"]
       32 CALL                             R6 2 1
       33 GETIMPORT                        R7 K8 [warn]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K9 ["_localization"]
       38 LOADK                            R10 K10 ["PluginErrors"]
       39 LOADK                            R11 K11 ["ErrorFetchAssetInfo"]
       40 NAMECALL                         R8 R8 K12 ["getText"]
       42 CALL                             R8 3 -1
       43 CALL                             R7 -1 0
       44 GETUPVAL                         R7 2
       45 MOVE                             R8 R6
       46 CALL                             R7 1 0
       47 FORGLOOP                         R1 2 ; [-20]
       49 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R4 P1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+19]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K0 ["Networking"]
       11 GETTABLEKS                       R5 R5 K1 ["fetchAssetInfoAsync"]
       13 MOVE                             R6 R1
       14 GETTABLEKS                       R7 R0 K2 ["_user"]
       16 MOVE                             R8 R2
       17 CALL                             R5 3 1
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 MOVE                             R8 R4
       23 NAMECALL                         R5 R5 K3 ["andThen"]
       25 CALL                             R5 3 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R0 K4 ["_networking"]
       29 MOVE                             R7 R1
       30 GETTABLEKS                       R8 R0 K2 ["_user"]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R3
       34 MOVE                             R11 R4
       35 NAMECALL                         R5 R5 K1 ["fetchAssetInfoAsync"]
       37 CALL                             R5 6 0
       38 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["rootPlaceId"]
        3 SETTABLEKS                       R2 R1 K1 ["_rootPlace"]
        5 GETIMPORT                        R1 K4 [table.clone]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K5 ["_gameInfo"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["_gameInfo"]
       14 GETTABLEKS                       R3 R0 K6 ["name"]
       16 SETTABLEKS                       R3 R2 K7 ["Name"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["OnGameInfoFetched"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["_gameInfo"]
       24 MOVE                             R5 R1
       25 NAMECALL                         R2 R2 K9 ["Fire"]
       27 CALL                             R2 3 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_localization"]
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
       17 GETIMPORT                        R1 K7 [table.clone]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["_gameInfo"]
       22 CALL                             R1 1 1
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K8 ["_gameInfo"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K0 ["_localization"]
       29 LOADK                            R5 K9 ["Plugin"]
       30 LOADK                            R6 K10 ["PlaceholderGameName"]
       31 NAMECALL                         R3 R3 K3 ["getText"]
       33 CALL                             R3 3 1
       34 SETTABLEKS                       R3 R2 K11 ["Name"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K12 ["OnGameInfoFetched"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K8 ["_gameInfo"]
       42 MOVE                             R5 R1
       43 NAMECALL                         R2 R2 K13 ["Fire"]
       45 CALL                             R2 3 0
       46 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["rootPlaceId"]
        3 SETTABLEKS                       R2 R1 K1 ["_rootPlace"]
        5 GETIMPORT                        R1 K4 [table.clone]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K5 ["_gameInfo"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["_gameInfo"]
       14 GETTABLEKS                       R3 R0 K6 ["name"]
       16 SETTABLEKS                       R3 R2 K7 ["Name"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K8 ["OnGameInfoFetched"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["_gameInfo"]
       24 MOVE                             R5 R1
       25 NAMECALL                         R2 R2 K9 ["Fire"]
       27 CALL                             R2 3 0
       28 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_localization"]
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
       17 GETIMPORT                        R1 K7 [table.clone]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["_gameInfo"]
       22 CALL                             R1 1 1
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K8 ["_gameInfo"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K0 ["_localization"]
       29 LOADK                            R5 K9 ["Plugin"]
       30 LOADK                            R6 K10 ["PlaceholderGameName"]
       31 NAMECALL                         R3 R3 K3 ["getText"]
       33 CALL                             R3 3 1
       34 SETTABLEKS                       R3 R2 K11 ["Name"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K12 ["OnGameInfoFetched"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K8 ["_gameInfo"]
       42 MOVE                             R5 R1
       43 NAMECALL                         R2 R2 K13 ["Fire"]
       45 CALL                             R2 3 0
       46 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 GETTABLEKS                       R1 R1 K1 ["Id"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+22]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["Networking"]
       13 GETTABLEKS                       R1 R1 K4 ["fetchUniverseInfoAsync"]
       15 GETTABLEKS                       R2 R0 K0 ["_gameInfo"]
       17 GETTABLEKS                       R2 R2 K1 ["Id"]
       19 CALL                             R1 1 1
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R1 R1 K5 ["andThen"]
       24 CALL                             R1 2 1
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R1 R1 K6 ["catch"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K7 ["_networking"]
       34 GETTABLEKS                       R3 R0 K0 ["_gameInfo"]
       36 GETTABLEKS                       R3 R3 K1 ["Id"]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          VAL R0
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R1 R1 K4 ["fetchUniverseInfoAsync"]
       45 CALL                             R1 4 0
       46 RETURN                           R0 0

PROTO_27:
        0 SETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["_rootPlace"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_30:
        0 SETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 GETTABLEKS                       R2 R0 K1 ["OnContextMenuChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 RETURN                           R1 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_dialogs"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K3 ["_dialogs"]
        7 GETTABLEKS                       R1 R0 K4 ["OnDialogChanged"]
        9 GETTABLEKS                       R3 R0 K3 ["_dialogs"]
       11 NAMECALL                         R1 R1 K5 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_dialogs"]
        2 RETURN                           R1 1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["_dialogs"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+4]
        5 GETTABLEKS                       R3 R2 K1 ["Controller"]
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginController:showToast should not be used with FFlagAmrStudioToastsIntegration enabled. Use Notifications.showToast instead."]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K3 ["_toastCancelToken"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R2 R0 K3 ["_toastCancelToken"]
       14 CALL                             R2 0 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K3 ["_toastCancelToken"]
       18 SETTABLEKS                       R1 R0 K4 ["_toast"]
       20 GETTABLEKS                       R2 R0 K5 ["OnToastChanged"]
       22 GETTABLEKS                       R4 R0 K4 ["_toast"]
       24 NAMECALL                         R2 R2 K6 ["Fire"]
       26 CALL                             R2 2 0
       27 LOADB                            R2 0
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          REF R2
       30 SETTABLEKS                       R3 R0 K3 ["_toastCancelToken"]
       32 GETIMPORT                        R3 K9 [task.delay]
       34 LOADN                            R4 2
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R0
       38 CALL                             R3 2 0
       39 CLOSEUPVALS                      R2
       40 RETURN                           R0 0

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

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginSessionId"]
        2 RETURN                           R1 1

PROTO_43:
        0 SETTABLEKS                       R1 R0 K0 ["_tutorialController"]
        2 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["_tutorialController"]
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
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["Services"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["Notifications"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K3 ["GetService"]
       39 LOADK                            R6 K15 ["StudioService"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R7 R2 K16 ["Packages"]
       45 GETTABLEKS                       R7 R7 K17 ["Framework"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K18 ["ContextServices"]
       50 GETTABLEKS                       R8 R7 K19 ["ContextItem"]
       52 GETIMPORT                        R9 K10 [require]
       54 GETTABLEKS                       R10 R2 K16 ["Packages"]
       56 GETTABLEKS                       R10 R10 K20 ["Dash"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R6 K12 ["Util"]
       61 GETTABLEKS                       R10 R10 K21 ["Signal"]
       63 GETIMPORT                        R11 K10 [require]
       65 GETTABLEKS                       R12 R2 K11 ["Src"]
       67 GETTABLEKS                       R12 R12 K22 ["Types"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K10 [require]
       72 GETTABLEKS                       R13 R2 K11 ["Src"]
       74 GETTABLEKS                       R13 R13 K12 ["Util"]
       76 GETTABLEKS                       R13 R13 K23 ["cleanConnections"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K10 [require]
       81 GETTABLEKS                       R14 R2 K11 ["Src"]
       83 GETTABLEKS                       R14 R14 K12 ["Util"]
       85 GETTABLEKS                       R14 R14 K24 ["convertAssetTypeStringToEnum"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K10 [require]
       90 GETTABLEKS                       R15 R2 K11 ["Src"]
       92 GETTABLEKS                       R15 R15 K12 ["Util"]
       94 GETTABLEKS                       R15 R15 K25 ["convertToEngineAssetTypeEnum"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K10 [require]
       99 GETTABLEKS                       R16 R2 K16 ["Packages"]
      101 GETTABLEKS                       R16 R16 K26 ["AssetManagement"]
      103 CALL                             R15 1 1
      104 GETTABLEKS                       R16 R15 K27 ["Utils"]
      106 GETTABLEKS                       R16 R16 K28 ["createScopeUid"]
      108 GETIMPORT                        R17 K10 [require]
      110 GETTABLEKS                       R18 R2 K11 ["Src"]
      112 GETTABLEKS                       R18 R18 K12 ["Util"]
      114 GETTABLEKS                       R18 R18 K29 ["logIfDebug"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K10 [require]
      119 GETTABLEKS                       R19 R2 K11 ["Src"]
      121 GETTABLEKS                       R19 R19 K30 ["Flags"]
      123 GETTABLEKS                       R19 R19 K31 ["getEFImportAnimationVersions"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K10 [require]
      128 GETTABLEKS                       R20 R2 K11 ["Src"]
      130 GETTABLEKS                       R20 R20 K30 ["Flags"]
      132 GETTABLEKS                       R20 R20 K32 ["getFFlagAmrTextDocumentVersioning"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K10 [require]
      137 GETTABLEKS                       R21 R2 K11 ["Src"]
      139 GETTABLEKS                       R21 R21 K30 ["Flags"]
      141 GETTABLEKS                       R21 R21 K33 ["getFFlagAmrStudioToastsIntegration"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K10 [require]
      146 GETTABLEKS                       R22 R2 K11 ["Src"]
      148 GETTABLEKS                       R22 R22 K30 ["Flags"]
      150 GETTABLEKS                       R22 R22 K34 ["getFFlagAmrUseAssetManagementNetworking"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K10 [require]
      155 GETTABLEKS                       R23 R2 K11 ["Src"]
      157 GETTABLEKS                       R23 R23 K35 ["Controllers"]
      159 GETTABLEKS                       R23 R23 K36 ["TutorialController"]
      161 CALL                             R22 1 1
      162 LOADK                            R25 K37 ["PluginController"]
      163 NAMECALL                         R23 R8 K38 ["extend"]
      165 CALL                             R23 2 1
      166 DUPCLOSURE                       R24 K39 [PROTO_0]
      167 CAPTURE                          VAL R13
      168 DUPCLOSURE                       R25 K40 [PROTO_7]
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R9
      182 SETTABLEKS                       R25 R23 K41 ["new"]
      184 DUPCLOSURE                       R25 K42 [PROTO_8]
      185 CAPTURE                          VAL R23
      186 SETTABLEKS                       R25 R23 K43 ["mock"]
      188 DUPCLOSURE                       R25 K44 [PROTO_9]
      189 CAPTURE                          VAL R12
      190 SETTABLEKS                       R25 R23 K45 ["destroy"]
      192 DUPCLOSURE                       R25 K46 [PROTO_10]
      193 SETTABLEKS                       R25 R23 K47 ["getPlugin"]
      195 DUPCLOSURE                       R25 K48 [PROTO_11]
      196 SETTABLEKS                       R25 R23 K49 ["getUser"]
      198 DUPCLOSURE                       R25 K50 [PROTO_12]
      199 SETTABLEKS                       R25 R23 K51 ["getGameInfo"]
      201 DUPCLOSURE                       R25 K52 [PROTO_13]
      202 SETTABLEKS                       R25 R23 K53 ["getCurrentScope"]
      204 DUPCLOSURE                       R25 K54 [PROTO_14]
      205 SETTABLEKS                       R25 R23 K55 ["setCurrentScope"]
      207 DUPCLOSURE                       R25 K56 [PROTO_16]
      208 CAPTURE                          VAL R6
      209 SETTABLEKS                       R25 R23 K57 ["launchBulkImport"]
      211 DUPCLOSURE                       R25 K58 [PROTO_17]
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R14
      216 SETTABLEKS                       R25 R23 K59 ["importAssetVersion"]
      218 DUPCLOSURE                       R25 K60 [PROTO_21]
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R13
      223 SETTABLEKS                       R25 R23 K61 ["processNewAsset"]
      225 DUPCLOSURE                       R25 K62 [PROTO_26]
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R17
      229 SETTABLEKS                       R25 R23 K63 ["refreshUniverseInfo"]
      231 DUPCLOSURE                       R25 K64 [PROTO_27]
      232 SETTABLEKS                       R25 R23 K65 ["setRootPlace"]
      234 DUPCLOSURE                       R25 K66 [PROTO_28]
      235 SETTABLEKS                       R25 R23 K67 ["getRootPlace"]
      237 DUPCLOSURE                       R25 K68 [PROTO_29]
      238 SETTABLEKS                       R25 R23 K69 ["isRootPlace"]
      240 DUPCLOSURE                       R25 K70 [PROTO_30]
      241 SETTABLEKS                       R25 R23 K71 ["setContextMenuItems"]
      243 DUPCLOSURE                       R25 K72 [PROTO_31]
      244 SETTABLEKS                       R25 R23 K73 ["getContextMenuItems"]
      246 DUPCLOSURE                       R25 K74 [PROTO_32]
      247 SETTABLEKS                       R25 R23 K75 ["setDialog"]
      249 DUPCLOSURE                       R25 K76 [PROTO_33]
      250 SETTABLEKS                       R25 R23 K77 ["closeDialog"]
      252 DUPCLOSURE                       R25 K78 [PROTO_34]
      253 SETTABLEKS                       R25 R23 K79 ["_dialogUpdated"]
      255 DUPCLOSURE                       R25 K80 [PROTO_35]
      256 SETTABLEKS                       R25 R23 K81 ["getDialogs"]
      258 DUPCLOSURE                       R25 K82 [PROTO_36]
      259 SETTABLEKS                       R25 R23 K83 ["getDialogController"]
      261 DUPCLOSURE                       R25 K84 [PROTO_39]
      262 CAPTURE                          VAL R20
      263 SETTABLEKS                       R25 R23 K85 ["showToast"]
      265 DUPCLOSURE                       R25 K86 [PROTO_40]
      266 SETTABLEKS                       R25 R23 K87 ["_clearToast"]
      268 DUPCLOSURE                       R25 K88 [PROTO_41]
      269 SETTABLEKS                       R25 R23 K89 ["getToast"]
      271 DUPCLOSURE                       R25 K90 [PROTO_42]
      272 SETTABLEKS                       R25 R23 K91 ["getPluginSessionId"]
      274 DUPCLOSURE                       R25 K92 [PROTO_43]
      275 SETTABLEKS                       R25 R23 K93 ["setTutorialController"]
      277 DUPCLOSURE                       R25 K94 [PROTO_44]
      278 SETTABLEKS                       R25 R23 K95 ["getTutorialController"]
      280 RETURN                           R23 1
