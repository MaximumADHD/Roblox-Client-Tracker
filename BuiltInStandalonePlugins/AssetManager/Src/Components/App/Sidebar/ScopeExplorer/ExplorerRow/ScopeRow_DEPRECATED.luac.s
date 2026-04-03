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
        4 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        6 NAMECALL                         R0 R0 K2 ["handleMouse1Click"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 NAMECALL                         R0 R0 K3 ["setCurrentScope"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
       10 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
       12 GETTABLE                         R0 R1 R2
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 GETUPVAL                         R3 6
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

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
       32 JUMP                             ; [+23]
       33 GETTABLEKS                       R8 R6 K3 ["Type"]
       35 GETUPVAL                         R11 5
       36 GETTABLEKS                       R10 R11 K4 ["ScopeType"]
       38 GETTABLEKS                       R9 R10 K7 ["User"]
       40 JUMPIFNOTEQ                      R8 R9 ; [+3]
       42 LOADK                            R7 K8 ["icon-user-folder"]
       43 JUMP                             ; [+12]
       44 GETTABLEKS                       R8 R6 K3 ["Type"]
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R10 R11 K4 ["ScopeType"]
       49 GETTABLEKS                       R9 R10 K9 ["ProjectPlaces"]
       51 JUMPIFNOTEQ                      R8 R9 ; [+3]
       53 LOADK                            R7 K10 ["icon-places-folder"]
       54 JUMP                             ; [+1]
       55 LOADK                            R7 K11 ["icon-folder"]
       56 GETUPVAL                         R8 6
       57 CALL                             R8 0 1
       58 GETTABLEKS                       R10 R8 K12 ["Uid"]
       60 GETTABLEKS                       R11 R6 K12 ["Uid"]
       62 JUMPIFEQ                         R10 R11 ; [+2]
       64 LOADB                            R9 0 +1
       65 LOADB                            R9 1
       66 JUMPIFNOT                        R9 ; [+2]
       67 LOADK                            R10 K13 ["bg-action-selected"]
       68 JUMP                             ; [+1]
       69 LOADK                            R10 K14 ["am-hover"]
       70 GETUPVAL                         R12 7
       71 CALL                             R12 0 1
       72 JUMPIFNOT                        R12 ; [+5]
       73 GETUPVAL                         R11 8
       74 MOVE                             R12 R6
       75 MOVE                             R13 R1
       76 CALL                             R11 2 1
       77 JUMP                             ; [+32]
       78 GETTABLEKS                       R12 R6 K3 ["Type"]
       80 GETUPVAL                         R15 5
       81 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       83 GETTABLEKS                       R13 R14 K9 ["ProjectPlaces"]
       85 JUMPIFNOTEQ                      R12 R13 ; [+7]
       87 LOADK                            R13 K15 ["Scopes"]
       88 LOADK                            R14 K16 ["ExperiencePlaces"]
       89 NAMECALL                         R11 R1 K17 ["getText"]
       91 CALL                             R11 3 1
       92 JUMP                             ; [+17]
       93 GETTABLEKS                       R12 R6 K3 ["Type"]
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       98 GETTABLEKS                       R13 R14 K18 ["ProjectShared"]
      100 JUMPIFNOTEQ                      R12 R13 ; [+7]
      102 LOADK                            R13 K15 ["Scopes"]
      103 LOADK                            R14 K19 ["ExperienceShared"]
      104 NAMECALL                         R11 R1 K17 ["getText"]
      106 CALL                             R11 3 1
      107 JUMP                             ; [+2]
      108 GETTABLEKS                       R11 R6 K20 ["Name"]
      110 GETUPVAL                         R12 9
      111 CALL                             R12 0 1
      112 GETTABLEKS                       R14 R6 K21 ["Id"]
      114 GETTABLE                         R13 R12 R14
      115 GETUPVAL                         R14 10
      116 GETUPVAL                         R17 5
      117 GETTABLEKS                       R16 R17 K22 ["MenuContext"]
      119 GETTABLEKS                       R15 R16 K23 ["Sidebar"]
      121 DUPTABLE                         R16 K25 [{"Scope"}]
      122 SETTABLEKS                       R6 R16 K24 ["Scope"]
      124 CALL                             R14 2 1
      125 GETUPVAL                         R16 11
      126 GETTABLEKS                       R15 R16 K26 ["createElement"]
      128 GETUPVAL                         R16 12
      129 NEWTABLE                         R17 8 0
      131 GETTABLEKS                       R18 R0 K27 ["Index"]
      133 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      135 GETTABLEKS                       R18 R0 K29 ["Position"]
      137 SETTABLEKS                       R18 R17 K29 ["Position"]
      139 NEWCLOSURE                       R18 P0
      140 CAPTURE                          VAL R5
      141 CAPTURE                          UPVAL U5
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R18 R17 K30 ["OnPress"]
      146 NEWCLOSURE                       R18 P1
      147 CAPTURE                          UPVAL U13
      148 CAPTURE                          VAL R14
      149 CAPTURE                          UPVAL U14
      150 CAPTURE                          UPVAL U5
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R18 R17 K31 ["OnRightClick"]
      156 GETUPVAL                         R19 11
      157 GETTABLEKS                       R18 R19 K32 ["Tag"]
      159 LOADK                            R20 K33 ["am-size-full-explorerrow %* am-padding-right-xsmall X-Row X-Middle"]
      160 MOVE                             R22 R10
      161 NAMECALL                         R20 R20 K34 ["format"]
      163 CALL                             R20 2 1
      164 MOVE                             R19 R20
      165 SETTABLE                         R19 R17 R18
      166 DUPTABLE                         R18 K37 [{"Contents", "IndicatorWrapper"}]
      167 GETUPVAL                         R20 11
      168 GETTABLEKS                       R19 R20 K26 ["createElement"]
      170 GETUPVAL                         R20 12
      171 NEWTABLE                         R21 1 0
      173 GETUPVAL                         R23 11
      174 GETTABLEKS                       R22 R23 K32 ["Tag"]
      176 LOADK                            R23 K38 ["fill X-RowS X-Left X-Middle X-PadS"]
      177 SETTABLE                         R23 R21 R22
      178 DUPTABLE                         R22 K40 [{"Thumbnail", "Name"}]
      179 GETUPVAL                         R24 7
      180 CALL                             R24 0 1
      181 JUMPIFNOT                        R24 ; [+50]
      182 GETTABLEKS                       R24 R6 K3 ["Type"]
      184 GETUPVAL                         R27 5
      185 GETTABLEKS                       R26 R27 K4 ["ScopeType"]
      187 GETTABLEKS                       R25 R26 K41 ["RecentUploads"]
      189 JUMPIFNOTEQ                      R24 R25 ; [+42]
      191 GETUPVAL                         R24 11
      192 GETTABLEKS                       R23 R24 K26 ["createElement"]
      194 GETUPVAL                         R25 15
      195 GETTABLEKS                       R24 R25 K42 ["Icon"]
      197 DUPTABLE                         R25 K46 [{"LayoutOrder", "name", "variant", "size"}]
      198 NAMECALL                         R26 R2 K47 ["getNextOrder"]
      200 CALL                             R26 1 1
      201 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      203 GETUPVAL                         R29 15
      204 GETTABLEKS                       R28 R29 K48 ["Enums"]
      206 GETTABLEKS                       R27 R28 K49 ["IconName"]
      208 GETTABLEKS                       R26 R27 K50 ["ClockSpinReverse"]
      210 SETTABLEKS                       R26 R25 K43 ["name"]
      212 GETUPVAL                         R29 15
      213 GETTABLEKS                       R28 R29 K48 ["Enums"]
      215 GETTABLEKS                       R27 R28 K51 ["IconVariant"]
      217 GETTABLEKS                       R26 R27 K52 ["Filled"]
      219 SETTABLEKS                       R26 R25 K44 ["variant"]
      221 GETUPVAL                         R29 15
      222 GETTABLEKS                       R28 R29 K48 ["Enums"]
      224 GETTABLEKS                       R27 R28 K53 ["InputSize"]
      226 GETTABLEKS                       R26 R27 K54 ["Small"]
      228 SETTABLEKS                       R26 R25 K45 ["size"]
      230 CALL                             R23 2 1
      231 JUMP                             ; [+22]
      232 GETUPVAL                         R24 11
      233 GETTABLEKS                       R23 R24 K26 ["createElement"]
      235 GETUPVAL                         R24 16
      236 NEWTABLE                         R25 2 0
      238 NAMECALL                         R26 R2 K47 ["getNextOrder"]
      240 CALL                             R26 1 1
      241 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      243 GETUPVAL                         R27 11
      244 GETTABLEKS                       R26 R27 K32 ["Tag"]
      246 LOADK                            R28 K55 ["%* Icon16"]
      247 MOVE                             R30 R7
      248 NAMECALL                         R28 R28 K34 ["format"]
      250 CALL                             R28 2 1
      251 MOVE                             R27 R28
      252 SETTABLE                         R27 R25 R26
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K39 ["Thumbnail"]
      256 GETUPVAL                         R24 11
      257 GETTABLEKS                       R23 R24 K26 ["createElement"]
      259 GETUPVAL                         R24 17
      260 NEWTABLE                         R25 4 0
      262 NAMECALL                         R26 R2 K47 ["getNextOrder"]
      264 CALL                             R26 1 1
      265 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      267 SETTABLEKS                       R11 R25 K56 ["Text"]
      269 GETIMPORT                        R26 K60 [Enum.TextTruncate.AtEnd]
      271 SETTABLEKS                       R26 R25 K58 ["TextTruncate"]
      273 GETUPVAL                         R27 11
      274 GETTABLEKS                       R26 R27 K32 ["Tag"]
      276 LOADK                            R27 K61 ["ScopeName X-Fit Left"]
      277 SETTABLE                         R27 R25 R26
      278 CALL                             R23 2 1
      279 SETTABLEKS                       R23 R22 K20 ["Name"]
      281 CALL                             R19 3 1
      282 SETTABLEKS                       R19 R18 K35 ["Contents"]
      284 JUMPIFNOT                        R13 ; [+27]
      285 GETUPVAL                         R20 11
      286 GETTABLEKS                       R19 R20 K26 ["createElement"]
      288 GETUPVAL                         R21 15
      289 GETTABLEKS                       R20 R21 K62 ["View"]
      291 DUPTABLE                         R21 K64 [{"tag"}]
      292 LOADK                            R22 K65 ["am-size-icon bg-action-subtle"]
      293 SETTABLEKS                       R22 R21 K63 ["tag"]
      295 NEWTABLE                         R22 0 1
      297 GETUPVAL                         R24 11
      298 GETTABLEKS                       R23 R24 K26 ["createElement"]
      300 GETUPVAL                         R25 15
      301 GETTABLEKS                       R24 R25 K66 ["Image"]
      303 DUPTABLE                         R25 K64 [{"tag"}]
      304 LOADK                            R26 K67 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      305 SETTABLEKS                       R26 R25 K63 ["tag"]
      307 CALL                             R23 2 -1
      308 SETLIST                          R22 R23 -1 [1]
      310 CALL                             R19 3 1
      311 JUMP                             ; [+1]
      312 LOADNIL                          R19
      313 SETTABLEKS                       R19 R18 K36 ["IndicatorWrapper"]
      315 CALL                             R15 3 -1
      316 RETURN                           R15 -1

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
       98 GETTABLEKS                       R17 R18 K25 ["useContextMenu"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R20 R0 K10 ["Src"]
      105 GETTABLEKS                       R19 R20 K22 ["Hooks"]
      107 GETTABLEKS                       R18 R19 K26 ["useCurrentScope"]
      109 CALL                             R17 1 1
      110 GETTABLEKS                       R19 R3 K27 ["Util"]
      112 GETTABLEKS                       R18 R19 K28 ["LayoutOrderIterator"]
      114 GETIMPORT                        R19 K5 [require]
      116 GETTABLEKS                       R22 R0 K10 ["Src"]
      118 GETTABLEKS                       R21 R22 K27 ["Util"]
      120 GETTABLEKS                       R20 R21 K29 ["renderContextMenu"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R23 R0 K10 ["Src"]
      127 GETTABLEKS                       R22 R23 K27 ["Util"]
      129 GETTABLEKS                       R21 R22 K30 ["getLocalizedScopeName"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K5 [require]
      134 GETTABLEKS                       R24 R0 K10 ["Src"]
      136 GETTABLEKS                       R23 R24 K31 ["Flags"]
      138 GETTABLEKS                       R22 R23 K32 ["getFFlagAmrRecents"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K5 [require]
      143 GETTABLEKS                       R25 R0 K10 ["Src"]
      145 GETTABLEKS                       R24 R25 K31 ["Flags"]
      147 GETTABLEKS                       R23 R24 K33 ["getFFlagAmrContextMenuRefactor"]
      149 CALL                             R22 1 1
      150 DUPCLOSURE                       R23 K34 [PROTO_0]
      151 CAPTURE                          VAL R4
      152 DUPCLOSURE                       R24 K35 [PROTO_3]
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R9
      171 RETURN                           R24 1
