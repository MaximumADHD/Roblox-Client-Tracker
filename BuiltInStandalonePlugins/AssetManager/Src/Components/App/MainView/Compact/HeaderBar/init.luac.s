PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R6 R6 K1 ["IxpVariable"]
       12 GETTABLEKS                       R6 R6 K2 ["Omnisearch"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K3 ["IxpValue"]
       18 GETTABLEKS                       R6 R6 K4 ["Experiment"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 GETTABLEKS                       R5 R2 K5 ["IsSearchRequested"]
       26 GETTABLEKS                       R7 R3 K6 ["Type"]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K7 ["ScopeType"]
       31 GETTABLEKS                       R8 R8 K8 ["Folder"]
       33 JUMPIFEQ                         R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 JUMPIFNOT                        R4 ; [+2]
       38 MOVE                             R7 R6
       39 JUMP                             ; [+1]
       40 OR                               R7 R5 R6
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R8 R8 K9 ["createElement"]
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R9 R9 K10 ["View"]
       47 DUPTABLE                         R10 K16 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-small", ["testId"] = "compact-header-bar"}]
       48 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       50 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       52 DUPTABLE                         R11 K20 [{"Options", "Search", "SearchFilters"}]
       53 GETUPVAL                         R12 5
       54 GETTABLEKS                       R12 R12 K9 ["createElement"]
       56 GETUPVAL                         R13 6
       57 GETTABLEKS                       R13 R13 K10 ["View"]
       59 DUPTABLE                         R14 K23 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-600"}]
       60 DUPTABLE                         R15 K25 [{"Navigation", "Options"}]
       61 GETUPVAL                         R16 5
       62 GETTABLEKS                       R16 R16 K9 ["createElement"]
       64 GETUPVAL                         R17 6
       65 GETTABLEKS                       R17 R17 K10 ["View"]
       67 DUPTABLE                         R18 K27 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill gap-xxsmall"}]
       68 DUPTABLE                         R19 K31 [{"NavButtons", "ScopeSelector", "ScopeTitle"}]
       69 GETUPVAL                         R20 5
       70 GETTABLEKS                       R20 R20 K9 ["createElement"]
       72 GETUPVAL                         R21 7
       73 DUPTABLE                         R22 K34 [{["LayoutOrder"] = 1, ["HideForwardButton"] = True}]
       74 CALL                             R20 2 1
       75 SETTABLEKS                       R20 R19 K28 ["NavButtons"]
       77 GETUPVAL                         R20 5
       78 GETTABLEKS                       R20 R20 K9 ["createElement"]
       80 GETUPVAL                         R21 8
       81 DUPTABLE                         R22 K37 [{["ShowTitle"], ["LayoutOrder"] = 2}]
       82 NOT                              R23 R7
       83 SETTABLEKS                       R23 R22 K35 ["ShowTitle"]
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K29 ["ScopeSelector"]
       88 JUMPIFNOT                        R7 ; [+41]
       89 GETUPVAL                         R20 5
       90 GETTABLEKS                       R20 R20 K9 ["createElement"]
       92 GETUPVAL                         R21 6
       93 GETTABLEKS                       R21 R21 K10 ["View"]
       95 DUPTABLE                         R22 K41 [{["LayoutOrder"] = 3, ["tag"] = "row fill gap-xsmall auto-y", ["testId"] = "compact-scope-title"}]
       96 DUPTABLE                         R23 K44 [{"Separator", "Title"}]
       97 GETUPVAL                         R24 5
       98 GETTABLEKS                       R24 R24 K9 ["createElement"]
      100 GETUPVAL                         R25 6
      101 GETTABLEKS                       R25 R25 K45 ["Text"]
      103 DUPTABLE                         R26 K48 [{["LayoutOrder"] = 1, ["Text"] = "/", ["tag"] = "auto-xy text-caption-medium text-align-x-left"}]
      104 CALL                             R24 2 1
      105 SETTABLEKS                       R24 R23 K42 ["Separator"]
      107 GETUPVAL                         R24 5
      108 GETTABLEKS                       R24 R24 K9 ["createElement"]
      110 GETUPVAL                         R25 6
      111 GETTABLEKS                       R25 R25 K45 ["Text"]
      113 DUPTABLE                         R26 K50 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-caption-medium text-align-x-left text-truncate-split"}]
      114 JUMPIFNOT                        R5 ; [+6]
      115 LOADK                            R29 K51 ["SearchOptions"]
      116 LOADK                            R30 K18 ["Search"]
      117 NAMECALL                         R27 R1 K52 ["getText"]
      119 CALL                             R27 3 1
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R27 R3 K53 ["Name"]
      123 SETTABLEKS                       R27 R26 K45 ["Text"]
      125 CALL                             R24 2 1
      126 SETTABLEKS                       R24 R23 K43 ["Title"]
      128 CALL                             R20 3 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R20
      131 SETTABLEKS                       R20 R19 K30 ["ScopeTitle"]
      133 CALL                             R16 3 1
      134 SETTABLEKS                       R16 R15 K24 ["Navigation"]
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R16 R16 K9 ["createElement"]
      139 GETUPVAL                         R17 9
      140 DUPTABLE                         R18 K54 [{["LayoutOrder"] = 2}]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K17 ["Options"]
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K17 ["Options"]
      147 GETUPVAL                         R12 5
      148 GETTABLEKS                       R12 R12 K9 ["createElement"]
      150 GETUPVAL                         R13 6
      151 GETTABLEKS                       R13 R13 K10 ["View"]
      153 DUPTABLE                         R14 K56 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y"}]
      154 GETUPVAL                         R15 5
      155 GETTABLEKS                       R15 R15 K9 ["createElement"]
      157 GETUPVAL                         R16 10
      158 CALL                             R15 1 -1
      159 CALL                             R12 -1 1
      160 SETTABLEKS                       R12 R11 K18 ["Search"]
      162 JUMPIFNOT                        R4 ; [+7]
      163 GETUPVAL                         R12 5
      164 GETTABLEKS                       R12 R12 K9 ["createElement"]
      166 GETUPVAL                         R13 11
      167 DUPTABLE                         R14 K57 [{["LayoutOrder"] = 3}]
      168 CALL                             R12 2 1
      169 JUMP                             ; [+9]
      170 JUMPIFNOT                        R5 ; [+7]
      171 GETUPVAL                         R12 5
      172 GETTABLEKS                       R12 R12 K9 ["createElement"]
      174 GETUPVAL                         R13 12
      175 DUPTABLE                         R14 K57 [{["LayoutOrder"] = 3}]
      176 CALL                             R12 2 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R12
      179 SETTABLEKS                       R12 R11 K19 ["SearchFilters"]
      181 CALL                             R8 3 -1
      182 RETURN                           R8 -1

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
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["App"]
       47 GETTABLEKS                       R8 R8 K16 ["MainView"]
       49 GETTABLEKS                       R8 R8 K17 ["ActiveSearchFilters"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K18 ["HeaderOptions"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K19 ["SearchFilters"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R11 R11 K14 ["Components"]
       72 GETTABLEKS                       R11 R11 K20 ["Shared"]
       74 GETTABLEKS                       R11 R11 K21 ["ScopeSelector"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Src"]
       81 GETTABLEKS                       R12 R12 K14 ["Components"]
       83 GETTABLEKS                       R12 R12 K15 ["App"]
       85 GETTABLEKS                       R12 R12 K16 ["MainView"]
       87 GETTABLEKS                       R12 R12 K22 ["SearchInput"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Src"]
       94 GETTABLEKS                       R13 R13 K14 ["Components"]
       96 GETTABLEKS                       R13 R13 K15 ["App"]
       98 GETTABLEKS                       R13 R13 K16 ["MainView"]
      100 GETTABLEKS                       R13 R13 K23 ["NavigationButtons"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K6 ["Src"]
      107 GETTABLEKS                       R14 R14 K24 ["Hooks"]
      109 GETTABLEKS                       R14 R14 K25 ["useIxpValue"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K6 ["Src"]
      116 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      118 GETTABLEKS                       R15 R15 K26 ["useSearchInfo"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K6 ["Src"]
      125 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      127 GETTABLEKS                       R16 R16 K27 ["useCurrentScope"]
      129 CALL                             R15 1 1
      130 DUPCLOSURE                       R16 K28 [PROTO_0]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R9
      144 RETURN                           R16 1
