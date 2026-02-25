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
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K6 ["value"]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K4 ["isChecked"]
       28 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["value"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["find"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["items"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onItemChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onAbsoluteSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onAbsoluteSizeChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R2 K3 [UDim.new]
       12 LOADN                            R3 0
       13 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R5 K5 ["X"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K1 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K2 ["useBinding"]
       17 GETTABLEKS                       R7 R2 K3 ["width"]
       19 CALL                             R6 1 2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R10 R11 K4 ["FoundationDropdownGroups"]
       25 JUMPIFNOT                        R10 ; [+9]
       26 GETUPVAL                         R10 4
       27 GETTABLEKS                       R11 R2 K5 ["items"]
       29 GETTABLEKS                       R12 R2 K6 ["value"]
       31 CALL                             R10 2 2
       32 MOVE                             R8 R10
       33 MOVE                             R9 R11
       34 JUMP                             ; [+25]
       35 GETUPVAL                         R11 5
       36 GETTABLEKS                       R10 R11 K7 ["map"]
       38 GETTABLEKS                       R11 R2 K5 ["items"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R2
       42 CALL                             R10 2 1
       43 MOVE                             R8 R10
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K8 ["useMemo"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R12 0 2
       52 GETTABLEKS                       R13 R2 K6 ["value"]
       54 GETTABLEKS                       R14 R2 K5 ["items"]
       56 SETLIST                          R12 R13 2 [1]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R10 R11 K9 ["useCallback"]
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R12 0 0
       67 CALL                             R10 2 1
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       71 NEWCLOSURE                       R12 P3
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R13 0 0
       75 CALL                             R11 2 1
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R12 R13 K9 ["useCallback"]
       79 NEWCLOSURE                       R13 P4
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 NEWTABLE                         R14 0 1
       84 GETTABLEKS                       R15 R2 K10 ["onItemChanged"]
       86 SETLIST                          R14 R15 1 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R14 3
       90 GETTABLEKS                       R13 R14 K11 ["FoundationMenuWidthGrowth"]
       92 JUMPIFNOT                        R13 ; [+16]
       93 GETUPVAL                         R14 2
       94 GETTABLEKS                       R13 R14 K9 ["useCallback"]
       96 NEWCLOSURE                       R14 P5
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R15 0 2
      101 MOVE                             R16 R7
      102 GETTABLEKS                       R17 R0 K12 ["onAbsoluteSizeChanged"]
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R2 K12 ["onAbsoluteSizeChanged"]
      109 GETUPVAL                         R14 2
      110 GETTABLEKS                       R13 R14 K13 ["createElement"]
      112 GETUPVAL                         R15 6
      113 GETTABLEKS                       R14 R15 K14 ["Root"]
      115 DUPTABLE                         R15 K17 [{"isOpen", "ref"}]
      116 SETTABLEKS                       R3 R15 K15 ["isOpen"]
      118 SETTABLEKS                       R1 R15 K16 ["ref"]
      120 DUPTABLE                         R16 K21 [{"DropdownControl", "Anchor", "Menu"}]
      121 GETUPVAL                         R18 2
      122 GETTABLEKS                       R17 R18 K13 ["createElement"]
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
      168 GETUPVAL                         R18 2
      169 GETTABLEKS                       R17 R18 K13 ["createElement"]
      171 GETUPVAL                         R19 6
      172 GETTABLEKS                       R18 R19 K19 ["Anchor"]
      174 DUPTABLE                         R19 K34 [{"anchorRef"}]
      175 SETTABLEKS                       R5 R19 K33 ["anchorRef"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K19 ["Anchor"]
      180 GETUPVAL                         R18 2
      181 GETTABLEKS                       R17 R18 K13 ["createElement"]
      183 GETUPVAL                         R19 6
      184 GETTABLEKS                       R18 R19 K35 ["Content"]
      186 DUPTABLE                         R19 K40 [{"hasArrow", "align", "side", "onPressedOutside"}]
      187 LOADB                            R20 0
      188 SETTABLEKS                       R20 R19 K36 ["hasArrow"]
      190 GETUPVAL                         R21 9
      191 GETTABLEKS                       R20 R21 K41 ["End"]
      193 SETTABLEKS                       R20 R19 K37 ["align"]
      195 GETUPVAL                         R20 10
      196 SETTABLEKS                       R20 R19 K38 ["side"]
      198 SETTABLEKS                       R11 R19 K39 ["onPressedOutside"]
      200 GETUPVAL                         R21 2
      201 GETTABLEKS                       R20 R21 K13 ["createElement"]
      203 GETUPVAL                         R22 11
      204 GETTABLEKS                       R21 R22 K14 ["Root"]
      206 DUPTABLE                         R22 K45 [{"size", "couldGrow", "width", "items", "maxHeight", "onActivated", "testId"}]
      207 GETTABLEKS                       R23 R2 K28 ["size"]
      209 SETTABLEKS                       R23 R22 K28 ["size"]
      211 GETUPVAL                         R25 3
      212 GETTABLEKS                       R24 R25 K11 ["FoundationMenuWidthGrowth"]
      214 JUMPIFNOT                        R24 ; [+2]
      215 LOADB                            R23 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R23
      218 SETTABLEKS                       R23 R22 K42 ["couldGrow"]
      220 GETUPVAL                         R25 3
      221 GETTABLEKS                       R24 R25 K11 ["FoundationMenuWidthGrowth"]
      223 JUMPIFNOT                        R24 ; [+2]
      224 MOVE                             R23 R6
      225 JUMP                             ; [+2]
      226 GETTABLEKS                       R23 R2 K3 ["width"]
      228 SETTABLEKS                       R23 R22 K3 ["width"]
      230 SETTABLEKS                       R8 R22 K5 ["items"]
      232 GETTABLEKS                       R23 R2 K43 ["maxHeight"]
      234 SETTABLEKS                       R23 R22 K43 ["maxHeight"]
      236 SETTABLEKS                       R12 R22 K22 ["onActivated"]
      238 LOADK                            R24 K46 ["%*--menu"]
      239 GETTABLEKS                       R26 R2 K44 ["testId"]
      241 NAMECALL                         R24 R24 K47 ["format"]
      243 CALL                             R24 2 1
      244 MOVE                             R23 R24
      245 SETTABLEKS                       R23 R22 K44 ["testId"]
      247 CALL                             R20 2 -1
      248 CALL                             R17 -1 1
      249 SETTABLEKS                       R17 R16 K20 ["Menu"]
      251 CALL                             R13 3 -1
      252 RETURN                           R13 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Popover"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["BaseMenu"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Utility"]
       44 GETTABLEKS                       R8 R9 K14 ["withDefaults"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Utility"]
       51 GETTABLEKS                       R9 R10 K15 ["withCommonProps"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Utility"]
       58 GETTABLEKS                       R10 R11 K16 ["Flags"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K17 ["Enums"]
       65 GETTABLEKS                       R11 R12 K18 ["PopoverSide"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K17 ["Enums"]
       72 GETTABLEKS                       R12 R13 K19 ["PopoverAlign"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K17 ["Enums"]
       79 GETTABLEKS                       R13 R14 K20 ["InputSize"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETIMPORT                        R16 K1 [script]
       86 GETTABLEKS                       R15 R16 K4 ["Parent"]
       88 GETTABLEKS                       R14 R15 K21 ["DropdownControl"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETIMPORT                        R17 K1 [script]
       95 GETTABLEKS                       R16 R17 K4 ["Parent"]
       97 GETTABLEKS                       R15 R16 K22 ["markSelectedItem"]
       99 CALL                             R14 1 1
      100 DUPTABLE                         R15 K26 [{"width", "size", "testId"}]
      101 GETIMPORT                        R16 K29 [UDim.new]
      103 LOADN                            R17 0
      104 LOADN                            R18 144
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K23 ["width"]
      108 GETTABLEKS                       R16 R12 K30 ["Medium"]
      110 SETTABLEKS                       R16 R15 K24 ["size"]
      112 LOADK                            R16 K31 ["--foundation-dropdown"]
      113 SETTABLEKS                       R16 R15 K25 ["testId"]
      115 DUPTABLE                         R16 K34 [{"position", "offset"}]
      116 GETTABLEKS                       R17 R10 K35 ["Bottom"]
      118 SETTABLEKS                       R17 R16 K32 ["position"]
      120 LOADN                            R17 5
      121 SETTABLEKS                       R17 R16 K33 ["offset"]
      123 DUPCLOSURE                       R17 K36 [PROTO_8]
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R6
      136 GETTABLEKS                       R18 R2 K37 ["memo"]
      138 GETTABLEKS                       R19 R2 K38 ["forwardRef"]
      140 MOVE                             R20 R17
      141 CALL                             R19 1 -1
      142 CALL                             R18 -1 -1
      143 RETURN                           R18 -1
