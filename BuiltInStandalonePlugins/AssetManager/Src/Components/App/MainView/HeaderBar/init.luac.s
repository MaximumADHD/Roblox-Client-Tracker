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
       21 GETUPVAL                         R9 7
       22 CALL                             R9 0 3
       23 GETUPVAL                         R12 8
       24 CALL                             R12 0 1
       25 JUMPIFNOT                        R8 ; [+4]
       26 GETTABLEN                        R13 R12 2
       27 GETTABLEKS                       R13 R13 K3 ["Offset"]
       29 JUMP                             ; [+1]
       30 MOVE                             R13 R9
       31 NEWTABLE                         R14 4 0
       33 GETUPVAL                         R15 9
       34 GETTABLEKS                       R15 R15 K4 ["createElement"]
       36 GETUPVAL                         R16 10
       37 DUPTABLE                         R17 K6 [{"LayoutOrder"}]
       38 NAMECALL                         R18 R2 K7 ["getNextOrder"]
       40 CALL                             R18 1 1
       41 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
       43 CALL                             R15 2 1
       44 SETTABLEKS                       R15 R14 K8 ["NavButtons"]
       46 GETTABLEKS                       R16 R7 K9 ["ShowSearchOptions"]
       48 JUMPIFNOT                        R16 ; [+6]
       49 LOADK                            R17 K10 ["SearchOptions"]
       50 LOADK                            R18 K11 ["SearchResults"]
       51 NAMECALL                         R15 R1 K12 ["getText"]
       53 CALL                             R15 3 1
       54 JUMP                             ; [+4]
       55 GETUPVAL                         R15 11
       56 MOVE                             R16 R6
       57 MOVE                             R17 R1
       58 CALL                             R15 2 1
       59 LOADNIL                          R16
       60 GETTABLEKS                       R17 R7 K9 ["ShowSearchOptions"]
       62 JUMPIF                           R17 ; [+11]
       63 GETTABLEKS                       R18 R6 K13 ["Type"]
       65 GETUPVAL                         R19 12
       66 GETTABLEKS                       R19 R19 K14 ["ScopeType"]
       68 GETTABLEKS                       R19 R19 K15 ["RecentUploads"]
       70 JUMPIFEQ                         R18 R19 ; [+2]
       72 LOADB                            R17 0 +1
       73 LOADB                            R17 1
       74 GETTABLEKS                       R18 R7 K9 ["ShowSearchOptions"]
       76 JUMPIFNOT                        R18 ; [+8]
       77 GETUPVAL                         R18 13
       78 GETTABLEKS                       R18 R18 K16 ["Enums"]
       80 GETTABLEKS                       R18 R18 K17 ["IconName"]
       82 GETTABLEKS                       R16 R18 K18 ["MagnifyingGlass"]
       84 JUMP                             ; [+13]
       85 GETUPVAL                         R19 14
       86 GETTABLEKS                       R20 R6 K13 ["Type"]
       88 GETTABLE                         R18 R19 R20
       89 JUMPIF                           R18 ; [+7]
       90 GETUPVAL                         R18 13
       91 GETTABLEKS                       R18 R18 K16 ["Enums"]
       93 GETTABLEKS                       R18 R18 K17 ["IconName"]
       95 GETTABLEKS                       R18 R18 K19 ["Tilt"]
       97 MOVE                             R16 R18
       98 JUMPIF                           R17 ; [+3]
       99 JUMPIFEQKS                       R4 K2 [""] ; [+2]
      101 MOVE                             R16 R4
      102 LOADN                            R19 280
      103 JUMPIFLT                         R13 R19 ; [+2]
      105 LOADB                            R18 0 +1
      106 LOADB                            R18 1
      107 GETTABLEKS                       R19 R7 K9 ["ShowSearchOptions"]
      109 JUMPIF                           R19 ; [+31]
      110 GETTABLEKS                       R19 R6 K13 ["Type"]
      112 GETUPVAL                         R20 12
      113 GETTABLEKS                       R20 R20 K14 ["ScopeType"]
      115 GETTABLEKS                       R20 R20 K20 ["Folder"]
      117 JUMPIFNOTEQ                      R19 R20 ; [+23]
      119 GETUPVAL                         R19 9
      120 GETTABLEKS                       R19 R19 K4 ["createElement"]
      122 GETUPVAL                         R20 15
      123 DUPTABLE                         R21 K25 [{"LayoutOrder", "Text", "Image", "UseIcon", "TextOnly"}]
      124 NAMECALL                         R22 R2 K7 ["getNextOrder"]
      126 CALL                             R22 1 1
      127 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      129 SETTABLEKS                       R15 R21 K21 ["Text"]
      131 SETTABLEKS                       R16 R21 K22 ["Image"]
      133 SETTABLEKS                       R17 R21 K23 ["UseIcon"]
      135 SETTABLEKS                       R18 R21 K24 ["TextOnly"]
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R14 K26 ["ScopeTitle"]
      140 JUMP                             ; [+37]
      141 NEWCLOSURE                       R19 P0
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R5
      144 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      146 MOVE                             R22 R6
      147 NAMECALL                         R20 R3 K27 ["getThumbnailUriForScope"]
      149 CALL                             R20 2 1
      150 JUMPIFEQ                         R4 R20 ; [+6]
      152 MOVE                             R22 R6
      153 MOVE                             R23 R19
      154 NAMECALL                         R20 R3 K28 ["getThumbnailForScopeAsync"]
      156 CALL                             R20 3 0
      157 GETUPVAL                         R20 9
      158 GETTABLEKS                       R20 R20 K4 ["createElement"]
      160 GETUPVAL                         R21 16
      161 DUPTABLE                         R22 K25 [{"LayoutOrder", "Text", "Image", "UseIcon", "TextOnly"}]
      162 NAMECALL                         R23 R2 K7 ["getNextOrder"]
      164 CALL                             R23 1 1
      165 SETTABLEKS                       R23 R22 K5 ["LayoutOrder"]
      167 SETTABLEKS                       R15 R22 K21 ["Text"]
      169 SETTABLEKS                       R16 R22 K22 ["Image"]
      171 SETTABLEKS                       R17 R22 K23 ["UseIcon"]
      173 SETTABLEKS                       R18 R22 K24 ["TextOnly"]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R14 K26 ["ScopeTitle"]
      178 GETUPVAL                         R19 9
      179 GETTABLEKS                       R19 R19 K4 ["createElement"]
      181 GETUPVAL                         R20 17
      182 DUPTABLE                         R21 K6 [{"LayoutOrder"}]
      183 NAMECALL                         R22 R2 K7 ["getNextOrder"]
      185 CALL                             R22 1 1
      186 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R14 K29 ["Options"]
      191 GETUPVAL                         R19 9
      192 GETTABLEKS                       R19 R19 K4 ["createElement"]
      194 GETUPVAL                         R20 13
      195 GETTABLEKS                       R20 R20 K30 ["View"]
      197 DUPTABLE                         R21 K34 [{["LayoutOrder"], ["tag"], ["testId"] = "header-bar"}]
      198 GETTABLEKS                       R22 R0 K5 ["LayoutOrder"]
      200 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      202 LOADK                            R23 K35 ["row align-x-left align-y-center size-full-1000 padding-left-xxsmall %*"]
      203 JUMPIF                           R8 ; [+2]
      204 LOADK                            R25 K36 ["am-padding-left-sidebar-toggle"]
      205 JUMP                             ; [+1]
      206 LOADK                            R25 K2 [""]
      207 NAMECALL                         R23 R23 K37 ["format"]
      209 CALL                             R23 2 1
      210 MOVE                             R22 R23
      211 SETTABLEKS                       R22 R21 K31 ["tag"]
      213 MOVE                             R22 R14
      214 CALL                             R19 3 -1
      215 RETURN                           R19 -1

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
      126 NEWTABLE                         R18 4 0
      128 GETTABLEKS                       R19 R4 K30 ["ScopeType"]
      130 GETTABLEKS                       R19 R19 K31 ["User"]
      132 GETTABLEKS                       R20 R2 K32 ["Enums"]
      134 GETTABLEKS                       R20 R20 K33 ["IconName"]
      136 GETTABLEKS                       R20 R20 K34 ["Person"]
      138 SETTABLE                         R20 R18 R19
      139 GETTABLEKS                       R19 R4 K30 ["ScopeType"]
      141 GETTABLEKS                       R19 R19 K35 ["Group"]
      143 GETTABLEKS                       R20 R2 K32 ["Enums"]
      145 GETTABLEKS                       R20 R20 K33 ["IconName"]
      147 GETTABLEKS                       R20 R20 K36 ["ThreePeople"]
      149 SETTABLE                         R20 R18 R19
      150 GETTABLEKS                       R19 R4 K30 ["ScopeType"]
      152 GETTABLEKS                       R19 R19 K37 ["RecentUploads"]
      154 GETTABLEKS                       R20 R2 K32 ["Enums"]
      156 GETTABLEKS                       R20 R20 K33 ["IconName"]
      158 GETTABLEKS                       R20 R20 K38 ["ClockSpinReverse"]
      160 SETTABLE                         R20 R18 R19
      161 DUPCLOSURE                       R19 K39 [PROTO_0]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R1
      165 DUPCLOSURE                       R20 K40 [PROTO_1]
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R2
      169 DUPCLOSURE                       R21 K41 [PROTO_3]
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R9
      188 RETURN                           R21 1
