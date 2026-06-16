PROTO_0:
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
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K18 ["_currentScope"]
       55 GETTABLEKS                       R3 R3 K7 ["Type"]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K13 ["ScopeType"]
       60 GETTABLEKS                       R4 R4 K19 ["ProjectPlaces"]
       62 JUMPIFEQ                         R3 R4 ; [+13]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K18 ["_currentScope"]
       67 GETTABLEKS                       R3 R3 K7 ["Type"]
       69 GETUPVAL                         R4 2
       70 GETTABLEKS                       R4 R4 K13 ["ScopeType"]
       72 GETTABLEKS                       R4 R4 K20 ["ProjectShared"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+8]
       76 GETUPVAL                         R3 0
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K21 ["_user"]
       80 NAMECALL                         R3 R3 K22 ["setCurrentScope"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0

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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["showToast"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

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

PROTO_4:
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
       63 DUPTABLE                         R8 K37 [{"_isMock", "_networking", "_localization", "_plugin", "_user", "_gameInfo", "_rootPlace", "_currentScope", "_dialogs", "_currentDialog", "_contextMenuItems", "_toast", "_toastCancelToken", "_connections", "OnUsernameFetched", "OnGameInfoFetched", "OnCurrentScopeChanged", "OnNewAssetFetched", "OnDialogChanged", "OnContextMenuChanged", "OnToastChanged"}]
       64 SETTABLEKS                       R3 R8 K16 ["_isMock"]
       66 SETTABLEKS                       R1 R8 K17 ["_networking"]
       68 SETTABLEKS                       R2 R8 K18 ["_localization"]
       70 SETTABLEKS                       R0 R8 K19 ["_plugin"]
       72 SETTABLEKS                       R5 R8 K20 ["_user"]
       74 SETTABLEKS                       R7 R8 K21 ["_gameInfo"]
       76 LOADN                            R9 0
       77 SETTABLEKS                       R9 R8 K22 ["_rootPlace"]
       79 SETTABLEKS                       R5 R8 K23 ["_currentScope"]
       81 NEWTABLE                         R9 0 0
       83 SETTABLEKS                       R9 R8 K24 ["_dialogs"]
       85 LOADNIL                          R9
       86 SETTABLEKS                       R9 R8 K25 ["_currentDialog"]
       88 NEWTABLE                         R9 0 0
       90 SETTABLEKS                       R9 R8 K26 ["_contextMenuItems"]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K27 ["_toast"]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K28 ["_toastCancelToken"]
       98 NEWTABLE                         R9 0 0
      100 SETTABLEKS                       R9 R8 K29 ["_connections"]
      102 GETUPVAL                         R9 3
      103 GETTABLEKS                       R9 R9 K38 ["new"]
      105 CALL                             R9 0 1
      106 SETTABLEKS                       R9 R8 K30 ["OnUsernameFetched"]
      108 GETUPVAL                         R9 3
      109 GETTABLEKS                       R9 R9 K38 ["new"]
      111 CALL                             R9 0 1
      112 SETTABLEKS                       R9 R8 K31 ["OnGameInfoFetched"]
      114 GETUPVAL                         R9 3
      115 GETTABLEKS                       R9 R9 K38 ["new"]
      117 CALL                             R9 0 1
      118 SETTABLEKS                       R9 R8 K32 ["OnCurrentScopeChanged"]
      120 GETUPVAL                         R9 3
      121 GETTABLEKS                       R9 R9 K38 ["new"]
      123 CALL                             R9 0 1
      124 SETTABLEKS                       R9 R8 K33 ["OnNewAssetFetched"]
      126 GETUPVAL                         R9 3
      127 GETTABLEKS                       R9 R9 K38 ["new"]
      129 CALL                             R9 0 1
      130 SETTABLEKS                       R9 R8 K34 ["OnDialogChanged"]
      132 GETUPVAL                         R10 4
      133 CALL                             R10 0 1
      134 JUMPIFNOT                        R10 ; [+5]
      135 GETUPVAL                         R9 3
      136 GETTABLEKS                       R9 R9 K38 ["new"]
      138 CALL                             R9 0 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R9
      141 SETTABLEKS                       R9 R8 K35 ["OnContextMenuChanged"]
      143 GETUPVAL                         R9 3
      144 GETTABLEKS                       R9 R9 K38 ["new"]
      146 CALL                             R9 0 1
      147 SETTABLEKS                       R9 R8 K36 ["OnToastChanged"]
      149 GETUPVAL                         R11 5
      150 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
      152 MOVE                             R10 R8
      153 GETIMPORT                        R9 K40 [setmetatable]
      155 CALL                             R9 2 0
      156 NAMECALL                         R9 R8 K41 ["refreshUniverseInfo"]
      158 CALL                             R9 1 0
      159 GETTABLEKS                       R10 R8 K29 ["_connections"]
      161 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      163 LOADK                            R13 K12 ["GameId"]
      164 NEWCLOSURE                       R14 P0
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R2
      167 CAPTURE                          UPVAL U1
      168 CAPTURE                          UPVAL U2
      169 NAMECALL                         R11 R11 K42 ["OnSetItem"]
      171 CALL                             R11 3 -1
      172 FASTCALL                         TABLE_INSERT ; [+2]
      173 GETIMPORT                        R9 K45 [table.insert]
      175 CALL                             R9 -1 0
      176 NEWCLOSURE                       R11 P1
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R8
      180 NAMECALL                         R9 R1 K46 ["fetchUsername"]
      182 CALL                             R9 2 0
      183 GETTABLEKS                       R10 R8 K29 ["_connections"]
      185 GETTABLEKS                       R11 R8 K19 ["_plugin"]
      187 LOADK                            R13 K47 ["ShowToast"]
      188 NEWCLOSURE                       R14 P2
      189 CAPTURE                          VAL R8
      190 NAMECALL                         R11 R11 K48 ["OnInvoke"]
      192 CALL                             R11 3 -1
      193 FASTCALL                         TABLE_INSERT ; [+2]
      194 GETIMPORT                        R9 K45 [table.insert]
      196 CALL                             R9 -1 0
      197 GETTABLEKS                       R10 R8 K29 ["_connections"]
      199 GETUPVAL                         R11 7
      200 LOADK                            R13 K49 ["AssetsUploaded"]
      201 NEWCLOSURE                       R14 P3
      202 CAPTURE                          UPVAL U8
      203 CAPTURE                          UPVAL U6
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          VAL R8
      206 NAMECALL                         R11 R11 K50 ["Bind"]
      208 CALL                             R11 3 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R9 K45 [table.insert]
      212 CALL                             R9 -1 0
      213 RETURN                           R8 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 LOADB                            R7 1
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_user"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_gameInfo"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_currentScope"]
        2 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
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
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K11 ["sendUploadEvent"]
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnNewAssetFetched"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
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
       21 GETIMPORT                        R4 K4 [table.clone]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K5 ["_gameInfo"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R1
       28 NAMECALL                         R2 R2 K9 ["Fire"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_19:
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
       39 GETIMPORT                        R4 K7 [table.clone]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K8 ["_gameInfo"]
       44 CALL                             R4 1 1
       45 MOVE                             R5 R1
       46 NAMECALL                         R2 R2 K13 ["Fire"]
       48 CALL                             R2 3 0
       49 RETURN                           R0 0

PROTO_20:
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
        0 SETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 GETTABLEKS                       R2 R0 K1 ["OnContextMenuChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Fire"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_contextMenuItems"]
        2 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_dialogs"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K3 ["_dialogs"]
        7 GETTABLEKS                       R1 R0 K4 ["OnDialogChanged"]
        9 GETTABLEKS                       R3 R0 K3 ["_dialogs"]
       11 NAMECALL                         R1 R1 K5 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_dialogs"]
        2 RETURN                           R1 1

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["_dialogs"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+4]
        5 GETTABLEKS                       R3 R2 K1 ["Controller"]
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_31:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["_clearToast"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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
       65 GETTABLEKS                       R12 R12 K22 ["Analytics"]
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
      110 GETTABLEKS                       R17 R17 K28 ["getFFlagAmrFoundationifyContextMenu"]
      112 CALL                             R16 1 1
      113 LOADK                            R19 K29 ["PluginController"]
      114 NAMECALL                         R17 R7 K30 ["extend"]
      116 CALL                             R17 2 1
      117 DUPCLOSURE                       R18 K31 [PROTO_4]
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R8
      128 SETTABLEKS                       R18 R17 K32 ["new"]
      130 DUPCLOSURE                       R18 K33 [PROTO_5]
      131 CAPTURE                          VAL R17
      132 SETTABLEKS                       R18 R17 K34 ["mock"]
      134 DUPCLOSURE                       R18 K35 [PROTO_6]
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R18 R17 K36 ["destroy"]
      138 DUPCLOSURE                       R18 K37 [PROTO_7]
      139 SETTABLEKS                       R18 R17 K38 ["getPlugin"]
      141 DUPCLOSURE                       R18 K39 [PROTO_8]
      142 SETTABLEKS                       R18 R17 K40 ["getUser"]
      144 DUPCLOSURE                       R18 K41 [PROTO_9]
      145 SETTABLEKS                       R18 R17 K42 ["getGameInfo"]
      147 DUPCLOSURE                       R18 K43 [PROTO_10]
      148 SETTABLEKS                       R18 R17 K44 ["getCurrentScope"]
      150 DUPCLOSURE                       R18 K45 [PROTO_11]
      151 SETTABLEKS                       R18 R17 K46 ["setCurrentScope"]
      153 DUPCLOSURE                       R18 K47 [PROTO_13]
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R11
      156 SETTABLEKS                       R18 R17 K48 ["launchBulkImport"]
      158 DUPCLOSURE                       R18 K49 [PROTO_14]
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R13
      161 SETTABLEKS                       R18 R17 K50 ["importAssetVersion"]
      163 DUPCLOSURE                       R18 K51 [PROTO_17]
      164 CAPTURE                          VAL R15
      165 SETTABLEKS                       R18 R17 K52 ["processNewAsset"]
      167 DUPCLOSURE                       R18 K53 [PROTO_20]
      168 CAPTURE                          VAL R15
      169 SETTABLEKS                       R18 R17 K54 ["refreshUniverseInfo"]
      171 DUPCLOSURE                       R18 K55 [PROTO_21]
      172 SETTABLEKS                       R18 R17 K56 ["setRootPlace"]
      174 DUPCLOSURE                       R18 K57 [PROTO_22]
      175 SETTABLEKS                       R18 R17 K58 ["getRootPlace"]
      177 DUPCLOSURE                       R18 K59 [PROTO_23]
      178 SETTABLEKS                       R18 R17 K60 ["isRootPlace"]
      180 DUPCLOSURE                       R18 K61 [PROTO_24]
      181 SETTABLEKS                       R18 R17 K62 ["setContextMenuItems"]
      183 DUPCLOSURE                       R18 K63 [PROTO_25]
      184 SETTABLEKS                       R18 R17 K64 ["getContextMenuItems"]
      186 DUPCLOSURE                       R18 K65 [PROTO_26]
      187 SETTABLEKS                       R18 R17 K66 ["setDialog"]
      189 DUPCLOSURE                       R18 K67 [PROTO_27]
      190 SETTABLEKS                       R18 R17 K68 ["closeDialog"]
      192 DUPCLOSURE                       R18 K69 [PROTO_28]
      193 SETTABLEKS                       R18 R17 K70 ["_dialogUpdated"]
      195 DUPCLOSURE                       R18 K71 [PROTO_29]
      196 SETTABLEKS                       R18 R17 K72 ["getDialogs"]
      198 DUPCLOSURE                       R18 K73 [PROTO_30]
      199 SETTABLEKS                       R18 R17 K74 ["getDialogController"]
      201 DUPCLOSURE                       R18 K75 [PROTO_33]
      202 SETTABLEKS                       R18 R17 K76 ["showToast"]
      204 DUPCLOSURE                       R18 K77 [PROTO_34]
      205 SETTABLEKS                       R18 R17 K78 ["_clearToast"]
      207 DUPCLOSURE                       R18 K79 [PROTO_35]
      208 SETTABLEKS                       R18 R17 K80 ["getToast"]
      210 RETURN                           R17 1
