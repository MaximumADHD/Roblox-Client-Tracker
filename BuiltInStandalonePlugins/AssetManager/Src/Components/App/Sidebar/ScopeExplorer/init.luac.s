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
       23 JUMPIFNOT                        R6 ; [+201]
       24 DUPCLOSURE                       R6 K4 [PROTO_0]
       25 GETUPVAL                         R7 7
       26 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R2
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R8 R8 K6 ["useRef"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 7
       42 GETTABLEKS                       R9 R9 K6 ["useRef"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 7
       47 GETTABLEKS                       R10 R10 K6 ["useRef"]
       49 LOADNIL                          R11
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 7
       52 GETTABLEKS                       R11 R11 K7 ["useEffect"]
       54 NEWCLOSURE                       R12 P2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R13 0 0
       61 CALL                             R11 2 0
       62 DUPTABLE                         R11 K13 [{"RootItems", "Expansion", "GetChildren", "GetRowProps", "GetItemId"}]
       63 GETTABLEKS                       R12 R0 K14 ["ExplorerItems"]
       65 SETTABLEKS                       R12 R11 K8 ["RootItems"]
       67 GETTABLEKS                       R12 R4 K9 ["Expansion"]
       69 SETTABLEKS                       R12 R11 K9 ["Expansion"]
       71 NEWCLOSURE                       R12 P3
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R12 R11 K10 ["GetChildren"]
       75 SETTABLEKS                       R6 R11 K11 ["GetRowProps"]
       77 DUPCLOSURE                       R12 K15 [PROTO_5]
       78 SETTABLEKS                       R12 R11 K12 ["GetItemId"]
       80 GETUPVAL                         R12 7
       81 GETTABLEKS                       R12 R12 K16 ["createElement"]
       83 GETUPVAL                         R13 8
       84 GETTABLEKS                       R13 R13 K17 ["View"]
       86 DUPTABLE                         R14 K22 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
       87 GETTABLEKS                       R15 R0 K18 ["LayoutOrder"]
       89 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       91 SETTABLEKS                       R5 R14 K19 ["onSecondaryActivated"]
       93 DUPTABLE                         R15 K24 [{"affordance"}]
       94 GETUPVAL                         R16 8
       95 GETTABLEKS                       R16 R16 K25 ["Enums"]
       97 GETTABLEKS                       R16 R16 K26 ["StateLayerAffordance"]
       99 GETTABLEKS                       R16 R16 K27 ["None"]
      101 SETTABLEKS                       R16 R15 K23 ["affordance"]
      103 SETTABLEKS                       R15 R14 K20 ["stateLayer"]
      105 LOADK                            R15 K28 ["Explorer"]
      106 SETTABLEKS                       R15 R14 K21 ["tag"]
      108 DUPTABLE                         R15 K32 [{"UnderlayTree", "MainTree", "OverlayTree"}]
      109 GETUPVAL                         R16 7
      110 GETTABLEKS                       R16 R16 K16 ["createElement"]
      112 GETUPVAL                         R17 8
      113 GETTABLEKS                       R17 R17 K17 ["View"]
      115 DUPTABLE                         R18 K35 [{"ref", "ZIndex", "tag"}]
      116 SETTABLEKS                       R8 R18 K33 ["ref"]
      118 LOADN                            R19 1
      119 SETTABLEKS                       R19 R18 K34 ["ZIndex"]
      121 LOADK                            R19 K36 ["size-full gui-object-defaults padding-bottom-small"]
      122 SETTABLEKS                       R19 R18 K21 ["tag"]
      124 GETUPVAL                         R19 7
      125 GETTABLEKS                       R19 R19 K16 ["createElement"]
      127 GETUPVAL                         R20 9
      128 GETUPVAL                         R21 10
      129 GETTABLEKS                       R21 R21 K37 ["join"]
      131 MOVE                             R22 R11
      132 NEWTABLE                         R23 2 0
      134 GETUPVAL                         R24 11
      135 SETTABLEKS                       R24 R23 K38 ["RowComponent"]
      137 GETUPVAL                         R24 7
      138 GETTABLEKS                       R24 R24 K39 ["Tag"]
      140 LOADK                            R25 K40 ["amr-underlay"]
      141 SETTABLE                         R25 R23 R24
      142 CALL                             R21 2 -1
      143 CALL                             R19 -1 -1
      144 CALL                             R16 -1 1
      145 SETTABLEKS                       R16 R15 K29 ["UnderlayTree"]
      147 GETUPVAL                         R16 7
      148 GETTABLEKS                       R16 R16 K16 ["createElement"]
      150 GETUPVAL                         R17 8
      151 GETTABLEKS                       R17 R17 K17 ["View"]
      153 DUPTABLE                         R18 K35 [{"ref", "ZIndex", "tag"}]
      154 SETTABLEKS                       R9 R18 K33 ["ref"]
      156 LOADN                            R19 2
      157 SETTABLEKS                       R19 R18 K34 ["ZIndex"]
      159 LOADK                            R19 K41 ["size-full"]
      160 SETTABLEKS                       R19 R18 K21 ["tag"]
      162 GETUPVAL                         R19 7
      163 GETTABLEKS                       R19 R19 K16 ["createElement"]
      165 GETUPVAL                         R20 9
      166 GETUPVAL                         R21 10
      167 GETTABLEKS                       R21 R21 K37 ["join"]
      169 MOVE                             R22 R11
      170 NEWTABLE                         R23 2 0
      172 GETUPVAL                         R24 12
      173 SETTABLEKS                       R24 R23 K38 ["RowComponent"]
      175 GETUPVAL                         R24 7
      176 GETTABLEKS                       R24 R24 K39 ["Tag"]
      178 LOADK                            R25 K42 [""]
      179 SETTABLE                         R25 R23 R24
      180 CALL                             R21 2 -1
      181 CALL                             R19 -1 -1
      182 CALL                             R16 -1 1
      183 SETTABLEKS                       R16 R15 K30 ["MainTree"]
      185 GETUPVAL                         R16 7
      186 GETTABLEKS                       R16 R16 K16 ["createElement"]
      188 GETUPVAL                         R17 8
      189 GETTABLEKS                       R17 R17 K17 ["View"]
      191 DUPTABLE                         R18 K35 [{"ref", "ZIndex", "tag"}]
      192 SETTABLEKS                       R10 R18 K33 ["ref"]
      194 LOADN                            R19 3
      195 SETTABLEKS                       R19 R18 K34 ["ZIndex"]
      197 LOADK                            R19 K43 ["size-600-full anchor-top-right position-top-right gui-object-defaults padding-bottom-small"]
      198 SETTABLEKS                       R19 R18 K21 ["tag"]
      200 GETUPVAL                         R19 7
      201 GETTABLEKS                       R19 R19 K16 ["createElement"]
      203 GETUPVAL                         R20 9
      204 GETUPVAL                         R21 10
      205 GETTABLEKS                       R21 R21 K37 ["join"]
      207 MOVE                             R22 R11
      208 NEWTABLE                         R23 2 0
      210 GETUPVAL                         R24 13
      211 SETTABLEKS                       R24 R23 K38 ["RowComponent"]
      213 GETUPVAL                         R24 7
      214 GETTABLEKS                       R24 R24 K39 ["Tag"]
      216 LOADK                            R25 K40 ["amr-underlay"]
      217 SETTABLE                         R25 R23 R24
      218 CALL                             R21 2 -1
      219 CALL                             R19 -1 -1
      220 CALL                             R16 -1 1
      221 SETTABLEKS                       R16 R15 K31 ["OverlayTree"]
      223 CALL                             R12 3 -1
      224 RETURN                           R12 -1
      225 GETUPVAL                         R6 7
      226 GETTABLEKS                       R6 R6 K16 ["createElement"]
      228 GETUPVAL                         R7 14
      229 NEWTABLE                         R8 4 0
      231 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
      233 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
      235 NEWCLOSURE                       R9 P5
      236 CAPTURE                          VAL R5
      237 SETTABLEKS                       R9 R8 K44 ["OnRightClick"]
      239 GETUPVAL                         R9 7
      240 GETTABLEKS                       R9 R9 K39 ["Tag"]
      242 LOADK                            R10 K45 ["Explorer X-Column"]
      243 SETTABLE                         R10 R8 R9
      244 DUPTABLE                         R9 K47 [{"TreeView"}]
      245 GETUPVAL                         R10 7
      246 GETTABLEKS                       R10 R10 K16 ["createElement"]
      248 GETUPVAL                         R11 9
      249 NEWTABLE                         R12 8 0
      251 NAMECALL                         R13 R1 K48 ["getNextOrder"]
      253 CALL                             R13 1 1
      254 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      256 GETTABLEKS                       R13 R0 K14 ["ExplorerItems"]
      258 SETTABLEKS                       R13 R12 K8 ["RootItems"]
      260 GETTABLEKS                       R13 R4 K9 ["Expansion"]
      262 SETTABLEKS                       R13 R12 K9 ["Expansion"]
      264 DUPCLOSURE                       R13 K49 [PROTO_7]
      265 SETTABLEKS                       R13 R12 K50 ["OnExpansionChange"]
      267 GETUPVAL                         R13 15
      268 SETTABLEKS                       R13 R12 K38 ["RowComponent"]
      270 GETUPVAL                         R13 7
      271 GETTABLEKS                       R13 R13 K39 ["Tag"]
      273 LOADK                            R14 K42 [""]
      274 SETTABLE                         R14 R12 R13
      275 CALL                             R10 2 1
      276 SETTABLEKS                       R10 R9 K46 ["TreeView"]
      278 CALL                             R6 3 -1
      279 RETURN                           R6 -1

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
       42 GETTABLEKS                       R6 R4 K13 ["UI"]
       44 GETTABLEKS                       R7 R6 K14 ["Pane"]
       46 GETTABLEKS                       R8 R6 K15 ["TreeView"]
       48 GETIMPORT                        R9 K5 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R10 R10 K16 ["ExplorerRow"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K17 ["OverlayRow"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETIMPORT                        R12 K1 [script]
       66 GETTABLEKS                       R12 R12 K18 ["Row"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETIMPORT                        R13 K1 [script]
       73 GETTABLEKS                       R13 R13 K19 ["UnderlayRow"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K11 ["Src"]
       80 GETTABLEKS                       R14 R14 K20 ["Controllers"]
       82 GETTABLEKS                       R14 R14 K21 ["ExplorerController"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K11 ["Src"]
       89 GETTABLEKS                       R15 R15 K20 ["Controllers"]
       91 GETTABLEKS                       R15 R15 K22 ["LayoutController"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R16 R0 K11 ["Src"]
       98 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      100 GETTABLEKS                       R16 R16 K24 ["useContextMenu"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K5 [require]
      105 GETTABLEKS                       R17 R0 K11 ["Src"]
      107 GETTABLEKS                       R17 R17 K23 ["Hooks"]
      109 GETTABLEKS                       R17 R17 K25 ["useExplorerInfo"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R17 R4 K26 ["Util"]
      114 GETTABLEKS                       R17 R17 K27 ["LayoutOrderIterator"]
      116 GETIMPORT                        R18 K5 [require]
      118 GETTABLEKS                       R19 R0 K11 ["Src"]
      120 GETTABLEKS                       R19 R19 K28 ["Flags"]
      122 GETTABLEKS                       R19 R19 K29 ["getFFlagAmrOrganizationFoundation"]
      124 CALL                             R18 1 1
      125 DUPCLOSURE                       R19 K30 [PROTO_8]
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R9
      142 RETURN                           R19 1
