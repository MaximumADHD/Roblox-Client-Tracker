PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 3
       12 DUPTABLE                         R5 K7 [{["tag"] = "col gap-small auto-y", ["Size"], ["LayoutOrder"]}]
       13 GETIMPORT                        R6 K10 [UDim2.fromScale]
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R7 R7 K11 ["LOOK_COMPOSER_INPUT_WIDTH_SCALE"]
       18 LOADN                            R8 0
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K5 ["Size"]
       22 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       24 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       26 DUPTABLE                         R6 K15 [{"Divider", "Header", "Description"}]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 5
       31 DUPTABLE                         R9 K16 [{"LayoutOrder"}]
       32 MOVE                             R10 R2
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K12 ["Divider"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K2 ["createElement"]
       42 GETUPVAL                         R8 3
       43 DUPTABLE                         R9 K18 [{["tag"] = "row flex-between align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       44 MOVE                             R10 R2
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       48 DUPTABLE                         R10 K21 [{"Title", "StatusGroup"}]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K2 ["createElement"]
       52 GETUPVAL                         R12 6
       53 DUPTABLE                         R13 K24 [{["Text"], ["tag"] = "shrink auto-y text-label-medium text-align-x-left content-emphasis", ["LayoutOrder"]}]
       54 LOADK                            R16 K25 ["LookComposerDialog"]
       55 LOADK                            R17 K26 ["MarketplaceDiscoverabilityTitle"]
       56 NAMECALL                         R14 R1 K27 ["getText"]
       58 CALL                             R14 3 1
       59 SETTABLEKS                       R14 R13 K22 ["Text"]
       61 MOVE                             R14 R2
       62 CALL                             R14 0 1
       63 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K19 ["Title"]
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R11 R11 K2 ["createElement"]
       71 GETUPVAL                         R12 3
       72 DUPTABLE                         R13 K29 [{["tag"] = "row align-y-center gap-xsmall auto-xy", ["LayoutOrder"]}]
       73 MOVE                             R14 R2
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       77 DUPTABLE                         R14 K32 [{"StatusText", "InfoTooltip"}]
       78 GETUPVAL                         R15 2
       79 GETTABLEKS                       R15 R15 K2 ["createElement"]
       81 GETUPVAL                         R16 6
       82 DUPTABLE                         R17 K34 [{["Text"], ["tag"] = "auto-xy text-label-medium content-default", ["LayoutOrder"]}]
       83 LOADK                            R20 K35 ["AvatarScreen"]
       84 GETTABLEKS                       R22 R0 K36 ["isDiscoverable"]
       86 JUMPIFNOT                        R22 ; [+2]
       87 LOADK                            R21 K37 ["CancelPromptYes"]
       88 JUMP                             ; [+1]
       89 LOADK                            R21 K38 ["CancelPromptNo"]
       90 NAMECALL                         R18 R1 K27 ["getText"]
       92 CALL                             R18 3 1
       93 SETTABLEKS                       R18 R17 K22 ["Text"]
       95 MOVE                             R18 R2
       96 CALL                             R18 0 1
       97 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K30 ["StatusText"]
      102 GETUPVAL                         R15 2
      103 GETTABLEKS                       R15 R15 K2 ["createElement"]
      105 GETUPVAL                         R16 3
      106 DUPTABLE                         R17 K40 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      107 MOVE                             R18 R2
      108 CALL                             R18 0 1
      109 SETTABLEKS                       R18 R17 K6 ["LayoutOrder"]
      111 DUPTABLE                         R18 K42 [{"Tooltip"}]
      112 GETUPVAL                         R19 2
      113 GETTABLEKS                       R19 R19 K2 ["createElement"]
      115 GETUPVAL                         R20 7
      116 DUPTABLE                         R21 K46 [{["title"] = "", ["text"]}]
      117 LOADK                            R24 K25 ["LookComposerDialog"]
      118 LOADK                            R25 K47 ["MarketplaceDiscoverabilityTooltip"]
      119 NAMECALL                         R22 R1 K27 ["getText"]
      121 CALL                             R22 3 1
      122 SETTABLEKS                       R22 R21 K45 ["text"]
      124 DUPTABLE                         R22 K49 [{"InfoIcon"}]
      125 GETUPVAL                         R23 2
      126 GETTABLEKS                       R23 R23 K2 ["createElement"]
      128 GETUPVAL                         R24 8
      129 DUPTABLE                         R25 K52 [{"name", "size"}]
      130 GETUPVAL                         R26 9
      131 GETTABLEKS                       R26 R26 K53 ["CircleI"]
      133 SETTABLEKS                       R26 R25 K50 ["name"]
      135 GETUPVAL                         R26 10
      136 GETTABLEKS                       R26 R26 K54 ["Small"]
      138 SETTABLEKS                       R26 R25 K51 ["size"]
      140 CALL                             R23 2 1
      141 SETTABLEKS                       R23 R22 K48 ["InfoIcon"]
      143 CALL                             R19 3 1
      144 SETTABLEKS                       R19 R18 K41 ["Tooltip"]
      146 CALL                             R15 3 1
      147 SETTABLEKS                       R15 R14 K31 ["InfoTooltip"]
      149 CALL                             R11 3 1
      150 SETTABLEKS                       R11 R10 K20 ["StatusGroup"]
      152 CALL                             R7 3 1
      153 SETTABLEKS                       R7 R6 K13 ["Header"]
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K2 ["createElement"]
      158 GETUPVAL                         R8 6
      159 DUPTABLE                         R9 K56 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      160 LOADK                            R12 K25 ["LookComposerDialog"]
      161 LOADK                            R13 K57 ["MarketplaceDiscoverabilityDescription"]
      162 NAMECALL                         R10 R1 K27 ["getText"]
      164 CALL                             R10 3 1
      165 SETTABLEKS                       R10 R9 K22 ["Text"]
      167 MOVE                             R10 R2
      168 CALL                             R10 0 1
      169 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      171 CALL                             R7 2 1
      172 SETTABLEKS                       R7 R6 K14 ["Description"]
      174 CALL                             R3 3 -1
      175 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Text"]
       32 GETTABLEKS                       R6 R3 K12 ["Icon"]
       34 GETTABLEKS                       R7 R3 K13 ["Divider"]
       36 GETTABLEKS                       R8 R3 K14 ["Tooltip"]
       38 GETTABLEKS                       R9 R3 K15 ["Enums"]
       40 GETTABLEKS                       R9 R9 K16 ["IconName"]
       42 GETTABLEKS                       R10 R3 K15 ["Enums"]
       44 GETTABLEKS                       R10 R10 K17 ["IconSize"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R12 R0 K6 ["Packages"]
       50 GETTABLEKS                       R12 R12 K18 ["Framework"]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R12 R11 K19 ["ContextServices"]
       55 GETTABLEKS                       R12 R12 K20 ["Localization"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K21 ["Src"]
       61 GETTABLEKS                       R14 R14 K22 ["Util"]
       63 GETTABLEKS                       R14 R14 K23 ["Constants"]
       65 CALL                             R13 1 1
       66 DUPCLOSURE                       R14 K24 [PROTO_0]
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 RETURN                           R14 1
