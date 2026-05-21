PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"ref", "text", "hasError", "isDisabled", "size", "horizontalPadding", "onChanged", "placeholder"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["text"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["hasError"]
       13 SETTABLEKS                       R4 R3 K3 ["hasError"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       18 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K5 ["size"]
       23 SETTABLEKS                       R4 R3 K5 ["size"]
       25 DUPTABLE                         R4 K12 [{"left", "right"}]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K13 ["FoundationInputVariantsConsolidateContainer"]
       29 JUMPIFNOT                        R6 ; [+4]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K14 ["container"]
       33 JUMP                             ; [+3]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K15 ["innerContainer"]
       37 GETTABLEKS                       R5 R5 K6 ["horizontalPadding"]
       39 SETTABLEKS                       R5 R4 K10 ["left"]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K13 ["FoundationInputVariantsConsolidateContainer"]
       44 JUMPIFNOT                        R6 ; [+4]
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K14 ["container"]
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K15 ["innerContainer"]
       52 GETTABLEKS                       R5 R5 K6 ["horizontalPadding"]
       54 SETTABLEKS                       R5 R4 K11 ["right"]
       56 SETTABLEKS                       R4 R3 K6 ["horizontalPadding"]
       58 GETUPVAL                         R4 6
       59 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K8 ["placeholder"]
       64 SETTABLEKS                       R4 R3 K8 ["placeholder"]
       66 CALL                             R1 2 -1
       67 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R1 K1 ["size"]
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["useBinding"]
       12 LOADK                            R5 K3 [""]
       13 CALL                             R4 1 2
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R5
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["createElement"]
       19 GETUPVAL                         R8 3
       20 DUPTABLE                         R9 K6 [{"tag"}]
       21 LOADK                            R10 K7 ["gap-large auto-xy padding-xlarge"]
       22 SETTABLEKS                       R10 R9 K5 ["tag"]
       24 NEWTABLE                         R10 0 1
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R11 R11 K4 ["createElement"]
       29 GETUPVAL                         R12 4
       30 DUPTABLE                         R13 K12 [{"label", "size", "hint", "isDisabled", "input"}]
       31 GETTABLEKS                       R14 R1 K8 ["label"]
       33 SETTABLEKS                       R14 R13 K8 ["label"]
       35 GETTABLEKS                       R14 R1 K13 ["labelSize"]
       37 SETTABLEKS                       R14 R13 K1 ["size"]
       39 GETTABLEKS                       R14 R1 K9 ["hint"]
       41 SETTABLEKS                       R14 R13 K9 ["hint"]
       43 GETUPVAL                         R15 5
       44 GETTABLEKS                       R15 R15 K14 ["FoundationInputFieldFixDisabled"]
       46 JUMPIFNOT                        R15 ; [+3]
       47 GETTABLEKS                       R14 R1 K10 ["isDisabled"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R14
       51 SETTABLEKS                       R14 R13 K10 ["isDisabled"]
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R14 R13 K11 ["input"]
       63 CALL                             R11 2 -1
       64 SETLIST                          R10 R11 -1 [1]
       66 CALL                             R7 3 -1
       67 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["InputLabelSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["InternalTextInput"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["TextInput"]
       60 GETTABLEKS                       R10 R10 K18 ["useTextInputVariants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Providers"]
       67 GETTABLEKS                       R11 R11 K20 ["Style"]
       69 GETTABLEKS                       R11 R11 K21 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K14 ["Components"]
       76 GETTABLEKS                       R12 R12 K22 ["InputField"]
       78 CALL                             R11 1 1
       79 DUPCLOSURE                       R12 K23 [PROTO_2]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 DUPTABLE                         R13 K27 [{"summary", "story", "controls"}]
       88 LOADK                            R14 K28 ["Input field"]
       89 SETTABLEKS                       R14 R13 K24 ["summary"]
       91 SETTABLEKS                       R12 R13 K25 ["story"]
       93 DUPTABLE                         R14 K36 [{"label", "hint", "hasError", "isDisabled", "size", "labelSize", "placeholder"}]
       94 LOADK                            R15 K37 ["Field label"]
       95 SETTABLEKS                       R15 R14 K29 ["label"]
       97 LOADK                            R15 K38 ["Hint"]
       98 SETTABLEKS                       R15 R14 K30 ["hint"]
      100 LOADB                            R15 0
      101 SETTABLEKS                       R15 R14 K31 ["hasError"]
      103 LOADB                            R15 0
      104 SETTABLEKS                       R15 R14 K32 ["isDisabled"]
      106 GETTABLEKS                       R15 R2 K39 ["values"]
      108 MOVE                             R16 R6
      109 CALL                             R15 1 1
      110 SETTABLEKS                       R15 R14 K33 ["size"]
      112 GETTABLEKS                       R15 R2 K39 ["values"]
      114 MOVE                             R16 R5
      115 CALL                             R15 1 1
      116 SETTABLEKS                       R15 R14 K34 ["labelSize"]
      118 LOADK                            R15 K40 ["Placeholder text"]
      119 SETTABLEKS                       R15 R14 K35 ["placeholder"]
      121 SETTABLEKS                       R14 R13 K26 ["controls"]
      123 RETURN                           R13 1
