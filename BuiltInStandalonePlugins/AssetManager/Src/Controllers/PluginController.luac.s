PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_user"]
        4 NAMECALL                         R0 R0 K1 ["setCurrentScope"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
      151 GETIMPORT                        R10 K46 [pcall]
      153 NEWCLOSURE                       R11 P0
      154 CAPTURE                          VAL R0
      155 CALL                             R10 1 2
      156 JUMPIFNOT                        R10 ; [+14]
      157 JUMPIFNOT                        R11 ; [+13]
      158 GETTABLEKS                       R13 R9 K32 ["_connections"]
      160 GETTABLEKS                       R14 R11 K47 ["PlaceDocPanelClosed"]
      162 NEWCLOSURE                       R16 P1
      163 CAPTURE                          VAL R9
      164 NAMECALL                         R14 R14 K48 ["Connect"]
      166 CALL                             R14 2 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R12 K51 [table.insert]
      170 CALL                             R12 -1 0
      171 NAMECALL                         R12 R9 K52 ["refreshUniverseInfo"]
      173 CALL                             R12 1 0
      174 GETTABLEKS                       R13 R9 K32 ["_connections"]
      176 GETTABLEKS                       R14 R9 K20 ["_plugin"]
      178 LOADK                            R16 K12 ["GameId"]
      179 NEWCLOSURE                       R17 P2
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R2
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          UPVAL U2
      184 NAMECALL                         R14 R14 K53 ["OnSetItem"]
      186 CALL                             R14 3 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R12 K51 [table.insert]
      190 CALL                             R12 -1 0
      191 NEWCLOSURE                       R14 P3
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R9
      195 NAMECALL                         R12 R1 K54 ["fetchUsername"]
      197 CALL                             R12 2 0
      198 GETTABLEKS                       R13 R9 K32 ["_connections"]
      200 GETTABLEKS                       R14 R9 K20 ["_plugin"]
      202 LOADK                            R16 K55 ["ShowToast"]
      203 NEWCLOSURE                       R17 P4
      204 CAPTURE                          UPVAL U7
      205 CAPTURE                          UPVAL U8
      206 CAPTURE                          VAL R9
      207 NAMECALL                         R14 R14 K56 ["OnInvoke"]
      209 CALL                             R14 3 -1
      210 FASTCALL                         TABLE_INSERT ; [+2]
      211 GETIMPORT                        R12 K51 [table.insert]
      213 CALL                             R12 -1 0
      214 GETTABLEKS                       R13 R9 K32 ["_connections"]
      216 GETUPVAL                         R14 9
      217 LOADK                            R16 K57 ["AssetsUploaded"]
      218 NEWCLOSURE                       R17 P5
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          UPVAL U10
      222 CAPTURE                          VAL R9
      223 NAMECALL                         R14 R14 K58 ["Bind"]
      225 CALL                             R14 3 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R12 K51 [table.insert]
      229 CALL                             R12 -1 0
      230 RETURN                           R9 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 LOADB                            R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_toastCancelToken"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_toastCancelToken"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K1 ["_connections"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_user"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_currentScope"]
        2 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Util"]
        3 GETTABLEKS                       R2 R2 K1 ["StudioUri"]
        5 GETTABLEKS                       R2 R2 K2 ["fromAction"]
        7 LOADK                            R3 K3 ["MeshImporter"]
        8 LOADK                            R4 K4 ["Toggle"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R3 R0 K5 ["_plugin"]
       12 LOADK                            R5 K6 ["Actions"]
       13 NAMECALL                         R3 R3 K7 ["GetPluginComponent"]
       15 CALL                             R3 2 1
       16 GETIMPORT                        R4 K10 [task.spawn]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 1
       23 CALL                             R4 0 1
       24 JUMPIF                           R4 ; [+5]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K11 ["sendUploadEvent"]
       28 MOVE                             R5 R1
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_16:
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
       24 LOADB                            R4 1
       25 GETTABLEKS                       R5 R1 K4 ["AssetType"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       30 GETTABLEKS                       R6 R6 K6 ["Mesh"]
       32 JUMPIFEQ                         R5 R6 ; [+12]
       34 LOADB                            R4 1
       35 GETTABLEKS                       R5 R1 K4 ["AssetType"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       40 GETTABLEKS                       R6 R6 K7 ["Image"]
       42 JUMPIFEQ                         R5 R6 ; [+2]
       44 MOVE                             R4 R2
       45 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       47 LOADK                            R5 K8 ["Asset must be image, mesh, or animation to be versioned"]
       48 GETIMPORT                        R3 K3 [assert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R3 R0 K9 ["_plugin"]
       53 LOADK                            R5 K10 ["ImportAssetVersion"]
       54 GETTABLEKS                       R6 R1 K0 ["AssetId"]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R8 R1 K4 ["AssetType"]
       59 CALL                             R7 1 -1
       60 NAMECALL                         R3 R3 K11 ["Invoke"]
       62 CALL                             R3 -1 0
       63 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnNewAssetFetched"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 GETTABLEKS                       R1 R1 K1 ["Id"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K3 ["_networking"]
        9 GETTABLEKS                       R3 R0 K0 ["_gameInfo"]
       11 GETTABLEKS                       R3 R3 K1 ["Id"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K4 ["fetchUniverseInfoAsync"]
       20 CALL                             R1 4 0
       21 RETURN                           R0 0

PROTO_23:
        0 SETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_rootPlace"]
        2 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_rootPlace"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

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
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["_clearToast"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_toast"]
        2 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_pluginSessionId"]
        2 RETURN                           R1 1

PROTO_39:
        0 SETTABLEKS                       R1 R0 K0 ["_tutorialController"]
        2 RETURN                           R0 0

PROTO_40:
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
       74 GETTABLEKS                       R13 R13 K23 ["DEPRECATED_Analytics"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K10 [require]
       79 GETTABLEKS                       R14 R2 K11 ["Src"]
       81 GETTABLEKS                       R14 R14 K12 ["Util"]
       83 GETTABLEKS                       R14 R14 K24 ["cleanConnections"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R15 R2 K11 ["Src"]
       90 GETTABLEKS                       R15 R15 K12 ["Util"]
       92 GETTABLEKS                       R15 R15 K25 ["convertToEngineAssetTypeEnum"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K10 [require]
       97 GETTABLEKS                       R16 R2 K11 ["Src"]
       99 GETTABLEKS                       R16 R16 K12 ["Util"]
      101 GETTABLEKS                       R16 R16 K26 ["createScopeUid"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R2 K11 ["Src"]
      108 GETTABLEKS                       R17 R17 K12 ["Util"]
      110 GETTABLEKS                       R17 R17 K27 ["logIfDebug"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K10 [require]
      115 GETTABLEKS                       R18 R2 K11 ["Src"]
      117 GETTABLEKS                       R18 R18 K28 ["Flags"]
      119 GETTABLEKS                       R18 R18 K29 ["getFFlagAmrDisableShardedEvent"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K10 [require]
      124 GETTABLEKS                       R19 R2 K11 ["Src"]
      126 GETTABLEKS                       R19 R19 K28 ["Flags"]
      128 GETTABLEKS                       R19 R19 K30 ["getEFImportAnimationVersions"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K10 [require]
      133 GETTABLEKS                       R20 R2 K11 ["Src"]
      135 GETTABLEKS                       R20 R20 K28 ["Flags"]
      137 GETTABLEKS                       R20 R20 K31 ["getFFlagAmrStudioToastsIntegration"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K10 [require]
      142 GETTABLEKS                       R21 R2 K11 ["Src"]
      144 GETTABLEKS                       R21 R21 K32 ["Controllers"]
      146 GETTABLEKS                       R21 R21 K33 ["TutorialController"]
      148 CALL                             R20 1 1
      149 LOADK                            R23 K34 ["PluginController"]
      150 NAMECALL                         R21 R8 K35 ["extend"]
      152 CALL                             R21 2 1
      153 DUPCLOSURE                       R22 K36 [PROTO_6]
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R9
      165 SETTABLEKS                       R22 R21 K37 ["new"]
      167 DUPCLOSURE                       R22 K38 [PROTO_7]
      168 CAPTURE                          VAL R21
      169 SETTABLEKS                       R22 R21 K39 ["mock"]
      171 DUPCLOSURE                       R22 K40 [PROTO_8]
      172 CAPTURE                          VAL R13
      173 SETTABLEKS                       R22 R21 K41 ["destroy"]
      175 DUPCLOSURE                       R22 K42 [PROTO_9]
      176 SETTABLEKS                       R22 R21 K43 ["getPlugin"]
      178 DUPCLOSURE                       R22 K44 [PROTO_10]
      179 SETTABLEKS                       R22 R21 K45 ["getUser"]
      181 DUPCLOSURE                       R22 K46 [PROTO_11]
      182 SETTABLEKS                       R22 R21 K47 ["getGameInfo"]
      184 DUPCLOSURE                       R22 K48 [PROTO_12]
      185 SETTABLEKS                       R22 R21 K49 ["getCurrentScope"]
      187 DUPCLOSURE                       R22 K50 [PROTO_13]
      188 SETTABLEKS                       R22 R21 K51 ["setCurrentScope"]
      190 DUPCLOSURE                       R22 K52 [PROTO_15]
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R12
      194 SETTABLEKS                       R22 R21 K53 ["launchBulkImport"]
      196 DUPCLOSURE                       R22 K54 [PROTO_16]
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R14
      200 SETTABLEKS                       R22 R21 K55 ["importAssetVersion"]
      202 DUPCLOSURE                       R22 K56 [PROTO_19]
      203 CAPTURE                          VAL R16
      204 SETTABLEKS                       R22 R21 K57 ["processNewAsset"]
      206 DUPCLOSURE                       R22 K58 [PROTO_22]
      207 CAPTURE                          VAL R16
      208 SETTABLEKS                       R22 R21 K59 ["refreshUniverseInfo"]
      210 DUPCLOSURE                       R22 K60 [PROTO_23]
      211 SETTABLEKS                       R22 R21 K61 ["setRootPlace"]
      213 DUPCLOSURE                       R22 K62 [PROTO_24]
      214 SETTABLEKS                       R22 R21 K63 ["getRootPlace"]
      216 DUPCLOSURE                       R22 K64 [PROTO_25]
      217 SETTABLEKS                       R22 R21 K65 ["isRootPlace"]
      219 DUPCLOSURE                       R22 K66 [PROTO_26]
      220 SETTABLEKS                       R22 R21 K67 ["setContextMenuItems"]
      222 DUPCLOSURE                       R22 K68 [PROTO_27]
      223 SETTABLEKS                       R22 R21 K69 ["getContextMenuItems"]
      225 DUPCLOSURE                       R22 K70 [PROTO_28]
      226 SETTABLEKS                       R22 R21 K71 ["setDialog"]
      228 DUPCLOSURE                       R22 K72 [PROTO_29]
      229 SETTABLEKS                       R22 R21 K73 ["closeDialog"]
      231 DUPCLOSURE                       R22 K74 [PROTO_30]
      232 SETTABLEKS                       R22 R21 K75 ["_dialogUpdated"]
      234 DUPCLOSURE                       R22 K76 [PROTO_31]
      235 SETTABLEKS                       R22 R21 K77 ["getDialogs"]
      237 DUPCLOSURE                       R22 K78 [PROTO_32]
      238 SETTABLEKS                       R22 R21 K79 ["getDialogController"]
      240 DUPCLOSURE                       R22 K80 [PROTO_35]
      241 CAPTURE                          VAL R19
      242 SETTABLEKS                       R22 R21 K81 ["showToast"]
      244 DUPCLOSURE                       R22 K82 [PROTO_36]
      245 SETTABLEKS                       R22 R21 K83 ["_clearToast"]
      247 DUPCLOSURE                       R22 K84 [PROTO_37]
      248 SETTABLEKS                       R22 R21 K85 ["getToast"]
      250 DUPCLOSURE                       R22 K86 [PROTO_38]
      251 SETTABLEKS                       R22 R21 K87 ["getPluginSessionId"]
      253 DUPCLOSURE                       R22 K88 [PROTO_39]
      254 SETTABLEKS                       R22 R21 K89 ["setTutorialController"]
      256 DUPCLOSURE                       R22 K90 [PROTO_40]
      257 SETTABLEKS                       R22 R21 K91 ["getTutorialController"]
      259 RETURN                           R21 1
