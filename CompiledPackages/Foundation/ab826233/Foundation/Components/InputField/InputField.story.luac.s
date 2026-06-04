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
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K13 ["container"]
       29 GETTABLEKS                       R5 R5 K6 ["horizontalPadding"]
       31 SETTABLEKS                       R5 R4 K10 ["left"]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K13 ["container"]
       36 GETTABLEKS                       R5 R5 K6 ["horizontalPadding"]
       38 SETTABLEKS                       R5 R4 K11 ["right"]
       40 SETTABLEKS                       R4 R3 K6 ["horizontalPadding"]
       42 GETUPVAL                         R4 5
       43 SETTABLEKS                       R4 R3 K7 ["onChanged"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K8 ["placeholder"]
       48 SETTABLEKS                       R4 R3 K8 ["placeholder"]
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1

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
       43 GETTABLEKS                       R14 R1 K10 ["isDisabled"]
       45 SETTABLEKS                       R14 R13 K10 ["isDisabled"]
       47 NEWCLOSURE                       R14 P1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R14 R13 K11 ["input"]
       56 CALL                             R11 2 -1
       57 SETLIST                          R10 R11 -1 [1]
       59 CALL                             R7 3 -1
       60 RETURN                           R7 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["InputLabelSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["InternalTextInput"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["TextInput"]
       53 GETTABLEKS                       R9 R9 K16 ["useTextInputVariants"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Providers"]
       60 GETTABLEKS                       R10 R10 K18 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K12 ["Components"]
       69 GETTABLEKS                       R11 R11 K20 ["InputField"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K21 [PROTO_2]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R6
       79 DUPTABLE                         R12 K25 [{"summary", "story", "controls"}]
       80 LOADK                            R13 K26 ["Input field"]
       81 SETTABLEKS                       R13 R12 K22 ["summary"]
       83 SETTABLEKS                       R11 R12 K23 ["story"]
       85 DUPTABLE                         R13 K34 [{"label", "hint", "hasError", "isDisabled", "size", "labelSize", "placeholder"}]
       86 LOADK                            R14 K35 ["Field label"]
       87 SETTABLEKS                       R14 R13 K27 ["label"]
       89 LOADK                            R14 K36 ["Hint"]
       90 SETTABLEKS                       R14 R13 K28 ["hint"]
       92 LOADB                            R14 0
       93 SETTABLEKS                       R14 R13 K29 ["hasError"]
       95 LOADB                            R14 0
       96 SETTABLEKS                       R14 R13 K30 ["isDisabled"]
       98 GETTABLEKS                       R14 R2 K37 ["values"]
      100 MOVE                             R15 R5
      101 CALL                             R14 1 1
      102 SETTABLEKS                       R14 R13 K31 ["size"]
      104 GETTABLEKS                       R14 R2 K37 ["values"]
      106 MOVE                             R15 R4
      107 CALL                             R14 1 1
      108 SETTABLEKS                       R14 R13 K32 ["labelSize"]
      110 LOADK                            R14 K38 ["Placeholder text"]
      111 SETTABLEKS                       R14 R13 K33 ["placeholder"]
      113 SETTABLEKS                       R13 R12 K24 ["controls"]
      115 RETURN                           R12 1
