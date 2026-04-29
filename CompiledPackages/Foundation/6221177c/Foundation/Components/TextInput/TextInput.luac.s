PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K19 [{"ref", "hasError", "isDisabled", "hasClearButton", "text", "textInputType", "focusBehavior", "size", "variant", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["hasError"]
       10 SETTABLEKS                       R4 R3 K2 ["hasError"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["isDisabled"]
       15 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K20 ["FoundationInternalTextInputClearButton"]
       20 JUMPIFNOT                        R5 ; [+4]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K4 ["hasClearButton"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K4 ["hasClearButton"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K5 ["text"]
       31 SETTABLEKS                       R4 R3 K5 ["text"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K6 ["textInputType"]
       36 SETTABLEKS                       R4 R3 K6 ["textInputType"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K21 ["FoundationTextInputFocusBehavior"]
       41 JUMPIFNOT                        R5 ; [+4]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K7 ["focusBehavior"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K7 ["focusBehavior"]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K8 ["size"]
       52 SETTABLEKS                       R4 R3 K8 ["size"]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R5 R6 K22 ["FoundationTextInputVariant"]
       57 JUMPIFNOT                        R5 ; [+4]
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R4 R5 K9 ["variant"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R4
       63 SETTABLEKS                       R4 R3 K9 ["variant"]
       65 DUPTABLE                         R4 K25 [{"left", "right"}]
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R7 R8 K26 ["FoundationInputVariantsConsolidateContainer"]
       69 JUMPIFNOT                        R7 ; [+4]
       70 GETUPVAL                         R7 4
       71 GETTABLEKS                       R6 R7 K27 ["container"]
       73 JUMP                             ; [+3]
       74 GETUPVAL                         R7 4
       75 GETTABLEKS                       R6 R7 K28 ["innerContainer"]
       77 GETTABLEKS                       R5 R6 K10 ["horizontalPadding"]
       79 SETTABLEKS                       R5 R4 K23 ["left"]
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R7 R8 K26 ["FoundationInputVariantsConsolidateContainer"]
       84 JUMPIFNOT                        R7 ; [+4]
       85 GETUPVAL                         R7 4
       86 GETTABLEKS                       R6 R7 K27 ["container"]
       88 JUMP                             ; [+3]
       89 GETUPVAL                         R7 4
       90 GETTABLEKS                       R6 R7 K28 ["innerContainer"]
       92 GETTABLEKS                       R5 R6 K10 ["horizontalPadding"]
       94 SETTABLEKS                       R5 R4 K24 ["right"]
       96 SETTABLEKS                       R4 R3 K10 ["horizontalPadding"]
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R4 R5 K11 ["onChanged"]
      101 SETTABLEKS                       R4 R3 K11 ["onChanged"]
      103 GETUPVAL                         R5 2
      104 GETTABLEKS                       R4 R5 K29 ["onFocusGained"]
      106 SETTABLEKS                       R4 R3 K12 ["onFocus"]
      108 GETUPVAL                         R5 2
      109 GETTABLEKS                       R4 R5 K13 ["onFocusLost"]
      111 SETTABLEKS                       R4 R3 K13 ["onFocusLost"]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R4 R5 K14 ["onReturnPressed"]
      116 SETTABLEKS                       R4 R3 K14 ["onReturnPressed"]
      118 GETUPVAL                         R5 2
      119 GETTABLEKS                       R4 R5 K15 ["placeholder"]
      121 SETTABLEKS                       R4 R3 K15 ["placeholder"]
      123 GETUPVAL                         R6 2
      124 GETTABLEKS                       R5 R6 K30 ["leadingIcon"]
      126 JUMPIFNOT                        R5 ; [+35]
      127 GETUPVAL                         R5 0
      128 GETTABLEKS                       R4 R5 K0 ["createElement"]
      130 GETUPVAL                         R5 5
      131 DUPTABLE                         R6 K32 [{"tag"}]
      132 LOADK                            R7 K33 ["row align-y-center size-0-full auto-x"]
      133 SETTABLEKS                       R7 R6 K31 ["tag"]
      135 GETUPVAL                         R8 0
      136 GETTABLEKS                       R7 R8 K0 ["createElement"]
      138 GETUPVAL                         R8 6
      139 DUPTABLE                         R9 K36 [{"name", "style", "size"}]
      140 GETUPVAL                         R11 2
      141 GETTABLEKS                       R10 R11 K30 ["leadingIcon"]
      143 SETTABLEKS                       R10 R9 K34 ["name"]
      145 GETUPVAL                         R12 4
      146 GETTABLEKS                       R11 R12 K37 ["icon"]
      148 GETTABLEKS                       R10 R11 K35 ["style"]
      150 SETTABLEKS                       R10 R9 K35 ["style"]
      152 GETUPVAL                         R12 4
      153 GETTABLEKS                       R11 R12 K37 ["icon"]
      155 GETTABLEKS                       R10 R11 K8 ["size"]
      157 SETTABLEKS                       R10 R9 K8 ["size"]
      159 CALL                             R7 2 -1
      160 CALL                             R4 -1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R4
      163 SETTABLEKS                       R4 R3 K16 ["leadingElement"]
      165 GETUPVAL                         R6 2
      166 GETTABLEKS                       R5 R6 K38 ["iconTrailing"]
      168 JUMPIFNOT                        R5 ; [+108]
      169 GETUPVAL                         R5 0
      170 GETTABLEKS                       R4 R5 K0 ["createElement"]
      172 GETUPVAL                         R5 5
      173 DUPTABLE                         R6 K32 [{"tag"}]
      174 LOADK                            R7 K33 ["row align-y-center size-0-full auto-x"]
      175 SETTABLEKS                       R7 R6 K31 ["tag"]
      177 GETUPVAL                         R10 2
      178 GETTABLEKS                       R9 R10 K38 ["iconTrailing"]
      180 FASTCALL1                        TYPE R9 ; [+2]
      181 GETIMPORT                        R8 K40 [type]
      183 CALL                             R8 1 1
      184 JUMPIFNOTEQKS                    R8 K41 ["table"] ; [+50]
      186 GETUPVAL                         R10 2
      187 GETTABLEKS                       R9 R10 K38 ["iconTrailing"]
      189 GETTABLEKS                       R8 R9 K42 ["onActivated"]
      191 JUMPIFNOT                        R8 ; [+43]
      192 GETUPVAL                         R8 0
      193 GETTABLEKS                       R7 R8 K0 ["createElement"]
      195 GETUPVAL                         R8 7
      196 DUPTABLE                         R9 K43 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R11 R12 K38 ["iconTrailing"]
      200 GETTABLEKS                       R10 R11 K42 ["onActivated"]
      202 SETTABLEKS                       R10 R9 K42 ["onActivated"]
      204 GETUPVAL                         R11 2
      205 GETTABLEKS                       R10 R11 K3 ["isDisabled"]
      207 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      209 GETUPVAL                         R12 4
      210 GETTABLEKS                       R11 R12 K37 ["icon"]
      212 GETTABLEKS                       R10 R11 K8 ["size"]
      214 SETTABLEKS                       R10 R9 K8 ["size"]
      216 GETUPVAL                         R12 2
      217 GETTABLEKS                       R11 R12 K38 ["iconTrailing"]
      219 GETTABLEKS                       R10 R11 K34 ["name"]
      221 SETTABLEKS                       R10 R9 K37 ["icon"]
      223 LOADK                            R11 K44 ["%*--trailing-icon-button"]
      224 GETUPVAL                         R14 2
      225 GETTABLEKS                       R13 R14 K18 ["testId"]
      227 NAMECALL                         R11 R11 K45 ["format"]
      229 CALL                             R11 2 1
      230 MOVE                             R10 R11
      231 SETTABLEKS                       R10 R9 K18 ["testId"]
      233 CALL                             R7 2 1
      234 JUMP                             ; [+40]
      235 GETUPVAL                         R8 0
      236 GETTABLEKS                       R7 R8 K0 ["createElement"]
      238 GETUPVAL                         R8 6
      239 DUPTABLE                         R9 K36 [{"name", "style", "size"}]
      240 GETUPVAL                         R13 2
      241 GETTABLEKS                       R12 R13 K38 ["iconTrailing"]
      243 FASTCALL1                        TYPE R12 ; [+2]
      244 GETIMPORT                        R11 K40 [type]
      246 CALL                             R11 1 1
      247 JUMPIFNOTEQKS                    R11 K41 ["table"] ; [+7]
      249 GETUPVAL                         R12 2
      250 GETTABLEKS                       R11 R12 K38 ["iconTrailing"]
      252 GETTABLEKS                       R10 R11 K34 ["name"]
      254 JUMP                             ; [+3]
      255 GETUPVAL                         R11 2
      256 GETTABLEKS                       R10 R11 K38 ["iconTrailing"]
      258 SETTABLEKS                       R10 R9 K34 ["name"]
      260 GETUPVAL                         R12 4
      261 GETTABLEKS                       R11 R12 K37 ["icon"]
      263 GETTABLEKS                       R10 R11 K35 ["style"]
      265 SETTABLEKS                       R10 R9 K35 ["style"]
      267 GETUPVAL                         R12 4
      268 GETTABLEKS                       R11 R12 K37 ["icon"]
      270 GETTABLEKS                       R10 R11 K8 ["size"]
      272 SETTABLEKS                       R10 R9 K8 ["size"]
      274 CALL                             R7 2 1
      275 CALL                             R4 3 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R4
      278 SETTABLEKS                       R4 R3 K17 ["trailingElement"]
      280 LOADK                            R5 K46 ["%*--internal-text-input"]
      281 GETUPVAL                         R8 2
      282 GETTABLEKS                       R7 R8 K18 ["testId"]
      284 NAMECALL                         R5 R5 K45 ["format"]
      286 CALL                             R5 2 1
      287 MOVE                             R4 R5
      288 SETTABLEKS                       R4 R3 K18 ["testId"]
      290 CALL                             R1 2 -1
      291 RETURN                           R1 -1

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
       10 GETUPVAL                         R9 4
       11 GETTABLEKS                       R8 R9 K1 ["FoundationTextInputVariant"]
       13 JUMPIFNOT                        R8 ; [+3]
       14 GETTABLEKS                       R7 R2 K2 ["variant"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 CALL                             R4 3 1
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R5 R6 K3 ["createElement"]
       22 GETUPVAL                         R6 6
       23 GETUPVAL                         R7 7
       24 MOVE                             R8 R2
       25 DUPTABLE                         R9 K13 [{"width", "ref", "label", "size", "isRequired", "isDisabled", "hasError", "hint", "textBoxRef", "input"}]
       26 GETTABLEKS                       R10 R2 K4 ["width"]
       28 SETTABLEKS                       R10 R9 K4 ["width"]
       30 SETTABLEKS                       R1 R9 K5 ["ref"]
       32 GETTABLEKS                       R10 R2 K6 ["label"]
       34 SETTABLEKS                       R10 R9 K6 ["label"]
       36 GETUPVAL                         R10 8
       37 GETTABLEKS                       R11 R2 K0 ["size"]
       39 CALL                             R10 1 1
       40 SETTABLEKS                       R10 R9 K0 ["size"]
       42 GETTABLEKS                       R10 R2 K7 ["isRequired"]
       44 SETTABLEKS                       R10 R9 K7 ["isRequired"]
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R11 R12 K14 ["FoundationTextInputDisabledField"]
       49 JUMPIFNOT                        R11 ; [+3]
       50 GETTABLEKS                       R10 R2 K8 ["isDisabled"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R10
       54 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       56 GETTABLEKS                       R10 R2 K9 ["hasError"]
       58 SETTABLEKS                       R10 R9 K9 ["hasError"]
       60 GETTABLEKS                       R10 R2 K10 ["hint"]
       62 SETTABLEKS                       R10 R9 K10 ["hint"]
       64 GETTABLEKS                       R10 R2 K11 ["textBoxRef"]
       66 SETTABLEKS                       R10 R9 K11 ["textBoxRef"]
       68 NEWCLOSURE                       R10 P0
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R2
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R4
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 SETTABLEKS                       R10 R9 K12 ["input"]
       79 CALL                             R7 2 -1
       80 CALL                             R5 -1 -1
       81 RETURN                           R5 -1

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
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["Icon"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["IconButton"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R3 K11 ["InputField"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["InternalTextInput"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R10 R0 K8 ["Components"]
       40 GETTABLEKS                       R9 R10 K13 ["Types"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R3 K14 ["View"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K15 ["Utility"]
       52 GETTABLEKS                       R11 R12 K16 ["Flags"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R14 R0 K8 ["Components"]
       59 GETTABLEKS                       R13 R14 K17 ["TextInput"]
       61 GETTABLEKS                       R12 R13 K18 ["useTextInputVariants"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R15 R0 K19 ["Providers"]
       68 GETTABLEKS                       R14 R15 K20 ["Style"]
       70 GETTABLEKS                       R13 R14 K21 ["useTokens"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R15 R0 K15 ["Utility"]
       77 GETTABLEKS                       R14 R15 K22 ["withCommonProps"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K15 ["Utility"]
       84 GETTABLEKS                       R15 R16 K23 ["withDefaults"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R17 R0 K24 ["Enums"]
       91 GETTABLEKS                       R16 R17 K25 ["InputSize"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R18 R0 K24 ["Enums"]
       98 GETTABLEKS                       R17 R18 K26 ["InputVariant"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R19 R0 K15 ["Utility"]
      105 GETTABLEKS                       R18 R19 K27 ["getInputTextSize"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R20 R0 K24 ["Enums"]
      112 GETTABLEKS                       R19 R20 K28 ["ControlState"]
      114 CALL                             R18 1 1
      115 DUPTABLE                         R19 K31 [{"size", "testId"}]
      116 GETTABLEKS                       R20 R15 K32 ["Large"]
      118 SETTABLEKS                       R20 R19 K29 ["size"]
      120 LOADK                            R20 K33 ["--foundation-text-input"]
      121 SETTABLEKS                       R20 R19 K30 ["testId"]
      123 DUPCLOSURE                       R20 K34 [PROTO_1]
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R5
      137 GETTABLEKS                       R21 R2 K35 ["memo"]
      139 GETTABLEKS                       R22 R2 K36 ["forwardRef"]
      141 MOVE                             R23 R20
      142 CALL                             R22 1 -1
      143 CALL                             R21 -1 -1
      144 RETURN                           R21 -1
