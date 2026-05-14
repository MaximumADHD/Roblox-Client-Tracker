PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K16 [{"ref", "hasError", "isDisabled", "text", "textInputType", "size", "horizontalPadding", "onChanged", "onFocus", "onFocusLost", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "testId"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["hasError"]
       10 SETTABLEKS                       R4 R3 K2 ["hasError"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["isDisabled"]
       15 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["text"]
       20 SETTABLEKS                       R4 R3 K4 ["text"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["textInputType"]
       25 SETTABLEKS                       R4 R3 K5 ["textInputType"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K6 ["size"]
       30 SETTABLEKS                       R4 R3 K6 ["size"]
       32 DUPTABLE                         R4 K19 [{"left", "right"}]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K20 ["innerContainer"]
       36 GETTABLEKS                       R5 R5 K7 ["horizontalPadding"]
       38 SETTABLEKS                       R5 R4 K17 ["left"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K20 ["innerContainer"]
       43 GETTABLEKS                       R5 R5 K7 ["horizontalPadding"]
       45 SETTABLEKS                       R5 R4 K18 ["right"]
       47 SETTABLEKS                       R4 R3 K7 ["horizontalPadding"]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K8 ["onChanged"]
       52 SETTABLEKS                       R4 R3 K8 ["onChanged"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K21 ["onFocusGained"]
       57 SETTABLEKS                       R4 R3 K9 ["onFocus"]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K10 ["onFocusLost"]
       62 SETTABLEKS                       R4 R3 K10 ["onFocusLost"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K11 ["onReturnPressed"]
       67 SETTABLEKS                       R4 R3 K11 ["onReturnPressed"]
       69 GETUPVAL                         R4 2
       70 GETTABLEKS                       R4 R4 K12 ["placeholder"]
       72 SETTABLEKS                       R4 R3 K12 ["placeholder"]
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K22 ["leadingIcon"]
       77 JUMPIFNOT                        R5 ; [+35]
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K0 ["createElement"]
       81 GETUPVAL                         R5 4
       82 DUPTABLE                         R6 K24 [{"tag"}]
       83 LOADK                            R7 K25 ["size-0-full auto-x row align-y-center"]
       84 SETTABLEKS                       R7 R6 K23 ["tag"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K0 ["createElement"]
       89 GETUPVAL                         R8 5
       90 DUPTABLE                         R9 K28 [{"name", "style", "size"}]
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K22 ["leadingIcon"]
       94 SETTABLEKS                       R10 R9 K26 ["name"]
       96 GETUPVAL                         R10 3
       97 GETTABLEKS                       R10 R10 K29 ["icon"]
       99 GETTABLEKS                       R10 R10 K27 ["style"]
      101 SETTABLEKS                       R10 R9 K27 ["style"]
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K29 ["icon"]
      106 GETTABLEKS                       R10 R10 K6 ["size"]
      108 SETTABLEKS                       R10 R9 K6 ["size"]
      110 CALL                             R7 2 -1
      111 CALL                             R4 -1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R4
      114 SETTABLEKS                       R4 R3 K13 ["leadingElement"]
      116 GETUPVAL                         R5 2
      117 GETTABLEKS                       R5 R5 K30 ["iconTrailing"]
      119 JUMPIFNOT                        R5 ; [+108]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K0 ["createElement"]
      123 GETUPVAL                         R5 4
      124 DUPTABLE                         R6 K24 [{"tag"}]
      125 LOADK                            R7 K25 ["size-0-full auto-x row align-y-center"]
      126 SETTABLEKS                       R7 R6 K23 ["tag"]
      128 GETUPVAL                         R9 2
      129 GETTABLEKS                       R9 R9 K30 ["iconTrailing"]
      131 FASTCALL1                        TYPE R9 ; [+2]
      132 GETIMPORT                        R8 K32 [type]
      134 CALL                             R8 1 1
      135 JUMPIFNOTEQKS                    R8 K33 ["table"] ; [+50]
      137 GETUPVAL                         R8 2
      138 GETTABLEKS                       R8 R8 K30 ["iconTrailing"]
      140 GETTABLEKS                       R8 R8 K34 ["onActivated"]
      142 JUMPIFNOT                        R8 ; [+43]
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R7 R7 K0 ["createElement"]
      146 GETUPVAL                         R8 6
      147 DUPTABLE                         R9 K35 [{"onActivated", "isDisabled", "size", "icon", "testId"}]
      148 GETUPVAL                         R10 2
      149 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      151 GETTABLEKS                       R10 R10 K34 ["onActivated"]
      153 SETTABLEKS                       R10 R9 K34 ["onActivated"]
      155 GETUPVAL                         R10 2
      156 GETTABLEKS                       R10 R10 K3 ["isDisabled"]
      158 SETTABLEKS                       R10 R9 K3 ["isDisabled"]
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R10 R10 K29 ["icon"]
      163 GETTABLEKS                       R10 R10 K6 ["size"]
      165 SETTABLEKS                       R10 R9 K6 ["size"]
      167 GETUPVAL                         R10 2
      168 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      170 GETTABLEKS                       R10 R10 K26 ["name"]
      172 SETTABLEKS                       R10 R9 K29 ["icon"]
      174 LOADK                            R11 K36 ["%*--trailing-icon-button"]
      175 GETUPVAL                         R13 2
      176 GETTABLEKS                       R13 R13 K15 ["testId"]
      178 NAMECALL                         R11 R11 K37 ["format"]
      180 CALL                             R11 2 1
      181 MOVE                             R10 R11
      182 SETTABLEKS                       R10 R9 K15 ["testId"]
      184 CALL                             R7 2 1
      185 JUMP                             ; [+40]
      186 GETUPVAL                         R7 0
      187 GETTABLEKS                       R7 R7 K0 ["createElement"]
      189 GETUPVAL                         R8 5
      190 DUPTABLE                         R9 K28 [{"name", "style", "size"}]
      191 GETUPVAL                         R12 2
      192 GETTABLEKS                       R12 R12 K30 ["iconTrailing"]
      194 FASTCALL1                        TYPE R12 ; [+2]
      195 GETIMPORT                        R11 K32 [type]
      197 CALL                             R11 1 1
      198 JUMPIFNOTEQKS                    R11 K33 ["table"] ; [+7]
      200 GETUPVAL                         R10 2
      201 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      203 GETTABLEKS                       R10 R10 K26 ["name"]
      205 JUMP                             ; [+3]
      206 GETUPVAL                         R10 2
      207 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      209 SETTABLEKS                       R10 R9 K26 ["name"]
      211 GETUPVAL                         R10 3
      212 GETTABLEKS                       R10 R10 K29 ["icon"]
      214 GETTABLEKS                       R10 R10 K27 ["style"]
      216 SETTABLEKS                       R10 R9 K27 ["style"]
      218 GETUPVAL                         R10 3
      219 GETTABLEKS                       R10 R10 K29 ["icon"]
      221 GETTABLEKS                       R10 R10 K6 ["size"]
      223 SETTABLEKS                       R10 R9 K6 ["size"]
      225 CALL                             R7 2 1
      226 CALL                             R4 3 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R4
      229 SETTABLEKS                       R4 R3 K14 ["trailingElement"]
      231 LOADK                            R5 K38 ["%*--internal-text-input"]
      232 GETUPVAL                         R7 2
      233 GETTABLEKS                       R7 R7 K15 ["testId"]
      235 NAMECALL                         R5 R5 K37 ["format"]
      237 CALL                             R5 2 1
      238 MOVE                             R4 R5
      239 SETTABLEKS                       R4 R3 K15 ["testId"]
      241 CALL                             R1 2 -1
      242 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationTextInputTokenBasedWidth"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["width"]
        8 JUMP                             ; [+8]
        9 GETUPVAL                         R2 1
       10 GETIMPORT                        R3 K4 [UDim.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 144
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["width"]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 GETUPVAL                         R4 1
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R3
       25 GETTABLEKS                       R6 R2 K5 ["size"]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K6 ["createElement"]
       31 GETUPVAL                         R6 6
       32 GETUPVAL                         R7 7
       33 MOVE                             R8 R2
       34 DUPTABLE                         R9 K14 [{"width", "ref", "label", "size", "isRequired", "hasError", "hint", "textBoxRef", "input"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K0 ["FoundationTextInputTokenBasedWidth"]
       38 JUMPIFNOT                        R11 ; [+3]
       39 GETTABLEKS                       R11 R2 K1 ["width"]
       41 JUMPIFNOT                        R11 ; [+3]
       42 GETTABLEKS                       R10 R2 K1 ["width"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R10
       46 SETTABLEKS                       R10 R9 K1 ["width"]
       48 SETTABLEKS                       R1 R9 K7 ["ref"]
       50 GETTABLEKS                       R10 R2 K8 ["label"]
       52 SETTABLEKS                       R10 R9 K8 ["label"]
       54 GETUPVAL                         R10 8
       55 GETTABLEKS                       R11 R2 K5 ["size"]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K5 ["size"]
       60 GETTABLEKS                       R10 R2 K9 ["isRequired"]
       62 SETTABLEKS                       R10 R9 K9 ["isRequired"]
       64 GETTABLEKS                       R10 R2 K10 ["hasError"]
       66 SETTABLEKS                       R10 R9 K10 ["hasError"]
       68 GETTABLEKS                       R10 R2 K11 ["hint"]
       70 SETTABLEKS                       R10 R9 K11 ["hint"]
       72 GETTABLEKS                       R10 R2 K12 ["textBoxRef"]
       74 SETTABLEKS                       R10 R9 K12 ["textBoxRef"]
       76 NEWCLOSURE                       R10 P0
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 SETTABLEKS                       R10 R9 K13 ["input"]
       86 CALL                             R7 2 -1
       87 CALL                             R5 -1 -1
       88 RETURN                           R5 -1

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
       50 GETTABLEKS                       R11 R0 K8 ["Components"]
       52 GETTABLEKS                       R11 R11 K15 ["TextInput"]
       54 GETTABLEKS                       R11 R11 K16 ["useTextInputVariants"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K17 ["Providers"]
       61 GETTABLEKS                       R12 R12 K18 ["Style"]
       63 GETTABLEKS                       R12 R12 K19 ["useTokens"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K20 ["Utility"]
       70 GETTABLEKS                       R13 R13 K21 ["withCommonProps"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K20 ["Utility"]
       77 GETTABLEKS                       R14 R14 K22 ["withDefaults"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K23 ["Enums"]
       84 GETTABLEKS                       R15 R15 K24 ["InputSize"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R0 K20 ["Utility"]
       91 GETTABLEKS                       R16 R16 K25 ["Flags"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K20 ["Utility"]
       98 GETTABLEKS                       R17 R17 K26 ["getInputTextSize"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R0 K23 ["Enums"]
      105 GETTABLEKS                       R18 R18 K27 ["ControlState"]
      107 CALL                             R17 1 1
      108 DUPTABLE                         R18 K31 [{"size", "width", "testId"}]
      109 GETTABLEKS                       R19 R14 K32 ["Large"]
      111 SETTABLEKS                       R19 R18 K28 ["size"]
      113 GETTABLEKS                       R20 R15 K33 ["FoundationTextInputTokenBasedWidth"]
      115 JUMPIFNOT                        R20 ; [+2]
      116 LOADNIL                          R19
      117 JUMP                             ; [+5]
      118 GETIMPORT                        R19 K36 [UDim.new]
      120 LOADN                            R20 0
      121 LOADN                            R21 144
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K29 ["width"]
      125 LOADK                            R19 K37 ["--foundation-text-input"]
      126 SETTABLEKS                       R19 R18 K30 ["testId"]
      128 DUPCLOSURE                       R19 K38 [PROTO_1]
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R5
      142 GETTABLEKS                       R20 R2 K39 ["memo"]
      144 GETTABLEKS                       R21 R2 K40 ["forwardRef"]
      146 MOVE                             R22 R19
      147 CALL                             R21 1 -1
      148 CALL                             R20 -1 -1
      149 RETURN                           R20 -1
