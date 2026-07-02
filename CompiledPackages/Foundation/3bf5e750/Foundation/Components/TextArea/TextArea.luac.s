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
       17 DUPTABLE                         R9 K11 [{"width", "label", "hint", "hasError", "isDisabled", "isRequired", "input", "textBoxRef", "ref"}]
       18 GETTABLEKS                       R10 R2 K2 ["width"]
       20 SETTABLEKS                       R10 R9 K2 ["width"]
       22 GETTABLEKS                       R10 R2 K3 ["label"]
       24 SETTABLEKS                       R10 R9 K3 ["label"]
       26 GETTABLEKS                       R10 R2 K4 ["hint"]
       28 SETTABLEKS                       R10 R9 K4 ["hint"]
       30 GETTABLEKS                       R10 R2 K5 ["hasError"]
       32 SETTABLEKS                       R10 R9 K5 ["hasError"]
       34 GETTABLEKS                       R10 R2 K6 ["isDisabled"]
       36 SETTABLEKS                       R10 R9 K6 ["isDisabled"]
       38 GETTABLEKS                       R10 R2 K7 ["isRequired"]
       40 SETTABLEKS                       R10 R9 K7 ["isRequired"]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R10 R9 K8 ["input"]
       50 GETTABLEKS                       R10 R2 K9 ["textBoxRef"]
       52 SETTABLEKS                       R10 R9 K9 ["textBoxRef"]
       54 SETTABLEKS                       R1 R9 K10 ["ref"]
       56 CALL                             R7 2 -1
       57 CALL                             R5 -1 -1
       58 RETURN                           R5 -1

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
       35 GETTABLEKS                       R8 R3 K12 ["TextInput"]
       37 GETTABLEKS                       R8 R8 K13 ["useTextInputVariants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K14 ["Providers"]
       44 GETTABLEKS                       R9 R9 K15 ["Style"]
       46 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R0 K17 ["Utility"]
       53 GETTABLEKS                       R10 R10 K18 ["withCommonProps"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R0 K17 ["Utility"]
       60 GETTABLEKS                       R11 R11 K19 ["withDefaults"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R0 K20 ["Enums"]
       67 GETTABLEKS                       R12 R12 K21 ["InputSize"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Enums"]
       74 GETTABLEKS                       R13 R13 K22 ["ControlState"]
       76 CALL                             R12 1 1
       77 DUPTABLE                         R13 K29 [{["size"], ["numLines"] = 3, ["width"], ["testId"] = "--foundation-text-area"}]
       78 GETTABLEKS                       R14 R11 K30 ["Medium"]
       80 SETTABLEKS                       R14 R13 K23 ["size"]
       82 GETIMPORT                        R14 K33 [UDim.new]
       84 LOADN                            R15 0
       85 LOADN                            R16 400
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K26 ["width"]
       89 DUPCLOSURE                       R14 K34 [PROTO_1]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R5
       98 GETTABLEKS                       R15 R2 K35 ["memo"]
      100 GETTABLEKS                       R16 R2 K36 ["forwardRef"]
      102 MOVE                             R17 R14
      103 CALL                             R16 1 -1
      104 CALL                             R15 -1 -1
      105 RETURN                           R15 -1
