PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K15 [{"size", "numLines", "focusBehavior", "onFocus", "onFocusLost", "onChanged", "text", "hasError", "isDisabled", "placeholder", "horizontalPadding", "LayoutOrder", "ref", "testId"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["size"]
        8 SETTABLEKS                       R4 R3 K1 ["size"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["numLines"]
       13 SETTABLEKS                       R4 R3 K2 ["numLines"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K16 ["FoundationTextInputFocusBehavior"]
       18 JUMPIFNOT                        R5 ; [+4]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K3 ["focusBehavior"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K3 ["focusBehavior"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K17 ["onFocusGained"]
       29 SETTABLEKS                       R4 R3 K4 ["onFocus"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K5 ["onFocusLost"]
       34 SETTABLEKS                       R4 R3 K5 ["onFocusLost"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K6 ["onChanged"]
       39 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K7 ["text"]
       44 SETTABLEKS                       R4 R3 K7 ["text"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R4 R5 K8 ["hasError"]
       49 SETTABLEKS                       R4 R3 K8 ["hasError"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K9 ["isDisabled"]
       54 SETTABLEKS                       R4 R3 K9 ["isDisabled"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R4 R5 K10 ["placeholder"]
       59 SETTABLEKS                       R4 R3 K10 ["placeholder"]
       61 DUPTABLE                         R4 K20 [{"left", "right"}]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K21 ["innerContainer"]
       65 GETTABLEKS                       R5 R6 K11 ["horizontalPadding"]
       67 SETTABLEKS                       R5 R4 K18 ["left"]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R7 R8 K21 ["innerContainer"]
       72 GETTABLEKS                       R6 R7 K11 ["horizontalPadding"]
       74 GETIMPORT                        R7 K24 [UDim.new]
       76 LOADN                            R8 0
       77 GETUPVAL                         R11 5
       78 GETTABLEKS                       R10 R11 K25 ["Size"]
       80 GETTABLEKS                       R9 R10 K26 ["Size_150"]
       82 CALL                             R7 2 1
       83 SUB                              R5 R6 R7
       84 SETTABLEKS                       R5 R4 K19 ["right"]
       86 SETTABLEKS                       R4 R3 K11 ["horizontalPadding"]
       88 LOADN                            R4 2
       89 SETTABLEKS                       R4 R3 K12 ["LayoutOrder"]
       91 SETTABLEKS                       R0 R3 K13 ["ref"]
       93 LOADK                            R5 K27 ["%*--input"]
       94 GETUPVAL                         R8 2
       95 GETTABLEKS                       R7 R8 K14 ["testId"]
       97 NAMECALL                         R5 R5 K28 ["format"]
       99 CALL                             R5 2 1
      100 MOVE                             R4 R5
      101 SETTABLEKS                       R4 R3 K14 ["testId"]
      103 CALL                             R1 2 -1
      104 RETURN                           R1 -1

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
       17 DUPTABLE                         R9 K11 [{"width", "label", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       18 GETTABLEKS                       R11 R2 K2 ["width"]
       20 JUMPIFNOT                        R11 ; [+3]
       21 GETTABLEKS                       R10 R2 K2 ["width"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R10
       25 SETTABLEKS                       R10 R9 K2 ["width"]
       27 GETTABLEKS                       R10 R2 K3 ["label"]
       29 SETTABLEKS                       R10 R9 K3 ["label"]
       31 GETTABLEKS                       R10 R2 K4 ["hint"]
       33 SETTABLEKS                       R10 R9 K4 ["hint"]
       35 GETTABLEKS                       R10 R2 K5 ["hasError"]
       37 SETTABLEKS                       R10 R9 K5 ["hasError"]
       39 GETTABLEKS                       R10 R2 K6 ["isDisabled"]
       41 SETTABLEKS                       R10 R9 K6 ["isDisabled"]
       43 GETTABLEKS                       R10 R2 K7 ["isRequired"]
       45 SETTABLEKS                       R10 R9 K7 ["isRequired"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R10 R9 K8 ["input"]
       56 GETTABLEKS                       R10 R2 K9 ["textBoxRef"]
       58 SETTABLEKS                       R10 R9 K9 ["textBoxRef"]
       60 SETTABLEKS                       R1 R9 K10 ["ref"]
       62 CALL                             R7 2 -1
       63 CALL                             R5 -1 -1
       64 RETURN                           R5 -1

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
       84 DUPTABLE                         R14 K27 [{"size", "numLines", "testId"}]
       85 GETTABLEKS                       R15 R12 K28 ["Medium"]
       87 SETTABLEKS                       R15 R14 K24 ["size"]
       89 LOADN                            R15 3
       90 SETTABLEKS                       R15 R14 K25 ["numLines"]
       92 LOADK                            R15 K29 ["--foundation-text-area"]
       93 SETTABLEKS                       R15 R14 K26 ["testId"]
       95 DUPCLOSURE                       R15 K30 [PROTO_1]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R7
      105 GETTABLEKS                       R16 R2 K31 ["memo"]
      107 GETTABLEKS                       R17 R2 K32 ["forwardRef"]
      109 MOVE                             R18 R15
      110 CALL                             R17 1 -1
      111 CALL                             R16 -1 -1
      112 RETURN                           R16 -1
