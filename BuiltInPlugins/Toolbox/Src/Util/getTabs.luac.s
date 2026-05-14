PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["shouldDebugWarnings"]
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 JUMPIFNOTEQKNIL                  R2 ; [+5]
       10 GETIMPORT                        R3 K2 [warn]
       12 LOADK                            R4 K3 ["IXP variable was not found for getCategoryIndex"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 0
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+98]
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 JUMPIFNOT                        R3 ; [+94]
       21 NEWTABLE                         R3 0 3
       23 DUPTABLE                         R4 K7 [{"Key", "Text", "Image"}]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K8 ["MARKETPLACE_KEY"]
       27 SETTABLEKS                       R5 R4 K4 ["Key"]
       29 LOADK                            R7 K9 ["General"]
       30 LOADK                            R8 K10 ["TabCreatorStore"]
       31 NAMECALL                         R5 R0 K11 ["getText"]
       33 CALL                             R5 3 1
       34 SETTABLEKS                       R5 R4 K5 ["Text"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K12 ["MARKETPLACE_TAB"]
       39 SETTABLEKS                       R5 R4 K6 ["Image"]
       41 DUPTABLE                         R5 K7 [{"Key", "Text", "Image"}]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K13 ["INVENTORY_KEY"]
       45 SETTABLEKS                       R6 R5 K4 ["Key"]
       47 LOADK                            R8 K9 ["General"]
       48 LOADK                            R9 K14 ["TabInventory"]
       49 NAMECALL                         R6 R0 K11 ["getText"]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K5 ["Text"]
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R6 R6 K15 ["INVENTORY_TAB"]
       57 SETTABLEKS                       R6 R5 K6 ["Image"]
       59 DUPTABLE                         R6 K7 [{"Key", "Text", "Image"}]
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K16 ["RECENT_KEY"]
       63 SETTABLEKS                       R7 R6 K4 ["Key"]
       65 LOADK                            R9 K9 ["General"]
       66 LOADK                            R10 K17 ["TabRecent"]
       67 NAMECALL                         R7 R0 K11 ["getText"]
       69 CALL                             R7 3 1
       70 SETTABLEKS                       R7 R6 K5 ["Text"]
       72 GETUPVAL                         R7 4
       73 GETTABLEKS                       R7 R7 K18 ["RECENT_TAB"]
       75 SETTABLEKS                       R7 R6 K6 ["Image"]
       77 SETLIST                          R3 R4 3 [1]
       79 JUMPIFNOT                        R1 ; [+5]
       80 GETUPVAL                         R4 5
       81 GETTABLEKS                       R5 R1 K19 ["allowedAssetTypesForRelease"]
       83 CALL                             R4 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R4
       86 LENGTH                           R5 R4
       87 LOADN                            R6 0
       88 JUMPIFNOTLT                      R6 R5 ; [+25]
       90 DUPTABLE                         R7 K7 [{"Key", "Text", "Image"}]
       91 GETUPVAL                         R8 3
       92 GETTABLEKS                       R8 R8 K20 ["CREATIONS_KEY"]
       94 SETTABLEKS                       R8 R7 K4 ["Key"]
       96 LOADK                            R10 K9 ["General"]
       97 LOADK                            R11 K21 ["TabCreations"]
       98 NAMECALL                         R8 R0 K11 ["getText"]
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R7 K5 ["Text"]
      103 GETUPVAL                         R8 4
      104 GETTABLEKS                       R8 R8 K22 ["CREATIONS_TAB"]
      106 SETTABLEKS                       R8 R7 K6 ["Image"]
      108 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      110 MOVE                             R6 R3
      111 GETIMPORT                        R5 K25 [table.insert]
      113 CALL                             R5 2 0
      114 RETURN                           R3 1
      115 GETUPVAL                         R3 6
      116 CALL                             R3 0 1
      117 JUMPIFNOT                        R3 ; [+41]
      118 NEWTABLE                         R3 0 2
      120 DUPTABLE                         R4 K7 [{"Key", "Text", "Image"}]
      121 GETUPVAL                         R5 3
      122 GETTABLEKS                       R5 R5 K13 ["INVENTORY_KEY"]
      124 SETTABLEKS                       R5 R4 K4 ["Key"]
      126 LOADK                            R7 K9 ["General"]
      127 LOADK                            R8 K14 ["TabInventory"]
      128 NAMECALL                         R5 R0 K11 ["getText"]
      130 CALL                             R5 3 1
      131 SETTABLEKS                       R5 R4 K5 ["Text"]
      133 GETUPVAL                         R5 4
      134 GETTABLEKS                       R5 R5 K15 ["INVENTORY_TAB"]
      136 SETTABLEKS                       R5 R4 K6 ["Image"]
      138 DUPTABLE                         R5 K7 [{"Key", "Text", "Image"}]
      139 GETUPVAL                         R6 3
      140 GETTABLEKS                       R6 R6 K20 ["CREATIONS_KEY"]
      142 SETTABLEKS                       R6 R5 K4 ["Key"]
      144 LOADK                            R8 K9 ["General"]
      145 LOADK                            R9 K21 ["TabCreations"]
      146 NAMECALL                         R6 R0 K11 ["getText"]
      148 CALL                             R6 3 1
      149 SETTABLEKS                       R6 R5 K5 ["Text"]
      151 GETUPVAL                         R6 4
      152 GETTABLEKS                       R6 R6 K22 ["CREATIONS_TAB"]
      154 SETTABLEKS                       R6 R5 K6 ["Image"]
      156 SETLIST                          R3 R4 2 [1]
      158 RETURN                           R3 1
      159 GETUPVAL                         R3 7
      160 CALL                             R3 0 1
      161 JUMPIFNOT                        R3 ; [+59]
      162 NEWTABLE                         R3 0 3
      164 DUPTABLE                         R4 K7 [{"Key", "Text", "Image"}]
      165 GETUPVAL                         R5 3
      166 GETTABLEKS                       R5 R5 K8 ["MARKETPLACE_KEY"]
      168 SETTABLEKS                       R5 R4 K4 ["Key"]
      170 LOADK                            R7 K9 ["General"]
      171 LOADK                            R8 K10 ["TabCreatorStore"]
      172 NAMECALL                         R5 R0 K11 ["getText"]
      174 CALL                             R5 3 1
      175 SETTABLEKS                       R5 R4 K5 ["Text"]
      177 GETUPVAL                         R5 4
      178 GETTABLEKS                       R5 R5 K12 ["MARKETPLACE_TAB"]
      180 SETTABLEKS                       R5 R4 K6 ["Image"]
      182 DUPTABLE                         R5 K7 [{"Key", "Text", "Image"}]
      183 GETUPVAL                         R6 3
      184 GETTABLEKS                       R6 R6 K13 ["INVENTORY_KEY"]
      186 SETTABLEKS                       R6 R5 K4 ["Key"]
      188 LOADK                            R8 K9 ["General"]
      189 LOADK                            R9 K14 ["TabInventory"]
      190 NAMECALL                         R6 R0 K11 ["getText"]
      192 CALL                             R6 3 1
      193 SETTABLEKS                       R6 R5 K5 ["Text"]
      195 GETUPVAL                         R6 4
      196 GETTABLEKS                       R6 R6 K15 ["INVENTORY_TAB"]
      198 SETTABLEKS                       R6 R5 K6 ["Image"]
      200 DUPTABLE                         R6 K7 [{"Key", "Text", "Image"}]
      201 GETUPVAL                         R7 3
      202 GETTABLEKS                       R7 R7 K20 ["CREATIONS_KEY"]
      204 SETTABLEKS                       R7 R6 K4 ["Key"]
      206 LOADK                            R9 K9 ["General"]
      207 LOADK                            R10 K21 ["TabCreations"]
      208 NAMECALL                         R7 R0 K11 ["getText"]
      210 CALL                             R7 3 1
      211 SETTABLEKS                       R7 R6 K5 ["Text"]
      213 GETUPVAL                         R7 4
      214 GETTABLEKS                       R7 R7 K22 ["CREATIONS_TAB"]
      216 SETTABLEKS                       R7 R6 K6 ["Image"]
      218 SETLIST                          R3 R4 3 [1]
      220 RETURN                           R3 1
      221 NEWTABLE                         R3 0 4
      223 DUPTABLE                         R4 K7 [{"Key", "Text", "Image"}]
      224 GETUPVAL                         R5 3
      225 GETTABLEKS                       R5 R5 K8 ["MARKETPLACE_KEY"]
      227 SETTABLEKS                       R5 R4 K4 ["Key"]
      229 LOADK                            R7 K9 ["General"]
      230 LOADK                            R8 K10 ["TabCreatorStore"]
      231 NAMECALL                         R5 R0 K11 ["getText"]
      233 CALL                             R5 3 1
      234 SETTABLEKS                       R5 R4 K5 ["Text"]
      236 GETUPVAL                         R5 4
      237 GETTABLEKS                       R5 R5 K12 ["MARKETPLACE_TAB"]
      239 SETTABLEKS                       R5 R4 K6 ["Image"]
      241 DUPTABLE                         R5 K7 [{"Key", "Text", "Image"}]
      242 GETUPVAL                         R6 3
      243 GETTABLEKS                       R6 R6 K13 ["INVENTORY_KEY"]
      245 SETTABLEKS                       R6 R5 K4 ["Key"]
      247 LOADK                            R8 K9 ["General"]
      248 LOADK                            R9 K14 ["TabInventory"]
      249 NAMECALL                         R6 R0 K11 ["getText"]
      251 CALL                             R6 3 1
      252 SETTABLEKS                       R6 R5 K5 ["Text"]
      254 GETUPVAL                         R6 4
      255 GETTABLEKS                       R6 R6 K15 ["INVENTORY_TAB"]
      257 SETTABLEKS                       R6 R5 K6 ["Image"]
      259 DUPTABLE                         R6 K7 [{"Key", "Text", "Image"}]
      260 GETUPVAL                         R7 3
      261 GETTABLEKS                       R7 R7 K16 ["RECENT_KEY"]
      263 SETTABLEKS                       R7 R6 K4 ["Key"]
      265 LOADK                            R9 K9 ["General"]
      266 LOADK                            R10 K17 ["TabRecent"]
      267 NAMECALL                         R7 R0 K11 ["getText"]
      269 CALL                             R7 3 1
      270 SETTABLEKS                       R7 R6 K5 ["Text"]
      272 GETUPVAL                         R7 4
      273 GETTABLEKS                       R7 R7 K18 ["RECENT_TAB"]
      275 SETTABLEKS                       R7 R6 K6 ["Image"]
      277 DUPTABLE                         R7 K7 [{"Key", "Text", "Image"}]
      278 GETUPVAL                         R8 3
      279 GETTABLEKS                       R8 R8 K20 ["CREATIONS_KEY"]
      281 SETTABLEKS                       R8 R7 K4 ["Key"]
      283 LOADK                            R10 K9 ["General"]
      284 LOADK                            R11 K21 ["TabCreations"]
      285 NAMECALL                         R8 R0 K11 ["getText"]
      287 CALL                             R8 3 1
      288 SETTABLEKS                       R8 R7 K5 ["Text"]
      290 GETUPVAL                         R8 4
      291 GETTABLEKS                       R8 R8 K22 ["CREATIONS_TAB"]
      293 SETTABLEKS                       R8 R7 K6 ["Image"]
      295 SETLIST                          R3 R4 4 [1]
      297 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 GETTABLEKS                       R2 R2 K7 ["Category"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["getAllowedAssetTypeEnums"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K8 ["Util"]
       42 GETTABLEKS                       R5 R5 K11 ["Images"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K8 ["Util"]
       51 GETTABLEKS                       R6 R6 K12 ["ToolboxUtilities"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R5 R5 K13 ["disableMarketplaceAndRecents"]
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K8 ["Util"]
       62 GETTABLEKS                       R7 R7 K12 ["ToolboxUtilities"]
       64 CALL                             R6 1 1
       65 GETTABLEKS                       R6 R6 K14 ["showRobloxCreatedAssets"]
       67 GETIMPORT                        R7 K4 [require]
       69 GETTABLEKS                       R8 R0 K5 ["Src"]
       71 GETTABLEKS                       R8 R8 K8 ["Util"]
       73 GETTABLEKS                       R8 R8 K15 ["SharedFlags"]
       75 GETTABLEKS                       R8 R8 K16 ["getFFlagToolboxContentManagementCombineTabs"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K4 [require]
       80 GETTABLEKS                       R9 R0 K5 ["Src"]
       82 GETTABLEKS                       R9 R9 K8 ["Util"]
       84 GETTABLEKS                       R9 R9 K15 ["SharedFlags"]
       86 GETTABLEKS                       R9 R9 K17 ["getIsIXPEnabledForListView"]
       88 CALL                             R8 1 1
       89 DUPCLOSURE                       R9 K18 [PROTO_0]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 RETURN                           R9 1
