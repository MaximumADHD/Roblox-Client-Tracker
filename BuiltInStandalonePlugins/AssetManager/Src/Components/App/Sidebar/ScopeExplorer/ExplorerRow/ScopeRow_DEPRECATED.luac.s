PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
        5 GETTABLEKS                       R2 R3 K2 ["Group"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+3]
        9 LOADK                            R1 K3 ["icon-group-folder"]
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["Type"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       16 GETTABLEKS                       R2 R3 K4 ["User"]
       18 JUMPIFNOTEQ                      R1 R2 ; [+3]
       20 LOADK                            R1 K5 ["icon-user-folder"]
       21 RETURN                           R1 1
       22 GETTABLEKS                       R1 R0 K0 ["Type"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K1 ["ScopeType"]
       27 GETTABLEKS                       R2 R3 K6 ["ProjectPlaces"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+3]
       31 LOADK                            R1 K7 ["icon-places-folder"]
       32 RETURN                           R1 1
       33 LOADK                            R1 K8 ["icon-folder"]
       34 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R3 K1 ["Explorer"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Click"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R0 R0 K3 ["setCurrentScope"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETTABLEKS                       R6 R0 K2 ["ScopeInfo"]
       22 GETTABLEKS                       R8 R6 K3 ["Type"]
       24 GETUPVAL                         R11 5
       25 GETTABLEKS                       R10 R11 K4 ["ScopeType"]
       27 GETTABLEKS                       R9 R10 K5 ["Group"]
       29 JUMPIFNOTEQ                      R8 R9 ; [+3]
       31 LOADK                            R7 K6 ["icon-group-folder"]
       32 JUMP                             ; [+24]
       33 GETTABLEKS                       R8 R6 K3 ["Type"]
       35 GETUPVAL                         R11 5
       36 GETTABLEKS                       R10 R11 K4 ["ScopeType"]
       38 GETTABLEKS                       R9 R10 K7 ["User"]
       40 JUMPIFNOTEQ                      R8 R9 ; [+3]
       42 LOADK                            R7 K8 ["icon-user-folder"]
       43 JUMP                             ; [+13]
       44 GETTABLEKS                       R8 R6 K3 ["Type"]
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R10 R11 K4 ["ScopeType"]
       49 GETTABLEKS                       R9 R10 K9 ["ProjectPlaces"]
       51 JUMPIFNOTEQ                      R8 R9 ; [+3]
       53 LOADK                            R7 K10 ["icon-places-folder"]
       54 JUMP                             ; [+2]
       55 LOADK                            R7 K11 ["icon-folder"]
       56 JUMP                             ; [0]
       57 GETUPVAL                         R8 6
       58 CALL                             R8 0 1
       59 GETTABLEKS                       R10 R8 K12 ["Uid"]
       61 GETTABLEKS                       R11 R6 K12 ["Uid"]
       63 JUMPIFEQ                         R10 R11 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 JUMPIFNOT                        R9 ; [+2]
       68 LOADK                            R10 K13 ["bg-action-selected"]
       69 JUMP                             ; [+1]
       70 LOADK                            R10 K14 ["am-hover"]
       71 GETUPVAL                         R12 7
       72 CALL                             R12 0 1
       73 JUMPIFNOT                        R12 ; [+5]
       74 GETUPVAL                         R11 8
       75 MOVE                             R12 R6
       76 MOVE                             R13 R1
       77 CALL                             R11 2 1
       78 JUMP                             ; [+32]
       79 GETTABLEKS                       R12 R6 K3 ["Type"]
       81 GETUPVAL                         R15 5
       82 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       84 GETTABLEKS                       R13 R14 K9 ["ProjectPlaces"]
       86 JUMPIFNOTEQ                      R12 R13 ; [+7]
       88 LOADK                            R13 K15 ["Scopes"]
       89 LOADK                            R14 K16 ["ExperiencePlaces"]
       90 NAMECALL                         R11 R1 K17 ["getText"]
       92 CALL                             R11 3 1
       93 JUMP                             ; [+17]
       94 GETTABLEKS                       R12 R6 K3 ["Type"]
       96 GETUPVAL                         R15 5
       97 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       99 GETTABLEKS                       R13 R14 K18 ["ProjectShared"]
      101 JUMPIFNOTEQ                      R12 R13 ; [+7]
      103 LOADK                            R13 K15 ["Scopes"]
      104 LOADK                            R14 K19 ["ExperienceShared"]
      105 NAMECALL                         R11 R1 K17 ["getText"]
      107 CALL                             R11 3 1
      108 JUMP                             ; [+2]
      109 GETTABLEKS                       R11 R6 K20 ["Name"]
      111 GETUPVAL                         R12 9
      112 CALL                             R12 0 1
      113 GETTABLEKS                       R14 R6 K21 ["Id"]
      115 GETTABLE                         R13 R12 R14
      116 GETUPVAL                         R15 10
      117 GETTABLEKS                       R14 R15 K22 ["createElement"]
      119 GETUPVAL                         R15 11
      120 NEWTABLE                         R16 8 0
      122 GETTABLEKS                       R17 R0 K23 ["Index"]
      124 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      126 GETTABLEKS                       R17 R0 K25 ["Position"]
      128 SETTABLEKS                       R17 R16 K25 ["Position"]
      130 NEWCLOSURE                       R17 P0
      131 CAPTURE                          VAL R5
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 SETTABLEKS                       R17 R16 K26 ["OnPress"]
      137 NEWCLOSURE                       R17 P1
      138 CAPTURE                          UPVAL U12
      139 CAPTURE                          UPVAL U5
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R6
      143 SETTABLEKS                       R17 R16 K27 ["OnRightClick"]
      145 GETUPVAL                         R18 10
      146 GETTABLEKS                       R17 R18 K28 ["Tag"]
      148 LOADK                            R19 K29 ["am-size-full-explorerrow %* am-padding-right-xsmall X-Row X-Middle"]
      149 MOVE                             R21 R10
      150 NAMECALL                         R19 R19 K30 ["format"]
      152 CALL                             R19 2 1
      153 MOVE                             R18 R19
      154 SETTABLE                         R18 R16 R17
      155 DUPTABLE                         R17 K33 [{"Contents", "IndicatorWrapper"}]
      156 GETUPVAL                         R19 10
      157 GETTABLEKS                       R18 R19 K22 ["createElement"]
      159 GETUPVAL                         R19 11
      160 NEWTABLE                         R20 1 0
      162 GETUPVAL                         R22 10
      163 GETTABLEKS                       R21 R22 K28 ["Tag"]
      165 LOADK                            R22 K34 ["fill X-RowS X-Left X-Middle X-PadS"]
      166 SETTABLE                         R22 R20 R21
      167 DUPTABLE                         R21 K36 [{"Thumbnail", "Name"}]
      168 GETUPVAL                         R23 7
      169 CALL                             R23 0 1
      170 JUMPIFNOT                        R23 ; [+50]
      171 GETTABLEKS                       R23 R6 K3 ["Type"]
      173 GETUPVAL                         R26 5
      174 GETTABLEKS                       R25 R26 K4 ["ScopeType"]
      176 GETTABLEKS                       R24 R25 K37 ["RecentUploads"]
      178 JUMPIFNOTEQ                      R23 R24 ; [+42]
      180 GETUPVAL                         R23 10
      181 GETTABLEKS                       R22 R23 K22 ["createElement"]
      183 GETUPVAL                         R24 13
      184 GETTABLEKS                       R23 R24 K38 ["Icon"]
      186 DUPTABLE                         R24 K42 [{"LayoutOrder", "name", "variant", "size"}]
      187 NAMECALL                         R25 R2 K43 ["getNextOrder"]
      189 CALL                             R25 1 1
      190 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      192 GETUPVAL                         R28 13
      193 GETTABLEKS                       R27 R28 K44 ["Enums"]
      195 GETTABLEKS                       R26 R27 K45 ["IconName"]
      197 GETTABLEKS                       R25 R26 K46 ["ClockSpinReverse"]
      199 SETTABLEKS                       R25 R24 K39 ["name"]
      201 GETUPVAL                         R28 13
      202 GETTABLEKS                       R27 R28 K44 ["Enums"]
      204 GETTABLEKS                       R26 R27 K47 ["IconVariant"]
      206 GETTABLEKS                       R25 R26 K48 ["Filled"]
      208 SETTABLEKS                       R25 R24 K40 ["variant"]
      210 GETUPVAL                         R28 13
      211 GETTABLEKS                       R27 R28 K44 ["Enums"]
      213 GETTABLEKS                       R26 R27 K49 ["InputSize"]
      215 GETTABLEKS                       R25 R26 K50 ["Small"]
      217 SETTABLEKS                       R25 R24 K41 ["size"]
      219 CALL                             R22 2 1
      220 JUMP                             ; [+22]
      221 GETUPVAL                         R23 10
      222 GETTABLEKS                       R22 R23 K22 ["createElement"]
      224 GETUPVAL                         R23 14
      225 NEWTABLE                         R24 2 0
      227 NAMECALL                         R25 R2 K43 ["getNextOrder"]
      229 CALL                             R25 1 1
      230 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      232 GETUPVAL                         R26 10
      233 GETTABLEKS                       R25 R26 K28 ["Tag"]
      235 LOADK                            R27 K51 ["%* Icon16"]
      236 MOVE                             R29 R7
      237 NAMECALL                         R27 R27 K30 ["format"]
      239 CALL                             R27 2 1
      240 MOVE                             R26 R27
      241 SETTABLE                         R26 R24 R25
      242 CALL                             R22 2 1
      243 SETTABLEKS                       R22 R21 K35 ["Thumbnail"]
      245 GETUPVAL                         R23 10
      246 GETTABLEKS                       R22 R23 K22 ["createElement"]
      248 GETUPVAL                         R23 15
      249 NEWTABLE                         R24 4 0
      251 NAMECALL                         R25 R2 K43 ["getNextOrder"]
      253 CALL                             R25 1 1
      254 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      256 SETTABLEKS                       R11 R24 K52 ["Text"]
      258 GETIMPORT                        R25 K56 [Enum.TextTruncate.AtEnd]
      260 SETTABLEKS                       R25 R24 K54 ["TextTruncate"]
      262 GETUPVAL                         R26 10
      263 GETTABLEKS                       R25 R26 K28 ["Tag"]
      265 LOADK                            R26 K57 ["ScopeName X-Fit Left"]
      266 SETTABLE                         R26 R24 R25
      267 CALL                             R22 2 1
      268 SETTABLEKS                       R22 R21 K20 ["Name"]
      270 CALL                             R18 3 1
      271 SETTABLEKS                       R18 R17 K31 ["Contents"]
      273 JUMPIFNOT                        R13 ; [+27]
      274 GETUPVAL                         R19 10
      275 GETTABLEKS                       R18 R19 K22 ["createElement"]
      277 GETUPVAL                         R20 13
      278 GETTABLEKS                       R19 R20 K58 ["View"]
      280 DUPTABLE                         R20 K60 [{"tag"}]
      281 LOADK                            R21 K61 ["am-size-icon bg-action-subtle"]
      282 SETTABLEKS                       R21 R20 K59 ["tag"]
      284 NEWTABLE                         R21 0 1
      286 GETUPVAL                         R23 10
      287 GETTABLEKS                       R22 R23 K22 ["createElement"]
      289 GETUPVAL                         R24 13
      290 GETTABLEKS                       R23 R24 K62 ["Image"]
      292 DUPTABLE                         R24 K60 [{"tag"}]
      293 LOADK                            R25 K63 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      294 SETTABLEKS                       R25 R24 K59 ["tag"]
      296 CALL                             R22 2 -1
      297 SETLIST                          R21 R22 -1 [1]
      299 CALL                             R18 3 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R18
      302 SETTABLEKS                       R18 R17 K32 ["IndicatorWrapper"]
      304 CALL                             R14 3 -1
      305 RETURN                           R14 -1

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
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R3 K14 ["UI"]
       41 GETTABLEKS                       R8 R7 K15 ["Pane"]
       43 GETTABLEKS                       R9 R7 K16 ["TextLabel"]
       45 GETTABLEKS                       R10 R7 K17 ["Image"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R14 R0 K10 ["Src"]
       51 GETTABLEKS                       R13 R14 K18 ["Controllers"]
       53 GETTABLEKS                       R12 R13 K19 ["ExplorerController"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R15 R0 K10 ["Src"]
       60 GETTABLEKS                       R14 R15 K18 ["Controllers"]
       62 GETTABLEKS                       R13 R14 K20 ["PluginController"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R16 R0 K10 ["Src"]
       69 GETTABLEKS                       R15 R16 K18 ["Controllers"]
       71 GETTABLEKS                       R14 R15 K21 ["Input"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R17 R0 K10 ["Src"]
       78 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       80 GETTABLEKS                       R15 R16 K23 ["useExplorerInfo"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R18 R0 K10 ["Src"]
       87 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       89 GETTABLEKS                       R16 R17 K24 ["useScopeNotifications"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R19 R0 K10 ["Src"]
       96 GETTABLEKS                       R18 R19 K22 ["Hooks"]
       98 GETTABLEKS                       R17 R18 K25 ["useCurrentScope"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R18 R3 K26 ["Util"]
      103 GETTABLEKS                       R17 R18 K27 ["LayoutOrderIterator"]
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R21 R0 K10 ["Src"]
      109 GETTABLEKS                       R20 R21 K26 ["Util"]
      111 GETTABLEKS                       R19 R20 K28 ["renderContextMenu"]
      113 CALL                             R18 1 1
      114 GETIMPORT                        R19 K5 [require]
      116 GETTABLEKS                       R22 R0 K10 ["Src"]
      118 GETTABLEKS                       R21 R22 K26 ["Util"]
      120 GETTABLEKS                       R20 R21 K29 ["getLocalizedScopeName"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R23 R0 K10 ["Src"]
      127 GETTABLEKS                       R22 R23 K30 ["Flags"]
      129 GETTABLEKS                       R21 R22 K31 ["getFFlagAmrRecents"]
      131 CALL                             R20 1 1
      132 DUPCLOSURE                       R21 K32 [PROTO_0]
      133 CAPTURE                          VAL R4
      134 DUPCLOSURE                       R22 K33 [PROTO_3]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R9
      151 RETURN                           R22 1
