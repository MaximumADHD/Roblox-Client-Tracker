PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["View"]
       12 DUPTABLE                         R4 K6 [{"LayoutOrder", "tag"}]
       13 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       17 LOADK                            R5 K7 ["row padding-small align-x-left align-y-center grow"]
       18 SETTABLEKS                       R5 R4 K5 ["tag"]
       20 DUPTABLE                         R5 K10 [{"Icon", "Text"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K2 ["createElement"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K8 ["Icon"]
       27 DUPTABLE                         R8 K15 [{"LayoutOrder", "name", "variant", "style", "size"}]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K16 ["Enums"]
       34 GETTABLEKS                       R9 R9 K17 ["IconName"]
       36 GETTABLEKS                       R9 R9 K18 ["Folder"]
       38 SETTABLEKS                       R9 R8 K11 ["name"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K16 ["Enums"]
       43 GETTABLEKS                       R9 R9 K19 ["IconVariant"]
       45 GETTABLEKS                       R9 R9 K20 ["Filled"]
       47 SETTABLEKS                       R9 R8 K12 ["variant"]
       49 GETTABLEKS                       R9 R1 K21 ["Color"]
       51 GETTABLEKS                       R9 R9 K22 ["Extended"]
       53 GETTABLEKS                       R9 R9 K23 ["Yellow"]
       55 GETTABLEKS                       R9 R9 K24 ["Yellow_300"]
       57 SETTABLEKS                       R9 R8 K13 ["style"]
       59 GETTABLEKS                       R9 R1 K25 ["Size"]
       61 GETTABLEKS                       R9 R9 K26 ["Size_500"]
       63 SETTABLEKS                       R9 R8 K14 ["size"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K8 ["Icon"]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K2 ["createElement"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K9 ["Text"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row padding-small align-x-left align-y-center grow"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 DUPTABLE                         R4 K8 [{"Icon", "Text"}]
       15 GETTABLEKS                       R6 R0 K9 ["UseIcon"]
       17 JUMPIFNOT                        R6 ; [+37]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["Icon"]
       24 DUPTABLE                         R7 K13 [{"LayoutOrder", "name", "variant", "size", "tag"}]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       28 GETTABLEKS                       R8 R0 K14 ["Image"]
       30 SETTABLEKS                       R8 R7 K10 ["name"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K15 ["Enums"]
       35 GETTABLEKS                       R8 R8 K16 ["IconVariant"]
       37 GETTABLEKS                       R8 R8 K17 ["Filled"]
       39 SETTABLEKS                       R8 R7 K11 ["variant"]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K15 ["Enums"]
       44 GETTABLEKS                       R8 R8 K18 ["IconSize"]
       46 GETTABLEKS                       R8 R8 K19 ["Medium"]
       48 SETTABLEKS                       R8 R7 K12 ["size"]
       50 LOADK                            R8 K20 ["radius-circle padding-small"]
       51 SETTABLEKS                       R8 R7 K3 ["tag"]
       53 CALL                             R5 2 1
       54 JUMP                             ; [+18]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["createElement"]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K14 ["Image"]
       61 DUPTABLE                         R7 K21 [{"LayoutOrder", "Image", "tag"}]
       62 LOADN                            R8 1
       63 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       65 GETTABLEKS                       R8 R0 K14 ["Image"]
       67 SETTABLEKS                       R8 R7 K14 ["Image"]
       69 LOADK                            R8 K22 ["size-500 radius-circle padding-small"]
       70 SETTABLEKS                       R8 R7 K3 ["tag"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K6 ["Icon"]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K0 ["createElement"]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K7 ["Text"]
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
       23 JUMPIF                           R8 ; [+12]
       24 GETUPVAL                         R10 7
       25 GETTABLEKS                       R10 R10 K3 ["createElement"]
       27 GETUPVAL                         R11 8
       28 GETTABLEKS                       R11 R11 K4 ["View"]
       30 DUPTABLE                         R12 K6 [{"tag"}]
       31 LOADK                            R13 K7 ["TopSidebarButtonPadding"]
       32 SETTABLEKS                       R13 R12 K5 ["tag"]
       34 CALL                             R10 2 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R10
       37 SETTABLEKS                       R10 R9 K8 ["SidebarButtonPadding"]
       39 GETUPVAL                         R10 7
       40 GETTABLEKS                       R10 R10 K3 ["createElement"]
       42 GETUPVAL                         R11 9
       43 DUPTABLE                         R12 K10 [{"LayoutOrder"}]
       44 NAMECALL                         R13 R2 K11 ["getNextOrder"]
       46 CALL                             R13 1 1
       47 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K12 ["NavButtons"]
       52 GETTABLEKS                       R11 R7 K13 ["ShowSearchOptions"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 LOADK                            R12 K14 ["SearchOptions"]
       56 LOADK                            R13 K15 ["SearchResults"]
       57 NAMECALL                         R10 R1 K16 ["getText"]
       59 CALL                             R10 3 1
       60 JUMP                             ; [+4]
       61 GETUPVAL                         R10 10
       62 MOVE                             R11 R6
       63 MOVE                             R12 R1
       64 CALL                             R10 2 1
       65 LOADNIL                          R11
       66 GETTABLEKS                       R12 R7 K13 ["ShowSearchOptions"]
       68 JUMPIF                           R12 ; [+11]
       69 GETTABLEKS                       R13 R6 K17 ["Type"]
       71 GETUPVAL                         R14 11
       72 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
       74 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
       76 JUMPIFEQ                         R13 R14 ; [+2]
       78 LOADB                            R12 0 +1
       79 LOADB                            R12 1
       80 GETTABLEKS                       R13 R7 K13 ["ShowSearchOptions"]
       82 JUMPIFNOT                        R13 ; [+8]
       83 GETUPVAL                         R13 8
       84 GETTABLEKS                       R13 R13 K20 ["Enums"]
       86 GETTABLEKS                       R13 R13 K21 ["IconName"]
       88 GETTABLEKS                       R11 R13 K22 ["MagnifyingGlass"]
       90 JUMP                             ; [+13]
       91 GETUPVAL                         R14 12
       92 GETTABLEKS                       R15 R6 K17 ["Type"]
       94 GETTABLE                         R13 R14 R15
       95 JUMPIF                           R13 ; [+7]
       96 GETUPVAL                         R13 8
       97 GETTABLEKS                       R13 R13 K20 ["Enums"]
       99 GETTABLEKS                       R13 R13 K21 ["IconName"]
      101 GETTABLEKS                       R13 R13 K23 ["Tilt"]
      103 MOVE                             R11 R13
      104 JUMPIF                           R12 ; [+3]
      105 JUMPIFEQKS                       R4 K2 [""] ; [+2]
      107 MOVE                             R11 R4
      108 GETUPVAL                         R13 13
      109 CALL                             R13 0 1
      110 JUMPIFNOT                        R13 ; [+32]
      111 GETTABLEKS                       R13 R7 K13 ["ShowSearchOptions"]
      113 JUMPIF                           R13 ; [+29]
      114 GETTABLEKS                       R13 R6 K17 ["Type"]
      116 GETUPVAL                         R14 11
      117 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
      119 GETTABLEKS                       R14 R14 K24 ["Folder"]
      121 JUMPIFNOTEQ                      R13 R14 ; [+21]
      123 GETUPVAL                         R13 7
      124 GETTABLEKS                       R13 R13 K3 ["createElement"]
      126 GETUPVAL                         R14 14
      127 DUPTABLE                         R15 K28 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      128 NAMECALL                         R16 R2 K11 ["getNextOrder"]
      130 CALL                             R16 1 1
      131 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      133 SETTABLEKS                       R10 R15 K25 ["Text"]
      135 SETTABLEKS                       R11 R15 K26 ["Image"]
      137 SETTABLEKS                       R12 R15 K27 ["UseIcon"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R9 K29 ["ScopeTitle"]
      142 JUMP                             ; [+35]
      143 NEWCLOSURE                       R13 P0
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R5
      146 JUMPIFEQKS                       R4 K2 [""] ; [+7]
      148 MOVE                             R16 R6
      149 NAMECALL                         R14 R3 K30 ["getThumbnailUriForScope"]
      151 CALL                             R14 2 1
      152 JUMPIFEQ                         R4 R14 ; [+6]
      154 MOVE                             R16 R6
      155 MOVE                             R17 R13
      156 NAMECALL                         R14 R3 K31 ["getThumbnailForScopeAsync"]
      158 CALL                             R14 3 0
      159 GETUPVAL                         R14 7
      160 GETTABLEKS                       R14 R14 K3 ["createElement"]
      162 GETUPVAL                         R15 15
      163 DUPTABLE                         R16 K28 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      164 NAMECALL                         R17 R2 K11 ["getNextOrder"]
      166 CALL                             R17 1 1
      167 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      169 SETTABLEKS                       R10 R16 K25 ["Text"]
      171 SETTABLEKS                       R11 R16 K26 ["Image"]
      173 SETTABLEKS                       R12 R16 K27 ["UseIcon"]
      175 CALL                             R14 2 1
      176 SETTABLEKS                       R14 R9 K29 ["ScopeTitle"]
      178 GETUPVAL                         R13 7
      179 GETTABLEKS                       R13 R13 K3 ["createElement"]
      181 GETUPVAL                         R14 16
      182 DUPTABLE                         R15 K10 [{"LayoutOrder"}]
      183 NAMECALL                         R16 R2 K11 ["getNextOrder"]
      185 CALL                             R16 1 1
      186 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R9 K32 ["Options"]
      191 GETUPVAL                         R13 7
      192 GETTABLEKS                       R13 R13 K3 ["createElement"]
      194 GETUPVAL                         R14 8
      195 GETTABLEKS                       R14 R14 K4 ["View"]
      197 DUPTABLE                         R15 K34 [{"LayoutOrder", "tag", "testId"}]
      198 GETTABLEKS                       R16 R0 K9 ["LayoutOrder"]
      200 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      202 LOADK                            R16 K35 ["row padding-left-xxsmall size-full-1000 align-x-left align-y-center"]
      203 SETTABLEKS                       R16 R15 K5 ["tag"]
      205 LOADK                            R16 K36 ["header-bar"]
      206 SETTABLEKS                       R16 R15 K33 ["testId"]
      208 MOVE                             R16 R9
      209 CALL                             R13 3 -1
      210 RETURN                           R13 -1

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
      112 GETTABLEKS                       R17 R17 K28 ["Flags"]
      114 GETTABLEKS                       R17 R17 K29 ["getFFlagAmrOrganizationFoundation"]
      116 CALL                             R16 1 1
      117 NEWTABLE                         R17 4 0
      119 GETTABLEKS                       R18 R4 K30 ["ScopeType"]
      121 GETTABLEKS                       R18 R18 K31 ["User"]
      123 GETTABLEKS                       R19 R2 K32 ["Enums"]
      125 GETTABLEKS                       R19 R19 K33 ["IconName"]
      127 GETTABLEKS                       R19 R19 K34 ["Person"]
      129 SETTABLE                         R19 R17 R18
      130 GETTABLEKS                       R18 R4 K30 ["ScopeType"]
      132 GETTABLEKS                       R18 R18 K35 ["Group"]
      134 GETTABLEKS                       R19 R2 K32 ["Enums"]
      136 GETTABLEKS                       R19 R19 K33 ["IconName"]
      138 GETTABLEKS                       R19 R19 K36 ["ThreePeople"]
      140 SETTABLE                         R19 R17 R18
      141 GETTABLEKS                       R18 R4 K30 ["ScopeType"]
      143 GETTABLEKS                       R18 R18 K37 ["RecentUploads"]
      145 GETTABLEKS                       R19 R2 K32 ["Enums"]
      147 GETTABLEKS                       R19 R19 K33 ["IconName"]
      149 GETTABLEKS                       R19 R19 K38 ["ClockSpinReverse"]
      151 SETTABLE                         R19 R17 R18
      152 DUPCLOSURE                       R18 K39 [PROTO_0]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 DUPCLOSURE                       R19 K40 [PROTO_1]
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R2
      158 DUPCLOSURE                       R20 K41 [PROTO_3]
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R9
      176 RETURN                           R20 1
