PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["View"]
       12 DUPTABLE                         R4 K7 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center grow padding-small"}]
       13 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       17 DUPTABLE                         R5 K10 [{"Icon", "Text"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K2 ["createElement"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K8 ["Icon"]
       24 DUPTABLE                         R8 K16 [{["LayoutOrder"] = 1, ["name"], ["variant"], ["style"], ["size"]}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K17 ["Enums"]
       28 GETTABLEKS                       R9 R9 K18 ["IconName"]
       30 GETTABLEKS                       R9 R9 K19 ["Folder"]
       32 SETTABLEKS                       R9 R8 K12 ["name"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K17 ["Enums"]
       37 GETTABLEKS                       R9 R9 K20 ["IconVariant"]
       39 GETTABLEKS                       R9 R9 K21 ["Filled"]
       41 SETTABLEKS                       R9 R8 K13 ["variant"]
       43 GETTABLEKS                       R9 R1 K22 ["Color"]
       45 GETTABLEKS                       R9 R9 K23 ["Extended"]
       47 GETTABLEKS                       R9 R9 K24 ["Yellow"]
       49 GETTABLEKS                       R9 R9 K25 ["Yellow_300"]
       51 SETTABLEKS                       R9 R8 K14 ["style"]
       53 GETTABLEKS                       R9 R1 K26 ["Size"]
       55 GETTABLEKS                       R9 R9 K27 ["Size_500"]
       57 SETTABLEKS                       R9 R8 K15 ["size"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K8 ["Icon"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K2 ["createElement"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K9 ["Text"]
       68 DUPTABLE                         R8 K30 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-0 auto-xy padding-small text-label-large text-truncate-end"}]
       69 GETTABLEKS                       R9 R0 K9 ["Text"]
       71 SETTABLEKS                       R9 R8 K9 ["Text"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K9 ["Text"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center grow padding-small"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 DUPTABLE                         R4 K8 [{"Icon", "Text"}]
       12 GETTABLEKS                       R6 R0 K9 ["UseIcon"]
       14 JUMPIFNOT                        R6 ; [+31]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K6 ["Icon"]
       21 DUPTABLE                         R7 K15 [{["LayoutOrder"] = 1, ["name"], ["variant"], ["size"], ["tag"] = "padding-small radius-circle"}]
       22 GETTABLEKS                       R8 R0 K16 ["Image"]
       24 SETTABLEKS                       R8 R7 K11 ["name"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K17 ["Enums"]
       29 GETTABLEKS                       R8 R8 K18 ["IconVariant"]
       31 GETTABLEKS                       R8 R8 K19 ["Filled"]
       33 SETTABLEKS                       R8 R7 K12 ["variant"]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K17 ["Enums"]
       38 GETTABLEKS                       R8 R8 K20 ["IconSize"]
       40 GETTABLEKS                       R8 R8 K21 ["Medium"]
       42 SETTABLEKS                       R8 R7 K13 ["size"]
       44 CALL                             R5 2 1
       45 JUMP                             ; [+12]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["createElement"]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K16 ["Image"]
       52 DUPTABLE                         R7 K23 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-500 padding-small radius-circle"}]
       53 GETTABLEKS                       R8 R0 K16 ["Image"]
       55 SETTABLEKS                       R8 R7 K16 ["Image"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K6 ["Icon"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K0 ["createElement"]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K7 ["Text"]
       66 DUPTABLE                         R7 K26 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-0 auto-xy padding-small text-label-large text-truncate-end"}]
       67 GETTABLEKS                       R8 R0 K7 ["Text"]
       69 SETTABLEKS                       R8 R7 K7 ["Text"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K7 ["Text"]
       74 CALL                             R1 3 -1
       75 RETURN                           R1 -1

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
       21 NEWTABLE                         R9 4 0
       23 GETUPVAL                         R10 7
       24 GETTABLEKS                       R10 R10 K3 ["createElement"]
       26 GETUPVAL                         R11 8
       27 DUPTABLE                         R12 K5 [{"LayoutOrder"}]
       28 NAMECALL                         R13 R2 K6 ["getNextOrder"]
       30 CALL                             R13 1 1
       31 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       33 CALL                             R10 2 1
       34 SETTABLEKS                       R10 R9 K7 ["NavButtons"]
       36 GETTABLEKS                       R11 R7 K8 ["ShowSearchOptions"]
       38 JUMPIFNOT                        R11 ; [+6]
       39 LOADK                            R12 K9 ["SearchOptions"]
       40 LOADK                            R13 K10 ["SearchResults"]
       41 NAMECALL                         R10 R1 K11 ["getText"]
       43 CALL                             R10 3 1
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R10 9
       46 MOVE                             R11 R6
       47 MOVE                             R12 R1
       48 CALL                             R10 2 1
       49 LOADNIL                          R11
       50 GETTABLEKS                       R12 R7 K8 ["ShowSearchOptions"]
       52 JUMPIF                           R12 ; [+11]
       53 GETTABLEKS                       R13 R6 K12 ["Type"]
       55 GETUPVAL                         R14 10
       56 GETTABLEKS                       R14 R14 K13 ["ScopeType"]
       58 GETTABLEKS                       R14 R14 K14 ["RecentUploads"]
       60 JUMPIFEQ                         R13 R14 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 GETTABLEKS                       R13 R7 K8 ["ShowSearchOptions"]
       66 JUMPIFNOT                        R13 ; [+8]
       67 GETUPVAL                         R13 11
       68 GETTABLEKS                       R13 R13 K15 ["Enums"]
       70 GETTABLEKS                       R13 R13 K16 ["IconName"]
       72 GETTABLEKS                       R11 R13 K17 ["MagnifyingGlass"]
       74 JUMP                             ; [+13]
       75 GETUPVAL                         R14 12
       76 GETTABLEKS                       R15 R6 K12 ["Type"]
       78 GETTABLE                         R13 R14 R15
       79 JUMPIF                           R13 ; [+7]
       80 GETUPVAL                         R13 11
       81 GETTABLEKS                       R13 R13 K15 ["Enums"]
       83 GETTABLEKS                       R13 R13 K16 ["IconName"]
       85 GETTABLEKS                       R13 R13 K18 ["Tilt"]
       87 MOVE                             R11 R13
       88 JUMPIF                           R12 ; [+3]
       89 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       91 MOVE                             R11 R4
       92 GETTABLEKS                       R13 R7 K8 ["ShowSearchOptions"]
       94 JUMPIF                           R13 ; [+29]
       95 GETTABLEKS                       R13 R6 K12 ["Type"]
       97 GETUPVAL                         R14 10
       98 GETTABLEKS                       R14 R14 K13 ["ScopeType"]
      100 GETTABLEKS                       R14 R14 K19 ["Folder"]
      102 JUMPIFNOTEQ                      R13 R14 ; [+21]
      104 GETUPVAL                         R13 7
      105 GETTABLEKS                       R13 R13 K3 ["createElement"]
      107 GETUPVAL                         R14 13
      108 DUPTABLE                         R15 K23 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      109 NAMECALL                         R16 R2 K6 ["getNextOrder"]
      111 CALL                             R16 1 1
      112 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      114 SETTABLEKS                       R10 R15 K20 ["Text"]
      116 SETTABLEKS                       R11 R15 K21 ["Image"]
      118 SETTABLEKS                       R12 R15 K22 ["UseIcon"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R9 K24 ["ScopeTitle"]
      123 JUMP                             ; [+35]
      124 NEWCLOSURE                       R13 P0
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      129 MOVE                             R16 R6
      130 NAMECALL                         R14 R3 K25 ["getThumbnailUriForScope"]
      132 CALL                             R14 2 1
      133 JUMPIFEQ                         R4 R14 ; [+6]
      135 MOVE                             R16 R6
      136 MOVE                             R17 R13
      137 NAMECALL                         R14 R3 K26 ["getThumbnailForScopeAsync"]
      139 CALL                             R14 3 0
      140 GETUPVAL                         R14 7
      141 GETTABLEKS                       R14 R14 K3 ["createElement"]
      143 GETUPVAL                         R15 14
      144 DUPTABLE                         R16 K23 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      145 NAMECALL                         R17 R2 K6 ["getNextOrder"]
      147 CALL                             R17 1 1
      148 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      150 SETTABLEKS                       R10 R16 K20 ["Text"]
      152 SETTABLEKS                       R11 R16 K21 ["Image"]
      154 SETTABLEKS                       R12 R16 K22 ["UseIcon"]
      156 CALL                             R14 2 1
      157 SETTABLEKS                       R14 R9 K24 ["ScopeTitle"]
      159 GETUPVAL                         R13 7
      160 GETTABLEKS                       R13 R13 K3 ["createElement"]
      162 GETUPVAL                         R14 15
      163 DUPTABLE                         R15 K5 [{"LayoutOrder"}]
      164 NAMECALL                         R16 R2 K6 ["getNextOrder"]
      166 CALL                             R16 1 1
      167 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      169 CALL                             R13 2 1
      170 SETTABLEKS                       R13 R9 K27 ["Options"]
      172 GETUPVAL                         R13 7
      173 GETTABLEKS                       R13 R13 K3 ["createElement"]
      175 GETUPVAL                         R14 11
      176 GETTABLEKS                       R14 R14 K28 ["View"]
      178 DUPTABLE                         R15 K32 [{["LayoutOrder"], ["tag"], ["testId"] = "header-bar"}]
      179 GETTABLEKS                       R16 R0 K4 ["LayoutOrder"]
      181 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      183 LOADK                            R17 K33 ["row align-x-left align-y-center size-full-1000 padding-left-xxsmall %*"]
      184 JUMPIF                           R8 ; [+2]
      185 LOADK                            R19 K34 ["am-padding-left-sidebar-toggle"]
      186 JUMP                             ; [+1]
      187 LOADK                            R19 K2 [""]
      188 NAMECALL                         R17 R17 K35 ["format"]
      190 CALL                             R17 2 1
      191 MOVE                             R16 R17
      192 SETTABLEKS                       R16 R15 K29 ["tag"]
      194 MOVE                             R16 R9
      195 CALL                             R13 3 -1
      196 RETURN                           R13 -1

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
      108 NEWTABLE                         R16 4 0
      110 GETTABLEKS                       R17 R4 K28 ["ScopeType"]
      112 GETTABLEKS                       R17 R17 K29 ["User"]
      114 GETTABLEKS                       R18 R2 K30 ["Enums"]
      116 GETTABLEKS                       R18 R18 K31 ["IconName"]
      118 GETTABLEKS                       R18 R18 K32 ["Person"]
      120 SETTABLE                         R18 R16 R17
      121 GETTABLEKS                       R17 R4 K28 ["ScopeType"]
      123 GETTABLEKS                       R17 R17 K33 ["Group"]
      125 GETTABLEKS                       R18 R2 K30 ["Enums"]
      127 GETTABLEKS                       R18 R18 K31 ["IconName"]
      129 GETTABLEKS                       R18 R18 K34 ["ThreePeople"]
      131 SETTABLE                         R18 R16 R17
      132 GETTABLEKS                       R17 R4 K28 ["ScopeType"]
      134 GETTABLEKS                       R17 R17 K35 ["RecentUploads"]
      136 GETTABLEKS                       R18 R2 K30 ["Enums"]
      138 GETTABLEKS                       R18 R18 K31 ["IconName"]
      140 GETTABLEKS                       R18 R18 K36 ["ClockSpinReverse"]
      142 SETTABLE                         R18 R16 R17
      143 DUPCLOSURE                       R17 K37 [PROTO_0]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R1
      146 DUPCLOSURE                       R18 K38 [PROTO_1]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R2
      149 DUPCLOSURE                       R19 K39 [PROTO_3]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R9
      166 RETURN                           R19 1
