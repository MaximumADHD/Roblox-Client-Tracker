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
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K25 ["FoundationInternalTextInputClearButton"]
       20 JUMPIFNOT                        R5 ; [+4]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K4 ["hasClearButton"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K4 ["hasClearButton"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K5 ["text"]
       31 SETTABLEKS                       R4 R3 K5 ["text"]
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K6 ["textInputType"]
       36 SETTABLEKS                       R4 R3 K6 ["textInputType"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K26 ["FoundationTextInputFocusBehavior"]
       41 JUMPIFNOT                        R5 ; [+4]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K7 ["focusBehavior"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K7 ["focusBehavior"]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K8 ["size"]
       52 SETTABLEKS                       R4 R3 K8 ["size"]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K27 ["FoundationTextInputVariant"]
       57 JUMPIFNOT                        R5 ; [+4]
       58 GETUPVAL                         R4 2
       59 GETTABLEKS                       R4 R4 K9 ["variant"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R4
       63 SETTABLEKS                       R4 R3 K9 ["variant"]
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R5 R5 K28 ["FoundationInputSelectionProps"]
       68 JUMPIFNOT                        R5 ; [+4]
       69 GETUPVAL                         R4 2
       70 GETTABLEKS                       R4 R4 K10 ["Selectable"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R4
       74 SETTABLEKS                       R4 R3 K10 ["Selectable"]
       76 GETUPVAL                         R5 3
       77 GETTABLEKS                       R5 R5 K28 ["FoundationInputSelectionProps"]
       79 JUMPIFNOT                        R5 ; [+4]
       80 GETUPVAL                         R4 2
       81 GETTABLEKS                       R4 R4 K11 ["NextSelectionUp"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R4
       85 SETTABLEKS                       R4 R3 K11 ["NextSelectionUp"]
       87 GETUPVAL                         R5 3
       88 GETTABLEKS                       R5 R5 K28 ["FoundationInputSelectionProps"]
       90 JUMPIFNOT                        R5 ; [+4]
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R4 R4 K12 ["NextSelectionDown"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R4
       96 SETTABLEKS                       R4 R3 K12 ["NextSelectionDown"]
       98 GETUPVAL                         R5 3
       99 GETTABLEKS                       R5 R5 K28 ["FoundationInputSelectionProps"]
      101 JUMPIFNOT                        R5 ; [+4]
      102 GETUPVAL                         R4 2
      103 GETTABLEKS                       R4 R4 K13 ["NextSelectionLeft"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R4
      107 SETTABLEKS                       R4 R3 K13 ["NextSelectionLeft"]
      109 GETUPVAL                         R5 3
      110 GETTABLEKS                       R5 R5 K28 ["FoundationInputSelectionProps"]
      112 JUMPIFNOT                        R5 ; [+4]
      113 GETUPVAL                         R4 2
      114 GETTABLEKS                       R4 R4 K14 ["NextSelectionRight"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R4
      118 SETTABLEKS                       R4 R3 K14 ["NextSelectionRight"]
      120 DUPTABLE                         R4 K31 [{"left", "right"}]
      121 GETUPVAL                         R6 3
      122 GETTABLEKS                       R6 R6 K32 ["FoundationInputVariantsConsolidateContainer"]
      124 JUMPIFNOT                        R6 ; [+4]
      125 GETUPVAL                         R5 4
      126 GETTABLEKS                       R5 R5 K33 ["container"]
      128 JUMP                             ; [+3]
      129 GETUPVAL                         R5 4
      130 GETTABLEKS                       R5 R5 K34 ["innerContainer"]
      132 GETTABLEKS                       R5 R5 K15 ["horizontalPadding"]
      134 SETTABLEKS                       R5 R4 K29 ["left"]
      136 GETUPVAL                         R6 3
      137 GETTABLEKS                       R6 R6 K32 ["FoundationInputVariantsConsolidateContainer"]
      139 JUMPIFNOT                        R6 ; [+4]
      140 GETUPVAL                         R5 4
      141 GETTABLEKS                       R5 R5 K33 ["container"]
      143 JUMP                             ; [+3]
      144 GETUPVAL                         R5 4
      145 GETTABLEKS                       R5 R5 K34 ["innerContainer"]
      147 GETTABLEKS                       R5 R5 K15 ["horizontalPadding"]
      149 SETTABLEKS                       R5 R4 K30 ["right"]
      151 SETTABLEKS                       R4 R3 K15 ["horizontalPadding"]
      153 GETUPVAL                         R4 2
      154 GETTABLEKS                       R4 R4 K16 ["onChanged"]
      156 SETTABLEKS                       R4 R3 K16 ["onChanged"]
      158 GETUPVAL                         R4 2
      159 GETTABLEKS                       R4 R4 K35 ["onFocusGained"]
      161 SETTABLEKS                       R4 R3 K17 ["onFocus"]
      163 GETUPVAL                         R4 2
      164 GETTABLEKS                       R4 R4 K18 ["onFocusLost"]
      166 SETTABLEKS                       R4 R3 K18 ["onFocusLost"]
      168 GETUPVAL                         R4 2
      169 GETTABLEKS                       R4 R4 K19 ["onReturnPressed"]
      171 SETTABLEKS                       R4 R3 K19 ["onReturnPressed"]
      173 GETUPVAL                         R4 2
      174 GETTABLEKS                       R4 R4 K20 ["placeholder"]
      176 SETTABLEKS                       R4 R3 K20 ["placeholder"]
      178 GETUPVAL                         R5 2
      179 GETTABLEKS                       R5 R5 K36 ["leadingIcon"]
      181 JUMPIFNOT                        R5 ; [+35]
      182 GETUPVAL                         R4 0
      183 GETTABLEKS                       R4 R4 K0 ["createElement"]
      185 GETUPVAL                         R5 5
      186 DUPTABLE                         R6 K38 [{"tag"}]
      187 LOADK                            R7 K39 ["row align-y-center size-0-full auto-x"]
      188 SETTABLEKS                       R7 R6 K37 ["tag"]
      190 GETUPVAL                         R7 0
      191 GETTABLEKS                       R7 R7 K0 ["createElement"]
      193 GETUPVAL                         R8 6
      194 DUPTABLE                         R9 K42 [{"name", "style", "size"}]
      195 GETUPVAL                         R10 2
      196 GETTABLEKS                       R10 R10 K36 ["leadingIcon"]
      198 SETTABLEKS                       R10 R9 K40 ["name"]
      200 GETUPVAL                         R10 4
      201 GETTABLEKS                       R10 R10 K43 ["icon"]
      203 GETTABLEKS                       R10 R10 K41 ["style"]
      205 SETTABLEKS                       R10 R9 K41 ["style"]
      207 GETUPVAL                         R10 4
      208 GETTABLEKS                       R10 R10 K43 ["icon"]
      210 GETTABLEKS                       R10 R10 K8 ["size"]
      212 SETTABLEKS                       R10 R9 K8 ["size"]
      214 CALL                             R7 2 -1
      215 CALL                             R4 -1 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R4
      218 SETTABLEKS                       R4 R3 K21 ["leadingElement"]
      220 GETUPVAL                         R5 2
      221 GETTABLEKS                       R5 R5 K44 ["iconTrailing"]
      223 JUMPIFNOT                        R5 ; [+108]
      224 GETUPVAL                         R4 0
      225 GETTABLEKS                       R4 R4 K0 ["createElement"]
      227 GETUPVAL                         R5 5
      228 DUPTABLE                         R6 K38 [{"tag"}]
      229 LOADK                            R7 K39 ["row align-y-center size-0-full auto-x"]
      230 SETTABLEKS                       R7 R6 K37 ["tag"]
      232 GETUPVAL                         R9 2
      233 GETTABLEKS                       R9 R9 K44 ["iconTrailing"]
      235 FASTCALL1                        TYPE R9 ; [+2]
      236 GETIMPORT                        R8 K46 [type]
      238 CALL                             R8 1 1
      239 JUMPIFNOTEQKS                    R8 K47 ["table"] ; [+50]
      241 GETUPVAL                         R8 2
      242 GETTABLEKS                       R8 R8 K44 ["iconTrailing"]
      244 GETTABLEKS                       R8 R8 K48 ["onActivated"]
      246 JUMPIFNOT                        R8 ; [+43]
      247 GETUPVAL                         R7 0
      248 GETTABLEKS                       R7 R7 K0 ["createElement"]
      250 GETUPVAL                         R8 7
      251 DUPTABLE                         R9 K49 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      252 GETUPVAL                         R10 2
      253 GETTABLEKS                       R10 R10 K44 ["iconTrailing"]
      255 GETTABLEKS                       R10 R10 K48 ["onActivated"]
      257 SETTABLEKS                       R10 R9 K48 ["onActivated"]
      259 GETUPVAL                         R10 2
      260 GETTABLEKS                       R10 R10 K3 ["isDisabled"]
      262 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      264 GETUPVAL                         R10 4
      265 GETTABLEKS                       R10 R10 K43 ["icon"]
      267 GETTABLEKS                       R10 R10 K8 ["size"]
      269 SETTABLEKS                       R10 R9 K8 ["size"]
      271 GETUPVAL                         R10 2
      272 GETTABLEKS                       R10 R10 K44 ["iconTrailing"]
      274 GETTABLEKS                       R10 R10 K40 ["name"]
      276 SETTABLEKS                       R10 R9 K43 ["icon"]
      278 LOADK                            R11 K50 ["%*--trailing-icon-button"]
      279 GETUPVAL                         R13 2
      280 GETTABLEKS                       R13 R13 K23 ["testId"]
      282 NAMECALL                         R11 R11 K51 ["format"]
      284 CALL                             R11 2 1
      285 MOVE                             R10 R11
      286 SETTABLEKS                       R10 R9 K23 ["testId"]
      288 CALL                             R7 2 1
      289 JUMP                             ; [+40]
      290 GETUPVAL                         R7 0
      291 GETTABLEKS                       R7 R7 K0 ["createElement"]
      293 GETUPVAL                         R8 6
      294 DUPTABLE                         R9 K42 [{"name", "style", "size"}]
      295 GETUPVAL                         R12 2
      296 GETTABLEKS                       R12 R12 K44 ["iconTrailing"]
      298 FASTCALL1                        TYPE R12 ; [+2]
      299 GETIMPORT                        R11 K46 [type]
      301 CALL                             R11 1 1
      302 JUMPIFNOTEQKS                    R11 K47 ["table"] ; [+7]
      304 GETUPVAL                         R10 2
      305 GETTABLEKS                       R10 R10 K44 ["iconTrailing"]
      307 GETTABLEKS                       R10 R10 K40 ["name"]
      309 JUMP                             ; [+3]
      310 GETUPVAL                         R10 2
      311 GETTABLEKS                       R10 R10 K44 ["iconTrailing"]
      313 SETTABLEKS                       R10 R9 K40 ["name"]
      315 GETUPVAL                         R10 4
      316 GETTABLEKS                       R10 R10 K43 ["icon"]
      318 GETTABLEKS                       R10 R10 K41 ["style"]
      320 SETTABLEKS                       R10 R9 K41 ["style"]
      322 GETUPVAL                         R10 4
      323 GETTABLEKS                       R10 R10 K43 ["icon"]
      325 GETTABLEKS                       R10 R10 K8 ["size"]
      327 SETTABLEKS                       R10 R9 K8 ["size"]
      329 CALL                             R7 2 1
      330 CALL                             R4 3 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R4
      333 SETTABLEKS                       R4 R3 K22 ["trailingElement"]
      335 LOADK                            R5 K52 ["%*--internal-text-input"]
      336 GETUPVAL                         R7 2
      337 GETTABLEKS                       R7 R7 K23 ["testId"]
      339 NAMECALL                         R5 R5 K51 ["format"]
      341 CALL                             R5 2 1
      342 MOVE                             R4 R5
      343 SETTABLEKS                       R4 R3 K23 ["testId"]
      345 CALL                             R1 2 -1
      346 RETURN                           R1 -1

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
       10 GETUPVAL                         R8 4
       11 GETTABLEKS                       R8 R8 K1 ["FoundationTextInputVariant"]
       13 JUMPIFNOT                        R8 ; [+3]
       14 GETTABLEKS                       R7 R2 K2 ["variant"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 CALL                             R4 3 1
       19 GETUPVAL                         R5 5
       20 GETTABLEKS                       R5 R5 K3 ["createElement"]
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
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K14 ["FoundationTextInputDisabledField"]
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
