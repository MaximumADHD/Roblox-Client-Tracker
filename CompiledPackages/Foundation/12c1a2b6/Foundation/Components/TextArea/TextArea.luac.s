PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K17 [{"size", "variant", "numLines", "focusBehavior", "onFocus", "onFocusLost", "onChanged", "text", "hasError", "isDisabled", "hasClearButton", "placeholder", "horizontalPadding", "LayoutOrder", "ref", "testId"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["size"]
        8 SETTABLEKS                       R4 R3 K1 ["size"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["variant"]
       13 SETTABLEKS                       R4 R3 K2 ["variant"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["numLines"]
       18 SETTABLEKS                       R4 R3 K3 ["numLines"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["focusBehavior"]
       23 SETTABLEKS                       R4 R3 K4 ["focusBehavior"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K18 ["onFocusGained"]
       28 SETTABLEKS                       R4 R3 K5 ["onFocus"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K6 ["onFocusLost"]
       33 SETTABLEKS                       R4 R3 K6 ["onFocusLost"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K7 ["onChanged"]
       38 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K8 ["text"]
       43 SETTABLEKS                       R4 R3 K8 ["text"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K9 ["hasError"]
       48 SETTABLEKS                       R4 R3 K9 ["hasError"]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R4 R4 K10 ["isDisabled"]
       53 SETTABLEKS                       R4 R3 K10 ["isDisabled"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K11 ["hasClearButton"]
       58 SETTABLEKS                       R4 R3 K11 ["hasClearButton"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K12 ["placeholder"]
       63 SETTABLEKS                       R4 R3 K12 ["placeholder"]
       65 DUPTABLE                         R4 K21 [{"left", "right"}]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K22 ["container"]
       69 GETTABLEKS                       R5 R5 K13 ["horizontalPadding"]
       71 SETTABLEKS                       R5 R4 K19 ["left"]
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R6 R6 K22 ["container"]
       76 GETTABLEKS                       R6 R6 K13 ["horizontalPadding"]
       78 GETIMPORT                        R7 K25 [UDim.new]
       80 LOADN                            R8 0
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R9 R9 K26 ["Size"]
       84 GETTABLEKS                       R9 R9 K27 ["Size_150"]
       86 CALL                             R7 2 1
       87 SUB                              R5 R6 R7
       88 SETTABLEKS                       R5 R4 K20 ["right"]
       90 SETTABLEKS                       R4 R3 K13 ["horizontalPadding"]
       92 LOADN                            R4 2
       93 SETTABLEKS                       R4 R3 K14 ["LayoutOrder"]
       95 SETTABLEKS                       R0 R3 K15 ["ref"]
       97 LOADK                            R5 K28 ["%*--input"]
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R7 R7 K16 ["testId"]
      101 NAMECALL                         R5 R5 K29 ["format"]
      103 CALL                             R5 2 1
      104 MOVE                             R4 R5
      105 SETTABLEKS                       R4 R3 K16 ["testId"]
      107 CALL                             R1 2 -1
      108 RETURN                           R1 -1

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
       19 DUPTABLE                         R9 K12 [{"width", "label", "size", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       20 GETTABLEKS                       R11 R2 K3 ["width"]
       22 JUMPIFNOT                        R11 ; [+3]
       23 GETTABLEKS                       R10 R2 K3 ["width"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R10
       27 SETTABLEKS                       R10 R9 K3 ["width"]
       29 GETTABLEKS                       R10 R2 K4 ["label"]
       31 SETTABLEKS                       R10 R9 K4 ["label"]
       33 GETUPVAL                         R11 7
       34 GETTABLEKS                       R11 R11 K13 ["FoundationTextInputsBetaUpdate"]
       36 JUMPIFNOT                        R11 ; [+5]
       37 GETUPVAL                         R10 8
       38 GETTABLEKS                       R11 R2 K0 ["size"]
       40 CALL                             R10 1 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R10
       43 SETTABLEKS                       R10 R9 K0 ["size"]
       45 GETTABLEKS                       R10 R2 K5 ["hint"]
       47 SETTABLEKS                       R10 R9 K5 ["hint"]
       49 GETTABLEKS                       R10 R2 K6 ["hasError"]
       51 SETTABLEKS                       R10 R9 K6 ["hasError"]
       53 GETTABLEKS                       R10 R2 K7 ["isDisabled"]
       55 SETTABLEKS                       R10 R9 K7 ["isDisabled"]
       57 GETTABLEKS                       R10 R2 K8 ["isRequired"]
       59 SETTABLEKS                       R10 R9 K8 ["isRequired"]
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R10 R9 K9 ["input"]
       69 GETTABLEKS                       R10 R2 K10 ["textBoxRef"]
       71 SETTABLEKS                       R10 R9 K10 ["textBoxRef"]
       73 SETTABLEKS                       R1 R9 K11 ["ref"]
       75 CALL                             R7 2 -1
       76 CALL                             R5 -1 -1
       77 RETURN                           R5 -1

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
       18 GETTABLEKS                       R5 R3 K9 ["InputField"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["InternalTextInput"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K8 ["Components"]
       30 GETTABLEKS                       R7 R7 K11 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Utility"]
       37 GETTABLEKS                       R8 R8 K13 ["Flags"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Utility"]
       44 GETTABLEKS                       R9 R9 K14 ["getInputTextSize"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R3 K15 ["TextInput"]
       51 GETTABLEKS                       R10 R10 K16 ["useTextInputVariants"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K17 ["Providers"]
       58 GETTABLEKS                       R11 R11 K18 ["Style"]
       60 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K12 ["Utility"]
       67 GETTABLEKS                       R12 R12 K20 ["withCommonProps"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R0 K12 ["Utility"]
       74 GETTABLEKS                       R13 R13 K21 ["withDefaults"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R0 K22 ["Enums"]
       81 GETTABLEKS                       R14 R14 K23 ["InputSize"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R15 R0 K22 ["Enums"]
       88 GETTABLEKS                       R15 R15 K24 ["InputVariant"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K22 ["Enums"]
       95 GETTABLEKS                       R16 R16 K25 ["ControlState"]
       97 CALL                             R15 1 1
       98 DUPTABLE                         R16 K29 [{"size", "numLines", "testId"}]
       99 GETTABLEKS                       R17 R13 K30 ["Medium"]
      101 SETTABLEKS                       R17 R16 K26 ["size"]
      103 LOADN                            R17 3
      104 SETTABLEKS                       R17 R16 K27 ["numLines"]
      106 LOADK                            R17 K31 ["--foundation-text-area"]
      107 SETTABLEKS                       R17 R16 K28 ["testId"]
      109 DUPCLOSURE                       R17 K32 [PROTO_1]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R5
      120 GETTABLEKS                       R18 R2 K33 ["memo"]
      122 GETTABLEKS                       R19 R2 K34 ["forwardRef"]
      124 MOVE                             R20 R17
      125 CALL                             R19 1 -1
      126 CALL                             R18 -1 -1
      127 RETURN                           R18 -1
