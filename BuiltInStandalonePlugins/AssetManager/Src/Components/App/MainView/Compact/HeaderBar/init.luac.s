PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R2 K1 ["ShowSearchOptions"]
       10 GETTABLEKS                       R6 R3 K2 ["Type"]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K3 ["ScopeType"]
       15 GETTABLEKS                       R7 R7 K4 ["Folder"]
       17 JUMPIFEQ                         R6 R7 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 OR                               R6 R4 R5
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K5 ["createElement"]
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R8 R8 K6 ["View"]
       28 DUPTABLE                         R9 K10 [{"LayoutOrder", "tag", "testId"}]
       29 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       31 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       33 LOADK                            R10 K11 ["col size-full-0 auto-y gap-small padding-small"]
       34 SETTABLEKS                       R10 R9 K8 ["tag"]
       36 LOADK                            R10 K12 ["compact-header-bar"]
       37 SETTABLEKS                       R10 R9 K9 ["testId"]
       39 DUPTABLE                         R10 K16 [{"Options", "Search", "SearchFilters"}]
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R11 R11 K5 ["createElement"]
       43 GETUPVAL                         R12 5
       44 GETTABLEKS                       R12 R12 K6 ["View"]
       46 DUPTABLE                         R13 K17 [{"LayoutOrder", "tag"}]
       47 LOADN                            R14 1
       48 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       50 LOADK                            R14 K18 ["row size-full-600 align-y-center"]
       51 SETTABLEKS                       R14 R13 K8 ["tag"]
       53 DUPTABLE                         R14 K20 [{"Navigation", "Options"}]
       54 GETUPVAL                         R15 4
       55 GETTABLEKS                       R15 R15 K5 ["createElement"]
       57 GETUPVAL                         R16 5
       58 GETTABLEKS                       R16 R16 K6 ["View"]
       60 DUPTABLE                         R17 K17 [{"LayoutOrder", "tag"}]
       61 LOADN                            R18 1
       62 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       64 LOADK                            R18 K21 ["row fill gap-xxsmall align-y-center"]
       65 SETTABLEKS                       R18 R17 K8 ["tag"]
       67 DUPTABLE                         R18 K25 [{"NavButtons", "ScopeSelector", "ScopeTitle"}]
       68 GETUPVAL                         R19 4
       69 GETTABLEKS                       R19 R19 K5 ["createElement"]
       71 GETUPVAL                         R20 6
       72 DUPTABLE                         R21 K27 [{"LayoutOrder", "HideForwardButton"}]
       73 LOADN                            R22 1
       74 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
       76 LOADB                            R22 1
       77 SETTABLEKS                       R22 R21 K26 ["HideForwardButton"]
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K22 ["NavButtons"]
       82 GETUPVAL                         R19 4
       83 GETTABLEKS                       R19 R19 K5 ["createElement"]
       85 GETUPVAL                         R20 7
       86 DUPTABLE                         R21 K29 [{"ShowTitle", "LayoutOrder"}]
       87 NOT                              R22 R6
       88 SETTABLEKS                       R22 R21 K28 ["ShowTitle"]
       90 LOADN                            R22 2
       91 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
       93 CALL                             R19 2 1
       94 SETTABLEKS                       R19 R18 K23 ["ScopeSelector"]
       96 JUMPIFNOT                        R6 ; [+65]
       97 GETUPVAL                         R19 4
       98 GETTABLEKS                       R19 R19 K5 ["createElement"]
      100 GETUPVAL                         R20 5
      101 GETTABLEKS                       R20 R20 K6 ["View"]
      103 DUPTABLE                         R21 K10 [{"LayoutOrder", "tag", "testId"}]
      104 LOADN                            R22 3
      105 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      107 LOADK                            R22 K30 ["row fill auto-y gap-xsmall"]
      108 SETTABLEKS                       R22 R21 K8 ["tag"]
      110 LOADK                            R22 K31 ["compact-scope-title"]
      111 SETTABLEKS                       R22 R21 K9 ["testId"]
      113 DUPTABLE                         R22 K34 [{"Separator", "Title"}]
      114 GETUPVAL                         R23 4
      115 GETTABLEKS                       R23 R23 K5 ["createElement"]
      117 GETUPVAL                         R24 5
      118 GETTABLEKS                       R24 R24 K35 ["Text"]
      120 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      121 LOADN                            R26 1
      122 SETTABLEKS                       R26 R25 K7 ["LayoutOrder"]
      124 LOADK                            R26 K37 ["/"]
      125 SETTABLEKS                       R26 R25 K35 ["Text"]
      127 LOADK                            R26 K38 ["auto-xy text-align-x-left text-caption-medium"]
      128 SETTABLEKS                       R26 R25 K8 ["tag"]
      130 CALL                             R23 2 1
      131 SETTABLEKS                       R23 R22 K32 ["Separator"]
      133 GETUPVAL                         R23 4
      134 GETTABLEKS                       R23 R23 K5 ["createElement"]
      136 GETUPVAL                         R24 5
      137 GETTABLEKS                       R24 R24 K35 ["Text"]
      139 DUPTABLE                         R25 K36 [{"LayoutOrder", "Text", "tag"}]
      140 LOADN                            R26 2
      141 SETTABLEKS                       R26 R25 K7 ["LayoutOrder"]
      143 JUMPIFNOT                        R4 ; [+6]
      144 LOADK                            R28 K39 ["SearchOptions"]
      145 LOADK                            R29 K14 ["Search"]
      146 NAMECALL                         R26 R1 K40 ["getText"]
      148 CALL                             R26 3 1
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R26 R3 K41 ["Name"]
      152 SETTABLEKS                       R26 R25 K35 ["Text"]
      154 LOADK                            R26 K42 ["fill auto-y text-align-x-left text-caption-medium text-truncate-split"]
      155 SETTABLEKS                       R26 R25 K8 ["tag"]
      157 CALL                             R23 2 1
      158 SETTABLEKS                       R23 R22 K33 ["Title"]
      160 CALL                             R19 3 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R19
      163 SETTABLEKS                       R19 R18 K24 ["ScopeTitle"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K19 ["Navigation"]
      168 GETUPVAL                         R15 4
      169 GETTABLEKS                       R15 R15 K5 ["createElement"]
      171 GETUPVAL                         R16 8
      172 DUPTABLE                         R17 K43 [{"LayoutOrder"}]
      173 LOADN                            R18 2
      174 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K13 ["Options"]
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K13 ["Options"]
      182 GETUPVAL                         R11 4
      183 GETTABLEKS                       R11 R11 K5 ["createElement"]
      185 GETUPVAL                         R12 5
      186 GETTABLEKS                       R12 R12 K6 ["View"]
      188 DUPTABLE                         R13 K17 [{"LayoutOrder", "tag"}]
      189 LOADN                            R14 2
      190 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      192 LOADK                            R14 K44 ["row size-full-0 auto-y"]
      193 SETTABLEKS                       R14 R13 K8 ["tag"]
      195 GETUPVAL                         R14 4
      196 GETTABLEKS                       R14 R14 K5 ["createElement"]
      198 GETUPVAL                         R15 9
      199 CALL                             R14 1 -1
      200 CALL                             R11 -1 1
      201 SETTABLEKS                       R11 R10 K14 ["Search"]
      203 JUMPIFNOT                        R4 ; [+10]
      204 GETUPVAL                         R11 4
      205 GETTABLEKS                       R11 R11 K5 ["createElement"]
      207 GETUPVAL                         R12 10
      208 DUPTABLE                         R13 K43 [{"LayoutOrder"}]
      209 LOADN                            R14 3
      210 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      212 CALL                             R11 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R11
      215 SETTABLEKS                       R11 R10 K15 ["SearchFilters"]
      217 CALL                             R7 3 -1
      218 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K14 ["HeaderOptions"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETIMPORT                        R9 K1 [script]
       50 GETTABLEKS                       R9 R9 K15 ["SearchFilters"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R10 R10 K16 ["Components"]
       59 GETTABLEKS                       R10 R10 K17 ["Shared"]
       61 GETTABLEKS                       R10 R10 K18 ["ScopeSelector"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K6 ["Src"]
       68 GETTABLEKS                       R11 R11 K16 ["Components"]
       70 GETTABLEKS                       R11 R11 K19 ["App"]
       72 GETTABLEKS                       R11 R11 K20 ["MainView"]
       74 GETTABLEKS                       R11 R11 K21 ["SearchInput"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Src"]
       81 GETTABLEKS                       R12 R12 K16 ["Components"]
       83 GETTABLEKS                       R12 R12 K19 ["App"]
       85 GETTABLEKS                       R12 R12 K20 ["MainView"]
       87 GETTABLEKS                       R12 R12 K22 ["NavigationButtons"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Src"]
       94 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K24 ["useSearchInfo"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K6 ["Src"]
      103 GETTABLEKS                       R14 R14 K23 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K25 ["useCurrentScope"]
      107 CALL                             R13 1 1
      108 DUPCLOSURE                       R14 K26 [PROTO_0]
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R8
      120 RETURN                           R14 1
