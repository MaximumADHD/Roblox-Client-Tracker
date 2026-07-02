PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K19 [{["inputRef"], ["size"], ["variant"], ["numLines"], ["focusBehavior"], ["onFocus"], ["onFocusLost"], ["onChanged"], ["text"], ["hasError"], ["isDisabled"], ["hasClearButton"], ["placeholder"], ["horizontalPadding"], ["LayoutOrder"] = 2, ["ref"], ["testId"]}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["inputRef"]
        8 SETTABLEKS                       R4 R3 K1 ["inputRef"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["size"]
       13 SETTABLEKS                       R4 R3 K2 ["size"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["variant"]
       18 SETTABLEKS                       R4 R3 K3 ["variant"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["numLines"]
       23 SETTABLEKS                       R4 R3 K4 ["numLines"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K5 ["focusBehavior"]
       28 SETTABLEKS                       R4 R3 K5 ["focusBehavior"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K20 ["onFocusGained"]
       33 SETTABLEKS                       R4 R3 K6 ["onFocus"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K7 ["onFocusLost"]
       38 SETTABLEKS                       R4 R3 K7 ["onFocusLost"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K8 ["onChanged"]
       43 SETTABLEKS                       R4 R3 K8 ["onChanged"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K9 ["text"]
       48 SETTABLEKS                       R4 R3 K9 ["text"]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R4 R4 K10 ["hasError"]
       53 SETTABLEKS                       R4 R3 K10 ["hasError"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K11 ["isDisabled"]
       58 SETTABLEKS                       R4 R3 K11 ["isDisabled"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K12 ["hasClearButton"]
       63 SETTABLEKS                       R4 R3 K12 ["hasClearButton"]
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R4 R4 K13 ["placeholder"]
       68 SETTABLEKS                       R4 R3 K13 ["placeholder"]
       70 DUPTABLE                         R4 K23 [{"left", "right"}]
       71 GETUPVAL                         R5 3
       72 GETTABLEKS                       R5 R5 K24 ["container"]
       74 GETTABLEKS                       R5 R5 K14 ["horizontalPadding"]
       76 SETTABLEKS                       R5 R4 K21 ["left"]
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R6 R6 K24 ["container"]
       81 GETTABLEKS                       R6 R6 K14 ["horizontalPadding"]
       83 GETIMPORT                        R7 K27 [UDim.new]
       85 LOADN                            R8 0
       86 GETUPVAL                         R9 4
       87 GETTABLEKS                       R9 R9 K28 ["Size"]
       89 GETTABLEKS                       R9 R9 K29 ["Size_150"]
       91 CALL                             R7 2 1
       92 SUB                              R5 R6 R7
       93 SETTABLEKS                       R5 R4 K22 ["right"]
       95 SETTABLEKS                       R4 R3 K14 ["horizontalPadding"]
       97 SETTABLEKS                       R0 R3 K17 ["ref"]
       99 LOADK                            R5 K30 ["%*--input"]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K18 ["testId"]
      103 NAMECALL                         R5 R5 K31 ["format"]
      105 CALL                             R5 2 1
      106 MOVE                             R4 R5
      107 SETTABLEKS                       R4 R3 K18 ["testId"]
      109 CALL                             R1 2 -1
      110 RETURN                           R1 -1

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
       98 DUPTABLE                         R16 K31 [{["size"], ["numLines"] = 3, ["testId"] = "--foundation-text-area"}]
       99 GETTABLEKS                       R17 R13 K32 ["Medium"]
      101 SETTABLEKS                       R17 R16 K26 ["size"]
      103 DUPCLOSURE                       R17 K33 [PROTO_1]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R5
      114 GETTABLEKS                       R18 R2 K34 ["memo"]
      116 GETTABLEKS                       R19 R2 K35 ["forwardRef"]
      118 MOVE                             R20 R17
      119 CALL                             R19 1 -1
      120 CALL                             R18 -1 -1
      121 RETURN                           R18 -1
