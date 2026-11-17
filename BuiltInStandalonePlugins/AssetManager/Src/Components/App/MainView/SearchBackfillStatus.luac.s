PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Uid"]
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["requestFolderReadiness"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Hooks"]
        7 GETTABLEKS                       R1 R1 K2 ["useTokens"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K0 ["use"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 MOVE                             R7 R3
       17 NAMECALL                         R5 R2 K3 ["getScopeRoot"]
       19 CALL                             R5 2 1
       20 OR                               R4 R5 R3
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 5
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 6
       27 CALL                             R7 0 1
       28 JUMPIFEQKNIL                     R5 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 GETUPVAL                         R11 7
       33 GETTABLEKS                       R11 R11 K4 ["SidebarToggleLeftPadding"]
       35 SUB                              R10 R7 R11
       36 LOADN                            R12 2
       37 GETUPVAL                         R13 7
       38 GETTABLEKS                       R13 R13 K5 ["PaddingSmall"]
       40 MUL                              R11 R12 R13
       41 SUB                              R9 R10 R11
       42 GETUPVAL                         R10 8
       43 GETTABLEKS                       R10 R10 K6 ["InventoryFolderStatus"]
       45 GETTABLEKS                       R10 R10 K7 ["FoldersReady"]
       47 JUMPIFNOTEQ                      R5 R10 ; [+3]
       49 LOADNIL                          R10
       50 RETURN                           R10 1
       51 GETUPVAL                         R10 9
       52 GETTABLEKS                       R10 R10 K8 ["createElement"]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K9 ["Tooltip"]
       57 DUPTABLE                         R12 K14 [{["title"] = "", ["text"], ["side"]}]
       58 LOADK                            R15 K9 ["Tooltip"]
       59 JUMPIFNOT                        R8 ; [+2]
       60 LOADK                            R16 K15 ["PreparingSearch"]
       61 JUMP                             ; [+1]
       62 LOADK                            R16 K16 ["RefreshSearchIndex"]
       63 NAMECALL                         R13 R0 K17 ["getText"]
       65 CALL                             R13 3 1
       66 SETTABLEKS                       R13 R12 K12 ["text"]
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R13 R13 K18 ["Enums"]
       71 GETTABLEKS                       R13 R13 K19 ["PopoverSide"]
       73 GETTABLEKS                       R13 R13 K20 ["Bottom"]
       75 SETTABLEKS                       R13 R12 K13 ["side"]
       77 JUMPIFNOT                        R8 ; [+27]
       78 GETUPVAL                         R13 9
       79 GETTABLEKS                       R13 R13 K8 ["createElement"]
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K21 ["View"]
       84 DUPTABLE                         R15 K24 [{["tag"] = "row align-y-center size-0-600 auto-x padding-xsmall"}]
       85 DUPTABLE                         R16 K26 [{"Text"}]
       86 GETUPVAL                         R17 9
       87 GETTABLEKS                       R17 R17 K8 ["createElement"]
       89 GETUPVAL                         R18 1
       90 GETTABLEKS                       R18 R18 K25 ["Text"]
       92 DUPTABLE                         R19 K28 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-left content-muted"}]
       93 LOADK                            R22 K29 ["Search"]
       94 LOADK                            R23 K15 ["PreparingSearch"]
       95 NAMECALL                         R20 R0 K17 ["getText"]
       97 CALL                             R20 3 1
       98 SETTABLEKS                       R20 R19 K25 ["Text"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K25 ["Text"]
      103 CALL                             R13 3 1
      104 JUMP                             ; [+92]
      105 GETUPVAL                         R13 9
      106 GETTABLEKS                       R13 R13 K8 ["createElement"]
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K21 ["View"]
      111 DUPTABLE                         R15 K36 [{["onActivated"], ["stateLayer"], ["sizeConstraint"], ["tag"] = "row align-x-left align-y-center gap-xsmall size-0-600 auto-x padding-small radius-small stroke-default bg-surface-100 clip", ["testId"] = "search-backfill-refresh-button"}]
      112 NEWCLOSURE                       R16 P0
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R4
      115 SETTABLEKS                       R16 R15 K30 ["onActivated"]
      117 DUPTABLE                         R16 K38 [{"affordance"}]
      118 GETUPVAL                         R17 1
      119 GETTABLEKS                       R17 R17 K18 ["Enums"]
      121 GETTABLEKS                       R17 R17 K39 ["StateLayerAffordance"]
      123 GETTABLEKS                       R17 R17 K40 ["Background"]
      125 SETTABLEKS                       R17 R16 K37 ["affordance"]
      127 SETTABLEKS                       R16 R15 K31 ["stateLayer"]
      129 JUMPIFNOT                        R6 ; [+9]
      130 DUPTABLE                         R16 K42 [{"MaxSize"}]
      131 GETIMPORT                        R17 K45 [Vector2.new]
      133 MOVE                             R18 R9
      134 LOADK                            R19 K46 [Infinity]
      135 CALL                             R17 2 1
      136 SETTABLEKS                       R17 R16 K41 ["MaxSize"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R16
      140 SETTABLEKS                       R16 R15 K32 ["sizeConstraint"]
      142 DUPTABLE                         R16 K48 [{"Icon", "Text"}]
      143 GETUPVAL                         R17 9
      144 GETTABLEKS                       R17 R17 K8 ["createElement"]
      146 GETUPVAL                         R18 1
      147 GETTABLEKS                       R18 R18 K47 ["Icon"]
      149 DUPTABLE                         R19 K54 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
      150 GETUPVAL                         R20 1
      151 GETTABLEKS                       R20 R20 K18 ["Enums"]
      153 GETTABLEKS                       R20 R20 K55 ["IconName"]
      155 GETTABLEKS                       R20 R20 K56 ["TriangleExclamation"]
      157 SETTABLEKS                       R20 R19 K51 ["name"]
      159 GETUPVAL                         R20 1
      160 GETTABLEKS                       R20 R20 K18 ["Enums"]
      162 GETTABLEKS                       R20 R20 K57 ["IconSize"]
      164 GETTABLEKS                       R20 R20 K58 ["XSmall"]
      166 SETTABLEKS                       R20 R19 K52 ["size"]
      168 GETTABLEKS                       R20 R1 K59 ["Color"]
      170 GETTABLEKS                       R20 R20 K60 ["ActionUtility"]
      172 GETTABLEKS                       R20 R20 K61 ["Foreground"]
      174 SETTABLEKS                       R20 R19 K53 ["style"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K47 ["Icon"]
      179 GETUPVAL                         R17 9
      180 GETTABLEKS                       R17 R17 K8 ["createElement"]
      182 GETUPVAL                         R18 1
      183 GETTABLEKS                       R18 R18 K25 ["Text"]
      185 DUPTABLE                         R19 K64 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "shrink size-0-full auto-x text-label-small text-align-x-left text-truncate-end content-emphasis"}]
      186 LOADK                            R22 K29 ["Search"]
      187 LOADK                            R23 K16 ["RefreshSearchIndex"]
      188 NAMECALL                         R20 R0 K17 ["getText"]
      190 CALL                             R20 3 1
      191 SETTABLEKS                       R20 R19 K25 ["Text"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K25 ["Text"]
      196 CALL                             R13 3 1
      197 CALL                             R10 3 -1
      198 RETURN                           R10 -1

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
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["StyleConstants"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K17 ["ExplorerController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K19 ["useCurrentScope"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K20 ["useIsFolderReady"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K21 ["useShowSidebar"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R13 R13 K18 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useSidebarWidth"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K23 [PROTO_1]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R1
      104 RETURN                           R13 1
