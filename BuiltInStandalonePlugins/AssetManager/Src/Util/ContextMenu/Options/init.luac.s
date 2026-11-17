PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["None"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 NAMECALL                         R3 R3 K1 ["getGameInfo"]
        4 CALL                             R3 1 1
        5 DUPTABLE                         R4 K3 [{"gameName"}]
        6 GETTABLEKS                       R5 R3 K4 ["Name"]
        8 SETTABLEKS                       R5 R4 K2 ["gameName"]
       10 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getItemsCache"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getCurrentShownScope"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["keys"]
       11 NAMECALL                         R7 R3 K4 ["getSelection"]
       13 CALL                             R7 1 -1
       14 CALL                             R6 -1 1
       15 GETTABLEKS                       R9 R5 K5 ["Uid"]
       17 MOVE                             R10 R6
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R11 R11 K7 ["AssetId"]
       23 NAMECALL                         R7 R4 K8 ["getData"]
       25 CALL                             R7 4 1
       26 GETTABLEKS                       R10 R5 K5 ["Uid"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K6 ["AssetInfoField"]
       32 GETTABLEKS                       R12 R12 K9 ["AssetType"]
       34 NAMECALL                         R8 R4 K8 ["getData"]
       36 CALL                             R8 4 1
       37 GETUPVAL                         R9 2
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+12]
       40 GETTABLEKS                       R12 R5 K5 ["Uid"]
       42 MOVE                             R13 R6
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K6 ["AssetInfoField"]
       46 GETTABLEKS                       R14 R14 K10 ["Creator"]
       48 NAMECALL                         R10 R4 K8 ["getData"]
       50 CALL                             R10 4 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R10
       53 MOVE                             R11 R9
       54 JUMPIFNOT                        R11 ; [+2]
       55 GETUPVAL                         R11 3
       56 CALL                             R11 0 1
       57 JUMPIFNOT                        R11 ; [+41]
       58 DUPTABLE                         R12 K14 [{"DraftStatus", "VersionNumber", "ModerationStatus"}]
       59 GETTABLEKS                       R15 R5 K5 ["Uid"]
       61 MOVE                             R16 R6
       62 GETUPVAL                         R17 1
       63 GETTABLEKS                       R17 R17 K6 ["AssetInfoField"]
       65 GETTABLEKS                       R17 R17 K11 ["DraftStatus"]
       67 NAMECALL                         R13 R4 K8 ["getData"]
       69 CALL                             R13 4 1
       70 SETTABLEKS                       R13 R12 K11 ["DraftStatus"]
       72 GETTABLEKS                       R15 R5 K5 ["Uid"]
       74 MOVE                             R16 R6
       75 GETUPVAL                         R17 1
       76 GETTABLEKS                       R17 R17 K6 ["AssetInfoField"]
       78 GETTABLEKS                       R17 R17 K12 ["VersionNumber"]
       80 NAMECALL                         R13 R4 K8 ["getData"]
       82 CALL                             R13 4 1
       83 SETTABLEKS                       R13 R12 K12 ["VersionNumber"]
       85 GETTABLEKS                       R15 R5 K5 ["Uid"]
       87 MOVE                             R16 R6
       88 GETUPVAL                         R17 1
       89 GETTABLEKS                       R17 R17 K6 ["AssetInfoField"]
       91 GETTABLEKS                       R17 R17 K13 ["ModerationStatus"]
       93 NAMECALL                         R13 R4 K8 ["getData"]
       95 CALL                             R13 4 1
       96 SETTABLEKS                       R13 R12 K13 ["ModerationStatus"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R12
      100 DUPTABLE                         R13 K19 [{"assetIds", "assetTypes", "creators", "publishStates"}]
      101 NEWTABLE                         R14 0 0
      103 SETTABLEKS                       R14 R13 K15 ["assetIds"]
      105 NEWTABLE                         R14 0 0
      107 SETTABLEKS                       R14 R13 K16 ["assetTypes"]
      109 JUMPIFNOT                        R9 ; [+3]
      110 NEWTABLE                         R14 0 0
      112 JUMP                             ; [+1]
      113 LOADNIL                          R14
      114 SETTABLEKS                       R14 R13 K17 ["creators"]
      116 JUMPIFNOT                        R11 ; [+3]
      117 NEWTABLE                         R14 0 0
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K18 ["publishStates"]
      123 MOVE                             R14 R8
      124 LOADNIL                          R15
      125 LOADNIL                          R16
      126 FORGPREP                         R14
      127 GETUPVAL                         R19 4
      128 MOVE                             R20 R18
      129 CALL                             R19 1 1
      130 JUMPIFNOT                        R19 ; [+95]
      131 GETTABLEKS                       R20 R13 K15 ["assetIds"]
      133 GETTABLE                         R21 R7 R17
      134 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      136 GETIMPORT                        R19 K22 [table.insert]
      138 CALL                             R19 2 0
      139 GETTABLEKS                       R20 R13 K16 ["assetTypes"]
      141 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
      143 MOVE                             R21 R18
      144 GETIMPORT                        R19 K22 [table.insert]
      146 CALL                             R19 2 0
      147 JUMPIFEQKNIL                     R10 ; [+13]
      149 GETTABLEKS                       R19 R13 K17 ["creators"]
      151 JUMPIFEQKNIL                     R19 ; [+9]
      153 GETTABLEKS                       R20 R13 K17 ["creators"]
      155 GETTABLE                         R21 R10 R17
      156 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      158 GETIMPORT                        R19 K22 [table.insert]
      160 CALL                             R19 2 0
      161 JUMPIFEQKNIL                     R10 ; [+64]
      163 JUMPIFEQKNIL                     R12 ; [+62]
      165 GETTABLEKS                       R19 R13 K18 ["publishStates"]
      167 JUMPIFEQKNIL                     R19 ; [+58]
      169 GETTABLEKS                       R19 R13 K18 ["publishStates"]
      171 GETTABLEKS                       R21 R13 K15 ["assetIds"]
      173 LENGTH                           R20 R21
      174 DUPTABLE                         R21 K23 [{"Creator", "DraftStatus", "VersionNumber", "ModerationStatus"}]
      175 GETTABLE                         R23 R10 R17
      176 GETUPVAL                         R24 0
      177 GETTABLEKS                       R24 R24 K24 ["None"]
      179 JUMPIFNOTEQ                      R23 R24 ; [+3]
      181 LOADNIL                          R22
      182 JUMP                             ; [+1]
      183 MOVE                             R22 R23
      184 SETTABLEKS                       R22 R21 K10 ["Creator"]
      186 GETTABLEKS                       R24 R12 K11 ["DraftStatus"]
      188 GETTABLE                         R23 R24 R17
      189 GETUPVAL                         R24 0
      190 GETTABLEKS                       R24 R24 K24 ["None"]
      192 JUMPIFNOTEQ                      R23 R24 ; [+3]
      194 LOADNIL                          R22
      195 JUMP                             ; [+1]
      196 MOVE                             R22 R23
      197 SETTABLEKS                       R22 R21 K11 ["DraftStatus"]
      199 GETTABLEKS                       R24 R12 K12 ["VersionNumber"]
      201 GETTABLE                         R23 R24 R17
      202 GETUPVAL                         R24 0
      203 GETTABLEKS                       R24 R24 K24 ["None"]
      205 JUMPIFNOTEQ                      R23 R24 ; [+3]
      207 LOADNIL                          R22
      208 JUMP                             ; [+1]
      209 MOVE                             R22 R23
      210 SETTABLEKS                       R22 R21 K12 ["VersionNumber"]
      212 GETTABLEKS                       R24 R12 K13 ["ModerationStatus"]
      214 GETTABLE                         R23 R24 R17
      215 GETUPVAL                         R24 0
      216 GETTABLEKS                       R24 R24 K24 ["None"]
      218 JUMPIFNOTEQ                      R23 R24 ; [+3]
      220 LOADNIL                          R22
      221 JUMP                             ; [+1]
      222 MOVE                             R22 R23
      223 SETTABLEKS                       R22 R21 K13 ["ModerationStatus"]
      225 SETTABLE                         R21 R19 R20
      226 FORGLOOP                         R14 2 ; [-100]
      228 GETTABLEKS                       R15 R13 K15 ["assetIds"]
      230 LENGTH                           R14 R15
      231 JUMPIFNOTEQKN                    R14 K25 [0] ; [+2]
      233 RETURN                           R0 0
      234 GETTABLEKS                       R14 R1 K26 ["PluginController"]
      236 NAMECALL                         R14 R14 K27 ["getPlugin"]
      238 CALL                             R14 1 1
      239 LOADK                            R16 K28 ["OnAddToExperience"]
      240 MOVE                             R17 R13
      241 MOVE                             R18 R5
      242 NAMECALL                         R14 R14 K29 ["Invoke"]
      244 CALL                             R14 4 0
      245 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["PluginController"]
       16 NAMECALL                         R3 R3 K3 ["getGameInfo"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K4 ["Id"]
       21 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETTABLEKS                       R3 R1 K6 ["ItemsController"]
       27 NAMECALL                         R3 R3 K7 ["getCurrentShownScope"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K8 ["ExplorerController"]
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R4 K9 ["getScopeRoot"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+18]
       37 GETTABLEKS                       R5 R4 K10 ["Type"]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       42 GETTABLEKS                       R6 R6 K12 ["Universe"]
       44 JUMPIFEQ                         R5 R6 ; [+8]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K11 ["ScopeType"]
       49 GETTABLEKS                       R6 R6 K13 ["ProjectPlaces"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+3]
       53 LOADB                            R6 0
       54 RETURN                           R6 1
       55 GETTABLEKS                       R5 R1 K6 ["ItemsController"]
       57 NAMECALL                         R5 R5 K14 ["selectionHasInsertableAssets"]
       59 CALL                             R5 1 -1
       60 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["ItemsController"]
        2 NAMECALL                         R1 R1 K1 ["getSingleItemSelected"]
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 GETTABLEKS                       R2 R0 K0 ["ItemsController"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K2 ["canEditItem"]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R4 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R4 K1 ["getSingleItemSelected"]
        4 CALL                             R4 1 1
        5 LOADB                            R3 0
        6 JUMPIFEQKNIL                     R4 ; [+8]
        8 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K2 ["canEditItem"]
       13 CALL                             R5 2 1
       14 MOVE                             R3 R5
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       19 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
       21 CALL                             R3 1 1
       22 JUMPIFEQKNIL                     R3 ; [+7]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R5 R3 K3 ["AssetId"]
       27 GETTABLEKS                       R6 R3 K4 ["AssetType"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R4 R4 K1 ["Asset"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+13]
        8 GETIMPORT                        R4 K3 [next]
       10 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       12 NAMECALL                         R5 R5 K5 ["getSelection"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 1
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R5 R1 K0 ["ItemsController"]
        2 NAMECALL                         R5 R5 K1 ["getSingleItemSelected"]
        4 CALL                             R5 1 1
        5 LOADB                            R4 0
        6 JUMPIFEQKNIL                     R5 ; [+8]
        8 GETTABLEKS                       R6 R1 K0 ["ItemsController"]
       10 MOVE                             R8 R5
       11 NAMECALL                         R6 R6 K2 ["canEditItem"]
       13 CALL                             R6 2 1
       14 MOVE                             R4 R6
       15 NOT                              R3 R4
       16 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R4 R3 K1 ["getCurrentShownScope"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R3 K2 ["getItemsCache"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["keys"]
       11 NAMECALL                         R7 R3 K4 ["getSelection"]
       13 CALL                             R7 1 -1
       14 CALL                             R6 -1 1
       15 GETTABLEKS                       R9 R4 K5 ["Uid"]
       17 MOVE                             R10 R6
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R11 R11 K7 ["AssetId"]
       23 NAMECALL                         R7 R5 K8 ["getData"]
       25 CALL                             R7 4 1
       26 GETTABLEKS                       R10 R4 K5 ["Uid"]
       28 MOVE                             R11 R6
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K6 ["AssetInfoField"]
       32 GETTABLEKS                       R12 R12 K9 ["VersionNumber"]
       34 NAMECALL                         R8 R5 K8 ["getData"]
       36 CALL                             R8 4 1
       37 GETTABLEKS                       R11 R4 K5 ["Uid"]
       39 MOVE                             R12 R6
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R13 R13 K6 ["AssetInfoField"]
       43 GETTABLEKS                       R13 R13 K10 ["ModerationStatus"]
       45 NAMECALL                         R9 R5 K8 ["getData"]
       47 CALL                             R9 4 1
       48 GETTABLEKS                       R12 R4 K5 ["Uid"]
       50 MOVE                             R13 R6
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K6 ["AssetInfoField"]
       54 GETTABLEKS                       R14 R14 K11 ["DraftStatus"]
       56 NAMECALL                         R10 R5 K8 ["getData"]
       58 CALL                             R10 4 1
       59 NEWTABLE                         R11 0 0
       61 NEWTABLE                         R12 0 0
       63 LOADN                            R15 1
       64 LENGTH                           R13 R6
       65 LOADN                            R14 1
       66 FORNPREP                         R13
       67 GETTABLE                         R16 R9 R15
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R17 R17 K10 ["ModerationStatus"]
       71 GETTABLEKS                       R17 R17 K12 ["Rejected"]
       73 JUMPIFEQ                         R16 R17 ; [+23]
       75 GETTABLE                         R17 R10 R15
       76 GETUPVAL                         R18 1
       77 GETTABLEKS                       R18 R18 K11 ["DraftStatus"]
       79 GETTABLEKS                       R18 R18 K13 ["Draft"]
       81 JUMPIFNOTEQ                      R17 R18 ; [+15]
       83 GETTABLE                         R20 R7 R15
       84 FASTCALL2                        TABLE_INSERT R11 R20 ; [+4]
       86 MOVE                             R19 R11
       87 GETIMPORT                        R18 K16 [table.insert]
       89 CALL                             R18 2 0
       90 GETTABLE                         R20 R8 R15
       91 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       93 MOVE                             R19 R12
       94 GETIMPORT                        R18 K16 [table.insert]
       96 CALL                             R18 2 0
       97 FORNLOOP                         R13
       98 LENGTH                           R13 R11
       99 JUMPIFNOTEQKN                    R13 K17 [0] ; [+2]
      101 RETURN                           R0 0
      102 GETTABLEKS                       R13 R1 K18 ["PluginController"]
      104 NAMECALL                         R13 R13 K19 ["getPlugin"]
      106 CALL                             R13 1 1
      107 LOADK                            R15 K20 ["OnPublishItems"]
      108 MOVE                             R16 R11
      109 MOVE                             R17 R12
      110 NAMECALL                         R13 R13 K21 ["Invoke"]
      112 CALL                             R13 4 0
      113 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       16 NAMECALL                         R4 R3 K3 ["getCurrentShownScope"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["Type"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       24 GETTABLEKS                       R6 R6 K6 ["ProjectPlaces"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+3]
       28 LOADB                            R5 0
       29 RETURN                           R5 1
       30 NAMECALL                         R5 R3 K7 ["getSelectionDraftCount"]
       32 CALL                             R5 1 1
       33 LOADB                            R6 0
       34 LOADN                            R7 0
       35 JUMPIFNOTLT                      R7 R5 ; [+7]
       37 GETUPVAL                         R7 2
       38 CALL                             R7 0 1
       39 JUMPIFLE                         R5 R7 ; [+2]
       41 LOADB                            R6 0 +1
       42 LOADB                            R6 1
       43 RETURN                           R6 1

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["PluginController"]
        2 GETTABLEKS                       R5 R1 K1 ["ItemsController"]
        4 NAMECALL                         R5 R5 K2 ["getSingleItemSelected"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K3 ["importAssetVersion"]
        9 CALL                             R3 -1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+22]
        8 LOADB                            R4 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
       12 GETTABLEKS                       R5 R5 K3 ["Asset"]
       14 JUMPIFNOTEQ                      R0 R5 ; [+15]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+12]
       19 GETTABLEKS                       R5 R3 K4 ["AssetType"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       24 GETTABLEKS                       R6 R6 K5 ["Mesh"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETUPVAL                         R5 2
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+22]
       33 LOADB                            R5 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K2 ["MenuContext"]
       37 GETTABLEKS                       R6 R6 K3 ["Asset"]
       39 JUMPIFNOTEQ                      R0 R6 ; [+15]
       41 LOADB                            R5 0
       42 JUMPIFEQKNIL                     R3 ; [+12]
       44 GETTABLEKS                       R6 R3 K4 ["AssetType"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K4 ["AssetType"]
       49 GETTABLEKS                       R7 R7 K6 ["Image"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETUPVAL                         R6 3
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+22]
       58 LOADB                            R6 0
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K2 ["MenuContext"]
       62 GETTABLEKS                       R7 R7 K3 ["Asset"]
       64 JUMPIFNOTEQ                      R0 R7 ; [+15]
       66 LOADB                            R6 0
       67 JUMPIFEQKNIL                     R3 ; [+12]
       69 GETTABLEKS                       R7 R3 K4 ["AssetType"]
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R8 R8 K4 ["AssetType"]
       74 GETTABLEKS                       R8 R8 K7 ["Animation"]
       76 JUMPIFEQ                         R7 R8 ; [+2]
       78 LOADB                            R6 0 +1
       79 LOADB                            R6 1
       80 GETUPVAL                         R7 4
       81 CALL                             R7 0 1
       82 JUMPIFNOT                        R7 ; [+22]
       83 LOADB                            R7 0
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K2 ["MenuContext"]
       87 GETTABLEKS                       R8 R8 K3 ["Asset"]
       89 JUMPIFNOTEQ                      R0 R8 ; [+15]
       91 LOADB                            R7 0
       92 JUMPIFEQKNIL                     R3 ; [+12]
       94 GETTABLEKS                       R8 R3 K4 ["AssetType"]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K4 ["AssetType"]
       99 GETTABLEKS                       R9 R9 K8 ["TextDocument"]
      101 JUMPIFEQ                         R8 R9 ; [+2]
      103 LOADB                            R7 0 +1
      104 LOADB                            R7 1
      105 MOVE                             R8 R4
      106 JUMPIF                           R8 ; [+5]
      107 MOVE                             R8 R5
      108 JUMPIF                           R8 ; [+3]
      109 MOVE                             R8 R6
      110 JUMPIF                           R8 ; [+1]
      111 MOVE                             R8 R7
      112 RETURN                           R8 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+20]
        3 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        5 NAMECALL                         R3 R3 K1 ["getSelectionIdsAndVersions"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R1 K2 ["PluginController"]
       10 NAMECALL                         R4 R4 K3 ["getPlugin"]
       12 CALL                             R4 1 1
       13 LOADK                            R6 K4 ["OnSelectItems"]
       14 GETUPVAL                         R7 1
       15 MOVE                             R9 R3
       16 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       18 CALL                             R7 2 -1
       19 NAMECALL                         R4 R4 K6 ["Invoke"]
       21 CALL                             R4 -1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
       25 NAMECALL                         R3 R3 K7 ["DEPRECATED_getSelectionIdsHelper"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K2 ["PluginController"]
       30 NAMECALL                         R4 R4 K3 ["getPlugin"]
       32 CALL                             R4 1 1
       33 LOADK                            R6 K4 ["OnSelectItems"]
       34 GETUPVAL                         R7 1
       35 MOVE                             R9 R3
       36 NAMECALL                         R7 R7 K5 ["JSONEncode"]
       38 CALL                             R7 2 -1
       39 NAMECALL                         R4 R4 K6 ["Invoke"]
       41 CALL                             R4 -1 0
       42 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Asset"]
        5 JUMPIFEQ                         R0 R3 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       11 NAMECALL                         R3 R3 K3 ["selectionHasInsertableAssets"]
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+8]
        7 GETTABLEKS                       R4 R1 K0 ["ItemsController"]
        9 GETTABLEKS                       R6 R3 K2 ["Path"]
       11 NAMECALL                         R4 R4 K3 ["showItemInFolder"]
       13 CALL                             R4 2 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        8 GETTABLEKS                       R3 R3 K1 ["Asset"]
       10 JUMPIFEQ                         R0 R3 ; [+3]
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R1 K2 ["SearchController"]
       16 NAMECALL                         R3 R3 K3 ["getIsSearchInitiated"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       21 NAMECALL                         R5 R5 K5 ["getCurrentShownScope"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R5 R5 K6 ["Type"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["ScopeType"]
       29 GETTABLEKS                       R6 R6 K8 ["RecentUploads"]
       31 JUMPIFEQ                         R5 R6 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 JUMPIF                           R3 ; [+3]
       36 JUMPIF                           R4 ; [+2]
       37 LOADB                            R5 0
       38 RETURN                           R5 1
       39 GETTABLEKS                       R5 R1 K4 ["ItemsController"]
       41 NAMECALL                         R5 R5 K9 ["getSingleItemSelected"]
       43 CALL                             R5 1 1
       44 LOADB                            R6 0
       45 JUMPIFEQKNIL                     R5 ; [+22]
       47 LOADB                            R6 0
       48 GETTABLEKS                       R7 R5 K10 ["AssetType"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K10 ["AssetType"]
       53 GETTABLEKS                       R8 R8 K11 ["Place"]
       55 JUMPIFEQ                         R7 R8 ; [+12]
       57 GETTABLEKS                       R7 R5 K10 ["AssetType"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K10 ["AssetType"]
       62 GETTABLEKS                       R8 R8 K12 ["Folder"]
       64 JUMPIFNOTEQ                      R7 R8 ; [+2]
       66 LOADB                            R6 0 +1
       67 LOADB                            R6 1
       68 RETURN                           R6 1

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["clearRecent"]
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getCurrentShownScope"]
        4 CALL                             R3 1 1
        5 LOADB                            R4 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["MenuContext"]
        9 GETTABLEKS                       R5 R5 K3 ["Asset"]
       11 JUMPIFNOTEQ                      R0 R5 ; [+12]
       13 GETTABLEKS                       R5 R3 K4 ["Type"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       18 GETTABLEKS                       R6 R6 K6 ["RecentUploads"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 RETURN                           R4 1

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        2 NAMECALL                         R3 R3 K1 ["getSingleItemSelected"]
        4 CALL                             R3 1 1
        5 JUMPIFEQKNIL                     R3 ; [+9]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Utils"]
       10 GETTABLEKS                       R4 R4 K3 ["reportInBrowser"]
       12 GETTABLEKS                       R5 R3 K4 ["AssetId"]
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        6 GETTABLEKS                       R3 R3 K1 ["Asset"]
        8 JUMPIFEQ                         R0 R3 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R1 K2 ["ItemsController"]
       14 NAMECALL                         R3 R3 K3 ["getSingleItemSelected"]
       16 CALL                             R3 1 1
       17 LOADB                            R4 0
       18 JUMPIFEQKNIL                     R3 ; [+17]
       20 GETTABLEKS                       R5 R1 K2 ["ItemsController"]
       22 MOVE                             R7 R3
       23 NAMECALL                         R5 R5 K4 ["isOwnedItem"]
       25 CALL                             R5 2 1
       26 NOT                              R4 R5
       27 JUMPIFNOT                        R4 ; [+8]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R7 R3 K5 ["AssetType"]
       31 GETTABLE                         R5 R6 R7
       32 JUMPIFEQKB                       R5 TRUE ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssetManagement"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Flags"]
       40 GETTABLEKS                       R6 R6 K16 ["getFFlagAmrAssetDetailView"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETIMPORT                        R7 K5 [script]
       47 GETTABLEKS                       R7 R7 K17 ["FolderOptions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETIMPORT                        R8 K5 [script]
       54 GETTABLEKS                       R8 R8 K18 ["GeneralOptions"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R9 K5 [script]
       61 GETTABLEKS                       R9 R9 K19 ["InsertOptions"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETIMPORT                        R10 K5 [script]
       68 GETTABLEKS                       R10 R10 K20 ["PlaceManagementOptions"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETIMPORT                        R11 K5 [script]
       75 GETTABLEKS                       R11 R11 K21 ["PluginManagementOptions"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETIMPORT                        R12 K5 [script]
       82 GETTABLEKS                       R12 R12 K22 ["SidebarOptions"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETIMPORT                        R13 K5 [script]
       89 GETTABLEKS                       R13 R13 K23 ["ShareOptions"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETIMPORT                        R14 K5 [script]
       96 GETTABLEKS                       R14 R14 K24 ["getListColumnOptions"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R1 K13 ["Src"]
      103 GETTABLEKS                       R15 R15 K25 ["Util"]
      105 GETTABLEKS                       R15 R15 K26 ["isInsertable"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R16 R1 K13 ["Src"]
      112 GETTABLEKS                       R16 R16 K25 ["Util"]
      114 GETTABLEKS                       R16 R16 K27 ["openAssetConfig"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R1 K13 ["Src"]
      121 GETTABLEKS                       R17 R17 K15 ["Flags"]
      123 GETTABLEKS                       R17 R17 K28 ["getEFCinMeshVersioning"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R1 K13 ["Src"]
      130 GETTABLEKS                       R18 R18 K15 ["Flags"]
      132 GETTABLEKS                       R18 R18 K29 ["getEFImportAnimationVersions"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R1 K13 ["Src"]
      139 GETTABLEKS                       R19 R19 K15 ["Flags"]
      141 GETTABLEKS                       R19 R19 K30 ["getFFlagAmrImageVersioning"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R1 K13 ["Src"]
      148 GETTABLEKS                       R20 R20 K15 ["Flags"]
      150 GETTABLEKS                       R20 R20 K31 ["getFFlagAmrTextDocumentVersioning"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K9 [require]
      155 GETTABLEKS                       R21 R1 K13 ["Src"]
      157 GETTABLEKS                       R21 R21 K15 ["Flags"]
      159 GETTABLEKS                       R21 R21 K32 ["getFFlagAmrAddToExperience"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R1 K13 ["Src"]
      166 GETTABLEKS                       R22 R22 K15 ["Flags"]
      168 GETTABLEKS                       R22 R22 K33 ["getFFlagAmrPublishDraftAssetsOnInsert"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K9 [require]
      173 GETTABLEKS                       R23 R1 K13 ["Src"]
      175 GETTABLEKS                       R23 R23 K15 ["Flags"]
      177 GETTABLEKS                       R23 R23 K34 ["getFFlagAmrPublishInsertUsesInventoryDraftState"]
      179 CALL                             R22 1 1
      180 GETIMPORT                        R23 K9 [require]
      182 GETTABLEKS                       R24 R1 K13 ["Src"]
      184 GETTABLEKS                       R24 R24 K15 ["Flags"]
      186 GETTABLEKS                       R24 R24 K35 ["getFFlagAmrShowInFolder"]
      188 CALL                             R23 1 1
      189 GETIMPORT                        R24 K9 [require]
      191 GETTABLEKS                       R25 R1 K13 ["Src"]
      193 GETTABLEKS                       R25 R25 K15 ["Flags"]
      195 GETTABLEKS                       R25 R25 K36 ["getFFlagAmrEnablePublishOption"]
      197 CALL                             R24 1 1
      198 GETIMPORT                        R25 K9 [require]
      200 GETTABLEKS                       R26 R1 K13 ["Src"]
      202 GETTABLEKS                       R26 R26 K15 ["Flags"]
      204 GETTABLEKS                       R26 R26 K37 ["getFFlagAmrCopyVersionedUri"]
      206 CALL                             R25 1 1
      207 GETIMPORT                        R26 K9 [require]
      209 GETTABLEKS                       R27 R1 K13 ["Src"]
      211 GETTABLEKS                       R27 R27 K15 ["Flags"]
      213 GETTABLEKS                       R27 R27 K38 ["getFIntAmrPublishItemsMax"]
      215 CALL                             R26 1 1
      216 DUPCLOSURE                       R27 K39 [PROTO_0]
      217 CAPTURE                          VAL R3
      218 DUPTABLE                         R28 K47 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "AddToExperience", ["GetSubkeyArgs"], ["OnItemClicked"], ["ShouldRender"]}]
      219 DUPCLOSURE                       R29 K48 [PROTO_1]
      220 SETTABLEKS                       R29 R28 K44 ["GetSubkeyArgs"]
      222 DUPCLOSURE                       R29 K49 [PROTO_2]
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R14
      228 SETTABLEKS                       R29 R28 K45 ["OnItemClicked"]
      230 DUPCLOSURE                       R29 K50 [PROTO_3]
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R4
      233 SETTABLEKS                       R29 R28 K46 ["ShouldRender"]
      235 DUPCLOSURE                       R29 K51 [PROTO_4]
      236 DUPTABLE                         R30 K54 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Edit", ["OnItemClicked"], ["ShouldRender"], ["ShouldDisable"]}]
      237 DUPCLOSURE                       R31 K55 [PROTO_5]
      238 CAPTURE                          VAL R15
      239 SETTABLEKS                       R31 R30 K45 ["OnItemClicked"]
      241 DUPCLOSURE                       R31 K56 [PROTO_6]
      242 CAPTURE                          VAL R4
      243 SETTABLEKS                       R31 R30 K46 ["ShouldRender"]
      245 DUPCLOSURE                       R31 K57 [PROTO_7]
      246 SETTABLEKS                       R31 R30 K53 ["ShouldDisable"]
      248 DUPTABLE                         R31 K59 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "Publish", ["OnItemClicked"], ["ShouldRender"]}]
      249 DUPCLOSURE                       R32 K60 [PROTO_8]
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R4
      252 SETTABLEKS                       R32 R31 K45 ["OnItemClicked"]
      254 DUPCLOSURE                       R32 K61 [PROTO_9]
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R26
      258 SETTABLEKS                       R32 R31 K46 ["ShouldRender"]
      260 DUPTABLE                         R32 K63 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ImportAssetVersion", ["OnItemClicked"], ["ShouldRender"]}]
      261 DUPCLOSURE                       R33 K64 [PROTO_10]
      262 SETTABLEKS                       R33 R32 K45 ["OnItemClicked"]
      264 DUPCLOSURE                       R33 K65 [PROTO_11]
      265 CAPTURE                          VAL R16
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R18
      268 CAPTURE                          VAL R17
      269 CAPTURE                          VAL R19
      270 SETTABLEKS                       R33 R32 K46 ["ShouldRender"]
      272 DUPTABLE                         R33 K67 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "FindInExplorer", ["OnItemClicked"], ["ShouldRender"]}]
      273 DUPCLOSURE                       R34 K68 [PROTO_12]
      274 CAPTURE                          VAL R25
      275 CAPTURE                          VAL R0
      276 SETTABLEKS                       R34 R33 K45 ["OnItemClicked"]
      278 DUPCLOSURE                       R34 K69 [PROTO_13]
      279 CAPTURE                          VAL R4
      280 SETTABLEKS                       R34 R33 K46 ["ShouldRender"]
      282 DUPTABLE                         R34 K71 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ShowInFolder", ["OnItemClicked"], ["ShouldRender"]}]
      283 DUPCLOSURE                       R35 K72 [PROTO_14]
      284 SETTABLEKS                       R35 R34 K45 ["OnItemClicked"]
      286 DUPCLOSURE                       R35 K73 [PROTO_15]
      287 CAPTURE                          VAL R23
      288 CAPTURE                          VAL R4
      289 SETTABLEKS                       R35 R34 K46 ["ShouldRender"]
      291 DUPTABLE                         R35 K75 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "ClearRecent", ["OnItemClicked"], ["ShouldRender"]}]
      292 DUPCLOSURE                       R36 K76 [PROTO_16]
      293 SETTABLEKS                       R36 R35 K45 ["OnItemClicked"]
      295 DUPCLOSURE                       R36 K77 [PROTO_17]
      296 CAPTURE                          VAL R4
      297 SETTABLEKS                       R36 R35 K46 ["ShouldRender"]
      299 NEWTABLE                         R36 16 0
      301 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      303 GETTABLEKS                       R37 R37 K79 ["Animation"]
      305 LOADB                            R38 1
      306 SETTABLE                         R38 R36 R37
      307 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      309 GETTABLEKS                       R37 R37 K80 ["Audio"]
      311 LOADB                            R38 1
      312 SETTABLE                         R38 R36 R37
      313 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      315 GETTABLEKS                       R37 R37 K81 ["Decal"]
      317 LOADB                            R38 1
      318 SETTABLE                         R38 R36 R37
      319 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      321 GETTABLEKS                       R37 R37 K82 ["FontFamily"]
      323 LOADB                            R38 1
      324 SETTABLE                         R38 R36 R37
      325 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      327 GETTABLEKS                       R37 R37 K83 ["Image"]
      329 LOADB                            R38 1
      330 SETTABLE                         R38 R36 R37
      331 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      333 GETTABLEKS                       R37 R37 K84 ["Mesh"]
      335 LOADB                            R38 1
      336 SETTABLE                         R38 R36 R37
      337 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      339 GETTABLEKS                       R37 R37 K85 ["MeshPart"]
      341 LOADB                            R38 1
      342 SETTABLE                         R38 R36 R37
      343 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      345 GETTABLEKS                       R37 R37 K86 ["Model"]
      347 LOADB                            R38 1
      348 SETTABLE                         R38 R36 R37
      349 GETTABLEKS                       R37 R4 K78 ["AssetType"]
      351 GETTABLEKS                       R37 R37 K87 ["Video"]
      353 LOADB                            R38 1
      354 SETTABLE                         R38 R36 R37
      355 DUPTABLE                         R37 K89 [{["TextKey"] = "ContextMenu", ["TextSubKey"] = "PluginReport", ["OnItemClicked"], ["ShouldRender"]}]
      356 DUPCLOSURE                       R38 K90 [PROTO_18]
      357 CAPTURE                          VAL R2
      358 SETTABLEKS                       R38 R37 K45 ["OnItemClicked"]
      360 DUPCLOSURE                       R38 K91 [PROTO_19]
      361 CAPTURE                          VAL R5
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R36
      364 SETTABLEKS                       R38 R37 K46 ["ShouldRender"]
      366 NEWTABLE                         R38 0 5
      368 MOVE                             R39 R6
      369 GETTABLEKS                       R40 R3 K92 ["append"]
      371 MOVE                             R41 R9
      372 MOVE                             R42 R10
      373 MOVE                             R43 R11
      374 NEWTABLE                         R44 0 1
      376 MOVE                             R45 R28
      377 SETLIST                          R44 R45 1 [1]
      379 MOVE                             R45 R8
      380 NEWTABLE                         R46 0 1
      382 MOVE                             R47 R30
      383 SETLIST                          R46 R47 1 [1]
      385 NEWTABLE                         R47 0 1
      387 MOVE                             R48 R31
      388 SETLIST                          R47 R48 1 [1]
      390 MOVE                             R48 R12
      391 NEWTABLE                         R49 0 1
      393 MOVE                             R50 R33
      394 SETLIST                          R49 R50 1 [1]
      396 NEWTABLE                         R50 0 1
      398 MOVE                             R51 R34
      399 SETLIST                          R50 R51 1 [1]
      401 NEWTABLE                         R51 0 1
      403 MOVE                             R52 R32
      404 SETLIST                          R51 R52 1 [1]
      406 NEWTABLE                         R52 0 1
      408 MOVE                             R53 R37
      409 SETLIST                          R52 R53 1 [1]
      411 CALL                             R40 12 1
      412 MOVE                             R41 R7
      413 NEWTABLE                         R42 0 1
      415 MOVE                             R43 R35
      416 SETLIST                          R42 R43 1 [1]
      418 MOVE                             R43 R13
      419 CALL                             R43 0 -1
      420 SETLIST                          R38 R39 -1 [1]
      422 RETURN                           R38 1
