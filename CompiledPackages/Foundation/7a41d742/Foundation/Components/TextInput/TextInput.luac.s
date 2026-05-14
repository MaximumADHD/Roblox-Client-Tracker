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
      119 JUMPIFNOT                        R5 ; [+98]
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
      135 JUMPIFNOTEQKS                    R8 K33 ["table"] ; [+40]
      137 GETUPVAL                         R8 2
      138 GETTABLEKS                       R8 R8 K30 ["iconTrailing"]
      140 GETTABLEKS                       R8 R8 K34 ["onActivated"]
      142 JUMPIFNOT                        R8 ; [+33]
      143 GETUPVAL                         R7 0
      144 GETTABLEKS                       R7 R7 K0 ["createElement"]
      146 GETUPVAL                         R8 6
      147 DUPTABLE                         R9 K35 [{"onActivated", "isDisabled", "size", "icon"}]
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
      174 CALL                             R7 2 1
      175 JUMP                             ; [+40]
      176 GETUPVAL                         R7 0
      177 GETTABLEKS                       R7 R7 K0 ["createElement"]
      179 GETUPVAL                         R8 5
      180 DUPTABLE                         R9 K28 [{"name", "style", "size"}]
      181 GETUPVAL                         R12 2
      182 GETTABLEKS                       R12 R12 K30 ["iconTrailing"]
      184 FASTCALL1                        TYPE R12 ; [+2]
      185 GETIMPORT                        R11 K32 [type]
      187 CALL                             R11 1 1
      188 JUMPIFNOTEQKS                    R11 K33 ["table"] ; [+7]
      190 GETUPVAL                         R10 2
      191 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      193 GETTABLEKS                       R10 R10 K26 ["name"]
      195 JUMP                             ; [+3]
      196 GETUPVAL                         R10 2
      197 GETTABLEKS                       R10 R10 K30 ["iconTrailing"]
      199 SETTABLEKS                       R10 R9 K26 ["name"]
      201 GETUPVAL                         R10 3
      202 GETTABLEKS                       R10 R10 K29 ["icon"]
      204 GETTABLEKS                       R10 R10 K27 ["style"]
      206 SETTABLEKS                       R10 R9 K27 ["style"]
      208 GETUPVAL                         R10 3
      209 GETTABLEKS                       R10 R10 K29 ["icon"]
      211 GETTABLEKS                       R10 R10 K6 ["size"]
      213 SETTABLEKS                       R10 R9 K6 ["size"]
      215 CALL                             R7 2 1
      216 CALL                             R4 3 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R4
      219 SETTABLEKS                       R4 R3 K14 ["trailingElement"]
      221 LOADK                            R5 K36 ["%*--internal-text-input"]
      222 GETUPVAL                         R7 2
      223 GETTABLEKS                       R7 R7 K15 ["testId"]
      225 NAMECALL                         R5 R5 K37 ["format"]
      227 CALL                             R5 2 1
      228 MOVE                             R4 R5
      229 SETTABLEKS                       R4 R3 K15 ["testId"]
      231 CALL                             R1 2 -1
      232 RETURN                           R1 -1

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
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K1 ["createElement"]
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
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U11
       58 SETTABLEKS                       R10 R9 K9 ["input"]
       60 CALL                             R7 2 -1
       61 CALL                             R5 -1 -1
       62 RETURN                           R5 -1

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
       91 GETTABLEKS                       R16 R16 K25 ["getInputTextSize"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K23 ["Enums"]
       98 GETTABLEKS                       R17 R17 K26 ["ControlState"]
      100 CALL                             R16 1 1
      101 DUPTABLE                         R17 K30 [{"size", "width", "testId"}]
      102 GETTABLEKS                       R18 R14 K31 ["Large"]
      104 SETTABLEKS                       R18 R17 K27 ["size"]
      106 GETIMPORT                        R18 K34 [UDim.new]
      108 LOADN                            R19 0
      109 LOADN                            R20 144
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K28 ["width"]
      113 LOADK                            R18 K35 ["--foundation-text-input"]
      114 SETTABLEKS                       R18 R17 K29 ["testId"]
      116 DUPCLOSURE                       R18 K36 [PROTO_1]
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R5
      129 GETTABLEKS                       R19 R2 K37 ["memo"]
      131 GETTABLEKS                       R20 R2 K38 ["forwardRef"]
      133 MOVE                             R21 R18
      134 CALL                             R20 1 -1
      135 CALL                             R19 -1 -1
      136 RETURN                           R19 -1
