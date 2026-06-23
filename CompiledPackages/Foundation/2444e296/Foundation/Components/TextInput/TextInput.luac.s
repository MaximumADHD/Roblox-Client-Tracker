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
      152 JUMPIFNOT                        R5 ; [+35]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K0 ["createElement"]
      156 GETUPVAL                         R5 5
      157 DUPTABLE                         R6 K34 [{"tag"}]
      158 LOADK                            R7 K35 ["row align-y-center size-0-full auto-x"]
      159 SETTABLEKS                       R7 R6 K33 ["tag"]
      161 GETUPVAL                         R7 0
      162 GETTABLEKS                       R7 R7 K0 ["createElement"]
      164 GETUPVAL                         R8 6
      165 DUPTABLE                         R9 K38 [{"name", "style", "size"}]
      166 GETUPVAL                         R10 2
      167 GETTABLEKS                       R10 R10 K32 ["leadingIcon"]
      169 SETTABLEKS                       R10 R9 K36 ["name"]
      171 GETUPVAL                         R10 4
      172 GETTABLEKS                       R10 R10 K39 ["icon"]
      174 GETTABLEKS                       R10 R10 K37 ["style"]
      176 SETTABLEKS                       R10 R9 K37 ["style"]
      178 GETUPVAL                         R10 4
      179 GETTABLEKS                       R10 R10 K39 ["icon"]
      181 GETTABLEKS                       R10 R10 K9 ["size"]
      183 SETTABLEKS                       R10 R9 K9 ["size"]
      185 CALL                             R7 2 -1
      186 CALL                             R4 -1 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R4
      189 SETTABLEKS                       R4 R3 K22 ["leadingElement"]
      191 GETUPVAL                         R5 2
      192 GETTABLEKS                       R5 R5 K40 ["iconTrailing"]
      194 JUMPIFNOT                        R5 ; [+108]
      195 GETUPVAL                         R4 0
      196 GETTABLEKS                       R4 R4 K0 ["createElement"]
      198 GETUPVAL                         R5 5
      199 DUPTABLE                         R6 K34 [{"tag"}]
      200 LOADK                            R7 K35 ["row align-y-center size-0-full auto-x"]
      201 SETTABLEKS                       R7 R6 K33 ["tag"]
      203 GETUPVAL                         R9 2
      204 GETTABLEKS                       R9 R9 K40 ["iconTrailing"]
      206 FASTCALL1                        TYPE R9 ; [+2]
      207 GETIMPORT                        R8 K42 [type]
      209 CALL                             R8 1 1
      210 JUMPIFNOTEQKS                    R8 K43 ["table"] ; [+50]
      212 GETUPVAL                         R8 2
      213 GETTABLEKS                       R8 R8 K40 ["iconTrailing"]
      215 GETTABLEKS                       R8 R8 K44 ["onActivated"]
      217 JUMPIFNOT                        R8 ; [+43]
      218 GETUPVAL                         R7 0
      219 GETTABLEKS                       R7 R7 K0 ["createElement"]
      221 GETUPVAL                         R8 7
      222 DUPTABLE                         R9 K45 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      223 GETUPVAL                         R10 2
      224 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      226 GETTABLEKS                       R10 R10 K44 ["onActivated"]
      228 SETTABLEKS                       R10 R9 K44 ["onActivated"]
      230 GETUPVAL                         R10 2
      231 GETTABLEKS                       R10 R10 K4 ["isDisabled"]
      233 SETTABLEKS                       R10 R9 K4 ["isDisabled"]
      235 GETUPVAL                         R10 4
      236 GETTABLEKS                       R10 R10 K39 ["icon"]
      238 GETTABLEKS                       R10 R10 K9 ["size"]
      240 SETTABLEKS                       R10 R9 K9 ["size"]
      242 GETUPVAL                         R10 2
      243 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      245 GETTABLEKS                       R10 R10 K36 ["name"]
      247 SETTABLEKS                       R10 R9 K39 ["icon"]
      249 LOADK                            R11 K46 ["%*--trailing-icon-button"]
      250 GETUPVAL                         R13 2
      251 GETTABLEKS                       R13 R13 K24 ["testId"]
      253 NAMECALL                         R11 R11 K47 ["format"]
      255 CALL                             R11 2 1
      256 MOVE                             R10 R11
      257 SETTABLEKS                       R10 R9 K24 ["testId"]
      259 CALL                             R7 2 1
      260 JUMP                             ; [+40]
      261 GETUPVAL                         R7 0
      262 GETTABLEKS                       R7 R7 K0 ["createElement"]
      264 GETUPVAL                         R8 6
      265 DUPTABLE                         R9 K38 [{"name", "style", "size"}]
      266 GETUPVAL                         R12 2
      267 GETTABLEKS                       R12 R12 K40 ["iconTrailing"]
      269 FASTCALL1                        TYPE R12 ; [+2]
      270 GETIMPORT                        R11 K42 [type]
      272 CALL                             R11 1 1
      273 JUMPIFNOTEQKS                    R11 K43 ["table"] ; [+7]
      275 GETUPVAL                         R10 2
      276 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      278 GETTABLEKS                       R10 R10 K36 ["name"]
      280 JUMP                             ; [+3]
      281 GETUPVAL                         R10 2
      282 GETTABLEKS                       R10 R10 K40 ["iconTrailing"]
      284 SETTABLEKS                       R10 R9 K36 ["name"]
      286 GETUPVAL                         R10 4
      287 GETTABLEKS                       R10 R10 K39 ["icon"]
      289 GETTABLEKS                       R10 R10 K37 ["style"]
      291 SETTABLEKS                       R10 R9 K37 ["style"]
      293 GETUPVAL                         R10 4
      294 GETTABLEKS                       R10 R10 K39 ["icon"]
      296 GETTABLEKS                       R10 R10 K9 ["size"]
      298 SETTABLEKS                       R10 R9 K9 ["size"]
      300 CALL                             R7 2 1
      301 CALL                             R4 3 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R4
      304 SETTABLEKS                       R4 R3 K23 ["trailingElement"]
      306 LOADK                            R5 K48 ["%*--internal-text-input"]
      307 GETUPVAL                         R7 2
      308 GETTABLEKS                       R7 R7 K24 ["testId"]
      310 NAMECALL                         R5 R5 K47 ["format"]
      312 CALL                             R5 2 1
      313 MOVE                             R4 R5
      314 SETTABLEKS                       R4 R3 K24 ["testId"]
      316 CALL                             R1 2 -1
      317 RETURN                           R1 -1

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
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R5
      137 GETTABLEKS                       R21 R2 K35 ["memo"]
      139 GETTABLEKS                       R22 R2 K36 ["forwardRef"]
      141 MOVE                             R23 R20
      142 CALL                             R22 1 -1
      143 CALL                             R21 -1 -1
      144 RETURN                           R21 -1
