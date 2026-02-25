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
        2 NAMECALL                         R1 R1 K0 ["processNewAsset"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K2 [next]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R1 ; [+9]
       10 JUMPIFEQKNIL                     R3 ; [+8]
       12 FASTCALL1                        TYPE R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K4 [type]
       16 CALL                             R4 1 1
       17 JUMPIFEQKS                       R4 K5 ["number"] ; [+5]
       19 GETUPVAL                         R4 1
       20 LOADK                            R5 K6 ["Invalid result received from AssetsUploaded"]
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K7 ["values"]
       26 MOVE                             R5 R1
       27 CALL                             R4 1 1
       28 MOVE                             R5 R4
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETUPVAL                         R10 3
       33 MOVE                             R12 R9
       34 NAMECALL                         R10 R10 K8 ["processNewAsset"]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R5 2 ; [-6]
       39 RETURN                           R0 0

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
       63 DUPTABLE                         R8 K34 [{"_isMock", "_networking", "_localization", "_plugin", "_user", "_gameInfo", "_rootPlace", "_stagedPlace", "_currentScope", "_quickShareAssetIds", "_connections", "OnUsernameFetched", "OnGameInfoFetched", "OnCurrentScopeChanged", "OnConfirmRemovePlaceChanged", "OnRenamePlaceIdChanged", "OnNewAssetFetched", "OnQuickShareChanged"}]
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
       86 SETTABLEKS                       R9 R8 K25 ["_quickShareAssetIds"]
       88 NEWTABLE                         R9 0 0
       90 SETTABLEKS                       R9 R8 K26 ["_connections"]
       92 GETUPVAL                         R10 3
       93 GETTABLEKS                       R9 R10 K35 ["new"]
       95 CALL                             R9 0 1
       96 SETTABLEKS                       R9 R8 K27 ["OnUsernameFetched"]
       98 GETUPVAL                         R10 3
       99 GETTABLEKS                       R9 R10 K35 ["new"]
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K28 ["OnGameInfoFetched"]
      104 GETUPVAL                         R10 3
      105 GETTABLEKS                       R9 R10 K35 ["new"]
      107 CALL                             R9 0 1
      108 SETTABLEKS                       R9 R8 K29 ["OnCurrentScopeChanged"]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R9 R10 K35 ["new"]
      113 CALL                             R9 0 1
      114 SETTABLEKS                       R9 R8 K30 ["OnConfirmRemovePlaceChanged"]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R9 R10 K35 ["new"]
      119 CALL                             R9 0 1
      120 SETTABLEKS                       R9 R8 K31 ["OnRenamePlaceIdChanged"]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R9 R10 K35 ["new"]
      125 CALL                             R9 0 1
      126 SETTABLEKS                       R9 R8 K32 ["OnNewAssetFetched"]
      128 GETUPVAL                         R10 3
      129 GETTABLEKS                       R9 R10 K35 ["new"]
      131 CALL                             R9 0 1
      132 SETTABLEKS                       R9 R8 K33 ["OnQuickShareChanged"]
      134 GETUPVAL                         R11 4
      135 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
      137 MOVE                             R10 R8
      138 GETIMPORT                        R9 K37 [setmetatable]
      140 CALL                             R9 2 0
      141 JUMPIFEQKN                       R6 K11 [0] ; [+4]
      143 NAMECALL                         R9 R8 K38 ["refreshUniverseInfo"]
      145 CALL                             R9 1 0
      146 GETTABLEKS                       R10 R8 K26 ["_connections"]
      148 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      150 LOADK                            R13 K12 ["GameId"]
      151 NEWCLOSURE                       R14 P0
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R2
      154 CAPTURE                          UPVAL U1
      155 CAPTURE                          UPVAL U2
      156 NAMECALL                         R11 R11 K39 ["OnSetItem"]
      158 CALL                             R11 3 -1
      159 FASTCALL                         TABLE_INSERT ; [+2]
      160 GETIMPORT                        R9 K42 [table.insert]
      162 CALL                             R9 -1 0
      163 NEWCLOSURE                       R11 P1
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R8
      167 NAMECALL                         R9 R1 K43 ["fetchUsername"]
      169 CALL                             R9 2 0
      170 GETUPVAL                         R9 6
      171 CALL                             R9 0 1
      172 JUMPIF                           R9 ; [+14]
      173 GETTABLEKS                       R10 R8 K26 ["_connections"]
      175 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      177 LOADK                            R13 K44 ["BulkImportAssetImported"]
      178 NEWCLOSURE                       R14 P2
      179 CAPTURE                          VAL R8
      180 NAMECALL                         R11 R11 K45 ["OnInvoke"]
      182 CALL                             R11 3 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R9 K42 [table.insert]
      186 CALL                             R9 -1 0
      187 GETTABLEKS                       R10 R8 K26 ["_connections"]
      189 GETUPVAL                         R11 7
      190 LOADK                            R13 K46 ["AssetsUploaded"]
      191 NEWCLOSURE                       R14 P3
      192 CAPTURE                          UPVAL U8
      193 CAPTURE                          UPVAL U5
      194 CAPTURE                          UPVAL U9
      195 CAPTURE                          VAL R8
      196 NAMECALL                         R11 R11 K47 ["Bind"]
      198 CALL                             R11 3 -1
      199 FASTCALL                         TABLE_INSERT ; [+2]
      200 GETIMPORT                        R9 K42 [table.insert]
      202 CALL                             R9 -1 0
      203 GETTABLEKS                       R10 R8 K26 ["_connections"]
      205 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      207 LOADK                            R13 K12 ["GameId"]
      208 NEWCLOSURE                       R14 P4
      209 CAPTURE                          VAL R8
      210 CAPTURE                          UPVAL U1
      211 NAMECALL                         R11 R11 K39 ["OnSetItem"]
      213 CALL                             R11 3 -1
      214 FASTCALL                         TABLE_INSERT ; [+2]
      215 GETIMPORT                        R9 K42 [table.insert]
      217 CALL                             R9 -1 0
      218 RETURN                           R8 1

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
       19 SETTABLEKS                       R1 R0 K6 ["OnConfirmRemovePlaceChanged"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["OnRenamePlaceIdChanged"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["OnQuickShareChanged"]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R2 R0 K9 ["_connections"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K9 ["_connections"]
       34 RETURN                           R0 0

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
        6 JUMPIFEQ                         R2 R3 ; [+9]
        8 SETTABLEKS                       R1 R0 K0 ["_currentScope"]
       10 GETTABLEKS                       R2 R0 K2 ["OnCurrentScopeChanged"]
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["Fire"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["_networking"]
        2 MOVE                             R4 R1
        3 GETTABLEKS                       R5 R0 K1 ["_user"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R7 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R2 R2 K2 ["fetchAssetInfoAsync"]
       12 CALL                             R2 5 0
       13 RETURN                           R0 0

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
        0 GETTABLEKS                       R1 R0 K0 ["_confirmRemovePlace"]
        2 RETURN                           R1 1

PROTO_25:
        0 SETTABLEKS                       R1 R0 K0 ["_stagedPlace"]
        2 GETTABLEKS                       R2 R0 K1 ["OnConfirmRemovePlaceChanged"]
        4 LOADB                            R4 1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R4 R0 K0 ["_stagedPlace"]
        2 JUMPIFNOTEQKN                    R4 K1 [0] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["No place staged for remove"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETTABLEKS                       R2 R0 K5 ["_plugin"]
       15 LOADK                            R4 K6 ["OnRemovePlace"]
       16 GETTABLEKS                       R5 R0 K0 ["_stagedPlace"]
       18 NAMECALL                         R2 R2 K7 ["Invoke"]
       20 CALL                             R2 3 0
       21 LOADN                            R2 0
       22 SETTABLEKS                       R2 R0 K0 ["_stagedPlace"]
       24 GETTABLEKS                       R2 R0 K8 ["OnConfirmRemovePlaceChanged"]
       26 LOADB                            R4 0
       27 NAMECALL                         R2 R2 K9 ["Fire"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_27:
        0 SETTABLEKS                       R1 R0 K0 ["_stagedPlace"]
        2 GETTABLEKS                       R2 R0 K1 ["OnRenamePlaceIdChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R4 R0 K0 ["_stagedPlace"]
        2 JUMPIFNOTEQKN                    R4 K1 [0] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["No place staged for rename"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K5 ["_plugin"]
       14 LOADK                            R4 K6 ["OnRenamePlace"]
       15 DUPTABLE                         R5 K9 [{"Id", "Name"}]
       16 GETTABLEKS                       R6 R0 K0 ["_stagedPlace"]
       18 SETTABLEKS                       R6 R5 K7 ["Id"]
       20 SETTABLEKS                       R1 R5 K8 ["Name"]
       22 NAMECALL                         R2 R2 K10 ["Invoke"]
       24 CALL                             R2 3 0
       25 LOADN                            R2 0
       26 SETTABLEKS                       R2 R0 K0 ["_stagedPlace"]
       28 GETTABLEKS                       R2 R0 K11 ["OnRenamePlaceIdChanged"]
       30 LOADN                            R4 0
       31 NAMECALL                         R2 R2 K12 ["Fire"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_29:
        0 SETTABLEKS                       R1 R0 K0 ["_quickShareAssetIds"]
        2 GETTABLEKS                       R2 R0 K1 ["OnQuickShareChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_quickShareAssetIds"]
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
      104 LOADK                            R18 K28 ["PluginController"]
      105 NAMECALL                         R16 R7 K29 ["extend"]
      107 CALL                             R16 2 1
      108 DUPCLOSURE                       R17 K30 [PROTO_5]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R17 R16 K31 ["new"]
      121 DUPCLOSURE                       R17 K32 [PROTO_6]
      122 CAPTURE                          VAL R16
      123 SETTABLEKS                       R17 R16 K33 ["mock"]
      125 DUPCLOSURE                       R17 K34 [PROTO_7]
      126 CAPTURE                          VAL R12
      127 SETTABLEKS                       R17 R16 K35 ["destroy"]
      129 DUPCLOSURE                       R17 K36 [PROTO_8]
      130 SETTABLEKS                       R17 R16 K37 ["getPlugin"]
      132 DUPCLOSURE                       R17 K38 [PROTO_9]
      133 SETTABLEKS                       R17 R16 K39 ["getUser"]
      135 DUPCLOSURE                       R17 K40 [PROTO_10]
      136 SETTABLEKS                       R17 R16 K41 ["getGameInfo"]
      138 DUPCLOSURE                       R17 K42 [PROTO_11]
      139 SETTABLEKS                       R17 R16 K43 ["getCurrentScope"]
      141 DUPCLOSURE                       R17 K44 [PROTO_12]
      142 SETTABLEKS                       R17 R16 K45 ["setCurrentScope"]
      144 DUPCLOSURE                       R17 K46 [PROTO_14]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R11
      148 SETTABLEKS                       R17 R16 K47 ["launchBulkImport"]
      150 DUPCLOSURE                       R17 K48 [PROTO_17]
      151 CAPTURE                          VAL R14
      152 SETTABLEKS                       R17 R16 K49 ["processNewAsset"]
      154 DUPCLOSURE                       R17 K50 [PROTO_20]
      155 CAPTURE                          VAL R14
      156 SETTABLEKS                       R17 R16 K51 ["refreshUniverseInfo"]
      158 DUPCLOSURE                       R17 K52 [PROTO_21]
      159 SETTABLEKS                       R17 R16 K53 ["setRootPlace"]
      161 DUPCLOSURE                       R17 K54 [PROTO_22]
      162 SETTABLEKS                       R17 R16 K55 ["getRootPlace"]
      164 DUPCLOSURE                       R17 K56 [PROTO_23]
      165 SETTABLEKS                       R17 R16 K57 ["isRootPlace"]
      167 DUPCLOSURE                       R17 K58 [PROTO_24]
      168 SETTABLEKS                       R17 R16 K59 ["getConfirmRemovePlace"]
      170 DUPCLOSURE                       R17 K60 [PROTO_25]
      171 SETTABLEKS                       R17 R16 K61 ["stageRemovePlace"]
      173 DUPCLOSURE                       R17 K62 [PROTO_26]
      174 SETTABLEKS                       R17 R16 K63 ["resolveRemovePlace"]
      176 DUPCLOSURE                       R17 K64 [PROTO_27]
      177 SETTABLEKS                       R17 R16 K65 ["stagePlaceForRename"]
      179 DUPCLOSURE                       R17 K66 [PROTO_28]
      180 SETTABLEKS                       R17 R16 K67 ["renamePlace"]
      182 DUPCLOSURE                       R17 K68 [PROTO_29]
      183 SETTABLEKS                       R17 R16 K69 ["setQuickShareAssetIds"]
      185 DUPCLOSURE                       R17 K70 [PROTO_30]
      186 SETTABLEKS                       R17 R16 K71 ["getQuickShareAssetIds"]
      188 RETURN                           R16 1
