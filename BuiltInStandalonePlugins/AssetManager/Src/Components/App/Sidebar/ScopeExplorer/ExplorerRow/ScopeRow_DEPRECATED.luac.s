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
        2 NAMECALL                         R0 R0 K0 ["setCurrentScope"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
       12 GETTABLEKS                       R4 R0 K2 ["ScopeInfo"]
       14 GETTABLEKS                       R6 R4 K3 ["Type"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K4 ["ScopeType"]
       19 GETTABLEKS                       R7 R7 K5 ["Group"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+3]
       23 LOADK                            R5 K6 ["icon-group-folder"]
       24 JUMP                             ; [+23]
       25 GETTABLEKS                       R6 R4 K3 ["Type"]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K4 ["ScopeType"]
       30 GETTABLEKS                       R7 R7 K7 ["User"]
       32 JUMPIFNOTEQ                      R6 R7 ; [+3]
       34 LOADK                            R5 K8 ["icon-user-folder"]
       35 JUMP                             ; [+12]
       36 GETTABLEKS                       R6 R4 K3 ["Type"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K4 ["ScopeType"]
       41 GETTABLEKS                       R7 R7 K9 ["ProjectPlaces"]
       43 JUMPIFNOTEQ                      R6 R7 ; [+3]
       45 LOADK                            R5 K10 ["icon-places-folder"]
       46 JUMP                             ; [+1]
       47 LOADK                            R5 K11 ["icon-folder"]
       48 GETUPVAL                         R6 4
       49 CALL                             R6 0 1
       50 GETTABLEKS                       R8 R6 K12 ["Uid"]
       52 GETTABLEKS                       R9 R4 K12 ["Uid"]
       54 JUMPIFEQ                         R8 R9 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADK                            R8 K13 ["bg-action-selected"]
       60 JUMP                             ; [+1]
       61 LOADK                            R8 K14 ["am-hover"]
       62 GETUPVAL                         R9 5
       63 MOVE                             R10 R4
       64 MOVE                             R11 R1
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 6
       67 CALL                             R10 0 1
       68 GETTABLEKS                       R12 R4 K12 ["Uid"]
       70 GETTABLE                         R11 R10 R12
       71 GETUPVAL                         R12 7
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R13 R13 K15 ["MenuContext"]
       75 GETTABLEKS                       R13 R13 K16 ["Sidebar"]
       77 DUPTABLE                         R14 K18 [{"Scope"}]
       78 SETTABLEKS                       R4 R14 K17 ["Scope"]
       80 CALL                             R12 2 1
       81 GETUPVAL                         R13 8
       82 GETTABLEKS                       R13 R13 K19 ["createElement"]
       84 GETUPVAL                         R14 9
       85 NEWTABLE                         R15 8 0
       87 GETTABLEKS                       R16 R0 K20 ["Index"]
       89 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       91 GETTABLEKS                       R16 R0 K22 ["Position"]
       93 SETTABLEKS                       R16 R15 K22 ["Position"]
       95 NEWCLOSURE                       R16 P0
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R16 R15 K23 ["OnPress"]
      100 NEWCLOSURE                       R16 P1
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R16 R15 K24 ["OnRightClick"]
      104 GETUPVAL                         R16 8
      105 GETTABLEKS                       R16 R16 K25 ["Tag"]
      107 LOADK                            R18 K26 ["am-size-full-explorerrow %* am-padding-right-xsmall X-Row X-Middle"]
      108 MOVE                             R20 R8
      109 NAMECALL                         R18 R18 K27 ["format"]
      111 CALL                             R18 2 1
      112 MOVE                             R17 R18
      113 SETTABLE                         R17 R15 R16
      114 DUPTABLE                         R16 K30 [{"Contents", "IndicatorWrapper"}]
      115 GETUPVAL                         R17 8
      116 GETTABLEKS                       R17 R17 K19 ["createElement"]
      118 GETUPVAL                         R18 9
      119 NEWTABLE                         R19 1 0
      121 GETUPVAL                         R20 8
      122 GETTABLEKS                       R20 R20 K25 ["Tag"]
      124 LOADK                            R21 K31 ["fill X-RowS X-Left X-Middle X-PadS"]
      125 SETTABLE                         R21 R19 R20
      126 DUPTABLE                         R20 K34 [{"Thumbnail", "Name"}]
      127 GETTABLEKS                       R22 R4 K3 ["Type"]
      129 GETUPVAL                         R23 3
      130 GETTABLEKS                       R23 R23 K4 ["ScopeType"]
      132 GETTABLEKS                       R23 R23 K35 ["RecentUploads"]
      134 JUMPIFNOTEQ                      R22 R23 ; [+42]
      136 GETUPVAL                         R21 8
      137 GETTABLEKS                       R21 R21 K19 ["createElement"]
      139 GETUPVAL                         R22 10
      140 GETTABLEKS                       R22 R22 K36 ["Icon"]
      142 DUPTABLE                         R23 K40 [{"LayoutOrder", "name", "variant", "size"}]
      143 NAMECALL                         R24 R2 K41 ["getNextOrder"]
      145 CALL                             R24 1 1
      146 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      148 GETUPVAL                         R24 10
      149 GETTABLEKS                       R24 R24 K42 ["Enums"]
      151 GETTABLEKS                       R24 R24 K43 ["IconName"]
      153 GETTABLEKS                       R24 R24 K44 ["ClockSpinReverse"]
      155 SETTABLEKS                       R24 R23 K37 ["name"]
      157 GETUPVAL                         R24 10
      158 GETTABLEKS                       R24 R24 K42 ["Enums"]
      160 GETTABLEKS                       R24 R24 K45 ["IconVariant"]
      162 GETTABLEKS                       R24 R24 K46 ["Filled"]
      164 SETTABLEKS                       R24 R23 K38 ["variant"]
      166 GETUPVAL                         R24 10
      167 GETTABLEKS                       R24 R24 K42 ["Enums"]
      169 GETTABLEKS                       R24 R24 K47 ["InputSize"]
      171 GETTABLEKS                       R24 R24 K48 ["Small"]
      173 SETTABLEKS                       R24 R23 K39 ["size"]
      175 CALL                             R21 2 1
      176 JUMP                             ; [+22]
      177 GETUPVAL                         R21 8
      178 GETTABLEKS                       R21 R21 K19 ["createElement"]
      180 GETUPVAL                         R22 11
      181 NEWTABLE                         R23 2 0
      183 NAMECALL                         R24 R2 K41 ["getNextOrder"]
      185 CALL                             R24 1 1
      186 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      188 GETUPVAL                         R24 8
      189 GETTABLEKS                       R24 R24 K25 ["Tag"]
      191 LOADK                            R26 K49 ["%* Icon16"]
      192 MOVE                             R28 R5
      193 NAMECALL                         R26 R26 K27 ["format"]
      195 CALL                             R26 2 1
      196 MOVE                             R25 R26
      197 SETTABLE                         R25 R23 R24
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K32 ["Thumbnail"]
      201 GETUPVAL                         R21 8
      202 GETTABLEKS                       R21 R21 K19 ["createElement"]
      204 GETUPVAL                         R22 12
      205 NEWTABLE                         R23 4 0
      207 NAMECALL                         R24 R2 K41 ["getNextOrder"]
      209 CALL                             R24 1 1
      210 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      212 SETTABLEKS                       R9 R23 K50 ["Text"]
      214 GETIMPORT                        R24 K54 [Enum.TextTruncate.AtEnd]
      216 SETTABLEKS                       R24 R23 K52 ["TextTruncate"]
      218 GETUPVAL                         R24 8
      219 GETTABLEKS                       R24 R24 K25 ["Tag"]
      221 LOADK                            R25 K55 ["ScopeName X-Fit Left"]
      222 SETTABLE                         R25 R23 R24
      223 CALL                             R21 2 1
      224 SETTABLEKS                       R21 R20 K33 ["Name"]
      226 CALL                             R17 3 1
      227 SETTABLEKS                       R17 R16 K28 ["Contents"]
      229 JUMPIFNOT                        R11 ; [+27]
      230 GETUPVAL                         R17 8
      231 GETTABLEKS                       R17 R17 K19 ["createElement"]
      233 GETUPVAL                         R18 10
      234 GETTABLEKS                       R18 R18 K56 ["View"]
      236 DUPTABLE                         R19 K58 [{"tag"}]
      237 LOADK                            R20 K59 ["am-size-icon bg-action-subtle"]
      238 SETTABLEKS                       R20 R19 K57 ["tag"]
      240 NEWTABLE                         R20 0 1
      242 GETUPVAL                         R21 8
      243 GETTABLEKS                       R21 R21 K19 ["createElement"]
      245 GETUPVAL                         R22 10
      246 GETTABLEKS                       R22 R22 K60 ["Image"]
      248 DUPTABLE                         R23 K58 [{"tag"}]
      249 LOADK                            R24 K61 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      250 SETTABLEKS                       R24 R23 K57 ["tag"]
      252 CALL                             R21 2 -1
      253 SETLIST                          R20 R21 -1 [1]
      255 CALL                             R17 3 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R17
      258 SETTABLEKS                       R17 R16 K29 ["IndicatorWrapper"]
      260 CALL                             R13 3 -1
      261 RETURN                           R13 -1

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
       60 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       62 GETTABLEKS                       R13 R13 K21 ["useExplorerInfo"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R0 K10 ["Src"]
       69 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       71 GETTABLEKS                       R14 R14 K22 ["useScopeNotifications"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K10 ["Src"]
       78 GETTABLEKS                       R15 R15 K20 ["Hooks"]
       80 GETTABLEKS                       R15 R15 K23 ["useContextMenu"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K10 ["Src"]
       87 GETTABLEKS                       R16 R16 K20 ["Hooks"]
       89 GETTABLEKS                       R16 R16 K24 ["useCurrentScope"]
       91 CALL                             R15 1 1
       92 GETTABLEKS                       R16 R3 K25 ["Util"]
       94 GETTABLEKS                       R16 R16 K26 ["LayoutOrderIterator"]
       96 GETIMPORT                        R17 K5 [require]
       98 GETTABLEKS                       R18 R0 K10 ["Src"]
      100 GETTABLEKS                       R18 R18 K25 ["Util"]
      102 GETTABLEKS                       R18 R18 K27 ["getLocalizedScopeName"]
      104 CALL                             R17 1 1
      105 DUPCLOSURE                       R18 K28 [PROTO_0]
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R19 K29 [PROTO_3]
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R9
      121 RETURN                           R19 1
