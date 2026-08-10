PROTO_0:
        0 DUPTABLE                         R0 K5 [{"FailedToGenerate", "Preparing", "Generating", "ToolCallRejected", "UnknownError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["AssetVariation"]
        3 LOADK                            R4 K0 ["FailedToGenerate"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["AssetVariation"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["AssetVariation"]
       19 LOADK                            R4 K2 ["Generating"]
       20 DUPTABLE                         R5 K9 [{"query"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K8 ["query"]
       24 NAMECALL                         R1 R1 K7 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Generating"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K10 ["ToolConfirmation"]
       31 LOADK                            R4 K3 ["ToolCallRejected"]
       32 DUPTABLE                         R5 K12 [{"toolName"}]
       33 GETUPVAL                         R6 2
       34 SETTABLEKS                       R6 R5 K11 ["toolName"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 4 1
       39 SETTABLEKS                       R1 R0 K3 ["ToolCallRejected"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K6 ["AssetVariation"]
       43 LOADK                            R4 K13 ["UnknownErrorHeader"]
       44 NAMECALL                         R1 R1 K7 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K4 ["UnknownError"]
       49 RETURN                           R0 1

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
       14 GETTABLEKS                       R6 R4 K5 ["assetName"]
       16 ORK                              R5 R6 K3 [""]
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R9 0 3
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K8 ["locale"]
       34 MOVE                             R11 R5
       35 MOVE                             R12 R3
       36 SETLIST                          R9 R10 3 [1]
       38 CALL                             R7 2 1
       39 LOADB                            R8 1
       40 LOADK                            R9 K3 [""]
       41 JUMPIFNOT                        R2 ; [+25]
       42 LOADB                            R8 0
       43 GETTABLEKS                       R10 R2 K9 ["isError"]
       45 JUMPIFNOT                        R10 ; [+3]
       46 GETTABLEKS                       R9 R7 K10 ["FailedToGenerate"]
       48 JUMP                             ; [+24]
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETTABLEKS                       R10 R6 K11 ["rejected"]
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLEKS                       R9 R7 K12 ["ToolCallRejected"]
       55 JUMP                             ; [+17]
       56 JUMPIFNOT                        R6 ; [+7]
       57 GETTABLEKS                       R10 R6 K13 ["pending"]
       59 JUMPIFNOT                        R10 ; [+4]
       60 LOADB                            R8 1
       61 GETTABLEKS                       R9 R7 K14 ["Generating"]
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R9 R7 K15 ["UnknownError"]
       66 JUMP                             ; [+6]
       67 JUMPIFNOT                        R1 ; [+3]
       68 GETTABLEKS                       R9 R7 K14 ["Generating"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R9 R7 K16 ["Preparing"]
       73 GETUPVAL                         R10 3
       74 CALL                             R10 0 1
       75 GETUPVAL                         R11 4
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R12 R12 K17 ["Root"]
       79 DUPTABLE                         R13 K23 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       80 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
       82 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       84 GETTABLEKS                       R14 R0 K21 ["contentId"]
       86 SETTABLEKS                       R14 R13 K21 ["contentId"]
       88 GETTABLEKS                       R14 R0 K22 ["editThisContent"]
       90 SETTABLEKS                       R14 R13 K22 ["editThisContent"]
       92 DUPTABLE                         R14 K25 [{"Header"}]
       93 GETUPVAL                         R15 4
       94 GETUPVAL                         R16 5
       95 GETTABLEKS                       R16 R16 K24 ["Header"]
       97 DUPTABLE                         R17 K29 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       98 MOVE                             R18 R10
       99 CALL                             R18 0 1
      100 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      102 GETUPVAL                         R18 6
      103 GETTABLEKS                       R18 R18 K30 ["AssetVariation"]
      105 GETTABLEKS                       R18 R18 K31 ["Expand"]
      107 SETTABLEKS                       R18 R17 K28 ["testId"]
      109 DUPTABLE                         R18 K33 [{"Text"}]
      110 GETUPVAL                         R19 4
      111 GETUPVAL                         R20 7
      112 DUPTABLE                         R21 K36 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      113 SETTABLEKS                       R9 R21 K32 ["Text"]
      115 MOVE                             R22 R10
      116 CALL                             R22 0 1
      117 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      119 DUPTABLE                         R22 K38 [{"Shimmer"}]
      120 JUMPIFNOT                        R8 ; [+4]
      121 GETUPVAL                         R23 4
      122 GETUPVAL                         R24 8
      123 CALL                             R23 1 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R23
      126 SETTABLEKS                       R23 R22 K37 ["Shimmer"]
      128 CALL                             R19 3 1
      129 SETTABLEKS                       R19 R18 K32 ["Text"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K24 ["Header"]
      134 CALL                             R11 3 -1
      135 RETURN                           R11 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["swapAssetAsync"]
        8 DUPTABLE                         R2 K3 [{"assetId", "tag"}]
        9 SETTABLEKS                       R0 R2 K1 ["assetId"]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K2 ["tag"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+16]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       23 GETUPVAL                         R1 1
       24 LOADK                            R3 K0 ["InstanceChip"]
       25 LOADK                            R4 K7 ["Deleted"]
       26 DUPTABLE                         R5 K8 [{"name"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K2 ["name"]
       30 NAMECALL                         R1 R1 K5 ["getText"]
       32 CALL                             R1 4 1
       33 MOVE                             R0 R1
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R1 1
       37 LOADK                            R3 K9 ["AssetVariation"]
       38 LOADK                            R4 K10 ["Generated"]
       39 DUPTABLE                         R5 K8 [{"name"}]
       40 GETUPVAL                         R7 0
       41 LOADN                            R8 0
       42 JUMPIFNOTLT                      R8 R7 ; [+3]
       44 LOADK                            R6 K11 ["{CHIP}"]
       45 JUMP                             ; [+1]
       46 MOVE                             R6 R0
       47 SETTABLEKS                       R6 R5 K2 ["name"]
       49 NAMECALL                         R1 R1 K5 ["getText"]
       51 CALL                             R1 4 1
       52 GETUPVAL                         R2 0
       53 LOADN                            R3 0
       54 JUMPIFNOTLT                      R3 R2 ; [+17]
       56 LOADK                            R4 K12 ["[ ]*{CHIP}[ ]*"]
       57 LOADK                            R5 K13 [" "]
       58 NAMECALL                         R2 R1 K14 ["gsub"]
       60 CALL                             R2 3 1
       61 LOADK                            R4 K15 ["^%s+"]
       62 LOADK                            R5 K16 [""]
       63 NAMECALL                         R2 R2 K14 ["gsub"]
       65 CALL                             R2 3 1
       66 LOADK                            R4 K17 ["%s+$"]
       67 LOADK                            R5 K16 [""]
       68 NAMECALL                         R2 R2 K14 ["gsub"]
       70 CALL                             R2 3 1
       71 MOVE                             R1 R2
       72 DUPTABLE                         R2 K20 [{"DisplayName", "Generated", "AssetVariationsDescription"}]
       73 SETTABLEKS                       R0 R2 K18 ["DisplayName"]
       75 SETTABLEKS                       R1 R2 K10 ["Generated"]
       77 GETUPVAL                         R3 1
       78 LOADK                            R5 K9 ["AssetVariation"]
       79 LOADK                            R6 K19 ["AssetVariationsDescription"]
       80 NAMECALL                         R3 R3 K5 ["getText"]
       82 CALL                             R3 3 1
       83 SETTABLEKS                       R3 R2 K19 ["AssetVariationsDescription"]
       85 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R5 R3 K4 ["assetName"]
       11 ORK                              R4 R5 K3 [""]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R5 R2 K5 ["structuredContent"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADNIL                          R5
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R6 R5 K6 ["tag"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 JUMPIFNOT                        R5 ; [+3]
       23 GETTABLEKS                       R7 R5 K7 ["assetIds"]
       25 JUMPIF                           R7 ; [+1]
       26 LOADNIL                          R7
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K8 ["useContext"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K9 ["Context"]
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K8 ["useContext"]
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K9 ["Context"]
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R10 R10 K10 ["useTag"]
       44 MOVE                             R11 R6
       45 DUPTABLE                         R12 K14 [{["includeCount"] = True, ["includeClassName"] = True}]
       46 CALL                             R10 2 1
       47 JUMPIFNOT                        R10 ; [+3]
       48 GETTABLEKS                       R11 R10 K15 ["count"]
       50 JUMPIF                           R11 ; [+1]
       51 LOADN                            R11 0
       52 JUMPIFNOT                        R10 ; [+3]
       53 GETTABLEKS                       R12 R10 K16 ["className"]
       55 JUMPIF                           R12 ; [+1]
       56 LOADNIL                          R12
       57 GETUPVAL                         R13 4
       58 GETTABLEKS                       R13 R13 K17 ["Hooks"]
       60 GETTABLEKS                       R13 R13 K18 ["useTokens"]
       62 CALL                             R13 0 1
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K19 ["useCallback"]
       66 NEWCLOSURE                       R15 P0
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R16 0 2
       71 MOVE                             R17 R8
       72 MOVE                             R18 R6
       73 SETLIST                          R16 R17 2 [1]
       75 CALL                             R14 2 1
       76 GETUPVAL                         R15 1
       77 GETTABLEKS                       R15 R15 K19 ["useCallback"]
       79 NEWCLOSURE                       R16 P1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R17 0 2
       84 MOVE                             R18 R9
       85 MOVE                             R19 R6
       86 SETLIST                          R17 R18 2 [1]
       88 CALL                             R15 2 1
       89 GETUPVAL                         R16 1
       90 GETTABLEKS                       R16 R16 K20 ["useMemo"]
       92 NEWCLOSURE                       R17 P2
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R4
       96 NEWTABLE                         R18 0 3
       98 GETUPVAL                         R19 5
       99 GETTABLEKS                       R19 R19 K21 ["locale"]
      101 MOVE                             R20 R4
      102 MOVE                             R21 R11
      103 SETLIST                          R18 R19 3 [1]
      105 CALL                             R16 2 1
      106 GETUPVAL                         R17 6
      107 MOVE                             R18 R12
      108 CALL                             R17 1 1
      109 NEWTABLE                         R18 0 0
      111 JUMPIFNOT                        R7 ; [+33]
      112 GETIMPORT                        R19 K24 [table.create]
      114 LENGTH                           R20 R7
      115 CALL                             R19 1 1
      116 MOVE                             R18 R19
      117 MOVE                             R19 R7
      118 LOADNIL                          R20
      119 LOADNIL                          R21
      120 FORGPREP                         R19
      121 LOADK                            R25 K25 ["rbxthumb://type=Asset&id=%*&w=%*&h=%*"]
      122 MOVE                             R27 R23
      123 LOADN                            R28 150
      124 LOADN                            R29 150
      125 NAMECALL                         R25 R25 K26 ["format"]
      127 CALL                             R25 4 1
      128 MOVE                             R24 R25
      129 DUPTABLE                         R27 K29 [{"uri", "onActivated"}]
      130 SETTABLEKS                       R24 R27 K27 ["uri"]
      132 NEWCLOSURE                       R28 P3
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R23
      135 SETTABLEKS                       R28 R27 K28 ["onActivated"]
      137 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      139 MOVE                             R26 R18
      140 GETIMPORT                        R25 K31 [table.insert]
      142 CALL                             R25 2 0
      143 FORGLOOP                         R19 2 ; [-23]
      145 GETUPVAL                         R19 7
      146 CALL                             R19 0 1
      147 GETUPVAL                         R20 8
      148 GETUPVAL                         R21 9
      149 GETTABLEKS                       R21 R21 K32 ["Root"]
      151 DUPTABLE                         R22 K37 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      152 GETTABLEKS                       R23 R0 K33 ["LayoutOrder"]
      154 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      156 GETTABLEKS                       R23 R0 K34 ["expanded"]
      158 SETTABLEKS                       R23 R22 K34 ["expanded"]
      160 GETTABLEKS                       R23 R0 K35 ["contentId"]
      162 SETTABLEKS                       R23 R22 K35 ["contentId"]
      164 GETTABLEKS                       R23 R0 K36 ["editThisContent"]
      166 SETTABLEKS                       R23 R22 K36 ["editThisContent"]
      168 DUPTABLE                         R23 K40 [{"Header", "Content"}]
      169 GETUPVAL                         R24 8
      170 GETUPVAL                         R25 9
      171 GETTABLEKS                       R25 R25 K38 ["Header"]
      173 DUPTABLE                         R26 K42 [{"LayoutOrder", "testId"}]
      174 MOVE                             R27 R19
      175 CALL                             R27 0 1
      176 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      178 GETUPVAL                         R27 10
      179 GETTABLEKS                       R27 R27 K43 ["AssetVariation"]
      181 GETTABLEKS                       R27 R27 K44 ["Expand"]
      183 SETTABLEKS                       R27 R26 K41 ["testId"]
      185 DUPTABLE                         R27 K47 [{"Text", "AssetLink"}]
      186 GETUPVAL                         R28 8
      187 GETUPVAL                         R29 11
      188 DUPTABLE                         R30 K49 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      189 GETTABLEKS                       R31 R16 K50 ["Generated"]
      191 SETTABLEKS                       R31 R30 K45 ["Text"]
      193 MOVE                             R31 R19
      194 CALL                             R31 0 1
      195 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      197 CALL                             R28 2 1
      198 SETTABLEKS                       R28 R27 K45 ["Text"]
      200 LOADB                            R28 0
      201 LOADN                            R29 0
      202 JUMPIFNOTLT                      R29 R11 ; [+28]
      204 GETUPVAL                         R28 8
      205 GETUPVAL                         R29 12
      206 DUPTABLE                         R30 K56 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      207 GETTABLEKS                       R31 R16 K57 ["DisplayName"]
      209 SETTABLEKS                       R31 R30 K51 ["text"]
      211 GETTABLEKS                       R31 R17 K58 ["Image"]
      213 SETTABLEKS                       R31 R30 K52 ["leading"]
      215 SETTABLEKS                       R15 R30 K28 ["onActivated"]
      217 GETUPVAL                         R31 4
      218 GETTABLEKS                       R31 R31 K59 ["Enums"]
      220 GETTABLEKS                       R31 R31 K60 ["ChipSize"]
      222 GETTABLEKS                       R31 R31 K61 ["Small"]
      224 SETTABLEKS                       R31 R30 K55 ["size"]
      226 MOVE                             R31 R19
      227 CALL                             R31 0 1
      228 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      230 CALL                             R28 2 1
      231 SETTABLEKS                       R28 R27 K46 ["AssetLink"]
      233 CALL                             R24 3 1
      234 SETTABLEKS                       R24 R23 K38 ["Header"]
      236 GETUPVAL                         R24 8
      237 GETUPVAL                         R25 9
      238 GETTABLEKS                       R25 R25 K39 ["Content"]
      240 DUPTABLE                         R26 K63 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      241 MOVE                             R27 R19
      242 CALL                             R27 0 1
      243 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      245 DUPTABLE                         R27 K65 [{"Text", "Carousel"}]
      246 GETUPVAL                         R28 8
      247 GETUPVAL                         R29 11
      248 DUPTABLE                         R30 K67 [{["tag"] = "size-0-0 auto-xy text-body-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      249 GETTABLEKS                       R31 R16 K68 ["AssetVariationsDescription"]
      251 SETTABLEKS                       R31 R30 K45 ["Text"]
      253 MOVE                             R31 R19
      254 CALL                             R31 0 1
      255 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      257 CALL                             R28 2 1
      258 SETTABLEKS                       R28 R27 K45 ["Text"]
      260 GETUPVAL                         R28 8
      261 GETUPVAL                         R29 13
      262 DUPTABLE                         R30 K74 [{["height"] = 70, ["imagePadding"], ["canSelect"] = True, ["items"], ["LayoutOrder"]}]
      263 GETTABLEKS                       R31 R13 K75 ["Padding"]
      265 GETTABLEKS                       R31 R31 K76 ["XXSmall"]
      267 SETTABLEKS                       R31 R30 K71 ["imagePadding"]
      269 SETTABLEKS                       R18 R30 K73 ["items"]
      271 MOVE                             R31 R19
      272 CALL                             R31 0 1
      273 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K64 ["Carousel"]
      278 CALL                             R24 3 1
      279 SETTABLEKS                       R24 R23 K39 ["Content"]
      281 CALL                             R20 3 -1
      282 RETURN                           R20 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+15]
        9 GETTABLEKS                       R4 R1 K2 ["isError"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+11]
       13 MOVE                             R4 R2
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETTABLEKS                       R4 R2 K3 ["pending"]
       17 NOT                              R3 R4
       18 JUMPIFNOT                        R3 ; [+5]
       19 MOVE                             R4 R2
       20 JUMPIFNOT                        R4 ; [+2]
       21 GETTABLEKS                       R4 R2 K4 ["rejected"]
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R0
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R0
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K10 ["Actions"]
       29 GETTABLEKS                       R4 R4 K11 ["CreatorStoreActionsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K10 ["Actions"]
       47 GETTABLEKS                       R6 R6 K14 ["InstanceActionsContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K12 ["Parent"]
       54 GETTABLEKS                       R7 R7 K15 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K12 ["Parent"]
       61 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Components"]
       68 GETTABLEKS                       R9 R9 K17 ["ShimmerGradient"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K18 ["Util"]
       75 GETTABLEKS                       R10 R10 K19 ["TestIds"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K20 ["Resources"]
       82 GETTABLEKS                       R11 R11 K21 ["Localization"]
       84 GETTABLEKS                       R11 R11 K22 ["Translator"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K23 ["Types"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K25 ["useClassIcon"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R4 K26 ["Chip"]
      101 GETTABLEKS                       R14 R4 K27 ["Text"]
      103 GETTABLEKS                       R15 R7 K28 ["createNextOrder"]
      105 GETTABLEKS                       R16 R6 K29 ["createElement"]
      107 NEWTABLE                         R17 0 0
      109 DUPCLOSURE                       R18 K30 [PROTO_1]
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R8
      119 DUPCLOSURE                       R19 K31 [PROTO_6]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R2
      134 DUPCLOSURE                       R20 K32 [PROTO_7]
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R18
      138 DUPTABLE                         R21 K38 [{["Type"] = "CreatorStoreInsert", ["ContentWidget"], ["Serialization"] = }]
      139 GETTABLEKS                       R22 R6 K39 ["memo"]
      141 MOVE                             R23 R20
      142 CALL                             R22 1 1
      143 SETTABLEKS                       R22 R21 K35 ["ContentWidget"]
      145 RETURN                           R21 1
