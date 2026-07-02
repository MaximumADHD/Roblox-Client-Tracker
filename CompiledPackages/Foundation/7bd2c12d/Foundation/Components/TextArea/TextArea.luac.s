PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K15 [{["size"], ["numLines"], ["onFocus"], ["onFocusLost"], ["onChanged"], ["text"], ["hasError"], ["isDisabled"], ["placeholder"], ["horizontalPadding"], ["LayoutOrder"] = 2, ["ref"], ["testId"]}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["size"]
        8 SETTABLEKS                       R4 R3 K1 ["size"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["numLines"]
       13 SETTABLEKS                       R4 R3 K2 ["numLines"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K16 ["onFocusGained"]
       18 SETTABLEKS                       R4 R3 K3 ["onFocus"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["onFocusLost"]
       23 SETTABLEKS                       R4 R3 K4 ["onFocusLost"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K5 ["onChanged"]
       28 SETTABLEKS                       R4 R3 K5 ["onChanged"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K6 ["text"]
       33 SETTABLEKS                       R4 R3 K6 ["text"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K7 ["hasError"]
       38 SETTABLEKS                       R4 R3 K7 ["hasError"]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K8 ["isDisabled"]
       43 SETTABLEKS                       R4 R3 K8 ["isDisabled"]
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K9 ["placeholder"]
       48 SETTABLEKS                       R4 R3 K9 ["placeholder"]
       50 DUPTABLE                         R4 K19 [{"left", "right"}]
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R5 R5 K20 ["innerContainer"]
       54 GETTABLEKS                       R5 R5 K10 ["horizontalPadding"]
       56 SETTABLEKS                       R5 R4 K17 ["left"]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K20 ["innerContainer"]
       61 GETTABLEKS                       R6 R6 K10 ["horizontalPadding"]
       63 GETIMPORT                        R7 K23 [UDim.new]
       65 LOADN                            R8 0
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K24 ["Size"]
       69 GETTABLEKS                       R9 R9 K25 ["Size_150"]
       71 CALL                             R7 2 1
       72 SUB                              R5 R6 R7
       73 SETTABLEKS                       R5 R4 K18 ["right"]
       75 SETTABLEKS                       R4 R3 K10 ["horizontalPadding"]
       77 SETTABLEKS                       R0 R3 K13 ["ref"]
       79 LOADK                            R5 K26 ["%*--input"]
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R7 R7 K14 ["testId"]
       83 NAMECALL                         R5 R5 K27 ["format"]
       85 CALL                             R5 2 1
       86 MOVE                             R4 R5
       87 SETTABLEKS                       R4 R3 K14 ["testId"]
       89 CALL                             R1 2 -1
       90 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationTextAreaTokenBasedWidth"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["width"]
        8 JUMP                             ; [+8]
        9 GETUPVAL                         R2 1
       10 GETIMPORT                        R3 K4 [UDim.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 400
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
       34 DUPTABLE                         R9 K15 [{"width", "label", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K0 ["FoundationTextAreaTokenBasedWidth"]
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
       28 GETTABLEKS                       R7 R0 K8 ["Components"]
       30 GETTABLEKS                       R7 R7 K11 ["Types"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Utility"]
       37 GETTABLEKS                       R8 R8 K13 ["Flags"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R3 K14 ["TextInput"]
       44 GETTABLEKS                       R9 R9 K15 ["useTextInputVariants"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K16 ["Providers"]
       51 GETTABLEKS                       R10 R10 K17 ["Style"]
       53 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K12 ["Utility"]
       60 GETTABLEKS                       R11 R11 K19 ["withCommonProps"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K12 ["Utility"]
       67 GETTABLEKS                       R12 R12 K20 ["withDefaults"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R0 K21 ["Enums"]
       74 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R0 K21 ["Enums"]
       81 GETTABLEKS                       R14 R14 K23 ["ControlState"]
       83 CALL                             R13 1 1
       84 DUPTABLE                         R14 K30 [{["size"], ["numLines"] = 3, ["width"], ["testId"] = "--foundation-text-area"}]
       85 GETTABLEKS                       R15 R12 K31 ["Medium"]
       87 SETTABLEKS                       R15 R14 K24 ["size"]
       89 GETTABLEKS                       R16 R7 K32 ["FoundationTextAreaTokenBasedWidth"]
       91 JUMPIFNOT                        R16 ; [+2]
       92 LOADNIL                          R15
       93 JUMP                             ; [+5]
       94 GETIMPORT                        R15 K35 [UDim.new]
       96 LOADN                            R16 0
       97 LOADN                            R17 400
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K27 ["width"]
      101 DUPCLOSURE                       R15 K36 [PROTO_1]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R5
      111 GETTABLEKS                       R16 R2 K37 ["memo"]
      113 GETTABLEKS                       R17 R2 K38 ["forwardRef"]
      115 MOVE                             R18 R15
      116 CALL                             R17 1 -1
      117 CALL                             R16 -1 -1
      118 RETURN                           R16 -1
