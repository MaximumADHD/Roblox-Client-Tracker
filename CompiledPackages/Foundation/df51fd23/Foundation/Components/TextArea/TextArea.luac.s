PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K14 [{"size", "numLines", "onFocus", "onFocusLost", "onChanged", "text", "hasError", "isDisabled", "placeholder", "horizontalPadding", "LayoutOrder", "ref", "testId"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["size"]
        8 SETTABLEKS                       R4 R3 K1 ["size"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["numLines"]
       13 SETTABLEKS                       R4 R3 K2 ["numLines"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K15 ["onFocusGained"]
       18 SETTABLEKS                       R4 R3 K3 ["onFocus"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["onFocusLost"]
       23 SETTABLEKS                       R4 R3 K4 ["onFocusLost"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K5 ["onChanged"]
       28 SETTABLEKS                       R4 R3 K5 ["onChanged"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K6 ["text"]
       33 SETTABLEKS                       R4 R3 K6 ["text"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K7 ["hasError"]
       38 SETTABLEKS                       R4 R3 K7 ["hasError"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R4 R5 K8 ["isDisabled"]
       43 SETTABLEKS                       R4 R3 K8 ["isDisabled"]
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R4 R5 K9 ["placeholder"]
       48 SETTABLEKS                       R4 R3 K9 ["placeholder"]
       50 DUPTABLE                         R4 K18 [{"left", "right"}]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R6 R7 K19 ["innerContainer"]
       54 GETTABLEKS                       R5 R6 K10 ["horizontalPadding"]
       56 SETTABLEKS                       R5 R4 K16 ["left"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R7 R8 K19 ["innerContainer"]
       61 GETTABLEKS                       R6 R7 K10 ["horizontalPadding"]
       63 GETIMPORT                        R7 K22 [UDim.new]
       65 LOADN                            R8 0
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R10 R11 K23 ["Size"]
       69 GETTABLEKS                       R9 R10 K24 ["Size_150"]
       71 CALL                             R7 2 1
       72 SUB                              R5 R6 R7
       73 SETTABLEKS                       R5 R4 K17 ["right"]
       75 SETTABLEKS                       R4 R3 K10 ["horizontalPadding"]
       77 LOADN                            R4 2
       78 SETTABLEKS                       R4 R3 K11 ["LayoutOrder"]
       80 SETTABLEKS                       R0 R3 K12 ["ref"]
       82 LOADK                            R5 K25 ["%*--input"]
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R7 R8 K13 ["testId"]
       86 NAMECALL                         R5 R5 K26 ["format"]
       88 CALL                             R5 2 1
       89 MOVE                             R4 R5
       90 SETTABLEKS                       R4 R3 K13 ["testId"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationTextAreaTokenBasedWidth"]
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
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R5 R6 K6 ["createElement"]
       31 GETUPVAL                         R6 6
       32 GETUPVAL                         R7 7
       33 MOVE                             R8 R2
       34 DUPTABLE                         R9 K15 [{"width", "label", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K0 ["FoundationTextAreaTokenBasedWidth"]
       38 JUMPIFNOT                        R11 ; [+2]
       39 LOADNIL                          R10
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R10 R2 K1 ["width"]
       43 SETTABLEKS                       R10 R9 K1 ["width"]
       45 GETTABLEKS                       R10 R2 K7 ["label"]
       47 SETTABLEKS                       R10 R9 K7 ["label"]
       49 GETTABLEKS                       R10 R2 K8 ["hint"]
       51 SETTABLEKS                       R10 R9 K8 ["hint"]
       53 GETTABLEKS                       R10 R2 K9 ["hasError"]
       55 SETTABLEKS                       R10 R9 K9 ["hasError"]
       57 GETTABLEKS                       R10 R2 K10 ["isDisabled"]
       59 SETTABLEKS                       R10 R9 K10 ["isDisabled"]
       61 GETTABLEKS                       R10 R2 K11 ["isRequired"]
       63 SETTABLEKS                       R10 R9 K11 ["isRequired"]
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R10 R9 K12 ["input"]
       73 GETTABLEKS                       R10 R2 K13 ["textBoxRef"]
       75 SETTABLEKS                       R10 R9 K13 ["textBoxRef"]
       77 SETTABLEKS                       R1 R9 K14 ["ref"]
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
       18 GETTABLEKS                       R5 R3 K9 ["InputField"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["InternalTextInput"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R8 R0 K8 ["Components"]
       30 GETTABLEKS                       R7 R8 K11 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Utility"]
       37 GETTABLEKS                       R8 R9 K13 ["Flags"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R3 K14 ["TextInput"]
       44 GETTABLEKS                       R9 R10 K15 ["useTextInputVariants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R12 R0 K16 ["Providers"]
       51 GETTABLEKS                       R11 R12 K17 ["Style"]
       53 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R12 R0 K12 ["Utility"]
       60 GETTABLEKS                       R11 R12 K19 ["withCommonProps"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K12 ["Utility"]
       67 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R14 R0 K21 ["Enums"]
       74 GETTABLEKS                       R13 R14 K22 ["InputSize"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R15 R0 K21 ["Enums"]
       81 GETTABLEKS                       R14 R15 K23 ["ControlState"]
       83 CALL                             R13 1 1
       84 DUPTABLE                         R14 K28 [{"size", "numLines", "width", "testId"}]
       85 GETTABLEKS                       R15 R12 K29 ["Medium"]
       87 SETTABLEKS                       R15 R14 K24 ["size"]
       89 LOADN                            R15 3
       90 SETTABLEKS                       R15 R14 K25 ["numLines"]
       92 GETTABLEKS                       R16 R7 K30 ["FoundationTextAreaTokenBasedWidth"]
       94 JUMPIFNOT                        R16 ; [+2]
       95 LOADNIL                          R15
       96 JUMP                             ; [+5]
       97 GETIMPORT                        R15 K33 [UDim.new]
       99 LOADN                            R16 0
      100 LOADN                            R17 144
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K26 ["width"]
      104 LOADK                            R15 K34 ["--foundation-text-area"]
      105 SETTABLEKS                       R15 R14 K27 ["testId"]
      107 DUPCLOSURE                       R15 K35 [PROTO_1]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R5
      117 GETTABLEKS                       R16 R2 K36 ["memo"]
      119 GETTABLEKS                       R17 R2 K37 ["forwardRef"]
      121 MOVE                             R18 R15
      122 CALL                             R17 1 -1
      123 CALL                             R16 -1 -1
      124 RETURN                           R16 -1
