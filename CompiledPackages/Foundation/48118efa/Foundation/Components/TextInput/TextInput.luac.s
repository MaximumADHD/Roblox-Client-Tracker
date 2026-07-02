PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K25 [{"ref", "inputRef", "hasError", "isDisabled", "hasClearButton", "text", "textInputType", "focusBehavior", "size", "variant", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["inputRef"]
       10 SETTABLEKS                       R4 R3 K2 ["inputRef"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["hasError"]
       15 SETTABLEKS                       R4 R3 K3 ["hasError"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       20 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["hasClearButton"]
       25 SETTABLEKS                       R4 R3 K5 ["hasClearButton"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K6 ["text"]
       30 SETTABLEKS                       R4 R3 K6 ["text"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K7 ["textInputType"]
       35 SETTABLEKS                       R4 R3 K7 ["textInputType"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K8 ["focusBehavior"]
       40 SETTABLEKS                       R4 R3 K8 ["focusBehavior"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K9 ["size"]
       45 SETTABLEKS                       R4 R3 K9 ["size"]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K10 ["variant"]
       50 SETTABLEKS                       R4 R3 K10 ["variant"]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K26 ["FoundationInputSelectionProps"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K11 ["Selectable"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K11 ["Selectable"]
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K26 ["FoundationInputSelectionProps"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R4 R4 K12 ["NextSelectionUp"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K12 ["NextSelectionUp"]
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R5 R5 K26 ["FoundationInputSelectionProps"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R4 R4 K13 ["NextSelectionDown"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K13 ["NextSelectionDown"]
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R5 R5 K26 ["FoundationInputSelectionProps"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 2
       90 GETTABLEKS                       R4 R4 K14 ["NextSelectionLeft"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K14 ["NextSelectionLeft"]
       96 GETUPVAL                         R5 3
       97 GETTABLEKS                       R5 R5 K26 ["FoundationInputSelectionProps"]
       99 JUMPIFNOT                        R5 ; [+4]
      100 GETUPVAL                         R4 2
      101 GETTABLEKS                       R4 R4 K15 ["NextSelectionRight"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R4
      105 SETTABLEKS                       R4 R3 K15 ["NextSelectionRight"]
      107 DUPTABLE                         R4 K29 [{"left", "right"}]
      108 GETUPVAL                         R5 4
      109 GETTABLEKS                       R5 R5 K30 ["container"]
      111 GETTABLEKS                       R5 R5 K16 ["horizontalPadding"]
      113 SETTABLEKS                       R5 R4 K27 ["left"]
      115 GETUPVAL                         R5 4
      116 GETTABLEKS                       R5 R5 K30 ["container"]
      118 GETTABLEKS                       R5 R5 K16 ["horizontalPadding"]
      120 SETTABLEKS                       R5 R4 K28 ["right"]
      122 SETTABLEKS                       R4 R3 K16 ["horizontalPadding"]
      124 GETUPVAL                         R4 2
      125 GETTABLEKS                       R4 R4 K17 ["onChanged"]
      127 SETTABLEKS                       R4 R3 K17 ["onChanged"]
      129 GETUPVAL                         R4 2
      130 GETTABLEKS                       R4 R4 K31 ["onFocusGained"]
      132 SETTABLEKS                       R4 R3 K18 ["onFocus"]
      134 GETUPVAL                         R4 2
      135 GETTABLEKS                       R4 R4 K19 ["onFocusLost"]
      137 SETTABLEKS                       R4 R3 K19 ["onFocusLost"]
      139 GETUPVAL                         R4 2
      140 GETTABLEKS                       R4 R4 K20 ["onReturnPressed"]
      142 SETTABLEKS                       R4 R3 K20 ["onReturnPressed"]
      144 GETUPVAL                         R4 2
      145 GETTABLEKS                       R4 R4 K21 ["placeholder"]
      147 SETTABLEKS                       R4 R3 K21 ["placeholder"]
      149 GETUPVAL                         R5 2
      150 GETTABLEKS                       R5 R5 K32 ["leadingIcon"]
      152 JUMPIFNOT                        R5 ; [+32]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K0 ["createElement"]
      156 GETUPVAL                         R5 5
      157 DUPTABLE                         R6 K35 [{["tag"] = "row align-y-center size-0-full auto-x"}]
      158 GETUPVAL                         R7 0
      159 GETTABLEKS                       R7 R7 K0 ["createElement"]
      161 GETUPVAL                         R8 6
      162 DUPTABLE                         R9 K38 [{"name", "style", "size"}]
      163 GETUPVAL                         R10 2
      164 GETTABLEKS                       R10 R10 K32 ["leadingIcon"]
      166 SETTABLEKS                       R10 R9 K36 ["name"]
      168 GETUPVAL                         R10 4
      169 GETTABLEKS                       R10 R10 K39 ["icon"]
      171 GETTABLEKS                       R10 R10 K37 ["style"]
      173 SETTABLEKS                       R10 R9 K37 ["style"]
      175 GETUPVAL                         R10 4
      176 GETTABLEKS                       R10 R10 K39 ["icon"]
      178 GETTABLEKS                       R10 R10 K9 ["size"]
      180 SETTABLEKS                       R10 R9 K9 ["size"]
      182 CALL                             R7 2 -1
      183 CALL                             R4 -1 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R4
      186 SETTABLEKS                       R4 R3 K22 ["leadingElement"]
      188 GETUPVAL                         R5 2
      189 GETTABLEKS                       R5 R5 K40 ["iconTrailing"]
      191 JUMPIFNOT                        R5 ; [+105]
      192 GETUPVAL                         R4 0
      193 GETTABLEKS                       R4 R4 K0 ["createElement"]
      195 GETUPVAL                         R5 5
      196 DUPTABLE                         R6 K35 [{["tag"] = "row align-y-center size-0-full auto-x"}]
      197 GETUPVAL                         R9 2
      198 GETTABLEKS                       R9 R9 K40 ["iconTrailing"]
      200 FASTCALL1                        TYPE R9 ; [+2]
      201 GETIMPORT                        R8 K42 [type]
      203 CALL                             R8 1 1
      204 JUMPIFNOTEQKS                    R8 K43 ["table"] ; [+50]
      206 GETUPVAL                         R8 2
      207 GETTABLEKS                       R8 R8 K40 ["iconTrailing"]
      209 GETTABLEKS                       R8 R8 K44 ["onActivated"]
      211 JUMPIFNOT                        R8 ; [+43]
      212 GETUPVAL                         R7 0
      213 GETTABLEKS                       R7 R7 K0 ["createElement"]
      215 GETUPVAL                         R8 7
      216 DUPTABLE                         R9 K45 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      217 GETUPVAL                         R10 2
      218 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      220 GETTABLEKS                       R10 R10 K44 ["onActivated"]
      222 SETTABLEKS                       R10 R9 K44 ["onActivated"]
      224 GETUPVAL                         R10 2
      225 GETTABLEKS                       R10 R10 K4 ["isDisabled"]
      227 SETTABLEKS                       R10 R9 K4 ["isDisabled"]
      229 GETUPVAL                         R10 4
      230 GETTABLEKS                       R10 R10 K39 ["icon"]
      232 GETTABLEKS                       R10 R10 K9 ["size"]
      234 SETTABLEKS                       R10 R9 K9 ["size"]
      236 GETUPVAL                         R10 2
      237 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      239 GETTABLEKS                       R10 R10 K36 ["name"]
      241 SETTABLEKS                       R10 R9 K39 ["icon"]
      243 LOADK                            R11 K46 ["%*--trailing-icon-button"]
      244 GETUPVAL                         R13 2
      245 GETTABLEKS                       R13 R13 K24 ["testId"]
      247 NAMECALL                         R11 R11 K47 ["format"]
      249 CALL                             R11 2 1
      250 MOVE                             R10 R11
      251 SETTABLEKS                       R10 R9 K24 ["testId"]
      253 CALL                             R7 2 1
      254 JUMP                             ; [+40]
      255 GETUPVAL                         R7 0
      256 GETTABLEKS                       R7 R7 K0 ["createElement"]
      258 GETUPVAL                         R8 6
      259 DUPTABLE                         R9 K38 [{"name", "style", "size"}]
      260 GETUPVAL                         R12 2
      261 GETTABLEKS                       R12 R12 K40 ["iconTrailing"]
      263 FASTCALL1                        TYPE R12 ; [+2]
      264 GETIMPORT                        R11 K42 [type]
      266 CALL                             R11 1 1
      267 JUMPIFNOTEQKS                    R11 K43 ["table"] ; [+7]
      269 GETUPVAL                         R10 2
      270 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      272 GETTABLEKS                       R10 R10 K36 ["name"]
      274 JUMP                             ; [+3]
      275 GETUPVAL                         R10 2
      276 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      278 SETTABLEKS                       R10 R9 K36 ["name"]
      280 GETUPVAL                         R10 4
      281 GETTABLEKS                       R10 R10 K39 ["icon"]
      283 GETTABLEKS                       R10 R10 K37 ["style"]
      285 SETTABLEKS                       R10 R9 K37 ["style"]
      287 GETUPVAL                         R10 4
      288 GETTABLEKS                       R10 R10 K39 ["icon"]
      290 GETTABLEKS                       R10 R10 K9 ["size"]
      292 SETTABLEKS                       R10 R9 K9 ["size"]
      294 CALL                             R7 2 1
      295 CALL                             R4 3 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R4
      298 SETTABLEKS                       R4 R3 K23 ["trailingElement"]
      300 LOADK                            R5 K48 ["%*--internal-text-input"]
      301 GETUPVAL                         R7 2
      302 GETTABLEKS                       R7 R7 K24 ["testId"]
      304 NAMECALL                         R5 R5 K47 ["format"]
      306 CALL                             R5 2 1
      307 MOVE                             R4 R5
      308 SETTABLEKS                       R4 R3 K24 ["testId"]
      310 CALL                             R1 2 -1
      311 RETURN                           R1 -1

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
       14 GETTABLEKS                       R5 R5 K2 ["createElement"]
       16 GETUPVAL                         R6 5
       17 GETUPVAL                         R7 6
       18 MOVE                             R8 R2
       19 DUPTABLE                         R9 K12 [{"width", "ref", "label", "size", "isRequired", "isDisabled", "hasError", "hint", "textBoxRef", "input"}]
       20 GETTABLEKS                       R10 R2 K3 ["width"]
       22 SETTABLEKS                       R10 R9 K3 ["width"]
       24 SETTABLEKS                       R1 R9 K4 ["ref"]
       26 GETTABLEKS                       R10 R2 K5 ["label"]
       28 SETTABLEKS                       R10 R9 K5 ["label"]
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R11 R2 K0 ["size"]
       33 CALL                             R10 1 1
       34 SETTABLEKS                       R10 R9 K0 ["size"]
       36 GETTABLEKS                       R10 R2 K6 ["isRequired"]
       38 SETTABLEKS                       R10 R9 K6 ["isRequired"]
       40 GETTABLEKS                       R10 R2 K7 ["isDisabled"]
       42 SETTABLEKS                       R10 R9 K7 ["isDisabled"]
       44 GETTABLEKS                       R10 R2 K8 ["hasError"]
       46 SETTABLEKS                       R10 R9 K8 ["hasError"]
       48 GETTABLEKS                       R10 R2 K9 ["hint"]
       50 SETTABLEKS                       R10 R9 K9 ["hint"]
       52 GETTABLEKS                       R10 R2 K10 ["textBoxRef"]
       54 SETTABLEKS                       R10 R9 K10 ["textBoxRef"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          UPVAL U12
       65 SETTABLEKS                       R10 R9 K11 ["input"]
       67 CALL                             R7 2 -1
       68 CALL                             R5 -1 -1
       69 RETURN                           R5 -1

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
       38 GETTABLEKS                       R9 R0 K8 ["Components"]
       40 GETTABLEKS                       R9 R9 K13 ["Types"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R3 K14 ["View"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K15 ["Utility"]
       52 GETTABLEKS                       R11 R11 K16 ["Flags"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K8 ["Components"]
       59 GETTABLEKS                       R12 R12 K17 ["TextInput"]
       61 GETTABLEKS                       R12 R12 K18 ["useTextInputVariants"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K19 ["Providers"]
       68 GETTABLEKS                       R13 R13 K20 ["Style"]
       70 GETTABLEKS                       R13 R13 K21 ["useTokens"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K15 ["Utility"]
       77 GETTABLEKS                       R14 R14 K22 ["withCommonProps"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K15 ["Utility"]
       84 GETTABLEKS                       R15 R15 K23 ["withDefaults"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R0 K24 ["Enums"]
       91 GETTABLEKS                       R16 R16 K25 ["InputSize"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K24 ["Enums"]
       98 GETTABLEKS                       R17 R17 K26 ["InputVariant"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R0 K15 ["Utility"]
      105 GETTABLEKS                       R18 R18 K27 ["getInputTextSize"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R0 K24 ["Enums"]
      112 GETTABLEKS                       R19 R19 K28 ["ControlState"]
      114 CALL                             R18 1 1
      115 DUPTABLE                         R19 K32 [{["size"], ["testId"] = "--foundation-text-input"}]
      116 GETTABLEKS                       R20 R15 K33 ["Large"]
      118 SETTABLEKS                       R20 R19 K29 ["size"]
      120 DUPCLOSURE                       R20 K34 [PROTO_1]
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 GETTABLEKS                       R21 R2 K35 ["memo"]
      136 GETTABLEKS                       R22 R2 K36 ["forwardRef"]
      138 MOVE                             R23 R20
      139 CALL                             R22 1 -1
      140 CALL                             R21 -1 -1
      141 RETURN                           R21 -1
