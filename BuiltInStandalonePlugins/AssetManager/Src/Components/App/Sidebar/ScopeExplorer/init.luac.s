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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K1 ["MenuContext"]
       14 GETTABLEKS                       R5 R5 K2 ["Sidebar"]
       16 CALL                             R4 1 1
       17 DUPCLOSURE                       R5 K3 [PROTO_0]
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R1
       26 SETLIST                          R8 R9 1 [1]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 6
       30 CALL                             R7 0 1
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K5 ["useRef"]
       34 LOADNIL                          R9
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K5 ["useRef"]
       39 LOADNIL                          R10
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 5
       42 GETTABLEKS                       R10 R10 K5 ["useRef"]
       44 LOADNIL                          R11
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       49 NEWCLOSURE                       R12 P2
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R13 0 0
       56 CALL                             R11 2 0
       57 DUPTABLE                         R11 K12 [{"RootItems", "Expansion", "GetChildren", "GetRowProps", "GetItemId"}]
       58 GETTABLEKS                       R12 R0 K13 ["ExplorerItems"]
       60 SETTABLEKS                       R12 R11 K7 ["RootItems"]
       62 GETTABLEKS                       R12 R3 K8 ["Expansion"]
       64 SETTABLEKS                       R12 R11 K8 ["Expansion"]
       66 NEWCLOSURE                       R12 P3
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R12 R11 K9 ["GetChildren"]
       70 SETTABLEKS                       R5 R11 K10 ["GetRowProps"]
       72 DUPCLOSURE                       R12 K14 [PROTO_5]
       73 SETTABLEKS                       R12 R11 K11 ["GetItemId"]
       75 GETUPVAL                         R12 5
       76 GETTABLEKS                       R12 R12 K15 ["createElement"]
       78 GETUPVAL                         R13 7
       79 GETTABLEKS                       R13 R13 K16 ["View"]
       81 DUPTABLE                         R14 K22 [{["LayoutOrder"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "Explorer"}]
       82 GETTABLEKS                       R15 R0 K17 ["LayoutOrder"]
       84 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       86 SETTABLEKS                       R4 R14 K18 ["onSecondaryActivated"]
       88 DUPTABLE                         R15 K24 [{"affordance"}]
       89 GETUPVAL                         R16 7
       90 GETTABLEKS                       R16 R16 K25 ["Enums"]
       92 GETTABLEKS                       R16 R16 K26 ["StateLayerAffordance"]
       94 GETTABLEKS                       R16 R16 K27 ["None"]
       96 SETTABLEKS                       R16 R15 K23 ["affordance"]
       98 SETTABLEKS                       R15 R14 K19 ["stateLayer"]
      100 DUPTABLE                         R15 K31 [{"UnderlayTree", "MainTree", "OverlayTree"}]
      101 GETUPVAL                         R16 5
      102 GETTABLEKS                       R16 R16 K15 ["createElement"]
      104 GETUPVAL                         R17 7
      105 GETTABLEKS                       R17 R17 K16 ["View"]
      107 DUPTABLE                         R18 K37 [{["ref"], ["ZIndex"] = 1, ["Size"], ["tag"] = "padding-bottom-small gui-object-defaults"}]
      108 SETTABLEKS                       R8 R18 K32 ["ref"]
      110 GETIMPORT                        R19 K40 [UDim2.new]
      112 LOADN                            R20 1
      113 JUMPIFNOT                        R7 ; [+5]
      114 GETUPVAL                         R22 8
      115 GETTABLEKS                       R22 R22 K41 ["ScrollingBarWidth"]
      117 MINUS                            R21 R22
      118 JUMP                             ; [+1]
      119 LOADN                            R21 0
      120 LOADN                            R22 1
      121 LOADN                            R23 0
      122 CALL                             R19 4 1
      123 SETTABLEKS                       R19 R18 K35 ["Size"]
      125 GETUPVAL                         R19 5
      126 GETTABLEKS                       R19 R19 K15 ["createElement"]
      128 GETUPVAL                         R20 9
      129 GETUPVAL                         R21 10
      130 GETTABLEKS                       R21 R21 K42 ["join"]
      132 MOVE                             R22 R11
      133 NEWTABLE                         R23 4 0
      135 GETUPVAL                         R24 11
      136 SETTABLEKS                       R24 R23 K43 ["RowComponent"]
      138 LOADN                            R24 0
      139 SETTABLEKS                       R24 R23 K44 ["ScrollBarThickness"]
      141 GETUPVAL                         R24 5
      142 GETTABLEKS                       R24 R24 K45 ["Tag"]
      144 LOADK                            R25 K46 ["amr-underlay"]
      145 SETTABLE                         R25 R23 R24
      146 CALL                             R21 2 -1
      147 CALL                             R19 -1 -1
      148 CALL                             R16 -1 1
      149 SETTABLEKS                       R16 R15 K28 ["UnderlayTree"]
      151 GETUPVAL                         R16 5
      152 GETTABLEKS                       R16 R16 K15 ["createElement"]
      154 GETUPVAL                         R17 7
      155 GETTABLEKS                       R17 R17 K16 ["View"]
      157 DUPTABLE                         R18 K49 [{["ref"], ["ZIndex"] = 2, ["tag"] = "size-full"}]
      158 SETTABLEKS                       R9 R18 K32 ["ref"]
      160 GETUPVAL                         R19 5
      161 GETTABLEKS                       R19 R19 K15 ["createElement"]
      163 GETUPVAL                         R20 12
      164 GETUPVAL                         R21 10
      165 GETTABLEKS                       R21 R21 K42 ["join"]
      167 MOVE                             R22 R11
      168 NEWTABLE                         R23 2 0
      170 GETUPVAL                         R24 13
      171 SETTABLEKS                       R24 R23 K43 ["RowComponent"]
      173 GETUPVAL                         R24 5
      174 GETTABLEKS                       R24 R24 K45 ["Tag"]
      176 LOADK                            R25 K50 [""]
      177 SETTABLE                         R25 R23 R24
      178 CALL                             R21 2 -1
      179 CALL                             R19 -1 -1
      180 CALL                             R16 -1 1
      181 SETTABLEKS                       R16 R15 K29 ["MainTree"]
      183 GETUPVAL                         R16 5
      184 GETTABLEKS                       R16 R16 K15 ["createElement"]
      186 GETUPVAL                         R17 7
      187 GETTABLEKS                       R17 R17 K16 ["View"]
      189 DUPTABLE                         R18 K54 [{["ref"], ["Position"], ["ZIndex"] = 3, ["tag"] = "anchor-top-right size-600-full padding-bottom-small gui-object-defaults"}]
      190 SETTABLEKS                       R10 R18 K32 ["ref"]
      192 GETIMPORT                        R19 K40 [UDim2.new]
      194 LOADN                            R20 1
      195 JUMPIFNOT                        R7 ; [+5]
      196 GETUPVAL                         R22 8
      197 GETTABLEKS                       R22 R22 K41 ["ScrollingBarWidth"]
      199 MINUS                            R21 R22
      200 JUMP                             ; [+1]
      201 LOADN                            R21 0
      202 LOADN                            R22 0
      203 LOADN                            R23 0
      204 CALL                             R19 4 1
      205 SETTABLEKS                       R19 R18 K51 ["Position"]
      207 GETUPVAL                         R19 5
      208 GETTABLEKS                       R19 R19 K15 ["createElement"]
      210 GETUPVAL                         R20 9
      211 GETUPVAL                         R21 10
      212 GETTABLEKS                       R21 R21 K42 ["join"]
      214 MOVE                             R22 R11
      215 NEWTABLE                         R23 4 0
      217 GETUPVAL                         R24 14
      218 SETTABLEKS                       R24 R23 K43 ["RowComponent"]
      220 LOADN                            R24 0
      221 SETTABLEKS                       R24 R23 K44 ["ScrollBarThickness"]
      223 GETUPVAL                         R24 5
      224 GETTABLEKS                       R24 R24 K45 ["Tag"]
      226 LOADK                            R25 K46 ["amr-underlay"]
      227 SETTABLE                         R25 R23 R24
      228 CALL                             R21 2 -1
      229 CALL                             R19 -1 -1
      230 CALL                             R16 -1 1
      231 SETTABLEKS                       R16 R15 K30 ["OverlayTree"]
      233 CALL                             R12 3 -1
      234 RETURN                           R12 -1

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
       53 GETTABLEKS                       R8 R7 K16 ["TreeView"]
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K11 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Components"]
       61 GETTABLEKS                       R10 R10 K18 ["Shared"]
       63 GETTABLEKS                       R10 R10 K19 ["CustomTreeView"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K20 ["OverlayRow"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETIMPORT                        R12 K1 [script]
       77 GETTABLEKS                       R12 R12 K21 ["Row"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETIMPORT                        R13 K1 [script]
       84 GETTABLEKS                       R13 R13 K22 ["UnderlayRow"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K11 ["Src"]
       91 GETTABLEKS                       R14 R14 K23 ["Controllers"]
       93 GETTABLEKS                       R14 R14 K24 ["ExplorerController"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K11 ["Src"]
      100 GETTABLEKS                       R15 R15 K23 ["Controllers"]
      102 GETTABLEKS                       R15 R15 K25 ["LayoutController"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K11 ["Src"]
      109 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K27 ["useContextMenu"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K11 ["Src"]
      118 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      120 GETTABLEKS                       R17 R17 K28 ["useExplorerInfo"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K11 ["Src"]
      127 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      129 GETTABLEKS                       R18 R18 K29 ["useSidebarScrollable"]
      131 CALL                             R17 1 1
      132 DUPCLOSURE                       R18 K30 [PROTO_6]
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 RETURN                           R18 1
