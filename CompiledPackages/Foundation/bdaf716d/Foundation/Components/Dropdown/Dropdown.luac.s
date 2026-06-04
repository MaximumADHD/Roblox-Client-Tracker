PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R9 R2 K4 ["items"]
       23 GETTABLEKS                       R10 R2 K5 ["value"]
       25 CALL                             R8 2 2
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       29 NEWCLOSURE                       R11 P0
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R12 0 0
       33 CALL                             R10 2 1
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R13 0 0
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K6 ["useCallback"]
       45 NEWCLOSURE                       R13 P2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 NEWTABLE                         R14 0 1
       50 GETTABLEKS                       R15 R2 K7 ["onItemChanged"]
       52 SETLIST                          R14 R15 1 [1]
       54 CALL                             R12 2 1
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       58 NEWCLOSURE                       R14 P3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 NEWTABLE                         R15 0 2
       63 MOVE                             R16 R7
       64 GETTABLEKS                       R17 R0 K8 ["onAbsoluteSizeChanged"]
       66 SETLIST                          R15 R16 2 [1]
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R2 K8 ["onAbsoluteSizeChanged"]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R13 R13 K9 ["createElement"]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K10 ["Root"]
       77 DUPTABLE                         R15 K13 [{"isOpen", "ref"}]
       78 SETTABLEKS                       R3 R15 K11 ["isOpen"]
       80 SETTABLEKS                       R1 R15 K12 ["ref"]
       82 DUPTABLE                         R16 K17 [{"DropdownControl", "Anchor", "Menu"}]
       83 GETUPVAL                         R17 2
       84 GETTABLEKS                       R17 R17 K9 ["createElement"]
       86 GETUPVAL                         R18 5
       87 GETUPVAL                         R19 6
       88 MOVE                             R20 R2
       89 DUPTABLE                         R21 K28 [{"onActivated", "hasError", "isDisabled", "item", "placeholder", "isMenuOpen", "width", "size", "label", "hint", "inputRef"}]
       90 SETTABLEKS                       R10 R21 K18 ["onActivated"]
       92 GETTABLEKS                       R22 R2 K19 ["hasError"]
       94 SETTABLEKS                       R22 R21 K19 ["hasError"]
       96 GETTABLEKS                       R22 R2 K20 ["isDisabled"]
       98 SETTABLEKS                       R22 R21 K20 ["isDisabled"]
      100 SETTABLEKS                       R9 R21 K21 ["item"]
      102 GETTABLEKS                       R22 R2 K22 ["placeholder"]
      104 SETTABLEKS                       R22 R21 K22 ["placeholder"]
      106 SETTABLEKS                       R3 R21 K23 ["isMenuOpen"]
      108 GETTABLEKS                       R22 R2 K3 ["width"]
      110 SETTABLEKS                       R22 R21 K3 ["width"]
      112 GETTABLEKS                       R22 R2 K24 ["size"]
      114 SETTABLEKS                       R22 R21 K24 ["size"]
      116 GETTABLEKS                       R22 R2 K25 ["label"]
      118 SETTABLEKS                       R22 R21 K25 ["label"]
      120 GETTABLEKS                       R22 R2 K26 ["hint"]
      122 SETTABLEKS                       R22 R21 K26 ["hint"]
      124 SETTABLEKS                       R5 R21 K27 ["inputRef"]
      126 CALL                             R19 2 -1
      127 CALL                             R17 -1 1
      128 SETTABLEKS                       R17 R16 K14 ["DropdownControl"]
      130 GETUPVAL                         R17 2
      131 GETTABLEKS                       R17 R17 K9 ["createElement"]
      133 GETUPVAL                         R18 4
      134 GETTABLEKS                       R18 R18 K15 ["Anchor"]
      136 DUPTABLE                         R19 K30 [{"anchorRef"}]
      137 SETTABLEKS                       R5 R19 K29 ["anchorRef"]
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K15 ["Anchor"]
      142 GETUPVAL                         R17 2
      143 GETTABLEKS                       R17 R17 K9 ["createElement"]
      145 GETUPVAL                         R18 4
      146 GETTABLEKS                       R18 R18 K31 ["Content"]
      148 DUPTABLE                         R19 K39 [{"hasArrow", "align", "side", "onPressedOutside", "radius", "selection", "selectionGroup"}]
      149 LOADB                            R20 0
      150 SETTABLEKS                       R20 R19 K32 ["hasArrow"]
      152 GETUPVAL                         R20 7
      153 GETTABLEKS                       R20 R20 K40 ["End"]
      155 SETTABLEKS                       R20 R19 K33 ["align"]
      157 GETUPVAL                         R20 8
      158 SETTABLEKS                       R20 R19 K34 ["side"]
      160 SETTABLEKS                       R11 R19 K35 ["onPressedOutside"]
      162 GETUPVAL                         R20 9
      163 GETTABLEKS                       R20 R20 K41 ["Medium"]
      165 SETTABLEKS                       R20 R19 K36 ["radius"]
      167 GETTABLEKS                       R20 R2 K37 ["selection"]
      169 SETTABLEKS                       R20 R19 K37 ["selection"]
      171 GETTABLEKS                       R20 R2 K38 ["selectionGroup"]
      173 SETTABLEKS                       R20 R19 K38 ["selectionGroup"]
      175 GETUPVAL                         R20 2
      176 GETTABLEKS                       R20 R20 K9 ["createElement"]
      178 GETUPVAL                         R21 10
      179 GETTABLEKS                       R21 R21 K10 ["Root"]
      181 DUPTABLE                         R22 K45 [{"size", "couldGrow", "width", "items", "maxHeight", "onActivated", "radius", "testId"}]
      182 GETTABLEKS                       R23 R2 K24 ["size"]
      184 SETTABLEKS                       R23 R22 K24 ["size"]
      186 LOADB                            R23 1
      187 SETTABLEKS                       R23 R22 K42 ["couldGrow"]
      189 SETTABLEKS                       R6 R22 K3 ["width"]
      191 SETTABLEKS                       R8 R22 K4 ["items"]
      193 GETTABLEKS                       R23 R2 K43 ["maxHeight"]
      195 SETTABLEKS                       R23 R22 K43 ["maxHeight"]
      197 SETTABLEKS                       R12 R22 K18 ["onActivated"]
      199 GETUPVAL                         R23 9
      200 GETTABLEKS                       R23 R23 K41 ["Medium"]
      202 SETTABLEKS                       R23 R22 K36 ["radius"]
      204 LOADK                            R24 K46 ["%*--menu"]
      205 GETTABLEKS                       R26 R2 K44 ["testId"]
      207 NAMECALL                         R24 R24 K47 ["format"]
      209 CALL                             R24 2 1
      210 MOVE                             R23 R24
      211 SETTABLEKS                       R23 R22 K44 ["testId"]
      213 CALL                             R20 2 -1
      214 CALL                             R17 -1 1
      215 SETTABLEKS                       R17 R16 K16 ["Menu"]
      217 CALL                             R13 3 -1
      218 RETURN                           R13 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["BaseMenu"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Popover"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Utility"]
       39 GETTABLEKS                       R7 R7 K13 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utility"]
       46 GETTABLEKS                       R8 R8 K14 ["withDefaults"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Enums"]
       53 GETTABLEKS                       R9 R9 K16 ["InputSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Enums"]
       60 GETTABLEKS                       R10 R10 K17 ["PopoverAlign"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K15 ["Enums"]
       67 GETTABLEKS                       R11 R11 K18 ["PopoverSide"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K15 ["Enums"]
       74 GETTABLEKS                       R12 R12 K19 ["Radius"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETIMPORT                        R13 K1 [script]
       81 GETTABLEKS                       R13 R13 K4 ["Parent"]
       83 GETTABLEKS                       R13 R13 K20 ["DropdownControl"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R14 R14 K4 ["Parent"]
       92 GETTABLEKS                       R14 R14 K21 ["markSelectedItem"]
       94 CALL                             R13 1 1
       95 DUPTABLE                         R14 K25 [{"width", "size", "testId"}]
       96 GETIMPORT                        R15 K28 [UDim.new]
       98 LOADN                            R16 0
       99 LOADN                            R17 144
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K22 ["width"]
      103 GETTABLEKS                       R15 R8 K29 ["Medium"]
      105 SETTABLEKS                       R15 R14 K23 ["size"]
      107 LOADK                            R15 K30 ["--foundation-dropdown"]
      108 SETTABLEKS                       R15 R14 K24 ["testId"]
      110 DUPTABLE                         R15 K33 [{"position", "offset"}]
      111 GETTABLEKS                       R16 R10 K34 ["Bottom"]
      113 SETTABLEKS                       R16 R15 K31 ["position"]
      115 LOADN                            R16 5
      116 SETTABLEKS                       R16 R15 K32 ["offset"]
      118 DUPCLOSURE                       R16 K35 [PROTO_5]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R3
      130 GETTABLEKS                       R17 R2 K36 ["memo"]
      132 GETTABLEKS                       R18 R2 K37 ["forwardRef"]
      134 MOVE                             R19 R16
      135 CALL                             R18 1 -1
      136 CALL                             R17 -1 -1
      137 RETURN                           R17 -1
