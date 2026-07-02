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
       28 DUPTABLE                         R9 K12 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-small", ["testId"] = "compact-header-bar"}]
       29 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       31 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       33 DUPTABLE                         R10 K16 [{"Options", "Search", "SearchFilters"}]
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K5 ["createElement"]
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R12 R12 K6 ["View"]
       40 DUPTABLE                         R13 K19 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-600"}]
       41 DUPTABLE                         R14 K21 [{"Navigation", "Options"}]
       42 GETUPVAL                         R15 4
       43 GETTABLEKS                       R15 R15 K5 ["createElement"]
       45 GETUPVAL                         R16 5
       46 GETTABLEKS                       R16 R16 K6 ["View"]
       48 DUPTABLE                         R17 K23 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill gap-xxsmall"}]
       49 DUPTABLE                         R18 K27 [{"NavButtons", "ScopeSelector", "ScopeTitle"}]
       50 GETUPVAL                         R19 4
       51 GETTABLEKS                       R19 R19 K5 ["createElement"]
       53 GETUPVAL                         R20 6
       54 DUPTABLE                         R21 K30 [{["LayoutOrder"] = 1, ["HideForwardButton"] = True}]
       55 CALL                             R19 2 1
       56 SETTABLEKS                       R19 R18 K24 ["NavButtons"]
       58 GETUPVAL                         R19 4
       59 GETTABLEKS                       R19 R19 K5 ["createElement"]
       61 GETUPVAL                         R20 7
       62 DUPTABLE                         R21 K33 [{["ShowTitle"], ["LayoutOrder"] = 2}]
       63 NOT                              R22 R6
       64 SETTABLEKS                       R22 R21 K31 ["ShowTitle"]
       66 CALL                             R19 2 1
       67 SETTABLEKS                       R19 R18 K25 ["ScopeSelector"]
       69 JUMPIFNOT                        R6 ; [+41]
       70 GETUPVAL                         R19 4
       71 GETTABLEKS                       R19 R19 K5 ["createElement"]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K6 ["View"]
       76 DUPTABLE                         R21 K37 [{["LayoutOrder"] = 3, ["tag"] = "row fill gap-xsmall auto-y", ["testId"] = "compact-scope-title"}]
       77 DUPTABLE                         R22 K40 [{"Separator", "Title"}]
       78 GETUPVAL                         R23 4
       79 GETTABLEKS                       R23 R23 K5 ["createElement"]
       81 GETUPVAL                         R24 5
       82 GETTABLEKS                       R24 R24 K41 ["Text"]
       84 DUPTABLE                         R25 K44 [{["LayoutOrder"] = 1, ["Text"] = "/", ["tag"] = "auto-xy text-caption-medium text-align-x-left"}]
       85 CALL                             R23 2 1
       86 SETTABLEKS                       R23 R22 K38 ["Separator"]
       88 GETUPVAL                         R23 4
       89 GETTABLEKS                       R23 R23 K5 ["createElement"]
       91 GETUPVAL                         R24 5
       92 GETTABLEKS                       R24 R24 K41 ["Text"]
       94 DUPTABLE                         R25 K46 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-caption-medium text-align-x-left text-truncate-split"}]
       95 JUMPIFNOT                        R4 ; [+6]
       96 LOADK                            R28 K47 ["SearchOptions"]
       97 LOADK                            R29 K14 ["Search"]
       98 NAMECALL                         R26 R1 K48 ["getText"]
      100 CALL                             R26 3 1
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R26 R3 K49 ["Name"]
      104 SETTABLEKS                       R26 R25 K41 ["Text"]
      106 CALL                             R23 2 1
      107 SETTABLEKS                       R23 R22 K39 ["Title"]
      109 CALL                             R19 3 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R19
      112 SETTABLEKS                       R19 R18 K26 ["ScopeTitle"]
      114 CALL                             R15 3 1
      115 SETTABLEKS                       R15 R14 K20 ["Navigation"]
      117 GETUPVAL                         R15 4
      118 GETTABLEKS                       R15 R15 K5 ["createElement"]
      120 GETUPVAL                         R16 8
      121 DUPTABLE                         R17 K50 [{["LayoutOrder"] = 2}]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K13 ["Options"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K13 ["Options"]
      128 GETUPVAL                         R11 4
      129 GETTABLEKS                       R11 R11 K5 ["createElement"]
      131 GETUPVAL                         R12 5
      132 GETTABLEKS                       R12 R12 K6 ["View"]
      134 DUPTABLE                         R13 K52 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y"}]
      135 GETUPVAL                         R14 4
      136 GETTABLEKS                       R14 R14 K5 ["createElement"]
      138 GETUPVAL                         R15 9
      139 CALL                             R14 1 -1
      140 CALL                             R11 -1 1
      141 SETTABLEKS                       R11 R10 K14 ["Search"]
      143 JUMPIFNOT                        R4 ; [+7]
      144 GETUPVAL                         R11 4
      145 GETTABLEKS                       R11 R11 K5 ["createElement"]
      147 GETUPVAL                         R12 10
      148 DUPTABLE                         R13 K53 [{["LayoutOrder"] = 3}]
      149 CALL                             R11 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R11
      152 SETTABLEKS                       R11 R10 K15 ["SearchFilters"]
      154 CALL                             R7 3 -1
      155 RETURN                           R7 -1

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
