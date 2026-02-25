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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        7 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        9 GETTABLE                         R0 R1 R2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETUPVAL                         R3 5
       13 CALL                             R0 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R2 5
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R0 R0 K2 ["handleRowRightClick_DEPRECATED"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

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
       71 GETTABLEKS                       R12 R6 K3 ["Type"]
       73 GETUPVAL                         R15 5
       74 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       76 GETTABLEKS                       R13 R14 K9 ["ProjectPlaces"]
       78 JUMPIFNOTEQ                      R12 R13 ; [+7]
       80 LOADK                            R13 K15 ["Scopes"]
       81 LOADK                            R14 K16 ["ExperiencePlaces"]
       82 NAMECALL                         R11 R1 K17 ["getText"]
       84 CALL                             R11 3 1
       85 JUMP                             ; [+17]
       86 GETTABLEKS                       R12 R6 K3 ["Type"]
       88 GETUPVAL                         R15 5
       89 GETTABLEKS                       R14 R15 K4 ["ScopeType"]
       91 GETTABLEKS                       R13 R14 K18 ["ProjectShared"]
       93 JUMPIFNOTEQ                      R12 R13 ; [+7]
       95 LOADK                            R13 K15 ["Scopes"]
       96 LOADK                            R14 K19 ["ExperienceShared"]
       97 NAMECALL                         R11 R1 K17 ["getText"]
       99 CALL                             R11 3 1
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R11 R6 K20 ["Name"]
      103 GETUPVAL                         R12 7
      104 CALL                             R12 0 1
      105 GETTABLEKS                       R14 R6 K21 ["Id"]
      107 GETTABLE                         R13 R12 R14
      108 GETUPVAL                         R15 8
      109 GETTABLEKS                       R14 R15 K22 ["createElement"]
      111 GETUPVAL                         R15 9
      112 NEWTABLE                         R16 8 0
      114 GETTABLEKS                       R17 R0 K23 ["Index"]
      116 SETTABLEKS                       R17 R16 K24 ["LayoutOrder"]
      118 GETTABLEKS                       R17 R0 K25 ["Position"]
      120 SETTABLEKS                       R17 R16 K25 ["Position"]
      122 NEWCLOSURE                       R17 P0
      123 CAPTURE                          VAL R5
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R17 R16 K26 ["OnPress"]
      129 NEWCLOSURE                       R17 P1
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R17 R16 K27 ["OnRightClick"]
      138 GETUPVAL                         R18 8
      139 GETTABLEKS                       R17 R18 K28 ["Tag"]
      141 LOADK                            R19 K29 ["am-size-full-explorerrow %* am-padding-right-xsmall X-Row X-Middle"]
      142 MOVE                             R21 R10
      143 NAMECALL                         R19 R19 K30 ["format"]
      145 CALL                             R19 2 1
      146 MOVE                             R18 R19
      147 SETTABLE                         R18 R16 R17
      148 DUPTABLE                         R17 K33 [{"Contents", "IndicatorWrapper"}]
      149 GETUPVAL                         R19 8
      150 GETTABLEKS                       R18 R19 K22 ["createElement"]
      152 GETUPVAL                         R19 9
      153 NEWTABLE                         R20 1 0
      155 GETUPVAL                         R22 8
      156 GETTABLEKS                       R21 R22 K28 ["Tag"]
      158 LOADK                            R22 K34 ["fill X-RowS X-Left X-Middle X-PadS"]
      159 SETTABLE                         R22 R20 R21
      160 DUPTABLE                         R21 K36 [{"Thumbnail", "Name"}]
      161 GETUPVAL                         R23 8
      162 GETTABLEKS                       R22 R23 K22 ["createElement"]
      164 GETUPVAL                         R23 12
      165 NEWTABLE                         R24 2 0
      167 NAMECALL                         R25 R2 K37 ["getNextOrder"]
      169 CALL                             R25 1 1
      170 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      172 GETUPVAL                         R26 8
      173 GETTABLEKS                       R25 R26 K28 ["Tag"]
      175 LOADK                            R27 K38 ["%* Icon16"]
      176 MOVE                             R29 R7
      177 NAMECALL                         R27 R27 K30 ["format"]
      179 CALL                             R27 2 1
      180 MOVE                             R26 R27
      181 SETTABLE                         R26 R24 R25
      182 CALL                             R22 2 1
      183 SETTABLEKS                       R22 R21 K35 ["Thumbnail"]
      185 GETUPVAL                         R23 8
      186 GETTABLEKS                       R22 R23 K22 ["createElement"]
      188 GETUPVAL                         R23 13
      189 NEWTABLE                         R24 4 0
      191 NAMECALL                         R25 R2 K37 ["getNextOrder"]
      193 CALL                             R25 1 1
      194 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      196 SETTABLEKS                       R11 R24 K39 ["Text"]
      198 GETIMPORT                        R25 K43 [Enum.TextTruncate.AtEnd]
      200 SETTABLEKS                       R25 R24 K41 ["TextTruncate"]
      202 GETUPVAL                         R26 8
      203 GETTABLEKS                       R25 R26 K28 ["Tag"]
      205 LOADK                            R26 K44 ["ScopeName X-Fit Left"]
      206 SETTABLE                         R26 R24 R25
      207 CALL                             R22 2 1
      208 SETTABLEKS                       R22 R21 K20 ["Name"]
      210 CALL                             R18 3 1
      211 SETTABLEKS                       R18 R17 K31 ["Contents"]
      213 JUMPIFNOT                        R13 ; [+27]
      214 GETUPVAL                         R19 8
      215 GETTABLEKS                       R18 R19 K22 ["createElement"]
      217 GETUPVAL                         R20 14
      218 GETTABLEKS                       R19 R20 K45 ["View"]
      220 DUPTABLE                         R20 K47 [{"tag"}]
      221 LOADK                            R21 K48 ["am-size-icon bg-action-subtle"]
      222 SETTABLEKS                       R21 R20 K46 ["tag"]
      224 NEWTABLE                         R21 0 1
      226 GETUPVAL                         R23 8
      227 GETTABLEKS                       R22 R23 K22 ["createElement"]
      229 GETUPVAL                         R24 14
      230 GETTABLEKS                       R23 R24 K49 ["Image"]
      232 DUPTABLE                         R24 K47 [{"tag"}]
      233 LOADK                            R25 K50 ["icon-notification bg-action-subtle size-full data-testid=scope-notification-icon"]
      234 SETTABLEKS                       R25 R24 K46 ["tag"]
      236 CALL                             R22 2 -1
      237 SETLIST                          R21 R22 -1 [1]
      239 CALL                             R18 3 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R18
      242 SETTABLEKS                       R18 R17 K32 ["IndicatorWrapper"]
      244 CALL                             R14 3 -1
      245 RETURN                           R14 -1

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
      118 GETTABLEKS                       R21 R22 K29 ["Flags"]
      120 GETTABLEKS                       R20 R21 K30 ["getFFlagAmrCleanupContextAndInput"]
      122 CALL                             R19 1 1
      123 DUPCLOSURE                       R20 K31 [PROTO_0]
      124 CAPTURE                          VAL R4
      125 DUPCLOSURE                       R21 K32 [PROTO_3]
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R2
      141 RETURN                           R21 1
