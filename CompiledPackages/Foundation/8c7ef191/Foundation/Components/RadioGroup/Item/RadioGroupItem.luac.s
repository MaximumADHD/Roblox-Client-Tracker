PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onValueChanged"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["value"]
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
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R8 R8 K3 ["useCallback"]
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
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K9 ["createElement"]
       58 GETUPVAL                         R11 6
       59 GETUPVAL                         R12 7
       60 MOVE                             R13 R2
       61 DUPTABLE                         R14 K15 [{"isChecked", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "ref"}]
       62 SETTABLEKS                       R5 R14 K10 ["isChecked"]
       64 SETTABLEKS                       R3 R14 K0 ["isDisabled"]
       66 SETTABLEKS                       R8 R14 K11 ["onActivated"]
       68 DUPTABLE                         R15 K18 [{"text", "position"}]
       69 SETTABLEKS                       R6 R15 K16 ["text"]
       71 GETUPVAL                         R17 8
       72 GETTABLEKS                       R17 R17 K19 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
       74 GETTABLEKS                       R18 R2 K20 ["placement"]
       76 GETTABLE                         R16 R17 R18
       77 SETTABLEKS                       R16 R15 K17 ["position"]
       79 SETTABLEKS                       R15 R14 K2 ["label"]
       81 GETTABLEKS                       R15 R9 K21 ["input"]
       83 SETTABLEKS                       R15 R14 K12 ["customVariantProps"]
       85 GETTABLEKS                       R15 R2 K5 ["size"]
       87 SETTABLEKS                       R15 R14 K5 ["size"]
       89 GETTABLEKS                       R15 R4 K13 ["Selectable"]
       91 SETTABLEKS                       R15 R14 K13 ["Selectable"]
       93 SETTABLEKS                       R1 R14 K14 ["ref"]
       95 CALL                             R12 2 1
       96 DUPTABLE                         R13 K23 [{"Center"}]
       97 JUMPIFNOT                        R5 ; [+19]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R14 R14 K9 ["createElement"]
      101 GETUPVAL                         R15 9
      102 DUPTABLE                         R16 K26 [{"tag", "backgroundStyle"}]
      103 GETTABLEKS                       R17 R9 K27 ["checkmark"]
      105 GETTABLEKS                       R17 R17 K24 ["tag"]
      107 SETTABLEKS                       R17 R16 K24 ["tag"]
      109 GETTABLEKS                       R17 R9 K27 ["checkmark"]
      111 GETTABLEKS                       R17 R17 K28 ["style"]
      113 SETTABLEKS                       R17 R16 K25 ["backgroundStyle"]
      115 CALL                             R14 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R14
      118 SETTABLEKS                       R14 R13 K22 ["Center"]
      120 CALL                             R10 3 -1
      121 RETURN                           R10 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["View"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["Types"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["InternalInput"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Providers"]
       40 GETTABLEKS                       R9 R9 K14 ["Style"]
       42 GETTABLEKS                       R9 R9 K15 ["useTokens"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R0 K16 ["Utility"]
       49 GETTABLEKS                       R10 R10 K17 ["withCommonProps"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Utility"]
       56 GETTABLEKS                       R11 R11 K18 ["withDefaults"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R12 R12 K4 ["Parent"]
       65 GETTABLEKS                       R12 R12 K19 ["useRadioGroupItemVariants"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K20 ["Enums"]
       72 GETTABLEKS                       R13 R13 K21 ["InputSize"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K20 ["Enums"]
       79 GETTABLEKS                       R14 R14 K22 ["InputPlacement"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETIMPORT                        R15 K1 [script]
       86 GETTABLEKS                       R15 R15 K4 ["Parent"]
       88 GETTABLEKS                       R15 R15 K4 ["Parent"]
       90 GETTABLEKS                       R15 R15 K23 ["useRadioGroup"]
       92 CALL                             R14 1 1
       93 DUPTABLE                         R15 K27 [{"size", "isDisabled", "placement"}]
       94 GETTABLEKS                       R16 R12 K28 ["Medium"]
       96 SETTABLEKS                       R16 R15 K24 ["size"]
       98 LOADB                            R16 0
       99 SETTABLEKS                       R16 R15 K25 ["isDisabled"]
      101 GETTABLEKS                       R16 R13 K29 ["Start"]
      103 SETTABLEKS                       R16 R15 K26 ["placement"]
      105 DUPCLOSURE                       R16 K30 [PROTO_1]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 GETTABLEKS                       R17 R2 K31 ["memo"]
      118 GETTABLEKS                       R18 R2 K32 ["forwardRef"]
      120 MOVE                             R19 R16
      121 CALL                             R18 1 -1
      122 CALL                             R17 -1 -1
      123 RETURN                           R17 -1
