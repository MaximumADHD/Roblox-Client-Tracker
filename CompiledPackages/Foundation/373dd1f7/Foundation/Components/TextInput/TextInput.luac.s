PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K18 [{"ref", "hasError", "isDisabled", "text", "textInputType", "focusBehavior", "size", "variant", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["hasError"]
       10 SETTABLEKS                       R4 R3 K2 ["hasError"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["isDisabled"]
       15 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["text"]
       20 SETTABLEKS                       R4 R3 K4 ["text"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K5 ["textInputType"]
       25 SETTABLEKS                       R4 R3 K5 ["textInputType"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K19 ["FoundationTextInputFocusBehavior"]
       30 JUMPIFNOT                        R5 ; [+4]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K6 ["focusBehavior"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K6 ["focusBehavior"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R4 R5 K7 ["size"]
       41 SETTABLEKS                       R4 R3 K7 ["size"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R5 R6 K20 ["FoundationTextInputVariant"]
       46 JUMPIFNOT                        R5 ; [+4]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R4 R5 K8 ["variant"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K8 ["variant"]
       54 DUPTABLE                         R4 K23 [{"left", "right"}]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R6 R7 K24 ["innerContainer"]
       58 GETTABLEKS                       R5 R6 K9 ["horizontalPadding"]
       60 SETTABLEKS                       R5 R4 K21 ["left"]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K24 ["innerContainer"]
       65 GETTABLEKS                       R5 R6 K9 ["horizontalPadding"]
       67 SETTABLEKS                       R5 R4 K22 ["right"]
       69 SETTABLEKS                       R4 R3 K9 ["horizontalPadding"]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R4 R5 K10 ["onChanged"]
       74 SETTABLEKS                       R4 R3 K10 ["onChanged"]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R4 R5 K25 ["onFocusGained"]
       79 SETTABLEKS                       R4 R3 K11 ["onFocus"]
       81 GETUPVAL                         R5 2
       82 GETTABLEKS                       R4 R5 K12 ["onFocusLost"]
       84 SETTABLEKS                       R4 R3 K12 ["onFocusLost"]
       86 GETUPVAL                         R5 2
       87 GETTABLEKS                       R4 R5 K13 ["onReturnPressed"]
       89 SETTABLEKS                       R4 R3 K13 ["onReturnPressed"]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R4 R5 K14 ["placeholder"]
       94 SETTABLEKS                       R4 R3 K14 ["placeholder"]
       96 GETUPVAL                         R6 2
       97 GETTABLEKS                       R5 R6 K26 ["leadingIcon"]
       99 JUMPIFNOT                        R5 ; [+35]
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R4 R5 K0 ["createElement"]
      103 GETUPVAL                         R5 5
      104 DUPTABLE                         R6 K28 [{"tag"}]
      105 LOADK                            R7 K29 ["row align-y-center size-0-full auto-x"]
      106 SETTABLEKS                       R7 R6 K27 ["tag"]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R7 R8 K0 ["createElement"]
      111 GETUPVAL                         R8 6
      112 DUPTABLE                         R9 K32 [{"name", "style", "size"}]
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R10 R11 K26 ["leadingIcon"]
      116 SETTABLEKS                       R10 R9 K30 ["name"]
      118 GETUPVAL                         R12 4
      119 GETTABLEKS                       R11 R12 K33 ["icon"]
      121 GETTABLEKS                       R10 R11 K31 ["style"]
      123 SETTABLEKS                       R10 R9 K31 ["style"]
      125 GETUPVAL                         R12 4
      126 GETTABLEKS                       R11 R12 K33 ["icon"]
      128 GETTABLEKS                       R10 R11 K7 ["size"]
      130 SETTABLEKS                       R10 R9 K7 ["size"]
      132 CALL                             R7 2 -1
      133 CALL                             R4 -1 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R4
      136 SETTABLEKS                       R4 R3 K15 ["leadingElement"]
      138 GETUPVAL                         R6 2
      139 GETTABLEKS                       R5 R6 K34 ["iconTrailing"]
      141 JUMPIFNOT                        R5 ; [+108]
      142 GETUPVAL                         R5 0
      143 GETTABLEKS                       R4 R5 K0 ["createElement"]
      145 GETUPVAL                         R5 5
      146 DUPTABLE                         R6 K28 [{"tag"}]
      147 LOADK                            R7 K29 ["row align-y-center size-0-full auto-x"]
      148 SETTABLEKS                       R7 R6 K27 ["tag"]
      150 GETUPVAL                         R10 2
      151 GETTABLEKS                       R9 R10 K34 ["iconTrailing"]
      153 FASTCALL1                        TYPE R9 ; [+2]
      154 GETIMPORT                        R8 K36 [type]
      156 CALL                             R8 1 1
      157 JUMPIFNOTEQKS                    R8 K37 ["table"] ; [+50]
      159 GETUPVAL                         R10 2
      160 GETTABLEKS                       R9 R10 K34 ["iconTrailing"]
      162 GETTABLEKS                       R8 R9 K38 ["onActivated"]
      164 JUMPIFNOT                        R8 ; [+43]
      165 GETUPVAL                         R8 0
      166 GETTABLEKS                       R7 R8 K0 ["createElement"]
      168 GETUPVAL                         R8 7
      169 DUPTABLE                         R9 K39 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      170 GETUPVAL                         R12 2
      171 GETTABLEKS                       R11 R12 K34 ["iconTrailing"]
      173 GETTABLEKS                       R10 R11 K38 ["onActivated"]
      175 SETTABLEKS                       R10 R9 K38 ["onActivated"]
      177 GETUPVAL                         R11 2
      178 GETTABLEKS                       R10 R11 K3 ["isDisabled"]
      180 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      182 GETUPVAL                         R12 4
      183 GETTABLEKS                       R11 R12 K33 ["icon"]
      185 GETTABLEKS                       R10 R11 K7 ["size"]
      187 SETTABLEKS                       R10 R9 K7 ["size"]
      189 GETUPVAL                         R12 2
      190 GETTABLEKS                       R11 R12 K34 ["iconTrailing"]
      192 GETTABLEKS                       R10 R11 K30 ["name"]
      194 SETTABLEKS                       R10 R9 K33 ["icon"]
      196 LOADK                            R11 K40 ["%*--trailing-icon-button"]
      197 GETUPVAL                         R14 2
      198 GETTABLEKS                       R13 R14 K17 ["testId"]
      200 NAMECALL                         R11 R11 K41 ["format"]
      202 CALL                             R11 2 1
      203 MOVE                             R10 R11
      204 SETTABLEKS                       R10 R9 K17 ["testId"]
      206 CALL                             R7 2 1
      207 JUMP                             ; [+40]
      208 GETUPVAL                         R8 0
      209 GETTABLEKS                       R7 R8 K0 ["createElement"]
      211 GETUPVAL                         R8 6
      212 DUPTABLE                         R9 K32 [{"name", "style", "size"}]
      213 GETUPVAL                         R13 2
      214 GETTABLEKS                       R12 R13 K34 ["iconTrailing"]
      216 FASTCALL1                        TYPE R12 ; [+2]
      217 GETIMPORT                        R11 K36 [type]
      219 CALL                             R11 1 1
      220 JUMPIFNOTEQKS                    R11 K37 ["table"] ; [+7]
      222 GETUPVAL                         R12 2
      223 GETTABLEKS                       R11 R12 K34 ["iconTrailing"]
      225 GETTABLEKS                       R10 R11 K30 ["name"]
      227 JUMP                             ; [+3]
      228 GETUPVAL                         R11 2
      229 GETTABLEKS                       R10 R11 K34 ["iconTrailing"]
      231 SETTABLEKS                       R10 R9 K30 ["name"]
      233 GETUPVAL                         R12 4
      234 GETTABLEKS                       R11 R12 K33 ["icon"]
      236 GETTABLEKS                       R10 R11 K31 ["style"]
      238 SETTABLEKS                       R10 R9 K31 ["style"]
      240 GETUPVAL                         R12 4
      241 GETTABLEKS                       R11 R12 K33 ["icon"]
      243 GETTABLEKS                       R10 R11 K7 ["size"]
      245 SETTABLEKS                       R10 R9 K7 ["size"]
      247 CALL                             R7 2 1
      248 CALL                             R4 3 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R4
      251 SETTABLEKS                       R4 R3 K16 ["trailingElement"]
      253 LOADK                            R5 K42 ["%*--internal-text-input"]
      254 GETUPVAL                         R8 2
      255 GETTABLEKS                       R7 R8 K17 ["testId"]
      257 NAMECALL                         R5 R5 K41 ["format"]
      259 CALL                             R5 2 1
      260 MOVE                             R4 R5
      261 SETTABLEKS                       R4 R3 K17 ["testId"]
      263 CALL                             R1 2 -1
      264 RETURN                           R1 -1

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
       25 DUPTABLE                         R9 K12 [{"width", "ref", "label", "size", "isRequired", "hasError", "hint", "textBoxRef", "input"}]
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
       46 GETTABLEKS                       R10 R2 K8 ["hasError"]
       48 SETTABLEKS                       R10 R9 K8 ["hasError"]
       50 GETTABLEKS                       R10 R2 K9 ["hint"]
       52 SETTABLEKS                       R10 R9 K9 ["hint"]
       54 GETTABLEKS                       R10 R2 K10 ["textBoxRef"]
       56 SETTABLEKS                       R10 R9 K10 ["textBoxRef"]
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          UPVAL U12
       67 SETTABLEKS                       R10 R9 K11 ["input"]
       69 CALL                             R7 2 -1
       70 CALL                             R5 -1 -1
       71 RETURN                           R5 -1

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
