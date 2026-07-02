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
       23 JUMPIF                           R8 ; [+9]
       24 GETUPVAL                         R10 7
       25 GETTABLEKS                       R10 R10 K3 ["createElement"]
       27 GETUPVAL                         R11 8
       28 GETTABLEKS                       R11 R11 K4 ["View"]
       30 DUPTABLE                         R12 K7 [{["tag"] = "TopSidebarButtonPadding"}]
       31 CALL                             R10 2 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R10
       34 SETTABLEKS                       R10 R9 K8 ["SidebarButtonPadding"]
       36 GETUPVAL                         R10 7
       37 GETTABLEKS                       R10 R10 K3 ["createElement"]
       39 GETUPVAL                         R11 9
       40 DUPTABLE                         R12 K10 [{"LayoutOrder"}]
       41 NAMECALL                         R13 R2 K11 ["getNextOrder"]
       43 CALL                             R13 1 1
       44 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K12 ["NavButtons"]
       49 GETTABLEKS                       R11 R7 K13 ["ShowSearchOptions"]
       51 JUMPIFNOT                        R11 ; [+6]
       52 LOADK                            R12 K14 ["SearchOptions"]
       53 LOADK                            R13 K15 ["SearchResults"]
       54 NAMECALL                         R10 R1 K16 ["getText"]
       56 CALL                             R10 3 1
       57 JUMP                             ; [+4]
       58 GETUPVAL                         R10 10
       59 MOVE                             R11 R6
       60 MOVE                             R12 R1
       61 CALL                             R10 2 1
       62 LOADNIL                          R11
       63 GETTABLEKS                       R12 R7 K13 ["ShowSearchOptions"]
       65 JUMPIF                           R12 ; [+11]
       66 GETTABLEKS                       R13 R6 K17 ["Type"]
       68 GETUPVAL                         R14 11
       69 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
       71 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
       73 JUMPIFEQ                         R13 R14 ; [+2]
       75 LOADB                            R12 0 +1
       76 LOADB                            R12 1
       77 GETTABLEKS                       R13 R7 K13 ["ShowSearchOptions"]
       79 JUMPIFNOT                        R13 ; [+8]
       80 GETUPVAL                         R13 8
       81 GETTABLEKS                       R13 R13 K20 ["Enums"]
       83 GETTABLEKS                       R13 R13 K21 ["IconName"]
       85 GETTABLEKS                       R11 R13 K22 ["MagnifyingGlass"]
       87 JUMP                             ; [+13]
       88 GETUPVAL                         R14 12
       89 GETTABLEKS                       R15 R6 K17 ["Type"]
       91 GETTABLE                         R13 R14 R15
       92 JUMPIF                           R13 ; [+7]
       93 GETUPVAL                         R13 8
       94 GETTABLEKS                       R13 R13 K20 ["Enums"]
       96 GETTABLEKS                       R13 R13 K21 ["IconName"]
       98 GETTABLEKS                       R13 R13 K23 ["Tilt"]
      100 MOVE                             R11 R13
      101 JUMPIF                           R12 ; [+3]
      102 JUMPIFEQKS                       R4 K2 [""] ; [+2]
      104 MOVE                             R11 R4
      105 GETTABLEKS                       R13 R7 K13 ["ShowSearchOptions"]
      107 JUMPIF                           R13 ; [+29]
      108 GETTABLEKS                       R13 R6 K17 ["Type"]
      110 GETUPVAL                         R14 11
      111 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
      113 GETTABLEKS                       R14 R14 K24 ["Folder"]
      115 JUMPIFNOTEQ                      R13 R14 ; [+21]
      117 GETUPVAL                         R13 7
      118 GETTABLEKS                       R13 R13 K3 ["createElement"]
      120 GETUPVAL                         R14 13
      121 DUPTABLE                         R15 K28 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      122 NAMECALL                         R16 R2 K11 ["getNextOrder"]
      124 CALL                             R16 1 1
      125 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      127 SETTABLEKS                       R10 R15 K25 ["Text"]
      129 SETTABLEKS                       R11 R15 K26 ["Image"]
      131 SETTABLEKS                       R12 R15 K27 ["UseIcon"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R9 K29 ["ScopeTitle"]
      136 JUMP                             ; [+35]
      137 NEWCLOSURE                       R13 P0
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      142 MOVE                             R16 R6
      143 NAMECALL                         R14 R3 K30 ["getThumbnailUriForScope"]
      145 CALL                             R14 2 1
      146 JUMPIFEQ                         R4 R14 ; [+6]
      148 MOVE                             R16 R6
      149 MOVE                             R17 R13
      150 NAMECALL                         R14 R3 K31 ["getThumbnailForScopeAsync"]
      152 CALL                             R14 3 0
      153 GETUPVAL                         R14 7
      154 GETTABLEKS                       R14 R14 K3 ["createElement"]
      156 GETUPVAL                         R15 14
      157 DUPTABLE                         R16 K28 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      158 NAMECALL                         R17 R2 K11 ["getNextOrder"]
      160 CALL                             R17 1 1
      161 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      163 SETTABLEKS                       R10 R16 K25 ["Text"]
      165 SETTABLEKS                       R11 R16 K26 ["Image"]
      167 SETTABLEKS                       R12 R16 K27 ["UseIcon"]
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R9 K29 ["ScopeTitle"]
      172 GETUPVAL                         R13 7
      173 GETTABLEKS                       R13 R13 K3 ["createElement"]
      175 GETUPVAL                         R14 15
      176 DUPTABLE                         R15 K10 [{"LayoutOrder"}]
      177 NAMECALL                         R16 R2 K11 ["getNextOrder"]
      179 CALL                             R16 1 1
      180 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      182 CALL                             R13 2 1
      183 SETTABLEKS                       R13 R9 K32 ["Options"]
      185 GETUPVAL                         R13 7
      186 GETTABLEKS                       R13 R13 K3 ["createElement"]
      188 GETUPVAL                         R14 8
      189 GETTABLEKS                       R14 R14 K4 ["View"]
      191 DUPTABLE                         R15 K36 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center size-full-1000 padding-left-xxsmall", ["testId"] = "header-bar"}]
      192 GETTABLEKS                       R16 R0 K9 ["LayoutOrder"]
      194 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      196 MOVE                             R16 R9
      197 CALL                             R13 3 -1
      198 RETURN                           R13 -1

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
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R9
      166 RETURN                           R19 1
