PROTO_0:
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
       12 GETTABLEKS                       R6 R2 K1 ["isChecked"]
       14 GETTABLEKS                       R7 R2 K2 ["onActivated"]
       16 CALL                             R5 2 2
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R7 R8 K3 ["createElement"]
       20 GETUPVAL                         R8 6
       21 GETUPVAL                         R9 7
       22 MOVE                             R10 R2
       23 DUPTABLE                         R11 K13 [{"isChecked", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "ref"}]
       24 SETTABLEKS                       R5 R11 K1 ["isChecked"]
       26 GETTABLEKS                       R12 R2 K4 ["isDisabled"]
       28 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
       30 SETTABLEKS                       R6 R11 K2 ["onActivated"]
       32 DUPTABLE                         R12 K15 [{"text"}]
       33 GETTABLEKS                       R13 R2 K5 ["label"]
       35 SETTABLEKS                       R13 R12 K14 ["text"]
       37 SETTABLEKS                       R12 R11 K5 ["label"]
       39 GETTABLEKS                       R12 R4 K16 ["input"]
       41 SETTABLEKS                       R12 R11 K6 ["customVariantProps"]
       43 GETTABLEKS                       R12 R2 K0 ["size"]
       45 SETTABLEKS                       R12 R11 K0 ["size"]
       47 GETTABLEKS                       R12 R2 K7 ["Selectable"]
       49 SETTABLEKS                       R12 R11 K7 ["Selectable"]
       51 GETTABLEKS                       R12 R2 K8 ["NextSelectionUp"]
       53 SETTABLEKS                       R12 R11 K8 ["NextSelectionUp"]
       55 GETTABLEKS                       R12 R2 K9 ["NextSelectionDown"]
       57 SETTABLEKS                       R12 R11 K9 ["NextSelectionDown"]
       59 GETTABLEKS                       R12 R2 K10 ["NextSelectionLeft"]
       61 SETTABLEKS                       R12 R11 K10 ["NextSelectionLeft"]
       63 GETTABLEKS                       R12 R2 K11 ["NextSelectionRight"]
       65 SETTABLEKS                       R12 R11 K11 ["NextSelectionRight"]
       67 SETTABLEKS                       R1 R11 K12 ["ref"]
       69 CALL                             R9 2 1
       70 DUPTABLE                         R10 K18 [{"Checkmark"}]
       71 JUMPIFNOT                        R5 ; [+75]
       72 GETUPVAL                         R13 8
       73 GETTABLEKS                       R12 R13 K19 ["FoundationMigrateIconNames"]
       75 JUMPIFNOT                        R12 ; [+46]
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R11 R12 K3 ["createElement"]
       79 GETUPVAL                         R12 9
       80 DUPTABLE                         R13 K25 [{"Text", "fontStyle", "TextScaled", "tag", "testId"}]
       81 GETUPVAL                         R16 10
       82 GETTABLEKS                       R15 R16 K26 ["Icon"]
       84 GETTABLEKS                       R14 R15 K27 ["Check"]
       86 SETTABLEKS                       R14 R13 K20 ["Text"]
       88 DUPTABLE                         R14 K29 [{"Font"}]
       89 GETUPVAL                         R17 10
       90 GETTABLEKS                       R16 R17 K28 ["Font"]
       92 GETUPVAL                         R19 10
       93 GETTABLEKS                       R18 R19 K30 ["IconVariant"]
       95 GETTABLEKS                       R17 R18 K31 ["Filled"]
       97 GETTABLE                         R15 R16 R17
       98 SETTABLEKS                       R15 R14 K28 ["Font"]
      100 SETTABLEKS                       R14 R13 K21 ["fontStyle"]
      102 LOADB                            R14 1
      103 SETTABLEKS                       R14 R13 K22 ["TextScaled"]
      105 GETTABLEKS                       R15 R4 K32 ["checkmark"]
      107 GETTABLEKS                       R14 R15 K23 ["tag"]
      109 SETTABLEKS                       R14 R13 K23 ["tag"]
      111 LOADK                            R15 K33 ["%*--checkmark"]
      112 GETTABLEKS                       R17 R2 K24 ["testId"]
      114 NAMECALL                         R15 R15 K34 ["format"]
      116 CALL                             R15 2 1
      117 MOVE                             R14 R15
      118 SETTABLEKS                       R14 R13 K24 ["testId"]
      120 CALL                             R11 2 1
      121 JUMP                             ; [+26]
      122 GETUPVAL                         R12 5
      123 GETTABLEKS                       R11 R12 K3 ["createElement"]
      125 GETUPVAL                         R12 11
      126 DUPTABLE                         R13 K36 [{"Image", "tag", "testId"}]
      127 LOADK                            R14 K37 ["icons/status/success_small"]
      128 SETTABLEKS                       R14 R13 K35 ["Image"]
      130 GETTABLEKS                       R15 R4 K32 ["checkmark"]
      132 GETTABLEKS                       R14 R15 K23 ["tag"]
      134 SETTABLEKS                       R14 R13 K23 ["tag"]
      136 LOADK                            R15 K33 ["%*--checkmark"]
      137 GETTABLEKS                       R17 R2 K24 ["testId"]
      139 NAMECALL                         R15 R15 K34 ["format"]
      141 CALL                             R15 2 1
      142 MOVE                             R14 R15
      143 SETTABLEKS                       R14 R13 K24 ["testId"]
      145 CALL                             R11 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R11
      148 SETTABLEKS                       R11 R10 K17 ["Checkmark"]
      150 CALL                             R7 3 -1
      151 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["Image"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["Text"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["InternalInput"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R10 R4 K12 ["InternalInput"]
       40 GETTABLEKS                       R9 R10 K13 ["useUncontrolledState"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R4 K14 ["Types"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K15 ["Utility"]
       52 GETTABLEKS                       R11 R12 K16 ["Flags"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R14 R0 K17 ["Providers"]
       59 GETTABLEKS                       R13 R14 K18 ["Style"]
       61 GETTABLEKS                       R12 R13 K19 ["useTokens"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R14 R0 K15 ["Utility"]
       68 GETTABLEKS                       R13 R14 K20 ["withCommonProps"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R15 R0 K15 ["Utility"]
       75 GETTABLEKS                       R14 R15 K21 ["withDefaults"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETIMPORT                        R17 K1 [script]
       82 GETTABLEKS                       R16 R17 K4 ["Parent"]
       84 GETTABLEKS                       R15 R16 K22 ["useCheckboxVariants"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R17 R0 K23 ["Enums"]
       91 GETTABLEKS                       R16 R17 K24 ["InputSize"]
       93 CALL                             R15 1 1
       94 DUPTABLE                         R16 K28 [{"size", "Selectable", "testId"}]
       95 GETTABLEKS                       R17 R15 K29 ["Medium"]
       97 SETTABLEKS                       R17 R16 K25 ["size"]
       99 LOADB                            R17 1
      100 SETTABLEKS                       R17 R16 K26 ["Selectable"]
      102 LOADK                            R17 K30 ["--foundation-checkbox"]
      103 SETTABLEKS                       R17 R16 K27 ["testId"]
      105 DUPCLOSURE                       R17 K31 [PROTO_0]
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 GETTABLEKS                       R18 R2 K32 ["memo"]
      120 GETTABLEKS                       R19 R2 K33 ["forwardRef"]
      122 MOVE                             R20 R17
      123 CALL                             R19 1 -1
      124 CALL                             R18 -1 -1
      125 RETURN                           R18 -1
