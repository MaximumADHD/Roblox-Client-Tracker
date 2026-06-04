PROTO_0:
        0 DUPTABLE                         R4 K5 [{"Key", "Index", "Item", "Depth", "Position"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R1 R4 K1 ["Index"]
        5 GETTABLEKS                       R5 R0 K6 ["item"]
        7 SETTABLEKS                       R5 R4 K2 ["Item"]
        9 GETTABLEKS                       R5 R0 K7 ["depth"]
       11 SETTABLEKS                       R5 R4 K3 ["Depth"]
       13 SETTABLEKS                       R2 R4 K4 ["Position"]
       15 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETUPVAL                         R9 0
        8 MOVE                             R11 R6
        9 NAMECALL                         R9 R9 K0 ["getScopeWithUid"]
       11 CALL                             R9 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 NAMECALL                         R0 R0 K0 ["setSidebarScrollFrame"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 LOADK                            R5 K1 ["ScrollingFrame"]
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R1 K2 ["FindFirstChildWhichIsA"]
       17 CALL                             R3 3 1
       18 LOADK                            R6 K1 ["ScrollingFrame"]
       19 LOADB                            R7 1
       20 NAMECALL                         R4 R0 K2 ["FindFirstChildWhichIsA"]
       22 CALL                             R4 3 1
       23 LOADK                            R7 K1 ["ScrollingFrame"]
       24 LOADB                            R8 1
       25 NAMECALL                         R5 R2 K2 ["FindFirstChildWhichIsA"]
       27 CALL                             R5 3 1
       28 JUMPIFNOT                        R3 ; [+2]
       29 JUMPIFNOT                        R4 ; [+1]
       30 JUMPIF                           R5 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R6 3
       33 MOVE                             R8 R3
       34 MOVE                             R9 R4
       35 MOVE                             R10 R5
       36 NAMECALL                         R6 R6 K3 ["setSidebarScrollFrame"]
       38 CALL                             R6 4 0
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U3
       41 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Uid"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETUPVAL                         R6 5
       16 GETTABLEKS                       R6 R6 K2 ["MenuContext"]
       18 GETTABLEKS                       R6 R6 K3 ["Sidebar"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+239]
       24 DUPCLOSURE                       R6 K4 [PROTO_0]
       25 GETUPVAL                         R7 7
       26 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R2
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 8
       37 CALL                             R8 0 1
       38 GETUPVAL                         R9 7
       39 GETTABLEKS                       R9 R9 K6 ["useRef"]
       41 LOADNIL                          R10
       42 CALL                             R9 1 1
       43 GETUPVAL                         R10 7
       44 GETTABLEKS                       R10 R10 K6 ["useRef"]
       46 LOADNIL                          R11
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 7
       49 GETTABLEKS                       R11 R11 K6 ["useRef"]
       51 LOADNIL                          R12
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 7
       54 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       56 NEWCLOSURE                       R13 P2
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R3
       61 NEWTABLE                         R14 0 0
       63 CALL                             R12 2 0
       64 DUPTABLE                         R12 K13 [{"RootItems", "Expansion", "GetChildren", "GetRowProps", "GetItemId"}]
       65 GETTABLEKS                       R13 R0 K14 ["ExplorerItems"]
       67 SETTABLEKS                       R13 R12 K8 ["RootItems"]
       69 GETTABLEKS                       R13 R4 K9 ["Expansion"]
       71 SETTABLEKS                       R13 R12 K9 ["Expansion"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R13 R12 K10 ["GetChildren"]
       77 SETTABLEKS                       R6 R12 K11 ["GetRowProps"]
       79 DUPCLOSURE                       R13 K15 [PROTO_5]
       80 SETTABLEKS                       R13 R12 K12 ["GetItemId"]
       82 GETUPVAL                         R13 7
       83 GETTABLEKS                       R13 R13 K16 ["createElement"]
       85 GETUPVAL                         R14 9
       86 GETTABLEKS                       R14 R14 K17 ["View"]
       88 DUPTABLE                         R15 K22 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
       89 GETTABLEKS                       R16 R0 K18 ["LayoutOrder"]
       91 SETTABLEKS                       R16 R15 K18 ["LayoutOrder"]
       93 SETTABLEKS                       R5 R15 K19 ["onSecondaryActivated"]
       95 DUPTABLE                         R16 K24 [{"affordance"}]
       96 GETUPVAL                         R17 9
       97 GETTABLEKS                       R17 R17 K25 ["Enums"]
       99 GETTABLEKS                       R17 R17 K26 ["StateLayerAffordance"]
      101 GETTABLEKS                       R17 R17 K27 ["None"]
      103 SETTABLEKS                       R17 R16 K23 ["affordance"]
      105 SETTABLEKS                       R16 R15 K20 ["stateLayer"]
      107 LOADK                            R16 K28 ["Explorer"]
      108 SETTABLEKS                       R16 R15 K21 ["tag"]
      110 DUPTABLE                         R16 K32 [{"UnderlayTree", "MainTree", "OverlayTree"}]
      111 GETUPVAL                         R17 7
      112 GETTABLEKS                       R17 R17 K16 ["createElement"]
      114 GETUPVAL                         R18 9
      115 GETTABLEKS                       R18 R18 K17 ["View"]
      117 DUPTABLE                         R19 K36 [{"ref", "ZIndex", "Size", "tag"}]
      118 SETTABLEKS                       R9 R19 K33 ["ref"]
      120 LOADN                            R20 1
      121 SETTABLEKS                       R20 R19 K34 ["ZIndex"]
      123 GETIMPORT                        R20 K38 [UDim2.new]
      125 LOADN                            R21 1
      126 JUMPIFNOT                        R8 ; [+5]
      127 GETUPVAL                         R23 10
      128 GETTABLEKS                       R23 R23 K39 ["ScrollingBarWidth"]
      130 MINUS                            R22 R23
      131 JUMP                             ; [+1]
      132 LOADN                            R22 0
      133 LOADN                            R23 1
      134 LOADN                            R24 0
      135 CALL                             R20 4 1
      136 SETTABLEKS                       R20 R19 K35 ["Size"]
      138 LOADK                            R20 K40 ["gui-object-defaults padding-bottom-small"]
      139 SETTABLEKS                       R20 R19 K21 ["tag"]
      141 GETUPVAL                         R20 7
      142 GETTABLEKS                       R20 R20 K16 ["createElement"]
      144 GETUPVAL                         R21 11
      145 GETUPVAL                         R22 12
      146 GETTABLEKS                       R22 R22 K41 ["join"]
      148 MOVE                             R23 R12
      149 NEWTABLE                         R24 4 0
      151 GETUPVAL                         R25 13
      152 SETTABLEKS                       R25 R24 K42 ["RowComponent"]
      154 LOADN                            R25 0
      155 SETTABLEKS                       R25 R24 K43 ["ScrollBarThickness"]
      157 GETUPVAL                         R25 7
      158 GETTABLEKS                       R25 R25 K44 ["Tag"]
      160 LOADK                            R26 K45 ["amr-underlay"]
      161 SETTABLE                         R26 R24 R25
      162 CALL                             R22 2 -1
      163 CALL                             R20 -1 -1
      164 CALL                             R17 -1 1
      165 SETTABLEKS                       R17 R16 K29 ["UnderlayTree"]
      167 GETUPVAL                         R17 7
      168 GETTABLEKS                       R17 R17 K16 ["createElement"]
      170 GETUPVAL                         R18 9
      171 GETTABLEKS                       R18 R18 K17 ["View"]
      173 DUPTABLE                         R19 K46 [{"ref", "ZIndex", "tag"}]
      174 SETTABLEKS                       R10 R19 K33 ["ref"]
      176 LOADN                            R20 2
      177 SETTABLEKS                       R20 R19 K34 ["ZIndex"]
      179 LOADK                            R20 K47 ["size-full"]
      180 SETTABLEKS                       R20 R19 K21 ["tag"]
      182 GETUPVAL                         R20 7
      183 GETTABLEKS                       R20 R20 K16 ["createElement"]
      185 GETUPVAL                         R21 14
      186 GETUPVAL                         R22 12
      187 GETTABLEKS                       R22 R22 K41 ["join"]
      189 MOVE                             R23 R12
      190 NEWTABLE                         R24 2 0
      192 GETUPVAL                         R25 15
      193 SETTABLEKS                       R25 R24 K42 ["RowComponent"]
      195 GETUPVAL                         R25 7
      196 GETTABLEKS                       R25 R25 K44 ["Tag"]
      198 LOADK                            R26 K48 [""]
      199 SETTABLE                         R26 R24 R25
      200 CALL                             R22 2 -1
      201 CALL                             R20 -1 -1
      202 CALL                             R17 -1 1
      203 SETTABLEKS                       R17 R16 K30 ["MainTree"]
      205 GETUPVAL                         R17 7
      206 GETTABLEKS                       R17 R17 K16 ["createElement"]
      208 GETUPVAL                         R18 9
      209 GETTABLEKS                       R18 R18 K17 ["View"]
      211 DUPTABLE                         R19 K50 [{"ref", "Position", "ZIndex", "tag"}]
      212 SETTABLEKS                       R11 R19 K33 ["ref"]
      214 GETIMPORT                        R20 K38 [UDim2.new]
      216 LOADN                            R21 1
      217 JUMPIFNOT                        R8 ; [+5]
      218 GETUPVAL                         R23 10
      219 GETTABLEKS                       R23 R23 K39 ["ScrollingBarWidth"]
      221 MINUS                            R22 R23
      222 JUMP                             ; [+1]
      223 LOADN                            R22 0
      224 LOADN                            R23 0
      225 LOADN                            R24 0
      226 CALL                             R20 4 1
      227 SETTABLEKS                       R20 R19 K49 ["Position"]
      229 LOADN                            R20 3
      230 SETTABLEKS                       R20 R19 K34 ["ZIndex"]
      232 LOADK                            R20 K51 ["size-600-full anchor-top-right gui-object-defaults padding-bottom-small"]
      233 SETTABLEKS                       R20 R19 K21 ["tag"]
      235 GETUPVAL                         R20 7
      236 GETTABLEKS                       R20 R20 K16 ["createElement"]
      238 GETUPVAL                         R21 11
      239 GETUPVAL                         R22 12
      240 GETTABLEKS                       R22 R22 K41 ["join"]
      242 MOVE                             R23 R12
      243 NEWTABLE                         R24 4 0
      245 GETUPVAL                         R25 16
      246 SETTABLEKS                       R25 R24 K42 ["RowComponent"]
      248 LOADN                            R25 0
      249 SETTABLEKS                       R25 R24 K43 ["ScrollBarThickness"]
      251 GETUPVAL                         R25 7
      252 GETTABLEKS                       R25 R25 K44 ["Tag"]
      254 LOADK                            R26 K45 ["amr-underlay"]
      255 SETTABLE                         R26 R24 R25
      256 CALL                             R22 2 -1
      257 CALL                             R20 -1 -1
      258 CALL                             R17 -1 1
      259 SETTABLEKS                       R17 R16 K31 ["OverlayTree"]
      261 CALL                             R13 3 -1
      262 RETURN                           R13 -1
      263 GETUPVAL                         R6 7
      264 GETTABLEKS                       R6 R6 K16 ["createElement"]
      266 GETUPVAL                         R7 17
      267 NEWTABLE                         R8 4 0
      269 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
      271 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
      273 NEWCLOSURE                       R9 P5
      274 CAPTURE                          VAL R5
      275 SETTABLEKS                       R9 R8 K52 ["OnRightClick"]
      277 GETUPVAL                         R9 7
      278 GETTABLEKS                       R9 R9 K44 ["Tag"]
      280 LOADK                            R10 K53 ["Explorer X-Column"]
      281 SETTABLE                         R10 R8 R9
      282 DUPTABLE                         R9 K55 [{"TreeView"}]
      283 GETUPVAL                         R10 7
      284 GETTABLEKS                       R10 R10 K16 ["createElement"]
      286 GETUPVAL                         R11 14
      287 NEWTABLE                         R12 8 0
      289 NAMECALL                         R13 R1 K56 ["getNextOrder"]
      291 CALL                             R13 1 1
      292 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      294 GETTABLEKS                       R13 R0 K14 ["ExplorerItems"]
      296 SETTABLEKS                       R13 R12 K8 ["RootItems"]
      298 GETTABLEKS                       R13 R4 K9 ["Expansion"]
      300 SETTABLEKS                       R13 R12 K9 ["Expansion"]
      302 DUPCLOSURE                       R13 K57 [PROTO_7]
      303 SETTABLEKS                       R13 R12 K58 ["OnExpansionChange"]
      305 GETUPVAL                         R13 18
      306 SETTABLEKS                       R13 R12 K42 ["RowComponent"]
      308 GETUPVAL                         R13 7
      309 GETTABLEKS                       R13 R13 K44 ["Tag"]
      311 LOADK                            R14 K48 [""]
      312 SETTABLE                         R14 R12 R13
      313 CALL                             R10 2 1
      314 SETTABLEKS                       R10 R9 K54 ["TreeView"]
      316 CALL                             R6 3 -1
      317 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["StyleConstants"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["UI"]
       53 GETTABLEKS                       R8 R7 K16 ["Pane"]
       55 GETTABLEKS                       R9 R7 K17 ["TreeView"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Components"]
       63 GETTABLEKS                       R11 R11 K19 ["Shared"]
       65 GETTABLEKS                       R11 R11 K20 ["CustomTreeView"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETIMPORT                        R12 K1 [script]
       72 GETTABLEKS                       R12 R12 K21 ["ExplorerRow"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETIMPORT                        R13 K1 [script]
       79 GETTABLEKS                       R13 R13 K22 ["OverlayRow"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETIMPORT                        R14 K1 [script]
       86 GETTABLEKS                       R14 R14 K23 ["Row"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K24 ["UnderlayRow"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K11 ["Src"]
      100 GETTABLEKS                       R16 R16 K25 ["Controllers"]
      102 GETTABLEKS                       R16 R16 K26 ["ExplorerController"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K11 ["Src"]
      109 GETTABLEKS                       R17 R17 K25 ["Controllers"]
      111 GETTABLEKS                       R17 R17 K27 ["LayoutController"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K11 ["Src"]
      118 GETTABLEKS                       R18 R18 K28 ["Hooks"]
      120 GETTABLEKS                       R18 R18 K29 ["useContextMenu"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R0 K11 ["Src"]
      127 GETTABLEKS                       R19 R19 K28 ["Hooks"]
      129 GETTABLEKS                       R19 R19 K30 ["useExplorerInfo"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K5 [require]
      134 GETTABLEKS                       R20 R0 K11 ["Src"]
      136 GETTABLEKS                       R20 R20 K28 ["Hooks"]
      138 GETTABLEKS                       R20 R20 K31 ["useSidebarScrollable"]
      140 CALL                             R19 1 1
      141 GETTABLEKS                       R20 R4 K32 ["Util"]
      143 GETTABLEKS                       R20 R20 K33 ["LayoutOrderIterator"]
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K11 ["Src"]
      149 GETTABLEKS                       R22 R22 K34 ["Flags"]
      151 GETTABLEKS                       R22 R22 K35 ["getFFlagAmrOrganizationFoundation"]
      153 CALL                             R21 1 1
      154 DUPCLOSURE                       R22 K36 [PROTO_8]
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R11
      174 RETURN                           R22 1
