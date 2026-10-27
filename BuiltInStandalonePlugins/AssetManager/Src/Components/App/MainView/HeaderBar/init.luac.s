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
      206 JUMP                             ; [+37]
      207 NEWCLOSURE                       R19 P0
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R5
      210 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      212 MOVE                             R22 R6
      213 NAMECALL                         R20 R3 K35 ["getThumbnailUriForScope"]
      215 CALL                             R20 2 1
      216 JUMPIFEQ                         R4 R20 ; [+6]
      218 MOVE                             R22 R6
      219 MOVE                             R23 R19
      220 NAMECALL                         R20 R3 K36 ["getThumbnailForScopeAsync"]
      222 CALL                             R20 3 0
      223 GETUPVAL                         R20 13
      224 GETTABLEKS                       R20 R20 K8 ["createElement"]
      226 GETUPVAL                         R21 19
      227 DUPTABLE                         R22 K33 [{"LayoutOrder", "Text", "Image", "UseIcon", "TextOnly"}]
      228 NAMECALL                         R23 R2 K11 ["getNextOrder"]
      230 CALL                             R23 1 1
      231 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      233 SETTABLEKS                       R16 R22 K29 ["Text"]
      235 SETTABLEKS                       R17 R22 K30 ["Image"]
      237 SETTABLEKS                       R18 R22 K31 ["UseIcon"]
      239 SETTABLEKS                       R14 R22 K32 ["TextOnly"]
      241 CALL                             R20 2 1
      242 SETTABLEKS                       R20 R15 K34 ["ScopeTitle"]
      244 GETUPVAL                         R19 13
      245 GETTABLEKS                       R19 R19 K8 ["createElement"]
      247 GETUPVAL                         R20 20
      248 DUPTABLE                         R21 K10 [{"LayoutOrder"}]
      249 NAMECALL                         R22 R2 K11 ["getNextOrder"]
      251 CALL                             R22 1 1
      252 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      254 CALL                             R19 2 1
      255 SETTABLEKS                       R19 R15 K37 ["Options"]
      257 GETUPVAL                         R19 13
      258 GETTABLEKS                       R19 R19 K8 ["createElement"]
      260 GETUPVAL                         R20 17
      261 GETTABLEKS                       R20 R20 K38 ["View"]
      263 DUPTABLE                         R21 K42 [{["LayoutOrder"], ["tag"], ["testId"] = "header-bar"}]
      264 GETTABLEKS                       R22 R0 K9 ["LayoutOrder"]
      266 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      268 LOADK                            R22 K43 ["row align-x-left align-y-center size-full-1000 padding-left-xxsmall %*"]
      269 JUMPIF                           R8 ; [+2]
      270 LOADK                            R24 K44 ["am-padding-left-sidebar-toggle"]
      271 JUMP                             ; [+1]
      272 LOADK                            R24 K2 [""]
      273 NAMECALL                         R22 R22 K45 ["format"]
      275 CALL                             R22 2 1
      276 SETTABLEKS                       R22 R21 K39 ["tag"]
      278 MOVE                             R22 R15
      279 CALL                             R19 3 -1
      280 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["getLocalizedScopeName"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R8 R3 K12 ["Util"]
       50 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETIMPORT                        R10 K1 [script]
       56 GETTABLEKS                       R10 R10 K17 ["HeaderOptions"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R11 R11 K18 ["Components"]
       65 GETTABLEKS                       R11 R11 K19 ["App"]
       67 GETTABLEKS                       R11 R11 K20 ["MainView"]
       69 GETTABLEKS                       R11 R11 K21 ["NavigationButtons"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R12 R12 K22 ["Networking"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R12 R1 K23 ["useState"]
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K10 ["Src"]
       85 GETTABLEKS                       R14 R14 K24 ["Hooks"]
       87 GETTABLEKS                       R14 R14 K25 ["useSearchInfo"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K10 ["Src"]
       94 GETTABLEKS                       R15 R15 K24 ["Hooks"]
       96 GETTABLEKS                       R15 R15 K26 ["useCurrentScope"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K10 ["Src"]
      103 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K27 ["useShowSidebar"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K10 ["Src"]
      112 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      114 GETTABLEKS                       R17 R17 K28 ["useAppSizes"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K10 ["Src"]
      121 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      123 GETTABLEKS                       R18 R18 K29 ["usePluginSize"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K10 ["Src"]
      130 GETTABLEKS                       R19 R19 K24 ["Hooks"]
      132 GETTABLEKS                       R19 R19 K30 ["useIsMainViewNarrowerThan"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K10 ["Src"]
      139 GETTABLEKS                       R20 R20 K31 ["Flags"]
      141 GETTABLEKS                       R20 R20 K32 ["getFFlagAmrFlexPaneSizing"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K5 [require]
      146 GETTABLEKS                       R21 R0 K10 ["Src"]
      148 GETTABLEKS                       R21 R21 K24 ["Hooks"]
      150 GETTABLEKS                       R21 R21 K33 ["useIxpValue"]
      152 CALL                             R20 1 1
      153 NEWTABLE                         R21 4 0
      155 GETTABLEKS                       R22 R4 K34 ["ScopeType"]
      157 GETTABLEKS                       R22 R22 K35 ["User"]
      159 GETTABLEKS                       R23 R2 K36 ["Enums"]
      161 GETTABLEKS                       R23 R23 K37 ["IconName"]
      163 GETTABLEKS                       R23 R23 K38 ["Person"]
      165 SETTABLE                         R23 R21 R22
      166 GETTABLEKS                       R22 R4 K34 ["ScopeType"]
      168 GETTABLEKS                       R22 R22 K39 ["Group"]
      170 GETTABLEKS                       R23 R2 K36 ["Enums"]
      172 GETTABLEKS                       R23 R23 K37 ["IconName"]
      174 GETTABLEKS                       R23 R23 K40 ["ThreePeople"]
      176 SETTABLE                         R23 R21 R22
      177 GETTABLEKS                       R22 R4 K34 ["ScopeType"]
      179 GETTABLEKS                       R22 R22 K41 ["RecentUploads"]
      181 GETTABLEKS                       R23 R2 K36 ["Enums"]
      183 GETTABLEKS                       R23 R23 K37 ["IconName"]
      185 GETTABLEKS                       R23 R23 K42 ["ClockSpinReverse"]
      187 SETTABLE                         R23 R21 R22
      188 DUPCLOSURE                       R22 K43 [PROTO_0]
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R1
      192 DUPCLOSURE                       R23 K44 [PROTO_1]
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 DUPCLOSURE                       R24 K45 [PROTO_3]
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R17
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R9
      218 RETURN                           R24 1
