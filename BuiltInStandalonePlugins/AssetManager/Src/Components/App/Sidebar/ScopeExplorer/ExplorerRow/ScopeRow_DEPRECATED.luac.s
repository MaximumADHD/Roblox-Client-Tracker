PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R2 K2 ["Group"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+3]
        9 LOADK                            R1 K3 ["icon-group-folder"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["Type"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       16 GETTABLEKS                       R2 R2 K4 ["User"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+3]
       20 LOADK                            R1 K5 ["icon-user-folder"]
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K0 ["Type"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K1 ["ScopeType"]
       27 GETTABLEKS                       R2 R2 K6 ["ProjectPlaces"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+3]
       31 LOADK                            R1 K7 ["icon-places-folder"]
       32 RETURN                           R1 1
       33 LOADK                            R1 K8 ["icon-folder"]
       34 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Sidebar"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Click"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R0 R0 K3 ["setCurrentScope"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R5 R0 K2 ["ScopeInfo"]
       18 GETTABLEKS                       R7 R5 K3 ["Type"]
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       23 GETTABLEKS                       R8 R8 K5 ["Group"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+3]
       27 LOADK                            R6 K6 ["icon-group-folder"]
       28 JUMP                             ; [+23]
       29 GETTABLEKS                       R7 R5 K3 ["Type"]
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       34 GETTABLEKS                       R8 R8 K7 ["User"]
       36 JUMPIFNOTEQ                      R7 R8 ; [+3]
       38 LOADK                            R6 K8 ["icon-user-folder"]
       39 JUMP                             ; [+12]
       40 GETTABLEKS                       R7 R5 K3 ["Type"]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K4 ["ScopeType"]
       45 GETTABLEKS                       R8 R8 K9 ["ProjectPlaces"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+3]
       49 LOADK                            R6 K10 ["icon-places-folder"]
       50 JUMP                             ; [+1]
       51 LOADK                            R6 K11 ["icon-folder"]
       52 GETUPVAL                         R7 5
       53 CALL                             R7 0 1
       54 GETTABLEKS                       R9 R7 K12 ["Uid"]
       56 GETTABLEKS                       R10 R5 K12 ["Uid"]
       58 JUMPIFEQ                         R9 R10 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 JUMPIFNOT                        R8 ; [+2]
       63 LOADK                            R9 K13 ["bg-action-selected"]
       64 JUMP                             ; [+1]
       65 LOADK                            R9 K14 ["am-hover"]
       66 GETUPVAL                         R10 6
       67 MOVE                             R11 R5
       68 MOVE                             R12 R1
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 7
       71 CALL                             R11 0 1
       72 GETTABLEKS                       R13 R5 K12 ["Uid"]
       74 GETTABLE                         R12 R11 R13
       75 GETUPVAL                         R13 8
       76 GETUPVAL                         R14 4
       77 GETTABLEKS                       R14 R14 K15 ["MenuContext"]
       79 GETTABLEKS                       R14 R14 K16 ["Sidebar"]
       81 DUPTABLE                         R15 K18 [{"Scope"}]
       82 SETTABLEKS                       R5 R15 K17 ["Scope"]
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 9
       86 GETTABLEKS                       R14 R14 K19 ["createElement"]
       88 GETUPVAL                         R15 10
       89 NEWTABLE                         R16 8 0
       91 GETTABLEKS                       R17 R0 K20 ["Index"]
       93 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       95 GETTABLEKS                       R17 R0 K22 ["Position"]
       97 SETTABLEKS                       R17 R16 K22 ["Position"]
       99 NEWCLOSURE                       R17 P0
      100 CAPTURE                          VAL R4
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R5
      104 SETTABLEKS                       R17 R16 K23 ["OnPress"]
      106 NEWCLOSURE                       R17 P1
      107 CAPTURE                          VAL R13
      108 SETTABLEKS                       R17 R16 K24 ["OnRightClick"]
      110 GETUPVAL                         R17 9
      111 GETTABLEKS                       R17 R17 K25 ["Tag"]
      113 LOADK                            R19 K26 ["am-size-full-explorerrow %* am-padding-right-xsmall X-Row X-Middle"]
      114 MOVE                             R21 R9
      115 NAMECALL                         R19 R19 K27 ["format"]
      117 CALL                             R19 2 1
      118 MOVE                             R18 R19
      119 SETTABLE                         R18 R16 R17
      120 DUPTABLE                         R17 K30 [{"Contents", "IndicatorWrapper"}]
      121 GETUPVAL                         R18 9
      122 GETTABLEKS                       R18 R18 K19 ["createElement"]
      124 GETUPVAL                         R19 10
      125 NEWTABLE                         R20 1 0
      127 GETUPVAL                         R21 9
      128 GETTABLEKS                       R21 R21 K25 ["Tag"]
      130 LOADK                            R22 K31 ["fill X-RowS X-Left X-Middle X-PadS"]
      131 SETTABLE                         R22 R20 R21
      132 DUPTABLE                         R21 K34 [{"Thumbnail", "Name"}]
      133 GETTABLEKS                       R23 R5 K3 ["Type"]
      135 GETUPVAL                         R24 4
      136 GETTABLEKS                       R24 R24 K4 ["ScopeType"]
      138 GETTABLEKS                       R24 R24 K35 ["RecentUploads"]
      140 JUMPIFNOTEQ                      R23 R24 ; [+42]
      142 GETUPVAL                         R22 9
      143 GETTABLEKS                       R22 R22 K19 ["createElement"]
      145 GETUPVAL                         R23 11
      146 GETTABLEKS                       R23 R23 K36 ["Icon"]
      148 DUPTABLE                         R24 K40 [{"LayoutOrder", "name", "variant", "size"}]
      149 NAMECALL                         R25 R2 K41 ["getNextOrder"]
      151 CALL                             R25 1 1
      152 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      154 GETUPVAL                         R25 11
      155 GETTABLEKS                       R25 R25 K42 ["Enums"]
      157 GETTABLEKS                       R25 R25 K43 ["IconName"]
      159 GETTABLEKS                       R25 R25 K44 ["ClockSpinReverse"]
      161 SETTABLEKS                       R25 R24 K37 ["name"]
      163 GETUPVAL                         R25 11
      164 GETTABLEKS                       R25 R25 K42 ["Enums"]
      166 GETTABLEKS                       R25 R25 K45 ["IconVariant"]
      168 GETTABLEKS                       R25 R25 K46 ["Filled"]
      170 SETTABLEKS                       R25 R24 K38 ["variant"]
      172 GETUPVAL                         R25 11
      173 GETTABLEKS                       R25 R25 K42 ["Enums"]
      175 GETTABLEKS                       R25 R25 K47 ["InputSize"]
      177 GETTABLEKS                       R25 R25 K48 ["Small"]
      179 SETTABLEKS                       R25 R24 K39 ["size"]
      181 CALL                             R22 2 1
      182 JUMP                             ; [+22]
      183 GETUPVAL                         R22 9
      184 GETTABLEKS                       R22 R22 K19 ["createElement"]
      186 GETUPVAL                         R23 12
      187 NEWTABLE                         R24 2 0
      189 NAMECALL                         R25 R2 K41 ["getNextOrder"]
      191 CALL                             R25 1 1
      192 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      194 GETUPVAL                         R25 9
      195 GETTABLEKS                       R25 R25 K25 ["Tag"]
      197 LOADK                            R27 K49 ["%* Icon16"]
      198 MOVE                             R29 R6
      199 NAMECALL                         R27 R27 K27 ["format"]
      201 CALL                             R27 2 1
      202 MOVE                             R26 R27
      203 SETTABLE                         R26 R24 R25
      204 CALL                             R22 2 1
      205 SETTABLEKS                       R22 R21 K32 ["Thumbnail"]
      207 GETUPVAL                         R22 9
      208 GETTABLEKS                       R22 R22 K19 ["createElement"]
      210 GETUPVAL                         R23 13
      211 NEWTABLE                         R24 4 0
      213 NAMECALL                         R25 R2 K41 ["getNextOrder"]
      215 CALL                             R25 1 1
      216 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      218 SETTABLEKS                       R10 R24 K50 ["Text"]
      220 GETIMPORT                        R25 K54 [Enum.TextTruncate.AtEnd]
      222 SETTABLEKS                       R25 R24 K52 ["TextTruncate"]
      224 GETUPVAL                         R25 9
      225 GETTABLEKS                       R25 R25 K25 ["Tag"]
      227 LOADK                            R26 K55 ["ScopeName X-Fit Left"]
      228 SETTABLE                         R26 R24 R25
      229 CALL                             R22 2 1
      230 SETTABLEKS                       R22 R21 K33 ["Name"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K28 ["Contents"]
      235 JUMPIFNOT                        R12 ; [+27]
      236 GETUPVAL                         R18 9
      237 GETTABLEKS                       R18 R18 K19 ["createElement"]
      239 GETUPVAL                         R19 11
      240 GETTABLEKS                       R19 R19 K56 ["View"]
      242 DUPTABLE                         R20 K58 [{"tag"}]
      243 LOADK                            R21 K59 ["am-size-icon bg-action-subtle"]
      244 SETTABLEKS                       R21 R20 K57 ["tag"]
      246 NEWTABLE                         R21 0 1
      248 GETUPVAL                         R22 9
      249 GETTABLEKS                       R22 R22 K19 ["createElement"]
      251 GETUPVAL                         R23 11
      252 GETTABLEKS                       R23 R23 K60 ["Image"]
      254 DUPTABLE                         R24 K58 [{"tag"}]
      255 LOADK                            R25 K61 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      256 SETTABLEKS                       R25 R24 K57 ["tag"]
      258 CALL                             R22 2 -1
      259 SETLIST                          R21 R22 -1 [1]
      261 CALL                             R18 3 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R18
      264 SETTABLEKS                       R18 R17 K29 ["IndicatorWrapper"]
      266 CALL                             R14 3 -1
      267 RETURN                           R14 -1

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
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R3 K14 ["UI"]
       41 GETTABLEKS                       R8 R7 K15 ["Pane"]
       43 GETTABLEKS                       R9 R7 K16 ["TextLabel"]
       45 GETTABLEKS                       R10 R7 K17 ["Image"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R12 R0 K10 ["Src"]
       51 GETTABLEKS                       R12 R12 K18 ["Controllers"]
       53 GETTABLEKS                       R12 R12 K19 ["PluginController"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R0 K10 ["Src"]
       60 GETTABLEKS                       R13 R13 K18 ["Controllers"]
       62 GETTABLEKS                       R13 R13 K20 ["Input"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R0 K10 ["Src"]
       69 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       71 GETTABLEKS                       R14 R14 K22 ["useExplorerInfo"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K10 ["Src"]
       78 GETTABLEKS                       R15 R15 K21 ["Hooks"]
       80 GETTABLEKS                       R15 R15 K23 ["useScopeNotifications"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K10 ["Src"]
       87 GETTABLEKS                       R16 R16 K21 ["Hooks"]
       89 GETTABLEKS                       R16 R16 K24 ["useContextMenu"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R17 R0 K10 ["Src"]
       96 GETTABLEKS                       R17 R17 K21 ["Hooks"]
       98 GETTABLEKS                       R17 R17 K25 ["useCurrentScope"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R17 R3 K26 ["Util"]
      103 GETTABLEKS                       R17 R17 K27 ["LayoutOrderIterator"]
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R19 R0 K10 ["Src"]
      109 GETTABLEKS                       R19 R19 K26 ["Util"]
      111 GETTABLEKS                       R19 R19 K28 ["getLocalizedScopeName"]
      113 CALL                             R18 1 1
      114 DUPCLOSURE                       R19 K29 [PROTO_0]
      115 CAPTURE                          VAL R4
      116 DUPCLOSURE                       R20 K30 [PROTO_3]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R9
      131 RETURN                           R20 1
