PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetSearch"]
        2 LOADK                            R3 K1 ["Searching"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 JUMPIFEQKS                       R1 K3 [""] ; [+12]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["AssetSearch"]
       11 LOADK                            R4 K4 ["SearchingWithQuery"]
       12 DUPTABLE                         R5 K6 [{"query"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K5 ["query"]
       16 NAMECALL                         R1 R1 K2 ["getText"]
       18 CALL                             R1 4 1
       19 MOVE                             R0 R1
       20 DUPTABLE                         R1 K10 [{"FailedToSearch", "Preparing", "Searching", "ToolCallRejected"}]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K0 ["AssetSearch"]
       23 LOADK                            R5 K7 ["FailedToSearch"]
       24 NAMECALL                         R2 R2 K2 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K7 ["FailedToSearch"]
       29 GETUPVAL                         R2 0
       30 LOADK                            R4 K0 ["AssetSearch"]
       31 LOADK                            R5 K8 ["Preparing"]
       32 NAMECALL                         R2 R2 K2 ["getText"]
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K8 ["Preparing"]
       37 SETTABLEKS                       R0 R1 K1 ["Searching"]
       39 GETUPVAL                         R2 0
       40 LOADK                            R4 K11 ["ToolConfirmation"]
       41 LOADK                            R5 K9 ["ToolCallRejected"]
       42 DUPTABLE                         R6 K13 [{"toolName"}]
       43 GETUPVAL                         R7 2
       44 SETTABLEKS                       R7 R6 K12 ["toolName"]
       46 NAMECALL                         R2 R2 K2 ["getText"]
       48 CALL                             R2 4 1
       49 SETTABLEKS                       R2 R1 K9 ["ToolCallRejected"]
       51 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K4 ["input"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R6 R4 K5 ["query"]
       16 ORK                              R5 R6 K3 [""]
       17 GETTABLEKS                       R6 R4 K6 ["assetType"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R7 R2 K7 ["structuredContent"]
       22 JUMPIF                           R7 ; [+1]
       23 LOADNIL                          R7
       24 JUMPIFNOT                        R6 ; [+3]
       25 GETUPVAL                         R9 1
       26 GETTABLE                         R8 R9 R6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 GETUPVAL                         R9 2
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R12 0 3
       41 GETUPVAL                         R13 4
       42 GETTABLEKS                       R13 R13 K9 ["locale"]
       44 MOVE                             R14 R5
       45 MOVE                             R15 R3
       46 SETLIST                          R12 R13 3 [1]
       48 CALL                             R10 2 1
       49 LOADB                            R11 1
       50 LOADNIL                          R12
       51 JUMPIFNOT                        R2 ; [+19]
       52 LOADB                            R11 0
       53 JUMPIFNOT                        R7 ; [+6]
       54 GETTABLEKS                       R13 R7 K10 ["rejected"]
       56 JUMPIFNOT                        R13 ; [+3]
       57 GETTABLEKS                       R12 R10 K11 ["ToolCallRejected"]
       59 JUMP                             ; [+17]
       60 JUMPIFNOT                        R7 ; [+7]
       61 GETTABLEKS                       R13 R7 K12 ["pending"]
       63 JUMPIFNOT                        R13 ; [+4]
       64 LOADB                            R11 1
       65 GETTABLEKS                       R12 R10 K13 ["Searching"]
       67 JUMP                             ; [+9]
       68 GETTABLEKS                       R12 R10 K14 ["FailedToSearch"]
       70 JUMP                             ; [+6]
       71 JUMPIFNOT                        R1 ; [+3]
       72 GETTABLEKS                       R12 R10 K13 ["Searching"]
       74 JUMP                             ; [+2]
       75 GETTABLEKS                       R12 R10 K15 ["Preparing"]
       77 GETUPVAL                         R13 5
       78 CALL                             R13 0 1
       79 GETUPVAL                         R14 6
       80 GETUPVAL                         R15 7
       81 GETTABLEKS                       R15 R15 K16 ["Root"]
       83 DUPTABLE                         R16 K22 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       84 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
       86 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       88 GETTABLEKS                       R17 R0 K20 ["contentId"]
       90 SETTABLEKS                       R17 R16 K20 ["contentId"]
       92 GETTABLEKS                       R17 R0 K21 ["editThisContent"]
       94 SETTABLEKS                       R17 R16 K21 ["editThisContent"]
       96 DUPTABLE                         R17 K24 [{"Header"}]
       97 GETUPVAL                         R18 6
       98 GETUPVAL                         R19 7
       99 GETTABLEKS                       R19 R19 K23 ["Header"]
      101 DUPTABLE                         R20 K28 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
      102 MOVE                             R21 R13
      103 CALL                             R21 0 1
      104 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      106 GETUPVAL                         R21 8
      107 GETTABLEKS                       R21 R21 K29 ["AssetSearch"]
      109 GETTABLEKS                       R21 R21 K30 ["Expand"]
      111 SETTABLEKS                       R21 R20 K27 ["testId"]
      113 DUPTABLE                         R21 K33 [{"TypeIcon", "Text"}]
      114 LOADB                            R22 0
      115 GETTABLEKS                       R23 R9 K34 ["Image"]
      117 JUMPIFEQKS                       R23 K3 [""] ; [+21]
      119 GETUPVAL                         R22 6
      120 GETUPVAL                         R23 9
      121 DUPTABLE                         R24 K39 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      122 GETTABLEKS                       R25 R9 K34 ["Image"]
      124 SETTABLEKS                       R25 R24 K34 ["Image"]
      126 GETTABLEKS                       R25 R9 K37 ["ImageRectOffset"]
      128 SETTABLEKS                       R25 R24 K37 ["ImageRectOffset"]
      130 GETTABLEKS                       R25 R9 K38 ["ImageRectSize"]
      132 SETTABLEKS                       R25 R24 K38 ["ImageRectSize"]
      134 MOVE                             R25 R13
      135 CALL                             R25 0 1
      136 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      138 CALL                             R22 2 1
      139 SETTABLEKS                       R22 R21 K31 ["TypeIcon"]
      141 GETUPVAL                         R22 6
      142 GETUPVAL                         R23 10
      143 DUPTABLE                         R24 K41 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      144 SETTABLEKS                       R12 R24 K32 ["Text"]
      146 MOVE                             R25 R13
      147 CALL                             R25 0 1
      148 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      150 DUPTABLE                         R25 K43 [{"Shimmer"}]
      151 JUMPIFNOT                        R11 ; [+4]
      152 GETUPVAL                         R26 6
      153 GETUPVAL                         R27 11
      154 CALL                             R26 1 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R26
      157 SETTABLEKS                       R26 R25 K42 ["Shimmer"]
      159 CALL                             R22 3 1
      160 SETTABLEKS                       R22 R21 K32 ["Text"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K23 ["Header"]
      165 CALL                             R14 3 -1
      166 RETURN                           R14 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetAsync"]
        3 DUPTABLE                         R1 K4 [{"assetId", "assetName", "assetType"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["assetId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K5 ["name"]
       10 SETTABLEKS                       R2 R1 K2 ["assetName"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["assetType"]
       15 SETTABLEKS                       R2 R1 K3 ["assetType"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["isFree"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+27]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["get"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+20]
        9 GETTABLEKS                       R2 R1 K2 ["http"]
       11 JUMPIFNOT                        R2 ; [+17]
       12 GETTABLEKS                       R2 R1 K2 ["http"]
       14 GETTABLEKS                       R2 R2 K3 ["openUrl"]
       16 JUMPIFNOT                        R2 ; [+12]
       17 GETTABLEKS                       R2 R1 K2 ["http"]
       19 GETTABLEKS                       R2 R2 K3 ["openUrl"]
       21 LOADK                            R4 K4 ["https://create.roblox.com/store/asset/%*"]
       22 GETTABLEKS                       R6 R0 K5 ["assetId"]
       24 NAMECALL                         R4 R4 K6 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 CALL                             R2 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 1
       31 JUMPIF                           R1 ; [+1]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K5 ["assetId"]
       35 JUMPIF                           R1 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantAssetSearchDirectInsert"]
       40 JUMPIFNOT                        R2 ; [+13]
       41 GETUPVAL                         R2 3
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          VAL R1
       44 CALL                             R2 1 0
       45 GETIMPORT                        R2 K10 [task.spawn]
       47 NEWCLOSURE                       R3 P1
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 CALL                             R2 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R2 4
       55 GETTABLEKS                       R2 R2 K11 ["sendMessage"]
       57 DUPTABLE                         R3 K15 [{["text"], ["hidden"] = True}]
       58 LOADK                            R5 K16 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       59 GETTABLEKS                       R7 R0 K5 ["assetId"]
       61 GETTABLEKS                       R8 R0 K17 ["name"]
       63 GETTABLEKS                       R9 R0 K18 ["assetType"]
       65 NAMECALL                         R5 R5 K6 ["format"]
       67 CALL                             R5 4 1
       68 MOVE                             R4 R5
       69 SETTABLEKS                       R4 R3 K12 ["text"]
       71 CALL                             R2 1 0
       72 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+12]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AssetSearch"]
        5 LOADK                            R3 K2 ["FoundSingularWithQuery"]
        6 DUPTABLE                         R4 K4 [{"query"}]
        7 GETUPVAL                         R5 2
        8 SETTABLEKS                       R5 R4 K3 ["query"]
       10 NAMECALL                         R0 R0 K5 ["getText"]
       12 CALL                             R0 4 1
       13 JUMP                             ; [+13]
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K1 ["AssetSearch"]
       16 LOADK                            R3 K6 ["FoundWithQuery"]
       17 DUPTABLE                         R4 K8 [{"count", "query"}]
       18 GETUPVAL                         R5 0
       19 SETTABLEKS                       R5 R4 K7 ["count"]
       21 GETUPVAL                         R5 2
       22 SETTABLEKS                       R5 R4 K3 ["query"]
       24 NAMECALL                         R0 R0 K5 ["getText"]
       26 CALL                             R0 4 1
       27 DUPTABLE                         R1 K20 [{"Found", "SourceMine", "SourceGroup", "SourceGame", "SourceFolder", "SourceInventory", "SourceStore", "SourceFree", "NoResults", "ClickToInsertOrPurchase", "ClickToInsert"}]
       28 SETTABLEKS                       R0 R1 K9 ["Found"]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K1 ["AssetSearch"]
       32 LOADK                            R5 K10 ["SourceMine"]
       33 NAMECALL                         R2 R2 K5 ["getText"]
       35 CALL                             R2 3 1
       36 SETTABLEKS                       R2 R1 K10 ["SourceMine"]
       38 GETUPVAL                         R2 1
       39 LOADK                            R4 K1 ["AssetSearch"]
       40 LOADK                            R5 K11 ["SourceGroup"]
       41 NAMECALL                         R2 R2 K5 ["getText"]
       43 CALL                             R2 3 1
       44 SETTABLEKS                       R2 R1 K11 ["SourceGroup"]
       46 GETUPVAL                         R2 1
       47 LOADK                            R4 K1 ["AssetSearch"]
       48 LOADK                            R5 K12 ["SourceGame"]
       49 NAMECALL                         R2 R2 K5 ["getText"]
       51 CALL                             R2 3 1
       52 SETTABLEKS                       R2 R1 K12 ["SourceGame"]
       54 GETUPVAL                         R2 1
       55 LOADK                            R4 K1 ["AssetSearch"]
       56 LOADK                            R5 K13 ["SourceFolder"]
       57 NAMECALL                         R2 R2 K5 ["getText"]
       59 CALL                             R2 3 1
       60 SETTABLEKS                       R2 R1 K13 ["SourceFolder"]
       62 GETUPVAL                         R2 1
       63 LOADK                            R4 K1 ["AssetSearch"]
       64 LOADK                            R5 K14 ["SourceInventory"]
       65 NAMECALL                         R2 R2 K5 ["getText"]
       67 CALL                             R2 3 1
       68 SETTABLEKS                       R2 R1 K14 ["SourceInventory"]
       70 GETUPVAL                         R2 1
       71 LOADK                            R4 K1 ["AssetSearch"]
       72 LOADK                            R5 K15 ["SourceStore"]
       73 NAMECALL                         R2 R2 K5 ["getText"]
       75 CALL                             R2 3 1
       76 SETTABLEKS                       R2 R1 K15 ["SourceStore"]
       78 GETUPVAL                         R2 1
       79 LOADK                            R4 K1 ["AssetSearch"]
       80 LOADK                            R5 K16 ["SourceFree"]
       81 NAMECALL                         R2 R2 K5 ["getText"]
       83 CALL                             R2 3 1
       84 SETTABLEKS                       R2 R1 K16 ["SourceFree"]
       86 GETUPVAL                         R2 1
       87 LOADK                            R4 K1 ["AssetSearch"]
       88 LOADK                            R5 K17 ["NoResults"]
       89 NAMECALL                         R2 R2 K5 ["getText"]
       91 CALL                             R2 3 1
       92 SETTABLEKS                       R2 R1 K17 ["NoResults"]
       94 GETUPVAL                         R2 1
       95 LOADK                            R4 K1 ["AssetSearch"]
       96 LOADK                            R5 K18 ["ClickToInsertOrPurchase"]
       97 NAMECALL                         R2 R2 K5 ["getText"]
       99 CALL                             R2 3 1
      100 SETTABLEKS                       R2 R1 K18 ["ClickToInsertOrPurchase"]
      102 GETUPVAL                         R2 1
      103 LOADK                            R4 K1 ["AssetSearch"]
      104 LOADK                            R5 K19 ["ClickToInsert"]
      105 NAMECALL                         R2 R2 K5 ["getText"]
      107 CALL                             R2 3 1
      108 SETTABLEKS                       R2 R1 K19 ["ClickToInsert"]
      110 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Inventory"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+60]
        7 GETTABLEKS                       R1 R0 K2 ["location"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["User"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K4 ["SourceMine"]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K2 ["location"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K5 ["Group"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+16]
       25 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       27 JUMPIFEQKNIL                     R1 ; [+8]
       29 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       31 JUMPIFEQKS                       R1 K7 [""] ; [+4]
       33 GETTABLEKS                       R1 R0 K6 ["creatorName"]
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K8 ["SourceGroup"]
       39 RETURN                           R1 1
       40 GETTABLEKS                       R1 R0 K2 ["location"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K9 ["Universe"]
       45 JUMPIFNOTEQ                      R1 R2 ; [+5]
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K10 ["SourceGame"]
       50 RETURN                           R1 1
       51 GETTABLEKS                       R1 R0 K2 ["location"]
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K11 ["Folder"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+5]
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K12 ["SourceFolder"]
       61 RETURN                           R1 1
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K13 ["SourceInventory"]
       65 RETURN                           R1 1
       66 GETTABLEKS                       R1 R0 K0 ["source"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K14 ["CreatorStore"]
       71 JUMPIFNOTEQ                      R1 R2 ; [+18]
       73 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       75 JUMPIFNOT                        R1 ; [+3]
       76 GETTABLEKS                       R1 R0 K15 ["priceLabel"]
       78 RETURN                           R1 1
       79 GETTABLEKS                       R1 R0 K16 ["isFree"]
       81 JUMPIFNOT                        R1 ; [+4]
       82 GETUPVAL                         R1 2
       83 GETTABLEKS                       R1 R1 K17 ["SourceFree"]
       85 RETURN                           R1 1
       86 GETUPVAL                         R1 2
       87 GETTABLEKS                       R1 R1 K18 ["SourceStore"]
       89 RETURN                           R1 1
       90 LOADK                            R1 K7 [""]
       91 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R8 R5 K1 ["assetId"]
       11 ORK                              R7 R8 K0 [""]
       12 GETUPVAL                         R10 2
       13 GETTABLE                         R9 R10 R7
       14 JUMPIFEQKB                       R9 TRUE ; [+2]
       16 LOADB                            R8 0 +1
       17 LOADB                            R8 1
       18 LOADK                            R10 K2 ["Item-%*"]
       19 MOVE                             R12 R4
       20 NAMECALL                         R10 R10 K3 ["format"]
       22 CALL                             R10 2 1
       23 MOVE                             R9 R10
       24 GETUPVAL                         R10 3
       25 GETUPVAL                         R11 4
       26 DUPTABLE                         R12 K8 [{["tag"] = "col align-x-center gap-xxsmall auto-y", ["Size"], ["LayoutOrder"]}]
       27 GETIMPORT                        R13 K11 [UDim2.fromOffset]
       29 LOADN                            R14 70
       30 LOADN                            R15 0
       31 CALL                             R13 2 1
       32 SETTABLEKS                       R13 R12 K6 ["Size"]
       34 SETTABLEKS                       R4 R12 K7 ["LayoutOrder"]
       36 DUPTABLE                         R13 K14 [{"Tile", "Label"}]
       37 GETUPVAL                         R14 3
       38 GETUPVAL                         R15 4
       39 DUPTABLE                         R16 K18 [{["tag"] = "radius-small bg-shift-300 padding-xxsmall", ["Size"], ["onActivated"], ["testId"]}]
       40 GETIMPORT                        R17 K11 [UDim2.fromOffset]
       42 LOADN                            R18 70
       43 LOADN                            R19 70
       44 CALL                             R17 2 1
       45 SETTABLEKS                       R17 R16 K6 ["Size"]
       47 NEWCLOSURE                       R17 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R17 R16 K16 ["onActivated"]
       53 GETUPVAL                         R17 6
       54 GETTABLEKS                       R17 R17 K19 ["AssetSearch"]
       56 GETTABLEKS                       R17 R17 K12 ["Tile"]
       58 SETTABLEKS                       R17 R16 K17 ["testId"]
       60 DUPTABLE                         R17 K22 [{"Image", "InsertingOverlay"}]
       61 GETUPVAL                         R18 3
       62 GETUPVAL                         R19 7
       63 DUPTABLE                         R20 K24 [{["tag"] = "position-center-center anchor-center-center size-full-full radius-small", ["Image"]}]
       64 LOADK                            R22 K25 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       65 MOVE                             R24 R7
       66 NAMECALL                         R22 R22 K3 ["format"]
       68 CALL                             R22 2 1
       69 MOVE                             R21 R22
       70 SETTABLEKS                       R21 R20 K20 ["Image"]
       72 CALL                             R18 2 1
       73 SETTABLEKS                       R18 R17 K20 ["Image"]
       75 MOVE                             R18 R8
       76 JUMPIFNOT                        R18 ; [+10]
       77 GETUPVAL                         R18 3
       78 GETUPVAL                         R19 4
       79 DUPTABLE                         R20 K31 [{["tag"] = "size-full-full position-center-center anchor-center-center radius-small bg-shift-300", ["BackgroundTransparency"] = 0.4, ["ZIndex"] = 2}]
       80 DUPTABLE                         R21 K33 [{"Shimmer"}]
       81 GETUPVAL                         R22 3
       82 GETUPVAL                         R23 8
       83 CALL                             R22 1 1
       84 SETTABLEKS                       R22 R21 K32 ["Shimmer"]
       86 CALL                             R18 3 1
       87 SETTABLEKS                       R18 R17 K21 ["InsertingOverlay"]
       89 CALL                             R14 3 1
       90 SETTABLEKS                       R14 R13 K12 ["Tile"]
       92 LOADB                            R14 0
       93 JUMPIFEQKS                       R6 K0 [""] ; [+7]
       95 GETUPVAL                         R14 3
       96 GETUPVAL                         R15 9
       97 DUPTABLE                         R16 K36 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-center text-truncate-end content-muted", ["Text"]}]
       98 SETTABLEKS                       R6 R16 K35 ["Text"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K13 ["Label"]
      103 CALL                             R10 3 1
      104 SETTABLE                         R10 R0 R9
      105 FORGLOOP                         R1 2 ; [-100]
      107 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = True, ["HorizontalScrollBarInset"], ["VerticalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K14 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K17 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 LOADN                            R3 70
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       16 GETIMPORT                        R1 K18 [Enum.ScrollingDirection.X]
       18 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       20 GETIMPORT                        R1 K21 [Enum.ScrollBarInset.ScrollBar]
       22 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       24 GETIMPORT                        R1 K23 [Enum.ScrollBarInset.None]
       26 SETTABLEKS                       R1 R0 K7 ["VerticalScrollBarInset"]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K24 ["Enums"]
       31 GETTABLEKS                       R1 R1 K25 ["Visibility"]
       33 GETTABLEKS                       R1 R1 K26 ["Auto"]
       35 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       37 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R3 K4 ["query"]
       11 ORK                              R4 R5 K3 [""]
       12 GETTABLEKS                       R5 R3 K5 ["assetType"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       17 JUMPIF                           R6 ; [+1]
       18 LOADNIL                          R6
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETTABLEKS                       R7 R6 K7 ["results"]
       22 JUMPIF                           R7 ; [+2]
       23 NEWTABLE                         R7 0 0
       25 JUMPIFNOT                        R6 ; [+3]
       26 GETTABLEKS                       R8 R6 K8 ["resultCount"]
       28 JUMPIF                           R8 ; [+1]
       29 LENGTH                           R8 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K9 ["useContext"]
       33 GETUPVAL                         R10 2
       34 GETTABLEKS                       R10 R10 K10 ["Context"]
       36 CALL                             R9 1 1
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K11 ["useState"]
       40 NEWTABLE                         R11 0 0
       42 CALL                             R10 1 2
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       46 NEWCLOSURE                       R13 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R9
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R11
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R14 0 2
       54 MOVE                             R15 R9
       55 GETTABLEKS                       R16 R0 K13 ["sendMessage"]
       57 SETLIST                          R14 R15 2 [1]
       59 CALL                             R12 2 1
       60 GETUPVAL                         R13 1
       61 GETTABLEKS                       R13 R13 K14 ["useMemo"]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R15 0 3
       69 GETUPVAL                         R16 5
       70 GETTABLEKS                       R16 R16 K15 ["locale"]
       72 MOVE                             R17 R8
       73 MOVE                             R18 R4
       74 SETLIST                          R15 R16 3 [1]
       76 CALL                             R13 2 1
       77 NEWCLOSURE                       R14 P2
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R13
       81 LOADB                            R15 0
       82 MOVE                             R16 R7
       83 LOADNIL                          R17
       84 LOADNIL                          R18
       85 FORGPREP                         R16
       86 GETTABLEKS                       R21 R20 K16 ["isFree"]
       88 JUMPIFNOTEQKB                    R21 FALSE ; [+3]
       90 LOADB                            R15 1
       91 JUMP                             ; [+2]
       92 FORGLOOP                         R16 2 ; [-7]
       94 LENGTH                           R17 R7
       95 LOADN                            R18 0
       96 JUMPIFLT                         R18 R17 ; [+2]
       98 LOADB                            R16 0 +1
       99 LOADB                            R16 1
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K14 ["useMemo"]
      103 NEWCLOSURE                       R18 P3
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          UPVAL U13
      114 NEWTABLE                         R19 0 3
      116 MOVE                             R20 R7
      117 MOVE                             R21 R12
      118 MOVE                             R22 R10
      119 SETLIST                          R19 R20 3 [1]
      121 CALL                             R17 2 1
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R18 R18 K14 ["useMemo"]
      125 DUPCLOSURE                       R19 K17 [PROTO_11]
      126 CAPTURE                          UPVAL U14
      127 NEWTABLE                         R20 0 0
      129 CALL                             R18 2 1
      130 JUMPIFNOT                        R5 ; [+3]
      131 GETUPVAL                         R20 15
      132 GETTABLE                         R19 R20 R5
      133 JUMP                             ; [+1]
      134 LOADNIL                          R19
      135 GETUPVAL                         R20 16
      136 MOVE                             R21 R19
      137 CALL                             R20 1 1
      138 GETUPVAL                         R21 17
      139 CALL                             R21 0 1
      140 GETUPVAL                         R22 8
      141 GETUPVAL                         R23 18
      142 GETTABLEKS                       R23 R23 K18 ["Root"]
      144 DUPTABLE                         R24 K23 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      145 GETTABLEKS                       R25 R0 K19 ["LayoutOrder"]
      147 SETTABLEKS                       R25 R24 K19 ["LayoutOrder"]
      149 GETTABLEKS                       R25 R0 K20 ["expanded"]
      151 SETTABLEKS                       R25 R24 K20 ["expanded"]
      153 GETTABLEKS                       R25 R0 K21 ["contentId"]
      155 SETTABLEKS                       R25 R24 K21 ["contentId"]
      157 GETTABLEKS                       R25 R0 K22 ["editThisContent"]
      159 SETTABLEKS                       R25 R24 K22 ["editThisContent"]
      161 DUPTABLE                         R25 K26 [{"Header", "Content"}]
      162 GETUPVAL                         R26 8
      163 GETUPVAL                         R27 18
      164 GETTABLEKS                       R27 R27 K24 ["Header"]
      166 DUPTABLE                         R28 K28 [{"LayoutOrder", "testId"}]
      167 MOVE                             R29 R21
      168 CALL                             R29 0 1
      169 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      171 GETUPVAL                         R29 10
      172 GETTABLEKS                       R29 R29 K29 ["AssetSearch"]
      174 GETTABLEKS                       R29 R29 K30 ["Expand"]
      176 SETTABLEKS                       R29 R28 K27 ["testId"]
      178 DUPTABLE                         R29 K33 [{"TypeIcon", "Text"}]
      179 LOADB                            R30 0
      180 GETTABLEKS                       R31 R20 K34 ["Image"]
      182 JUMPIFEQKS                       R31 K3 [""] ; [+21]
      184 GETUPVAL                         R30 8
      185 GETUPVAL                         R31 11
      186 DUPTABLE                         R32 K39 [{["tag"] = "size-400-400 radius-small", ["Image"], ["ImageRectOffset"], ["ImageRectSize"], ["LayoutOrder"]}]
      187 GETTABLEKS                       R33 R20 K34 ["Image"]
      189 SETTABLEKS                       R33 R32 K34 ["Image"]
      191 GETTABLEKS                       R33 R20 K37 ["ImageRectOffset"]
      193 SETTABLEKS                       R33 R32 K37 ["ImageRectOffset"]
      195 GETTABLEKS                       R33 R20 K38 ["ImageRectSize"]
      197 SETTABLEKS                       R33 R32 K38 ["ImageRectSize"]
      199 MOVE                             R33 R21
      200 CALL                             R33 0 1
      201 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      203 CALL                             R30 2 1
      204 SETTABLEKS                       R30 R29 K31 ["TypeIcon"]
      206 GETUPVAL                         R30 8
      207 GETUPVAL                         R31 13
      208 DUPTABLE                         R32 K41 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      209 GETTABLEKS                       R33 R13 K42 ["Found"]
      211 SETTABLEKS                       R33 R32 K32 ["Text"]
      213 MOVE                             R33 R21
      214 CALL                             R33 0 1
      215 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      217 CALL                             R30 2 1
      218 SETTABLEKS                       R30 R29 K32 ["Text"]
      220 CALL                             R26 3 1
      221 SETTABLEKS                       R26 R25 K24 ["Header"]
      223 GETUPVAL                         R26 8
      224 GETUPVAL                         R27 18
      225 GETTABLEKS                       R27 R27 K25 ["Content"]
      227 DUPTABLE                         R28 K44 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      228 MOVE                             R29 R21
      229 CALL                             R29 0 1
      230 SETTABLEKS                       R29 R28 K19 ["LayoutOrder"]
      232 DUPTABLE                         R29 K48 [{"MainCarousel", "NoResults", "ClickHint"}]
      233 MOVE                             R30 R16
      234 JUMPIFNOT                        R30 ; [+32]
      235 GETUPVAL                         R30 8
      236 GETUPVAL                         R31 19
      237 DUPTABLE                         R32 K51 [{["tag"] = "size-full-0 auto-y", ["testId"], ["scroll"], ["LayoutOrder"]}]
      238 GETUPVAL                         R33 10
      239 GETTABLEKS                       R33 R33 K52 ["Carousel"]
      241 GETTABLEKS                       R33 R33 K18 ["Root"]
      243 SETTABLEKS                       R33 R32 K27 ["testId"]
      245 SETTABLEKS                       R18 R32 K50 ["scroll"]
      247 MOVE                             R33 R21
      248 CALL                             R33 0 1
      249 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      251 DUPTABLE                         R33 K54 [{"Container"}]
      252 GETUPVAL                         R34 8
      253 GETUPVAL                         R35 9
      254 DUPTABLE                         R36 K56 [{["tag"] = "row gap-small auto-xy padding-bottom-xsmall", ["testId"]}]
      255 GETUPVAL                         R37 10
      256 GETTABLEKS                       R37 R37 K52 ["Carousel"]
      258 GETTABLEKS                       R37 R37 K53 ["Container"]
      260 SETTABLEKS                       R37 R36 K27 ["testId"]
      262 MOVE                             R37 R17
      263 CALL                             R34 3 1
      264 SETTABLEKS                       R34 R33 K53 ["Container"]
      266 CALL                             R30 3 1
      267 SETTABLEKS                       R30 R29 K45 ["MainCarousel"]
      269 NOT                              R30 R16
      270 JUMPIFNOT                        R30 ; [+12]
      271 GETUPVAL                         R30 8
      272 GETUPVAL                         R31 13
      273 DUPTABLE                         R32 K58 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      274 GETTABLEKS                       R33 R13 K46 ["NoResults"]
      276 SETTABLEKS                       R33 R32 K32 ["Text"]
      278 MOVE                             R33 R21
      279 CALL                             R33 0 1
      280 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      282 CALL                             R30 2 1
      283 SETTABLEKS                       R30 R29 K46 ["NoResults"]
      285 MOVE                             R30 R16
      286 JUMPIFNOT                        R30 ; [+16]
      287 GETUPVAL                         R30 8
      288 GETUPVAL                         R31 13
      289 DUPTABLE                         R32 K58 [{["tag"] = "size-0-0 auto-xy text-body-small content-muted", ["Text"], ["LayoutOrder"]}]
      290 JUMPIFNOT                        R15 ; [+3]
      291 GETTABLEKS                       R33 R13 K59 ["ClickToInsertOrPurchase"]
      293 JUMP                             ; [+2]
      294 GETTABLEKS                       R33 R13 K60 ["ClickToInsert"]
      296 SETTABLEKS                       R33 R32 K32 ["Text"]
      298 MOVE                             R33 R21
      299 CALL                             R33 0 1
      300 SETTABLEKS                       R33 R32 K19 ["LayoutOrder"]
      302 CALL                             R30 2 1
      303 SETTABLEKS                       R30 R29 K47 ["ClickHint"]
      305 CALL                             R26 3 1
      306 SETTABLEKS                       R26 R25 K25 ["Content"]
      308 CALL                             R22 3 -1
      309 RETURN                           R22 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+14]
        9 GETTABLEKS                       R4 R1 K2 ["isError"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+10]
       13 LOADB                            R3 0
       14 JUMPIFEQKNIL                     R2 ; [+8]
       16 GETTABLEKS                       R4 R2 K3 ["pending"]
       18 NOT                              R3 R4
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R4 R2 K4 ["rejected"]
       22 NOT                              R3 R4
       23 JUMPIFNOT                        R3 ; [+28]
       24 GETTABLEKS                       R5 R0 K5 ["toolUse"]
       26 JUMPIFNOT                        R5 ; [+5]
       27 GETTABLEKS                       R4 R0 K5 ["toolUse"]
       29 GETTABLEKS                       R4 R4 K6 ["input"]
       31 JUMPIF                           R4 ; [+1]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R6 R4 K8 ["query"]
       35 ORK                              R5 R6 K7 [""]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETTABLEKS                       R6 R2 K9 ["resultCount"]
       39 JUMPIF                           R6 ; [+1]
       40 LOADN                            R6 0
       41 JUMPIFNOTEQKS                    R5 K7 [""] ; [+5]
       43 JUMPIFNOTEQKN                    R6 K10 [0] ; [+3]
       45 LOADNIL                          R7
       46 RETURN                           R7 1
       47 GETUPVAL                         R7 1
       48 GETUPVAL                         R8 2
       49 MOVE                             R9 R0
       50 CALL                             R7 2 -1
       51 RETURN                           R7 -1
       52 GETUPVAL                         R4 1
       53 GETUPVAL                         R5 3
       54 MOVE                             R6 R0
       55 CALL                             R4 2 -1
       56 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["Actions"]
       22 GETTABLEKS                       R3 R3 K10 ["AssetInsertActionsContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetManagement"]
       31 GETTABLEKS                       R4 R4 K13 ["AssetManagementConstants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Guest"]
       38 GETTABLEKS                       R5 R5 K15 ["Environment"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K16 ["Flags"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Parent"]
       50 GETTABLEKS                       R7 R7 K18 ["Foundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Parent"]
       57 GETTABLEKS                       R8 R8 K19 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Parent"]
       64 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Components"]
       71 GETTABLEKS                       R10 R10 K21 ["ShimmerGradient"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["TestIds"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Resources"]
       85 GETTABLEKS                       R12 R12 K24 ["Localization"]
       87 GETTABLEKS                       R12 R12 K25 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K26 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K27 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K28 ["useClassIcon"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R14 R3 K29 ["ASSET_TYPE_TO_CLASS_NAME"]
      104 GETTABLEKS                       R15 R3 K30 ["Location"]
      106 GETTABLEKS                       R16 R3 K31 ["SearchSource"]
      108 GETTABLEKS                       R17 R6 K32 ["Image"]
      110 GETTABLEKS                       R18 R6 K33 ["ScrollView"]
      112 GETTABLEKS                       R19 R6 K34 ["Text"]
      114 GETTABLEKS                       R20 R6 K35 ["View"]
      116 GETTABLEKS                       R21 R8 K36 ["createNextOrder"]
      118 GETTABLEKS                       R22 R7 K37 ["createElement"]
      120 NEWTABLE                         R23 0 0
      122 DUPCLOSURE                       R24 K38 [PROTO_1]
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R9
      135 DUPCLOSURE                       R25 K39 [PROTO_12]
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R18
      156 DUPCLOSURE                       R26 K40 [PROTO_13]
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R25
      160 CAPTURE                          VAL R24
      161 DUPTABLE                         R27 K46 [{["Type"] = "AssetSearch", ["ContentWidget"], ["Serialization"] = }]
      162 GETTABLEKS                       R28 R7 K47 ["memo"]
      164 MOVE                             R29 R26
      165 CALL                             R28 1 1
      166 SETTABLEKS                       R28 R27 K43 ["ContentWidget"]
      168 RETURN                           R27 1
