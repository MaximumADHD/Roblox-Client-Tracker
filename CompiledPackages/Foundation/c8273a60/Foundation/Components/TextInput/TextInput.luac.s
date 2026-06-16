PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K24 [{"ref", "hasError", "isDisabled", "hasClearButton", "text", "textInputType", "focusBehavior", "size", "variant", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["hasError"]
       10 SETTABLEKS                       R4 R3 K2 ["hasError"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["isDisabled"]
       15 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["hasClearButton"]
       20 SETTABLEKS                       R4 R3 K4 ["hasClearButton"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["text"]
       25 SETTABLEKS                       R4 R3 K5 ["text"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K6 ["textInputType"]
       30 SETTABLEKS                       R4 R3 K6 ["textInputType"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K7 ["focusBehavior"]
       35 SETTABLEKS                       R4 R3 K7 ["focusBehavior"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K8 ["size"]
       40 SETTABLEKS                       R4 R3 K8 ["size"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K9 ["variant"]
       45 SETTABLEKS                       R4 R3 K9 ["variant"]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K25 ["FoundationInputSelectionProps"]
       50 JUMPIFNOT                        R5 ; [+4]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K10 ["Selectable"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K10 ["Selectable"]
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R5 R5 K25 ["FoundationInputSelectionProps"]
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R4 R4 K11 ["NextSelectionUp"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R4
       67 SETTABLEKS                       R4 R3 K11 ["NextSelectionUp"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K25 ["FoundationInputSelectionProps"]
       72 JUMPIFNOT                        R5 ; [+4]
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K12 ["NextSelectionDown"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R4
       78 SETTABLEKS                       R4 R3 K12 ["NextSelectionDown"]
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R5 R5 K25 ["FoundationInputSelectionProps"]
       83 JUMPIFNOT                        R5 ; [+4]
       84 GETUPVAL                         R4 2
       85 GETTABLEKS                       R4 R4 K13 ["NextSelectionLeft"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R4
       89 SETTABLEKS                       R4 R3 K13 ["NextSelectionLeft"]
       91 GETUPVAL                         R5 3
       92 GETTABLEKS                       R5 R5 K25 ["FoundationInputSelectionProps"]
       94 JUMPIFNOT                        R5 ; [+4]
       95 GETUPVAL                         R4 2
       96 GETTABLEKS                       R4 R4 K14 ["NextSelectionRight"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R4
      100 SETTABLEKS                       R4 R3 K14 ["NextSelectionRight"]
      102 DUPTABLE                         R4 K28 [{"left", "right"}]
      103 GETUPVAL                         R5 4
      104 GETTABLEKS                       R5 R5 K29 ["container"]
      106 GETTABLEKS                       R5 R5 K15 ["horizontalPadding"]
      108 SETTABLEKS                       R5 R4 K26 ["left"]
      110 GETUPVAL                         R5 4
      111 GETTABLEKS                       R5 R5 K29 ["container"]
      113 GETTABLEKS                       R5 R5 K15 ["horizontalPadding"]
      115 SETTABLEKS                       R5 R4 K27 ["right"]
      117 SETTABLEKS                       R4 R3 K15 ["horizontalPadding"]
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R4 R4 K16 ["onChanged"]
      122 SETTABLEKS                       R4 R3 K16 ["onChanged"]
      124 GETUPVAL                         R4 2
      125 GETTABLEKS                       R4 R4 K30 ["onFocusGained"]
      127 SETTABLEKS                       R4 R3 K17 ["onFocus"]
      129 GETUPVAL                         R4 2
      130 GETTABLEKS                       R4 R4 K18 ["onFocusLost"]
      132 SETTABLEKS                       R4 R3 K18 ["onFocusLost"]
      134 GETUPVAL                         R4 2
      135 GETTABLEKS                       R4 R4 K19 ["onReturnPressed"]
      137 SETTABLEKS                       R4 R3 K19 ["onReturnPressed"]
      139 GETUPVAL                         R4 2
      140 GETTABLEKS                       R4 R4 K20 ["placeholder"]
      142 SETTABLEKS                       R4 R3 K20 ["placeholder"]
      144 GETUPVAL                         R5 2
      145 GETTABLEKS                       R5 R5 K31 ["leadingIcon"]
      147 JUMPIFNOT                        R5 ; [+35]
      148 GETUPVAL                         R4 0
      149 GETTABLEKS                       R4 R4 K0 ["createElement"]
      151 GETUPVAL                         R5 5
      152 DUPTABLE                         R6 K33 [{"tag"}]
      153 LOADK                            R7 K34 ["row align-y-center size-0-full auto-x"]
      154 SETTABLEKS                       R7 R6 K32 ["tag"]
      156 GETUPVAL                         R7 0
      157 GETTABLEKS                       R7 R7 K0 ["createElement"]
      159 GETUPVAL                         R8 6
      160 DUPTABLE                         R9 K37 [{"name", "style", "size"}]
      161 GETUPVAL                         R10 2
      162 GETTABLEKS                       R10 R10 K31 ["leadingIcon"]
      164 SETTABLEKS                       R10 R9 K35 ["name"]
      166 GETUPVAL                         R10 4
      167 GETTABLEKS                       R10 R10 K38 ["icon"]
      169 GETTABLEKS                       R10 R10 K36 ["style"]
      171 SETTABLEKS                       R10 R9 K36 ["style"]
      173 GETUPVAL                         R10 4
      174 GETTABLEKS                       R10 R10 K38 ["icon"]
      176 GETTABLEKS                       R10 R10 K8 ["size"]
      178 SETTABLEKS                       R10 R9 K8 ["size"]
      180 CALL                             R7 2 -1
      181 CALL                             R4 -1 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R4
      184 SETTABLEKS                       R4 R3 K21 ["leadingElement"]
      186 GETUPVAL                         R5 2
      187 GETTABLEKS                       R5 R5 K39 ["iconTrailing"]
      189 JUMPIFNOT                        R5 ; [+108]
      190 GETUPVAL                         R4 0
      191 GETTABLEKS                       R4 R4 K0 ["createElement"]
      193 GETUPVAL                         R5 5
      194 DUPTABLE                         R6 K33 [{"tag"}]
      195 LOADK                            R7 K34 ["row align-y-center size-0-full auto-x"]
      196 SETTABLEKS                       R7 R6 K32 ["tag"]
      198 GETUPVAL                         R9 2
      199 GETTABLEKS                       R9 R9 K39 ["iconTrailing"]
      201 FASTCALL1                        TYPE R9 ; [+2]
      202 GETIMPORT                        R8 K41 [type]
      204 CALL                             R8 1 1
      205 JUMPIFNOTEQKS                    R8 K42 ["table"] ; [+50]
      207 GETUPVAL                         R8 2
      208 GETTABLEKS                       R8 R8 K39 ["iconTrailing"]
      210 GETTABLEKS                       R8 R8 K43 ["onActivated"]
      212 JUMPIFNOT                        R8 ; [+43]
      213 GETUPVAL                         R7 0
      214 GETTABLEKS                       R7 R7 K0 ["createElement"]
      216 GETUPVAL                         R8 7
      217 DUPTABLE                         R9 K44 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      218 GETUPVAL                         R10 2
      219 GETTABLEKS                       R10 R10 K39 ["iconTrailing"]
      221 GETTABLEKS                       R10 R10 K43 ["onActivated"]
      223 SETTABLEKS                       R10 R9 K43 ["onActivated"]
      225 GETUPVAL                         R10 2
      226 GETTABLEKS                       R10 R10 K3 ["isDisabled"]
      228 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      230 GETUPVAL                         R10 4
      231 GETTABLEKS                       R10 R10 K38 ["icon"]
      233 GETTABLEKS                       R10 R10 K8 ["size"]
      235 SETTABLEKS                       R10 R9 K8 ["size"]
      237 GETUPVAL                         R10 2
      238 GETTABLEKS                       R10 R10 K39 ["iconTrailing"]
      240 GETTABLEKS                       R10 R10 K35 ["name"]
      242 SETTABLEKS                       R10 R9 K38 ["icon"]
      244 LOADK                            R11 K45 ["%*--trailing-icon-button"]
      245 GETUPVAL                         R13 2
      246 GETTABLEKS                       R13 R13 K23 ["testId"]
      248 NAMECALL                         R11 R11 K46 ["format"]
      250 CALL                             R11 2 1
      251 MOVE                             R10 R11
      252 SETTABLEKS                       R10 R9 K23 ["testId"]
      254 CALL                             R7 2 1
      255 JUMP                             ; [+40]
      256 GETUPVAL                         R7 0
      257 GETTABLEKS                       R7 R7 K0 ["createElement"]
      259 GETUPVAL                         R8 6
      260 DUPTABLE                         R9 K37 [{"name", "style", "size"}]
      261 GETUPVAL                         R12 2
      262 GETTABLEKS                       R12 R12 K39 ["iconTrailing"]
      264 FASTCALL1                        TYPE R12 ; [+2]
      265 GETIMPORT                        R11 K41 [type]
      267 CALL                             R11 1 1
      268 JUMPIFNOTEQKS                    R11 K42 ["table"] ; [+7]
      270 GETUPVAL                         R10 2
      271 GETTABLEKS                       R10 R10 K39 ["iconTrailing"]
      273 GETTABLEKS                       R10 R10 K35 ["name"]
      275 JUMP                             ; [+3]
      276 GETUPVAL                         R10 2
      277 GETTABLEKS                       R10 R10 K39 ["iconTrailing"]
      279 SETTABLEKS                       R10 R9 K35 ["name"]
      281 GETUPVAL                         R10 4
      282 GETTABLEKS                       R10 R10 K38 ["icon"]
      284 GETTABLEKS                       R10 R10 K36 ["style"]
      286 SETTABLEKS                       R10 R9 K36 ["style"]
      288 GETUPVAL                         R10 4
      289 GETTABLEKS                       R10 R10 K38 ["icon"]
      291 GETTABLEKS                       R10 R10 K8 ["size"]
      293 SETTABLEKS                       R10 R9 K8 ["size"]
      295 CALL                             R7 2 1
      296 CALL                             R4 3 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R4
      299 SETTABLEKS                       R4 R3 K22 ["trailingElement"]
      301 LOADK                            R5 K47 ["%*--internal-text-input"]
      302 GETUPVAL                         R7 2
      303 GETTABLEKS                       R7 R7 K23 ["testId"]
      305 NAMECALL                         R5 R5 K46 ["format"]
      307 CALL                             R5 2 1
      308 MOVE                             R4 R5
      309 SETTABLEKS                       R4 R3 K23 ["testId"]
      311 CALL                             R1 2 -1
      312 RETURN                           R1 -1

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
