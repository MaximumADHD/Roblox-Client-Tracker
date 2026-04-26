PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K16 [{"size", "variant", "numLines", "focusBehavior", "onFocus", "onFocusLost", "onChanged", "text", "hasError", "isDisabled", "placeholder", "horizontalPadding", "LayoutOrder", "ref", "testId"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["size"]
        8 SETTABLEKS                       R4 R3 K1 ["size"]
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K17 ["FoundationTextAreaVariant"]
       13 JUMPIFNOT                        R5 ; [+4]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K2 ["variant"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R3 K2 ["variant"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K3 ["numLines"]
       24 SETTABLEKS                       R4 R3 K3 ["numLines"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K18 ["FoundationTextInputFocusBehavior"]
       29 JUMPIFNOT                        R5 ; [+4]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K4 ["focusBehavior"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 SETTABLEKS                       R4 R3 K4 ["focusBehavior"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K19 ["onFocusGained"]
       40 SETTABLEKS                       R4 R3 K5 ["onFocus"]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K6 ["onFocusLost"]
       45 SETTABLEKS                       R4 R3 K6 ["onFocusLost"]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R4 R5 K7 ["onChanged"]
       50 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R4 R5 K8 ["text"]
       55 SETTABLEKS                       R4 R3 K8 ["text"]
       57 GETUPVAL                         R5 2
       58 GETTABLEKS                       R4 R5 K9 ["hasError"]
       60 SETTABLEKS                       R4 R3 K9 ["hasError"]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R4 R5 K10 ["isDisabled"]
       65 SETTABLEKS                       R4 R3 K10 ["isDisabled"]
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R4 R5 K11 ["placeholder"]
       70 SETTABLEKS                       R4 R3 K11 ["placeholder"]
       72 DUPTABLE                         R4 K22 [{"left", "right"}]
       73 GETUPVAL                         R7 4
       74 GETTABLEKS                       R6 R7 K23 ["innerContainer"]
       76 GETTABLEKS                       R5 R6 K12 ["horizontalPadding"]
       78 SETTABLEKS                       R5 R4 K20 ["left"]
       80 GETUPVAL                         R8 4
       81 GETTABLEKS                       R7 R8 K23 ["innerContainer"]
       83 GETTABLEKS                       R6 R7 K12 ["horizontalPadding"]
       85 GETIMPORT                        R7 K26 [UDim.new]
       87 LOADN                            R8 0
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R10 R11 K27 ["Size"]
       91 GETTABLEKS                       R9 R10 K28 ["Size_150"]
       93 CALL                             R7 2 1
       94 SUB                              R5 R6 R7
       95 SETTABLEKS                       R5 R4 K21 ["right"]
       97 SETTABLEKS                       R4 R3 K12 ["horizontalPadding"]
       99 LOADN                            R4 2
      100 SETTABLEKS                       R4 R3 K13 ["LayoutOrder"]
      102 SETTABLEKS                       R0 R3 K14 ["ref"]
      104 LOADK                            R5 K29 ["%*--input"]
      105 GETUPVAL                         R8 2
      106 GETTABLEKS                       R7 R8 K15 ["testId"]
      108 NAMECALL                         R5 R5 K30 ["format"]
      110 CALL                             R5 2 1
      111 MOVE                             R4 R5
      112 SETTABLEKS                       R4 R3 K15 ["testId"]
      114 CALL                             R1 2 -1
      115 RETURN                           R1 -1

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
       11 GETTABLEKS                       R8 R9 K1 ["FoundationTextAreaVariant"]
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
       25 DUPTABLE                         R9 K13 [{"width", "label", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       26 GETTABLEKS                       R11 R2 K4 ["width"]
       28 JUMPIFNOT                        R11 ; [+3]
       29 GETTABLEKS                       R10 R2 K4 ["width"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R10
       33 SETTABLEKS                       R10 R9 K4 ["width"]
       35 GETTABLEKS                       R10 R2 K5 ["label"]
       37 SETTABLEKS                       R10 R9 K5 ["label"]
       39 GETTABLEKS                       R10 R2 K6 ["hint"]
       41 SETTABLEKS                       R10 R9 K6 ["hint"]
       43 GETTABLEKS                       R10 R2 K7 ["hasError"]
       45 SETTABLEKS                       R10 R9 K7 ["hasError"]
       47 GETTABLEKS                       R10 R2 K8 ["isDisabled"]
       49 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       51 GETTABLEKS                       R10 R2 K9 ["isRequired"]
       53 SETTABLEKS                       R10 R9 K9 ["isRequired"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R10 R9 K10 ["input"]
       64 GETTABLEKS                       R10 R2 K11 ["textBoxRef"]
       66 SETTABLEKS                       R10 R9 K11 ["textBoxRef"]
       68 SETTABLEKS                       R1 R9 K12 ["ref"]
       70 CALL                             R7 2 -1
       71 CALL                             R5 -1 -1
       72 RETURN                           R5 -1

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
       81 GETTABLEKS                       R14 R15 K23 ["InputVariant"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R16 R0 K21 ["Enums"]
       88 GETTABLEKS                       R15 R16 K24 ["ControlState"]
       90 CALL                             R14 1 1
       91 DUPTABLE                         R15 K28 [{"size", "numLines", "testId"}]
       92 GETTABLEKS                       R16 R12 K29 ["Medium"]
       94 SETTABLEKS                       R16 R15 K25 ["size"]
       96 LOADN                            R16 3
       97 SETTABLEKS                       R16 R15 K26 ["numLines"]
       99 LOADK                            R16 K30 ["--foundation-text-area"]
      100 SETTABLEKS                       R16 R15 K27 ["testId"]
      102 DUPCLOSURE                       R16 K31 [PROTO_1]
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R5
      112 GETTABLEKS                       R17 R2 K32 ["memo"]
      114 GETTABLEKS                       R18 R2 K33 ["forwardRef"]
      116 MOVE                             R19 R16
      117 CALL                             R18 1 -1
      118 CALL                             R17 -1 -1
      119 RETURN                           R17 -1
