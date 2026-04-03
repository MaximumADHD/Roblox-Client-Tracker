PROTO_0:
        0 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        2 LOADN                            R1 0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K4 ["outerContainer"]
        6 GETTABLEKS                       R4 R5 K5 ["minHeight"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K6 ["Stroke"]
       11 GETTABLEKS                       R5 R6 K7 ["Standard"]
       13 SUB                              R3 R4 R5
       14 DIVK                             R2 R3 K3 [2]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 GETTABLEKS                       R7 R2 K1 ["variant"]
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 LOADB                            R12 1
       17 CALL                             R4 8 1
       18 GETUPVAL                         R5 4
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R6 R7 K2 ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 6
       24 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R8 0 2
       31 GETTABLEKS                       R10 R4 K4 ["outerContainer"]
       33 GETTABLEKS                       R9 R10 K5 ["minHeight"]
       35 GETTABLEKS                       R11 R3 K6 ["Stroke"]
       37 GETTABLEKS                       R10 R11 K7 ["Standard"]
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R7 R8 K8 ["createElement"]
       45 GETUPVAL                         R8 7
       46 GETUPVAL                         R9 8
       47 MOVE                             R10 R2
       48 DUPTABLE                         R11 K11 [{"Size", "tag"}]
       49 GETTABLEKS                       R13 R2 K12 ["width"]
       51 JUMPIFNOT                        R13 ; [+11]
       52 GETIMPORT                        R12 K15 [UDim2.new]
       54 GETTABLEKS                       R13 R2 K12 ["width"]
       56 GETIMPORT                        R14 K17 [UDim.new]
       58 LOADN                            R15 0
       59 LOADN                            R16 0
       60 CALL                             R14 2 -1
       61 CALL                             R12 -1 1
       62 JUMP                             ; [+13]
       63 GETIMPORT                        R12 K15 [UDim2.new]
       65 GETIMPORT                        R13 K17 [UDim.new]
       67 LOADN                            R14 0
       68 MOVE                             R15 R5
       69 CALL                             R13 2 1
       70 GETIMPORT                        R14 K17 [UDim.new]
       72 LOADN                            R15 0
       73 LOADN                            R16 0
       74 CALL                             R14 2 -1
       75 CALL                             R12 -1 1
       76 SETTABLEKS                       R12 R11 K9 ["Size"]
       78 LOADK                            R12 K18 ["auto-y"]
       79 SETTABLEKS                       R12 R11 K10 ["tag"]
       81 CALL                             R9 2 1
       82 DUPTABLE                         R10 K20 [{"Input"}]
       83 GETUPVAL                         R12 6
       84 GETTABLEKS                       R11 R12 K8 ["createElement"]
       86 GETUPVAL                         R12 9
       87 DUPTABLE                         R13 K34 [{"forceEnableFlagsForSearchInput", "ref", "hasError", "isDisabled", "text", "size", "radius", "variant", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "placeholder", "leadingElement", "testId"}]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K21 ["forceEnableFlagsForSearchInput"]
       91 SETTABLEKS                       R1 R13 K22 ["ref"]
       93 GETTABLEKS                       R14 R2 K23 ["hasError"]
       95 SETTABLEKS                       R14 R13 K23 ["hasError"]
       97 GETTABLEKS                       R14 R2 K24 ["isDisabled"]
       99 SETTABLEKS                       R14 R13 K24 ["isDisabled"]
      101 GETTABLEKS                       R14 R2 K25 ["text"]
      103 SETTABLEKS                       R14 R13 K25 ["text"]
      105 GETTABLEKS                       R14 R2 K0 ["size"]
      107 SETTABLEKS                       R14 R13 K0 ["size"]
      109 GETUPVAL                         R15 10
      110 GETTABLEKS                       R16 R2 K35 ["shape"]
      112 GETTABLE                         R14 R15 R16
      113 SETTABLEKS                       R14 R13 K26 ["radius"]
      115 GETTABLEKS                       R14 R2 K1 ["variant"]
      117 SETTABLEKS                       R14 R13 K1 ["variant"]
      119 DUPTABLE                         R14 K38 [{"left", "right"}]
      120 GETTABLEKS                       R16 R4 K39 ["innerContainer"]
      122 GETTABLEKS                       R15 R16 K27 ["horizontalPadding"]
      124 SETTABLEKS                       R15 R14 K36 ["left"]
      126 GETTABLEKS                       R16 R4 K39 ["innerContainer"]
      128 GETTABLEKS                       R15 R16 K27 ["horizontalPadding"]
      130 SETTABLEKS                       R15 R14 K37 ["right"]
      132 SETTABLEKS                       R14 R13 K27 ["horizontalPadding"]
      134 GETTABLEKS                       R14 R2 K28 ["onChanged"]
      136 SETTABLEKS                       R14 R13 K28 ["onChanged"]
      138 GETTABLEKS                       R14 R2 K40 ["onFocusGained"]
      140 SETTABLEKS                       R14 R13 K29 ["onFocus"]
      142 GETTABLEKS                       R14 R2 K30 ["onFocusLost"]
      144 SETTABLEKS                       R14 R13 K30 ["onFocusLost"]
      146 GETTABLEKS                       R15 R2 K31 ["placeholder"]
      148 JUMPIFNOT                        R15 ; [+3]
      149 GETTABLEKS                       R14 R2 K31 ["placeholder"]
      151 JUMP                             ; [+5]
      152 GETUPVAL                         R14 11
      153 LOADK                            R16 K41 ["CommonUI.Controls.Action.Search"]
      154 NAMECALL                         R14 R14 K42 ["FormatByKey"]
      156 CALL                             R14 2 1
      157 SETTABLEKS                       R14 R13 K31 ["placeholder"]
      159 GETUPVAL                         R15 6
      160 GETTABLEKS                       R14 R15 K8 ["createElement"]
      162 GETUPVAL                         R15 7
      163 DUPTABLE                         R16 K44 [{"Position", "tag"}]
      164 SETTABLEKS                       R6 R16 K43 ["Position"]
      166 LOADK                            R17 K45 ["anchor-center-left auto-xy"]
      167 SETTABLEKS                       R17 R16 K10 ["tag"]
      169 DUPTABLE                         R17 K47 [{"Icon"}]
      170 GETUPVAL                         R19 6
      171 GETTABLEKS                       R18 R19 K8 ["createElement"]
      173 GETUPVAL                         R19 12
      174 DUPTABLE                         R20 K49 [{"name", "size", "testId"}]
      175 GETUPVAL                         R23 13
      176 GETTABLEKS                       R22 R23 K46 ["Icon"]
      178 GETTABLEKS                       R21 R22 K50 ["MagnifyingGlass"]
      180 SETTABLEKS                       R21 R20 K48 ["name"]
      182 GETTABLEKS                       R21 R2 K0 ["size"]
      184 SETTABLEKS                       R21 R20 K0 ["size"]
      186 LOADK                            R22 K51 ["%*--search-icon"]
      187 GETTABLEKS                       R24 R2 K33 ["testId"]
      189 NAMECALL                         R22 R22 K52 ["format"]
      191 CALL                             R22 2 1
      192 MOVE                             R21 R22
      193 SETTABLEKS                       R21 R20 K33 ["testId"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K46 ["Icon"]
      198 CALL                             R14 3 1
      199 SETTABLEKS                       R14 R13 K32 ["leadingElement"]
      201 LOADK                            R15 K53 ["%*--input"]
      202 GETTABLEKS                       R17 R2 K33 ["testId"]
      204 NAMECALL                         R15 R15 K52 ["format"]
      206 CALL                             R15 2 1
      207 MOVE                             R14 R15
      208 SETTABLEKS                       R14 R13 K33 ["testId"]
      210 CALL                             R11 2 1
      211 SETTABLEKS                       R11 R10 K19 ["Input"]
      213 CALL                             R7 3 -1
      214 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["Icon"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["InternalTextInput"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["Types"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R4 K13 ["View"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R13 R0 K15 ["Utility"]
       50 GETTABLEKS                       R12 R13 K16 ["Localization"]
       52 GETTABLEKS                       R11 R12 K17 ["Translator"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K15 ["Utility"]
       59 GETTABLEKS                       R12 R13 K18 ["useScaledValue"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R15 R0 K9 ["Components"]
       66 GETTABLEKS                       R14 R15 K19 ["TextInput"]
       68 GETTABLEKS                       R13 R14 K20 ["useTextInputVariants"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R16 R0 K21 ["Providers"]
       75 GETTABLEKS                       R15 R16 K22 ["Style"]
       77 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K15 ["Utility"]
       84 GETTABLEKS                       R15 R16 K24 ["withCommonProps"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R17 R0 K15 ["Utility"]
       91 GETTABLEKS                       R16 R17 K25 ["withDefaults"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R18 R0 K26 ["Enums"]
       98 GETTABLEKS                       R17 R18 K27 ["InputSize"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R19 R0 K26 ["Enums"]
      105 GETTABLEKS                       R18 R19 K28 ["InputVariant"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R20 R0 K26 ["Enums"]
      112 GETTABLEKS                       R19 R20 K29 ["Radius"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R21 R0 K26 ["Enums"]
      119 GETTABLEKS                       R20 R21 K30 ["SearchInputShape"]
      121 CALL                             R19 1 1
      122 NEWTABLE                         R20 2 0
      124 GETTABLEKS                       R21 R19 K31 ["Pill"]
      126 GETTABLEKS                       R22 R18 K32 ["Circle"]
      128 SETTABLE                         R22 R20 R21
      129 GETTABLEKS                       R21 R19 K33 ["Box"]
      131 GETTABLEKS                       R22 R18 K34 ["None"]
      133 SETTABLE                         R22 R20 R21
      134 DUPTABLE                         R21 K39 [{"size", "variant", "shape", "testId"}]
      135 GETTABLEKS                       R22 R16 K40 ["Medium"]
      137 SETTABLEKS                       R22 R21 K35 ["size"]
      139 GETTABLEKS                       R22 R17 K41 ["Standard"]
      141 SETTABLEKS                       R22 R21 K36 ["variant"]
      143 GETTABLEKS                       R22 R19 K31 ["Pill"]
      145 SETTABLEKS                       R22 R21 K37 ["shape"]
      147 LOADK                            R22 K42 ["--foundation-search-input"]
      148 SETTABLEKS                       R22 R21 K38 ["testId"]
      150 DUPCLOSURE                       R22 K43 [PROTO_1]
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R2
      165 GETTABLEKS                       R23 R3 K44 ["memo"]
      167 GETTABLEKS                       R24 R3 K45 ["forwardRef"]
      169 MOVE                             R25 R22
      170 CALL                             R24 1 -1
      171 CALL                             R23 -1 -1
      172 RETURN                           R23 -1
