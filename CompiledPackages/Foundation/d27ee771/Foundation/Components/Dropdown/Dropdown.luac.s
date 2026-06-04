PROTO_0:
        0 DUPTABLE                         R1 K5 [{"id", "icon", "text", "isDisabled", "isChecked"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["icon"]
        7 SETTABLEKS                       R2 R1 K1 ["icon"]
        9 GETTABLEKS                       R2 R0 K2 ["text"]
       11 SETTABLEKS                       R2 R1 K2 ["text"]
       13 GETTABLEKS                       R2 R0 K3 ["isDisabled"]
       15 SETTABLEKS                       R2 R1 K3 ["isDisabled"]
       17 GETTABLEKS                       R3 R0 K0 ["id"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["value"]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K4 ["isChecked"]
       28 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["value"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["find"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["items"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onAbsoluteSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onAbsoluteSizeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R2 K3 [UDim.new]
       12 LOADN                            R3 0
       13 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R4 K5 ["X"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["useBinding"]
       17 GETTABLEKS                       R7 R2 K3 ["width"]
       19 CALL                             R6 1 2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R10 R10 K4 ["FoundationDropdownGroups"]
       25 JUMPIFNOT                        R10 ; [+9]
       26 GETUPVAL                         R10 4
       27 GETTABLEKS                       R11 R2 K5 ["items"]
       29 GETTABLEKS                       R12 R2 K6 ["value"]
       31 CALL                             R10 2 2
       32 MOVE                             R8 R10
       33 MOVE                             R9 R11
       34 JUMP                             ; [+25]
       35 GETUPVAL                         R10 5
       36 GETTABLEKS                       R10 R10 K7 ["map"]
       38 GETTABLEKS                       R11 R2 K5 ["items"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R2
       42 CALL                             R10 2 1
       43 MOVE                             R8 R10
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R12 0 2
       52 GETTABLEKS                       R13 R2 K6 ["value"]
       54 GETTABLEKS                       R14 R2 K5 ["items"]
       56 SETLIST                          R12 R13 2 [1]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R12 0 0
       67 CALL                             R10 2 1
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       71 NEWCLOSURE                       R12 P3
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R13 0 0
       75 CALL                             R11 2 1
       76 GETUPVAL                         R12 2
       77 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       79 NEWCLOSURE                       R13 P4
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 NEWTABLE                         R14 0 1
       84 GETTABLEKS                       R15 R2 K10 ["onItemChanged"]
       86 SETLIST                          R14 R15 1 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 3
       90 GETTABLEKS                       R13 R13 K11 ["FoundationMenuWidthGrowth"]
       92 JUMPIFNOT                        R13 ; [+16]
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       96 NEWCLOSURE                       R14 P5
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R15 0 2
      101 MOVE                             R16 R7
      102 GETTABLEKS                       R17 R0 K12 ["onAbsoluteSizeChanged"]
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R2 K12 ["onAbsoluteSizeChanged"]
      109 GETUPVAL                         R13 2
      110 GETTABLEKS                       R13 R13 K13 ["createElement"]
      112 GETUPVAL                         R14 6
      113 GETTABLEKS                       R14 R14 K14 ["Root"]
      115 DUPTABLE                         R15 K17 [{"isOpen", "ref"}]
      116 SETTABLEKS                       R3 R15 K15 ["isOpen"]
      118 SETTABLEKS                       R1 R15 K16 ["ref"]
      120 DUPTABLE                         R16 K21 [{"DropdownControl", "Anchor", "Menu"}]
      121 GETUPVAL                         R17 2
      122 GETTABLEKS                       R17 R17 K13 ["createElement"]
      124 GETUPVAL                         R18 7
      125 GETUPVAL                         R19 8
      126 MOVE                             R20 R2
      127 DUPTABLE                         R21 K32 [{"onActivated", "hasError", "isDisabled", "item", "placeholder", "isMenuOpen", "width", "size", "label", "hint", "inputRef"}]
      128 SETTABLEKS                       R10 R21 K22 ["onActivated"]
      130 GETTABLEKS                       R22 R2 K23 ["hasError"]
      132 SETTABLEKS                       R22 R21 K23 ["hasError"]
      134 GETTABLEKS                       R22 R2 K24 ["isDisabled"]
      136 SETTABLEKS                       R22 R21 K24 ["isDisabled"]
      138 SETTABLEKS                       R9 R21 K25 ["item"]
      140 GETTABLEKS                       R22 R2 K26 ["placeholder"]
      142 SETTABLEKS                       R22 R21 K26 ["placeholder"]
      144 SETTABLEKS                       R3 R21 K27 ["isMenuOpen"]
      146 GETTABLEKS                       R22 R2 K3 ["width"]
      148 SETTABLEKS                       R22 R21 K3 ["width"]
      150 GETTABLEKS                       R22 R2 K28 ["size"]
      152 SETTABLEKS                       R22 R21 K28 ["size"]
      154 GETTABLEKS                       R22 R2 K29 ["label"]
      156 SETTABLEKS                       R22 R21 K29 ["label"]
      158 GETTABLEKS                       R22 R2 K30 ["hint"]
      160 SETTABLEKS                       R22 R21 K30 ["hint"]
      162 SETTABLEKS                       R5 R21 K31 ["inputRef"]
      164 CALL                             R19 2 -1
      165 CALL                             R17 -1 1
      166 SETTABLEKS                       R17 R16 K18 ["DropdownControl"]
      168 GETUPVAL                         R17 2
      169 GETTABLEKS                       R17 R17 K13 ["createElement"]
      171 GETUPVAL                         R18 6
      172 GETTABLEKS                       R18 R18 K19 ["Anchor"]
      174 DUPTABLE                         R19 K34 [{"anchorRef"}]
      175 SETTABLEKS                       R5 R19 K33 ["anchorRef"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K19 ["Anchor"]
      180 GETUPVAL                         R17 2
      181 GETTABLEKS                       R17 R17 K13 ["createElement"]
      183 GETUPVAL                         R18 6
      184 GETTABLEKS                       R18 R18 K35 ["Content"]
      186 DUPTABLE                         R19 K43 [{"hasArrow", "align", "side", "onPressedOutside", "radius", "selection", "selectionGroup"}]
      187 LOADB                            R20 0
      188 SETTABLEKS                       R20 R19 K36 ["hasArrow"]
      190 GETUPVAL                         R20 9
      191 GETTABLEKS                       R20 R20 K44 ["End"]
      193 SETTABLEKS                       R20 R19 K37 ["align"]
      195 GETUPVAL                         R20 10
      196 SETTABLEKS                       R20 R19 K38 ["side"]
      198 SETTABLEKS                       R11 R19 K39 ["onPressedOutside"]
      200 GETUPVAL                         R21 3
      201 GETTABLEKS                       R21 R21 K45 ["FoundationBaseMenuBorderFix"]
      203 JUMPIFNOT                        R21 ; [+4]
      204 GETUPVAL                         R20 11
      205 GETTABLEKS                       R20 R20 K46 ["Medium"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R20
      209 SETTABLEKS                       R20 R19 K40 ["radius"]
      211 GETTABLEKS                       R20 R2 K41 ["selection"]
      213 SETTABLEKS                       R20 R19 K41 ["selection"]
      215 GETTABLEKS                       R20 R2 K42 ["selectionGroup"]
      217 SETTABLEKS                       R20 R19 K42 ["selectionGroup"]
      219 GETUPVAL                         R20 2
      220 GETTABLEKS                       R20 R20 K13 ["createElement"]
      222 GETUPVAL                         R21 12
      223 GETTABLEKS                       R21 R21 K14 ["Root"]
      225 DUPTABLE                         R22 K50 [{"size", "couldGrow", "width", "items", "maxHeight", "onActivated", "radius", "testId"}]
      226 GETTABLEKS                       R23 R2 K28 ["size"]
      228 SETTABLEKS                       R23 R22 K28 ["size"]
      230 GETUPVAL                         R24 3
      231 GETTABLEKS                       R24 R24 K11 ["FoundationMenuWidthGrowth"]
      233 JUMPIFNOT                        R24 ; [+2]
      234 LOADB                            R23 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R23
      237 SETTABLEKS                       R23 R22 K47 ["couldGrow"]
      239 GETUPVAL                         R24 3
      240 GETTABLEKS                       R24 R24 K11 ["FoundationMenuWidthGrowth"]
      242 JUMPIFNOT                        R24 ; [+2]
      243 MOVE                             R23 R6
      244 JUMP                             ; [+2]
      245 GETTABLEKS                       R23 R2 K3 ["width"]
      247 SETTABLEKS                       R23 R22 K3 ["width"]
      249 SETTABLEKS                       R8 R22 K5 ["items"]
      251 GETTABLEKS                       R23 R2 K48 ["maxHeight"]
      253 SETTABLEKS                       R23 R22 K48 ["maxHeight"]
      255 SETTABLEKS                       R12 R22 K22 ["onActivated"]
      257 GETUPVAL                         R24 3
      258 GETTABLEKS                       R24 R24 K45 ["FoundationBaseMenuBorderFix"]
      260 JUMPIFNOT                        R24 ; [+4]
      261 GETUPVAL                         R23 11
      262 GETTABLEKS                       R23 R23 K46 ["Medium"]
      264 JUMP                             ; [+1]
      265 LOADNIL                          R23
      266 SETTABLEKS                       R23 R22 K40 ["radius"]
      268 LOADK                            R24 K51 ["%*--menu"]
      269 GETTABLEKS                       R26 R2 K49 ["testId"]
      271 NAMECALL                         R24 R24 K52 ["format"]
      273 CALL                             R24 2 1
      274 MOVE                             R23 R24
      275 SETTABLEKS                       R23 R22 K49 ["testId"]
      277 CALL                             R20 2 -1
      278 CALL                             R17 -1 1
      279 SETTABLEKS                       R17 R16 K20 ["Menu"]
      281 CALL                             R13 3 -1
      282 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Popover"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["BaseMenu"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Utility"]
       51 GETTABLEKS                       R9 R9 K15 ["withCommonProps"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Utility"]
       58 GETTABLEKS                       R10 R10 K16 ["Flags"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["PopoverSide"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K17 ["Enums"]
       72 GETTABLEKS                       R12 R12 K19 ["PopoverAlign"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K17 ["Enums"]
       79 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K17 ["Enums"]
       86 GETTABLEKS                       R14 R14 K21 ["Radius"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K4 ["Parent"]
       95 GETTABLEKS                       R15 R15 K22 ["DropdownControl"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETIMPORT                        R16 K1 [script]
      102 GETTABLEKS                       R16 R16 K4 ["Parent"]
      104 GETTABLEKS                       R16 R16 K23 ["markSelectedItem"]
      106 CALL                             R15 1 1
      107 DUPTABLE                         R16 K27 [{"width", "size", "testId"}]
      108 GETIMPORT                        R17 K30 [UDim.new]
      110 LOADN                            R18 0
      111 LOADN                            R19 144
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K24 ["width"]
      115 GETTABLEKS                       R17 R12 K31 ["Medium"]
      117 SETTABLEKS                       R17 R16 K25 ["size"]
      119 LOADK                            R17 K32 ["--foundation-dropdown"]
      120 SETTABLEKS                       R17 R16 K26 ["testId"]
      122 DUPTABLE                         R17 K35 [{"position", "offset"}]
      123 GETTABLEKS                       R18 R10 K36 ["Bottom"]
      125 SETTABLEKS                       R18 R17 K33 ["position"]
      127 LOADN                            R18 5
      128 SETTABLEKS                       R18 R17 K34 ["offset"]
      130 DUPCLOSURE                       R18 K37 [PROTO_8]
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R6
      144 GETTABLEKS                       R19 R2 K38 ["memo"]
      146 GETTABLEKS                       R20 R2 K39 ["forwardRef"]
      148 MOVE                             R21 R18
      149 CALL                             R20 1 -1
      150 CALL                             R19 -1 -1
      151 RETURN                           R19 -1
