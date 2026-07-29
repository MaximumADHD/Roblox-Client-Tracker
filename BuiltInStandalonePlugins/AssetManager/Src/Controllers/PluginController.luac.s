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
       52 GETUPVAL                         R4 4
       53 CALL                             R4 0 1
       54 JUMPIFNOT                        R4 ; [+12]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K18 ["_currentScope"]
       58 GETTABLEKS                       R4 R4 K8 ["Uid"]
       60 GETTABLEKS                       R5 R2 K8 ["Uid"]
       62 JUMPIFEQ                         R4 R5 ; [+2]
       64 LOADB                            R3 0 +1
       65 LOADB                            R3 1
       66 JUMP                             ; [+14]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K18 ["_currentScope"]
       70 GETTABLEKS                       R4 R4 K7 ["Type"]
       72 GETUPVAL                         R5 2
       73 GETTABLEKS                       R5 R5 K13 ["ScopeType"]
       75 GETTABLEKS                       R5 R5 K19 ["ProjectShared"]
       77 JUMPIFEQ                         R4 R5 ; [+2]
       79 LOADB                            R3 0 +1
       80 LOADB                            R3 1
       81 GETUPVAL                         R4 5
       82 CALL                             R4 0 1
       83 JUMPIFNOT                        R4 ; [+18]
       84 JUMPIFEQKN                       R1 K0 [0] ; [+9]
       86 GETUPVAL                         R4 0
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K4 ["_gameInfo"]
       90 NAMECALL                         R4 R4 K20 ["setCurrentScope"]
       92 CALL                             R4 2 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R4 0
       95 GETUPVAL                         R6 0
       96 GETTABLEKS                       R6 R6 K21 ["_user"]
       98 NAMECALL                         R4 R4 K20 ["setCurrentScope"]
      100 CALL                             R4 2 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R4 R4 K18 ["_currentScope"]
      105 GETTABLEKS                       R4 R4 K7 ["Type"]
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R5 R5 K13 ["ScopeType"]
      110 GETTABLEKS                       R5 R5 K22 ["ProjectPlaces"]
      112 JUMPIFEQ                         R4 R5 ; [+2]
      114 JUMPIFNOT                        R3 ; [+7]
      115 GETUPVAL                         R4 0
      116 GETUPVAL                         R6 0
      117 GETTABLEKS                       R6 R6 K21 ["_user"]
      119 NAMECALL                         R4 R4 K20 ["setCurrentScope"]
      121 CALL                             R4 2 0
      122 RETURN                           R0 0

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
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["showToast"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

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
       63 GETUPVAL                         R9 3
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+4]
       66 JUMPIFEQKN                       R6 K11 [0] ; [+3]
       68 MOVE                             R8 R7
       69 JUMP                             ; [+1]
       70 MOVE                             R8 R5
       71 DUPTABLE                         R9 K38 [{["_isMock"], ["_networking"], ["_localization"], ["_plugin"], ["_user"], ["_gameInfo"], ["_rootPlace"] = 0, ["_currentScope"], ["_dialogs"], ["_currentDialog"] = , ["_contextMenuItems"], ["_toast"] = , ["_toastCancelToken"] = , ["_connections"], ["OnUsernameFetched"], ["OnGameInfoFetched"], ["OnCurrentScopeChanged"], ["OnNewAssetFetched"], ["OnDialogChanged"], ["OnContextMenuChanged"], ["OnToastChanged"]}]
       72 SETTABLEKS                       R3 R9 K16 ["_isMock"]
       74 SETTABLEKS                       R1 R9 K17 ["_networking"]
       76 SETTABLEKS                       R2 R9 K18 ["_localization"]
       78 SETTABLEKS                       R0 R9 K19 ["_plugin"]
       80 SETTABLEKS                       R5 R9 K20 ["_user"]
       82 SETTABLEKS                       R7 R9 K21 ["_gameInfo"]
       84 SETTABLEKS                       R8 R9 K23 ["_currentScope"]
       86 NEWTABLE                         R10 0 0
       88 SETTABLEKS                       R10 R9 K24 ["_dialogs"]
       90 NEWTABLE                         R10 0 0
       92 SETTABLEKS                       R10 R9 K27 ["_contextMenuItems"]
       94 NEWTABLE                         R10 0 0
       96 SETTABLEKS                       R10 R9 K30 ["_connections"]
       98 GETUPVAL                         R10 4
       99 GETTABLEKS                       R10 R10 K39 ["new"]
      101 CALL                             R10 0 1
      102 SETTABLEKS                       R10 R9 K31 ["OnUsernameFetched"]
      104 GETUPVAL                         R10 4
      105 GETTABLEKS                       R10 R10 K39 ["new"]
      107 CALL                             R10 0 1
      108 SETTABLEKS                       R10 R9 K32 ["OnGameInfoFetched"]
      110 GETUPVAL                         R10 4
      111 GETTABLEKS                       R10 R10 K39 ["new"]
      113 CALL                             R10 0 1
      114 SETTABLEKS                       R10 R9 K33 ["OnCurrentScopeChanged"]
      116 GETUPVAL                         R10 4
      117 GETTABLEKS                       R10 R10 K39 ["new"]
      119 CALL                             R10 0 1
      120 SETTABLEKS                       R10 R9 K34 ["OnNewAssetFetched"]
      122 GETUPVAL                         R10 4
      123 GETTABLEKS                       R10 R10 K39 ["new"]
      125 CALL                             R10 0 1
      126 SETTABLEKS                       R10 R9 K35 ["OnDialogChanged"]
      128 GETUPVAL                         R10 4
      129 GETTABLEKS                       R10 R10 K39 ["new"]
      131 CALL                             R10 0 1
      132 SETTABLEKS                       R10 R9 K36 ["OnContextMenuChanged"]
      134 GETUPVAL                         R10 4
      135 GETTABLEKS                       R10 R10 K39 ["new"]
      137 CALL                             R10 0 1
      138 SETTABLEKS                       R10 R9 K37 ["OnToastChanged"]
      140 GETUPVAL                         R12 5
      141 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
      143 MOVE                             R11 R9
      144 GETIMPORT                        R10 K41 [setmetatable]
      146 CALL                             R10 2 0
      147 GETUPVAL                         R10 3
      148 CALL                             R10 0 1
      149 JUMPIFNOT                        R10 ; [+20]
      150 GETIMPORT                        R10 K43 [pcall]
      152 NEWCLOSURE                       R11 P0
      153 CAPTURE                          VAL R0
      154 CALL                             R10 1 2
      155 JUMPIFNOT                        R10 ; [+14]
      156 JUMPIFNOT                        R11 ; [+13]
      157 GETTABLEKS                       R13 R9 K30 ["_connections"]
      159 GETTABLEKS                       R14 R11 K44 ["PlaceDocPanelClosed"]
      161 NEWCLOSURE                       R16 P1
      162 CAPTURE                          VAL R9
      163 NAMECALL                         R14 R14 K45 ["Connect"]
      165 CALL                             R14 2 -1
      166 FASTCALL                         TABLE_INSERT ; [+2]
      167 GETIMPORT                        R12 K48 [table.insert]
      169 CALL                             R12 -1 0
      170 NAMECALL                         R10 R9 K49 ["refreshUniverseInfo"]
      172 CALL                             R10 1 0
      173 GETTABLEKS                       R11 R9 K30 ["_connections"]
      175 GETTABLEKS                       R12 R9 K19 ["_plugin"]
      177 LOADK                            R14 K12 ["GameId"]
      178 NEWCLOSURE                       R15 P2
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R2
      181 CAPTURE                          UPVAL U1
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          UPVAL U6
      184 CAPTURE                          UPVAL U3
      185 NAMECALL                         R12 R12 K50 ["OnSetItem"]
      187 CALL                             R12 3 -1
      188 FASTCALL                         TABLE_INSERT ; [+2]
      189 GETIMPORT                        R10 K48 [table.insert]
      191 CALL                             R10 -1 0
      192 NEWCLOSURE                       R12 P3
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R9
      196 NAMECALL                         R10 R1 K51 ["fetchUsername"]
      198 CALL                             R10 2 0
      199 GETTABLEKS                       R11 R9 K30 ["_connections"]
      201 GETTABLEKS                       R12 R9 K19 ["_plugin"]
      203 LOADK                            R14 K52 ["ShowToast"]
      204 NEWCLOSURE                       R15 P4
      205 CAPTURE                          VAL R9
      206 NAMECALL                         R12 R12 K53 ["OnInvoke"]
      208 CALL                             R12 3 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R10 K48 [table.insert]
      212 CALL                             R10 -1 0
      213 GETTABLEKS                       R11 R9 K30 ["_connections"]
      215 GETUPVAL                         R12 8
      216 LOADK                            R14 K54 ["AssetsUploaded"]
      217 NEWCLOSURE                       R15 P5
      218 CAPTURE                          UPVAL U9
      219 CAPTURE                          UPVAL U7
      220 CAPTURE                          UPVAL U10
      221 CAPTURE                          VAL R9
      222 NAMECALL                         R12 R12 K55 ["Bind"]
      224 CALL                             R12 3 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R10 K48 [table.insert]
      228 CALL                             R10 -1 0
      229 RETURN                           R9 1

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
       24 GETTABLEKS                       R1 R0 K8 ["_toastCancelToken"]
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETTABLEKS                       R1 R0 K8 ["_toastCancelToken"]
       29 CALL                             R1 0 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K8 ["_toastCancelToken"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K9 ["OnToastChanged"]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R2 R0 K10 ["_connections"]
       39 CALL                             R1 1 0
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K10 ["_connections"]
       43 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R4 K11 ["sendUploadEvent"]
       25 MOVE                             R5 R1
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_16:
        0 MOVE                             R3 R1
        1 JUMPIFNOT                        R3 ; [+2]
        2 GETTABLEKS                       R3 R1 K0 ["AssetId"]
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["Asset must exist to be versioned"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 LOADB                            R3 1
       11 GETTABLEKS                       R4 R1 K4 ["AssetType"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["AssetType"]
       16 GETTABLEKS                       R5 R5 K5 ["Mesh"]
       18 JUMPIFEQ                         R4 R5 ; [+12]
       20 GETTABLEKS                       R4 R1 K4 ["AssetType"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K4 ["AssetType"]
       25 GETTABLEKS                       R5 R5 K6 ["Image"]
       27 JUMPIFEQ                         R4 R5 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       33 LOADK                            R4 K7 ["Asset must be image or mesh to be versioned"]
       34 GETIMPORT                        R2 K3 [assert]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K8 ["_plugin"]
       39 LOADK                            R4 K9 ["ImportAssetVersion"]
       40 GETTABLEKS                       R5 R1 K0 ["AssetId"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R7 R1 K4 ["AssetType"]
       45 CALL                             R6 1 -1
       46 NAMECALL                         R2 R2 K10 ["Invoke"]
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0

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
       18 GETUPVAL                         R2 1
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+11]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K8 ["OnGameInfoFetched"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K5 ["_gameInfo"]
       27 MOVE                             R5 R1
       28 NAMECALL                         R2 R2 K9 ["Fire"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K8 ["OnGameInfoFetched"]
       35 GETIMPORT                        R4 K4 [table.clone]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K5 ["_gameInfo"]
       40 CALL                             R4 1 1
       41 MOVE                             R5 R1
       42 NAMECALL                         R2 R2 K9 ["Fire"]
       44 CALL                             R2 3 0
       45 RETURN                           R0 0

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
       36 GETUPVAL                         R2 2
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+11]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K12 ["OnGameInfoFetched"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K8 ["_gameInfo"]
       45 MOVE                             R5 R1
       46 NAMECALL                         R2 R2 K13 ["Fire"]
       48 CALL                             R2 3 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K12 ["OnGameInfoFetched"]
       53 GETIMPORT                        R4 K7 [table.clone]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K8 ["_gameInfo"]
       58 CALL                             R4 1 1
       59 MOVE                             R5 R1
       60 NAMECALL                         R2 R2 K13 ["Fire"]
       62 CALL                             R2 3 0
       63 RETURN                           R0 0

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
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R1 R1 K4 ["fetchUniverseInfoAsync"]
       22 CALL                             R1 4 0
       23 RETURN                           R0 0

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
       28 GETTABLEKS                       R4 R3 K3 ["GetService"]
       30 LOADK                            R5 K14 ["StudioService"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R6 R2 K15 ["Packages"]
       36 GETTABLEKS                       R6 R6 K16 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K17 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K18 ["ContextItem"]
       43 GETIMPORT                        R8 K10 [require]
       45 GETTABLEKS                       R9 R2 K15 ["Packages"]
       47 GETTABLEKS                       R9 R9 K19 ["Dash"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R5 K12 ["Util"]
       52 GETTABLEKS                       R9 R9 K20 ["Signal"]
       54 GETIMPORT                        R10 K10 [require]
       56 GETTABLEKS                       R11 R2 K11 ["Src"]
       58 GETTABLEKS                       R11 R11 K21 ["Types"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K10 [require]
       63 GETTABLEKS                       R12 R2 K11 ["Src"]
       65 GETTABLEKS                       R12 R12 K22 ["DEPRECATED_Analytics"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K10 [require]
       70 GETTABLEKS                       R13 R2 K11 ["Src"]
       72 GETTABLEKS                       R13 R13 K12 ["Util"]
       74 GETTABLEKS                       R13 R13 K23 ["cleanConnections"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K10 [require]
       79 GETTABLEKS                       R14 R2 K11 ["Src"]
       81 GETTABLEKS                       R14 R14 K12 ["Util"]
       83 GETTABLEKS                       R14 R14 K24 ["convertToEngineAssetTypeEnum"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K10 [require]
       88 GETTABLEKS                       R15 R2 K11 ["Src"]
       90 GETTABLEKS                       R15 R15 K12 ["Util"]
       92 GETTABLEKS                       R15 R15 K25 ["createScopeUid"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K10 [require]
       97 GETTABLEKS                       R16 R2 K11 ["Src"]
       99 GETTABLEKS                       R16 R16 K12 ["Util"]
      101 GETTABLEKS                       R16 R16 K26 ["logIfDebug"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K10 [require]
      106 GETTABLEKS                       R17 R2 K11 ["Src"]
      108 GETTABLEKS                       R17 R17 K27 ["Flags"]
      110 GETTABLEKS                       R17 R17 K28 ["getFFlagAmrUnifyGameScopeType"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K10 [require]
      115 GETTABLEKS                       R18 R2 K11 ["Src"]
      117 GETTABLEKS                       R18 R18 K27 ["Flags"]
      119 GETTABLEKS                       R18 R18 K29 ["getFFlagAmrGameFolderDefaultOnOpen"]
      121 CALL                             R17 1 1
      122 LOADK                            R20 K30 ["PluginController"]
      123 NAMECALL                         R18 R7 K31 ["extend"]
      125 CALL                             R18 2 1
      126 DUPCLOSURE                       R19 K32 [PROTO_6]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R8
      138 SETTABLEKS                       R19 R18 K33 ["new"]
      140 DUPCLOSURE                       R19 K34 [PROTO_7]
      141 CAPTURE                          VAL R18
      142 SETTABLEKS                       R19 R18 K35 ["mock"]
      144 DUPCLOSURE                       R19 K36 [PROTO_8]
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R19 R18 K37 ["destroy"]
      148 DUPCLOSURE                       R19 K38 [PROTO_9]
      149 SETTABLEKS                       R19 R18 K39 ["getPlugin"]
      151 DUPCLOSURE                       R19 K40 [PROTO_10]
      152 SETTABLEKS                       R19 R18 K41 ["getUser"]
      154 DUPCLOSURE                       R19 K42 [PROTO_11]
      155 SETTABLEKS                       R19 R18 K43 ["getGameInfo"]
      157 DUPCLOSURE                       R19 K44 [PROTO_12]
      158 SETTABLEKS                       R19 R18 K45 ["getCurrentScope"]
      160 DUPCLOSURE                       R19 K46 [PROTO_13]
      161 SETTABLEKS                       R19 R18 K47 ["setCurrentScope"]
      163 DUPCLOSURE                       R19 K48 [PROTO_15]
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R11
      166 SETTABLEKS                       R19 R18 K49 ["launchBulkImport"]
      168 DUPCLOSURE                       R19 K50 [PROTO_16]
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R13
      171 SETTABLEKS                       R19 R18 K51 ["importAssetVersion"]
      173 DUPCLOSURE                       R19 K52 [PROTO_19]
      174 CAPTURE                          VAL R15
      175 SETTABLEKS                       R19 R18 K53 ["processNewAsset"]
      177 DUPCLOSURE                       R19 K54 [PROTO_22]
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R15
      180 SETTABLEKS                       R19 R18 K55 ["refreshUniverseInfo"]
      182 DUPCLOSURE                       R19 K56 [PROTO_23]
      183 SETTABLEKS                       R19 R18 K57 ["setRootPlace"]
      185 DUPCLOSURE                       R19 K58 [PROTO_24]
      186 SETTABLEKS                       R19 R18 K59 ["getRootPlace"]
      188 DUPCLOSURE                       R19 K60 [PROTO_25]
      189 SETTABLEKS                       R19 R18 K61 ["isRootPlace"]
      191 DUPCLOSURE                       R19 K62 [PROTO_26]
      192 SETTABLEKS                       R19 R18 K63 ["setContextMenuItems"]
      194 DUPCLOSURE                       R19 K64 [PROTO_27]
      195 SETTABLEKS                       R19 R18 K65 ["getContextMenuItems"]
      197 DUPCLOSURE                       R19 K66 [PROTO_28]
      198 SETTABLEKS                       R19 R18 K67 ["setDialog"]
      200 DUPCLOSURE                       R19 K68 [PROTO_29]
      201 SETTABLEKS                       R19 R18 K69 ["closeDialog"]
      203 DUPCLOSURE                       R19 K70 [PROTO_30]
      204 SETTABLEKS                       R19 R18 K71 ["_dialogUpdated"]
      206 DUPCLOSURE                       R19 K72 [PROTO_31]
      207 SETTABLEKS                       R19 R18 K73 ["getDialogs"]
      209 DUPCLOSURE                       R19 K74 [PROTO_32]
      210 SETTABLEKS                       R19 R18 K75 ["getDialogController"]
      212 DUPCLOSURE                       R19 K76 [PROTO_35]
      213 SETTABLEKS                       R19 R18 K77 ["showToast"]
      215 DUPCLOSURE                       R19 K78 [PROTO_36]
      216 SETTABLEKS                       R19 R18 K79 ["_clearToast"]
      218 DUPCLOSURE                       R19 K80 [PROTO_37]
      219 SETTABLEKS                       R19 R18 K81 ["getToast"]
      221 RETURN                           R18 1
