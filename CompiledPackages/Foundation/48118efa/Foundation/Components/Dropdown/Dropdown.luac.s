PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       28 GETTABLEKS                       R6 R6 K3 ["useState"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 2
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R7
       38 NEWTABLE                         R10 0 0
       40 CALL                             R8 2 1
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K6 ["FoundationDropdownSelectionProps"]
       44 JUMPIFNOT                        R9 ; [+12]
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K7 ["useImperativeHandle"]
       48 MOVE                             R10 R1
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R12 0 1
       53 MOVE                             R13 R6
       54 SETLIST                          R12 R13 1 [1]
       56 CALL                             R9 3 0
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K8 ["useBinding"]
       60 GETTABLEKS                       R10 R2 K9 ["width"]
       62 CALL                             R9 1 2
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R12 R2 K10 ["items"]
       66 GETTABLEKS                       R13 R2 K11 ["value"]
       68 CALL                             R11 2 2
       69 GETUPVAL                         R13 4
       70 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       72 NEWCLOSURE                       R14 P2
       73 CAPTURE                          VAL R4
       74 NEWTABLE                         R15 0 0
       76 CALL                             R13 2 1
       77 GETUPVAL                         R14 4
       78 GETTABLEKS                       R14 R14 K5 ["useCallback"]
       80 NEWCLOSURE                       R15 P3
       81 CAPTURE                          VAL R4
       82 NEWTABLE                         R16 0 0
       84 CALL                             R14 2 1
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K5 ["useCallback"]
       88 NEWCLOSURE                       R16 P4
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R17 0 1
       93 GETTABLEKS                       R18 R2 K12 ["onItemChanged"]
       95 SETLIST                          R17 R18 1 [1]
       97 CALL                             R15 2 1
       98 GETUPVAL                         R16 4
       99 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      101 NEWCLOSURE                       R17 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R10
      104 NEWTABLE                         R18 0 2
      106 MOVE                             R19 R10
      107 GETTABLEKS                       R20 R0 K13 ["onAbsoluteSizeChanged"]
      109 SETLIST                          R18 R19 2 [1]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R2 K13 ["onAbsoluteSizeChanged"]
      114 GETUPVAL                         R16 4
      115 GETTABLEKS                       R16 R16 K14 ["createElement"]
      117 GETUPVAL                         R17 6
      118 GETTABLEKS                       R17 R17 K15 ["Root"]
      120 DUPTABLE                         R18 K18 [{"isOpen", "ref"}]
      121 SETTABLEKS                       R3 R18 K16 ["isOpen"]
      123 GETUPVAL                         R20 2
      124 GETTABLEKS                       R20 R20 K6 ["FoundationDropdownSelectionProps"]
      126 JUMPIFNOT                        R20 ; [+2]
      127 LOADNIL                          R19
      128 JUMP                             ; [+1]
      129 MOVE                             R19 R1
      130 SETTABLEKS                       R19 R18 K17 ["ref"]
      132 DUPTABLE                         R19 K22 [{"DropdownControl", "Anchor", "Menu"}]
      133 GETUPVAL                         R20 4
      134 GETTABLEKS                       R20 R20 K14 ["createElement"]
      136 GETUPVAL                         R21 7
      137 GETUPVAL                         R22 8
      138 MOVE                             R23 R2
      139 DUPTABLE                         R24 K38 [{"variant", "onActivated", "hasError", "isDisabled", "item", "placeholder", "isMenuOpen", "width", "size", "label", "hint", "inputRef", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      140 GETUPVAL                         R26 2
      141 GETTABLEKS                       R26 R26 K0 ["FoundationDropdownVariant"]
      143 JUMPIFNOT                        R26 ; [+3]
      144 GETTABLEKS                       R25 R2 K1 ["variant"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R25
      148 SETTABLEKS                       R25 R24 K1 ["variant"]
      150 SETTABLEKS                       R13 R24 K23 ["onActivated"]
      152 GETTABLEKS                       R25 R2 K24 ["hasError"]
      154 SETTABLEKS                       R25 R24 K24 ["hasError"]
      156 GETTABLEKS                       R25 R2 K25 ["isDisabled"]
      158 SETTABLEKS                       R25 R24 K25 ["isDisabled"]
      160 SETTABLEKS                       R12 R24 K26 ["item"]
      162 GETTABLEKS                       R25 R2 K27 ["placeholder"]
      164 SETTABLEKS                       R25 R24 K27 ["placeholder"]
      166 SETTABLEKS                       R3 R24 K28 ["isMenuOpen"]
      168 GETTABLEKS                       R25 R2 K9 ["width"]
      170 SETTABLEKS                       R25 R24 K9 ["width"]
      172 GETTABLEKS                       R25 R2 K29 ["size"]
      174 SETTABLEKS                       R25 R24 K29 ["size"]
      176 GETTABLEKS                       R25 R2 K30 ["label"]
      178 SETTABLEKS                       R25 R24 K30 ["label"]
      180 GETTABLEKS                       R25 R2 K31 ["hint"]
      182 SETTABLEKS                       R25 R24 K31 ["hint"]
      184 GETUPVAL                         R26 2
      185 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      187 JUMPIFNOT                        R26 ; [+2]
      188 MOVE                             R25 R8
      189 JUMP                             ; [+1]
      190 MOVE                             R25 R5
      191 SETTABLEKS                       R25 R24 K32 ["inputRef"]
      193 GETUPVAL                         R26 2
      194 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      196 JUMPIFNOT                        R26 ; [+3]
      197 GETTABLEKS                       R25 R2 K33 ["Selectable"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R25
      201 SETTABLEKS                       R25 R24 K33 ["Selectable"]
      203 GETUPVAL                         R26 2
      204 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      206 JUMPIFNOT                        R26 ; [+3]
      207 GETTABLEKS                       R25 R2 K34 ["NextSelectionUp"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R25
      211 SETTABLEKS                       R25 R24 K34 ["NextSelectionUp"]
      213 GETUPVAL                         R26 2
      214 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      216 JUMPIFNOT                        R26 ; [+3]
      217 GETTABLEKS                       R25 R2 K35 ["NextSelectionDown"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R25
      221 SETTABLEKS                       R25 R24 K35 ["NextSelectionDown"]
      223 GETUPVAL                         R26 2
      224 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      226 JUMPIFNOT                        R26 ; [+3]
      227 GETTABLEKS                       R25 R2 K36 ["NextSelectionLeft"]
      229 JUMP                             ; [+1]
      230 LOADNIL                          R25
      231 SETTABLEKS                       R25 R24 K36 ["NextSelectionLeft"]
      233 GETUPVAL                         R26 2
      234 GETTABLEKS                       R26 R26 K6 ["FoundationDropdownSelectionProps"]
      236 JUMPIFNOT                        R26 ; [+3]
      237 GETTABLEKS                       R25 R2 K37 ["NextSelectionRight"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R25
      241 SETTABLEKS                       R25 R24 K37 ["NextSelectionRight"]
      243 CALL                             R22 2 -1
      244 CALL                             R20 -1 1
      245 SETTABLEKS                       R20 R19 K19 ["DropdownControl"]
      247 GETUPVAL                         R20 4
      248 GETTABLEKS                       R20 R20 K14 ["createElement"]
      250 GETUPVAL                         R21 6
      251 GETTABLEKS                       R21 R21 K20 ["Anchor"]
      253 DUPTABLE                         R22 K40 [{"anchorRef"}]
      254 SETTABLEKS                       R5 R22 K39 ["anchorRef"]
      256 CALL                             R20 2 1
      257 SETTABLEKS                       R20 R19 K20 ["Anchor"]
      259 GETUPVAL                         R20 4
      260 GETTABLEKS                       R20 R20 K14 ["createElement"]
      262 GETUPVAL                         R21 6
      263 GETTABLEKS                       R21 R21 K41 ["Content"]
      265 DUPTABLE                         R22 K50 [{["hasArrow"] = False, ["align"], ["side"], ["onPressedOutside"], ["radius"], ["selection"], ["selectionGroup"]}]
      266 GETUPVAL                         R23 9
      267 GETTABLEKS                       R23 R23 K51 ["End"]
      269 SETTABLEKS                       R23 R22 K44 ["align"]
      271 GETUPVAL                         R23 10
      272 SETTABLEKS                       R23 R22 K45 ["side"]
      274 SETTABLEKS                       R14 R22 K46 ["onPressedOutside"]
      276 GETUPVAL                         R23 11
      277 GETTABLEKS                       R23 R23 K52 ["Medium"]
      279 SETTABLEKS                       R23 R22 K47 ["radius"]
      281 GETTABLEKS                       R23 R2 K48 ["selection"]
      283 SETTABLEKS                       R23 R22 K48 ["selection"]
      285 GETTABLEKS                       R23 R2 K49 ["selectionGroup"]
      287 SETTABLEKS                       R23 R22 K49 ["selectionGroup"]
      289 GETUPVAL                         R23 4
      290 GETTABLEKS                       R23 R23 K14 ["createElement"]
      292 GETUPVAL                         R24 12
      293 GETTABLEKS                       R24 R24 K15 ["Root"]
      295 DUPTABLE                         R25 K57 [{["size"], ["couldGrow"] = True, ["width"], ["items"], ["maxHeight"], ["onActivated"], ["radius"], ["testId"]}]
      296 GETTABLEKS                       R26 R2 K29 ["size"]
      298 SETTABLEKS                       R26 R25 K29 ["size"]
      300 SETTABLEKS                       R9 R25 K9 ["width"]
      302 SETTABLEKS                       R11 R25 K10 ["items"]
      304 GETTABLEKS                       R26 R2 K55 ["maxHeight"]
      306 SETTABLEKS                       R26 R25 K55 ["maxHeight"]
      308 SETTABLEKS                       R15 R25 K23 ["onActivated"]
      310 GETUPVAL                         R26 11
      311 GETTABLEKS                       R26 R26 K52 ["Medium"]
      313 SETTABLEKS                       R26 R25 K47 ["radius"]
      315 LOADK                            R27 K58 ["%*--menu"]
      316 GETTABLEKS                       R29 R2 K56 ["testId"]
      318 NAMECALL                         R27 R27 K59 ["format"]
      320 CALL                             R27 2 1
      321 MOVE                             R26 R27
      322 SETTABLEKS                       R26 R25 K56 ["testId"]
      324 CALL                             R23 2 -1
      325 CALL                             R20 -1 1
      326 SETTABLEKS                       R20 R19 K21 ["Menu"]
      328 CALL                             R16 3 -1
      329 RETURN                           R16 -1

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
      109 DUPTABLE                         R16 K29 [{["variant"], ["width"], ["size"], ["testId"] = "--foundation-dropdown"}]
      110 GETTABLEKS                       R18 R6 K30 ["FoundationDropdownVariant"]
      112 JUMPIFNOT                        R18 ; [+3]
      113 GETTABLEKS                       R17 R10 K31 ["Standard"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R17
      117 SETTABLEKS                       R17 R16 K24 ["variant"]
      119 GETIMPORT                        R17 K34 [UDim.new]
      121 LOADN                            R18 0
      122 LOADN                            R19 400
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K25 ["width"]
      126 GETTABLEKS                       R17 R9 K35 ["Medium"]
      128 SETTABLEKS                       R17 R16 K26 ["size"]
      130 DUPTABLE                         R17 K39 [{["position"], ["offset"] = 5}]
      131 GETTABLEKS                       R18 R12 K40 ["Bottom"]
      133 SETTABLEKS                       R18 R17 K36 ["position"]
      135 DUPCLOSURE                       R18 K41 [PROTO_7]
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R3
      149 GETTABLEKS                       R19 R2 K42 ["memo"]
      151 GETTABLEKS                       R20 R2 K43 ["forwardRef"]
      153 MOVE                             R21 R18
      154 CALL                             R20 1 -1
      155 CALL                             R19 -1 -1
      156 RETURN                           R19 -1
