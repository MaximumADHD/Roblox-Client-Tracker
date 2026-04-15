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
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R7 5
       15 GETTABLEKS                       R6 R7 K2 ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R8 0 2
       26 GETTABLEKS                       R10 R4 K4 ["outerContainer"]
       28 GETTABLEKS                       R9 R10 K5 ["minHeight"]
       30 GETTABLEKS                       R11 R3 K6 ["Stroke"]
       32 GETTABLEKS                       R10 R11 K7 ["Standard"]
       34 SETLIST                          R8 R9 2 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R7 R8 K8 ["createElement"]
       40 GETUPVAL                         R8 7
       41 GETUPVAL                         R9 8
       42 MOVE                             R10 R2
       43 DUPTABLE                         R11 K11 [{"Size", "tag"}]
       44 GETTABLEKS                       R13 R2 K12 ["width"]
       46 JUMPIFNOT                        R13 ; [+11]
       47 GETIMPORT                        R12 K15 [UDim2.new]
       49 GETTABLEKS                       R13 R2 K12 ["width"]
       51 GETIMPORT                        R14 K17 [UDim.new]
       53 LOADN                            R15 0
       54 LOADN                            R16 0
       55 CALL                             R14 2 -1
       56 CALL                             R12 -1 1
       57 JUMP                             ; [+13]
       58 GETIMPORT                        R12 K15 [UDim2.new]
       60 GETIMPORT                        R13 K17 [UDim.new]
       62 LOADN                            R14 0
       63 MOVE                             R15 R5
       64 CALL                             R13 2 1
       65 GETIMPORT                        R14 K17 [UDim.new]
       67 LOADN                            R15 0
       68 LOADN                            R16 0
       69 CALL                             R14 2 -1
       70 CALL                             R12 -1 1
       71 SETTABLEKS                       R12 R11 K9 ["Size"]
       73 LOADK                            R12 K18 ["auto-y"]
       74 SETTABLEKS                       R12 R11 K10 ["tag"]
       76 CALL                             R9 2 1
       77 DUPTABLE                         R10 K20 [{"Input"}]
       78 GETUPVAL                         R12 6
       79 GETTABLEKS                       R11 R12 K8 ["createElement"]
       81 GETUPVAL                         R12 9
       82 DUPTABLE                         R13 K33 [{"ref", "hasError", "isDisabled", "text", "size", "radius", "variant", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "placeholder", "leadingElement", "testId"}]
       83 SETTABLEKS                       R1 R13 K21 ["ref"]
       85 GETTABLEKS                       R14 R2 K22 ["hasError"]
       87 SETTABLEKS                       R14 R13 K22 ["hasError"]
       89 GETTABLEKS                       R14 R2 K23 ["isDisabled"]
       91 SETTABLEKS                       R14 R13 K23 ["isDisabled"]
       93 GETTABLEKS                       R14 R2 K24 ["text"]
       95 SETTABLEKS                       R14 R13 K24 ["text"]
       97 GETTABLEKS                       R14 R2 K0 ["size"]
       99 SETTABLEKS                       R14 R13 K0 ["size"]
      101 GETUPVAL                         R15 10
      102 GETTABLEKS                       R16 R2 K34 ["shape"]
      104 GETTABLE                         R14 R15 R16
      105 SETTABLEKS                       R14 R13 K25 ["radius"]
      107 GETTABLEKS                       R14 R2 K1 ["variant"]
      109 SETTABLEKS                       R14 R13 K1 ["variant"]
      111 DUPTABLE                         R14 K37 [{"left", "right"}]
      112 GETTABLEKS                       R16 R4 K38 ["innerContainer"]
      114 GETTABLEKS                       R15 R16 K26 ["horizontalPadding"]
      116 SETTABLEKS                       R15 R14 K35 ["left"]
      118 GETTABLEKS                       R16 R4 K38 ["innerContainer"]
      120 GETTABLEKS                       R15 R16 K26 ["horizontalPadding"]
      122 SETTABLEKS                       R15 R14 K36 ["right"]
      124 SETTABLEKS                       R14 R13 K26 ["horizontalPadding"]
      126 GETTABLEKS                       R14 R2 K27 ["onChanged"]
      128 SETTABLEKS                       R14 R13 K27 ["onChanged"]
      130 GETTABLEKS                       R14 R2 K39 ["onFocusGained"]
      132 SETTABLEKS                       R14 R13 K28 ["onFocus"]
      134 GETTABLEKS                       R14 R2 K29 ["onFocusLost"]
      136 SETTABLEKS                       R14 R13 K29 ["onFocusLost"]
      138 GETTABLEKS                       R15 R2 K30 ["placeholder"]
      140 JUMPIFNOT                        R15 ; [+3]
      141 GETTABLEKS                       R14 R2 K30 ["placeholder"]
      143 JUMP                             ; [+5]
      144 GETUPVAL                         R14 11
      145 LOADK                            R16 K40 ["CommonUI.Controls.Action.Search"]
      146 NAMECALL                         R14 R14 K41 ["FormatByKey"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K30 ["placeholder"]
      151 GETUPVAL                         R15 6
      152 GETTABLEKS                       R14 R15 K8 ["createElement"]
      154 GETUPVAL                         R15 7
      155 DUPTABLE                         R16 K43 [{"Position", "tag"}]
      156 SETTABLEKS                       R6 R16 K42 ["Position"]
      158 LOADK                            R17 K44 ["anchor-center-left auto-xy"]
      159 SETTABLEKS                       R17 R16 K10 ["tag"]
      161 DUPTABLE                         R17 K46 [{"Icon"}]
      162 GETUPVAL                         R19 6
      163 GETTABLEKS                       R18 R19 K8 ["createElement"]
      165 GETUPVAL                         R19 12
      166 DUPTABLE                         R20 K48 [{"name", "size", "testId"}]
      167 GETUPVAL                         R23 13
      168 GETTABLEKS                       R22 R23 K45 ["Icon"]
      170 GETTABLEKS                       R21 R22 K49 ["MagnifyingGlass"]
      172 SETTABLEKS                       R21 R20 K47 ["name"]
      174 GETTABLEKS                       R21 R2 K0 ["size"]
      176 SETTABLEKS                       R21 R20 K0 ["size"]
      178 LOADK                            R22 K50 ["%*--search-icon"]
      179 GETTABLEKS                       R24 R2 K32 ["testId"]
      181 NAMECALL                         R22 R22 K51 ["format"]
      183 CALL                             R22 2 1
      184 MOVE                             R21 R22
      185 SETTABLEKS                       R21 R20 K32 ["testId"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K45 ["Icon"]
      190 CALL                             R14 3 1
      191 SETTABLEKS                       R14 R13 K31 ["leadingElement"]
      193 LOADK                            R15 K52 ["%*--input"]
      194 GETTABLEKS                       R17 R2 K32 ["testId"]
      196 NAMECALL                         R15 R15 K51 ["format"]
      198 CALL                             R15 2 1
      199 MOVE                             R14 R15
      200 SETTABLEKS                       R14 R13 K32 ["testId"]
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R10 K19 ["Input"]
      205 CALL                             R7 3 -1
      206 RETURN                           R7 -1

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
