PROTO_0:
        0 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        2 LOADN                            R1 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K4 ["FoundationInputVariantsConsolidateContainer"]
        6 JUMPIFNOT                        R5 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["container"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K6 ["outerContainer"]
       14 GETTABLEKS                       R4 R4 K7 ["minHeight"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K8 ["Stroke"]
       19 GETTABLEKS                       R5 R5 K9 ["Standard"]
       21 SUB                              R3 R4 R5
       22 DIVK                             R2 R3 K3 [2]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

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
       14 GETUPVAL                         R6 5
       15 GETTABLEKS                       R6 R6 K2 ["DEFAULT_INPUT_FIELD_WIDTH_PIXELS"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 6
       19 GETTABLEKS                       R6 R6 K3 ["FoundationInternalTextInputClearButton"]
       21 JUMPIFNOT                        R6 ; [+7]
       22 GETTABLEKS                       R6 R2 K4 ["hasClearButton"]
       24 JUMPIFNOTEQKNIL                  R6 ; [+4]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R2 K4 ["hasClearButton"]
       29 GETUPVAL                         R6 7
       30 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R8 0 2
       38 GETUPVAL                         R10 6
       39 GETTABLEKS                       R10 R10 K6 ["FoundationInputVariantsConsolidateContainer"]
       41 JUMPIFNOT                        R10 ; [+3]
       42 GETTABLEKS                       R9 R4 K7 ["container"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R9 R4 K8 ["outerContainer"]
       47 GETTABLEKS                       R9 R9 K9 ["minHeight"]
       49 GETTABLEKS                       R10 R3 K10 ["Stroke"]
       51 GETTABLEKS                       R10 R10 K11 ["Standard"]
       53 SETLIST                          R8 R9 2 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 7
       57 GETTABLEKS                       R7 R7 K12 ["createElement"]
       59 GETUPVAL                         R8 8
       60 GETUPVAL                         R9 9
       61 MOVE                             R10 R2
       62 DUPTABLE                         R11 K15 [{"Size", "tag"}]
       63 GETTABLEKS                       R13 R2 K16 ["width"]
       65 JUMPIFNOT                        R13 ; [+11]
       66 GETIMPORT                        R12 K19 [UDim2.new]
       68 GETTABLEKS                       R13 R2 K16 ["width"]
       70 GETIMPORT                        R14 K21 [UDim.new]
       72 LOADN                            R15 0
       73 LOADN                            R16 0
       74 CALL                             R14 2 -1
       75 CALL                             R12 -1 1
       76 JUMP                             ; [+13]
       77 GETIMPORT                        R12 K19 [UDim2.new]
       79 GETIMPORT                        R13 K21 [UDim.new]
       81 LOADN                            R14 0
       82 MOVE                             R15 R5
       83 CALL                             R13 2 1
       84 GETIMPORT                        R14 K21 [UDim.new]
       86 LOADN                            R15 0
       87 LOADN                            R16 0
       88 CALL                             R14 2 -1
       89 CALL                             R12 -1 1
       90 SETTABLEKS                       R12 R11 K13 ["Size"]
       92 LOADK                            R12 K22 ["auto-y"]
       93 SETTABLEKS                       R12 R11 K14 ["tag"]
       95 CALL                             R9 2 1
       96 DUPTABLE                         R10 K24 [{"Input"}]
       97 GETUPVAL                         R11 7
       98 GETTABLEKS                       R11 R11 K12 ["createElement"]
      100 GETUPVAL                         R12 10
      101 DUPTABLE                         R13 K37 [{"ref", "hasError", "isDisabled", "hasClearButton", "text", "size", "radius", "variant", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "placeholder", "leadingElement", "testId"}]
      102 SETTABLEKS                       R1 R13 K25 ["ref"]
      104 GETTABLEKS                       R14 R2 K26 ["hasError"]
      106 SETTABLEKS                       R14 R13 K26 ["hasError"]
      108 GETTABLEKS                       R14 R2 K27 ["isDisabled"]
      110 SETTABLEKS                       R14 R13 K27 ["isDisabled"]
      112 GETUPVAL                         R15 6
      113 GETTABLEKS                       R15 R15 K3 ["FoundationInternalTextInputClearButton"]
      115 JUMPIFNOT                        R15 ; [+3]
      116 GETTABLEKS                       R14 R2 K4 ["hasClearButton"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R14
      120 SETTABLEKS                       R14 R13 K4 ["hasClearButton"]
      122 GETTABLEKS                       R14 R2 K28 ["text"]
      124 SETTABLEKS                       R14 R13 K28 ["text"]
      126 GETTABLEKS                       R14 R2 K0 ["size"]
      128 SETTABLEKS                       R14 R13 K0 ["size"]
      130 GETUPVAL                         R15 11
      131 GETTABLEKS                       R16 R2 K38 ["shape"]
      133 GETTABLE                         R14 R15 R16
      134 SETTABLEKS                       R14 R13 K29 ["radius"]
      136 GETTABLEKS                       R14 R2 K1 ["variant"]
      138 SETTABLEKS                       R14 R13 K1 ["variant"]
      140 DUPTABLE                         R14 K41 [{"left", "right"}]
      141 GETUPVAL                         R16 6
      142 GETTABLEKS                       R16 R16 K6 ["FoundationInputVariantsConsolidateContainer"]
      144 JUMPIFNOT                        R16 ; [+3]
      145 GETTABLEKS                       R15 R4 K7 ["container"]
      147 JUMP                             ; [+2]
      148 GETTABLEKS                       R15 R4 K42 ["innerContainer"]
      150 GETTABLEKS                       R15 R15 K30 ["horizontalPadding"]
      152 SETTABLEKS                       R15 R14 K39 ["left"]
      154 GETUPVAL                         R16 6
      155 GETTABLEKS                       R16 R16 K6 ["FoundationInputVariantsConsolidateContainer"]
      157 JUMPIFNOT                        R16 ; [+3]
      158 GETTABLEKS                       R15 R4 K7 ["container"]
      160 JUMP                             ; [+2]
      161 GETTABLEKS                       R15 R4 K42 ["innerContainer"]
      163 GETTABLEKS                       R15 R15 K30 ["horizontalPadding"]
      165 SETTABLEKS                       R15 R14 K40 ["right"]
      167 SETTABLEKS                       R14 R13 K30 ["horizontalPadding"]
      169 GETTABLEKS                       R14 R2 K31 ["onChanged"]
      171 SETTABLEKS                       R14 R13 K31 ["onChanged"]
      173 GETTABLEKS                       R14 R2 K43 ["onFocusGained"]
      175 SETTABLEKS                       R14 R13 K32 ["onFocus"]
      177 GETTABLEKS                       R14 R2 K33 ["onFocusLost"]
      179 SETTABLEKS                       R14 R13 K33 ["onFocusLost"]
      181 GETTABLEKS                       R15 R2 K34 ["placeholder"]
      183 JUMPIFNOT                        R15 ; [+3]
      184 GETTABLEKS                       R14 R2 K34 ["placeholder"]
      186 JUMP                             ; [+5]
      187 GETUPVAL                         R14 12
      188 LOADK                            R16 K44 ["CommonUI.Controls.Action.Search"]
      189 NAMECALL                         R14 R14 K45 ["FormatByKey"]
      191 CALL                             R14 2 1
      192 SETTABLEKS                       R14 R13 K34 ["placeholder"]
      194 GETUPVAL                         R14 7
      195 GETTABLEKS                       R14 R14 K12 ["createElement"]
      197 GETUPVAL                         R15 8
      198 DUPTABLE                         R16 K47 [{"Position", "tag"}]
      199 SETTABLEKS                       R6 R16 K46 ["Position"]
      201 LOADK                            R17 K48 ["anchor-center-left auto-xy"]
      202 SETTABLEKS                       R17 R16 K14 ["tag"]
      204 DUPTABLE                         R17 K50 [{"Icon"}]
      205 GETUPVAL                         R18 7
      206 GETTABLEKS                       R18 R18 K12 ["createElement"]
      208 GETUPVAL                         R19 13
      209 DUPTABLE                         R20 K52 [{"name", "size", "testId"}]
      210 GETUPVAL                         R21 14
      211 GETTABLEKS                       R21 R21 K49 ["Icon"]
      213 GETTABLEKS                       R21 R21 K53 ["MagnifyingGlass"]
      215 SETTABLEKS                       R21 R20 K51 ["name"]
      217 GETTABLEKS                       R21 R2 K0 ["size"]
      219 SETTABLEKS                       R21 R20 K0 ["size"]
      221 LOADK                            R22 K54 ["%*--search-icon"]
      222 GETTABLEKS                       R24 R2 K36 ["testId"]
      224 NAMECALL                         R22 R22 K55 ["format"]
      226 CALL                             R22 2 1
      227 MOVE                             R21 R22
      228 SETTABLEKS                       R21 R20 K36 ["testId"]
      230 CALL                             R18 2 1
      231 SETTABLEKS                       R18 R17 K49 ["Icon"]
      233 CALL                             R14 3 1
      234 SETTABLEKS                       R14 R13 K35 ["leadingElement"]
      236 LOADK                            R15 K56 ["%*--input"]
      237 GETTABLEKS                       R17 R2 K36 ["testId"]
      239 NAMECALL                         R15 R15 K55 ["format"]
      241 CALL                             R15 2 1
      242 MOVE                             R14 R15
      243 SETTABLEKS                       R14 R13 K36 ["testId"]
      245 CALL                             R11 2 1
      246 SETTABLEKS                       R11 R10 K23 ["Input"]
      248 CALL                             R7 3 -1
      249 RETURN                           R7 -1

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
       48 GETTABLEKS                       R11 R0 K15 ["Utility"]
       50 GETTABLEKS                       R11 R11 K16 ["Flags"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K15 ["Utility"]
       57 GETTABLEKS                       R12 R12 K17 ["Localization"]
       59 GETTABLEKS                       R12 R12 K18 ["Translator"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K15 ["Utility"]
       66 GETTABLEKS                       R13 R13 K19 ["useScaledValue"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K9 ["Components"]
       73 GETTABLEKS                       R14 R14 K20 ["TextInput"]
       75 GETTABLEKS                       R14 R14 K21 ["useTextInputVariants"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K22 ["Providers"]
       82 GETTABLEKS                       R15 R15 K23 ["Style"]
       84 GETTABLEKS                       R15 R15 K24 ["useTokens"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R0 K15 ["Utility"]
       91 GETTABLEKS                       R16 R16 K25 ["withCommonProps"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K15 ["Utility"]
       98 GETTABLEKS                       R17 R17 K26 ["withDefaults"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R0 K27 ["Enums"]
      105 GETTABLEKS                       R18 R18 K28 ["InputSize"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R0 K27 ["Enums"]
      112 GETTABLEKS                       R19 R19 K29 ["InputVariant"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K27 ["Enums"]
      119 GETTABLEKS                       R20 R20 K30 ["Radius"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K27 ["Enums"]
      126 GETTABLEKS                       R21 R21 K31 ["SearchInputShape"]
      128 CALL                             R20 1 1
      129 NEWTABLE                         R21 2 0
      131 GETTABLEKS                       R22 R20 K32 ["Pill"]
      133 GETTABLEKS                       R23 R19 K33 ["Circle"]
      135 SETTABLE                         R23 R21 R22
      136 GETTABLEKS                       R22 R20 K34 ["Box"]
      138 GETTABLEKS                       R23 R19 K35 ["None"]
      140 SETTABLE                         R23 R21 R22
      141 DUPTABLE                         R22 K41 [{"size", "variant", "shape", "hasClearButton", "testId"}]
      142 GETTABLEKS                       R23 R17 K42 ["Medium"]
      144 SETTABLEKS                       R23 R22 K36 ["size"]
      146 GETTABLEKS                       R23 R18 K43 ["Standard"]
      148 SETTABLEKS                       R23 R22 K37 ["variant"]
      150 GETTABLEKS                       R23 R20 K32 ["Pill"]
      152 SETTABLEKS                       R23 R22 K38 ["shape"]
      154 GETTABLEKS                       R24 R10 K44 ["FoundationInternalTextInputClearButton"]
      156 JUMPIFNOT                        R24 ; [+2]
      157 LOADB                            R23 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R23
      160 SETTABLEKS                       R23 R22 K39 ["hasClearButton"]
      162 LOADK                            R23 K45 ["--foundation-search-input"]
      163 SETTABLEKS                       R23 R22 K40 ["testId"]
      165 DUPCLOSURE                       R23 K46 [PROTO_1]
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R2
      181 GETTABLEKS                       R24 R3 K47 ["memo"]
      183 GETTABLEKS                       R25 R3 K48 ["forwardRef"]
      185 MOVE                             R26 R23
      186 CALL                             R25 1 -1
      187 CALL                             R24 -1 -1
      188 RETURN                           R24 -1
