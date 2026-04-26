PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["View"]
       12 DUPTABLE                         R4 K6 [{"LayoutOrder", "tag"}]
       13 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       17 LOADK                            R5 K7 ["row padding-small align-x-left align-y-center grow"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K10 [{"Icon", "Text"}]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K2 ["createElement"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K8 ["Icon"]
       27 DUPTABLE                         R8 K15 [{"LayoutOrder", "name", "variant", "style", "size"}]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K16 ["Enums"]
       34 GETTABLEKS                       R10 R11 K17 ["IconName"]
       36 GETTABLEKS                       R9 R10 K18 ["Folder"]
       38 SETTABLEKS                       R9 R8 K11 ["name"]
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K16 ["Enums"]
       43 GETTABLEKS                       R10 R11 K19 ["IconVariant"]
       45 GETTABLEKS                       R9 R10 K20 ["Filled"]
       47 SETTABLEKS                       R9 R8 K12 ["variant"]
       49 GETTABLEKS                       R12 R1 K21 ["Color"]
       51 GETTABLEKS                       R11 R12 K22 ["Extended"]
       53 GETTABLEKS                       R10 R11 K23 ["Yellow"]
       55 GETTABLEKS                       R9 R10 K24 ["Yellow_300"]
       57 SETTABLEKS                       R9 R8 K13 ["style"]
       59 GETTABLEKS                       R10 R1 K25 ["Size"]
       61 GETTABLEKS                       R9 R10 K26 ["Size_500"]
       63 SETTABLEKS                       R9 R8 K14 ["size"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K8 ["Icon"]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R6 R7 K2 ["createElement"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K9 ["Text"]
       74 DUPTABLE                         R8 K27 [{"LayoutOrder", "Text", "tag"}]
       75 LOADN                            R9 2
       76 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       78 GETTABLEKS                       R9 R0 K9 ["Text"]
       80 SETTABLEKS                       R9 R8 K9 ["Text"]
       82 LOADK                            R9 K28 ["text-label-large text-truncate-end size-0 auto-xy padding-small"]
       83 SETTABLEKS                       R9 R8 K5 ["tag"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K9 ["Text"]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row padding-small align-x-left align-y-center grow"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 DUPTABLE                         R4 K8 [{"Icon", "Text"}]
       15 GETTABLEKS                       R6 R0 K9 ["UseIcon"]
       17 JUMPIFNOT                        R6 ; [+37]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["Icon"]
       24 DUPTABLE                         R7 K13 [{"LayoutOrder", "name", "variant", "size", "tag"}]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       28 GETTABLEKS                       R8 R0 K14 ["Image"]
       30 SETTABLEKS                       R8 R7 K10 ["name"]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R10 R11 K15 ["Enums"]
       35 GETTABLEKS                       R9 R10 K16 ["IconVariant"]
       37 GETTABLEKS                       R8 R9 K17 ["Filled"]
       39 SETTABLEKS                       R8 R7 K11 ["variant"]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R10 R11 K15 ["Enums"]
       44 GETTABLEKS                       R9 R10 K18 ["IconSize"]
       46 GETTABLEKS                       R8 R9 K19 ["Medium"]
       48 SETTABLEKS                       R8 R7 K12 ["size"]
       50 LOADK                            R8 K20 ["radius-circle padding-small"]
       51 SETTABLEKS                       R8 R7 K3 ["tag"]
       53 CALL                             R5 2 1
       54 JUMP                             ; [+18]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R5 R6 K0 ["createElement"]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R6 R7 K14 ["Image"]
       61 DUPTABLE                         R7 K21 [{"LayoutOrder", "Image", "tag"}]
       62 LOADN                            R8 1
       63 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       65 GETTABLEKS                       R8 R0 K14 ["Image"]
       67 SETTABLEKS                       R8 R7 K14 ["Image"]
       69 LOADK                            R8 K22 ["size-500 radius-circle padding-small"]
       70 SETTABLEKS                       R8 R7 K3 ["tag"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K6 ["Icon"]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R5 R6 K0 ["createElement"]
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R6 R7 K7 ["Text"]
       81 DUPTABLE                         R7 K23 [{"LayoutOrder", "Text", "tag"}]
       82 LOADN                            R8 2
       83 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       85 GETTABLEKS                       R8 R0 K7 ["Text"]
       87 SETTABLEKS                       R8 R7 K7 ["Text"]
       89 LOADK                            R8 K24 ["text-label-large text-truncate-end size-0 auto-xy padding-small"]
       90 SETTABLEKS                       R8 R7 K3 ["tag"]
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K7 ["Text"]
       95 CALL                             R1 3 -1
       96 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
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
       23 JUMPIF                           R8 ; [+12]
       24 GETUPVAL                         R11 7
       25 GETTABLEKS                       R10 R11 K3 ["createElement"]
       27 GETUPVAL                         R12 8
       28 GETTABLEKS                       R11 R12 K4 ["View"]
       30 DUPTABLE                         R12 K6 [{"tag"}]
       31 LOADK                            R13 K7 ["TopSidebarButtonPadding"]
       32 SETTABLEKS                       R13 R12 K5 ["tag"]
       34 CALL                             R10 2 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R10
       37 SETTABLEKS                       R10 R9 K8 ["SidebarButtonPadding"]
       39 GETUPVAL                         R11 7
       40 GETTABLEKS                       R10 R11 K3 ["createElement"]
       42 GETUPVAL                         R11 9
       43 DUPTABLE                         R12 K10 [{"LayoutOrder"}]
       44 NAMECALL                         R13 R2 K11 ["getNextOrder"]
       46 CALL                             R13 1 1
       47 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K12 ["NavButtons"]
       52 GETUPVAL                         R10 10
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+34]
       55 GETTABLEKS                       R10 R6 K13 ["Type"]
       57 GETUPVAL                         R13 11
       58 GETTABLEKS                       R12 R13 K14 ["ScopeType"]
       60 GETTABLEKS                       R11 R12 K15 ["Folder"]
       62 JUMPIFNOTEQ                      R10 R11 ; [+26]
       64 GETUPVAL                         R11 7
       65 GETTABLEKS                       R10 R11 K3 ["createElement"]
       67 GETUPVAL                         R11 12
       68 DUPTABLE                         R12 K19 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
       69 NAMECALL                         R13 R2 K11 ["getNextOrder"]
       71 CALL                             R13 1 1
       72 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       74 GETUPVAL                         R13 13
       75 MOVE                             R14 R6
       76 MOVE                             R15 R1
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K16 ["Text"]
       80 SETTABLEKS                       R4 R12 K17 ["Image"]
       82 LOADB                            R13 0
       83 SETTABLEKS                       R13 R12 K18 ["UseIcon"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K20 ["ScopeTitle"]
       88 JUMP                             ; [+91]
       89 NEWCLOSURE                       R10 P0
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 JUMPIFEQKS                       R4 K2 [""] ; [+7]
       94 MOVE                             R13 R6
       95 NAMECALL                         R11 R3 K21 ["getThumbnailUriForScope"]
       97 CALL                             R11 2 1
       98 JUMPIFEQ                         R4 R11 ; [+6]
      100 MOVE                             R13 R6
      101 MOVE                             R14 R10
      102 NAMECALL                         R11 R3 K22 ["getThumbnailForScopeAsync"]
      104 CALL                             R11 3 0
      105 GETTABLEKS                       R12 R7 K23 ["ShowSearchOptions"]
      107 JUMPIFNOT                        R12 ; [+6]
      108 LOADK                            R13 K24 ["SearchOptions"]
      109 LOADK                            R14 K25 ["SearchResults"]
      110 NAMECALL                         R11 R1 K26 ["getText"]
      112 CALL                             R11 3 1
      113 JUMP                             ; [+4]
      114 GETUPVAL                         R11 13
      115 MOVE                             R12 R6
      116 MOVE                             R13 R1
      117 CALL                             R11 2 1
      118 LOADNIL                          R12
      119 GETTABLEKS                       R13 R7 K23 ["ShowSearchOptions"]
      121 JUMPIF                           R13 ; [+11]
      122 GETTABLEKS                       R14 R6 K13 ["Type"]
      124 GETUPVAL                         R17 11
      125 GETTABLEKS                       R16 R17 K14 ["ScopeType"]
      127 GETTABLEKS                       R15 R16 K27 ["RecentUploads"]
      129 JUMPIFEQ                         R14 R15 ; [+2]
      131 LOADB                            R13 0 +1
      132 LOADB                            R13 1
      133 GETTABLEKS                       R14 R7 K23 ["ShowSearchOptions"]
      135 JUMPIFNOT                        R14 ; [+8]
      136 GETUPVAL                         R16 8
      137 GETTABLEKS                       R15 R16 K28 ["Enums"]
      139 GETTABLEKS                       R14 R15 K29 ["IconName"]
      141 GETTABLEKS                       R12 R14 K30 ["MagnifyingGlass"]
      143 JUMP                             ; [+13]
      144 GETUPVAL                         R15 14
      145 GETTABLEKS                       R16 R6 K13 ["Type"]
      147 GETTABLE                         R14 R15 R16
      148 JUMPIF                           R14 ; [+7]
      149 GETUPVAL                         R17 8
      150 GETTABLEKS                       R16 R17 K28 ["Enums"]
      152 GETTABLEKS                       R15 R16 K29 ["IconName"]
      154 GETTABLEKS                       R14 R15 K31 ["Tilt"]
      156 MOVE                             R12 R14
      157 JUMPIF                           R13 ; [+3]
      158 JUMPIFEQKS                       R4 K2 [""] ; [+2]
      160 MOVE                             R12 R4
      161 GETUPVAL                         R15 7
      162 GETTABLEKS                       R14 R15 K3 ["createElement"]
      164 GETUPVAL                         R15 15
      165 DUPTABLE                         R16 K19 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      166 NAMECALL                         R17 R2 K11 ["getNextOrder"]
      168 CALL                             R17 1 1
      169 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      171 SETTABLEKS                       R11 R16 K16 ["Text"]
      173 SETTABLEKS                       R12 R16 K17 ["Image"]
      175 SETTABLEKS                       R13 R16 K18 ["UseIcon"]
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R9 K20 ["ScopeTitle"]
      180 GETUPVAL                         R11 7
      181 GETTABLEKS                       R10 R11 K3 ["createElement"]
      183 GETUPVAL                         R11 16
      184 DUPTABLE                         R12 K10 [{"LayoutOrder"}]
      185 NAMECALL                         R13 R2 K11 ["getNextOrder"]
      187 CALL                             R13 1 1
      188 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      190 CALL                             R10 2 1
      191 SETTABLEKS                       R10 R9 K32 ["Options"]
      193 GETUPVAL                         R11 7
      194 GETTABLEKS                       R10 R11 K3 ["createElement"]
      196 GETUPVAL                         R12 8
      197 GETTABLEKS                       R11 R12 K4 ["View"]
      199 DUPTABLE                         R12 K33 [{"LayoutOrder", "tag"}]
      200 GETTABLEKS                       R13 R0 K9 ["LayoutOrder"]
      202 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      204 LOADK                            R13 K34 ["row padding-left-xxsmall size-full-1000 align-x-left align-y-center data-testid=header-bar"]
      205 SETTABLEKS                       R13 R12 K5 ["tag"]
      207 MOVE                             R13 R9
      208 CALL                             R10 3 -1
      209 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Util"]
       41 GETTABLEKS                       R6 R7 K13 ["getLocalizedScopeName"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R9 R3 K12 ["Util"]
       50 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETIMPORT                        R11 K1 [script]
       56 GETTABLEKS                       R10 R11 K17 ["HeaderOptions"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R11 R12 K18 ["NavigationButtons"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Src"]
       70 GETTABLEKS                       R12 R13 K19 ["Networking"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R1 K20 ["useState"]
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R16 R0 K10 ["Src"]
       79 GETTABLEKS                       R15 R16 K21 ["Hooks"]
       81 GETTABLEKS                       R14 R15 K22 ["useSearchInfo"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R17 R0 K10 ["Src"]
       88 GETTABLEKS                       R16 R17 K21 ["Hooks"]
       90 GETTABLEKS                       R15 R16 K23 ["useCurrentScope"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R18 R0 K10 ["Src"]
       97 GETTABLEKS                       R17 R18 K21 ["Hooks"]
       99 GETTABLEKS                       R16 R17 K24 ["useShowSidebar"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETTABLEKS                       R19 R0 K10 ["Src"]
      106 GETTABLEKS                       R18 R19 K25 ["Flags"]
      108 GETTABLEKS                       R17 R18 K26 ["getFFlagAmrOrganizationFoundation"]
      110 CALL                             R16 1 1
      111 NEWTABLE                         R17 4 0
      113 GETTABLEKS                       R19 R4 K27 ["ScopeType"]
      115 GETTABLEKS                       R18 R19 K28 ["User"]
      117 GETTABLEKS                       R21 R2 K29 ["Enums"]
      119 GETTABLEKS                       R20 R21 K30 ["IconName"]
      121 GETTABLEKS                       R19 R20 K31 ["Person"]
      123 SETTABLE                         R19 R17 R18
      124 GETTABLEKS                       R19 R4 K27 ["ScopeType"]
      126 GETTABLEKS                       R18 R19 K32 ["Group"]
      128 GETTABLEKS                       R21 R2 K29 ["Enums"]
      130 GETTABLEKS                       R20 R21 K30 ["IconName"]
      132 GETTABLEKS                       R19 R20 K33 ["ThreePeople"]
      134 SETTABLE                         R19 R17 R18
      135 GETTABLEKS                       R19 R4 K27 ["ScopeType"]
      137 GETTABLEKS                       R18 R19 K34 ["RecentUploads"]
      139 GETTABLEKS                       R21 R2 K29 ["Enums"]
      141 GETTABLEKS                       R20 R21 K30 ["IconName"]
      143 GETTABLEKS                       R19 R20 K35 ["ClockSpinReverse"]
      145 SETTABLE                         R19 R17 R18
      146 DUPCLOSURE                       R18 K36 [PROTO_0]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R1
      149 DUPCLOSURE                       R19 K37 [PROTO_1]
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 DUPCLOSURE                       R20 K38 [PROTO_3]
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R9
      170 RETURN                           R20 1
