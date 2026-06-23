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
        5 GETTABLEKS                       R3 R3 K0 ["FoundationDropdownVariant"]
        7 JUMPIFNOT                        R3 ; [+9]
        8 GETTABLEKS                       R3 R2 K1 ["variant"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+6]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["Standard"]
       15 SETTABLEKS                       R3 R2 K1 ["variant"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["useState"]
       20 LOADB                            R4 0
       21 CALL                             R3 1 2
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K4 ["useRef"]
       25 LOADNIL                          R6
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K5 ["useBinding"]
       30 GETTABLEKS                       R7 R2 K6 ["width"]
       32 CALL                             R6 1 2
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R9 R2 K7 ["items"]
       36 GETTABLEKS                       R10 R2 K8 ["value"]
       38 CALL                             R8 2 2
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R12 0 0
       46 CALL                             R10 2 1
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       50 NEWCLOSURE                       R12 P1
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R13 0 0
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       58 NEWCLOSURE                       R13 P2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 NEWTABLE                         R14 0 1
       63 GETTABLEKS                       R15 R2 K10 ["onItemChanged"]
       65 SETLIST                          R14 R15 1 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       71 NEWCLOSURE                       R14 P3
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R15 0 2
       76 MOVE                             R16 R7
       77 GETTABLEKS                       R17 R0 K11 ["onAbsoluteSizeChanged"]
       79 SETLIST                          R15 R16 2 [1]
       81 CALL                             R13 2 1
       82 SETTABLEKS                       R13 R2 K11 ["onAbsoluteSizeChanged"]
       84 GETUPVAL                         R13 4
       85 GETTABLEKS                       R13 R13 K12 ["createElement"]
       87 GETUPVAL                         R14 6
       88 GETTABLEKS                       R14 R14 K13 ["Root"]
       90 DUPTABLE                         R15 K16 [{"isOpen", "ref"}]
       91 SETTABLEKS                       R3 R15 K14 ["isOpen"]
       93 SETTABLEKS                       R1 R15 K15 ["ref"]
       95 DUPTABLE                         R16 K20 [{"DropdownControl", "Anchor", "Menu"}]
       96 GETUPVAL                         R17 4
       97 GETTABLEKS                       R17 R17 K12 ["createElement"]
       99 GETUPVAL                         R18 7
      100 GETUPVAL                         R19 8
      101 MOVE                             R20 R2
      102 DUPTABLE                         R21 K31 [{"variant", "onActivated", "hasError", "isDisabled", "item", "placeholder", "isMenuOpen", "width", "size", "label", "hint", "inputRef"}]
      103 GETUPVAL                         R23 2
      104 GETTABLEKS                       R23 R23 K0 ["FoundationDropdownVariant"]
      106 JUMPIFNOT                        R23 ; [+3]
      107 GETTABLEKS                       R22 R2 K1 ["variant"]
      109 JUMP                             ; [+1]
      110 LOADNIL                          R22
      111 SETTABLEKS                       R22 R21 K1 ["variant"]
      113 SETTABLEKS                       R10 R21 K21 ["onActivated"]
      115 GETTABLEKS                       R22 R2 K22 ["hasError"]
      117 SETTABLEKS                       R22 R21 K22 ["hasError"]
      119 GETTABLEKS                       R22 R2 K23 ["isDisabled"]
      121 SETTABLEKS                       R22 R21 K23 ["isDisabled"]
      123 SETTABLEKS                       R9 R21 K24 ["item"]
      125 GETTABLEKS                       R22 R2 K25 ["placeholder"]
      127 SETTABLEKS                       R22 R21 K25 ["placeholder"]
      129 SETTABLEKS                       R3 R21 K26 ["isMenuOpen"]
      131 GETTABLEKS                       R22 R2 K6 ["width"]
      133 SETTABLEKS                       R22 R21 K6 ["width"]
      135 GETTABLEKS                       R22 R2 K27 ["size"]
      137 SETTABLEKS                       R22 R21 K27 ["size"]
      139 GETTABLEKS                       R22 R2 K28 ["label"]
      141 SETTABLEKS                       R22 R21 K28 ["label"]
      143 GETTABLEKS                       R22 R2 K29 ["hint"]
      145 SETTABLEKS                       R22 R21 K29 ["hint"]
      147 SETTABLEKS                       R5 R21 K30 ["inputRef"]
      149 CALL                             R19 2 -1
      150 CALL                             R17 -1 1
      151 SETTABLEKS                       R17 R16 K17 ["DropdownControl"]
      153 GETUPVAL                         R17 4
      154 GETTABLEKS                       R17 R17 K12 ["createElement"]
      156 GETUPVAL                         R18 6
      157 GETTABLEKS                       R18 R18 K18 ["Anchor"]
      159 DUPTABLE                         R19 K33 [{"anchorRef"}]
      160 SETTABLEKS                       R5 R19 K32 ["anchorRef"]
      162 CALL                             R17 2 1
      163 SETTABLEKS                       R17 R16 K18 ["Anchor"]
      165 GETUPVAL                         R17 4
      166 GETTABLEKS                       R17 R17 K12 ["createElement"]
      168 GETUPVAL                         R18 6
      169 GETTABLEKS                       R18 R18 K34 ["Content"]
      171 DUPTABLE                         R19 K42 [{"hasArrow", "align", "side", "onPressedOutside", "radius", "selection", "selectionGroup"}]
      172 LOADB                            R20 0
      173 SETTABLEKS                       R20 R19 K35 ["hasArrow"]
      175 GETUPVAL                         R20 9
      176 GETTABLEKS                       R20 R20 K43 ["End"]
      178 SETTABLEKS                       R20 R19 K36 ["align"]
      180 GETUPVAL                         R20 10
      181 SETTABLEKS                       R20 R19 K37 ["side"]
      183 SETTABLEKS                       R11 R19 K38 ["onPressedOutside"]
      185 GETUPVAL                         R20 11
      186 GETTABLEKS                       R20 R20 K44 ["Medium"]
      188 SETTABLEKS                       R20 R19 K39 ["radius"]
      190 GETTABLEKS                       R20 R2 K40 ["selection"]
      192 SETTABLEKS                       R20 R19 K40 ["selection"]
      194 GETTABLEKS                       R20 R2 K41 ["selectionGroup"]
      196 SETTABLEKS                       R20 R19 K41 ["selectionGroup"]
      198 GETUPVAL                         R20 4
      199 GETTABLEKS                       R20 R20 K12 ["createElement"]
      201 GETUPVAL                         R21 12
      202 GETTABLEKS                       R21 R21 K13 ["Root"]
      204 DUPTABLE                         R22 K48 [{"size", "couldGrow", "width", "items", "maxHeight", "onActivated", "radius", "testId"}]
      205 GETTABLEKS                       R23 R2 K27 ["size"]
      207 SETTABLEKS                       R23 R22 K27 ["size"]
      209 LOADB                            R23 1
      210 SETTABLEKS                       R23 R22 K45 ["couldGrow"]
      212 SETTABLEKS                       R6 R22 K6 ["width"]
      214 SETTABLEKS                       R8 R22 K7 ["items"]
      216 GETTABLEKS                       R23 R2 K46 ["maxHeight"]
      218 SETTABLEKS                       R23 R22 K46 ["maxHeight"]
      220 SETTABLEKS                       R12 R22 K21 ["onActivated"]
      222 GETUPVAL                         R23 11
      223 GETTABLEKS                       R23 R23 K44 ["Medium"]
      225 SETTABLEKS                       R23 R22 K39 ["radius"]
      227 LOADK                            R24 K49 ["%*--menu"]
      228 GETTABLEKS                       R26 R2 K47 ["testId"]
      230 NAMECALL                         R24 R24 K50 ["format"]
      232 CALL                             R24 2 1
      233 MOVE                             R23 R24
      234 SETTABLEKS                       R23 R22 K47 ["testId"]
      236 CALL                             R20 2 -1
      237 CALL                             R17 -1 1
      238 SETTABLEKS                       R17 R16 K19 ["Menu"]
      240 CALL                             R13 3 -1
      241 RETURN                           R13 -1

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
       39 GETTABLEKS                       R7 R7 K13 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utility"]
       46 GETTABLEKS                       R8 R8 K14 ["withCommonProps"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Enums"]
       67 GETTABLEKS                       R11 R11 K18 ["InputVariant"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Enums"]
       74 GETTABLEKS                       R12 R12 K19 ["PopoverAlign"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K16 ["Enums"]
       81 GETTABLEKS                       R13 R13 K20 ["PopoverSide"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K16 ["Enums"]
       88 GETTABLEKS                       R14 R14 K21 ["Radius"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETIMPORT                        R15 K1 [script]
       95 GETTABLEKS                       R15 R15 K4 ["Parent"]
       97 GETTABLEKS                       R15 R15 K22 ["DropdownControl"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETIMPORT                        R16 K1 [script]
      104 GETTABLEKS                       R16 R16 K4 ["Parent"]
      106 GETTABLEKS                       R16 R16 K23 ["markSelectedItem"]
      108 CALL                             R15 1 1
      109 DUPTABLE                         R16 K28 [{"variant", "width", "size", "testId"}]
      110 GETTABLEKS                       R18 R6 K29 ["FoundationDropdownVariant"]
      112 JUMPIFNOT                        R18 ; [+3]
      113 GETTABLEKS                       R17 R10 K30 ["Standard"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R17
      117 SETTABLEKS                       R17 R16 K24 ["variant"]
      119 GETIMPORT                        R17 K33 [UDim.new]
      121 LOADN                            R18 0
      122 LOADN                            R19 144
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K25 ["width"]
      126 GETTABLEKS                       R17 R9 K34 ["Medium"]
      128 SETTABLEKS                       R17 R16 K26 ["size"]
      130 LOADK                            R17 K35 ["--foundation-dropdown"]
      131 SETTABLEKS                       R17 R16 K27 ["testId"]
      133 DUPTABLE                         R17 K38 [{"position", "offset"}]
      134 GETTABLEKS                       R18 R12 K39 ["Bottom"]
      136 SETTABLEKS                       R18 R17 K36 ["position"]
      138 LOADN                            R18 5
      139 SETTABLEKS                       R18 R17 K37 ["offset"]
      141 DUPCLOSURE                       R18 K40 [PROTO_5]
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R3
      155 GETTABLEKS                       R19 R2 K41 ["memo"]
      157 GETTABLEKS                       R20 R2 K42 ["forwardRef"]
      159 MOVE                             R21 R18
      160 CALL                             R20 1 -1
      161 CALL                             R19 -1 -1
      162 RETURN                           R19 -1
