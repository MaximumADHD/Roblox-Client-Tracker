PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{"LayoutOrder", "tag"}]
       11 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 LOADK                            R5 K6 ["row fill auto-y padding-x-small align-x-left align-y-center"]
       16 SETTABLEKS                       R5 R4 K4 ["tag"]
       18 DUPTABLE                         R5 K9 [{"Image", "Text"}]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K1 ["createElement"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K7 ["Image"]
       25 DUPTABLE                         R8 K11 [{"LayoutOrder", "Image", "Size", "tag"}]
       26 NAMECALL                         R9 R1 K12 ["getNextOrder"]
       28 CALL                             R9 1 1
       29 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       31 GETTABLEKS                       R9 R0 K7 ["Image"]
       33 SETTABLEKS                       R9 R8 K7 ["Image"]
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R9 R10 K13 ["AMR_ICON_SIZE_XLARGE"]
       38 SETTABLEKS                       R9 R8 K10 ["Size"]
       40 LOADK                            R9 K14 ["radius-circle"]
       41 SETTABLEKS                       R9 R8 K4 ["tag"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K7 ["Image"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K1 ["createElement"]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R7 R8 K8 ["Text"]
       52 DUPTABLE                         R8 K16 [{"LayoutOrder", "Text", "TextTruncate", "tag"}]
       53 NAMECALL                         R9 R1 K12 ["getNextOrder"]
       55 CALL                             R9 1 1
       56 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       58 GETTABLEKS                       R9 R0 K8 ["Text"]
       60 SETTABLEKS                       R9 R8 K8 ["Text"]
       62 GETIMPORT                        R9 K19 [Enum.TextTruncate.AtEnd]
       64 SETTABLEKS                       R9 R8 K15 ["TextTruncate"]
       66 LOADK                            R9 K20 ["text-body-large auto-xy padding-x-small"]
       67 SETTABLEKS                       R9 R8 K4 ["tag"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K8 ["Text"]
       72 CALL                             R2 3 -1
       73 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row padding-small align-x-left align-y-center grow am-size-headertitle-full"]
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
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 JUMPIFEQKS                       R4 K2 [""] ; [+7]
       26 MOVE                             R12 R6
       27 NAMECALL                         R10 R3 K3 ["getThumbnailUriForScope"]
       29 CALL                             R10 2 1
       30 JUMPIFEQ                         R4 R10 ; [+6]
       32 MOVE                             R12 R6
       33 MOVE                             R13 R9
       34 NAMECALL                         R10 R3 K4 ["getThumbnailForScopeAsync"]
       36 CALL                             R10 3 0
       37 GETTABLEKS                       R11 R7 K5 ["ShowSearchOptions"]
       39 JUMPIFNOT                        R11 ; [+6]
       40 LOADK                            R12 K6 ["SearchOptions"]
       41 LOADK                            R13 K7 ["SearchResults"]
       42 NAMECALL                         R10 R1 K8 ["getText"]
       44 CALL                             R10 3 1
       45 JUMP                             ; [+10]
       46 GETUPVAL                         R11 7
       47 CALL                             R11 0 1
       48 JUMPIFNOT                        R11 ; [+5]
       49 GETUPVAL                         R10 8
       50 MOVE                             R11 R6
       51 MOVE                             R12 R1
       52 CALL                             R10 2 1
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R10 R6 K9 ["Name"]
       56 LOADNIL                          R11
       57 LOADB                            R12 0
       58 GETUPVAL                         R13 7
       59 CALL                             R13 0 1
       60 JUMPIFNOT                        R13 ; [+44]
       61 GETTABLEKS                       R13 R7 K5 ["ShowSearchOptions"]
       63 JUMPIF                           R13 ; [+11]
       64 GETTABLEKS                       R14 R6 K10 ["Type"]
       66 GETUPVAL                         R17 9
       67 GETTABLEKS                       R16 R17 K11 ["ScopeType"]
       69 GETTABLEKS                       R15 R16 K12 ["RecentUploads"]
       71 JUMPIFEQ                         R14 R15 ; [+2]
       73 LOADB                            R13 0 +1
       74 LOADB                            R13 1
       75 MOVE                             R12 R13
       76 GETTABLEKS                       R13 R7 K5 ["ShowSearchOptions"]
       78 JUMPIFNOT                        R13 ; [+8]
       79 GETUPVAL                         R15 10
       80 GETTABLEKS                       R14 R15 K13 ["Enums"]
       82 GETTABLEKS                       R13 R14 K14 ["IconName"]
       84 GETTABLEKS                       R11 R13 K15 ["MagnifyingGlass"]
       86 JUMP                             ; [+13]
       87 GETUPVAL                         R14 11
       88 GETTABLEKS                       R15 R6 K10 ["Type"]
       90 GETTABLE                         R13 R14 R15
       91 JUMPIF                           R13 ; [+7]
       92 GETUPVAL                         R16 10
       93 GETTABLEKS                       R15 R16 K13 ["Enums"]
       95 GETTABLEKS                       R14 R15 K14 ["IconName"]
       97 GETTABLEKS                       R13 R14 K16 ["Tilt"]
       99 MOVE                             R11 R13
      100 JUMPIF                           R12 ; [+72]
      101 JUMPIFEQKS                       R4 K2 [""] ; [+71]
      103 MOVE                             R11 R4
      104 JUMP                             ; [+68]
      105 GETTABLEKS                       R13 R7 K5 ["ShowSearchOptions"]
      107 JUMPIFNOT                        R13 ; [+11]
      108 GETUPVAL                         R14 12
      109 GETTABLEKS                       R13 R14 K17 ["get"]
      111 GETUPVAL                         R16 12
      112 GETTABLEKS                       R15 R16 K18 ["AvailableImages"]
      114 GETTABLEKS                       R14 R15 K19 ["Search"]
      116 CALL                             R13 1 1
      117 MOVE                             R11 R13
      118 JUMP                             ; [+54]
      119 JUMPIFEQKS                       R4 K2 [""] ; [+3]
      121 MOVE                             R11 R4
      122 JUMP                             ; [+50]
      123 GETTABLEKS                       R13 R6 K10 ["Type"]
      125 GETUPVAL                         R16 9
      126 GETTABLEKS                       R15 R16 K11 ["ScopeType"]
      128 GETTABLEKS                       R14 R15 K20 ["User"]
      130 JUMPIFNOTEQ                      R13 R14 ; [+12]
      132 GETUPVAL                         R14 12
      133 GETTABLEKS                       R13 R14 K17 ["get"]
      135 GETUPVAL                         R16 12
      136 GETTABLEKS                       R15 R16 K18 ["AvailableImages"]
      138 GETTABLEKS                       R14 R15 K21 ["UserLarge"]
      140 CALL                             R13 1 1
      141 MOVE                             R11 R13
      142 JUMP                             ; [+30]
      143 GETTABLEKS                       R13 R6 K10 ["Type"]
      145 GETUPVAL                         R16 9
      146 GETTABLEKS                       R15 R16 K11 ["ScopeType"]
      148 GETTABLEKS                       R14 R15 K22 ["Group"]
      150 JUMPIFNOTEQ                      R13 R14 ; [+12]
      152 GETUPVAL                         R14 12
      153 GETTABLEKS                       R13 R14 K17 ["get"]
      155 GETUPVAL                         R16 12
      156 GETTABLEKS                       R15 R16 K18 ["AvailableImages"]
      158 GETTABLEKS                       R14 R15 K23 ["GroupLarge"]
      160 CALL                             R13 1 1
      161 MOVE                             R11 R13
      162 JUMP                             ; [+10]
      163 GETUPVAL                         R14 12
      164 GETTABLEKS                       R13 R14 K17 ["get"]
      166 GETUPVAL                         R16 12
      167 GETTABLEKS                       R15 R16 K18 ["AvailableImages"]
      169 GETTABLEKS                       R14 R15 K24 ["Universe"]
      171 CALL                             R13 1 1
      172 MOVE                             R11 R13
      173 GETUPVAL                         R14 13
      174 GETTABLEKS                       R13 R14 K25 ["createElement"]
      176 GETUPVAL                         R15 10
      177 GETTABLEKS                       R14 R15 K26 ["View"]
      179 DUPTABLE                         R15 K29 [{"LayoutOrder", "tag"}]
      180 GETTABLEKS                       R16 R0 K27 ["LayoutOrder"]
      182 SETTABLEKS                       R16 R15 K27 ["LayoutOrder"]
      184 LOADK                            R16 K30 ["row padding-left-xxsmall size-full-1000 align-x-left align-y-center data-testid=header-bar"]
      185 SETTABLEKS                       R16 R15 K28 ["tag"]
      187 DUPTABLE                         R16 K35 [{"SidebarButtonPadding", "NavButtons", "ScopeTitleContainer", "Options"}]
      188 JUMPIF                           R8 ; [+12]
      189 GETUPVAL                         R18 13
      190 GETTABLEKS                       R17 R18 K25 ["createElement"]
      192 GETUPVAL                         R19 10
      193 GETTABLEKS                       R18 R19 K26 ["View"]
      195 DUPTABLE                         R19 K36 [{"tag"}]
      196 LOADK                            R20 K37 ["TopSidebarButtonPadding"]
      197 SETTABLEKS                       R20 R19 K28 ["tag"]
      199 CALL                             R17 2 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R17
      202 SETTABLEKS                       R17 R16 K31 ["SidebarButtonPadding"]
      204 GETTABLEKS                       R18 R7 K5 ["ShowSearchOptions"]
      206 JUMPIF                           R18 ; [+12]
      207 GETUPVAL                         R18 13
      208 GETTABLEKS                       R17 R18 K25 ["createElement"]
      210 GETUPVAL                         R18 14
      211 DUPTABLE                         R19 K38 [{"LayoutOrder"}]
      212 NAMECALL                         R20 R2 K39 ["getNextOrder"]
      214 CALL                             R20 1 1
      215 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      217 CALL                             R17 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R17
      220 SETTABLEKS                       R17 R16 K32 ["NavButtons"]
      222 GETUPVAL                         R18 13
      223 GETTABLEKS                       R17 R18 K25 ["createElement"]
      225 GETUPVAL                         R19 7
      226 CALL                             R19 0 1
      227 JUMPIFNOT                        R19 ; [+2]
      228 GETUPVAL                         R18 15
      229 JUMP                             ; [+1]
      230 GETUPVAL                         R18 16
      231 DUPTABLE                         R19 K43 [{"LayoutOrder", "Text", "Image", "UseIcon"}]
      232 NAMECALL                         R20 R2 K39 ["getNextOrder"]
      234 CALL                             R20 1 1
      235 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      237 SETTABLEKS                       R10 R19 K40 ["Text"]
      239 SETTABLEKS                       R11 R19 K41 ["Image"]
      241 SETTABLEKS                       R12 R19 K42 ["UseIcon"]
      243 CALL                             R17 2 1
      244 SETTABLEKS                       R17 R16 K33 ["ScopeTitleContainer"]
      246 GETUPVAL                         R18 13
      247 GETTABLEKS                       R17 R18 K25 ["createElement"]
      249 GETUPVAL                         R18 17
      250 DUPTABLE                         R19 K38 [{"LayoutOrder"}]
      251 NAMECALL                         R20 R2 K39 ["getNextOrder"]
      253 CALL                             R20 1 1
      254 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      256 CALL                             R17 2 1
      257 SETTABLEKS                       R17 R16 K34 ["Options"]
      259 CALL                             R13 3 -1
      260 RETURN                           R13 -1

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
       41 GETTABLEKS                       R6 R7 K13 ["Images"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R9 K12 ["Util"]
       50 GETTABLEKS                       R7 R8 K14 ["getLocalizedScopeName"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K15 ["ContextServices"]
       55 GETTABLEKS                       R8 R7 K16 ["Localization"]
       57 GETTABLEKS                       R10 R3 K12 ["Util"]
       59 GETTABLEKS                       R9 R10 K17 ["LayoutOrderIterator"]
       61 GETIMPORT                        R10 K5 [require]
       63 GETIMPORT                        R12 K1 [script]
       65 GETTABLEKS                       R11 R12 K18 ["HeaderOptions"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETIMPORT                        R13 K1 [script]
       72 GETTABLEKS                       R12 R13 K19 ["NavigationButtons"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R14 R0 K10 ["Src"]
       79 GETTABLEKS                       R13 R14 K20 ["Networking"]
       81 CALL                             R12 1 1
       82 GETTABLEKS                       R13 R1 K21 ["useState"]
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R17 R0 K10 ["Src"]
       88 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       90 GETTABLEKS                       R15 R16 K23 ["useSearchInfo"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K5 [require]
       95 GETTABLEKS                       R18 R0 K10 ["Src"]
       97 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       99 GETTABLEKS                       R16 R17 K24 ["useCurrentScope"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K5 [require]
      104 GETTABLEKS                       R19 R0 K10 ["Src"]
      106 GETTABLEKS                       R18 R19 K22 ["Hooks"]
      108 GETTABLEKS                       R17 R18 K25 ["useShowSidebar"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K5 [require]
      113 GETTABLEKS                       R20 R0 K10 ["Src"]
      115 GETTABLEKS                       R19 R20 K26 ["Flags"]
      117 GETTABLEKS                       R18 R19 K27 ["getFFlagAmrRecents"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETTABLEKS                       R21 R0 K10 ["Src"]
      124 GETTABLEKS                       R20 R21 K28 ["Resources"]
      126 GETTABLEKS                       R19 R20 K29 ["StyleConstants"]
      128 CALL                             R18 1 1
      129 NEWTABLE                         R19 2 0
      131 GETTABLEKS                       R21 R4 K30 ["ScopeType"]
      133 GETTABLEKS                       R20 R21 K31 ["User"]
      135 GETTABLEKS                       R23 R2 K32 ["Enums"]
      137 GETTABLEKS                       R22 R23 K33 ["IconName"]
      139 GETTABLEKS                       R21 R22 K34 ["Person"]
      141 SETTABLE                         R21 R19 R20
      142 GETTABLEKS                       R21 R4 K30 ["ScopeType"]
      144 GETTABLEKS                       R20 R21 K35 ["Group"]
      146 GETTABLEKS                       R23 R2 K32 ["Enums"]
      148 GETTABLEKS                       R22 R23 K33 ["IconName"]
      150 GETTABLEKS                       R21 R22 K36 ["ThreePeople"]
      152 SETTABLE                         R21 R19 R20
      153 MOVE                             R20 R17
      154 CALL                             R20 0 1
      155 JUMPIFNOT                        R20 ; [+11]
      156 GETTABLEKS                       R21 R4 K30 ["ScopeType"]
      158 GETTABLEKS                       R20 R21 K37 ["RecentUploads"]
      160 GETTABLEKS                       R23 R2 K32 ["Enums"]
      162 GETTABLEKS                       R22 R23 K33 ["IconName"]
      164 GETTABLEKS                       R21 R22 K38 ["ClockSpinReverse"]
      166 SETTABLE                         R21 R19 R20
      167 DUPCLOSURE                       R20 K39 [PROTO_0]
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R18
      172 DUPCLOSURE                       R21 K40 [PROTO_1]
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R2
      175 DUPCLOSURE                       R22 K41 [PROTO_3]
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R10
      194 RETURN                           R22 1
