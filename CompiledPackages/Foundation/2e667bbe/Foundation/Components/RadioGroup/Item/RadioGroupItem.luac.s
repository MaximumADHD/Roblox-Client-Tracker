PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onValueChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["isDisabled"]
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R6 R4 K1 ["value"]
       10 GETTABLEKS                       R7 R2 K1 ["value"]
       12 JUMPIFEQ                         R6 R7 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 GETTABLEKS                       R6 R2 K2 ["label"]
       18 JUMPIF                           R6 ; [+2]
       19 GETTABLEKS                       R6 R2 K1 ["value"]
       21 GETUPVAL                         R7 3
       22 CALL                             R7 0 1
       23 GETUPVAL                         R9 4
       24 GETTABLEKS                       R8 R9 K3 ["useCallback"]
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R10 0 3
       31 MOVE                             R11 R3
       32 GETTABLEKS                       R12 R2 K1 ["value"]
       34 GETTABLEKS                       R13 R4 K4 ["onValueChanged"]
       36 SETLIST                          R10 R11 3 [1]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 5
       40 MOVE                             R10 R7
       41 GETTABLEKS                       R11 R2 K5 ["size"]
       43 CALL                             R9 2 1
       44 LOADK                            R11 K6 ["%*--item-%*"]
       45 GETTABLEKS                       R13 R4 K7 ["testId"]
       47 GETTABLEKS                       R14 R2 K1 ["value"]
       49 NAMECALL                         R11 R11 K8 ["format"]
       51 CALL                             R11 3 1
       52 MOVE                             R10 R11
       53 SETTABLEKS                       R10 R2 K7 ["testId"]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K9 ["createElement"]
       58 GETUPVAL                         R11 6
       59 GETUPVAL                         R12 7
       60 MOVE                             R13 R2
       61 DUPTABLE                         R14 K15 [{"isChecked", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "ref"}]
       62 SETTABLEKS                       R5 R14 K10 ["isChecked"]
       64 SETTABLEKS                       R3 R14 K0 ["isDisabled"]
       66 SETTABLEKS                       R8 R14 K11 ["onActivated"]
       68 DUPTABLE                         R15 K17 [{"text"}]
       69 SETTABLEKS                       R6 R15 K16 ["text"]
       71 SETTABLEKS                       R15 R14 K2 ["label"]
       73 GETTABLEKS                       R15 R9 K18 ["input"]
       75 SETTABLEKS                       R15 R14 K12 ["customVariantProps"]
       77 GETTABLEKS                       R15 R2 K5 ["size"]
       79 SETTABLEKS                       R15 R14 K5 ["size"]
       81 GETTABLEKS                       R15 R4 K13 ["Selectable"]
       83 SETTABLEKS                       R15 R14 K13 ["Selectable"]
       85 SETTABLEKS                       R1 R14 K14 ["ref"]
       87 CALL                             R12 2 1
       88 DUPTABLE                         R13 K20 [{"Center"}]
       89 JUMPIFNOT                        R5 ; [+19]
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R14 R15 K9 ["createElement"]
       93 GETUPVAL                         R15 8
       94 DUPTABLE                         R16 K23 [{"tag", "backgroundStyle"}]
       95 GETTABLEKS                       R18 R9 K24 ["checkmark"]
       97 GETTABLEKS                       R17 R18 K21 ["tag"]
       99 SETTABLEKS                       R17 R16 K21 ["tag"]
      101 GETTABLEKS                       R18 R9 K24 ["checkmark"]
      103 GETTABLEKS                       R17 R18 K25 ["style"]
      105 SETTABLEKS                       R17 R16 K22 ["backgroundStyle"]
      107 CALL                             R14 2 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K19 ["Center"]
      112 CALL                             R10 3 -1
      113 RETURN                           R10 -1

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
       18 GETTABLEKS                       R5 R3 K9 ["View"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["Types"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R3 K11 ["InternalInput"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R10 R0 K12 ["Providers"]
       35 GETTABLEKS                       R9 R10 K13 ["Style"]
       37 GETTABLEKS                       R8 R9 K14 ["useTokens"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R0 K15 ["Utility"]
       44 GETTABLEKS                       R9 R10 K16 ["withCommonProps"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Utility"]
       51 GETTABLEKS                       R10 R11 K17 ["withDefaults"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETIMPORT                        R13 K1 [script]
       58 GETTABLEKS                       R12 R13 K4 ["Parent"]
       60 GETTABLEKS                       R11 R12 K18 ["useRadioGroupItemVariants"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R13 R0 K19 ["Enums"]
       67 GETTABLEKS                       R12 R13 K20 ["InputSize"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETIMPORT                        R16 K1 [script]
       74 GETTABLEKS                       R15 R16 K4 ["Parent"]
       76 GETTABLEKS                       R14 R15 K4 ["Parent"]
       78 GETTABLEKS                       R13 R14 K21 ["useRadioGroup"]
       80 CALL                             R12 1 1
       81 DUPTABLE                         R13 K24 [{"size", "isDisabled"}]
       82 GETTABLEKS                       R14 R11 K25 ["Medium"]
       84 SETTABLEKS                       R14 R13 K22 ["size"]
       86 LOADB                            R14 0
       87 SETTABLEKS                       R14 R13 K23 ["isDisabled"]
       89 DUPCLOSURE                       R14 K26 [PROTO_1]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R4
       99 GETTABLEKS                       R15 R2 K27 ["memo"]
      101 GETTABLEKS                       R16 R2 K28 ["forwardRef"]
      103 MOVE                             R17 R14
      104 CALL                             R16 1 -1
      105 CALL                             R15 -1 -1
      106 RETURN                           R15 -1
