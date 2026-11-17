PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["View"]
       16 DUPTABLE                         R5 K8 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center grow padding-small"}]
       17 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 DUPTABLE                         R6 K11 [{"Icon", "Text"}]
       22 GETTABLEKS                       R8 R0 K12 ["TextOnly"]
       24 JUMPIF                           R8 ; [+48]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K3 ["createElement"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K9 ["Icon"]
       31 DUPTABLE                         R9 K17 [{"LayoutOrder", "name", "variant", "style", "size"}]
       32 NAMECALL                         R10 R1 K18 ["getNextOrder"]
       34 CALL                             R10 1 1
       35 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K19 ["Enums"]
       40 GETTABLEKS                       R10 R10 K20 ["IconName"]
       42 GETTABLEKS                       R10 R10 K21 ["Folder"]
       44 SETTABLEKS                       R10 R9 K13 ["name"]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K19 ["Enums"]
       49 GETTABLEKS                       R10 R10 K22 ["IconVariant"]
       51 GETTABLEKS                       R10 R10 K23 ["Filled"]
       53 SETTABLEKS                       R10 R9 K14 ["variant"]
       55 GETTABLEKS                       R10 R2 K24 ["Color"]
       57 GETTABLEKS                       R10 R10 K25 ["Extended"]
       59 GETTABLEKS                       R10 R10 K26 ["Yellow"]
       61 GETTABLEKS                       R10 R10 K27 ["Yellow_300"]
       63 SETTABLEKS                       R10 R9 K15 ["style"]
       65 GETTABLEKS                       R10 R2 K28 ["Size"]
       67 GETTABLEKS                       R10 R10 K29 ["Size_400"]
       69 SETTABLEKS                       R10 R9 K16 ["size"]
       71 CALL                             R7 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R7
       74 SETTABLEKS                       R7 R6 K9 ["Icon"]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K3 ["createElement"]
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K10 ["Text"]
       82 DUPTABLE                         R9 K31 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy padding-small text-label-small text-truncate-end"}]
       83 NAMECALL                         R10 R1 K18 ["getNextOrder"]
       85 CALL                             R10 1 1
       86 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       88 GETTABLEKS                       R10 R0 K10 ["Text"]
       90 SETTABLEKS                       R10 R9 K10 ["Text"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K10 ["Text"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center grow padding-small"}]
       11 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 DUPTABLE                         R5 K9 [{"Icon", "Text"}]
       16 GETTABLEKS                       R7 R0 K10 ["TextOnly"]
       18 JUMPIFNOT                        R7 ; [+2]
       19 LOADNIL                          R6
       20 JUMP                             ; [+56]
       21 GETTABLEKS                       R7 R0 K11 ["UseIcon"]
       23 JUMPIFNOT                        R7 ; [+36]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K1 ["createElement"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K7 ["Icon"]
       30 DUPTABLE                         R8 K16 [{["LayoutOrder"], ["name"], ["variant"], ["size"], ["tag"] = "padding-small radius-circle"}]
       31 NAMECALL                         R9 R1 K17 ["getNextOrder"]
       33 CALL                             R9 1 1
       34 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       36 GETTABLEKS                       R9 R0 K18 ["Image"]
       38 SETTABLEKS                       R9 R8 K12 ["name"]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K19 ["Enums"]
       43 GETTABLEKS                       R9 R9 K20 ["IconVariant"]
       45 GETTABLEKS                       R9 R9 K21 ["Filled"]
       47 SETTABLEKS                       R9 R8 K13 ["variant"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K19 ["Enums"]
       52 GETTABLEKS                       R9 R9 K22 ["IconSize"]
       54 GETTABLEKS                       R9 R9 K23 ["Small"]
       56 SETTABLEKS                       R9 R8 K14 ["size"]
       58 CALL                             R6 2 1
       59 JUMP                             ; [+17]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K1 ["createElement"]
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K18 ["Image"]
       66 DUPTABLE                         R8 K25 [{["LayoutOrder"], ["Image"], ["tag"] = "size-400 padding-small radius-circle"}]
       67 NAMECALL                         R9 R1 K17 ["getNextOrder"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       72 GETTABLEKS                       R9 R0 K18 ["Image"]
       74 SETTABLEKS                       R9 R8 K18 ["Image"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K7 ["Icon"]
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K1 ["createElement"]
       82 GETUPVAL                         R7 2
       83 GETTABLEKS                       R7 R7 K8 ["Text"]
       85 DUPTABLE                         R8 K27 [{["LayoutOrder"], ["Text"], ["tag"] = "size-0 auto-xy padding-small text-label-small text-truncate-end"}]
       86 NAMECALL                         R9 R1 K17 ["getNextOrder"]
       88 CALL                             R9 1 1
       89 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       91 GETTABLEKS                       R9 R0 K8 ["Text"]
       93 SETTABLEKS                       R9 R8 K8 ["Text"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K8 ["Text"]
       98 CALL                             R2 3 -1
       99 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 LOADK                            R5 K2 [""]
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 4
       16 CALL                             R6 0 1
       17 GETUPVAL                         R7 5
       18 CALL                             R7 0 1
       19 GETUPVAL                         R8 6
       20 CALL                             R8 0 1
       21 GETUPVAL                         R10 7
       22 GETUPVAL                         R11 8
       23 GETTABLEKS                       R11 R11 K3 ["IxpVariable"]
       25 GETTABLEKS                       R11 R11 K4 ["Omnisearch"]
       27 CALL                             R10 1 1
       28 GETUPVAL                         R11 8
       29 GETTABLEKS                       R11 R11 K5 ["IxpValue"]
       31 GETTABLEKS                       R11 R11 K6 ["Experiment"]
       33 JUMPIFEQ                         R10 R11 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R10 9
       38 LOADN                            R11 280
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 10
       41 CALL                             R11 0 2
       42 GETUPVAL                         R13 11
       43 CALL                             R13 0 1
       44 LOADNIL                          R14
       45 GETUPVAL                         R15 12
       46 CALL                             R15 0 1
       47 JUMPIFNOT                        R15 ; [+2]
       48 MOVE                             R14 R10
       49 JUMP                             ; [+11]
       50 JUMPIFNOT                        R8 ; [+4]
       51 GETTABLEN                        R15 R13 2
       52 GETTABLEKS                       R15 R15 K7 ["Offset"]
       54 JUMP                             ; [+1]
       55 MOVE                             R15 R11
       56 LOADN                            R16 280
       57 JUMPIFLT                         R15 R16 ; [+2]
       59 LOADB                            R14 0 +1
       60 LOADB                            R14 1
       61 NEWTABLE                         R15 4 0
       63 GETUPVAL                         R16 13
       64 GETTABLEKS                       R16 R16 K8 ["createElement"]
       66 GETUPVAL                         R17 14
       67 DUPTABLE                         R18 K10 [{"LayoutOrder"}]
       68 NAMECALL                         R19 R2 K11 ["getNextOrder"]
       70 CALL                             R19 1 1
       71 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       73 CALL                             R16 2 1
       74 SETTABLEKS                       R16 R15 K12 ["NavButtons"]
       76 GETTABLEKS                       R17 R7 K13 ["IsSearchRequested"]
       78 JUMPIFNOT                        R17 ; [+18]
       79 JUMPIFNOT                        R9 ; [+11]
       80 LOADK                            R18 K14 ["SearchOptions"]
       81 LOADK                            R19 K15 ["SearchResultsFor"]
       82 DUPTABLE                         R20 K17 [{"query"}]
       83 GETTABLEKS                       R21 R7 K18 ["ActiveSearchTerm"]
       85 SETTABLEKS                       R21 R20 K16 ["query"]
       87 NAMECALL                         R16 R1 K19 ["getText"]
       89 CALL                             R16 4 1
       90 JUMP                             ; [+10]
       91 LOADK                            R18 K14 ["SearchOptions"]
       92 LOADK                            R19 K20 ["SearchResults"]
       93 NAMECALL                         R16 R1 K19 ["getText"]
       95 CALL                             R16 3 1
       96 JUMP                             ; [+4]
       97 GETUPVAL                         R16 15
       98 MOVE                             R17 R6
       99 MOVE                             R18 R1
      100 CALL                             R16 2 1
      101 LOADNIL                          R17
      102 LOADNIL                          R18
      103 JUMPIFNOT                        R9 ; [+25]
      104 GETTABLEKS                       R19 R6 K21 ["Type"]
      106 GETUPVAL                         R20 8
      107 GETTABLEKS                       R20 R20 K22 ["ScopeType"]
      109 GETTABLEKS                       R20 R20 K23 ["RecentUploads"]
      111 JUMPIFEQ                         R19 R20 ; [+2]
      113 LOADB                            R18 0 +1
      114 LOADB                            R18 1
      115 GETUPVAL                         R20 16
      116 GETTABLEKS                       R21 R6 K21 ["Type"]
      118 GETTABLE                         R19 R20 R21
      119 JUMPIF                           R19 ; [+7]
      120 GETUPVAL                         R19 17
      121 GETTABLEKS                       R19 R19 K24 ["Enums"]
      123 GETTABLEKS                       R19 R19 K25 ["IconName"]
      125 GETTABLEKS                       R19 R19 K26 ["Tilt"]
      127 MOVE                             R17 R19
      128 JUMP                             ; [+39]
      129 GETTABLEKS                       R19 R7 K13 ["IsSearchRequested"]
      131 JUMPIF                           R19 ; [+11]
      132 GETTABLEKS                       R20 R6 K21 ["Type"]
      134 GETUPVAL                         R21 8
      135 GETTABLEKS                       R21 R21 K22 ["ScopeType"]
      137 GETTABLEKS                       R21 R21 K23 ["RecentUploads"]
      139 JUMPIFEQ                         R20 R21 ; [+2]
      141 LOADB                            R19 0 +1
      142 LOADB                            R19 1
      143 MOVE                             R18 R19
      144 GETTABLEKS                       R19 R7 K13 ["IsSearchRequested"]
      146 JUMPIFNOT                        R19 ; [+8]
      147 GETUPVAL                         R19 17
      148 GETTABLEKS                       R19 R19 K24 ["Enums"]
      150 GETTABLEKS                       R19 R19 K25 ["IconName"]
      152 GETTABLEKS                       R17 R19 K27 ["MagnifyingGlass"]
      154 JUMP                             ; [+13]
      155 GETUPVAL                         R20 16
      156 GETTABLEKS                       R21 R6 K21 ["Type"]
      158 GETTABLE                         R19 R20 R21
      159 JUMPIF                           R19 ; [+7]
      160 GETUPVAL                         R19 17
      161 GETTABLEKS                       R19 R19 K24 ["Enums"]
      163 GETTABLEKS                       R19 R19 K25 ["IconName"]
      165 GETTABLEKS                       R19 R19 K26 ["Tilt"]
      167 MOVE                             R17 R19
      168 JUMPIF                           R18 ; [+3]
      169 JUMPIFEQKS                       R4 K2 [""] ; [+2]
      171 MOVE                             R17 R4
      172 JUMPIF                           R9 ; [+3]
      173 GETTABLEKS                       R19 R7 K13 ["IsSearchRequested"]
      175 JUMPIF                           R19 ; [+31]
      176 GETTABLEKS                       R19 R6 K21 ["Type"]
      178 GETUPVAL                         R20 8
      179 GETTABLEKS                       R20 R20 K22 ["ScopeType"]
      181 GETTABLEKS                       R20 R20 K28 ["Folder"]
      183 JUMPIFNOTEQ                      R19 R20 ; [+23]
      185 GETUPVAL                         R19 13
      186 GETTABLEKS                       R19 R19 K8 ["createElement"]
      188 GETUPVAL                         R20 18
      189 DUPTABLE                         R21 K33 [{"LayoutOrder", "Text", "Image", "UseIcon", "TextOnly"}]
      190 NAMECALL                         R22 R2 K11 ["getNextOrder"]
      192 CALL                             R22 1 1
      193 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      195 SETTABLEKS                       R16 R21 K29 ["Text"]
      197 SETTABLEKS                       R17 R21 K30 ["Image"]
      199 SETTABLEKS                       R18 R21 K31 ["UseIcon"]
      201 SETTABLEKS                       R14 R21 K32 ["TextOnly"]
      203 CALL                             R19 2 1
      204 SETTABLEKS                       R19 R15 K34 ["ScopeTitle"]
      206 JUMP                             ; [+60]
      207 NEWCLOSURE                       R19 P0
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R5
      210 GETUPVAL                         R20 19
      211 CALL                             R20 0 1
      212 JUMPIFNOT                        R20 ; [+20]
      213 JUMPIFEQKS                       R4 K2 [""] ; [+10]
      215 GETUPVAL                         R20 20
      216 GETTABLEKS                       R20 R20 K35 ["Utils"]
      218 GETTABLEKS                       R20 R20 K36 ["getScopeThumbnailUri"]
      220 MOVE                             R21 R6
      221 CALL                             R20 1 1
      222 JUMPIFEQ                         R4 R20 ; [+23]
      224 GETUPVAL                         R20 20
      225 GETTABLEKS                       R20 R20 K35 ["Utils"]
      227 GETTABLEKS                       R20 R20 K37 ["fetchScopeThumbnailAsync"]
      229 MOVE                             R21 R6
      230 MOVE                             R22 R19
      231 CALL                             R20 2 0
      232 JUMP                             ; [+13]
      233 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      235 MOVE                             R22 R6
      236 NAMECALL                         R20 R3 K38 ["getThumbnailUriForScope"]
      238 CALL                             R20 2 1
      239 JUMPIFEQ                         R4 R20 ; [+6]
      241 MOVE                             R22 R6
      242 MOVE                             R23 R19
      243 NAMECALL                         R20 R3 K39 ["getThumbnailForScopeAsync"]
      245 CALL                             R20 3 0
      246 GETUPVAL                         R20 13
      247 GETTABLEKS                       R20 R20 K8 ["createElement"]
      249 GETUPVAL                         R21 21
      250 DUPTABLE                         R22 K33 [{"LayoutOrder", "Text", "Image", "UseIcon", "TextOnly"}]
      251 NAMECALL                         R23 R2 K11 ["getNextOrder"]
      253 CALL                             R23 1 1
      254 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      256 SETTABLEKS                       R16 R22 K29 ["Text"]
      258 SETTABLEKS                       R17 R22 K30 ["Image"]
      260 SETTABLEKS                       R18 R22 K31 ["UseIcon"]
      262 SETTABLEKS                       R14 R22 K32 ["TextOnly"]
      264 CALL                             R20 2 1
      265 SETTABLEKS                       R20 R15 K34 ["ScopeTitle"]
      267 GETUPVAL                         R19 13
      268 GETTABLEKS                       R19 R19 K8 ["createElement"]
      270 GETUPVAL                         R20 22
      271 DUPTABLE                         R21 K10 [{"LayoutOrder"}]
      272 NAMECALL                         R22 R2 K11 ["getNextOrder"]
      274 CALL                             R22 1 1
      275 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      277 CALL                             R19 2 1
      278 SETTABLEKS                       R19 R15 K40 ["Options"]
      280 GETUPVAL                         R19 13
      281 GETTABLEKS                       R19 R19 K8 ["createElement"]
      283 GETUPVAL                         R20 17
      284 GETTABLEKS                       R20 R20 K41 ["View"]
      286 DUPTABLE                         R21 K45 [{["LayoutOrder"], ["tag"], ["testId"] = "header-bar"}]
      287 GETTABLEKS                       R22 R0 K9 ["LayoutOrder"]
      289 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      291 LOADK                            R22 K46 ["row align-x-left align-y-center size-full-1000 padding-left-xxsmall %*"]
      292 JUMPIF                           R8 ; [+2]
      293 LOADK                            R24 K47 ["am-padding-left-sidebar-toggle"]
      294 JUMP                             ; [+1]
      295 LOADK                            R24 K2 [""]
      296 NAMECALL                         R22 R22 K48 ["format"]
      298 CALL                             R22 2 1
      299 SETTABLEKS                       R22 R21 K42 ["tag"]
      301 MOVE                             R22 R15
      302 CALL                             R19 3 -1
      303 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["getLocalizedScopeName"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       53 GETTABLEKS                       R8 R7 K16 ["Localization"]
       55 GETTABLEKS                       R9 R4 K13 ["Util"]
       57 GETTABLEKS                       R9 R9 K17 ["LayoutOrderIterator"]
       59 GETIMPORT                        R10 K5 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K18 ["HeaderOptions"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K11 ["Src"]
       70 GETTABLEKS                       R12 R12 K19 ["Components"]
       72 GETTABLEKS                       R12 R12 K20 ["App"]
       74 GETTABLEKS                       R12 R12 K21 ["MainView"]
       76 GETTABLEKS                       R12 R12 K22 ["NavigationButtons"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Src"]
       83 GETTABLEKS                       R13 R13 K23 ["Networking"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R2 K24 ["useState"]
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R0 K11 ["Src"]
       92 GETTABLEKS                       R15 R15 K25 ["Hooks"]
       94 GETTABLEKS                       R15 R15 K26 ["useSearchInfo"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K11 ["Src"]
      101 GETTABLEKS                       R16 R16 K25 ["Hooks"]
      103 GETTABLEKS                       R16 R16 K27 ["useCurrentScope"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K11 ["Src"]
      110 GETTABLEKS                       R17 R17 K25 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K28 ["useShowSidebar"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K11 ["Src"]
      119 GETTABLEKS                       R18 R18 K25 ["Hooks"]
      121 GETTABLEKS                       R18 R18 K29 ["useAppSizes"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K11 ["Src"]
      128 GETTABLEKS                       R19 R19 K25 ["Hooks"]
      130 GETTABLEKS                       R19 R19 K30 ["usePluginSize"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K11 ["Src"]
      137 GETTABLEKS                       R20 R20 K25 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useIsMainViewNarrowerThan"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K11 ["Src"]
      146 GETTABLEKS                       R21 R21 K25 ["Hooks"]
      148 GETTABLEKS                       R21 R21 K32 ["useIxpValue"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K5 [require]
      153 GETTABLEKS                       R22 R0 K11 ["Src"]
      155 GETTABLEKS                       R22 R22 K33 ["Flags"]
      157 GETTABLEKS                       R22 R22 K34 ["getFFlagAmrFlexPaneSizing"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K11 ["Src"]
      164 GETTABLEKS                       R23 R23 K33 ["Flags"]
      166 GETTABLEKS                       R23 R23 K35 ["getFFlagAmrUseAssetManagementNetworking"]
      168 CALL                             R22 1 1
      169 NEWTABLE                         R23 4 0
      171 GETTABLEKS                       R24 R5 K36 ["ScopeType"]
      173 GETTABLEKS                       R24 R24 K37 ["User"]
      175 GETTABLEKS                       R25 R3 K38 ["Enums"]
      177 GETTABLEKS                       R25 R25 K39 ["IconName"]
      179 GETTABLEKS                       R25 R25 K40 ["Person"]
      181 SETTABLE                         R25 R23 R24
      182 GETTABLEKS                       R24 R5 K36 ["ScopeType"]
      184 GETTABLEKS                       R24 R24 K41 ["Group"]
      186 GETTABLEKS                       R25 R3 K38 ["Enums"]
      188 GETTABLEKS                       R25 R25 K39 ["IconName"]
      190 GETTABLEKS                       R25 R25 K42 ["ThreePeople"]
      192 SETTABLE                         R25 R23 R24
      193 GETTABLEKS                       R24 R5 K36 ["ScopeType"]
      195 GETTABLEKS                       R24 R24 K43 ["RecentUploads"]
      197 GETTABLEKS                       R25 R3 K38 ["Enums"]
      199 GETTABLEKS                       R25 R25 K39 ["IconName"]
      201 GETTABLEKS                       R25 R25 K44 ["ClockSpinReverse"]
      203 SETTABLE                         R25 R23 R24
      204 DUPCLOSURE                       R24 K45 [PROTO_0]
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R2
      208 DUPCLOSURE                       R25 K46 [PROTO_1]
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R3
      212 DUPCLOSURE                       R26 K47 [PROTO_3]
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R23
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R10
      236 RETURN                           R26 1
