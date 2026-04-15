PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K17 [{"ref", "hasError", "isDisabled", "text", "textInputType", "focusBehavior", "size", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
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
       28 GETTABLEKS                       R5 R6 K18 ["FoundationTextInputFocusBehavior"]
       30 JUMPIFNOT                        R5 ; [+4]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K6 ["focusBehavior"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K6 ["focusBehavior"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R4 R5 K7 ["size"]
       41 SETTABLEKS                       R4 R3 K7 ["size"]
       43 DUPTABLE                         R4 K21 [{"left", "right"}]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K22 ["innerContainer"]
       47 GETTABLEKS                       R5 R6 K8 ["horizontalPadding"]
       49 SETTABLEKS                       R5 R4 K19 ["left"]
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R6 R7 K22 ["innerContainer"]
       54 GETTABLEKS                       R5 R6 K8 ["horizontalPadding"]
       56 SETTABLEKS                       R5 R4 K20 ["right"]
       58 SETTABLEKS                       R4 R3 K8 ["horizontalPadding"]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R4 R5 K9 ["onChanged"]
       63 SETTABLEKS                       R4 R3 K9 ["onChanged"]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R4 R5 K23 ["onFocusGained"]
       68 SETTABLEKS                       R4 R3 K10 ["onFocus"]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R4 R5 K11 ["onFocusLost"]
       73 SETTABLEKS                       R4 R3 K11 ["onFocusLost"]
       75 GETUPVAL                         R5 2
       76 GETTABLEKS                       R4 R5 K12 ["onReturnPressed"]
       78 SETTABLEKS                       R4 R3 K12 ["onReturnPressed"]
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R4 R5 K13 ["placeholder"]
       83 SETTABLEKS                       R4 R3 K13 ["placeholder"]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R5 R6 K24 ["leadingIcon"]
       88 JUMPIFNOT                        R5 ; [+35]
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R4 R5 K0 ["createElement"]
       92 GETUPVAL                         R5 5
       93 DUPTABLE                         R6 K26 [{"tag"}]
       94 LOADK                            R7 K27 ["row align-y-center size-0-full auto-x"]
       95 SETTABLEKS                       R7 R6 K25 ["tag"]
       97 GETUPVAL                         R8 0
       98 GETTABLEKS                       R7 R8 K0 ["createElement"]
      100 GETUPVAL                         R8 6
      101 DUPTABLE                         R9 K30 [{"name", "style", "size"}]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R10 R11 K24 ["leadingIcon"]
      105 SETTABLEKS                       R10 R9 K28 ["name"]
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R11 R12 K31 ["icon"]
      110 GETTABLEKS                       R10 R11 K29 ["style"]
      112 SETTABLEKS                       R10 R9 K29 ["style"]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R11 R12 K31 ["icon"]
      117 GETTABLEKS                       R10 R11 K7 ["size"]
      119 SETTABLEKS                       R10 R9 K7 ["size"]
      121 CALL                             R7 2 -1
      122 CALL                             R4 -1 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R4
      125 SETTABLEKS                       R4 R3 K14 ["leadingElement"]
      127 GETUPVAL                         R6 2
      128 GETTABLEKS                       R5 R6 K32 ["iconTrailing"]
      130 JUMPIFNOT                        R5 ; [+108]
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R4 R5 K0 ["createElement"]
      134 GETUPVAL                         R5 5
      135 DUPTABLE                         R6 K26 [{"tag"}]
      136 LOADK                            R7 K27 ["row align-y-center size-0-full auto-x"]
      137 SETTABLEKS                       R7 R6 K25 ["tag"]
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R9 R10 K32 ["iconTrailing"]
      142 FASTCALL1                        TYPE R9 ; [+2]
      143 GETIMPORT                        R8 K34 [type]
      145 CALL                             R8 1 1
      146 JUMPIFNOTEQKS                    R8 K35 ["table"] ; [+50]
      148 GETUPVAL                         R10 2
      149 GETTABLEKS                       R9 R10 K32 ["iconTrailing"]
      151 GETTABLEKS                       R8 R9 K36 ["onActivated"]
      153 JUMPIFNOT                        R8 ; [+43]
      154 GETUPVAL                         R8 0
      155 GETTABLEKS                       R7 R8 K0 ["createElement"]
      157 GETUPVAL                         R8 7
      158 DUPTABLE                         R9 K37 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      159 GETUPVAL                         R12 2
      160 GETTABLEKS                       R11 R12 K32 ["iconTrailing"]
      162 GETTABLEKS                       R10 R11 K36 ["onActivated"]
      164 SETTABLEKS                       R10 R9 K36 ["onActivated"]
      166 GETUPVAL                         R11 2
      167 GETTABLEKS                       R10 R11 K3 ["isDisabled"]
      169 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      171 GETUPVAL                         R12 4
      172 GETTABLEKS                       R11 R12 K31 ["icon"]
      174 GETTABLEKS                       R10 R11 K7 ["size"]
      176 SETTABLEKS                       R10 R9 K7 ["size"]
      178 GETUPVAL                         R12 2
      179 GETTABLEKS                       R11 R12 K32 ["iconTrailing"]
      181 GETTABLEKS                       R10 R11 K28 ["name"]
      183 SETTABLEKS                       R10 R9 K31 ["icon"]
      185 LOADK                            R11 K38 ["%*--trailing-icon-button"]
      186 GETUPVAL                         R14 2
      187 GETTABLEKS                       R13 R14 K16 ["testId"]
      189 NAMECALL                         R11 R11 K39 ["format"]
      191 CALL                             R11 2 1
      192 MOVE                             R10 R11
      193 SETTABLEKS                       R10 R9 K16 ["testId"]
      195 CALL                             R7 2 1
      196 JUMP                             ; [+40]
      197 GETUPVAL                         R8 0
      198 GETTABLEKS                       R7 R8 K0 ["createElement"]
      200 GETUPVAL                         R8 6
      201 DUPTABLE                         R9 K30 [{"name", "style", "size"}]
      202 GETUPVAL                         R13 2
      203 GETTABLEKS                       R12 R13 K32 ["iconTrailing"]
      205 FASTCALL1                        TYPE R12 ; [+2]
      206 GETIMPORT                        R11 K34 [type]
      208 CALL                             R11 1 1
      209 JUMPIFNOTEQKS                    R11 K35 ["table"] ; [+7]
      211 GETUPVAL                         R12 2
      212 GETTABLEKS                       R11 R12 K32 ["iconTrailing"]
      214 GETTABLEKS                       R10 R11 K28 ["name"]
      216 JUMP                             ; [+3]
      217 GETUPVAL                         R11 2
      218 GETTABLEKS                       R10 R11 K32 ["iconTrailing"]
      220 SETTABLEKS                       R10 R9 K28 ["name"]
      222 GETUPVAL                         R12 4
      223 GETTABLEKS                       R11 R12 K31 ["icon"]
      225 GETTABLEKS                       R10 R11 K29 ["style"]
      227 SETTABLEKS                       R10 R9 K29 ["style"]
      229 GETUPVAL                         R12 4
      230 GETTABLEKS                       R11 R12 K31 ["icon"]
      232 GETTABLEKS                       R10 R11 K7 ["size"]
      234 SETTABLEKS                       R10 R9 K7 ["size"]
      236 CALL                             R7 2 1
      237 CALL                             R4 3 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R4
      240 SETTABLEKS                       R4 R3 K15 ["trailingElement"]
      242 LOADK                            R5 K40 ["%*--internal-text-input"]
      243 GETUPVAL                         R8 2
      244 GETTABLEKS                       R7 R8 K16 ["testId"]
      246 NAMECALL                         R5 R5 K39 ["format"]
      248 CALL                             R5 2 1
      249 MOVE                             R4 R5
      250 SETTABLEKS                       R4 R3 K16 ["testId"]
      252 CALL                             R1 2 -1
      253 RETURN                           R1 -1

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
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K1 ["createElement"]
       14 GETUPVAL                         R6 5
       15 GETUPVAL                         R7 6
       16 MOVE                             R8 R2
       17 DUPTABLE                         R9 K10 [{"width", "ref", "label", "size", "isRequired", "hasError", "hint", "textBoxRef", "input"}]
       18 GETTABLEKS                       R10 R2 K2 ["width"]
       20 SETTABLEKS                       R10 R9 K2 ["width"]
       22 SETTABLEKS                       R1 R9 K3 ["ref"]
       24 GETTABLEKS                       R10 R2 K4 ["label"]
       26 SETTABLEKS                       R10 R9 K4 ["label"]
       28 GETUPVAL                         R10 7
       29 GETTABLEKS                       R11 R2 K0 ["size"]
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K0 ["size"]
       34 GETTABLEKS                       R10 R2 K5 ["isRequired"]
       36 SETTABLEKS                       R10 R9 K5 ["isRequired"]
       38 GETTABLEKS                       R10 R2 K6 ["hasError"]
       40 SETTABLEKS                       R10 R9 K6 ["hasError"]
       42 GETTABLEKS                       R10 R2 K7 ["hint"]
       44 SETTABLEKS                       R10 R9 K7 ["hint"]
       46 GETTABLEKS                       R10 R2 K8 ["textBoxRef"]
       48 SETTABLEKS                       R10 R9 K8 ["textBoxRef"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          UPVAL U12
       59 SETTABLEKS                       R10 R9 K9 ["input"]
       61 CALL                             R7 2 -1
       62 CALL                             R5 -1 -1
       63 RETURN                           R5 -1

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
       96 GETTABLEKS                       R18 R0 K15 ["Utility"]
       98 GETTABLEKS                       R17 R18 K26 ["getInputTextSize"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R19 R0 K24 ["Enums"]
      105 GETTABLEKS                       R18 R19 K27 ["ControlState"]
      107 CALL                             R17 1 1
      108 DUPTABLE                         R18 K30 [{"size", "testId"}]
      109 GETTABLEKS                       R19 R15 K31 ["Large"]
      111 SETTABLEKS                       R19 R18 K28 ["size"]
      113 LOADK                            R19 K32 ["--foundation-text-input"]
      114 SETTABLEKS                       R19 R18 K29 ["testId"]
      116 DUPCLOSURE                       R19 K33 [PROTO_1]
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R5
      130 GETTABLEKS                       R20 R2 K34 ["memo"]
      132 GETTABLEKS                       R21 R2 K35 ["forwardRef"]
      134 MOVE                             R22 R19
      135 CALL                             R21 1 -1
      136 CALL                             R20 -1 -1
      137 RETURN                           R20 -1
